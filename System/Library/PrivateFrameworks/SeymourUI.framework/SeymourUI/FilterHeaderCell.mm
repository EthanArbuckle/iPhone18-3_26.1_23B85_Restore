@interface FilterHeaderCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)tappedFilterButton:(id)button;
- (void)textSizeChanged:(id)changed;
- (void)tintColorDidChange;
@end

@implementation FilterHeaderCell

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FilterHeaderCell();
  v2 = v5.receiver;
  [(FilterHeaderCell *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButton;
  layer = [*&v2[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButton] layer];
  [*&v2[v3] bounds];
  [layer setCornerRadius_];
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for FilterHeaderCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(FilterHeaderCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(FilterHeaderCell *)selfCopy contentView];
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

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_20BB4B9B4();
}

- (void)tappedFilterButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_20BB4CD94();
}

- (void)textSizeChanged:(id)changed
{
  v4 = sub_20C132614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();
  selfCopy = self;
  sub_20BB4BCAC();

  (*(v5 + 8))(v7, v4);
}

@end