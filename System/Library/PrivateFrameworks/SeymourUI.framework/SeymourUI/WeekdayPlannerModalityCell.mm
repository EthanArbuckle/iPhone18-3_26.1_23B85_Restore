@interface WeekdayPlannerModalityCell
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)didMoveToWindow;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation WeekdayPlannerModalityCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WeekdayPlannerModalityCell();
  return [(WeekdayPlannerModalityCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = type metadata accessor for WeekdayPlannerModalityCell();
  v4 = v7.receiver;
  [(WeekdayPlannerModalityCell *)&v7 setHighlighted:highlightedCopy];
  isHighlighted = [v4 isHighlighted];
  v6 = 8;
  if (!isHighlighted)
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
  window = [v2 window];
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
  selfCopy = self;
  [(WeekdayPlannerModalityCell *)&v11 prepareForReuse];
  [(WeekdayPlannerModalityCell *)selfCopy directionalLayoutMargins];
  [(WeekdayPlannerModalityCell *)selfCopy setDirectionalLayoutMargins:?];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI26WeekdayPlannerModalityCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(WeekdayPlannerModalityCell *)selfCopy contentView];
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