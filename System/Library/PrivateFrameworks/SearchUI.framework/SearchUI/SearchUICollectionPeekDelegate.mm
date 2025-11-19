@interface SearchUICollectionPeekDelegate
+ (id)menuConfigurationForCommandHandler:(id)a3;
+ (void)contextMenuInteractionWillDisplayMenuForCommandHandler:(id)a3 animator:(id)a4;
+ (void)contextMenuInteractionWillEndForCommandHandler:(id)a3 animator:(id)a4;
+ (void)contextMenuInteractionWillPerformPreviewActionForMenuWithCommandHandler:(id)a3 animator:(id)a4;
- (SearchUICollectionPeekDelegate)initWithViewController:(id)a3;
- (SearchUICollectionViewController)collectionViewController;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)generateTargetPreviewForInteraction:(id)a3 forItemWithIdentifier:(id)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
@end

@implementation SearchUICollectionPeekDelegate

- (SearchUICollectionPeekDelegate)initWithViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SearchUICollectionPeekDelegate;
  v5 = [(SearchUICollectionPeekDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUICollectionPeekDelegate *)v5 setCollectionViewController:v4];
  }

  return v6;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(SearchUICollectionPeekDelegate *)self collectionViewController];
  v8 = [v7 collectionView];
  v9 = [v8 indexPathForItemAtPoint:{x, y}];
  if (!v9 || ![SearchUIUtilities deviceIsAuthenticatedForView:v8])
  {
    v16 = 0;
    goto LABEL_22;
  }

  v10 = [v8 hitTest:0 withEvent:{x, y}];
  v11 = [v7 dataSource];
  v12 = [v11 itemIdentifierForIndexPath:v9];

  v13 = [v12 identifyingResult];
  v14 = [v13 applicationBundleIdentifier];
  if (+[SearchUIUtilities bundleIdentifierIsBlockedForScreenTimeExpiration:](SearchUIUtilities, "bundleIdentifierIsBlockedForScreenTimeExpiration:", v14) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v10 isThreeDTouchEnabled] & 1) != 0)
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v17 = [v8 cellForItemAtIndexPath:v9];
  if (v17 && [v10 isDescendantOfView:v17] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = [v17 searchui_focusStyle];
    v19 = [v7 commandEnvironmentForIndexPath:v9];
    if (v18 == 7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = [v7 commandEnvironmentForIndexPath:v9];
    if (isKindOfClass)
    {
      goto LABEL_15;
    }
  }

  if ([SearchUICommandHandler hasValidHandlerForRowModel:v12 environment:v19])
  {
    goto LABEL_19;
  }

  v20 = [v12 cardSection];
  v21 = [v20 previewButtonItems];
  if (v21)
  {

    goto LABEL_19;
  }

  if ([v12 supportsCustomUserReportRequestAfforance])
  {
    v16 = 0;
    goto LABEL_20;
  }

  v25 = [v12 cardSection];
  v26 = [v25 userReportRequest];

  if (v26)
  {
LABEL_19:
    v22 = [SearchUICommandHandler previewHandlerForRowModel:v12 environment:v19];
    [(SearchUICollectionPeekDelegate *)self setCommandHandler:v22];

    v23 = objc_opt_class();
    v20 = [(SearchUICollectionPeekDelegate *)self commandHandler];
    v16 = [v23 menuConfigurationForCommandHandler:v20];
LABEL_20:

    goto LABEL_21;
  }

LABEL_15:
  v16 = 0;
LABEL_21:

LABEL_22:

  return v16;
}

+ (id)menuConfigurationForCommandHandler:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69DC8D8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__SearchUICollectionPeekDelegate_menuConfigurationForCommandHandler___block_invoke;
  v9[3] = &unk_1E85B2590;
  v10 = v3;
  v5 = v3;
  v6 = [v5 actionProvider];
  v7 = [v4 configurationWithIdentifier:0 previewProvider:v9 actionProvider:v6];

  return v7;
}

id __69__SearchUICollectionPeekDelegate_menuConfigurationForCommandHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [*(a1 + 32) prepareViewController:v2 forTriggerEvent:5];
    if (![SearchUIUtilities canShowViewController:v2]|| (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5 = v2, (isKindOfClass & 1) != 0))
    {
      [SearchUIUtilities requestDeviceUnlock:0];
      v5 = 0;
    }

    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)generateTargetPreviewForInteraction:(id)a3 forItemWithIdentifier:(id)a4
{
  v5 = a3;
  v6 = [(SearchUICollectionPeekDelegate *)self collectionViewController];
  v7 = [v6 collectionView];

  [v5 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = 0;
  if ([v7 pointInside:0 withEvent:{v9, v11}])
  {
    v13 = [v7 indexPathForItemAtPoint:{v9, v11}];
    if (!v13)
    {
      v12 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v14 = [v7 cellForItemAtIndexPath:v13];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v12 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v15 = v14;
    v16 = [v15 highlightReferenceView];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18;

    v20 = objc_opt_new();
    v21 = [v15 backgroundView];
    if (v21)
    {
    }

    else
    {
      v22 = [(SearchUICollectionPeekDelegate *)self commandHandler];
      v23 = [v22 viewController];

      if (!v23)
      {
        goto LABEL_14;
      }
    }

    v24 = [MEMORY[0x1E69DC888] clearColor];
    [v20 setBackgroundColor:v24];

LABEL_14:
    v25 = [v15 rowModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v15 rowModel];
      v27 = [v26 supportsCustomHighlightBehavior];

      if (!v27)
      {
LABEL_18:
        v12 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v19 parameters:v20];

        goto LABEL_19;
      }

      v28 = [v15 contentView];

      v29 = MEMORY[0x1E69DC728];
      [v15 highlightFrame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      [v15 highlightFrameCornerRadius];
      v25 = [v29 bezierPathWithRoundedRect:v31 cornerRadius:{v33, v35, v37, v38}];
      [v20 setVisiblePath:v25];
      v19 = v28;
    }

    goto LABEL_18;
  }

LABEL_21:

  return v12;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = objc_opt_class();
  v8 = [(SearchUICollectionPeekDelegate *)self commandHandler];
  [v7 contextMenuInteractionWillDisplayMenuForCommandHandler:v8 animator:v6];
}

+ (void)contextMenuInteractionWillDisplayMenuForCommandHandler:(id)a3 animator:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__SearchUICollectionPeekDelegate_contextMenuInteractionWillDisplayMenuForCommandHandler_animator___block_invoke;
  v7[3] = &unk_1E85B24C8;
  v8 = v5;
  v6 = v5;
  [a4 addAnimations:v7];
  [v6 didPreview];
}

void __98__SearchUICollectionPeekDelegate_contextMenuInteractionWillDisplayMenuForCommandHandler_animator___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) environment];
  v1 = [v3 presentingViewController];
  v2 = [v1 view];
  [v2 setAlpha:0.75];
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = objc_opt_class();
  v8 = [(SearchUICollectionPeekDelegate *)self commandHandler];
  [v7 contextMenuInteractionWillPerformPreviewActionForMenuWithCommandHandler:v8 animator:v6];
}

+ (void)contextMenuInteractionWillPerformPreviewActionForMenuWithCommandHandler:(id)a3 animator:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 viewController];
  [v6 setPreferredCommitStyle:v7 != 0];

  v8 = [v5 rowModel];
  v9 = [v8 cardSection];
  v10 = [v9 previewCommand];
  if (v10)
  {
    v11 = [v9 command];
    if ([v10 isEqual:v11])
    {
      v12 = [v5 prefersModalPresentation];

      if ((v12 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (![v5 prefersModalPresentation])
  {
    goto LABEL_9;
  }

  v13 = [v5 rowModel];
  v14 = [v5 environment];
  v15 = [SearchUICommandHandler handlerForRowModel:v13 environment:v14];

  v5 = v15;
LABEL_9:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __115__SearchUICollectionPeekDelegate_contextMenuInteractionWillPerformPreviewActionForMenuWithCommandHandler_animator___block_invoke;
  v17[3] = &unk_1E85B24C8;
  v18 = v5;
  v16 = v5;
  [v6 addAnimations:v17];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = objc_opt_class();
  v8 = [(SearchUICollectionPeekDelegate *)self commandHandler];
  [v7 contextMenuInteractionWillEndForCommandHandler:v8 animator:v6];

  [(SearchUICollectionPeekDelegate *)self setCommandHandler:0];
}

+ (void)contextMenuInteractionWillEndForCommandHandler:(id)a3 animator:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__SearchUICollectionPeekDelegate_contextMenuInteractionWillEndForCommandHandler_animator___block_invoke;
  v7[3] = &unk_1E85B24C8;
  v8 = v5;
  v6 = v5;
  [a4 addAnimations:v7];
}

void __90__SearchUICollectionPeekDelegate_contextMenuInteractionWillEndForCommandHandler_animator___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) environment];
  v1 = [v3 presentingViewController];
  v2 = [v1 view];
  [v2 setAlpha:1.0];
}

- (SearchUICollectionViewController)collectionViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewController);

  return WeakRetained;
}

@end