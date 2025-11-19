@interface PXCPLCloudQuotaSource
+ (id)_placement;
- (PXCPLCloudQuotaSource)init;
- (void)_handleInAppMessage:(id)a3;
- (void)currentInAppMessageDidChange:(id)a3;
- (void)setActionTitle:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PXCPLCloudQuotaSource

- (PXCPLCloudQuotaSource)init
{
  v15.receiver = self;
  v15.super_class = PXCPLCloudQuotaSource;
  v2 = [(PXCPLCloudQuotaSource *)&v15 init];
  if (!v2)
  {
    return v2;
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v4 = getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr;
  v24 = getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr;
  if (!getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getICQCurrentInAppMessageChangedNotificationSymbolLoc_block_invoke;
    v19 = &unk_1E774BD00;
    v20 = &v21;
    v5 = iCloudQuotaUILibrary_112138();
    v6 = dlsym(v5, "ICQCurrentInAppMessageChangedNotification");
    *(v20[1] + 24) = v6;
    getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr = *(v20[1] + 24);
    v4 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (v4)
  {
    [v3 addObserver:v2 selector:sel_currentInAppMessageDidChange_ name:*v4 object:0];

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v7 = getICQInAppMessagingClass_softClass;
    v24 = getICQInAppMessagingClass_softClass;
    if (!getICQInAppMessagingClass_softClass)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __getICQInAppMessagingClass_block_invoke;
      v19 = &unk_1E774BD00;
      v20 = &v21;
      __getICQInAppMessagingClass_block_invoke(&v16);
      v7 = v22[3];
    }

    v8 = v7;
    _Block_object_dispose(&v21, 8);
    v9 = [v7 shared];
    v10 = *MEMORY[0x1E69BFF18];
    v11 = [objc_opt_class() _placement];
    [v9 observeUpdatesForBundleID:v10 placement:v11];

    return v2;
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQCurrentInAppMessageChangedNotification(void)"];
  [v13 handleFailureInFunction:v14 file:@"PXCPLCloudQuotaSourceUtilities.h" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)currentInAppMessageDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getICQInAppMessageKeySymbolLoc_ptr;
  v14 = getICQInAppMessageKeySymbolLoc_ptr;
  if (!getICQInAppMessageKeySymbolLoc_ptr)
  {
    v7 = iCloudQuotaUILibrary_112138();
    v12[3] = dlsym(v7, "ICQInAppMessageKey");
    getICQInAppMessageKeySymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v8 = [v5 objectForKeyedSubscript:*v6];

    [(PXCPLCloudQuotaSource *)self _handleInAppMessage:v8];
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
    v8 = [v4 title];
    if ([v8 length])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v13 = [v4 subTitle];
    if ([v13 length])
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    v14 = [v4 actions];
    v11 = [v14 firstObject];

    v15 = [v11 title];
    if ([v15 length])
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __45__PXCPLCloudQuotaSource__handleInAppMessage___block_invoke;
  v20[3] = &unk_1E7739DD8;
  v20[4] = self;
  v21 = v9;
  v22 = v12;
  v23 = v10;
  v24 = v5;
  v25 = v7;
  v16 = v5;
  v17 = v10;
  v18 = v12;
  v19 = v9;
  [(PXCPLCloudQuotaSource *)self performChanges:v20];
}

void __45__PXCPLCloudQuotaSource__handleInAppMessage___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setState:*(a1 + 72)];
  [*(a1 + 32) setTitle:*(a1 + 40)];
  [*(a1 + 32) setSubtitle:*(a1 + 48)];
  [*(a1 + 32) setActionTitle:*(a1 + 56)];
  if ([*(a1 + 32) currentChanges])
  {
    if (*(a1 + 72))
    {
      v2 = PLUserStatusGetLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 32);
        v4 = *(a1 + 72);
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
        v18 = 138544386;
        v19 = v3;
        v20 = 2114;
        v21 = v13;
        v22 = 2114;
        v23 = v14;
        v24 = 2114;
        v25 = v15;
        v26 = 2114;
        v27 = v16;
        _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ HANDLE message with state: %{public}@, title: %{public}@, subtitle: %{public}@, action title: %{public}@", &v18, 0x34u);
      }

      goto LABEL_14;
    }

    v6 = *(a1 + 64);
    v2 = PLUserStatusGetLog();
    v7 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 64);
        v18 = 138543618;
        v19 = v8;
        v20 = 2114;
        v21 = v9;
        v10 = "%{public}@ IGNORE message with reason: %{public}@";
        v11 = v2;
        v12 = 22;
LABEL_13:
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, v10, &v18, v12);
      }
    }

    else if (v7)
    {
      v17 = *(a1 + 32);
      v18 = 138543362;
      v19 = v17;
      v10 = "%{public}@ CLEAR message";
      v11 = v2;
      v12 = 12;
      goto LABEL_13;
    }

LABEL_14:
  }
}

- (void)setActionTitle:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = v9;
  actionTitle = self->_actionTitle;
  if (actionTitle != v9)
  {
    v6 = [(NSString *)actionTitle isEqualToString:v9];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_actionTitle;
      self->_actionTitle = v7;

      [(PXCPLCloudQuotaSource *)self signalChange:8];
      v4 = v9;
    }
  }
}

- (void)setSubtitle:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = v9;
  subtitle = self->_subtitle;
  if (subtitle != v9)
  {
    v6 = [(NSString *)subtitle isEqualToString:v9];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_subtitle;
      self->_subtitle = v7;

      [(PXCPLCloudQuotaSource *)self signalChange:4];
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

      [(PXCPLCloudQuotaSource *)self signalChange:2];
      v4 = v9;
    }
  }
}

- (void)setState:(int64_t)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_state != a3)
  {
    self->_state = a3;

    [(PXCPLCloudQuotaSource *)self signalChange:1];
  }
}

+ (id)_placement
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getICQUIMessagePlacementInAppSymbolLoc_ptr;
  v11 = getICQUIMessagePlacementInAppSymbolLoc_ptr;
  if (!getICQUIMessagePlacementInAppSymbolLoc_ptr)
  {
    v3 = iCloudQuotaUILibrary_112138();
    v9[3] = dlsym(v3, "ICQUIMessagePlacementInApp");
    getICQUIMessagePlacementInAppSymbolLoc_ptr = v9[3];
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
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQUIMessagePlacementInApp(void)"];
    [v6 handleFailureInFunction:v7 file:@"PXCPLCloudQuotaSourceUtilities.h" lineNumber:30 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

@end