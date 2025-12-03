@interface STQueryIDSDestinationsOperation
- (STQueryIDSDestinationsOperation)initWithServiceName:(id)name destinations:(id)destinations;
- (void)main;
@end

@implementation STQueryIDSDestinationsOperation

- (STQueryIDSDestinationsOperation)initWithServiceName:(id)name destinations:(id)destinations
{
  nameCopy = name;
  destinationsCopy = destinations;
  v16.receiver = self;
  v16.super_class = STQueryIDSDestinationsOperation;
  v9 = [(STOperation *)&v16 init];
  if (v9)
  {
    v10 = dispatch_queue_create([@"com.apple.ScreenTimeAgent.ids-query-delegate" UTF8String], 0);
    serviceQueryQueue = v9->_serviceQueryQueue;
    v9->_serviceQueryQueue = v10;

    v12 = [destinationsCopy copy];
    destinations = v9->_destinations;
    v9->_destinations = v12;

    objc_storeStrong(&v9->_serviceName, name);
  }

  v14 = +[STLog familyMessaging];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[STQueryIDSDestinationsOperation initWithServiceName:destinations:]";
    v19 = 2114;
    v20 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \ndestinations: %{public}@", buf, 0x16u);
  }

  return v9;
}

- (void)main
{
  v3 = +[STLog familyMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    destinations = self->_destinations;
    *buf = 136446466;
    v28 = "[STQueryIDSDestinationsOperation main]";
    v29 = 2114;
    v30 = destinations;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \ndestinations: %{public}@ - entered", buf, 0x16u);
  }

  destinations = [(STQueryIDSDestinationsOperation *)self destinations];
  v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [destinations count]);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  destinations2 = [(STQueryIDSDestinationsOperation *)self destinations];
  v8 = [destinations2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(destinations2);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = IDSCopyAddressDestinationForDestination();
        [v6 setObject:v12 forKeyedSubscript:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [destinations2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];
  [(STQueryIDSDestinationsOperation *)self setOriginalDestinationByIDSDestination:v14];

  v15 = +[STLog familyMessaging];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    originalDestinationByIDSDestination = self->_originalDestinationByIDSDestination;
    *buf = 136446466;
    v28 = "[STQueryIDSDestinationsOperation main]";
    v29 = 2114;
    v30 = originalDestinationByIDSDestination;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \noriginalDestinationByIDSDestination: %{public}@", buf, 0x16u);
  }

  v17 = +[IDSIDQueryController sharedInstance];
  allKeys = [v6 allKeys];
  serviceName = [(STQueryIDSDestinationsOperation *)self serviceName];
  serviceQueryQueue = [(STQueryIDSDestinationsOperation *)self serviceQueryQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10005F1E4;
  v21[3] = &unk_1001A4CE8;
  v21[4] = self;
  [v17 refreshIDStatusForDestinations:allKeys service:serviceName listenerID:@"STAgent" queue:serviceQueryQueue completionBlock:v21];
}

@end