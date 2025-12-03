@interface PLMediaAnalysisEmbeddingSearchOptions
- (PLMediaAnalysisEmbeddingSearchOptions)initWithResultLimit:(int)limit;
@end

@implementation PLMediaAnalysisEmbeddingSearchOptions

- (PLMediaAnalysisEmbeddingSearchOptions)initWithResultLimit:(int)limit
{
  v9.receiver = self;
  v9.super_class = PLMediaAnalysisEmbeddingSearchOptions;
  v4 = [(PLMediaAnalysisEmbeddingSearchOptions *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_resultLimit = limit;
    assetUUIDsForPrefilter = v4->_assetUUIDsForPrefilter;
    v4->_assetUUIDsForPrefilter = 0;

    v5->_fullScan = 0;
    numConcurrentReaders = v5->_numConcurrentReaders;
    v5->_numConcurrentReaders = &unk_1F0FBEE60;
  }

  return v5;
}

@end