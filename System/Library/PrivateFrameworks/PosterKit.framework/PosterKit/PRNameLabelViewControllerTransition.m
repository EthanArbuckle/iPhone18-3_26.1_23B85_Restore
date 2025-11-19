@interface PRNameLabelViewControllerTransition
- (PRNameLabelViewControllerTransition)initWithViewController:(id)a3 fromVibrancyConfiguration:(id)a4 toVibrancyConfiguration:(id)a5;
@end

@implementation PRNameLabelViewControllerTransition

- (PRNameLabelViewControllerTransition)initWithViewController:(id)a3 fromVibrancyConfiguration:(id)a4 toVibrancyConfiguration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PRNameLabelViewControllerTransition;
  v12 = [(PRNameLabelViewControllerTransition *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewController, a3);
    objc_storeStrong(&v13->_fromConfiguration, a4);
    objc_storeStrong(&v13->_toConfiguration, a5);
  }

  return v13;
}

@end