@interface RMProtocolEnrollResponse
+ (id)requestWithPushTopic:(id)a3 pushEnvironment:(id)a4 statusItems:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMProtocolEnrollResponse

+ (id)requestWithPushTopic:(id)a3 pushEnvironment:(id)a4 statusItems:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setResponsePushTopic:v9];

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = @"production";
  }

  [v10 setResponsePushEnvironment:v11];

  [v10 setResponseStatusItems:v7];

  return v10;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"PushTopic" forKeyPath:@"responsePushTopic" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"PushEnvironment" forKeyPath:@"responsePushEnvironment" isRequired:0 defaultValue:@"production" error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"StatusItems" forKeyPath:@"responseStatusItems" validator:&__block_literal_global isRequired:0 defaultValue:0 error:a5];

  return v8;
}

uint64_t __71__RMProtocolEnrollResponse_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMProtocolEnrollResponse *)self responsePushTopic];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PushTopic" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMProtocolEnrollResponse *)self responsePushEnvironment];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PushEnvironment" value:v6 isRequired:0 defaultValue:@"production"];

  v7 = [(RMProtocolEnrollResponse *)self responseStatusItems];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"StatusItems" value:v7 itemSerializer:&__block_literal_global_27 isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMProtocolEnrollResponse;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
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