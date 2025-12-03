@interface PUFilmstripDataSource
- ($3EB3F8852E00619D46CABBEC9C374A75)timeRangeRepresentedByAssetAtIndex:(SEL)index;
- (PUFilmstripDataSource)initWithAsset:(id)asset numberOfIndexes:(int64_t)indexes indicatorInfos:(id)infos;
- (double)_normalizedTimeForIndex:(int64_t)index;
- (id)assetAtIndexPath:(id)path;
- (int64_t)numberOfSubItemsAtIndexPath:(id)path;
@end

@implementation PUFilmstripDataSource

- ($3EB3F8852E00619D46CABBEC9C374A75)timeRangeRepresentedByAssetAtIndex:(SEL)index
{
  [(PUFilmstripDataSource *)self _normalizedTimeForIndex:a4];
  v7 = v6;
  memset(&v16, 0, sizeof(v16));
  asset = [(PUFilmstripDataSource *)self asset];
  v9 = asset;
  if (asset)
  {
    [asset duration];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  memset(&v15, 0, sizeof(v15));
  time = v16;
  CMTimeMultiplyByFloat64(&v15, &time, v7);
  memset(&time, 0, sizeof(time));
  numberOfIndexes = [(PUFilmstripDataSource *)self numberOfIndexes];
  start = v16;
  CMTimeMultiplyByRatio(&time, &start, 1, numberOfIndexes);
  start = v15;
  v12 = time;
  return CMTimeRangeMake(retstr, &start, &v12);
}

- (id)assetAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:550 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v6 = [(NSMutableDictionary *)self->_assetByIndexPath objectForKeyedSubscript:pathCopy];
  if (!v6)
  {
    -[PUFilmstripDataSource _normalizedTimeForIndex:](self, "_normalizedTimeForIndex:", [pathCopy indexAtPosition:0]);
    v8 = v7;
    v9 = [PUFilmstripAsset alloc];
    asset = [(PUFilmstripDataSource *)self asset];
    v6 = [(PUFilmstripAsset *)v9 initWithNormalizedTime:asset asset:v8];

    [(NSMutableDictionary *)self->_assetByIndexPath setObject:v6 forKeyedSubscript:pathCopy];
    [(NSMapTable *)self->_indexPathByAsset setObject:pathCopy forKey:v6];
  }

  return v6;
}

- (double)_normalizedTimeForIndex:(int64_t)index
{
  numberOfIndexes = self->_numberOfIndexes;
  if (numberOfIndexes <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"index < maxIndex"}];
  }

  result = fmax(index / numberOfIndexes, 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:534 description:{@"invalid indexPath %@", pathCopy}];

    numberOfIndexes = 0;
  }

  else
  {
    numberOfIndexes = self->_numberOfIndexes;
  }

  return numberOfIndexes;
}

- (PUFilmstripDataSource)initWithAsset:(id)asset numberOfIndexes:(int64_t)indexes indicatorInfos:(id)infos
{
  assetCopy = asset;
  infosCopy = infos;
  v20.receiver = self;
  v20.super_class = PUFilmstripDataSource;
  v11 = [(PUTilingDataSource *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, asset);
    v13 = [infosCopy copy];
    indicatorInfos = v12->_indicatorInfos;
    v12->_indicatorInfos = v13;

    v12->_numberOfIndexes = indexes;
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetByIndexPath = v12->_assetByIndexPath;
    v12->_assetByIndexPath = v15;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    indexPathByAsset = v12->_indexPathByAsset;
    v12->_indexPathByAsset = strongToStrongObjectsMapTable;
  }

  return v12;
}

@end