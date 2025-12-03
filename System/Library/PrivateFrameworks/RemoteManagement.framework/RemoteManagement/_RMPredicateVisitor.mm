@interface _RMPredicateVisitor
- (NSSet)statusKeyPaths;
- (_RMPredicateVisitor)initWithFormat:(id)format;
- (void)visitPredicateExpression:(id)expression;
- (void)visitPredicateOperator:(id)operator;
@end

@implementation _RMPredicateVisitor

- (NSSet)statusKeyPaths
{
  v2 = [(NSMutableSet *)self->_statusKeyPaths copy];

  return v2;
}

- (_RMPredicateVisitor)initWithFormat:(id)format
{
  formatCopy = format;
  v11.receiver = self;
  v11.super_class = _RMPredicateVisitor;
  v5 = [(_RMPredicateVisitor *)&v11 init];
  if (v5)
  {
    v6 = [formatCopy copy];
    format = v5->_format;
    v5->_format = v6;

    v8 = objc_opt_new();
    statusKeyPaths = v5->_statusKeyPaths;
    v5->_statusKeyPaths = v8;
  }

  return v5;
}

- (void)visitPredicateExpression:(id)expression
{
  expressionCopy = expression;
  if ([expressionCopy expressionType] == 3)
  {
    statusKeyPaths = self->_statusKeyPaths;
    keyPath = [expressionCopy keyPath];
    [(NSMutableSet *)statusKeyPaths addObject:keyPath];
  }
}

- (void)visitPredicateOperator:(id)operator
{
  operatorCopy = operator;
  if ([operatorCopy operatorType] == 11)
  {
    v4 = RMErrorDomain;
    v11 = @"error";
    symbol = [operatorCopy symbol];
    v6 = [RMErrorUtilities createUnableToParsePredicateErrorWithCustomOperator:symbol predicateFormat:self->_format];
    v12 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSException exceptionWithName:v4 reason:&stru_1000D3680 userInfo:v7];
    v9 = v8;

    objc_exception_throw(v8);
  }
}

@end