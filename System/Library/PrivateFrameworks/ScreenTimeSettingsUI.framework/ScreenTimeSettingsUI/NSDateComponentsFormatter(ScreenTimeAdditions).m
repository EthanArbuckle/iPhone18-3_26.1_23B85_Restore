@interface NSDateComponentsFormatter(ScreenTimeAdditions)
+ (id)st_sharedAbbreviatedSecondsDateFormatter;
+ (id)st_sharedShortDynamicDateFormatter;
@end

@implementation NSDateComponentsFormatter(ScreenTimeAdditions)

+ (id)st_sharedAbbreviatedSecondsDateFormatter
{
  if (st_sharedAbbreviatedSecondsDateFormatter_onceToken != -1)
  {
    +[NSDateComponentsFormatter(ScreenTimeAdditions) st_sharedAbbreviatedSecondsDateFormatter];
  }

  v1 = st_sharedAbbreviatedSecondsDateFormatter_usageTimeFormatter;

  return v1;
}

+ (id)st_sharedShortDynamicDateFormatter
{
  if (st_sharedShortDynamicDateFormatter_onceToken != -1)
  {
    +[NSDateComponentsFormatter(ScreenTimeAdditions) st_sharedShortDynamicDateFormatter];
  }

  v1 = st_sharedShortDynamicDateFormatter_usageTimeFormatter;

  return v1;
}

@end