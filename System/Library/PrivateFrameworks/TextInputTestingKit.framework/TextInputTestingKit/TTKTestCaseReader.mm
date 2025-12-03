@interface TTKTestCaseReader
+ (id)loadFromDir:(id)dir;
+ (id)loadFromFile:(id)file inputMode:(id)mode layouts:(id)layouts;
+ (id)loadFromPath:(id)path;
+ (id)loadFromPath:(id)path fileManager:(id)manager;
@end

@implementation TTKTestCaseReader

+ (id)loadFromPath:(id)path fileManager:(id)manager
{
  pathCopy = path;
  v9 = 0;
  if ([manager fileExistsAtPath:pathCopy isDirectory:&v9])
  {
    if (v9 == 1)
    {
      [self loadFromDir:pathCopy];
    }

    else
    {
      [self loadFromFile:pathCopy];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)loadFromPath:(id)path
{
  v4 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v4 defaultManager];
  v7 = [self loadFromPath:pathCopy fileManager:defaultManager];

  return v7;
}

+ (id)loadFromDir:(id)dir
{
  dirCopy = dir;
  v4 = [[TTKDirSource alloc] init:dirCopy];

  return v4;
}

+ (id)loadFromFile:(id)file inputMode:(id)mode layouts:(id)layouts
{
  v19 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  modeCopy = mode;
  layoutsCopy = layouts;
  v10 = TTKLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = [fileCopy cStringUsingEncoding:4];
    _os_log_debug_impl(&dword_26D490000, v10, OS_LOG_TYPE_DEBUG, "Loading data from file %s", &v17, 0xCu);
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:fileCopy];
  [v12 open];
  if ([v12 streamStatus] == 7)
  {
    v13 = TTKLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = fileCopy;
      _os_log_error_impl(&dword_26D490000, v13, OS_LOG_TYPE_ERROR, "Error loading JSON from a file : %@", &v17, 0xCu);
    }

    [v12 close];
    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v12 options:0 error:0];
    v14 = [[TTKFileSource alloc] init:v15 inputMode:modeCopy layouts:layoutsCopy];
    [v12 close];
  }

  objc_autoreleasePoolPop(v11);

  return v14;
}

@end