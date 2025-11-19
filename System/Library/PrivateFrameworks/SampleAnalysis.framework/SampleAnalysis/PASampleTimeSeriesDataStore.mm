@interface PASampleTimeSeriesDataStore
- (PASampleTimeSeriesDataStore)initWithCoder:(id)a3;
- (PASampleTimeSeriesDataStore)initWithSampleStore:(id)a3;
@end

@implementation PASampleTimeSeriesDataStore

- (PASampleTimeSeriesDataStore)initWithSampleStore:(id)a3
{
  v7.receiver = self;
  v7.super_class = PASampleTimeSeriesDataStore;
  v4 = [(PASampleTimeSeriesDataStore *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_sampleStore, a3);
  }

  return v5;
}

- (PASampleTimeSeriesDataStore)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = PASampleTimeSeriesDataStore;
  v4 = [(PASampleTimeSeriesDataStore *)&v9 init];
  if (v4)
  {
    v5 = [[SASampleStore alloc] initWithCoder:a3];
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