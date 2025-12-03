@interface TBLocalFetchTileItem
- (TBLocalFetchTileItem)initWithTile:(id)tile error:(id)error;
@end

@implementation TBLocalFetchTileItem

- (TBLocalFetchTileItem)initWithTile:(id)tile error:(id)error
{
  v16.receiver = self;
  v16.super_class = TBLocalFetchTileItem;
  tileCopy = tile;
  v5 = [(TBLocalFetchTileItem *)&v16 init];
  v5->_status = 1;
  v6 = [TBFetchedTile alloc];
  v7 = [tileCopy key];
  etag = [tileCopy etag];
  created = [tileCopy created];
  v10 = [(TBFetchedTile *)v6 initWithKey:v7 etag:etag created:created];
  tile = v5->_tile;
  v5->_tile = v10;

  networks = [tileCopy networks];

  allObjects = [networks allObjects];
  networks = v5->_networks;
  v5->_networks = allObjects;

  return v5;
}

@end