@interface _UITargetContentIdentifierPredicateValidator
- (BOOL)validatePredicate:(id)predicate compileTimeIssues:(id *)issues runTimeIssues:(id *)timeIssues;
- (void)visitPredicateExpression:(id)expression;
- (void)visitPredicateOperator:(id)operator;
@end

@implementation _UITargetContentIdentifierPredicateValidator

- (BOOL)validatePredicate:(id)predicate compileTimeIssues:(id *)issues runTimeIssues:(id *)timeIssues
{
  predicateCopy = predicate;
  compileTimeIssues = self->_compileTimeIssues;
  self->_compileTimeIssues = 0;

  [predicateCopy acceptVisitor:self flags:3];
  if (issues)
  {
    *issues = self->_compileTimeIssues;
  }

  if (self->_compileTimeIssues)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v17 = 0;
    v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:predicateCopy requiringSecureCoding:1 error:&v17];
    v13 = v17;
    v11 = 0;
    if ([v12 length] >= 0x186A1)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"predicate will be ignored because it is too large"];
      v11 = v14;
      if (timeIssues)
      {
        v15 = v14;
        *timeIssues = v11;
      }
    }

    if (self->_compileTimeIssues | v11)
    {
      v10 = 0;
    }

    else
    {
      [predicateCopy allowEvaluation];
      v11 = 0;
      v10 = 1;
    }
  }

  return v10;
}

- (void)visitPredicateOperator:(id)operator
{
  operatorCopy = operator;
  operatorType = [operatorCopy operatorType];
  if (operatorType > 98)
  {
    if (operatorType > 1099)
    {
      if ((operatorType - 1100) < 2 || operatorType == 2000)
      {
        goto LABEL_4;
      }
    }

    else if ((operatorType - 99) < 2 || operatorType == 1000)
    {
      goto LABEL_4;
    }
  }

  else if (operatorType <= 0xB)
  {
    if (((1 << operatorType) & 0x7BF) != 0)
    {
      goto LABEL_4;
    }

    v6 = @"operator '%@' is not allowed";
    goto LABEL_18;
  }

  operatorType2 = [operatorCopy operatorType];
  if ((operatorType2 - 1100) >= 2 && operatorType2 != 1000 && operatorType2 != 2000)
  {
    v6 = @"operator '%@' is not recognized";
LABEL_18:
    v7 = MEMORY[0x1E696AEC0];
    symbol = [operatorCopy symbol];
    v9 = [v7 stringWithFormat:v6, symbol];
    compileTimeIssues = self->_compileTimeIssues;
    self->_compileTimeIssues = v9;
  }

LABEL_4:
}

- (void)visitPredicateExpression:(id)expression
{
  expressionCopy = expression;
  expressionType = [expressionCopy expressionType];
  if (expressionType > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << expressionType) & 0x10E0E3) != 0)
  {
    goto LABEL_6;
  }

  if (((1 << expressionType) & 0x8001C) != 0)
  {
    v5 = @"expression '%@' is not allowed";
  }

  else
  {
LABEL_9:
    v5 = @"expression '%@' is not recognized";
  }

  expressionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v5, expressionCopy];
  compileTimeIssues = self->_compileTimeIssues;
  self->_compileTimeIssues = expressionCopy;

LABEL_6:
}

@end