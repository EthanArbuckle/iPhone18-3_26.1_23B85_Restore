@interface ShelfTitleView
- (void)applyLayoutAttributes:(id)a3;
- (void)prepareForReuse;
- (void)tappedTitleButton:(id)a3;
@end

@implementation ShelfTitleView

- (void)prepareForReuse
{
  v2 = self;
  sub_20B8D49AC();
}

- (void)applyLayoutAttributes:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ShelfTitleView(0);
  v15.receiver = self;
  v15.super_class = v8;
  v9 = a3;
  v10 = self;
  [(ShelfTitleView *)&v15 applyLayoutAttributes:v9];
  v11 = [v9 indexPath];
  sub_20C1331E4();

  v12 = sub_20C133244();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_indexPath;
  swift_beginAccess();
  sub_20B59784C(v7, v10 + v13);
  swift_endAccess();
}

- (void)tappedTitleButton:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20C13DA64();
  swift_unknownObjectRelease();
  if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), *(&v4->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_shelf)))
  {
    v5 = *(&v4->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_shelf);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 80);
    swift_unknownObjectRetain();
    v7(ObjectType, v5);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(&v8);
}

@end