@interface ProgramDetailHeaderCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)playButtonTapped:(id)tapped;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProgramDetailHeaderCell

- (void)didMoveToWindow
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ProgramDetailHeaderCell();
  v2 = v10.receiver;
  [(ProgramDetailHeaderCell *)&v10 didMoveToWindow];
  window = [v2 window];
  if (window)
  {
    v4 = window;
    [window bounds];
    v6 = v5;
    v8 = v7;
    traitCollection = [v2 traitCollection];
    sub_20BA7231C(v6, v8);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BA6E1CC();
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProgramDetailHeaderCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(ProgramDetailHeaderCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(ProgramDetailHeaderCell *)selfCopy contentView];
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
  sub_20BA6E4A8(change);
}

- (void)playButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_20BA72398();
}

@end