@interface RWIProtocolDOMVideoColorSpace
- (BOOL)fullRange;
- (NSString)matrix;
- (NSString)primaries;
- (NSString)transfer;
- (void)setMatrix:(id)matrix;
- (void)setPrimaries:(id)primaries;
- (void)setTransfer:(id)transfer;
@end

@implementation RWIProtocolDOMVideoColorSpace

- (BOOL)fullRange
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoColorSpace;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"fullRange"];
}

- (void)setMatrix:(id)matrix
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoColorSpace;
  [(RWIProtocolJSONObject *)&v3 setString:matrix forKey:@"matrix"];
}

- (NSString)matrix
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMVideoColorSpace;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"matrix"];

  return v2;
}

- (void)setPrimaries:(id)primaries
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoColorSpace;
  [(RWIProtocolJSONObject *)&v3 setString:primaries forKey:@"primaries"];
}

- (NSString)primaries
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMVideoColorSpace;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"primaries"];

  return v2;
}

- (void)setTransfer:(id)transfer
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoColorSpace;
  [(RWIProtocolJSONObject *)&v3 setString:transfer forKey:@"transfer"];
}

- (NSString)transfer
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMVideoColorSpace;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"transfer"];

  return v2;
}

@end