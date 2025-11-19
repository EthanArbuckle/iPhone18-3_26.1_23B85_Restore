@interface SBSwitcherModelRemovalRequestAction
+ (id)defaultRemovalPolicyAction;
+ (id)replacementActionWithAppLayout:(id)a3;
- (id)_initWithActionType:(int64_t)a3;
@end

@implementation SBSwitcherModelRemovalRequestAction

- (id)_initWithActionType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBSwitcherModelRemovalRequestAction;
  result = [(SBSwitcherModelRemovalRequestAction *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

+ (id)defaultRemovalPolicyAction
{
  v2 = [[a1 alloc] _initWithActionType:1];

  return v2;
}

+ (id)replacementActionWithAppLayout:(id)a3
{
  v5 = a3;
  v6 = [[a1 alloc] _initWithActionType:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 16), a3);
  }

  return v7;
}

@end