@interface _UIPointerPencilHighlightEffect
- (_UIPointerPencilHighlightEffect)init;
- (unint64_t)options;
@end

@implementation _UIPointerPencilHighlightEffect

- (_UIPointerPencilHighlightEffect)init
{
  v5.receiver = self;
  v5.super_class = _UIPointerPencilHighlightEffect;
  v2 = [(UIPointerHoverEffect *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIPointerHoverEffect *)v2 set_tintViewTakesOnPointerShape:1];
    [(UIPointerHoverEffect *)v3 set_tintViewUsesPointerMaterial:1];
  }

  return v3;
}

- (unint64_t)options
{
  v3.receiver = self;
  v3.super_class = _UIPointerPencilHighlightEffect;
  return [(UIPointerHoverEffect *)&v3 options]| 0x2000;
}

@end