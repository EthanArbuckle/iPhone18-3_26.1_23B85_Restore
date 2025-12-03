@interface TBRemoteFetchTileItem
- (TBRemoteFetchTileItem)initWithEmptyTileKey:(unint64_t)key etag:(id)etag error:(id)error;
- (TBRemoteFetchTileItem)initWithTile:(id)tile status:(unint64_t)status etag:(id)etag error:(id)error;
@end

@implementation TBRemoteFetchTileItem

- (TBRemoteFetchTileItem)initWithTile:(id)tile status:(unint64_t)status etag:(id)etag error:(id)error
{
  errorCopy = error;
  v23.receiver = self;
  v23.super_class = TBRemoteFetchTileItem;
  etagCopy = etag;
  tileCopy = tile;
  v13 = [(TBRemoteFetchTileItem *)&v23 init];
  v14 = [tileCopy ess];
  networks = v13->_networks;
  v13->_networks = v14;

  v13->_status = status;
  v16 = [TBFetchedTile alloc];
  tileKey = [tileCopy tileKey];

  date = [MEMORY[0x277CBEAA8] date];
  v19 = [(TBFetchedTile *)v16 initWithKey:tileKey etag:etagCopy created:date];

  tile = v13->_tile;
  v13->_tile = v19;

  error = v13->_error;
  v13->_error = errorCopy;

  return v13;
}

- (TBRemoteFetchTileItem)initWithEmptyTileKey:(unint64_t)key etag:(id)etag error:(id)error
{
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = TBRemoteFetchTileItem;
  etagCopy = etag;
  v10 = [(TBRemoteFetchTileItem *)&v17 init];
  v10->_status = 3;
  v11 = [TBFetchedTile alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [(TBFetchedTile *)v11 initWithKey:key etag:etagCopy created:date];

  tile = v10->_tile;
  v10->_tile = v13;

  error = v10->_error;
  v10->_error = errorCopy;

  return v10;
}

@end