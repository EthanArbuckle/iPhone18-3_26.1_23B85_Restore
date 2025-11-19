@interface UISharePlayActivity
+ (BOOL)_canPerform;
+ (unint64_t)_xpcAttributes;
- (id)activityImage;
- (id)activityTitle;
- (id)activityViewController;
- (void)_cleanup;
- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation UISharePlayActivity

+ (BOOL)_canPerform
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    if (_ShareSheetSupportsSharePlayStartFromApp())
    {
      v3 = [(objc_class *)getTUCallCenterClass() sharedInstance];
      v4 = [v3 conversationManager];
      v5 = [v4 isSharePlayAvailable];

      if (v5)
      {
        LOBYTE(v2) = 1;
        return v2;
      }

      v6 = share_sheet_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[(UISharePlayActivity *)v6];
      }
    }

    else
    {
      v6 = share_sheet_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SharePlay: SharePlay is not supported because the app does not have the appropriate entitlement", v8, 2u);
      }
    }

    LOBYTE(v2) = 0;
  }

  return v2;
}

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"SharePlay[Activity]" value:@"SharePlay" table:@"Localizable"];

  return v3;
}

- (id)activityImage
{
  if (activityImage_onceToken != -1)
  {
    [UISharePlayActivity activityImage];
  }

  v3 = activityImage_transportImage;

  return v3;
}

void __36__UISharePlayActivity_activityImage__block_invoke()
{
  v28 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
  v0 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"shareplay" withConfiguration:?];
  v1 = v0;
  if (v0)
  {
    [v0 size];
    v3 = v2;
    [v1 size];
    v5 = v4;
    [v1 size];
    if (v3 <= v5)
    {
      v6 = v7;
    }

    v8 = v6 * 1.2;
    v30.width = v8;
    v30.height = v8;
    UIGraphicsBeginImageContextWithOptions(v30, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    [v1 size];
    CGContextTranslateCTM(CurrentContext, 0.0, v10);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    CGContextSetBlendMode(CurrentContext, kCGBlendModeNormal);
    [v1 size];
    v12 = (v8 - v11) * 0.5 + 0.5;
    [v1 size];
    v14 = 1.0 - (v8 - v13) * 0.5;
    [v1 size];
    v16 = v15;
    [v1 size];
    v18 = v17;
    v19 = [v1 CGImage];
    v31.origin.x = v12;
    v31.origin.y = v14;
    v31.size.width = v16;
    v31.size.height = v18;
    CGContextDrawImage(CurrentContext, v31, v19);
    CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceIn);
    v20 = [MEMORY[0x1E69DC888] whiteColor];
    CGContextSetFillColorWithColor(CurrentContext, [v20 CGColor]);

    [v1 size];
    v32.origin.x = 0.0;
    v32.origin.y = -(v21 + 2.0);
    y = v32.origin.y;
    v32.size.width = v8;
    v32.size.height = v8 + 2.0;
    CGContextFillRect(CurrentContext, v32);
    CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationOver);
    v23 = [MEMORY[0x1E69DC888] systemGreenColor];
    CGContextSetFillColorWithColor(CurrentContext, [v23 CGColor]);

    v33.origin.x = 0.0;
    v33.origin.y = y;
    v33.size.width = v8;
    v33.size.height = v8 + 2.0;
    CGContextFillRect(CurrentContext, v33);
    v24 = UIGraphicsGetImageFromCurrentImageContext();
    v25 = activityImage_transportImage;
    activityImage_transportImage = v24;

    UIGraphicsEndImageContext();
    v26 = [activityImage_transportImage _applicationIconImageForFormat:5 precomposed:0];
    v27 = activityImage_transportImage;
    activityImage_transportImage = v26;
  }
}

- (void)prepareWithActivityItems:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  [SHSheetActivityItemUtilities itemProvidersFromActivityItems:a3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v19 + 1) + 8 * v8);
      v10 = +[SHSheetGroupActivity groupActivityType];
      v11 = [v9 hasItemConformingToTypeIdentifier:v10];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "SharePlay: Found group activity for SharePlay activity: %@", buf, 0xCu);
    }
  }

  else
  {
LABEL_9:

LABEL_14:
    v14 = share_sheet_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, v14, OS_LOG_TYPE_DEFAULT, "SharePlay: No group activities were found for SharePlay activity", buf, 2u);
    }

    v12 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  }

  v15 = [[SHSheetGroupActivitySharingController alloc] initWithItemProvider:v12];
  groupActivitySharingController = self->_groupActivitySharingController;
  self->_groupActivitySharingController = v15;

  [(SHSheetGroupActivitySharingController *)self->_groupActivitySharingController setDelegate:self];
  v17 = [(UIActivity *)self sessionIdentifier];

  if (v17)
  {
    v18 = [(UIActivity *)self sessionIdentifier];
    [(SHSheetGroupActivitySharingController *)self->_groupActivitySharingController setShareSheetSessionID:v18];
  }
}

- (id)activityViewController
{
  v3 = [(UISharePlayActivity *)self groupActivitySharingController];
  v4 = [v3 isPossibleToDirectlyCreateActivity];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(UISharePlayActivity *)self groupActivitySharingController];
  }

  return v5;
}

- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__UISharePlayActivity__prepareWithActivityItems_completion___block_invoke;
  v9[3] = &unk_1E71F9A70;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [(UIActivity *)self _loadItemProvidersFromActivityItems:v6 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __60__UISharePlayActivity__prepareWithActivityItems_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained prepareWithActivityItems:v3];

  v6 = objc_loadWeakRetained((a1 + 40));
  v5 = [v6 groupActivitySharingController];
  [v5 prepareForShareSheetSessionWithCompletion:*(a1 + 32)];
}

- (void)performActivity
{
  v2 = [(UISharePlayActivity *)self groupActivitySharingController];
  [v2 directlyCreateActivity];
}

- (void)_cleanup
{
  [(SHSheetGroupActivitySharingController *)self->_groupActivitySharingController setDelegate:0];
  groupActivitySharingController = self->_groupActivitySharingController;
  self->_groupActivitySharingController = 0;
}

@end