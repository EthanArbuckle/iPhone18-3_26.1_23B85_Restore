@interface WFLocalStorageFileLocation
+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items;
+ (id)subpathFromURL:(id)l;
+ (id)subpathFromURL:(id)l item:(id)item;
- (id)resolveLocationWithError:(id *)error;
@end

@implementation WFLocalStorageFileLocation

+ (id)subpathFromURL:(id)l item:(id)item
{
  lCopy = l;
  itemCopy = item;
  v7 = [WFFileLocationUtilities parentItemsForItem:itemCopy];
  if ([v7 count] || (objc_msgSend(itemCopy, "itemIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E6967258]), v8, (v9 & 1) == 0))
  {
    pathComponents = [lCopy pathComponents];
    reverseObjectEnumerator = [pathComponents reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v14 = [allObjects subarrayWithRange:{1, objc_msgSend(pathComponents, "count") - 1}];

    v15 = MEMORY[0x1E695DF70];
    lastPathComponent = [lCopy lastPathComponent];
    v17 = [v15 arrayWithObject:lastPathComponent];

    if (v14)
    {
      v18 = [v14 count] - 1;
      v19 = [v7 count] - 1;
      if (v18 < v19)
      {
        v19 = v18;
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __50__WFLocalStorageFileLocation_subpathFromURL_item___block_invoke;
      v24[3] = &unk_1E8373288;
      v27 = v19;
      v25 = v7;
      v20 = v17;
      v26 = v20;
      [v14 enumerateObjectsUsingBlock:v24];
      reverseObjectEnumerator2 = [v20 reverseObjectEnumerator];
      allObjects2 = [reverseObjectEnumerator2 allObjects];
      v10 = [allObjects2 componentsJoinedByString:@"/"];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = &stru_1F4A1C408;
  }

  return v10;
}

void __50__WFLocalStorageFileLocation_subpathFromURL_item___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 48) >= a3)
  {
    v12 = v7;
    v8 = [*(a1 + 32) objectAtIndex:a3];
    v9 = [v8 itemIdentifier];
    v10 = [v9 isEqualToString:*MEMORY[0x1E6967258]];

    if (v10)
    {
      *a4 = 1;
    }

    else
    {
      v11 = [v8 filename];
      if ([v12 isEqualToString:v11])
      {
        [*(a1 + 40) addObject:v12];
      }

      else
      {
        *a4 = 1;
      }
    }

    v7 = v12;
  }

  else
  {
    *a4 = 1;
  }
}

+ (id)subpathFromURL:(id)l
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFLocalStorageFileLocation;
  v3 = objc_msgSendSuper2(&v5, sel_subpathFromURL_, l);

  return v3;
}

+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items
{
  providerDomainID = [item providerDomainID];
  v6 = [providerDomainID isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  return v6;
}

- (id)resolveLocationWithError:(id *)error
{
  v4 = [(WFFileProviderLocation *)self resolveCrossDeviceItemIDWithError:error];
  if (!v4)
  {
    appContainerBundleIdentifier = [(WFFileProviderLocation *)self appContainerBundleIdentifier];

    if (appContainerBundleIdentifier)
    {
      appContainerBundleIdentifier2 = [(WFFileProviderLocation *)self appContainerBundleIdentifier];
      [WFFileLocationUtilities documentsURLForApplicationContainerBundleID:appContainerBundleIdentifier2];
    }

    else
    {
      appContainerBundleIdentifier2 = [(WFFileProviderLocation *)self fileProviderDomainID];
      [WFFileLocationUtilities fetchRootItemURLForDomainWithID:appContainerBundleIdentifier2];
    }
    v7 = ;

    if (v7)
    {
      relativeSubpath = [(WFFileLocation *)self relativeSubpath];
      v4 = [v7 URLByAppendingPathComponent:relativeSubpath];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end