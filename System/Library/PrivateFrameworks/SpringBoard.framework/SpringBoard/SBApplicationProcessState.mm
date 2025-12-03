@interface SBApplicationProcessState
- (BOOL)isBeingDebugged;
- (BOOL)isEqual:(id)equal;
- (id)_initWithProcess:(id)process stateSnapshot:(id)snapshot;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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

- (id)_initWithProcess:(id)process stateSnapshot:(id)snapshot
{
  processCopy = process;
  snapshotCopy = snapshot;
  v12.receiver = self;
  v12.super_class = SBApplicationProcessState;
  v9 = [(SBApplicationProcessState *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_process, process);
    objc_storeStrong(p_isa + 2, snapshot);
  }

  return p_isa;
}

- (BOOL)isBeingDebugged
{
  v2 = self->_process;
  if ([(FBApplicationProcess *)v2 isApplicationProcess])
  {
    isBeingDebugged = [(FBApplicationProcess *)v2 isBeingDebugged];
  }

  else
  {
    isBeingDebugged = 0;
  }

  return isBeingDebugged;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FBProcessState *)self->_processState isEqual:equalCopy->_processState];
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
  succinctDescriptionBuilder = [(SBApplicationProcessState *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBApplicationProcessState *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end