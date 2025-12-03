@interface RMModelManagementTestCommandCommand_Status
+ (NSSet)allowedReasons;
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithEcho:(id)echo;
+ (id)buildWithEcho:(id)echo;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)serializeWithType:(signed __int16)type;
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

+ (id)buildWithEcho:(id)echo
{
  echoCopy = echo;
  v4 = objc_opt_new();
  [v4 setStatusEcho:echoCopy];

  return v4;
}

+ (id)buildRequiredOnlyWithEcho:(id)echo
{
  echoCopy = echo;
  v4 = objc_opt_new();
  [v4 setStatusEcho:echoCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v7 = MEMORY[0x277CBEB58];
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  v10 = [v7 setWithArray:allKeys];

  v11 = +[RMModelManagementTestCommandCommand_Status allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  LOBYTE(error) = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Echo" forKeyPath:@"statusEcho" isRequired:1 defaultValue:0 error:error];
  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  statusEcho = [(RMModelManagementTestCommandCommand_Status *)self statusEcho];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Echo" value:statusEcho isRequired:1 defaultValue:0];

  v6 = [v4 copy];

  return v6;
}

@end