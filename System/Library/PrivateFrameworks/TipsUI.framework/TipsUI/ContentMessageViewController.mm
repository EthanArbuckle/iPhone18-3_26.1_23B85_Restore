@interface ContentMessageViewController
- (ContentMessageViewController)initWithCoder:(id)a3;
- (ContentMessageViewController)initWithContentMessageViewModel:(id)a3;
- (ContentMessageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation ContentMessageViewController

- (ContentMessageViewController)initWithContentMessageViewModel:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___ContentMessageViewController_contentMessageViewModel) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ContentMessageViewController();
  v4 = a3;
  return [(ContentMessageViewController *)&v6 initWithNibName:0 bundle:0];
}

- (ContentMessageViewController)initWithCoder:(id)a3
{
  result = sub_220BCE080();
  __break(1u);
  return result;
}

- (ContentMessageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = sub_220BCE080();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_220B5FEA8();
}

@end