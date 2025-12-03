@interface PSGMousePointerViewController
- (PSGMousePointerViewController)init;
- (id)naturalScrolling:(id)scrolling;
- (id)secondaryClick:(id)click;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tapToClick:(id)click;
- (id)trackingSpeed:(id)speed;
- (id)twoFingerSecondaryClick:(id)click;
- (void)dealloc;
- (void)pointerDevicesDidChange;
- (void)setNaturalScrolling:(id)scrolling specifier:(id)specifier;
- (void)setSecondaryClick:(id)click specifier:(id)specifier;
- (void)setTapToClick:(id)click specifier:(id)specifier;
- (void)setTrackingSpeed:(id)speed specifier:(id)specifier;
- (void)setTwoFingerSecondaryClick:(id)click specifier:(id)specifier;
@end

@implementation PSGMousePointerViewController

- (PSGMousePointerViewController)init
{
  v5.receiver = self;
  v5.super_class = PSGMousePointerViewController;
  v2 = [(PSGMousePointerViewController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_pointerDevicesDidChange name:PSGPointerDevicesDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSGMousePointerViewController;
  [(PSGMousePointerViewController *)&v4 dealloc];
}

- (void)pointerDevicesDidChange
{
  v3 = +[PSGMousePointerController sharedInstance];
  pointerDevices = [v3 pointerDevices];
  v5 = [pointerDevices count];

  if (v5)
  {

    [(PSGMousePointerViewController *)self reloadSpecifiers];
  }

  else
  {
    navigationController = [(PSGMousePointerViewController *)self navigationController];
    v6 = [navigationController popViewControllerAnimated:1];
  }
}

- (id)specifiers
{
  v60[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = +[PSGMousePointerController sharedInstance];
    hasMouse = [v5 hasMouse];

    if (hasMouse)
    {
      v7 = PSG_LocalizedStringForPointers(@"TRACKPAD_MOUSE");
      [(PSGMousePointerViewController *)self setTitle:v7];
    }

    v8 = objc_opt_new();
    v9 = MEMORY[0x277D3FAD8];
    v10 = PSG_LocalizedStringForPointers(@"TRACKING_SPEED");
    v11 = [v9 groupSpecifierWithID:@"TRACKING_SPEED_GROUP" name:v10];

    v58 = v11;
    [v8 addObject:v11];
    v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:sel_setTrackingSpeed_specifier_ get:sel_trackingSpeed_ detail:0 cell:5 edit:0];
    [v12 setIdentifier:@"TRACKING_SPEED"];
    [v12 setProperty:&unk_282E8FFC8 forKey:*MEMORY[0x277D400E8]];
    [v12 setProperty:&unk_282E8FFE0 forKey:*MEMORY[0x277D3FEC0]];
    [v12 setProperty:&unk_282E8FFC8 forKey:*MEMORY[0x277D3FEB8]];
    [v12 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D400C0]];
    v13 = MEMORY[0x277CBEC38];
    [v12 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D400C8]];
    [v12 setProperty:v13 forKey:*MEMORY[0x277D400D8]];
    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"tortoise.fill"];
    [v12 setProperty:v14 forKey:*MEMORY[0x277D400D0]];

    v15 = [MEMORY[0x277D755B8] systemImageNamed:@"hare.fill"];
    [v12 setProperty:v15 forKey:*MEMORY[0x277D400E0]];

    [v8 addObject:v12];
    v16 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SCROLLING_GROUP"];
    v17 = PSG_LocalizedStringForPointers(@"SCROLLING_FOOTER");
    [v16 setProperty:v17 forKey:*MEMORY[0x277D3FF88]];

    v57 = v16;
    [v8 addObject:v16];
    v18 = MEMORY[0x277D3FAD8];
    v19 = PSG_LocalizedStringForPointers(@"NATURAL_SCROLLING");
    v20 = [v18 preferenceSpecifierNamed:v19 target:self set:sel_setNaturalScrolling_specifier_ get:sel_naturalScrolling_ detail:0 cell:6 edit:0];

    [v20 setIdentifier:@"NATURAL_SCROLLING"];
    v56 = v20;
    [v8 addObject:v20];
    v21 = +[PSGMousePointerController sharedInstance];
    LODWORD(v16) = [v21 hasTrackpad];

    if (v16)
    {
      v22 = MEMORY[0x277D3FAD8];
      v23 = PSG_LocalizedStringForPointers(@"TRACKPAD");
      v24 = [v22 groupSpecifierWithID:@"TRACKPAD_GROUP" name:v23];

      v54 = v24;
      [v8 addObject:v24];
      v25 = MEMORY[0x277D3FAD8];
      v26 = PSG_LocalizedStringForPointers(@"TAP_TO_CLICK");
      v27 = [v25 preferenceSpecifierNamed:v26 target:self set:sel_setTapToClick_specifier_ get:sel_tapToClick_ detail:0 cell:6 edit:0];

      [v27 setIdentifier:@"TAP_TO_CLICK"];
      [v8 addObject:v27];
      v28 = MEMORY[0x277D3FAD8];
      v29 = PSG_LocalizedStringForPointers(@"TWO_FINGER_SECONDARY_CLICK");
      v30 = [v28 preferenceSpecifierNamed:v29 target:self set:sel_setTwoFingerSecondaryClick_specifier_ get:sel_twoFingerSecondaryClick_ detail:0 cell:6 edit:0];

      [v30 setIdentifier:@"TWO_FINGER_SECONDARY_CLICK"];
      [v8 addObject:v30];
      v31 = +[PSGMousePointerController sharedInstance];
      LODWORD(v23) = [v31 trackpadSupportsSystemHaptics];

      if (v23)
      {
        v32 = MEMORY[0x277D3FAD8];
        v33 = PSG_LocalizedStringForPointersHiding(@"SYSTEM_HAPTICS");
        v34 = [v32 preferenceSpecifierNamed:v33 target:self set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];

        [v34 setIdentifier:@"SYSTEM_HAPTICS"];
        [v34 setObject:@"com.apple.preferences.sounds" forKeyedSubscript:*MEMORY[0x277D3FEF8]];
        [v34 setObject:@"effects-trackpad-haptic" forKeyedSubscript:*MEMORY[0x277D3FFF0]];
        [v34 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FEF0]];
        [v34 setObject:@"com.apple.preferences.sounds.changed" forKeyedSubscript:*MEMORY[0x277D401A0]];
        [v8 addObject:v34];
      }
    }

    v35 = +[PSGMousePointerController sharedInstance];
    hasMouse2 = [v35 hasMouse];

    if (hasMouse2)
    {
      v37 = +[PSGMousePointerController sharedInstance];
      hasMagicMouse = [v37 hasMagicMouse];

      v39 = MEMORY[0x277D3FAD8];
      if (hasMagicMouse)
      {
        v40 = @"MAGIC_MOUSE";
      }

      else
      {
        v40 = @"MOUSE";
      }

      v41 = PSG_LocalizedStringForPointers(v40);
      v42 = [v39 groupSpecifierWithID:@"MOUSE" name:v41];

      v55 = v42;
      [v8 addObject:v42];
      v43 = MEMORY[0x277D3FAD8];
      v44 = PSG_LocalizedStringForPointers(@"SECONDARY_CLICK");
      v45 = [v43 preferenceSpecifierNamed:v44 target:self set:sel_setSecondaryClick_specifier_ get:sel_secondaryClick_ detail:objc_opt_class() cell:2 edit:0];

      [v45 setIdentifier:@"SECONDARY_CLICK"];
      if (hasMagicMouse)
      {
        v46 = PSG_LocalizedStringForPointers(@"SECONDARY_CLICK_OFF");
        v60[0] = v46;
        v47 = PSG_LocalizedStringForPointers(@"SECONDARY_CLICK_RIGHT");
        v60[1] = v47;
        v48 = PSG_LocalizedStringForPointers(@"SECONDARY_CLICK_LEFT");
        v60[2] = v48;
        v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];

        v50 = &unk_282E8FDB8;
      }

      else
      {
        v46 = PSG_LocalizedStringForPointers(@"SECONDARY_CLICK_RIGHT");
        v59[0] = v46;
        v47 = PSG_LocalizedStringForPointers(@"SECONDARY_CLICK_LEFT");
        v59[1] = v47;
        v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
        v50 = &unk_282E8FDD0;
      }

      [v45 setValues:v50 titles:v49];
      [v8 addObject:v45];
    }

    v51 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v8;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v52 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setSecondaryClick:(id)click specifier:(id)specifier
{
  v19 = *MEMORY[0x277D85DE8];
  clickCopy = click;
  v5 = +[PSGMousePointerController sharedInstance];
  globalDevicePreferences = [v5 globalDevicePreferences];

  v7 = +[PSGMousePointerController sharedInstance];
  hasMagicMouse = [v7 hasMagicMouse];

  intValue = [clickCopy intValue];
  if (hasMagicMouse)
  {
    [globalDevicePreferences setButtonConfigurationForVirtualButtonMice:intValue];
  }

  else
  {
    [globalDevicePreferences setButtonConfigurationForHardwareButtonMice:intValue];
  }

  v10 = +[PSGMousePointerController sharedInstance];
  [v10 setGlobalDevicePreferences:globalDevicePreferences];

  v11 = _PSGLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[PSGMousePointerViewController setSecondaryClick:specifier:]";
    v15 = 2112;
    v16 = clickCopy;
    v17 = 2112;
    v18 = globalDevicePreferences;
    _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)secondaryClick:(id)click
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[PSGMousePointerController sharedInstance];
  hasMagicMouse = [v3 hasMagicMouse];

  v5 = MEMORY[0x277CCABB0];
  v6 = +[PSGMousePointerController sharedInstance];
  globalDevicePreferences = [v6 globalDevicePreferences];
  v8 = globalDevicePreferences;
  if (hasMagicMouse)
  {
    buttonConfigurationForVirtualButtonMice = [globalDevicePreferences buttonConfigurationForVirtualButtonMice];
  }

  else
  {
    buttonConfigurationForVirtualButtonMice = [globalDevicePreferences buttonConfigurationForHardwareButtonMice];
  }

  v10 = [v5 numberWithInteger:buttonConfigurationForVirtualButtonMice];

  v11 = _PSGLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[PSGMousePointerViewController secondaryClick:]";
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_DEFAULT, "%s: %@", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setTrackingSpeed:(id)speed specifier:(id)specifier
{
  v12 = *MEMORY[0x277D85DE8];
  speedCopy = speed;
  v5 = +[PSGMousePointerController sharedInstance];
  [v5 setTrackingSpeedIndex:{objc_msgSend(speedCopy, "intValue")}];

  v6 = _PSGLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[PSGMousePointerViewController setTrackingSpeed:specifier:]";
    v10 = 2112;
    v11 = speedCopy;
    _os_log_impl(&dword_21CF20000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)trackingSpeed:(id)speed
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = +[PSGMousePointerController sharedInstance];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "trackingSpeedIndex")}];

  v6 = _PSGLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[PSGMousePointerViewController trackingSpeed:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_21CF20000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setTapToClick:(id)click specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  clickCopy = click;
  v5 = +[PSGMousePointerController sharedInstance];
  globalDevicePreferences = [v5 globalDevicePreferences];

  [globalDevicePreferences setEnableTapToClick:{objc_msgSend(clickCopy, "BOOLValue")}];
  v7 = +[PSGMousePointerController sharedInstance];
  [v7 setGlobalDevicePreferences:globalDevicePreferences];

  v8 = _PSGLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[PSGMousePointerViewController setTapToClick:specifier:]";
    v12 = 2112;
    v13 = clickCopy;
    v14 = 2112;
    v15 = globalDevicePreferences;
    _os_log_impl(&dword_21CF20000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)tapToClick:(id)click
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = +[PSGMousePointerController sharedInstance];
  globalDevicePreferences = [v4 globalDevicePreferences];
  v6 = [v3 numberWithBool:{objc_msgSend(globalDevicePreferences, "enableTapToClick")}];

  v7 = _PSGLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[PSGMousePointerViewController tapToClick:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_21CF20000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setTwoFingerSecondaryClick:(id)click specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  clickCopy = click;
  v5 = +[PSGMousePointerController sharedInstance];
  globalDevicePreferences = [v5 globalDevicePreferences];

  [globalDevicePreferences setEnableTwoFingerSecondaryClick:{objc_msgSend(clickCopy, "BOOLValue")}];
  v7 = +[PSGMousePointerController sharedInstance];
  [v7 setGlobalDevicePreferences:globalDevicePreferences];

  v8 = _PSGLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[PSGMousePointerViewController setTwoFingerSecondaryClick:specifier:]";
    v12 = 2112;
    v13 = clickCopy;
    v14 = 2112;
    v15 = globalDevicePreferences;
    _os_log_impl(&dword_21CF20000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)twoFingerSecondaryClick:(id)click
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = +[PSGMousePointerController sharedInstance];
  globalDevicePreferences = [v4 globalDevicePreferences];
  v6 = [v3 numberWithBool:{objc_msgSend(globalDevicePreferences, "enableTwoFingerSecondaryClick")}];

  v7 = _PSGLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[PSGMousePointerViewController twoFingerSecondaryClick:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_21CF20000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setNaturalScrolling:(id)scrolling specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  scrollingCopy = scrolling;
  v5 = +[PSGMousePointerController sharedInstance];
  globalDevicePreferences = [v5 globalDevicePreferences];

  [globalDevicePreferences setEnableNaturalScrolling:{objc_msgSend(scrollingCopy, "BOOLValue")}];
  v7 = +[PSGMousePointerController sharedInstance];
  [v7 setGlobalDevicePreferences:globalDevicePreferences];

  v8 = _PSGLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[PSGMousePointerViewController setNaturalScrolling:specifier:]";
    v12 = 2112;
    v13 = scrollingCopy;
    v14 = 2112;
    v15 = globalDevicePreferences;
    _os_log_impl(&dword_21CF20000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)naturalScrolling:(id)scrolling
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = +[PSGMousePointerController sharedInstance];
  globalDevicePreferences = [v4 globalDevicePreferences];
  v6 = [v3 numberWithBool:{objc_msgSend(globalDevicePreferences, "enableNaturalScrolling")}];

  v7 = _PSGLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[PSGMousePointerViewController naturalScrolling:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_21CF20000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v20.receiver = self;
  v20.super_class = PSGMousePointerViewController;
  pathCopy = path;
  v7 = [(PSGMousePointerViewController *)&v20 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(PSGMousePointerViewController *)self indexForIndexPath:pathCopy, v20.receiver, v20.super_class];

  v9 = [(PSGMousePointerViewController *)self specifierAtIndex:v8];
  identifier = [v9 identifier];
  LODWORD(pathCopy) = [identifier isEqualToString:@"TRACKING_SPEED"];

  if (pathCopy)
  {
    v11 = v7;
    control = [v11 control];
    appearance = [MEMORY[0x277D3FA48] appearance];
    segmentedSliderTrackColor = [appearance segmentedSliderTrackColor];

    if (segmentedSliderTrackColor)
    {
      v15 = [v11 _accessibilityHigherContrastTintColorForColor:segmentedSliderTrackColor];
    }

    else
    {
      v16 = [MEMORY[0x277D75348] colorWithWhite:0.596078431 alpha:1.0];
      v15 = [v11 _accessibilityHigherContrastTintColorForColor:v16];
    }

    _minValueView = [control _minValueView];
    [_minValueView setTintColor:v15];

    _maxValueView = [control _maxValueView];
    [_maxValueView setTintColor:v15];
  }

  return v7;
}

@end