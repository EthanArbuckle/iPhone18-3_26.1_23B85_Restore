@interface PKAppleCardFeaturesAndBenefitsViewController
- (PKAppleCardFeaturesAndBenefitsViewController)init;
- (PKAppleCardFeaturesAndBenefitsViewController)initWithCoder:(id)coder;
- (PKAppleCardFeaturesAndBenefitsViewController)initWithNibName:(id)name bundle:(id)bundle;
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

- (PKAppleCardFeaturesAndBenefitsViewController)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD7AC298();
}

- (PKAppleCardFeaturesAndBenefitsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end