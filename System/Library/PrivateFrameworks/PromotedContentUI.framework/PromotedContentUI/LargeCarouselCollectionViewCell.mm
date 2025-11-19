@interface LargeCarouselCollectionViewCell
- (_TtC17PromotedContentUI31LargeCarouselCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation LargeCarouselCollectionViewCell

- (_TtC17PromotedContentUI31LargeCarouselCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for LargeCarouselCollectionViewCell();
  v7 = [(CarouselCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
  sub_1C19C4444();
  sub_1C19C458C();

  return v7;
}

@end