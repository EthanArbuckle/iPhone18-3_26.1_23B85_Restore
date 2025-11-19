@interface USBudgetedApplication
- (BOOL)_validateBudget:(id)a3 andEvent:(id)a4 error:(id *)a5;
- (BOOL)validateBudget:(id *)a3 error:(id *)a4;
- (BOOL)validateEvent:(id *)a3 error:(id *)a4;
@end

@implementation USBudgetedApplication

- (BOOL)validateBudget:(id *)a3 error:(id *)a4
{
  v6 = *a3;
  v7 = [(USBudgetedApplication *)self event];
  LOBYTE(a4) = [(USBudgetedApplication *)self _validateBudget:v6 andEvent:v7 error:a4];

  return a4;
}

- (BOOL)validateEvent:(id *)a3 error:(id *)a4
{
  v7 = [(USBudgetedApplication *)self budget];
  LOBYTE(a4) = [(USBudgetedApplication *)self _validateBudget:v7 andEvent:*a3 error:a4];

  return a4;
}

- (BOOL)_validateBudget:(id)a3 andEvent:(id)a4 error:(id *)a5
{
  v5 = a4 != 0;
  v6 = a3 == 0;
  v7 = v6 ^ v5;
  if (v6 != v5)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"USBudgetedApplication.m" lineNumber:31 description:@"Either budget or event must be non-nil!"];

    if (a5)
    {
      *a5 = [NSError errorWithDomain:NSCocoaErrorDomain code:1024 userInfo:0];
    }
  }

  return v7 ^ 1;
}

@end