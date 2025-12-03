@interface _UIPointerAccessibilityEffect
+ (id)_effectWithInputEffect:(id)effect;
- (BOOL)prefersScaledContent;
- (BOOL)prefersShadow;
@end

@implementation _UIPointerAccessibilityEffect

+ (id)_effectWithInputEffect:(id)effect
{
  effectCopy = effect;
  preview = [effectCopy preview];
  v5 = [(UIPointerEffect *)_UIPointerAccessibilityEffect effectWithPreview:preview];

  [v5 setPrefersScaledContent:{(objc_msgSend(effectCopy, "options") >> 5) & 1}];
  isKindOfClass = 1;
  [v5 set_tintViewTakesOnPointerShape:1];
  if (([effectCopy options] & 8) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  [v5 set_tintViewUsesPointerMaterial:isKindOfClass & 1];

  return v5;
}

- (BOOL)prefersShadow
{
  v3 = _AXSPointerEffectScalingEnabled();
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = _UIPointerAccessibilityEffect;
    LOBYTE(v3) = [(UIPointerHoverEffect *)&v5 prefersShadow];
  }

  return v3;
}

- (BOOL)prefersScaledContent
{
  v3 = _AXSPointerEffectScalingEnabled();
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = _UIPointerAccessibilityEffect;
    LOBYTE(v3) = [(UIPointerHoverEffect *)&v5 prefersScaledContent];
  }

  return v3;
}

@end