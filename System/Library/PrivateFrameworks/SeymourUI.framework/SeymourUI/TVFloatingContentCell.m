@interface TVFloatingContentCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC9SeymourUI21TVFloatingContentCell)initWithCoder:(id)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TVFloatingContentCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView);
  v10 = self;
  v11 = [v9 contentView];
  if (v11)
  {
    v16 = v11;
    *&v14 = a4;
    *&v15 = a5;
    [v11 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
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

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView);
  v5 = a3;
  v6 = self;
  result = [v4 contentView];
  if (result)
  {
    v8 = result;
    [v5 size];
    [v8 systemLayoutSizeFittingSize_];

    [v5 frame];
    [v5 setFrame_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC9SeymourUI21TVFloatingContentCell)initWithCoder:(id)a3
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20BA98E90();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20BA990F8(a3);
}

@end