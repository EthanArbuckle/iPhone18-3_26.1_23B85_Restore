@interface ContentMessageViewController
- (ContentMessageViewController)initWithCoder:(id)coder;
- (ContentMessageViewController)initWithContentMessageViewModel:(id)model;
- (ContentMessageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation ContentMessageViewController

- (ContentMessageViewController)initWithContentMessageViewModel:(id)model
{
  *(&self->super.super.super.isa + OBJC_IVAR___ContentMessageViewController_contentMessageViewModel) = model;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ContentMessageViewController();
  modelCopy = model;
  return [(ContentMessageViewController *)&v6 initWithNibName:0 bundle:0];
}

- (ContentMessageViewController)initWithCoder:(id)coder
{
  result = sub_220BCE080();
  __break(1u);
  return result;
}

- (ContentMessageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = sub_220BCE080();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_220B5FEA8();
}

@end