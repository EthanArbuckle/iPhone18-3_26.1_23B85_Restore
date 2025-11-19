@interface PGMeaningSummarizedFeature
- (PGMeaningSummarizedFeature)initWithIntervalsPresent:(id)a3 isMandatoryForKeyAsset:(BOOL)a4 meaningLabel:(id)a5;
@end

@implementation PGMeaningSummarizedFeature

- (PGMeaningSummarizedFeature)initWithIntervalsPresent:(id)a3 isMandatoryForKeyAsset:(BOOL)a4 meaningLabel:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = PGMeaningSummarizedFeature;
  v10 = [(PGMeaningSummarizedFeature *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 3;
    v12 = PGSummarizedFeatureConsolidatedDateIntervals(v8);
    intervalsPresent = v11->_intervalsPresent;
    v11->_intervalsPresent = v12;

    v11->_isMandatoryForKeyAsset = a4;
    objc_storeStrong(&v11->_meaningLabel, a5);
  }

  return v11;
}

@end