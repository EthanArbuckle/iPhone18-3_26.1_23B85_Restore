@interface STSGridTile
- (id)description;
@end

@implementation STSGridTile

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = STSGridTile;
  v4 = [(STSGridTile *)&v9 description];
  v5 = [(STSGridTile *)self smallIndexes];
  v6 = [(STSGridTile *)self largeIndex];
  v7 = [v3 stringWithFormat:@"%@, smallIndexes: %@, largeIndex: %@", v4, v5, v6];

  return v7;
}

@end