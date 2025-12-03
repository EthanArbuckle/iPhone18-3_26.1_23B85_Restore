@interface PKMerchantMapViewController
- (PKMerchantMapViewController)initWithMapItem:(id)item configOptions:(unint64_t)options;
@end

@implementation PKMerchantMapViewController

- (PKMerchantMapViewController)initWithMapItem:(id)item configOptions:(unint64_t)options
{
  itemCopy = item;
  v7 = objc_alloc_init(MEMORY[0x1E69AE120]);
  [v7 setOptions:options];
  v8 = PKPassKitCoreBundle();
  bundleIdentifier = [v8 bundleIdentifier];
  [v7 setEffectiveBundleIdentifier:bundleIdentifier];

  v13.receiver = self;
  v13.super_class = PKMerchantMapViewController;
  v10 = [(MUPlaceViewController *)&v13 initWithConfiguration:v7];
  v11 = v10;
  if (v10)
  {
    [(MUPlaceViewController *)v10 setMapItem:itemCopy];
  }

  return v11;
}

@end