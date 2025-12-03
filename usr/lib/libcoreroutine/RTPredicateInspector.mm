@interface RTPredicateInspector
- (BOOL)predicate:(id)predicate referencesSubstitutionVariablesFromSet:(id)set;
- (void)_inspectExpression:(id)expression;
- (void)visitPredicate:(id)predicate;
@end

@implementation RTPredicateInspector

- (BOOL)predicate:(id)predicate referencesSubstitutionVariablesFromSet:(id)set
{
  self->_predicateContainsSubstitutionVariables = 0;
  predicateCopy = predicate;
  v7 = [set copy];
  substitutionVariables = self->_substitutionVariables;
  self->_substitutionVariables = v7;

  [predicateCopy acceptVisitor:self flags:3];
  return self->_predicateContainsSubstitutionVariables;
}

- (void)visitPredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = predicateCopy;
    leftExpression = [v4 leftExpression];
    [(RTPredicateInspector *)self _inspectExpression:leftExpression];

    rightExpression = [v4 rightExpression];

    [(RTPredicateInspector *)self _inspectExpression:rightExpression];
  }
}

- (void)_inspectExpression:(id)expression
{
  expressionCopy = expression;
  if ([expressionCopy expressionType] == 2)
  {
    substitutionVariables = self->_substitutionVariables;
    variable = [expressionCopy variable];
    LODWORD(substitutionVariables) = [(NSSet *)substitutionVariables containsObject:variable];

    if (substitutionVariables)
    {
      self->_predicateContainsSubstitutionVariables = 1;
    }
  }
}

@end