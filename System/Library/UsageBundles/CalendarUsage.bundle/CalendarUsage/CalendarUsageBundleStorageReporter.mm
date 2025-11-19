@interface CalendarUsageBundleStorageReporter
- (BOOL)allowDeletionForCategory:(id)a3;
- (CalendarUsageBundleStorageReporter)init;
- (float)sizeForCategory:(id)a3;
- (id)usageBundleApps;
- (void)populateUsageBundleApps;
@end

@implementation CalendarUsageBundleStorageReporter

- (CalendarUsageBundleStorageReporter)init
{
  v8.receiver = self;
  v8.super_class = CalendarUsageBundleStorageReporter;
  v2 = [(CalendarUsageBundleStorageReporter *)&v8 init];
  if (v2)
  {
    sub_13F8();
    v3 = qword_8750;
    if (os_log_type_enabled(qword_8750, OS_LOG_TYPE_DEBUG))
    {
      v4 = v3;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Initializing %@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)populateUsageBundleApps
{
  v29 = [PSUsageBundleApp usageBundleAppForBundleWithIdentifier:@"com.apple.mobilecal" withTotalSize:0.0];
  v3 = +[CalendarUsageBundle bundle];
  v28 = [v3 localizedStringForKey:@"Calendar" value:&stru_4258 table:0];

  [v29 setName:v28];
  v27 = [[EKEventStore alloc] initWithEKOptions:132];
  v4 = [v27 fetchStorageUsage];
  v5 = [v4 objectForKeyedSubscript:EKStorageUsageEventsKey];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &off_4358;
  }

  v8 = v7;

  v9 = [v4 objectForKeyedSubscript:EKStorageUsageAttachmentsKey];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &off_4358;
  }

  v12 = v11;

  v13 = [v8 longLongValue];
  v26 = &v13[[v12 longLongValue]];
  v14 = [[NSMutableArray alloc] initWithCapacity:2];
  v15 = [[NSMutableDictionary alloc] initWithCapacity:2];
  cachedCategorySizes = self->_cachedCategorySizes;
  self->_cachedCategorySizes = v15;

  [(NSMutableDictionary *)self->_cachedCategorySizes setObject:v8 forKey:@"CATEGORY_EVENTS"];
  v17 = +[CalendarUsageBundle bundle];
  v18 = [v17 localizedStringForKey:@"Events" value:&stru_4258 table:0];

  v19 = [PSUsageBundleCategory categoryNamed:v18 withIdentifier:@"CATEGORY_EVENTS" forUsageBundleApp:v29];
  [v14 addObject:v19];
  [(NSMutableDictionary *)self->_cachedCategorySizes setObject:v12 forKey:@"CATEGORY_ATTACHMENTS"];

  v20 = +[CalendarUsageBundle bundle];
  v21 = [v20 localizedStringForKey:@"Attachments" value:&stru_4258 table:0];

  v22 = [PSUsageBundleCategory categoryNamed:v21 withIdentifier:@"CATEGORY_ATTACHMENTS" forUsageBundleApp:v29];

  [v14 addObject:v22];
  *&v23 = v26;
  [v29 setTotalSize:v23];
  [v29 setCategories:v14];
  v24 = [[NSArray alloc] initWithObjects:{v29, 0}];
  cachedBundleApps = self->_cachedBundleApps;
  self->_cachedBundleApps = v24;
}

- (id)usageBundleApps
{
  cachedBundleApps = self->_cachedBundleApps;
  if (!cachedBundleApps)
  {
    [(CalendarUsageBundleStorageReporter *)self populateUsageBundleApps];
    cachedBundleApps = self->_cachedBundleApps;
  }

  return cachedBundleApps;
}

- (BOOL)allowDeletionForCategory:(id)a3
{
  v3 = a3;
  v4 = qword_8740;
  if (!qword_8740)
  {
    v13[0] = @"CATEGORY_EVENTS";
    v5 = [NSNumber numberWithBool:0];
    v13[1] = @"CATEGORY_ATTACHMENTS";
    v14[0] = v5;
    v6 = [NSNumber numberWithBool:0];
    v14[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    v8 = qword_8740;
    qword_8740 = v7;

    v4 = qword_8740;
  }

  v9 = [v3 identifier];
  v10 = [v4 objectForKey:v9];
  v11 = [v10 BOOLValue];

  return v11;
}

- (float)sizeForCategory:(id)a3
{
  v4 = a3;
  cachedCategorySizes = self->_cachedCategorySizes;
  if (!cachedCategorySizes)
  {
    [(CalendarUsageBundleStorageReporter *)self populateUsageBundleApps];
    cachedCategorySizes = self->_cachedCategorySizes;
  }

  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)cachedCategorySizes objectForKey:v6];
  [v7 floatValue];
  v9 = v8;

  return v9;
}

@end