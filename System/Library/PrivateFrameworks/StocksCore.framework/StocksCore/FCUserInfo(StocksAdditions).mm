@interface FCUserInfo(StocksAdditions)
- (uint64_t)stocks_generateFeldsparIDIfNeeded;
- (uint64_t)stocks_resetAdsUserID;
- (uint64_t)stocks_resetFeldsparID;
@end

@implementation FCUserInfo(StocksAdditions)

- (uint64_t)stocks_generateFeldsparIDIfNeeded
{
  v2 = [a1 feldsparID];

  if (!v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    [a1 setFeldsparID:v4];
  }

  return [a1 feldsparID];
}

- (uint64_t)stocks_resetFeldsparID
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  [a1 setFeldsparID:v3];

  return [a1 feldsparID];
}

- (uint64_t)stocks_resetAdsUserID
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  [a1 setAdsUserID:v3];

  return [a1 adsUserID];
}

@end