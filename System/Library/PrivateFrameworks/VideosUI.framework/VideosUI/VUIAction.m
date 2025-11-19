@interface VUIAction
+ (id)actionWithDictionary:(id)a3 appContext:(id)a4;
- (id)_siriConfigInfo;
- (void)_finalizeWithSuccess:(BOOL)a3 targetResponder:(id)a4 documentOptions:(id)a5 completion:(id)a6;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIAction

+ (id)actionWithDictionary:(id)a3 appContext:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 vui_stringForKey:@"actionRef"];
  v9 = [v6 vui_dictionaryForKey:@"contextData"];
  if (v8)
  {
    if (([v8 isEqualToString:@"actionRefBuy"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"actionRefGet") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"actionRefPreorder") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"actionRefRent") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"actionRefRentWatchNow") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"actionRefComplete") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"actionRefUpdate") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"actionRefSubscribe"))
    {
      if (v7)
      {
        v10 = [[VUIActionCommerceTransaction alloc] initWithActionRef:v8 contextData:v9 appContext:v7];
LABEL_12:
        v11 = v10;
LABEL_20:
        v12 = [v6 vui_dictionaryForKey:@"success"];
        v14 = [v6 vui_dictionaryForKey:@"failure"];
        v15 = [a1 actionWithDictionary:v12 appContext:v7];
        [(VUIAction *)v11 setSuccessAction:v15];

        v16 = [a1 actionWithDictionary:v14 appContext:v7];
        [(VUIAction *)v11 setFailureAction:v16];

        goto LABEL_21;
      }

      v13 = VUIDefaultLogObject();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

LABEL_17:
      +[VUIAction actionWithDictionary:appContext:];
LABEL_18:

LABEL_19:
      v11 = 0;
      goto LABEL_20;
    }

    if (([v8 isEqualToString:@"actionRefPlay"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"actionRefRedownload"))
    {
      if (!v7)
      {
        v13 = VUIDefaultLogObject();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v18 = VUIActionPlay;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefPlaylist"])
    {
      if (!v7)
      {
        v13 = VUIDefaultLogObject();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v18 = VUIActionPlaylist;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefDownload"])
    {
      v18 = VUIActionDownload;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefNavigate"])
    {
      v10 = [[VUIActionNavigate alloc] initWithActionDataSource:v6 appContext:v7];
      goto LABEL_12;
    }

    if ([v8 isEqualToString:@"actionRefAppPunchout"])
    {
      v18 = VUIActionAppPunchout;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefPunchout"])
    {
      v18 = VUIActionPunchout;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefPromise"])
    {
      v18 = VUIActionPromise;
      goto LABEL_28;
    }

    if ([v8 isEqualToString:@"actionRefItunesExtras"])
    {
      goto LABEL_19;
    }

    if ([v8 isEqualToString:@"actionRefShareMediaItem"])
    {
      v10 = [[VUIActionShareSheet alloc] initWithContextData:v9 sourceView:0];
      goto LABEL_12;
    }

    if ([v8 isEqualToString:@"actionRefUpdateUpNext"])
    {
      v19 = VUIActionUpdateUpNext;
      goto LABEL_53;
    }

    if ([v8 isEqualToString:@"actionRefMarkAsWatched"])
    {
      v19 = VUIActionMarkedAsWatched;
      goto LABEL_53;
    }

    if ([v8 isEqualToString:@"actionRefRemoveFromPlayHistory"])
    {
      v20 = [VUIActionRemoveFromPlayHistory alloc];
      v21 = v9;
      v22 = 0;
    }

    else
    {
      if (![v8 isEqualToString:@"actionRefClearFromPlayHistory"])
      {
        if ([v8 isEqualToString:@"actionRefUpdateMusic"])
        {
          v19 = VUIActionUpdateMusic;
        }

        else
        {
          if ([v8 isEqualToString:@"actionRefAlert"])
          {
            if (v7)
            {
              v10 = [[VUIActionAlert alloc] initWithContextData:v9 appContext:v7 controllerClass:objc_opt_class()];
              goto LABEL_12;
            }

            v13 = VUIDefaultLogObject();
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          if ([v8 isEqualToString:@"actionRefLocationPrompt"])
          {
            v18 = VUIActionLocationPrompt;
            goto LABEL_28;
          }

          if (![v8 isEqualToString:@"actionRefUpdateSportsFavorite"])
          {
            if ([v8 isEqualToString:@"actionRefGdprProceed"])
            {
              if (!v7)
              {
                v13 = VUIDefaultLogObject();
                if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_18;
                }

                goto LABEL_17;
              }

              v18 = VUIActionTypeGDPR;
            }

            else
            {
              if ([v8 isEqualToString:@"actionRefSystemSettings"])
              {
                v19 = VUIActionSystemSettings;
                goto LABEL_53;
              }

              if ([v8 isEqualToString:@"actionRefARQLPreview"])
              {
                v19 = VUIActionARQLPreview;
                goto LABEL_53;
              }

              if ([v8 isEqualToString:@"actionRefBundleOffer"])
              {
                v18 = VUIActionBundleOffer;
                goto LABEL_28;
              }

              if ([v8 isEqualToString:@"actionRefActivateCarrierOffer"])
              {
                v19 = VUIActionActivateCarrierOffer;
                goto LABEL_53;
              }

              if ([v8 isEqualToString:@"actionRefLeaveGroupSession"])
              {
                v10 = objc_alloc_init(VUIActionLeaveGroupSession);
                goto LABEL_12;
              }

              if ([v8 isEqualToString:@"actionRefSearchRAC"])
              {
                v19 = VUIActionSearchRAC;
                goto LABEL_53;
              }

              if (![v8 isEqualToString:@"actionRefOpenWebLink"])
              {
                if (![v8 isEqualToString:@"actionRefAskToBuy"])
                {
                  v10 = [_TtC8VideosUI8VideosUI vuiSwiftAction:v6 appContext:v7];
                  goto LABEL_12;
                }

                v19 = VUIActionAskToBuy;
                goto LABEL_53;
              }

              if (!v7)
              {
                v13 = VUIDefaultLogObject();
                if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_18;
                }

                goto LABEL_17;
              }

              v18 = VUIActionOpenWebLink;
            }

LABEL_28:
            v10 = [[v18 alloc] initWithContextData:v9 appContext:v7];
            goto LABEL_12;
          }

          v19 = VUIActionUpdateSportsFavorite;
        }

LABEL_53:
        v10 = [[v19 alloc] initWithContextData:v9];
        goto LABEL_12;
      }

      v20 = [VUIActionRemoveFromPlayHistory alloc];
      v21 = v9;
      v22 = 1;
    }

    v10 = [(VUIActionRemoveFromPlayHistory *)v20 initWithContextData:v21 isContinueWatching:v22];
    goto LABEL_12;
  }

  v12 = VUIDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = 0;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIApplicationAction: Unknown action type %@", &v23, 0xCu);
  }

  v11 = 0;
LABEL_21:

  return v11;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 1);
  }
}

- (void)_finalizeWithSuccess:(BOOL)a3 targetResponder:(id)a4 documentOptions:(id)a5 completion:(id)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__VUIAction__finalizeWithSuccess_targetResponder_documentOptions_completion___block_invoke;
  aBlock[3] = &unk_1E8731A88;
  v22 = v10;
  v13 = v12;
  v23 = v11;
  v24 = v13;
  v14 = v11;
  v15 = v10;
  v16 = _Block_copy(aBlock);
  if (v8)
  {
    v17 = [(VUIAction *)self successAction];

    if (v17)
    {
      v18 = [(VUIAction *)self successAction];
LABEL_6:
      v20 = v18;
      v16[2](v16, v18);

      goto LABEL_9;
    }
  }

  else
  {
    v19 = [(VUIAction *)self failureAction];

    if (v19)
    {
      v18 = [(VUIAction *)self failureAction];
      goto LABEL_6;
    }
  }

  if (v13)
  {
    (*(v13 + 2))(v13, v8);
  }

LABEL_9:
}

void __77__VUIAction__finalizeWithSuccess_targetResponder_documentOptions_completion___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  if (+[VUIUtilities isSUIEnabled])
  {
    v3 = +[VUIInterfaceFactory sharedInstance];
    v4 = [v3 controllerPresenter];
    [v4 invokeAction:v5 targetResponder:a1[4] completion:a1[6]];
  }

  else
  {
    [VUIApplicationRouter invokeAction:v5 targetResponder:a1[4] documentOptions:a1[5] completion:a1[6]];
  }
}

- (id)_siriConfigInfo
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [v2 copy];

  return v3;
}

@end