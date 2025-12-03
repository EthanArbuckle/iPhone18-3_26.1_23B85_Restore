@interface PRAmbientEditingTitledViewController
- (PRAmbientEditingTitledViewController)initWithCoder:(id)coder;
- (PRAmbientEditingTitledViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PRAmbientEditingTitledViewControllerDelegate)delegate;
- (id)accessibilityTitleLabel;
- (void)loadView;
@end

@implementation PRAmbientEditingTitledViewController

- (PRAmbientEditingTitledViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (PRAmbientEditingTitledViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  sub_1A8BA3FE4(0, &qword_1ED7F2360);
  sub_1A8BDE214();
  sub_1A8BA3FE4(0, &qword_1ED7F2340);
  sub_1A8BDE214();
  result = sub_1A8BDE344();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  AmbientEditingTitledViewController.loadView()();
}

- (id)accessibilityTitleLabel
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1A8BDE1F4();

  return v5;
}

- (PRAmbientEditingTitledViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end