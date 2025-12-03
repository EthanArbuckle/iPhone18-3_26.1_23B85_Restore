@interface UABestAppUserActivityInfoSuppressionRecord
- (id)description;
@end

@implementation UABestAppUserActivityInfoSuppressionRecord

- (id)description
{
  itemUUID = [(UABestAppUserActivityInfoSuppressionRecord *)self itemUUID];
  hardSupressUntil = [(UABestAppUserActivityInfoSuppressionRecord *)self hardSupressUntil];
  supressUntil = [(UABestAppUserActivityInfoSuppressionRecord *)self supressUntil];
  lastInterestingTime = [(UABestAppUserActivityInfoSuppressionRecord *)self lastInterestingTime];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"supressionRec(%@ hard=%@ until=%@ (lastInterestingTime=%@)"), itemUUID, hardSupressUntil, supressUntil, lastInterestingTime;

  return v7;
}

@end