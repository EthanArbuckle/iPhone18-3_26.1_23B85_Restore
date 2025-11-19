@interface STXPCServiceDescription
+ (id)anonymousDescriptionWithServiceName:(id)a3 serviceEntitlement:(id)a4 exportedProtocol:(id)a5;
+ (id)machDescriptionWithServiceName:(id)a3 serviceEntitlement:(id)a4 exportedInterface:(id)a5;
+ (id)machDescriptionWithServiceName:(id)a3 serviceEntitlement:(id)a4 exportedProtocol:(id)a5;
- (id)_initWithServiceName:(id)a3 serviceEntitlement:(id)a4 exportedInterface:(id)a5 type:(int64_t)a6;
- (id)description;
@end

@implementation STXPCServiceDescription

- (id)_initWithServiceName:(id)a3 serviceEntitlement:(id)a4 exportedInterface:(id)a5 type:(int64_t)a6
{
  v10 = a5;
  v20.receiver = self;
  v20.super_class = STXPCServiceDescription;
  v11 = a4;
  v12 = a3;
  v13 = [(STXPCServiceDescription *)&v20 init];
  v14 = [v12 copy];

  serviceName = v13->_serviceName;
  v13->_serviceName = v14;

  v16 = [v11 copy];
  serviceEntitlement = v13->_serviceEntitlement;
  v13->_serviceEntitlement = v16;

  exportedInterface = v13->_exportedInterface;
  v13->_exportedInterface = v10;

  v13->_type = a6;
  return v13;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STXPCServiceDescription *)self serviceName];
  v5 = [(STXPCServiceDescription *)self serviceEntitlement];
  v6 = [(STXPCServiceDescription *)self type];
  v7 = @"Anonymous";
  if (!v6)
  {
    v7 = @"Mach";
  }

  v8 = [NSString stringWithFormat:@"<%@ { ServiceName: %@, Entitlement: %@, Type: %@ }>", v3, v4, v5, v7];

  return v8;
}

+ (id)machDescriptionWithServiceName:(id)a3 serviceEntitlement:(id)a4 exportedProtocol:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [STXPCServiceDescription alloc];
  v11 = [NSXPCInterface interfaceWithProtocol:v7];

  v12 = [(STXPCServiceDescription *)v10 _initWithServiceName:v9 serviceEntitlement:v8 exportedInterface:v11 type:0];

  return v12;
}

+ (id)machDescriptionWithServiceName:(id)a3 serviceEntitlement:(id)a4 exportedInterface:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[STXPCServiceDescription alloc] _initWithServiceName:v9 serviceEntitlement:v8 exportedInterface:v7 type:0];

  return v10;
}

+ (id)anonymousDescriptionWithServiceName:(id)a3 serviceEntitlement:(id)a4 exportedProtocol:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [STXPCServiceDescription alloc];
  v11 = [NSXPCInterface interfaceWithProtocol:v7];

  v12 = [(STXPCServiceDescription *)v10 _initWithServiceName:v9 serviceEntitlement:v8 exportedInterface:v11 type:1];

  return v12;
}

@end