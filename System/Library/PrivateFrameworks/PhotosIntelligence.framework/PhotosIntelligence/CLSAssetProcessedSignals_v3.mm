@interface CLSAssetProcessedSignals_v3
- (void)setIsNSFWExplicit:(BOOL)explicit;
- (void)setIsPreciselyNSFWExplicit:(BOOL)explicit;
@end

@implementation CLSAssetProcessedSignals_v3

- (void)setIsNSFWExplicit:(BOOL)explicit
{
  if (explicit)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setIsPreciselyNSFWExplicit:(BOOL)explicit
{
  if (explicit)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v3;
}

@end