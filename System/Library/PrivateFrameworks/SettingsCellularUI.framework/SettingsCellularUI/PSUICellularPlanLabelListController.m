@interface PSUICellularPlanLabelListController
- (id)createCustomUserLabelSpecifier:(BOOL)a3 planItem:(id)a4;
- (id)getPlanCustomLabel:(id)a3;
- (id)specifiers;
- (void)createCustomUserLabelGroupSpecifierIfNeeded;
- (void)createLabelGroupSpecifierIfNeeded;
- (void)setLabelAsSelectedLabel:(id)a3;
- (void)setPlanCustomLabel:(id)a3 forSpecifier:(id)a4;
- (void)updateNavigationBarTitle:(id)a3;
- (void)userSelectedCustomUserLabel:(id)a3;
@end

@implementation PSUICellularPlanLabelListController

- (id)specifiers
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v40 = *MEMORY[0x277D3FC48];
    v4 = [(PSUICellularPlanLabelListController *)self getLogger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v53 = "[PSUICellularPlanLabelListController specifiers]";
      _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s (re)loading specifiers", buf, 0xCu);
    }

    v5 = objc_opt_new();
    if (!self->_planReference)
    {
      v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D3FE70]];
      planReference = self->_planReference;
      self->_planReference = v6;

      v8 = [(PSUICellularPlanLabelListController *)self getLogger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_planReference;
        *buf = 138412290;
        v53 = v9;
        _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "initializing label picker with plan reference: %@", buf, 0xCu);
      }
    }

    v10 = +[PSUICellularPlanManagerCache sharedInstance];
    v11 = [v10 planFromReference:self->_planReference];

    [(PSUICellularPlanLabelListController *)self updateNavigationBarTitle:v11];
    v12 = +[PSUICellularPlanManagerCache sharedInstance];
    v13 = [v12 predefinedLabels];
    predefinedLabels = self->_predefinedLabels;
    self->_predefinedLabels = v13;

    v43 = v11;
    v15 = [v11 userLabel];
    v46 = [v15 indexInPredefinedLabels:self->_predefinedLabels];

    [(PSUICellularPlanLabelListController *)self createLabelGroupSpecifierIfNeeded];
    [v5 addObject:self->_labelGroupSpecifier];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = self->_predefinedLabels;
    v16 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v16)
    {
      v17 = v16;
      v45 = *v48;
      v44 = *MEMORY[0x277D40078];
      v41 = *MEMORY[0x277D40090];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v48 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v47 + 1) + 8 * i);
          v20 = MEMORY[0x277D3FAD8];
          v21 = [v19 label];
          v22 = [v20 preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:3 edit:0];

          v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "indexInPredefinedLabels:", self->_predefinedLabels)}];
          [v22 setProperty:v23 forKey:@"PSCellularPlanLabelIndexKey"];

          [v22 setProperty:&unk_287748F78 forKey:v44];
          [v22 setButtonAction:sel_setLabelAsSelectedLabel_];
          [v5 addObject:v22];
          if (v46 != -1)
          {
            v24 = [v43 userLabel];
            v25 = v5;
            v26 = [v24 indexInPredefinedLabels:self->_predefinedLabels];
            v27 = [v19 indexInPredefinedLabels:self->_predefinedLabels];

            v28 = v26 == v27;
            v5 = v25;
            if (v28)
            {
              [(PSSpecifier *)self->_labelGroupSpecifier setProperty:v22 forKey:v41];
            }
          }
        }

        v17 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v17);
    }

    [(PSUICellularPlanLabelListController *)self createCustomUserLabelGroupSpecifierIfNeeded];
    [v5 addObject:self->_customUserLabelGroupSpecifier];
    v29 = [(PSUICellularPlanLabelListController *)self createCustomUserLabelSpecifier:v46 == -1 planItem:v43];
    [v5 addObject:v29];
    v30 = MEMORY[0x277D3FAD8];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"EDIT_CUSTOM_LABEL" value:&stru_287733598 table:@"Gemini-Gemini"];
    v33 = [v30 preferenceSpecifierNamed:v32 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v5 addObject:v33];
    if (v46 == -1)
    {
      v34 = [v43 userLabel];
      v35 = [v34 label];
      validatedCustomLabelText = self->_validatedCustomLabelText;
      self->_validatedCustomLabelText = v35;

      [(PSSpecifier *)self->_customUserLabelGroupSpecifier setProperty:v29 forKey:*MEMORY[0x277D40090]];
    }

    [MEMORY[0x277D4D878] logSpecifiers:v5 origin:@"[PSUICellularPlanLabelListController specifiers] end"];
    v37 = *(&self->super.super.super.super.super.isa + v40);
    *(&self->super.super.super.super.super.isa + v40) = v5;

    v3 = *(&self->super.super.super.super.super.isa + v40);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)updateNavigationBarTitle:(id)a3
{
  v11 = a3;
  v4 = +[PSUICellularPlanManagerCache sharedInstance];
  v5 = [v4 subscriptionContextForPlanItem:v11 cachedSubscriptionContexts:0];

  if (v5)
  {
    v6 = [v11 phoneNumber];
    v7 = [v6 length];

    if (v7)
    {
      v8 = +[PSUICoreTelephonyCallCache sharedInstance];
      v9 = [v11 phoneNumber];
      v10 = [v8 localizedPhoneNumber:v9 context:v5];

      if (v10)
      {
        [(PSUICellularPlanLabelListController *)self setTitle:v10];
      }
    }
  }
}

- (void)createLabelGroupSpecifierIfNeeded
{
  if (!self->_labelGroupSpecifier)
  {
    v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Labels"];
    labelGroupSpecifier = self->_labelGroupSpecifier;
    self->_labelGroupSpecifier = v3;

    v5 = self->_labelGroupSpecifier;
    v6 = *MEMORY[0x277D3FFE8];
    v7 = MEMORY[0x277CBEC38];

    [(PSSpecifier *)v5 setProperty:v7 forKey:v6];
  }
}

- (void)createCustomUserLabelGroupSpecifierIfNeeded
{
  if (!self->_customUserLabelGroupSpecifier)
  {
    v3 = MEMORY[0x277D3FAD8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"CUSTOM_LABEL" value:&stru_287733598 table:@"Gemini-Gemini"];
    v6 = [v3 groupSpecifierWithName:v5];
    customUserLabelGroupSpecifier = self->_customUserLabelGroupSpecifier;
    self->_customUserLabelGroupSpecifier = v6;

    v8 = self->_customUserLabelGroupSpecifier;
    v9 = *MEMORY[0x277D3FFE8];
    v10 = MEMORY[0x277CBEC38];

    [(PSSpecifier *)v8 setProperty:v10 forKey:v9];
  }
}

- (id)createCustomUserLabelSpecifier:(BOOL)a3 planItem:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"DEFAULT_CUSTOM_LABEL" value:&stru_287733598 table:@"Gemini-Gemini"];

  if (v4)
  {
    v9 = [v6 userLabel];
    v10 = [v9 label];

    v8 = [v6 userLabel];
    v11 = [v8 label];
    validatedCustomLabelText = self->_validatedCustomLabelText;
    self->_validatedCustomLabelText = v11;
  }

  else
  {
    v13 = self->_validatedCustomLabelText;
    if (!v13)
    {
      goto LABEL_6;
    }

    v10 = v13;
  }

  v8 = v10;
LABEL_6:
  v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v14 setProperty:&unk_287748F78 forKey:*MEMORY[0x277D40078]];
  [v14 setButtonAction:sel_userSelectedCustomUserLabel_];

  return v14;
}

- (void)setLabelAsSelectedLabel:(id)a3
{
  v4 = a3;
  v5 = +[PSUICellularPlanManagerCache sharedInstance];
  v13 = [v5 planFromReference:self->_planReference];

  v6 = [v4 propertyForKey:@"PSCellularPlanLabelIndexKey"];
  v7 = [v6 unsignedIntegerValue];

  v8 = +[PSUICellularPlanManagerCache sharedInstance];
  v9 = [(NSArray *)self->_predefinedLabels objectAtIndexedSubscript:v7];
  [v8 setLabel:v9 forPlan:v13];

  v10 = *MEMORY[0x277D40090];
  [(PSSpecifier *)self->_labelGroupSpecifier setProperty:v4 forKey:*MEMORY[0x277D40090]];

  v11 = [(PSSpecifier *)self->_customUserLabelGroupSpecifier propertyForKey:v10];
  v12 = [v11 propertyForKey:*MEMORY[0x277D40148]];
  [v12 setChecked:0];
  [v12 setValue:0];
  [(PSSpecifier *)self->_customUserLabelGroupSpecifier setProperty:0 forKey:v10];
  [(PSUICellularPlanLabelListController *)self reloadSpecifiers];
}

- (id)getPlanCustomLabel:(id)a3
{
  validatedCustomLabelText = self->_validatedCustomLabelText;
  if (validatedCustomLabelText)
  {
    v5 = validatedCustomLabelText;
  }

  else
  {
    v5 = &stru_287733598;
  }

  return v5;
}

- (void)setPlanCustomLabel:(id)a3 forSpecifier:(id)a4
{
  v22 = a4;
  v6 = MEMORY[0x277CCA900];
  v7 = a3;
  v8 = [v6 whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  if ([v9 length])
  {
    if ([v9 length] >= 0x1F)
    {
      v10 = [v9 length];
      if (v10 >= 0x1E)
      {
        v11 = 30;
      }

      else
      {
        v11 = v10;
      }

      v12 = [v9 rangeOfComposedCharacterSequencesForRange:{0, v11}];
      v14 = [v9 substringWithRange:{v12, v13}];

      v9 = v14;
    }

    objc_storeStrong(&self->_validatedCustomLabelText, v9);
    validatedCustomLabelText = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:self->_validatedCustomLabelText];
    v16 = +[PSUICellularPlanManagerCache sharedInstance];
    v17 = +[PSUICellularPlanManagerCache sharedInstance];
    v18 = [v17 planFromReference:self->_planReference];
    [v16 setLabel:validatedCustomLabelText forPlan:v18];

    v19 = *MEMORY[0x277D40090];
    v20 = [(PSSpecifier *)self->_labelGroupSpecifier propertyForKey:*MEMORY[0x277D40090]];
    v21 = [v20 propertyForKey:*MEMORY[0x277D40148]];
    [v21 setChecked:0];
    [v21 setValue:0];
    [(PSSpecifier *)self->_labelGroupSpecifier setProperty:0 forKey:v19];
    [(PSSpecifier *)self->_customUserLabelGroupSpecifier setProperty:v22 forKey:v19];
  }

  else
  {
    validatedCustomLabelText = self->_validatedCustomLabelText;
    self->_validatedCustomLabelText = 0;
  }

  [(PSUICellularPlanLabelListController *)self reloadSpecifiers];
}

- (void)userSelectedCustomUserLabel:(id)a3
{
  v14 = a3;
  if (!self->_validatedCustomLabelText)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DEFAULT_CUSTOM_LABEL" value:&stru_287733598 table:@"Gemini-Gemini"];
    validatedCustomLabelText = self->_validatedCustomLabelText;
    self->_validatedCustomLabelText = v5;
  }

  v7 = [objc_alloc(MEMORY[0x277CF96F0]) initWithLabel:self->_validatedCustomLabelText];
  v8 = +[PSUICellularPlanManagerCache sharedInstance];
  v9 = +[PSUICellularPlanManagerCache sharedInstance];
  v10 = [v9 planFromReference:self->_planReference];
  [v8 setLabel:v7 forPlan:v10];

  v11 = *MEMORY[0x277D40090];
  v12 = [(PSSpecifier *)self->_labelGroupSpecifier propertyForKey:*MEMORY[0x277D40090]];
  v13 = [v12 propertyForKey:*MEMORY[0x277D40148]];
  [v13 setChecked:0];
  [v13 setValue:0];
  [(PSSpecifier *)self->_labelGroupSpecifier setProperty:0 forKey:v11];
  [(PSSpecifier *)self->_customUserLabelGroupSpecifier setProperty:v14 forKey:v11];
  [(PSUICellularPlanLabelListController *)self reloadSpecifiers];
}

@end