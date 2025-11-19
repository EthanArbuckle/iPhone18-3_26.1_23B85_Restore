@interface PUIMotionFitnessController
- (BOOL)isFitnessTrackingEnabledFromTCC;
- (id)_appSpecifiers;
- (id)loadSensorKitSpecifiersProvider;
- (id)specifiers;
- (void)provideNavigationDonations;
- (void)setFitnessTrackingEnabled:(id)a3 forSpecifier:(id)a4;
@end

@implementation PUIMotionFitnessController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(PUIMotionFitnessController *)self isFitnessTrackingEnabledFromTCC];
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = *MEMORY[0x277D3FFB8];
    [v6 setProperty:@"FITNESS_TRACKING_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    v8 = PUI_LocalizedStringForPrivacy(@"FITNESS_TRACKING_PRIVACY");
    [v6 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

    v9 = MEMORY[0x277D3FAD8];
    v10 = PUI_LocalizedStringForPrivacy(@"FITNESS_TRACKING");
    v11 = [v9 preferenceSpecifierNamed:v10 target:self set:sel_setFitnessTrackingEnabled_forSpecifier_ get:sel_isFitnessTrackingEnabled_ detail:0 cell:6 edit:0];

    [v11 setProperty:@"FITNESS_TRACKING_MASTER" forKey:v7];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    [v11 setProperty:v12 forKey:*MEMORY[0x277D401A8]];

    if (v5)
    {
      v22.receiver = self;
      v22.super_class = PUIMotionFitnessController;
      v13 = [(PUITCCAccessController *)&v22 specifiers];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PUIMotionFitnessController specifiers];
      }

      [v13 insertObject:v6 atIndex:0];
      [v13 insertObject:v11 atIndex:1];
      v14 = [MEMORY[0x277D75418] currentDevice];
      v15 = [v14 sf_isiPhone];

      if (v15)
      {
        v16 = [(PUIMotionFitnessController *)self loadSensorKitSpecifiersProvider];
        sensorKitSpecifiersProvider = self->_sensorKitSpecifiersProvider;
        self->_sensorKitSpecifiersProvider = v16;

        v18 = [(SRRelatedSettingsProvider *)self->_sensorKitSpecifiersProvider specifiersForRelatedSettings:@"Motion"];
        if (v18)
        {
          [v13 addObjectsFromArray:v18];
        }
      }

      v19 = *(&self->super.super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.super.isa + v3) = v13;
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v6, v11, 0}];
      v19 = *(&self->super.super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.super.isa + v3) = v20;
    }

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"MOTION" table:@"Privacy" locale:v6 bundleURL:v4];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:v9 bundleURL:v4];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/MOTION"];
  [(PUIMotionFitnessController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.motion-and-fitness" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)loadSensorKitSpecifiersProvider
{
  v2 = PSBundlePathForPreferenceBundle();
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:v2];
  v4 = v3;
  if (v3 && (v5 = [v3 classNamed:@"SRRelatedSpecifiers"]) != 0)
  {
    v6 = objc_alloc_init(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_appSpecifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  v5 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = 0;

  v9.receiver = self;
  v9.super_class = PUIMotionFitnessController;
  v6 = [(PUITCCAccessController *)&v9 specifiers];
  v7 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = v4;

  return v6;
}

- (BOOL)isFitnessTrackingEnabledFromTCC
{
  v7 = 0;
  v2 = [(PUITCCAccessController *)self serviceKey];
  Override = TCCAccessGetOverride();

  if (!Override)
  {
    v4 = _PUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "### Failed to get Fitness Tracking override value", v6, 2u);
    }
  }

  return v7 == 0;
}

- (void)setFitnessTrackingEnabled:(id)a3 forSpecifier:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D401A8];
  v9 = [v7 propertyForKey:*MEMORY[0x277D401A8]];
  if (([v6 isEqual:v9] & 1) == 0)
  {
    v10 = [v6 BOOLValue];
    v11 = _PUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "[PUIMotionFitnessController setFitnessTrackingEnabled:forSpecifier:]";
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "%s - enable: %d", &v20, 0x12u);
    }

    v12 = [(PUITCCAccessController *)self serviceKey];
    v13 = TCCAccessSetOverride();

    if (v13)
    {
      [v7 setProperty:v6 forKey:v8];
      if (v10)
      {
        v14 = [(PUIMotionFitnessController *)self _appSpecifiers];
        [(PUIMotionFitnessController *)self insertContiguousSpecifiers:v14 afterSpecifier:v7 animated:1];
      }

      else
      {
        v18 = [(PUIMotionFitnessController *)self indexOfSpecifier:v7]+ 1;
        v14 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) subarrayWithRange:{v18, objc_msgSend(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "count") - v18}];
        [(PUIMotionFitnessController *)self removeContiguousSpecifiers:v14 animated:1];
      }

      goto LABEL_15;
    }

    v15 = _PUILoggingFacility();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v16)
      {
        LOWORD(v20) = 0;
        v17 = "### Failed to remove Fitness Tracking override";
LABEL_13:
        _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, v17, &v20, 2u);
      }
    }

    else if (v16)
    {
      LOWORD(v20) = 0;
      v17 = "### Failed to override Fitness Tracking";
      goto LABEL_13;
    }

    v14 = [v7 propertyForKey:*MEMORY[0x277D3FEB0]];
    [v14 setOn:objc_msgSend(v9 animated:{"BOOLValue"), 1}];
LABEL_15:
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end