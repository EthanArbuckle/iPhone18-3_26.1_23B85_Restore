@interface SBSwitcherDisplayItemRemovalResolutionResultAction
+ (id)defaultRemovalPolicyActionWithAppLayout:(id)layout;
+ (id)replacementActionWithAppLayout:(id)layout replacementAppLayout:(id)appLayout;
- (id)_initWithAppLayout:(id)layout actionType:(int64_t)type;
@end

@implementation SBSwitcherDisplayItemRemovalResolutionResultAction

- (id)_initWithAppLayout:(id)layout actionType:(int64_t)type
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBSwitcherDisplayItemRemovalResolutionResultAction;
  v8 = [(SBSwitcherDisplayItemRemovalResolutionResultAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayout, layout);
    v9->_actionType = type;
  }

  return v9;
}

+ (id)defaultRemovalPolicyActionWithAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [[self alloc] _initWithAppLayout:layoutCopy actionType:1];

  return v5;
}

+ (id)replacementActionWithAppLayout:(id)layout replacementAppLayout:(id)appLayout
{
  appLayoutCopy = appLayout;
  layoutCopy = layout;
  v9 = [[self alloc] _initWithAppLayout:layoutCopy actionType:2];

  if (v9)
  {
    objc_storeStrong(v9 + 3, appLayout);
  }

  return v9;
}

@end