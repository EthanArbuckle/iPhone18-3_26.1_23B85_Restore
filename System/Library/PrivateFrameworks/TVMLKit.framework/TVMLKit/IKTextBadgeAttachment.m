@interface IKTextBadgeAttachment
@end

@implementation IKTextBadgeAttachment

uint64_t __92__IKTextBadgeAttachment_TVMLKitAdditions__tv_resolveWithTextLayoutDirection_layoutObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 uiImage];

  [WeakRetained tv_setImage:v5];
  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 tv_setResolving:0];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 tv_setImageProxy:0];

  result = *(a1 + 32);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

@end