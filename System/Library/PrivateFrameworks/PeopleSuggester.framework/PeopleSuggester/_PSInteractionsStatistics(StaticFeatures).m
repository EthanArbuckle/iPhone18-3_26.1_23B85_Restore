@interface _PSInteractionsStatistics(StaticFeatures)
@end

@implementation _PSInteractionsStatistics(StaticFeatures)

- (void)computeMaxIoUOfSharesOfPeopleInPhotoForPeopleDetectedInPhoto:()StaticFeatures .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_ERROR, "IoU – union of shared people sets had cardinality zero", buf, 2u);
}

@end