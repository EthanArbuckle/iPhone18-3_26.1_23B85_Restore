@interface PGPublicEventSummarizedFeature
- (PGPublicEventSummarizedFeature)initWithIntervalsPresent:(id)present isMandatoryForKeyAsset:(BOOL)asset publicEventLabel:(id)label;
@end

@implementation PGPublicEventSummarizedFeature

- (PGPublicEventSummarizedFeature)initWithIntervalsPresent:(id)present isMandatoryForKeyAsset:(BOOL)asset publicEventLabel:(id)label
{
  presentCopy = present;
  labelCopy = label;
  v15.receiver = self;
  v15.super_class = PGPublicEventSummarizedFeature;
  v10 = [(PGPublicEventSummarizedFeature *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 4;
    v12 = PGSummarizedFeatureConsolidatedDateIntervals(presentCopy);
    intervalsPresent = v11->_intervalsPresent;
    v11->_intervalsPresent = v12;

    v11->_isMandatoryForKeyAsset = asset;
    objc_storeStrong(&v11->_publicEventLabel, label);
  }

  return v11;
}

@end