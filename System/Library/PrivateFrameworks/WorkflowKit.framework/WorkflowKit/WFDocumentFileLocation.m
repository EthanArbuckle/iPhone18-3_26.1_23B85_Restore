@interface WFDocumentFileLocation
+ (BOOL)canRepresentURL:(id)a3 item:(id)a4 parentItems:(id)a5;
+ (id)subpathFromURL:(id)a3 item:(id)a4;
- (BOOL)shouldShowUsersDuringDisplay:(id)a3;
- (id)resolveLocationWithError:(id *)a3;
@end

@implementation WFDocumentFileLocation

+ (id)subpathFromURL:(id)a3 item:(id)a4
{
  v4 = a3;
  v5 = +[WFFileLocationUtilities documentsDirectory];
  v6 = [v4 wf_relativePathFromURL:v5];

  return v6;
}

+ (BOOL)canRepresentURL:(id)a3 item:(id)a4 parentItems:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v16 = a4;
    v7 = MEMORY[0x1E695DEC8];
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [v7 arrayWithObjects:&v16 count:1];
    v12 = [v11 arrayByAddingObjectsFromArray:{v8, v16, v17}];

    v13 = [WFFileLocationUtilities isFileURL:v10 withParentItems:v12 insideFolderType:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)shouldShowUsersDuringDisplay:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 isUbiquitousItemAtURL:v4];

  return v6 ^ 1;
}

- (id)resolveLocationWithError:(id *)a3
{
  v4 = [(WFFileProviderLocation *)self resolveCrossDeviceItemIDWithError:a3];
  if ([v4 wf_fileExists])
  {
    v5 = v4;
  }

  else
  {
    v6 = +[WFFileLocationUtilities documentsDirectory];
    v7 = [(WFFileLocation *)self relativeSubpath];
    v8 = [v6 URLByAppendingPathComponent:v7];

    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v9 = [(WFFileProviderLocation *)self fileProviderDomainID];
      v10 = [(WFFileLocation *)self relativeSubpath];
      v5 = [WFiCloudFileLocation resolveLocationFromPossibleProviderDomainIDsWithSerializedProviderDomainID:v9 relativeSubpath:v10];
    }
  }

  return v5;
}

@end