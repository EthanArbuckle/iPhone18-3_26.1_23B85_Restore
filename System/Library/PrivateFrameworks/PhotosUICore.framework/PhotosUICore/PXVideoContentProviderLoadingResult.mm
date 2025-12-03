@interface PXVideoContentProviderLoadingResult
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (PXVideoContentProviderLoadingResult)initWithPlayerItem:(id)item url:(id)url timeRange:(id *)range timeRangeMapper:(id)mapper error:(id)error priority:(int64_t)priority description:(id)description;
- (id)description;
@end

@implementation PXVideoContentProviderLoadingResult

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  v3 = *&self[1].var1.var0;
  *&retstr->var0.var0 = *&self[1].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var3;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = PXVideoContentProviderLoadingResult;
  v4 = [(PXVideoContentProviderLoadingResult *)&v12 description];
  [(PXVideoContentProviderLoadingResult *)self timeRange];
  v5 = PXCMTimeRangeDescription(v11);
  playerItem = [(PXVideoContentProviderLoadingResult *)self playerItem];
  v7 = [(PXVideoContentProviderLoadingResult *)self url];
  error = [(PXVideoContentProviderLoadingResult *)self error];
  v9 = [v3 stringWithFormat:@"%@, TimeRange: %@, PlayerItem: %@, URL: %@, Error: %@, Priority: %ld", v4, v5, playerItem, v7, error, -[PXVideoContentProviderLoadingResult priority](self, "priority")];

  return v9;
}

- (PXVideoContentProviderLoadingResult)initWithPlayerItem:(id)item url:(id)url timeRange:(id *)range timeRangeMapper:(id)mapper error:(id)error priority:(int64_t)priority description:(id)description
{
  itemCopy = item;
  urlCopy = url;
  mapperCopy = mapper;
  errorCopy = error;
  descriptionCopy = description;
  v29.receiver = self;
  v29.super_class = PXVideoContentProviderLoadingResult;
  v19 = [(PXVideoContentProviderLoadingResult *)&v29 init];
  if (v19)
  {
    if (!itemCopy && !urlCopy && !errorCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v19 file:@"PXVideoContentProvider.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"playerItem || url || error"}];
    }

    objc_storeStrong(v19 + 1, item);
    objc_storeStrong(v19 + 2, url);
    v20 = *&range->var0.var0;
    v21 = *&range->var0.var3;
    *(v19 + 88) = *&range->var1.var1;
    *(v19 + 72) = v21;
    *(v19 + 56) = v20;
    objc_storeStrong(v19 + 3, error);
    *(v19 + 4) = priority;
    v22 = [descriptionCopy copy];
    v23 = *(v19 + 5);
    *(v19 + 5) = v22;

    objc_storeStrong(v19 + 6, mapper);
  }

  return v19;
}

@end