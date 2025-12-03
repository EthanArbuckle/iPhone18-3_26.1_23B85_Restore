@interface STUIStatusBarIndicatorQuietModeAnnounceItem
- (id)secondarySystemImageNameForUpdate:(id)update;
- (id)systemImageNameForUpdate:(id)update;
@end

@implementation STUIStatusBarIndicatorQuietModeAnnounceItem

- (id)systemImageNameForUpdate:(id)update
{
  updateCopy = update;
  data = [updateCopy data];
  quietModeEntry = [data quietModeEntry];
  if ([quietModeEntry isEnabled])
  {
    data2 = [updateCopy data];
    quietModeEntry2 = [data2 quietModeEntry];
    imageName = [quietModeEntry2 imageName];
    v9 = imageName;
    v10 = @"moon.fill";
    if (imageName)
    {
      v10 = imageName;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)secondarySystemImageNameForUpdate:(id)update
{
  data = [update data];
  announceNotificationsEntry = [data announceNotificationsEntry];
  if ([announceNotificationsEntry isEnabled])
  {
    v5 = @"bell.and.waveform.fill";
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end