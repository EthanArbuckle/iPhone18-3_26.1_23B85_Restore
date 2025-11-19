@interface PLSimpleDCIMDirectory
+ (id)migrateOldPlistToNewPlist:(id)a3;
- (BOOL)_ensureDirectoryExists:(id)a3;
- (PLSimpleDCIMDirectory)initWithDirectoryURL:(id)a3 subDirectorySuffix:(id)a4 perDirectoryLimit:(unint64_t)a5 userInfoPath:(id)a6;
- (_NSRange)_fileNameNumberRangeForDirNumber:(unint64_t)a3;
- (id)_availableFileNameNumbersInDirNumber:(unint64_t)a3;
- (id)_currentSubDirectory;
- (id)_nextAvailableFileURLWithExtension:(id)a3;
- (id)_subDirURLForNumber:(unint64_t)a3 create:(BOOL)a4 didCreate:(BOOL *)a5;
- (id)nextAvailableFileURLWithExtension:(id)a3;
- (void)_loadUserInfoLastUsedDirectoryNumber:(id *)a3 lastUsedFileNumber:(id *)a4;
- (void)_saveUserInfo;
- (void)reset;
@end

@implementation PLSimpleDCIMDirectory

- (BOOL)_ensureDirectoryExists:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0;
  fileManager = self->_fileManager;
  v6 = [v4 path];
  LODWORD(fileManager) = [(NSFileManager *)fileManager fileExistsAtPath:v6 isDirectory:&v14];
  v7 = v14;

  if (fileManager && (v7 & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = self->_fileManager;
    v13 = 0;
    v8 = [(NSFileManager *)v9 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v13];
    v10 = v13;
    if ((v8 & 1) == 0)
    {
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_ERROR, "Unable to create DCIM dir: %@", buf, 0xCu);
      }
    }
  }

  return v8;
}

- (void)_loadUserInfoLastUsedDirectoryNumber:(id *)a3 lastUsedFileNumber:(id *)a4
{
  if (!self->_hasLoadedUserInfo && self->_userInfoPath)
  {
    self->_hasLoadedUserInfo = 1;
    v10 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:?];
    v6 = [v10 objectForKey:@"DCIMLastDirectoryNumber"];
    v7 = [v10 objectForKey:@"DCIMLastFileNumber"];
    if (a3)
    {
      v8 = v6;
      *a3 = v6;
    }

    if (a4)
    {
      v9 = v7;
      *a4 = v7;
    }
  }
}

- (void)_saveUserInfo
{
  if (self->_userInfoPath)
  {
    v3 = MEMORY[0x1E695DF20];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_currentSubDirectoryNumber];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableIndexSet firstIndex](self->_availableFileNameNumbers, "firstIndex")}];
    v7 = [v3 dictionaryWithObjectsAndKeys:{v4, @"DCIMLastDirectoryNumber", v5, @"DCIMLastFileNumber", 0}];

    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:100 options:0 error:0];
    [v6 writeToFile:self->_userInfoPath options:1073741825 error:0];
  }
}

- (_NSRange)_fileNameNumberRangeForDirNumber:(unint64_t)a3
{
  v3 = (1000 * a3 - 100000) % 0x2710;
  v4 = v3 | 1;
  v5 = v3 + self->_directoryLimit;
  if (v5 >= 0x270F)
  {
    v5 = 9999;
  }

  v6 = v5 - v4 + 1;
  v7 = v4;
  result.length = v6;
  result.location = v7;
  return result;
}

- (id)_availableFileNameNumbersInDirNumber:(unint64_t)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD50];
  v6 = [(PLSimpleDCIMDirectory *)self _fileNameNumberRangeForDirNumber:?];
  v8 = [v5 indexSetWithIndexesInRange:{v6, v7}];
  v9 = *MEMORY[0x1E695DC30];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DC30]];
  v11 = [(PLSimpleDCIMDirectory *)self _subDirURLForNumber:a3 create:0 didCreate:0];
  v12 = [(NSFileManager *)self->_fileManager enumeratorAtURL:v11 includingPropertiesForKeys:v10 options:1 errorHandler:0];
  v32 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v28 = v11;
    v29 = v10;
    v30 = v8;
    v31 = 0;
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v35 = 0;
        v20 = [v18 getResourceValue:&v35 forKey:v9 error:0];
        v21 = v35;
        if (v20)
        {
          v22 = [MEMORY[0x1E696AE88] scannerWithString:v21];
          v34 = -1;
          v33 = 0;
          v23 = [v22 scanUpToCharactersFromSet:v32 intoString:&v33];
          v24 = v33;
          v25 = v24;
          if (v23 && [v24 length] == 4 && objc_msgSend(v22, "scanInt:", &v34) && (v34 - 1) <= 0x270E && objc_msgSend(v22, "scanString:intoString:", @".", 0))
          {
            v26 = v31;
            if (v31 <= v34)
            {
              v26 = v34;
            }

            v31 = v26;
          }
        }

        objc_autoreleasePoolPop(v19);
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v15);

    v10 = v29;
    v8 = v30;
    v11 = v28;
    if (v31)
    {
      [v30 removeIndexesInRange:1];
    }
  }

  else
  {
  }

  return v8;
}

- (id)_subDirURLForNumber:(unint64_t)a3 create:(BOOL)a4 didCreate:(BOOL *)a5
{
  v6 = a4;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u%@", a3, self->_subDirSuffix];
  v9 = [(NSURL *)self->_baseURL URLByAppendingPathComponent:v8 isDirectory:1];
  v10 = v9;
  if (v6)
  {
    v19 = 0;
    v11 = [v9 getResourceValue:&v19 forKey:*MEMORY[0x1E695DB20] error:0];
    v12 = v19;
    if (v11)
    {
      *a5 = 0;
    }

    else
    {
      *a5 = 1;
      fileManager = self->_fileManager;
      v18 = 0;
      v14 = [(NSFileManager *)fileManager createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v18];
      v15 = v18;
      if (!v14)
      {
        v16 = [v10 path];
        NSLog(@"Unable to create directory at '%@': %@", v16, v15);
      }
    }
  }

  return v10;
}

- (id)_currentSubDirectory
{
  v49 = *MEMORY[0x1E69E9840];
  if (!self->_currentSubDirectoryURL)
  {
    goto LABEL_6;
  }

  if ([(NSMutableIndexSet *)self->_availableFileNameNumbers firstIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_50;
  }

  if (self->_currentSubDirectoryURL && (availableFileNameNumbers = self->_availableFileNameNumbers) != 0)
  {
    v4 = [(NSMutableIndexSet *)availableFileNameNumbers firstIndex]== 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  v5 = self->_availableFileNameNumbers;
  self->_availableFileNameNumbers = 0;

  currentSubDirectoryURL = self->_currentSubDirectoryURL;
  self->_currentSubDirectoryURL = 0;

  v38 = [MEMORY[0x1E696AD50] indexSet];
  if (v4)
  {
    [v38 addIndex:self->_currentSubDirectoryNumber + 1];
  }

  self->_currentSubDirectoryNumber = 100;
  v7 = *MEMORY[0x1E695DC30];
  v37 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DC30]];
  v8 = [NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:self->_baseURL options:? errorHandler:?];
  if (self->_representsCameraRoll)
  {
    v9 = 999;
  }

  else
  {
    v9 = 1000;
  }

  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v43 = 0;
        v16 = [v14 getResourceValue:&v43 forKey:v7 error:0];
        v17 = v43;
        if (v16)
        {
          v18 = [MEMORY[0x1E696AE88] scannerWithString:v17];
          v42 = -1;
          if ([v18 scanInt:&v42] && v42 >= 0x64 && v9 > v42 && objc_msgSend(v18, "scanString:intoString:", self->_subDirSuffix, 0) && objc_msgSend(v18, "isAtEnd"))
          {
            [v38 addIndex:v42];
          }
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v11);
  }

  v19 = [v38 lastIndex];
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 100;
  }

  else
  {
    v20 = v19;
  }

  v40 = 0;
  v41 = 0;
  [(PLSimpleDCIMDirectory *)self _loadUserInfoLastUsedDirectoryNumber:&v41 lastUsedFileNumber:&v40];
  v21 = v41;
  v22 = v40;
  if (v21)
  {
    v23 = [v21 unsignedIntegerValue];
    if ((v23 != 999 || !self->_representsCameraRoll) && v20 <= v23)
    {
      v20 = v23;
    }
  }

  if (v21)
  {
    v24 = v22 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = !v24;
  while (1)
  {
    v26 = objc_autoreleasePoolPush();
    LOBYTE(v42) = 0;
    v27 = [(PLSimpleDCIMDirectory *)self _subDirURLForNumber:v20 create:1 didCreate:&v42];
    if (v42 == 1)
    {
      v28 = MEMORY[0x1E696AD50];
      v29 = [(PLSimpleDCIMDirectory *)self _fileNameNumberRangeForDirNumber:v20];
      [v28 indexSetWithIndexesInRange:{v29, v30}];
    }

    else
    {
      [(PLSimpleDCIMDirectory *)self _availableFileNameNumbersInDirNumber:v20];
    }
    v31 = ;
    if (v25 && v20 == [v21 unsignedIntegerValue])
    {
      -[NSMutableIndexSet removeIndexesInRange:](v31, "removeIndexesInRange:", 1, [v22 unsignedIntegerValue]);
    }

    if ([(NSMutableIndexSet *)v31 firstIndex]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    ++v20;

    objc_autoreleasePoolPop(v26);
  }

  v32 = self->_availableFileNameNumbers;
  self->_availableFileNameNumbers = v31;
  v33 = v31;

  v34 = self->_currentSubDirectoryURL;
  self->_currentSubDirectoryURL = v27;

  self->_currentSubDirectoryNumber = v20;
  objc_autoreleasePoolPop(v26);

LABEL_50:
  v35 = self->_currentSubDirectoryURL;

  return v35;
}

- (void)reset
{
  isolation = self->_isolation;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__PLSimpleDCIMDirectory_reset__block_invoke;
  v3[3] = &unk_1E79329F0;
  v3[4] = self;
  pl_dispatch_async(isolation, v3);
}

void __30__PLSimpleDCIMDirectory_reset__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

- (id)_nextAvailableFileURLWithExtension:(id)a3
{
  v5 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11727;
  v21 = __Block_byref_object_dispose__11728;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  isolation = self->_isolation;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PLSimpleDCIMDirectory__nextAvailableFileURLWithExtension___block_invoke;
  v12[3] = &unk_1E7932658;
  v12[4] = self;
  v12[5] = &v17;
  v12[6] = &v13;
  v12[7] = a2;
  pl_dispatch_sync(isolation, v12);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IMG_%04u", v14[3]];
  v8 = v7;
  if (v5)
  {
    v9 = [v7 stringByAppendingPathExtension:v5];

    v8 = v9;
  }

  v10 = [v18[5] URLByAppendingPathComponent:v8 isDirectory:0];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v10;
}

uint64_t __60__PLSimpleDCIMDirectory__nextAvailableFileURLWithExtension___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentSubDirectory];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) _ensureDirectoryExists:*(*(*(a1 + 40) + 8) + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 40) firstIndex];
  if (*(*(*(a1 + 48) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PLSimpleDCIMDirectory.m" lineNumber:115 description:@"Directory without available file name index"];
  }

  [*(a1 + 32) _saveUserInfo];
  v5 = *(*(a1 + 32) + 40);
  v6 = *(*(*(a1 + 48) + 8) + 24);

  return [v5 removeIndex:v6];
}

- (id)nextAvailableFileURLWithExtension:(id)a3
{
  v4 = a3;
  v5 = [(PLSimpleDCIMDirectory *)self _nextAvailableFileURLWithExtension:v4];
  if (self->_shouldCheckForExistingFiles)
  {
    while ([v5 checkResourceIsReachableAndReturnError:0])
    {
      v6 = [(PLSimpleDCIMDirectory *)self _nextAvailableFileURLWithExtension:v4];

      v5 = v6;
      if (!self->_shouldCheckForExistingFiles)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = v5;
LABEL_6:

  return v6;
}

- (PLSimpleDCIMDirectory)initWithDirectoryURL:(id)a3 subDirectorySuffix:(id)a4 perDirectoryLimit:(unint64_t)a5 userInfoPath:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = PLSimpleDCIMDirectory;
  v14 = [(PLSimpleDCIMDirectory *)&v32 init];
  v15 = v14;
  if (!v14)
  {
LABEL_12:
    v26 = v15;
    goto LABEL_13;
  }

  v16 = 2000;
  if (a5)
  {
    v16 = a5;
  }

  v14->_directoryLimit = v16;
  objc_storeStrong(&v14->_baseURL, a3);
  v17 = objc_alloc_init(MEMORY[0x1E696AC08]);
  fileManager = v15->_fileManager;
  v15->_fileManager = v17;

  if ([(PLSimpleDCIMDirectory *)v15 _ensureDirectoryExists:v15->_baseURL])
  {
    v19 = dispatch_queue_create("com.apple.assetsd.PLSimpleDCIMDirectory", 0);
    isolation = v15->_isolation;
    v15->_isolation = v19;

    if (v12)
    {
      v21 = [v12 length];
      v22 = [v12 uppercaseString];
      v23 = v22;
      if (v21 == 5)
      {
        v24 = [(NSString *)v22 copy];
        subDirSuffix = v15->_subDirSuffix;
        v15->_subDirSuffix = v24;
      }

      else
      {
        v27 = [(NSString *)v22 stringByPaddingToLength:5 withString:@"X" startingAtIndex:0];

        v12 = [v27 substringToIndex:5];

        v28 = [v12 copy];
        v23 = v15->_subDirSuffix;
        v15->_subDirSuffix = v28;
      }
    }

    else
    {
      v23 = v15->_subDirSuffix;
      v15->_subDirSuffix = @"APPLE";
    }

    v29 = [v13 copy];
    userInfoPath = v15->_userInfoPath;
    v15->_userInfoPath = v29;

    goto LABEL_12;
  }

  v26 = 0;
LABEL_13:

  return v26;
}

+ (id)migrateOldPlistToNewPlist:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = -1;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = -1;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__PLSimpleDCIMDirectory_migrateOldPlistToNewPlist___block_invoke;
    v11[3] = &unk_1E7932630;
    v11[4] = &v16;
    v11[5] = &v12;
    [v3 enumerateKeysAndObjectsUsingBlock:v11];
    v4 = *(v17 + 6);
    if (v4 == -1 || (v5 = *(v13 + 6), v5 == -1) || v4 <= 0x64 && v5 < 1)
    {
      v6 = 0;
    }

    else
    {
      v8 = MEMORY[0x1E695DF20];
      v9 = [MEMORY[0x1E696AD98] numberWithInt:?];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:*(v13 + 6)];
      v6 = [v8 dictionaryWithObjectsAndKeys:{v9, @"DCIMLastDirectoryNumber", v10, @"DCIMLastFileNumber", 0}];
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __51__PLSimpleDCIMDirectory_migrateOldPlistToNewPlist___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 hasPrefix:@"LastFileGroupNumber"])
  {
    v6 = [v9 substringFromIndex:{objc_msgSend(v9, "length") - 3}];
    v7 = [v6 intValue];
    v8 = *(*(a1 + 32) + 8);
    if (v7 > *(v8 + 24))
    {
      *(v8 + 24) = v7;
      *(*(*(a1 + 40) + 8) + 24) = [v5 intValue];
    }
  }
}

@end