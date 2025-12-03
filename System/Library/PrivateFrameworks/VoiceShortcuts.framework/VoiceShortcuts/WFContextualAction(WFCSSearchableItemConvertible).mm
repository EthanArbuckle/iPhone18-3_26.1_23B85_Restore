@interface WFContextualAction(WFCSSearchableItemConvertible)
- (void)generateSearchableItemWithCompletionBlock:()WFCSSearchableItemConvertible;
@end

@implementation WFContextualAction(WFCSSearchableItemConvertible)

- (void)generateSearchableItemWithCompletionBlock:()WFCSSearchableItemConvertible
{
  v5 = a3;
  spotlightItem = [self spotlightItem];
  (a3)[2](v5, spotlightItem, 0);
}

@end