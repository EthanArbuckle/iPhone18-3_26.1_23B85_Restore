@interface RMProtocolStatusReport_Errors
+ (NSSet)allowedReportKeys;
+ (id)buildRequiredOnlyWithStatusItem:(id)a3;
+ (id)buildWithStatusItem:(id)a3 reasons:(id)a4;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithStatusItem:(id)a3 reasons:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setReportStatusItem:v6];

  [v7 setReportReasons:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithStatusItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setReportStatusItem:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMProtocolStatusReport_Errors allowedReportKeys];
  [v11 minusSet:v12];

  if ([v11 count])
  {
    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected payload keys: %@", v11];
      v20[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a5 = [v13 errorWithDomain:@"error" code:1 userInfo:v15];

LABEL_6:
      LOBYTE(a5) = 0;
    }
  }

  else
  {
    if (![(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"StatusItem" forKeyPath:@"reportStatusItem" isRequired:1 defaultValue:0 error:a5])
    {
      goto LABEL_6;
    }

    LOWORD(v18) = a4;
    LOBYTE(a5) = [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Reasons" forKeyPath:@"reportReasons" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v18 error:a5];
  }

  v16 = *MEMORY[0x277D85DE8];
  return a5;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMProtocolStatusReport_Errors *)self reportStatusItem];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"StatusItem" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMProtocolStatusReport_Errors *)self reportReasons];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__RMProtocolStatusReport_Errors_serializeWithType___block_invoke;
  v10[3] = &__block_descriptor_34_e59___NSDictionary_16__0__RMProtocolStatusReport_StatusReason_8l;
  v11 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Reasons" value:v7 itemSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMProtocolStatusReport_Errors;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_reportStatusItem copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_reportReasons copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end