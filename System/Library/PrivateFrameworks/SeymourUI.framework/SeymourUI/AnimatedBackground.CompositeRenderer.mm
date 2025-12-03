@interface AnimatedBackground.CompositeRenderer
- (_TtCV9SeymourUI18AnimatedBackground17CompositeRenderer)init;
- (void)drawInMTKView:(id)view;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
@end

@implementation AnimatedBackground.CompositeRenderer

- (_TtCV9SeymourUI18AnimatedBackground17CompositeRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  viewCopy = view;
  selfCopy = self;
  traitCollection = [viewCopy traitCollection];
  [traitCollection displayScale];
  v10 = v9;

  sub_20BC205BC(width, height, v10);
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_20BC20778(viewCopy);
}

@end