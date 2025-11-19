@interface _UIFlexInteractionUpdate
- (CGPoint)translation;
- (CGSize)scale;
- (_UIFlexInteractionUpdate)init;
@end

@implementation _UIFlexInteractionUpdate

- (CGSize)scale
{
  v2 = *(&self->super.isa + OBJC_IVAR____UIFlexInteractionUpdate_scale);
  v3 = *(&self->scale.width + OBJC_IVAR____UIFlexInteractionUpdate_scale);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)translation
{
  v2 = *(&self->super.isa + OBJC_IVAR____UIFlexInteractionUpdate_translation);
  v3 = *(&self->scale.width + OBJC_IVAR____UIFlexInteractionUpdate_translation);
  result.y = v3;
  result.x = v2;
  return result;
}

- (_UIFlexInteractionUpdate)init
{
  __asm { FMOV            V0.2D, #1.0 }

  *(&self->super.isa + OBJC_IVAR____UIFlexInteractionUpdate_scale) = _Q0;
  v7 = (&self->super.isa + OBJC_IVAR____UIFlexInteractionUpdate_translation);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.isa + OBJC_IVAR____UIFlexInteractionUpdate_isActive) = 1;
  v9.receiver = self;
  v9.super_class = _UIFlexInteractionUpdate;
  return [(_UIFlexInteractionUpdate *)&v9 init];
}

@end