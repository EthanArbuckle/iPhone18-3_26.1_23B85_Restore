@interface RMUILocalizable
+ (id)_bundle;
+ (id)string:(id)string;
@end

@implementation RMUILocalizable

+ (id)_bundle
{
  if (_bundle_once != -1)
  {
    +[RMUILocalizable _bundle];
  }

  v3 = _bundle_bundle;

  return v3;
}

uint64_t __26__RMUILocalizable__bundle__block_invoke()
{
  _bundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

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