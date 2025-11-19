@interface PLFetchRecorderPredicateVisitor
- (void)visitPredicateOperator:(id)a3;
@end

@implementation PLFetchRecorderPredicateVisitor

- (void)visitPredicateOperator:(id)a3
{
  if ([a3 operatorType] == 10)
  {
    self->_foundOperatorIN = 1;
  }
}

@end