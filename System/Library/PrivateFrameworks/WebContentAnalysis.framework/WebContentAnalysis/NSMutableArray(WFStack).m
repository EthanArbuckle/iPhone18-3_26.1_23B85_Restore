@interface NSMutableArray(WFStack)
- (uint64_t)WF_pop;
- (void)WF_push:()WFStack;
@end

@implementation NSMutableArray(WFStack)

- (void)WF_push:()WFStack
{
  v4 = [[WFNodeWrapper alloc] initWithNode:a3];
  [a1 addObject:v4];
}

- (uint64_t)WF_pop
{
  v2 = [objc_msgSend(a1 "lastObject")];
  [a1 removeLastObject];
  return v2;
}

@end