@interface SearchUIStoreButtonItemViewController
+ (id)lockupCache;
+ (id)lockupViewGroup;
- (SearchUIStoreButtonItemViewController)init;
- (id)currentStoreButtonIdentifier;
- (id)environment;
- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer;
- (id)presentingViewControllerForLockupView:(id)view;
- (id)storeButtonItem;
- (int)currentStoreButtonIdentifierType;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)size;
- (void)updateWithButtonItem:(id)item buttonItemViewType:(unint64_t)type;
@end

@implementation SearchUIStoreButtonItemViewController

- (SearchUIStoreButtonItemViewController)init
{
  v7.receiver = self;
  v7.super_class = SearchUIStoreButtonItemViewController;
  v2 = [(SearchUIButtonItemViewController *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lockupViewGroup = [objc_opt_class() lockupViewGroup];
    [v3 setGroup:lockupViewGroup];

    [v3 setSize:*MEMORY[0x1E698B380]];
    [v3 setDelegate:v2];
    [(SearchUIStoreButtonItemViewController *)v2 setLockupView:v3];
    v5 = [[SearchUILockupViewContainer alloc] initWithLockupView:v3];
    [(SearchUIButtonItemViewController *)v2 setView:v5];
  }

  return v2;
}

- (void)updateWithButtonItem:(id)item buttonItemViewType:(unint64_t)type
{
  itemCopy = item;
  buttonItem = [(SearchUIButtonItemViewController *)self buttonItem];
  v7 = [itemCopy isEqual:buttonItem];

  if ((v7 & 1) == 0)
  {
    [(SearchUIButtonItemViewController *)self setButtonItem:itemCopy];
    currentStoreButtonIdentifier = [(SearchUIStoreButtonItemViewController *)self currentStoreButtonIdentifier];
    currentStoreButtonIdentifierType = [(SearchUIStoreButtonItemViewController *)self currentStoreButtonIdentifierType];
    if (!currentStoreButtonIdentifier)
    {
      lockupView = [(SearchUIStoreButtonItemViewController *)self lockupView];
      [lockupView setAlpha:0.0];

LABEL_12:
      goto LABEL_13;
    }

    v10 = currentStoreButtonIdentifierType;
    lockupCache = [objc_opt_class() lockupCache];
    storeButtonItem = [(SearchUIStoreButtonItemViewController *)self storeButtonItem];
    v13 = [lockupCache objectForKey:storeButtonItem];

    if (v13)
    {
      v14 = MEMORY[0x1E69D9240];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __81__SearchUIStoreButtonItemViewController_updateWithButtonItem_buttonItemViewType___block_invoke;
      v33[3] = &unk_1E85B2540;
      v33[4] = self;
      v34 = v13;
      [v14 performWithoutAnimations:v33];
      v15 = v34;
    }

    else
    {
      lockupView2 = [(SearchUIStoreButtonItemViewController *)self lockupView];
      [lockupView2 setAlpha:0.0];

      lockupView3 = [(SearchUIStoreButtonItemViewController *)self lockupView];
      [lockupView3 setLockup:0];

      lockupView4 = [(SearchUIStoreButtonItemViewController *)self lockupView];
      request = [lockupView4 request];
      v21 = [request id];
      stringValue = [v21 stringValue];
      v23 = [currentStoreButtonIdentifier isEqualToString:stringValue];

      if (v23)
      {
        goto LABEL_11;
      }

      if (v10 != 1)
      {
        if (!v10)
        {
          v24 = [objc_alloc(MEMORY[0x1E698B398]) initWithStringValue:currentStoreButtonIdentifier];
          [(SearchUIStoreButtonItemViewController *)self setAdamID:currentStoreButtonIdentifier];
          v25 = objc_alloc(MEMORY[0x1E698B3C0]);
          v26 = [v25 initWithID:v24 kind:*MEMORY[0x1E698B360] context:*MEMORY[0x1E698B330]];
          lockupView5 = [(SearchUIStoreButtonItemViewController *)self lockupView];
          [lockupView5 setRequest:v26];
        }

        goto LABEL_11;
      }

      [(SearchUIStoreButtonItemViewController *)self setAdamID:0];
      lockupViewGroup = [objc_opt_class() lockupViewGroup];
      v29 = *MEMORY[0x1E698B330];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __81__SearchUIStoreButtonItemViewController_updateWithButtonItem_buttonItemViewType___block_invoke_2;
      v30[3] = &unk_1E85B3230;
      v31 = itemCopy;
      selfCopy = self;
      [lockupViewGroup _lockupRequestForBundleID:currentStoreButtonIdentifier withContext:v29 completionBlock:v30];

      v15 = v31;
    }

LABEL_11:
    goto LABEL_12;
  }

LABEL_13:
}

void __81__SearchUIStoreButtonItemViewController_updateWithButtonItem_buttonItemViewType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lockupView];
  [v2 setRequest:0];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) lockupView];
  [v4 setLockup:v3];

  v5 = [*(a1 + 32) lockupView];
  [v5 setAlpha:1.0];
}

void __81__SearchUIStoreButtonItemViewController_updateWithButtonItem_buttonItemViewType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69D9240];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__SearchUIStoreButtonItemViewController_updateWithButtonItem_buttonItemViewType___block_invoke_3;
  v8[3] = &unk_1E85B26A8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  [v4 dispatchMainIfNecessary:v8];
}

void __81__SearchUIStoreButtonItemViewController_updateWithButtonItem_buttonItemViewType___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) buttonItem];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = [*(a1 + 48) id];
    v5 = [v4 stringValue];
    [*(a1 + 40) setAdamID:v5];

    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) lockupView];
    [v7 setRequest:v6];
  }
}

- (id)storeButtonItem
{
  buttonItem = [(SearchUIButtonItemViewController *)self buttonItem];
  sfButtonItem = [buttonItem sfButtonItem];

  return sfButtonItem;
}

- (id)currentStoreButtonIdentifier
{
  storeButtonItem = [(SearchUIStoreButtonItemViewController *)self storeButtonItem];
  identifier = [storeButtonItem identifier];

  return identifier;
}

- (int)currentStoreButtonIdentifierType
{
  storeButtonItem = [(SearchUIStoreButtonItemViewController *)self storeButtonItem];
  identifierType = [storeButtonItem identifierType];

  return identifierType;
}

+ (id)lockupCache
{
  if (lockupCache_onceToken != -1)
  {
    +[SearchUIStoreButtonItemViewController lockupCache];
  }

  v3 = lockupCache_lockupCache;

  return v3;
}

uint64_t __52__SearchUIStoreButtonItemViewController_lockupCache__block_invoke()
{
  lockupCache_lockupCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)lockupViewGroup
{
  if (lockupViewGroup_onceToken != -1)
  {
    +[SearchUIStoreButtonItemViewController lockupViewGroup];
  }

  v3 = lockupViewGroup_group;

  return v3;
}

uint64_t __56__SearchUIStoreButtonItemViewController_lockupViewGroup__block_invoke()
{
  lockupViewGroup_group = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"com.apple.SearchUI.LockupViewGroup"];

  return MEMORY[0x1EEE66BB8]();
}

- (id)presentingViewControllerForLockupView:(id)view
{
  environment = [(SearchUIStoreButtonItemViewController *)self environment];
  presentingViewController = [environment presentingViewController];

  return presentingViewController;
}

- (id)environment
{
  feedbackDelegate = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v3 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

  return v3;
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  v5 = MEMORY[0x1E69D9240];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SearchUIStoreButtonItemViewController_lockupViewDidFinishRequest___block_invoke;
  v7[3] = &unk_1E85B2540;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  [v5 dispatchMainIfNecessary:v7];
}

void __68__SearchUIStoreButtonItemViewController_lockupViewDidFinishRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lockup];
  v3 = [v2 id];
  v4 = [v3 stringValue];

  v5 = [*(a1 + 40) adamID];
  LODWORD(v3) = [v4 isEqualToString:v5];

  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__SearchUIStoreButtonItemViewController_lockupViewDidFinishRequest___block_invoke_2;
    v9[3] = &unk_1E85B24C8;
    v10 = *(a1 + 32);
    [SearchUIUtilities performAnimatableChanges:v9];
    v6 = [objc_opt_class() lockupCache];
    v7 = [*(a1 + 32) lockup];
    v8 = [*(a1 + 40) storeButtonItem];
    [v6 setObject:v7 forKey:v8];
  }
}

- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)size
{
  [size intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  v9 = 74.0;
  if (v5 >= 74.0)
  {
    v9 = v5;
  }

  if (!isMacOS)
  {
    v5 = v9;
  }

  lockupView = [(SearchUIStoreButtonItemViewController *)self lockupView];
  LODWORD(v11) = 1148846080;
  [lockupView setLayoutSize:v5 withContentPriority:{v7, v11}];

  lockupView2 = [(SearchUIStoreButtonItemViewController *)self lockupView];
  [lockupView2 setCustomAlignmentRectInsets:{10.0, 0.0, 10.0, 0.0}];
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  feedbackDelegate = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    feedbackDelegate2 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
    lockup = [viewCopy lockup];
    v11 = [lockup id];
    stringValue = [v11 stringValue];
    [feedbackDelegate2 lockupViewForAppIdentifier:stringValue didFailRequestWithError:errorCopy];
  }
}

- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer
{
  viewCopy = view;
  [(SearchUIButtonItemViewController *)self buttonPressed];
  feedbackDelegate = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    feedbackDelegate2 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
    lockup = [viewCopy lockup];
    v10 = [lockup id];
    stringValue = [v10 stringValue];
    [feedbackDelegate2 lockupViewEngagedForAppIdentifier:stringValue];
  }

  lockupView = [(SearchUIStoreButtonItemViewController *)self lockupView];
  appearMetricsActivity = [lockupView appearMetricsActivity];

  return appearMetricsActivity;
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  if ([changeCopy isEqualToString:*MEMORY[0x1E698B2B0]])
  {
    [(SearchUIStoreButtonItemViewController *)self setStartedInstalling:1];
  }

  else if ([(SearchUIStoreButtonItemViewController *)self startedInstalling])
  {
    if ([changeCopy isEqualToString:*MEMORY[0x1E698B2B8]])
    {
      storeButtonItem = [(SearchUIStoreButtonItemViewController *)self storeButtonItem];
      shouldOpenAppAfterInstallCompletes = [storeButtonItem shouldOpenAppAfterInstallCompletes];

      if (shouldOpenAppAfterInstallCompletes)
      {
        v9 = objc_alloc(MEMORY[0x1E69635F8]);
        lockup = [viewCopy lockup];
        v11 = [lockup id];
        v12 = [v9 initWithStoreItemIdentifier:objc_msgSend(v11 error:{"int64value"), 0}];

        bundleIdentifier = [v12 bundleIdentifier];
        environment = [(SearchUIStoreButtonItemViewController *)self environment];
        [SearchUILaunchAppHandler openApplicationWithBundleIdentifier:bundleIdentifier environment:environment];
      }
    }
  }

  feedbackDelegate = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    feedbackDelegate2 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
    lockup2 = [viewCopy lockup];
    v19 = [lockup2 id];
    stringValue = [v19 stringValue];
    [feedbackDelegate2 lockupViewForAppIdentifier:stringValue didChangeState:changeCopy];
  }
}

@end