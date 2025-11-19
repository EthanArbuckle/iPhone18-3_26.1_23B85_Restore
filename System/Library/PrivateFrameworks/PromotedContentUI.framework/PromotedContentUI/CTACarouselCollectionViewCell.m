@interface CTACarouselCollectionViewCell
- (_TtC17PromotedContentUI29CTACarouselCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)didTapCTAButtonWithSender:(id)a3;
- (void)prepareForReuse;
@end

@implementation CTACarouselCollectionViewCell

- (void)prepareForReuse
{
  v2 = self;
  sub_1C19B14AC();
}

- (void)didTapCTAButtonWithSender:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint);
    v5 = *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint);
    v6 = self;
    sub_1C19F4170(v6, v4, v5);
    swift_unknownObjectRelease();
  }
}

- (_TtC17PromotedContentUI29CTACarouselCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CTACarouselCollectionViewCell();
  return [(CarouselCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

@end