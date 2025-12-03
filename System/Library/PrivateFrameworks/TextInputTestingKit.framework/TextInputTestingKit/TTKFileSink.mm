@interface TTKFileSink
- (id)generateData;
- (id)generateLayouts;
- (id)generateTestCases;
- (id)init:(id)init inputMode:(id)mode layouts:(id)layouts;
- (void)addLayouts:(id)layouts;
- (void)close;
@end

@implementation TTKFileSink

- (void)close
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:self->_fileName append:0];
  [v4 open];
  if ([v4 streamStatus] == 7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26D490000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error opening JSON from a file", buf, 2u);
    }

    [v4 close];
  }

  else
  {
    generateData = [(TTKFileSink *)self generateData];
    v6 = 0;
    if (![MEMORY[0x277CCAAA0] writeJSONObject:generateData toStream:v4 options:1 error:&v6])
    {
      NSLog(&cfstr_ErrorWritingJs.isa);
    }

    [v4 close];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)generateData
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:2];
  [dictionary setObject:v4 forKeyedSubscript:@"major_version"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [dictionary setObject:v5 forKeyedSubscript:@"minor_version"];

  [dictionary setObject:self->_inputMode forKeyedSubscript:@"input_mode"];
  if (self->_layouts)
  {
    generateLayouts = [(TTKFileSink *)self generateLayouts];
    [dictionary setObject:generateLayouts forKeyedSubscript:@"layouts"];
  }

  if (self->_testCases)
  {
    generateTestCases = [(TTKFileSink *)self generateTestCases];
    [dictionary setObject:generateTestCases forKeyedSubscript:@"test_cases"];
  }

  return dictionary;
}

- (id)generateTestCases
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_testCases;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        toJsonDictionary = [*(*(&v11 + 1) + 8 * i) toJsonDictionary];
        [array addObject:toJsonDictionary];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)generateLayouts
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_layouts;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSDictionary *)self->_layouts objectForKey:*(*(&v12 + 1) + 8 * i), v12];
        toJsonDictionary = [v9 toJsonDictionary];
        [array addObject:toJsonDictionary];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)addLayouts:(id)layouts
{
  v4 = MEMORY[0x277CBEB38];
  layouts = self->_layouts;
  layoutsCopy = layouts;
  v7 = [v4 dictionaryWithDictionary:layouts];
  [(NSDictionary *)v7 addEntriesFromDictionary:layoutsCopy];

  v8 = self->_layouts;
  self->_layouts = v7;
}

- (id)init:(id)init inputMode:(id)mode layouts:(id)layouts
{
  initCopy = init;
  modeCopy = mode;
  layoutsCopy = layouts;
  v17.receiver = self;
  v17.super_class = TTKFileSink;
  v12 = [(TTKFileSink *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileName, init);
    objc_storeStrong(&v13->_inputMode, mode);
    objc_storeStrong(&v13->_layouts, layouts);
    array = [MEMORY[0x277CBEB18] array];
    testCases = v13->_testCases;
    v13->_testCases = array;
  }

  return v13;
}

@end