@interface SBSwitcherDisplayItemRemovalResolutionResultAction
+ (id)defaultRemovalPolicyActionWithAppLayout:(id)a3;
+ (id)replacementActionWithAppLayout:(id)a3 replacementAppLayout:(id)a4;
- (id)_initWithAppLayout:(id)a3 actionType:(int64_t)a4;
@end

@implementation SBSwitcherDisplayItemRemovalResolutionResultAction

- (id)_initWithAppLayout:(id)a3 actionType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBSwitcherDisplayItemRemovalResolutionResultAction;
  v8 = [(SBSwitcherDisplayItemRemovalResolutionResultAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayout, a3);
    v9->_actionType = a4;
  }

  return v9;
}

+ (id)defaultRemovalPolicyActionWithAppLayout:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithAppLayout:v4 actionType:1];

  return v5;
}

+ (id)replacementActionWithAppLayout:(id)a3 replacementAppLayout:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [[a1 alloc] _initWithAppLayout:v8 actionType:2];

  if (v9)
  {
    objc_storeStrong(v9 + 3, a4);
  }

  return v9;
}

@end