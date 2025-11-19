@interface RMModelManagementTestCommandCommand
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 echo:(id)a4;
+ (id)buildWithIdentifier:(id)a3 echo:(id)a4 returnStatus:(id)a5;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
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

+ (id)buildWithIdentifier:(id)a3 echo:(id)a4 returnStatus:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setCommandType:@"com.apple.command.management.test"];
  if (v7)
  {
    [v10 setCommandIdentifier:v7];
  }

  else
  {
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    [v10 setCommandIdentifier:v12];
  }

  [v10 setPayloadEcho:v9];

  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = @"Executed";
  }

  [v10 setPayloadReturnStatus:v13];

  return v10;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 echo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setCommandType:@"com.apple.command.management.test"];
  if (v5)
  {
    [v7 setCommandIdentifier:v5];
  }

  else
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    [v7 setCommandIdentifier:v9];
  }

  [v7 setPayloadEcho:v6];

  return v7;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelManagementTestCommandCommand allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Echo" forKeyPath:@"payloadEcho" isRequired:1 defaultValue:0 error:a5])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"ReturnStatus" forKeyPath:@"payloadReturnStatus" isRequired:0 defaultValue:@"Executed" error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelManagementTestCommandCommand *)self payloadEcho];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Echo" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelManagementTestCommandCommand *)self payloadReturnStatus];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ReturnStatus" value:v6 isRequired:0 defaultValue:@"Executed"];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelManagementTestCommandCommand;
  v4 = [(RMModelCommandBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadEcho copy];
  v6 = v4[5];
  v4[5] = v5;

  v7 = [(NSString *)self->_payloadReturnStatus copy];
  v8 = v4[6];
  v4[6] = v7;

  return v4;
}

@end