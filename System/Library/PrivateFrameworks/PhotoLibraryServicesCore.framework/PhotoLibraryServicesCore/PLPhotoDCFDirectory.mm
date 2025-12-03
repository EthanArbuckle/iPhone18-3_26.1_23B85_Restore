@interface PLPhotoDCFDirectory
- (BOOL)_canAddItemWithPrefix:(id)prefix;
- (BOOL)_canAddItemWithPrefix:(id)prefix minimumFileGroupNumber:(int)number;
- (BOOL)canAddFileGroupWithGroupNumber:(int)number;
- (BOOL)isEntensionValid:(id)valid;
- (PLPhotoDCFDirectory)initWithName:(id)name number:(int)number dcimDirectory:(id)directory;
- (id)_nextAvailableFileGroupWithPrefix:(id)prefix extension:(id)extension;
- (id)fileGroups;
- (id)fullPath;
- (void)ensureDirectoryExists;
- (void)removeFileGroup:(id)group;
@end

@implementation PLPhotoDCFDirectory

- (void)removeFileGroup:(id)group
{
  groupCopy = group;
  [groupCopy deleteFiles];
  fileGroupsByNumber = self->_fileGroupsByNumber;
  if (fileGroupsByNumber)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(groupCopy, "number")}];
    [(NSMutableDictionary *)fileGroupsByNumber removeObjectForKey:v5];
  }
}

- (id)_nextAvailableFileGroupWithPrefix:(id)prefix extension:(id)extension
{
  prefixCopy = prefix;
  extensionCopy = extension;
  [(PLPhotoDCIMDirectory *)self->_dcimDirectory lockDirectory];
  [(PLPhotoDCIMDirectory *)self->_dcimDirectory reloadUserInfo];
  dcimDirectory = self->_dcimDirectory;
  _lastUsedFileGroupUserInfoKey = [(PLPhotoDCFDirectory *)self _lastUsedFileGroupUserInfoKey];
  v9 = [(PLPhotoDCIMDirectory *)dcimDirectory userInfoObjectForKey:_lastUsedFileGroupUserInfoKey];
  self->_lastUsedFileGroupNumber = [v9 intValue];

  lastUsedFileGroupNumber = self->_lastUsedFileGroupNumber;
  v11 = (lastUsedFileGroupNumber + 1);
  _calculateBaseDirectoryValue = [(PLPhotoDCFDirectory *)self _calculateBaseDirectoryValue];
  v13 = _calculateBaseDirectoryValue + v11;
  if ([(PLPhotoDCFDirectory *)self canAddFileGroupWithGroupNumber:v11])
  {
    goto LABEL_8;
  }

  if (!self->_fileGroupsByNumber)
  {
    fileGroups = [(PLPhotoDCFDirectory *)self fileGroups];
  }

  if (lastUsedFileGroupNumber >= 998)
  {
LABEL_8:
    if (lastUsedFileGroupNumber > 998)
    {
      v22 = 0;
      v19 = extensionCopy;
      goto LABEL_14;
    }

    v18 = v13 % 0x2710;
  }

  else
  {
    do
    {
      fileGroupsByNumber = self->_fileGroupsByNumber;
      v16 = [MEMORY[0x1E696AD98] numberWithInt:_calculateBaseDirectoryValue - 10000 * (v13 / 0x2710) + v11];
      v17 = [(NSMutableDictionary *)fileGroupsByNumber objectForKeyedSubscript:v16];

      if (!v17)
      {
        break;
      }

      v11 = (v11 + 1);
    }

    while (v11 != 999);
    v18 = _calculateBaseDirectoryValue - 10000 * (v13 / 0x2710) + v11;
  }

  v19 = extensionCopy;
  v20 = [PLPhotoDCFFileGroup alloc];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%04d", prefixCopy, v18];
  v22 = [(PLPhotoDCFFileGroup *)v20 initWithName:v21 number:v18 directory:self];

  [(PLPhotoDCFFileGroup *)v22 addExtension:extensionCopy];
  v23 = self->_fileGroupsByNumber;
  v24 = [MEMORY[0x1E696AD98] numberWithInt:v18];
  [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];

  maxFileGroupNumber = self->_maxFileGroupNumber;
  if (v18 > maxFileGroupNumber)
  {
    maxFileGroupNumber = v18;
  }

  self->_maxFileGroupNumber = maxFileGroupNumber;
LABEL_14:
  v26 = self->_dcimDirectory;
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  _lastUsedFileGroupUserInfoKey2 = [(PLPhotoDCFDirectory *)self _lastUsedFileGroupUserInfoKey];
  [(PLPhotoDCIMDirectory *)v26 setUserInfoObject:v27 forKey:_lastUsedFileGroupUserInfoKey2];

  self->_lastUsedFileGroupNumber = v11;
  [(PLPhotoDCIMDirectory *)self->_dcimDirectory saveUserInfo];
  [(PLPhotoDCIMDirectory *)self->_dcimDirectory unlockDirectory];

  return v22;
}

- (id)fileGroups
{
  if (!self->_fileGroupsByNumber)
  {
    dcimPath = [(PLPhotoDCIMDirectory *)self->_dcimDirectory dcimPath];
    v4 = [dcimPath stringByAppendingPathComponent:self->super._name];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v34 = v4;
    v5 = [defaultManager contentsOfDirectoryAtPath:v4 error:0];
    v6 = [v5 count];
    v32 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v6];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fileGroupsByNumber = self->_fileGroupsByNumber;
    self->_fileGroupsByNumber = v7;

    if (v6 >= 1)
    {
      v9 = 0;
      v29 = *MEMORY[0x1E696A350];
      v10 = 0x1E792E000uLL;
      do
      {
        v11 = objc_autoreleasePoolPush();
        v38 = 0;
        v12 = [v5 objectAtIndex:v9];
        v13 = [*(v10 + 2856) validDCFNameForName:v12 requiredLength:12 nameLength:8 number:&v38 numberRange:4 suffix:{4, 0}];
        pathExtension = [v13 pathExtension];
        if (pathExtension)
        {
          if ([(PLPhotoDCFDirectory *)self isEntensionValid:pathExtension]|| [(PLPhotoDCFDirectory *)self considerInvalidFileGroups])
          {
            if (!v13 || ([(PLPhotoDCFFileGroup *)pathExtension isEqualToString:&stru_1F1F75560]& 1) != 0)
            {
              goto LABEL_16;
            }

            v15 = self->_fileGroupsByNumber;
            v16 = [MEMORY[0x1E696AD98] numberWithInt:v38];
            v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];

            if (!v17)
            {
              v18 = [v34 stringByAppendingPathComponent:v12];
              v31 = [defaultManager attributesOfItemAtPath:v18 error:0];

              v35 = [v31 objectForKey:v29];
              v19 = [PLPhotoDCFFileGroup alloc];
              stringByDeletingPathExtension = [v13 stringByDeletingPathExtension];
              v17 = [(PLPhotoDCFFileGroup *)v19 initWithName:stringByDeletingPathExtension number:v38 directory:self];

              [(PLPhotoDCFFileGroup *)v17 setDate:v35];
              v30 = self->_fileGroupsByNumber;
              v21 = [MEMORY[0x1E696AD98] numberWithInt:v38];
              [(NSMutableDictionary *)v30 setObject:v17 forKeyedSubscript:v21];

              maxFileGroupNumber = self->_maxFileGroupNumber;
              if (maxFileGroupNumber <= v38)
              {
                maxFileGroupNumber = v38;
              }

              self->_maxFileGroupNumber = maxFileGroupNumber;
              [v32 addObject:v17];
            }

            [(PLPhotoDCFFileGroup *)v17 addExtension:pathExtension];
          }

          else
          {
            v17 = pathExtension;
            pathExtension = 0;
          }

          v10 = 0x1E792E000;
        }

LABEL_16:

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v6 != v9);
    }
  }

  if (![(PLPhotoDCFDirectory *)self considerInvalidFileGroups])
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = self->_fileGroupsByNumber;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __33__PLPhotoDCFDirectory_fileGroups__block_invoke;
    v36[3] = &unk_1E792F7D8;
    v37 = v23;
    v25 = v23;
    [(NSMutableDictionary *)v24 enumerateKeysAndObjectsUsingBlock:v36];
    [(NSMutableDictionary *)self->_fileGroupsByNumber removeObjectsForKeys:v25];
  }

  allValues = [(NSMutableDictionary *)self->_fileGroupsByNumber allValues];
  v27 = [allValues sortedArrayUsingSelector:sel_compare_];

  return v27;
}

void __33__PLPhotoDCFDirectory_fileGroups__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 isValid] & 1) == 0)
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (BOOL)isEntensionValid:(id)valid
{
  validCopy = valid;
  v4 = ([validCopy isEqualToString:@"TH2"] & 1) == 0 && !objc_msgSend(validCopy, "isEqualToString:", @"THO");

  return v4;
}

- (void)ensureDirectoryExists
{
  fullPath = [(PLPhotoDCFDirectory *)self fullPath];

  MEMORY[0x1EEDEC4D0](fullPath, 448);
}

- (id)fullPath
{
  dcimPath = [(PLPhotoDCIMDirectory *)self->_dcimDirectory dcimPath];
  v4 = [dcimPath stringByAppendingPathComponent:self->super._name];

  return v4;
}

- (BOOL)_canAddItemWithPrefix:(id)prefix
{
  v4 = [(PLPhotoDCFDirectory *)self _canAddItemWithPrefix:prefix minimumFileGroupNumber:(self->_lastUsedFileGroupNumber + 1)];
  if (!v4 && self->_lastUsedFileGroupNumber != 999)
  {
    self->_lastUsedFileGroupNumber = 999;
    dcimDirectory = self->_dcimDirectory;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:999];
    _lastUsedFileGroupUserInfoKey = [(PLPhotoDCFDirectory *)self _lastUsedFileGroupUserInfoKey];
    [(PLPhotoDCIMDirectory *)dcimDirectory setUserInfoObject:v6 forKey:_lastUsedFileGroupUserInfoKey];

    [(PLPhotoDCIMDirectory *)self->_dcimDirectory saveUserInfo];
  }

  return v4;
}

- (BOOL)_canAddItemWithPrefix:(id)prefix minimumFileGroupNumber:(int)number
{
  if ([(PLPhotoDCFDirectory *)self canAddFileGroupWithGroupNumber:*&number])
  {
    v6 = 1;
  }

  else
  {
    fileGroups = [(PLPhotoDCFDirectory *)self fileGroups];
    v8 = [fileGroups count];
    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = number < 999;
    }

    if (number <= 999)
    {
      v9 = v8;
      if (v8 >= 1)
      {
        do
        {
          v10 = [fileGroups objectAtIndex:v9 - 1];
          number = [v10 number];
          v6 |= number < 999;

          if (number <= number || v9 < 2)
          {
            break;
          }

          --v9;
        }

        while ((v6 & 1) == 0);
      }
    }
  }

  return v6 & 1;
}

- (BOOL)canAddFileGroupWithGroupNumber:(int)number
{
  v43 = *MEMORY[0x1E69E9840];
  if (number > 0x3E7)
  {
    return 0;
  }

  selfCopy = self;
  _calculateBaseDirectoryValue = [(PLPhotoDCFDirectory *)self _calculateBaseDirectoryValue];
  +[PLPhotoDCFDirectory initializeFileGroupPrefixAndExtensions];
  v7 = +[PLPhotoDCFDirectory fileGroupRequiredEmptyPrefixes];
  v8 = +[PLPhotoDCFDirectory fileGroupRequiredEmptyExtensions];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v7;
  v30 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v30)
  {
    v10 = (_calculateBaseDirectoryValue + number) % 0x2710;
    v11 = *v38;
    v12 = 0x1E696A000uLL;
    v13 = 0x1E696A000uLL;
    v31 = v9;
    v32 = v8;
    v28 = v10;
    v29 = selfCopy;
    v27 = *v38;
    do
    {
      v14 = 0;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(v12 + 3776) stringWithFormat:@"%@_%04d", *(*(&v37 + 1) + 8 * v14), v10];
        fullPath = [(PLPhotoDCFDirectory *)selfCopy fullPath];
        v17 = [fullPath stringByAppendingPathComponent:v15];

        defaultManager = [*(v13 + 3080) defaultManager];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v19 = v8;
        v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v34;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v34 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [v17 stringByAppendingPathExtension:*(*(&v33 + 1) + 8 * i)];
              v25 = [defaultManager fileExistsAtPath:v24];

              if (v25)
              {

                v3 = 0;
                v9 = v31;
                v8 = v32;
                goto LABEL_21;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        ++v14;
        selfCopy = v29;
        v9 = v31;
        v8 = v32;
        v11 = v27;
        v10 = v28;
        v12 = 0x1E696A000;
        v13 = 0x1E696A000;
      }

      while (v14 != v30);
      v3 = 1;
      v30 = [v31 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v30);
  }

  else
  {
    v3 = 1;
  }

LABEL_21:

  return v3;
}

- (PLPhotoDCFDirectory)initWithName:(id)name number:(int)number dcimDirectory:(id)directory
{
  v6 = *&number;
  directoryCopy = directory;
  v16.receiver = self;
  v16.super_class = PLPhotoDCFDirectory;
  v10 = [(PLPhotoDCFObject *)&v16 initWithName:name number:v6];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_dcimDirectory, directory);
    dcimDirectory = v11->_dcimDirectory;
    _lastUsedFileGroupUserInfoKey = [(PLPhotoDCFDirectory *)v11 _lastUsedFileGroupUserInfoKey];
    v14 = [(PLPhotoDCIMDirectory *)dcimDirectory userInfoObjectForKey:_lastUsedFileGroupUserInfoKey];
    v11->_lastUsedFileGroupNumber = [v14 intValue];
  }

  return v11;
}

uint64_t __61__PLPhotoDCFDirectory_initializeFileGroupPrefixAndExtensions__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"IMG", @"MOV", 0}];
  v1 = __fileGroupRequiredEmptyPrefixes;
  __fileGroupRequiredEmptyPrefixes = v0;

  __fileGroupRequiredEmptyExtensions = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"JPG", @"PNG", @"TIF", @"GIF", @"MOV", 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end