@interface RMProtocolStatusReport
+ (id)requestWithStatusItems:(id)items errors:(id)errors fullReport:(id)report;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolStatusReport

+ (id)requestWithStatusItems:(id)items errors:(id)errors fullReport:(id)report
{
  reportCopy = report;
  errorsCopy = errors;
  itemsCopy = items;
  v10 = objc_opt_new();
  [v10 setReportStatusItems:itemsCopy];

  [v10 setReportErrors:errorsCopy];
  if (reportCopy)
  {
    v11 = reportCopy;
  }

  else
  {
    v11 = MEMORY[0x277CBEC28];
  }

  [v10 setReportFullReport:v11];

  return v10;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  LOWORD(v11) = type;
  v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"StatusItems" forKeyPath:@"reportStatusItems" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v11 error:error]&& (LOWORD(v12) = type, [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Errors" forKeyPath:@"reportErrors" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v12 error:error]) && [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"FullReport" forKeyPath:@"reportFullReport" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error];

  return v9;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  reportStatusItems = [(RMProtocolStatusReport *)self reportStatusItems];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__RMProtocolStatusReport_serializeWithType___block_invoke;
  v13[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"StatusItems" value:reportStatusItems dictSerializer:v13 isRequired:1 defaultValue:0];

  reportErrors = [(RMProtocolStatusReport *)self reportErrors];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__RMProtocolStatusReport_serializeWithType___block_invoke_2;
  v11[3] = &__block_descriptor_34_e53___NSDictionary_16__0__RMProtocolStatusReport_Errors_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Errors" value:reportErrors itemSerializer:v11 isRequired:1 defaultValue:0];

  reportFullReport = [(RMProtocolStatusReport *)self reportFullReport];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"FullReport" value:reportFullReport isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMProtocolStatusReport;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
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