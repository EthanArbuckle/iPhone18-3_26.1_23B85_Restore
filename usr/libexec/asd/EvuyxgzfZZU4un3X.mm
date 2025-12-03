@interface EvuyxgzfZZU4un3X
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation EvuyxgzfZZU4un3X

+ (id)sharedInstance
{
  if (qword_1006D7C30 != -1)
  {
    sub_100593364();
  }

  sub_100004290();
  v2 = qword_1006D7C28;

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v24 = 0;
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___YPrbz3IaOz1JRlMc];
  v8 = [v7 classesForSelector:"sPLljm0ZB9z7TiKd:nSLeS2inTAbpsUeZ:noUfOiGjp1iQmKZX:pPGyXmlDbN3mzzHm:iSOZt67ioKsVcqQZ:hjCrdFOLMJN0Cc5Q:lE40aye8U2u533Ka:JRuZv6Feh9qwrGmN:Wn0aIR2B54NCtGQc:B3l3lS18BITy5E4L:UywAszL6AB8Y6LTJ:uNao9X8A82jVmQkK:completion:" argumentIndex:0 ofReply:0];
  v9 = [NSMutableSet setWithSet:v8];

  v10 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Got allowed classes: %@", buf, 0xCu);
  }

  [v9 addObject:objc_opt_class()];
  [v9 addObject:objc_opt_class()];
  v11 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Setting allowed classes: %@", buf, 0xCu);
  }

  v12 = [NSSet setWithSet:v9];
  [v7 setClasses:v12 forSelector:"sPLljm0ZB9z7TiKd:nSLeS2inTAbpsUeZ:noUfOiGjp1iQmKZX:pPGyXmlDbN3mzzHm:iSOZt67ioKsVcqQZ:hjCrdFOLMJN0Cc5Q:lE40aye8U2u533Ka:JRuZv6Feh9qwrGmN:Wn0aIR2B54NCtGQc:B3l3lS18BITy5E4L:UywAszL6AB8Y6LTJ:uNao9X8A82jVmQkK:completion:" argumentIndex:1 ofReply:0];

  [connectionCopy setExportedInterface:v7];
  *buf = 0u;
  v27 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v13 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    *v25 = 67240192;
    *&v25[4] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "connection from %{public}d", v25, 8u);
  }

  v25[0] = 0;
  sub_1002C9B10();
  v15 = v25[0];
  if (v25[0])
  {
    objc_initWeak(v25, connectionCopy);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100006B54;
    v22[3] = &unk_10068EEC8;
    objc_copyWeak(&v23, v25);
    [connectionCopy setInvalidationHandler:{v22, v25}];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100006C38;
    v20[3] = &unk_10068EEC8;
    objc_copyWeak(&v21, v25);
    [connectionCopy setInterruptionHandler:v20];
    v16 = [QwDGuEabMS2vnWkj alloc];
    v17 = [(QwDGuEabMS2vnWkj *)v16 initWithsk6s81V5EsZL9icr:v24];
    [connectionCopy setExportedObject:v17];

    [connectionCopy resume];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(v25);
  }

  else
  {
    v18 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100593378(v18);
    }
  }

  return v15 != 0;
}

@end