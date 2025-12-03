@interface TabletIndexedBrickItemCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)handleDownloadButtonTapped;
- (void)prepareForReuse;
- (void)updateFonts:(id)fonts;
@end

@implementation TabletIndexedBrickItemCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TabletIndexedBrickItemCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(TabletIndexedBrickItemCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(TabletIndexedBrickItemCell *)selfCopy contentView];
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

- (void)updateFonts:(id)fonts
{
  v22 = sub_20C132614();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();
  v7 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_titleLabel);
  v8 = *MEMORY[0x277D76918];
  v9 = objc_opt_self();
  selfCopy = self;
  v11 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
  fontDescriptorWithSymbolicTraits_ = [v11 fontDescriptorWithSymbolicTraits_];
  if (fontDescriptorWithSymbolicTraits_)
  {
    v13 = fontDescriptorWithSymbolicTraits_;

    v11 = v13;
  }

  v14 = objc_opt_self();
  v15 = [v14 fontWithDescriptor:v11 size:0.0];

  [v7 setFont_];
  v16 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_subtitleLabel);
  v17 = [v9 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  fontDescriptorWithSymbolicTraits_2 = [v17 fontDescriptorWithSymbolicTraits_];
  if (fontDescriptorWithSymbolicTraits_2)
  {
    v19 = fontDescriptorWithSymbolicTraits_2;

    v17 = v19;
  }

  v20 = [v14 fontWithDescriptor:v17 size:0.0];

  [v16 setFont_];
  [(TabletIndexedBrickItemCell *)selfCopy setNeedsLayout];

  (*(v4 + 8))(v6, v22);
}

- (void)handleDownloadButtonTapped
{
  selfCopy = self;
  sub_20B8CD144();
}

@end