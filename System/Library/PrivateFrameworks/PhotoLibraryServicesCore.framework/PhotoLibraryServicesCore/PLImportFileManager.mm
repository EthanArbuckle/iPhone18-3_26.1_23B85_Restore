@interface PLImportFileManager
- (BOOL)removeUnusedDCIMDirectoryAtPath:(id)path;
- (PLImportFileManager)initWithPathManager:(id)manager;
- (id)_DCIMFolderNameWithNumber:(int64_t)number;
- (id)_dcimDirectory;
- (id)urlForNewDCIMFolderWithFolderNumber:(int64_t *)number;
@end

@implementation PLImportFileManager

- (BOOL)removeUnusedDCIMDirectoryAtPath:(id)path
{
  pathCopy = path;
  _dcimDirectory = [(PLImportFileManager *)self _dcimDirectory];
  [_dcimDirectory lockDirectory];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager removeDirectoryAtPathIfEmpty:pathCopy ancestors:0];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AE88]);
    lastPathComponent = [pathCopy lastPathComponent];
    v10 = [v8 initWithString:lastPathComponent];

    [v10 setScanLocation:0];
    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v18 = 0;
    [v10 scanCharactersFromSet:decimalDigitCharacterSet intoString:&v18];
    v12 = v18;

    if ([v12 length])
    {
      integerValue = [v12 integerValue];
      v14 = [_dcimDirectory userInfoObjectForKey:@"LastImportDirectoryNumber"];
      integerValue2 = [v14 integerValue];

      if (integerValue == integerValue2 && integerValue2 != 100)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue - 1];
        [_dcimDirectory setUserInfoObject:v16 forKey:@"LastImportDirectoryNumber"];

        [_dcimDirectory saveUserInfo];
      }
    }
  }

  [_dcimDirectory unlockDirectory];

  return v7;
}

- (id)urlForNewDCIMFolderWithFolderNumber:(int64_t *)number
{
  WeakRetained = objc_loadWeakRetained(&self->_pathManager);
  v5 = [WeakRetained photoDirectoryWithType:4];

  _dcimDirectory = [(PLImportFileManager *)self _dcimDirectory];
  [_dcimDirectory lockDirectory];
  v7 = [_dcimDirectory userInfoObjectForKey:@"LastImportDirectoryNumber"];
  integerValue = [v7 integerValue];

  if ((integerValue - 99999999) >= 0xFFFFFFFFFA0A1F65)
  {
    v9 = integerValue + 1;
  }

  else
  {
    v9 = 100;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [(PLImportFileManager *)self _DCIMFolderNameWithNumber:v9];
  v12 = [v5 stringByAppendingPathComponent:v11];
  if ([defaultManager fileExistsAtPath:v12])
  {
    v13 = v9 < 99999999;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    while (([defaultManager removeDirectoryAtPathIfEmpty:v12 ancestors:0] & 1) == 0)
    {
      v14 = v9 + 1;
      v15 = [(PLImportFileManager *)self _DCIMFolderNameWithNumber:v9 + 1];

      v16 = [v5 stringByAppendingPathComponent:v15];

      if ([defaultManager fileExistsAtPath:v16])
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
  if ([defaultManager fileExistsAtPath:v16])
  {
    NSLog(@"Error: Directory already exists");
    v17 = 0;
  }

  else
  {
    v24 = 0;
    v18 = [defaultManager createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v24];
    v19 = v24;
    v20 = v19;
    if (v18)
    {
      v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16 isDirectory:1];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      [_dcimDirectory setUserInfoObject:v21 forKey:@"LastImportDirectoryNumber"];

      [_dcimDirectory saveUserInfo];
      if (number)
      {
        *number = v14;
      }
    }

    else
    {
      NSLog(@"Error creating directory: %@", v19);
      v17 = 0;
    }
  }

  [_dcimDirectory unlockDirectory];

  return v17;
}

- (id)_DCIMFolderNameWithNumber:(int64_t)number
{
  if (number < 0)
  {
    v7 = 0;
  }

  else
  {
    v4 = [@"IMPRT" length];
    v5 = vcvtpd_s64_f64(log10((number + 1)));
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
    v7 = [v8 initWithFormat:@"%03li%@", number, v9];
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

- (PLImportFileManager)initWithPathManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PLImportFileManager;
  v5 = [(PLImportFileManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (managerCopy)
    {
      objc_storeWeak(&v5->_pathManager, managerCopy);
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