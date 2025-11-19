@interface TBLocalFetchTileItem
- (TBLocalFetchTileItem)initWithTile:(id)a3 error:(id)a4;
@end

@implementation TBLocalFetchTileItem

- (TBLocalFetchTileItem)initWithTile:(id)a3 error:(id)a4
{
  v16.receiver = self;
  v16.super_class = TBLocalFetchTileItem;
  v4 = a3;
  v5 = [(TBLocalFetchTileItem *)&v16 init];
  v5->_status = 1;
  v6 = [TBFetchedTile alloc];
  v7 = [v4 key];
  v8 = [v4 etag];
  v9 = [v4 created];
  v10 = [(TBFetchedTile *)v6 initWithKey:v7 etag:v8 created:v9];
  tile = v5->_tile;
  v5->_tile = v10;

  v12 = [v4 networks];

  v13 = [v12 allObjects];
  networks = v5->_networks;
  v5->_networks = v13;

  return v5;
}

@end