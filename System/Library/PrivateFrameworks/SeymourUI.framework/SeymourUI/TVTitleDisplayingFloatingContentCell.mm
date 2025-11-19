@interface TVTitleDisplayingFloatingContentCell
- (_TtC9SeymourUI36TVTitleDisplayingFloatingContentCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TVTitleDisplayingFloatingContentCell

- (_TtC9SeymourUI36TVTitleDisplayingFloatingContentCell)initWithCoder:(id)a3
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for TVTitleDisplayingFloatingContentCell();
  v2 = v13.receiver;
  [(TVTitleDisplayingFloatingContentCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI36TVTitleDisplayingFloatingContentCell_floatingView];
  v4 = [v2 contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20C04F004(a3);
}

@end