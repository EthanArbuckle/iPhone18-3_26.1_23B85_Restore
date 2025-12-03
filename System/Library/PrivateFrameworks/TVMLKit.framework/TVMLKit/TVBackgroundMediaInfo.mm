@interface TVBackgroundMediaInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TVBackgroundMediaInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = TVBackgroundMediaInfo, [(TVMediaInfo *)&v9 isEqual:equalCopy]))
  {
    playerBridge = [(TVBackgroundMediaInfo *)self playerBridge];
    playerBridge2 = [equalCopy playerBridge];
    v7 = playerBridge == playerBridge2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TVBackgroundMediaInfo;
  v4 = [(TVMediaInfo *)&v7 copyWithZone:zone];
  playerBridge = [(TVBackgroundMediaInfo *)self playerBridge];
  [v4 setPlayerBridge:playerBridge];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TVBackgroundMediaInfo;
  v4 = [(TVMediaInfo *)&v8 description];
  playerBridge = [(TVBackgroundMediaInfo *)self playerBridge];
  v6 = [v3 stringWithFormat:@"%@, bridge = %@", v4, playerBridge];

  return v6;
}

@end