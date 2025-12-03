@interface SearchUICollectionPeekDelegate
+ (id)menuConfigurationForCommandHandler:(id)handler;
+ (void)contextMenuInteractionWillDisplayMenuForCommandHandler:(id)handler animator:(id)animator;
+ (void)contextMenuInteractionWillEndForCommandHandler:(id)handler animator:(id)animator;
+ (void)contextMenuInteractionWillPerformPreviewActionForMenuWithCommandHandler:(id)handler animator:(id)animator;
- (SearchUICollectionPeekDelegate)initWithViewController:(id)controller;
- (SearchUICollectionViewController)collectionViewController;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)generateTargetPreviewForInteraction:(id)interaction forItemWithIdentifier:(id)identifier;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
@end

@implementation SearchUICollectionPeekDelegate

- (SearchUICollectionPeekDelegate)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SearchUICollectionPeekDelegate;
  v5 = [(SearchUICollectionPeekDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUICollectionPeekDelegate *)v5 setCollectionViewController:controllerCopy];
  }

  return v6;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  collectionViewController = [(SearchUICollectionPeekDelegate *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  v9 = [collectionView indexPathForItemAtPoint:{x, y}];
  if (!v9 || ![SearchUIUtilities deviceIsAuthenticatedForView:collectionView])
  {
    v16 = 0;
    goto LABEL_22;
  }

  v10 = [collectionView hitTest:0 withEvent:{x, y}];
  dataSource = [collectionViewController dataSource];
  v12 = [dataSource itemIdentifierForIndexPath:v9];

  identifyingResult = [v12 identifyingResult];
  applicationBundleIdentifier = [identifyingResult applicationBundleIdentifier];
  if (+[SearchUIUtilities bundleIdentifierIsBlockedForScreenTimeExpiration:](SearchUIUtilities, "bundleIdentifierIsBlockedForScreenTimeExpiration:", applicationBundleIdentifier) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v10 isThreeDTouchEnabled] & 1) != 0)
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v17 = [collectionView cellForItemAtIndexPath:v9];
  if (v17 && [v10 isDescendantOfView:v17] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    searchui_focusStyle = [v17 searchui_focusStyle];
    v19 = [collectionViewController commandEnvironmentForIndexPath:v9];
    if (searchui_focusStyle == 7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = [collectionViewController commandEnvironmentForIndexPath:v9];
    if (isKindOfClass)
    {
      goto LABEL_15;
    }
  }

  if ([SearchUICommandHandler hasValidHandlerForRowModel:v12 environment:v19])
  {
    goto LABEL_19;
  }

  cardSection = [v12 cardSection];
  previewButtonItems = [cardSection previewButtonItems];
  if (previewButtonItems)
  {

    goto LABEL_19;
  }

  if ([v12 supportsCustomUserReportRequestAfforance])
  {
    v16 = 0;
    goto LABEL_20;
  }

  cardSection2 = [v12 cardSection];
  userReportRequest = [cardSection2 userReportRequest];

  if (userReportRequest)
  {
LABEL_19:
    v22 = [SearchUICommandHandler previewHandlerForRowModel:v12 environment:v19];
    [(SearchUICollectionPeekDelegate *)self setCommandHandler:v22];

    v23 = objc_opt_class();
    cardSection = [(SearchUICollectionPeekDelegate *)self commandHandler];
    v16 = [v23 menuConfigurationForCommandHandler:cardSection];
LABEL_20:

    goto LABEL_21;
  }

LABEL_15:
  v16 = 0;
LABEL_21:

LABEL_22:

  return v16;
}

+ (id)menuConfigurationForCommandHandler:(id)handler
{
  handlerCopy = handler;
  v4 = MEMORY[0x1E69DC8D8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__SearchUICollectionPeekDelegate_menuConfigurationForCommandHandler___block_invoke;
  v9[3] = &unk_1E85B2590;
  v10 = handlerCopy;
  v5 = handlerCopy;
  actionProvider = [v5 actionProvider];
  v7 = [v4 configurationWithIdentifier:0 previewProvider:v9 actionProvider:actionProvider];

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

- (id)generateTargetPreviewForInteraction:(id)interaction forItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  collectionViewController = [(SearchUICollectionPeekDelegate *)self collectionViewController];
  collectionView = [collectionViewController collectionView];

  [interactionCopy locationInView:collectionView];
  v9 = v8;
  v11 = v10;

  v12 = 0;
  if ([collectionView pointInside:0 withEvent:{v9, v11}])
  {
    v13 = [collectionView indexPathForItemAtPoint:{v9, v11}];
    if (!v13)
    {
      v12 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v14 = [collectionView cellForItemAtIndexPath:v13];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v12 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v15 = v14;
    highlightReferenceView = [v15 highlightReferenceView];
    v17 = highlightReferenceView;
    if (highlightReferenceView)
    {
      v18 = highlightReferenceView;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18;

    v20 = objc_opt_new();
    backgroundView = [v15 backgroundView];
    if (backgroundView)
    {
    }

    else
    {
      commandHandler = [(SearchUICollectionPeekDelegate *)self commandHandler];
      viewController = [commandHandler viewController];

      if (!viewController)
      {
        goto LABEL_14;
      }
    }

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v20 setBackgroundColor:clearColor];

LABEL_14:
    rowModel = [v15 rowModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rowModel2 = [v15 rowModel];
      supportsCustomHighlightBehavior = [rowModel2 supportsCustomHighlightBehavior];

      if (!supportsCustomHighlightBehavior)
      {
LABEL_18:
        v12 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v19 parameters:v20];

        goto LABEL_19;
      }

      contentView = [v15 contentView];

      v29 = MEMORY[0x1E69DC728];
      [v15 highlightFrame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      [v15 highlightFrameCornerRadius];
      rowModel = [v29 bezierPathWithRoundedRect:v31 cornerRadius:{v33, v35, v37, v38}];
      [v20 setVisiblePath:rowModel];
      v19 = contentView;
    }

    goto LABEL_18;
  }

LABEL_21:

  return v12;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v7 = objc_opt_class();
  commandHandler = [(SearchUICollectionPeekDelegate *)self commandHandler];
  [v7 contextMenuInteractionWillDisplayMenuForCommandHandler:commandHandler animator:animatorCopy];
}

+ (void)contextMenuInteractionWillDisplayMenuForCommandHandler:(id)handler animator:(id)animator
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__SearchUICollectionPeekDelegate_contextMenuInteractionWillDisplayMenuForCommandHandler_animator___block_invoke;
  v7[3] = &unk_1E85B24C8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [animator addAnimations:v7];
  [v6 didPreview];
}

void __98__SearchUICollectionPeekDelegate_contextMenuInteractionWillDisplayMenuForCommandHandler_animator___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) environment];
  v1 = [v3 presentingViewController];
  v2 = [v1 view];
  [v2 setAlpha:0.75];
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v7 = objc_opt_class();
  commandHandler = [(SearchUICollectionPeekDelegate *)self commandHandler];
  [v7 contextMenuInteractionWillPerformPreviewActionForMenuWithCommandHandler:commandHandler animator:animatorCopy];
}

+ (void)contextMenuInteractionWillPerformPreviewActionForMenuWithCommandHandler:(id)handler animator:(id)animator
{
  handlerCopy = handler;
  animatorCopy = animator;
  viewController = [handlerCopy viewController];
  [animatorCopy setPreferredCommitStyle:viewController != 0];

  rowModel = [handlerCopy rowModel];
  cardSection = [rowModel cardSection];
  previewCommand = [cardSection previewCommand];
  if (previewCommand)
  {
    command = [cardSection command];
    if ([previewCommand isEqual:command])
    {
      prefersModalPresentation = [handlerCopy prefersModalPresentation];

      if ((prefersModalPresentation & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (![handlerCopy prefersModalPresentation])
  {
    goto LABEL_9;
  }

  rowModel2 = [handlerCopy rowModel];
  environment = [handlerCopy environment];
  v15 = [SearchUICommandHandler handlerForRowModel:rowModel2 environment:environment];

  handlerCopy = v15;
LABEL_9:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __115__SearchUICollectionPeekDelegate_contextMenuInteractionWillPerformPreviewActionForMenuWithCommandHandler_animator___block_invoke;
  v17[3] = &unk_1E85B24C8;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [animatorCopy addAnimations:v17];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v7 = objc_opt_class();
  commandHandler = [(SearchUICollectionPeekDelegate *)self commandHandler];
  [v7 contextMenuInteractionWillEndForCommandHandler:commandHandler animator:animatorCopy];

  [(SearchUICollectionPeekDelegate *)self setCommandHandler:0];
}

+ (void)contextMenuInteractionWillEndForCommandHandler:(id)handler animator:(id)animator
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__SearchUICollectionPeekDelegate_contextMenuInteractionWillEndForCommandHandler_animator___block_invoke;
  v7[3] = &unk_1E85B24C8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [animator addAnimations:v7];
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