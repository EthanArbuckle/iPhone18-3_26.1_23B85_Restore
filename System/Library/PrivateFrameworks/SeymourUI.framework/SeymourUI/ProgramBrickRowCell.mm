@interface ProgramBrickRowCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProgramBrickRowCell

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProgramBrickRowCell();
  v2 = v3.receiver;
  [(ProgramBrickRowCell *)&v3 didMoveToWindow];
  sub_20BBC6C44(&OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_currentLayout, sub_20BDF9B24, &OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_currentContainerSize);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BBC7A38();
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProgramBrickRowCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(ProgramBrickRowCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(ProgramBrickRowCell *)selfCopy contentView];
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
  sub_20BBC7CE4(change);
}

@end