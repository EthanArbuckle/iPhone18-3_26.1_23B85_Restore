@interface PTDRemotePrototypingServer
- (PTDRemotePrototypingServer)initWithDomainServer:(id)server queue:(id)queue;
- (id)getAllDomainInfoByID;
- (id)getRootProxyDefinitionForDomainID:(id)d;
- (id)localPeerDisplayName;
- (void)_broadCastState:(id)state withStateInfo:(id)info;
- (void)_disableRemoteEditingServer;
- (void)applyArchiveValue:(id)value;
- (void)didReceiveState:(id)state withInfo:(id)info fromPeer:(id)peer;
- (void)invokeOutletAtKeyPath:(id)path;
- (void)restoreDefaultValuesForDomainID:(id)d;
- (void)sendEventForTestRecipeID:(id)d;
- (void)setActiveTestRecipeID:(id)d;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation PTDRemotePrototypingServer

- (PTDRemotePrototypingServer)initWithDomainServer:(id)server queue:(id)queue
{
  serverCopy = server;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = PTDRemotePrototypingServer;
  v9 = [(PTDRemotePrototypingServer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_domainServer, server);
    objc_storeStrong(&v10->_mainQueue, queue);
  }

  return v10;
}

- (void)setEnabled:(BOOL)enabled
{
  remoteEditingServerController = self->_remoteEditingServerController;
  if (enabled)
  {
    if (!remoteEditingServerController)
    {
      PTTransactionBegin();
      v14 = 0;
      v15 = &v14;
      v16 = 0x2050000000;
      v5 = qword_10001FA28;
      v17 = qword_10001FA28;
      if (!qword_10001FA28)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100005B60;
        v13[3] = &unk_100018BA0;
        v13[4] = &v14;
        sub_100005B60(v13);
        v5 = v15[3];
      }

      v6 = v5;
      _Block_object_dispose(&v14, 8);
      v7 = [[v5 alloc] initWithDataSource:self];
      v8 = self->_remoteEditingServerController;
      self->_remoteEditingServerController = v7;

      [(RSPeerToPeerServerController *)self->_remoteEditingServerController setDelegate:self];
      [(RSPeerToPeerServerController *)self->_remoteEditingServerController prepareForConnection];
      v9 = self->_remoteEditingServerControllerRevision + 1;
      self->_remoteEditingServerControllerRevision = v9;
      v10 = dispatch_time(0, 1000000000);
      mainQueue = self->_mainQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000050BC;
      block[3] = &unk_100018B78;
      block[4] = self;
      block[5] = v9;
      dispatch_after(v10, mainQueue, block);
      return;
    }
  }

  else if (!remoteEditingServerController)
  {
    return;
  }

  [(PTDRemotePrototypingServer *)self _disableRemoteEditingServer];
}

- (void)_disableRemoteEditingServer
{
  PTTransactionEnd();
  [(RSPeerToPeerServerController *)self->_remoteEditingServerController abort];
  remoteEditingServerController = self->_remoteEditingServerController;
  self->_remoteEditingServerController = 0;

  v4 = PTLogObjectForTopic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remote editing server disabled.", v5, 2u);
  }
}

- (id)localPeerDisplayName
{
  v2 = +[UIDevice currentDevice];
  name = [v2 name];
  v4 = [NSString stringWithFormat:@"Prototype on %@", name];

  return v4;
}

- (void)didReceiveState:(id)state withInfo:(id)info fromPeer:(id)peer
{
  stateCopy = state;
  infoCopy = info;
  mainQueue = self->_mainQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000538C;
  block[3] = &unk_100018878;
  v13 = infoCopy;
  v14 = stateCopy;
  selfCopy = self;
  v10 = stateCopy;
  v11 = infoCopy;
  dispatch_async(mainQueue, block);
}

- (void)_broadCastState:(id)state withStateInfo:(id)info
{
  stateCopy = state;
  infoCopy = info;
  mainQueue = self->_mainQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005690;
  block[3] = &unk_100018878;
  block[4] = self;
  v12 = stateCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = stateCopy;
  dispatch_async(mainQueue, block);
}

- (id)getAllDomainInfoByID
{
  domainServer = self->_domainServer;
  if (!domainServer)
  {
    v4 = objc_alloc_init(PTDomainServer);
    v5 = self->_domainServer;
    self->_domainServer = v4;

    domainServer = self->_domainServer;
  }

  domainInfoByID = [(PTDomainServer *)domainServer domainInfoByID];
  v10 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:domainInfoByID requiringSecureCoding:0 error:&v10];
  v8 = [v7 base64EncodedStringWithOptions:0];

  return v8;
}

- (id)getRootProxyDefinitionForDomainID:(id)d
{
  v4 = [d objectForKey:@"domainID"];
  domainServer = self->_domainServer;
  if (!domainServer)
  {
    v6 = objc_alloc_init(PTDomainServer);
    v7 = self->_domainServer;
    self->_domainServer = v6;

    domainServer = self->_domainServer;
  }

  v8 = [(PTDomainServer *)domainServer rootSettingsProxyDefinitionForDomainID:v4];
  v12 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:0 error:&v12];
  v10 = [v9 base64EncodedStringWithOptions:0];

  return v10;
}

- (void)applyArchiveValue:(id)value
{
  valueCopy = value;
  v7 = [valueCopy objectForKey:@"value"];
  v5 = [valueCopy objectForKey:@"keyPath"];
  v6 = [valueCopy objectForKey:@"domainID"];

  if (v7 && v5 && v6)
  {
    [(PTDomainServer *)self->_domainServer applyArchiveValue:v7 forRootSettingsKeyPath:v5 domainID:v6];
  }
}

- (void)restoreDefaultValuesForDomainID:(id)d
{
  v4 = [d objectForKey:@"domainID"];
  if (v4)
  {
    [(PTDomainServer *)self->_domainServer restoreDefaultValuesForDomainID:v4];
  }

  _objc_release_x1();
}

- (void)invokeOutletAtKeyPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy objectForKey:@"keyPath"];
  v5 = [pathCopy objectForKey:@"domainID"];

  if (v6 && v5)
  {
    [(PTDomainServer *)self->_domainServer invokeOutletAtKeyPath:v6 domainID:v5];
  }
}

- (void)sendEventForTestRecipeID:(id)d
{
  dCopy = d;
  v6 = [dCopy objectForKey:@"event"];
  v5 = [dCopy objectForKey:@"recipeID"];

  if (v6 && v5)
  {
    -[PTDomainServer sendEvent:forTestRecipeID:](self->_domainServer, "sendEvent:forTestRecipeID:", [v6 unsignedIntegerValue], v5);
  }
}

- (void)setActiveTestRecipeID:(id)d
{
  v4 = [d objectForKey:@"recipeID"];
  if (v4)
  {
    [(PTDomainServer *)self->_domainServer setActiveTestRecipeID:v4];
  }

  _objc_release_x1();
}

@end