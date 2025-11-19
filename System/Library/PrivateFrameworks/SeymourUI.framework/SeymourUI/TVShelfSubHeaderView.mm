@interface TVShelfSubHeaderView
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation TVShelfSubHeaderView

- (void)applyLayoutAttributes:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TVShelfSubHeaderView();
  v15.receiver = self;
  v15.super_class = v8;
  v9 = a3;
  v10 = self;
  [(TVShelfSubHeaderView *)&v15 applyLayoutAttributes:v9];
  v11 = [v9 indexPath];
  sub_20C1331E4();

  v12 = sub_20C133244();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC9SeymourUI20TVShelfSubHeaderView_indexPath;
  swift_beginAccess();
  sub_20B59784C(v7, v10 + v13);
  swift_endAccess();
}

@end