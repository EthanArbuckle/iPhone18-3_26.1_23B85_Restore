@interface WFiCloudFileLocation
+ (BOOL)canRepresentURL:(id)a3 item:(id)a4 parentItems:(id)a5;
+ (id)resolveLocationFromPossibleProviderDomainIDsWithSerializedProviderDomainID:(id)a3 relativeSubpath:(id)a4;
+ (id)subpathFromURL:(id)a3;
- (id)resolveLocationWithError:(id *)a3;
@end

@implementation WFiCloudFileLocation

+ (id)resolveLocationFromPossibleProviderDomainIDsWithSerializedProviderDomainID:(id)a3 relativeSubpath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E6997100];
  v8 = v5;
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
      v18 = [v16 URLByAppendingPathComponent:v6];
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
      v18 = [v30 URLByAppendingPathComponent:v6];
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
      v18 = [v19 URLByAppendingPathComponent:v6];
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

+ (id)subpathFromURL:(id)a3
{
  v3 = a3;
  v4 = +[WFFileLocationUtilities mobileDocumentsDirectory];
  v5 = [v3 wf_relativePathFromURL:v4];

  return v5;
}

+ (BOOL)canRepresentURL:(id)a3 item:(id)a4 parentItems:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = getWFFilesLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 providerDomainID];
    v8 = [v5 providerID];
    v16 = 136315650;
    v17 = "+[WFiCloudFileLocation canRepresentURL:item:parentItems:]";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Evaluating item with provider domain id: %@ && provider id %@", &v16, 0x20u);
  }

  v9 = WFPossibleMobileDocumentsFileProviderDomainIDs();
  v10 = [v5 providerDomainID];
  if ([v9 containsObject:v10])
  {
    v11 = 1;
  }

  else
  {
    v12 = WFPossibleMobileDocumentsFileProviderDomainIDs();
    v13 = [v5 providerID];
    v11 = [v12 containsObject:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)resolveLocationWithError:(id *)a3
{
  v4 = [(WFFileProviderLocation *)self resolveCrossDeviceItemIDWithError:a3];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = +[WFFileLocationUtilities mobileDocumentsDirectory];
    v7 = [(WFFileLocation *)self relativeSubpath];
    v5 = [v6 URLByAppendingPathComponent:v7];

    if (!v5)
    {
      v8 = objc_opt_class();
      v9 = [(WFFileProviderLocation *)self fileProviderDomainID];
      v10 = [(WFFileLocation *)self relativeSubpath];
      v5 = [v8 resolveLocationFromPossibleProviderDomainIDsWithSerializedProviderDomainID:v9 relativeSubpath:v10];
    }
  }

  return v5;
}

@end