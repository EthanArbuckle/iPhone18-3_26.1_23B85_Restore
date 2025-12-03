@interface PXAssetSupportChecker
+ (BOOL)isSupportedAsset:(id)asset type:(int64_t)type;
+ (void)_alertTitleAndMessageForAsset:(id)asset type:(int64_t)type title:(id *)title message:(id *)message;
+ (void)_presentAlertWithTitle:(id)title message:(id)message knowledgeBaseURL:(id)l alertControllerPresenter:(id)presenter completionHandler:(id)handler;
+ (void)checkIsSupportedAndPresentAlertForAsset:(id)asset type:(int64_t)type alertControllerPresenter:(id)presenter completionHandler:(id)handler;
+ (void)checkIsSupportedAsset:(id)asset type:(int64_t)type completionHandler:(id)handler;
+ (void)checkIsSupportedAsset:(id)asset type:(int64_t)type completionHandlerWithReason:(id)reason;
+ (void)presentAlertForAsset:(id)asset type:(int64_t)type alertControllerPresenter:(id)presenter completionHandler:(id)handler;
+ (void)presentAlertWithTitle:(id)title message:(id)message uti:(id)uti codecName:(id)name alertControllerPresenter:(id)presenter completionHandler:(id)handler;
@end

@implementation PXAssetSupportChecker

+ (void)checkIsSupportedAndPresentAlertForAsset:(id)asset type:(int64_t)type alertControllerPresenter:(id)presenter completionHandler:(id)handler
{
  assetCopy = asset;
  presenterCopy = presenter;
  handlerCopy = handler;
  if (assetCopy)
  {
    if (presenterCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"alertControllerPresenter"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"displayAsset"}];

  if (!presenterCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __113__PXAssetSupportChecker_checkIsSupportedAndPresentAlertForAsset_type_alertControllerPresenter_completionHandler___block_invoke;
  v20[3] = &unk_1E7730470;
  selfCopy = self;
  typeCopy = type;
  v21 = assetCopy;
  v22 = presenterCopy;
  v23 = handlerCopy;
  v14 = handlerCopy;
  v15 = presenterCopy;
  v16 = assetCopy;
  [self checkIsSupportedAsset:v16 type:type completionHandlerWithReason:v20];
}

void __113__PXAssetSupportChecker_checkIsSupportedAndPresentAlertForAsset_type_alertControllerPresenter_completionHandler___block_invoke(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v22 = 0;
    v23 = 0;
    [v12 _alertTitleAndMessageForAsset:v11 type:v13 title:&v23 message:&v22];
    v14 = v23;
    v15 = v22;
    if (PFOSVariantHasInternalDiagnostics())
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[INTERNAL ONLY]", v15];

      if (v9 | v10)
      {
        v17 = [v16 stringByAppendingFormat:@" uti:%@ codecName:%@", v9, v10];

        v16 = v17;
      }

      if ((a5 - 2) > 7)
      {
        v15 = v16;
      }

      else
      {
        v15 = [v16 stringByAppendingFormat:@"\n%@", off_1E7730490[a5 - 2]];
      }
    }

    v18 = *(a1 + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __113__PXAssetSupportChecker_checkIsSupportedAndPresentAlertForAsset_type_alertControllerPresenter_completionHandler___block_invoke_2;
    v20[3] = &unk_1E774C250;
    v19 = *(a1 + 56);
    v21 = *(a1 + 48);
    [v19 presentAlertWithTitle:v14 message:v15 uti:v9 codecName:v10 alertControllerPresenter:v18 completionHandler:v20];
  }
}

+ (void)presentAlertForAsset:(id)asset type:(int64_t)type alertControllerPresenter:(id)presenter completionHandler:(id)handler
{
  assetCopy = asset;
  presenterCopy = presenter;
  handlerCopy = handler;
  if (assetCopy)
  {
    if (presenterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"displayAsset"}];

    if (presenterCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"alertControllerPresenter"}];

LABEL_3:
  v22 = 0;
  v23 = 0;
  [self _alertTitleAndMessageForAsset:assetCopy type:type title:&v23 message:&v22];
  v14 = v23;
  v15 = v22;
  v16 = v15;
  if (!v14)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    if (v16)
    {
      goto LABEL_5;
    }

LABEL_9:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"message"}];

    goto LABEL_5;
  }

  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = +[PXMediaTypeInfoManager knowledgeBaseFallbackURL];
  [self _presentAlertWithTitle:v14 message:v16 knowledgeBaseURL:v17 alertControllerPresenter:presenterCopy completionHandler:handlerCopy];
}

+ (void)presentAlertWithTitle:(id)title message:(id)message uti:(id)uti codecName:(id)name alertControllerPresenter:(id)presenter completionHandler:(id)handler
{
  titleCopy = title;
  messageCopy = message;
  utiCopy = uti;
  nameCopy = name;
  presenterCopy = presenter;
  handlerCopy = handler;
  if (titleCopy)
  {
    if (messageCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"message"}];

    if (presenterCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"title"}];

  if (!messageCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (presenterCopy)
  {
    goto LABEL_4;
  }

LABEL_10:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"alertControllerPresenter"}];

LABEL_4:
  if (utiCopy | nameCopy)
  {
    v21 = +[PXMediaTypeInfoManager sharedManager];
    v22 = *&PXMediaTypeInfoManagerDefaultTimeout;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __112__PXAssetSupportChecker_presentAlertWithTitle_message_uti_codecName_alertControllerPresenter_completionHandler___block_invoke;
    v27[3] = &unk_1E7730448;
    selfCopy = self;
    v28 = titleCopy;
    v29 = messageCopy;
    v30 = presenterCopy;
    v31 = handlerCopy;
    [v21 mediaTypeInfoURLForUTI:utiCopy codecName:nameCopy timeout:v27 completionHandler:v22];
  }

  else
  {
    v23 = +[PXMediaTypeInfoManager knowledgeBaseFallbackURL];
    [self _presentAlertWithTitle:titleCopy message:messageCopy knowledgeBaseURL:v23 alertControllerPresenter:presenterCopy completionHandler:handlerCopy];
  }
}

+ (void)checkIsSupportedAsset:(id)asset type:(int64_t)type completionHandlerWithReason:(id)reason
{
  assetCopy = asset;
  reasonCopy = reason;
  v11 = reasonCopy;
  if (assetCopy)
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"displayAsset"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v12 = assetCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__PXAssetSupportChecker_checkIsSupportedAsset_type_completionHandlerWithReason___block_invoke;
    aBlock[3] = &unk_1E77303A8;
    v13 = v12;
    v25 = v13;
    v26 = v11;
    v14 = _Block_copy(aBlock);
    if (type || ([v13 isVideo] & 1) == 0)
    {
      v14[2](v14, 1, 0);
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E6978868]);
      [v15 setSynchronous:1];
      [v15 setVersion:2];
      defaultManager = [MEMORY[0x1E6978860] defaultManager];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __80__PXAssetSupportChecker_checkIsSupportedAsset_type_completionHandlerWithReason___block_invoke_2;
      v20[3] = &unk_1E7730420;
      v23 = v14;
      v21 = v15;
      v22 = v13;
      v17 = v15;
      [defaultManager requestAVProxyForAsset:v22 options:v17 resultHandler:v20];
    }
  }

  else
  {
    v11[2](v11, 1, 0, 0, 0);
  }
}

void __80__PXAssetSupportChecker_checkIsSupportedAsset_type_completionHandlerWithReason___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v3 = *(a1 + 32);
  v8 = 0;
  v4 = [MEMORY[0x1E6978630] isOriginalKnownUnsupportedFormatForAsset:v3 failureInfo:&v8];
  v5 = v8;
  if (v4)
  {
LABEL_5:
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6978BB0]];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6978BA8]];
    (*(*(a1 + 40) + 16))();

    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))();
LABEL_6:
}

void __80__PXAssetSupportChecker_checkIsSupportedAsset_type_completionHandlerWithReason___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v12 = 0;
    [MEMORY[0x1E69BDEF0] isAVAssetEditable:a2 reason:&v12];
    (*(*(a1 + 48) + 16))();
    return;
  }

  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  v5 = [v4 domain];
  if (![v5 isEqualToString:*MEMORY[0x1E6978F50]])
  {

    goto LABEL_7;
  }

  v6 = [v4 code];

  if (v6 != 3164)
  {
LABEL_7:
    (*(*(a1 + 48) + 16))();
    goto LABEL_8;
  }

  [*(a1 + 32) setNetworkAccessAllowed:1];
  v7 = [MEMORY[0x1E6978860] defaultManager];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PXAssetSupportChecker_checkIsSupportedAsset_type_completionHandlerWithReason___block_invoke_3;
  v10[3] = &unk_1E77303F8;
  v11 = *(a1 + 48);
  [v7 requestAVProxyForAsset:v8 options:v9 resultHandler:v10];

LABEL_8:
}

void __80__PXAssetSupportChecker_checkIsSupportedAsset_type_completionHandlerWithReason___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  if (a2)
  {
    v3 = [MEMORY[0x1E69BDEF0] isAVAssetEditable:a2 reason:&v10];
    v4 = v10;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__PXAssetSupportChecker_checkIsSupportedAsset_type_completionHandlerWithReason___block_invoke_4;
  v6[3] = &unk_1E77303D0;
  v5 = *(a1 + 32);
  v9 = v3;
  v7 = v5;
  v8 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

+ (void)checkIsSupportedAsset:(id)asset type:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PXAssetSupportChecker_checkIsSupportedAsset_type_completionHandler___block_invoke;
  v10[3] = &unk_1E7730380;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [self checkIsSupportedAsset:asset type:type completionHandlerWithReason:v10];
}

+ (BOOL)isSupportedAsset:(id)asset type:(int64_t)type
{
  assetCopy = asset;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PXAssetSupportChecker_isSupportedAsset_type___block_invoke;
  v9[3] = &unk_1E7730358;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [PXAssetSupportChecker checkIsSupportedAsset:assetCopy type:0 completionHandler:v9];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

+ (void)_presentAlertWithTitle:(id)title message:(id)message knowledgeBaseURL:(id)l alertControllerPresenter:(id)presenter completionHandler:(id)handler
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  presenterCopy = presenter;
  handlerCopy = handler;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"knowledgeBaseURL"}];
  }

  v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
  v19 = MEMORY[0x1E69DC648];
  v20 = PXLocalizedStringFromTable(@"PXAssetSupportChecker_UnsupportedFormat_Alert_MoreInfoButton", @"PhotosUICore");
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __116__PXAssetSupportChecker__presentAlertWithTitle_message_knowledgeBaseURL_alertControllerPresenter_completionHandler___block_invoke;
  v32[3] = &unk_1E7741C90;
  v21 = lCopy;
  v33 = v21;
  v22 = handlerCopy;
  v34 = v22;
  v23 = [v19 actionWithTitle:v20 style:0 handler:v32];
  [v18 addAction:v23];

  v24 = MEMORY[0x1E69DC648];
  v25 = PXLocalizedStringFromTable(@"PXAssetSupportChecker_UnsupportedFormat_Alert_OkButton", @"PhotosUICore");
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __116__PXAssetSupportChecker__presentAlertWithTitle_message_knowledgeBaseURL_alertControllerPresenter_completionHandler___block_invoke_3;
  v30[3] = &unk_1E7748000;
  v26 = v22;
  v31 = v26;
  v27 = [v24 actionWithTitle:v25 style:0 handler:v30];
  [v18 addAction:v27];

  v28 = presenterCopy[2](presenterCopy, v18);
  if (v26 && (v28 & 1) == 0)
  {
    v26[2](v26);
  }
}

void __116__PXAssetSupportChecker__presentAlertWithTitle_message_knowledgeBaseURL_alertControllerPresenter_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __116__PXAssetSupportChecker__presentAlertWithTitle_message_knowledgeBaseURL_alertControllerPresenter_completionHandler___block_invoke_2;
  v4[3] = &unk_1E77464C0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 openURL:v3 withCompletionHandler:v4];
}

uint64_t __116__PXAssetSupportChecker__presentAlertWithTitle_message_knowledgeBaseURL_alertControllerPresenter_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __116__PXAssetSupportChecker__presentAlertWithTitle_message_knowledgeBaseURL_alertControllerPresenter_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)_alertTitleAndMessageForAsset:(id)asset type:(int64_t)type title:(id *)title message:(id *)message
{
  assetCopy = asset;
  v19 = assetCopy;
  if (title)
  {
    if (message)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    assetCopy = v19;
    if (message)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"message"}];

  assetCopy = v19;
LABEL_3:
  mediaType = [assetCopy mediaType];
  if (mediaType == 1)
  {
    v13 = 1;
  }

  else
  {
    if (mediaType != 2)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXAssetSupportChecker.m" lineNumber:46 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v13 = 0;
  }

  if (type == 1)
  {
    *title = PXLocalizedStringFromTable(@"PXAssetSupportChecker_UnsupportedFormat_Playback_Video_Title", @"PhotosUICore");
    v15 = @"PXAssetSupportChecker_UnsupportedFormat_Playback_Video_Message";
  }

  else
  {
    if (type)
    {
      goto LABEL_18;
    }

    if (v13)
    {
      v14 = @"PXAssetSupportChecker_UnsupportedFormat_Edit_Photo_Title";
    }

    else
    {
      v14 = @"PXAssetSupportChecker_UnsupportedFormat_Edit_Video_Title";
    }

    if (v13)
    {
      v15 = @"PXAssetSupportChecker_UnsupportedFormat_Edit_Photo_Message";
    }

    else
    {
      v15 = @"PXAssetSupportChecker_UnsupportedFormat_Edit_Video_Message";
    }

    *title = PXLocalizedStringFromTable(v14, @"PhotosUICore");
  }

  *message = PXLocalizedStringFromTable(v15, @"PhotosUICore");
LABEL_18:
}

@end