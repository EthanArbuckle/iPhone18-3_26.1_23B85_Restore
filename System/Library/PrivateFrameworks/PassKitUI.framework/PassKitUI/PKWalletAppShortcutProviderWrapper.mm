@interface PKWalletAppShortcutProviderWrapper
+ (void)updateAppShortcutParametersWithCompletion:(id)completion;
- (PKWalletAppShortcutProviderWrapper)init;
@end

@implementation PKWalletAppShortcutProviderWrapper

+ (void)updateAppShortcutParametersWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))();

    _Block_release(v4);
  }
}

- (PKWalletAppShortcutProviderWrapper)init
{
  v3.receiver = self;
  v3.super_class = PKWalletAppShortcutProviderWrapper;
  return [(PKWalletAppShortcutProviderWrapper *)&v3 init];
}

@end