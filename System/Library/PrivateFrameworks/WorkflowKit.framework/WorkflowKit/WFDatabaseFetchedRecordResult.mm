@interface WFDatabaseFetchedRecordResult
- (NSString)reason;
- (WFDatabaseFetchedRecordResult)initWithResultType:(unint64_t)a3 reason:(id)a4;
@end

@implementation WFDatabaseFetchedRecordResult

- (NSString)reason
{
  sub_1CA68BBA0();
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (WFDatabaseFetchedRecordResult)initWithResultType:(unint64_t)a3 reason:(id)a4
{
  if (a4)
  {
    v5 = sub_1CA94C3A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return sub_1CA68BD48(a3, v5, v7, &OBJC_IVAR___WFDatabaseFetchedRecordResult_resultType, &OBJC_IVAR___WFDatabaseFetchedRecordResult_reason, off_1E836E1A8);
}

@end