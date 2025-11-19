@interface UIFocusEffect
+ (UIFocusEffect)effect;
- (id)_resolvedEffectForItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIFocusEffect

+ (UIFocusEffect)effect
{
  v2 = objc_opt_new();

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = self;

  return v5;
}

- (id)_resolvedEffectForItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIFocusEffect.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  if (_UIFocusEffectIsSystemDefaultVisible(v5))
  {
    v6 = +[(UIFocusEffect *)UIFocusHaloEffect];
    v7 = [v6 _resolvedEffectForItem:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end