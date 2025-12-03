@interface WFDesktopFileLocation
+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items;
+ (id)subpathFromURL:(id)l item:(id)item;
- (BOOL)shouldShowUsersDuringDisplay:(id)display;
- (id)resolveLocationWithError:(id *)error;
@end

@implementation WFDesktopFileLocation

+ (id)subpathFromURL:(id)l item:(id)item
{
  lCopy = l;
  v5 = +[WFFileLocationUtilities desktopDirectory];
  v6 = [lCopy wf_relativePathFromURL:v5];

  return v6;
}

+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items
{
  if (!item)
  {
    return 0;
  }

  v7 = MEMORY[0x1E695DF70];
  itemsCopy = items;
  lCopy = l;
  v10 = [v7 arrayWithObject:item];
  v11 = [v10 arrayByAddingObjectsFromArray:itemsCopy];

  LOBYTE(v10) = [WFFileLocationUtilities isFileURL:lCopy withParentItems:v11 insideFolderType:0];
  return v10;
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
    v6 = +[WFFileLocationUtilities desktopDirectory];
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