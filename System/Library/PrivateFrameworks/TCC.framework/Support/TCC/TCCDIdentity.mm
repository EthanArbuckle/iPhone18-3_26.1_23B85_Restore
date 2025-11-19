@interface TCCDIdentity
- (TCCDIdentity)initWithIdentifier:(id)a3 type:(int64_t)a4;
@end

@implementation TCCDIdentity

- (TCCDIdentity)initWithIdentifier:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = TCCDIdentity;
  v7 = [(TCCDIdentity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(TCCDIdentity *)v7 setIdentifier:v6];
    [(TCCDIdentity *)v8 setIdentityType:a4];
  }

  return v8;
}

@end