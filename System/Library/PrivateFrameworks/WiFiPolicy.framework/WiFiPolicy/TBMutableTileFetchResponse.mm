@interface TBMutableTileFetchResponse
- (TBMutableTileFetchResponse)init;
- (void)addResponse:(id)a3;
@end

@implementation TBMutableTileFetchResponse

- (TBMutableTileFetchResponse)init
{
  v6.receiver = self;
  v6.super_class = TBMutableTileFetchResponse;
  v2 = [(TBMutableTileFetchResponse *)&v6 init];
  v3 = [MEMORY[0x277CBEB58] set];
  mutableTiles = v2->_mutableTiles;
  v2->_mutableTiles = v3;

  return v2;
}

- (void)addResponse:(id)a3
{
  v8 = a3;
  v4 = [v8 tiles];

  if (v4)
  {
    mutableTiles = self->_mutableTiles;
    v6 = [v8 tiles];
    v7 = [v6 allObjects];
    [(NSMutableSet *)mutableTiles addObjectsFromArray:v7];
  }
}

@end