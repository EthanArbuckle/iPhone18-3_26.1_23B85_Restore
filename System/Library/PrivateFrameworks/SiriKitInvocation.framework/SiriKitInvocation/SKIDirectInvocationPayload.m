@interface SKIDirectInvocationPayload
- (SKIDirectInvocationPayload)initWithIdentifier:(id)a3;
@end

@implementation SKIDirectInvocationPayload

- (SKIDirectInvocationPayload)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKIDirectInvocationPayload;
  v6 = [(SKIDirectInvocationPayload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

@end