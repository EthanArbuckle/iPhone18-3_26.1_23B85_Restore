@interface RMModelSoftwareUpdateSettingsDeclaration_Beta
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithProgramEnrollment:(id)enrollment offerPrograms:(id)programs requireProgram:(id)program;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
@end

@implementation RMModelSoftwareUpdateSettingsDeclaration_Beta

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"ProgramEnrollment";
  v7[1] = @"OfferPrograms";
  v7[2] = @"RequireProgram";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithProgramEnrollment:(id)enrollment offerPrograms:(id)programs requireProgram:(id)program
{
  programCopy = program;
  programsCopy = programs;
  enrollmentCopy = enrollment;
  v10 = objc_opt_new();
  v11 = v10;
  if (enrollmentCopy)
  {
    v12 = enrollmentCopy;
  }

  else
  {
    v12 = @"Allowed";
  }

  [v10 setPayloadProgramEnrollment:v12];

  [v11 setPayloadOfferPrograms:programsCopy];
  [v11 setPayloadRequireProgram:programCopy];

  return v11;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelSoftwareUpdateSettingsDeclaration_Beta allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ProgramEnrollment" forKeyPath:@"payloadProgramEnrollment" isRequired:0 defaultValue:@"Allowed" error:error]&& (LOWORD(v17) = type, [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"OfferPrograms" forKeyPath:@"payloadOfferPrograms" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v17 error:error]))
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"RequireProgram" forKeyPath:@"payloadRequireProgram" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error];
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
  payloadProgramEnrollment = [(RMModelSoftwareUpdateSettingsDeclaration_Beta *)self payloadProgramEnrollment];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ProgramEnrollment" value:payloadProgramEnrollment isRequired:0 defaultValue:@"Allowed"];

  payloadOfferPrograms = [(RMModelSoftwareUpdateSettingsDeclaration_Beta *)self payloadOfferPrograms];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__RMModelSoftwareUpdateSettingsDeclaration_Beta_serializeWithType___block_invoke;
  v13[3] = &__block_descriptor_34_e76___NSDictionary_16__0__RMModelSoftwareUpdateSettingsDeclaration_BetaProgram_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"OfferPrograms" value:payloadOfferPrograms itemSerializer:v13 isRequired:0 defaultValue:0];

  payloadRequireProgram = [(RMModelSoftwareUpdateSettingsDeclaration_Beta *)self payloadRequireProgram];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__RMModelSoftwareUpdateSettingsDeclaration_Beta_serializeWithType___block_invoke_2;
  v11[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"RequireProgram" value:payloadRequireProgram dictSerializer:v11 isRequired:0 defaultValue:0];

  v9 = [v5 copy];

  return v9;
}

- (void)combineWithOther:(id)other
{
  v16[3] = *MEMORY[0x277D85DE8];
  otherCopy = other;
  payloadProgramEnrollment = [(RMModelSoftwareUpdateSettingsDeclaration_Beta *)self payloadProgramEnrollment];
  payloadProgramEnrollment2 = [otherCopy payloadProgramEnrollment];
  v16[0] = @"Allowed";
  v16[1] = @"AlwaysOn";
  v16[2] = @"AlwaysOff";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v8 = [RMModelConfigurationBase combineEnumLast:payloadProgramEnrollment other:payloadProgramEnrollment2 enums:v7];
  [(RMModelSoftwareUpdateSettingsDeclaration_Beta *)self setPayloadProgramEnrollment:v8];

  payloadOfferPrograms = [(RMModelSoftwareUpdateSettingsDeclaration_Beta *)self payloadOfferPrograms];
  payloadOfferPrograms2 = [otherCopy payloadOfferPrograms];
  v11 = [RMModelConfigurationBase combineSetUnion:payloadOfferPrograms other:payloadOfferPrograms2];
  [(RMModelSoftwareUpdateSettingsDeclaration_Beta *)self setPayloadOfferPrograms:v11];

  payloadRequireProgram = [(RMModelSoftwareUpdateSettingsDeclaration_Beta *)self payloadRequireProgram];
  payloadRequireProgram2 = [otherCopy payloadRequireProgram];

  v14 = [RMModelConfigurationBase combineFirst:payloadRequireProgram other:payloadRequireProgram2];
  [(RMModelSoftwareUpdateSettingsDeclaration_Beta *)self setPayloadRequireProgram:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelSoftwareUpdateSettingsDeclaration_Beta;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadProgramEnrollment copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_payloadOfferPrograms copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram *)self->_payloadRequireProgram copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end