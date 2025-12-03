@interface SPCoreSpotlightIndexerTask
- (SPCoreSpotlightIndexerTask)initWithIndexJob:(id)job indexers:(id)indexers;
@end

@implementation SPCoreSpotlightIndexerTask

- (SPCoreSpotlightIndexerTask)initWithIndexJob:(id)job indexers:(id)indexers
{
  jobCopy = job;
  indexersCopy = indexers;
  v12.receiver = self;
  v12.super_class = SPCoreSpotlightIndexerTask;
  v9 = [(SPCoreSpotlightIndexerTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_job, job);
    objc_storeStrong(&v10->_indexers, indexers);
  }

  return v10;
}

@end