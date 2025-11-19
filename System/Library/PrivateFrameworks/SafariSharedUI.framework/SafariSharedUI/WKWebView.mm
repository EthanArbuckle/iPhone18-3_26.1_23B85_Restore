@interface WKWebView
@end

@implementation WKWebView

void __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_cold_1();
    }

    v5 = *(*(a1 + 64) + 16);
  }

  else
  {
    if ((*(a1 + 72) & 2) != 0)
    {
      v6 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_10;
      v13[3] = &unk_1E8282D50;
      v16 = *(a1 + 64);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v12 = *(a1 + 32);
      v9 = *(a1 + 56);
      *&v10 = v12;
      *(&v10 + 1) = v9;
      *&v11 = v7;
      *(&v11 + 1) = v8;
      v14 = v11;
      v15 = v10;
      v17 = *(a1 + 80);
      [v6 takeSnapshotWithConfiguration:0 completionHandler:v13];

      goto LABEL_8;
    }

    v5 = *(*(a1 + 64) + 16);
  }

  v5();
LABEL_8:
}

void __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_10(uint64_t a1, UIImage *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_10_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v8 = UIImagePNGRepresentation(a2);
    v9 = [*(a1 + 32) URLByAppendingPathComponent:@"capture.png"];
    v23 = 0;
    v10 = [v8 writeToURL:v9 options:0 error:&v23];
    v6 = v23;

    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E69C8F90]);
      [v11 setUrl:*(a1 + 40)];
      v12 = [*(a1 + 48) title];
      [v11 setPageTitle:v12];

      v13 = [*(a1 + 48) _userAgent];
      [v11 setUserAgent:v13];

      [*(a1 + 48) safari_visibleBounds];
      [v11 setViewportSize:{v14, v15}];
      [v11 setIndexFileName:*(a1 + 56)];
      [v11 setScreenCaptureFileName:@"capture.png"];
      [v11 setCollectionMethod:*(a1 + 72)];
      v16 = [*(a1 + 32) URLByAppendingPathComponent:@"safari_collection_metadata.json"];
      v22 = v6;
      v17 = [v11 writeMetadataJSONToURL:v16 error:&v22];
      v18 = v22;

      if (v17)
      {
        v19 = *(*(a1 + 64) + 16);
      }

      else
      {
        v21 = WBS_LOG_CHANNEL_PREFIXDownloads();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_10_cold_3();
        }

        v19 = *(*(a1 + 64) + 16);
      }

      v19();

      v6 = v18;
    }

    else
    {
      v20 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __122__WKWebView_WBSWKWebViewExtras__safari_saveWebpageCompleteToURL_withCollectionMethod_collectionOptions_completionHandler___block_invoke_10_cold_2();
      }

      (*(*(a1 + 64) + 16))();
    }
  }
}

void __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithObject:a2];
    v4 = v3;
    while ([v3 count])
    {
      v5 = [v4 firstObject];
      v6 = [v5 info];
      v7 = [v6 _handle];
      v8 = [v7 isEqual:*(a1 + 40)];

      if (v8)
      {
        (*(*(a1 + 48) + 16))();

        goto LABEL_13;
      }

      [v4 removeObjectAtIndex:0];
      v9 = [v5 childFrames];
      [v4 addObjectsFromArray:v9];

      v3 = v4;
    }

    v10 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
LABEL_13:
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __91__WKWebView_WBSWKWebViewExtras__safari_enumerateAllFramesAsynchronously_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithObject:a2];
    v4 = v3;
    while ([v3 count])
    {
      v5 = [v4 firstObject];
      v6 = [v5 info];
      (*(*(a1 + 48) + 16))();
      [v4 removeObjectAtIndex:0];
      v7 = [v5 childFrames];
      [v4 addObjectsFromArray:v7];

      v3 = v4;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __57__WKWebView_WBSWKWebViewExtras__safari_getAllFrameInfos___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:v3];
    v6 = v5;
    while ([v5 count])
    {
      v7 = [v6 firstObject];
      v8 = [v7 info];
      [v4 addObject:v8];

      [v6 removeObjectAtIndex:0];
      v9 = [v7 childFrames];
      [v6 addObjectsFromArray:v9];

      v5 = v6;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __57__WKWebView_WBSWKWebViewExtras__safari_getAllFrameInfos___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __89__WKWebView_WBSWKWebViewExtras__safari_getFrameInfoForFrameWithHandle_completionHandler___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1C6968000, v1, OS_LOG_TYPE_ERROR, "Couldn't find frameInfo for frameHandle %@ in %@", v2, 0x16u);
}

@end