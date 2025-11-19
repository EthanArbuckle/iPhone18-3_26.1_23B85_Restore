@interface SYBundle
@end

@implementation SYBundle

void ___SYBundle_block_invoke()
{
  if (!_SYBundle___bundle)
  {
    _SYBundle___bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

    MEMORY[0x2821F96F8]();
  }
}

@end