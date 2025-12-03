@interface GuidedWorkoutBrickRowCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)didMoveToWindow;
- (void)downloadButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation GuidedWorkoutBrickRowCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for GuidedWorkoutBrickRowCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(GuidedWorkoutBrickRowCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(GuidedWorkoutBrickRowCell *)selfCopy contentView];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20BCF63F8(change);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_20BCF6784();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BCF692C();
}

- (void)downloadButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_20BCFA134();
}

@end