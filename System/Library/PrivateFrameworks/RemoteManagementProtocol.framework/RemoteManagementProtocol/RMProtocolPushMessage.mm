@interface RMProtocolPushMessage
+ (id)requestWithEnrollmentToken:(id)token syncTokens:(id)tokens;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolPushMessage

+ (id)requestWithEnrollmentToken:(id)token syncTokens:(id)tokens
{
  tokensCopy = tokens;
  tokenCopy = token;
  v7 = objc_opt_new();
  [v7 setMessageEnrollmentToken:tokenCopy];

  [v7 setMessageSyncTokens:tokensCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"EnrollmentToken" forKeyPath:@"messageEnrollmentToken" isRequired:1 defaultValue:0 error:error])
  {
    LOWORD(v11) = type;
    v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"SyncTokens" forKeyPath:@"messageSyncTokens" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v11 error:error];
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
  messageEnrollmentToken = [(RMProtocolPushMessage *)self messageEnrollmentToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"EnrollmentToken" value:messageEnrollmentToken isRequired:1 defaultValue:0];

  messageSyncTokens = [(RMProtocolPushMessage *)self messageSyncTokens];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__RMProtocolPushMessage_serializeWithType___block_invoke;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"SyncTokens" value:messageSyncTokens dictSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMProtocolPushMessage;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_messageEnrollmentToken copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(RMProtocolSynchronizationTokens *)self->_messageSyncTokens copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end