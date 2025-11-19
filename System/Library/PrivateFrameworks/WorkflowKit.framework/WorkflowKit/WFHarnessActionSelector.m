@interface WFHarnessActionSelector
+ (WFHarnessActionSelector)matchAll;
- (BOOL)matchesContext:(id)a3;
- (WFHarnessActionSelector)initWithPredicate:(id)a3;
@end

@implementation WFHarnessActionSelector

- (BOOL)matchesContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFHarnessActionSelector.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v6 = [(WFHarnessActionSelector *)self predicate];
  [v6 allowEvaluation];

  v7 = [(WFHarnessActionSelector *)self predicate];
  LOBYTE(v6) = [v7 evaluateWithObject:v5];

  return v6;
}

- (WFHarnessActionSelector)initWithPredicate:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFHarnessActionSelector.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];
  }

  v12.receiver = self;
  v12.super_class = WFHarnessActionSelector;
  v7 = [(WFHarnessActionSelector *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_predicate, a3);
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