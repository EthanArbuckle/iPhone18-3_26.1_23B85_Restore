@interface STUIStatusBarIndicatorRingerSilenceItem
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (id)systemImageNameForUpdate:(id)update;
@end

@implementation STUIStatusBarIndicatorRingerSilenceItem

- (id)systemImageNameForUpdate:(id)update
{
  v3 = +[STUIStatusBarSettingsDomain rootSettings];
  itemSettings = [v3 itemSettings];
  showRingerWhenSilenced = [itemSettings showRingerWhenSilenced];

  if (showRingerWhenSilenced)
  {
    v6 = @"bell.slash.fill";
  }

  else
  {
    v6 = @"bell.fill";
  }

  return v6;
}

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  dataCopy = data;
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  itemSettings = [v5 itemSettings];
  showRingerWhenSilenced = [itemSettings showRingerWhenSilenced];

  ringerSilenceEntry = [dataCopy ringerSilenceEntry];

  LOBYTE(dataCopy) = showRingerWhenSilenced ^ [ringerSilenceEntry BOOLValue];
  return dataCopy ^ 1;
}

@end