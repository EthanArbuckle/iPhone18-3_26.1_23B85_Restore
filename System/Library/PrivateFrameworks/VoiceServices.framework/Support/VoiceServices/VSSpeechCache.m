@interface VSSpeechCache
+ (VSSpeechCache)defaultCacheStore;
- (BOOL)isPreinstalledCacheAvailableForRequest:(id)a3;
- (VSSpeechCache)initWithStorePath:(id)a3;
- (id)addCache:(id)a3;
- (id)cacheDataForKey:(id)a3;
- (id)preinstalledCacheForText:(id)a3 language:(id)a4 name:(id)a5;
- (unint64_t)totalCacheSize;
- (void)cleanCache;
- (void)deleteCache;
@end

@implementation VSSpeechCache

- (void)deleteCache
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [(VSSpeechCache *)self dirPath];
  [v4 removeDirectory:v3];
}

- (unint64_t)totalCacheSize
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(VSSpeechCache *)self dirPath];
  v5 = [v3 directorySize:v4];

  return v5;
}

- (void)cleanCache
{
  if ([MEMORY[0x277D799C0] isHomePod])
  {
    v3 = 5000;
  }

  else
  {
    v3 = 2000;
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(VSSpeechCache *)self dirPath];
  [v5 cleanDirectory:v4 withLRULimit:v3];
}

- (BOOL)isPreinstalledCacheAvailableForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v4 languageCode];
  v7 = [v4 voiceName];

  v8 = [(VSSpeechCache *)self preinstalledCacheForText:v5 language:v6 name:v7];

  return v8 != 0;
}

- (id)cacheDataForKey:(id)a3
{
  v4 = a3;
  v5 = [(VSSpeechCache *)self dirPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  v8 = v7;
  if (v7 && [v7 bytes])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v8, "bytes")}];
    v10 = NSClassFromString(v9);
    v11 = [v8 subdataWithRange:{64, objc_msgSend(v8, "length") - 64}];
    v12 = [[v10 alloc] initWithKey:v4 data:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)preinstalledCacheForText:(id)a3 language:(id)a4 name:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D799B0] availableLanguages];
  v12 = [v11 containsObject:v9];

  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = [MEMORY[0x277D799B0] fallbackLanguageForLanguage:v9];
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v9;
      v32 = 2114;
      v33 = v13;
      _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_DEFAULT, "{public}%@ is not TTS language, falling back to %{public}@", buf, 0x16u);
    }
  }

  v15 = [v8 preinstalledAudioHashForLanguage:v13 name:v10];
  v16 = [(VSSpeechCache *)self preinstalledCacheDir];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v13, v10];
  v18 = [v16 stringByAppendingPathComponent:v17];

  v19 = [v18 stringByAppendingPathComponent:v15];

  v20 = [v19 stringByAppendingPathExtension:@"caf"];

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v18) = [v21 isReadableFileAtPath:v20];

  if (v18)
  {
    v29 = 0;
    v22 = [MEMORY[0x277D79920] audioDataFromFile:v20 error:&v29];
    v23 = v29;
    if (v23)
    {
      v24 = VSGetLogDefault();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v31 = v20;
        v32 = 2112;
        v33 = v23;
        _os_log_error_impl(&dword_2727E4000, v24, OS_LOG_TYPE_ERROR, "Error in reading audio data from file: %@ error:%@", buf, 0x16u);
      }

      v25 = 0;
    }

    else
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@:%@:%@:%@", v13, @"gryphon", @"unknown", v10, @"premium", @"0"];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@", v13, @"preinstalledCache", @"0"];
      v25 = [[VSSpeechCacheAudio alloc] initWithKey:v15 audio:v22 wordTimingInfo:0 voiceKey:v24 voiceResourceKey:v26];
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)addCache:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() description];
  v6 = [v5 dataUsingEncoding:4];
  if (([v6 length] - 64) > 0xFFFFFFFFFFFFFFBELL)
  {
    v9 = [v4 serializedData];
    v11 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v9, "length") + 64}];
    [v11 appendData:v6];
    [v11 setLength:64];
    [v11 appendData:v9];
    v12 = [(VSSpeechCache *)self dirPath];
    v13 = [v4 key];
    v14 = [v12 stringByAppendingPathComponent:v13];

    v19 = 0;
    LOBYTE(v13) = [v11 writeToFile:v14 options:0 error:&v19];
    v10 = v19;
    if ((v13 & 1) == 0)
    {
      v15 = VSGetLogDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = [v10 description];
        *buf = 136315394;
        v21 = "[VSSpeechCache addCache:]";
        v22 = 2112;
        v23 = v18;
        _os_log_error_impl(&dword_2727E4000, v15, OS_LOG_TYPE_ERROR, "Error %s, %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "Cache type name too long %@", buf, 0xCu);
    }

    v8 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA470];
    v25[0] = @"Cache type name too long";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v10 = [v8 errorWithDomain:@"VSSpeechCacheErrorDomain" code:0 userInfo:v9];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (VSSpeechCache)initWithStorePath:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20.receiver = self;
  v20.super_class = VSSpeechCache;
  v6 = [(VSSpeechCache *)&v20 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.voiceservices"];
  v8 = [v7 bundlePath];
  v9 = [v8 stringByAppendingPathComponent:@"TTSResources/PreinstallCache/"];
  preinstalledCacheDir = v6->_preinstalledCacheDir;
  v6->_preinstalledCacheDir = v9;

  objc_storeStrong(&v6->_dirPath, a3);
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  dirPath = v6->_dirPath;
  v19 = 0;
  LOBYTE(v8) = [v11 createDirectoryAtPath:dirPath withIntermediateDirectories:1 attributes:0 error:&v19];
  v13 = v19;

  if (v8)
  {

LABEL_4:
    v14 = v6;
    goto LABEL_8;
  }

  v15 = VSGetLogDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v18 = [v13 description];
    *buf = 136315394;
    v22 = "[VSSpeechCache initWithStorePath:]";
    v23 = 2112;
    v24 = v18;
    _os_log_error_impl(&dword_2727E4000, v15, OS_LOG_TYPE_ERROR, "Error %s, %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (VSSpeechCache)defaultCacheStore
{
  if (defaultCacheStore_onceToken != -1)
  {
    dispatch_once(&defaultCacheStore_onceToken, &__block_literal_global_1098);
  }

  v3 = defaultCacheStore___defaultStore;

  return v3;
}

void __34__VSSpeechCache_defaultCacheStore__block_invoke()
{
  v8[2] = *MEMORY[0x277D85DE8];
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 firstObject];

  v2 = MEMORY[0x277CCACA8];
  v8[0] = v1;
  v8[1] = @"VoiceServices";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [v2 pathWithComponents:v3];

  v5 = [[VSSpeechCache alloc] initWithStorePath:v4];
  v6 = defaultCacheStore___defaultStore;
  defaultCacheStore___defaultStore = v5;

  v7 = *MEMORY[0x277D85DE8];
}

@end