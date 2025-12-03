@interface TVIndexedBrickItemCell
- (void)prepareForReuse;
@end

@implementation TVIndexedBrickItemCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TVIndexedBrickItemCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(TVFocusableCollectionViewCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(v5, selfCopy + v9, &qword_27C762550);
  swift_endAccess();
}

@end