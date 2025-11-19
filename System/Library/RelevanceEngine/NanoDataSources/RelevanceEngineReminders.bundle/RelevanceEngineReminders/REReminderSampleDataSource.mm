@interface REReminderSampleDataSource
+ (id)overrideDataSourceImage;
- (id)supportedSections;
- (void)getElementsInSection:(id)a3 withHandler:(id)a4;
@end

@implementation REReminderSampleDataSource

+ (id)overrideDataSourceImage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [REImage imageNamed:@"SG_DataSourceAppIcon" inBundle:v2];

  return v3;
}

- (id)supportedSections
{
  v4 = REDefaultSectionIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)a3 withHandler:(id)a4
{
  v4 = a4;
  v5 = REUISampleRelevanceProviderForSamplePosition();
  v6 = +[NSCalendar currentCalendar];
  v7 = +[NSDate date];
  v8 = [v6 dateBySettingHour:12 minute:30 second:0 ofDate:v7 options:0];

  v9 = REReminderBundle();
  v10 = [v9 localizedStringForKey:@"UP_NEXT_SAMPLE_REMINDERS_TITLE" value:&stru_4358 table:@"ReminderDataSource"];

  v11 = REReminderContent(v10, v8, 0, 0);
  v12 = [REElement alloc];
  v17 = v5;
  v13 = [NSArray arrayWithObjects:&v17 count:1];
  v14 = [v12 initWithIdentifier:@"reminder.sample" content:v11 action:0 relevanceProviders:v13];

  v16 = v14;
  v15 = [NSArray arrayWithObjects:&v16 count:1];
  v4[2](v4, v15);
}

@end