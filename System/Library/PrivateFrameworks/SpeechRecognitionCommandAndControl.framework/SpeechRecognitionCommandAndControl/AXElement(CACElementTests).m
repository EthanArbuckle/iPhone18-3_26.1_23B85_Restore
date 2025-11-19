@interface AXElement(CACElementTests)
+ (id)_testCombinationsFromTitle:()CACElementTests isCarPlayConnected:;
@end

@implementation AXElement(CACElementTests)

+ (id)_testCombinationsFromTitle:()CACElementTests isCarPlayConnected:
{
  v5 = MEMORY[0x277CE6BA0];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v7 _combinationsFromTitle:v6 isCarPlayConnected:a4];

  return v8;
}

@end