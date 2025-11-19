@interface StocksBundles
+ (id)getBundle:(int)a3;
@end

@implementation StocksBundles

+ (id)getBundle:(int)a3
{
  v3 = getBundle__bundles[a3];
  if (!v3)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:identifiers[a3]];
    v6 = getBundle__bundles[a3];
    getBundle__bundles[a3] = v5;

    v3 = getBundle__bundles[a3];
  }

  return v3;
}

@end