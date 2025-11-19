@interface UIDragSourceLiftEffect
@end

@implementation UIDragSourceLiftEffect

void __68___UIDragSourceLiftEffect__addworkaroundForPropertyAnimator_inView___block_invoke(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68___UIDragSourceLiftEffect__addworkaroundForPropertyAnimator_inView___block_invoke_2;
  v8[3] = &unk_1E70F3590;
  v9 = *(a1 + 32);
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048615 updateReason:v8 animations:v5, v6, v7];
}

void __60___UIDragSourceLiftEffect_interaction_didChangeWithContext___block_invoke(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8 = [*(a1 + 32) animations];
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048615 updateReason:v8 animations:v5, v6, v7];
}

void __67___UIDragSourceLiftEffect__installInteractionPlattersForOperation___block_invoke(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___UIDragSourceLiftEffect__installInteractionPlattersForOperation___block_invoke_2;
  v8[3] = &unk_1E70F3590;
  v9 = *(a1 + 32);
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048615 updateReason:v8 animations:v5, v6, v7];
}

void __67___UIDragSourceLiftEffect__installInteractionPlattersForOperation___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) items];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [v6 platterView];
        [v7 setLifted:1];
        [v6 liftAlpha];
        [v7 setAlpha:?];
        [v7 layoutIfNeeded];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

uint64_t __67___UIDragSourceLiftEffect__installInteractionPlattersForOperation___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [*(result + 32) _uninstallInteractionPlattersForOperation:*(result + 40)];
  }

  return result;
}

@end