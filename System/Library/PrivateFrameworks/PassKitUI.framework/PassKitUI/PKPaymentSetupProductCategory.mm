@interface PKPaymentSetupProductCategory
@end

@implementation PKPaymentSetupProductCategory

void __64__PKPaymentSetupProductCategory_PKUIUtilities__logoCachedImage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v5 = [*(a1 + 32) imageAssets];
    [v5 setLogoImage:{objc_msgSend(v7, "CGImage")}];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

@end