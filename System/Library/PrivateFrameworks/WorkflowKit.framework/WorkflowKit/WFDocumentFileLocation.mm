@interface WFDocumentFileLocation
+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items;
+ (id)subpathFromURL:(id)l item:(id)item;
- (BOOL)shouldShowUsersDuringDisplay:(id)display;
- (id)resolveLocationWithError:(id *)error;
@end

@implementation WFDocumentFileLocation

+ (id)subpathFromURL:(id)l item:(id)item
{
  lCopy = l;
  v5 = +[WFFileLocationUtilities documentsDirectory];
  v6 = [lCopy wf_relativePathFromURL:v5];

  return v6;
}

+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  if (item)
  {
    itemCopy = item;
    v7 = MEMORY[0x1E695DEC8];
    itemsCopy = items;
    itemCopy2 = item;
    lCopy = l;
    v11 = [v7 arrayWithObjects:&itemCopy count:1];
    v12 = [v11 arrayByAddingObjectsFromArray:{itemsCopy, itemCopy, v17}];

    v13 = [WFFileLocationUtilities isFileURL:lCopy withParentItems:v12 insideFolderType:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)shouldShowUsersDuringDisplay:(id)display
{
  v3 = MEMORY[0x1E696AC08];
  displayCopy = display;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager isUbiquitousItemAtURL:displayCopy];

  return v6 ^ 1;
}

- (id)resolveLocationWithError:(id *)error
{
  v4 = [(WFFileProviderLocation *)self resolveCrossDeviceItemIDWithError:error];
  if ([v4 wf_fileExists])
  {
    v5 = v4;
  }

  else
  {
    v6 = +[WFFileLocationUtilities documentsDirectory];
    relativeSubpath = [(WFFileLocation *)self relativeSubpath];
    v8 = [v6 URLByAppendingPathComponent:relativeSubpath];

    if (v8)
    {
      v5 = v8;
    }

    else
    {
      fileProviderDomainID = [(WFFileProviderLocation *)self fileProviderDomainID];
      relativeSubpath2 = [(WFFileLocation *)self relativeSubpath];
      v5 = [WFiCloudFileLocation resolveLocationFromPossibleProviderDomainIDsWithSerializedProviderDomainID:fileProviderDomainID relativeSubpath:relativeSubpath2];
    }
  }

  return v5;
}

@end