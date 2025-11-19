@interface SBSystemShellExtendedDisplayResolver
- (SBDisplayWindowingModeResolverDelegate)delegate;
- (SBSystemShellExtendedDisplayResolver)initWithRootDisplay:(id)a3;
@end

@implementation SBSystemShellExtendedDisplayResolver

- (SBSystemShellExtendedDisplayResolver)initWithRootDisplay:(id)a3
{
  v6 = a3;
  if (([v6 isRootIdentity] & 1) == 0)
  {
    [(SBSystemShellExtendedDisplayResolver *)a2 initWithRootDisplay:?];
  }

  v10.receiver = self;
  v10.super_class = SBSystemShellExtendedDisplayResolver;
  v7 = [(SBSystemShellExtendedDisplayResolver *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_rootDisplayIdentity, a3);
  }

  return v8;
}

- (SBDisplayWindowingModeResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithRootDisplay:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemShellExtendedDisplayResolver.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"[rootDisplayIdentity isRootIdentity]"}];
}

@end