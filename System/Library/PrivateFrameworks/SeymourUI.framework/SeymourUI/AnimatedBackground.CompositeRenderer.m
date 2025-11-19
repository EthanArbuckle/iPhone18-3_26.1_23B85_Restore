@interface AnimatedBackground.CompositeRenderer
- (_TtCV9SeymourUI18AnimatedBackground17CompositeRenderer)init;
- (void)drawInMTKView:(id)a3;
- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4;
@end

@implementation AnimatedBackground.CompositeRenderer

- (_TtCV9SeymourUI18AnimatedBackground17CompositeRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v11 = self;
  v8 = [v7 traitCollection];
  [v8 displayScale];
  v10 = v9;

  sub_20BC205BC(width, height, v10);
}

- (void)drawInMTKView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BC20778(v4);
}

@end