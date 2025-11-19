@interface PLImportFileManager
- (BOOL)removeUnusedDCIMDirectoryAtPath:(id)a3;
- (PLImportFileManager)initWithPathManager:(id)a3;
- (id)_DCIMFolderNameWithNumber:(int64_t)a3;
- (id)_dcimDirectory;
- (id)urlForNewDCIMFolderWithFolderNumber:(int64_t *)a3;
@end

@implementation PLImportFileManager

- (BOOL)removeUnusedDCIMDirectoryAtPath:(id)a3
{
  v4 = a3;
  v5 = [(PLImportFileManager *)self _dcimDirectory];
  [v5 lockDirectory];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 removeDirectoryAtPathIfEmpty:v4 ancestors:0];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AE88]);
    v9 = [v4 lastPathComponent];
    v10 = [v8 initWithString:v9];

    [v10 setScanLocation:0];
    v11 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v18 = 0;
    [v10 scanCharactersFromSet:v11 intoString:&v18];
    v12 = v18;

    if ([v12 length])
    {
      v13 = [v12 integerValue];
      v14 = [v5 userInfoObjectForKey:@"LastImportDirectoryNumber"];
      v15 = [v14 integerValue];

      if (v13 == v15 && v15 != 100)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithInteger:v13 - 1];
        [v5 setUserInfoObject:v16 forKey:@"LastImportDirectoryNumber"];

        [v5 saveUserInfo];
      }
    }
  }

  [v5 unlockDirectory];

  return v7;
}

- (id)urlForNewDCIMFolderWithFolderNumber:(int64_t *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_pathManager);
  v5 = [WeakRetained photoDirectoryWithType:4];

  v6 = [(PLImportFileManager *)self _dcimDirectory];
  [v6 lockDirectory];
  v7 = [v6 userInfoObjectForKey:@"LastImportDirectoryNumber"];
  v8 = [v7 integerValue];

  if ((v8 - 99999999) >= 0xFFFFFFFFFA0A1F65)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 100;
  }

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [(PLImportFileManager *)self _DCIMFolderNameWithNumber:v9];
  v12 = [v5 stringByAppendingPathComponent:v11];
  if ([v10 fileExistsAtPath:v12])
  {
    v13 = v9 < 99999999;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    while (([v10 removeDirectoryAtPathIfEmpty:v12 ancestors:0] & 1) == 0)
    {
      v14 = v9 + 1;
      v15 = [(PLImportFileManager *)self _DCIMFolderNameWithNumber:v9 + 1];

      v16 = [v5 stringByAppendingPathComponent:v15];

      if ([v10 fileExistsAtPath:v16])
      {
        v12 = v16;
        v11 = v15;
        v13 = v9++ < 99999998;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v14 = v9;
  v15 = v11;
  v16 = v12;
LABEL_9:
  if ([v10 fileExistsAtPath:v16])
  {
    NSLog(@"Error: Directory already exists");
    v17 = 0;
  }

  else
  {
    v24 = 0;
    v18 = [v10 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v24];
    v19 = v24;
    v20 = v19;
    if (v18)
    {
      v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16 isDirectory:1];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      [v6 setUserInfoObject:v21 forKey:@"LastImportDirectoryNumber"];

      [v6 saveUserInfo];
      if (a3)
      {
        *a3 = v14;
      }
    }

    else
    {
      NSLog(@"Error creating directory: %@", v19);
      v17 = 0;
    }
  }

  [v6 unlockDirectory];

  return v17;
}

- (id)_DCIMFolderNameWithNumber:(int64_t)a3
{
  if (a3 < 0)
  {
    v7 = 0;
  }

  else
  {
    v4 = [@"IMPRT" length];
    v5 = vcvtpd_s64_f64(log10((a3 + 1)));
    if (v5 >= 4 && [@"IMPRT" length] + 3 >= v5)
    {
      v6 = v5 - 3;
      v4 -= v6;
    }

    else
    {
      v6 = 0;
    }

    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [@"IMPRT" substringWithRange:{v6, v4}];
    v7 = [v8 initWithFormat:@"%03li%@", a3, v9];
  }

  if ([v7 length] != 8)
  {

    v7 = 0;
  }

  return v7;
}

- (id)_dcimDirectory
{
  v3 = [PLPhotoDCIMDirectory alloc];
  WeakRetained = objc_loadWeakRetained(&self->_pathManager);
  v5 = [WeakRetained photoDirectoryWithType:4];
  v6 = [(PLPhotoDCIMDirectory *)v3 initWithDCIMPath:v5];

  return v6;
}

- (PLImportFileManager)initWithPathManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLImportFileManager;
  v5 = [(PLImportFileManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      objc_storeWeak(&v5->_pathManager, v4);
    }

    else
    {
      v7 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
      objc_storeWeak(&v6->_pathManager, v7);
    }
  }

  return v6;
}

@end