@interface TVBackgroundMediaInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TVBackgroundMediaInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = TVBackgroundMediaInfo, [(TVMediaInfo *)&v9 isEqual:v4]))
  {
    v5 = [(TVBackgroundMediaInfo *)self playerBridge];
    v6 = [v4 playerBridge];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = TVBackgroundMediaInfo;
  v4 = [(TVMediaInfo *)&v7 copyWithZone:a3];
  v5 = [(TVBackgroundMediaInfo *)self playerBridge];
  [v4 setPlayerBridge:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TVBackgroundMediaInfo;
  v4 = [(TVMediaInfo *)&v8 description];
  v5 = [(TVBackgroundMediaInfo *)self playerBridge];
  v6 = [v3 stringWithFormat:@"%@, bridge = %@", v4, v5];

  return v6;
}

@end