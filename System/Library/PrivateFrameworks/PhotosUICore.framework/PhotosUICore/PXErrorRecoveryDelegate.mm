@interface PXErrorRecoveryDelegate
+ (id)sharedErrorRecoveryDelegate;
- (void)_didPresentErrorWithRecovery:(BOOL)a3 contextInfo:(void *)a4;
@end

@implementation PXErrorRecoveryDelegate

- (void)_didPresentErrorWithRecovery:(BOOL)a3 contextInfo:(void *)a4
{
  if (a4)
  {
    v5 = a4;
    (*(a4 + 2))(a4, a3);
    a4 = v5;
    v4 = vars8;
  }
}

+ (id)sharedErrorRecoveryDelegate
{
  if (sharedErrorRecoveryDelegate_onceToken != -1)
  {
    dispatch_once(&sharedErrorRecoveryDelegate_onceToken, &__block_literal_global_82854);
  }

  v3 = sharedErrorRecoveryDelegate_sharedErrorRecoveryDelegate;

  return v3;
}

void __54__PXErrorRecoveryDelegate_sharedErrorRecoveryDelegate__block_invoke()
{
  v0 = objc_alloc_init(PXErrorRecoveryDelegate);
  v1 = sharedErrorRecoveryDelegate_sharedErrorRecoveryDelegate;
  sharedErrorRecoveryDelegate_sharedErrorRecoveryDelegate = v0;
}

@end