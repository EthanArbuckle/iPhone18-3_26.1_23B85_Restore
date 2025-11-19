@interface MyLibraryEntryCell
- (_TtC9SeymourUI18MyLibraryEntryCell)initWithCoder:(id)a3;
- (void)prepareForReuse;
@end

@implementation MyLibraryEntryCell

- (_TtC9SeymourUI18MyLibraryEntryCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI18MyLibraryEntryCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9SeymourUI18MyLibraryEntryCell_itemInfo;
  v5 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for MyLibraryEntryCell();
  v11.receiver = self;
  v11.super_class = v6;
  v7 = self;
  [(MyLibraryEntryCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI18MyLibraryEntryCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, v7 + v9);
  swift_endAccess();
}

@end