@interface VSDiagnosticService
+ (id)defaultService;
- (VSDiagnosticService)initWithDirectory:(id)directory;
- (unint64_t)totalDiagnosticFileSize;
- (void)collectTailspin:(id)tailspin;
- (void)createDirectoryIfNeeded;
- (void)dumpCompressedAudio:(id)audio forRequest:(id)request;
- (void)dumpInstrumentMetrics:(id)metrics withTimestamp:(int64_t)timestamp;
- (void)dumpStreamAudio:(id)audio forRequest:(id)request;
- (void)removeDirectory;
- (void)removeOldFiles;
@end

@implementation VSDiagnosticService

- (void)collectTailspin:(id)tailspin
{
  v23[2] = *MEMORY[0x277D85DE8];
  tailspinCopy = tailspin;
  [(VSDiagnosticService *)self createDirectoryIfNeeded];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"yyyy_MM_dd-HHmmss.SSS"];
  v6 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [v5 stringFromDate:date];
  v9 = [v6 stringWithFormat:@"TTS-stall-%@.tailspin", v8];

  v10 = MEMORY[0x277CCACA8];
  v23[0] = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
  v23[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v12 = [v10 pathWithComponents:v11];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createFileAtPath:v12 contents:0 attributes:0];

  v14 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingAtPath:v12];
  [v14 fileDescriptor];
  v15 = dispatch_get_global_queue(9, 0);
  v21 = v12;
  v22 = tailspinCopy;
  v20 = v14;
  v16 = v12;
  v17 = tailspinCopy;
  v18 = v14;
  tailspin_dump_output();

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __39__VSDiagnosticService_collectTailspin___block_invoke(uint64_t a1)
{
  [*(a1 + 32) closeFile];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)dumpInstrumentMetrics:(id)metrics withTimestamp:(int64_t)timestamp
{
  v27 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  if (metricsCopy)
  {
    v21 = 0;
    v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:metricsCopy options:0 error:&v21];
    v8 = v21;
    if (v8)
    {
      timestamp = VSGetLogDefault();
      if (os_log_type_enabled(timestamp, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = metricsCopy;
        v25 = 2112;
        v26 = v8;
        _os_log_error_impl(&dword_2727E4000, timestamp, OS_LOG_TYPE_ERROR, "Unable to parse json for dictionary '%@', error: %@", buf, 0x16u);
      }
    }

    else
    {
      [(VSDiagnosticService *)self createDirectoryIfNeeded];
      timestamp = [MEMORY[0x277CCACA8] stringWithFormat:@"TTSMetrics-%lld", timestamp];
      v10 = MEMORY[0x277CCACA8];
      v22[0] = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
      v11 = [timestamp stringByAppendingString:@".json"];
      v22[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      v13 = [v10 pathWithComponents:v12];

      v14 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__VSDiagnosticService_dumpInstrumentMetrics_withTimestamp___block_invoke;
      block[3] = &unk_279E4B970;
      v18 = v13;
      selfCopy = self;
      v20 = v7;
      v15 = v13;
      dispatch_async(v14, block);
    }
  }

  else
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "No json data to dump", buf, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __59__VSDiagnosticService_dumpInstrumentMetrics_withTimestamp___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) audioDumpFileAttributes];
  [v2 createFileAtPath:v3 contents:0 attributes:v4];

  LOBYTE(v3) = [*(a1 + 48) writeToFile:*(a1 + 32) atomically:1];
  v5 = VSGetLogDefault();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, "Instrument metrics json dump saved as %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138412290;
    v11 = v9;
    _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Unable to create instrument metrics json dump at '%@'", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dumpStreamAudio:(id)audio forRequest:(id)request
{
  v26[2] = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  if ([request canLogRequestText])
  {
    if (audioCopy)
    {
      [(VSDiagnosticService *)self createDirectoryIfNeeded];
      v7 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v7 setDateFormat:@"yyyy_MM_dd-HHmmss.SSS"];
      v8 = MEMORY[0x277CCACA8];
      date = [MEMORY[0x277CBEAA8] date];
      v10 = [v7 stringFromDate:date];
      v11 = [v8 stringWithFormat:@"TTS-%@", v10];

      v12 = MEMORY[0x277CCACA8];
      v26[0] = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
      v13 = [v11 stringByAppendingString:@".tmp"];
      v26[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      v15 = [v12 pathWithComponents:v14];

      v16 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__VSDiagnosticService_dumpStreamAudio_forRequest___block_invoke;
      block[3] = &unk_279E4B948;
      v21 = v15;
      selfCopy = self;
      v23 = audioCopy;
      v24 = v11;
      v17 = v11;
      v18 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "No audio do dump", buf, 2u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __50__VSDiagnosticService_dumpStreamAudio_forRequest___block_invoke(uint64_t a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) audioDumpFileAttributes];
  [v2 createFileAtPath:v3 contents:0 attributes:v4];

  if ([*(a1 + 48) writeWaveToFilePath:*(a1 + 32)])
  {
    v5 = MEMORY[0x277CCACA8];
    v21[0] = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
    v6 = [*(a1 + 56) stringByAppendingString:@".wav"];
    v21[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v8 = [v5 pathWithComponents:v7];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = *(a1 + 32);
    v16 = 0;
    [v9 moveItemAtPath:v10 toPath:v8 error:&v16];
    v11 = v16;

    v12 = VSGetLogDefault();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v11;
        _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Unable to create audio dump at '%@', error: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_INFO, "Audio save as %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v18 = v14;
      _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "Unable to create intermediate audio dump at '%@'", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dumpCompressedAudio:(id)audio forRequest:(id)request
{
  v26[2] = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  if ([request canLogRequestText])
  {
    if (audioCopy)
    {
      [(VSDiagnosticService *)self createDirectoryIfNeeded];
      v7 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v7 setDateFormat:@"yyyy_MM_dd-HHmmss.SSS"];
      v8 = MEMORY[0x277CCACA8];
      date = [MEMORY[0x277CBEAA8] date];
      v10 = [v7 stringFromDate:date];
      v11 = [v8 stringWithFormat:@"TTS-%@", v10];

      v12 = MEMORY[0x277CCACA8];
      v26[0] = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
      v13 = [v11 stringByAppendingString:@".tmp"];
      v26[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      v15 = [v12 pathWithComponents:v14];

      v16 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__VSDiagnosticService_dumpCompressedAudio_forRequest___block_invoke;
      block[3] = &unk_279E4B948;
      v21 = v15;
      selfCopy = self;
      v23 = audioCopy;
      v24 = v11;
      v17 = v11;
      v18 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "No compressed audio do dump", buf, 2u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __54__VSDiagnosticService_dumpCompressedAudio_forRequest___block_invoke(uint64_t a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) audioDumpFileAttributes];
  [v2 createFileAtPath:v3 contents:0 attributes:v4];

  if ([*(a1 + 48) writeToFilePath:*(a1 + 32)])
  {
    v5 = MEMORY[0x277CCACA8];
    v21[0] = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
    v6 = [*(a1 + 56) stringByAppendingString:@".wav"];
    v21[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v8 = [v5 pathWithComponents:v7];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = *(a1 + 32);
    v16 = 0;
    [v9 moveItemAtPath:v10 toPath:v8 error:&v16];
    v11 = v16;

    v12 = VSGetLogDefault();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v11;
        _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Unable to create audio dump at '%@', error: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_INFO, "Audio save as %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v18 = v14;
      _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "Unable to create intermediate audio dump at '%@'", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)createDirectoryIfNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager fileExistsAtPath:self->_audioDumpPath isDirectory:&v15];

  if ((v15 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    audioDumpPath = self->_audioDumpPath;
    audioDumpFileAttributes = self->_audioDumpFileAttributes;
    v14 = 0;
    v7 = [defaultManager2 createDirectoryAtPath:audioDumpPath withIntermediateDirectories:1 attributes:audioDumpFileAttributes error:&v14];
    v8 = v14;

    v9 = VSGetLogDefault();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_audioDumpPath;
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Created audio dump directory %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 description];
      *buf = 136315394;
      v17 = "[VSDiagnosticService createDirectoryIfNeeded]";
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&dword_2727E4000, v10, OS_LOG_TYPE_ERROR, "Error %s, %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeDirectory
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  audioDumpPath = [(VSDiagnosticService *)self audioDumpPath];
  [defaultManager removeDirectory:audioDumpPath];
}

- (unint64_t)totalDiagnosticFileSize
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  audioDumpPath = [(VSDiagnosticService *)self audioDumpPath];
  v5 = [defaultManager directorySize:audioDumpPath];

  return v5;
}

- (void)removeOldFiles
{
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-864000.0];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  audioDumpPath = [(VSDiagnosticService *)self audioDumpPath];
  [defaultManager cleanDirectory:audioDumpPath withDateOlderThan:v5];
}

- (VSDiagnosticService)initWithDirectory:(id)directory
{
  v14[1] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v12.receiver = self;
  v12.super_class = VSDiagnosticService;
  v6 = [(VSDiagnosticService *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioDumpPath, directory);
    v13 = *MEMORY[0x277CCA160];
    v14[0] = @"mobile";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    audioDumpFileAttributes = v7->_audioDumpFileAttributes;
    v7->_audioDumpFileAttributes = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)defaultService
{
  if (defaultService_onceToken != -1)
  {
    dispatch_once(&defaultService_onceToken, &__block_literal_global_2192);
  }

  v3 = defaultService___defaultStore;

  return v3;
}

void __37__VSDiagnosticService_defaultService__block_invoke()
{
  v0 = [MEMORY[0x277D79998] standardInstance];
  v1 = [v0 enableAudioDump];

  if (v1)
  {
    defaultService___defaultStore = [[VSDiagnosticService alloc] initWithDirectory:@"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/"];

    MEMORY[0x2821F96F8]();
  }
}

@end