@interface SBApplicationProcessState
- (BOOL)isBeingDebugged;
- (BOOL)isEqual:(id)a3;
- (id)_initWithProcess:(id)a3 stateSnapshot:(id)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBApplicationProcessState

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:-[SBApplicationProcessState pid](self withName:{"pid"), @"pid"}];
  [(SBApplicationProcessState *)self taskState];
  v5 = NSStringFromFBProcessTaskState();
  v6 = [v3 appendObject:v5 withName:@"taskState"];

  [(SBApplicationProcessState *)self visibility];
  v7 = NSStringFromFBProcessVisibility();
  v8 = [v3 appendObject:v7 withName:@"visibility"];

  return v3;
}

- (id)_initWithProcess:(id)a3 stateSnapshot:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBApplicationProcessState;
  v9 = [(SBApplicationProcessState *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_process, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (BOOL)isBeingDebugged
{
  v2 = self->_process;
  if ([(FBApplicationProcess *)v2 isApplicationProcess])
  {
    v3 = [(FBApplicationProcess *)v2 isBeingDebugged];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FBProcessState *)self->_processState isEqual:v4->_processState];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(SBApplicationProcessState *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBApplicationProcessState *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end