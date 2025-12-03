@interface PXCPLCloudQuotaConciseSource
+ (id)_placement;
- (PXCPLCloudQuotaConciseSource)init;
- (PXCPLCloudQuotaConciseSource)initWithPlacement:(int64_t)placement;
- (id)_actionForMessageAction:(id)action;
- (void)_handleInAppMessage:(id)message;
- (void)_presentInAppAlert:(id)alert;
- (void)currentInAppMessageDidChange:(id)change;
- (void)setAction:(id)action;
- (void)setIcon:(id)icon;
- (void)setIconColor:(id)color;
- (void)setTitle:(id)title;
@end

@implementation PXCPLCloudQuotaConciseSource

- (void)currentInAppMessageDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
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
    v8 = [userInfo objectForKeyedSubscript:*v6];

    [(PXCPLCloudQuotaConciseSource *)self _handleInAppMessage:v8];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQInAppMessageKey(void)"];
    [currentHandler handleFailureInFunction:v10 file:@"PXCPLCloudQuotaSourceUtilities.h" lineNumber:28 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_handleInAppMessage:(id)message
{
  messageCopy = message;
  reason = [messageCopy reason];
  PXCPLCloudQuotaStateForReason(reason);
  v7 = v6;
  if (v6)
  {
    conciseTitle = [messageCopy conciseTitle];
    if ([conciseTitle length])
    {
      v9 = conciseTitle;
    }

    else
    {
      v9 = 0;
    }

    sfSymbolName = [messageCopy sfSymbolName];
    if ([sfSymbolName length])
    {
      v13 = sfSymbolName;
    }

    else
    {
      v13 = 0;
    }

    sfSymbolColor = [messageCopy sfSymbolColor];
    actions = [messageCopy actions];
    firstObject = [actions firstObject];

    v10 = [(PXCPLCloudQuotaConciseSource *)self _actionForMessageAction:firstObject];
  }

  else
  {
    v10 = 0;
    firstObject = 0;
    sfSymbolColor = 0;
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
  v25 = sfSymbolColor;
  v28 = v10;
  v29 = v7;
  v26 = firstObject;
  v27 = reason;
  v16 = reason;
  v17 = firstObject;
  v18 = v10;
  v19 = sfSymbolColor;
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

- (void)_presentInAppAlert:(id)alert
{
  alertCopy = alert;
  v5 = MEMORY[0x1E69DC650];
  title = [alertCopy title];
  message = [alertCopy message];
  v8 = [v5 alertControllerWithTitle:title message:message preferredStyle:1];

  actions = [alertCopy actions];
  v10 = [actions count];

  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      actions2 = [alertCopy actions];
      v13 = [actions2 objectAtIndexedSubscript:i];

      v14 = MEMORY[0x1E69DC648];
      title2 = [v13 title];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __51__PXCPLCloudQuotaConciseSource__presentInAppAlert___block_invoke;
      v19[3] = &unk_1E774A2C8;
      v20 = v13;
      selfCopy = self;
      v16 = v13;
      v17 = [v14 actionWithTitle:title2 style:0 handler:v19];

      [v8 addAction:v17];
      if (!i)
      {
        [v8 setPreferredAction:v17];
      }
    }
  }

  presentationEnvironment = [(PXCPLCloudQuotaConciseSource *)self presentationEnvironment];
  [presentationEnvironment presentViewController:v8 animated:1 completionHandler:0];
}

void __51__PXCPLCloudQuotaConciseSource__presentInAppAlert___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _ICQInAppActionContextForPlacement(*(*(a1 + 40) + 96));
  [v1 performActionWithContext:v2];
}

- (id)_actionForMessageAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      inAppAlert = [actionCopy inAppAlert];
      if ([actionCopy icqActionType] == 102 && inAppAlert)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __56__PXCPLCloudQuotaConciseSource__actionForMessageAction___block_invoke;
        aBlock[3] = &unk_1E774C620;
        aBlock[4] = self;
        inAppAlert = inAppAlert;
        v17 = inAppAlert;
        v6 = _Block_copy(aBlock);
        v7 = v17;
      }

      else
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __56__PXCPLCloudQuotaConciseSource__actionForMessageAction___block_invoke_2;
        v13[3] = &unk_1E774C620;
        v14 = actionCopy;
        selfCopy = self;
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
      v11 = actionCopy;
      selfCopy2 = self;
      v6 = _Block_copy(v10);
      inAppAlert = v11;
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

- (void)setAction:(id)action
{
  aBlock = action;
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

- (void)setIconColor:(id)color
{
  colorCopy = color;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = colorCopy;
  iconColor = self->_iconColor;
  if (iconColor != colorCopy)
  {
    v6 = [(UIColor *)iconColor isEqual:colorCopy];
    v4 = colorCopy;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)colorCopy copy];
      v8 = self->_iconColor;
      self->_iconColor = v7;

      [(PXCPLCloudQuotaConciseSource *)self signalChange:4];
      v4 = colorCopy;
    }
  }
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = iconCopy;
  icon = self->_icon;
  if (icon != iconCopy)
  {
    v6 = [(NSString *)icon isEqualToString:iconCopy];
    v4 = iconCopy;
    if (!v6)
    {
      v7 = [(NSString *)iconCopy copy];
      v8 = self->_icon;
      self->_icon = v7;

      [(PXCPLCloudQuotaConciseSource *)self signalChange:2];
      v4 = iconCopy;
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = titleCopy;
  title = self->_title;
  if (title != titleCopy)
  {
    v6 = [(NSString *)title isEqualToString:titleCopy];
    v4 = titleCopy;
    if (!v6)
    {
      v7 = [(NSString *)titleCopy copy];
      v8 = self->_title;
      self->_title = v7;

      [(PXCPLCloudQuotaConciseSource *)self signalChange:1];
      v4 = titleCopy;
    }
  }
}

- (PXCPLCloudQuotaConciseSource)initWithPlacement:(int64_t)placement
{
  v18.receiver = self;
  v18.super_class = PXCPLCloudQuotaConciseSource;
  v4 = [(PXCPLCloudQuotaConciseSource *)&v18 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_placement = placement;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
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
    [defaultCenter addObserver:v5 selector:sel_currentInAppMessageDidChange_ name:*v7 object:0];

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
    shared = [v10 shared];
    v13 = *MEMORY[0x1E69BFF18];
    _placement = [objc_opt_class() _placement];
    [shared observeUpdatesForBundleID:v13 placement:_placement];

    return v5;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQCurrentInAppMessageChangedNotification(void)"];
  [currentHandler handleFailureInFunction:v17 file:@"PXCPLCloudQuotaSourceUtilities.h" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (PXCPLCloudQuotaConciseSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLCloudQuotaConciseSource.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXCPLCloudQuotaConciseSource init]"}];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQUIMessagePlacementInAppConcise(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PXCPLCloudQuotaSourceUtilities.h" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

@end