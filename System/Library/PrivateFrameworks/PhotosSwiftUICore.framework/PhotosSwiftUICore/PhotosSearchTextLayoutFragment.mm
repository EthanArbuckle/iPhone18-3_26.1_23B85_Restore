@interface PhotosSearchTextLayoutFragment
- (_TtC17PhotosSwiftUICoreP33_C1804BBFE1C0AEF33B5596BB912C852330PhotosSearchTextLayoutFragment)initWithTextElement:(id)element range:(id)range;
- (void)drawAtPoint:(CGPoint)point inContext:(CGContext *)context;
@end

@implementation PhotosSearchTextLayoutFragment

- (void)drawAtPoint:(CGPoint)point inContext:(CGContext *)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  selfCopy = self;
  sub_1C1180394(contextCopy, x, y);
}

- (_TtC17PhotosSwiftUICoreP33_C1804BBFE1C0AEF33B5596BB912C852330PhotosSearchTextLayoutFragment)initWithTextElement:(id)element range:(id)range
{
  elementCopy = element;
  rangeCopy = range;
  return sub_1C1180788(elementCopy, range);
}

@end