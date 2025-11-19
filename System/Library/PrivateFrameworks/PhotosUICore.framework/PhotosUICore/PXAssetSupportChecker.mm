@interface PXAssetSupportChecker
+ (BOOL)isSupportedAsset:(id)a3 type:(int64_t)a4;
+ (void)_alertTitleAndMessageForAsset:(id)a3 type:(int64_t)a4 title:(id *)a5 message:(id *)a6;
+ (void)_presentAlertWithTitle:(id)a3 message:(id)a4 knowledgeBaseURL:(id)a5 alertControllerPresenter:(id)a6 completionHandler:(id)a7;
+ (void)checkIsSupportedAndPresentAlertForAsset:(id)a3 type:(int64_t)a4 alertControllerPresenter:(id)a5 completionHandler:(id)a6;
+ (void)checkIsSupportedAsset:(id)a3 type:(int64_t)a4 completionHandler:(id)a5;
+ (void)checkIsSupportedAsset:(id)a3 type:(int64_t)a4 completionHandlerWithReason:(id)a5;
+ (void)presentAlertForAsset:(id)a3 type:(int64_t)a4 alertControllerPresenter:(id)a5 completionHandler:(id)a6;
+ (void)presentAlertWithTitle:(id)a3 message:(id)a4 uti:(id)a5 codecName:(id)a6 alertControllerPresenter:(id)a7 completionHandler:(id)a8;
@end

@implementation PXAssetSupportChecker

+ (void)checkIsSupportedAndPresentAlertForAsset:(id)a3 type:(int64_t)a4 alertControllerPresenter:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"alertControllerPresenter"}];

    if (v13)
    {
      goto LABEL_4;
    }

LABEL_7:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_4;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"displayAsset"}];

  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_4:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __113__PXAssetSupportChecker_checkIsSupportedAndPresentAlertForAsset_type_alertControllerPresenter_completionHandler___block_invoke;
  v20[3] = &unk_1E7730470;
  v24 = a1;
  v25 = a4;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  [a1 checkIsSupportedAsset:v16 type:a4 completionHandlerWithReason:v20];
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

+ (void)presentAlertForAsset:(id)a3 type:(int64_t)a4 alertControllerPresenter:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"displayAsset"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"alertControllerPresenter"}];

LABEL_3:
  v22 = 0;
  v23 = 0;
  [a1 _alertTitleAndMessageForAsset:v11 type:a4 title:&v23 message:&v22];
  v14 = v23;
  v15 = v22;
  v16 = v15;
  if (!v14)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    if (v16)
    {
      goto LABEL_5;
    }

LABEL_9:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"message"}];

    goto LABEL_5;
  }

  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = +[PXMediaTypeInfoManager knowledgeBaseFallbackURL];
  [a1 _presentAlertWithTitle:v14 message:v16 knowledgeBaseURL:v17 alertControllerPresenter:v12 completionHandler:v13];
}

+ (void)presentAlertWithTitle:(id)a3 message:(id)a4 uti:(id)a5 codecName:(id)a6 alertControllerPresenter:(id)a7 completionHandler:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_9:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"message"}];

    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"title"}];

  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v19)
  {
    goto LABEL_4;
  }

LABEL_10:
  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"alertControllerPresenter"}];

LABEL_4:
  if (v17 | v18)
  {
    v21 = +[PXMediaTypeInfoManager sharedManager];
    v22 = *&PXMediaTypeInfoManagerDefaultTimeout;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __112__PXAssetSupportChecker_presentAlertWithTitle_message_uti_codecName_alertControllerPresenter_completionHandler___block_invoke;
    v27[3] = &unk_1E7730448;
    v32 = a1;
    v28 = v15;
    v29 = v16;
    v30 = v19;
    v31 = v20;
    [v21 mediaTypeInfoURLForUTI:v17 codecName:v18 timeout:v27 completionHandler:v22];
  }

  else
  {
    v23 = +[PXMediaTypeInfoManager knowledgeBaseFallbackURL];
    [a1 _presentAlertWithTitle:v15 message:v16 knowledgeBaseURL:v23 alertControllerPresenter:v19 completionHandler:v20];
  }
}

+ (void)checkIsSupportedAsset:(id)a3 type:(int64_t)a4 completionHandlerWithReason:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"displayAsset"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v12 = v9;
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
    if (a4 || ([v13 isVideo] & 1) == 0)
    {
      v14[2](v14, 1, 0);
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E6978868]);
      [v15 setSynchronous:1];
      [v15 setVersion:2];
      v16 = [MEMORY[0x1E6978860] defaultManager];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __80__PXAssetSupportChecker_checkIsSupportedAsset_type_completionHandlerWithReason___block_invoke_2;
      v20[3] = &unk_1E7730420;
      v23 = v14;
      v21 = v15;
      v22 = v13;
      v17 = v15;
      [v16 requestAVProxyForAsset:v22 options:v17 resultHandler:v20];
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

+ (void)checkIsSupportedAsset:(id)a3 type:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PXAssetSupportChecker_checkIsSupportedAsset_type_completionHandler___block_invoke;
  v10[3] = &unk_1E7730380;
  v11 = v8;
  v9 = v8;
  [a1 checkIsSupportedAsset:a3 type:a4 completionHandlerWithReason:v10];
}

+ (BOOL)isSupportedAsset:(id)a3 type:(int64_t)a4
{
  v4 = a3;
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
  [PXAssetSupportChecker checkIsSupportedAsset:v4 type:0 completionHandler:v9];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

+ (void)_presentAlertWithTitle:(id)a3 message:(id)a4 knowledgeBaseURL:(id)a5 alertControllerPresenter:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v15)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"knowledgeBaseURL"}];
  }

  v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v14 preferredStyle:1];
  v19 = MEMORY[0x1E69DC648];
  v20 = PXLocalizedStringFromTable(@"PXAssetSupportChecker_UnsupportedFormat_Alert_MoreInfoButton", @"PhotosUICore");
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __116__PXAssetSupportChecker__presentAlertWithTitle_message_knowledgeBaseURL_alertControllerPresenter_completionHandler___block_invoke;
  v32[3] = &unk_1E7741C90;
  v21 = v15;
  v33 = v21;
  v22 = v17;
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

  v28 = v16[2](v16, v18);
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

+ (void)_alertTitleAndMessageForAsset:(id)a3 type:(int64_t)a4 title:(id *)a5 message:(id *)a6
{
  v11 = a3;
  v19 = v11;
  if (a5)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    v11 = v19;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"message"}];

  v11 = v19;
LABEL_3:
  v12 = [v11 mediaType];
  if (v12 == 1)
  {
    v13 = 1;
  }

  else
  {
    if (v12 != 2)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:a1 file:@"PXAssetSupportChecker.m" lineNumber:46 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v13 = 0;
  }

  if (a4 == 1)
  {
    *a5 = PXLocalizedStringFromTable(@"PXAssetSupportChecker_UnsupportedFormat_Playback_Video_Title", @"PhotosUICore");
    v15 = @"PXAssetSupportChecker_UnsupportedFormat_Playback_Video_Message";
  }

  else
  {
    if (a4)
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

    *a5 = PXLocalizedStringFromTable(v14, @"PhotosUICore");
  }

  *a6 = PXLocalizedStringFromTable(v15, @"PhotosUICore");
LABEL_18:
}

@end