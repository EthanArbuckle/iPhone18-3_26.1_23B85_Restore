@interface ConsumerSecret
@end

@implementation ConsumerSecret

void ___ConsumerSecret_block_invoke()
{
  v0 = [MEMORY[0x1E696AD60] string];
  for (i = 0; i != 40; ++i)
  {
    [v0 appendFormat:@"%c", dword_1DACC1C70[i]];
  }

  v2 = _ConsumerSecret_ConsumerSecretString;
  _ConsumerSecret_ConsumerSecretString = v0;
}

@end