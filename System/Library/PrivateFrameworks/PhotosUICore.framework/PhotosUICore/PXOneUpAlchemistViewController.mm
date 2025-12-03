@interface PXOneUpAlchemistViewController
- (PXOneUpAlchemistViewController)initWithCoder:(id)coder;
- (PXOneUpAlchemistViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation PXOneUpAlchemistViewController

- (PXOneUpAlchemistViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___sceneView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXOneUpAlchemistViewController____lazy_storage___animator) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXOneUpAlchemistViewController_button) = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1A3F48884();
}

- (PXOneUpAlchemistViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end