@interface WFiCloudFileLocation
+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items;
+ (id)resolveLocationFromPossibleProviderDomainIDsWithSerializedProviderDomainID:(id)d relativeSubpath:(id)subpath;
+ (id)subpathFromURL:(id)l;
- (id)resolveLocationWithError:(id *)error;
@end

@implementation WFiCloudFileLocation

+ (id)resolveLocationFromPossibleProviderDomainIDsWithSerializedProviderDomainID:(id)d relativeSubpath:(id)subpath
{
  dCopy = d;
  subpathCopy = subpath;
  v7 = *MEMORY[0x1E6997100];
  v8 = dCopy;
  v9 = v8;
  v10 = MEMORY[0x1E69970F8];
  if (v7 == v8)
  {
    goto LABEL_12;
  }

  if (v8 && v7)
  {
    v11 = [v8 isEqualToString:v7];

    if (v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v12 = *v10;
  v13 = v9;
  if (v12 == v13)
  {
LABEL_12:

    goto LABEL_13;
  }

  v14 = v13;
  if (v9 && v12)
  {
    v15 = [v13 isEqualToString:v12];

    if ((v15 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_13:
    v16 = [WFFileLocationUtilities fetchRootItemURLForDomainWithID:v7];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 URLByAppendingPathComponent:subpathCopy];
      if ([v18 wf_fileExists])
      {
LABEL_15:
        v19 = v17;
LABEL_22:

        goto LABEL_23;
      }
    }

    v20 = *v10;
    goto LABEL_18;
  }

LABEL_27:
  v22 = *MEMORY[0x1E6997108];
  v23 = v14;
  v24 = v23;
  v25 = MEMORY[0x1E6997110];
  if (v22 == v23)
  {
    goto LABEL_38;
  }

  if (v9 && v22)
  {
    v26 = [v23 isEqualToString:v22];

    if (v26)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v27 = *v25;
  v28 = v24;
  if (v27 == v28)
  {
LABEL_38:

LABEL_39:
    v30 = [WFFileLocationUtilities fetchRootItemURLForDomainWithID:v22];
    v17 = v30;
    if (v30)
    {
      v18 = [v30 URLByAppendingPathComponent:subpathCopy];
      if ([v18 wf_fileExists])
      {
        goto LABEL_15;
      }
    }

    v20 = *v25;
LABEL_18:
    v19 = [WFFileLocationUtilities fetchRootItemURLForDomainWithID:v20];

    if (v19)
    {
      v18 = [v19 URLByAppendingPathComponent:subpathCopy];
      if ([v18 wf_fileExists])
      {
        goto LABEL_22;
      }
    }

    v18 = 0;
    goto LABEL_22;
  }

  v19 = v28;
  v18 = 0;
  if (!v9 || !v27)
  {
    goto LABEL_22;
  }

  v29 = [v28 isEqualToString:v27];

  if (v29)
  {
    goto LABEL_39;
  }

  v18 = 0;
LABEL_23:

  return v18;
}

+ (id)subpathFromURL:(id)l
{
  lCopy = l;
  v4 = +[WFFileLocationUtilities mobileDocumentsDirectory];
  v5 = [lCopy wf_relativePathFromURL:v4];

  return v5;
}

+ (BOOL)canRepresentURL:(id)l item:(id)item parentItems:(id)items
{
  v22 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = getWFFilesLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    providerDomainID = [itemCopy providerDomainID];
    providerID = [itemCopy providerID];
    v16 = 136315650;
    v17 = "+[WFiCloudFileLocation canRepresentURL:item:parentItems:]";
    v18 = 2112;
    v19 = providerDomainID;
    v20 = 2112;
    v21 = providerID;
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Evaluating item with provider domain id: %@ && provider id %@", &v16, 0x20u);
  }

  v9 = WFPossibleMobileDocumentsFileProviderDomainIDs();
  providerDomainID2 = [itemCopy providerDomainID];
  if ([v9 containsObject:providerDomainID2])
  {
    v11 = 1;
  }

  else
  {
    v12 = WFPossibleMobileDocumentsFileProviderDomainIDs();
    providerID2 = [itemCopy providerID];
    v11 = [v12 containsObject:providerID2];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)resolveLocationWithError:(id *)error
{
  v4 = [(WFFileProviderLocation *)self resolveCrossDeviceItemIDWithError:error];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = +[WFFileLocationUtilities mobileDocumentsDirectory];
    relativeSubpath = [(WFFileLocation *)self relativeSubpath];
    v5 = [v6 URLByAppendingPathComponent:relativeSubpath];

    if (!v5)
    {
      v8 = objc_opt_class();
      fileProviderDomainID = [(WFFileProviderLocation *)self fileProviderDomainID];
      relativeSubpath2 = [(WFFileLocation *)self relativeSubpath];
      v5 = [v8 resolveLocationFromPossibleProviderDomainIDsWithSerializedProviderDomainID:fileProviderDomainID relativeSubpath:relativeSubpath2];
    }
  }

  return v5;
}

@end