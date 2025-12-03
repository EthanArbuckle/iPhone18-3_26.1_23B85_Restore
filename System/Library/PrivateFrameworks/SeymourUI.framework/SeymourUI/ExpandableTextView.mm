@interface ExpandableTextView
- (void)didTapLink:(id)link;
- (void)handleTapGesture:(id)gesture;
- (void)layoutSubviews;
@end

@implementation ExpandableTextView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExpandableTextView();
  v2 = v3.receiver;
  [(ExpandableTextView *)&v3 layoutSubviews];
  [v2 bounds];
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 0.0;
  v5.size.height = 0.0;
  if (!CGRectEqualToRect(v4, v5))
  {
    sub_20B9E6914(*(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_state));
  }
}

- (void)didTapLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  sub_20B9E7DB4(linkCopy);
}

- (void)handleTapGesture:(id)gesture
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_onMoreTapped);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_20B584050(v3);
    v3(v5);

    sub_20B583ECC(v3);
  }
}

@end