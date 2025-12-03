@interface RMProtocolEnrollResponse
+ (id)requestWithPushTopic:(id)topic pushEnvironment:(id)environment statusItems:(id)items;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolEnrollResponse

+ (id)requestWithPushTopic:(id)topic pushEnvironment:(id)environment statusItems:(id)items
{
  itemsCopy = items;
  environmentCopy = environment;
  topicCopy = topic;
  v10 = objc_opt_new();
  [v10 setResponsePushTopic:topicCopy];

  if (environmentCopy)
  {
    v11 = environmentCopy;
  }

  else
  {
    v11 = @"production";
  }

  [v10 setResponsePushEnvironment:v11];

  [v10 setResponseStatusItems:itemsCopy];

  return v10;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"PushTopic" forKeyPath:@"responsePushTopic" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"PushEnvironment" forKeyPath:@"responsePushEnvironment" isRequired:0 defaultValue:@"production" error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"StatusItems" forKeyPath:@"responseStatusItems" validator:&__block_literal_global isRequired:0 defaultValue:0 error:error];

  return v8;
}

uint64_t __71__RMProtocolEnrollResponse_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  responsePushTopic = [(RMProtocolEnrollResponse *)self responsePushTopic];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PushTopic" value:responsePushTopic isRequired:1 defaultValue:0];

  responsePushEnvironment = [(RMProtocolEnrollResponse *)self responsePushEnvironment];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PushEnvironment" value:responsePushEnvironment isRequired:0 defaultValue:@"production"];

  responseStatusItems = [(RMProtocolEnrollResponse *)self responseStatusItems];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"StatusItems" value:responseStatusItems itemSerializer:&__block_literal_global_27 isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMProtocolEnrollResponse;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_responsePushTopic copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_responsePushEnvironment copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_responseStatusItems copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end