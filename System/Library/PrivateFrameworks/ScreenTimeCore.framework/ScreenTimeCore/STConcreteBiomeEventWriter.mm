@interface STConcreteBiomeEventWriter
+ (int)_eventKindForResourceType:(int64_t)a3 fillingWebsitePath:(id *)a4 fillingBundleID:(id *)a5 withResourceIdentifier:(id)a6;
- (id)writeAskForTimeRequestEvent:(id)a3;
- (id)writeAskForTimeResponseEvent:(id)a3;
- (id)writeDowntimeStateEvent:(id)a3;
@end

@implementation STConcreteBiomeEventWriter

- (id)writeAskForTimeRequestEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 resourceType];
  v27 = 0;
  v28 = 0;
  v5 = [v3 requestedResourceIdentifier];
  v6 = [STConcreteBiomeEventWriter _eventKindForResourceType:v4 fillingWebsitePath:&v28 fillingBundleID:&v27 withResourceIdentifier:v5];
  v7 = v28;
  v8 = v27;

  v9 = [BMScreenTimeRequestEvent alloc];
  v10 = [v3 identifier];
  v11 = [v3 timestamp];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;
  v14 = [v3 requesterUserID];
  v15 = [v14 dsid];
  v16 = [v15 stringValue];
  v17 = [v9 initWithRequestID:v10 kind:v6 status:1 eventTime:0 approvalTime:v16 requesterDSID:0 responderDSID:v13 websitePath:v7 bundleID:v8];

  if (v17)
  {
    v18 = +[BMStreams screenTimeRequestStream];
    v19 = [v18 source];

    [v19 sendEvent:v17];
    v20 = +[STLog ask];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v3 identifier];
      *buf = 138543362;
      v30 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Wrote ask for time request: %{public}@ into biome stream", buf, 0xCu);
    }

    v22 = +[STResult success];
  }

  else
  {
    v23 = +[STLog ask];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100121564(v3);
    }

    v24 = [NSError alloc];
    v19 = [v24 initWithDomain:STErrorDomain code:53 userInfo:0];
    v22 = [STResult failure:v19];
  }

  v25 = v22;

  return v25;
}

- (id)writeAskForTimeResponseEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 resourceType];
  v35 = 0;
  v36 = 0;
  v5 = [v3 requestedResourceIdentifier];
  v31 = [STConcreteBiomeEventWriter _eventKindForResourceType:v4 fillingWebsitePath:&v36 fillingBundleID:&v35 withResourceIdentifier:v5];
  v34 = v36;
  v33 = v35;

  v6 = [v3 approvedTime];
  if (v6 > 3)
  {
    v7 = 0;
    v30 = 0;
  }

  else
  {
    v7 = v6;
    v30 = dword_10013F2F0[v6];
  }

  v8 = [BMScreenTimeRequestEvent alloc];
  v9 = [v3 identifier];
  v10 = [v3 timestamp];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = [v3 requesterUserID];
  v14 = [v13 dsid];
  v15 = [v14 stringValue];
  v32 = v3;
  v16 = [v3 responderUserID];
  v17 = [v16 dsid];
  v18 = [v17 stringValue];
  v19 = [v8 initWithRequestID:v9 kind:v31 status:v30 eventTime:v7 approvalTime:v15 requesterDSID:v18 responderDSID:v12 websitePath:v34 bundleID:v33];

  if (v19)
  {
    v20 = +[BMStreams screenTimeRequestStream];
    v21 = [v20 source];

    [v21 sendEvent:v19];
    v22 = +[STLog ask];
    v23 = v32;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v32 identifier];
      *buf = 138543362;
      v38 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Wrote ask for time response: %{public}@ into biome stream", buf, 0xCu);
    }

    v25 = +[STResult success];
  }

  else
  {
    v26 = +[STLog ask];
    v23 = v32;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1001215EC(v32);
    }

    v27 = [NSError alloc];
    v21 = [v27 initWithDomain:STErrorDomain code:53 userInfo:0];
    v25 = [STResult failure:v21];
  }

  v28 = v25;

  return v28;
}

+ (int)_eventKindForResourceType:(int64_t)a3 fillingWebsitePath:(id *)a4 fillingBundleID:(id *)a5 withResourceIdentifier:(id)a6
{
  v9 = a6;
  if (a3 != 1)
  {
    if (a3)
    {
      LODWORD(a3) = 0;
      goto LABEL_8;
    }

    LODWORD(a3) = 2;
    if (!a5)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  a5 = a4;
  if (a4)
  {
LABEL_6:
    v9 = v9;
    *a5 = v9;
  }

LABEL_8:

  return a3;
}

- (id)writeDowntimeStateEvent:(id)a3
{
  v3 = a3;
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 enabled]);
  v5 = [v3 userID];
  v6 = [v5 dsid];
  v7 = [v6 stringValue];

  v8 = [BMScreenTimeChildState alloc];
  v9 = [v3 identifier];
  v10 = [v3 downtimeDate];
  v11 = [v8 initWithStarting:v4 eventID:v9 signalDate:v10 userDSID:v7 state:1];

  if (v11)
  {
    v12 = BiomeLibrary();
    v13 = [v12 Family];
    v14 = [v13 ScreenTime];
    v15 = [v14 ChildState];

    v16 = [v15 source];
    [v16 sendEvent:v11];
    v17 = +[STLog reactor];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v3 identifier];
      v19 = [v3 enabled];
      v20 = [v3 userID];
      v25 = 138543875;
      v26 = v18;
      v27 = 1024;
      v28 = v19;
      v29 = 2113;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Wrote downtime state event: %{public}@ into biome stream with state %d for child dsid: %{private}@", &v25, 0x1Cu);
    }

    v21 = +[STResult success];
  }

  else
  {
    v22 = +[STLog ask];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100121674(v3);
    }

    v23 = [NSError alloc];
    v15 = [v23 initWithDomain:STErrorDomain code:55 userInfo:0];
    v21 = [STResult failure:v15];
  }

  return v21;
}

@end