@interface RMModelStatusManagementClientCapabilities_SupportedPayloads
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithDeclarations:(id)declarations statusItems:(id)items;
+ (id)buildWithDeclarations:(id)declarations statusItems:(id)items;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelStatusManagementClientCapabilities_SupportedPayloads

+ (NSSet)allowedStatusKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"declarations";
  v7[1] = @"status-items";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithDeclarations:(id)declarations statusItems:(id)items
{
  itemsCopy = items;
  declarationsCopy = declarations;
  v7 = objc_opt_new();
  [v7 setStatusDeclarations:declarationsCopy];

  [v7 setStatusStatusItems:itemsCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithDeclarations:(id)declarations statusItems:(id)items
{
  itemsCopy = items;
  declarationsCopy = declarations;
  v7 = objc_opt_new();
  [v7 setStatusDeclarations:declarationsCopy];

  [v7 setStatusStatusItems:itemsCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelStatusManagementClientCapabilities_SupportedPayloads allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v16) = type;
  if ([(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"declarations" forKeyPath:@"statusDeclarations" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v16 error:error])
  {
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"status-items" forKeyPath:@"statusStatusItems" validator:&__block_literal_global_127 isRequired:1 defaultValue:0 error:error];
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
  statusDeclarations = [(RMModelStatusManagementClientCapabilities_SupportedPayloads *)self statusDeclarations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__RMModelStatusManagementClientCapabilities_SupportedPayloads_serializeWithType___block_invoke;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"declarations" value:statusDeclarations dictSerializer:v10 isRequired:1 defaultValue:0];

  statusStatusItems = [(RMModelStatusManagementClientCapabilities_SupportedPayloads *)self statusStatusItems];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"status-items" value:statusStatusItems itemSerializer:&__block_literal_global_129 isRequired:1 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelStatusManagementClientCapabilities_SupportedPayloads;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations *)self->_statusDeclarations copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSArray *)self->_statusStatusItems copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end