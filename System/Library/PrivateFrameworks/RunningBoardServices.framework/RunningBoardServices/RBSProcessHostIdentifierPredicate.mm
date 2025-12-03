@interface RBSProcessHostIdentifierPredicate
- (BOOL)matchesProcess:(id)process;
@end

@implementation RBSProcessHostIdentifierPredicate

- (BOOL)matchesProcess:(id)process
{
  identity = [process identity];
  if ([identity isXPCService])
  {
    hostIdentifier = [identity hostIdentifier];
    v6 = hostIdentifier;
    if (hostIdentifier)
    {
      rbs_pid = [hostIdentifier rbs_pid];
      v8 = rbs_pid == [(RBSProcessIdentifier *)self->super._identifier rbs_pid];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end