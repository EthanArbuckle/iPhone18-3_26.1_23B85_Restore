@interface STUIStatusBarIndicatorRingerSilenceItem
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (id)systemImageNameForUpdate:(id)a3;
@end

@implementation STUIStatusBarIndicatorRingerSilenceItem

- (id)systemImageNameForUpdate:(id)a3
{
  v3 = +[STUIStatusBarSettingsDomain rootSettings];
  v4 = [v3 itemSettings];
  v5 = [v4 showRingerWhenSilenced];

  if (v5)
  {
    v6 = @"bell.slash.fill";
  }

  else
  {
    v6 = @"bell.fill";
  }

  return v6;
}

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v4 = a4;
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  v6 = [v5 itemSettings];
  v7 = [v6 showRingerWhenSilenced];

  v8 = [v4 ringerSilenceEntry];

  LOBYTE(v4) = v7 ^ [v8 BOOLValue];
  return v4 ^ 1;
}

@end