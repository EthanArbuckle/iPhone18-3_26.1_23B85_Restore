@interface NSMutableArray(WFStack)
- (uint64_t)WF_pop;
- (void)WF_push:()WFStack;
@end

@implementation NSMutableArray(WFStack)

- (void)WF_push:()WFStack
{
  v4 = [[WFNodeWrapper alloc] initWithNode:a3];
  [self addObject:v4];
}

- (uint64_t)WF_pop
{
  v2 = [objc_msgSend(self "lastObject")];
  [self removeLastObject];
  return v2;
}

@end