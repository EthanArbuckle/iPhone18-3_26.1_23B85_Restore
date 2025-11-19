@interface RMModelManagementTestCommandCommand_Status
+ (NSSet)allowedReasons;
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithEcho:(id)a3;
+ (id)buildWithEcho:(id)a3;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelManagementTestCommandCommand_Status

+ (NSSet)allowedStatusKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Echo";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (NSSet)allowedReasons
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithEcho:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setStatusEcho:v3];

  return v4;
}

+ (id)buildRequiredOnlyWithEcho:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setStatusEcho:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CBEB58];
  v8 = a3;
  v9 = [v8 allKeys];
  v10 = [v7 setWithArray:v9];

  v11 = +[RMModelManagementTestCommandCommand_Status allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  LOBYTE(a5) = [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Echo" forKeyPath:@"statusEcho" isRequired:1 defaultValue:0 error:a5];
  return a5;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelManagementTestCommandCommand_Status *)self statusEcho];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Echo" value:v5 isRequired:1 defaultValue:0];

  v6 = [v4 copy];

  return v6;
}

@end