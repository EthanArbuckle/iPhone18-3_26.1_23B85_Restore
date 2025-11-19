@interface TTKTestCaseReader
+ (id)loadFromDir:(id)a3;
+ (id)loadFromFile:(id)a3 inputMode:(id)a4 layouts:(id)a5;
+ (id)loadFromPath:(id)a3;
+ (id)loadFromPath:(id)a3 fileManager:(id)a4;
@end

@implementation TTKTestCaseReader

+ (id)loadFromPath:(id)a3 fileManager:(id)a4
{
  v6 = a3;
  v9 = 0;
  if ([a4 fileExistsAtPath:v6 isDirectory:&v9])
  {
    if (v9 == 1)
    {
      [a1 loadFromDir:v6];
    }

    else
    {
      [a1 loadFromFile:v6];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)loadFromPath:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [a1 loadFromPath:v5 fileManager:v6];

  return v7;
}

+ (id)loadFromDir:(id)a3
{
  v3 = a3;
  v4 = [[TTKDirSource alloc] init:v3];

  return v4;
}

+ (id)loadFromFile:(id)a3 inputMode:(id)a4 layouts:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = TTKLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = [v7 cStringUsingEncoding:4];
    _os_log_debug_impl(&dword_26D490000, v10, OS_LOG_TYPE_DEBUG, "Loading data from file %s", &v17, 0xCu);
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v7];
  [v12 open];
  if ([v12 streamStatus] == 7)
  {
    v13 = TTKLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_error_impl(&dword_26D490000, v13, OS_LOG_TYPE_ERROR, "Error loading JSON from a file : %@", &v17, 0xCu);
    }

    [v12 close];
    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v12 options:0 error:0];
    v14 = [[TTKFileSource alloc] init:v15 inputMode:v8 layouts:v9];
    [v12 close];
  }

  objc_autoreleasePoolPop(v11);

  return v14;
}

@end