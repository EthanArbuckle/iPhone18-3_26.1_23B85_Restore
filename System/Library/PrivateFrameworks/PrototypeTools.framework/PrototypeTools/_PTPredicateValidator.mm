@interface _PTPredicateValidator
+ (void)validatorWithPredicate:(uint64_t)predicate;
- (uint64_t)evaluate;
- (void)visitPredicateExpression:(id)expression;
- (void)visitPredicateOperator:(id)operator;
@end

@implementation _PTPredicateValidator

+ (void)validatorWithPredicate:(uint64_t)predicate
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = v3[1];
  v3[1] = v2;

  return v3;
}

- (void)visitPredicateExpression:(id)expression
{
  expressionCopy = expression;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(_PTPredicateValidator *)a2 visitPredicateExpression:expressionCopy];
  }

  expressionType = [expressionCopy expressionType];
  if (expressionType <= 0x14 && ((1 << expressionType) & 0x181010) != 0)
  {
    self->_valid = 0;
  }
}

- (void)visitPredicateOperator:(id)operator
{
  operatorCopy = operator;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(_PTPredicateValidator *)a2 visitPredicateOperator:operatorCopy];
  }

  if ([operatorCopy operatorType] == 11)
  {
    self->_valid = 0;
  }
}

- (uint64_t)evaluate
{
  v7 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    v3 = 0;
    return v3 & 1;
  }

  *(self + 16) = 1;
  [*(self + 8) acceptVisitor:self flags:3];
  if (*(self + 16) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      predicateFormat = [*(self + 8) predicateFormat];
      v5 = 138543362;
      v6 = predicateFormat;
      _os_log_debug_impl(&dword_21E61D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Predicate passed validation: %{public}@", &v5, 0xCu);
LABEL_9:
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    predicateFormat = [*(self + 8) predicateFormat];
    v5 = 138543362;
    v6 = predicateFormat;
    _os_log_error_impl(&dword_21E61D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Predicate failed validation: %{public}@", &v5, 0xCu);
    goto LABEL_9;
  }

  v3 = *(self + 16);
  return v3 & 1;
}

- (void)visitPredicateExpression:(const char *)a1 .cold.1(const char *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [a2 expressionType];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_21E61D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[PTPredicate] %@ %@ (%lu) %@", v6, 0x2Au);
}

- (void)visitPredicateOperator:(const char *)a1 .cold.1(const char *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [a2 operatorType];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_21E61D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[PTPredicate] %@ %@ (%lu) %@", v6, 0x2Au);
}

@end