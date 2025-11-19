@interface GenericFailure
- (BOOL)doesMatchResult:(id)a3;
@end

@implementation GenericFailure

- (BOOL)doesMatchResult:(id)a3
{
  v3 = a3;
  v4 = [v3 corrected];
  v5 = [v4 componentsJoinedByString:&stru_287EC4808];

  v6 = [v3 intended];

  v7 = [v6 componentsJoinedByString:&stru_287EC4808];

  LOBYTE(v6) = [v5 isEqualToString:v7];
  return v6;
}

@end