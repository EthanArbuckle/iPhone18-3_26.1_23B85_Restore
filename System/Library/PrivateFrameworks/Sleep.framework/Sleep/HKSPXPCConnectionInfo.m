@interface HKSPXPCConnectionInfo
+ (id)infoForMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObject:(id)a5 exportedObjectInterface:(id)a6 lifecycleNotification:(id)a7 requiredEntitlement:(id)a8 options:(unint64_t)a9;
- (HKSPXPCConnectionInfo)initWithMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObject:(id)a5 exportedObjectInterface:(id)a6 lifecycleNotification:(id)a7 requiredEntitlement:(id)a8 options:(unint64_t)a9;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HKSPXPCConnectionInfo

- (id)succinctDescription
{
  v2 = [(HKSPXPCConnectionInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HKSPXPCConnectionInfo *)self machServiceName];
  [v3 appendString:v4 withName:@"machServiceName"];

  v5 = [(HKSPXPCConnectionInfo *)self remoteObjectInterface];
  v6 = [v3 appendObject:v5 withName:@"remoteObjectInterface"];

  v7 = [(HKSPXPCConnectionInfo *)self exportedObject];
  v8 = [v3 appendObject:v7 withName:@"exportedObject"];

  v9 = [(HKSPXPCConnectionInfo *)self exportedObjectInterface];
  v10 = [v3 appendObject:v9 withName:@"exportedObjectInterface"];

  v11 = [(HKSPXPCConnectionInfo *)self requiredEntitlement];
  v12 = [v3 appendObject:v11 withName:@"requiredEntitlement"];

  return v3;
}

+ (id)infoForMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObject:(id)a5 exportedObjectInterface:(id)a6 lifecycleNotification:(id)a7 requiredEntitlement:(id)a8 options:(unint64_t)a9
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [objc_alloc(objc_opt_class()) initWithMachServiceName:v19 remoteObjectInterface:v18 exportedObject:v17 exportedObjectInterface:v16 lifecycleNotification:v15 requiredEntitlement:v14 options:0];

  return v20;
}

- (HKSPXPCConnectionInfo)initWithMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObject:(id)a5 exportedObjectInterface:(id)a6 lifecycleNotification:(id)a7 requiredEntitlement:(id)a8 options:(unint64_t)a9
{
  v15 = a3;
  v29 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v30.receiver = self;
  v30.super_class = HKSPXPCConnectionInfo;
  v20 = [(HKSPXPCConnectionInfo *)&v30 init];
  if (v20)
  {
    v21 = [v15 copy];
    machServiceName = v20->_machServiceName;
    v20->_machServiceName = v21;

    objc_storeStrong(&v20->_remoteObjectInterface, a4);
    objc_storeStrong(&v20->_exportedObject, a5);
    objc_storeStrong(&v20->_exportedObjectInterface, a6);
    v23 = [v18 copy];
    lifecycleNotification = v20->_lifecycleNotification;
    v20->_lifecycleNotification = v23;

    v25 = [v19 copy];
    requiredEntitlement = v20->_requiredEntitlement;
    v20->_requiredEntitlement = v25;

    v20->_options = a9;
    v27 = v20;
  }

  return v20;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPXPCConnectionInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end