@interface SHSDualSIMToneController
- (SHSDualSIMToneController)init;
- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)a3 topic:(id)a4;
- (void)_updateReloadSpecifierInParentController;
- (void)setSpecifier:(id)a3;
- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4;
- (void)vibrationPickerViewController:(id)a3 selectedVibrationWithIdentifier:(id)a4;
@end

@implementation SHSDualSIMToneController

- (SHSDualSIMToneController)init
{
  v5.receiver = self;
  v5.super_class = SHSDualSIMToneController;
  v2 = [(SHSToneController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SHSDualSIMToneController *)v2 setIsDefaultSIMLineController:0];
  }

  return v3;
}

- (void)setSpecifier:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 propertyForKey:@"accountIdentifier"];
  v6 = SHSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[SHSDualSIMToneController setSpecifier:]";
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&dword_265896000, v6, OS_LOG_TYPE_DEFAULT, "%s with topic: %@", buf, 0x16u);
  }

  if (v5)
  {
    [(SHSDualSIMToneController *)self setTopic:v5];
    v7 = [v4 propertyForKey:*MEMORY[0x277D40128]];
    if (v7)
    {
      v8 = SHSLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v7;
        _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "SHSDualSIMToneController context:%@", buf, 0xCu);
      }

      v9 = [v7 userDefaultVoice];
      v10 = [v9 BOOLValue];

      if (v10)
      {
        [(SHSDualSIMToneController *)self setIsDefaultSIMLineController:1];
      }

      v11 = [(SHSDualSIMToneController *)self titleView];

      if (!v11)
      {
        v12 = [v7 label];
        v13 = [v4 propertyForKey:@"contextShortLabel"];
        v14 = v13;
        v15 = &stru_28772CD00;
        if (v13)
        {
          v15 = v13;
        }

        v16 = v15;

        v17 = SHSLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = v12;
          v34 = 2112;
          v35 = v16;
          _os_log_impl(&dword_265896000, v17, OS_LOG_TYPE_DEFAULT, "SHSDualSIMToneController creating titleView with simLabel: %@, simShortLabel: %@", buf, 0x16u);
        }

        if (v12)
        {
          v18 = objc_alloc_init(SHSDualSIMToneTitleView);
          titleView = self->_titleView;
          self->_titleView = v18;

          [(SHSDualSIMToneTitleView *)self->_titleView updateContentsWithTitle:v12 badgeText:v16];
        }
      }

      v20 = self->_titleView;
      v21 = [(SHSDualSIMToneController *)self navigationItem];
      [v21 setTitleView:v20];
    }
  }

  v31.receiver = self;
  v31.super_class = SHSDualSIMToneController;
  [(SHSToneController *)&v31 setSpecifier:v4];
  v22 = [(SHSToneController *)self tonePickerViewController];
  if (v22)
  {
    v23 = v22;
    v24 = [(SHSDualSIMToneController *)self isDefaultSIMLineController];

    if (v24)
    {
      v25 = [v4 propertyForKey:@"alertType"];
      if (v25)
      {
        v26 = TLAlertTypeFromString();
        v27 = [(SHSToneController *)self tonePickerViewController];
        [v27 setTopic:0];

        v28 = [(SHSToneController *)self _defaultToneIdentifierForTonePickerWithAlertType:v26 topic:0];
        v29 = [(SHSToneController *)self tonePickerViewController];
        [v29 setDefaultToneIdentifier:v28];
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_updateReloadSpecifierInParentController
{
  v2 = [(SHSDualSIMToneController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 reloadSpecifiers];
  }
}

- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SHSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[SHSDualSIMToneController tonePickerViewController:selectedToneWithIdentifier:]";
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "%s selectedToneWithIdentifier:%@", &v20, 0x16u);
  }

  v9 = [MEMORY[0x277D71F78] sharedToneManager];
  v10 = [v6 alertType];
  v11 = [(SHSDualSIMToneController *)self topic];
  [v9 setCurrentToneIdentifier:v7 forAlertType:v10 topic:v11];

  LODWORD(v11) = [(SHSDualSIMToneController *)self isDefaultSIMLineController];
  v12 = [MEMORY[0x277D71F78] sharedToneManager];
  v13 = [v6 alertType];
  if (v11)
  {
    [v12 setCurrentToneIdentifier:v7 forAlertType:v13 topic:0];
  }

  else
  {
    v14 = [(SHSDualSIMToneController *)self topic];
    v15 = [v12 currentToneIdentifierForAlertType:v13 topic:v14];

    v16 = [MEMORY[0x277D71F78] sharedToneManager];
    v17 = [v6 alertType];
    v18 = [(SHSDualSIMToneController *)self topic];
    [v16 setCurrentToneIdentifier:v15 forAlertType:v17 topic:v18];

    v12 = v15;
  }

  [(SHSDualSIMToneController *)self _updateReloadSpecifierInParentController];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)vibrationPickerViewController:(id)a3 selectedVibrationWithIdentifier:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SHSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[SHSDualSIMToneController vibrationPickerViewController:selectedVibrationWithIdentifier:]";
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "%s selectedToneWithIdentifier:%@", &v20, 0x16u);
  }

  v9 = [MEMORY[0x277D71F88] sharedVibrationManager];
  v10 = [v6 alertType];
  v11 = [(SHSDualSIMToneController *)self topic];
  [v9 setCurrentVibrationIdentifier:v7 forAlertType:v10 topic:v11];

  LODWORD(v11) = [(SHSDualSIMToneController *)self isDefaultSIMLineController];
  v12 = [MEMORY[0x277D71F88] sharedVibrationManager];
  v13 = [v6 alertType];
  if (v11)
  {
    [v12 setCurrentVibrationIdentifier:v7 forAlertType:v13 topic:0];
  }

  else
  {
    v14 = [(SHSDualSIMToneController *)self topic];
    v15 = [v12 currentVibrationIdentifierForAlertType:v13 topic:v14];

    v16 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v17 = [v6 alertType];
    v18 = [(SHSDualSIMToneController *)self topic];
    [v16 setCurrentVibrationIdentifier:v15 forAlertType:v17 topic:v18];

    v12 = v15;
  }

  [(SHSDualSIMToneController *)self _updateReloadSpecifierInParentController];
  v19 = *MEMORY[0x277D85DE8];
}

- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)a3 topic:(id)a4
{
  v5 = [(SHSDualSIMToneController *)self isDefaultSIMLineController:a3];
  v6 = [MEMORY[0x277D71F88] sharedVibrationManager];
  v7 = v6;
  if (v5)
  {
    [v6 defaultVibrationIdentifierForAlertType:a3];
  }

  else
  {
    [v6 currentVibrationIdentifierForAlertType:a3];
  }
  v8 = ;

  return v8;
}

@end