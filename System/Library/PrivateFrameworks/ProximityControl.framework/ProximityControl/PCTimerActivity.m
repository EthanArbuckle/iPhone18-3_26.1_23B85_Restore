@interface PCTimerActivity
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (PCTimerActivity)initWithActivity:(id)a3;
- (double)timeLeft;
- (id)description;
- (id)displayTitle;
- (id)fireDate;
- (id)image;
- (id)initFromTimer:(id)a3;
@end

@implementation PCTimerActivity

- (id)initFromTimer:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PCTimerActivity;
  v5 = [(PCTimerActivity *)&v14 initWithActivityType:@"com.apple.ProximityControl.activity.timer"];
  v6 = v5;
  if (v5)
  {
    makeIneligibleForProcessing(v5);
    v7 = [v4 displayTitle];
    if ([@"TIMER_DEFAULT_TITLE" isEqualToString:v7])
    {
      v8 = [PCLocalizedString localizedStringForKey:8];

      v7 = v8;
    }

    [(PCTimerActivity *)v6 setTitle:v7];
    v9 = MEMORY[0x277CBEAA8];
    [v4 remainingTime];
    v10 = [v9 dateWithTimeIntervalSinceNow:?];
    v15[0] = @"fireDate";
    v15[1] = @"displayTitle";
    v16[0] = v10;
    v16[1] = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [(PCTimerActivity *)v6 setUserInfo:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (PCTimerActivity)initWithActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [@"com.apple.ProximityControl.activity.timer" isEqualToString:v5];

  if (v6)
  {
    v7 = [v4 activityType];
    v13.receiver = self;
    v13.super_class = PCTimerActivity;
    v8 = [(PCTimerActivity *)&v13 initWithActivityType:v7];

    if (v8)
    {
      localizeActivityIfNeeded(v4, 8);
      makeIneligibleForProcessing(v8);
      v9 = [v4 userInfo];
      [(PCTimerActivity *)v8 setUserInfo:v9];

      v10 = [v4 title];
      [(PCTimerActivity *)v8 setTitle:v10];
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  [(PCTimerActivity *)self timeLeft];
  v4 = v3;
  v5 = [(PCTimerActivity *)self displayTitle];
  if (v5 && v4 > 0.0)
  {
    v6 = [PCActivityUtility formattedDurationFor:v4];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v5, v6];
  }

  else
  {
    v7 = [PCLocalizedString localizedStringForKey:8];
  }

  return v7;
}

- (BOOL)isValid
{
  v2 = [(PCTimerActivity *)self userInfo];
  v3 = [v2 allKeys];
  v4 = [v3 count] != 0;

  return v4;
}

- (double)timeLeft
{
  v2 = [(PCTimerActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"fireDate"];

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
  v2 = [(PCTimerActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"fireDate"];

  return v3;
}

- (id)displayTitle
{
  v2 = [(PCTimerActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"displayTitle"];

  return v3;
}

- (id)image
{
  v2 = [(PCTimerActivity *)self bundleIdentifier];
  v3 = [PCActivityUtility iconForBundleIdentifier:v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 pcactivityType];
  if (v5 == [(PCTimerActivity *)self pcactivityType])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(PCTimerActivity *)self description];
    v8 = [v4 description];
    v6 = [v7 isEqualToString:v8];
  }

  return v6;
}

@end