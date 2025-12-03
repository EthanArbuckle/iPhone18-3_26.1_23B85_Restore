@interface UASimulator
+ (UASimulator)simulatorWithController:(id)controller parentSimulatorPortName:(id)name;
- (BOOL)active;
- (BOOL)reconnectToParentSimulator;
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)terminate;
- (NSSet)notifiedItems;
- (UASimulator)initWithController:(id)controller;
- (id)statusString;
- (void)dealloc;
- (void)setNotifiedItems:(id)items;
- (void)setSimulatorInFront:(BOOL)front;
@end

@implementation UASimulator

- (UASimulator)initWithController:(id)controller
{
  controllerCopy = controller;
  manager = [controllerCopy manager];
  v33.receiver = self;
  v33.super_class = UASimulator;
  v7 = [(UACornerActionManagerHandler *)&v33 initWithManager:manager name:@"SimController"];

  if (v7)
  {
    objc_storeStrong(&v7->_controller, controller);
    v8 = +[SFPeerDevice peerForSelf];
    ourDevice = v7->_ourDevice;
    v7->_ourDevice = v8;

    v10 = dispatch_queue_create("simQ", 0);
    dispatchQ = v7->_dispatchQ;
    v7->_dispatchQ = v10;

    if (!mach_port_allocate(mach_task_self_, 1u, &v7->_commandPort))
    {
      sub_100071684([(UASimulator *)v7 commandPort], v7);
      commandPort = [(UASimulator *)v7 commandPort];
      v13 = dispatch_get_global_queue(0, 0);
      v14 = dispatch_source_create(&_dispatch_source_type_mach_recv, commandPort, 0, v13);

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

    controller = [(UASimulator *)v7 controller];
    manager2 = [controller manager];
    advertiser = [(UASimulator *)v7 advertiser];
    [manager2 addAdvertiser:advertiser];

    controller2 = [(UASimulator *)v7 controller];
    manager3 = [controller2 manager];
    receiver = [(UASimulator *)v7 receiver];
    [manager3 addReceiver:receiver];
  }

  return v7;
}

+ (UASimulator)simulatorWithController:(id)controller parentSimulatorPortName:(id)name
{
  controllerCopy = controller;
  nameCopy = name;
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v18 = nameCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "SIMULATOR: Creating UASimulator to talk to real useractivityd in OSX, portName=%{public}@", buf, 0xCu);
  }

  v8 = [objc_alloc(objc_opt_class()) initWithController:controllerCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 16, name);
    bootstrapName = [v9 bootstrapName];
    v11 = bootstrapName;
    v12 = [bootstrapName cStringUsingEncoding:4];
    dispatchQ = [controllerCopy dispatchQ];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100071B94;
    handler[3] = &unk_1000C5140;
    v16 = v9;
    notify_register_dispatch(v12, v9 + 13, dispatchQ, handler);
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
  bootstrapName = [(UASimulator *)self bootstrapName];
  v5 = bootstrapName;
  [bootstrapName cStringUsingEncoding:4];
  v6 = bootstrap_look_up2();

  if (v6)
  {
    return 0;
  }

  v45 = 0uLL;
  uuid = [(UACornerActionManagerHandler *)self uuid];
  [uuid getUUIDBytes:&v45];

  ourDevice = [(UASimulator *)self ourDevice];
  v10 = [NSKeyedArchiver archivedDataWithRootObject:ourDevice requiringSecureCoding:1 error:0];

  v36 = 0;
  v37 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v35 = 0;
  LODWORD(ourDevice) = [(UASimulator *)selfCopy commandPort];
  v12 = v10;
  v13 = sub_10007B228(v38, &v45, ourDevice, [v10 bytes], objc_msgSend(v10, "length"), 2, &v36, &v37, &v36 + 1, &v35);
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

        [(UASimulator *)selfCopy setPeeredDevice:v18];
      }

      [v17 finishDecoding];
    }

    v20 = sub_100001A30(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      commandPort = [(UASimulator *)selfCopy commandPort];
      v22 = v36;
      peeredDevice = [(UASimulator *)selfCopy peeredDevice];
      *buf = 134218498;
      v40 = commandPort;
      v41 = 2048;
      v42 = v22;
      v43 = 2114;
      v44 = peeredDevice;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Paired with parent simulator, commandPort=%ld pairedPort=%ld pairedPeer=%{public}@", buf, 0x20u);
    }

    v24 = v36;
    selfCopy->_pairedClientPort = v36;
    controller = [(UASimulator *)selfCopy controller];
    dispatchQ = [controller dispatchQ];
    v27 = dispatch_source_create(&_dispatch_source_type_mach_send, v24, 1uLL, dispatchQ);

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100072260;
    handler[3] = &unk_1000C6178;
    v34 = v36;
    handler[4] = selfCopy;
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

  objc_sync_exit(selfCopy);

  return v7;
}

- (NSSet)notifiedItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_notifiedItems copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setNotifiedItems:(id)items
{
  itemsCopy = items;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_notifiedItems removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = itemsCopy;
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
          [(NSMutableSet *)selfCopy->_notifiedItems addObject:v10, v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)active
{
  commandPort = [(UASimulator *)self commandPort];
  if (commandPort)
  {
    LOBYTE(commandPort) = self->_pairedClientPort != 0;
  }

  return commandPort;
}

- (void)setSimulatorInFront:(BOOL)front
{
  frontCopy = front;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"not in front";
    if (frontCopy)
    {
      v6 = @"IN FRONT";
    }

    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Simulator application is %{public}@", &v11, 0xCu);
  }

  self->_activitiesShouldCrossover = frontCopy;
  controller = [(UASimulator *)self controller];
  manager = [controller manager];
  [manager scheduleUpdatingAdvertisableItems];

  controller2 = [(UASimulator *)self controller];
  manager2 = [controller2 manager];
  [manager2 scheduleBestAppDetermination];
}

- (BOOL)resume
{
  v8.receiver = self;
  v8.super_class = UASimulator;
  resume = [(UACornerActionManagerHandler *)&v8 resume];
  if (resume)
  {
    advertiser = [(UASimulator *)self advertiser];
    [advertiser resume];

    receiver = [(UASimulator *)self receiver];
    [receiver resume];

    creator = [(UASimulator *)self creator];
    [creator resume];
  }

  return resume;
}

- (BOOL)suspend
{
  v8.receiver = self;
  v8.super_class = UASimulator;
  suspend = [(UACornerActionManagerHandler *)&v8 suspend];
  if (suspend)
  {
    advertiser = [(UASimulator *)self advertiser];
    [advertiser suspend];

    receiver = [(UASimulator *)self receiver];
    [receiver suspend];

    creator = [(UASimulator *)self creator];
    [creator suspend];
  }

  return suspend;
}

- (BOOL)terminate
{
  v17.receiver = self;
  v17.super_class = UASimulator;
  terminate = [(UACornerActionManagerHandler *)&v17 terminate];
  if (terminate)
  {
    advertiser = [(UASimulator *)self advertiser];
    [advertiser terminate];

    receiver = [(UASimulator *)self receiver];
    [receiver terminate];

    creator = [(UASimulator *)self creator];
    [creator terminate];

    controller = [(UASimulator *)self controller];
    manager = [controller manager];
    advertiser2 = [(UASimulator *)self advertiser];
    [manager removeAdvertiser:advertiser2];

    controller2 = [(UASimulator *)self controller];
    manager2 = [controller2 manager];
    receiver2 = [(UASimulator *)self receiver];
    [manager2 removeReceiver:receiver2];

    controller3 = [(UASimulator *)self controller];
    manager3 = [controller3 manager];
    creator2 = [(UASimulator *)self creator];
    [manager3 removeClient:creator2];

    mach_port_mod_refs(mach_task_self_, [(UASimulator *)self commandPort], 1u, -1);
    mach_port_mod_refs(mach_task_self_, self->_pairedClientPort, 0, -1);
    self->_commandPort = 0;
    self->_pairedClientPort = 0;
  }

  return terminate;
}

- (id)statusString
{
  peeredDevice = [(UASimulator *)self peeredDevice];
  name = [peeredDevice name];
  v4 = [NSString stringWithFormat:@" - SIMULATOR:%@", name];

  return v4;
}

@end