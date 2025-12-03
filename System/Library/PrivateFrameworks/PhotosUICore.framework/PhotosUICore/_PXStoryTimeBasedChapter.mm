@interface _PXStoryTimeBasedChapter
- (NSCopying)identifier;
- (NSDateInterval)extendedDateIntervalForComparisonWithAssetDates;
- (NSString)diagnosticDescription;
- (_PXStoryTimeBasedChapter)initWithDateInterval:(id)interval firstAssetLocalIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compareStartDateTo:(id)to;
@end

@implementation _PXStoryTimeBasedChapter

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  dateInterval = [(_PXStoryTimeBasedChapter *)self dateInterval];
  firstAssetLocalIdentifier = [(_PXStoryTimeBasedChapter *)self firstAssetLocalIdentifier];
  v7 = [v4 initWithDateInterval:dateInterval firstAssetLocalIdentifier:firstAssetLocalIdentifier];

  localizedTitle = [(_PXStoryTimeBasedChapter *)self localizedTitle];
  [v7 setLocalizedTitle:localizedTitle];

  localizedSubtitle = [(_PXStoryTimeBasedChapter *)self localizedSubtitle];
  [v7 setLocalizedSubtitle:localizedSubtitle];

  return v7;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(_PXStoryTimeBasedChapter *)self identifier];
  localizedTitle = [(_PXStoryTimeBasedChapter *)self localizedTitle];
  localizedSubtitle = [(_PXStoryTimeBasedChapter *)self localizedSubtitle];
  dateInterval = [(_PXStoryTimeBasedChapter *)self dateInterval];
  v8 = [v3 initWithFormat:@"{ id=%@ title=“%@” subtitle=“%@” dateInterval=%@ }", identifier, localizedTitle, localizedSubtitle, dateInterval];

  return v8;
}

- (NSCopying)identifier
{
  dateInterval = [(_PXStoryTimeBasedChapter *)self dateInterval];
  startDate = [dateInterval startDate];

  return startDate;
}

- (NSDateInterval)extendedDateIntervalForComparisonWithAssetDates
{
  dateInterval = [(_PXStoryTimeBasedChapter *)self dateInterval];
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate = [dateInterval startDate];
  v5 = [startDate dateByAddingTimeInterval:-0.2];
  [dateInterval duration];
  v7 = [v3 initWithStartDate:v5 duration:v6 + 0.4];

  return v7;
}

- (int64_t)compareStartDateTo:(id)to
{
  toCopy = to;
  dateInterval = [(_PXStoryTimeBasedChapter *)self dateInterval];
  startDate = [dateInterval startDate];
  dateInterval2 = [toCopy dateInterval];

  startDate2 = [dateInterval2 startDate];
  v9 = [startDate compare:startDate2];

  return v9;
}

- (_PXStoryTimeBasedChapter)initWithDateInterval:(id)interval firstAssetLocalIdentifier:(id)identifier
{
  intervalCopy = interval;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _PXStoryTimeBasedChapter;
  v9 = [(_PXStoryTimeBasedChapter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateInterval, interval);
    v11 = [identifierCopy copy];
    firstAssetLocalIdentifier = v10->_firstAssetLocalIdentifier;
    v10->_firstAssetLocalIdentifier = v11;
  }

  return v10;
}

@end