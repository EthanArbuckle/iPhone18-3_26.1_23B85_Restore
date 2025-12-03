@interface RWIProtocolSecurityConnection
- (NSString)cipher;
- (NSString)protocol;
- (void)setCipher:(id)cipher;
- (void)setProtocol:(id)protocol;
@end

@implementation RWIProtocolSecurityConnection

- (void)setProtocol:(id)protocol
{
  v3.receiver = self;
  v3.super_class = RWIProtocolSecurityConnection;
  [(RWIProtocolJSONObject *)&v3 setString:protocol forKey:@"protocol"];
}

- (NSString)protocol
{
  v4.receiver = self;
  v4.super_class = RWIProtocolSecurityConnection;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"protocol"];

  return v2;
}

- (void)setCipher:(id)cipher
{
  v3.receiver = self;
  v3.super_class = RWIProtocolSecurityConnection;
  [(RWIProtocolJSONObject *)&v3 setString:cipher forKey:@"cipher"];
}

- (NSString)cipher
{
  v4.receiver = self;
  v4.super_class = RWIProtocolSecurityConnection;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"cipher"];

  return v2;
}

@end