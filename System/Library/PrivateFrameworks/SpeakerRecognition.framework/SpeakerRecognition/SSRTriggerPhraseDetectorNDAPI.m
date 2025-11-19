@interface SSRTriggerPhraseDetectorNDAPI
- (SSRTriggerPhraseDetectorNDAPI)initWithConfigPath:(id)a3 resourcePath:(id)a4 phId:(unint64_t)a5;
- (id)analyzeWavData:(id)a3 numSamples:(unint64_t)a4;
- (id)getSuperVectorWithEndPoint:(unint64_t)a3;
- (void)dealloc;
@end

@implementation SSRTriggerPhraseDetectorNDAPI

- (id)getSuperVectorWithEndPoint:(unint64_t)a3
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    novDetect = nd_getsupervector();
    if (novDetect)
    {
      novDetect = [MEMORY[0x277CBEA90] dataWithBytes:*novDetect length:4 * novDetect[2]];
    }

    v3 = vars8;
  }

  return novDetect;
}

- (id)analyzeWavData:(id)a3 numSamples:(unint64_t)a4
{
  novDetect = self->_novDetect;
  v7 = a3;
  [a3 bytes];
  nd_wavedata();
  if (self->_novDetect && ((v8 = nd_phrasecount(), v9 = self->_novDetect, v8 < 1) ? (v11 = nd_getresults()) : (phId_low = LODWORD(self->_phId), v11 = nd_getphraseresults()), (v12 = v11) != 0))
  {
    v13 = objc_alloc_init(SSRTriggerPhraseDetectorNDAPIResult);
    [(SSRTriggerPhraseDetectorNDAPIResult *)v13 setPhId:self->_phId];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v13 setSamplesFed:*v12];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v13 setBestPhrase:v12[3]];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v13 setBestStart:v12[1]];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v13 setBestEnd:v12[2]];
    LODWORD(v14) = v12[4];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v13 setBestScore:v14];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v13 setIsEarlyWarning:*(v12 + 20)];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v13 setIsRescoring:*(v12 + 21)];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  if (self->_novDetect)
  {
    nd_close();
    self->_novDetect = 0;
  }

  v3.receiver = self;
  v3.super_class = SSRTriggerPhraseDetectorNDAPI;
  [(SSRTriggerPhraseDetectorNDAPI *)&v3 dealloc];
}

- (SSRTriggerPhraseDetectorNDAPI)initWithConfigPath:(id)a3 resourcePath:(id)a4 phId:(unint64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v23.receiver = self;
  v23.super_class = SSRTriggerPhraseDetectorNDAPI;
  v10 = [(SSRTriggerPhraseDetectorNDAPI *)&v23 init];
  if (!v10)
  {
    goto LABEL_8;
  }

  v10->_novDetect = nd_create();
  v10->_phId = a5;
  v11 = MEMORY[0x277D01970];
  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = "[SSRTriggerPhraseDetectorNDAPI initWithConfigPath:resourcePath:phId:]";
    v26 = 2114;
    *v27 = v8;
    *&v27[8] = 2114;
    *&v27[10] = v9;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Initializing NDAPI using %{public}@, %{public}@", buf, 0x20u);
    novDetect = v10->_novDetect;
  }

  [v8 UTF8String];
  [v9 cStringUsingEncoding:4];
  v14 = nd_initialize();
  if (v14)
  {
    v15 = v14;
    v16 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v20 = v10->_novDetect;
      v21 = v16;
      v22 = nd_error();
      *buf = 136315650;
      v25 = "[SSRTriggerPhraseDetectorNDAPI initWithConfigPath:resourcePath:phId:]";
      v26 = 1026;
      *v27 = v15;
      *&v27[4] = 2082;
      *&v27[6] = v22;
      _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s Failed to initialize NDAPI: err=[%{public}d]:%{public}s", buf, 0x1Cu);
    }

    v17 = 0;
  }

  else
  {
LABEL_8:
    v17 = v10;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

@end