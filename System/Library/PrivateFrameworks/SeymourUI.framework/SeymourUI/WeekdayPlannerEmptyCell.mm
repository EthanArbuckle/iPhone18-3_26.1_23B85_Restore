@interface WeekdayPlannerEmptyCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC9SeymourUI23WeekdayPlannerEmptyCell)initWithCoder:(id)coder;
- (void)prepareForReuse;
@end

@implementation WeekdayPlannerEmptyCell

- (_TtC9SeymourUI23WeekdayPlannerEmptyCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_itemInfo;
  v5 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_styleProvider;
  if (qword_27C760708 != -1)
  {
    swift_once();
  }

  v7 = (&self->super.super.super.super.super.isa + v6);
  *v7 = qword_27C79A1B0;
  v7[1] = 0x404E000000000000;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for WeekdayPlannerEmptyCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(WeekdayPlannerEmptyCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(WeekdayPlannerEmptyCell *)selfCopy contentView];
  *&v11 = priority;
  *&v12 = fittingPriority;
  [contentView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v11, v12}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

@end