@interface RMProtocolTokensResponse
+ (id)requestWithSyncTokens:(id)tokens;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolTokensResponse

+ (id)requestWithSyncTokens:(id)tokens
{
  tokensCopy = tokens;
  v4 = objc_opt_new();
  [v4 setResponseSyncTokens:tokensCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  LOWORD(v10) = type;
  LOBYTE(error) = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"SyncTokens" forKeyPath:@"responseSyncTokens" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v10 error:error];

  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  responseSyncTokens = [(RMProtocolTokensResponse *)self responseSyncTokens];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__RMProtocolTokensResponse_serializeWithType___block_invoke;
  v9[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"SyncTokens" value:responseSyncTokens dictSerializer:v9 isRequired:1 defaultValue:0];

  v7 = [v5 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMProtocolTokensResponse;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:zone];
  v5 = [(RMProtocolSynchronizationTokens *)self->_responseSyncTokens copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end