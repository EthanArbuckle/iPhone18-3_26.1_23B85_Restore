@interface GenericFailure
- (BOOL)doesMatchResult:(id)result;
@end

@implementation GenericFailure

- (BOOL)doesMatchResult:(id)result
{
  resultCopy = result;
  corrected = [resultCopy corrected];
  v5 = [corrected componentsJoinedByString:&stru_287EC4808];

  intended = [resultCopy intended];

  v7 = [intended componentsJoinedByString:&stru_287EC4808];

  LOBYTE(intended) = [v5 isEqualToString:v7];
  return intended;
}

@end