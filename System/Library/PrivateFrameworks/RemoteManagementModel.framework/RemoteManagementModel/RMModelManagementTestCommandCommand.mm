@interface RMModelManagementTestCommandCommand
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier echo:(id)echo;
+ (id)buildWithIdentifier:(id)identifier echo:(id)echo returnStatus:(id)status;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelManagementTestCommandCommand

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Echo";
  v7[1] = @"ReturnStatus";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier echo:(id)echo returnStatus:(id)status
{
  identifierCopy = identifier;
  statusCopy = status;
  echoCopy = echo;
  v10 = objc_opt_new();
  [v10 setCommandType:@"com.apple.command.management.test"];
  if (identifierCopy)
  {
    [v10 setCommandIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v10 setCommandIdentifier:uUIDString];
  }

  [v10 setPayloadEcho:echoCopy];

  if (statusCopy)
  {
    v13 = statusCopy;
  }

  else
  {
    v13 = @"Executed";
  }

  [v10 setPayloadReturnStatus:v13];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier echo:(id)echo
{
  identifierCopy = identifier;
  echoCopy = echo;
  v7 = objc_opt_new();
  [v7 setCommandType:@"com.apple.command.management.test"];
  if (identifierCopy)
  {
    [v7 setCommandIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v7 setCommandIdentifier:uUIDString];
  }

  [v7 setPayloadEcho:echoCopy];

  return v7;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelManagementTestCommandCommand allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Echo" forKeyPath:@"payloadEcho" isRequired:1 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ReturnStatus" forKeyPath:@"payloadReturnStatus" isRequired:0 defaultValue:@"Executed" error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadEcho = [(RMModelManagementTestCommandCommand *)self payloadEcho];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Echo" value:payloadEcho isRequired:1 defaultValue:0];

  payloadReturnStatus = [(RMModelManagementTestCommandCommand *)self payloadReturnStatus];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ReturnStatus" value:payloadReturnStatus isRequired:0 defaultValue:@"Executed"];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelManagementTestCommandCommand;
  v4 = [(RMModelCommandBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadEcho copy];
  v6 = v4[5];
  v4[5] = v5;

  v7 = [(NSString *)self->_payloadReturnStatus copy];
  v8 = v4[6];
  v4[6] = v7;

  return v4;
}

@end