@interface SBLinkSystemAction
- (BOOL)isEqual:(id)a3;
- (id)newExecutor;
@end

@implementation SBLinkSystemAction

- (id)newExecutor
{
  v3 = [SBLinkSystemActionExecutor alloc];

  return [(SBLinkSystemActionExecutor *)v3 initWithSystemAction:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBLinkSystemAction;
  if ([(SBSystemAction *)&v8 isEqual:v4])
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end