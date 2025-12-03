@interface SmallCarouselCollectionViewCell
- (_TtC17PromotedContentUI31SmallCarouselCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation SmallCarouselCollectionViewCell

- (_TtC17PromotedContentUI31SmallCarouselCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SmallCarouselCollectionViewCell();
  height = [(CarouselCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
  sub_1C19C4444();
  sub_1C1A6AD34();

  return height;
}

@end