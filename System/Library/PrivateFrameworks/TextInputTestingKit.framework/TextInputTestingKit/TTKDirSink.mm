@interface TTKDirSink
- (id)init:(id)init inputMode:(id)mode layouts:(id)layouts writeOnFlush:(BOOL)flush maxTestCasesPerFile:(unsigned int)file maxFilesPerDirectory:(unsigned int)directory;
- (void)addLayouts:(id)layouts;
- (void)close;
- (void)flushFiles;
- (void)pushNextTestCase:(id)case;
@end

@implementation TTKDirSink

- (void)pushNextTestCase:(id)case
{
  [(NSMutableArray *)self->_testCasesToWrite addObject:case];
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
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v6 path];
    v9 = [defaultManager fileExistsAtPath:path];

    if ((v9 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      path2 = [v6 path];
      [defaultManager2 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v12 = [v6 URLByAppendingPathComponent:v4];
    path3 = [v12 path];
    v14 = [TTKTestCaseWriter storeToFile:path3 inputMode:self->_inputMode layouts:0];

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
  path = [v3 path];
  v5 = [TTKTestCaseWriter storeToFile:path inputMode:self->_inputMode layouts:self->_layouts];

  [v5 close];
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

- (id)init:(id)init inputMode:(id)mode layouts:(id)layouts writeOnFlush:(BOOL)flush maxTestCasesPerFile:(unsigned int)file maxFilesPerDirectory:(unsigned int)directory
{
  initCopy = init;
  modeCopy = mode;
  layoutsCopy = layouts;
  v23.receiver = self;
  v23.super_class = TTKDirSink;
  v18 = [(TTKDirSink *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_inputMode, mode);
    objc_storeStrong(&v19->_rootDir, init);
    objc_storeStrong(&v19->_layouts, layouts);
    v19->_writeOnFlush = flush;
    v19->_maxTestCasesPerFile = file;
    v19->_maxFilesPerDirectory = directory;
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:directory];
    testCasesToWrite = v19->_testCasesToWrite;
    v19->_testCasesToWrite = v20;
  }

  return v19;
}

@end