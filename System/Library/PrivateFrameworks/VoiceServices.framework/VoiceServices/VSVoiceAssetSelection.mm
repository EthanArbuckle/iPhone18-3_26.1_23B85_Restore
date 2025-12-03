@interface VSVoiceAssetSelection
- (BOOL)isDownloading;
- (BOOL)isInstalled;
- (NSString)voicePath;
- (VSVoiceAssetSelection)init;
- (VSVoiceAssetSelection)initWithTrialVoice:(id)voice;
- (_opaque_pthread_mutex_t)voicePathLock;
- (double)preferenceScore;
- (id)descriptiveKey;
- (id)key;
- (unint64_t)size;
- (void)dealloc;
- (void)setVoicePathLock:(_opaque_pthread_mutex_t *)lock;
@end

@implementation VSVoiceAssetSelection

- (void)setVoicePathLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[40];
  *&self->_voicePathLock.__opaque[24] = *&lock->__opaque[24];
  *&self->_voicePathLock.__opaque[40] = v5;
  *&self->_voicePathLock.__sig = v3;
  *&self->_voicePathLock.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)voicePathLock
{
  v3 = *&self[1].__sig;
  *&retstr->__sig = *&self->__opaque[40];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[24];
  *&retstr->__opaque[24] = *&self[1].__opaque[8];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (double)preferenceScore
{
  voiceData = [(VSVoiceAssetSelection *)self voiceData];
  type = [voiceData type];

  v5 = 0.0;
  if (type > 2)
  {
    if (type == 3)
    {
      v5 = 3000.0;
    }

    else if (type == 4)
    {
      voiceData2 = [(VSVoiceAssetSelection *)self voiceData];
      isVoiceReadyToUse = [voiceData2 isVoiceReadyToUse];

      if (isVoiceReadyToUse)
      {
        v5 = 4000.0;
      }

      else
      {
        v5 = 0.0;
      }
    }
  }

  else if (type == 1)
  {
    v5 = 1000.0;
  }

  else if (type == 2)
  {
    v5 = 2000.0;
  }

  voiceData3 = [(VSVoiceAssetSelection *)self voiceData];
  footprint = [voiceData3 footprint];

  if (footprint == 3)
  {
    v10 = 300.0;
    v12 = v5 + 300.0;
  }

  else
  {
    v10 = v5 + 200.0;
    v11 = v5 + 100.0;
    if (footprint != 1)
    {
      v11 = v5;
    }

    if (footprint == 2)
    {
      v12 = v5 + 200.0;
    }

    else
    {
      v12 = v11;
    }
  }

  voiceData4 = [(VSVoiceAssetSelection *)self voiceData];
  contentVersion = [voiceData4 contentVersion];
  [contentVersion floatValue];
  v16 = v12 + v15 / 2147483650.0;

  return v16;
}

- (BOOL)isDownloading
{
  asset = [(VSVoiceAssetSelection *)self asset];
  if (asset)
  {
    asset2 = [(VSVoiceAssetSelection *)self asset];
    v5 = [asset2 state] == 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isInstalled
{
  asset = [(VSVoiceAssetSelection *)self asset];
  if (asset)
  {
    asset2 = [(VSVoiceAssetSelection *)self asset];
    v5 = ([asset2 wasLocal] & 1) != 0 || self->_voicePath != 0;
  }

  else
  {
    v5 = self->_voicePath != 0;
  }

  return v5;
}

- (unint64_t)size
{
  asset = [(VSVoiceAssetSelection *)self asset];
  attributes = [asset attributes];

  v6 = [attributes objectForKeyedSubscript:*MEMORY[0x277D28920]];
  integerValue = [v6 integerValue];

  if ((integerValue & 0x8000000000000000) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VSMobileAssetsManager.m" lineNumber:211 description:@"negative size"];
  }

  return integerValue;
}

- (NSString)voicePath
{
  pthread_mutex_lock(&self->_voicePathLock);
  p_voicePath = &self->_voicePath;
  if (!self->_voicePath)
  {
    asset = [(VSVoiceAssetSelection *)self asset];

    if (asset)
    {
      asset2 = [(VSVoiceAssetSelection *)self asset];
      getLocalUrl = [asset2 getLocalUrl];
      path = [getLocalUrl path];

      if (path)
      {
        v8 = MEMORY[0x277CCACA8];
        voiceData = [(VSVoiceAssetSelection *)self voiceData];
        languages = [voiceData languages];
        firstObject = [languages firstObject];
        v12 = [v8 stringWithFormat:@"%@.tmp", firstObject];
        v13 = [path stringByAppendingPathComponent:v12];

        if (!v13 || ([MEMORY[0x277CCAA00] defaultManager], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "fileExistsAtPath:", v13), v14, v16 = v13, (v15 & 1) == 0))
        {
          v16 = path;
        }

        objc_storeStrong(&self->_voicePath, v16);
      }
    }

    else
    {
      builtInVoicePath = self->_builtInVoicePath;
      if (!builtInVoicePath)
      {
        goto LABEL_11;
      }

      v18 = builtInVoicePath;
      path = *p_voicePath;
      *p_voicePath = v18;
    }
  }

LABEL_11:
  pthread_mutex_unlock(&self->_voicePathLock);
  v19 = *p_voicePath;

  return v19;
}

- (id)descriptiveKey
{
  voiceData = [(VSVoiceAssetSelection *)self voiceData];
  descriptiveKey = [voiceData descriptiveKey];

  return descriptiveKey;
}

- (id)key
{
  voiceData = [(VSVoiceAssetSelection *)self voiceData];
  voiceKey = [voiceData voiceKey];

  return voiceKey;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_voicePathLock);
  v3.receiver = self;
  v3.super_class = VSVoiceAssetSelection;
  [(VSVoiceAssetSelection *)&v3 dealloc];
}

- (VSVoiceAssetSelection)initWithTrialVoice:(id)voice
{
  v22[1] = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  v6 = [(VSVoiceAssetSelection *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trialVoice, voice);
    v8 = objc_alloc_init(VSVoiceAsset);
    voiceData = v7->_voiceData;
    v7->_voiceData = v8;

    [(VSAssetBase *)v7->_voiceData setStorage:3];
    language = [voiceCopy language];
    if (language)
    {
      language2 = [voiceCopy language];
      v22[0] = language2;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      [(VSVoiceAsset *)v7->_voiceData setLanguages:v12];
    }

    else
    {
      [(VSVoiceAsset *)v7->_voiceData setLanguages:MEMORY[0x277CBEBF8]];
    }

    name = [voiceCopy name];
    [(VSVoiceAsset *)v7->_voiceData setName:name];

    -[VSVoiceAsset setType:](v7->_voiceData, "setType:", [voiceCopy type]);
    -[VSVoiceAsset setFootprint:](v7->_voiceData, "setFootprint:", [voiceCopy footprint]);
    -[VSVoiceAsset setGender:](v7->_voiceData, "setGender:", [voiceCopy gender]);
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(voiceCopy, "version")}];
    [(VSAssetBase *)v7->_voiceData setContentVersion:v14];

    if ([voiceCopy compatibilityVersion])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(voiceCopy, "compatibilityVersion")}];
      [(VSAssetBase *)v7->_voiceData setCompatibilityVersion:v15];
    }

    else
    {
      [(VSAssetBase *)v7->_voiceData setCompatibilityVersion:0];
    }

    -[VSVoiceAsset setIsInstalled:](v7->_voiceData, "setIsInstalled:", [voiceCopy isLocal]);
    [(VSAssetBase *)v7->_voiceData setIsPurgeable:1];
    [(VSVoiceAsset *)v7->_voiceData setIsBuiltInVoice:0];
    if ([voiceCopy assetSize])
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(voiceCopy, "assetSize")}];
      [(VSAssetBase *)v7->_voiceData setDownloadSize:v16];
    }

    else
    {
      [(VSAssetBase *)v7->_voiceData setDownloadSize:0];
    }

    path = [voiceCopy path];
    voicePath = v7->_voicePath;
    v7->_voicePath = path;

    if ([voiceCopy type] == 4)
    {
      v19 = v7->_voicePath;
      if (v19)
      {
        v19 = [VSNeuralTTSUtils isNeuralVoiceReady:?];
      }
    }

    else
    {
      v19 = 1;
    }

    [(VSVoiceAsset *)v7->_voiceData setIsVoiceReadyToUse:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (VSVoiceAssetSelection)init
{
  v5.receiver = self;
  v5.super_class = VSVoiceAssetSelection;
  v2 = [(VSVoiceAssetSelection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_voicePathLock, 0);
  }

  return v3;
}

@end