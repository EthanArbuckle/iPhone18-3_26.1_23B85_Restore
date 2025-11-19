@interface AppleCardFeaturesAndBenefitsManager
- (void)accountChanged:(id)a3;
- (void)dealloc;
- (void)scheduledPaymentsChangedForAccountIdentifier:(id)a3;
@end

@implementation AppleCardFeaturesAndBenefitsManager

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedInstance];
  if (v5)
  {
    v6 = v5;
    [v5 unregisterObserver_];

    v7.receiver = v4;
    v7.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsManager();
    [(AppleCardFeaturesAndBenefitsManager *)&v7 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)accountChanged:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BD312BC8(a3);
}

- (void)scheduledPaymentsChangedForAccountIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1BD314240(v4, v6);
}

@end