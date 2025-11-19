@interface _UIFocusSystemHaloEffect
- (id)_resolvedEffectForItem:(id)a3;
@end

@implementation _UIFocusSystemHaloEffect

- (id)_resolvedEffectForItem:(id)a3
{
  v4 = a3;
  if (_UIFocusEffectIsSystemDefaultVisible(v4))
  {
    v7.receiver = self;
    v7.super_class = _UIFocusSystemHaloEffect;
    v5 = [(UIFocusHaloEffect *)&v7 _resolvedEffectForItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end