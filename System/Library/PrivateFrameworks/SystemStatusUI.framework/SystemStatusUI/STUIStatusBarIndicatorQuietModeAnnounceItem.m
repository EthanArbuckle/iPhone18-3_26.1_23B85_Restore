@interface STUIStatusBarIndicatorQuietModeAnnounceItem
- (id)secondarySystemImageNameForUpdate:(id)a3;
- (id)systemImageNameForUpdate:(id)a3;
@end

@implementation STUIStatusBarIndicatorQuietModeAnnounceItem

- (id)systemImageNameForUpdate:(id)a3
{
  v3 = a3;
  v4 = [v3 data];
  v5 = [v4 quietModeEntry];
  if ([v5 isEnabled])
  {
    v6 = [v3 data];
    v7 = [v6 quietModeEntry];
    v8 = [v7 imageName];
    v9 = v8;
    v10 = @"moon.fill";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)secondarySystemImageNameForUpdate:(id)a3
{
  v3 = [a3 data];
  v4 = [v3 announceNotificationsEntry];
  if ([v4 isEnabled])
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