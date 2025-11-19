@interface PKMerchantMapViewController
- (PKMerchantMapViewController)initWithMapItem:(id)a3 configOptions:(unint64_t)a4;
@end

@implementation PKMerchantMapViewController

- (PKMerchantMapViewController)initWithMapItem:(id)a3 configOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E69AE120]);
  [v7 setOptions:a4];
  v8 = PKPassKitCoreBundle();
  v9 = [v8 bundleIdentifier];
  [v7 setEffectiveBundleIdentifier:v9];

  v13.receiver = self;
  v13.super_class = PKMerchantMapViewController;
  v10 = [(MUPlaceViewController *)&v13 initWithConfiguration:v7];
  v11 = v10;
  if (v10)
  {
    [(MUPlaceViewController *)v10 setMapItem:v6];
  }

  return v11;
}

@end