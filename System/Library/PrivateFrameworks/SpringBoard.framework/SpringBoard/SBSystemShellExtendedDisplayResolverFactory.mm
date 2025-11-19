@interface SBSystemShellExtendedDisplayResolverFactory
- (id)resolverForPhysicalDisplay:(id)a3;
@end

@implementation SBSystemShellExtendedDisplayResolverFactory

- (id)resolverForPhysicalDisplay:(id)a3
{
  v5 = a3;
  v6 = [v5 identity];
  if (([v6 isRootIdentity] & 1) == 0)
  {
    [(SBSystemShellExtendedDisplayResolverFactory *)a2 resolverForPhysicalDisplay:?];
  }

  if ([v6 _sb_supportsExtendedDisplayMode] && (objc_msgSend(MEMORY[0x277D65DB0], "withDisplay:", v5), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "supportedScales"), v7, v8))
  {
    v9 = [[SBSystemShellExtendedDisplayResolver alloc] initWithRootDisplay:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)resolverForPhysicalDisplay:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemShellExtendedDisplayResolverFactory.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"[rootDisplayIdentity isRootIdentity]"}];
}

@end