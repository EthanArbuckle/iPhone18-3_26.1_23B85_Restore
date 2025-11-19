@interface TTKDirSink
- (id)init:(id)a3 inputMode:(id)a4 layouts:(id)a5 writeOnFlush:(BOOL)a6 maxTestCasesPerFile:(unsigned int)a7 maxFilesPerDirectory:(unsigned int)a8;
- (void)addLayouts:(id)a3;
- (void)close;
- (void)flushFiles;
- (void)pushNextTestCase:(id)a3;
@end

@implementation TTKDirSink

- (void)pushNextTestCase:(id)a3
{
  [(NSMutableArray *)self->_testCasesToWrite addObject:a3];
  if ([(NSMutableArray *)self->_testCasesToWrite count]== self->_maxTestCasesPerFile)
  {

    [(TTKDirSink *)self flushFiles];
  }
}

- (void)flushFiles
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_testCasesToWrite count])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"d%05u", self->_dirCounter];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"f%05u.json", self->_fileCounter];
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_rootDir isDirectory:1];
    v21 = v3;
    v6 = [v5 URLByAppendingPathComponent:v3];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v6 path];
    v9 = [v7 fileExistsAtPath:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [v6 path];
      [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v12 = [v6 URLByAppendingPathComponent:v4];
    v13 = [v12 path];
    v14 = [TTKTestCaseWriter storeToFile:v13 inputMode:self->_inputMode layouts:0];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = self->_testCasesToWrite;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v14 pushNextTestCase:*(*(&v22 + 1) + 8 * v19++)];
        }

        while (v17 != v19);
        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v14 close];
    [(NSMutableArray *)self->_testCasesToWrite removeAllObjects];
    v20 = self->_fileCounter + 1;
    self->_fileCounter = v20;
    if (v20 == self->_maxFilesPerDirectory)
    {
      *&self->_dirCounter = self->_dirCounter + 1;
    }
  }
}

- (void)close
{
  [(TTKDirSink *)self flushFiles];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_rootDir isDirectory:1];
  v3 = [v6 URLByAppendingPathComponent:@"layouts.json"];
  v4 = [v3 path];
  v5 = [TTKTestCaseWriter storeToFile:v4 inputMode:self->_inputMode layouts:self->_layouts];

  [v5 close];
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

- (id)init:(id)a3 inputMode:(id)a4 layouts:(id)a5 writeOnFlush:(BOOL)a6 maxTestCasesPerFile:(unsigned int)a7 maxFilesPerDirectory:(unsigned int)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v23.receiver = self;
  v23.super_class = TTKDirSink;
  v18 = [(TTKDirSink *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_inputMode, a4);
    objc_storeStrong(&v19->_rootDir, a3);
    objc_storeStrong(&v19->_layouts, a5);
    v19->_writeOnFlush = a6;
    v19->_maxTestCasesPerFile = a7;
    v19->_maxFilesPerDirectory = a8;
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:a8];
    testCasesToWrite = v19->_testCasesToWrite;
    v19->_testCasesToWrite = v20;
  }

  return v19;
}

@end