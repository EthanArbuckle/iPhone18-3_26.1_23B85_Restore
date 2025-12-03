@interface SBSwitcherModelRemovalRequestAction
+ (id)defaultRemovalPolicyAction;
+ (id)replacementActionWithAppLayout:(id)layout;
- (id)_initWithActionType:(int64_t)type;
@end

@implementation SBSwitcherModelRemovalRequestAction

- (id)_initWithActionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = SBSwitcherModelRemovalRequestAction;
  result = [(SBSwitcherModelRemovalRequestAction *)&v5 init];
  if (result)
  {
    *(result + 1) = type;
  }

  return result;
}

+ (id)defaultRemovalPolicyAction
{
  v2 = [[self alloc] _initWithActionType:1];

  return v2;
}

+ (id)replacementActionWithAppLayout:(id)layout
{
  layoutCopy = layout;
  v6 = [[self alloc] _initWithActionType:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 16), layout);
  }

  return v7;
}

@end