@interface _SFKeySpecifier
- (_SFKeySpecifier)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _SFKeySpecifier

- (_SFKeySpecifier)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFKeySpecifier;
  return [(_SFKeySpecifier *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

@end