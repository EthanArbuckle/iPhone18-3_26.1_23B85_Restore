@interface PGBusinessLocationSummarizedFeature
- (PGBusinessLocationSummarizedFeature)initWithIntervalsPresent:(id)present isMandatoryForKeyAsset:(BOOL)asset businessNode:(id)node;
@end

@implementation PGBusinessLocationSummarizedFeature

- (PGBusinessLocationSummarizedFeature)initWithIntervalsPresent:(id)present isMandatoryForKeyAsset:(BOOL)asset businessNode:(id)node
{
  presentCopy = present;
  nodeCopy = node;
  v15.receiver = self;
  v15.super_class = PGBusinessLocationSummarizedFeature;
  v10 = [(PGBusinessLocationSummarizedFeature *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 2;
    v12 = PGSummarizedFeatureConsolidatedDateIntervals(presentCopy);
    intervalsPresent = v11->_intervalsPresent;
    v11->_intervalsPresent = v12;

    v11->_isMandatoryForKeyAsset = asset;
    objc_storeStrong(&v11->_businessNode, node);
  }

  return v11;
}

@end