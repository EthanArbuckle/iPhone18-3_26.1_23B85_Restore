@interface RMProtocolDeclarationItemsResponse
+ (id)requestWithDeclarations:(id)declarations declarationsToken:(id)token;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolDeclarationItemsResponse

+ (id)requestWithDeclarations:(id)declarations declarationsToken:(id)token
{
  tokenCopy = token;
  declarationsCopy = declarations;
  v7 = objc_opt_new();
  [v7 setResponseDeclarations:declarationsCopy];

  [v7 setResponseDeclarationsToken:tokenCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  LOWORD(v11) = type;
  if ([(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Declarations" forKeyPath:@"responseDeclarations" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v11 error:error])
  {
    v9 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DeclarationsToken" forKeyPath:@"responseDeclarationsToken" isRequired:1 defaultValue:0 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  responseDeclarations = [(RMProtocolDeclarationItemsResponse *)self responseDeclarations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__RMProtocolDeclarationItemsResponse_serializeWithType___block_invoke;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Declarations" value:responseDeclarations dictSerializer:v10 isRequired:1 defaultValue:0];

  responseDeclarationsToken = [(RMProtocolDeclarationItemsResponse *)self responseDeclarationsToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"DeclarationsToken" value:responseDeclarationsToken isRequired:1 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMProtocolDeclarationItemsResponse;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(RMProtocolDeclarationItemsResponse_Declarations *)self->_responseDeclarations copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_responseDeclarationsToken copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end