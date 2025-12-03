@interface UIAccessibilityElementSuperCategory
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (BOOL)_accessibilitySetNativeFocus;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_accessibilityViewHierarchyHasNativeFocus;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityZoomInAtPoint:(CGPoint)point;
- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)point;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (UIAccessibilityElementSuperCategory)init;
- (UIAccessibilityElementSuperCategory)initWithAccessibilityContainer:(id)container;
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
- (void)_accessibilitySetValue:(id)value;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)accessibilityIncrement;
- (void)dealloc;
@end

@implementation UIAccessibilityElementSuperCategory

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIAccessibilityElement" hasInstanceMethod:@"initWithAccessibilityContainer:" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIAccessibilityElement" hasInstanceMethod:@"_destroyFocusLayer" withFullSignature:{"v", 0}];
}

- (UIAccessibilityElementSuperCategory)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Use initWithAccessibilityContainer:"];
  v4.receiver = self;
  v4.super_class = UIAccessibilityElementSuperCategory;

  return 0;
}

- (UIAccessibilityElementSuperCategory)initWithAccessibilityContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = UIAccessibilityElementSuperCategory;
  v4 = [(UIAccessibilityElementSuperCategory *)&v9 initWithAccessibilityContainer:?];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (!container)
  {
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    NSLog(&cfstr_ErrorUiaccessi.isa, callStackSymbols);

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
  selfCopy = self;
  AXPerformSafeBlock();
  v3.receiver = self;
  v3.super_class = UIAccessibilityElementSuperCategory;
  [(UIAccessibilityElementSuperCategory *)&v3 dealloc];
}

- (void)_accessibilitySetValue:(id)value
{
  valueCopy = value;
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  v6 = accessibilityDelegate;
  if (accessibilityDelegate)
  {
    [accessibilityDelegate _accessibilitySetValue:valueCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIAccessibilityElementSuperCategory;
    [&v7 _accessibilitySetValue:valueCopy];
  }
}

- (void)accessibilityElementDidBecomeFocused
{
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  v4 = accessibilityDelegate;
  if (accessibilityDelegate)
  {
    [accessibilityDelegate accessibilityElementDidBecomeFocused];
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
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  v4 = accessibilityDelegate;
  if (accessibilityDelegate)
  {
    [accessibilityDelegate accessibilityElementDidLoseFocus];
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
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  v4 = accessibilityDelegate;
  if (accessibilityDelegate)
  {
    accessibilityActivate = [accessibilityDelegate accessibilityActivate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIAccessibilityElementSuperCategory;
    accessibilityActivate = [(UIAccessibilityElementSuperCategory *)&v8 accessibilityActivate];
  }

  v6 = accessibilityActivate;

  return v6;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  v4 = accessibilityDelegate;
  if (accessibilityDelegate)
  {
    _accessibilitySupportsActivateAction = [accessibilityDelegate _accessibilitySupportsActivateAction];
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
      _accessibilitySupportsActivateAction = v8 != 0;
    }

    else
    {
      _accessibilitySupportsActivateAction = 1;
    }
  }

  return _accessibilitySupportsActivateAction;
}

- (float)_accessibilityActivationDelay
{
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (accessibilityDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [accessibilityDelegate _accessibilityActivationDelay:self];
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
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (accessibilityDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [accessibilityDelegate accessibilityActivationPoint:self];
    }

    else
    {
      [accessibilityDelegate accessibilityActivationPoint];
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
  isAccessibilityElement = [(UIAccessibilityElementSuperCategory *)&v6 isAccessibilityElement];
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (accessibilityDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    isAccessibilityElement = [accessibilityDelegate isAccessibilityElement:self];
  }

  return isAccessibilityElement;
}

- (id)accessibilityLabel
{
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (!accessibilityDelegate)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [accessibilityDelegate accessibilityLabel:self];
  }

  else
  {
    [accessibilityDelegate accessibilityLabel];
  }
  accessibilityLabel = ;
  if (!accessibilityLabel)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    accessibilityLabel = [(UIAccessibilityElementSuperCategory *)&v6 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (!accessibilityDelegate)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [accessibilityDelegate accessibilityHint:self];
  }

  else
  {
    [accessibilityDelegate accessibilityHint];
  }
  accessibilityHint = ;
  if (!accessibilityHint)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    accessibilityHint = [(UIAccessibilityElementSuperCategory *)&v6 accessibilityHint];
  }

  return accessibilityHint;
}

- (id)accessibilityLanguage
{
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (!accessibilityDelegate)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [accessibilityDelegate accessibilityLanguage:self];
  }

  else
  {
    [accessibilityDelegate accessibilityLanguage];
  }
  accessibilityLanguage = ;
  if (!accessibilityLanguage)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    accessibilityLanguage = [(UIAccessibilityElementSuperCategory *)&v6 accessibilityLanguage];
  }

  return accessibilityLanguage;
}

- (id)accessibilityPath
{
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (!accessibilityDelegate)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [accessibilityDelegate accessibilityPath:self];
  }

  else
  {
    [accessibilityDelegate accessibilityPath];
  }
  accessibilityPath = ;
  if (!accessibilityPath)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    accessibilityPath = [(UIAccessibilityElementSuperCategory *)&v6 accessibilityPath];
  }

  return accessibilityPath;
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
    accessibilityContainer = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      accessibilityContainer2 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
      v18 = UIAccessibilityFrameForBounds(accessibilityContainer2, v8, v10, v12, v14);
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
    accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
    if (accessibilityDelegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [accessibilityDelegate accessibilityFrame:self];
      }

      else
      {
        [accessibilityDelegate accessibilityFrame];
      }

      x = v23;
      y = v24;
      width = v25;
      height = v26;
    }

    v72 = accessibilityDelegate;
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
    accessibilityContainer3 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();

    if (v36)
    {
      accessibilityContainer2 = [self _accessibilityWindow];
      accessibilityContainer4 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
      [accessibilityContainer4 convertRect:0 toView:{v28, v30, v32, v34}];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      [accessibilityContainer2 convertRect:0 toWindow:{v39, v41, v43, v45}];
      goto LABEL_10;
    }

    accessibilityContainer5 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    [accessibilityContainer5 accessibilityFrame];
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
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (!accessibilityDelegate)
  {
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [accessibilityDelegate accessibilityValue:self];
  }

  else
  {
    [accessibilityDelegate accessibilityValue];
  }
  accessibilityValue = ;
  if (!accessibilityValue)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementSuperCategory;
    accessibilityValue = [(UIAccessibilityElementSuperCategory *)&v6 accessibilityValue];
  }

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UIAccessibilityElementSuperCategory;
  accessibilityTraits = [(UIAccessibilityElementSuperCategory *)&v7 accessibilityTraits];
  accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
  if (accessibilityDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      accessibilityTraits2 = [accessibilityDelegate accessibilityTraits:self];
    }

    else
    {
      accessibilityTraits2 = [accessibilityDelegate accessibilityTraits];
    }

    accessibilityTraits |= accessibilityTraits2;
  }

  return accessibilityTraits;
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
    accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
    if (accessibilityDelegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [accessibilityDelegate accessibilityIncrement:self];
      }

      else
      {
        [accessibilityDelegate accessibilityIncrement];
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
    accessibilityDelegate = [(UIAccessibilityElementSuperCategory *)self accessibilityDelegate];
    if (accessibilityDelegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [accessibilityDelegate accessibilityDecrement:self];
      }

      else
      {
        [accessibilityDelegate accessibilityDecrement];
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
  accessibilityLabel = [(UIAccessibilityElementSuperCategory *)self accessibilityLabel];
  [(UIAccessibilityElementSuperCategory *)self accessibilityFrame];
  v5 = NSStringFromCGRect(v9);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [%p] %@ %@", v3, self, accessibilityLabel, v5];

  return v6;
}

- (BOOL)accessibilityZoomInAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  accessibilityContainer = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
  v6 = [accessibilityContainer accessibilityZoomInAtPoint:{x, y}];

  return v6;
}

- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  accessibilityContainer = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
  v6 = [accessibilityContainer accessibilityZoomOutAtPoint:{x, y}];

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
    accessibilityContainer = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    _accessibilityAutomaticIdentifier = [accessibilityContainer _accessibilityAutomaticIdentifier];

    accessibilityContainer2 = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    v7 = [accessibilityContainer2 indexOfAccessibilityElement:self];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v3 = [v8 stringWithFormat:@"%@:%@", _accessibilityAutomaticIdentifier, v9];
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
    accessibilityContainer = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
    _accessibilitySetNativeFocus = [accessibilityContainer _accessibilitySetNativeFocus];

    return _accessibilitySetNativeFocus;
  }
}

- (BOOL)_accessibilityViewHierarchyHasNativeFocus
{
  accessibilityContainer = [(UIAccessibilityElementSuperCategory *)self accessibilityContainer];
  _accessibilityViewHierarchyHasNativeFocus = [accessibilityContainer _accessibilityViewHierarchyHasNativeFocus];

  return _accessibilityViewHierarchyHasNativeFocus;
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  v2 = [self _accessibilityAncestorIsKindOf:objc_opt_class()];
  _accessibilityIsFKARunningForFocusItem = [v2 _accessibilityIsFKARunningForFocusItem];

  return _accessibilityIsFKARunningForFocusItem;
}

- (id)focusGroupIdentifier
{
  _accessibilityParentView = [self _accessibilityParentView];
  v4 = [_accessibilityParentView safeValueForKey:@"_containingScrollView"];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = UIAccessibilityElementSuperCategory;
    focusGroupIdentifier = [&v7 focusGroupIdentifier];
  }

  else
  {
    focusGroupIdentifier = [self _accessibilityDefaultFocusGroupIdentifier];
  }

  return focusGroupIdentifier;
}

@end