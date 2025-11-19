@interface UIAccessibilityElementTraversalOptions
+ (id)defaultContinuityDisplayOptions;
+ (id)defaultFullKeyboardAccessOptions;
+ (id)defaultSpeakScreenOptions;
+ (id)defaultSwitchControlOptions;
+ (id)options;
+ (id)voiceOverOptionsIncludingElementsFromOpaqueProviders:(BOOL)a3 honorsGroups:(BOOL)a4;
- (UIAccessibilityElementTraversalOptions)init;
- (id)description;
- (void)setAllowedElementsForTraversal:(id)a3;
@end

@implementation UIAccessibilityElementTraversalOptions

+ (id)options
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)voiceOverOptionsIncludingElementsFromOpaqueProviders:(BOOL)a3 honorsGroups:(BOOL)a4
{
  v4 = a4;
  v7 = [a1 options];
  [v7 setHonorsElementGrouping:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __108__UIAccessibilityElementTraversalOptions_voiceOverOptionsIncludingElementsFromOpaqueProviders_honorsGroups___block_invoke;
  v9[3] = &__block_descriptor_42_e8_B16__0_8l;
  v9[4] = a1;
  v10 = a3;
  v11 = v4;
  [v7 setLeafNodePredicate:v9];

  return v7;
}

uint64_t __108__UIAccessibilityElementTraversalOptions_voiceOverOptionsIncludingElementsFromOpaqueProviders_honorsGroups___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAccessibilityElement] && (v4 = objc_msgSend(*(a1 + 32), "accessibilityTraits"), (UIAccessibilityTraitSpacer & ~v4) != 0) || (*(a1 + 40) & 1) == 0 && (objc_msgSend(v3, "isAccessibilityOpaqueElementProvider") & 1) != 0)
  {
    v5 = 1;
  }

  else if (*(a1 + 41) == 1)
  {
    v5 = [v3 _accessibilityIsGroupedParent];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)defaultSwitchControlOptions
{
  v2 = [a1 options];
  [v2 setShouldReturnScannerGroups:1];
  [v2 setShouldOnlyIncludeElementsWithVisibleFrame:1];
  [v2 setShouldIncludeStatusBarWindow:1];
  [v2 setLeafNodePredicate:&__block_literal_global_3];

  return v2;
}

uint64_t __69__UIAccessibilityElementTraversalOptions_defaultSwitchControlOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessibilityElement])
  {
    v3 = [v2 accessibilityRespondsToUserInteraction];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)defaultSpeakScreenOptions
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = +[UIAccessibilityElementTraversalOptions options];
  [v2 setLeafNodePredicate:&__block_literal_global_282];
  [v2 setForSpeakScreen:1];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 _accessibilitySpeakThisRootElement];

  v5 = AXLogSpeakScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];
  }

  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 _accessibilitySpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession];

  v8 = AXLogSpeakScreen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];
  }

  if (v4)
  {
    v13[0] = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v2 setAllowedElementsForTraversal:v9];
LABEL_7:

    goto LABEL_10;
  }

  if (!v7)
  {
    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    v11 = [v9 _accessibilitySpeakThisViewController];
    v12 = [v11 _accessibilitySpeakThisViews];
    [v2 setAllowedElementsForTraversal:v12];

    goto LABEL_7;
  }

  [v2 setAllowedElementsForTraversal:v7];
LABEL_10:

  return v2;
}

uint64_t __67__UIAccessibilityElementTraversalOptions_defaultSpeakScreenOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (AXRequestingClient() == 19)
  {
    v3 = [v2 accessibilityTraits];
    v4 = ((*MEMORY[0x1E69DD9B8] | *MEMORY[0x1E69DD9D0]) & v3) == 0;
    if (([v2 _accessibilitySpeakThisIgnoresAccessibilityElementStatus] & 1) == 0 && (!objc_msgSend(v2, "_accessibilityIsSpeakThisElement") || (objc_msgSend(v2, "isAccessibilityElement") & 1) == 0) && !objc_msgSend(v2, "isAccessibilityOpaqueElementProvider"))
    {
      v4 = 0;
    }
  }

  else if ([v2 _accessibilitySpeakThisIgnoresAccessibilityElementStatus] & 1) != 0 || objc_msgSend(v2, "_accessibilityIsSpeakThisElement") && (objc_msgSend(v2, "isAccessibilityElement"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isAccessibilityOpaqueElementProvider];
  }

  return v4;
}

+ (id)defaultFullKeyboardAccessOptions
{
  v2 = [a1 options];
  [v2 setShouldIncludeStatusBarWindow:1];
  [v2 setLeafNodePredicate:&__block_literal_global_286];

  return v2;
}

+ (id)defaultContinuityDisplayOptions
{
  v2 = [a1 voiceOverOptionsIncludingElementsFromOpaqueProviders:1 honorsGroups:0];
  [v2 setShouldOnlyIncludeElementsWithVisibleFrame:1];

  return v2;
}

- (UIAccessibilityElementTraversalOptions)init
{
  v5.receiver = self;
  v5.super_class = UIAccessibilityElementTraversalOptions;
  v2 = [(UIAccessibilityElementTraversalOptions *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIAccessibilityElementTraversalOptions *)v2 setDirection:1];
    [(UIAccessibilityElementTraversalOptions *)v3 setSorted:1];
  }

  return v3;
}

- (id)description
{
  v3 = [(UIAccessibilityElementTraversalOptions *)self direction];
  v4 = @"previous";
  if (v3 == 1)
  {
    v4 = @"next";
  }

  v5 = v4;
  if ([(UIAccessibilityElementTraversalOptions *)self shouldOnlyIncludeElementsWithVisibleFrame])
  {
    v16 = @"only include elements with visible frame";
    v21 = @"__AXStringForVariablesSentinel";
    v6 = __UIAXStringForVariables();

    v5 = v6;
  }

  if ([(UIAccessibilityElementTraversalOptions *)self shouldReturnScannerGroups:v16])
  {
    v17 = @"scanner groups";
    v22 = @"__AXStringForVariablesSentinel";
    v7 = __UIAXStringForVariables();

    v5 = v7;
  }

  v8 = [(UIAccessibilityElementTraversalOptions *)self leafNodePredicate:v17];

  if (v8)
  {
    v18 = @"has predicate";
    v23 = @"__AXStringForVariablesSentinel";
    v9 = __UIAXStringForVariables();

    v5 = v9;
  }

  if ([(UIAccessibilityElementTraversalOptions *)self forSpeakScreen:v18])
  {
    v19 = @"for Speak Screen";
    v24 = @"__AXStringForVariablesSentinel";
    v10 = __UIAXStringForVariables();

    v5 = v10;
  }

  if ([(UIAccessibilityElementTraversalOptions *)self shouldUseAllSubviews:v19])
  {
    v20 = @"use all subviews";
    v25 = @"__AXStringForVariablesSentinel";
    v11 = __UIAXStringForVariables();

    v5 = v11;
  }

  v12 = MEMORY[0x1E696AEC0];
  v26.receiver = self;
  v26.super_class = UIAccessibilityElementTraversalOptions;
  v13 = [(UIAccessibilityElementTraversalOptions *)&v26 description:v20];
  v14 = [v12 stringWithFormat:@"%@ - %@", v13, v5];

  return v14;
}

- (void)setAllowedElementsForTraversal:(id)a3
{
  v5 = a3;
  allowedElementsForTraversal = self->_allowedElementsForTraversal;
  p_allowedElementsForTraversal = &self->_allowedElementsForTraversal;
  if (allowedElementsForTraversal != v5)
  {
    v8 = v5;
    objc_storeStrong(p_allowedElementsForTraversal, a3);
    v5 = v8;
  }
}

@end