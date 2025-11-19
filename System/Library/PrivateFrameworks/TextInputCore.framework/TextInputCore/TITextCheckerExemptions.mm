@interface TITextCheckerExemptions
- (BOOL)stringIsExemptFromChecker:(id)a3;
- (void)dealloc;
- (void)setAssertsObservers:(BOOL)a3;
@end

@implementation TITextCheckerExemptions

- (BOOL)stringIsExemptFromChecker:(id)a3
{
  v3 = a3;
  v4 = +[TITextCheckerExemptionsImpl sharedTextCheckerExemptionsImpl];
  v5 = [v4 stringIsExemptFromChecker:v3];

  return v5;
}

- (void)setAssertsObservers:(BOOL)a3
{
  if (self->_assertsObservers != a3)
  {
    v4 = a3;
    self->_assertsObservers = a3;
    v5 = +[TITextCheckerExemptionsImpl sharedTextCheckerExemptionsImpl];
    v6 = v5;
    if (v4)
    {
      [v5 addObserverAssertion];
    }

    else
    {
      [v5 removeObserverAssertion];
    }
  }
}

- (void)dealloc
{
  if (self->_assertsObservers)
  {
    v3 = +[TITextCheckerExemptionsImpl sharedTextCheckerExemptionsImpl];
    [v3 removeObserverAssertion];
  }

  v4.receiver = self;
  v4.super_class = TITextCheckerExemptions;
  [(TITextCheckerExemptions *)&v4 dealloc];
}

@end