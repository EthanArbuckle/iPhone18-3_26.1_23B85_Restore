@interface SKIDirectInvocationPayload
- (SKIDirectInvocationPayload)initWithIdentifier:(id)identifier;
@end

@implementation SKIDirectInvocationPayload

- (SKIDirectInvocationPayload)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SKIDirectInvocationPayload;
  v6 = [(SKIDirectInvocationPayload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

@end