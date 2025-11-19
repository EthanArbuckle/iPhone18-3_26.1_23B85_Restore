@interface CSDPTTServiceUpdatePushBudgetTUDefaultsDataSource
- (id)serviceUpdatePushBudgetForApplication:(id)a3;
- (void)removeApplicationFromPTTServiceUpdateBudget:(id)a3;
- (void)saveServiceUpdatePushBudget:(id)a3;
@end

@implementation CSDPTTServiceUpdatePushBudgetTUDefaultsDataSource

- (id)serviceUpdatePushBudgetForApplication:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults tu_defaults];
  v5 = [v4 objectForKey:@"CSDPTTServiceUpdateMessageBudgetKey"];

  if (v5)
  {
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v7 = v6;
  v8 = [v3 bundleIdentifier];
  v9 = [v7 objectForKey:v8];

  if (v9 && [v9 length])
  {
    v18 = 0;
    v10 = [CSDPTTServiceUpdatePushBudget unarchivedObjectFromData:v9 error:&v18];
    v11 = v18;
    v12 = v11;
    if (v10 || !v11)
    {

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100475B14(v12, v13);
      }
    }
  }

  v14 = [CSDPTTServiceUpdatePushBudget alloc];
  v15 = [v3 bundleIdentifier];
  v16 = +[NSDate date];
  v10 = [(CSDPTTServiceUpdatePushBudget *)v14 initWithApplicationBundleIdentifier:v15 budgetStartTime:v16 serviceUpdatesDelivered:0];

LABEL_13:

  return v10;
}

- (void)saveServiceUpdatePushBudget:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults tu_defaults];
  v5 = [v4 objectForKey:@"CSDPTTServiceUpdateMessageBudgetKey"];

  if (v5)
  {
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v7 = v6;
  v13 = 0;
  v8 = [v3 archivedDataWithError:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    v11 = [v3 applicationBundleIdentifier];
    [v7 setObject:v8 forKey:v11];

    v12 = +[NSUserDefaults tu_defaults];
    [v12 setObject:v7 forKey:@"CSDPTTServiceUpdateMessageBudgetKey"];
LABEL_9:

    goto LABEL_10;
  }

  if (v9)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100475B8C(v10, v12);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)removeApplicationFromPTTServiceUpdateBudget:(id)a3
{
  v10 = a3;
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 objectForKey:@"CSDPTTServiceUpdateMessageBudgetKey"];

  v5 = [v10 bundleIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    v8 = [v10 bundleIdentifier];
    [v7 removeObjectForKey:v8];

    v9 = +[NSUserDefaults tu_defaults];
    [v9 setObject:v7 forKey:@"CSDPTTServiceUpdateMessageBudgetKey"];
  }
}

@end