@interface _UIFocusSystemHaloEffect
- (id)_resolvedEffectForItem:(id)item;
@end

@implementation _UIFocusSystemHaloEffect

- (id)_resolvedEffectForItem:(id)item
{
  itemCopy = item;
  if (_UIFocusEffectIsSystemDefaultVisible(itemCopy))
  {
    v7.receiver = self;
    v7.super_class = _UIFocusSystemHaloEffect;
    v5 = [(UIFocusHaloEffect *)&v7 _resolvedEffectForItem:itemCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end