@interface RTPredicateInspector
- (BOOL)predicate:(id)a3 referencesSubstitutionVariablesFromSet:(id)a4;
- (void)_inspectExpression:(id)a3;
- (void)visitPredicate:(id)a3;
@end

@implementation RTPredicateInspector

- (BOOL)predicate:(id)a3 referencesSubstitutionVariablesFromSet:(id)a4
{
  self->_predicateContainsSubstitutionVariables = 0;
  v6 = a3;
  v7 = [a4 copy];
  substitutionVariables = self->_substitutionVariables;
  self->_substitutionVariables = v7;

  [v6 acceptVisitor:self flags:3];
  return self->_predicateContainsSubstitutionVariables;
}

- (void)visitPredicate:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
    v5 = [v4 leftExpression];
    [(RTPredicateInspector *)self _inspectExpression:v5];

    v6 = [v4 rightExpression];

    [(RTPredicateInspector *)self _inspectExpression:v6];
  }
}

- (void)_inspectExpression:(id)a3
{
  v6 = a3;
  if ([v6 expressionType] == 2)
  {
    substitutionVariables = self->_substitutionVariables;
    v5 = [v6 variable];
    LODWORD(substitutionVariables) = [(NSSet *)substitutionVariables containsObject:v5];

    if (substitutionVariables)
    {
      self->_predicateContainsSubstitutionVariables = 1;
    }
  }
}

@end