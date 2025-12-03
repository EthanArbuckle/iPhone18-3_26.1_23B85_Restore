@interface ExpandingTextCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC9SeymourUI17ExpandingTextCell)initWithCoder:(id)coder;
- (void)prepareForReuse;
@end

@implementation ExpandingTextCell

- (_TtC9SeymourUI17ExpandingTextCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_itemInfo;
  v5 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_expandableTextView;
  type metadata accessor for ExpandableTextView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
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
  v6 = type metadata accessor for ExpandingTextCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(ExpandingTextCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  contentView = [(ExpandingTextCell *)selfCopy contentView];
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

@end