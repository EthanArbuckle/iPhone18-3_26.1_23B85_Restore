@interface PCAlarmActivity
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (PCAlarmActivity)initWithActivity:(id)activity;
- (id)description;
- (id)fireDate;
- (id)image;
- (id)initFromAlarm:(id)alarm;
- (id)title;
@end

@implementation PCAlarmActivity

- (id)initFromAlarm:(id)alarm
{
  v15[2] = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v13.receiver = self;
  v13.super_class = PCAlarmActivity;
  v5 = [(PCAlarmActivity *)&v13 initWithActivityType:@"com.apple.ProximityControl.activity.alarm"];
  v6 = v5;
  if (v5)
  {
    makeIneligibleForProcessing(v5);
    displayTitle = [alarmCopy displayTitle];
    if ([@"ALARM_DEFAULT_TITLE" isEqualToString:displayTitle])
    {
      v8 = [PCLocalizedString localizedStringForKey:0];

      displayTitle = v8;
    }

    [(PCAlarmActivity *)v6 setTitle:displayTitle];
    v14[0] = @"fireDate";
    nextFireDate = [alarmCopy nextFireDate];
    v14[1] = @"displayTitle";
    v15[0] = nextFireDate;
    v15[1] = displayTitle;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [(PCAlarmActivity *)v6 setUserInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (PCAlarmActivity)initWithActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [@"com.apple.ProximityControl.activity.alarm" isEqualToString:activityType];

  if (v6)
  {
    activityType2 = [activityCopy activityType];
    v13.receiver = self;
    v13.super_class = PCAlarmActivity;
    v8 = [(PCAlarmActivity *)&v13 initWithActivityType:activityType2];

    if (v8)
    {
      localizeActivityIfNeeded(activityCopy, 0);
      makeIneligibleForProcessing(v8);
      userInfo = [activityCopy userInfo];
      [(PCAlarmActivity *)v8 setUserInfo:userInfo];

      title = [activityCopy title];
      [(PCAlarmActivity *)v8 setTitle:title];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  fireDate = [(PCAlarmActivity *)self fireDate];
  title = [(PCAlarmActivity *)self title];
  v5 = title;
  if (fireDate && title)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v6 setTimeStyle:1];
    [v6 setDateStyle:0];
    v7 = [v6 stringFromDate:fireDate];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v7, v5];
  }

  else
  {
    v8 = [PCLocalizedString localizedStringForKey:0];
  }

  return v8;
}

- (BOOL)isValid
{
  userInfo = [(PCAlarmActivity *)self userInfo];
  allKeys = [userInfo allKeys];
  v4 = [allKeys count] != 0;

  return v4;
}

- (id)fireDate
{
  userInfo = [(PCAlarmActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"fireDate"];

  return v3;
}

- (id)title
{
  userInfo = [(PCAlarmActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"displayTitle"];

  return v3;
}

- (id)image
{
  bundleIdentifier = [(PCAlarmActivity *)self bundleIdentifier];
  v3 = [PCActivityUtility iconForBundleIdentifier:bundleIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  pcactivityType = [equalCopy pcactivityType];
  if (pcactivityType == [(PCAlarmActivity *)self pcactivityType])
  {
    v6 = [equalCopy description];
    v7 = [(PCAlarmActivity *)self description];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end