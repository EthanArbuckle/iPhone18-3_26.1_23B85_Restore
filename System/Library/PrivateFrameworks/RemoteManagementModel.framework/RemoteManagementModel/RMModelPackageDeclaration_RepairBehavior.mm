@interface RMModelPackageDeclaration_RepairBehavior
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithCheckScript:(id)a3 repairScript:(id)a4;
+ (id)buildWithCheckScript:(id)a3 repairScript:(id)a4;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelPackageDeclaration_RepairBehavior

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"CheckScript";
  v7[1] = @"RepairScript";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithCheckScript:(id)a3 repairScript:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadCheckScript:v6];

  [v7 setPayloadRepairScript:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithCheckScript:(id)a3 repairScript:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadCheckScript:v6];

  [v7 setPayloadRepairScript:v5];

  return v7;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelPackageDeclaration_RepairBehavior allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"CheckScript" forKeyPath:@"payloadCheckScript" isRequired:1 defaultValue:0 error:a5])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"RepairScript" forKeyPath:@"payloadRepairScript" isRequired:1 defaultValue:0 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelPackageDeclaration_RepairBehavior *)self payloadCheckScript];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"CheckScript" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelPackageDeclaration_RepairBehavior *)self payloadRepairScript];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"RepairScript" value:v6 isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelPackageDeclaration_RepairBehavior;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadCheckScript copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadRepairScript copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end