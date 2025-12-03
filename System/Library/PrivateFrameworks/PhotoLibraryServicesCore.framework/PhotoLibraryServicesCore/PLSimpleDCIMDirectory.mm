@interface PLSimpleDCIMDirectory
+ (id)migrateOldPlistToNewPlist:(id)plist;
- (BOOL)_ensureDirectoryExists:(id)exists;
- (PLSimpleDCIMDirectory)initWithDirectoryURL:(id)l subDirectorySuffix:(id)suffix perDirectoryLimit:(unint64_t)limit userInfoPath:(id)path;
- (_NSRange)_fileNameNumberRangeForDirNumber:(unint64_t)number;
- (id)_availableFileNameNumbersInDirNumber:(unint64_t)number;
- (id)_currentSubDirectory;
- (id)_nextAvailableFileURLWithExtension:(id)extension;
- (id)_subDirURLForNumber:(unint64_t)number create:(BOOL)create didCreate:(BOOL *)didCreate;
- (id)nextAvailableFileURLWithExtension:(id)extension;
- (void)_loadUserInfoLastUsedDirectoryNumber:(id *)number lastUsedFileNumber:(id *)fileNumber;
- (void)_saveUserInfo;
- (void)reset;
@end

@implementation PLSimpleDCIMDirectory

- (BOOL)_ensureDirectoryExists:(id)exists
{
  v17 = *MEMORY[0x1E69E9840];
  existsCopy = exists;
  v14 = 0;
  fileManager = self->_fileManager;
  path = [existsCopy path];
  LODWORD(fileManager) = [(NSFileManager *)fileManager fileExistsAtPath:path isDirectory:&v14];
  v7 = v14;

  if (fileManager && (v7 & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = self->_fileManager;
    v13 = 0;
    v8 = [(NSFileManager *)v9 createDirectoryAtURL:existsCopy withIntermediateDirectories:1 attributes:0 error:&v13];
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

- (void)_loadUserInfoLastUsedDirectoryNumber:(id *)number lastUsedFileNumber:(id *)fileNumber
{
  if (!self->_hasLoadedUserInfo && self->_userInfoPath)
  {
    self->_hasLoadedUserInfo = 1;
    v10 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:?];
    v6 = [v10 objectForKey:@"DCIMLastDirectoryNumber"];
    v7 = [v10 objectForKey:@"DCIMLastFileNumber"];
    if (number)
    {
      v8 = v6;
      *number = v6;
    }

    if (fileNumber)
    {
      v9 = v7;
      *fileNumber = v7;
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

- (_NSRange)_fileNameNumberRangeForDirNumber:(unint64_t)number
{
  v3 = (1000 * number - 100000) % 0x2710;
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

- (id)_availableFileNameNumbersInDirNumber:(unint64_t)number
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD50];
  v6 = [(PLSimpleDCIMDirectory *)self _fileNameNumberRangeForDirNumber:?];
  v8 = [v5 indexSetWithIndexesInRange:{v6, v7}];
  v9 = *MEMORY[0x1E695DC30];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DC30]];
  v11 = [(PLSimpleDCIMDirectory *)self _subDirURLForNumber:number create:0 didCreate:0];
  v12 = [(NSFileManager *)self->_fileManager enumeratorAtURL:v11 includingPropertiesForKeys:v10 options:1 errorHandler:0];
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
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
          v23 = [v22 scanUpToCharactersFromSet:decimalDigitCharacterSet intoString:&v33];
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

- (id)_subDirURLForNumber:(unint64_t)number create:(BOOL)create didCreate:(BOOL *)didCreate
{
  createCopy = create;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u%@", number, self->_subDirSuffix];
  v9 = [(NSURL *)self->_baseURL URLByAppendingPathComponent:v8 isDirectory:1];
  v10 = v9;
  if (createCopy)
  {
    v19 = 0;
    v11 = [v9 getResourceValue:&v19 forKey:*MEMORY[0x1E695DB20] error:0];
    v12 = v19;
    if (v11)
    {
      *didCreate = 0;
    }

    else
    {
      *didCreate = 1;
      fileManager = self->_fileManager;
      v18 = 0;
      v14 = [(NSFileManager *)fileManager createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v18];
      v15 = v18;
      if (!v14)
      {
        path = [v10 path];
        NSLog(@"Unable to create directory at '%@': %@", path, v15);
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

  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if (v4)
  {
    [indexSet addIndex:self->_currentSubDirectoryNumber + 1];
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
            [indexSet addIndex:v42];
          }
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v11);
  }

  lastIndex = [indexSet lastIndex];
  if (lastIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 100;
  }

  else
  {
    v20 = lastIndex;
  }

  v40 = 0;
  v41 = 0;
  [(PLSimpleDCIMDirectory *)self _loadUserInfoLastUsedDirectoryNumber:&v41 lastUsedFileNumber:&v40];
  v21 = v41;
  v22 = v40;
  if (v21)
  {
    unsignedIntegerValue = [v21 unsignedIntegerValue];
    if ((unsignedIntegerValue != 999 || !self->_representsCameraRoll) && v20 <= unsignedIntegerValue)
    {
      v20 = unsignedIntegerValue;
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

- (id)_nextAvailableFileURLWithExtension:(id)extension
{
  extensionCopy = extension;
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
  if (extensionCopy)
  {
    v9 = [v7 stringByAppendingPathExtension:extensionCopy];

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

- (id)nextAvailableFileURLWithExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [(PLSimpleDCIMDirectory *)self _nextAvailableFileURLWithExtension:extensionCopy];
  if (self->_shouldCheckForExistingFiles)
  {
    while ([v5 checkResourceIsReachableAndReturnError:0])
    {
      v6 = [(PLSimpleDCIMDirectory *)self _nextAvailableFileURLWithExtension:extensionCopy];

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

- (PLSimpleDCIMDirectory)initWithDirectoryURL:(id)l subDirectorySuffix:(id)suffix perDirectoryLimit:(unint64_t)limit userInfoPath:(id)path
{
  lCopy = l;
  suffixCopy = suffix;
  pathCopy = path;
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

  limitCopy = 2000;
  if (limit)
  {
    limitCopy = limit;
  }

  v14->_directoryLimit = limitCopy;
  objc_storeStrong(&v14->_baseURL, l);
  v17 = objc_alloc_init(MEMORY[0x1E696AC08]);
  fileManager = v15->_fileManager;
  v15->_fileManager = v17;

  if ([(PLSimpleDCIMDirectory *)v15 _ensureDirectoryExists:v15->_baseURL])
  {
    v19 = dispatch_queue_create("com.apple.assetsd.PLSimpleDCIMDirectory", 0);
    isolation = v15->_isolation;
    v15->_isolation = v19;

    if (suffixCopy)
    {
      v21 = [suffixCopy length];
      uppercaseString = [suffixCopy uppercaseString];
      v23 = uppercaseString;
      if (v21 == 5)
      {
        v24 = [(NSString *)uppercaseString copy];
        subDirSuffix = v15->_subDirSuffix;
        v15->_subDirSuffix = v24;
      }

      else
      {
        v27 = [(NSString *)uppercaseString stringByPaddingToLength:5 withString:@"X" startingAtIndex:0];

        suffixCopy = [v27 substringToIndex:5];

        v28 = [suffixCopy copy];
        v23 = v15->_subDirSuffix;
        v15->_subDirSuffix = v28;
      }
    }

    else
    {
      v23 = v15->_subDirSuffix;
      v15->_subDirSuffix = @"APPLE";
    }

    v29 = [pathCopy copy];
    userInfoPath = v15->_userInfoPath;
    v15->_userInfoPath = v29;

    goto LABEL_12;
  }

  v26 = 0;
LABEL_13:

  return v26;
}

+ (id)migrateOldPlistToNewPlist:(id)plist
{
  plistCopy = plist;
  if ([plistCopy count])
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
    [plistCopy enumerateKeysAndObjectsUsingBlock:v11];
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