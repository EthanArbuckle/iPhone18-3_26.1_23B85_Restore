@interface WFContextualAction(WFCSSearchableItemConvertible)
- (void)generateSearchableItemWithCompletionBlock:()WFCSSearchableItemConvertible;
@end

@implementation WFContextualAction(WFCSSearchableItemConvertible)

- (void)generateSearchableItemWithCompletionBlock:()WFCSSearchableItemConvertible
{
  v5 = a3;
  v6 = [a1 spotlightItem];
  (a3)[2](v5, v6, 0);
}

@end