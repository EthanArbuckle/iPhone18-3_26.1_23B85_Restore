@interface PXVideoContentProviderLoadingResult
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (PXVideoContentProviderLoadingResult)initWithPlayerItem:(id)a3 url:(id)a4 timeRange:(id *)a5 timeRangeMapper:(id)a6 error:(id)a7 priority:(int64_t)a8 description:(id)a9;
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
  v6 = [(PXVideoContentProviderLoadingResult *)self playerItem];
  v7 = [(PXVideoContentProviderLoadingResult *)self url];
  v8 = [(PXVideoContentProviderLoadingResult *)self error];
  v9 = [v3 stringWithFormat:@"%@, TimeRange: %@, PlayerItem: %@, URL: %@, Error: %@, Priority: %ld", v4, v5, v6, v7, v8, -[PXVideoContentProviderLoadingResult priority](self, "priority")];

  return v9;
}

- (PXVideoContentProviderLoadingResult)initWithPlayerItem:(id)a3 url:(id)a4 timeRange:(id *)a5 timeRangeMapper:(id)a6 error:(id)a7 priority:(int64_t)a8 description:(id)a9
{
  v15 = a3;
  v16 = a4;
  v28 = a6;
  v17 = a7;
  v18 = a9;
  v29.receiver = self;
  v29.super_class = PXVideoContentProviderLoadingResult;
  v19 = [(PXVideoContentProviderLoadingResult *)&v29 init];
  if (v19)
  {
    if (!v15 && !v16 && !v17)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:v19 file:@"PXVideoContentProvider.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"playerItem || url || error"}];
    }

    objc_storeStrong(v19 + 1, a3);
    objc_storeStrong(v19 + 2, a4);
    v20 = *&a5->var0.var0;
    v21 = *&a5->var0.var3;
    *(v19 + 88) = *&a5->var1.var1;
    *(v19 + 72) = v21;
    *(v19 + 56) = v20;
    objc_storeStrong(v19 + 3, a7);
    *(v19 + 4) = a8;
    v22 = [v18 copy];
    v23 = *(v19 + 5);
    *(v19 + 5) = v22;

    objc_storeStrong(v19 + 6, a6);
  }

  return v19;
}

@end