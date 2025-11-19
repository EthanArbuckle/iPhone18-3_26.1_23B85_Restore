@interface SBActionHardwareButtonSettings
+ (id)settingsControllerModule;
- (SBActionButtonParameters)actionButtonParameters;
- (void)setActionButtonParameters:(id)a3;
- (void)setDefaultValues;
@end

@implementation SBActionHardwareButtonSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = SBActionHardwareButtonSettings;
  [(PTSettings *)&v4 setDefaultValues];
  v3 = objc_alloc_init(SBActionButtonParameters);
  [(SBActionHardwareButtonSettings *)self setActionButtonParameters:v3];
}

+ (id)settingsControllerModule
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431E8] rowWithTitle:@"Long press time" valueKeyPath:@"longPressTime"];
  v17 = [v2 between:0.0 and:10.0];

  v3 = [MEMORY[0x277D431E8] rowWithTitle:@"In-pocket long press time" valueKeyPath:@"longPressTimeWhenSuppressed"];
  v4 = [v3 between:0.0 and:10.0];

  v5 = [MEMORY[0x277CBEB18] array];
  [v5 addObject:v17];
  [v5 addObject:v4];
  v6 = [MEMORY[0x277D43210] sectionWithRows:v5];
  v7 = MEMORY[0x277D43210];
  v8 = MEMORY[0x277D431B0];
  v9 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v10 = [v8 rowWithTitle:@"Restore Defaults" action:v9];
  v19[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12 = [v7 sectionWithRows:v11];

  v13 = MEMORY[0x277D43210];
  v18[0] = v6;
  v18[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v15 = [v13 moduleWithTitle:@"Action Button" contents:v14];

  return v15;
}

- (SBActionButtonParameters)actionButtonParameters
{
  v3 = objc_alloc_init(SBActionButtonParameters);
  [(SBActionButtonParameters *)v3 setLongPressTime:?];
  [(SBActionButtonParameters *)v3 setLongPressTimeWhenSuppressed:?];

  return v3;
}

- (void)setActionButtonParameters:(id)a3
{
  v4 = a3;
  self->_longPressTime = [(SBActionButtonParameters *)v4 longPressTime];
  v5 = [(SBActionButtonParameters *)v4 longPressTimeWhenSuppressed];

  self->_longPressTimeWhenSuppressed = v5;
}

@end