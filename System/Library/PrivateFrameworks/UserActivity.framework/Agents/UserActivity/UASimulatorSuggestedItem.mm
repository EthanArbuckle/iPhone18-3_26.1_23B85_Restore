@interface UASimulatorSuggestedItem
- (BOOL)requestPayloadWithCompletionHandler:(id)handler;
- (BOOL)wasResumedOnAnotherDeviceWithCompletionHandler:(id)handler;
- (UASimulatorSuggestedItem)initWithArchivedUserActivityInfo:(id)info peerDevice:(id)device simulator:(id)simulator;
- (UASimulatorSuggestedItem)initWithUserActivityInfo:(id)info peerDevice:(id)device simulator:(id)simulator;
- (void)clearPayload;
@end

@implementation UASimulatorSuggestedItem

- (UASimulatorSuggestedItem)initWithUserActivityInfo:(id)info peerDevice:(id)device simulator:(id)simulator
{
  infoCopy = info;
  deviceCopy = device;
  simulatorCopy = simulator;
  v14.receiver = self;
  v14.super_class = UASimulatorSuggestedItem;
  v11 = [(UASimulatorSuggestedItem *)&v14 initWithUserActivityInfo:infoCopy];
  v12 = v11;
  if (v11)
  {
    [(UASimulatorSuggestedItem *)v11 setPeerDevice:deviceCopy];
    objc_storeStrong(&v12->_simulator, simulator);
  }

  return v12;
}

- (UASimulatorSuggestedItem)initWithArchivedUserActivityInfo:(id)info peerDevice:(id)device simulator:(id)simulator
{
  infoCopy = info;
  deviceCopy = device;
  simulatorCopy = simulator;
  v14.receiver = self;
  v14.super_class = UASimulatorSuggestedItem;
  v11 = [(UASimulatorSuggestedItem *)&v14 initWithArchivedUserActivityInfo:infoCopy];
  v12 = v11;
  if (v11)
  {
    [(UASimulatorSuggestedItem *)v11 setPeerDevice:deviceCopy];
    [(UASimulatorSuggestedItem *)v12 setSimulator:simulatorCopy];
    [(UASimulatorSuggestedItem *)v12 setPayloadAvailable:0];
  }

  return v12;
}

- (BOOL)requestPayloadWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(UASimulatorSuggestedItem *)self setPayloadRequested:1];
  simulator = [(UASimulatorSuggestedItem *)self simulator];

  if (simulator)
  {
    v39 = 0uLL;
    memset(size, 0, sizeof(size));
    v31 = 0;
    v30 = 0;
    uuid = [(UASimulatorSuggestedItem *)self uuid];
    [uuid getUUIDBytes:&v39];

    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(UASimulatorSuggestedItem *)self uuid];
      uUIDString = [uuid2 UUIDString];
      *buf = 138543362;
      v34 = uUIDString;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Requesting payload from paired client, uuid=%{public}@", buf, 0xCu);
    }

    simulator2 = [(UASimulatorSuggestedItem *)self simulator];
    v11 = sub_10007AC58([simulator2 pairedClientPort], &v39, 0x7A1200u, &v31, &v30, &size[1], size) == 0;

    if (v11)
    {
      v17 = objc_opt_class();
      v18 = sub_10000DA04(v17, v31, v30, 1);
      [(UASimulatorSuggestedItem *)self setWebpageURL:v18];

      v19 = [NSData dataWithBytes:*&size[1] length:size[0]];
      v20 = UAUserActivityUserInfoPayload;
      [(UASimulatorSuggestedItem *)self setPayload:v19 identifier:UAUserActivityUserInfoPayload];

      v21 = sub_100001A30(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        uuid3 = [(UASimulatorSuggestedItem *)self uuid];
        uUIDString2 = [uuid3 UUIDString];
        webpageURL = [(UASimulatorSuggestedItem *)self webpageURL];
        if (webpageURL)
        {
          v25 = @"<private>";
        }

        else
        {
          v25 = @"-";
        }

        v26 = [(UASimulatorSuggestedItem *)self payloadForIdentifier:v20];
        v27 = sub_100006EF4(v26);
        v28 = sub_100061B50(v27, 0x10u);
        *buf = 138543875;
        v34 = uUIDString2;
        v35 = 2114;
        v36 = v25;
        v37 = 2113;
        v38 = v28;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Received payload from paired client, uuid=%{public}@, webPageURL=%{public}@ payload=%{private}@", buf, 0x20u);
      }

      vm_deallocate(mach_task_self_, *&size[1], size[0]);
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      v12 = sub_100001A30(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uuid4 = [(UASimulatorSuggestedItem *)self uuid];
        uUIDString3 = [uuid4 UUIDString];
        *buf = 138543362;
        v34 = uUIDString3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Failed to get payload for activity %{public}@", buf, 0xCu);
      }

      v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:-1 userInfo:0];
      (handlerCopy)[2](handlerCopy, v15);
    }
  }

  else
  {
    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:-1 userInfo:0];
    (handlerCopy)[2](handlerCopy, v16);
  }

  [(UASimulatorSuggestedItem *)self setPayloadRequested:0];

  return 1;
}

- (BOOL)wasResumedOnAnotherDeviceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  simulator = [(UASimulatorSuggestedItem *)self simulator];

  if (simulator)
  {
    v27 = 0uLL;
    uuid = [(UASimulatorSuggestedItem *)self uuid];
    [uuid getUUIDBytes:&v27];

    v19 = 0;
    LODWORD(v20) = 0;
    BYTE4(v20) = 0;
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(UASimulatorSuggestedItem *)self uuid:v19];
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Requesting payload from paired client, uuid=%{public}@", buf, 0xCu);
    }

    simulator2 = [(UASimulatorSuggestedItem *)self simulator];
    v10 = sub_10007AE78([simulator2 pairedClientPort], &v27, 0x7A1200u, &v19, &v20) == 0;

    if (v10)
    {
      v13 = objc_opt_class();
      v11 = sub_10000DD24(&v19, v13, NSKeyedArchiveRootObjectKey);
      v12 = v11 == 0;
    }

    else
    {
      v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:-1 userInfo:0];
      v12 = 0;
    }

    v14 = v11;
    v15 = sub_100001A30(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      uuid2 = [(UASimulatorSuggestedItem *)self uuid];
      uUIDString = [uuid2 UUIDString];
      *buf = 138543875;
      v22 = uUIDString;
      v23 = 2113;
      selfCopy = self;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "SIMULATOR: Calling completion handler because activity %{public}@/%{private}@ was resumed, error=%{public}@", buf, 0x20u);
    }

    handlerCopy[2](handlerCopy, v14);
    [(UASimulatorSuggestedItem *)self clearPayload];
    sub_10000DF58(&v19);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)clearPayload
{
  v2.receiver = self;
  v2.super_class = UASimulatorSuggestedItem;
  [(UASimulatorSuggestedItem *)&v2 clearPayload];
}

@end