@interface RMStoreLocalizable
+ (id)_bundle;
+ (id)string:(id)string;
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

+ (id)string:(id)string
{
  stringCopy = string;
  _bundle = [self _bundle];
  v6 = [_bundle localizedStringForKey:stringCopy value:0 table:@"Localizable"];

  return v6;
}

@end