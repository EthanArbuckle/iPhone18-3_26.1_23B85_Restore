@interface NSArray(BYFlowSkipController)
- (id)by_actionsByRemovingAction:()BYFlowSkipController;
@end

@implementation NSArray(BYFlowSkipController)

- (id)by_actionsByRemovingAction:()BYFlowSkipController
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObject:v4];

  v6 = [v5 copy];

  return v6;
}

@end