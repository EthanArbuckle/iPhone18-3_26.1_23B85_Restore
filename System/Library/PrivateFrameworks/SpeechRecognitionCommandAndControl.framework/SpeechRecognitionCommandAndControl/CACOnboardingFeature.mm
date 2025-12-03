@interface CACOnboardingFeature
+ (id)featureWithTitleText:(id)text helperText:(id)helperText;
+ (id)featureWithTitleText:(id)text helperText:(id)helperText imageBundleName:(id)name;
- (CACOnboardingFeature)initWithTitleText:(id)text helperText:(id)helperText imageBundleName:(id)name;
@end

@implementation CACOnboardingFeature

- (CACOnboardingFeature)initWithTitleText:(id)text helperText:(id)helperText imageBundleName:(id)name
{
  textCopy = text;
  helperTextCopy = helperText;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = CACOnboardingFeature;
  v12 = [(CACOnboardingFeature *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_titleText, text);
    objc_storeStrong(&v13->_helperText, helperText);
    objc_storeStrong(&v13->_imageBundleName, name);
  }

  return v13;
}

+ (id)featureWithTitleText:(id)text helperText:(id)helperText
{
  helperTextCopy = helperText;
  textCopy = text;
  v7 = [[CACOnboardingFeature alloc] initWithTitleText:textCopy helperText:helperTextCopy imageBundleName:0];

  return v7;
}

+ (id)featureWithTitleText:(id)text helperText:(id)helperText imageBundleName:(id)name
{
  nameCopy = name;
  helperTextCopy = helperText;
  textCopy = text;
  v10 = [[CACOnboardingFeature alloc] initWithTitleText:textCopy helperText:helperTextCopy imageBundleName:nameCopy];

  return v10;
}

@end