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
  v1 = [a1 mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath];
  if (([v1 hasPrefix:@"~"] & 1) == 0)
  {
    if (mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir)
    {
      v2 = 0;
    }

    else
    {
      v3 = [@"~" mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath];
      v2 = [v3 mf_betterStringByResolvingSymlinksInPath];

      _MFLockGlobalLock();
      if (!mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir)
      {
        objc_storeStrong(&mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir, v2);
      }

      _MFUnlockGlobalLock();
    }

    if ([v1 hasPrefix:?])
    {
      v4 = [v1 substringFromIndex:{objc_msgSend(mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir, "length")}];
      v5 = [@"~" stringByAppendingString:v4];

      v1 = v5;
    }
  }

  return v1;
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

  v5 = [v2 objectForKey:a1];
  _MFUnlockGlobalLock();
  if (!v5)
  {
    v5 = [a1 stringByResolvingSymlinksInPath];
    if (v5)
    {
      _MFLockGlobalLock();
      [mf_betterStringByResolvingSymlinksInPath_resolvedPaths setObject:v5 forKey:a1];
      [mf_betterStringByResolvingSymlinksInPath_resolvedPaths setObject:v5 forKey:v5];
      _MFUnlockGlobalLock();
    }
  }

  return v5;
}

- (id)mf_canonicalizedAbsolutePath
{
  v1 = [a1 fileSystemRepresentation];
  v2 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  realpath_DARWIN_EXTSN(v1, v2);
  if (*v2)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [v3 stringWithFileSystemRepresentation:v2 length:strlen(v2)];
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
  v2 = [a1 length];
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
  [a1 getCharacters:v5 range:{0, v4}];
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
  v1 = a1;
  v2 = [v1 length];
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
    [v1 getCharacters:v6 range:{0, v3}];
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
  [v1 getCharacters:v6 range:{0, v3}];
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

  v1 = v21;
LABEL_32:
  v22 = *MEMORY[0x277D85DE8];

  return v1;
}

@end