@interface BYDaemonConnectionManager
+ (id)sharedInstance;
- (BOOL)_connection:(id)_connection hasEntitlement:(id)entitlement;
- (BOOL)_handleIncomingAutomatedDeviceEnrollmentConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BYDaemonConnectionManager)init;
- (void)_monitorLocalNotifications;
- (void)_monitorXPCEvents;
- (void)dealloc;
- (void)performLaunchTokenUpgrade;
- (void)start;
@end

@implementation BYDaemonConnectionManager

+ (id)sharedInstance
{
  if (qword_100028D28 != -1)
  {
    sub_10001120C();
  }

  v3 = qword_100028D20;

  return v3;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_generalListener invalidate];
  [(NSXPCListener *)self->_generalListener setDelegate:0];
  [(NSXPCListener *)self->_cloudSyncListener invalidate];
  [(NSXPCListener *)self->_cloudSyncListener setDelegate:0];
  [(NSXPCListener *)self->_migrationSourceListener invalidate];
  [(NSXPCListener *)self->_migrationSourceListener setDelegate:0];
  [(NSXPCListener *)self->_proximitySourceListener invalidate];
  [(NSXPCListener *)self->_proximitySourceListener setDelegate:0];
  [(NSXPCListener *)self->_proximityTargetListener invalidate];
  [(NSXPCListener *)self->_proximityTargetListener setDelegate:0];
  [(NSXPCListener *)self->_proximityAutomatedDeviceEnrollmentTargetListener invalidate];
  [(NSXPCListener *)self->_proximityAutomatedDeviceEnrollmentTargetListener setDelegate:0];
  [(NSXPCListener *)self->_settingsManagerListener invalidate];
  [(NSXPCListener *)self->_settingsManagerListener setDelegate:0];
  v3.receiver = self;
  v3.super_class = BYDaemonConnectionManager;
  [(BYDaemonConnectionManager *)&v3 dealloc];
}

- (BYDaemonConnectionManager)init
{
  v27.receiver = self;
  v27.super_class = BYDaemonConnectionManager;
  v2 = [(BYDaemonConnectionManager *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc_init(BYDaemonContext);
    context = v2->_context;
    v2->_context = v3;

    v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.purplebuddy.budd.xpc"];
    generalListener = v2->_generalListener;
    v2->_generalListener = v5;

    [(NSXPCListener *)v2->_generalListener setDelegate:v2];
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.purplebuddy.budd.cloud.xpc"];
    cloudSyncListener = v2->_cloudSyncListener;
    v2->_cloudSyncListener = v7;

    [(NSXPCListener *)v2->_cloudSyncListener setDelegate:v2];
    v9 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.purplebuddy.budd.migration.source.xpc"];
    migrationSourceListener = v2->_migrationSourceListener;
    v2->_migrationSourceListener = v9;

    [(NSXPCListener *)v2->_migrationSourceListener setDelegate:v2];
    v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.purplebuddy.budd.proximity.source.xpc"];
    proximitySourceListener = v2->_proximitySourceListener;
    v2->_proximitySourceListener = v11;

    [(NSXPCListener *)v2->_proximitySourceListener setDelegate:v2];
    v13 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.purplebuddy.budd.proximity.target.xpc"];
    proximityTargetListener = v2->_proximityTargetListener;
    v2->_proximityTargetListener = v13;

    [(NSXPCListener *)v2->_proximityTargetListener setDelegate:v2];
    v15 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.purplebuddy.budd.proximityautomateddeviceenrollment.target.xpc"];
    proximityAutomatedDeviceEnrollmentTargetListener = v2->_proximityAutomatedDeviceEnrollmentTargetListener;
    v2->_proximityAutomatedDeviceEnrollmentTargetListener = v15;

    [(NSXPCListener *)v2->_proximityAutomatedDeviceEnrollmentTargetListener setDelegate:v2];
    v17 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.purplebuddy.budd.settings.xpc"];
    settingsManagerListener = v2->_settingsManagerListener;
    v2->_settingsManagerListener = v17;

    [(NSXPCListener *)v2->_settingsManagerListener setDelegate:v2];
    v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v20 = dispatch_queue_create("com.apple.budd.pendingFollowUpRevisionQueue", v19);
    pendingFollowUpRevisionQueue = v2->_pendingFollowUpRevisionQueue;
    v2->_pendingFollowUpRevisionQueue = v20;

    v22 = objc_alloc_init(BYDaemonMigrationSourceController);
    migrationSourceController = v2->_migrationSourceController;
    v2->_migrationSourceController = v22;

    v24 = objc_alloc_init(BYFlowSkipController);
    flowSkipController = v2->_flowSkipController;
    v2->_flowSkipController = v24;
  }

  return v2;
}

- (void)performLaunchTokenUpgrade
{
  if ((+[BYManagedAppleIDBootstrap isMultiUser]& 1) != 0)
  {
    v2 = +[BYManagedAppleIDBootstrap sharedManager];
    isLoginUser = [v2 isLoginUser];

    v4 = _BYLoggingFacility();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (isLoginUser)
    {
      if (v5)
      {
        v9 = 0;
        v6 = "Login user, not performing token upgrade.";
        v7 = &v9;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      }
    }

    else
    {
      if (v5)
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting at-launch token upgrade...", v8, 2u);
      }

      v4 = dispatch_get_global_queue(25, 0);
      dispatch_async(v4, &stru_100020E78);
    }
  }

  else
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Not multi-user, not performing token upgrade.";
      v7 = buf;
      goto LABEL_7;
    }
  }
}

- (void)start
{
  [(NSXPCListener *)self->_generalListener resume];
  [(NSXPCListener *)self->_cloudSyncListener resume];
  [(NSXPCListener *)self->_migrationSourceListener resume];
  [(NSXPCListener *)self->_proximitySourceListener resume];
  [(NSXPCListener *)self->_proximityTargetListener resume];
  [(NSXPCListener *)self->_proximityAutomatedDeviceEnrollmentTargetListener resume];
  [(NSXPCListener *)self->_settingsManagerListener resume];
  [(BYDaemonConnectionManager *)self _monitorXPCEvents];
  [(BYDaemonConnectionManager *)self _monitorLocalNotifications];

  [(BYDaemonConnectionManager *)self performLaunchTokenUpgrade];
}

- (void)_monitorXPCEvents
{
  pendingFollowUpRevisionQueue = self->_pendingFollowUpRevisionQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100010148;
  handler[3] = &unk_100020EA0;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", pendingFollowUpRevisionQueue, handler);
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registered for xpc events", v4, 2u);
  }
}

- (void)_monitorLocalNotifications
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100010334;
  v10[3] = &unk_100020EC8;
  v10[4] = self;
  v2 = objc_retainBlock(v10);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = MCEffectiveSettingsChangedNotification;
  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v3 addObserverForName:v4 object:v5 queue:0 usingBlock:v2];
  v7 = qword_100028D30;
  qword_100028D30 = v6;

  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registered for local notifications", v9, 2u);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  [connectionCopy processIdentifier];
  v8 = BYProcessNameForPID();
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@[%u]", v8, [connectionCopy processIdentifier]);

  v10 = _BYLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New connection from: %@", buf, 0xCu);
  }

  if ([(BYDaemonConnectionManager *)self _connection:connectionCopy hasEntitlement:@"com.apple.purplebuddy.budd.access"])
  {
    if (self->_generalListener == listenerCopy)
    {
      v12 = [[BYDaemonGeneralClientConnection alloc] initWithConnection:connectionCopy flowSkipController:self->_flowSkipController];
      [(BYDaemonClientConnection *)v12 setContext:self->_context];
      goto LABEL_16;
    }

    if (self->_cloudSyncListener == listenerCopy)
    {
      v12 = [[BYDaemonCloudSyncClientConnection alloc] initWithConnection:connectionCopy];
      v15 = BYBuddyDaemonCloudSyncClient;
    }

    else
    {
      if (self->_migrationSourceListener != listenerCopy)
      {
        if (self->_proximitySourceListener == listenerCopy)
        {
          v12 = [[BYDaemonProximitySourceClientConnection alloc] initWithConnection:connectionCopy migrationController:self->_migrationSourceController];
          clientInterface = +[BYBuddyDaemonProximitySourceClient proximitySourceClientInterface];
        }

        else
        {
          if (self->_proximityTargetListener != listenerCopy)
          {
            if (self->_proximityAutomatedDeviceEnrollmentTargetListener == listenerCopy)
            {
              v14 = [(BYDaemonConnectionManager *)self _handleIncomingAutomatedDeviceEnrollmentConnection:connectionCopy];
              goto LABEL_24;
            }

            if (self->_settingsManagerListener != listenerCopy)
            {
              v11 = 0;
              v12 = 0;
LABEL_21:
              [connectionCopy setExportedObject:v12];
              daemonProtocolInterface = [objc_opt_class() daemonProtocolInterface];
              [connectionCopy setExportedInterface:daemonProtocolInterface];

              if (v11)
              {
                [connectionCopy setRemoteObjectInterface:v11];
              }

              [(BYDaemonClientConnection *)v12 setConnection:connectionCopy];
              [connectionCopy resume];

              v14 = 1;
              goto LABEL_24;
            }

            v12 = [(BYDaemonClientConnection *)[BYDaemonSettingsManagerClientConnection alloc] initWithConnection:connectionCopy];
LABEL_16:
            v11 = 0;
            goto LABEL_21;
          }

          v12 = [[BYDaemonProximityTargetClientConnection alloc] initWithConnection:connectionCopy];
          clientInterface = +[BYBuddyDaemonProximityTargetClient proximityTargetClientInterface];
        }

LABEL_20:
        v11 = clientInterface;
        goto LABEL_21;
      }

      v12 = [[BYDaemonMigrationSourceClientConnection alloc] initWithConnection:connectionCopy migrationController:self->_migrationSourceController];
      v15 = BYDaemonMigrationSourceClientConnection;
    }

    clientInterface = [(__objc2_class *)v15 clientInterface];
    goto LABEL_20;
  }

  v13 = _BYLoggingFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100011220();
  }

  v14 = 0;
LABEL_24:

  return v14;
}

- (BOOL)_connection:(id)_connection hasEntitlement:(id)entitlement
{
  v4 = [_connection valueForEntitlement:entitlement];
  v5 = (objc_opt_respondsToSelector() & 1) != 0 && ([v4 BOOLValue] & 1) != 0;

  return v5;
}

- (BOOL)_handleIncomingAutomatedDeviceEnrollmentConnection:(id)connection
{
  connectionCopy = connection;
  currentProximityAutomatedDeviceEnrollmentConnection = [(BYDaemonConnectionManager *)self currentProximityAutomatedDeviceEnrollmentConnection];
  if (!currentProximityAutomatedDeviceEnrollmentConnection || (v6 = currentProximityAutomatedDeviceEnrollmentConnection, [(BYDaemonConnectionManager *)self currentProximityAutomatedDeviceEnrollmentConnection], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 == connectionCopy))
  {
    v8 = objc_alloc_init(DMTSharingBackedRemoteSetupBroadcastingProvider);
    v10 = [[BYDaemonProximityAutomatedDeviceEnrollmentTargetClientConnection alloc] initWithConnection:connectionCopy broadcastingProvider:v8];
    [connectionCopy setExportedObject:v10];
    daemonProtocolInterface = [objc_opt_class() daemonProtocolInterface];
    [connectionCopy setExportedInterface:daemonProtocolInterface];

    v12 = +[BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient clientInterface];
    [connectionCopy setRemoteObjectInterface:v12];

    objc_initWeak(&location, self);
    objc_initWeak(&from, connectionCopy);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000109EC;
    v20[3] = &unk_100020890;
    objc_copyWeak(&v21, &from);
    objc_copyWeak(&v22, &location);
    [connectionCopy setInvalidationHandler:v20];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100010AE4;
    v17 = &unk_100020890;
    objc_copyWeak(&v18, &from);
    objc_copyWeak(&v19, &location);
    [connectionCopy setInterruptionHandler:&v14];
    [(BYDaemonConnectionManager *)self setCurrentProximityAutomatedDeviceEnrollmentConnection:connectionCopy, v14, v15, v16, v17];
    [connectionCopy resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    v9 = 1;
  }

  else
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1000112A0(v8);
    }

    v9 = 0;
  }

  return v9;
}

@end