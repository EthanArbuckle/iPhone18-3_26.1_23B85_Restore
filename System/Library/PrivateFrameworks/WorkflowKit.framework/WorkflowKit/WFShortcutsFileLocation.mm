@interface WFShortcutsFileLocation
+ (BOOL)canRepresentURL:(id)a3 item:(id)a4 parentItems:(id)a5;
+ (id)locationAtRootDirectory;
+ (id)subpathFromURL:(id)a3 item:(id)a4;
- (id)resolveLocationWithError:(id *)a3;
@end

@implementation WFShortcutsFileLocation

- (id)resolveLocationWithError:(id *)a3
{
  v4 = [WFFileStorageUtilities documentsDirectoryWithError:0];
  v5 = [(WFFileLocation *)self relativeSubpath];
  v6 = [v4 URLByAppendingPathComponent:v5];

  return v6;
}

+ (id)subpathFromURL:(id)a3 item:(id)a4
{
  v4 = a3;
  v5 = [WFFileStorageUtilities documentsDirectoryWithError:0];
  v6 = [v4 wf_relativePathFromURL:v5];

  return v6;
}

+ (BOOL)canRepresentURL:(id)a3 item:(id)a4 parentItems:(id)a5
{
  v5 = a3;
  v6 = [WFFileStorageUtilities documentsDirectoryWithError:0];
  v7 = [v5 wf_relationshipToDirectoryAtURL:v6];

  return v7 < 2;
}

+ (id)locationAtRootDirectory
{
  v2 = [(WFFileLocation *)[WFShortcutsFileLocation alloc] initWithRelativeSubpath:&stru_1F4A1C408];

  return v2;
}

@end