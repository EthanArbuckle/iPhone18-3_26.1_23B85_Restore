@interface STFamilyCircleSpecifierProvider
+ (id)familySpecifier;
@end

@implementation STFamilyCircleSpecifierProvider

+ (id)familySpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"ScreenTimeControllerTitle" value:&stru_28766E5A8 table:0];
  v6 = [v3 preferenceSpecifierNamed:v5 target:a1 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  v7 = MEMORY[0x277D755B8];
  v8 = +[STScreenTimeSettingsUIBundle bundle];
  v9 = [v7 imageNamed:@"ScreenTime" inBundle:v8];
  v10 = [v9 _applicationIconImageForFormat:0 precomposed:1];
  [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

  [v6 setIdentifier:@"STSharedServicesScreenTimeSpecifierId"];

  return v6;
}

@end