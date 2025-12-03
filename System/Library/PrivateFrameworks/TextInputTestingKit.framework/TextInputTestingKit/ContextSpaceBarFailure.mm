@interface ContextSpaceBarFailure
- (BOOL)doesMatchResult:(id)result;
@end

@implementation ContextSpaceBarFailure

- (BOOL)doesMatchResult:(id)result
{
  resultCopy = result;
  corrected = [resultCopy corrected];
  v5 = [corrected componentsJoinedByString:&stru_287EC4808];

  intended = [resultCopy intended];
  v7 = [intended componentsJoinedByString:&stru_287EC4808];

  if ([v5 isEqualToString:v7])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    context = [resultCopy context];
    v8 = [context hasSuffix:@" "] ^ 1;
  }

  return v8;
}

@end