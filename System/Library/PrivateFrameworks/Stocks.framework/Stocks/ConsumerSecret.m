@interface ConsumerSecret
@end

@implementation ConsumerSecret

void ___ConsumerSecret_block_invoke()
{
  v0 = [MEMORY[0x277CCAB68] string];
  for (i = 0; i != 40; ++i)
  {
    [v0 appendFormat:@"%c", dword_26BAFE570[i]];
  }

  v2 = _ConsumerSecret_ConsumerSecretString;
  _ConsumerSecret_ConsumerSecretString = v0;
}

@end