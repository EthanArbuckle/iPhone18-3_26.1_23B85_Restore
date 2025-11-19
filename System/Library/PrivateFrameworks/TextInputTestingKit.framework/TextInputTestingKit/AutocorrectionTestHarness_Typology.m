@interface AutocorrectionTestHarness_Typology
- (id)makeErrorForTest:(id)a3;
@end

@implementation AutocorrectionTestHarness_Typology

- (id)makeErrorForTest:(id)a3
{
  v3 = a3;
  v4 = [v3 input];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 touches];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end