@interface PKAppleCardFeaturesAndBenefitsViewController
- (PKAppleCardFeaturesAndBenefitsViewController)init;
- (PKAppleCardFeaturesAndBenefitsViewController)initWithCoder:(id)a3;
- (PKAppleCardFeaturesAndBenefitsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation PKAppleCardFeaturesAndBenefitsViewController

- (PKAppleCardFeaturesAndBenefitsViewController)init
{
  *(&self->super.super.super.isa + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsViewController_dataManager) = [objc_allocWithZone(type metadata accessor for AppleCardFeaturesAndBenefitsManager()) init];
  v4.receiver = self;
  v4.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsViewController();
  return [(PKAppleCardFeaturesAndBenefitsViewController *)&v4 initWithNibName:0 bundle:0];
}

- (PKAppleCardFeaturesAndBenefitsViewController)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD7AC298();
}

- (PKAppleCardFeaturesAndBenefitsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end