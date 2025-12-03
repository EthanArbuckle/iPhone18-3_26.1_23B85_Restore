@interface HitTestFailure
- (BOOL)doesMatchResult:(id)result;
@end

@implementation HitTestFailure

- (BOOL)doesMatchResult:(id)result
{
  resultCopy = result;
  inserted = [resultCopy inserted];
  v5 = [inserted componentsJoinedByString:&stru_287EC4808];

  intended = [resultCopy intended];

  v7 = [intended componentsJoinedByString:&stru_287EC4808];

  LOBYTE(intended) = [v5 isEqualToString:v7];
  return intended;
}

@end