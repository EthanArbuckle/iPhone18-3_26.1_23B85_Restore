@interface STConcreteBiomeEventWriter
+ (int)_eventKindForResourceType:(int64_t)type fillingWebsitePath:(id *)path fillingBundleID:(id *)d withResourceIdentifier:(id)identifier;
- (id)writeAskForTimeRequestEvent:(id)event;
- (id)writeAskForTimeResponseEvent:(id)event;
- (id)writeDowntimeStateEvent:(id)event;
@end

@implementation STConcreteBiomeEventWriter

- (id)writeAskForTimeRequestEvent:(id)event
{
  eventCopy = event;
  resourceType = [eventCopy resourceType];
  v27 = 0;
  v28 = 0;
  requestedResourceIdentifier = [eventCopy requestedResourceIdentifier];
  v6 = [STConcreteBiomeEventWriter _eventKindForResourceType:resourceType fillingWebsitePath:&v28 fillingBundleID:&v27 withResourceIdentifier:requestedResourceIdentifier];
  v7 = v28;
  v8 = v27;

  v9 = [BMScreenTimeRequestEvent alloc];
  identifier = [eventCopy identifier];
  timestamp = [eventCopy timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  v13 = v12;
  requesterUserID = [eventCopy requesterUserID];
  dsid = [requesterUserID dsid];
  stringValue = [dsid stringValue];
  v17 = [v9 initWithRequestID:identifier kind:v6 status:1 eventTime:0 approvalTime:stringValue requesterDSID:0 responderDSID:v13 websitePath:v7 bundleID:v8];

  if (v17)
  {
    v18 = +[BMStreams screenTimeRequestStream];
    source = [v18 source];

    [source sendEvent:v17];
    v20 = +[STLog ask];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [eventCopy identifier];
      *buf = 138543362;
      v30 = identifier2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Wrote ask for time request: %{public}@ into biome stream", buf, 0xCu);
    }

    v22 = +[STResult success];
  }

  else
  {
    v23 = +[STLog ask];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100121564(eventCopy);
    }

    v24 = [NSError alloc];
    source = [v24 initWithDomain:STErrorDomain code:53 userInfo:0];
    v22 = [STResult failure:source];
  }

  v25 = v22;

  return v25;
}

- (id)writeAskForTimeResponseEvent:(id)event
{
  eventCopy = event;
  resourceType = [eventCopy resourceType];
  v35 = 0;
  v36 = 0;
  requestedResourceIdentifier = [eventCopy requestedResourceIdentifier];
  v31 = [STConcreteBiomeEventWriter _eventKindForResourceType:resourceType fillingWebsitePath:&v36 fillingBundleID:&v35 withResourceIdentifier:requestedResourceIdentifier];
  v34 = v36;
  v33 = v35;

  approvedTime = [eventCopy approvedTime];
  if (approvedTime > 3)
  {
    v7 = 0;
    v30 = 0;
  }

  else
  {
    v7 = approvedTime;
    v30 = dword_10013F2F0[approvedTime];
  }

  v8 = [BMScreenTimeRequestEvent alloc];
  identifier = [eventCopy identifier];
  timestamp = [eventCopy timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  v12 = v11;
  requesterUserID = [eventCopy requesterUserID];
  dsid = [requesterUserID dsid];
  stringValue = [dsid stringValue];
  v32 = eventCopy;
  responderUserID = [eventCopy responderUserID];
  dsid2 = [responderUserID dsid];
  stringValue2 = [dsid2 stringValue];
  v19 = [v8 initWithRequestID:identifier kind:v31 status:v30 eventTime:v7 approvalTime:stringValue requesterDSID:stringValue2 responderDSID:v12 websitePath:v34 bundleID:v33];

  if (v19)
  {
    v20 = +[BMStreams screenTimeRequestStream];
    source = [v20 source];

    [source sendEvent:v19];
    v22 = +[STLog ask];
    v23 = v32;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [v32 identifier];
      *buf = 138543362;
      v38 = identifier2;
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
    source = [v27 initWithDomain:STErrorDomain code:53 userInfo:0];
    v25 = [STResult failure:source];
  }

  v28 = v25;

  return v28;
}

+ (int)_eventKindForResourceType:(int64_t)type fillingWebsitePath:(id *)path fillingBundleID:(id *)d withResourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (type != 1)
  {
    if (type)
    {
      LODWORD(type) = 0;
      goto LABEL_8;
    }

    LODWORD(type) = 2;
    if (!d)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  d = path;
  if (path)
  {
LABEL_6:
    identifierCopy = identifierCopy;
    *d = identifierCopy;
  }

LABEL_8:

  return type;
}

- (id)writeDowntimeStateEvent:(id)event
{
  eventCopy = event;
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [eventCopy enabled]);
  userID = [eventCopy userID];
  dsid = [userID dsid];
  stringValue = [dsid stringValue];

  v8 = [BMScreenTimeChildState alloc];
  identifier = [eventCopy identifier];
  downtimeDate = [eventCopy downtimeDate];
  v11 = [v8 initWithStarting:v4 eventID:identifier signalDate:downtimeDate userDSID:stringValue state:1];

  if (v11)
  {
    v12 = BiomeLibrary();
    family = [v12 Family];
    screenTime = [family ScreenTime];
    childState = [screenTime ChildState];

    source = [childState source];
    [source sendEvent:v11];
    v17 = +[STLog reactor];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [eventCopy identifier];
      enabled = [eventCopy enabled];
      userID2 = [eventCopy userID];
      v25 = 138543875;
      v26 = identifier2;
      v27 = 1024;
      v28 = enabled;
      v29 = 2113;
      v30 = userID2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Wrote downtime state event: %{public}@ into biome stream with state %d for child dsid: %{private}@", &v25, 0x1Cu);
    }

    v21 = +[STResult success];
  }

  else
  {
    v22 = +[STLog ask];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100121674(eventCopy);
    }

    v23 = [NSError alloc];
    childState = [v23 initWithDomain:STErrorDomain code:55 userInfo:0];
    v21 = [STResult failure:childState];
  }

  return v21;
}

@end