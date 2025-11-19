@interface PXPLLibraryContentModeSelection
+ (BOOL)hasPersistedLibraryContentModeSelection;
+ (int)contentModeForNavigationDestination:(id)a3 useSearchTab:(BOOL)a4;
+ (int)getPersistedLibraryContentModeSelection;
+ (int)launchContentModeForNavigationDestination:(id)a3;
+ (void)setPersistedLibraryContentModeSelection:(int)a3;
@end

@implementation PXPLLibraryContentModeSelection

+ (BOOL)hasPersistedLibraryContentModeSelection
{
  if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 integerForKey:@"LastSelectedTabModeVersion"];

    if (v3 != 1)
    {
      return 0;
    }
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"LastSelectedTabMode"];
  v6 = v5 != 0;

  return v6;
}

+ (int)getPersistedLibraryContentModeSelection
{
  if (!+[PXPLLibraryContentModeSelection hasPersistedLibraryContentModeSelection])
  {
    return -1;
  }

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 integerForKey:@"LastSelectedTabMode"];

  return v3;
}

+ (int)launchContentModeForNavigationDestination:(id)a3
{
  v3 = a3;
  v4 = __ROR8__([v3 type] - 8, 1);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
LABEL_5:
        v5 = 13;
        goto LABEL_16;
      case 5:
        if ([v3 collectionListType] == 2 && objc_msgSend(v3, "collectionListSubtype") == 1000000101)
        {
          goto LABEL_5;
        }

        break;
      case 6:
        goto LABEL_5;
    }

LABEL_11:
    v5 = 10;
    goto LABEL_16;
  }

  if (v4)
  {
    if (v4 == 3)
    {
      v5 = 12;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v5 = 10;
  if ([v3 assetCollectionType] != 2)
  {
    if ([v3 assetCollectionSubtype] == 200)
    {
      v5 = 10;
    }

    else
    {
      v5 = 13;
    }
  }

LABEL_16:

  return v5;
}

+ (int)contentModeForNavigationDestination:(id)a3 useSearchTab:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (([v5 isLibraryHome] & 1) != 0 || objc_msgSend(v5, "isTargetingAsset") && !objc_msgSend(v5, "isTargetingAlbum"))
  {
    v6 = 10;
  }

  else if ([v5 type] == 21)
  {
    v6 = 6;
  }

  else if ([v5 type] == 14)
  {
    if (v4)
    {
      v6 = 12;
    }

    else
    {
      v6 = 10;
    }
  }

  else if ([v5 type])
  {
    v6 = 13;
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (void)setPersistedLibraryContentModeSelection:(int)a3
{
  if (a3 != 12)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v5 setInteger:a3 forKey:@"LastSelectedTabMode"];

    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 setInteger:1 forKey:@"LastSelectedTabModeVersion"];
  }
}

@end