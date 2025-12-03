@interface RMModelStatusManagementDeclarations_Declaration
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier serverToken:(id)token active:(id)active valid:(id)valid;
+ (id)buildWithIdentifier:(id)identifier serverToken:(id)token active:(id)active valid:(id)valid reasons:(id)reasons;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelStatusManagementDeclarations_Declaration

+ (NSSet)allowedStatusKeys
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"server-token";
  v7[2] = @"active";
  v7[3] = @"valid";
  v7[4] = @"reasons";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier serverToken:(id)token active:(id)active valid:(id)valid reasons:(id)reasons
{
  reasonsCopy = reasons;
  validCopy = valid;
  activeCopy = active;
  tokenCopy = token;
  identifierCopy = identifier;
  v16 = objc_opt_new();
  [v16 setStatusIdentifier:identifierCopy];

  [v16 setStatusServerToken:tokenCopy];
  [v16 setStatusActive:activeCopy];

  [v16 setStatusValid:validCopy];
  [v16 setStatusReasons:reasonsCopy];

  return v16;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier serverToken:(id)token active:(id)active valid:(id)valid
{
  validCopy = valid;
  activeCopy = active;
  tokenCopy = token;
  identifierCopy = identifier;
  v13 = objc_opt_new();
  [v13 setStatusIdentifier:identifierCopy];

  [v13 setStatusServerToken:tokenCopy];
  [v13 setStatusActive:activeCopy];

  [v13 setStatusValid:validCopy];

  return v13;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelStatusManagementDeclarations_Declaration allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"server-token" forKeyPath:@"statusServerToken" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"active" forKeyPath:@"statusActive" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"valid" forKeyPath:@"statusValid" isRequired:1 defaultValue:0 error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"reasons" forKeyPath:@"statusReasons" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v16 error:error];
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
  statusIdentifier = [(RMModelStatusManagementDeclarations_Declaration *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"identifier" value:statusIdentifier isRequired:1 defaultValue:0];

  statusServerToken = [(RMModelStatusManagementDeclarations_Declaration *)self statusServerToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"server-token" value:statusServerToken isRequired:1 defaultValue:0];

  statusActive = [(RMModelStatusManagementDeclarations_Declaration *)self statusActive];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"active" value:statusActive isRequired:1 defaultValue:0];

  statusValid = [(RMModelStatusManagementDeclarations_Declaration *)self statusValid];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"valid" value:statusValid isRequired:1 defaultValue:0];

  statusReasons = [(RMModelStatusManagementDeclarations_Declaration *)self statusReasons];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__RMModelStatusManagementDeclarations_Declaration_serializeWithType___block_invoke;
  v13[3] = &__block_descriptor_34_e43___NSDictionary_16__0__RMModelStatusReason_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"reasons" value:statusReasons itemSerializer:v13 isRequired:0 defaultValue:0];

  v11 = [v5 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = RMModelStatusManagementDeclarations_Declaration;
  v4 = [(RMModelPayloadBase *)&v16 copyWithZone:zone];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusServerToken copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_statusActive copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_statusValid copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSArray *)self->_statusReasons copy];
  v14 = v4[6];
  v4[6] = v13;

  return v4;
}

@end