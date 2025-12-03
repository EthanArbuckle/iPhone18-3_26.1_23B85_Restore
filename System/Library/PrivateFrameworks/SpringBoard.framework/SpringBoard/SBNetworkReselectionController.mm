@interface SBNetworkReselectionController
+ (SBNetworkReselectionController)sharedController;
- (SBNetworkReselectionController)init;
- (void)_handleNetworkReselectionNeeded:(BOOL)needed forSlot:(int64_t)slot;
- (void)dealloc;
- (void)subscriptionInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot;
@end

@implementation SBNetworkReselectionController

+ (SBNetworkReselectionController)sharedController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SBNetworkReselectionController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_sOnceToken != -1)
  {
    dispatch_once(&sharedController_sOnceToken, block);
  }

  v2 = sharedController_sSharedController;

  return v2;
}

void __50__SBNetworkReselectionController_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedController_sSharedController;
  sharedController_sSharedController = v1;
}

- (SBNetworkReselectionController)init
{
  v9.receiver = self;
  v9.super_class = SBNetworkReselectionController;
  v2 = [(SBNetworkReselectionController *)&v9 init];
  if (v2)
  {
    telephonyStateProvider = [SBApp telephonyStateProvider];
    [telephonyStateProvider addObserver:v2];
    v4 = [telephonyStateProvider subscriptionInfoForSlot:1];
    isNetworkReselectionNeeded = [v4 isNetworkReselectionNeeded];

    if (isNetworkReselectionNeeded)
    {
      [(SBNetworkReselectionController *)v2 _handleNetworkReselectionNeeded:1 forSlot:1];
    }

    v6 = [telephonyStateProvider subscriptionInfoForSlot:2];
    isNetworkReselectionNeeded2 = [v6 isNetworkReselectionNeeded];

    if (isNetworkReselectionNeeded2)
    {
      [(SBNetworkReselectionController *)v2 _handleNetworkReselectionNeeded:1 forSlot:2];
    }
  }

  return v2;
}

- (void)dealloc
{
  telephonyStateProvider = [SBApp telephonyStateProvider];
  [telephonyStateProvider removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBNetworkReselectionController;
  [(SBNetworkReselectionController *)&v4 dealloc];
}

- (void)subscriptionInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot
{
  v6 = [provider subscriptionInfoForSlot:slot];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SBNetworkReselectionController_subscriptionInfoDidChangeForStateProvider_slot___block_invoke;
  block[3] = &unk_2783AB2A8;
  block[4] = self;
  v9 = v6;
  slotCopy = slot;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __81__SBNetworkReselectionController_subscriptionInfoDidChangeForStateProvider_slot___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) isNetworkReselectionNeeded];
  v4 = *(a1 + 48);

  return [v2 _handleNetworkReselectionNeeded:v3 forSlot:v4];
}

- (void)_handleNetworkReselectionNeeded:(BOOL)needed forSlot:(int64_t)slot
{
  neededCopy = needed;
  v28 = *MEMORY[0x277D85DE8];
  v6 = +[SBAlertItemsController sharedInstance];
  v7 = 0uLL;
  if (neededCopy)
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v8 = [v6 alertItemsOfClass:objc_opt_class()];
    v9 = [(SBNetworkReselectionAlertItem *)v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v22 + 1) + 8 * v12) slot] == slot)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(SBNetworkReselectionAlertItem *)v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v8 = [[SBNetworkReselectionAlertItem alloc] initWithSlot:slot];
      [v6 activateAlertItem:v8];
    }
  }

  else
  {
    v20 = 0uLL;
    v21 = 0uLL;
    *(&v18 + 1) = 0;
    v19 = 0uLL;
    v8 = [v6 alertItemsOfClass:{objc_opt_class(), v7}];
    v13 = [(SBNetworkReselectionAlertItem *)v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v8);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          if ([v17 slot] == slot)
          {
            [v6 deactivateAlertItem:v17];
          }
        }

        v14 = [(SBNetworkReselectionAlertItem *)v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }
}

@end