@interface SUAutoInstallForecast(SUSUI)
- (BOOL)_uses24HourTimeForLocale;
- (id)_componentsFromDate:()SUSUI;
- (id)_susui_cardinalityForRoundedEndTime;
- (id)_susui_cardinalityForRoundedStartTime;
- (id)_susui_formattedRoundedEndTimeString;
- (id)_susui_formattedRoundedStartTimeString;
- (id)_timeFormatter;
- (id)formatCardinalityForDate:()SUSUI;
@end

@implementation SUAutoInstallForecast(SUSUI)

- (id)_susui_formattedRoundedStartTimeString
{
  _timeFormatter = [self _timeFormatter];
  _roundedStartTime = [self _roundedStartTime];
  v4 = [_timeFormatter stringFromDate:?];
  MEMORY[0x277D82BD8](_roundedStartTime);
  MEMORY[0x277D82BD8](_timeFormatter);

  return v4;
}

- (id)_susui_formattedRoundedEndTimeString
{
  _timeFormatter = [self _timeFormatter];
  _roundedEndTime = [self _roundedEndTime];
  v4 = [_timeFormatter stringFromDate:?];
  MEMORY[0x277D82BD8](_roundedEndTime);
  MEMORY[0x277D82BD8](_timeFormatter);

  return v4;
}

- (id)_susui_cardinalityForRoundedStartTime
{
  _roundedStartTime = [self _roundedStartTime];
  v4 = [self formatCardinalityForDate:?];
  MEMORY[0x277D82BD8](_roundedStartTime);

  return v4;
}

- (id)_susui_cardinalityForRoundedEndTime
{
  _roundedEndTime = [self _roundedEndTime];
  v4 = [self formatCardinalityForDate:?];
  MEMORY[0x277D82BD8](_roundedEndTime);

  return v4;
}

- (id)_timeFormatter
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = objc_getAssociatedObject(self, _timeFormatter_KEY);
  if (!v7[0])
  {
    v7[0] = objc_alloc_init(MEMORY[0x277CCA968]);
    MEMORY[0x277D82BD8](0);
    location = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [location localeIdentifier];
    v5 = [localeIdentifier isEqualToString:@"ja_JP"];
    MEMORY[0x277D82BD8](localeIdentifier);
    if (v5)
    {
      [v7[0] setLocalizedDateFormatFromTemplate:@"j"];
    }

    else
    {
      [v7[0] setDateStyle:0];
      [v7[0] setTimeStyle:1];
    }

    objc_setAssociatedObject(selfCopy, _timeFormatter_KEY, v7[0], 1);
    objc_storeStrong(&location, 0);
  }

  v3 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v3;
}

- (id)_componentsFromDate:()SUSUI
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v6[1] = 254;
  _calendar = [selfCopy _calendar];
  v6[0] = [_calendar components:254 fromDate:location[0]];
  MEMORY[0x277D82BD8](_calendar);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_uses24HourTimeForLocale
{
  location[2] = self;
  location[1] = a2;
  _timeFormatter = [self _timeFormatter];
  location[0] = [_timeFormatter dateFormat];
  MEMORY[0x277D82BD8](_timeFormatter);
  v4 = 1;
  if ([location[0] rangeOfString:@"H"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [location[0] rangeOfString:@"k"] != 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_storeStrong(location, 0);
  return v4;
}

- (id)formatCardinalityForDate:()SUSUI
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = [selfCopy _componentsFromDate:location[0]];
  if ([v5 hour] == 1 || objc_msgSend(v5, "hour") == 13 && (objc_msgSend(selfCopy, "_uses24HourTimeForLocale") & 1) == 0)
  {
    v8 = MEMORY[0x277D82BE0](@"SINGULAR");
  }

  else
  {
    v8 = MEMORY[0x277D82BE0](@"PLURAL");
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  v3 = v8;

  return v3;
}

@end