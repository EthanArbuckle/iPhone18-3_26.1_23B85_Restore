@interface PXCPLCloudQuotaConciseSource
+ (id)_placement;
- (PXCPLCloudQuotaConciseSource)init;
- (PXCPLCloudQuotaConciseSource)initWithPlacement:(int64_t)a3;
- (id)_actionForMessageAction:(id)a3;
- (void)_handleInAppMessage:(id)a3;
- (void)_presentInAppAlert:(id)a3;
- (void)currentInAppMessageDidChange:(id)a3;
- (void)setAction:(id)a3;
- (void)setIcon:(id)a3;
- (void)setIconColor:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PXCPLCloudQuotaConciseSource

- (void)currentInAppMessageDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getICQInAppMessageKeySymbolLoc_ptr_240755;
  v14 = getICQInAppMessageKeySymbolLoc_ptr_240755;
  if (!getICQInAppMessageKeySymbolLoc_ptr_240755)
  {
    v7 = iCloudQuotaUILibrary_240757();
    v12[3] = dlsym(v7, "ICQInAppMessageKey");
    getICQInAppMessageKeySymbolLoc_ptr_240755 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v8 = [v5 objectForKeyedSubscript:*v6];

    [(PXCPLCloudQuotaConciseSource *)self _handleInAppMessage:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQInAppMessageKey(void)"];
    [v9 handleFailureInFunction:v10 file:@"PXCPLCloudQuotaSourceUtilities.h" lineNumber:28 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_handleInAppMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 reason];
  PXCPLCloudQuotaStateForReason(v5);
  v7 = v6;
  if (v6)
  {
    v8 = [v4 conciseTitle];
    if ([v8 length])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v14 = [v4 sfSymbolName];
    if ([v14 length])
    {
      v13 = v14;
    }

    else
    {
      v13 = 0;
    }

    v12 = [v4 sfSymbolColor];
    v15 = [v4 actions];
    v11 = [v15 firstObject];

    v10 = [(PXCPLCloudQuotaConciseSource *)self _actionForMessageAction:v11];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v9 = 0;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__PXCPLCloudQuotaConciseSource__handleInAppMessage___block_invoke;
  v22[3] = &unk_1E7749DC0;
  v22[4] = self;
  v23 = v9;
  v24 = v13;
  v25 = v12;
  v28 = v10;
  v29 = v7;
  v26 = v11;
  v27 = v5;
  v16 = v5;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  v20 = v13;
  v21 = v9;
  [(PXCPLCloudQuotaConciseSource *)self performChanges:v22];
}

void __52__PXCPLCloudQuotaConciseSource__handleInAppMessage___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setTitle:*(a1 + 40)];
  [*(a1 + 32) setIcon:*(a1 + 48)];
  [*(a1 + 32) setIconColor:*(a1 + 56)];
  [*(a1 + 32) setAction:*(a1 + 80)];
  if ([*(a1 + 32) currentChanges])
  {
    if (*(a1 + 88))
    {
      v2 = PLUserStatusGetLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 32);
        v4 = *(a1 + 88);
        if (v4 > 2)
        {
          v5 = 0;
        }

        else
        {
          v5 = off_1E7748AF8[v4];
        }

        v13 = v5;
        v14 = *(a1 + 40);
        v15 = *(a1 + 48);
        v16 = *(a1 + 56);
        v17 = *(a1 + 64);
        v19 = 138544642;
        v20 = v3;
        v21 = 2114;
        v22 = v13;
        v23 = 2114;
        v24 = v14;
        v25 = 2114;
        v26 = v15;
        v27 = 2114;
        v28 = v16;
        v29 = 2114;
        v30 = v17;
        _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ HANDLE message with state: %{public}@, title: %{public}@, icon: %{public}@, color: %{public}@, action: %{public}@", &v19, 0x3Eu);
      }

      goto LABEL_14;
    }

    v6 = *(a1 + 72);
    v2 = PLUserStatusGetLog();
    v7 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 72);
        v19 = 138543618;
        v20 = v8;
        v21 = 2114;
        v22 = v9;
        v10 = "%{public}@ IGNORE message with reason: %{public}@";
        v11 = v2;
        v12 = 22;
LABEL_13:
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, v10, &v19, v12);
      }
    }

    else if (v7)
    {
      v18 = *(a1 + 32);
      v19 = 138543362;
      v20 = v18;
      v10 = "%{public}@ CLEAR message";
      v11 = v2;
      v12 = 12;
      goto LABEL_13;
    }

LABEL_14:
  }
}

- (void)_presentInAppAlert:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DC650];
  v6 = [v4 title];
  v7 = [v4 message];
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = [v4 actions];
  v10 = [v9 count];

  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = [v4 actions];
      v13 = [v12 objectAtIndexedSubscript:i];

      v14 = MEMORY[0x1E69DC648];
      v15 = [v13 title];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __51__PXCPLCloudQuotaConciseSource__presentInAppAlert___block_invoke;
      v19[3] = &unk_1E774A2C8;
      v20 = v13;
      v21 = self;
      v16 = v13;
      v17 = [v14 actionWithTitle:v15 style:0 handler:v19];

      [v8 addAction:v17];
      if (!i)
      {
        [v8 setPreferredAction:v17];
      }
    }
  }

  v18 = [(PXCPLCloudQuotaConciseSource *)self presentationEnvironment];
  [v18 presentViewController:v8 animated:1 completionHandler:0];
}

void __51__PXCPLCloudQuotaConciseSource__presentInAppAlert___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _ICQInAppActionContextForPlacement(*(*(a1 + 40) + 96));
  [v1 performActionWithContext:v2];
}

- (id)_actionForMessageAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 inAppAlert];
      if ([v4 icqActionType] == 102 && v5)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __56__PXCPLCloudQuotaConciseSource__actionForMessageAction___block_invoke;
        aBlock[3] = &unk_1E774C620;
        aBlock[4] = self;
        v5 = v5;
        v17 = v5;
        v6 = _Block_copy(aBlock);
        v7 = v17;
      }

      else
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __56__PXCPLCloudQuotaConciseSource__actionForMessageAction___block_invoke_2;
        v13[3] = &unk_1E774C620;
        v14 = v4;
        v15 = self;
        v6 = _Block_copy(v13);
        v7 = v14;
      }
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __56__PXCPLCloudQuotaConciseSource__actionForMessageAction___block_invoke_3;
      v10[3] = &unk_1E774C620;
      v11 = v4;
      v12 = self;
      v6 = _Block_copy(v10);
      v5 = v11;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = _Block_copy(v6);

  return v8;
}

void __56__PXCPLCloudQuotaConciseSource__actionForMessageAction___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _ICQInAppActionContextForPlacement(*(*(a1 + 40) + 96));
  [v1 performActionWithContext:v2];
}

void __56__PXCPLCloudQuotaConciseSource__actionForMessageAction___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _ICQInAppActionContextForPlacement(*(*(a1 + 40) + 96));
  [v1 performActionWithContext:v2];
}

- (void)setAction:(id)a3
{
  aBlock = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = aBlock;
  if (self->_action != aBlock)
  {
    v5 = _Block_copy(aBlock);
    action = self->_action;
    self->_action = v5;

    [(PXCPLCloudQuotaConciseSource *)self signalChange:8];
    v4 = aBlock;
  }
}

- (void)setIconColor:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = v9;
  iconColor = self->_iconColor;
  if (iconColor != v9)
  {
    v6 = [(UIColor *)iconColor isEqual:v9];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v9 copy];
      v8 = self->_iconColor;
      self->_iconColor = v7;

      [(PXCPLCloudQuotaConciseSource *)self signalChange:4];
      v4 = v9;
    }
  }
}

- (void)setIcon:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = v9;
  icon = self->_icon;
  if (icon != v9)
  {
    v6 = [(NSString *)icon isEqualToString:v9];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_icon;
      self->_icon = v7;

      [(PXCPLCloudQuotaConciseSource *)self signalChange:2];
      v4 = v9;
    }
  }
}

- (void)setTitle:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = v9;
  title = self->_title;
  if (title != v9)
  {
    v6 = [(NSString *)title isEqualToString:v9];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_title;
      self->_title = v7;

      [(PXCPLCloudQuotaConciseSource *)self signalChange:1];
      v4 = v9;
    }
  }
}

- (PXCPLCloudQuotaConciseSource)initWithPlacement:(int64_t)a3
{
  v18.receiver = self;
  v18.super_class = PXCPLCloudQuotaConciseSource;
  v4 = [(PXCPLCloudQuotaConciseSource *)&v18 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_placement = a3;
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v7 = getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr_240804;
  v27 = getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr_240804;
  if (!getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr_240804)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __getICQCurrentInAppMessageChangedNotificationSymbolLoc_block_invoke_240805;
    v22 = &unk_1E774BD00;
    v23 = &v24;
    v8 = iCloudQuotaUILibrary_240757();
    v9 = dlsym(v8, "ICQCurrentInAppMessageChangedNotification");
    *(v23[1] + 24) = v9;
    getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr_240804 = *(v23[1] + 24);
    v7 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (v7)
  {
    [v6 addObserver:v5 selector:sel_currentInAppMessageDidChange_ name:*v7 object:0];

    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v10 = getICQInAppMessagingClass_softClass_240808;
    v27 = getICQInAppMessagingClass_softClass_240808;
    if (!getICQInAppMessagingClass_softClass_240808)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getICQInAppMessagingClass_block_invoke_240809;
      v22 = &unk_1E774BD00;
      v23 = &v24;
      __getICQInAppMessagingClass_block_invoke_240809(&v19);
      v10 = v25[3];
    }

    v11 = v10;
    _Block_object_dispose(&v24, 8);
    v12 = [v10 shared];
    v13 = *MEMORY[0x1E69BFF18];
    v14 = [objc_opt_class() _placement];
    [v12 observeUpdatesForBundleID:v13 placement:v14];

    return v5;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQCurrentInAppMessageChangedNotification(void)"];
  [v16 handleFailureInFunction:v17 file:@"PXCPLCloudQuotaSourceUtilities.h" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (PXCPLCloudQuotaConciseSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCPLCloudQuotaConciseSource.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXCPLCloudQuotaConciseSource init]"}];

  abort();
}

+ (id)_placement
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getICQUIMessagePlacementInAppConciseSymbolLoc_ptr;
  v11 = getICQUIMessagePlacementInAppConciseSymbolLoc_ptr;
  if (!getICQUIMessagePlacementInAppConciseSymbolLoc_ptr)
  {
    v3 = iCloudQuotaUILibrary_240757();
    v9[3] = dlsym(v3, "ICQUIMessagePlacementInAppConcise");
    getICQUIMessagePlacementInAppConciseSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQUIMessagePlacementInAppConcise(void)"];
    [v6 handleFailureInFunction:v7 file:@"PXCPLCloudQuotaSourceUtilities.h" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

@end