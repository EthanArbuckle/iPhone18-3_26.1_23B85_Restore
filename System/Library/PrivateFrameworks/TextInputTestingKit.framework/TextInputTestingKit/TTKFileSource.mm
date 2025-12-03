@interface TTKFileSource
- (BOOL)parseData:(id)data;
- (id)getNextTestCase;
- (id)init:(id)init inputMode:(id)mode layouts:(id)layouts;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)parseLayouts:(id)layouts;
@end

@implementation TTKFileSource

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (!state->var0)
  {
    state->var2 = state->var3;
  }

  state->var0 = 0;
  if (count)
  {
    do
    {
      getNextTestCase = [(TTKFileSource *)self getNextTestCase];
      v10 = getNextTestCase;
      result = state->var0;
      if (!getNextTestCase)
      {
        break;
      }

      state->var0 = result + 1;
      objects[result] = getNextTestCase;
      result = state->var0;
    }

    while (state->var0 < count);
  }

  else
  {
    result = 0;
  }

  state->var1 = objects;
  return result;
}

- (id)getNextTestCase
{
  test_case_index = self->_test_case_index;
  if ([(NSMutableArray *)self->_test_cases count]<= test_case_index)
  {
    v5 = 0;
  }

  else
  {
    test_cases = self->_test_cases;
    ++self->_test_case_index;
    v5 = [(NSMutableArray *)test_cases objectAtIndex:?];
  }

  return v5;
}

- (id)init:(id)init inputMode:(id)mode layouts:(id)layouts
{
  initCopy = init;
  modeCopy = mode;
  layoutsCopy = layouts;
  v17.receiver = self;
  v17.super_class = TTKFileSource;
  v11 = [(TTKFileSource *)&v17 init];
  p_isa = &v11->super.isa;
  if (!v11)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v11->_inputMode, mode);
  objc_storeStrong(p_isa + 3, layouts);
  if ([p_isa parseData:initCopy])
  {
    [p_isa reset];
LABEL_4:
    v13 = p_isa;
    goto LABEL_8;
  }

  v14 = TTKLogFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_26D490000, v14, OS_LOG_TYPE_ERROR, "Unable to parse data from input file", v16, 2u);
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (BOOL)parseData:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [dataCopy objectForKey:@"version"];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [dataCopy objectForKey:@"major_version"];
    self->_majorVersion = [v7 intValue];

    majorVersion = self->_majorVersion;
    v6 = majorVersion == 2;
    if (majorVersion == 2)
    {
      v9 = [dataCopy objectForKey:@"minor_version"];
      self->_minorVersion = [v9 intValue];

      self->_fileVersion = (self->_minorVersion / 10.0) + self->_majorVersion;
      if (!self->_inputMode)
      {
        v10 = [dataCopy objectForKey:@"input_mode"];
        inputMode = self->_inputMode;
        self->_inputMode = v10;
      }

      if (!self->_layouts)
      {
        [(TTKFileSource *)self parseLayouts:dataCopy];
      }

      array = [MEMORY[0x277CBEB18] array];
      test_cases = self->_test_cases;
      self->_test_cases = array;

      v19 = [dataCopy objectForKey:@"test_cases"];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = [v19 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v19);
            }

            v18 = [[TTKTestCase alloc] initWithDictionary:*(*(&v23 + 1) + 8 * i)];
            [(NSMutableArray *)self->_test_cases addObject:v18];
          }

          v15 = [v19 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v19 = TTKLogFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = self->_majorVersion;
        *buf = 67109376;
        v29 = v22;
        v30 = 1024;
        v31 = 2;
        _os_log_error_impl(&dword_26D490000, v19, OS_LOG_TYPE_ERROR, "Error: file major version %d incompatible with CURRENT_MAJOR_VERSION_NUMBER %d", buf, 0xEu);
      }
    }
  }

  return v6;
}

- (void)parseLayouts:(id)layouts
{
  v19 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [layoutsCopy objectForKey:@"layouts"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[TTKSimpleKeyboardPlane alloc] initWithJsonDictionary:*(*(&v14 + 1) + 8 * v10)];
        name = [(TTKSimpleKeyboardPlane *)v11 name];
        [(NSDictionary *)dictionary setObject:v11 forKey:name];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  layouts = self->_layouts;
  self->_layouts = dictionary;
}

@end