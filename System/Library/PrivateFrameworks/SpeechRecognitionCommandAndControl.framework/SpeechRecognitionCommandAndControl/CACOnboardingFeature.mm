@interface CACOnboardingFeature
+ (id)featureWithTitleText:(id)a3 helperText:(id)a4;
+ (id)featureWithTitleText:(id)a3 helperText:(id)a4 imageBundleName:(id)a5;
- (CACOnboardingFeature)initWithTitleText:(id)a3 helperText:(id)a4 imageBundleName:(id)a5;
@end

@implementation CACOnboardingFeature

- (CACOnboardingFeature)initWithTitleText:(id)a3 helperText:(id)a4 imageBundleName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CACOnboardingFeature;
  v12 = [(CACOnboardingFeature *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_titleText, a3);
    objc_storeStrong(&v13->_helperText, a4);
    objc_storeStrong(&v13->_imageBundleName, a5);
  }

  return v13;
}

+ (id)featureWithTitleText:(id)a3 helperText:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CACOnboardingFeature alloc] initWithTitleText:v6 helperText:v5 imageBundleName:0];

  return v7;
}

+ (id)featureWithTitleText:(id)a3 helperText:(id)a4 imageBundleName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CACOnboardingFeature alloc] initWithTitleText:v9 helperText:v8 imageBundleName:v7];

  return v10;
}

@end