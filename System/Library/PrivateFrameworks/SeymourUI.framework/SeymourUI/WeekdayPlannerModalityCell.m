@interface WeekdayPlannerModalityCell
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)didMoveToWindow;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation WeekdayPlannerModalityCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WeekdayPlannerModalityCell();
  return [(WeekdayPlannerModalityCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for WeekdayPlannerModalityCell();
  v4 = v7.receiver;
  [(WeekdayPlannerModalityCell *)&v7 setHighlighted:v3];
  v5 = [v4 isHighlighted];
  v6 = 8;
  if (!v5)
  {
    v6 = 0;
  }

  [v4 setBackgroundColor_];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WeekdayPlannerModalityCell();
  v2 = v7.receiver;
  [(WeekdayPlannerModalityCell *)&v7 didMoveToWindow];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_separatorHeightConstraint];
  v4 = [v2 window];
  sub_20C138804();
  v6 = v5;

  [v3 setConstant_];
  [v2 setNeedsUpdateConstraints];
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for WeekdayPlannerModalityCell();
  v11.receiver = self;
  v11.super_class = v6;
  v7 = self;
  [(WeekdayPlannerModalityCell *)&v11 prepareForReuse];
  [(WeekdayPlannerModalityCell *)v7 directionalLayoutMargins];
  [(WeekdayPlannerModalityCell *)v7 setDirectionalLayoutMargins:?];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, v7 + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = [(WeekdayPlannerModalityCell *)v9 contentView];
  *&v11 = a4;
  *&v12 = a5;
  [v10 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v11, v12}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

@end