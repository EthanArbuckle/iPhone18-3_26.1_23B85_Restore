@interface StickerCollectionAddButtonCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)layoutSubviews;
@end

@implementation StickerCollectionAddButtonCell

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickerCollectionAddButtonCell();
  v2 = v3.receiver;
  [(StickerCollectionAddButtonCell *)&v3 layoutSubviews];
  [v2 bounds];
  CGPointMake([v2 bounds]);
  [*&v2[OBJC_IVAR____TtC10StickersUI30StickerCollectionAddButtonCell_button] setFrame_];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_26BA9AF7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9AF6C();
  selfCopy = self;
  sub_26BA9A2E8();

  (*(v5 + 8))(v7, v4);
}

@end