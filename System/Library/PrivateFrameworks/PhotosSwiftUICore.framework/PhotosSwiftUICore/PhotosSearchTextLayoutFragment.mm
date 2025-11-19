@interface PhotosSearchTextLayoutFragment
- (_TtC17PhotosSwiftUICoreP33_C1804BBFE1C0AEF33B5596BB912C852330PhotosSearchTextLayoutFragment)initWithTextElement:(id)a3 range:(id)a4;
- (void)drawAtPoint:(CGPoint)a3 inContext:(CGContext *)a4;
@end

@implementation PhotosSearchTextLayoutFragment

- (void)drawAtPoint:(CGPoint)a3 inContext:(CGContext *)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  sub_1C1180394(v7, x, y);
}

- (_TtC17PhotosSwiftUICoreP33_C1804BBFE1C0AEF33B5596BB912C852330PhotosSearchTextLayoutFragment)initWithTextElement:(id)a3 range:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_1C1180788(v5, a4);
}

@end