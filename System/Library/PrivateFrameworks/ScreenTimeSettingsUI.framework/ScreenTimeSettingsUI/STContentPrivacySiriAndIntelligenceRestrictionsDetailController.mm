@interface STContentPrivacySiriAndIntelligenceRestrictionsDetailController
- (STContentPrivacySiriAndIntelligenceRestrictionsDetailController)initWithRootViewModelCoordinator:(id)coordinator;
- (id)_defaultLinkListSpecifierWithConfiguration:(id)configuration key:(id)key;
- (id)_defaultLinkListSpecifierWithConfiguration:(id)configuration key:(id)key uiLabelStringsTable:(id)table;
- (id)_defaultLinkListSpecifierWithItem:(id)item titlesByValue:(id)value uiLabelStringsTable:(id)table;
- (id)_defaultSwitchSpecifierWithConfiguration:(id)configuration key:(id)key fallbackLabel:(id)label;
- (id)_getSiriImageGenerationLinkListSpecifierValue:(id)value;
- (id)_getSpecifierValueForItem:(id)item viewModel:(id)model restrictionValues:(id)values;
- (id)_radioGroupSpecifierWithName:(id)name footerText:(id)text item:(id)item;
- (id)_siriImageGenerationSpecifier;
- (id)getItemSpecifierValue:(id)value;
- (id)specifiers;
- (void)_setItemSpecifierValue:(id)value specifier:(id)specifier;
- (void)_setSiriImageGenerationLinkListSpecifierValue:(id)value specifier:(id)specifier;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)setItemSpecifierValue:(id)value specifier:(id)specifier;
@end

@implementation STContentPrivacySiriAndIntelligenceRestrictionsDetailController

- (STContentPrivacySiriAndIntelligenceRestrictionsDetailController)initWithRootViewModelCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = STContentPrivacySiriAndIntelligenceRestrictionsDetailController;
  return [(STPINListViewController *)&v4 initWithRootViewModelCoordinator:coordinator];
}

- (id)specifiers
{
  v50 = *MEMORY[0x277D85DE8];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  isLoaded = [viewModel isLoaded];

  if (isLoaded)
  {
    v7 = objc_opt_new();
    v8 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
    v9 = +[STScreenTimeSettingsUIBundle bundle];
    v10 = [v9 localizedStringForKey:@"AppleIntelligenceLabel" value:&stru_28766E5A8 table:v8];
    v11 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _radioGroupSpecifierWithName:v10 footerText:0 item:0];
    [v7 addObject:v11];

    if (_os_feature_enabled_impl())
    {
      _siriImageGenerationSpecifier = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _siriImageGenerationSpecifier];
      [v7 addObject:_siriImageGenerationSpecifier];
    }

    v13 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _defaultLinkListSpecifierWithConfiguration:@"system.siri" key:@"allowWritingTools"];
    [v7 addObject:v13];

    v14 = [v9 localizedStringForKey:&stru_28766E5A8 value:&stru_28766E5A8 table:@"Restrictions-Montara"];
    v43 = [v9 localizedStringForKey:@"IntelligenceExtensionsFooterText" value:&stru_28766E5A8 table:@"Restrictions-Montara"];
    v44 = v14;
    v15 = [STContentPrivacySiriAndIntelligenceRestrictionsDetailController _radioGroupSpecifierWithName:"_radioGroupSpecifierWithName:footerText:item:" footerText:v14 item:?];
    [v7 addObject:v15];

    v16 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _defaultLinkListSpecifierWithConfiguration:@"system.siri" key:@"allowExternalIntelligenceIntegrations" uiLabelStringsTable:@"Restrictions-Montara"];
    [v7 addObject:v16];
    v17 = [v9 localizedStringForKey:@"IntelligenceExtensionsDetailFooterText" value:&stru_28766E5A8 table:@"Restrictions-Montara"];
    v42 = v16;
    [v16 setObject:v17 forKeyedSubscript:0x287674048];

    v41 = [v9 localizedStringForKey:@"SiriLabel" value:&stru_28766E5A8 table:v8];
    v18 = [STContentPrivacySiriAndIntelligenceRestrictionsDetailController _radioGroupSpecifierWithName:"_radioGroupSpecifierWithName:footerText:item:" footerText:? item:?];
    [v7 addObject:v18];

    v19 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _defaultSwitchSpecifierWithConfiguration:0x2876725E8 key:0x287672708 fallbackLabel:0];
    [v7 addObject:v19];

    v20 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _defaultLinkListSpecifierWithConfiguration:@"system.siri" key:@"allowAssistantUserGeneratedContent"];
    [v7 addObject:v20];

    v21 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _defaultLinkListSpecifierWithConfiguration:@"system.siri" key:@"forceAssistantProfanityFilter"];
    [v7 addObject:v21];

    v22 = [v9 localizedStringForKey:&stru_28766E5A8 value:&stru_28766E5A8 table:v8];
    v23 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _radioGroupSpecifierWithName:v22 footerText:0 item:0];
    [v7 addObject:v23];

    v24 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _defaultLinkListSpecifierWithConfiguration:0x2876725E8 key:0x287672728];
    [v7 addObject:v24];

    coordinator2 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator2 = [coordinator2 contentPrivacyCoordinator];
    LOBYTE(v21) = [contentPrivacyCoordinator2 areRestrictionsEditable];

    if ((v21 & 1) == 0)
    {
      v39 = v10;
      v40 = v8;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v27 = v7;
      v28 = [v27 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v46;
        v31 = *MEMORY[0x277D3FF38];
        v32 = MEMORY[0x277CBEC28];
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v46 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v45 + 1) + 8 * i) setObject:v32 forKeyedSubscript:{v31, v39, v40}];
          }

          v29 = [v27 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v29);
      }

      v10 = v39;
      v8 = v40;
    }

    v34 = [v7 copy];
    v35 = *MEMORY[0x277D3FC48];
    v36 = *(&self->super.super.super.super.super.super.super.isa + v35);
    *(&self->super.super.super.super.super.super.super.isa + v35) = v34;

    v37 = *(&self->super.super.super.super.super.super.super.isa + v35);
  }

  else
  {
    v37 = MEMORY[0x277CBEBF8];
  }

  return v37;
}

- (id)getItemSpecifierValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy objectForKeyedSubscript:0x287672648];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  values = [valueCopy values];

  v10 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _getSpecifierValueForItem:v5 viewModel:viewModel restrictionValues:values];

  return v10;
}

- (id)_getSpecifierValueForItem:(id)item viewModel:(id)model restrictionValues:(id)values
{
  itemCopy = item;
  modelCopy = model;
  valuesByRestriction = [modelCopy valuesByRestriction];
  v9 = [valuesByRestriction objectForKeyedSubscript:itemCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [modelCopy defaultValueForRestriction:itemCopy];
  }

  v12 = v11;

  return v12;
}

- (void)setItemSpecifierValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __99__STContentPrivacySiriAndIntelligenceRestrictionsDetailController_setItemSpecifierValue_specifier___block_invoke;
    v8[3] = &unk_279B7CC40;
    v8[4] = self;
    v9 = valueCopy;
    v10 = specifierCopy;
    [(PSListController *)self st_showPINSheetWithCompletion:v8];
  }

  else
  {
    [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _setItemSpecifierValue:valueCopy specifier:specifierCopy];
  }
}

uint64_t __99__STContentPrivacySiriAndIntelligenceRestrictionsDetailController_setItemSpecifierValue_specifier___block_invoke(void *a1, int a2)
{
  v3 = a1[4];
  if (a2)
  {
    return [v3 _setItemSpecifierValue:a1[5] specifier:a1[6]];
  }

  else
  {
    return [v3 reloadSpecifier:a1[6] animated:1];
  }
}

- (void)_setItemSpecifierValue:(id)value specifier:(id)specifier
{
  specifierCopy = specifier;
  valueCopy = value;
  v8 = [specifierCopy objectForKeyedSubscript:0x287672648];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__STContentPrivacySiriAndIntelligenceRestrictionsDetailController__setItemSpecifierValue_specifier___block_invoke;
  v12[3] = &unk_279B7CBC8;
  v12[4] = self;
  v13 = specifierCopy;
  v11 = specifierCopy;
  [contentPrivacyCoordinator saveRestrictionValue:valueCopy forItem:v8 completionHandler:v12];
}

- (id)_getSiriImageGenerationLinkListSpecifierValue:(id)value
{
  v3 = MEMORY[0x277CCABB0];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v7 = [v3 numberWithBool:{objc_msgSend(viewModel, "isSiriImageGenerationAllowed")}];

  return v7;
}

- (void)_setSiriImageGenerationLinkListSpecifierValue:(id)value specifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [value BOOLValue];
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __123__STContentPrivacySiriAndIntelligenceRestrictionsDetailController__setSiriImageGenerationLinkListSpecifierValue_specifier___block_invoke;
  v11[3] = &unk_279B7CBC8;
  v11[4] = self;
  v12 = specifierCopy;
  v10 = specifierCopy;
  [contentPrivacyCoordinator saveSiriImageGenerationIsAllowed:bOOLValue completionHandler:v11];
}

- (void)dealloc
{
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  [contentPrivacyCoordinator removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"SiriAndIntelligenceRestrictionsViewModelLoadedContext"];

  v5.receiver = self;
  v5.super_class = STContentPrivacySiriAndIntelligenceRestrictionsDetailController;
  [(STListViewController *)&v5 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STPINListViewController *)self coordinator];

  if (coordinator != coordinatorCopy)
  {
    coordinator2 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator = [coordinator2 contentPrivacyCoordinator];
    [contentPrivacyCoordinator removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"SiriAndIntelligenceRestrictionsViewModelLoadedContext"];

    v10.receiver = self;
    v10.super_class = STContentPrivacySiriAndIntelligenceRestrictionsDetailController;
    [(STPINListViewController *)&v10 setCoordinator:coordinatorCopy];
    coordinator3 = [(STPINListViewController *)self coordinator];
    contentPrivacyCoordinator2 = [coordinator3 contentPrivacyCoordinator];
    [contentPrivacyCoordinator2 addObserver:self forKeyPath:@"viewModel.isLoaded" options:0 context:@"SiriAndIntelligenceRestrictionsViewModelLoadedContext"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"SiriAndIntelligenceRestrictionsViewModelLoadedContext")
  {
    v7 = [(STPINListViewController *)self coordinator:path];
    contentPrivacyCoordinator = [v7 contentPrivacyCoordinator];
    viewModel = [contentPrivacyCoordinator viewModel];
    isLoaded = [viewModel isLoaded];

    if (isLoaded)
    {

      [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self reloadSpecifiers];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STContentPrivacySiriAndIntelligenceRestrictionsDetailController;
    [(STListViewController *)&v11 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)_defaultLinkListSpecifierWithItem:(id)item titlesByValue:(id)value uiLabelStringsTable:(id)table
{
  v33[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  tableCopy = table;
  v10 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v11 = +[STScreenTimeSettingsUIBundle bundle];
  uiLabel = [itemCopy uiLabel];
  v13 = [v11 localizedStringForKey:uiLabel value:&stru_28766E5A8 table:tableCopy];

  v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:objc_opt_class() cell:2 edit:0];
  coordinator = [(STPINListViewController *)self coordinator];
  [v14 setObject:coordinator forKeyedSubscript:0x287675C48];

  restrictionType = [itemCopy restrictionType];
  v31 = v13;
  if (restrictionType == 1)
  {
    v22 = [v11 localizedStringForKey:@"AllowLabel" value:&stru_28766E5A8 table:v10];
    v23 = [v11 localizedStringForKey:@"DontAllowLabel" value:&stru_28766E5A8 table:v10];
    v32[0] = v22;
    v32[1] = v23;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

    v21 = &unk_28769D790;
  }

  else
  {
    v17 = restrictionType;
    if (restrictionType)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"STContentPrivacySiriAndIntelligenceRestrictionsDetailController.m" lineNumber:192 description:{@"Unimplemented type %d", v17}];

      v20 = 0;
      v21 = 0;
    }

    else
    {
      v18 = [v11 localizedStringForKey:@"AllowLabel" value:&stru_28766E5A8 table:v10];
      v19 = [v11 localizedStringForKey:@"DontAllowLabel" value:&stru_28766E5A8 table:v10];
      v33[0] = v18;
      v33[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];

      v21 = &unk_28769D778;
    }
  }

  v25 = MEMORY[0x277CCABB0];
  coordinator2 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator2 contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v29 = [v25 numberWithBool:{objc_msgSend(viewModel, "shouldEnableRestriction:", itemCopy)}];
  [v14 setObject:v29 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v14 setObject:itemCopy forKeyedSubscript:0x287672648];
  [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  [v14 setValues:v21 titles:v20];

  return v14;
}

- (id)_defaultLinkListSpecifierWithConfiguration:(id)configuration key:(id)key
{
  keyCopy = key;
  configurationCopy = configuration;
  v8 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v9 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _defaultLinkListSpecifierWithConfiguration:configurationCopy key:keyCopy uiLabelStringsTable:v8];

  return v9;
}

- (id)_defaultLinkListSpecifierWithConfiguration:(id)configuration key:(id)key uiLabelStringsTable:(id)table
{
  tableCopy = table;
  keyCopy = key;
  configurationCopy = configuration;
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v15 = [viewModel visibleRestrictionWithConfiguration:configurationCopy key:keyCopy];

  if (!v15)
  {
    [STContentPrivacySiriAndIntelligenceRestrictionsDetailController _defaultLinkListSpecifierWithConfiguration:a2 key:self uiLabelStringsTable:?];
  }

  v16 = [(STContentPrivacySiriAndIntelligenceRestrictionsDetailController *)self _defaultLinkListSpecifierWithItem:v15 titlesByValue:0 uiLabelStringsTable:tableCopy];

  return v16;
}

- (id)_radioGroupSpecifierWithName:(id)name footerText:(id)text item:(id)item
{
  textCopy = text;
  itemCopy = item;
  v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:name];
  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FFE8]];
  if (textCopy)
  {
    [v9 setObject:textCopy forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  if (itemCopy)
  {
    [v9 setObject:itemCopy forKeyedSubscript:0x287672648];
  }

  return v9;
}

- (id)_defaultSwitchSpecifierWithConfiguration:(id)configuration key:(id)key fallbackLabel:(id)label
{
  labelCopy = label;
  keyCopy = key;
  configurationCopy = configuration;
  coordinator = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v14 = [viewModel visibleRestrictionWithConfiguration:configurationCopy key:keyCopy];

  v15 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v16 = +[STScreenTimeSettingsUIBundle bundle];
  uiLabel = [v14 uiLabel];
  v27 = labelCopy;
  if ([uiLabel length])
  {
    v18 = [v16 localizedStringForKey:uiLabel value:&stru_28766E5A8 table:v15];
  }

  else
  {
    v18 = labelCopy;
  }

  v19 = v18;
  v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v18 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:0 cell:6 edit:0];
  v21 = MEMORY[0x277CCABB0];
  coordinator2 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator2 = [coordinator2 contentPrivacyCoordinator];
  viewModel2 = [contentPrivacyCoordinator2 viewModel];
  v25 = [v21 numberWithBool:{objc_msgSend(viewModel2, "restrictionsEnabled")}];
  [v20 setObject:v25 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v20 setObject:v14 forKeyedSubscript:0x287672648];

  return v20;
}

- (id)_siriImageGenerationSpecifier
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"SiriImageGenerationSpecifierName" value:&stru_28766E5A8 table:v3];
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:sel__setSiriImageGenerationLinkListSpecifierValue_specifier_ get:sel__getSiriImageGenerationLinkListSpecifierValue_ detail:objc_opt_class() cell:2 edit:0];
  coordinator = [(STPINListViewController *)self coordinator];
  [v6 setObject:coordinator forKeyedSubscript:0x287675C48];

  v8 = MEMORY[0x277CCABB0];
  coordinator2 = [(STPINListViewController *)self coordinator];
  contentPrivacyCoordinator = [coordinator2 contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v12 = [v8 numberWithBool:{objc_msgSend(viewModel, "restrictionsEnabled")}];
  [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v6 setObject:&unk_28769D7A8 forKeyedSubscript:@"STSiriAndIntelligenceRestrictionRanksSpecifierKey"];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  v13 = [v4 localizedStringForKey:@"AllowLabel" value:&stru_28766E5A8 table:v3];
  v14 = [v4 localizedStringForKey:@"DontAllowLabel" value:&stru_28766E5A8 table:v3];
  v22[0] = v13;
  v22[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [v6 setValues:&unk_28769D7A8 titles:v15];

  v16 = [v4 localizedStringForKey:@"SiriImageGenerationDetailFooterText" value:&stru_28766E5A8 table:v3];
  [v6 setObject:v16 forKeyedSubscript:0x287674048];

  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v18 = [v4 localizedStringForKey:@"SiriImageGenerationDetailExtendAppleIntelligenceFooterText" value:&stru_28766E5A8 table:@"Restrictions-Montara"];
  [emptyGroupSpecifier setObject:v18 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v21 = emptyGroupSpecifier;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [v6 setObject:v19 forKeyedSubscript:0x287674008];

  return v6;
}

- (void)_defaultLinkListSpecifierWithConfiguration:(uint64_t)a1 key:(uint64_t)a2 uiLabelStringsTable:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STContentPrivacySiriAndIntelligenceRestrictionsDetailController.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"item"}];
}

@end