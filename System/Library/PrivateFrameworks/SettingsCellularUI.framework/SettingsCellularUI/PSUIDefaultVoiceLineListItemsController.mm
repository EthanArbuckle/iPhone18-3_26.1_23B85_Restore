@interface PSUIDefaultVoiceLineListItemsController
- (PSUIDefaultVoiceLineListItemsController)init;
- (id)specifiers;
- (void)reloadCache;
@end

@implementation PSUIDefaultVoiceLineListItemsController

- (PSUIDefaultVoiceLineListItemsController)init
{
  v5.receiver = self;
  v5.super_class = PSUIDefaultVoiceLineListItemsController;
  v2 = [(PSUIDefaultVoiceLineListItemsController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_reloadCache name:@"PSUICellularPlanChanged" object:0];
  }

  return v2;
}

- (void)reloadCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PSUIDefaultVoiceLineListItemsController_reloadCache__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__PSUIDefaultVoiceLineListItemsController_reloadCache__block_invoke(uint64_t a1)
{
  v7 = *(*(a1 + 32) + *MEMORY[0x277D3FD20]);
  [v7 updateCachedState];
  v2 = [v7 isSubcontrollerNeeded];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 reloadSpecifiers];
    v4 = v7;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&v3[*MEMORY[0x277D3FD10]]);

    v6 = [WeakRetained popViewControllerAnimated:1];
    v4 = WeakRetained;
  }
}

- (id)specifiers
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = PSUIDefaultVoiceLineListItemsController;
  v3 = [(PSListItemsController *)&v23 specifiers];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = *MEMORY[0x277D3FE58];
    v8 = *MEMORY[0x277D3FE68];
    v18 = *MEMORY[0x277D40128];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 cellType])
        {
          [v10 setProperty:objc_opt_class() forKey:v7];
          v11 = *MEMORY[0x277D3FD20];
          v12 = [*(&self->super.super.super.super.super.super.isa + v11) planItemForListItem:v10];
          if (v12)
          {
            [v10 setProperty:v12 forKey:v8];
            v13 = [*(&self->super.super.super.super.super.super.isa + v11) subscriptionContextForListItem:v10];
            if (v13)
            {
              [v10 setProperty:v13 forKey:v18];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = MEMORY[0x277D4D878];
  v15 = [v3 mutableCopy];
  [v14 logSpecifiers:v15 origin:@"[PSUIDefaultVoiceLineListItemsController specifiers] end"];

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

@end