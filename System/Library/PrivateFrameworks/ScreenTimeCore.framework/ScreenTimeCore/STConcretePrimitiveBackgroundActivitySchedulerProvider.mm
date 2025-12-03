@interface STConcretePrimitiveBackgroundActivitySchedulerProvider
- (id)createSchedulerRegisteredForTypes:(id)types schedulerDelegate:(id)delegate;
@end

@implementation STConcretePrimitiveBackgroundActivitySchedulerProvider

- (id)createSchedulerRegisteredForTypes:(id)types schedulerDelegate:(id)delegate
{
  typesCopy = types;
  delegateCopy = delegate;
  v7 = objc_opt_new();
  [v7 setDelegate:delegateCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = typesCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = +[STLog backgroundActivity];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          integerValue = [v13 integerValue];
          v16 = &stru_1001AC900;
          if (integerValue <= 3)
          {
            v16 = *(&off_1001A34B8 + integerValue);
          }

          *buf = 138412290;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Checking in for background activity of type: %@", buf, 0xCu);
        }

        [v7 scheduleBackgroundActivityOfType:objc_msgSend(v13 interval:{"integerValue"), &off_1001B2420}];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  return v7;
}

@end