@interface RMModelAppManagedDeclaration_ExtensionConfigs
+ (id)build;
+ (id)buildRequiredOnly;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RMModelAppManagedDeclaration_ExtensionConfigs

+ (id)build
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelAppManagedDeclaration_ExtensionConfigs;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:zone];
  v5 = [(NSDictionary *)self->_payloadDictionary copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end