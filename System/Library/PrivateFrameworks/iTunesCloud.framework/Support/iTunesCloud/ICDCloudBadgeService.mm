@interface ICDCloudBadgeService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICDCloudBadgeService)init;
- (id)_supportedInterfaceForXPCConnection;
- (id)badgeActionMetricsEventForIdentifier:(id)a3;
- (id)badgeActionMetricsEventPathForIdentifier:(id)a3;
- (void)clearBadgeActionMetricsEventForIdentifier:(id)a3;
- (void)enqueueMetricsEvent:(id)a3;
- (void)reportAppIconBadgeActionMetrics;
- (void)storeBadgeActionMetricsEvent:(id)a3 identifier:(id)a4;
@end

@implementation ICDCloudBadgeService

- (id)_supportedInterfaceForXPCConnection
{
  if (qword_100213D88 != -1)
  {
    dispatch_once(&qword_100213D88, &stru_1001DDE08);
  }

  v3 = qword_100213D80;

  return v3;
}

- (void)reportAppIconBadgeActionMetrics
{
  v3 = [(ICDCloudBadgeService *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE038;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 icd_isConnectionAllowedForService:7];
  if (v6)
  {
    v7 = [v5 processIdentifier];
    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    v8 = MSVBundleIDForAuditToken();
    v9 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v12[0]) = 134218498;
      *(v12 + 4) = self;
      WORD6(v12[0]) = 2114;
      *(v12 + 14) = v8;
      WORD3(v12[1]) = 1024;
      DWORD2(v12[1]) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ICCloudReportBadgeActionRequest %p - XPC connection from %{public}@[%d]", v12, 0x1Cu);
    }

    v10 = [(ICDCloudBadgeService *)self _supportedInterfaceForXPCConnection];
    [v5 setExportedInterface:v10];
    [v5 setExportedObject:self];
    [v5 resume];
  }

  return v6;
}

- (void)storeBadgeActionMetricsEvent:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(ICDCloudBadgeService *)self badgeActionMetricsEventPathForIdentifier:v7];
    if (!v8)
    {
LABEL_16:

      goto LABEL_17;
    }

    v21 = 0;
    v9 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v21];
    v10 = v21;
    if (v10)
    {
      v11 = v10;
      v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "CloudBadgeService: failed to serialize action metrics event - error=%{public}@", buf, 0xCu);
      }

      goto LABEL_15;
    }

    v12 = [v8 path];
    v20 = 0;
    v13 = [v9 writeToFile:v12 options:1 error:&v20];
    v11 = v20;
    if (v13)
    {
      v14 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v23 = v7;
        v15 = "CloudBadgeService: Stored %{public}@ badging action metrics event";
        v16 = v14;
        v17 = OS_LOG_TYPE_DEBUG;
LABEL_12:
        v19 = 12;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, v19);
      }
    }

    else
    {
      v14 = os_log_create("com.apple.amp.itunescloudd", "Default");
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (!v11)
      {
        if (!v18)
        {
          goto LABEL_14;
        }

        *buf = 0;
        v15 = "CloudBadgeService: failed to store action metrics event without an error";
        v16 = v14;
        v17 = OS_LOG_TYPE_ERROR;
        v19 = 2;
        goto LABEL_13;
      }

      if (v18)
      {
        *buf = 138543362;
        v23 = v11;
        v15 = "CloudBadgeService: failed to store action metrics event - error=%{public}@";
        v16 = v14;
        v17 = OS_LOG_TYPE_ERROR;
        goto LABEL_12;
      }
    }

LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

LABEL_17:
}

- (void)clearBadgeActionMetricsEventForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICDCloudBadgeService *)self badgeActionMetricsEventPathForIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 path];
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 fileExistsAtPath:v7];

    if ((v9 & 1) == 0)
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CloudBadgeService: No stored action metrics event", buf, 2u);
      }

      goto LABEL_16;
    }

    v10 = +[NSFileManager defaultManager];
    v19 = 0;
    v11 = [v10 removeItemAtPath:v7 error:&v19];
    v12 = v19;

    if (v11)
    {
      v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v21 = v4;
        v14 = "CloudBadgeService: Cleared %{public}@ badging action metrics event";
        v15 = v13;
        v16 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        v18 = 12;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
      v17 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (v17)
        {
          *buf = 138543618;
          v21 = v4;
          v22 = 2114;
          v23 = v12;
          v14 = "CloudBadgeService: failed to clear stored %{public}@ action metrics event - error=%{public}@";
          v15 = v13;
          v16 = OS_LOG_TYPE_ERROR;
          v18 = 22;
LABEL_14:
          _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, v18);
        }
      }

      else if (v17)
      {
        *buf = 138543362;
        v21 = v4;
        v14 = "CloudBadgeService: failed to clear stored %{public}@ action metrics event without an error";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
        goto LABEL_13;
      }
    }

LABEL_16:
  }
}

- (void)enqueueMetricsEvent:(id)a3
{
  v7 = a3;
  v4 = [(ICDCloudBadgeService *)self createBag];
  v5 = [[AMSEngagement alloc] initWithBag:v4];
  v6 = [v5 enqueueData:v7];
}

- (id)badgeActionMetricsEventForIdentifier:(id)a3
{
  v3 = [(ICDCloudBadgeService *)self badgeActionMetricsEventPathForIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 path];
    v14 = 0;
    v6 = [[NSData alloc] initWithContentsOfFile:v5 options:0 error:&v14];
    v7 = v14;
    if (v6)
    {
      v13 = 0;
      v8 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v13];
      v9 = v13;

      if (v9)
      {
        v10 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v16 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudBadgeService: failed to deserialize stored action metrics event - error=%{public}@", buf, 0xCu);
        }

        v11 = 0;
      }

      else
      {
        v8 = v8;
        v11 = v8;
      }
    }

    else
    {
      v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CloudBadgeService: Failed to read badge action metrics either because there are none, or the file is corrupt - error=%{public}@", buf, 0xCu);
      }

      v11 = 0;
      v9 = v7;
    }
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CloudBadgeService: Failed to generate badge action path", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)badgeActionMetricsEventPathForIdentifier:(id)a3
{
  v3 = a3;
  v4 = MSVMobileHomeDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"Library/Caches/com.apple.iTunesCloud/"];

  v6 = [v3 stringByAppendingString:@"_badging_action_metric_event.plist"];

  v7 = [v5 stringByAppendingPathComponent:v6];
  v8 = [NSURL fileURLWithPath:v7];

  return v8;
}

- (ICDCloudBadgeService)init
{
  v6.receiver = self;
  v6.super_class = ICDCloudBadgeService;
  v2 = [(ICDCloudBadgeService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunescloudd.ICCloudBadgeService.serial.queue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;
  }

  return v2;
}

@end