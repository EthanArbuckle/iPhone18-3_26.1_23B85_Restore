@interface _ANEXPCServiceHelper
+ (BOOL)allowAggressivePowerSavingFor:(id)for;
+ (BOOL)allowProcessModelShareFor:(id)for;
+ (BOOL)allowRestrictedAccessFor:(id)for;
+ (BOOL)allowRestrictedAccessFor:(id)for entitlementString:(id)string;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_ANEXPCServiceHelper)initWithMachServiceName:(id)name interface:(id)interface delegate:(id)delegate requiresEntitlement:(BOOL)entitlement entitlementString:(id)string;
@end

@implementation _ANEXPCServiceHelper

- (_ANEXPCServiceHelper)initWithMachServiceName:(id)name interface:(id)interface delegate:(id)delegate requiresEntitlement:(BOOL)entitlement entitlementString:(id)string
{
  nameCopy = name;
  interfaceCopy = interface;
  delegateCopy = delegate;
  stringCopy = string;
  v25.receiver = self;
  v25.super_class = _ANEXPCServiceHelper;
  v16 = [(_ANEXPCServiceHelper *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_server, delegate);
    v18 = [nameCopy copy];
    serviceName = v17->_serviceName;
    v17->_serviceName = v18;

    objc_storeStrong(&v17->_interface, interface);
    v17->_requiresEntitlement = entitlement;
    v20 = [stringCopy copy];
    entitlementString = v17->_entitlementString;
    v17->_entitlementString = v20;

    v22 = [[NSXPCListener alloc] initWithMachServiceName:nameCopy];
    listener = v17->_listener;
    v17->_listener = v22;

    [(NSXPCListener *)v17->_listener setDelegate:v17];
    [(NSXPCListener *)v17->_listener resume];
  }

  return v17;
}

+ (BOOL)allowRestrictedAccessFor:(id)for
{
  forCopy = for;
  v5 = +[_ANEStrings restrictedAccessEntitlement];
  LOBYTE(self) = [self allowRestrictedAccessFor:forCopy entitlementString:v5];

  return self;
}

+ (BOOL)allowAggressivePowerSavingFor:(id)for
{
  forCopy = for;
  v5 = +[_ANEStrings aggressivePowerSavingEntitlement];
  LOBYTE(self) = [self allowRestrictedAccessFor:forCopy entitlementString:v5];

  return self;
}

+ (BOOL)allowProcessModelShareFor:(id)for
{
  forCopy = for;
  v5 = +[_ANEStrings processModelShareAccessEntitlement];
  LOBYTE(self) = [self allowRestrictedAccessFor:forCopy entitlementString:v5];

  return self;
}

+ (BOOL)allowRestrictedAccessFor:(id)for entitlementString:(id)string
{
  v4 = [for valueForEntitlement:string];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v9 = +[_ANELog daemon];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = NSStringFromSelector(a2);
    serviceName = [(_ANEXPCServiceHelper *)self serviceName];
    processIdentifier = [connectionCopy processIdentifier];
    entitlementString = [(_ANEXPCServiceHelper *)self entitlementString];
    requiresEntitlement = [(_ANEXPCServiceHelper *)self requiresEntitlement];
    *location = 138413570;
    v20 = "NO";
    *&location[4] = v15;
    v30 = 2112;
    if (requiresEntitlement)
    {
      v20 = "YES";
    }

    v31 = serviceName;
    v32 = 1024;
    v33 = processIdentifier;
    v34 = 2112;
    v35 = connectionCopy;
    v36 = 2112;
    v37 = entitlementString;
    v38 = 2080;
    v39 = v20;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@: %@ : PID=%d : conn=%@ requiresEntitlement(%@)=%s", location, 0x3Au);
  }

  if ([(_ANEXPCServiceHelper *)self requiresEntitlement]&& ![_ANEXPCServiceHelper allowRestrictedAccessFor:connectionCopy entitlementString:self->_entitlementString])
  {
    v13 = +[_ANELog daemon];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001D77C(connectionCopy, self, v13);
    }

    [connectionCopy invalidate];
    v12 = 0;
  }

  else
  {
    interface = [(_ANEXPCServiceHelper *)self interface];
    [connectionCopy setExportedInterface:interface];

    server = [(_ANEXPCServiceHelper *)self server];
    [connectionCopy setExportedObject:server];

    objc_initWeak(location, connectionCopy);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100009248;
    v27[3] = &unk_100030880;
    objc_copyWeak(v28, location);
    v28[1] = a2;
    v27[4] = self;
    [connectionCopy setInterruptionHandler:v27];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000092CC;
    v24 = &unk_100030880;
    objc_copyWeak(v26, location);
    v26[1] = a2;
    selfCopy = self;
    [connectionCopy setInvalidationHandler:&v21];
    [connectionCopy resume];
    objc_destroyWeak(v26);
    objc_destroyWeak(v28);
    objc_destroyWeak(location);
    v12 = 1;
  }

  return v12;
}

@end