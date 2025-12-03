@interface WFShortcutsFileLocation
+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items;
+ (id)locationAtRootDirectory;
+ (id)subpathFromURL:(id)l item:(id)item;
- (id)resolveLocationWithError:(id *)error;
@end

@implementation WFShortcutsFileLocation

- (id)resolveLocationWithError:(id *)error
{
  v4 = [WFFileStorageUtilities documentsDirectoryWithError:0];
  relativeSubpath = [(WFFileLocation *)self relativeSubpath];
  v6 = [v4 URLByAppendingPathComponent:relativeSubpath];

  return v6;
}

+ (id)subpathFromURL:(id)l item:(id)item
{
  lCopy = l;
  v5 = [WFFileStorageUtilities documentsDirectoryWithError:0];
  v6 = [lCopy wf_relativePathFromURL:v5];

  return v6;
}

+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items
{
  lCopy = l;
  v6 = [WFFileStorageUtilities documentsDirectoryWithError:0];
  v7 = [lCopy wf_relationshipToDirectoryAtURL:v6];

  return v7 < 2;
}

+ (id)locationAtRootDirectory
{
  v2 = [(WFFileLocation *)[WFShortcutsFileLocation alloc] initWithRelativeSubpath:&stru_1F4A1C408];

  return v2;
}

@end