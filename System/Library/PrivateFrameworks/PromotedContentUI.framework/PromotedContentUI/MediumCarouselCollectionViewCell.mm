@interface MediumCarouselCollectionViewCell
- (_TtC17PromotedContentUI32MediumCarouselCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation MediumCarouselCollectionViewCell

- (_TtC17PromotedContentUI32MediumCarouselCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MediumCarouselCollectionViewCell();
  height = [(CarouselCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
  sub_1C19C4444();
  sub_1C19F2644();

  return height;
}

@end