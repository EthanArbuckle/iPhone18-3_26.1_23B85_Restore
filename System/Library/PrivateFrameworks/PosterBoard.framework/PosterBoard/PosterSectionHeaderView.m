@interface PosterSectionHeaderView
- (NSString)title;
- (_TtC11PosterBoard23PosterSectionHeaderView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)posterPairDidUpdateLocalizedTitle:(id)a3;
- (void)prepareForReuse;
- (void)setTitle:(id)a3;
@end

@implementation PosterSectionHeaderView

- (NSString)title
{
  if (*(self + OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_title + 8))
  {

    v2 = sub_21B6C8D74();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_21B6C8DA4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_21B65C800(v4, v6);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PosterSectionHeaderView();
  v2 = v3.receiver;
  [(PosterSectionHeaderView *)&v3 prepareForReuse];
  sub_21B65C800(0, 0);
}

- (_TtC11PosterBoard23PosterSectionHeaderView)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_title);
  *v4 = 0;
  v4[1] = 0;
  *(self + OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_titleLabel) = 0;
  *(self + OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_titleLabelSpacingFromBottomEdge) = 0x4038000000000000;
  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21B65CD64();
}

- (void)posterPairDidUpdateLocalizedTitle:(id)a3
{
  if (*(a3 + OBJC_IVAR___PBFPosterPair_localizedTitle + 8))
  {
    sub_21B656750();
    v5 = a3;
    v6 = self;
    v7 = sub_21B6C93D4();
  }

  else
  {
    v9 = *(a3 + OBJC_IVAR___PBFPosterPair_localizedTitle);
    v10 = a3;
    v11 = self;
    v7 = v9;
    v8 = 0;
  }

  sub_21B65C800(v7, v8);
}

@end