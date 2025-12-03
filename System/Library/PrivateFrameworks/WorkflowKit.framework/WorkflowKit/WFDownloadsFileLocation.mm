@interface WFDownloadsFileLocation
+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items;
+ (id)subpathFromURL:(id)l item:(id)item;
- (BOOL)shouldShowUsersDuringDisplay:(id)display;
- (id)resolveLocationWithError:(id *)error;
@end

@implementation WFDownloadsFileLocation

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
  v11.receiver = self;
  v11.super_class = WFDownloadsFileLocation;
  v4 = [(WFFileProviderLocation *)&v11 resolveCrossDeviceItemIDWithError:error];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = +[WFFileLocationUtilities iCloudDownloadsDirectory];
    relativeSubpath = [(WFFileLocation *)self relativeSubpath];
    v6 = [v7 URLByAppendingPathComponent:relativeSubpath];

    if (v6)
    {
      v9 = v6;
    }
  }

  return v6;
}

+ (id)subpathFromURL:(id)l item:(id)item
{
  lCopy = l;
  v5 = +[WFFileLocationUtilities downloadsDirectory];
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

  LOBYTE(v10) = [WFFileLocationUtilities isFileURL:lCopy withParentItems:v11 insideFolderType:2];
  return v10;
}

@end