@interface SSScreenshotMetadataHarvester
+ (BOOL)canGenerateDocumentForIdentifier:(id)a3;
+ (id)_applicationScreenshotServiceWithPrivateDelegate:(BOOL)a3;
+ (id)_contentRectsForMetadata;
+ (id)_screenshotServiceForWindowScene:(id)a3 wantsPrivateDelegate:(BOOL)a4;
+ (id)_screenshotServicesDelegateWithIdentifier:(id)a3;
+ (id)screenshotServiceWithIdentifier:(id)a3;
+ (void)_crawlView:(id)a3 executingBlock:(id)a4;
+ (void)_crawlViewController:(id)a3 executingBlock:(id)a4;
+ (void)_grabPDFRepresentationForIdentifier:(id)a3 withCallback:(id)a4;
+ (void)_grabUserActivityTitleWithCallback:(id)a3;
+ (void)harvestScreenshotMetadataAndRespondToAction:(id)a3;
+ (void)sendResponseForAction:(id)a3 withObject:(id)a4 forKey:(unint64_t)a5;
@end

@implementation SSScreenshotMetadataHarvester

+ (void)_crawlViewController:(id)a3 executingBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v7[2](v7, v6);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v6 childViewControllers];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [a1 _crawlViewController:*(*(&v15 + 1) + 8 * v12++) executingBlock:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [v6 presentedViewController];

  if (v13)
  {
    v14 = [v6 presentedViewController];
    [a1 _crawlViewController:v14 executingBlock:v7];
  }
}

+ (void)_crawlView:(id)a3 executingBlock:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v7[2](v7, v6);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v6 subviews];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [a1 _crawlView:*(*(&v13 + 1) + 8 * v12++) executingBlock:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

+ (id)_contentRectsForMetadata
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E69DD2E8] keyWindow];
  v5 = [MEMORY[0x1E69DD2E8] keyWindow];
  v6 = [v5 rootViewController];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __57__SSScreenshotMetadataHarvester__contentRectsForMetadata__block_invoke;
  v21 = &unk_1E8590200;
  v7 = v4;
  v22 = v7;
  v8 = v3;
  v23 = v8;
  [a1 _crawlViewController:v6 executingBlock:&v18];

  [MEMORY[0x1E69DCD68] visiblePeripheralFrame];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  if (!CGRectIsNull(v24))
  {
    v13 = v7;
    [v13 convertRect:0 fromView:{x, y, width, height}];
    v14 = [MEMORY[0x1E696B098] valueWithCGRect:?];

    [v8 addObject:v14];
  }

  v15 = v23;
  v16 = v8;

  return v8;
}

void __57__SSScreenshotMetadataHarvester__contentRectsForMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 viewIfLoaded];
  if (v3)
  {
    v18 = v3;
    [v3 safeAreaInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v18 bounds];
    [*(a1 + 32) convertRect:v18 fromCoordinateSpace:{v7 + v12, v5 + v13, v14 - (v7 + v11), v15 - (v5 + v9)}];
    v16 = *(a1 + 40);
    v17 = [MEMORY[0x1E696B098] valueWithCGRect:?];
    [v16 addObject:v17];

    v3 = v18;
  }
}

+ (void)_grabUserActivityTitleWithCallback:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69636A8] _currentUserActivityUUID];
  v5 = MEMORY[0x1E69636A8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SSScreenshotMetadataHarvester__grabUserActivityTitleWithCallback___block_invoke;
  v7[3] = &unk_1E8590278;
  v8 = v3;
  v6 = v3;
  [v5 _fetchUserActivityWithUUID:v4 completionHandler:v7];
}

void __68__SSScreenshotMetadataHarvester__grabUserActivityTitleWithCallback___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SSScreenshotMetadataHarvester__grabUserActivityTitleWithCallback___block_invoke_2;
    block[3] = &unk_1E8590228;
    v24 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v7 = v24;
  }

  else
  {
    v7 = [v5 title];
    v8 = [v6 webpageURL];
    v9 = [v7 UTF8String];
    v10 = [v8 absoluteString];
    v11 = [v10 UTF8String];

    if (v9)
    {
      v12 = [v6 expirationDate];
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v7;
      }

      v9 = v13;
    }

    if (v11)
    {
      v14 = [v6 expirationDate];
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8;
      }

      v11 = v15;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__SSScreenshotMetadataHarvester__grabUserActivityTitleWithCallback___block_invoke_3;
    v19[3] = &unk_1E8590250;
    v16 = *(a1 + 32);
    v21 = v11;
    v22 = v16;
    v20 = v9;
    v17 = v11;
    v18 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }
}

+ (id)screenshotServiceWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 connectedScenes];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      v11 = [v10 _FBSScene];
      v12 = [v11 identifier];
      v13 = [v12 isEqual:v3];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v10;

    if (v14)
    {
      v15 = [objc_opt_class() _screenshotServiceForWindowScene:v14 wantsPrivateDelegate:1];
      if (v15)
      {
        goto LABEL_15;
      }

      v15 = [objc_opt_class() _screenshotServiceForWindowScene:v14 wantsPrivateDelegate:0];
      if (v15)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_9:

    v14 = 0;
  }

  v15 = [objc_opt_class() _applicationScreenshotServiceWithPrivateDelegate:1];
  if (!v15)
  {
    v15 = [objc_opt_class() _applicationScreenshotServiceWithPrivateDelegate:0];
  }

LABEL_15:
  v16 = v15;

  return v16;
}

+ (id)_applicationScreenshotServiceWithPrivateDelegate:(BOOL)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v5 connectedScenes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__SSScreenshotMetadataHarvester__applicationScreenshotServiceWithPrivateDelegate___block_invoke;
  v9[3] = &unk_1E85902A0;
  v10 = a3;
  v9[4] = &v11;
  v9[5] = a1;
  [v6 enumerateObjectsUsingBlock:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __82__SSScreenshotMetadataHarvester__applicationScreenshotServiceWithPrivateDelegate___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_opt_class() _screenshotServiceForWindowScene:v6 wantsPrivateDelegate:*(a1 + 48)];
    if (v5)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
      *a3 = 1;
    }
  }
}

+ (id)_screenshotServiceForWindowScene:(id)a3 wantsPrivateDelegate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 _screenshotServiceIfPresent];
  v7 = v6;
  if (v4)
  {
    [v6 privateDelegate];
  }

  else
  {
    [v6 delegate];
  }
  v8 = ;

  if (![v5 activationState])
  {
    if (!v8)
    {
      v9 = 0;
      goto LABEL_11;
    }

LABEL_9:
    v9 = [v5 _screenshotServiceIfPresent];
    goto LABEL_11;
  }

  v9 = 0;
  if ([v5 activationState] == 1 && v8)
  {
    goto LABEL_9;
  }

LABEL_11:

  return v9;
}

+ (id)_screenshotServicesDelegateWithIdentifier:(id)a3
{
  v3 = [a1 screenshotServiceWithIdentifier:a3];
  v4 = [v3 privateDelegate];

  if (v4)
  {
    [v3 privateDelegate];
  }

  else
  {
    [v3 delegate];
  }
  v5 = ;

  return v5;
}

+ (void)_grabPDFRepresentationForIdentifier:(id)a3 withCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = [a1 _screenshotServicesDelegateWithIdentifier:v6];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy_;
  v13[4] = __Block_byref_object_dispose_;
  v14 = [a1 screenshotServiceWithIdentifier:v6];
  if (!v16[5])
  {
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (v16[5] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v8 = v11;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __82__SSScreenshotMetadataHarvester__grabPDFRepresentationForIdentifier_withCallback___block_invoke_3;
      v11[3] = &unk_1E8590318;
      v11[5] = &v15;
      v11[6] = v13;
      goto LABEL_8;
    }

LABEL_7:
    v8 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__SSScreenshotMetadataHarvester__grabPDFRepresentationForIdentifier_withCallback___block_invoke_5;
    v10[3] = &unk_1E8590228;
    goto LABEL_8;
  }

  v8 = v12;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__SSScreenshotMetadataHarvester__grabPDFRepresentationForIdentifier_withCallback___block_invoke;
  v12[3] = &unk_1E85902F0;
  v12[5] = &v15;
LABEL_8:
  v9 = v7;
  v8[4] = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);
}

void __82__SSScreenshotMetadataHarvester__grabPDFRepresentationForIdentifier_withCallback___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __82__SSScreenshotMetadataHarvester__grabPDFRepresentationForIdentifier_withCallback___block_invoke_2;
  v2[3] = &unk_1E85902C8;
  v3 = *(a1 + 32);
  [v1 fetchPDFRepresentationWithCompletion:v2];
}

void __82__SSScreenshotMetadataHarvester__grabPDFRepresentationForIdentifier_withCallback___block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82__SSScreenshotMetadataHarvester__grabPDFRepresentationForIdentifier_withCallback___block_invoke_4;
  v3[3] = &unk_1E85902C8;
  v4 = *(a1 + 32);
  [v1 screenshotService:v2 generatePDFRepresentationWithCompletion:v3];
}

+ (BOOL)canGenerateDocumentForIdentifier:(id)a3
{
  v3 = [a1 _screenshotServicesDelegateWithIdentifier:a3];

  return v3 != 0;
}

+ (void)sendResponseForAction:(id)a3 withObject:(id)a4 forKey:(unint64_t)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 canSendResponse];
  v10 = os_log_create("com.apple.screenshotservices", "MetadataHarvester");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v13 = 134217984;
      v14 = a5;
      _os_log_impl(&dword_1D9E04000, v10, OS_LOG_TYPE_DEFAULT, "Send response for action with key: %lu", &v13, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v10 setObject:v8 forSetting:a5];
    v12 = [MEMORY[0x1E698E600] responseWithInfo:v10];
    [v7 sendResponse:v12];
  }

  else if (v11)
  {
    v13 = 134217984;
    v14 = a5;
    _os_log_impl(&dword_1D9E04000, v10, OS_LOG_TYPE_DEFAULT, "Unable to send response for action with key: %lu", &v13, 0xCu);
  }
}

+ (void)harvestScreenshotMetadataAndRespondToAction:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 info];
  [v5 flagForSetting:7];
  IsYes = BSSettingFlagIsYes();

  v7 = [v4 info];
  v8 = [v7 objectForSetting:10];

  if (IsYes)
  {
    v9 = objc_alloc_init(SSHarvestedApplicationDocument);
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    v10 = CACurrentMediaTime();
    v11 = os_log_create("com.apple.screenshotservices", "MetadataHarvester");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v40 = v8;
      _os_log_impl(&dword_1D9E04000, v11, OS_LOG_TYPE_DEFAULT, "Grab PDF representation for identifier: %{private}@", buf, 0xCu);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __77__SSScreenshotMetadataHarvester_harvestScreenshotMetadataAndRespondToAction___block_invoke_30;
    v26[3] = &unk_1E8590368;
    v31 = v10;
    v27 = v8;
    v30 = v33;
    v12 = v9;
    v28 = v12;
    v32 = a1;
    v13 = v4;
    v29 = v13;
    [a1 _grabPDFRepresentationForIdentifier:v27 withCallback:v26];
    v14 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__SSScreenshotMetadataHarvester_harvestScreenshotMetadataAndRespondToAction___block_invoke_31;
    block[3] = &unk_1E8590390;
    v24 = v33;
    v25 = a1;
    v22 = v12;
    v23 = v13;
    v15 = v13;
    v16 = v12;
    dispatch_after(v14, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v33, 8);
  }

  else
  {
    v17 = objc_alloc_init(SSHarvestedApplicationMetadata);
    v18 = [a1 _contentRectsForMetadata];
    [(SSHarvestedApplicationMetadata *)v17 setContentRects:v18];

    -[SSHarvestedApplicationMetadata setCanGenerateDocument:](v17, "setCanGenerateDocument:", [a1 canGenerateDocumentForIdentifier:v8]);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __77__SSScreenshotMetadataHarvester_harvestScreenshotMetadataAndRespondToAction___block_invoke;
    v35[3] = &unk_1E8590340;
    v37 = v4;
    v38 = a1;
    v36 = v17;
    v19 = v4;
    v20 = v17;
    [a1 _grabUserActivityTitleWithCallback:v35];
  }
}

uint64_t __77__SSScreenshotMetadataHarvester_harvestScreenshotMetadataAndRespondToAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setUserActivityTitle:a2];
  [*(a1 + 32) setUserActivityURL:v6];

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 32);

  return [v7 sendResponseForAction:v8 withObject:v9 forKey:3];
}

void __77__SSScreenshotMetadataHarvester_harvestScreenshotMetadataAndRespondToAction___block_invoke_30(uint64_t a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = CACurrentMediaTime();
  v15 = *(a1 + 64);
  v16 = os_log_create("com.apple.screenshotservices", "MetadataHarvester");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = [v13 length];
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    v19 = NSStringFromCGRect(v35);
    v20 = *(*(*(a1 + 56) + 8) + 24);
    v22 = 138479107;
    v23 = v17;
    v24 = 2048;
    v25 = v18;
    v26 = 2048;
    v27 = a3;
    v28 = 2113;
    v29 = v19;
    v30 = 2048;
    v31 = v14 - v15;
    v32 = 1024;
    v33 = v20;
    _os_log_impl(&dword_1D9E04000, v16, OS_LOG_TYPE_DEFAULT, "did grab PDF representation for identifier: %{private}@, data length: %lu, page: %ld, rect: %{private}@, elapsed time: %f, didSendResponse: %{BOOL}d", &v22, 0x3Au);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    if ([v13 length] >> 20 >= 0x4B)
    {
      v21 = 0;
    }

    else
    {
      v21 = v13;
    }

    [*(a1 + 40) setPDFData:v21];
    [*(a1 + 40) setPDFPage:a3];
    [*(a1 + 40) setPDFVisibleRect:{a4, a5, a6, a7}];
    [*(a1 + 72) sendResponseForAction:*(a1 + 48) withObject:*(a1 + 40) forKey:4];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __77__SSScreenshotMetadataHarvester_harvestScreenshotMetadataAndRespondToAction___block_invoke_31(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.screenshotservices", "MetadataHarvester");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 48) + 8) + 24);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_1D9E04000, v2, OS_LOG_TYPE_DEFAULT, "pdf harvesting timed out! didSendResponse: %{BOOL}d", v4, 8u);
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) setPDFData:0];
    [*(a1 + 32) setPDFPage:0];
    [*(a1 + 32) setPDFVisibleRect:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
    [*(a1 + 56) sendResponseForAction:*(a1 + 40) withObject:*(a1 + 32) forKey:4];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

@end