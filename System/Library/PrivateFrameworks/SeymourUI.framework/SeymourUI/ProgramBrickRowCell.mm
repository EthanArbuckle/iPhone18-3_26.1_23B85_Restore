@interface ProgramBrickRowCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
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
  v2 = self;
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
  v7 = self;
  [(ProgramBrickRowCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, v7 + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = [(ProgramBrickRowCell *)v9 contentView];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20BBC7CE4(a3);
}

@end