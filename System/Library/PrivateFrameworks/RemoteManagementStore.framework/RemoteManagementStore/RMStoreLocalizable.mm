@interface RMStoreLocalizable
+ (id)_bundle;
+ (id)string:(id)a3;
@end

@implementation RMStoreLocalizable

+ (id)_bundle
{
  if (_bundle_once != -1)
  {
    +[RMStoreLocalizable _bundle];
  }

  v3 = _bundle_bundle;

  return v3;
}

uint64_t __29__RMStoreLocalizable__bundle__block_invoke()
{
  _bundle_bundle = [MEMORY[0x277CCA8D8] mainBundle];

  return MEMORY[0x2821F96F8]();
}

+ (id)string:(id)a3
{
  v4 = a3;
  v5 = [a1 _bundle];
  v6 = [v5 localizedStringForKey:v4 value:0 table:@"Localizable"];

  return v6;
}

@end