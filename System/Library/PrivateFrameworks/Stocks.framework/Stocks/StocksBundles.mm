@interface StocksBundles
+ (id)getBundle:(int)bundle;
@end

@implementation StocksBundles

+ (id)getBundle:(int)bundle
{
  v3 = getBundle__bundles[bundle];
  if (!v3)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:identifiers[bundle]];
    v6 = getBundle__bundles[bundle];
    getBundle__bundles[bundle] = v5;

    v3 = getBundle__bundles[bundle];
  }

  return v3;
}

@end