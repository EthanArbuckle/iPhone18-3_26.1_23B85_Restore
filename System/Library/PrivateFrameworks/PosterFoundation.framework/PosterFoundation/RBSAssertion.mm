@interface RBSAssertion
@end

@implementation RBSAssertion

void __67__RBSAssertion_PosterFoundation__pf_extendRenderSessionWithReason___block_invoke()
{
  v7 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  v0 = [v7 valueForEntitlement:@"com.apple.posterkit.entitled-finish-render"];
  v1 = objc_opt_class();
  v2 = v0;
  if (v1)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (!v4)
  {
    pf_extendRenderSessionWithReason__shouldUseFinishRenderEntitledAttribute = 0;
    goto LABEL_10;
  }

  pf_extendRenderSessionWithReason__shouldUseFinishRenderEntitledAttribute = [v4 BOOLValue];
  if ((pf_extendRenderSessionWithReason__shouldUseFinishRenderEntitledAttribute & 1) == 0)
  {
LABEL_10:
    v5 = [v7 bundleID];
    v6 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F42668B8];
    pf_extendRenderSessionWithReason__shouldUseFinishRenderEntitledAttribute = [v6 containsObject:v5];
  }
}

@end