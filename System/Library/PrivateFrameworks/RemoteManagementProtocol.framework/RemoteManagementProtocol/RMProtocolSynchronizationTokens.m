@interface RMProtocolSynchronizationTokens
+ (id)requestWithTimestamp:(id)a3 declarationsToken:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RMProtocolSynchronizationTokens

+ (id)requestWithTimestamp:(id)a3 declarationsToken:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setTokensTimestamp:v6];

  [v7 setTokensDeclarationsToken:v5];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMProtocolSynchronizationTokens;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSDate *)self->_tokensTimestamp copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_tokensDeclarationsToken copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end