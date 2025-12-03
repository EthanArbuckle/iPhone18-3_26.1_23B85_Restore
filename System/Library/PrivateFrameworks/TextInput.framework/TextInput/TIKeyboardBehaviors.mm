@interface TIKeyboardBehaviors
- (BOOL)isEqual:(id)equal;
- (TIKeyboardBehaviors)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TIKeyboardBehaviors

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  v4 = objc_opt_class();

  return [(TIKeyboardBehaviors *)self isMemberOfClass:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (TIKeyboardBehaviors)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = TIKeyboardBehaviors;
  return [(TIKeyboardBehaviors *)&v4 init];
}

@end