@interface PosterSectionFooterView
- (_TtC11PosterBoard23PosterSectionFooterView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PosterSectionFooterView

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PosterSectionFooterView();
  v2 = v5.receiver;
  [(PosterSectionFooterView *)&v5 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_symbol];
  *v3 = 0;
  *(v3 + 1) = 0;

  v4 = &v2[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_text];
  *v4 = 0;
  *(v4 + 1) = 0;
}

- (_TtC11PosterBoard23PosterSectionFooterView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_titleLabel) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_symbol);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_text);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_titleLabelSpacingFromBottomEdge) = 0x4024000000000000;
  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21B646F14();
}

@end