@interface RMProtocolStatusReport
+ (id)requestWithStatusItems:(id)a3 errors:(id)a4 fullReport:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMProtocolStatusReport

+ (id)requestWithStatusItems:(id)a3 errors:(id)a4 fullReport:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setReportStatusItems:v9];

  [v10 setReportErrors:v8];
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = MEMORY[0x277CBEC28];
  }

  [v10 setReportFullReport:v11];

  return v10;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  LOWORD(v11) = a4;
  v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"StatusItems" forKeyPath:@"reportStatusItems" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v11 error:a5]&& (LOWORD(v12) = a4, [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Errors" forKeyPath:@"reportErrors" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v12 error:a5]) && [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"FullReport" forKeyPath:@"reportFullReport" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5];

  return v9;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMProtocolStatusReport *)self reportStatusItems];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__RMProtocolStatusReport_serializeWithType___block_invoke;
  v13[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v14 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"StatusItems" value:v6 dictSerializer:v13 isRequired:1 defaultValue:0];

  v7 = [(RMProtocolStatusReport *)self reportErrors];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__RMProtocolStatusReport_serializeWithType___block_invoke_2;
  v11[3] = &__block_descriptor_34_e53___NSDictionary_16__0__RMProtocolStatusReport_Errors_8l;
  v12 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Errors" value:v7 itemSerializer:v11 isRequired:1 defaultValue:0];

  v8 = [(RMProtocolStatusReport *)self reportFullReport];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"FullReport" value:v8 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMProtocolStatusReport;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(RMModelAnyPayload *)self->_reportStatusItems copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_reportErrors copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_reportFullReport copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end