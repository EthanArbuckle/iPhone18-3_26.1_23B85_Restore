@interface _SFKeySpecifier
- (_SFKeySpecifier)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _SFKeySpecifier

- (_SFKeySpecifier)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _SFKeySpecifier;
  return [(_SFKeySpecifier *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

@end