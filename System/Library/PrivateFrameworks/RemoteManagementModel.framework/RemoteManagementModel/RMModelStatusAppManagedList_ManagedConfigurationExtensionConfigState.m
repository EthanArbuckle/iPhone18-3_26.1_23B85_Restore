@interface RMModelStatusAppManagedList_ManagedConfigurationExtensionConfigState
+ (id)build;
+ (id)buildRequiredOnly;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RMModelStatusAppManagedList_ManagedConfigurationExtensionConfigState

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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RMModelStatusAppManagedList_ManagedConfigurationExtensionConfigState;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:a3];
  v5 = [(NSDictionary *)self->_statusDictionary copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end