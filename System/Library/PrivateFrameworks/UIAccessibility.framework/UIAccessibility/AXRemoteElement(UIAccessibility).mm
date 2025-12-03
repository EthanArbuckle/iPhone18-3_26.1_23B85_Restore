@interface AXRemoteElement(UIAccessibility)
- (id)_accessibilityWindowScene;
- (id)_handleElementTraversalRequestMovingForward:()UIAccessibility count:shouldIncludeSelf:wantsContainers:;
- (id)_iosAccessibilityAttributeValue:()UIAccessibility;
- (id)_iosAccessibilityAttributeValue:()UIAccessibility forParameter:;
- (uint64_t)accessibilityActivate;
@end

@implementation AXRemoteElement(UIAccessibility)

- (id)_accessibilityWindowScene
{
  v4.receiver = self;
  v4.super_class = &off_1F1DFB028;
  v2 = objc_msgSendSuper2(&v4, sel__accessibilityWindowScene);
  if (!v2)
  {
    v2 = [self _accessibilityFindAncestor:&__block_literal_global_9 startWithSelf:0];
  }

  return v2;
}

- (id)_handleElementTraversalRequestMovingForward:()UIAccessibility count:shouldIncludeSelf:wantsContainers:
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  if (AXRequestingClient() == 11)
  {
    v12 = +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];

    v11 = v12;
  }

  if (AXRequestingClient() == 19)
  {
    v13 = +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];

    v11 = v13;
  }

  if (a3)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  [v11 setDirection:v14];
  if (a6)
  {
    [v11 setLeafNodePredicate:&__block_literal_global_283];
    [v11 setIncludeAncestorsOfSelfInSiblingMatch:1];
  }

  v15 = 1;
  v16 = [self _accessibilityLeafDescendantsWithCount:a4 shouldStopAtRemoteElement:1 options:v11];
  if ([v16 count])
  {
    lastObject = [v16 lastObject];
    v18 = AXRemoteElementFromObject();

    v15 = v18 == 0;
  }

  if ([v16 count] < a4 && v15)
  {
    if (!v16)
    {
      _AXAssert();
    }

    v19 = [v16 arrayByAddingObject:self];

    v16 = v19;
  }

  if ((a5 & 1) == 0)
  {
    lastObject2 = [v16 lastObject];
    v21 = [lastObject2 isEqual:self];

    if (v21)
    {
      v22 = [v16 mutableCopy];
      [v22 removeLastObject];

      v16 = v22;
    }
  }

  v23 = AXLogElementTraversal();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = @"previous";
    v26 = 138544131;
    if (a3)
    {
      v25 = @"next";
    }

    v27 = v25;
    v28 = 2114;
    selfCopy = self;
    v30 = 2048;
    v31 = a4;
    v32 = 2113;
    v33 = v16;
    _os_log_debug_impl(&dword_1A9B83000, v23, OS_LOG_TYPE_DEBUG, "*** Returning remote %{public}@ elements for %{public}@ with count %lu: %{private}@", &v26, 0x2Au);
  }

  return v16;
}

- (id)_iosAccessibilityAttributeValue:()UIAccessibility forParameter:
{
  v6 = a4;
  if ((a3 - 92501) >= 2 && a3 != 95252)
  {
    objc_msgSendSuper2(&v13, sel__iosAccessibilityAttributeValue_forParameter_, a3, v6, self, &off_1F1DFB028, v14.receiver, v14.super_class);
    v10 = LABEL_13:;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v6 unsignedIntValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 objectForKey:*MEMORY[0x1E6988D00]];
      unsignedIntValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntValue = 0;
    }
  }

  if ([self onClientSide])
  {
    objc_msgSendSuper2(&v14, sel__iosAccessibilityAttributeValue_forParameter_, a3, v6, v13.receiver, v13.super_class, self, &off_1F1DFB028);
    goto LABEL_13;
  }

  v10 = [self _handleElementTraversalRequestMovingForward:a3 != 92502 count:unsignedIntValue shouldIncludeSelf:a3 != 95252 wantsContainers:0];
LABEL_15:
  v11 = v10;

  return v11;
}

- (id)_iosAccessibilityAttributeValue:()UIAccessibility
{
  if (a3 > 3021)
  {
    if (a3 <= 3028)
    {
      if (a3 == 3022)
      {
        _accessibilityExplorerElements = [*MEMORY[0x1E69DDA98] _accessibilityExplorerElements];
      }

      else
      {
        if (a3 != 3025)
        {
          goto LABEL_31;
        }

        _accessibilityExplorerElements = [*MEMORY[0x1E69DDA98] _accessibilityElementsWithSemanticContext:0];
      }
    }

    else
    {
      switch(a3)
      {
        case 3029:
          _accessibilityExplorerElements = [*MEMORY[0x1E69DDA98] _accessibilityNativeFocusableElements:0];
          break;
        case 3031:
          _accessibilityExplorerElements = [*MEMORY[0x1E69DDA98] _accessibilitySiriContentNativeFocusableElements];
          break;
        case 3032:
          _accessibilityExplorerElements = [*MEMORY[0x1E69DDA98] _accessibilitySiriContentElementsWithSemanticContext];
          break;
        default:
          goto LABEL_31;
      }
    }

LABEL_35:
    firstObject = _accessibilityExplorerElements;
    goto LABEL_36;
  }

  if (a3 > 2195)
  {
    switch(a3)
    {
      case 2196:
        if ([self onClientSide])
        {
          objc_msgSendSuper2(&v20, sel__iosAccessibilityAttributeValue_, 2196, selfCopy3, v16, selfCopy4, v18, v19.receiver, v19.super_class, self, &off_1F1DFB028, v21.receiver, v21.super_class, v22.receiver, v22.super_class);
          goto LABEL_34;
        }

        if (AXRequestingClient() == 19)
        {
          v13 = 60;
        }

        else
        {
          v13 = 5;
        }

        selfCopy2 = self;
        v12 = 1;
        break;
      case 2244:
        if ([self onClientSide])
        {
          objc_msgSendSuper2(&v19, sel__iosAccessibilityAttributeValue_, 2244, selfCopy3, v16, selfCopy4, v18, self, &off_1F1DFB028, v20.receiver, v20.super_class, v21.receiver, v21.super_class, v22.receiver, v22.super_class);
          goto LABEL_34;
        }

        selfCopy2 = self;
        v12 = 0;
        v13 = 60;
        break;
      case 3000:
        if (([self onClientSide] & 1) == 0)
        {
          v9 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
          v14 = [self _accessibilityLeafDescendantsWithCount:1 options:v9];
          firstObject = [v14 firstObject];

          goto LABEL_41;
        }

        objc_msgSendSuper2(&v22, sel__iosAccessibilityAttributeValue_, 3000, selfCopy3, v16, selfCopy4, v18, v19.receiver, v19.super_class, v20.receiver, v20.super_class, v21.receiver, v21.super_class, self, &off_1F1DFB028);
        _accessibilityExplorerElements = LABEL_34:;
        goto LABEL_35;
      default:
LABEL_31:
        selfCopy3 = self;
        v16 = &off_1F1DFB028;
        v5 = &selfCopy3;
        goto LABEL_32;
    }

    _accessibilityExplorerElements = [selfCopy2 _handleElementTraversalRequestMovingForward:v12 count:v13 shouldIncludeSelf:1 wantsContainers:0];
    goto LABEL_35;
  }

  if ((a3 - 2014) >= 2)
  {
    if (a3 == 2019)
    {
      if ([self onClientSide])
      {
        _ancestorElementThatSupportsActivationAction = [self _ancestorElementThatSupportsActivationAction];

        if (_ancestorElementThatSupportsActivationAction)
        {
          firstObject = MEMORY[0x1E695E118];
          goto LABEL_36;
        }
      }

      objc_msgSendSuper2(&v21, sel__iosAccessibilityAttributeValue_, 2019, selfCopy3, v16, selfCopy4, v18, v19.receiver, v19.super_class, v20.receiver, v20.super_class, self, &off_1F1DFB028, v22.receiver, v22.super_class);
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if ([self onClientSide])
  {
    selfCopy4 = self;
    v18 = &off_1F1DFB028;
    v5 = &selfCopy4;
LABEL_32:
    [(objc_super *)v5 _iosAccessibilityAttributeValue:a3, selfCopy3, v16, selfCopy4, v18, v19.receiver, v19.super_class, v20.receiver, v20.super_class, v21.receiver, v21.super_class, v22.receiver, v22.super_class];
    goto LABEL_34;
  }

  v9 = [self _handleElementTraversalRequestMovingForward:a3 != 2015 count:1 shouldIncludeSelf:1 wantsContainers:1];
  firstObject = [v9 firstObject];
LABEL_41:

LABEL_36:

  return firstObject;
}

- (uint64_t)accessibilityActivate
{
  _ancestorElementThatSupportsActivationAction = [self _ancestorElementThatSupportsActivationAction];
  v2 = _ancestorElementThatSupportsActivationAction;
  if (_ancestorElementThatSupportsActivationAction)
  {
    accessibilityActivate = [_ancestorElementThatSupportsActivationAction accessibilityActivate];
  }

  else
  {
    accessibilityActivate = 0;
  }

  return accessibilityActivate;
}

@end