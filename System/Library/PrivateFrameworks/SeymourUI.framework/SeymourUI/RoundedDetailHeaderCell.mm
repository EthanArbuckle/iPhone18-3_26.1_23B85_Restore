@interface RoundedDetailHeaderCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RoundedDetailHeaderCell

- (void)didMoveToWindow
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for RoundedDetailHeaderCell();
  v2 = v12.receiver;
  [(RoundedDetailHeaderCell *)&v12 didMoveToWindow];
  window = [v2 window];
  v4 = window;
  if (window)
  {
    [window bounds];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  traitCollection = [v2 traitCollection];
  sub_20B9EFC30(v9, v10, v4 == 0, traitCollection, 0);
}

- (void)layoutSubviews
{
  selfCopy = self;
  window = [(RoundedDetailHeaderCell *)selfCopy window];
  v4 = window;
  if (window)
  {
    [window bounds];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  traitCollection = [(RoundedDetailHeaderCell *)selfCopy traitCollection];
  sub_20B9EFC30(v9, v10, v4 == 0, traitCollection, 0);

  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for RoundedDetailHeaderCell();
  [(RoundedDetailHeaderCell *)&v12 layoutSubviews];
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for RoundedDetailHeaderCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(RoundedDetailHeaderCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(RoundedDetailHeaderCell *)selfCopy contentView];
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
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoundedDetailHeaderCell();
  changeCopy = change;
  v5 = v7.receiver;
  [(RoundedDetailHeaderCell *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_20B9EFA78(traitCollection, change);
}

@end