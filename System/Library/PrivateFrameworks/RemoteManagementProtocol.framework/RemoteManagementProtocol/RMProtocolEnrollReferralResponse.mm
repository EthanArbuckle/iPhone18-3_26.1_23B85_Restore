@interface RMProtocolEnrollReferralResponse
+ (id)requestWithReferralBaseURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMProtocolEnrollReferralResponse

+ (id)requestWithReferralBaseURL:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setResponseReferralBaseURL:v3];

  return v4;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMProtocolEnrollReferralResponse *)self responseReferralBaseURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ReferralBaseURL" value:v5 isRequired:1 defaultValue:0];

  v6 = [v4 copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RMProtocolEnrollReferralResponse;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->_responseReferralBaseURL copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end