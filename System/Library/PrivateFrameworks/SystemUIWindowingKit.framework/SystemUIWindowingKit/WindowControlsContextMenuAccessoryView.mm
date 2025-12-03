@interface WindowControlsContextMenuAccessoryView
- (_TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView)initWithFrame:(CGRect)frame configuration:(id *)configuration;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation WindowControlsContextMenuAccessoryView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v7 = OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_sourceView;
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_sourceView);
  eventCopy = event;
  selfCopy = self;
  [(WindowControlsContextMenuAccessoryView *)selfCopy convertPoint:v8 toCoordinateSpace:x, y];
  v11 = [*(&self->super.super.super.super.isa + v7) hitTest:eventCopy withEvent:?];

  return v11;
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  selfCopy = self;
  sub_21ED2DDB4(visible, animated);
}

- (_TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView)initWithFrame:(CGRect)frame configuration:(id *)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end