@interface HKSPXPCConnectionInfo
+ (id)infoForMachServiceName:(id)name remoteObjectInterface:(id)interface exportedObject:(id)object exportedObjectInterface:(id)objectInterface lifecycleNotification:(id)notification requiredEntitlement:(id)entitlement options:(unint64_t)options;
- (HKSPXPCConnectionInfo)initWithMachServiceName:(id)name remoteObjectInterface:(id)interface exportedObject:(id)object exportedObjectInterface:(id)objectInterface lifecycleNotification:(id)notification requiredEntitlement:(id)entitlement options:(unint64_t)options;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HKSPXPCConnectionInfo

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPXPCConnectionInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  machServiceName = [(HKSPXPCConnectionInfo *)self machServiceName];
  [v3 appendString:machServiceName withName:@"machServiceName"];

  remoteObjectInterface = [(HKSPXPCConnectionInfo *)self remoteObjectInterface];
  v6 = [v3 appendObject:remoteObjectInterface withName:@"remoteObjectInterface"];

  exportedObject = [(HKSPXPCConnectionInfo *)self exportedObject];
  v8 = [v3 appendObject:exportedObject withName:@"exportedObject"];

  exportedObjectInterface = [(HKSPXPCConnectionInfo *)self exportedObjectInterface];
  v10 = [v3 appendObject:exportedObjectInterface withName:@"exportedObjectInterface"];

  requiredEntitlement = [(HKSPXPCConnectionInfo *)self requiredEntitlement];
  v12 = [v3 appendObject:requiredEntitlement withName:@"requiredEntitlement"];

  return v3;
}

+ (id)infoForMachServiceName:(id)name remoteObjectInterface:(id)interface exportedObject:(id)object exportedObjectInterface:(id)objectInterface lifecycleNotification:(id)notification requiredEntitlement:(id)entitlement options:(unint64_t)options
{
  entitlementCopy = entitlement;
  notificationCopy = notification;
  objectInterfaceCopy = objectInterface;
  objectCopy = object;
  interfaceCopy = interface;
  nameCopy = name;
  v20 = [objc_alloc(objc_opt_class()) initWithMachServiceName:nameCopy remoteObjectInterface:interfaceCopy exportedObject:objectCopy exportedObjectInterface:objectInterfaceCopy lifecycleNotification:notificationCopy requiredEntitlement:entitlementCopy options:0];

  return v20;
}

- (HKSPXPCConnectionInfo)initWithMachServiceName:(id)name remoteObjectInterface:(id)interface exportedObject:(id)object exportedObjectInterface:(id)objectInterface lifecycleNotification:(id)notification requiredEntitlement:(id)entitlement options:(unint64_t)options
{
  nameCopy = name;
  interfaceCopy = interface;
  objectCopy = object;
  objectInterfaceCopy = objectInterface;
  notificationCopy = notification;
  entitlementCopy = entitlement;
  v30.receiver = self;
  v30.super_class = HKSPXPCConnectionInfo;
  v20 = [(HKSPXPCConnectionInfo *)&v30 init];
  if (v20)
  {
    v21 = [nameCopy copy];
    machServiceName = v20->_machServiceName;
    v20->_machServiceName = v21;

    objc_storeStrong(&v20->_remoteObjectInterface, interface);
    objc_storeStrong(&v20->_exportedObject, object);
    objc_storeStrong(&v20->_exportedObjectInterface, objectInterface);
    v23 = [notificationCopy copy];
    lifecycleNotification = v20->_lifecycleNotification;
    v20->_lifecycleNotification = v23;

    v25 = [entitlementCopy copy];
    requiredEntitlement = v20->_requiredEntitlement;
    v20->_requiredEntitlement = v25;

    v20->_options = options;
    v27 = v20;
  }

  return v20;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPXPCConnectionInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end