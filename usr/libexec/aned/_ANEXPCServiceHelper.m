@interface _ANEXPCServiceHelper
+ (BOOL)allowAggressivePowerSavingFor:(id)a3;
+ (BOOL)allowProcessModelShareFor:(id)a3;
+ (BOOL)allowRestrictedAccessFor:(id)a3;
+ (BOOL)allowRestrictedAccessFor:(id)a3 entitlementString:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_ANEXPCServiceHelper)initWithMachServiceName:(id)a3 interface:(id)a4 delegate:(id)a5 requiresEntitlement:(BOOL)a6 entitlementString:(id)a7;
@end

@implementation _ANEXPCServiceHelper

- (_ANEXPCServiceHelper)initWithMachServiceName:(id)a3 interface:(id)a4 delegate:(id)a5 requiresEntitlement:(BOOL)a6 entitlementString:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = _ANEXPCServiceHelper;
  v16 = [(_ANEXPCServiceHelper *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_server, a5);
    v18 = [v12 copy];
    serviceName = v17->_serviceName;
    v17->_serviceName = v18;

    objc_storeStrong(&v17->_interface, a4);
    v17->_requiresEntitlement = a6;
    v20 = [v15 copy];
    entitlementString = v17->_entitlementString;
    v17->_entitlementString = v20;

    v22 = [[NSXPCListener alloc] initWithMachServiceName:v12];
    listener = v17->_listener;
    v17->_listener = v22;

    [(NSXPCListener *)v17->_listener setDelegate:v17];
    [(NSXPCListener *)v17->_listener resume];
  }

  return v17;
}

+ (BOOL)allowRestrictedAccessFor:(id)a3
{
  v4 = a3;
  v5 = +[_ANEStrings restrictedAccessEntitlement];
  LOBYTE(a1) = [a1 allowRestrictedAccessFor:v4 entitlementString:v5];

  return a1;
}

+ (BOOL)allowAggressivePowerSavingFor:(id)a3
{
  v4 = a3;
  v5 = +[_ANEStrings aggressivePowerSavingEntitlement];
  LOBYTE(a1) = [a1 allowRestrictedAccessFor:v4 entitlementString:v5];

  return a1;
}

+ (BOOL)allowProcessModelShareFor:(id)a3
{
  v4 = a3;
  v5 = +[_ANEStrings processModelShareAccessEntitlement];
  LOBYTE(a1) = [a1 allowRestrictedAccessFor:v4 entitlementString:v5];

  return a1;
}

+ (BOOL)allowRestrictedAccessFor:(id)a3 entitlementString:(id)a4
{
  v4 = [a3 valueForEntitlement:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[_ANELog daemon];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = NSStringFromSelector(a2);
    v16 = [(_ANEXPCServiceHelper *)self serviceName];
    v17 = [v8 processIdentifier];
    v18 = [(_ANEXPCServiceHelper *)self entitlementString];
    v19 = [(_ANEXPCServiceHelper *)self requiresEntitlement];
    *location = 138413570;
    v20 = "NO";
    *&location[4] = v15;
    v30 = 2112;
    if (v19)
    {
      v20 = "YES";
    }

    v31 = v16;
    v32 = 1024;
    v33 = v17;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v18;
    v38 = 2080;
    v39 = v20;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@: %@ : PID=%d : conn=%@ requiresEntitlement(%@)=%s", location, 0x3Au);
  }

  if ([(_ANEXPCServiceHelper *)self requiresEntitlement]&& ![_ANEXPCServiceHelper allowRestrictedAccessFor:v8 entitlementString:self->_entitlementString])
  {
    v13 = +[_ANELog daemon];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001D77C(v8, self, v13);
    }

    [v8 invalidate];
    v12 = 0;
  }

  else
  {
    v10 = [(_ANEXPCServiceHelper *)self interface];
    [v8 setExportedInterface:v10];

    v11 = [(_ANEXPCServiceHelper *)self server];
    [v8 setExportedObject:v11];

    objc_initWeak(location, v8);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100009248;
    v27[3] = &unk_100030880;
    objc_copyWeak(v28, location);
    v28[1] = a2;
    v27[4] = self;
    [v8 setInterruptionHandler:v27];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000092CC;
    v24 = &unk_100030880;
    objc_copyWeak(v26, location);
    v26[1] = a2;
    v25 = self;
    [v8 setInvalidationHandler:&v21];
    [v8 resume];
    objc_destroyWeak(v26);
    objc_destroyWeak(v28);
    objc_destroyWeak(location);
    v12 = 1;
  }

  return v12;
}

@end