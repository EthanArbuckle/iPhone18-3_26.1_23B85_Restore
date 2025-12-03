@interface UAActivityWasContinuedEvent
- (UAActivityWasContinuedEvent)initWithAnalyticsInfo:(id)info;
- (id)eventPayload;
- (id)reportedActivityType;
- (id)stringForInteraction;
@end

@implementation UAActivityWasContinuedEvent

- (UAActivityWasContinuedEvent)initWithAnalyticsInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = UAActivityWasContinuedEvent;
  v5 = [(UAActivityWasContinuedEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UAActivityWasContinuedEvent *)v5 setInfo:infoCopy];
  }

  return v6;
}

- (id)eventPayload
{
  info = [(UAActivityWasContinuedEvent *)self info];
  error = [info error];

  if (error)
  {
    info2 = [(UAActivityWasContinuedEvent *)self info];
    error2 = [info2 error];
    v61 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [error2 code]);
  }

  else
  {
    v61 = &off_1000CC880;
  }

  info3 = [(UAActivityWasContinuedEvent *)self info];
  remoteDeviceType = [info3 remoteDeviceType];

  if (!remoteDeviceType)
  {
    v9 = sub_100001A30(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No remote device type set", buf, 2u);
    }

    info4 = [(UAActivityWasContinuedEvent *)self info];
    [info4 setRemoteDeviceType:@"Unknown"];
  }

  v63[0] = @"activityType";
  reportedActivityType = [(UAActivityWasContinuedEvent *)self reportedActivityType];
  v60 = reportedActivityType;
  if (reportedActivityType)
  {
    v12 = reportedActivityType;
  }

  else
  {
    v12 = @"-";
  }

  v64[0] = v12;
  v63[1] = @"bundleIdentifier";
  info5 = [(UAActivityWasContinuedEvent *)self info];
  bundleIdentifier = [info5 bundleIdentifier];
  v58 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v14 = bundleIdentifier;
  }

  else
  {
    v14 = @"-";
  }

  v64[1] = v14;
  v63[2] = @"suggestedActionType";
  info6 = [(UAActivityWasContinuedEvent *)self info];
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [info6 suggestedActionType]);
  v56 = v15;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = @"-";
  }

  v64[2] = v16;
  v63[3] = @"payloadSize";
  info7 = [(UAActivityWasContinuedEvent *)self info];
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [info7 payloadSize]);
  v54 = v17;
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = @"-";
  }

  v64[3] = v18;
  v63[4] = @"transferSpeed";
  info8 = [(UAActivityWasContinuedEvent *)self info];
  [info8 transferSpeed];
  v20 = [NSNumber numberWithDouble:round(v19)];
  v52 = v20;
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = @"-";
  }

  v64[4] = v21;
  v63[5] = @"transferDurationSec";
  info9 = [(UAActivityWasContinuedEvent *)self info];
  [info9 transferDuration];
  v22 = [NSNumber numberWithDouble:?];
  v50 = v22;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = @"-";
  }

  v64[5] = v23;
  v63[6] = @"canceled";
  info10 = [(UAActivityWasContinuedEvent *)self info];
  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [info10 isCancelled]);
  v48 = v24;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = @"-";
  }

  v64[6] = v25;
  v63[7] = @"broweserFallback";
  info11 = [(UAActivityWasContinuedEvent *)self info];
  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [info11 isBrowserFallback]);
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = @"-";
  }

  v64[7] = v28;
  v63[8] = @"webToNative";
  info12 = [(UAActivityWasContinuedEvent *)self info];
  v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [info12 webToNative]);
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = @"-";
  }

  v64[8] = v32;
  v63[9] = @"supportsContinuityStreams";
  info13 = [(UAActivityWasContinuedEvent *)self info];
  v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [info13 supportsContinuityStreams]);
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = @"-";
  }

  v64[9] = v36;
  v63[10] = @"remoteDeviceType";
  info14 = [(UAActivityWasContinuedEvent *)self info];
  remoteDeviceType2 = [info14 remoteDeviceType];
  v39 = remoteDeviceType2;
  if (remoteDeviceType2)
  {
    v40 = remoteDeviceType2;
  }

  else
  {
    v40 = @"-";
  }

  if (v61)
  {
    v41 = v61;
  }

  else
  {
    v41 = @"-";
  }

  v64[10] = v40;
  v64[11] = v41;
  v63[11] = @"errorCode";
  v63[12] = @"interactionType";
  stringForInteraction = [(UAActivityWasContinuedEvent *)self stringForInteraction];
  v43 = stringForInteraction;
  if (stringForInteraction)
  {
    v44 = stringForInteraction;
  }

  else
  {
    v44 = @"-";
  }

  v64[12] = v44;
  v45 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:13];

  return v45;
}

- (id)reportedActivityType
{
  info = [(UAActivityWasContinuedEvent *)self info];
  activityType = [info activityType];
  v5 = [(UAAnalyticsEvent *)self firstPartyActivityTypeOrUnknown:activityType];

  return v5;
}

- (id)stringForInteraction
{
  info = [(UAActivityWasContinuedEvent *)self info];
  interactionType = [info interactionType];

  v4 = @"unknown";
  v5 = @"spotlight";
  if (interactionType != 805306369)
  {
    v5 = @"unknown";
  }

  if (interactionType == 805306368)
  {
    v6 = @"proxy-object";
  }

  else
  {
    v6 = v5;
  }

  if (interactionType == 536870913)
  {
    v7 = @"multi-tasker";
  }

  else
  {
    v7 = @"unknown";
  }

  if (interactionType == 0x20000000)
  {
    v8 = @"lock-screen";
  }

  else
  {
    v8 = v7;
  }

  if (interactionType <= 805306367)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (interactionType == 268435458)
  {
    v4 = @"notification-center";
  }

  if (interactionType == 268435457)
  {
    v4 = @"dock";
  }

  if (interactionType == 0x10000000)
  {
    v4 = @"command-tab";
  }

  if (interactionType <= 0x1FFFFFFF)
  {
    return v4;
  }

  else
  {
    return v9;
  }
}

@end