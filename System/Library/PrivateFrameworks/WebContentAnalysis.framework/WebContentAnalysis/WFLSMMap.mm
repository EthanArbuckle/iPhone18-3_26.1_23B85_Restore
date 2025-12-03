@interface WFLSMMap
+ (id)mapFromFilePath:(id)path;
+ (id)mapFromURL:(id)l;
+ (id)mapWithMap:(__LSMMap *)map;
- (WFLSMMap)initWithMap:(__LSMMap *)map;
- (WFLSMMap)initWithMapFromFilePath:(id)path;
- (WFLSMMap)initWithMapFromURL:(id)l;
- (__LSMText)_createLSMTextFromString:(id)string;
- (id)evaluate:(id)evaluate;
- (id)wordDump:(id)dump;
- (void)_setMap:(__LSMMap *)map;
- (void)dealloc;
@end

@implementation WFLSMMap

+ (id)mapWithMap:(__LSMMap *)map
{
  v3 = [objc_alloc(objc_opt_class()) initWithMap:map];

  return v3;
}

+ (id)mapFromURL:(id)l
{
  v3 = [objc_alloc(objc_opt_class()) initWithMapFromURL:l];

  return v3;
}

+ (id)mapFromFilePath:(id)path
{
  v3 = [objc_alloc(objc_opt_class()) initWithMapFromFilePath:path];

  return v3;
}

- (WFLSMMap)initWithMap:(__LSMMap *)map
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = WFLSMMap;
  v4 = [(WFLSMMap *)&v15 init];
  v5 = v4;
  if (v4)
  {
    [(WFLSMMap *)v4 _setMap:map];
    Properties = LSMMapGetProperties(map);
    if (Properties && (v8 = [(__CFDictionary *)Properties objectForKey:@"Explicit Threshold"]) != 0)
    {
      v9 = v8;
      [(WFLSMMap *)v5 setThreshold:v8];
      v10 = __WFDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        [v9 floatValue];
        *buf = 134217984;
        v17 = v11;
        _os_log_impl(&dword_272D73000, v10, OS_LOG_TYPE_INFO, "Threshold from LSM map: %f", buf, 0xCu);
      }
    }

    else
    {
      LODWORD(v7) = 1058977874;
      -[WFLSMMap setThreshold:](v5, "setThreshold:", [MEMORY[0x277CCABB0] numberWithFloat:v7]);
      v12 = __WFDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [WFLSMMap initWithMap:v12];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (WFLSMMap)initWithMapFromURL:(id)l
{
  v11 = 0;
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] && v11 != 1)
  {
    v8 = LSMMapCreateFromURL(*MEMORY[0x277CBECE8], l, 0);
    if (v8)
    {
      v9 = v8;
      v6 = [(WFLSMMap *)self initWithMap:v8];
      CFRelease(v9);
      return v6;
    }

    v10 = __WFDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WFLSMMap initWithMapFromURL:];
    }
  }

  else
  {
    v5 = __WFDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WFLSMMap initWithMapFromURL:];
    }
  }

  return 0;
}

- (WFLSMMap)initWithMapFromFilePath:(id)path
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];

  return [(WFLSMMap *)self initWithMapFromURL:v4];
}

- (void)_setMap:(__LSMMap *)map
{
  CFRetain(map);
  map = self->map;
  if (map)
  {
    CFRelease(map);
  }

  self->map = map;
}

- (__LSMText)_createLSMTextFromString:(id)string
{
  v4 = LSMTextCreate(*MEMORY[0x277CBECE8], self->map);
  if (!v4)
  {
    v7 = __WFDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WFLSMMap _createLSMTextFromString:];
    }

    return 0;
  }

  v5 = v4;
  if (string)
  {
    if (LSMTextAddWords(v4, string, 0, 0))
    {
      v6 = __WFDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [WFLSMMap _createLSMTextFromString:];
      }

      return 0;
    }
  }

  else
  {
    v8 = __WFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WFLSMMap _createLSMTextFromString:];
    }
  }

  return v5;
}

- (id)evaluate:(id)evaluate
{
  v4 = [(WFLSMMap *)self _createLSMTextFromString:evaluate];
  v5 = LSMResultCreate(*MEMORY[0x277CBECE8], self->map, v4, [(WFLSMMap *)self numberOfCategories], 0);
  CFRelease(v4);
  if (!v5)
  {
    v6 = __WFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WFLSMMap evaluate:];
    }
  }

  v7 = [WFLSMResult LSMResultWithLSMResultRef:v5 threshold:[(WFLSMMap *)self threshold]];
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

- (id)wordDump:(id)dump
{
  v4 = [(WFLSMMap *)self _createLSMTextFromString:dump];
  v5 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x277CBECE8], *MEMORY[0x277CBECE8]);
  CFWriteStreamOpen(v5);
  LSMMapWriteToStream(self->map, v4, v5, 0);
  CFWriteStreamClose(v5);
  v6 = CFWriteStreamCopyProperty(v5, *MEMORY[0x277CBF068]);
  CFRelease(v5);
  CFRelease(v4);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v6, "bytes")}];

  v8 = [objc_msgSend(v7 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")), "mutableCopy"}];
  [v8 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v9 = [objc_msgSend(v8 "reverseObjectEnumerator")];

  return [v9 componentsJoinedByString:@"\n"];
}

- (void)dealloc
{
  map = self->map;
  if (map)
  {
    CFRelease(map);
  }

  v4.receiver = self;
  v4.super_class = WFLSMMap;
  [(WFLSMMap *)&v4 dealloc];
}

- (void)initWithMapFromURL:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_272D73000, v0, OS_LOG_TYPE_ERROR, "**** WFLSMMap initWithMapFromURL:%@ an error occurred loading the map", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithMapFromURL:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_272D73000, v0, OS_LOG_TYPE_ERROR, "**** WFLSMMap initWithMapFromURL:%@ file doesn't exist", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_createLSMTextFromString:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_272D73000, v0, v1, "**** %@: LSMTextAddWords failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createLSMTextFromString:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_272D73000, v0, v1, "**** %@: Couldn't create text because the strippedContent is nil", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createLSMTextFromString:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_272D73000, v0, v1, "**** %@: Couldn't create text", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)evaluate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_272D73000, v0, v1, "**** %@: LSMResultCreate failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end