@interface OBPrivacyPresenter(PKPrivacy)
+ (id)pk_defaultPresentationActionForContext:()PKPrivacy;
+ (id)pk_presenterForContext:()PKPrivacy;
@end

@implementation OBPrivacyPresenter(PKPrivacy)

+ (id)pk_presenterForContext:()PKPrivacy
{
  v4 = PKPrivacyBundleIdentifiersForContext(a3);
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [a1 presenterForPrivacySplashWithIdentifier:v5];
  }

  else
  {
    v6 = [a1 presenterForPrivacyUnifiedAboutWithIdentifiers:v4];
  }

  return v6;
}

+ (id)pk_defaultPresentationActionForContext:()PKPrivacy
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__OBPrivacyPresenter_PKPrivacy__pk_defaultPresentationActionForContext___block_invoke;
  v5[3] = &__block_descriptor_48_e26_v16__0__UIViewController_8l;
  v5[4] = a1;
  v5[5] = a3;
  v3 = _Block_copy(v5);

  return v3;
}

@end