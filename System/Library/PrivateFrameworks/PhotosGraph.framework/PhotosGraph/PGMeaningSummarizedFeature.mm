@interface PGMeaningSummarizedFeature
- (PGMeaningSummarizedFeature)initWithIntervalsPresent:(id)present isMandatoryForKeyAsset:(BOOL)asset meaningLabel:(id)label;
@end

@implementation PGMeaningSummarizedFeature

- (PGMeaningSummarizedFeature)initWithIntervalsPresent:(id)present isMandatoryForKeyAsset:(BOOL)asset meaningLabel:(id)label
{
  presentCopy = present;
  labelCopy = label;
  v15.receiver = self;
  v15.super_class = PGMeaningSummarizedFeature;
  v10 = [(PGMeaningSummarizedFeature *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 3;
    v12 = PGSummarizedFeatureConsolidatedDateIntervals(presentCopy);
    intervalsPresent = v11->_intervalsPresent;
    v11->_intervalsPresent = v12;

    v11->_isMandatoryForKeyAsset = asset;
    objc_storeStrong(&v11->_meaningLabel, label);
  }

  return v11;
}

@end