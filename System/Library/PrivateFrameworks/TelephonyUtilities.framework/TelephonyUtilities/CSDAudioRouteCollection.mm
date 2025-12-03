@interface CSDAudioRouteCollection
- (BOOL)_anyRoutePassesTest:(id)test;
- (BOOL)_setRoutesFromRouteDictionaries:(id)dictionaries;
- (BOOL)hasInEarRouteInTipiWithAndSmartRoutedToCompanionWatch;
- (BOOL)hasInEarRouteInTipiWithCompanionWatch;
- (BOOL)isAnyRouteAvailableWithBluetoothEndpointType:(int64_t)type;
- (BOOL)isAnyRouteAvailableWithUniqueIdentifier:(id)identifier;
- (BOOL)isInEarAudioRouteAvailable;
- (BOOL)updatePickableRoutes;
- (CSDAudioRouteCollection)initWithCategory:(id)category mode:(id)mode routeManager:(id)manager;
- (CSDRouteManager)routeManager;
- (TURoute)preferredRoute;
- (id)_routePassingTest:(id)test;
- (id)description;
- (void)enumerateRoutesInvokingBlock:(id)block forRoutesPassingTest:(id)test;
@end

@implementation CSDAudioRouteCollection

- (BOOL)updatePickableRoutes
{
  mode = [(CSDAudioRouteCollection *)self mode];

  systemController = [(CSDAudioRouteCollection *)self systemController];
  category = [(CSDAudioRouteCollection *)self category];
  if (mode)
  {
    mode2 = [(CSDAudioRouteCollection *)self mode];
    v7 = [systemController pickableRoutesForCategory:category andMode:mode2];
  }

  else
  {
    v7 = [systemController pickableRoutesForCategory:category];
  }

  v8 = [(CSDAudioRouteCollection *)self _setRoutesFromRouteDictionaries:v7];
  return v8;
}

- (CSDRouteManager)routeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_routeManager);

  return WeakRetained;
}

- (BOOL)hasInEarRouteInTipiWithCompanionWatch
{
  v3 = +[TURoute predicateForInEarRouteInTipiWithCompanionWatch];
  v4 = [(CSDAudioRouteCollection *)self _routePassingTest:v3];
  LOBYTE(self) = v4 != 0;

  return self;
}

- (CSDAudioRouteCollection)initWithCategory:(id)category mode:(id)mode routeManager:(id)manager
{
  categoryCopy = category;
  modeCopy = mode;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = CSDAudioRouteCollection;
  v11 = [(CSDAudioRouteCollection *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CSDAudioRouteCollection *)v11 setCategory:categoryCopy];
    [(CSDAudioRouteCollection *)v12 setMode:modeCopy];
    objc_storeWeak(&v12->_routeManager, managerCopy);
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  category = [(CSDAudioRouteCollection *)self category];
  mode = [(CSDAudioRouteCollection *)self mode];
  v6 = [NSString stringWithFormat:@"<%@ %p category=%@ mode=%@>", v3, self, category, mode];

  return v6;
}

- (TURoute)preferredRoute
{
  v3 = +[TURoute predicateForPreferredRoute];
  v4 = [(CSDAudioRouteCollection *)self _routePassingTest:v3];

  return v4;
}

- (BOOL)isAnyRouteAvailableWithBluetoothEndpointType:(int64_t)type
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A715C;
  v4[3] = &unk_10061D7D0;
  v4[4] = type;
  return [(CSDAudioRouteCollection *)self _anyRoutePassesTest:v4];
}

- (BOOL)isAnyRouteAvailableWithUniqueIdentifier:(id)identifier
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A722C;
  v6[3] = &unk_10061D7F8;
  identifierCopy = identifier;
  v4 = identifierCopy;
  LOBYTE(self) = [(CSDAudioRouteCollection *)self _anyRoutePassesTest:v6];

  return self;
}

- (BOOL)isInEarAudioRouteAvailable
{
  v3 = +[TURoute predicateForInEarAudioRoute];
  v4 = [(CSDAudioRouteCollection *)self _routePassingTest:v3];
  LOBYTE(self) = v4 != 0;

  return self;
}

- (BOOL)hasInEarRouteInTipiWithAndSmartRoutedToCompanionWatch
{
  v3 = +[TURoute predicateForInEarRouteInTipiWithAndSmartRoutedToCompanionWatch];
  v4 = [(CSDAudioRouteCollection *)self _routePassingTest:v3];
  LOBYTE(self) = v4 != 0;

  return self;
}

- (void)enumerateRoutesInvokingBlock:(id)block forRoutesPassingTest:(id)test
{
  blockCopy = block;
  testCopy = test;
  v8 = testCopy;
  if (blockCopy && testCopy)
  {
    routes = [(CSDAudioRouteCollection *)self routes];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001A7404;
    v10[3] = &unk_10061D820;
    v11 = v8;
    v12 = blockCopy;
    [routes enumerateObjectsUsingBlock:v10];
  }
}

- (id)_routePassingTest:(id)test
{
  testCopy = test;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000286A4;
  v12 = sub_1000328DC;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A7594;
  v7[3] = &unk_10061D848;
  v7[4] = &v8;
  [(CSDAudioRouteCollection *)self enumerateRoutesInvokingBlock:v7 forRoutesPassingTest:testCopy];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)_anyRoutePassesTest:(id)test
{
  testCopy = test;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A76A0;
  v6[3] = &unk_10061D848;
  v6[4] = &v7;
  [(CSDAudioRouteCollection *)self enumerateRoutesInvokingBlock:v6 forRoutesPassingTest:testCopy];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

- (BOOL)_setRoutesFromRouteDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dictionariesCopy count]);
  selfCopy = self;
  routeManager = [(CSDAudioRouteCollection *)self routeManager];
  aaDeviceManager = [routeManager aaDeviceManager];
  discoveredDevices = [aaDeviceManager discoveredDevices];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = dictionariesCopy;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [[TUAudioRoute alloc] initWithDictionary:v13];
        v15 = v14;
        if (v14)
        {
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1001A79EC;
          v25[3] = &unk_10061D870;
          v16 = v14;
          v26 = v16;
          v17 = [discoveredDevices tu_firstObjectPassingTest:v25];
          v18 = v17;
          if (v17)
          {
            [v16 setInTipiWithCompanion:{(-[NSObject smartRoutingStateFlags](v17, "smartRoutingStateFlags") >> 1) & 1}];
            [v16 setSmartRoutedTo:{(-[NSObject smartRoutingStateFlags](v18, "smartRoutingStateFlags") >> 2) & 1}];
          }

          [v5 addObject:v16];
        }

        else
        {
          v18 = sub_100004778();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = v13;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Unable to create audio route from route dictionary: %@", buf, 0xCu);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v10);
  }

  routes = [(CSDAudioRouteCollection *)selfCopy routes];
  v20 = [v5 isEqual:routes];

  if ((v20 & 1) == 0)
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[CSDAudioRouteCollection _setRoutesFromRouteDictionaries:]";
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
    }

    [(CSDAudioRouteCollection *)selfCopy setRoutes:v5];
  }

  return v20 ^ 1;
}

@end