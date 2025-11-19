@interface SearchUIStoreButtonItemViewController
+ (id)lockupCache;
+ (id)lockupViewGroup;
- (SearchUIStoreButtonItemViewController)init;
- (id)currentStoreButtonIdentifier;
- (id)environment;
- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4;
- (id)presentingViewControllerForLockupView:(id)a3;
- (id)storeButtonItem;
- (int)currentStoreButtonIdentifierType;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)a3;
- (void)updateWithButtonItem:(id)a3 buttonItemViewType:(unint64_t)a4;
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
    v4 = [objc_opt_class() lockupViewGroup];
    [v3 setGroup:v4];

    [v3 setSize:*MEMORY[0x1E698B380]];
    [v3 setDelegate:v2];
    [(SearchUIStoreButtonItemViewController *)v2 setLockupView:v3];
    v5 = [[SearchUILockupViewContainer alloc] initWithLockupView:v3];
    [(SearchUIButtonItemViewController *)v2 setView:v5];
  }

  return v2;
}

- (void)updateWithButtonItem:(id)a3 buttonItemViewType:(unint64_t)a4
{
  v5 = a3;
  v6 = [(SearchUIButtonItemViewController *)self buttonItem];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    [(SearchUIButtonItemViewController *)self setButtonItem:v5];
    v8 = [(SearchUIStoreButtonItemViewController *)self currentStoreButtonIdentifier];
    v9 = [(SearchUIStoreButtonItemViewController *)self currentStoreButtonIdentifierType];
    if (!v8)
    {
      v16 = [(SearchUIStoreButtonItemViewController *)self lockupView];
      [v16 setAlpha:0.0];

LABEL_12:
      goto LABEL_13;
    }

    v10 = v9;
    v11 = [objc_opt_class() lockupCache];
    v12 = [(SearchUIStoreButtonItemViewController *)self storeButtonItem];
    v13 = [v11 objectForKey:v12];

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
      v17 = [(SearchUIStoreButtonItemViewController *)self lockupView];
      [v17 setAlpha:0.0];

      v18 = [(SearchUIStoreButtonItemViewController *)self lockupView];
      [v18 setLockup:0];

      v19 = [(SearchUIStoreButtonItemViewController *)self lockupView];
      v20 = [v19 request];
      v21 = [v20 id];
      v22 = [v21 stringValue];
      v23 = [v8 isEqualToString:v22];

      if (v23)
      {
        goto LABEL_11;
      }

      if (v10 != 1)
      {
        if (!v10)
        {
          v24 = [objc_alloc(MEMORY[0x1E698B398]) initWithStringValue:v8];
          [(SearchUIStoreButtonItemViewController *)self setAdamID:v8];
          v25 = objc_alloc(MEMORY[0x1E698B3C0]);
          v26 = [v25 initWithID:v24 kind:*MEMORY[0x1E698B360] context:*MEMORY[0x1E698B330]];
          v27 = [(SearchUIStoreButtonItemViewController *)self lockupView];
          [v27 setRequest:v26];
        }

        goto LABEL_11;
      }

      [(SearchUIStoreButtonItemViewController *)self setAdamID:0];
      v28 = [objc_opt_class() lockupViewGroup];
      v29 = *MEMORY[0x1E698B330];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __81__SearchUIStoreButtonItemViewController_updateWithButtonItem_buttonItemViewType___block_invoke_2;
      v30[3] = &unk_1E85B3230;
      v31 = v5;
      v32 = self;
      [v28 _lockupRequestForBundleID:v8 withContext:v29 completionBlock:v30];

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
  v2 = [(SearchUIButtonItemViewController *)self buttonItem];
  v3 = [v2 sfButtonItem];

  return v3;
}

- (id)currentStoreButtonIdentifier
{
  v2 = [(SearchUIStoreButtonItemViewController *)self storeButtonItem];
  v3 = [v2 identifier];

  return v3;
}

- (int)currentStoreButtonIdentifierType
{
  v2 = [(SearchUIStoreButtonItemViewController *)self storeButtonItem];
  v3 = [v2 identifierType];

  return v3;
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

- (id)presentingViewControllerForLockupView:(id)a3
{
  v3 = [(SearchUIStoreButtonItemViewController *)self environment];
  v4 = [v3 presentingViewController];

  return v4;
}

- (id)environment
{
  v2 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v3 = [SearchUIUtilities environmentForDelegate:v2];

  return v3;
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69D9240];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SearchUIStoreButtonItemViewController_lockupViewDidFinishRequest___block_invoke;
  v7[3] = &unk_1E85B2540;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)a3
{
  [a3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x1E69D9240] isMacOS];
  v9 = 74.0;
  if (v5 >= 74.0)
  {
    v9 = v5;
  }

  if (!v8)
  {
    v5 = v9;
  }

  v10 = [(SearchUIStoreButtonItemViewController *)self lockupView];
  LODWORD(v11) = 1148846080;
  [v10 setLayoutSize:v5 withContentPriority:{v7, v11}];

  v12 = [(SearchUIStoreButtonItemViewController *)self lockupView];
  [v12 setCustomAlignmentRectInsets:{10.0, 0.0, 10.0, 0.0}];
}

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
    v10 = [v13 lockup];
    v11 = [v10 id];
    v12 = [v11 stringValue];
    [v9 lockupViewForAppIdentifier:v12 didFailRequestWithError:v6];
  }
}

- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4
{
  v5 = a3;
  [(SearchUIButtonItemViewController *)self buttonPressed];
  v6 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
    v9 = [v5 lockup];
    v10 = [v9 id];
    v11 = [v10 stringValue];
    [v8 lockupViewEngagedForAppIdentifier:v11];
  }

  v12 = [(SearchUIStoreButtonItemViewController *)self lockupView];
  v13 = [v12 appearMetricsActivity];

  return v13;
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v21 = a3;
  v6 = a4;
  if ([v6 isEqualToString:*MEMORY[0x1E698B2B0]])
  {
    [(SearchUIStoreButtonItemViewController *)self setStartedInstalling:1];
  }

  else if ([(SearchUIStoreButtonItemViewController *)self startedInstalling])
  {
    if ([v6 isEqualToString:*MEMORY[0x1E698B2B8]])
    {
      v7 = [(SearchUIStoreButtonItemViewController *)self storeButtonItem];
      v8 = [v7 shouldOpenAppAfterInstallCompletes];

      if (v8)
      {
        v9 = objc_alloc(MEMORY[0x1E69635F8]);
        v10 = [v21 lockup];
        v11 = [v10 id];
        v12 = [v9 initWithStoreItemIdentifier:objc_msgSend(v11 error:{"int64value"), 0}];

        v13 = [v12 bundleIdentifier];
        v14 = [(SearchUIStoreButtonItemViewController *)self environment];
        [SearchUILaunchAppHandler openApplicationWithBundleIdentifier:v13 environment:v14];
      }
    }
  }

  v15 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(SearchUIButtonItemViewController *)self feedbackDelegate];
    v18 = [v21 lockup];
    v19 = [v18 id];
    v20 = [v19 stringValue];
    [v17 lockupViewForAppIdentifier:v20 didChangeState:v6];
  }
}

@end