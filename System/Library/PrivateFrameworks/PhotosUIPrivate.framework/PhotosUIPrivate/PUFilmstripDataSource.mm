@interface PUFilmstripDataSource
- ($3EB3F8852E00619D46CABBEC9C374A75)timeRangeRepresentedByAssetAtIndex:(SEL)a3;
- (PUFilmstripDataSource)initWithAsset:(id)a3 numberOfIndexes:(int64_t)a4 indicatorInfos:(id)a5;
- (double)_normalizedTimeForIndex:(int64_t)a3;
- (id)assetAtIndexPath:(id)a3;
- (int64_t)numberOfSubItemsAtIndexPath:(id)a3;
@end

@implementation PUFilmstripDataSource

- ($3EB3F8852E00619D46CABBEC9C374A75)timeRangeRepresentedByAssetAtIndex:(SEL)a3
{
  [(PUFilmstripDataSource *)self _normalizedTimeForIndex:a4];
  v7 = v6;
  memset(&v16, 0, sizeof(v16));
  v8 = [(PUFilmstripDataSource *)self asset];
  v9 = v8;
  if (v8)
  {
    [v8 duration];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  memset(&v15, 0, sizeof(v15));
  time = v16;
  CMTimeMultiplyByFloat64(&v15, &time, v7);
  memset(&time, 0, sizeof(time));
  v10 = [(PUFilmstripDataSource *)self numberOfIndexes];
  start = v16;
  CMTimeMultiplyByRatio(&time, &start, 1, v10);
  start = v15;
  v12 = time;
  return CMTimeRangeMake(retstr, &start, &v12);
}

- (id)assetAtIndexPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:550 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v6 = [(NSMutableDictionary *)self->_assetByIndexPath objectForKeyedSubscript:v5];
  if (!v6)
  {
    -[PUFilmstripDataSource _normalizedTimeForIndex:](self, "_normalizedTimeForIndex:", [v5 indexAtPosition:0]);
    v8 = v7;
    v9 = [PUFilmstripAsset alloc];
    v10 = [(PUFilmstripDataSource *)self asset];
    v6 = [(PUFilmstripAsset *)v9 initWithNormalizedTime:v10 asset:v8];

    [(NSMutableDictionary *)self->_assetByIndexPath setObject:v6 forKeyedSubscript:v5];
    [(NSMapTable *)self->_indexPathByAsset setObject:v5 forKey:v6];
  }

  return v6;
}

- (double)_normalizedTimeForIndex:(int64_t)a3
{
  numberOfIndexes = self->_numberOfIndexes;
  if (numberOfIndexes <= a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"index < maxIndex"}];
  }

  result = fmax(a3 / numberOfIndexes, 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:534 description:{@"invalid indexPath %@", v5}];

    numberOfIndexes = 0;
  }

  else
  {
    numberOfIndexes = self->_numberOfIndexes;
  }

  return numberOfIndexes;
}

- (PUFilmstripDataSource)initWithAsset:(id)a3 numberOfIndexes:(int64_t)a4 indicatorInfos:(id)a5
{
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PUFilmstripDataSource;
  v11 = [(PUTilingDataSource *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, a3);
    v13 = [v10 copy];
    indicatorInfos = v12->_indicatorInfos;
    v12->_indicatorInfos = v13;

    v12->_numberOfIndexes = a4;
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetByIndexPath = v12->_assetByIndexPath;
    v12->_assetByIndexPath = v15;

    v17 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    indexPathByAsset = v12->_indexPathByAsset;
    v12->_indexPathByAsset = v17;
  }

  return v12;
}

@end