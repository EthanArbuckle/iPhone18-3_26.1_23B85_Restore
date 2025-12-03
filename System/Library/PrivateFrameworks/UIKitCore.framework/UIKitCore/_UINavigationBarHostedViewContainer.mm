@interface _UINavigationBarHostedViewContainer
- (_UINavigationBarHostedViewContainer)initWithFrame:(CGRect)frame;
@end

@implementation _UINavigationBarHostedViewContainer

- (_UINavigationBarHostedViewContainer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____UINavigationBarHostedViewContainer_hostedViews) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____UINavigationBarHostedViewContainer_wrapperViews) = v9;
  *(&self->super.super.super.super.isa + OBJC_IVAR____UINavigationBarHostedViewContainer_disappearingViews) = v9;
  *(&self->super.super.super.super.isa + OBJC_IVAR____UINavigationBarHostedViewContainer_temporaryViews) = MEMORY[0x1E69E7CD0];
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(UIView *)&v11 initWithFrame:x, y, width, height];
}

@end