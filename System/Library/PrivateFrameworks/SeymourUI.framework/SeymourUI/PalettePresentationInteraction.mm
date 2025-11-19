@interface PalettePresentationInteraction
- (void)didMoveToView:(id)a3;
- (void)setView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation PalettePresentationInteraction

- (void)setView:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_view);
  *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_view) = a3;
  v3 = a3;
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20B607214(a3);
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20B607390(a3);
}

@end