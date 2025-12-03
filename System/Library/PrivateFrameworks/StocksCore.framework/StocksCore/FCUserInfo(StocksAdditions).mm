@interface FCUserInfo(StocksAdditions)
- (uint64_t)stocks_generateFeldsparIDIfNeeded;
- (uint64_t)stocks_resetAdsUserID;
- (uint64_t)stocks_resetFeldsparID;
@end

@implementation FCUserInfo(StocksAdditions)

- (uint64_t)stocks_generateFeldsparIDIfNeeded
{
  feldsparID = [self feldsparID];

  if (!feldsparID)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [self setFeldsparID:uUIDString];
  }

  return [self feldsparID];
}

- (uint64_t)stocks_resetFeldsparID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [self setFeldsparID:uUIDString];

  return [self feldsparID];
}

- (uint64_t)stocks_resetAdsUserID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [self setAdsUserID:uUIDString];

  return [self adsUserID];
}

@end