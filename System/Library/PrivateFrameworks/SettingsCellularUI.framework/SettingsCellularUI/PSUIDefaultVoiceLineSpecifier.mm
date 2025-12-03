@interface PSUIDefaultVoiceLineSpecifier
- (PSUIDefaultVoiceLineSpecifier)initWithPlanManagerCache:(id)cache planManager:(id)manager simStatusCache:(id)statusCache;
- (id)defaultVoiceLine:(id)line;
- (id)initSpecifier;
- (id)planItemForListItem:(id)item;
- (id)subscriptionContextForListItem:(id)item;
- (void)setDefaultVoiceLine:(id)line specifier:(id)specifier;
- (void)updateCachedState;
@end

@implementation PSUIDefaultVoiceLineSpecifier

- (id)initSpecifier
{
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  v6 = [(PSUIDefaultVoiceLineSpecifier *)self initWithPlanManagerCache:v3 planManager:mEMORY[0x277CF96D8] simStatusCache:mEMORY[0x277D4D868]];

  return v6;
}

- (PSUIDefaultVoiceLineSpecifier)initWithPlanManagerCache:(id)cache planManager:(id)manager simStatusCache:(id)statusCache
{
  cacheCopy = cache;
  managerCopy = manager;
  statusCacheCopy = statusCache;
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"DEFAULT_VOICE_LINE" value:&stru_287733598 table:@"Gemini-Gemini"];
  v13 = objc_opt_class();
  v17.receiver = self;
  v17.super_class = PSUIDefaultVoiceLineSpecifier;
  v14 = [(PSUIDefaultVoiceLineSpecifier *)&v17 initWithName:v12 target:self set:sel_setDefaultVoiceLine_specifier_ get:sel_defaultVoiceLine_ detail:v13 cell:2 edit:0];

  if (v14)
  {
    [(PSUIDefaultVoiceLineSpecifier *)v14 setIdentifier:@"VOICE_LINE_SETTINGS"];
    objc_storeStrong(&v14->_planManagerCache, cache);
    objc_storeStrong(&v14->_planManager, manager);
    objc_storeStrong(&v14->_simStatusCache, statusCache);
    [(PSUIDefaultVoiceLineSpecifier *)v14 updateCachedState];
  }

  return v14;
}

- (void)updateCachedState
{
  planItems = [(PSUICellularPlanManagerCache *)self->_planManagerCache planItems];
  cachedPlanItems = self->_cachedPlanItems;
  self->_cachedPlanItems = planItems;

  subscriptionContexts = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  cachedSubscriptionContexts = self->_cachedSubscriptionContexts;
  self->_cachedSubscriptionContexts = subscriptionContexts;

  v22 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  selfCopy = self;
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
        userLabel = [v11 userLabel];
        label = [userLabel label];
        v15 = [v12 stringWithFormat:@"%@", label];
        [v22 addObject:v15];

        v16 = MEMORY[0x277CCACA8];
        userLabel2 = [v11 userLabel];
        label2 = [userLabel2 label];
        v19 = [v16 stringWithFormat:@"%@", label2];
        [v7 addObject:v19];

        v20 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
        [v8 addObject:v20];
      }

      ++v10;
    }

    while ([(NSArray *)v9 count]> v10);
  }

  [(PSUIDefaultVoiceLineSpecifier *)selfCopy setValues:v8 titles:v22 shortTitles:v7];
}

- (id)defaultVoiceLine:(id)line
{
  if ([(NSArray *)self->_cachedPlanItems count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSArray *)self->_cachedPlanItems objectAtIndexedSubscript:v4];
      v6 = [(PSUICellularPlanManagerCache *)self->_planManagerCache subscriptionContextForPlanItem:v5 cachedSubscriptionContexts:self->_cachedSubscriptionContexts];
      userDefaultVoice = [v6 userDefaultVoice];
      if (userDefaultVoice)
      {
        v8 = userDefaultVoice;
        userDefaultVoice2 = [v6 userDefaultVoice];
        bOOLValue = [userDefaultVoice2 BOOLValue];

        if (bOOLValue)
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

- (void)setDefaultVoiceLine:(id)line specifier:(id)specifier
{
  v5 = -[NSArray objectAtIndexedSubscript:](self->_cachedPlanItems, "objectAtIndexedSubscript:", [line integerValue]);
  v6 = [(PSUICellularPlanManagerCache *)self->_planManagerCache subscriptionContextForPlanItem:v5 cachedSubscriptionContexts:self->_cachedSubscriptionContexts];
  userDefaultVoice = [v6 userDefaultVoice];
  if (!userDefaultVoice || (v8 = userDefaultVoice, [v6 userDefaultVoice], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, (v10 & 1) == 0))
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

- (id)planItemForListItem:(id)item
{
  itemCopy = item;
  if ([itemCopy cellType] != 3)
  {
    goto LABEL_3;
  }

  values = [itemCopy values];
  firstObject = [values firstObject];
  null = [MEMORY[0x277CBEB68] null];
  v8 = [firstObject isEqual:null];

  if ((v8 & 1) == 0)
  {
    cachedPlanItems = self->_cachedPlanItems;
    values2 = [itemCopy values];
    firstObject2 = [values2 firstObject];
    v9 = -[NSArray objectAtIndexedSubscript:](cachedPlanItems, "objectAtIndexedSubscript:", [firstObject2 integerValue]);
  }

  else
  {
LABEL_3:
    v9 = 0;
  }

  return v9;
}

- (id)subscriptionContextForListItem:(id)item
{
  v4 = [(PSUIDefaultVoiceLineSpecifier *)self planItemForListItem:item];
  v5 = [(PSUICellularPlanManagerCache *)self->_planManagerCache subscriptionContextForPlanItem:v4 cachedSubscriptionContexts:self->_cachedSubscriptionContexts];

  return v5;
}

@end