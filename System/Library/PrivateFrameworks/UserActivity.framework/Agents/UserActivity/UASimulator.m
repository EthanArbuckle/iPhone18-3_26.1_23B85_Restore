@interface UASimulator
+ (UASimulator)simulatorWithController:(id)a3 parentSimulatorPortName:(id)a4;
- (BOOL)active;
- (BOOL)reconnectToParentSimulator;
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)terminate;
- (NSSet)notifiedItems;
- (UASimulator)initWithController:(id)a3;
- (id)statusString;
- (void)dealloc;
- (void)setNotifiedItems:(id)a3;
- (void)setSimulatorInFront:(BOOL)a3;
@end

@implementation UASimulator

- (UASimulator)initWithController:(id)a3
{
  v5 = a3;
  v6 = [v5 manager];
  v33.receiver = self;
  v33.super_class = UASimulator;
  v7 = [(UACornerActionManagerHandler *)&v33 initWithManager:v6 name:@"SimController"];

  if (v7)
  {
    objc_storeStrong(&v7->_controller, a3);
    v8 = +[SFPeerDevice peerForSelf];
    ourDevice = v7->_ourDevice;
    v7->_ourDevice = v8;

    v10 = dispatch_queue_create("simQ", 0);
    dispatchQ = v7->_dispatchQ;
    v7->_dispatchQ = v10;

    if (!mach_port_allocate(mach_task_self_, 1u, &v7->_commandPort))
    {
      sub_100071684([(UASimulator *)v7 commandPort], v7);
      v12 = [(UASimulator *)v7 commandPort];
      v13 = dispatch_get_global_queue(0, 0);
      v14 = dispatch_source_create(&_dispatch_source_type_mach_recv, v12, 0, v13);

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100071768;
      handler[3] = &unk_1000C4DA0;
      v15 = v7;
      v31 = v15;
      v32 = v14;
      v16 = v14;
      dispatch_source_set_event_handler(v16, handler);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100071868;
      v28[3] = &unk_1000C4D10;
      v29 = v15;
      dispatch_source_set_cancel_handler(v16, v28);
      dispatch_resume(v16);
    }

    v17 = [[UASimulatorAdvertiser alloc] initWithSimulator:v7];
    advertiser = v7->_advertiser;
    v7->_advertiser = v17;

    v19 = [[UASimulatorReceiver alloc] initWithSimulator:v7];
    receiver = v7->_receiver;
    v7->_receiver = v19;

    v21 = [(UASimulator *)v7 controller];
    v22 = [v21 manager];
    v23 = [(UASimulator *)v7 advertiser];
    [v22 addAdvertiser:v23];

    v24 = [(UASimulator *)v7 controller];
    v25 = [v24 manager];
    v26 = [(UASimulator *)v7 receiver];
    [v25 addReceiver:v26];
  }

  return v7;
}

+ (UASimulator)simulatorWithController:(id)a3 parentSimulatorPortName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "SIMULATOR: Creating UASimulator to talk to real useractivityd in OSX, portName=%{public}@", buf, 0xCu);
  }

  v8 = [objc_alloc(objc_opt_class()) initWithController:v5];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 16, a4);
    v10 = [v9 bootstrapName];
    v11 = v10;
    v12 = [v10 cStringUsingEncoding:4];
    v13 = [v5 dispatchQ];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100071B94;
    handler[3] = &unk_1000C5140;
    v16 = v9;
    notify_register_dispatch(v12, v9 + 13, v13, handler);
  }

  return v9;
}

- (void)dealloc
{
  sub_100071684([(UASimulator *)self commandPort], 0);
  pairedClientPort = self->_pairedClientPort;
  if (pairedClientPort)
  {
    mach_port_mod_refs(mach_task_self_, pairedClientPort, 0, -1);
  }

  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
  }

  v5.receiver = self;
  v5.super_class = UASimulator;
  [(UASimulator *)&v5 dealloc];
}

- (BOOL)reconnectToParentSimulator
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Looking up parent port in order to talk to useractivity in OSX", buf, 2u);
  }

  v38 = 0;
  v4 = [(UASimulator *)self bootstrapName];
  v5 = v4;
  [v4 cStringUsingEncoding:4];
  v6 = bootstrap_look_up2();

  if (v6)
  {
    return 0;
  }

  v45 = 0uLL;
  v8 = [(UACornerActionManagerHandler *)self uuid];
  [v8 getUUIDBytes:&v45];

  v9 = [(UASimulator *)self ourDevice];
  v10 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];

  v36 = 0;
  v37 = 0;
  v11 = self;
  objc_sync_enter(v11);
  v35 = 0;
  LODWORD(v9) = [(UASimulator *)v11 commandPort];
  v12 = v10;
  v13 = sub_10007B228(v38, &v45, v9, [v10 bytes], objc_msgSend(v10, "length"), 2, &v36, &v37, &v36 + 1, &v35);
  v14 = sub_100001A30(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v40 = v13;
    v41 = 2048;
    v42 = v35;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "UASimRegisterWithParentWithVersion()=%ld parentVersion=%ld", buf, 0x16u);
  }

  v7 = v13 == 0;
  if (!v13)
  {
    v15 = [NSKeyedUnarchiver alloc];
    v16 = [NSData dataWithBytes:v37 length:HIDWORD(v36)];
    v17 = [v15 initForReadingFromData:v16 error:0];

    if (HIDWORD(v36))
    {
      v18 = [v17 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      if (v18)
      {
        v19 = sub_100001A30(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v40 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "SIMULATOR: Changing peer device info to %{private}@", buf, 0xCu);
        }

        [(UASimulator *)v11 setPeeredDevice:v18];
      }

      [v17 finishDecoding];
    }

    v20 = sub_100001A30(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(UASimulator *)v11 commandPort];
      v22 = v36;
      v23 = [(UASimulator *)v11 peeredDevice];
      *buf = 134218498;
      v40 = v21;
      v41 = 2048;
      v42 = v22;
      v43 = 2114;
      v44 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Paired with parent simulator, commandPort=%ld pairedPort=%ld pairedPeer=%{public}@", buf, 0x20u);
    }

    v24 = v36;
    v11->_pairedClientPort = v36;
    v25 = [(UASimulator *)v11 controller];
    v26 = [v25 dispatchQ];
    v27 = dispatch_source_create(&_dispatch_source_type_mach_send, v24, 1uLL, v26);

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100072260;
    handler[3] = &unk_1000C6178;
    v34 = v36;
    handler[4] = v11;
    v33 = v27;
    v28 = v27;
    dispatch_source_set_event_handler(v28, handler);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100072490;
    v30[3] = &unk_1000C6198;
    v31 = v36;
    dispatch_source_set_cancel_handler(v28, v30);
    dispatch_resume(v28);
  }

  objc_sync_exit(v11);

  return v7;
}

- (NSSet)notifiedItems
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_notifiedItems copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setNotifiedItems:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableSet *)v5->_notifiedItems removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(NSMutableSet *)v5->_notifiedItems addObject:v10, v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (BOOL)active
{
  v3 = [(UASimulator *)self commandPort];
  if (v3)
  {
    LOBYTE(v3) = self->_pairedClientPort != 0;
  }

  return v3;
}

- (void)setSimulatorInFront:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"not in front";
    if (v3)
    {
      v6 = @"IN FRONT";
    }

    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Simulator application is %{public}@", &v11, 0xCu);
  }

  self->_activitiesShouldCrossover = v3;
  v7 = [(UASimulator *)self controller];
  v8 = [v7 manager];
  [v8 scheduleUpdatingAdvertisableItems];

  v9 = [(UASimulator *)self controller];
  v10 = [v9 manager];
  [v10 scheduleBestAppDetermination];
}

- (BOOL)resume
{
  v8.receiver = self;
  v8.super_class = UASimulator;
  v3 = [(UACornerActionManagerHandler *)&v8 resume];
  if (v3)
  {
    v4 = [(UASimulator *)self advertiser];
    [v4 resume];

    v5 = [(UASimulator *)self receiver];
    [v5 resume];

    v6 = [(UASimulator *)self creator];
    [v6 resume];
  }

  return v3;
}

- (BOOL)suspend
{
  v8.receiver = self;
  v8.super_class = UASimulator;
  v3 = [(UACornerActionManagerHandler *)&v8 suspend];
  if (v3)
  {
    v4 = [(UASimulator *)self advertiser];
    [v4 suspend];

    v5 = [(UASimulator *)self receiver];
    [v5 suspend];

    v6 = [(UASimulator *)self creator];
    [v6 suspend];
  }

  return v3;
}

- (BOOL)terminate
{
  v17.receiver = self;
  v17.super_class = UASimulator;
  v3 = [(UACornerActionManagerHandler *)&v17 terminate];
  if (v3)
  {
    v4 = [(UASimulator *)self advertiser];
    [v4 terminate];

    v5 = [(UASimulator *)self receiver];
    [v5 terminate];

    v6 = [(UASimulator *)self creator];
    [v6 terminate];

    v7 = [(UASimulator *)self controller];
    v8 = [v7 manager];
    v9 = [(UASimulator *)self advertiser];
    [v8 removeAdvertiser:v9];

    v10 = [(UASimulator *)self controller];
    v11 = [v10 manager];
    v12 = [(UASimulator *)self receiver];
    [v11 removeReceiver:v12];

    v13 = [(UASimulator *)self controller];
    v14 = [v13 manager];
    v15 = [(UASimulator *)self creator];
    [v14 removeClient:v15];

    mach_port_mod_refs(mach_task_self_, [(UASimulator *)self commandPort], 1u, -1);
    mach_port_mod_refs(mach_task_self_, self->_pairedClientPort, 0, -1);
    self->_commandPort = 0;
    self->_pairedClientPort = 0;
  }

  return v3;
}

- (id)statusString
{
  v2 = [(UASimulator *)self peeredDevice];
  v3 = [v2 name];
  v4 = [NSString stringWithFormat:@" - SIMULATOR:%@", v3];

  return v4;
}

@end