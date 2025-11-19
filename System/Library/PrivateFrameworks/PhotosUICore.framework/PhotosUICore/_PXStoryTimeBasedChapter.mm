@interface _PXStoryTimeBasedChapter
- (NSCopying)identifier;
- (NSDateInterval)extendedDateIntervalForComparisonWithAssetDates;
- (NSString)diagnosticDescription;
- (_PXStoryTimeBasedChapter)initWithDateInterval:(id)a3 firstAssetLocalIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compareStartDateTo:(id)a3;
@end

@implementation _PXStoryTimeBasedChapter

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_PXStoryTimeBasedChapter *)self dateInterval];
  v6 = [(_PXStoryTimeBasedChapter *)self firstAssetLocalIdentifier];
  v7 = [v4 initWithDateInterval:v5 firstAssetLocalIdentifier:v6];

  v8 = [(_PXStoryTimeBasedChapter *)self localizedTitle];
  [v7 setLocalizedTitle:v8];

  v9 = [(_PXStoryTimeBasedChapter *)self localizedSubtitle];
  [v7 setLocalizedSubtitle:v9];

  return v7;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(_PXStoryTimeBasedChapter *)self identifier];
  v5 = [(_PXStoryTimeBasedChapter *)self localizedTitle];
  v6 = [(_PXStoryTimeBasedChapter *)self localizedSubtitle];
  v7 = [(_PXStoryTimeBasedChapter *)self dateInterval];
  v8 = [v3 initWithFormat:@"{ id=%@ title=“%@” subtitle=“%@” dateInterval=%@ }", v4, v5, v6, v7];

  return v8;
}

- (NSCopying)identifier
{
  v2 = [(_PXStoryTimeBasedChapter *)self dateInterval];
  v3 = [v2 startDate];

  return v3;
}

- (NSDateInterval)extendedDateIntervalForComparisonWithAssetDates
{
  v2 = [(_PXStoryTimeBasedChapter *)self dateInterval];
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = [v2 startDate];
  v5 = [v4 dateByAddingTimeInterval:-0.2];
  [v2 duration];
  v7 = [v3 initWithStartDate:v5 duration:v6 + 0.4];

  return v7;
}

- (int64_t)compareStartDateTo:(id)a3
{
  v4 = a3;
  v5 = [(_PXStoryTimeBasedChapter *)self dateInterval];
  v6 = [v5 startDate];
  v7 = [v4 dateInterval];

  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (_PXStoryTimeBasedChapter)initWithDateInterval:(id)a3 firstAssetLocalIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _PXStoryTimeBasedChapter;
  v9 = [(_PXStoryTimeBasedChapter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateInterval, a3);
    v11 = [v8 copy];
    firstAssetLocalIdentifier = v10->_firstAssetLocalIdentifier;
    v10->_firstAssetLocalIdentifier = v11;
  }

  return v10;
}

@end