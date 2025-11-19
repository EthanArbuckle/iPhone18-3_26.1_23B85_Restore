@interface WindowControlsContextMenuAccessoryView
- (_TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView)initWithFrame:(CGRect)a3 configuration:(id *)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation WindowControlsContextMenuAccessoryView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_sourceView;
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_sourceView);
  v9 = a4;
  v10 = self;
  [(WindowControlsContextMenuAccessoryView *)v10 convertPoint:v8 toCoordinateSpace:x, y];
  v11 = [*(&self->super.super.super.super.isa + v7) hitTest:v9 withEvent:?];

  return v11;
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_21ED2DDB4(a3, a4);
}

- (_TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView)initWithFrame:(CGRect)a3 configuration:(id *)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end