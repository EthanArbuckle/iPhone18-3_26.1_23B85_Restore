@interface RMModelNetworkEAPDeclaration_EAPSIMAKA
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithNumberOfRANDs:(id)a3 realm:(id)a4 notificationActions:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithNumberOfRANDs:(id)a3 realm:(id)a4 notificationActions:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &unk_28746B6A8;
  }

  [v10 setPayloadNumberOfRANDs:v12];

  [v11 setPayloadRealm:v8];
  [v11 setPayloadNotificationActions:v7];

  return v11;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelNetworkEAPDeclaration_EAPSIMAKA allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"NumberOfRANDs" forKeyPath:@"payloadNumberOfRANDs" isRequired:0 defaultValue:&unk_28746B6A8 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Realm" forKeyPath:@"payloadRealm" isRequired:0 defaultValue:0 error:a5])
  {
    LOWORD(v16) = a4;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"NotificationActions" forKeyPath:@"payloadNotificationActions" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v16 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelNetworkEAPDeclaration_EAPSIMAKA *)self payloadNumberOfRANDs];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"NumberOfRANDs" value:v6 isRequired:0 defaultValue:&unk_28746B6A8];

  v7 = [(RMModelNetworkEAPDeclaration_EAPSIMAKA *)self payloadRealm];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Realm" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelNetworkEAPDeclaration_EAPSIMAKA *)self payloadNotificationActions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__RMModelNetworkEAPDeclaration_EAPSIMAKA_serializeWithType___block_invoke;
  v11[3] = &__block_descriptor_34_e80___NSDictionary_16__0__RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction_8l;
  v12 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"NotificationActions" value:v8 itemSerializer:v11 isRequired:0 defaultValue:0];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelNetworkEAPDeclaration_EAPSIMAKA;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
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