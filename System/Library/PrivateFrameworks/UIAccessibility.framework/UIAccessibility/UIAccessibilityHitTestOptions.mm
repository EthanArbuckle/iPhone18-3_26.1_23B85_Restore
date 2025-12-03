@interface UIAccessibilityHitTestOptions
+ (id)defaultOptions;
+ (id)dwellControlElementHighlightOptions;
@end

@implementation UIAccessibilityHitTestOptions

+ (id)defaultOptions
{
  v2 = objc_alloc_init(self);
  [v2 setLeafNodePredicate:&__block_literal_global_17];
  [v2 setFallbackPredicate:&__block_literal_global_282_0];
  [v2 setIsEligibleElement:&__block_literal_global_284_0];

  return v2;
}

uint64_t __47__UIAccessibilityHitTestOptions_defaultOptions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessibilityElement] & 1) != 0 || (objc_msgSend(v2, "_accessibilityIsTouchContainer"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 accessibilityViewIsModal];
  }

  return v3;
}

+ (id)dwellControlElementHighlightOptions
{
  v3 = objc_alloc_init(self);
  [v3 setShouldHitTestUserTestingChildren:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__UIAccessibilityHitTestOptions_dwellControlElementHighlightOptions__block_invoke_2;
  v10[3] = &unk_1E78AAF20;
  v11 = &__block_literal_global_286_0;
  [v3 setLeafNodePredicate:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__UIAccessibilityHitTestOptions_dwellControlElementHighlightOptions__block_invoke_4;
  v7[3] = &unk_1E78ABA98;
  v8 = &__block_literal_global_286_0;
  selfCopy = self;
  [v3 setFallbackPredicate:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__UIAccessibilityHitTestOptions_dwellControlElementHighlightOptions__block_invoke_6;
  v5[3] = &unk_1E78AAF20;
  v6 = &__block_literal_global_286_0;
  [v3 setIsEligibleElement:v5];

  return v3;
}

BOOL __68__UIAccessibilityHitTestOptions_dwellControlElementHighlightOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessibilityElement] && objc_msgSend(v2, "accessibilityRespondsToUserInteraction"))
  {
    v3 = [v2 accessibilityTraits];
    v4 = ((*MEMORY[0x1E69DD9A8] | UIAccessibilityTraitIsEditing) & v3) == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __68__UIAccessibilityHitTestOptions_dwellControlElementHighlightOptions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    NSClassFromString(&cfstr_SwiftuiAccessi.isa);
    if (objc_opt_isKindOfClass())
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __68__UIAccessibilityHitTestOptions_dwellControlElementHighlightOptions__block_invoke_3;
      v9[3] = &unk_1E78AAF20;
      v10 = *(a1 + 32);
      v4 = [v3 _accessibilityFindAncestor:v9 startWithSelf:0];

      if (v4)
      {
        v5 = *MEMORY[0x1E69890A8] | *MEMORY[0x1E6989018] | *MEMORY[0x1E69890F8] | *MEMORY[0x1E6988FD0] | *MEMORY[0x1E6989150];
        v6 = ([v3 accessibilityTraits] & v5) != 0;
        v7 = v10;
LABEL_8:

        goto LABEL_9;
      }
    }

    v7 = [v3 automationElements];
    v6 = [v7 count] == 0;
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

uint64_t __68__UIAccessibilityHitTestOptions_dwellControlElementHighlightOptions__block_invoke_4(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__UIAccessibilityHitTestOptions_dwellControlElementHighlightOptions__block_invoke_5;
  v7[3] = &unk_1E78AAF20;
  v3 = *(a1 + 40);
  v8 = *(a1 + 32);
  v4 = [v3 _accessibilityFindAncestor:v7 startWithSelf:0];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t __68__UIAccessibilityHitTestOptions_dwellControlElementHighlightOptions__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 _accessibilityIsRemoteElement];
  }

  return v4;
}

@end