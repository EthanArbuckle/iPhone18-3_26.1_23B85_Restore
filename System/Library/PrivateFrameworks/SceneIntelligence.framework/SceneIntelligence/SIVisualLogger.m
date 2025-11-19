@interface SIVisualLogger
+ (id)_discoverSubloggers;
+ (id)defaultLogPath;
+ (id)sharedLogger;
- (BOOL)_stopLoggingToFile;
- (BOOL)_stopLoggingToHost;
- (BOOL)isLoggerEnabled:(id)a3;
- (BOOL)logBinaryData:(id)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6;
- (BOOL)logDictionary:(id)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6;
- (BOOL)logIOSurface:(__IOSurface *)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6;
- (BOOL)logNumber:(id)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6;
- (BOOL)logNumbers:(id)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6;
- (BOOL)logPixelBuffer:(__CVBuffer *)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6;
- (BOOL)startLoggingToFile:(id)a3 synchronously:(BOOL)a4;
- (BOOL)startLoggingToHost:(id)a3;
- (BOOL)stopAndDisableLogging;
- (Ref<const)createDataInfoAt:(double)a3 name:(id)a4;
- (SIVisualLogger)init;
- (id).cxx_construct;
- (id)_arrayOfNumbersToData:(id)a3 valueType:(unint64_t *)a4;
- (void)dealloc;
- (void)enableLogger:(id)a3;
- (void)logAndReleaseError:(__CFError *)a3;
- (void)registerSubloggers:(id)a3;
@end

@implementation SIVisualLogger

+ (id)sharedLogger
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SIVisualLogger_sharedLogger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[SIVisualLogger sharedLogger]::onceToken[0] != -1)
  {
    dispatch_once(+[SIVisualLogger sharedLogger]::onceToken, block);
  }

  v2 = +[SIVisualLogger sharedLogger]::sharedLogger;

  return v2;
}

uint64_t __30__SIVisualLogger_sharedLogger__block_invoke(uint64_t a1)
{
  +[SIVisualLogger sharedLogger]::sharedLogger = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SIVisualLogger)init
{
  v8.receiver = self;
  v8.super_class = SIVisualLogger;
  v2 = [(SIVisualLogger *)&v8 init];
  if (v2)
  {
    v3 = MEMORY[0x223D4C1E0]();
    v2->_visualLogger = v3;
    if (!v3)
    {
      v6 = 0;
      goto LABEL_6;
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
    registeredSubloggers = v2->_registeredSubloggers;
    v2->_registeredSubloggers = v4;

    v2->_register_lock._os_unfair_lock_opaque = 0;
  }

  v6 = v2;
LABEL_6:

  return v6;
}

- (void)registerSubloggers:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (SIInternalOSBuild())
  {
    objc_storeStrong(&self->_registeredSubloggers, a3);
    os_unfair_lock_lock(&self->_register_lock);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_registeredSubloggers;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          visualLogger = self->_visualLogger;
          v12 = v10;
          [v10 UTF8String];
          SubLoggerMutable = VZLoggerGetSubLoggerMutable();
          v14 = v10;
          v16 = [v10 UTF8String];
          v21 = &v16;
          std::__hash_table<std::__hash_value_type<char const*,VZSubLogger *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,VZSubLogger *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const*&&>,std::tuple<>>(&self->_vlSubloggerMap.__table_.__bucket_list_.__ptr_, &v16)[3] = SubLoggerMutable;
        }

        v7 = [(NSSet *)v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_register_lock);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(SIVisualLogger *)self _stopLoggingToFile];
  [(SIVisualLogger *)self _stopLoggingToHost];
  networkDestination = self->_networkDestination;
  VZRelease();
  fileDestination = self->_fileDestination;
  VZRelease();
  visualLogger = self->_visualLogger;
  VZRelease();
  v6.receiver = self;
  v6.super_class = SIVisualLogger;
  [(SIVisualLogger *)&v6 dealloc];
}

+ (id)_discoverSubloggers
{
  v2 = [MEMORY[0x277CBEB58] set];
  ClassList = objc_getClassList(0, 0);
  v4 = ClassList;
  if (ClassList)
  {
    v5 = malloc_type_malloc(8 * ClassList, 0x80040B8603338uLL);
    objc_getClassList(v5, v4);
    v6 = 0;
    v7 = 8 * v4;
    do
    {
      v8 = v5[v6 / 8];
      if (class_conformsToProtocol(v8, &unk_282F36BE8))
      {
        v9 = [(objc_class *)v8 subLoggers];
        [v2 unionSet:v9];
      }

      v6 += 8;
    }

    while (v7 != v6);
    free(v5);
  }

  return v2;
}

+ (id)defaultLogPath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"VisualLogger_SceneIntelligence"];

  return v3;
}

- (void)logAndReleaseError:(__CFError *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [(__CFError *)a3 code];
      v6 = [(__CFError *)a3 description];
      v8 = 136381443;
      v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
      v10 = 1025;
      v11 = 185;
      v12 = 2048;
      v13 = v5;
      v14 = 2113;
      v15 = v6;
      _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Error.\nCode: %zu\nDescription: %{private}@ ***", &v8, 0x26u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enableLogger:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_register_lock);
  v7[0] = [v4 UTF8String];
  v7[2] = v7;
  v5 = std::__hash_table<std::__hash_value_type<char const*,VZSubLogger *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,VZSubLogger *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const*&&>,std::tuple<>>(&self->_vlSubloggerMap.__table_.__bucket_list_.__ptr_, v7)[3];
  os_unfair_lock_unlock(&self->_register_lock);
  if (v5)
  {
    VZSubLoggerEnable();
  }

  else
  {
    visualLogger = self->_visualLogger;
    [v4 UTF8String];
    VZLoggerEnable();
  }
}

- (BOOL)isLoggerEnabled:(id)a3
{
  v4 = a3;
  if ((SIInternalOSBuild() & 1) != 0 && self->_visualLogger)
  {
    v10[0] = [v4 UTF8String];
    os_unfair_lock_lock(&self->_register_lock);
    v10[2] = v10;
    v5 = std::__hash_table<std::__hash_value_type<char const*,VZSubLogger *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,VZSubLogger *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const*&&>,std::tuple<>>(&self->_vlSubloggerMap.__table_.__bucket_list_.__ptr_, v10)[3];
    os_unfair_lock_unlock(&self->_register_lock);
    if (v5)
    {
      v6 = VZSubLoggerEnabled();
    }

    else
    {
      visualLogger = self->_visualLogger;
      [v4 UTF8String];
      v6 = VZLoggerEnabled();
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)startLoggingToFile:(id)a3 synchronously:(BOOL)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (self->_fileDestination)
    {
      v6 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136380931;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
        v19 = 1025;
        v20 = 232;
        v7 = " %{private}s:%{private}d *** Request to start file logging, but we already have a file destination. ***";
LABEL_7:
        _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v6 fileExistsAtPath:v5])
    {
      v17 = 0;
      v8 = [v6 removeItemAtPath:v5 error:&v17];
      v9 = v17;
      v10 = v9;
      if ((v8 & 1) == 0)
      {
        v13 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          buf[0] = 136381187;
          *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
          v19 = 1025;
          v20 = 243;
          v21 = 2113;
          v22 = v10;
          _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to remove item: %{private}@ ***", buf, 0x1Cu);
        }

        goto LABEL_20;
      }
    }

    v16 = 0;
    v11 = [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v16];
    v10 = v16;
    if (v11)
    {
      VZFileExportOptionsCreate();
      operator new();
    }

    v12 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136381443;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
      v19 = 1025;
      v20 = 252;
      v21 = 2113;
      v22 = v5;
      v23 = 2113;
      v24 = v10;
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create visual logger directory %{private}@. Error: %{private}@ ***", buf, 0x26u);
    }

LABEL_20:
    goto LABEL_21;
  }

  v6 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136380931;
    *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
    v19 = 1025;
    v20 = 227;
    v7 = " %{private}s:%{private}d *** Must have a non-nil logPath ***";
    goto LABEL_7;
  }

LABEL_21:

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_stopLoggingToFile
{
  if (!self->_visualLogger || !self->_fileDestination)
  {
    return 0;
  }

  VZLoggerRemoveDestination();
  v3 = 1;
  fileDestination = self->_fileDestination;
  VZRelease();
  self->_fileDestination = 0;
  return v3;
}

- (BOOL)startLoggingToHost:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (!self->_networkDestination)
    {
      VZClientOptionsCreate();
      operator new();
    }

    v5 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 136380931;
      *&v8[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
      v9 = 1025;
      v10 = 322;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Request to start network logging, but we already have a network destination. ***", v8, 0x12u);
    }
  }

  else
  {
    v5 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 136380931;
      *&v8[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
      v9 = 1025;
      v10 = 317;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Invalid host address ***", v8, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_stopLoggingToHost
{
  if (!self->_visualLogger || !self->_networkDestination)
  {
    return 0;
  }

  VZLoggerRemoveDestination();
  v3 = 1;
  networkDestination = self->_networkDestination;
  VZRelease();
  self->_networkDestination = 0;
  return v3;
}

- (BOOL)stopAndDisableLogging
{
  v3 = [(SIVisualLogger *)self _stopLoggingToHost];
  v4 = [(SIVisualLogger *)self _stopLoggingToFile];
  [(SIVisualLogger *)self _disableAllLogs];
  return v4 || v3;
}

- (Ref<const)createDataInfoAt:(double)a3 name:(id)a4
{
  a4;
  VZDataInfoCreate();
  operator new();
}

- (BOOL)logPixelBuffer:(__CVBuffer *)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  if ([(SIVisualLogger *)self isLoggerEnabled:v9])
  {
    [(SIVisualLogger *)self createDataInfoAt:v10 name:a4];
    VZDataCreateImageWithCVPixelBuffer();
    operator new();
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)logIOSurface:(__IOSurface *)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  if ([(SIVisualLogger *)self isLoggerEnabled:v9])
  {
    [(SIVisualLogger *)self createDataInfoAt:v10 name:a4];
    VZDataCreateImageWithIOSurface();
    operator new();
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)logDictionary:(id)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(SIVisualLogger *)self isLoggerEnabled:v11])
  {
    [(SIVisualLogger *)self createDataInfoAt:v12 name:a4];
    VZDataCreateDictionaryWithCFDictionary();
    operator new();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)logBinaryData:(id)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(SIVisualLogger *)self isLoggerEnabled:v11])
  {
    [(SIVisualLogger *)self createDataInfoAt:v12 name:a4];
    VZDataCreateBlobWithCFData();
    operator new();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_arrayOfNumbersToData:(id)a3 valueType:(unint64_t *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{8 * objc_msgSend(v6, "count")}];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v16 + 1) + 8 * i) doubleValue];
          v15 = v12;
          [v7 appendBytes:&v15 length:8];
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    *a4 = *MEMORY[0x277D79730];
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)logNumbers:(id)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (-[SIVisualLogger isLoggerEnabled:](self, "isLoggerEnabled:", v11) && [v10 count])
  {
    [(SIVisualLogger *)self createDataInfoAt:v12 name:a4];
    v15 = *MEMORY[0x277D79738];
    [(SIVisualLogger *)self _arrayOfNumbersToData:v10 valueType:&v15];
    objc_claimAutoreleasedReturnValue();
    VZDataCreateNumbersWithCFData();
    operator new();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)logNumber:(id)a3 at:(double)a4 sublogger:(id)a5 name:(id)a6
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(SIVisualLogger *)self isLoggerEnabled:v11])
  {
    [(SIVisualLogger *)self createDataInfoAt:v12 name:a4];
    VZDataCreateNumberWithCFNumber();
    operator new();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  return self;
}

@end