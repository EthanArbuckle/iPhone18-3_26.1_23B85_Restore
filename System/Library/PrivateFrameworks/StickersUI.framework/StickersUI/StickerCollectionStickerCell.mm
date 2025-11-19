@interface StickerCollectionStickerCell
- (BOOL)canHandleTap;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)handleDelete:(id)a3;
- (void)handleLongPress:(id)a3 recognizer:(id)a4;
- (void)handleTap:(id)a3 recognizer:(id)a4;
- (void)handleWillTap:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation StickerCollectionStickerCell

- (void)layoutSubviews
{
  v2 = self;
  sub_26BA7CA3C();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_26BA9AF7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9AF6C();
  v8 = self;
  sub_26BA7CB2C();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_26BA7D084();
}

- (void)handleDelete:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = self + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0xA8);
    v11 = self;
    v10();
    (*(v8 + 32))(v6, ObjectType, v8);

    swift_unknownObjectRelease();
    sub_26BA3E6F8(v6, &qword_280435B08);
  }
}

- (BOOL)canHandleTap
{
  v3 = self + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 96);
    v7 = self;
    v8 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)handleTap:(id)a3 recognizer:(id)a4
{
  v5 = self + OBJC_IVAR____TtC10StickersUI28StickerCollectionStickerCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 64);
    v8 = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)handleWillTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26BA7FA78(v4);
}

- (void)handleLongPress:(id)a3 recognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_26BA80C20(v7);
}

@end