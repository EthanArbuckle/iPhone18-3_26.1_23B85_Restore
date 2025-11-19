@interface MeCardService
- (void)clearCachedMeCard;
@end

@implementation MeCardService

- (void)clearCachedMeCard
{
  v2 = *self->cachedMeCard;
  *self->cachedMeCard = 0;
  MEMORY[0x1EEE66BB8]();
}

@end