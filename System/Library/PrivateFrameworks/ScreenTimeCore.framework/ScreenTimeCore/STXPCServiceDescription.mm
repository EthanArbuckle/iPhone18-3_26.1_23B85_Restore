@interface STXPCServiceDescription
+ (id)anonymousDescriptionWithServiceName:(id)name serviceEntitlement:(id)entitlement exportedProtocol:(id)protocol;
+ (id)machDescriptionWithServiceName:(id)name serviceEntitlement:(id)entitlement exportedInterface:(id)interface;
+ (id)machDescriptionWithServiceName:(id)name serviceEntitlement:(id)entitlement exportedProtocol:(id)protocol;
- (id)_initWithServiceName:(id)name serviceEntitlement:(id)entitlement exportedInterface:(id)interface type:(int64_t)type;
- (id)description;
@end

@implementation STXPCServiceDescription

- (id)_initWithServiceName:(id)name serviceEntitlement:(id)entitlement exportedInterface:(id)interface type:(int64_t)type
{
  interfaceCopy = interface;
  v20.receiver = self;
  v20.super_class = STXPCServiceDescription;
  entitlementCopy = entitlement;
  nameCopy = name;
  v13 = [(STXPCServiceDescription *)&v20 init];
  v14 = [nameCopy copy];

  serviceName = v13->_serviceName;
  v13->_serviceName = v14;

  v16 = [entitlementCopy copy];
  serviceEntitlement = v13->_serviceEntitlement;
  v13->_serviceEntitlement = v16;

  exportedInterface = v13->_exportedInterface;
  v13->_exportedInterface = interfaceCopy;

  v13->_type = type;
  return v13;
}

- (id)description
{
  v3 = objc_opt_class();
  serviceName = [(STXPCServiceDescription *)self serviceName];
  serviceEntitlement = [(STXPCServiceDescription *)self serviceEntitlement];
  type = [(STXPCServiceDescription *)self type];
  v7 = @"Anonymous";
  if (!type)
  {
    v7 = @"Mach";
  }

  v8 = [NSString stringWithFormat:@"<%@ { ServiceName: %@, Entitlement: %@, Type: %@ }>", v3, serviceName, serviceEntitlement, v7];

  return v8;
}

+ (id)machDescriptionWithServiceName:(id)name serviceEntitlement:(id)entitlement exportedProtocol:(id)protocol
{
  protocolCopy = protocol;
  entitlementCopy = entitlement;
  nameCopy = name;
  v10 = [STXPCServiceDescription alloc];
  v11 = [NSXPCInterface interfaceWithProtocol:protocolCopy];

  v12 = [(STXPCServiceDescription *)v10 _initWithServiceName:nameCopy serviceEntitlement:entitlementCopy exportedInterface:v11 type:0];

  return v12;
}

+ (id)machDescriptionWithServiceName:(id)name serviceEntitlement:(id)entitlement exportedInterface:(id)interface
{
  interfaceCopy = interface;
  entitlementCopy = entitlement;
  nameCopy = name;
  v10 = [[STXPCServiceDescription alloc] _initWithServiceName:nameCopy serviceEntitlement:entitlementCopy exportedInterface:interfaceCopy type:0];

  return v10;
}

+ (id)anonymousDescriptionWithServiceName:(id)name serviceEntitlement:(id)entitlement exportedProtocol:(id)protocol
{
  protocolCopy = protocol;
  entitlementCopy = entitlement;
  nameCopy = name;
  v10 = [STXPCServiceDescription alloc];
  v11 = [NSXPCInterface interfaceWithProtocol:protocolCopy];

  v12 = [(STXPCServiceDescription *)v10 _initWithServiceName:nameCopy serviceEntitlement:entitlementCopy exportedInterface:v11 type:1];

  return v12;
}

@end