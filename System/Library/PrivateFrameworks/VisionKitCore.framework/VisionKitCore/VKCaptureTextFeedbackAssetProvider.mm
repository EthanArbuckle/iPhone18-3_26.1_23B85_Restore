@interface VKCaptureTextFeedbackAssetProvider
- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)folder error:(id *)error;
- (VKCaptureTextFeedbackAssetProvider)initWithRequest:(id)request detectionResult:(id)result;
@end

@implementation VKCaptureTextFeedbackAssetProvider

- (VKCaptureTextFeedbackAssetProvider)initWithRequest:(id)request detectionResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = VKCaptureTextFeedbackAssetProvider;
  v9 = [(VKCaptureTextFeedbackAssetProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_detectionResult, result);
  }

  return v10;
}

- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)folder error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  request = [(VKCaptureTextFeedbackAssetProvider *)self request];
  if ([request saveAssetsToFeedbackAttachmentsFolder:folderCopy error:error])
  {
    image = [request image];
    [image size];
    UIGraphicsBeginImageContext(v46);
    [image drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    detectionResult = [(VKCaptureTextFeedbackAssetProvider *)self detectionResult];
    magentaColor = [MEMORY[0x1E69DC888] magentaColor];
    [magentaColor setStroke];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    lineQuads = [detectionResult lineQuads];
    v12 = [lineQuads countByEnumeratingWithState:&v39 objects:v44 count:16];
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
            objc_enumerationMutation(lineQuads);
          }

          path = [*(*(&v39 + 1) + 8 * i) path];
          [path stroke];
        }

        v13 = [lineQuads countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v13);
    }

    redColor = [MEMORY[0x1E69DC888] redColor];
    [redColor setStroke];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    blockQuads = [detectionResult blockQuads];
    v19 = [blockQuads countByEnumeratingWithState:&v35 objects:v43 count:16];
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
            objc_enumerationMutation(blockQuads);
          }

          path2 = [*(*(&v35 + 1) + 8 * j) path];
          [path2 stroke];
        }

        v20 = [blockQuads countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v20);
    }

    blueColor = [MEMORY[0x1E69DC888] blueColor];
    [blueColor setStroke];

    boundingQuad = [detectionResult boundingQuad];
    path3 = [boundingQuad path];
    [path3 stroke];

    yellowColor = [MEMORY[0x1E69DC888] yellowColor];
    [yellowColor setStroke];

    focusQuad = [request focusQuad];
    path4 = [focusQuad path];
    [path4 stroke];

    v30 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    vk_PNGData = [v30 vk_PNGData];
    v32 = [folderCopy URLByAppendingPathComponent:@"RequestAssetAnnotated.png"];
    v33 = [vk_PNGData writeToURL:v32 options:2 error:error];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

@end