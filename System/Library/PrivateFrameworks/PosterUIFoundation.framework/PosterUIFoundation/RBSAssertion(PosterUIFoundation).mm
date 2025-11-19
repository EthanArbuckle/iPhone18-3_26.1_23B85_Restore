@interface RBSAssertion(PosterUIFoundation)
+ (id)pui_posterRuntimeAssertionForTarget:()PosterUIFoundation explanation:sceneType:auditToken:posterProviderBundleIdentifier:;
+ (id)pui_snapshottingAssertionForTarget:()PosterUIFoundation auditToken:posterProviderBundleIdentifier:;
@end

@implementation RBSAssertion(PosterUIFoundation)

+ (id)pui_posterRuntimeAssertionForTarget:()PosterUIFoundation explanation:sceneType:auditToken:posterProviderBundleIdentifier:
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a4;
  v16 = a3;
  if ([v12 isEqualToString:@"PosterKit.rendering"])
  {
    v18 = [v13 valueForEntitlement:@"com.apple.posterkit.enhanced-memory-limits"];
    if (objc_opt_respondsToSelector())
    {
      v19 = [v18 BOOLValue];
      v20 = PFBundleIdentifierRequiresMemoryHogAssertion();
      v21 = MEMORY[0x1E69C5238];
      if ((v19 & v20) != 0)
      {
        v21 = MEMORY[0x1E69C5240];
      }

      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
      PFBundleIdentifierRequiresMemoryHogAssertion();
    }

    v21 = MEMORY[0x1E69C5248];
LABEL_11:
    v22 = *v21;

    goto LABEL_13;
  }

  if (PUISceneRoleIsEditing(v12, v17))
  {
    v22 = *MEMORY[0x1E69C5230];
  }

  else
  {
    v22 = 0;
  }

LABEL_13:
  v23 = [a1 pf_assertionForTarget:v16 assertionIdentifier:v22 explanation:v15 invalidationHandler:0];

  return v23;
}

+ (id)pui_snapshottingAssertionForTarget:()PosterUIFoundation auditToken:posterProviderBundleIdentifier:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a3;
  v9 = [a4 valueForEntitlement:@"com.apple.posterkit.enhanced-memory-limits"];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 BOOLValue];
    if ((v10 & PFBundleIdentifierRequiresMemoryHogAssertion()) != 0)
    {
      v11 = @"-Photos";
    }

    else
    {
      v11 = @"-Entitled";
    }

    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    PFBundleIdentifierRequiresMemoryHogAssertion();
  }

  v11 = @"-Nominal";
LABEL_9:
  v12 = [@"Snapshotting" stringByAppendingString:v11];
  v13 = objc_alloc(MEMORY[0x1E69C7548]);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SNAPSHOTTING %@", v7];
  v15 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.posterkit.provider" name:v12];
  v19[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v17 = [v13 initWithExplanation:v14 target:v8 attributes:v16];

  return v17;
}

@end