@interface UABestAppSuggestionDarwinNotifier
- (id)bestCornerItemsFromItems:(id)a3;
- (void)setItems:(id)a3;
@end

@implementation UABestAppSuggestionDarwinNotifier

- (void)setItems:(id)a3
{
  v4 = [(UABestAppSuggestionDarwinNotifier *)self bestCornerItemsFromItems:a3];
  v5 = [v4 firstObject];
  v6 = [v5 uuid];

  v7 = [(UABestAppSuggestionDarwinNotifier *)self lastUUID];
  if ([v7 isEqual:v6])
  {
  }

  else
  {
    v8 = [(UABestAppSuggestionDarwinNotifier *)self lastUUID];
    v9 = v8 | v6;

    if (v9)
    {
      v10 = sub_100001A30(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [(UABestAppSuggestionDarwinNotifier *)self lastUUID];
        v12 = 138412546;
        v13 = v11;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "NOTIFY BEST CHANGE: %@ -> %@", &v12, 0x16u);
      }

      [(UABestAppSuggestionDarwinNotifier *)self setLastUUID:v6];
      notify_post(_UABestAppSuggestionChangedNotification);
    }
  }
}

- (id)bestCornerItemsFromItems:(id)a3
{
  v3 = a3;
  p_superclass = &OBJC_METACLASS___UASimulatorAdvertisementCreator.superclass;
  v5 = +[UAUserActivityDefaults sharedDefaults];
  [v5 cornerActionItemTimeout];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSDate dateWithTimeIntervalSinceNow:-v7];
  }

  v32 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v34;
    *&v10 = 138544131;
    v30 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        if (sub_1000023A0([v14 type]) && v8 != 0)
        {
          v16 = [v14 when];
          if (v16)
          {
            v17 = v16;
            [v14 when];
            v19 = v18 = p_superclass;
            v20 = sub_10000A02C(v19, v8);

            p_superclass = v18;
            if (v20)
            {
              v21 = sub_100001A30(0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = [v14 uuid];
                v23 = [v22 UUIDString];
                v24 = [v14 when];
                *buf = v30;
                v38 = v23;
                v39 = 2113;
                v40 = v14;
                v41 = 2114;
                v42 = v24;
                v43 = 2114;
                v44 = v8;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "BESTAPP: Ignoring item %{public}@/%{private}@ %{public}@, because it is earlier than %{public}@", buf, 0x2Au);

                p_superclass = v18;
              }

LABEL_22:

              continue;
            }
          }
        }

        v25 = [p_superclass + 104 sharedDefaults];
        if ([v25 activityReceivingAllowed])
        {
        }

        else
        {
          v26 = sub_1000023A0([v14 type]);

          if (v26)
          {
            v21 = sub_100001A30(0);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v27 = [v14 uuid];
              v28 = [v27 UUIDString];
              *buf = 138543619;
              v38 = v28;
              v39 = 2113;
              v40 = v14;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "BESTAPP: -- Ignoring item %{public}@/%{private}@, because it is not a local action", buf, 0x16u);
            }

            goto LABEL_22;
          }
        }

        [v32 addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v11);
  }

  [v32 sortUsingComparator:&stru_1000C5B30];

  return v32;
}

@end