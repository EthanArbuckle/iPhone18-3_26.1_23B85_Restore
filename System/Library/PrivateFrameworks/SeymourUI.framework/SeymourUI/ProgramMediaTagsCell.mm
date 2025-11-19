@interface ProgramMediaTagsCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSArray)accessibilityMediaTags;
- (void)prepareForReuse;
- (void)setAccessibilityMediaTags:(id)a3;
@end

@implementation ProgramMediaTagsCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProgramMediaTagsCell();
  v11.receiver = self;
  v11.super_class = v6;
  v7 = self;
  [(ProgramMediaTagsCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, v7 + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = [(ProgramMediaTagsCell *)v9 contentView];
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

- (NSArray)accessibilityMediaTags
{
  if (*(self + OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_accessibilityMediaTags))
  {

    v2 = sub_20C13CC54();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAccessibilityMediaTags:(id)a3
{
  if (a3)
  {
    v4 = sub_20C13CC74();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC9SeymourUI20ProgramMediaTagsCell_accessibilityMediaTags) = v4;
}

@end