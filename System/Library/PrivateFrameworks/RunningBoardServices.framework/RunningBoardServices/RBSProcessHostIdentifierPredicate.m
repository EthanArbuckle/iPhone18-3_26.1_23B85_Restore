@interface RBSProcessHostIdentifierPredicate
- (BOOL)matchesProcess:(id)a3;
@end

@implementation RBSProcessHostIdentifierPredicate

- (BOOL)matchesProcess:(id)a3
{
  v4 = [a3 identity];
  if ([v4 isXPCService])
  {
    v5 = [v4 hostIdentifier];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 rbs_pid];
      v8 = v7 == [(RBSProcessIdentifier *)self->super._identifier rbs_pid];
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