@interface AutocorrectionTestHarness_Typology
- (id)makeErrorForTest:(id)test;
@end

@implementation AutocorrectionTestHarness_Typology

- (id)makeErrorForTest:(id)test
{
  testCopy = test;
  input = [testCopy input];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    touches = [testCopy touches];
  }

  else
  {
    touches = 0;
  }

  return touches;
}

@end