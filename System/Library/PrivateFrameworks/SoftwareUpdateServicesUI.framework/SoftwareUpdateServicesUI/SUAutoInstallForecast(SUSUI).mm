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
  v3 = [a1 _timeFormatter];
  v2 = [a1 _roundedStartTime];
  v4 = [v3 stringFromDate:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_susui_formattedRoundedEndTimeString
{
  v3 = [a1 _timeFormatter];
  v2 = [a1 _roundedEndTime];
  v4 = [v3 stringFromDate:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_susui_cardinalityForRoundedStartTime
{
  v3 = [a1 _roundedStartTime];
  v4 = [a1 formatCardinalityForDate:?];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_susui_cardinalityForRoundedEndTime
{
  v3 = [a1 _roundedEndTime];
  v4 = [a1 formatCardinalityForDate:?];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_timeFormatter
{
  v8 = a1;
  v7[1] = a2;
  v7[0] = objc_getAssociatedObject(a1, _timeFormatter_KEY);
  if (!v7[0])
  {
    v7[0] = objc_alloc_init(MEMORY[0x277CCA968]);
    MEMORY[0x277D82BD8](0);
    location = [MEMORY[0x277CBEAF8] currentLocale];
    v4 = [location localeIdentifier];
    v5 = [v4 isEqualToString:@"ja_JP"];
    MEMORY[0x277D82BD8](v4);
    if (v5)
    {
      [v7[0] setLocalizedDateFormatFromTemplate:@"j"];
    }

    else
    {
      [v7[0] setDateStyle:0];
      [v7[0] setTimeStyle:1];
    }

    objc_setAssociatedObject(v8, _timeFormatter_KEY, v7[0], 1);
    objc_storeStrong(&location, 0);
  }

  v3 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v3;
}

- (id)_componentsFromDate:()SUSUI
{
  v8 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v6[1] = 254;
  v4 = [v8 _calendar];
  v6[0] = [v4 components:254 fromDate:location[0]];
  MEMORY[0x277D82BD8](v4);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_uses24HourTimeForLocale
{
  location[2] = a1;
  location[1] = a2;
  v3 = [a1 _timeFormatter];
  location[0] = [v3 dateFormat];
  MEMORY[0x277D82BD8](v3);
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
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = [v7 _componentsFromDate:location[0]];
  if ([v5 hour] == 1 || objc_msgSend(v5, "hour") == 13 && (objc_msgSend(v7, "_uses24HourTimeForLocale") & 1) == 0)
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