@interface TCCDAccessoryIdentity
- (TCCDAccessoryIdentity)initWithIdentifier:(id)a3 authority:(int64_t)a4;
@end

@implementation TCCDAccessoryIdentity

- (TCCDAccessoryIdentity)initWithIdentifier:(id)a3 authority:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = TCCDAccessoryIdentity;
  v5 = [(TCCDIdentity *)&v8 initWithIdentifier:a3 type:1];
  v6 = v5;
  if (v5)
  {
    [(TCCDAccessoryIdentity *)v5 setIdentifierAuthority:a4];
  }

  return v6;
}

@end