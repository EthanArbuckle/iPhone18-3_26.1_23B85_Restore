@interface PXPLLibraryContentModeSelection
+ (BOOL)hasPersistedLibraryContentModeSelection;
+ (int)contentModeForNavigationDestination:(id)destination useSearchTab:(BOOL)tab;
+ (int)getPersistedLibraryContentModeSelection;
+ (int)launchContentModeForNavigationDestination:(id)destination;
+ (void)setPersistedLibraryContentModeSelection:(int)selection;
@end

@implementation PXPLLibraryContentModeSelection

+ (BOOL)hasPersistedLibraryContentModeSelection
{
  if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [standardUserDefaults integerForKey:@"LastSelectedTabModeVersion"];

    if (v3 != 1)
    {
      return 0;
    }
  }

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults2 objectForKey:@"LastSelectedTabMode"];
  v6 = v5 != 0;

  return v6;
}

+ (int)getPersistedLibraryContentModeSelection
{
  if (!+[PXPLLibraryContentModeSelection hasPersistedLibraryContentModeSelection])
  {
    return -1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"LastSelectedTabMode"];

  return v3;
}

+ (int)launchContentModeForNavigationDestination:(id)destination
{
  destinationCopy = destination;
  v4 = __ROR8__([destinationCopy type] - 8, 1);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
LABEL_5:
        v5 = 13;
        goto LABEL_16;
      case 5:
        if ([destinationCopy collectionListType] == 2 && objc_msgSend(destinationCopy, "collectionListSubtype") == 1000000101)
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
  if ([destinationCopy assetCollectionType] != 2)
  {
    if ([destinationCopy assetCollectionSubtype] == 200)
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

+ (int)contentModeForNavigationDestination:(id)destination useSearchTab:(BOOL)tab
{
  tabCopy = tab;
  destinationCopy = destination;
  if (([destinationCopy isLibraryHome] & 1) != 0 || objc_msgSend(destinationCopy, "isTargetingAsset") && !objc_msgSend(destinationCopy, "isTargetingAlbum"))
  {
    v6 = 10;
  }

  else if ([destinationCopy type] == 21)
  {
    v6 = 6;
  }

  else if ([destinationCopy type] == 14)
  {
    if (tabCopy)
    {
      v6 = 12;
    }

    else
    {
      v6 = 10;
    }
  }

  else if ([destinationCopy type])
  {
    v6 = 13;
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (void)setPersistedLibraryContentModeSelection:(int)selection
{
  if (selection != 12)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setInteger:selection forKey:@"LastSelectedTabMode"];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setInteger:1 forKey:@"LastSelectedTabModeVersion"];
  }
}

@end