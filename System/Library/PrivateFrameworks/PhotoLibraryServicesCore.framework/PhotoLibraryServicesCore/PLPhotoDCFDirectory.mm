@interface PLPhotoDCFDirectory
- (BOOL)_canAddItemWithPrefix:(id)a3;
- (BOOL)_canAddItemWithPrefix:(id)a3 minimumFileGroupNumber:(int)a4;
- (BOOL)canAddFileGroupWithGroupNumber:(int)a3;
- (BOOL)isEntensionValid:(id)a3;
- (PLPhotoDCFDirectory)initWithName:(id)a3 number:(int)a4 dcimDirectory:(id)a5;
- (id)_nextAvailableFileGroupWithPrefix:(id)a3 extension:(id)a4;
- (id)fileGroups;
- (id)fullPath;
- (void)ensureDirectoryExists;
- (void)removeFileGroup:(id)a3;
@end

@implementation PLPhotoDCFDirectory

- (void)removeFileGroup:(id)a3
{
  v6 = a3;
  [v6 deleteFiles];
  fileGroupsByNumber = self->_fileGroupsByNumber;
  if (fileGroupsByNumber)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "number")}];
    [(NSMutableDictionary *)fileGroupsByNumber removeObjectForKey:v5];
  }
}

- (id)_nextAvailableFileGroupWithPrefix:(id)a3 extension:(id)a4
{
  v6 = a3;
  v30 = a4;
  [(PLPhotoDCIMDirectory *)self->_dcimDirectory lockDirectory];
  [(PLPhotoDCIMDirectory *)self->_dcimDirectory reloadUserInfo];
  dcimDirectory = self->_dcimDirectory;
  v8 = [(PLPhotoDCFDirectory *)self _lastUsedFileGroupUserInfoKey];
  v9 = [(PLPhotoDCIMDirectory *)dcimDirectory userInfoObjectForKey:v8];
  self->_lastUsedFileGroupNumber = [v9 intValue];

  lastUsedFileGroupNumber = self->_lastUsedFileGroupNumber;
  v11 = (lastUsedFileGroupNumber + 1);
  v12 = [(PLPhotoDCFDirectory *)self _calculateBaseDirectoryValue];
  v13 = v12 + v11;
  if ([(PLPhotoDCFDirectory *)self canAddFileGroupWithGroupNumber:v11])
  {
    goto LABEL_8;
  }

  if (!self->_fileGroupsByNumber)
  {
    v14 = [(PLPhotoDCFDirectory *)self fileGroups];
  }

  if (lastUsedFileGroupNumber >= 998)
  {
LABEL_8:
    if (lastUsedFileGroupNumber > 998)
    {
      v22 = 0;
      v19 = v30;
      goto LABEL_14;
    }

    v18 = v13 % 0x2710;
  }

  else
  {
    do
    {
      fileGroupsByNumber = self->_fileGroupsByNumber;
      v16 = [MEMORY[0x1E696AD98] numberWithInt:v12 - 10000 * (v13 / 0x2710) + v11];
      v17 = [(NSMutableDictionary *)fileGroupsByNumber objectForKeyedSubscript:v16];

      if (!v17)
      {
        break;
      }

      v11 = (v11 + 1);
    }

    while (v11 != 999);
    v18 = v12 - 10000 * (v13 / 0x2710) + v11;
  }

  v19 = v30;
  v20 = [PLPhotoDCFFileGroup alloc];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%04d", v6, v18];
  v22 = [(PLPhotoDCFFileGroup *)v20 initWithName:v21 number:v18 directory:self];

  [(PLPhotoDCFFileGroup *)v22 addExtension:v30];
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
  v28 = [(PLPhotoDCFDirectory *)self _lastUsedFileGroupUserInfoKey];
  [(PLPhotoDCIMDirectory *)v26 setUserInfoObject:v27 forKey:v28];

  self->_lastUsedFileGroupNumber = v11;
  [(PLPhotoDCIMDirectory *)self->_dcimDirectory saveUserInfo];
  [(PLPhotoDCIMDirectory *)self->_dcimDirectory unlockDirectory];

  return v22;
}

- (id)fileGroups
{
  if (!self->_fileGroupsByNumber)
  {
    v3 = [(PLPhotoDCIMDirectory *)self->_dcimDirectory dcimPath];
    v4 = [v3 stringByAppendingPathComponent:self->super._name];

    v33 = [MEMORY[0x1E696AC08] defaultManager];
    v34 = v4;
    v5 = [v33 contentsOfDirectoryAtPath:v4 error:0];
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
        v14 = [v13 pathExtension];
        if (v14)
        {
          if ([(PLPhotoDCFDirectory *)self isEntensionValid:v14]|| [(PLPhotoDCFDirectory *)self considerInvalidFileGroups])
          {
            if (!v13 || ([(PLPhotoDCFFileGroup *)v14 isEqualToString:&stru_1F1F75560]& 1) != 0)
            {
              goto LABEL_16;
            }

            v15 = self->_fileGroupsByNumber;
            v16 = [MEMORY[0x1E696AD98] numberWithInt:v38];
            v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];

            if (!v17)
            {
              v18 = [v34 stringByAppendingPathComponent:v12];
              v31 = [v33 attributesOfItemAtPath:v18 error:0];

              v35 = [v31 objectForKey:v29];
              v19 = [PLPhotoDCFFileGroup alloc];
              v20 = [v13 stringByDeletingPathExtension];
              v17 = [(PLPhotoDCFFileGroup *)v19 initWithName:v20 number:v38 directory:self];

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

            [(PLPhotoDCFFileGroup *)v17 addExtension:v14];
          }

          else
          {
            v17 = v14;
            v14 = 0;
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

  v26 = [(NSMutableDictionary *)self->_fileGroupsByNumber allValues];
  v27 = [v26 sortedArrayUsingSelector:sel_compare_];

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

- (BOOL)isEntensionValid:(id)a3
{
  v3 = a3;
  v4 = ([v3 isEqualToString:@"TH2"] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", @"THO");

  return v4;
}

- (void)ensureDirectoryExists
{
  v2 = [(PLPhotoDCFDirectory *)self fullPath];

  MEMORY[0x1EEDEC4D0](v2, 448);
}

- (id)fullPath
{
  v3 = [(PLPhotoDCIMDirectory *)self->_dcimDirectory dcimPath];
  v4 = [v3 stringByAppendingPathComponent:self->super._name];

  return v4;
}

- (BOOL)_canAddItemWithPrefix:(id)a3
{
  v4 = [(PLPhotoDCFDirectory *)self _canAddItemWithPrefix:a3 minimumFileGroupNumber:(self->_lastUsedFileGroupNumber + 1)];
  if (!v4 && self->_lastUsedFileGroupNumber != 999)
  {
    self->_lastUsedFileGroupNumber = 999;
    dcimDirectory = self->_dcimDirectory;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:999];
    v7 = [(PLPhotoDCFDirectory *)self _lastUsedFileGroupUserInfoKey];
    [(PLPhotoDCIMDirectory *)dcimDirectory setUserInfoObject:v6 forKey:v7];

    [(PLPhotoDCIMDirectory *)self->_dcimDirectory saveUserInfo];
  }

  return v4;
}

- (BOOL)_canAddItemWithPrefix:(id)a3 minimumFileGroupNumber:(int)a4
{
  if ([(PLPhotoDCFDirectory *)self canAddFileGroupWithGroupNumber:*&a4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(PLPhotoDCFDirectory *)self fileGroups];
    v8 = [v7 count];
    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = a4 < 999;
    }

    if (a4 <= 999)
    {
      v9 = v8;
      if (v8 >= 1)
      {
        do
        {
          v10 = [v7 objectAtIndex:v9 - 1];
          v11 = [v10 number];
          v6 |= v11 < 999;

          if (v11 <= a4 || v9 < 2)
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

- (BOOL)canAddFileGroupWithGroupNumber:(int)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if (a3 > 0x3E7)
  {
    return 0;
  }

  v5 = self;
  v6 = [(PLPhotoDCFDirectory *)self _calculateBaseDirectoryValue];
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
    v10 = (v6 + a3) % 0x2710;
    v11 = *v38;
    v12 = 0x1E696A000uLL;
    v13 = 0x1E696A000uLL;
    v31 = v9;
    v32 = v8;
    v28 = v10;
    v29 = v5;
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
        v16 = [(PLPhotoDCFDirectory *)v5 fullPath];
        v17 = [v16 stringByAppendingPathComponent:v15];

        v18 = [*(v13 + 3080) defaultManager];
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
              v25 = [v18 fileExistsAtPath:v24];

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
        v5 = v29;
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

- (PLPhotoDCFDirectory)initWithName:(id)a3 number:(int)a4 dcimDirectory:(id)a5
{
  v6 = *&a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = PLPhotoDCFDirectory;
  v10 = [(PLPhotoDCFObject *)&v16 initWithName:a3 number:v6];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_dcimDirectory, a5);
    dcimDirectory = v11->_dcimDirectory;
    v13 = [(PLPhotoDCFDirectory *)v11 _lastUsedFileGroupUserInfoKey];
    v14 = [(PLPhotoDCIMDirectory *)dcimDirectory userInfoObjectForKey:v13];
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