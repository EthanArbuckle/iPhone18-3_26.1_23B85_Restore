@interface _PTPredicateValidator
+ (void)validatorWithPredicate:(uint64_t)a1;
- (uint64_t)evaluate;
- (void)visitPredicateExpression:(id)a3;
- (void)visitPredicateOperator:(id)a3;
@end

@implementation _PTPredicateValidator

+ (void)validatorWithPredicate:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = v3[1];
  v3[1] = v2;

  return v3;
}

- (void)visitPredicateExpression:(id)a3
{
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(_PTPredicateValidator *)a2 visitPredicateExpression:v5];
  }

  v6 = [v5 expressionType];
  if (v6 <= 0x14 && ((1 << v6) & 0x181010) != 0)
  {
    self->_valid = 0;
  }
}

- (void)visitPredicateOperator:(id)a3
{
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(_PTPredicateValidator *)a2 visitPredicateOperator:v5];
  }

  if ([v5 operatorType] == 11)
  {
    self->_valid = 0;
  }
}

- (uint64_t)evaluate
{
  v7 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = 0;
    return v3 & 1;
  }

  *(a1 + 16) = 1;
  [*(a1 + 8) acceptVisitor:a1 flags:3];
  if (*(a1 + 16) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v2 = [*(a1 + 8) predicateFormat];
      v5 = 138543362;
      v6 = v2;
      _os_log_debug_impl(&dword_21E61D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Predicate passed validation: %{public}@", &v5, 0xCu);
LABEL_9:
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [*(a1 + 8) predicateFormat];
    v5 = 138543362;
    v6 = v2;
    _os_log_error_impl(&dword_21E61D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Predicate failed validation: %{public}@", &v5, 0xCu);
    goto LABEL_9;
  }

  v3 = *(a1 + 16);
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