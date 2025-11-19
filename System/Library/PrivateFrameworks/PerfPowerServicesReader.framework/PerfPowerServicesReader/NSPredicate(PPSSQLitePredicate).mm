@interface NSPredicate(PPSSQLitePredicate)
- (uint64_t)pps_sqlPredicateForSelect;
@end

@implementation NSPredicate(PPSSQLitePredicate)

- (uint64_t)pps_sqlPredicateForSelect
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end