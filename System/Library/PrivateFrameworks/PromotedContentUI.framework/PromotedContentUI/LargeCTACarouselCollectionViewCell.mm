@interface LargeCTACarouselCollectionViewCell
- (_TtC17PromotedContentUI34LargeCTACarouselCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation LargeCTACarouselCollectionViewCell

- (_TtC17PromotedContentUI34LargeCTACarouselCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for LargeCTACarouselCollectionViewCell();
  height = [(CTACarouselCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
  sub_1C19C7654();
  sub_1C19F35FC();

  return height;
}

@end