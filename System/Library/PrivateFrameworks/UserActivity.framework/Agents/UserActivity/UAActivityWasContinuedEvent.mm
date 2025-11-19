@interface UAActivityWasContinuedEvent
- (UAActivityWasContinuedEvent)initWithAnalyticsInfo:(id)a3;
- (id)eventPayload;
- (id)reportedActivityType;
- (id)stringForInteraction;
@end

@implementation UAActivityWasContinuedEvent

- (UAActivityWasContinuedEvent)initWithAnalyticsInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UAActivityWasContinuedEvent;
  v5 = [(UAActivityWasContinuedEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UAActivityWasContinuedEvent *)v5 setInfo:v4];
  }

  return v6;
}

- (id)eventPayload
{
  v3 = [(UAActivityWasContinuedEvent *)self info];
  v4 = [v3 error];

  if (v4)
  {
    v5 = [(UAActivityWasContinuedEvent *)self info];
    v6 = [v5 error];
    v61 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
  }

  else
  {
    v61 = &off_1000CC880;
  }

  v7 = [(UAActivityWasContinuedEvent *)self info];
  v8 = [v7 remoteDeviceType];

  if (!v8)
  {
    v9 = sub_100001A30(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No remote device type set", buf, 2u);
    }

    v10 = [(UAActivityWasContinuedEvent *)self info];
    [v10 setRemoteDeviceType:@"Unknown"];
  }

  v63[0] = @"activityType";
  v11 = [(UAActivityWasContinuedEvent *)self reportedActivityType];
  v60 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"-";
  }

  v64[0] = v12;
  v63[1] = @"bundleIdentifier";
  v59 = [(UAActivityWasContinuedEvent *)self info];
  v13 = [v59 bundleIdentifier];
  v58 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"-";
  }

  v64[1] = v14;
  v63[2] = @"suggestedActionType";
  v57 = [(UAActivityWasContinuedEvent *)self info];
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v57 suggestedActionType]);
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
  v55 = [(UAActivityWasContinuedEvent *)self info];
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v55 payloadSize]);
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
  v53 = [(UAActivityWasContinuedEvent *)self info];
  [v53 transferSpeed];
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
  v51 = [(UAActivityWasContinuedEvent *)self info];
  [v51 transferDuration];
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
  v49 = [(UAActivityWasContinuedEvent *)self info];
  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v49 isCancelled]);
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
  v47 = [(UAActivityWasContinuedEvent *)self info];
  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v47 isBrowserFallback]);
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
  v29 = [(UAActivityWasContinuedEvent *)self info];
  v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v29 webToNative]);
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
  v33 = [(UAActivityWasContinuedEvent *)self info];
  v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v33 supportsContinuityStreams]);
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
  v37 = [(UAActivityWasContinuedEvent *)self info];
  v38 = [v37 remoteDeviceType];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
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
  v42 = [(UAActivityWasContinuedEvent *)self stringForInteraction];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
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
  v3 = [(UAActivityWasContinuedEvent *)self info];
  v4 = [v3 activityType];
  v5 = [(UAAnalyticsEvent *)self firstPartyActivityTypeOrUnknown:v4];

  return v5;
}

- (id)stringForInteraction
{
  v2 = [(UAActivityWasContinuedEvent *)self info];
  v3 = [v2 interactionType];

  v4 = @"unknown";
  v5 = @"spotlight";
  if (v3 != 805306369)
  {
    v5 = @"unknown";
  }

  if (v3 == 805306368)
  {
    v6 = @"proxy-object";
  }

  else
  {
    v6 = v5;
  }

  if (v3 == 536870913)
  {
    v7 = @"multi-tasker";
  }

  else
  {
    v7 = @"unknown";
  }

  if (v3 == 0x20000000)
  {
    v8 = @"lock-screen";
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 805306367)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v3 == 268435458)
  {
    v4 = @"notification-center";
  }

  if (v3 == 268435457)
  {
    v4 = @"dock";
  }

  if (v3 == 0x10000000)
  {
    v4 = @"command-tab";
  }

  if (v3 <= 0x1FFFFFFF)
  {
    return v4;
  }

  else
  {
    return v9;
  }
}

@end