@interface PSUIDefaultVoiceLineSpecifier
- (PSUIDefaultVoiceLineSpecifier)initWithPlanManagerCache:(id)a3 planManager:(id)a4 simStatusCache:(id)a5;
- (id)defaultVoiceLine:(id)a3;
- (id)initSpecifier;
- (id)planItemForListItem:(id)a3;
- (id)subscriptionContextForListItem:(id)a3;
- (void)setDefaultVoiceLine:(id)a3 specifier:(id)a4;
- (void)updateCachedState;
@end

@implementation PSUIDefaultVoiceLineSpecifier

- (id)initSpecifier
{
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [MEMORY[0x277CF96D8] sharedManager];
  v5 = [MEMORY[0x277D4D868] sharedInstance];
  v6 = [(PSUIDefaultVoiceLineSpecifier *)self initWithPlanManagerCache:v3 planManager:v4 simStatusCache:v5];

  return v6;
}

- (PSUIDefaultVoiceLineSpecifier)initWithPlanManagerCache:(id)a3 planManager:(id)a4 simStatusCache:(id)a5
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"DEFAULT_VOICE_LINE" value:&stru_287733598 table:@"Gemini-Gemini"];
  v13 = objc_opt_class();
  v17.receiver = self;
  v17.super_class = PSUIDefaultVoiceLineSpecifier;
  v14 = [(PSUIDefaultVoiceLineSpecifier *)&v17 initWithName:v12 target:self set:sel_setDefaultVoiceLine_specifier_ get:sel_defaultVoiceLine_ detail:v13 cell:2 edit:0];

  if (v14)
  {
    [(PSUIDefaultVoiceLineSpecifier *)v14 setIdentifier:@"VOICE_LINE_SETTINGS"];
    objc_storeStrong(&v14->_planManagerCache, a3);
    objc_storeStrong(&v14->_planManager, a4);
    objc_storeStrong(&v14->_simStatusCache, a5);
    [(PSUIDefaultVoiceLineSpecifier *)v14 updateCachedState];
  }

  return v14;
}

- (void)updateCachedState
{
  v3 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planItems];
  cachedPlanItems = self->_cachedPlanItems;
  self->_cachedPlanItems = v3;

  v5 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  cachedSubscriptionContexts = self->_cachedSubscriptionContexts;
  self->_cachedSubscriptionContexts = v5;

  v22 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v21 = self;
  v9 = self->_cachedPlanItems;
  if ([(NSArray *)v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [(NSArray *)v9 objectAtIndexedSubscript:v10];
      if ([v11 isSelected])
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = [v11 userLabel];
        v14 = [v13 label];
        v15 = [v12 stringWithFormat:@"%@", v14];
        [v22 addObject:v15];

        v16 = MEMORY[0x277CCACA8];
        v17 = [v11 userLabel];
        v18 = [v17 label];
        v19 = [v16 stringWithFormat:@"%@", v18];
        [v7 addObject:v19];

        v20 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
        [v8 addObject:v20];
      }

      ++v10;
    }

    while ([(NSArray *)v9 count]> v10);
  }

  [(PSUIDefaultVoiceLineSpecifier *)v21 setValues:v8 titles:v22 shortTitles:v7];
}

- (id)defaultVoiceLine:(id)a3
{
  if ([(NSArray *)self->_cachedPlanItems count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSArray *)self->_cachedPlanItems objectAtIndexedSubscript:v4];
      v6 = [(PSUICellularPlanManagerCache *)self->_planManagerCache subscriptionContextForPlanItem:v5 cachedSubscriptionContexts:self->_cachedSubscriptionContexts];
      v7 = [v6 userDefaultVoice];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 userDefaultVoice];
        v10 = [v9 BOOLValue];

        if (v10)
        {
          break;
        }
      }

      if ([(NSArray *)self->_cachedPlanItems count]<= ++v4)
      {
        goto LABEL_6;
      }
    }

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (void)setDefaultVoiceLine:(id)a3 specifier:(id)a4
{
  v5 = -[NSArray objectAtIndexedSubscript:](self->_cachedPlanItems, "objectAtIndexedSubscript:", [a3 integerValue]);
  v6 = [(PSUICellularPlanManagerCache *)self->_planManagerCache subscriptionContextForPlanItem:v5 cachedSubscriptionContexts:self->_cachedSubscriptionContexts];
  v7 = [v6 userDefaultVoice];
  if (!v7 || (v8 = v7, [v6 userDefaultVoice], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, (v10 & 1) == 0))
  {
    v11 = dispatch_semaphore_create(0);
    planManager = self->_planManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__PSUIDefaultVoiceLineSpecifier_setDefaultVoiceLine_specifier___block_invoke;
    v14[3] = &unk_279BA9E18;
    v14[4] = self;
    v15 = v5;
    v16 = v11;
    v13 = v11;
    [(CTCellularPlanManager *)planManager didSelectPlanForDefaultVoice:v15 completion:v14];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __63__PSUIDefaultVoiceLineSpecifier_setDefaultVoiceLine_specifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) getLogger];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v14 = 138412290;
      v15 = v8;
      v9 = "set default to: %@";
      v10 = v6;
      v11 = 12;
LABEL_6:
      _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    }
  }

  else if (v7)
  {
    v12 = *(a1 + 40);
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v5;
    v9 = "failed to set default to: %@, error: %@";
    v10 = v6;
    v11 = 22;
    goto LABEL_6;
  }

  dispatch_semaphore_signal(*(a1 + 48));
  v13 = *MEMORY[0x277D85DE8];
}

- (id)planItemForListItem:(id)a3
{
  v4 = a3;
  if ([v4 cellType] != 3)
  {
    goto LABEL_3;
  }

  v5 = [v4 values];
  v6 = [v5 firstObject];
  v7 = [MEMORY[0x277CBEB68] null];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    cachedPlanItems = self->_cachedPlanItems;
    v11 = [v4 values];
    v12 = [v11 firstObject];
    v9 = -[NSArray objectAtIndexedSubscript:](cachedPlanItems, "objectAtIndexedSubscript:", [v12 integerValue]);
  }

  else
  {
LABEL_3:
    v9 = 0;
  }

  return v9;
}

- (id)subscriptionContextForListItem:(id)a3
{
  v4 = [(PSUIDefaultVoiceLineSpecifier *)self planItemForListItem:a3];
  v5 = [(PSUICellularPlanManagerCache *)self->_planManagerCache subscriptionContextForPlanItem:v4 cachedSubscriptionContexts:self->_cachedSubscriptionContexts];

  return v5;
}

@end