@interface PreviewVideoLinkCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)buttonTapped:(id)tapped;
- (void)prepareForReuse;
- (void)textSizeChanged:(id)changed;
@end

@implementation PreviewVideoLinkCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PreviewVideoLinkCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(PreviewVideoLinkCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(PreviewVideoLinkCell *)selfCopy contentView];
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

- (void)buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_20BB47224();
}

- (void)textSizeChanged:(id)changed
{
  v4 = sub_20C132614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();
  v8 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_button);
  selfCopy = self;
  titleLabel = [v8 titleLabel];
  if (titleLabel)
  {
    v11 = titleLabel;
    preferredFontForTextStyle_ = [objc_opt_self() preferredFontForTextStyle_];
    [v11 setFont_];
  }

  [(PreviewVideoLinkCell *)selfCopy setNeedsLayout];

  (*(v5 + 8))(v7, v4);
}

@end