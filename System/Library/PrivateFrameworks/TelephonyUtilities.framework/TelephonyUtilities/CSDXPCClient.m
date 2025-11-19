@interface CSDXPCClient
- (BOOL)isEntitledForCapability:(id)a3;
- (CSDXPCClient)initWithConnection:(id)a3 queue:(id)a4;
- (id)acquireAssertionIfNecessary;
- (id)newProcessAssertion;
- (id)objectForBlock;
- (id)propertiesDescription;
- (id)valueForEntitlement:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)performBlockAfterCoalescing:(id)a3;
@end

@implementation CSDXPCClient

- (id)objectForBlock
{
  v2 = [(CSDXPCClient *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (id)acquireAssertionIfNecessary
{
  if ([(CSDXPCClient *)self supportsClientAssertions]&& [(CSDXPCClient *)self isEntitledForCapability:@"needs-ui-assertion"])
  {
    v3 = [(CSDXPCClient *)self processAssertion];
    v4 = [(CSDXPCClient *)self newProcessAssertion];
    v8 = 0;
    [v4 acquireWithError:&v8];
    v5 = v8;
    if (!v5)
    {
      [v3 invalidate];
      [(CSDXPCClient *)self setProcessAssertion:v4];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)propertiesDescription
{
  v7.receiver = self;
  v7.super_class = CSDXPCClient;
  v3 = [(CSDClient *)&v7 propertiesDescription];
  v4 = [(CSDXPCClient *)self entitledCapabilities];
  v5 = [NSString stringWithFormat:@"%@ entitlementCapabilities=%@", v3, v4];

  return v5;
}

- (void)invalidate
{
  v3 = [(CSDXPCClient *)self processAssertion];
  [v3 invalidate];

  v4 = [(CSDXPCClient *)self connection];
  [v4 invalidate];
}

- (void)dealloc
{
  [(CSDXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSDXPCClient;
  [(CSDXPCClient *)&v3 dealloc];
}

- (CSDXPCClient)initWithConnection:(id)a3 queue:(id)a4
{
  v7 = a3;
  v27.receiver = self;
  v27.super_class = CSDXPCClient;
  v8 = [(CSDClient *)&v27 initWithObject:v7 queue:a4];
  if (v8)
  {
    v9 = [v7 processIdentifier];
    if (v9 == getpid())
    {
      v10 = [NSString stringWithFormat:@"callservicesd is attempting to create an XPC client for itself."];
      NSLog(@"** TUAssertion failure: %@", v10);

      if (_TUAssertShouldCrashApplication())
      {
        v11 = [v7 processIdentifier];
        if (v11 == getpid())
        {
          sub_1004758B8(a2, v8);
        }
      }
    }

    v8->_processIdentifier = [v7 processIdentifier];
    v12 = [v7 processName];
    processName = v8->_processName;
    v8->_processName = v12;

    v14 = [v7 processBundleIdentifier];
    processBundleIdentifier = v8->_processBundleIdentifier;
    v8->_processBundleIdentifier = v14;

    v16 = +[NSSet set];
    entitledCapabilities = v8->_entitledCapabilities;
    v8->_entitledCapabilities = v16;

    v18 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v8->_featureFlags;
    v8->_featureFlags = v18;

    v20 = TUBundleIdentifierCallServicesDaemon;
    v21 = [(CSDXPCClient *)v8 valueForEntitlement:TUBundleIdentifierCallServicesDaemon];
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [NSSet setWithArray:v21];
        p_super = &v8->_entitledCapabilities->super;
        v8->_entitledCapabilities = v22;
      }

      else
      {
        p_super = sub_100004778();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          v26 = v8->_processName;
          *buf = 138413058;
          v29 = v20;
          v30 = 2112;
          v31 = v25;
          v32 = 2112;
          v33 = v21;
          v34 = 2112;
          v35 = v26;
          _os_log_error_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "Entitlement for key '%@' is non-nil but is of class %@ rather than an NSArray (%@), so assuming process %@ has no entitlements", buf, 0x2Au);
        }
      }
    }
  }

  return v8;
}

- (id)newProcessAssertion
{
  v2 = [RBSTarget targetWithPid:[(CSDXPCClient *)self processIdentifier]];
  v3 = [RBSDomainAttribute attributeWithDomain:TURunningBoardAssertionDomainCallservicesDaemon name:@"IPCHack"];
  v4 = [RBSAssertion alloc];
  v8 = v3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [v4 initWithExplanation:@"UI process assertion for message handling" target:v2 attributes:v5];

  return v6;
}

- (void)performBlockAfterCoalescing:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011FB8C;
  v8[3] = &unk_10061ACD0;
  v8[4] = self;
  v9 = a3;
  v4 = objc_retainBlock(v8);
  v5 = [(CSDXPCClient *)self acquireAssertionIfNecessary];
  if (v5)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10047591C(self, v5, v6);
    }
  }

  v7 = [(CSDXPCClient *)self connection];
  [v7 addBarrierBlock:v4];
}

- (BOOL)isEntitledForCapability:(id)a3
{
  v4 = a3;
  v5 = [(CSDXPCClient *)self entitledCapabilities];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(CSDXPCClient *)self connection];
  v6 = [v5 valueForEntitlement:v4];

  return v6;
}

@end