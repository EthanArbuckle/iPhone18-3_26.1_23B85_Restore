@interface ICSTodo(REMSaveRequestImporting)
- (__CFString)rem_nonNilSummary;
@end

@implementation ICSTodo(REMSaveRequestImporting)

- (__CFString)rem_nonNilSummary
{
  summary = [self summary];
  if (summary)
  {
    summary2 = [self summary];
  }

  else
  {
    summary2 = &stru_1F0D67F00;
  }

  return summary2;
}

@end