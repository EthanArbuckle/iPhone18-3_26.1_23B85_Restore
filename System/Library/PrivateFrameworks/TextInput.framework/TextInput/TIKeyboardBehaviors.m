@interface TIKeyboardBehaviors
- (BOOL)isEqual:(id)a3;
- (TIKeyboardBehaviors)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TIKeyboardBehaviors

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = objc_opt_class();

  return [(TIKeyboardBehaviors *)self isMemberOfClass:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (TIKeyboardBehaviors)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIKeyboardBehaviors;
  return [(TIKeyboardBehaviors *)&v4 init];
}

@end