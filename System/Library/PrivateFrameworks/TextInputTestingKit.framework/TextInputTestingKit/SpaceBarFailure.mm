@interface SpaceBarFailure
- (BOOL)doesMatchResult:(id)result;
@end

@implementation SpaceBarFailure

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
    v8 = [v5 hasSuffix:@" "] ^ 1;
  }

  return v8;
}

@end