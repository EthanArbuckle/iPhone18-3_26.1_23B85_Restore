@interface WFHarnessActionSelector
+ (WFHarnessActionSelector)matchAll;
- (BOOL)matchesContext:(id)context;
- (WFHarnessActionSelector)initWithPredicate:(id)predicate;
@end

@implementation WFHarnessActionSelector

- (BOOL)matchesContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessActionSelector.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  predicate = [(WFHarnessActionSelector *)self predicate];
  [predicate allowEvaluation];

  predicate2 = [(WFHarnessActionSelector *)self predicate];
  LOBYTE(predicate) = [predicate2 evaluateWithObject:contextCopy];

  return predicate;
}

- (WFHarnessActionSelector)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessActionSelector.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];
  }

  v12.receiver = self;
  v12.super_class = WFHarnessActionSelector;
  v7 = [(WFHarnessActionSelector *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_predicate, predicate);
    v9 = v8;
  }

  return v8;
}

+ (WFHarnessActionSelector)matchAll
{
  v2 = [WFHarnessActionSelector alloc];
  v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v4 = [(WFHarnessActionSelector *)v2 initWithPredicate:v3];

  return v4;
}

@end