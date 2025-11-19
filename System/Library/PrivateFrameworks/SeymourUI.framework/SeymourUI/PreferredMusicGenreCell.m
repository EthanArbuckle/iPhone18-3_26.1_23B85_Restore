@interface PreferredMusicGenreCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)contentSizeCategoryChanged;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PreferredMusicGenreCell

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PreferredMusicGenreCell();
  v2 = v5.receiver;
  [(PreferredMusicGenreCell *)&v5 layoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter] layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PreferredMusicGenreCell();
  v11.receiver = self;
  v11.super_class = v6;
  v7 = self;
  [(PreferredMusicGenreCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, v7 + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = [(PreferredMusicGenreCell *)v9 contentView];
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

- (void)contentSizeCategoryChanged
{
  v2 = self;
  v3 = [(PreferredMusicGenreCell *)v2 traitCollection];
  v4 = *(&v2->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel);
  v5 = sub_20B7C6A74(v3);
  [v4 setFont_];
}

@end