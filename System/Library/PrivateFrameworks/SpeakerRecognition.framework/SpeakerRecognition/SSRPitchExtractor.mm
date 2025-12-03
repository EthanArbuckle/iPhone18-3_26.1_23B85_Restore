@interface SSRPitchExtractor
- (SSRPitchExtractor)initWithAsset:(id)asset;
- (SSRPitchExtractor)initWithDefaultParameters;
- (float)_getVoicingProbFromRawData:(float)data;
- (float)_getVoicingWeightedPitchForResultMatrix:(id)matrix;
- (float)getPitchForUtteranceAudioFiles:(id)files;
- (id)_initWithConfigPath:(id)path;
- (void)_processAudioFileURL:(id)l;
@end

@implementation SSRPitchExtractor

- (float)_getVoicingProbFromRawData:(float)data
{
  v3 = data * 0.5 + 1.0;
  v4 = 1.0001 - powf(v3, 6.6667);
  v5 = fabsf(v4);
  v6 = expf((v5 + -1.0) * 7.5) * 5.4 + -5.2 + v5 * 4.8;
  v7 = expf(v5 * -10.0);
  v8 = v6 - (v7 + v7) + expf((v5 + -1.0) * 20.0) * 4.2;
  return 1.0 / (expf(-v8) + 1.0);
}

- (float)_getVoicingWeightedPitchForResultMatrix:(id)matrix
{
  v23 = *MEMORY[0x277D85DE8];
  matrixCopy = matrix;
  audioResultMat = [matrixCopy audioResultMat];
  bytes = [audioResultMat bytes];

  if (bytes)
  {
    if ([matrixCopy audioResultsNumVectors])
    {
      v7 = 0;
      v8 = bytes + 92;
      v9 = bytes + 96;
      v10 = 0.0;
      v11 = 0.0;
      do
      {
        LODWORD(v12) = *(v8 + 4 * [matrixCopy audioResultsVectorSize] * v7);
        [(SSRPitchExtractor *)self _getVoicingProbFromRawData:v12];
        v14 = v13;
        LODWORD(v15) = *(v9 + 4 * [matrixCopy audioResultsVectorSize] * v7);
        [(SSRPitchExtractor *)self _getPitchHzFromRawData:v15];
        v10 = v10 + (v14 * v16);
        v11 = v11 + v14;
        ++v7;
        [matrixCopy audioResultsVectorSize];
      }

      while (v7 < [matrixCopy audioResultsNumVectors]);
    }

    else
    {
      v11 = 0.0;
      v10 = 0.0;
    }

    if (v11 <= 0.000001)
    {
      v18 = v10;
    }

    else
    {
      v18 = v10 / v11;
    }
  }

  else
  {
    v17 = *MEMORY[0x277D01970];
    v18 = -10000.0;
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[SSRPitchExtractor _getVoicingWeightedPitchForResultMatrix:]";
      _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Got unexpected empty result matrix!!", &v21, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (float)getPitchForUtteranceAudioFiles:(id)files
{
  v30 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [filesCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    v9 = MEMORY[0x277D01970];
    v10 = 0.0;
    *&v6 = 136315394;
    v20 = v6;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(filesCopy);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v20;
          v26 = "[SSRPitchExtractor getPitchForUtteranceAudioFiles:]";
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Starting to extract pitch from URL: %@", buf, 0x16u);
        }

        [(SSRPitchExtractor *)self _processAudioFileURL:v13, v20];
        audioResultMatrix = [(EARAudioResultsGenerator *)self->_resultsGenerator audioResultMatrix];
        [(SSRPitchExtractor *)self _getVoicingWeightedPitchForResultMatrix:audioResultMatrix];
        v11 = v11 + v16;
        v10 = v10 + 1.0;
      }

      v7 = [filesCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  if (v10 <= 0.000001)
  {
    v17 = v11;
  }

  else
  {
    v17 = v11 / v10;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_processAudioFileURL:(id)l
{
  resultsGenerator = self->_resultsGenerator;
  lCopy = l;
  [(EARAudioResultsGenerator *)resultsGenerator resetForNewRequest];
  [MEMORY[0x277D01748] lpcmInt16ASBD];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SSRPitchExtractor__processAudioFileURL___block_invoke;
  v6[3] = &unk_278579948;
  v6[4] = self;
  [SSRUtils streamAudioFromFileUrl:lCopy audioStreamBasicDescriptor:v7 samplesPerStreamChunk:640 audioDataAvailableHandler:v6];
}

void __42__SSRPitchExtractor__processAudioFileURL___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = a4;
  if (!v7)
  {
    if (a3)
    {
      [*(*(a1 + 32) + 8) endAudio];
    }

    else
    {
      v8 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
      [*(*(a1 + 32) + 8) addAudio:v8];
    }

    v7 = 0;
  }
}

- (id)_initWithConfigPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = SSRPitchExtractor;
  v5 = [(SSRPitchExtractor *)&v18 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SSRPitchExtractor _initWithConfigPath:]";
    v21 = 2114;
    v22 = pathCopy;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Using pitch config path: %{public}@", buf, 0x16u);
  }

  v7 = dispatch_queue_create("SSR Pitch Extraction Queue", 0);
  queue = v5->_queue;
  v5->_queue = v7;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager fileExistsAtPath:pathCopy];

  v11 = 0;
  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x277D071D0]);
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v14 = [v12 initWithConfigFile:pathCopy configRoot:@"spid" sampleRate:v13 delegate:v5 queue:v5->_queue];
    resultsGenerator = v5->_resultsGenerator;
    v5->_resultsGenerator = v14;

LABEL_6:
    v11 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (SSRPitchExtractor)initWithDefaultParameters
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundlePath = [v3 bundlePath];

  v5 = [bundlePath stringByAppendingPathComponent:@"pitchExtractor.json"];
  v6 = [(SSRPitchExtractor *)self _initWithConfigPath:v5];

  return v6;
}

- (SSRPitchExtractor)initWithAsset:(id)asset
{
  resourcePath = [asset resourcePath];
  v5 = [resourcePath stringByAppendingPathComponent:@"pitchExtractorConfigFile.json"];

  v6 = [(SSRPitchExtractor *)self _initWithConfigPath:v5];
  return v6;
}

@end