@interface VKFeedbackProvider
- (UIViewController)presentingViewController;
- (VKCImageAnalysis)imageAnalysis;
- (VKCImageAnalyzerRequest)request;
- (VKFeedbackProvider)init;
- (id)_jsonRepresentationForAttributesDictionary:(id)dictionary;
- (void)_captureScreenshots;
- (void)_saveFeedbackAttributesJSON:(id)n;
- (void)_saveImage:(id)image withName:(id)name;
- (void)_saveScreenshots;
- (void)feedbackProviderViewController:(id)controller submitWithOptions:(unint64_t)options attachments:(id)attachments;
- (void)feedbackProviderViewControllerDidCancel:(id)cancel;
- (void)provideFeedbackWithType:(unint64_t)type options:(unint64_t)options metadata:(id)metadata promisedAttachments:(id)attachments userResponseHandler:(id)handler;
@end

@implementation VKFeedbackProvider

- (VKFeedbackProvider)init
{
  v18.receiver = self;
  v18.super_class = VKFeedbackProvider;
  v2 = [(VKFeedbackProvider *)&v18 init];
  if (v2)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    temporaryDirectory = [defaultManager temporaryDirectory];
    v5 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v8 = [v5 stringWithFormat:@"feedbackAttachments-%@", uUIDString];

    v9 = [temporaryDirectory URLByAppendingPathComponent:v8 isDirectory:1];
    attachmentsFolderURL = v2->_attachmentsFolderURL;
    v2->_attachmentsFolderURL = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    screenshots = v2->_screenshots;
    v2->_screenshots = v11;

    v13 = [[VKFeedbackAttachment alloc] initWithFileName:@"RequestAsset.png" label:@"Request Asset" isOptional:0];
    requestAssetAttachment = v2->_requestAssetAttachment;
    v2->_requestAssetAttachment = v13;

    v15 = [[VKFeedbackAttachment alloc] initWithFileName:@"archive.vkimageanalysis" label:@"Analysis Results" isOptional:0];
    analysisArchiveAttachment = v2->_analysisArchiveAttachment;
    v2->_analysisArchiveAttachment = v15;
  }

  return v2;
}

- (void)provideFeedbackWithType:(unint64_t)type options:(unint64_t)options metadata:(id)metadata promisedAttachments:(id)attachments userResponseHandler:(id)handler
{
  metadataCopy = metadata;
  attachmentsCopy = attachments;
  handlerCopy = handler;
  if (options)
  {
    [(VKFeedbackProvider *)self _captureScreenshots];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtURL:self->_attachmentsFolderURL error:0];

  self->_type = type;
  objc_storeStrong(&self->_metadata, metadata);
  v16 = _Block_copy(handlerCopy);
  userResponseHandler = self->_userResponseHandler;
  self->_userResponseHandler = v16;

  if (!attachmentsCopy)
  {
    attachmentsCopy = MEMORY[0x1E695E0F0];
  }

  assetsProvider = [(VKFeedbackProvider *)self assetsProvider];

  if (assetsProvider)
  {
    v19 = [attachmentsCopy arrayByAddingObject:self->_requestAssetAttachment];

    attachmentsCopy = v19;
  }

  imageAnalysis = [(VKFeedbackProvider *)self imageAnalysis];

  if (imageAnalysis)
  {
    v21 = [attachmentsCopy arrayByAddingObject:self->_analysisArchiveAttachment];

    attachmentsCopy = v21;
  }

  v22 = [[VKFeedbackProviderViewController alloc] initWithOptions:options attachments:attachmentsCopy];
  [(VKFeedbackProviderViewController *)v22 setDelegate:self];
  [(VKFeedbackProviderViewController *)v22 present];
}

- (void)feedbackProviderViewControllerDidCancel:(id)cancel
{
  (*(self->_userResponseHandler + 2))();
  userResponseHandler = self->_userResponseHandler;
  self->_userResponseHandler = 0;

  [(NSMutableArray *)self->_screenshots removeAllObjects];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtURL:self->_attachmentsFolderURL error:0];
}

- (void)feedbackProviderViewController:(id)controller submitWithOptions:(unint64_t)options attachments:(id)attachments
{
  attachmentsCopy = attachments;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)self->_attachmentsFolderURL path];
  v10 = [defaultManager fileExistsAtPath:path];

  if ((v10 & 1) != 0 || (attachmentsFolderURL = self->_attachmentsFolderURL, v74[0] = 0, [defaultManager createDirectoryAtURL:attachmentsFolderURL withIntermediateDirectories:1 attributes:0 error:v74], (v12 = v74[0]) == 0))
  {
    v16 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"ComponentName"];
    v17 = v16;
    v18 = @"SIML Field Feedback Secured Data";
    if (v16)
    {
      v18 = v16;
    }

    v61 = v18;

    v19 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"ComponentVersion"];
    v20 = v19;
    v21 = @"Scarlett";
    if (v19)
    {
      v21 = v19;
    }

    v57 = v21;

    v22 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"ComponentID"];
    v23 = v22;
    v24 = @"1179176";
    if (v22)
    {
      v24 = v22;
    }

    v55 = v24;

    type = self->_type;
    v60 = defaultManager;
    if (type > 3)
    {
      v26 = 0;
    }

    else
    {
      v26 = off_1E7BE6758[type];
    }

    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Scarlett] %@ feedback", v26];
    v27 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v27 appendString:{@"Please describe which visual intelligence feature you were trying \n <text selection/OCR, data detectors, MRC codes, visual search>"}];
    [v27 appendString:@"\n\n Please describe your steps:"];
    [v27 appendString:@"\n 1. Open <app name> "];
    [v27 appendString:@"\n 2. ... "];
    [v27 appendString:@"\n\nWhat did you see:"];
    [v27 appendString:@"\n\nWhat you expected:"];
    [v27 appendString:@"\n\n(Please attach a screen recording if possible)"];
    [v27 appendString:@"\n\n Extra Information that will help us screen more effectively:"];
    [v27 appendString:{@"\n If this is a data detector issue, please also select and copy the OCR text output if possible"}];
    [v27 appendString:{@"\n If this is a MRC issue, please verify that the MRC correctly works in the Code Scanner app"}];
    [v27 appendString:{@"\n For visual search issues, also please attach a screenshot of the Siri Search results"}];
    error = [(VKFeedbackProvider *)self error];

    if (error)
    {
      error2 = [(VKFeedbackProvider *)self error];
      localizedDescription = [error2 localizedDescription];
      [v27 appendFormat:@"\n\nAnalysis Error: %@", localizedDescription];
    }

    v31 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"AdditionalText"];
    v32 = v31;
    if (v31)
    {
      [v27 appendFormat:@"\n\n%@", v31];
    }

    v59 = v32;
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v15 setObject:v26 forKey:@"feedback_type"];
    bundleIdentifier = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"Client"];
    if (!bundleIdentifier)
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
    }

    v53 = bundleIdentifier;
    [v15 setObject:bundleIdentifier forKey:@"client_id"];
    [v15 setObject:@"iOS" forKey:@"platform"];
    v52 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
    v51 = [v52 valueForKey:@"ProductBuildVersion"];
    [NSObject setObject:v15 forKey:"setObject:forKey:"];
    if ((options & 2) != 0)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      countryCode = [currentLocale countryCode];

      v37 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
      v38 = [v37 localizedStringForCountryCode:countryCode];
      if (v38)
      {
        [v15 setObject:v38 forKey:@"country"];
      }
    }

    v39 = [(VKFeedbackProvider *)self _jsonRepresentationForAttributesDictionary:v15];
    if (v39)
    {
      [(VKFeedbackProvider *)self _saveFeedbackAttributesJSON:v39];
      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v39 encoding:4];
      [v27 appendFormat:@"\n\nFeedback Attributes:\n%@", v40];
    }

    if (options)
    {
      [(VKFeedbackProvider *)self _saveScreenshots];
    }

    v41 = self->_attachmentsFolderURL;
    assetsProvider = [(VKFeedbackProvider *)self assetsProvider];
    imageAnalysis = [(VKFeedbackProvider *)self imageAnalysis];
    v44 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__VKFeedbackProvider_feedbackProviderViewController_submitWithOptions_attachments___block_invoke;
    block[3] = &unk_1E7BE6710;
    v63 = attachmentsCopy;
    selfCopy = self;
    v65 = assetsProvider;
    v66 = v41;
    optionsCopy = options;
    v67 = imageAnalysis;
    v68 = v54;
    v69 = v27;
    v70 = v61;
    v71 = v57;
    v72 = v55;
    v56 = v55;
    v58 = v57;
    v45 = v61;
    v46 = v27;
    v47 = v54;
    v48 = imageAnalysis;
    v49 = v41;
    v50 = assetsProvider;
    dispatch_async(v44, block);

    v13 = v59;
    defaultManager = v60;
    v14 = v53;
  }

  else
  {
    v13 = v12;
    v14 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [VKFeedbackProvider feedbackProviderViewController:v13 submitWithOptions:? attachments:?];
    }

    v15 = v14;
  }
}

void __83__VKFeedbackProvider_feedbackProviderViewController_submitWithOptions_attachments___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v39;
    do
    {
      v6 = 0;
      do
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v38 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v7 == *(v8 + 40))
        {
          v12 = *(a1 + 48);
          v13 = *(a1 + 56);
          v37 = 0;
          v14 = [v12 saveAssetsToFeedbackAttachmentsFolder:v13 error:&v37];
          v11 = v37;
          if (v14)
          {
            goto LABEL_19;
          }

          v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __83__VKFeedbackProvider_feedbackProviderViewController_submitWithOptions_attachments___block_invoke_cold_2(v44, v11);
          }

          goto LABEL_18;
        }

        if (v7 == *(v8 + 48))
        {
          v16 = *(a1 + 56);
          v17 = [*(*(&v38 + 1) + 8 * v6) fileName];
          v15 = [v16 URLByAppendingPathComponent:v17];

          v18 = *(a1 + 64);
          v36 = 0;
          [v18 writeSecureCodedArchiveToURL:v15 error:&v36];
          v11 = v36;
          if (v11)
          {
            v19 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              __83__VKFeedbackProvider_feedbackProviderViewController_submitWithOptions_attachments___block_invoke_cold_1(v43, v11);
            }
          }

LABEL_18:

          goto LABEL_19;
        }

        v9 = objc_alloc(MEMORY[0x1E695DFF8]);
        v10 = [v7 fileName];
        v11 = [v9 initWithString:v10 relativeToURL:*(a1 + 56)];

        if (v11)
        {
          [v31 addObject:v11];
        }

LABEL_19:

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v4);
  }

  (*(*(*(a1 + 40) + 56) + 16))();
  v20 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = [*(a1 + 56) path];
  v22 = [v20 contentsOfDirectoryAtPath:v21 error:0];

  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v32 + 1) + 8 * i) relativeToURL:*(a1 + 56)];
        [v23 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v26);
  }

  LOBYTE(v30) = (*(a1 + 112) & 4) != 0;
  [VKRadarUtilities createRadarWithTitle:*(a1 + 72) description:*(a1 + 80) componentName:*(a1 + 88) componentVersion:*(a1 + 96) componentID:*(a1 + 104) keywordIDs:0 attachmentURLs:v23 includeSysdiagnose:v30];
}

- (id)_jsonRepresentationForAttributesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryCopy])
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryCopy options:3 error:&v8];
    v5 = v8;
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [VKFeedbackProvider _jsonRepresentationForAttributesDictionary:v5];
    }
  }

  else
  {
    v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(VKFeedbackProvider *)dictionaryCopy _jsonRepresentationForAttributesDictionary:v6];
    }

    v5 = 0;
    v4 = 0;
  }

LABEL_10:

  return v4;
}

- (void)_saveFeedbackAttributesJSON:(id)n
{
  attachmentsFolderURL = self->_attachmentsFolderURL;
  nCopy = n;
  v5 = [(NSURL *)attachmentsFolderURL URLByAppendingPathComponent:@"FeedbackAttributes.json"];
  v8 = 0;
  [nCopy writeToURL:v5 options:2 error:&v8];

  v6 = v8;
  if (v6)
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VKFeedbackProvider _saveFeedbackAttributesJSON:v6];
    }
  }
}

- (void)_captureScreenshots
{
  v28 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_screenshots removeAllObjects];
  v3 = [MEMORY[0x1E69DD2E8] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v23 + 1) + 8 * v11) frame];
        v31.origin.x = v12;
        v31.origin.y = v13;
        v31.size.width = v14;
        v31.size.height = v15;
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        v30 = CGRectUnion(v29, v31);
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v16 = objc_alloc(MEMORY[0x1E69DCA78]);
  defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
  v18 = [v16 initWithBounds:defaultFormat format:{x, y, width, height}];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __41__VKFeedbackProvider__captureScreenshots__block_invoke;
  v21[3] = &unk_1E7BE6738;
  v22 = v3;
  v19 = v3;
  v20 = [v18 imageWithActions:v21];
  [(NSMutableArray *)self->_screenshots addObject:v20];
}

unint64_t __41__VKFeedbackProvider__captureScreenshots__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v4 = [*(a1 + 32) objectAtIndexedSubscript:i];
      [v4 frame];
      [v4 drawViewHierarchyInRect:?];

      result = [*(a1 + 32) count];
    }
  }

  return result;
}

- (void)_saveScreenshots
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = self->_screenshots;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (v5 < 1)
        {
          v9 = @"Screenshot";
        }

        else
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld", @"Screenshot", v5];
        }

        v10 = [(__CFString *)v9 stringByAppendingString:@".png"];
        [(VKFeedbackProvider *)self _saveImage:v8 withName:v10];

        ++v5;
        ++v7;
      }

      while (v4 != v7);
      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)_saveImage:(id)image withName:(id)name
{
  nameCopy = name;
  vk_PNGData = [image vk_PNGData];
  if (vk_PNGData)
  {
    v8 = [(NSURL *)self->_attachmentsFolderURL URLByAppendingPathComponent:nameCopy];
    v11 = 0;
    [vk_PNGData writeToURL:v8 options:2 error:&v11];
    v9 = v11;
    if (v9)
    {
      v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [VKFeedbackProvider _saveImage:v8 withName:v9];
      }
    }
  }
}

- (VKCImageAnalyzerRequest)request
{
  assetsProvider = [(VKFeedbackProvider *)self assetsProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    assetsProvider2 = [(VKFeedbackProvider *)self assetsProvider];
  }

  else
  {
    assetsProvider2 = 0;
  }

  return assetsProvider2;
}

- (VKCImageAnalysis)imageAnalysis
{
  WeakRetained = objc_loadWeakRetained(&self->_imageAnalysis);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)feedbackProviderViewController:(id *)a1 submitWithOptions:(void *)a2 attachments:.cold.1(id *a1, void *a2)
{
  v3 = [*a1 path];
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __83__VKFeedbackProvider_feedbackProviderViewController_submitWithOptions_attachments___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_3(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_3_3(&dword_1B4335000, v5, v6, "Error archiving analysis object: %@");
}

void __83__VKFeedbackProvider_feedbackProviderViewController_submitWithOptions_attachments___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_3(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_3_3(&dword_1B4335000, v5, v6, "Error saving analysis assets: %@");
}

- (void)_jsonRepresentationForAttributesDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Invalid JSON object: %@", &v2, 0xCu);
}

- (void)_jsonRepresentationForAttributesDictionary:(void *)a1 .cold.2(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_saveFeedbackAttributesJSON:(void *)a1 .cold.1(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_saveImage:(void *)a1 withName:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = [a1 path];
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

@end