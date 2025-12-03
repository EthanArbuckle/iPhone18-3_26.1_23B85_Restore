@interface RMProtocolEnrollReferralResponse
+ (id)requestWithReferralBaseURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolEnrollReferralResponse

+ (id)requestWithReferralBaseURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  [v4 setResponseReferralBaseURL:lCopy];

  return v4;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  responseReferralBaseURL = [(RMProtocolEnrollReferralResponse *)self responseReferralBaseURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ReferralBaseURL" value:responseReferralBaseURL isRequired:1 defaultValue:0];

  v6 = [v4 copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMProtocolEnrollReferralResponse;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_responseReferralBaseURL copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end