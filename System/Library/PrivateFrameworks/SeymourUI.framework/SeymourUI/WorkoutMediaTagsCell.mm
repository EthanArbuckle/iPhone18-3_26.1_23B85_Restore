@interface WorkoutMediaTagsCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSArray)accessibilityMediaTags;
- (void)handleDownloadButtonTapped:(id)tapped;
- (void)handleTrainerButtonTapped:(id)tapped;
- (void)prepareForReuse;
- (void)setAccessibilityMediaTags:(id)tags;
@end

@implementation WorkoutMediaTagsCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for WorkoutMediaTagsCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(WorkoutMediaTagsCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(WorkoutMediaTagsCell *)selfCopy contentView];
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

- (void)handleTrainerButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_20B7AA3AC(17, sub_20B5E2A84);
}

- (void)handleDownloadButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_20B7AA3AC(13, sub_20B5E275C);
}

- (NSArray)accessibilityMediaTags
{
  if (*(self + OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_accessibilityMediaTags))
  {

    v2 = sub_20C13CC54();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAccessibilityMediaTags:(id)tags
{
  if (tags)
  {
    v4 = sub_20C13CC74();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_accessibilityMediaTags) = v4;
}

@end