@interface SHSDualSIMToneController
- (SHSDualSIMToneController)init;
- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)type topic:(id)topic;
- (void)_updateReloadSpecifierInParentController;
- (void)setSpecifier:(id)specifier;
- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier;
- (void)vibrationPickerViewController:(id)controller selectedVibrationWithIdentifier:(id)identifier;
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

- (void)setSpecifier:(id)specifier
{
  v36 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"accountIdentifier"];
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
    v7 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
    if (v7)
    {
      v8 = SHSLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v7;
        _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "SHSDualSIMToneController context:%@", buf, 0xCu);
      }

      userDefaultVoice = [v7 userDefaultVoice];
      bOOLValue = [userDefaultVoice BOOLValue];

      if (bOOLValue)
      {
        [(SHSDualSIMToneController *)self setIsDefaultSIMLineController:1];
      }

      titleView = [(SHSDualSIMToneController *)self titleView];

      if (!titleView)
      {
        label = [v7 label];
        v13 = [specifierCopy propertyForKey:@"contextShortLabel"];
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
          v33 = label;
          v34 = 2112;
          v35 = v16;
          _os_log_impl(&dword_265896000, v17, OS_LOG_TYPE_DEFAULT, "SHSDualSIMToneController creating titleView with simLabel: %@, simShortLabel: %@", buf, 0x16u);
        }

        if (label)
        {
          v18 = objc_alloc_init(SHSDualSIMToneTitleView);
          titleView = self->_titleView;
          self->_titleView = v18;

          [(SHSDualSIMToneTitleView *)self->_titleView updateContentsWithTitle:label badgeText:v16];
        }
      }

      v20 = self->_titleView;
      navigationItem = [(SHSDualSIMToneController *)self navigationItem];
      [navigationItem setTitleView:v20];
    }
  }

  v31.receiver = self;
  v31.super_class = SHSDualSIMToneController;
  [(SHSToneController *)&v31 setSpecifier:specifierCopy];
  tonePickerViewController = [(SHSToneController *)self tonePickerViewController];
  if (tonePickerViewController)
  {
    v23 = tonePickerViewController;
    isDefaultSIMLineController = [(SHSDualSIMToneController *)self isDefaultSIMLineController];

    if (isDefaultSIMLineController)
    {
      v25 = [specifierCopy propertyForKey:@"alertType"];
      if (v25)
      {
        v26 = TLAlertTypeFromString();
        tonePickerViewController2 = [(SHSToneController *)self tonePickerViewController];
        [tonePickerViewController2 setTopic:0];

        v28 = [(SHSToneController *)self _defaultToneIdentifierForTonePickerWithAlertType:v26 topic:0];
        tonePickerViewController3 = [(SHSToneController *)self tonePickerViewController];
        [tonePickerViewController3 setDefaultToneIdentifier:v28];
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_updateReloadSpecifierInParentController
{
  parentController = [(SHSDualSIMToneController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [parentController reloadSpecifiers];
  }
}

- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  v8 = SHSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[SHSDualSIMToneController tonePickerViewController:selectedToneWithIdentifier:]";
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "%s selectedToneWithIdentifier:%@", &v20, 0x16u);
  }

  mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
  alertType = [controllerCopy alertType];
  topic = [(SHSDualSIMToneController *)self topic];
  [mEMORY[0x277D71F78] setCurrentToneIdentifier:identifierCopy forAlertType:alertType topic:topic];

  LODWORD(topic) = [(SHSDualSIMToneController *)self isDefaultSIMLineController];
  mEMORY[0x277D71F78]2 = [MEMORY[0x277D71F78] sharedToneManager];
  alertType2 = [controllerCopy alertType];
  if (topic)
  {
    [mEMORY[0x277D71F78]2 setCurrentToneIdentifier:identifierCopy forAlertType:alertType2 topic:0];
  }

  else
  {
    topic2 = [(SHSDualSIMToneController *)self topic];
    v15 = [mEMORY[0x277D71F78]2 currentToneIdentifierForAlertType:alertType2 topic:topic2];

    mEMORY[0x277D71F78]3 = [MEMORY[0x277D71F78] sharedToneManager];
    alertType3 = [controllerCopy alertType];
    topic3 = [(SHSDualSIMToneController *)self topic];
    [mEMORY[0x277D71F78]3 setCurrentToneIdentifier:v15 forAlertType:alertType3 topic:topic3];

    mEMORY[0x277D71F78]2 = v15;
  }

  [(SHSDualSIMToneController *)self _updateReloadSpecifierInParentController];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)vibrationPickerViewController:(id)controller selectedVibrationWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  v8 = SHSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[SHSDualSIMToneController vibrationPickerViewController:selectedVibrationWithIdentifier:]";
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "%s selectedToneWithIdentifier:%@", &v20, 0x16u);
  }

  mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
  alertType = [controllerCopy alertType];
  topic = [(SHSDualSIMToneController *)self topic];
  [mEMORY[0x277D71F88] setCurrentVibrationIdentifier:identifierCopy forAlertType:alertType topic:topic];

  LODWORD(topic) = [(SHSDualSIMToneController *)self isDefaultSIMLineController];
  mEMORY[0x277D71F88]2 = [MEMORY[0x277D71F88] sharedVibrationManager];
  alertType2 = [controllerCopy alertType];
  if (topic)
  {
    [mEMORY[0x277D71F88]2 setCurrentVibrationIdentifier:identifierCopy forAlertType:alertType2 topic:0];
  }

  else
  {
    topic2 = [(SHSDualSIMToneController *)self topic];
    v15 = [mEMORY[0x277D71F88]2 currentVibrationIdentifierForAlertType:alertType2 topic:topic2];

    mEMORY[0x277D71F88]3 = [MEMORY[0x277D71F88] sharedVibrationManager];
    alertType3 = [controllerCopy alertType];
    topic3 = [(SHSDualSIMToneController *)self topic];
    [mEMORY[0x277D71F88]3 setCurrentVibrationIdentifier:v15 forAlertType:alertType3 topic:topic3];

    mEMORY[0x277D71F88]2 = v15;
  }

  [(SHSDualSIMToneController *)self _updateReloadSpecifierInParentController];
  v19 = *MEMORY[0x277D85DE8];
}

- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)type topic:(id)topic
{
  v5 = [(SHSDualSIMToneController *)self isDefaultSIMLineController:type];
  mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
  v7 = mEMORY[0x277D71F88];
  if (v5)
  {
    [mEMORY[0x277D71F88] defaultVibrationIdentifierForAlertType:type];
  }

  else
  {
    [mEMORY[0x277D71F88] currentVibrationIdentifierForAlertType:type];
  }
  v8 = ;

  return v8;
}

@end