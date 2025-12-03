@interface NSError(WFSiriExecution)
- (BOOL)wf_isRequiresShortcutsJrError;
@end

@implementation NSError(WFSiriExecution)

- (BOOL)wf_isRequiresShortcutsJrError
{
  domain = [self domain];
  if ([domain isEqualToString:@"WFSiriExecutionErrorDomain"])
  {
    v3 = [self code] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end