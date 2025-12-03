@interface TITextCheckerExemptions
- (BOOL)stringIsExemptFromChecker:(id)checker;
- (void)dealloc;
- (void)setAssertsObservers:(BOOL)observers;
@end

@implementation TITextCheckerExemptions

- (BOOL)stringIsExemptFromChecker:(id)checker
{
  checkerCopy = checker;
  v4 = +[TITextCheckerExemptionsImpl sharedTextCheckerExemptionsImpl];
  v5 = [v4 stringIsExemptFromChecker:checkerCopy];

  return v5;
}

- (void)setAssertsObservers:(BOOL)observers
{
  if (self->_assertsObservers != observers)
  {
    observersCopy = observers;
    self->_assertsObservers = observers;
    v5 = +[TITextCheckerExemptionsImpl sharedTextCheckerExemptionsImpl];
    v6 = v5;
    if (observersCopy)
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