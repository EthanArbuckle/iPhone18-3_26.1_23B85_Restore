@interface PKPaymentSetupProductCategory(PKUIUtilities)
- (id)logoCachedImage:()PKUIUtilities;
@end

@implementation PKPaymentSetupProductCategory(PKUIUtilities)

- (id)logoCachedImage:()PKUIUtilities
{
  v4 = a3;
  imageAssets = [self imageAssets];
  logoImage = [imageAssets logoImage];

  if (logoImage)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:logoImage scale:0 orientation:PKUIScreenScale()];
    if (v4)
    {
      v4[2](v4, 0, v7);
    }
  }

  else
  {
    imageAssetURLs = [self imageAssetURLs];
    logoImageUrl = [imageAssetURLs logoImageUrl];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PKPaymentSetupProductCategory_PKUIUtilities__logoCachedImage___block_invoke;
    v11[3] = &unk_1E8012AF0;
    v11[4] = self;
    v12 = v4;
    PKCommonCachedImageFromURL(logoImageUrl, v11);

    v7 = 0;
  }

  return v7;
}

@end