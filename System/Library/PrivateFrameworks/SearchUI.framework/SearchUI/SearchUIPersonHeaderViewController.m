@interface SearchUIPersonHeaderViewController
+ (id)downtimeBadgeStyleSettings;
- (BOOL)userIsUnavailable;
- (SearchUIPersonHeaderViewController)initWithDowntimeButton:(BOOL)a3;
- (id)STUserID;
- (id)actionsViewConfigurationWithDowntimeButton:(BOOL)a3;
- (void)dealloc;
- (void)groupIdentityDidUpdate:(id)a3;
- (void)handleConfirmDowntimeToggleFor:(id)a3;
- (void)handleErrorResultFromDowntimeToggleFor:(id)a3 withError:(id)a4;
- (void)setupDowntimeStatusSubscription;
- (void)updateDowntimeBadgeForceRecheck:(BOOL)a3;
- (void)updateSubscriptions;
- (void)updateWithContact:(id)a3 isActualContact:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation SearchUIPersonHeaderViewController

+ (id)downtimeBadgeStyleSettings
{
  v2 = objc_alloc(MEMORY[0x1E695D0E8]);
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [MEMORY[0x1E69DC888] systemIndigoColor];
  v5 = [v2 initWithPosition:0 color:v3 backgroundColor:v4 cropStyle:0];

  [v5 setContentMode:4];

  return v5;
}

- (void)handleErrorResultFromDowntimeToggleFor:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = [(SearchUIPersonHeaderViewController *)self contactNameFor:a3];
  v8 = [SearchUIUtilities localizedStringForKey:@"DOWNTIME_TOGGLE_ERROR_TITLE"];
  v9 = MEMORY[0x1E696AEC0];
  v10 = [SearchUIUtilities localizedStringForKey:@"DOWNTIME_TOGGLE_ERROR_MESSAGE_FORMAT"];
  v11 = [v9 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, v7];

  v12 = SearchUIGeneralLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [SearchUIPersonHeaderViewController handleErrorResultFromDowntimeToggleFor:v6 withError:v12];
  }

  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:v11 preferredStyle:1];
  v14 = MEMORY[0x1E69DC648];
  v15 = [SearchUIUtilities localizedStringForKey:@"CONFIRMATION_ACTION_TITLE"];
  v16 = [v14 actionWithTitle:v15 style:0 handler:0];

  [v13 addAction:v16];
  [v13 setPreferredAction:v16];
  [(SearchUIPersonHeaderViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)handleConfirmDowntimeToggleFor:(id)a3
{
  v4 = a3;
  v5 = +[SearchUIDowntimeManager sharedManager];
  v6 = [(SearchUIPersonHeaderViewController *)self STUserID];
  v7 = [v5 statusForSTUserID:v6 forceRecheck:1];

  v8 = [(SearchUIPersonHeaderViewController *)self contactNameFor:v4];
  v9 = v7 > 0;
  if (v7 <= 0)
  {
    v10 = @"DOWNTIME_TOGGLE_OFF_TO_ON_CONFIRM";
  }

  else
  {
    v10 = @"DOWNTIME_TOGGLE_ON_TO_OFF_CONFIRM";
  }

  if (v7 <= 0)
  {
    v11 = @"DOWNTIME_TOGGLE_OFF_TO_ON";
  }

  else
  {
    v11 = @"DOWNTIME_TOGGLE_ON_TO_OFF";
  }

  v12 = [SearchUIUtilities localizedStringForKey:v10];
  v13 = v11;
  v14 = MEMORY[0x1E696AEC0];
  v15 = [SearchUIUtilities localizedStringForKey:v13];

  v16 = [v14 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v8];

  v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v16 preferredStyle:0];
  v18 = MEMORY[0x1E69DC648];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__SearchUIPersonHeaderViewController_handleConfirmDowntimeToggleFor___block_invoke;
  v24[3] = &unk_1E85B3538;
  v24[4] = self;
  v25 = v4;
  v19 = v4;
  v20 = [v18 actionWithTitle:v12 style:2 * v9 handler:v24];
  [v17 addAction:v20];
  [v17 setPreferredAction:v20];
  v21 = MEMORY[0x1E69DC648];
  v22 = [SearchUIUtilities localizedStringForKey:@"CANCEL"];
  v23 = [v21 actionWithTitle:v22 style:1 handler:0];

  [v17 addAction:v23];
  [(SearchUIPersonHeaderViewController *)self presentViewController:v17 animated:1 completion:0];
}

void __69__SearchUIPersonHeaderViewController_handleConfirmDowntimeToggleFor___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) STUserID];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__SearchUIPersonHeaderViewController_handleConfirmDowntimeToggleFor___block_invoke_2;
  v5[3] = &unk_1E85B3510;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 toggleOnDemandDowntimeForUserID:v3 completionHandler:v5];
}

uint64_t __69__SearchUIPersonHeaderViewController_handleConfirmDowntimeToggleFor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) handleErrorResultFromDowntimeToggleFor:*(a1 + 40) withError:a2];
  }

  v3 = *(a1 + 32);

  return [v3 updateDowntimeBadgeForceRecheck:1];
}

- (id)actionsViewConfigurationWithDowntimeButton:(BOOL)a3
{
  v3 = a3;
  if (actionsViewConfigurationWithDowntimeButton__onceToken != -1)
  {
    [SearchUIPersonHeaderViewController actionsViewConfigurationWithDowntimeButton:];
  }

  objc_initWeak(&location, self);
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__SearchUIPersonHeaderViewController_actionsViewConfigurationWithDowntimeButton___block_invoke_2;
    aBlock[3] = &unk_1E85B3560;
    objc_copyWeak(&v20, &location);
    v5 = _Block_copy(aBlock);
    v6 = objc_alloc(MEMORY[0x1E695D160]);
    v7 = [SearchUIUtilities localizedStringForKey:@"DOWNTIME_TITLE"];
    v8 = [v6 initWithTitle:v7 actionType:@"SearchUICNActionTypeDowntime" systemImageName:@"downtime" overrideEnabledState:1 actionBlock:v5];

    [v8 setShouldPresentDisambiguationUI:0];
    v9 = [actionsViewConfigurationWithDowntimeButton__baseActions arrayByAddingObject:v8];

    v10 = &v20;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__SearchUIPersonHeaderViewController_actionsViewConfigurationWithDowntimeButton___block_invoke_3;
    v17[3] = &unk_1E85B3560;
    objc_copyWeak(&v18, &location);
    v11 = _Block_copy(v17);
    v12 = objc_alloc(MEMORY[0x1E695D160]);
    v13 = [SearchUIUtilities localizedStringForKey:@"INFO"];
    v14 = [v12 initWithTitle:v13 actionType:@"SearchUICNActionTypeOpenContact" systemImageName:@"person.crop.circle.fill" actionBlock:v11];

    [v14 setShouldPresentDisambiguationUI:0];
    v9 = [actionsViewConfigurationWithDowntimeButton__baseActions arrayByAddingObject:v14];
    [(SearchUIPersonHeaderViewController *)self setOpenContactAction:v14];

    v10 = &v18;
  }

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
  v15 = [objc_alloc(MEMORY[0x1E695D170]) initWithDefaultActionItems:v9 displaysUnavailableActionTypes:1 actionViewStyle:6];

  return v15;
}

void __81__SearchUIPersonHeaderViewController_actionsViewConfigurationWithDowntimeButton___block_invoke()
{
  v10[4] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695D160]);
  v1 = [v0 initWithTitle:0 actionType:*MEMORY[0x1E695C178] actionBlock:0];
  v10[0] = v1;
  v2 = objc_alloc(MEMORY[0x1E695D160]);
  v3 = [v2 initWithTitle:0 actionType:*MEMORY[0x1E695C150] actionBlock:0];
  v10[1] = v3;
  v4 = objc_alloc(MEMORY[0x1E695D160]);
  v5 = [v4 initWithTitle:0 actionType:*MEMORY[0x1E695C1B8] actionBlock:0];
  v10[2] = v5;
  v6 = objc_alloc(MEMORY[0x1E695D160]);
  v7 = [v6 initWithTitle:0 actionType:*MEMORY[0x1E695C170] actionBlock:0];
  v10[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v9 = actionsViewConfigurationWithDowntimeButton__baseActions;
  actionsViewConfigurationWithDowntimeButton__baseActions = v8;
}

void __81__SearchUIPersonHeaderViewController_actionsViewConfigurationWithDowntimeButton___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained group];
  v2 = [v1 contacts];
  v3 = [v2 firstObject];
  [WeakRetained handleConfirmDowntimeToggleFor:v3];
}

void __81__SearchUIPersonHeaderViewController_actionsViewConfigurationWithDowntimeButton___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_opt_new();
  v2 = [WeakRetained group];
  v3 = [v2 contacts];
  v4 = [v3 firstObject];
  v5 = [v4 identifier];
  [v1 setCoreSpotlightIdentifier:v5];

  v6 = [SearchUIUtilities bundleIdentifierForApp:5];
  [v1 setApplicationBundleIdentifier:v6];

  v7 = [SearchUICommandHandler handlerForCommand:v1 environment:0];
  [v7 performCommand:v1 triggerEvent:2 environment:0];
}

- (SearchUIPersonHeaderViewController)initWithDowntimeButton:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x1E695D158]);
  v6 = [v5 initGroupWithName:0 photo:0 contacts:MEMORY[0x1E695E0F0]];
  v7 = [(SearchUIPersonHeaderViewController *)self actionsViewConfigurationWithDowntimeButton:v3];
  v8 = MEMORY[0x1E695D0E0];
  v9 = +[SearchUIContactCache sharedCache];
  v10 = [v9 contactStore];
  v11 = [v8 settingsWithContactStore:v10 cacheSize:0 threeDTouchEnabled:1];
  v14.receiver = self;
  v14.super_class = SearchUIPersonHeaderViewController;
  v12 = [(CNGroupIdentityHeaderViewController *)&v14 initWithGroupIdentity:v6 actionsViewConfiguration:v7 avatarViewControllerSettings:v11];

  if (v12)
  {
    [(SearchUIPersonHeaderViewController *)v12 setupDowntimeStatusSubscription];
  }

  return v12;
}

- (id)STUserID
{
  v2 = [(CNGroupIdentityHeaderViewController *)self group];
  v3 = [v2 contacts];
  v4 = [v3 firstObject];
  v5 = [SearchUIDowntimeManager screenTimeUserIDForContact:v4];

  return v5;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SearchUIPersonHeaderViewController;
  [(CNGroupIdentityHeaderViewController *)&v6 viewDidLoad];
  [(SearchUIPersonHeaderViewController *)self updateDowntimeBadge];
  v3 = objc_alloc(MEMORY[0x1E69D4610]);
  v4 = [v3 initWithStatusTypeIdentifier:*MEMORY[0x1E698E210]];
  [(SearchUIPersonHeaderViewController *)self setSubscriptionService:v4];

  v5 = [(SearchUIPersonHeaderViewController *)self subscriptionService];
  [v5 addDelegate:self queue:MEMORY[0x1E69E96A0]];

  [(SearchUIPersonHeaderViewController *)self updateSubscriptions];
}

- (void)groupIdentityDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = SearchUIPersonHeaderViewController;
  [(CNGroupIdentityHeaderViewController *)&v4 groupIdentityDidUpdate:a3];
  [(SearchUIPersonHeaderViewController *)self updateDowntimeBadge];
  [(SearchUIPersonHeaderViewController *)self updateSubscriptions];
}

- (void)updateWithContact:(id)a3 isActualContact:(BOOL)a4
{
  LODWORD(v4) = a4;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(SearchUIPersonHeaderViewController *)self view];
  [v8 setAlpha:v7];

  v9 = v6;
  if (v6)
  {
    v4 = v4;
  }

  else
  {
    v9 = objc_opt_new();
    [v9 setNickname:@" "];
    v4 = 0;
  }

  v10 = [(SearchUIPersonHeaderViewController *)self openContactAction];
  [v10 setShouldOverrideEnabledState:v4];

  v11 = [(SearchUIPersonHeaderViewController *)self openContactAction];
  [v11 setOverrideEnabledState:v4];

  v12 = objc_alloc(MEMORY[0x1E695D158]);
  v15[0] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14 = [v12 initGroupWithName:0 photo:0 contacts:v13];

  [(SearchUIPersonHeaderViewController *)self groupIdentityDidUpdate:v14];
}

- (void)updateSubscriptions
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__SearchUIPersonHeaderViewController_updateSubscriptions__block_invoke;
  v2[3] = &unk_1E85B24C8;
  v2[4] = self;
  [SearchUIUtilities dispatchAsyncIfNecessary:v2];
}

void __57__SearchUIPersonHeaderViewController_updateSubscriptions__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) group];
  v4 = [v3 contacts];
  v5 = [v4 firstObject];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [SearchUIUtilities skHandlesFromContact:v5];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = [*(a1 + 32) subscriptionService];
        v13 = [v12 statusSubscriptionForHandle:v11];

        if (v13)
        {
          [v13 retainTransientSubscriptionAssertionWithCompletion:0];
          [v2 addObject:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = [v2 copy];
  [*(a1 + 32) setStatusSubcriptions:v14];

  v15 = [*(a1 + 32) userIsUnavailable];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__SearchUIPersonHeaderViewController_updateSubscriptions__block_invoke_2;
  v17[3] = &unk_1E85B24F0;
  v17[4] = *(a1 + 32);
  v18 = v5;
  v19 = v15;
  v16 = v5;
  [SearchUIUtilities dispatchMainIfNecessary:v17];
}

void __57__SearchUIPersonHeaderViewController_updateSubscriptions__block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) group];
  v2 = [v7 contacts];
  v3 = [v2 firstObject];
  if ([v3 isEqual:*(a1 + 40)])
  {
    v4 = [*(a1 + 32) showingDowntimeBadge];

    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);

      [v6 setShouldShowContactBusy:v5];
    }
  }

  else
  {
  }
}

- (BOOL)userIsUnavailable
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SearchUIPersonHeaderViewController *)self statusSubcriptions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) currentStatus];
        v7 = [objc_alloc(MEMORY[0x1E698E218]) initWithPublishedStatus:v6];
        v8 = v7;
        if (v7 && ([v7 isAvailable] & 1) == 0)
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)updateDowntimeBadgeForceRecheck:(BOOL)a3
{
  v5 = [(SearchUIPersonHeaderViewController *)self STUserID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SearchUIPersonHeaderViewController_updateDowntimeBadgeForceRecheck___block_invoke;
  v7[3] = &unk_1E85B24F0;
  v8 = v5;
  v9 = self;
  v10 = a3;
  v6 = v5;
  [SearchUIUtilities dispatchMainIfNecessary:v7];
}

void __70__SearchUIPersonHeaderViewController_updateDowntimeBadgeForceRecheck___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) STUserID];
  LODWORD(v2) = [v2 isEqualToUserID:v3];

  if (!v2)
  {
    goto LABEL_7;
  }

  v4 = +[SearchUIDowntimeManager sharedManager];
  v5 = [*(a1 + 40) STUserID];
  v6 = [v4 statusForSTUserID:v5 forceRecheck:*(a1 + 48)];

  if (v6 > 0 == [*(a1 + 40) showingDowntimeBadge])
  {
    return;
  }

  [*(a1 + 40) setShowingDowntimeBadge:v6 > 0];
  if (v6 >= 1)
  {
    v7 = [SearchUISymbolImage uiImageWithSymbolName:@"downtime"];
    [*(a1 + 40) setAvatarBadgeImage:v7];

    v9 = [objc_opt_class() downtimeBadgeStyleSettings];
    [*(a1 + 40) setAvatarBadgeStyleSettings:v9];
  }

  else
  {
LABEL_7:
    v8 = *(a1 + 40);

    [v8 setAvatarBadgeImage:0];
  }
}

- (void)setupDowntimeStatusSubscription
{
  v3 = [(SearchUIPersonHeaderViewController *)self downtimeStatusObserver];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = +[SearchUIDowntimeManager sharedManager];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __69__SearchUIPersonHeaderViewController_setupDowntimeStatusSubscription__block_invoke;
    v9 = &unk_1E85B3588;
    objc_copyWeak(&v10, &location);
    v5 = [v4 addObserverForDowntimeStatuses:&v6];
    [(SearchUIPersonHeaderViewController *)self setDowntimeStatusObserver:v5, v6, v7, v8, v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __69__SearchUIPersonHeaderViewController_setupDowntimeStatusSubscription__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained STUserID];
  v5 = [v4 dsid];
  v6 = [v5 stringValue];
  v7 = [v3 isEqualToString:v6];

  if (v7)
  {
    [WeakRetained updateDowntimeBadge];
  }
}

- (void)dealloc
{
  v3 = +[SearchUIDowntimeManager sharedManager];
  v4 = [(SearchUIPersonHeaderViewController *)self downtimeStatusObserver];
  [v3 removeObserver:v4];

  downtimeStatusObserver = self->_downtimeStatusObserver;
  self->_downtimeStatusObserver = 0;

  v6.receiver = self;
  v6.super_class = SearchUIPersonHeaderViewController;
  [(SearchUIPersonHeaderViewController *)&v6 dealloc];
}

- (void)handleErrorResultFromDowntimeToggleFor:(uint64_t)a1 withError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIPersonHeaderViewController: toggled downtime with error: %@", &v2, 0xCu);
}

@end