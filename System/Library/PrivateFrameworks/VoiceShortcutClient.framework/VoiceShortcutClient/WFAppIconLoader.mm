@interface WFAppIconLoader
+ (void)loadIconWithBundleIdentifier:(id)a3 desiredSize:(CGSize)a4 completionHandler:(id)a5;
@end

@implementation WFAppIconLoader

+ (void)loadIconWithBundleIdentifier:(id)a3 desiredSize:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E695DFF8] URLWithString:@"https://itunes.apple.com/"];
  v11 = [MEMORY[0x1E696AF20] componentsWithURL:v10 resolvingAgainstBaseURL:0];
  [v11 setPath:@"/lookup"];
  v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"bundleId" value:v8];
  v28[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v11 setQueryItems:v13];

  v14 = [MEMORY[0x1E696AF78] wf_sharedSession];
  v15 = [v11 URL];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __78__WFAppIconLoader_loadIconWithBundleIdentifier_desiredSize_completionHandler___block_invoke;
  v23 = &unk_1E7B00418;
  v24 = v8;
  v25 = v9;
  v26 = width;
  v27 = height;
  v16 = v9;
  v17 = v8;
  v18 = [v14 dataTaskWithURL:v15 completionHandler:&v20];
  [v18 resume];

  v19 = *MEMORY[0x1E69E9840];
}

void __78__WFAppIconLoader_loadIconWithBundleIdentifier_desiredSize_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 length])
  {
    v39 = v9;
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v39];
    v33 = v39;

    v11 = [v10 objectForKeyedSubscript:@"results"];
    v12 = [v11 firstObject];

    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v31 = [v12 objectForKeyedSubscript:@"artworkUrl60"];
      v30 = [v12 objectForKeyedSubscript:@"artworkUrl100"];
      v13 = [v12 objectForKeyedSubscript:@"artworkUrl512"];
      v32 = v13;
      v14 = *(a1 + 48);
      v15 = v30;
      if (v14 > 100.0)
      {
        v15 = v13;
      }

      if (v14 <= 60.0)
      {
        v15 = v31;
      }

      v29 = v15;
      v16 = [MEMORY[0x1E695DFF8] URLWithString:?];
      v45[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
      v18 = [v16 lastPathComponent];
      v19 = [WFFileType typeFromFilename:v18];
      v20 = [v19 conformsToUTType:*MEMORY[0x1E6982E58]];

      if (v20)
      {
        v21 = [v16 URLByDeletingPathExtension];
        v22 = [v21 URLByAppendingPathExtension:@"png"];

        v44[0] = v22;
        v44[1] = v16;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];

        v17 = v23;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v41 = __Block_byref_object_copy__2791;
      v42 = __Block_byref_object_dispose__2792;
      v43 = 0;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __78__WFAppIconLoader_loadIconWithBundleIdentifier_desiredSize_completionHandler___block_invoke_80;
      v38[3] = &unk_1E7B003C8;
      v38[4] = buf;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __78__WFAppIconLoader_loadIconWithBundleIdentifier_desiredSize_completionHandler___block_invoke_3;
      v34[3] = &unk_1E7B003F0;
      v37 = buf;
      v35 = *(a1 + 32);
      v36 = *(a1 + 40);
      [v17 if_enumerateAsynchronouslyInSequence:v38 completionHandler:v34];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v24 = getWFInterchangeLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        *buf = 136315650;
        *&buf[4] = "+[WFAppIconLoader loadIconWithBundleIdentifier:desiredSize:completionHandler:]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v25;
        *&buf[22] = 2114;
        v41 = v33;
        _os_log_impl(&dword_1B1DE3000, v24, OS_LOG_TYPE_ERROR, "%s Failed to fetch icon for %{public}@, %{public}@", buf, 0x20u);
      }

      (*(*(a1 + 40) + 16))();
    }

    v9 = v33;
  }

  else
  {
    v26 = getWFInterchangeLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "+[WFAppIconLoader loadIconWithBundleIdentifier:desiredSize:completionHandler:]_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v27;
      *&buf[22] = 2114;
      v41 = v9;
      _os_log_impl(&dword_1B1DE3000, v26, OS_LOG_TYPE_ERROR, "%s Failed to fetch icon for %{public}@, %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __78__WFAppIconLoader_loadIconWithBundleIdentifier_desiredSize_completionHandler___block_invoke_80(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = MEMORY[0x1E696AF78];
  v10 = a2;
  v11 = [v9 wf_sharedSession];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__WFAppIconLoader_loadIconWithBundleIdentifier_desiredSize_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7B003A0;
  v12 = *(a1 + 32);
  v16 = v8;
  v17 = v12;
  v18 = a5;
  v13 = v8;
  v14 = [v11 dataTaskWithURL:v10 completionHandler:v15];

  [v14 resume];
}

void __78__WFAppIconLoader_loadIconWithBundleIdentifier_desiredSize_completionHandler___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(*(a1[6] + 8) + 40);
  if (v5)
  {
    v6 = [WFImage imageWithData:v5 scale:0 allowAnimated:1.0];
    (*(a1[5] + 16))();
  }

  else
  {
    v7 = getWFInterchangeLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v10 = 136315650;
      v11 = "+[WFAppIconLoader loadIconWithBundleIdentifier:desiredSize:completionHandler:]_block_invoke_3";
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_1B1DE3000, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch icon for %{public}@, %{public}@", &v10, 0x20u);
    }

    (*(a1[5] + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __78__WFAppIconLoader_loadIconWithBundleIdentifier_desiredSize_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v8 = a4;
  v9 = MEMORY[0x1E696AC90];
  v10 = a3;
  v11 = [v9 indexSetWithIndexesInRange:{200, 100}];
  v12 = [v10 statusCode];

  LODWORD(v10) = [v11 containsIndex:v12];
  if (v10)
  {
    **(a1 + 48) = 1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  (*(*(a1 + 32) + 16))();
}

@end