@interface TCCDIdentity
- (TCCDIdentity)initWithIdentifier:(id)identifier type:(int64_t)type;
@end

@implementation TCCDIdentity

- (TCCDIdentity)initWithIdentifier:(id)identifier type:(int64_t)type
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = TCCDIdentity;
  v7 = [(TCCDIdentity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(TCCDIdentity *)v7 setIdentifier:identifierCopy];
    [(TCCDIdentity *)v8 setIdentityType:type];
  }

  return v8;
}

@end