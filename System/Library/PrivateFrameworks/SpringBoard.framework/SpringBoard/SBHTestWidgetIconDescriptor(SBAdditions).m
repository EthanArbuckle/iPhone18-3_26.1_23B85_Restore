@interface SBHTestWidgetIconDescriptor(SBAdditions)
+ (id)calendarWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)dateTimeWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)gasparWatchDogWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)mapsWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)mobileNotesWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)notesWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)overviewStocksWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)podcastWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)recentsWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)relivePhotosWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)remindersWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)todayNewsWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)tvWidgetIconDescriptorForSizeClass:()SBAdditions;
+ (id)weatherWidgetIconDescriptorForSizeClass:()SBAdditions;
@end

@implementation SBHTestWidgetIconDescriptor(SBAdditions)

+ (id)todayNewsWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.news.widget" containerBundleIdentifier:@"com.apple.news" widgetIdentifier:@"today" sizeClass:v4];

  return v5;
}

+ (id)overviewStocksWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.stocks.widget" containerBundleIdentifier:@"com.apple.stock" widgetIdentifier:@"overview" sizeClass:v4];

  return v5;
}

+ (id)calendarWidgetIconDescriptorForSizeClass:()SBAdditions
{
  if (*MEMORY[0x277D66518])
  {
    v3 = @"com.apple.CalendarWidget.CalendarListWidget";
  }

  else
  {
    v3 = @"com.apple.CalendarWidget.CalendarUpNextWidget";
  }

  if (*MEMORY[0x277D66510])
  {
    v4 = @"com.apple.CalendarWidget.CalendarUpNextWidget";
  }

  else
  {
    v4 = v3;
  }

  v5 = MEMORY[0x277D662F8];
  v6 = a3;
  v7 = [[v5 alloc] initWithBundleIdentifier:@"com.apple.mobilecal.CalendarWidgetExtension" containerBundleIdentifier:@"com.apple.mobilecal" widgetIdentifier:v4 sizeClass:v6];

  return v7;
}

+ (id)weatherWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.weather.widget" containerBundleIdentifier:@"com.apple.weather" widgetIdentifier:@"com.apple.weather" sizeClass:v4];

  return v5;
}

+ (id)mapsWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.Maps.GeneralMapsWidget" containerBundleIdentifier:@"com.apple.Maps" widgetIdentifier:@"com.apple.Maps" sizeClass:v4];

  return v5;
}

+ (id)relivePhotosWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.mobileslideshow.PhotosReliveWidget" containerBundleIdentifier:@"com.apple.mobileslideshow" widgetIdentifier:@"com.apple.mobileslideshow.PhotosReliveWidget" sizeClass:v4];

  return v5;
}

+ (id)gasparWatchDogWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.Gaspar.WatchdogWidget" containerBundleIdentifier:@"com.apple.Gaspar" widgetIdentifier:@"watchdogWidget" sizeClass:v4];

  return v5;
}

+ (id)mobileNotesWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.mobilenotes.WidgetExtension" containerBundleIdentifier:@"com.apple.mobilenotes" widgetIdentifier:@"com.apple.mobilenotes.FolderWidget" sizeClass:v4];

  return v5;
}

+ (id)remindersWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.reminders.WidgetExtension" containerBundleIdentifier:@"com.apple.reminders" widgetIdentifier:@"com.apple.reminders.widget" sizeClass:v4];

  return v5;
}

+ (id)tvWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.tv.TVWidgetExtension" containerBundleIdentifier:@"com.apple.tv" widgetIdentifier:@"com.apple.tv" sizeClass:v4];

  return v5;
}

+ (id)podcastWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.podcasts.widget" containerBundleIdentifier:@"com.apple.podcasts" widgetIdentifier:@"com.apple.podcasts.widget.upnext" sizeClass:v4];

  return v5;
}

+ (id)recentsWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D66188];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [objc_alloc(MEMORY[0x277D662F0]) initWithElement:v5 sizeClass:v4];

  return v6;
}

+ (id)notesWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.mobilenotes.WidgetExtension" containerBundleIdentifier:@"com.apple.mobilenotes" widgetIdentifier:@"com.apple.mobilenotes.FolderWidget" sizeClass:v4];

  return v5;
}

+ (id)dateTimeWidgetIconDescriptorForSizeClass:()SBAdditions
{
  v3 = MEMORY[0x277D662F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.mobiletimer.WorldClockWidget" containerBundleIdentifier:@"com.apple.mobiletimer" widgetIdentifier:@"com.apple.mobiletimer.datetime" sizeClass:v4];

  return v5;
}

@end