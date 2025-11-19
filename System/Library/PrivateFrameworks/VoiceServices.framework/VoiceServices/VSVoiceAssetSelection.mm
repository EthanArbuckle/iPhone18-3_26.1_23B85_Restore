@interface VSVoiceAssetSelection
- (BOOL)isDownloading;
- (BOOL)isInstalled;
- (NSString)voicePath;
- (VSVoiceAssetSelection)init;
- (VSVoiceAssetSelection)initWithTrialVoice:(id)a3;
- (_opaque_pthread_mutex_t)voicePathLock;
- (double)preferenceScore;
- (id)descriptiveKey;
- (id)key;
- (unint64_t)size;
- (void)dealloc;
- (void)setVoicePathLock:(_opaque_pthread_mutex_t *)a3;
@end

@implementation VSVoiceAssetSelection

- (void)setVoicePathLock:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[40];
  *&self->_voicePathLock.__opaque[24] = *&a3->__opaque[24];
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
  v3 = [(VSVoiceAssetSelection *)self voiceData];
  v4 = [v3 type];

  v5 = 0.0;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v5 = 3000.0;
    }

    else if (v4 == 4)
    {
      v6 = [(VSVoiceAssetSelection *)self voiceData];
      v7 = [v6 isVoiceReadyToUse];

      if (v7)
      {
        v5 = 4000.0;
      }

      else
      {
        v5 = 0.0;
      }
    }
  }

  else if (v4 == 1)
  {
    v5 = 1000.0;
  }

  else if (v4 == 2)
  {
    v5 = 2000.0;
  }

  v8 = [(VSVoiceAssetSelection *)self voiceData];
  v9 = [v8 footprint];

  if (v9 == 3)
  {
    v10 = 300.0;
    v12 = v5 + 300.0;
  }

  else
  {
    v10 = v5 + 200.0;
    v11 = v5 + 100.0;
    if (v9 != 1)
    {
      v11 = v5;
    }

    if (v9 == 2)
    {
      v12 = v5 + 200.0;
    }

    else
    {
      v12 = v11;
    }
  }

  v13 = [(VSVoiceAssetSelection *)self voiceData];
  v14 = [v13 contentVersion];
  [v14 floatValue];
  v16 = v12 + v15 / 2147483650.0;

  return v16;
}

- (BOOL)isDownloading
{
  v3 = [(VSVoiceAssetSelection *)self asset];
  if (v3)
  {
    v4 = [(VSVoiceAssetSelection *)self asset];
    v5 = [v4 state] == 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isInstalled
{
  v3 = [(VSVoiceAssetSelection *)self asset];
  if (v3)
  {
    v4 = [(VSVoiceAssetSelection *)self asset];
    v5 = ([v4 wasLocal] & 1) != 0 || self->_voicePath != 0;
  }

  else
  {
    v5 = self->_voicePath != 0;
  }

  return v5;
}

- (unint64_t)size
{
  v4 = [(VSVoiceAssetSelection *)self asset];
  v5 = [v4 attributes];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D28920]];
  v7 = [v6 integerValue];

  if ((v7 & 0x8000000000000000) != 0)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"VSMobileAssetsManager.m" lineNumber:211 description:@"negative size"];
  }

  return v7;
}

- (NSString)voicePath
{
  pthread_mutex_lock(&self->_voicePathLock);
  p_voicePath = &self->_voicePath;
  if (!self->_voicePath)
  {
    v4 = [(VSVoiceAssetSelection *)self asset];

    if (v4)
    {
      v5 = [(VSVoiceAssetSelection *)self asset];
      v6 = [v5 getLocalUrl];
      v7 = [v6 path];

      if (v7)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = [(VSVoiceAssetSelection *)self voiceData];
        v10 = [v9 languages];
        v11 = [v10 firstObject];
        v12 = [v8 stringWithFormat:@"%@.tmp", v11];
        v13 = [v7 stringByAppendingPathComponent:v12];

        if (!v13 || ([MEMORY[0x277CCAA00] defaultManager], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "fileExistsAtPath:", v13), v14, v16 = v13, (v15 & 1) == 0))
        {
          v16 = v7;
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
      v7 = *p_voicePath;
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
  v2 = [(VSVoiceAssetSelection *)self voiceData];
  v3 = [v2 descriptiveKey];

  return v3;
}

- (id)key
{
  v2 = [(VSVoiceAssetSelection *)self voiceData];
  v3 = [v2 voiceKey];

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_voicePathLock);
  v3.receiver = self;
  v3.super_class = VSVoiceAssetSelection;
  [(VSVoiceAssetSelection *)&v3 dealloc];
}

- (VSVoiceAssetSelection)initWithTrialVoice:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(VSVoiceAssetSelection *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trialVoice, a3);
    v8 = objc_alloc_init(VSVoiceAsset);
    voiceData = v7->_voiceData;
    v7->_voiceData = v8;

    [(VSAssetBase *)v7->_voiceData setStorage:3];
    v10 = [v5 language];
    if (v10)
    {
      v11 = [v5 language];
      v22[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      [(VSVoiceAsset *)v7->_voiceData setLanguages:v12];
    }

    else
    {
      [(VSVoiceAsset *)v7->_voiceData setLanguages:MEMORY[0x277CBEBF8]];
    }

    v13 = [v5 name];
    [(VSVoiceAsset *)v7->_voiceData setName:v13];

    -[VSVoiceAsset setType:](v7->_voiceData, "setType:", [v5 type]);
    -[VSVoiceAsset setFootprint:](v7->_voiceData, "setFootprint:", [v5 footprint]);
    -[VSVoiceAsset setGender:](v7->_voiceData, "setGender:", [v5 gender]);
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "version")}];
    [(VSAssetBase *)v7->_voiceData setContentVersion:v14];

    if ([v5 compatibilityVersion])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "compatibilityVersion")}];
      [(VSAssetBase *)v7->_voiceData setCompatibilityVersion:v15];
    }

    else
    {
      [(VSAssetBase *)v7->_voiceData setCompatibilityVersion:0];
    }

    -[VSVoiceAsset setIsInstalled:](v7->_voiceData, "setIsInstalled:", [v5 isLocal]);
    [(VSAssetBase *)v7->_voiceData setIsPurgeable:1];
    [(VSVoiceAsset *)v7->_voiceData setIsBuiltInVoice:0];
    if ([v5 assetSize])
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "assetSize")}];
      [(VSAssetBase *)v7->_voiceData setDownloadSize:v16];
    }

    else
    {
      [(VSAssetBase *)v7->_voiceData setDownloadSize:0];
    }

    v17 = [v5 path];
    voicePath = v7->_voicePath;
    v7->_voicePath = v17;

    if ([v5 type] == 4)
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