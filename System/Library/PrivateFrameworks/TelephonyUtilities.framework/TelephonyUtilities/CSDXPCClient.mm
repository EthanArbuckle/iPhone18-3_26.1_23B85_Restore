@interface CSDXPCClient
- (BOOL)isEntitledForCapability:(id)capability;
- (CSDXPCClient)initWithConnection:(id)connection queue:(id)queue;
- (id)acquireAssertionIfNecessary;
- (id)newProcessAssertion;
- (id)objectForBlock;
- (id)propertiesDescription;
- (id)valueForEntitlement:(id)entitlement;
- (void)dealloc;
- (void)invalidate;
- (void)performBlockAfterCoalescing:(id)coalescing;
@end

@implementation CSDXPCClient

- (id)objectForBlock
{
  connection = [(CSDXPCClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)acquireAssertionIfNecessary
{
  if ([(CSDXPCClient *)self supportsClientAssertions]&& [(CSDXPCClient *)self isEntitledForCapability:@"needs-ui-assertion"])
  {
    processAssertion = [(CSDXPCClient *)self processAssertion];
    newProcessAssertion = [(CSDXPCClient *)self newProcessAssertion];
    v8 = 0;
    [newProcessAssertion acquireWithError:&v8];
    v5 = v8;
    if (!v5)
    {
      [processAssertion invalidate];
      [(CSDXPCClient *)self setProcessAssertion:newProcessAssertion];
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
  propertiesDescription = [(CSDClient *)&v7 propertiesDescription];
  entitledCapabilities = [(CSDXPCClient *)self entitledCapabilities];
  v5 = [NSString stringWithFormat:@"%@ entitlementCapabilities=%@", propertiesDescription, entitledCapabilities];

  return v5;
}

- (void)invalidate
{
  processAssertion = [(CSDXPCClient *)self processAssertion];
  [processAssertion invalidate];

  connection = [(CSDXPCClient *)self connection];
  [connection invalidate];
}

- (void)dealloc
{
  [(CSDXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSDXPCClient;
  [(CSDXPCClient *)&v3 dealloc];
}

- (CSDXPCClient)initWithConnection:(id)connection queue:(id)queue
{
  connectionCopy = connection;
  v27.receiver = self;
  v27.super_class = CSDXPCClient;
  v8 = [(CSDClient *)&v27 initWithObject:connectionCopy queue:queue];
  if (v8)
  {
    processIdentifier = [connectionCopy processIdentifier];
    if (processIdentifier == getpid())
    {
      v10 = [NSString stringWithFormat:@"callservicesd is attempting to create an XPC client for itself."];
      NSLog(@"** TUAssertion failure: %@", v10);

      if (_TUAssertShouldCrashApplication())
      {
        processIdentifier2 = [connectionCopy processIdentifier];
        if (processIdentifier2 == getpid())
        {
          sub_1004758B8(a2, v8);
        }
      }
    }

    v8->_processIdentifier = [connectionCopy processIdentifier];
    processName = [connectionCopy processName];
    processName = v8->_processName;
    v8->_processName = processName;

    processBundleIdentifier = [connectionCopy processBundleIdentifier];
    processBundleIdentifier = v8->_processBundleIdentifier;
    v8->_processBundleIdentifier = processBundleIdentifier;

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

- (void)performBlockAfterCoalescing:(id)coalescing
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011FB8C;
  v8[3] = &unk_10061ACD0;
  v8[4] = self;
  coalescingCopy = coalescing;
  v4 = objc_retainBlock(v8);
  acquireAssertionIfNecessary = [(CSDXPCClient *)self acquireAssertionIfNecessary];
  if (acquireAssertionIfNecessary)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10047591C(self, acquireAssertionIfNecessary, v6);
    }
  }

  connection = [(CSDXPCClient *)self connection];
  [connection addBarrierBlock:v4];
}

- (BOOL)isEntitledForCapability:(id)capability
{
  capabilityCopy = capability;
  entitledCapabilities = [(CSDXPCClient *)self entitledCapabilities];
  v6 = [entitledCapabilities containsObject:capabilityCopy];

  return v6;
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  connection = [(CSDXPCClient *)self connection];
  v6 = [connection valueForEntitlement:entitlementCopy];

  return v6;
}

@end