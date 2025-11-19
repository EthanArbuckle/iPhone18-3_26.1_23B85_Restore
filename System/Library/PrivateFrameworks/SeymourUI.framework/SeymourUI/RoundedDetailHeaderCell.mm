@interface RoundedDetailHeaderCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RoundedDetailHeaderCell

- (void)didMoveToWindow
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for RoundedDetailHeaderCell();
  v2 = v12.receiver;
  [(RoundedDetailHeaderCell *)&v12 didMoveToWindow];
  v3 = [v2 window];
  v4 = v3;
  if (v3)
  {
    [v3 bounds];
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

  v11 = [v2 traitCollection];
  sub_20B9EFC30(v9, v10, v4 == 0, v11, 0);
}

- (void)layoutSubviews
{
  v2 = self;
  v3 = [(RoundedDetailHeaderCell *)v2 window];
  v4 = v3;
  if (v3)
  {
    [v3 bounds];
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

  v11 = [(RoundedDetailHeaderCell *)v2 traitCollection];
  sub_20B9EFC30(v9, v10, v4 == 0, v11, 0);

  v12.receiver = v2;
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
  v7 = self;
  [(RoundedDetailHeaderCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, v7 + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = [(RoundedDetailHeaderCell *)v9 contentView];
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
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoundedDetailHeaderCell();
  v4 = a3;
  v5 = v7.receiver;
  [(RoundedDetailHeaderCell *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_20B9EFA78(v6, a3);
}

@end