@interface PCTimerActivity
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (PCTimerActivity)initWithActivity:(id)activity;
- (double)timeLeft;
- (id)description;
- (id)displayTitle;
- (id)fireDate;
- (id)image;
- (id)initFromTimer:(id)timer;
@end

@implementation PCTimerActivity

- (id)initFromTimer:(id)timer
{
  v16[2] = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v14.receiver = self;
  v14.super_class = PCTimerActivity;
  v5 = [(PCTimerActivity *)&v14 initWithActivityType:@"com.apple.ProximityControl.activity.timer"];
  v6 = v5;
  if (v5)
  {
    makeIneligibleForProcessing(v5);
    displayTitle = [timerCopy displayTitle];
    if ([@"TIMER_DEFAULT_TITLE" isEqualToString:displayTitle])
    {
      v8 = [PCLocalizedString localizedStringForKey:8];

      displayTitle = v8;
    }

    [(PCTimerActivity *)v6 setTitle:displayTitle];
    v9 = MEMORY[0x277CBEAA8];
    [timerCopy remainingTime];
    v10 = [v9 dateWithTimeIntervalSinceNow:?];
    v15[0] = @"fireDate";
    v15[1] = @"displayTitle";
    v16[0] = v10;
    v16[1] = displayTitle;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [(PCTimerActivity *)v6 setUserInfo:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (PCTimerActivity)initWithActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [@"com.apple.ProximityControl.activity.timer" isEqualToString:activityType];

  if (v6)
  {
    activityType2 = [activityCopy activityType];
    v13.receiver = self;
    v13.super_class = PCTimerActivity;
    v8 = [(PCTimerActivity *)&v13 initWithActivityType:activityType2];

    if (v8)
    {
      localizeActivityIfNeeded(activityCopy, 8);
      makeIneligibleForProcessing(v8);
      userInfo = [activityCopy userInfo];
      [(PCTimerActivity *)v8 setUserInfo:userInfo];

      title = [activityCopy title];
      [(PCTimerActivity *)v8 setTitle:title];
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
  [(PCTimerActivity *)self timeLeft];
  v4 = v3;
  displayTitle = [(PCTimerActivity *)self displayTitle];
  if (displayTitle && v4 > 0.0)
  {
    v6 = [PCActivityUtility formattedDurationFor:v4];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", displayTitle, v6];
  }

  else
  {
    v7 = [PCLocalizedString localizedStringForKey:8];
  }

  return v7;
}

- (BOOL)isValid
{
  userInfo = [(PCTimerActivity *)self userInfo];
  allKeys = [userInfo allKeys];
  v4 = [allKeys count] != 0;

  return v4;
}

- (double)timeLeft
{
  userInfo = [(PCTimerActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"fireDate"];

  if (v3)
  {
    [v3 timeIntervalSinceNow];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (id)fireDate
{
  userInfo = [(PCTimerActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"fireDate"];

  return v3;
}

- (id)displayTitle
{
  userInfo = [(PCTimerActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"displayTitle"];

  return v3;
}

- (id)image
{
  bundleIdentifier = [(PCTimerActivity *)self bundleIdentifier];
  v3 = [PCActivityUtility iconForBundleIdentifier:bundleIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  pcactivityType = [equalCopy pcactivityType];
  if (pcactivityType == [(PCTimerActivity *)self pcactivityType])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(PCTimerActivity *)self description];
    v8 = [equalCopy description];
    v6 = [v7 isEqualToString:v8];
  }

  return v6;
}

@end