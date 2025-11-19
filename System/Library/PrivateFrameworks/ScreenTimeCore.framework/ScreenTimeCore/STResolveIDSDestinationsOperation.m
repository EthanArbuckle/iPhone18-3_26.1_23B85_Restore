@interface STResolveIDSDestinationsOperation
- (STResolveIDSDestinationsOperation)initWithDestinations:(id)a3 toLocal:(BOOL)a4 organizationIdentifier:(id)a5 persistenceController:(id)a6;
- (void)_resolveDestinationsFromLocal;
- (void)_resolveDestinationsToLocal;
- (void)main;
@end

@implementation STResolveIDSDestinationsOperation

- (STResolveIDSDestinationsOperation)initWithDestinations:(id)a3 toLocal:(BOOL)a4 organizationIdentifier:(id)a5 persistenceController:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = STResolveIDSDestinationsOperation;
  v12 = [(STPersistenceOperation *)&v20 initWithPersistenceController:a6];
  if (v12)
  {
    v13 = [v10 copy];
    destinations = v12->_destinations;
    v12->_destinations = v13;

    v15 = [v11 copy];
    organizationIdentifier = v12->_organizationIdentifier;
    v12->_organizationIdentifier = v15;

    v12->_toLocal = v8;
  }

  v17 = +[STLog familyMessaging];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "NO";
    v22 = "[STResolveIDSDestinationsOperation initWithDestinations:toLocal:organizationIdentifier:persistenceController:]";
    *buf = 136446723;
    if (v8)
    {
      v18 = "YES";
    }

    v23 = 2113;
    v24 = v10;
    v25 = 2080;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \ndestinations: %{private}@, toLocal: %s", buf, 0x20u);
  }

  return v12;
}

- (void)main
{
  v3 = _os_activity_create(&_mh_execute_header, "STResolveIDSDestinationsOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  [(STOperation *)self setActivity:v3];

  v4 = [(STOperation *)self activity:0];
  os_activity_scope_enter(v4, &v8);

  v5 = +[STLog idsTransport];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(STResolveIDSDestinationsOperation *)self toLocal];
    v7 = "NO";
    if (v6)
    {
      v7 = "YES";
    }

    *buf = 136446466;
    v10 = "[STResolveIDSDestinationsOperation main]";
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nStarted, toLocal: %s", buf, 0x16u);
  }

  if ([(STResolveIDSDestinationsOperation *)self toLocal])
  {
    [(STResolveIDSDestinationsOperation *)self _resolveDestinationsToLocal];
  }

  else
  {
    [(STResolveIDSDestinationsOperation *)self _resolveDestinationsFromLocal];
  }

  os_activity_scope_leave(&v8);
}

- (void)_resolveDestinationsFromLocal
{
  v3 = [(STPersistenceOperation *)self persistenceController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007136C;
  v4[3] = &unk_1001A3BF0;
  v4[4] = self;
  [v3 performBackgroundTask:v4];
}

- (void)_resolveDestinationsToLocal
{
  v3 = [(STPersistenceOperation *)self persistenceController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100071AC8;
  v4[3] = &unk_1001A3BF0;
  v4[4] = self;
  [v3 performBackgroundTask:v4];
}

@end