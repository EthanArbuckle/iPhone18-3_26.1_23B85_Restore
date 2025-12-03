@interface TCCDAccessoryIdentity
- (TCCDAccessoryIdentity)initWithIdentifier:(id)identifier authority:(int64_t)authority;
@end

@implementation TCCDAccessoryIdentity

- (TCCDAccessoryIdentity)initWithIdentifier:(id)identifier authority:(int64_t)authority
{
  v8.receiver = self;
  v8.super_class = TCCDAccessoryIdentity;
  v5 = [(TCCDIdentity *)&v8 initWithIdentifier:identifier type:1];
  v6 = v5;
  if (v5)
  {
    [(TCCDAccessoryIdentity *)v5 setIdentifierAuthority:authority];
  }

  return v6;
}

@end