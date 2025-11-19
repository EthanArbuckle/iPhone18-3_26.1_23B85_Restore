@interface WFFileLocationUtilities
+ (BOOL)isFileURL:(id)a3 withParentItems:(id)a4 insideFolderType:(unint64_t)a5;
+ (id)bundleIdentifierForItem:(id)a3;
+ (id)cloudDocsURL;
+ (id)desktopDirectory;
+ (id)documentsDirectory;
+ (id)documentsURLForApplicationContainerBundleID:(id)a3;
+ (id)downloadsDirectory;
+ (id)fetchRootItemURLForDomainWithID:(id)a3;
+ (id)iCloudDesktopDirectory;
+ (id)iCloudDocumentsDirectory;
+ (id)iCloudDownloadsDirectory;
+ (id)itemForURL:(id)a3 error:(id *)a4;
+ (id)mobileDocumentsDirectory;
+ (id)parentItemsForItem:(id)a3;
+ (id)rootItemForItem:(id)a3;
+ (void)fetchItemWithIdentifier:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation WFFileLocationUtilities

+ (BOOL)isFileURL:(id)a3 withParentItems:(id)a4 insideFolderType:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 2;
  if (a5 == 1)
  {
    v10 = 3;
  }

  if (a5 == 2)
  {
    v10 = 4;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__WFFileLocationUtilities_isFileURL_withParentItems_insideFolderType___block_invoke;
  v13[3] = &unk_1E8374690;
  v13[4] = &v14;
  v13[5] = v10;
  [v8 enumerateObjectsUsingBlock:v13];
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v11;
}

uint64_t __70__WFFileLocationUtilities_isFileURL_withParentItems_insideFolderType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 folderType];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (id)mobileDocumentsDirectory
{
  v2 = [a1 cloudDocsURL];
  if ([v2 wf_fileExists])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (id)iCloudDownloadsDirectory
{
  v2 = [a1 cloudDocsURL];
  v3 = [v2 URLByAppendingPathComponent:@"com~apple~CloudDocs/Downloads/"];

  if ([v3 wf_fileExists])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)downloadsDirectory
{
  v2 = [a1 iCloudDownloadsDirectory];
  if ([v2 wf_fileExists])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (id)iCloudDocumentsDirectory
{
  v2 = [a1 cloudDocsURL];
  v3 = [v2 URLByAppendingPathComponent:@"com~apple~CloudDocs/Documents/"];

  if ([v3 wf_fileExists])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)documentsDirectory
{
  v2 = [a1 iCloudDocumentsDirectory];
  if ([v2 wf_fileExists])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (id)iCloudDesktopDirectory
{
  v2 = [a1 cloudDocsURL];
  v3 = [v2 URLByAppendingPathComponent:@"com~apple~CloudDocs/Desktop/"];

  if ([v3 wf_fileExists])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)desktopDirectory
{
  v2 = [a1 iCloudDesktopDirectory];
  if ([v2 wf_fileExists])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (id)cloudDocsURL
{
  v10 = *MEMORY[0x1E69E9840];
  if (cloudDocsURL_onceToken != -1)
  {
    dispatch_once(&cloudDocsURL_onceToken, &__block_literal_global_6330);
  }

  v2 = getWFFilesLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "+[WFFileLocationUtilities cloudDocsURL]";
    v8 = 2112;
    v9 = cloudDocsURL_URL;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_DEBUG, "%s Got cloud docs url %@", &v6, 0x16u);
  }

  v3 = cloudDocsURL_URL;
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void __39__WFFileLocationUtilities_cloudDocsURL__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = getWFFilesLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "+[WFFileLocationUtilities cloudDocsURL]_block_invoke_2";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Could not get url with error: %@", &v9, 0x16u);
    }
  }

  v7 = cloudDocsURL_URL;
  cloudDocsURL_URL = v4;

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)documentsURLForApplicationContainerBundleID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69635F8];
  v4 = a3;
  v11 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v11];

  v6 = v11;
  if (v5)
  {
    v7 = [v5 dataContainerURL];
    v8 = [v7 URLByAppendingPathComponent:@"Documents"];
  }

  else
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "+[WFFileLocationUtilities documentsURLForApplicationContainerBundleID:]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not get application record with error: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)bundleIdentifierForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 fp_appContainerBundleIdentifier];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 fp_appContainerBundleIdentifier];
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__6342;
    v14 = __Block_byref_object_dispose__6343;
    v15 = 0;
    v7 = [WFFileLocationUtilities parentItemsForItem:v3];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__WFFileLocationUtilities_bundleIdentifierForItem___block_invoke;
    v9[3] = &unk_1E8374648;
    v9[4] = &v10;
    [v7 enumerateObjectsUsingBlock:v9];
    v6 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return v6;
}

void __51__WFFileLocationUtilities_bundleIdentifierForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 fp_appContainerBundleIdentifier];

  if (v6)
  {
    v7 = [v10 fp_appContainerBundleIdentifier];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

+ (id)itemForURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E69673B0];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = [v7 itemForURL:v6 error:a4];

  return v8;
}

+ (id)rootItemForItem:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0;
  v4 = [MEMORY[0x1E69673E8] providerDomainForItem:v3 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__6342;
    v18 = __Block_byref_object_dispose__6343;
    v19 = 0;
    v7 = [MEMORY[0x1E69673B0] defaultManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__WFFileLocationUtilities_rootItemForItem___block_invoke;
    v12[3] = &unk_1E8379CE8;
    v14 = buf;
    v8 = v6;
    v13 = v8;
    [v7 fetchRootItemForProviderDomain:v4 completionHandler:v12];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v9 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = getWFFilesLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[WFFileLocationUtilities rootItemForItem:]";
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Could not get domain with error: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __43__WFFileLocationUtilities_rootItemForItem___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)parentItemsForItem:(id)a3
{
  v3 = a3;
  v4 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6342;
  v17 = __Block_byref_object_dispose__6343;
  v18 = 0;
  v5 = [MEMORY[0x1E69673B0] defaultManager];
  v6 = [v3 itemID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__WFFileLocationUtilities_parentItemsForItem___block_invoke;
  v10[3] = &unk_1E8374620;
  v12 = &v13;
  v7 = v4;
  v11 = v7;
  [v5 fetchParentsForItemID:v6 recursively:1 completionHandler:v10];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__WFFileLocationUtilities_parentItemsForItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "+[WFFileLocationUtilities parentItemsForItem:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not fetch parent items due to error: %@", &v12, 0x16u);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
  v11 = *MEMORY[0x1E69E9840];
}

+ (id)fetchRootItemURLForDomainWithID:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__6342;
    v24 = __Block_byref_object_dispose__6343;
    v25 = 0;
    v19 = 0;
    v5 = [MEMORY[0x1E69673E8] providerDomainWithID:v3 error:&v19];
    v6 = v19;
    if (v5)
    {
      v7 = [MEMORY[0x1E69673B0] defaultManager];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59__WFFileLocationUtilities_fetchRootItemURLForDomainWithID___block_invoke;
      v15[3] = &unk_1E83745F8;
      v16 = v5;
      v18 = &v20;
      v8 = v4;
      v17 = v8;
      [v7 fetchRootItemForProviderDomain:v16 completionHandler:v15];

      v9 = dispatch_time(0, 3000000000);
      dispatch_semaphore_wait(v8, v9);
      v10 = v21[5];
      if (v10)
      {
        v11 = v10;
      }

      v12 = v16;
    }

    else
    {
      v12 = getWFFilesLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v27 = "+[WFFileLocationUtilities fetchRootItemURLForDomainWithID:]";
        v28 = 2112;
        v29 = v3;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Could not fetch provider domain: %@ with error: %@", buf, 0x20u);
      }

      v10 = 0;
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

void __59__WFFileLocationUtilities_fetchRootItemURLForDomainWithID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v13 = 136315650;
      v14 = "+[WFFileLocationUtilities fetchRootItemURLForDomainWithID:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not fetch root item for providerDomain: %@ error: %@", &v13, 0x20u);
    }
  }

  v9 = [v5 fileURL];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 40));
  v12 = *MEMORY[0x1E69E9840];
}

+ (void)fetchItemWithIdentifier:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  if (v16)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"WFFileLocationUtilities.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"domainIdentifier"}];

    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:a1 file:@"WFFileLocationUtilities.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifier"}];

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_9:
  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"WFFileLocationUtilities.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v11 = [objc_alloc(MEMORY[0x1E69673A0]) initWithProviderDomainID:v9 itemIdentifier:v16];
  v12 = [MEMORY[0x1E69673B0] defaultManager];
  [v12 fetchItemForItemID:v11 completionHandler:v10];
}

@end