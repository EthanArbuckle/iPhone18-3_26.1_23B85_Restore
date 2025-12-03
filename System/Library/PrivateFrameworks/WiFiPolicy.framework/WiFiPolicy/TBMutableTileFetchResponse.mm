@interface TBMutableTileFetchResponse
- (TBMutableTileFetchResponse)init;
- (void)addResponse:(id)response;
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

- (void)addResponse:(id)response
{
  responseCopy = response;
  tiles = [responseCopy tiles];

  if (tiles)
  {
    mutableTiles = self->_mutableTiles;
    tiles2 = [responseCopy tiles];
    allObjects = [tiles2 allObjects];
    [(NSMutableSet *)mutableTiles addObjectsFromArray:allObjects];
  }
}

@end