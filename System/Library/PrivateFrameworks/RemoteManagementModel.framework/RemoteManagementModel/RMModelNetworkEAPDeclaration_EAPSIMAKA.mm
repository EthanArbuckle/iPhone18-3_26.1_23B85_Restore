@interface RMModelNetworkEAPDeclaration_EAPSIMAKA
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithNumberOfRANDs:(id)ds realm:(id)realm notificationActions:(id)actions;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelNetworkEAPDeclaration_EAPSIMAKA

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"NumberOfRANDs";
  v7[1] = @"Realm";
  v7[2] = @"NotificationActions";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithNumberOfRANDs:(id)ds realm:(id)realm notificationActions:(id)actions
{
  actionsCopy = actions;
  realmCopy = realm;
  dsCopy = ds;
  v10 = objc_opt_new();
  v11 = v10;
  if (dsCopy)
  {
    v12 = dsCopy;
  }

  else
  {
    v12 = &unk_28746B6A8;
  }

  [v10 setPayloadNumberOfRANDs:v12];

  [v11 setPayloadRealm:realmCopy];
  [v11 setPayloadNotificationActions:actionsCopy];

  return v11;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelNetworkEAPDeclaration_EAPSIMAKA allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"NumberOfRANDs" forKeyPath:@"payloadNumberOfRANDs" isRequired:0 defaultValue:&unk_28746B6A8 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Realm" forKeyPath:@"payloadRealm" isRequired:0 defaultValue:0 error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"NotificationActions" forKeyPath:@"payloadNotificationActions" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v16 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadNumberOfRANDs = [(RMModelNetworkEAPDeclaration_EAPSIMAKA *)self payloadNumberOfRANDs];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"NumberOfRANDs" value:payloadNumberOfRANDs isRequired:0 defaultValue:&unk_28746B6A8];

  payloadRealm = [(RMModelNetworkEAPDeclaration_EAPSIMAKA *)self payloadRealm];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Realm" value:payloadRealm isRequired:0 defaultValue:0];

  payloadNotificationActions = [(RMModelNetworkEAPDeclaration_EAPSIMAKA *)self payloadNotificationActions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__RMModelNetworkEAPDeclaration_EAPSIMAKA_serializeWithType___block_invoke;
  v11[3] = &__block_descriptor_34_e80___NSDictionary_16__0__RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"NotificationActions" value:payloadNotificationActions itemSerializer:v11 isRequired:0 defaultValue:0];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelNetworkEAPDeclaration_EAPSIMAKA;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSNumber *)self->_payloadNumberOfRANDs copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadRealm copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_payloadNotificationActions copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end