@interface TSDgPTPPort
+ (id)diagnosticInfoForService:(id)a3;
+ (id)gPTPPortWithService:(id)a3;
- (BOOL)startAutomaticPropertyUpdates;
- (BOOL)stopAutomaticPropertyUpdates;
- (TSDgPTPPort)init;
- (TSDgPTPPort)initWithService:(id)a3 pid:(int)a4;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)a3;
- (id)propertiesForXPC;
- (int)_portRole;
- (unint64_t)_clockIdentifier;
- (unsigned)_portNumber;
- (void)finalizeNotifications;
- (void)setPropertyUpdateQueue:(id)a3;
- (void)updateProperties;
@end

@implementation TSDgPTPPort

- (unsigned)_portNumber
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"PortNumber"];

  if (v3)
  {
    v4 = [v3 unsignedShortValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_clockIdentifier
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"ClockIdentifier"];

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)_portRole
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"PortRole"];

  if (v3)
  {
    v4 = [v3 intValue];
    if (v4 < 4)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TSDgPTPPort)init
{
  v3 = [NSString stringWithUTF8String:"[TSDgPTPPort init]"];
  [NSException raise:NSInvalidArgumentException format:@"Do not call %@", v3];

  return 0;
}

+ (id)gPTPPortWithService:(id)a3
{
  v3 = a3;
  if ([v3 conformsToIOClassName:@"IOTimeSyncEthernetPort"])
  {
    v4 = off_10004C4B8;
LABEL_21:
    v5 = [objc_alloc(*v4) initWithService:v3];
    goto LABEL_22;
  }

  if ([v3 conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerPtPPort"])
  {
    v4 = off_10004C4E0;
    goto LABEL_21;
  }

  if ([v3 conformsToIOClassName:@"IOTimeSyncUnicastUDPv4PtPPort"])
  {
    v4 = off_10004C4F0;
    goto LABEL_21;
  }

  if ([v3 conformsToIOClassName:@"IOTimeSyncUnicastUDPv6PtPPort"])
  {
    v4 = &off_10004C500;
    goto LABEL_21;
  }

  if ([v3 conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerEtEPort"])
  {
    v4 = off_10004C4D8;
    goto LABEL_21;
  }

  if ([v3 conformsToIOClassName:@"IOTimeSyncUnicastUDPv4EtEPort"])
  {
    v4 = off_10004C4E8;
    goto LABEL_21;
  }

  if ([v3 conformsToIOClassName:@"IOTimeSyncUnicastUDPv6EtEPort"])
  {
    v4 = off_10004C4F8;
    goto LABEL_21;
  }

  if ([v3 conformsToIOClassName:@"IOTimeSyncLocalClockPort"])
  {
    v4 = off_10004C4C0;
    goto LABEL_21;
  }

  if ([v3 conformsToIOClassName:@"IOTimeSyncNetworkPort"])
  {
    v4 = off_10004C4C8;
    goto LABEL_21;
  }

  if ([v3 conformsToIOClassName:@"IOTimeSyncPort"])
  {
    v4 = off_10004C4D0;
    goto LABEL_21;
  }

  v5 = 0;
LABEL_22:

  return v5;
}

- (TSDgPTPPort)initWithService:(id)a3 pid:(int)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = TSDgPTPPort;
  v7 = [(TSDgPTPPort *)&v20 init];
  if (v7)
  {
    objc_initWeak(&location, v7);
    objc_storeStrong(&v7->_service, a3);
    if (v7->_service)
    {
      v7->_portNumber = [(TSDgPTPPort *)v7 _portNumber];
      v7->_clockIdentifier = [(TSDgPTPPort *)v7 _clockIdentifier];
      if (qword_100058848 != -1)
      {
        sub_10002A5E4();
      }

      if (qword_100058840)
      {
        objc_storeStrong(&v7->_propertyUpdateQueue, qword_100058840);
        v7->_portRole = [(TSDgPTPPort *)v7 _portRole];
        v8 = [IOKNotificationPort alloc];
        v9 = [v8 initOnDispatchQueue:qword_100058840];
        notificationPort = v7->_notificationPort;
        v7->_notificationPort = v9;

        v11 = v7->_notificationPort;
        if (v11)
        {
          service = v7->_service;
          v13 = IOKGeneralInterest;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_10000D09C;
          v17[3] = &unk_10004C8F8;
          objc_copyWeak(&v18, &location);
          v14 = [(IOKService *)service addInterestNotifcationOfType:v13 usingNotificationPort:v11 error:0 withHandler:v17];
          generalInterestNotification = v7->_generalInterestNotification;
          v7->_generalInterestNotification = v14;

          objc_destroyWeak(&v18);
          if (v7->_generalInterestNotification)
          {
LABEL_8:
            objc_destroyWeak(&location);
            goto LABEL_9;
          }

          sub_10002A60C();
        }

        else
        {
          sub_10002A6BC();
        }
      }

      else
      {
        sub_10002A76C();
      }
    }

    else
    {
      sub_10002A81C();
    }

    v7 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (void)updateProperties
{
  v3 = [(TSDgPTPPort *)self propertyUpdateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D1FC;
  block[3] = &unk_10004C920;
  v5 = [(TSDgPTPPort *)self _portRole];
  block[4] = self;
  block[5] = [(TSDgPTPPort *)self _clockIdentifier];
  dispatch_async(v3, block);
}

- (BOOL)startAutomaticPropertyUpdates
{
  v2 = self->_generalInterestNotification != 0;
  self->_updatePropertiesOnPropertyChange = 1;
  return v2;
}

- (BOOL)stopAutomaticPropertyUpdates
{
  self->_updatePropertiesOnPropertyChange = 0;
  dispatch_sync(qword_100058840, &stru_10004C940);
  return 1;
}

- (void)setPropertyUpdateQueue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = qword_100058840;
  }

  propertyUpdateQueue = self->_propertyUpdateQueue;
  self->_propertyUpdateQueue = v4;

  _objc_release_x1();
}

- (void)finalizeNotifications
{
  self->_updatePropertiesOnPropertyChange = 0;
  generalInterestNotification = self->_generalInterestNotification;
  self->_generalInterestNotification = 0;

  notificationPort = self->_notificationPort;
  self->_notificationPort = 0;
}

- (id)propertiesForXPC
{
  v3 = objc_opt_class();
  v4 = [(TSDgPTPPort *)self service];
  v5 = [v3 diagnosticInfoForService:v4];

  v6 = [v5 objectForKeyedSubscript:@"PortRole"];
  if (!v6)
  {
    v7 = [NSNumber numberWithInt:0];
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 intValue];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = 3;
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_13;
      }

      v9 = 4;
    }
  }

  else if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_13;
    }

    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [NSNumber numberWithInt:v9];

  v7 = v10;
LABEL_13:
  [v5 setObject:v7 forKeyedSubscript:@"PortRole"];

  return v5;
}

+ (id)diagnosticInfoForService:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 ioClassName];
  [v4 setObject:v5 forKeyedSubscript:@"ClassName"];

  v6 = [v3 iodProperties];

  [v4 addEntriesFromDictionary:v6];
  [v4 removeObjectForKey:@"IOUserClientClass"];
  [v4 removeObjectForKey:@"IOGeneralInterest"];
  [v4 removeObjectForKey:@"SourceMACAddress"];
  [v4 removeObjectForKey:@"DestinationMACAddress"];
  [v4 removeObjectForKey:@"SourceIPAddress"];
  [v4 removeObjectForKey:@"SourceIPMask"];
  [v4 removeObjectForKey:@"DestinationIPAddress"];

  return v4;
}

- (id)getMetrics
{
  v2 = [[TSDPortMetrics alloc] initWithPort:self];

  return v2;
}

- (id)getMetricsWithDelta:(id)a3
{
  v4 = a3;
  v5 = [(TSDgPTPPort *)self getMetrics];
  v6 = [v5 getDelta:v4];

  return v6;
}

@end