@interface TTKFileSink
- (id)generateData;
- (id)generateLayouts;
- (id)generateTestCases;
- (id)init:(id)a3 inputMode:(id)a4 layouts:(id)a5;
- (void)addLayouts:(id)a3;
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
    v5 = [(TTKFileSink *)self generateData];
    v6 = 0;
    if (![MEMORY[0x277CCAAA0] writeJSONObject:v5 toStream:v4 options:1 error:&v6])
    {
      NSLog(&cfstr_ErrorWritingJs.isa);
    }

    [v4 close];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)generateData
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:2];
  [v3 setObject:v4 forKeyedSubscript:@"major_version"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [v3 setObject:v5 forKeyedSubscript:@"minor_version"];

  [v3 setObject:self->_inputMode forKeyedSubscript:@"input_mode"];
  if (self->_layouts)
  {
    v6 = [(TTKFileSink *)self generateLayouts];
    [v3 setObject:v6 forKeyedSubscript:@"layouts"];
  }

  if (self->_testCases)
  {
    v7 = [(TTKFileSink *)self generateTestCases];
    [v3 setObject:v7 forKeyedSubscript:@"test_cases"];
  }

  return v3;
}

- (id)generateTestCases
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
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

        v9 = [*(*(&v11 + 1) + 8 * i) toJsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)generateLayouts
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
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
        v10 = [v9 toJsonDictionary];
        [v3 addObject:v10];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addLayouts:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  layouts = self->_layouts;
  v6 = a3;
  v7 = [v4 dictionaryWithDictionary:layouts];
  [(NSDictionary *)v7 addEntriesFromDictionary:v6];

  v8 = self->_layouts;
  self->_layouts = v7;
}

- (id)init:(id)a3 inputMode:(id)a4 layouts:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = TTKFileSink;
  v12 = [(TTKFileSink *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileName, a3);
    objc_storeStrong(&v13->_inputMode, a4);
    objc_storeStrong(&v13->_layouts, a5);
    v14 = [MEMORY[0x277CBEB18] array];
    testCases = v13->_testCases;
    v13->_testCases = v14;
  }

  return v13;
}

@end