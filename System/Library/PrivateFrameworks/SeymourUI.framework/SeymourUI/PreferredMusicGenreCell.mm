@interface PreferredMusicGenreCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
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
  layer = [*&v2[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter] layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PreferredMusicGenreCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(PreferredMusicGenreCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(PreferredMusicGenreCell *)selfCopy contentView];
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

- (void)contentSizeCategoryChanged
{
  selfCopy = self;
  traitCollection = [(PreferredMusicGenreCell *)selfCopy traitCollection];
  v4 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel);
  v5 = sub_20B7C6A74(traitCollection);
  [v4 setFont_];
}

@end