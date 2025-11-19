@interface PTDPrototypingSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PTDPrototypingSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PTDPrototypingSettings;
  [(PTDPrototypingSettings *)&v3 setDefaultValues];
  [(PTDPrototypingSettings *)self setPreventLockover:0];
}

+ (id)settingsControllerModule
{
  v2 = [PTSwitchRow rowWithTitle:@"Prevent Screen Dim" valueKeyPath:@"preventLockover"];
  v9 = v2;
  v3 = [NSArray arrayWithObjects:&v9 count:1];

  v4 = [PTModule sectionWithRows:v3];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [PTModule moduleWithTitle:&stru_100019088 contents:v5];

  return v6;
}

@end