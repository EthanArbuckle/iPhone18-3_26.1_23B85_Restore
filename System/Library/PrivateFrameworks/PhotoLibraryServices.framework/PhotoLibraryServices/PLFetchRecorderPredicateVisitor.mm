@interface PLFetchRecorderPredicateVisitor
- (void)visitPredicateOperator:(id)operator;
@end

@implementation PLFetchRecorderPredicateVisitor

- (void)visitPredicateOperator:(id)operator
{
  if ([operator operatorType] == 10)
  {
    self->_foundOperatorIN = 1;
  }
}

@end