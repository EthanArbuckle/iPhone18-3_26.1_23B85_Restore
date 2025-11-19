@interface PSUICellularPlanLabelSpecifier
- (PSUICellularPlanLabelSpecifier)initWithPlanUniversalReference:(id)a3 planManagerCache:(id)a4;
- (id)cellularPlanLabel:(id)a3;
- (void)updateValuesAndTitles;
@end

@implementation PSUICellularPlanLabelSpecifier

- (PSUICellularPlanLabelSpecifier)initWithPlanUniversalReference:(id)a3 planManagerCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CELLULAR_PLAN_LABEL" value:&stru_287733598 table:@"Gemini-Gemini"];
  v11 = objc_opt_class();
  v14.receiver = self;
  v14.super_class = PSUICellularPlanLabelSpecifier;
  v12 = [(PSUICellularPlanLabelSpecifier *)&v14 initWithName:v10 target:self set:0 get:sel_cellularPlanLabel_ detail:v11 cell:2 edit:0];

  if (v12)
  {
    objc_storeStrong(&v12->_planReference, a3);
    objc_storeStrong(&v12->_planManagerCache, a4);
    [(PSUICellularPlanLabelSpecifier *)v12 setProperty:v12->_planReference forKey:*MEMORY[0x277D3FE70]];
    [(PSUICellularPlanLabelSpecifier *)v12 updateValuesAndTitles];
  }

  return v12;
}

- (void)updateValuesAndTitles
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planFromReference:self->_planReference];
  v4 = MEMORY[0x277CBEB18];
  v5 = [(PSUICellularPlanManagerCache *)self->_planManagerCache predefinedLabels];
  v6 = [v4 arrayWithArray:v5];

  v7 = [v3 userLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [v3 userLabel];
    v10 = [v6 containsObject:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [v3 userLabel];
      [v6 addObject:v11];
    }
  }

  v12 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v22 + 1) + 8 * i) label];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = [(PSUICellularPlanLabelSpecifier *)self getLogger];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v13;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_2658DE000, v19, OS_LOG_TYPE_DEFAULT, "updating values and titles: %@ %@", buf, 0x16u);
  }

  [(PSUICellularPlanLabelSpecifier *)self setValues:v13 titles:v12 shortTitles:v12];
  if ([v3 transferredStatus] == 4)
  {
    v20 = MEMORY[0x277CBEC28];
  }

  else
  {
    v20 = MEMORY[0x277CBEC38];
  }

  [(PSUICellularPlanLabelSpecifier *)self setProperty:v20 forKey:*MEMORY[0x277D3FF38], v22];

  v21 = *MEMORY[0x277D85DE8];
}

- (id)cellularPlanLabel:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  [(PSUICellularPlanLabelSpecifier *)self updateValuesAndTitles];
  v4 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planFromReference:self->_planReference];
  v5 = [(PSUICellularPlanLabelSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 userLabel];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "displaying user label %@ for plan item %@", &v10, 0x16u);
  }

  v7 = [v4 userLabel];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end