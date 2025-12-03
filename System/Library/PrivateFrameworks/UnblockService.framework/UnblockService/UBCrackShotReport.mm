@interface UBCrackShotReport
- (id)reportNamePrefix;
@end

@implementation UBCrackShotReport

- (id)reportNamePrefix
{
  v9.receiver = self;
  v9.super_class = UBCrackShotReport;
  reportNamePrefix = [(OSACrackShotReport *)&v9 reportNamePrefix];
  [(UBCrackShotReport *)self issueType];
  v4 = UBIssueTypeCopyDescription();
  v5 = v4;
  if (v4)
  {
    v6 = _UBCopySanitizedString(v4, 1, &stru_288046330);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unblock_%@_%@", v6, reportNamePrefix];

  return v7;
}

@end