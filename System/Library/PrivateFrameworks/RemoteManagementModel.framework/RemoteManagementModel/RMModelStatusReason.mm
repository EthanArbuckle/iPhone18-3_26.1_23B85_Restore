@interface RMModelStatusReason
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithCode:(id)code;
+ (id)buildWithCode:(id)code description:(id)description details:(id)details;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelStatusReason

+ (NSSet)allowedStatusKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"code";
  v7[1] = @"description";
  v7[2] = @"details";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithCode:(id)code description:(id)description details:(id)details
{
  detailsCopy = details;
  descriptionCopy = description;
  codeCopy = code;
  v10 = objc_opt_new();
  [v10 setStatusCode:codeCopy];

  [v10 setStatusDescription:descriptionCopy];
  [v10 setStatusDetails:detailsCopy];

  return v10;
}

+ (id)buildRequiredOnlyWithCode:(id)code
{
  codeCopy = code;
  v4 = objc_opt_new();
  [v4 setStatusCode:codeCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelStatusReason allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"code" forKeyPath:@"statusCode" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"description" forKeyPath:@"statusDescription" isRequired:0 defaultValue:0 error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"details" forKeyPath:@"statusDetails" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error];
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
  statusCode = [(RMModelStatusReason *)self statusCode];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"code" value:statusCode isRequired:1 defaultValue:0];

  statusDescription = [(RMModelStatusReason *)self statusDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"description" value:statusDescription isRequired:0 defaultValue:0];

  statusDetails = [(RMModelStatusReason *)self statusDetails];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__RMModelStatusReason_serializeWithType___block_invoke;
  v11[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"details" value:statusDetails dictSerializer:v11 isRequired:0 defaultValue:0];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelStatusReason;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_statusCode copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusDescription copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(RMModelAnyPayload *)self->_statusDetails copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end