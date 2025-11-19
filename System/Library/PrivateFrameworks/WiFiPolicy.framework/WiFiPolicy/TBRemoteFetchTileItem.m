@interface TBRemoteFetchTileItem
- (TBRemoteFetchTileItem)initWithEmptyTileKey:(unint64_t)a3 etag:(id)a4 error:(id)a5;
- (TBRemoteFetchTileItem)initWithTile:(id)a3 status:(unint64_t)a4 etag:(id)a5 error:(id)a6;
@end

@implementation TBRemoteFetchTileItem

- (TBRemoteFetchTileItem)initWithTile:(id)a3 status:(unint64_t)a4 etag:(id)a5 error:(id)a6
{
  v10 = a6;
  v23.receiver = self;
  v23.super_class = TBRemoteFetchTileItem;
  v11 = a5;
  v12 = a3;
  v13 = [(TBRemoteFetchTileItem *)&v23 init];
  v14 = [v12 ess];
  networks = v13->_networks;
  v13->_networks = v14;

  v13->_status = a4;
  v16 = [TBFetchedTile alloc];
  v17 = [v12 tileKey];

  v18 = [MEMORY[0x277CBEAA8] date];
  v19 = [(TBFetchedTile *)v16 initWithKey:v17 etag:v11 created:v18];

  tile = v13->_tile;
  v13->_tile = v19;

  error = v13->_error;
  v13->_error = v10;

  return v13;
}

- (TBRemoteFetchTileItem)initWithEmptyTileKey:(unint64_t)a3 etag:(id)a4 error:(id)a5
{
  v8 = a5;
  v17.receiver = self;
  v17.super_class = TBRemoteFetchTileItem;
  v9 = a4;
  v10 = [(TBRemoteFetchTileItem *)&v17 init];
  v10->_status = 3;
  v11 = [TBFetchedTile alloc];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [(TBFetchedTile *)v11 initWithKey:a3 etag:v9 created:v12];

  tile = v10->_tile;
  v10->_tile = v13;

  error = v10->_error;
  v10->_error = v8;

  return v10;
}

@end