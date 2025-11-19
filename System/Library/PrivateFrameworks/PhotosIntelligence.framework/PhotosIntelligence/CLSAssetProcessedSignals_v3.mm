@interface CLSAssetProcessedSignals_v3
- (void)setIsNSFWExplicit:(BOOL)a3;
- (void)setIsPreciselyNSFWExplicit:(BOOL)a3;
@end

@implementation CLSAssetProcessedSignals_v3

- (void)setIsNSFWExplicit:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setIsPreciselyNSFWExplicit:(BOOL)a3
{
  if (a3)
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