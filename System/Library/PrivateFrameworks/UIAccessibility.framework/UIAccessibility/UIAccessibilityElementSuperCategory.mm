@interface UIAccessibilityElementSuperCategory
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (BOOL)_accessibilitySetNativeFocus;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_accessibilityViewHierarchyHasNativeFocus;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityZoomInAtPoint:(CGPoint)a3;
- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (UIAccessibilityElementSuperCategory)init;
- (UIAccessibilityElementSuperCategory)initWithAccessibilityContainer:(id)a3;
- (float)_accessibilityActivationDelay;
- (id)_accessibilityAutomaticIdentifier;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (id)description;
- (id)focusGroupIdentifier;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetValue:(id)a3;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)accessibilityIncrement;
- (void)dealloc;
@end

@implementation UIAccessibilityElementSuperCategory

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIAccessibilityElement" hasInstanceMethod:@"initWithAccessibilityContainer:" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIAccessibilityElement" hasInstanceMethod:@"_destroyFocusLayer" withFullSignature:{"v", 0}];
}

- (UIAccessibilityElementSuperCategory)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Use initWithAccessibilityContainer:"];
  v4.receiver = self;
  v4.super_class = UIAccessibilityElementSuperCategory;

  return 0;
}

- (UIAccessibilityElementSuperCategory)initWithAccessibilityContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = UIAccessibilityElementSuperCategory;
  v4 = [(UIAccessibilityElementSuperCategory *)&v9 initWithAccessibilityContainer:?];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v7 = [MEMORY[0x1E696AF00] callStackSymbols];
    NSLog(&cfstr_ErrorUiaccessi.isa, v7);

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"ERROR: UIAccessibilityElement initialized with nil container"];
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = v4;
LABEL_6:

  return v6;
}

- (void)dealloc
{
  [self _accessibilityUnregister];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __46__UIAccessibilityElementSuperCategory_dealloc__block_invoke;
  v7 = &unk_1E78AB028;
  v8 = self;
  AXPerformSafeBlock();
  v3.receiver = self;
  v3.super_class = UIAccessibilityElementSuperCategory;
  [(UIAccessibilityElementSuperCategory *)&v3 dealloc];
}

- (void)_accessibilitySetValue:(id)a3
{
  v4 = a3;
  v5 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  v6 = v5;
  if (v5)
  {
    [v5 _accessibilitySetValue:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIAccessibilityElementSuperCategory;
    [&v7 _accessibilitySetValue:v4];
  }
}

- (void)accessibilityElementDidBecomeFocused
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityElementDidBecomeFocused];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIAccessibilityElementSuperCategory;
    [&v5 accessibilityElementDidBecomeFocused];
  }
}

- (void)accessibilityElementDidLoseFocus
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityElementDidLoseFocus];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIAccessibilityElementSuperCategory;
    [&v5 accessibilityElementDidLoseFocus];
  }
}

- (BOOL)accessibilityActivate
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityActivate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIAccessibilityElementSuperCategory;
    v5 = [(UIAccessibilityElementSuperCategory *)&v8 accessibilityActivate];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _accessibilitySupportsActivateAction];
  }

  else
  {
    if (!_accessibilitySupportsActivateAction_BaseActivateAction)
    {
      v6 = objc_opt_class();
      _accessibilitySupportsActivateAction_BaseActivateAction = class_getInstanceMethod(v6, sel_accessibilityActivate);
    }

    v7 = objc_opt_class();
    if (class_getInstanceMethod(v7, sel_accessibilityActivate) == _accessibilitySupportsActivateAction_BaseActivateAction)
    {
      v8 = [self _accessibilityGetBlockForAttribute:17];
      v5 = v8 != 0;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (float)_accessibilityActivationDelay
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 _accessibilityActivationDelay:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIAccessibilityElementSuperCategory;
    [&v7 _accessibilityActivationDelay];
  }

  v5 = v4;

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 accessibilityActivationPoint:self];
    }

    else
    {
      [v3 accessibilityActivationPoint];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIAccessibilityElementSuperCategory;
    [(UIAccessibilityElementSuperCategory *)&v10 accessibilityActivationPoint];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (BOOL)isAccessibilityElement
{
  v6.receiver = self;
  v6.super_class = UIAccessibilityElementSuperCategory;
  v3 = [(UIAccessibilityElementSuperCategory *)&v6 isAccessibilityElement];
  v4 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v4 isAccessibilityElement:self];
  }

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (!v3)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 accessibilityLabel:self];
  }

  else
  {
    [v3 accessibilityLabel];
  }
  v4 = ;
  if (!v4)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    v4 = [(UIAccessibilityElementSuperCategory *)&v6 accessibilityLabel];
  }

  return v4;
}

- (id)accessibilityHint
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (!v3)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 accessibilityHint:self];
  }

  else
  {
    [v3 accessibilityHint];
  }
  v4 = ;
  if (!v4)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    v4 = [(UIAccessibilityElementSuperCategory *)&v6 accessibilityHint];
  }

  return v4;
}

- (id)accessibilityLanguage
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (!v3)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 accessibilityLanguage:self];
  }

  else
  {
    [v3 accessibilityLanguage];
  }
  v4 = ;
  if (!v4)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    v4 = [(UIAccessibilityElementSuperCategory *)&v6 accessibilityLanguage];
  }

  return v4;
}

- (id)accessibilityPath
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (!v3)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 accessibilityPath:self];
  }

  else
  {
    [v3 accessibilityPath];
  }
  v4 = ;
  if (!v4)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    v4 = [(UIAccessibilityElementSuperCategory *)&v6 accessibilityPath];
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  [(UIAccessibilityElementSuperCategory *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = height;
  v80.origin.x = v8;
  v80.origin.y = v10;
  v80.size.width = v12;
  v80.size.height = v14;
  if (!CGRectEqualToRect(v74, v80))
  {
    v15 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
      v18 = UIAccessibilityFrameForBounds(v17, v8, v10, v12, v14);
LABEL_10:
      x = v18;
      y = v19;
      width = v20;
      height = v21;

      goto LABEL_18;
    }
  }

  [(UIAccessibilityElementSuperCategory *)self accessibilityFrameInContainerSpace];
  if (CGRectIsNull(v75))
  {
    v22 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
    if (v22)
    {
      if (objc_opt_respondsToSelector())
      {
        [v22 accessibilityFrame:self];
      }

      else
      {
        [v22 accessibilityFrame];
      }

      x = v23;
      y = v24;
      width = v25;
      height = v26;
    }

    v72 = v22;
    aSelector = 0;
    [(UIAccessibilityElementSuperCategory *)self delegateSpecificsForAttribute:2003 delegate:&v72 selector:&aSelector];
    v51 = v72;

    if (v51 && aSelector)
    {
      v52 = NSStringFromSelector(aSelector);
      v53 = [v51 safeValueForKey:v52];
      [v53 rectValue];
      x = v54;
      y = v55;
      width = v56;
      height = v57;
    }
  }

  else
  {
    [(UIAccessibilityElementSuperCategory *)self accessibilityFrameInContainerSpace];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();

    if (v36)
    {
      v17 = [self _accessibilityWindow];
      v37 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
      [v37 convertRect:0 toView:{v28, v30, v32, v34}];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      [v17 convertRect:0 toWindow:{v39, v41, v43, v45}];
      goto LABEL_10;
    }

    v46 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    [v46 accessibilityFrame];
    v48 = v47;
    v50 = v49;

    v76.origin.x = v28;
    v76.origin.y = v30;
    v76.size.width = v32;
    v76.size.height = v34;
    v77 = CGRectOffset(v76, v48, v50);
    x = v77.origin.x;
    y = v77.origin.y;
    width = v77.size.width;
    height = v77.size.height;
  }

LABEL_18:
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  if (CGRectIsEmpty(v78))
  {
    v58 = [self _accessibilityGetBlockForAttribute:6];
    if (v58)
    {
      v59 = v58;
      x = (*(v58 + 16))();
      y = v60;
      width = v61;
      height = v62;
    }

    else
    {
      v71.receiver = self;
      v71.super_class = UIAccessibilityElementSuperCategory;
      [(UIAccessibilityElementSuperCategory *)&v71 accessibilityFrame];
      x = v63;
      y = v64;
      width = v65;
      height = v66;
    }
  }

  v67 = x;
  v68 = y;
  v69 = width;
  v70 = height;
  result.size.height = v70;
  result.size.width = v69;
  result.origin.y = v68;
  result.origin.x = v67;
  return result;
}

- (id)accessibilityValue
{
  v3 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (!v3)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 accessibilityValue:self];
  }

  else
  {
    [v3 accessibilityValue];
  }
  v4 = ;
  if (!v4)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    v4 = [(UIAccessibilityElementSuperCategory *)&v6 accessibilityValue];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UIAccessibilityElementSuperCategory;
  v3 = [(UIAccessibilityElementSuperCategory *)&v7 accessibilityTraits];
  v4 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 accessibilityTraits:self];
    }

    else
    {
      v5 = [v4 accessibilityTraits];
    }

    v3 |= v5;
  }

  return v3;
}

- (void)accessibilityIncrement
{
  v3 = [self _accessibilityGetBlockForAttribute:18];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  else
  {
    v5 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 accessibilityIncrement:self];
      }

      else
      {
        [v5 accessibilityIncrement];
      }
    }

    else
    {
      v6.receiver = self;
      v6.super_class = UIAccessibilityElementSuperCategory;
      [(UIAccessibilityElementSuperCategory *)&v6 accessibilityIncrement];
    }
  }
}

- (void)accessibilityDecrement
{
  v3 = [self _accessibilityGetBlockForAttribute:19];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  else
  {
    v5 = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 accessibilityDecrement:self];
      }

      else
      {
        [v5 accessibilityDecrement];
      }
    }

    else
    {
      v6.receiver = self;
      v6.super_class = UIAccessibilityElementSuperCategory;
      [(UIAccessibilityElementSuperCategory *)&v6 accessibilityDecrement];
    }
  }
}

- (id)description
{
  v3 = [objc_opt_class() description];
  v4 = [(UIAccessibilityElementSuperCategory *)self accessibilityLabel];
  [(UIAccessibilityElementSuperCategory *)self accessibilityFrame];
  v5 = NSStringFromCGRect(v9);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [%p] %@ %@", v3, self, v4, v5];

  return v6;
}

- (BOOL)accessibilityZoomInAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
  v6 = [v5 accessibilityZoomInAtPoint:{x, y}];

  return v6;
}

- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
  v6 = [v5 accessibilityZoomOutAtPoint:{x, y}];

  return v6;
}

- (id)_accessibilityAutomaticIdentifier
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = 0;
  }

  else
  {
    v4 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    v5 = [v4 _accessibilityAutomaticIdentifier];

    v6 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    v7 = [v6 indexOfAccessibilityElement:self];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v3 = [v8 stringWithFormat:@"%@:%@", v5, v9];
  }

  return v3;
}

- (BOOL)_accessibilitySetNativeFocus
{
  if ([(UIAccessibilityElementSuperCategory *)self _accessibilityIsFKARunningForFocusItem]&& [(UIAccessibilityElementSuperCategory *)self safeBoolForKey:@"canBecomeFocused"])
  {
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    return [&v6 _accessibilitySetNativeFocus];
  }

  else
  {
    v4 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    v5 = [v4 _accessibilitySetNativeFocus];

    return v5;
  }
}

- (BOOL)_accessibilityViewHierarchyHasNativeFocus
{
  v2 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
  v3 = [v2 _accessibilityViewHierarchyHasNativeFocus];

  return v3;
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  v2 = [self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v3 = [v2 _accessibilityIsFKARunningForFocusItem];

  return v3;
}

- (id)focusGroupIdentifier
{
  v3 = [self _accessibilityParentView];
  v4 = [v3 safeValueForKey:@"_containingScrollView"];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = UIAccessibilityElementSuperCategory;
    v5 = [&v7 focusGroupIdentifier];
  }

  else
  {
    v5 = [self _accessibilityDefaultFocusGroupIdentifier];
  }

  return v5;
}

@end