@interface UIHomeAffordanceBSActionToClient
@end

@implementation UIHomeAffordanceBSActionToClient

uint64_t __63___UIHomeAffordanceBSActionToClient_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([*(a1 + 40) actionType])
  {
    v2 = &stru_1EFB14550;
  }

  else
  {
    v2 = @"doubleTapGestureDidSucceed";
  }

  return [v1 appendString:v2 withName:@"actionType"];
}

@end