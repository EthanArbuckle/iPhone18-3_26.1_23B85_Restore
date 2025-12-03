@interface TCCDAccessCodeIndirectObject
- (TCCDAccessCodeIndirectObject)initWithCodeIdentity:(id)identity;
- (id)description;
@end

@implementation TCCDAccessCodeIndirectObject

- (TCCDAccessCodeIndirectObject)initWithCodeIdentity:(id)identity
{
  identityCopy = identity;
  v8.receiver = self;
  v8.super_class = TCCDAccessCodeIndirectObject;
  v5 = [(TCCDAccessIndirectObject *)&v8 initWithType:1];
  v6 = v5;
  if (v5)
  {
    [(TCCDAccessCodeIndirectObject *)v5 setCodeIdentity:identityCopy];
  }

  return v6;
}

- (id)description
{
  codeIdentity = [(TCCDAccessCodeIndirectObject *)self codeIdentity];
  v3 = [codeIdentity description];

  return v3;
}

@end