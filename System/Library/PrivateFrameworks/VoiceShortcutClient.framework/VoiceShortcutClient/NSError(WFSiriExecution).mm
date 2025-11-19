@interface NSError(WFSiriExecution)
- (BOOL)wf_isRequiresShortcutsJrError;
@end

@implementation NSError(WFSiriExecution)

- (BOOL)wf_isRequiresShortcutsJrError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:@"WFSiriExecutionErrorDomain"])
  {
    v3 = [a1 code] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end