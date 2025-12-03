@interface PGHolidayDateSummarizedFeature
- (PGHolidayDateSummarizedFeature)initWithIntervalsPresent:(id)present isMandatoryForKeyAsset:(BOOL)asset holidayName:(id)name;
@end

@implementation PGHolidayDateSummarizedFeature

- (PGHolidayDateSummarizedFeature)initWithIntervalsPresent:(id)present isMandatoryForKeyAsset:(BOOL)asset holidayName:(id)name
{
  presentCopy = present;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = PGHolidayDateSummarizedFeature;
  v10 = [(PGHolidayDateSummarizedFeature *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 5;
    v12 = PGSummarizedFeatureConsolidatedDateIntervals(presentCopy);
    intervalsPresent = v11->_intervalsPresent;
    v11->_intervalsPresent = v12;

    v11->_isMandatoryForKeyAsset = asset;
    objc_storeStrong(&v11->_holidayName, name);
  }

  return v11;
}

@end