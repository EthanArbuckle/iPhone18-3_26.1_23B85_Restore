@interface PalettePresentationInteraction
- (void)didMoveToView:(id)view;
- (void)setView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation PalettePresentationInteraction

- (void)setView:(id)view
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_view);
  *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_view) = view;
  viewCopy = view;
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_20B607214(view);
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_20B607390(view);
}

@end