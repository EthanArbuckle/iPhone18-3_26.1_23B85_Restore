@interface PXOneUpAlchemistViewController
- (PXOneUpAlchemistViewController)initWithCoder:(id)a3;
- (PXOneUpAlchemistViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXOneUpAlchemistViewController

- (PXOneUpAlchemistViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_1A3F48884();
}

- (PXOneUpAlchemistViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end