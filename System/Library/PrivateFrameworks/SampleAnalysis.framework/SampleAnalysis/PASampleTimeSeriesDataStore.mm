@interface PASampleTimeSeriesDataStore
- (PASampleTimeSeriesDataStore)initWithCoder:(id)coder;
- (PASampleTimeSeriesDataStore)initWithSampleStore:(id)store;
@end

@implementation PASampleTimeSeriesDataStore

- (PASampleTimeSeriesDataStore)initWithSampleStore:(id)store
{
  v7.receiver = self;
  v7.super_class = PASampleTimeSeriesDataStore;
  v4 = [(PASampleTimeSeriesDataStore *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_sampleStore, store);
  }

  return v5;
}

- (PASampleTimeSeriesDataStore)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = PASampleTimeSeriesDataStore;
  v4 = [(PASampleTimeSeriesDataStore *)&v9 init];
  if (v4)
  {
    v5 = [[SASampleStore alloc] initWithCoder:coder];
    if (!v5)
    {
      v7 = 0;
      goto LABEL_6;
    }

    sampleStore = v4->_sampleStore;
    v4->_sampleStore = v5;
  }

  v7 = v4;
LABEL_6:

  return v7;
}

@end