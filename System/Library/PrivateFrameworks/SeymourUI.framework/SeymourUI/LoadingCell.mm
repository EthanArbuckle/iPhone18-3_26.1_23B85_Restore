@interface LoadingCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC9SeymourUI11LoadingCell)initWithCoder:(id)a3;
- (void)prepareForReuse;
@end

@implementation LoadingCell

- (_TtC9SeymourUI11LoadingCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI11LoadingCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9SeymourUI11LoadingCell_itemInfo;
  v5 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC9SeymourUI11LoadingCell_spinner;
  v7 = [objc_opt_self() smu_activityIndicatorViewForStyleWithLoadingMessage];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.isa + v6) = v7;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for LoadingCell();
  v11.receiver = self;
  v11.super_class = v6;
  v7 = self;
  [(LoadingCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI11LoadingCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, v7 + v9);
  swift_endAccess();
  [*(&v7->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI11LoadingCell_spinner) stopAnimating];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = [(LoadingCell *)v9 contentView];
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