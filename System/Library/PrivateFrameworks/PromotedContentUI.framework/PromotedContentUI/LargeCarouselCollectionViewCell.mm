@interface LargeCarouselCollectionViewCell
- (_TtC17PromotedContentUI31LargeCarouselCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation LargeCarouselCollectionViewCell

- (_TtC17PromotedContentUI31LargeCarouselCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for LargeCarouselCollectionViewCell();
  height = [(CarouselCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
  sub_1C19C4444();
  sub_1C19C458C();

  return height;
}

@end