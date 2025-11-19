@interface PKPaymentSetupProductCategory(PKUIUtilities)
- (id)logoCachedImage:()PKUIUtilities;
@end

@implementation PKPaymentSetupProductCategory(PKUIUtilities)

- (id)logoCachedImage:()PKUIUtilities
{
  v4 = a3;
  v5 = [a1 imageAssets];
  v6 = [v5 logoImage];

  if (v6)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v6 scale:0 orientation:PKUIScreenScale()];
    if (v4)
    {
      v4[2](v4, 0, v7);
    }
  }

  else
  {
    v8 = [a1 imageAssetURLs];
    v9 = [v8 logoImageUrl];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PKPaymentSetupProductCategory_PKUIUtilities__logoCachedImage___block_invoke;
    v11[3] = &unk_1E8012AF0;
    v11[4] = a1;
    v12 = v4;
    PKCommonCachedImageFromURL(v9, v11);

    v7 = 0;
  }

  return v7;
}

@end