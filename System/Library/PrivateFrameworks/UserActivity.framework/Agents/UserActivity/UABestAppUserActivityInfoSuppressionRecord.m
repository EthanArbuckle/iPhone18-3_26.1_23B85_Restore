@interface UABestAppUserActivityInfoSuppressionRecord
- (id)description;
@end

@implementation UABestAppUserActivityInfoSuppressionRecord

- (id)description
{
  v3 = [(UABestAppUserActivityInfoSuppressionRecord *)self itemUUID];
  v4 = [(UABestAppUserActivityInfoSuppressionRecord *)self hardSupressUntil];
  v5 = [(UABestAppUserActivityInfoSuppressionRecord *)self supressUntil];
  v6 = [(UABestAppUserActivityInfoSuppressionRecord *)self lastInterestingTime];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"supressionRec(%@ hard=%@ until=%@ (lastInterestingTime=%@)"), v3, v4, v5, v6;

  return v7;
}

@end