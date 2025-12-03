@interface UIFocusEffect
+ (UIFocusEffect)effect;
- (id)_resolvedEffectForItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIFocusEffect

+ (UIFocusEffect)effect
{
  v2 = objc_opt_new();

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  selfCopy = self;

  return selfCopy;
}

- (id)_resolvedEffectForItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusEffect.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  if (_UIFocusEffectIsSystemDefaultVisible(itemCopy))
  {
    v6 = +[(UIFocusEffect *)UIFocusHaloEffect];
    v7 = [v6 _resolvedEffectForItem:itemCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end