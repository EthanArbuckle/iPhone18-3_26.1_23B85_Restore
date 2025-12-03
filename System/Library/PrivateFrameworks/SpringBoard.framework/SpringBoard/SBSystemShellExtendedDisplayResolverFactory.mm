@interface SBSystemShellExtendedDisplayResolverFactory
- (id)resolverForPhysicalDisplay:(id)display;
@end

@implementation SBSystemShellExtendedDisplayResolverFactory

- (id)resolverForPhysicalDisplay:(id)display
{
  displayCopy = display;
  identity = [displayCopy identity];
  if (([identity isRootIdentity] & 1) == 0)
  {
    [(SBSystemShellExtendedDisplayResolverFactory *)a2 resolverForPhysicalDisplay:?];
  }

  if ([identity _sb_supportsExtendedDisplayMode] && (objc_msgSend(MEMORY[0x277D65DB0], "withDisplay:", displayCopy), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "supportedScales"), v7, v8))
  {
    v9 = [[SBSystemShellExtendedDisplayResolver alloc] initWithRootDisplay:identity];
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