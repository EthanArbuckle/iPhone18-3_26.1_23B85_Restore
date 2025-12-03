@interface USExemptApplication
- (BOOL)_validateBudget:(id)budget andEvent:(id)event error:(id *)error;
- (BOOL)validateBudget:(id *)budget error:(id *)error;
- (BOOL)validateEvent:(id *)event error:(id *)error;
@end

@implementation USExemptApplication

- (BOOL)validateBudget:(id *)budget error:(id *)error
{
  v6 = *budget;
  event = [(USExemptApplication *)self event];
  LOBYTE(error) = [(USExemptApplication *)self _validateBudget:v6 andEvent:event error:error];

  return error;
}

- (BOOL)validateEvent:(id *)event error:(id *)error
{
  budget = [(USExemptApplication *)self budget];
  LOBYTE(error) = [(USExemptApplication *)self _validateBudget:budget andEvent:*event error:error];

  return error;
}

- (BOOL)_validateBudget:(id)budget andEvent:(id)event error:(id *)error
{
  v5 = event != 0;
  v6 = budget == 0;
  v7 = v6 ^ v5;
  if (v6 != v5)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"USExemptApplication.m" lineNumber:31 description:@"Either budget or event must be non-nil!"];

    if (error)
    {
      *error = [NSError errorWithDomain:NSCocoaErrorDomain code:1024 userInfo:0];
    }
  }

  return v7 ^ 1;
}

@end