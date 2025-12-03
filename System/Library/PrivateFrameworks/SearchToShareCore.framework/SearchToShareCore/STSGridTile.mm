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
  smallIndexes = [(STSGridTile *)self smallIndexes];
  largeIndex = [(STSGridTile *)self largeIndex];
  v7 = [v3 stringWithFormat:@"%@, smallIndexes: %@, largeIndex: %@", v4, smallIndexes, largeIndex];

  return v7;
}

@end