@interface SBProximitySettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBProximitySettings

- (void)setDefaultValues
{
  v4 = __sb__runningInSpringBoard();
  if (!v4)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if (![currentDevice userInterfaceIdiom] && SBFEffectiveHomeButtonType() == 2)
    {
      v9 = SBUIIsSystemApertureEnabled();

      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_13:
      v7 = 0.5;
      v8 = 0.5;
      goto LABEL_14;
    }

LABEL_12:

    goto LABEL_13;
  }

  v5 = v4;
  if (!SBFEffectiveDeviceClass() || (v6 = SBFEffectiveDeviceClass(), v7 = 0.5, v8 = 0.5, v6 == 1))
  {
    if (SBFEffectiveHomeButtonType() == 2)
    {
      if (SBUIIsSystemApertureEnabled())
      {
        goto LABEL_13;
      }

LABEL_10:
      v8 = 0.375;
      v7 = 0.75;
      goto LABEL_14;
    }

    v7 = 0.5;
    v8 = 0.5;
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_14:
  [(SBProximitySettings *)self setInitialBacklightDebounceDuration:v7];
  [(SBProximitySettings *)self setSubsequentBacklightDebounceDuration:v8];
  [(SBProximitySettings *)self setColorScreenEdgeWhenObjectInProximity:0];
  [(SBProximitySettings *)self setAllowTouchesInJindoWhenObjectInProximity:0];
  v10 = SBUIIsSystemApertureEnabled();
  v11 = 0.0;
  if (v10)
  {
    v11 = 5.0;
  }

  [(SBProximitySettings *)self setNonTelephonyTouchAllowanceGracePeriodDuration:v11];
}

+ (id)settingsControllerModule
{
  v23[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v4 = [v2 rowWithTitle:@"Restore Defaults" action:v3];
  v23[0] = v4;
  v5 = [MEMORY[0x277D43290] rowWithTitle:@"Initial Backlight Debounce" valueKeyPath:@"initialBacklightDebounceDuration"];
  v6 = [v5 minValue:0.0 maxValue:5.0];
  v23[1] = v6;
  v7 = [MEMORY[0x277D43290] rowWithTitle:@"Subsequent Backlight Debounce" valueKeyPath:@"subsequentBacklightDebounceDuration"];
  v8 = [v7 minValue:0.0 maxValue:5.0];
  v23[2] = v8;
  v9 = [MEMORY[0x277D432A8] rowWithTitle:@"Color Screen Edge" valueKeyPath:@"colorScreenEdgeWhenObjectInProximity"];
  v23[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  v11 = [MEMORY[0x277D432A8] rowWithTitle:@"Allow Touches In Jindo" valueKeyPath:@"allowTouchesInJindoWhenObjectInProximity"];
  v22[0] = v11;
  v12 = [MEMORY[0x277D43290] rowWithTitle:@"Non-Telephony Touch Allowance Grace Period" valueKeyPath:@"nonTelephonyTouchAllowanceGracePeriodDuration"];
  v13 = [v12 minValue:0.0 maxValue:10.0];
  v22[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v15 = [v10 arrayByAddingObjectsFromArray:v14];

  v16 = MEMORY[0x277D43210];
  v17 = [MEMORY[0x277D43210] sectionWithRows:v15 title:@"Parameters"];
  v21 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v19 = [v16 moduleWithTitle:@"Prox" contents:v18];

  return v19;
}

@end