@interface RMProtocolStatusReport_Errors
+ (NSSet)allowedReportKeys;
+ (id)buildRequiredOnlyWithStatusItem:(id)item;
+ (id)buildWithStatusItem:(id)item reasons:(id)reasons;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolStatusReport_Errors

+ (NSSet)allowedReportKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"StatusItem";
  v7[1] = @"Reasons";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithStatusItem:(id)item reasons:(id)reasons
{
  reasonsCopy = reasons;
  itemCopy = item;
  v7 = objc_opt_new();
  [v7 setReportStatusItem:itemCopy];

  [v7 setReportReasons:reasonsCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithStatusItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_new();
  [v4 setReportStatusItem:itemCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMProtocolStatusReport_Errors allowedReportKeys];
  [v11 minusSet:v12];

  if ([v11 count])
  {
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected payload keys: %@", v11];
      v20[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *error = [v13 errorWithDomain:@"error" code:1 userInfo:v15];

LABEL_6:
      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (![(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"StatusItem" forKeyPath:@"reportStatusItem" isRequired:1 defaultValue:0 error:error])
    {
      goto LABEL_6;
    }

    LOWORD(v18) = type;
    LOBYTE(error) = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Reasons" forKeyPath:@"reportReasons" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v18 error:error];
  }

  v16 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  reportStatusItem = [(RMProtocolStatusReport_Errors *)self reportStatusItem];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"StatusItem" value:reportStatusItem isRequired:1 defaultValue:0];

  reportReasons = [(RMProtocolStatusReport_Errors *)self reportReasons];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__RMProtocolStatusReport_Errors_serializeWithType___block_invoke;
  v10[3] = &__block_descriptor_34_e59___NSDictionary_16__0__RMProtocolStatusReport_StatusReason_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Reasons" value:reportReasons itemSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMProtocolStatusReport_Errors;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_reportStatusItem copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_reportReasons copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end