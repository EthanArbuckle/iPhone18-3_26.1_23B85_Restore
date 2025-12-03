@interface TVFloatingContentCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC9SeymourUI21TVFloatingContentCell)initWithCoder:(id)coder;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TVFloatingContentCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v9 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView);
  selfCopy = self;
  contentView = [v9 contentView];
  if (contentView)
  {
    v16 = contentView;
    *&v14 = priority;
    *&v15 = fittingPriority;
    [contentView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
    v18 = v17;
    v20 = v19;

    v12 = v18;
    v13 = v20;
  }

  else
  {
    __break(1u);
  }

  result.height = v13;
  result.width = v12;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView);
  attributesCopy = attributes;
  selfCopy = self;
  result = [v4 contentView];
  if (result)
  {
    v8 = result;
    [attributesCopy size];
    [v8 systemLayoutSizeFittingSize_];

    [attributesCopy frame];
    [attributesCopy setFrame_];

    return attributesCopy;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC9SeymourUI21TVFloatingContentCell)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BA98E90();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20BA990F8(change);
}

@end