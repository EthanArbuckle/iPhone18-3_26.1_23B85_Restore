@interface StickerCollectionMoreButtonCell
- (_TtC10StickersUI31StickerCollectionMoreButtonCell)initWithCoder:(id)a3;
- (void)didPressButton:(id)a3;
- (void)layoutSubviews;
@end

@implementation StickerCollectionMoreButtonCell

- (_TtC10StickersUI31StickerCollectionMoreButtonCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_circleView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_button;
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_delegate);
  *v6 = 0;
  v6[1] = 0;
  result = sub_26BA9BD9C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StickerCollectionMoreButtonCell();
  v2 = v7.receiver;
  [(StickerCollectionMoreButtonCell *)&v7 layoutSubviews];
  v3 = [v2 contentView];
  [v3 bounds];
  v5 = v4;

  if (v5 > 40.0)
  {
    v5 = 40.0;
  }

  v6 = [*&v2[OBJC_IVAR____TtC10StickersUI31StickerCollectionMoreButtonCell_circleView] layer];
  [v6 setCornerRadius_];
}

- (void)didPressButton:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x68);
  v7 = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end