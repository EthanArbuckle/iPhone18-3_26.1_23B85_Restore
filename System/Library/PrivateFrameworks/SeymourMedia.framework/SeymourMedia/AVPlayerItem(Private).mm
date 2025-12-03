@interface AVPlayerItem(Private)
- (uint64_t)smm_restrictions;
- (uint64_t)smm_setPlayerItemRestrictions:()Private;
@end

@implementation AVPlayerItem(Private)

- (uint64_t)smm_restrictions
{
  if ([self restrictions])
  {
    return 0xFFFFLL;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)smm_setPlayerItemRestrictions:()Private
{
  if (a3)
  {
    v3 = 0xFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return [self setRestrictions:v3];
}

@end