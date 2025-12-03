@interface NSString(MFSharedResourcesDirectoryPathUtils)
- (id)mf_betterStringByResolvingSymlinksInPath;
- (id)mf_canonicalizedAbsolutePath;
- (id)mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath;
- (id)mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath;
- (id)mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath;
@end

@implementation NSString(MFSharedResourcesDirectoryPathUtils)

- (id)mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath
{
  mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath = [self mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath];
  if (([mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath hasPrefix:@"~"] & 1) == 0)
  {
    if (mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir)
    {
      mf_betterStringByResolvingSymlinksInPath = 0;
    }

    else
    {
      mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath2 = [@"~" mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath];
      mf_betterStringByResolvingSymlinksInPath = [mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath2 mf_betterStringByResolvingSymlinksInPath];

      _MFLockGlobalLock();
      if (!mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir)
      {
        objc_storeStrong(&mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir, mf_betterStringByResolvingSymlinksInPath);
      }

      _MFUnlockGlobalLock();
    }

    if ([mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath hasPrefix:?])
    {
      v4 = [mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath substringFromIndex:{objc_msgSend(mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir, "length")}];
      v5 = [@"~" stringByAppendingString:v4];

      mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath = v5;
    }
  }

  return mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath;
}

- (id)mf_betterStringByResolvingSymlinksInPath
{
  _MFLockGlobalLock();
  v2 = mf_betterStringByResolvingSymlinksInPath_resolvedPaths;
  if (!mf_betterStringByResolvingSymlinksInPath_resolvedPaths)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = mf_betterStringByResolvingSymlinksInPath_resolvedPaths;
    mf_betterStringByResolvingSymlinksInPath_resolvedPaths = v3;

    v2 = mf_betterStringByResolvingSymlinksInPath_resolvedPaths;
  }

  stringByResolvingSymlinksInPath = [v2 objectForKey:self];
  _MFUnlockGlobalLock();
  if (!stringByResolvingSymlinksInPath)
  {
    stringByResolvingSymlinksInPath = [self stringByResolvingSymlinksInPath];
    if (stringByResolvingSymlinksInPath)
    {
      _MFLockGlobalLock();
      [mf_betterStringByResolvingSymlinksInPath_resolvedPaths setObject:stringByResolvingSymlinksInPath forKey:self];
      [mf_betterStringByResolvingSymlinksInPath_resolvedPaths setObject:stringByResolvingSymlinksInPath forKey:stringByResolvingSymlinksInPath];
      _MFUnlockGlobalLock();
    }
  }

  return stringByResolvingSymlinksInPath;
}

- (id)mf_canonicalizedAbsolutePath
{
  fileSystemRepresentation = [self fileSystemRepresentation];
  v2 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  realpath_DARWIN_EXTSN(fileSystemRepresentation, v2);
  if (*v2)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [defaultManager stringWithFileSystemRepresentation:v2 length:strlen(v2)];
  }

  else
  {
    v4 = 0;
  }

  free(v2);

  return v4;
}

- (id)mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath
{
  v2 = [self length];
  v3 = v2;
  if (v2 >= 0x400)
  {
    v4 = 1024;
  }

  else
  {
    v4 = v2;
  }

  v5 = malloc_type_malloc(0x800uLL, 0x1000040BDFB0063uLL);
  [self getCharacters:v5 range:{0, v4}];
  if (v3 < 2)
  {
    if (!v3)
    {
      v4 = 0;
      goto LABEL_18;
    }

LABEL_10:
    v4 = 1;
  }

  else
  {
    while (v5[v4 - 1] == 47)
    {
      if (v4-- <= 2)
      {
        goto LABEL_10;
      }
    }
  }

  if (*v5 == 126)
  {
    v7 = v4 - 1;
    if (v4 == 1 || v5[1] == 47)
    {
      v8 = CPSharedResourcesDirectory();
      v9 = [v8 length];
      v10 = v9 + v7;
      if (v9 + v7 <= 1024)
      {
        v11 = v9;
        memmove(&v5[v9], v5 + 1, 2 * v7);
        [v8 getCharacters:v5 range:{0, v11}];
        v4 = v10;
      }
    }
  }

LABEL_18:
  v12 = [MEMORY[0x277CCACA8] stringWithCharacters:v5 length:v4];
  free(v5);

  return v12;
}

- (id)mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath
{
  v25 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = [selfCopy length];
  if (v2 < 1)
  {
    goto LABEL_32;
  }

  v3 = v2;
  v4 = (MEMORY[0x28223BE20])();
  v6 = (&v24 - v5);
  if (v4 >= 0x101)
  {
    v6 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
    [selfCopy getCharacters:v6 range:{0, v3}];
LABEL_6:
    v7 = v3;
    while (v6[v7 - 1] == 47)
    {
      if (v7-- <= 2)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_11;
  }

  bzero(v6, 2 * v4);
  [selfCopy getCharacters:v6 range:{0, v3}];
  if (v3 != 1)
  {
    goto LABEL_6;
  }

LABEL_10:
  v7 = 1;
  if (*v6 != 47)
  {
LABEL_11:
    v9 = CPSharedResourcesDirectory();
    v10 = [v9 length];
    v12 = v7 - v10;
    if (v7 >= v10)
    {
      v13 = v10;
      v24 = &v24;
      v14 = MEMORY[0x28223BE20](v10, v11);
      v16 = &v24 - v15;
      v18 = 2 * v17;
      if (v14 > 0x100)
      {
        v16 = malloc_type_malloc(v18, 0x1000040BDFB0063uLL);
      }

      else
      {
        bzero(&v24 - v15, v18);
      }

      [v9 getCharacters:v16 range:{0, v13, v24, v25}];
      if (v13 < 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        while (v6[v19] == *&v16[2 * v19])
        {
          if (v13 == ++v19)
          {
            v19 = v13;
            break;
          }
        }
      }

      if (v13 >= 0x101)
      {
        free(v16);
      }

      if (v19 == v7)
      {
        *v6 = 126;
        v7 = 1;
      }

      else if (v19 == v13)
      {
        v20 = &v6[v13];
        if (*v20 == 47)
        {
          memmove(v6 + 1, v20, 2 * v12);
          *v6 = 126;
          v7 = v12 + 1;
        }
      }
    }
  }

  v21 = [MEMORY[0x277CCACA8] stringWithCharacters:v6 length:v7];

  if (v3 >= 0x101)
  {
    free(v6);
  }

  selfCopy = v21;
LABEL_32:
  v22 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

@end