@interface PLPhotoDCIMDirectory
- (BOOL)hasChangedExternally;
- (PLPhotoDCIMDirectory)initWithDCIMPath:(id)path;
- (id)_userInfoPath;
- (id)dcfDirectories;
- (id)miscPath;
- (id)nextAvailableDirectory;
- (id)posterImagePath;
- (id)userInfo;
- (id)userInfoObjectForKey:(id)key;
- (void)clearDCFDirectories;
- (void)dealloc;
- (void)lockDirectory;
- (void)recreateInfoPlist;
- (void)reloadUserInfo;
- (void)saveUserInfo;
- (void)setHasChangedExternally:(BOOL)externally;
- (void)setUserInfoObject:(id)object forKey:(id)key;
- (void)unlockDirectory;
@end

@implementation PLPhotoDCIMDirectory

- (void)setHasChangedExternally:(BOOL)externally
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:externally];
  [(PLPhotoDCIMDirectory *)self setUserInfoObject:v4 forKey:@"DCIMChangedExternally"];
}

- (BOOL)hasChangedExternally
{
  v2 = [(PLPhotoDCIMDirectory *)self userInfoObjectForKey:@"DCIMChangedExternally"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)unlockDirectory
{
  dcimDirectoryLock = self->_dcimDirectoryLock;
  if (dcimDirectoryLock)
  {
    dcimDirectoryLock->l_type = 0;
    fcntl(self->_dcimDirectoryLockDescriptor, 8, &self->_dcimDirectoryLock);
    close(self->_dcimDirectoryLockDescriptor);
    free(self->_dcimDirectoryLock);
    self->_dcimDirectoryLock = 0;
    self->_dcimDirectoryLockDescriptor = -1;
  }
}

- (void)lockDirectory
{
  p_dcimDirectoryLock = &self->_dcimDirectoryLock;
  if (!self->_dcimDirectoryLock)
  {
    self->_dcimDirectoryLock = malloc_type_calloc(1uLL, 0x18uLL, 0x1000040504FFAC1uLL);
    v4 = open([(NSString *)self->_dcimPath UTF8String], 2);
    self->_dcimDirectoryLockDescriptor = v4;
    dcimDirectoryLock = self->_dcimDirectoryLock;
    if (!dcimDirectoryLock || v4 < 0)
    {
      free(dcimDirectoryLock);
      self->_dcimDirectoryLock = 0;
      self->_dcimDirectoryLockDescriptor = -1;
    }

    else
    {
      *&dcimDirectoryLock->l_type = 3;
      dcimDirectoryLock->l_start = 0;
      dcimDirectoryLock->l_len = 0;
      self->_dcimDirectoryLock->l_pid = getpid();
      fcntl(self->_dcimDirectoryLockDescriptor, 9, p_dcimDirectoryLock);
    }
  }
}

- (id)nextAvailableDirectory
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  dcfDirectories = [(PLPhotoDCIMDirectory *)self dcfDirectories];
  lastUsedDirectoryNumber = self->_lastUsedDirectoryNumber;
  if (lastUsedDirectoryNumber >= 1000)
  {
    v5 = 100;
  }

  else
  {
    v5 = lastUsedDirectoryNumber;
  }

  do
  {
    v6 = CFDictionaryGetValue(self->_topLevelDirectoriesByNumber, v5);
    if (v6)
    {
      v7 = v6;
      if ([(PLPhotoDCFDirectory *)v6 canAddImage]&& [(PLPhotoDCFDirectory *)v7 canAddVideo])
      {
        goto LABEL_17;
      }

      v7 = 0;
      if (v5 <= 998)
      {
        v5 = (v5 + 1);
      }

      else
      {
        v5 = 100;
      }
    }

    else
    {
      v8 = [PLPhotoDCFDirectory alloc];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%03dAPPLE", v5];
      v7 = [(PLPhotoDCFDirectory *)v8 initWithName:v9 number:v5 dcimDirectory:self];

      CFDictionarySetValue(self->_topLevelDirectoriesByNumber, v5, v7);
      [(NSMutableArray *)self->_topLevelDirectories addObject:v7];
    }

    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5 == lastUsedDirectoryNumber;
    }
  }

  while (!v10);
  if (v7)
  {
LABEL_17:
    self->_lastUsedDirectoryNumber = v5;
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    v12 = standardUserDefaults;
    [standardUserDefaults setObject:v11 forKey:@"DCFLastDirectoryNumber"];

    goto LABEL_19;
  }

  v12 = standardUserDefaults;
LABEL_19:

  return v7;
}

- (void)clearDCFDirectories
{
  topLevelDirectories = self->_topLevelDirectories;
  self->_topLevelDirectories = 0;

  topLevelDirectoriesByNumber = self->_topLevelDirectoriesByNumber;
  if (topLevelDirectoriesByNumber)
  {
    CFRelease(topLevelDirectoriesByNumber);
    self->_topLevelDirectoriesByNumber = 0;
  }

  unusableTopLevelDirectoryNumbers = self->_unusableTopLevelDirectoryNumbers;
  if (unusableTopLevelDirectoryNumbers)
  {
    CFRelease(unusableTopLevelDirectoryNumbers);
    self->_unusableTopLevelDirectoryNumbers = 0;
  }

  [(PLPhotoDCIMDirectory *)self saveUserInfo];
}

- (id)dcfDirectories
{
  topLevelDirectories = self->_topLevelDirectories;
  if (!topLevelDirectories)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [defaultManager contentsOfDirectoryAtPath:self->_dcimPath error:0];
    v5 = [v4 count];
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v5];
    self->_topLevelDirectoriesByNumber = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    self->_unusableTopLevelDirectoryNumbers = CFSetCreateMutable(0, 0, 0);
    if (v5 >= 1)
    {
      v7 = 0;
      while (1)
      {
        v8 = objc_autoreleasePoolPush();
        LODWORD(key) = 0;
        v9 = [v4 objectAtIndex:v7];
        v10 = [PLPhotoDCFObject validDCFNameForName:v9 requiredLength:8 nameLength:8 number:&key numberRange:0 suffix:3, @"APPLE"];
        if (v10)
        {
          break;
        }

LABEL_10:

        objc_autoreleasePoolPop(v8);
        if (v5 == ++v7)
        {
          goto LABEL_13;
        }
      }

      v11 = CFDictionaryGetValue(self->_topLevelDirectoriesByNumber, key);
      v12 = [v6 valueForKey:v10];
      if (v12 | v11)
      {
      }

      else if (!CFSetGetValue(self->_unusableTopLevelDirectoryNumbers, key))
      {
        v13 = [PLPhotoDCFDirectory alloc];
        v11 = [(PLPhotoDCFDirectory *)v13 initWithName:v10 number:key dcimDirectory:self];
        CFDictionarySetValue(self->_topLevelDirectoriesByNumber, key, v11);
        [v6 setObject:v11 forKey:v10];
        goto LABEL_9;
      }

      [v6 removeObjectForKey:v10];
      CFDictionaryRemoveValue(self->_topLevelDirectoriesByNumber, key);
      CFSetAddValue(self->_unusableTopLevelDirectoryNumbers, key);
LABEL_9:

      goto LABEL_10;
    }

LABEL_13:
    v14 = objc_alloc(MEMORY[0x1E695DF70]);
    allValues = [v6 allValues];
    v16 = [v14 initWithArray:allValues];
    v17 = self->_topLevelDirectories;
    self->_topLevelDirectories = v16;

    v18 = [(NSMutableArray *)self->_topLevelDirectories sortedArrayUsingSelector:sel_compare_];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v20 = [standardUserDefaults objectForKey:@"DCFLastDirectoryNumber"];
    intValue = [v20 intValue];
    if (intValue <= 100)
    {
      v22 = 100;
    }

    else
    {
      v22 = intValue;
    }

    self->_lastUsedDirectoryNumber = v22;

    topLevelDirectories = self->_topLevelDirectories;
  }

  return topLevelDirectories;
}

- (void)setUserInfoObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  userInfo = [(PLPhotoDCIMDirectory *)self userInfo];
  [userInfo setObject:objectCopy forKey:keyCopy];

  self->_userInfoDidChange = 1;
}

- (id)userInfoObjectForKey:(id)key
{
  keyCopy = key;
  userInfo = [(PLPhotoDCIMDirectory *)self userInfo];
  v6 = [userInfo objectForKey:keyCopy];

  return v6;
}

- (void)reloadUserInfo
{
  userInfo = self->_userInfo;
  self->_userInfo = 0;

  userInfo = [(PLPhotoDCIMDirectory *)self userInfo];
}

- (void)recreateInfoPlist
{
  v49 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AC08] defaultManager];
  v31 = v30 = self;
  v3 = [v31 contentsOfDirectoryAtPath:self->_dcimPath error:0];
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3 && [v3 count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    _userInfoPath = v3;
    v34 = [_userInfoPath countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (!v34)
    {
LABEL_28:

      goto LABEL_29;
    }

    v28 = v3;
    obj = _userInfoPath;
    v5 = 0;
    v33 = *v44;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v43 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v42 = 0;
        v9 = [PLPhotoDCFObject validDCFNameForName:v7 requiredLength:8 nameLength:8 number:&v42 numberRange:0 suffix:3, @"APPLE"];
        if (v9)
        {
          v35 = v9;
          v10 = [(NSString *)v30->_dcimPath stringByAppendingPathComponent:v7];
          v11 = [v31 contentsOfDirectoryAtPath:v10 error:0];

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
          v36 = v8;
          v37 = i;
          if (v13)
          {
            v14 = v13;
            v15 = 0;
            LODWORD(v16) = 0;
            v17 = *v39;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v39 != v17)
                {
                  objc_enumerationMutation(v12);
                }

                v19 = *(*(&v38 + 1) + 8 * j);
                v20 = objc_autoreleasePoolPush();
                stringByDeletingPathExtension = [v19 stringByDeletingPathExtension];
                v22 = [stringByDeletingPathExtension componentsSeparatedByString:@"_"];

                if ([v22 count] >= 2)
                {
                  v23 = [v22 objectAtIndex:1];
                  intValue = [v23 intValue];

                  v15 = intValue + 100000 - 1000 * v42 + 10000 * ((1000 * v42 - 100000) / 10000);
                }

                if (v16 <= v15)
                {
                  v16 = v15;
                }

                else
                {
                  v16 = v16;
                }

                objc_autoreleasePoolPop(v20);
              }

              v14 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
            }

            while (v14);
          }

          else
          {
            v16 = 0;
          }

          v25 = [MEMORY[0x1E696AD98] numberWithInt:v16];
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LastFileGroupNumber-%d", v42];
          [v32 setObject:v25 forKey:v26];

          v5 = 1;
          v27 = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v32 setObject:v27 forKey:@"DCIMChangedExternally"];

          v8 = v36;
          i = v37;
          v9 = v35;
        }

        objc_autoreleasePoolPop(v8);
      }

      v34 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v34);

    v3 = v28;
    if (v5)
    {
      _userInfoPath = [(PLPhotoDCIMDirectory *)v30 _userInfoPath];
      [v32 writeToFile:_userInfoPath atomically:0];
      goto LABEL_28;
    }
  }

LABEL_29:
}

- (id)userInfo
{
  v40 = *MEMORY[0x1E69E9840];
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    _userInfoPath = [(PLPhotoDCIMDirectory *)self _userInfoPath];
    v31 = defaultManager;
    v6 = [defaultManager fileExistsAtPath:_userInfoPath];
    selfCopy = self;
    if ((v6 & 1) == 0)
    {
      [(PLPhotoDCIMDirectory *)self recreateInfoPlist];
    }

    v30 = _userInfoPath;
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:_userInfoPath];
    v9 = self->_userInfo;
    self->_userInfo = v8;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(NSMutableDictionary *)self->_userInfo allKeys];
    v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v36;
      do
      {
        v14 = 0;
        v32 = v11;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          if ([v15 hasPrefix:@"LastFileGroupNumber"])
          {
            v17 = v13;
            v18 = v12;
            v19 = [v15 substringFromIndex:{objc_msgSend(v15, "length") - 3}];
            intValue = [v19 intValue];
            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%03dAPPLE", intValue];
            [(PLPhotoDCIMDirectory *)selfCopy dcimPath];
            v23 = v22 = selfCopy;
            v24 = [v23 stringByAppendingPathComponent:v21];

            selfCopy = v22;
            v34 = 0;
            if (![v31 fileExistsAtPath:v24 isDirectory:&v34] || (v34 & 1) == 0)
            {
              [(NSMutableDictionary *)v22->_userInfo removeObjectForKey:v15];
              v22->_userInfoDidChange = 1;
            }

            v12 = v18;
            v13 = v17;
            v11 = v32;
          }

          else
          {
            v12 = [v15 isEqualToString:@"DCIMChangedExternally"] | v12;
          }

          objc_autoreleasePoolPop(v16);
          ++v14;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v11);
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    v25 = selfCopy;
    userInfo = selfCopy->_userInfo;
    if (userInfo)
    {
      if (v12)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29 = v25->_userInfo;
    v25->_userInfo = v28;

    userInfo = v25->_userInfo;
    if ((v12 & 1) == 0)
    {
LABEL_21:
      v26 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [(NSMutableDictionary *)userInfo setObject:v26 forKey:@"DCIMChangedExternally"];

      userInfo = v25->_userInfo;
    }
  }

LABEL_22:

  return userInfo;
}

- (void)saveUserInfo
{
  if (self->_userInfoDidChange)
  {
    userInfo = self->_userInfo;
    _userInfoPath = [(PLPhotoDCIMDirectory *)self _userInfoPath];
    [(NSMutableDictionary *)userInfo writeToFile:_userInfoPath atomically:0];

    self->_userInfoDidChange = 0;
  }
}

- (id)posterImagePath
{
  posterImagePath = self->_posterImagePath;
  if (!posterImagePath)
  {
    miscPath = [(PLPhotoDCIMDirectory *)self miscPath];
    v5 = [miscPath stringByAppendingPathComponent:@"PosterImage.jpg"];
    v6 = self->_posterImagePath;
    self->_posterImagePath = v5;

    posterImagePath = self->_posterImagePath;
  }

  return posterImagePath;
}

- (id)miscPath
{
  v10[1] = *MEMORY[0x1E69E9840];
  miscPath = self->_miscPath;
  if (!miscPath)
  {
    v4 = [(NSString *)self->_dcimPath stringByAppendingPathComponent:@".MISC"];
    v5 = self->_miscPath;
    self->_miscPath = v4;

    v9 = *MEMORY[0x1E696A370];
    v10[0] = &unk_1F1F90968;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtPath:self->_miscPath withIntermediateDirectories:1 attributes:v6 error:0];

    miscPath = self->_miscPath;
  }

  return miscPath;
}

- (void)dealloc
{
  [(PLPhotoDCIMDirectory *)self saveUserInfo];
  topLevelDirectoriesByNumber = self->_topLevelDirectoriesByNumber;
  if (topLevelDirectoriesByNumber)
  {
    CFRelease(topLevelDirectoriesByNumber);
  }

  unusableTopLevelDirectoryNumbers = self->_unusableTopLevelDirectoryNumbers;
  if (unusableTopLevelDirectoryNumbers)
  {
    CFRelease(unusableTopLevelDirectoryNumbers);
  }

  v5.receiver = self;
  v5.super_class = PLPhotoDCIMDirectory;
  [(PLPhotoDCIMDirectory *)&v5 dealloc];
}

- (PLPhotoDCIMDirectory)initWithDCIMPath:(id)path
{
  v14[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = PLPhotoDCIMDirectory;
  v5 = [(PLPhotoDCIMDirectory *)&v12 init];
  v6 = v5;
  if (v5)
  {
    if (pathCopy)
    {
      v7 = [pathCopy copy];
      dcimPath = v6->_dcimPath;
      v6->_dcimPath = v7;

      v13 = *MEMORY[0x1E696A370];
      v14[0] = &unk_1F1F90968;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:v9 error:0];

      v6->_lastUsedDirectoryNumber = 100;
      v6->_dcimDirectoryLockDescriptor = -1;
    }

    else
    {
      v9 = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (id)_userInfoPath
{
  miscPath = [(PLPhotoDCIMDirectory *)self miscPath];
  v3 = [miscPath stringByAppendingPathComponent:@"Info.plist"];

  return v3;
}

@end