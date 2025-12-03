@interface VSSpeechCache
+ (VSSpeechCache)defaultCacheStore;
- (BOOL)isPreinstalledCacheAvailableForRequest:(id)request;
- (VSSpeechCache)initWithStorePath:(id)path;
- (id)addCache:(id)cache;
- (id)cacheDataForKey:(id)key;
- (id)preinstalledCacheForText:(id)text language:(id)language name:(id)name;
- (unint64_t)totalCacheSize;
- (void)cleanCache;
- (void)deleteCache;
@end

@implementation VSSpeechCache

- (void)deleteCache
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  dirPath = [(VSSpeechCache *)self dirPath];
  [defaultManager removeDirectory:dirPath];
}

- (unint64_t)totalCacheSize
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  dirPath = [(VSSpeechCache *)self dirPath];
  v5 = [defaultManager directorySize:dirPath];

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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  dirPath = [(VSSpeechCache *)self dirPath];
  [defaultManager cleanDirectory:dirPath withLRULimit:v3];
}

- (BOOL)isPreinstalledCacheAvailableForRequest:(id)request
{
  requestCopy = request;
  text = [requestCopy text];
  languageCode = [requestCopy languageCode];
  voiceName = [requestCopy voiceName];

  v8 = [(VSSpeechCache *)self preinstalledCacheForText:text language:languageCode name:voiceName];

  return v8 != 0;
}

- (id)cacheDataForKey:(id)key
{
  keyCopy = key;
  dirPath = [(VSSpeechCache *)self dirPath];
  v6 = [dirPath stringByAppendingPathComponent:keyCopy];

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  v8 = v7;
  if (v7 && [v7 bytes])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v8, "bytes")}];
    v10 = NSClassFromString(v9);
    v11 = [v8 subdataWithRange:{64, objc_msgSend(v8, "length") - 64}];
    v12 = [[v10 alloc] initWithKey:keyCopy data:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)preinstalledCacheForText:(id)text language:(id)language name:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  textCopy = text;
  languageCopy = language;
  nameCopy = name;
  availableLanguages = [MEMORY[0x277D799B0] availableLanguages];
  v12 = [availableLanguages containsObject:languageCopy];

  if (v12)
  {
    v13 = languageCopy;
  }

  else
  {
    v13 = [MEMORY[0x277D799B0] fallbackLanguageForLanguage:languageCopy];
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = languageCopy;
      v32 = 2114;
      v33 = v13;
      _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_DEFAULT, "{public}%@ is not TTS language, falling back to %{public}@", buf, 0x16u);
    }
  }

  v15 = [textCopy preinstalledAudioHashForLanguage:v13 name:nameCopy];
  preinstalledCacheDir = [(VSSpeechCache *)self preinstalledCacheDir];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v13, nameCopy];
  v18 = [preinstalledCacheDir stringByAppendingPathComponent:nameCopy];

  v19 = [v18 stringByAppendingPathComponent:v15];

  v20 = [v19 stringByAppendingPathExtension:@"caf"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v18) = [defaultManager isReadableFileAtPath:v20];

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
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@:%@:%@:%@", v13, @"gryphon", @"unknown", nameCopy, @"premium", @"0"];
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

- (id)addCache:(id)cache
{
  v25[1] = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = [objc_opt_class() description];
  v6 = [v5 dataUsingEncoding:4];
  if (([v6 length] - 64) > 0xFFFFFFFFFFFFFFBELL)
  {
    serializedData = [cacheCopy serializedData];
    v11 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(serializedData, "length") + 64}];
    [v11 appendData:v6];
    [v11 setLength:64];
    [v11 appendData:serializedData];
    dirPath = [(VSSpeechCache *)self dirPath];
    v13 = [cacheCopy key];
    v14 = [dirPath stringByAppendingPathComponent:v13];

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
    serializedData = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v10 = [v8 errorWithDomain:@"VSSpeechCacheErrorDomain" code:0 userInfo:serializedData];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (VSSpeechCache)initWithStorePath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = VSSpeechCache;
  v6 = [(VSSpeechCache *)&v20 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.voiceservices"];
  bundlePath = [v7 bundlePath];
  v9 = [bundlePath stringByAppendingPathComponent:@"TTSResources/PreinstallCache/"];
  preinstalledCacheDir = v6->_preinstalledCacheDir;
  v6->_preinstalledCacheDir = v9;

  objc_storeStrong(&v6->_dirPath, path);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  dirPath = v6->_dirPath;
  v19 = 0;
  LOBYTE(bundlePath) = [defaultManager createDirectoryAtPath:dirPath withIntermediateDirectories:1 attributes:0 error:&v19];
  v13 = v19;

  if (bundlePath)
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