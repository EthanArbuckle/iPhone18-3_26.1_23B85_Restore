@interface VKCaptureTextFeedbackAssetProvider
- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)a3 error:(id *)a4;
- (VKCaptureTextFeedbackAssetProvider)initWithRequest:(id)a3 detectionResult:(id)a4;
@end

@implementation VKCaptureTextFeedbackAssetProvider

- (VKCaptureTextFeedbackAssetProvider)initWithRequest:(id)a3 detectionResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VKCaptureTextFeedbackAssetProvider;
  v9 = [(VKCaptureTextFeedbackAssetProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_detectionResult, a4);
  }

  return v10;
}

- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(VKCaptureTextFeedbackAssetProvider *)self request];
  if ([v7 saveAssetsToFeedbackAttachmentsFolder:v6 error:a4])
  {
    v8 = [v7 image];
    [v8 size];
    UIGraphicsBeginImageContext(v46);
    [v8 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v9 = [(VKCaptureTextFeedbackAssetProvider *)self detectionResult];
    v10 = [MEMORY[0x1E69DC888] magentaColor];
    [v10 setStroke];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = [v9 lineQuads];
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v39 + 1) + 8 * i) path];
          [v16 stroke];
        }

        v13 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v13);
    }

    v17 = [MEMORY[0x1E69DC888] redColor];
    [v17 setStroke];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = [v9 blockQuads];
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v35 + 1) + 8 * j) path];
          [v23 stroke];
        }

        v20 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v20);
    }

    v24 = [MEMORY[0x1E69DC888] blueColor];
    [v24 setStroke];

    v25 = [v9 boundingQuad];
    v26 = [v25 path];
    [v26 stroke];

    v27 = [MEMORY[0x1E69DC888] yellowColor];
    [v27 setStroke];

    v28 = [v7 focusQuad];
    v29 = [v28 path];
    [v29 stroke];

    v30 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v31 = [v30 vk_PNGData];
    v32 = [v6 URLByAppendingPathComponent:@"RequestAssetAnnotated.png"];
    v33 = [v31 writeToURL:v32 options:2 error:a4];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

@end