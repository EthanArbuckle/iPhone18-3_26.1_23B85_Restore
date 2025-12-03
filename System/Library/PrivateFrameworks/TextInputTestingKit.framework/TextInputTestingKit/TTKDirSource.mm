@interface TTKDirSource
- (id)getNextTestCase;
- (id)init:(id)init;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)loadLayouts:(id)layouts;
- (void)loadRootDir;
- (void)reset;
@end

@implementation TTKDirSource

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
      getNextTestCase = [(TTKDirSource *)self getNextTestCase];
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

- (void)loadLayouts:(id)layouts
{
  v69 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  v5 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v63 = 0;
  v50 = layoutsCopy;
  v7 = [defaultManager contentsOfDirectoryAtPath:layoutsCopy error:&v63];
  v8 = v63;

  if (!v8)
  {
    v48 = v5;
    v9 = [v7 sortedArrayUsingSelector:sel_compare_];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v59 objects:v68 count:16];
    v49 = v10;
    if (v11)
    {
      v12 = v11;
      v13 = *v60;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v60 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v59 + 1) + 8 * i);
          if (([v15 isEqualToString:@".DS_Store"] & 1) == 0)
          {
            v16 = MEMORY[0x277CCACA8];
            v67[0] = v50;
            v67[1] = v15;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
            v18 = [v16 pathWithComponents:v17];

            if ([v15 isEqualToString:@"layouts.json"])
            {
              v28 = [TTKTestCaseReader loadFromFile:v18];
              inputMode = [v28 inputMode];
              v30 = MEMORY[0x277CBEB38];
              layouts = [v28 layouts];
              v32 = [v30 dictionaryWithDictionary:layouts];

              majorVersion = [v28 majorVersion];
              minorVersion = [v28 minorVersion];
              [v28 fileVersion];
              if (self->_inputMode)
              {
                v46 = inputMode;
                v47 = v28;
                v57 = 0u;
                v58 = 0u;
                v55 = 0u;
                v56 = 0u;
                allKeys = [v32 allKeys];
                v37 = [allKeys countByEnumeratingWithState:&v55 objects:v66 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v56;
                  do
                  {
                    for (j = 0; j != v38; ++j)
                    {
                      if (*v56 != v39)
                      {
                        objc_enumerationMutation(allKeys);
                      }

                      v41 = *(*(&v55 + 1) + 8 * j);
                      v42 = [(NSMutableDictionary *)self->_layouts objectForKey:v41];

                      if (!v42)
                      {
                        layouts = self->_layouts;
                        v44 = [v32 objectForKeyedSubscript:v41];
                        [(NSMutableDictionary *)layouts setObject:v44 forKey:v41];
                      }
                    }

                    v38 = [allKeys countByEnumeratingWithState:&v55 objects:v66 count:16];
                  }

                  while (v38);
                }

                inputMode = v46;
                v28 = v47;
              }

              else
              {
                v45 = v35;
                objc_storeStrong(&self->_inputMode, inputMode);
                objc_storeStrong(&self->_layouts, v32);
                self->_majorVersion = majorVersion;
                self->_minorVersion = minorVersion;
                self->_fileVersion = v45;
              }

              goto LABEL_35;
            }

            v10 = v49;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v59 objects:v68 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v52;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v51 + 1) + 8 * k);
          if (([v24 isEqualToString:@".DS_Store"] & 1) == 0)
          {
            v25 = MEMORY[0x277CCACA8];
            v64[0] = v50;
            v64[1] = v24;
            v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
            v27 = [v25 pathWithComponents:v26];
            [(TTKDirSource *)self loadLayouts:v27];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v21);
    }

LABEL_35:
    v7 = v49;

    v8 = 0;
    v5 = v48;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)reset
{
  currTestCaseSource = self->_currTestCaseSource;
  self->_currTestCaseSource = 0;

  currDir = self->_currDir;
  self->_currDir = &stru_287EC4808;

  array = [MEMORY[0x277CBEB18] array];
  testCaseDirs = self->_testCaseDirs;
  self->_testCaseDirs = array;

  array2 = [MEMORY[0x277CBEB18] array];
  testCaseFiles = self->_testCaseFiles;
  self->_testCaseFiles = array2;

  [(TTKDirSource *)self loadRootDir];
}

- (id)init:(id)init
{
  v13 = *MEMORY[0x277D85DE8];
  initCopy = init;
  v6 = TTKLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = [initCopy cStringUsingEncoding:4];
    _os_log_debug_impl(&dword_26D490000, v6, OS_LOG_TYPE_DEBUG, "Loading test cases from directory %s", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = TTKDirSource;
  v7 = [(TTKDirSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_rootDir, init);
    [(TTKDirSource *)v8 reset];
  }

  return v8;
}

- (id)getNextTestCase
{
  v3 = objc_autoreleasePoolPush();
  currTestCaseSource = self->_currTestCaseSource;
  if (currTestCaseSource)
  {
    getNextTestCase = [(TTKTestCaseSource *)currTestCaseSource getNextTestCase];
    if (getNextTestCase)
    {
      goto LABEL_10;
    }

    v6 = self->_currTestCaseSource;
    self->_currTestCaseSource = 0;
  }

  if ([(NSMutableArray *)self->_testCaseFiles count])
  {
    v7 = MEMORY[0x277CBEA60];
    rootDir = self->_rootDir;
    currDir = self->_currDir;
    v10 = [(NSMutableArray *)self->_testCaseFiles objectAtIndex:0];
    v11 = [v7 arrayWithObjects:{rootDir, currDir, v10, 0}];

    [(NSMutableArray *)self->_testCaseFiles removeObjectAtIndex:0];
    v12 = [MEMORY[0x277CCACA8] pathWithComponents:v11];
    v13 = [TTKTestCaseReader loadFromFile:v12 inputMode:self->_inputMode layouts:self->_layouts];
    v14 = self->_currTestCaseSource;
    self->_currTestCaseSource = v13;

    layouts = [(TTKTestCaseSource *)self->_currTestCaseSource layouts];
    if ([layouts count])
    {
      onNewLayoutsFound = [(TTKDirSource *)self onNewLayoutsFound];

      if (!onNewLayoutsFound)
      {
LABEL_9:
        getNextTestCase = [(TTKDirSource *)self getNextTestCase];

        goto LABEL_10;
      }

      v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_layouts];
      layouts2 = [(TTKTestCaseSource *)self->_currTestCaseSource layouts];
      [(NSMutableDictionary *)v17 addEntriesFromDictionary:layouts2];

      layouts = self->_layouts;
      self->_layouts = v17;
      v20 = v17;

      layouts = [(TTKDirSource *)self onNewLayoutsFound];
      layouts3 = [(TTKTestCaseSource *)self->_currTestCaseSource layouts];

      (layouts)[2](layouts, layouts3);
    }

    goto LABEL_9;
  }

  if ([(NSMutableArray *)self->_testCaseDirs count])
  {
    v23 = [(NSMutableArray *)self->_testCaseDirs objectAtIndex:0];
    v24 = self->_currDir;
    self->_currDir = v23;

    [(NSMutableArray *)self->_testCaseDirs removeObjectAtIndex:0];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:{self->_rootDir, self->_currDir, 0}];
    v12 = [MEMORY[0x277CCACA8] pathWithComponents:v11];
    if (self->_is_multiDir)
    {
      v25 = [[TTKDirSource alloc] init:v12];
      v26 = self->_currTestCaseSource;
      self->_currTestCaseSource = v25;
    }

    else
    {
      v27 = MEMORY[0x277CBEB18];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v29 = [defaultManager contentsOfDirectoryAtPath:v12 error:0];
      v30 = [v27 arrayWithArray:v29];
      testCaseFiles = self->_testCaseFiles;
      self->_testCaseFiles = v30;

      [(NSMutableArray *)self->_testCaseFiles removeObject:@".DS_Store"];
    }

    goto LABEL_9;
  }

  getNextTestCase = 0;
LABEL_10:
  objc_autoreleasePoolPop(v3);

  return getNextTestCase;
}

- (void)loadRootDir
{
  v36 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager contentsOfDirectoryAtPath:self->_rootDir error:0];

  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

  [(TTKDirSource *)self loadLayouts:self->_rootDir];
  self->_is_multiDir = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v29 + 1) + 8 * i) isEqualToString:@"layouts.json"])
        {
          self->_is_multiDir = 0;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    p_testCaseFiles = &self->_testCaseFiles;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * j);
        if (([v16 isEqualToString:{@".DS_Store", p_testCaseFiles}] & 1) == 0)
        {
          v17 = MEMORY[0x277CCACA8];
          v33[0] = self->_rootDir;
          v33[1] = v16;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
          v19 = [v17 pathWithComponents:v18];

          v24 = 0;
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          [defaultManager2 fileExistsAtPath:v19 isDirectory:&v24];

          p_testCaseDirs = &self->_testCaseDirs;
          if ((v24 & 1) != 0 || (v22 = [v16 isEqualToString:@"layouts.json"], p_testCaseDirs = p_testCaseFiles, (v22 & 1) == 0))
          {
            [(NSMutableArray *)*p_testCaseDirs addObject:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }
}

@end