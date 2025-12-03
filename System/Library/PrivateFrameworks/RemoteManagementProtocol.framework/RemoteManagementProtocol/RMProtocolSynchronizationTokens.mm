@interface RMProtocolSynchronizationTokens
+ (id)requestWithTimestamp:(id)timestamp declarationsToken:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RMProtocolSynchronizationTokens

+ (id)requestWithTimestamp:(id)timestamp declarationsToken:(id)token
{
  tokenCopy = token;
  timestampCopy = timestamp;
  v7 = objc_opt_new();
  [v7 setTokensTimestamp:timestampCopy];

  [v7 setTokensDeclarationsToken:tokenCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMProtocolSynchronizationTokens;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSDate *)self->_tokensTimestamp copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_tokensDeclarationsToken copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end