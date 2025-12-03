@interface NSObject(UIAccessibilityOpaqueElementProvider)
+ (void)_accessibilityUpdateOpaqueFocusStateForTechnology:()UIAccessibilityOpaqueElementProvider oldElement:newElement:;
- (id)_accessibilityCurrentlyFocusedElementForTechnology:()UIAccessibilityOpaqueElementProvider;
- (id)_accessibilityFocusStatePerTechnology;
- (void)_accessibilityDidFocusOnOpaqueElement:()UIAccessibilityOpaqueElementProvider technology:;
- (void)_accessibilityDidReuseOpaqueElementView:()UIAccessibilityOpaqueElementProvider;
- (void)_accessibilityUpdateFocusState:()UIAccessibilityOpaqueElementProvider forFocusedElement:;
@end

@implementation NSObject(UIAccessibilityOpaqueElementProvider)

- (id)_accessibilityFocusStatePerTechnology
{
  dictionary = objc_getAssociatedObject(self, &_opaqueFocusState);
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    objc_setAssociatedObject(self, &_opaqueFocusState, dictionary, 1);
  }

  return dictionary;
}

- (void)_accessibilityDidFocusOnOpaqueElement:()UIAccessibilityOpaqueElementProvider technology:
{
  v10 = a3;
  v6 = a4;
  if (([self isAccessibilityOpaqueElementProvider] & 1) == 0)
  {
    selfCopy = self;
    _AXAssert();
  }

  _accessibilityFocusStatePerTechnology = [self _accessibilityFocusStatePerTechnology];
  v8 = [_accessibilityFocusStatePerTechnology objectForKeyedSubscript:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(UIAccessibilityOpaqueFocusState);
    [_accessibilityFocusStatePerTechnology setObject:v8 forKeyedSubscript:v6];
  }

  [self _accessibilityUpdateFocusState:v8 forFocusedElement:v10];
}

+ (void)_accessibilityUpdateOpaqueFocusStateForTechnology:()UIAccessibilityOpaqueElementProvider oldElement:newElement:
{
  v11 = a3;
  v7 = a5;
  v8 = a4;
  _accessibilityOpaqueElementParent = [v7 _accessibilityOpaqueElementParent];
  _accessibilityOpaqueElementParent2 = [v8 _accessibilityOpaqueElementParent];

  if (_accessibilityOpaqueElementParent != _accessibilityOpaqueElementParent2)
  {
    [_accessibilityOpaqueElementParent2 _accessibilityDidFocusOnOpaqueElement:0 technology:v11];
  }

  [_accessibilityOpaqueElementParent _accessibilityDidFocusOnOpaqueElement:v7 technology:v11];
}

- (void)_accessibilityUpdateFocusState:()UIAccessibilityOpaqueElementProvider forFocusedElement:
{
  v6 = a3;
  v7 = a4;
  [v6 setElement:v7];
  [v7 accessibilityFrame];
  [v6 setSceneRelativeFrame:?];
  if (v7)
  {
    v8 = [self _accessibilityReusableViewForOpaqueElement:v7];
    [v6 setReusableView:v8];
  }

  [v6 setHasBeenReused:0];
  v9 = AXLogOpaqueElements();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(NSObject(UIAccessibilityOpaqueElementProvider) *)self _accessibilityUpdateFocusState:v6 forFocusedElement:v9];
  }
}

- (id)_accessibilityCurrentlyFocusedElementForTechnology:()UIAccessibilityOpaqueElementProvider
{
  v4 = a3;
  _accessibilityFocusStatePerTechnology = [self _accessibilityFocusStatePerTechnology];
  v6 = [_accessibilityFocusStatePerTechnology objectForKeyedSubscript:v4];

  element = [v6 element];
  if (![v6 hasFocus])
  {
    goto LABEL_9;
  }

  if (!element)
  {
    v25 = AXLogOpaqueElements();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [NSObject(UIAccessibilityOpaqueElementProvider) _accessibilityCurrentlyFocusedElementForTechnology:v25];
    }

    goto LABEL_16;
  }

  _accessibilityParentView = [element _accessibilityParentView];
  if ([_accessibilityParentView _accessibilityViewIsVisible] && (objc_msgSend(element, "_accessibilityWindow"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    accessibilityTraits = [element accessibilityTraits];
    v11 = UIAccessibilityTraitSpacer & accessibilityTraits;

    if (!v11)
    {
      v25 = AXLogOpaqueElements();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [NSObject(UIAccessibilityOpaqueElementProvider) _accessibilityCurrentlyFocusedElementForTechnology:element];
      }

      goto LABEL_16;
    }
  }

  if (![v6 hasBeenReused] || (objc_msgSend(element, "accessibilityFrame"), v13 = v12, v15 = v14, v17 = v16, v19 = v18, objc_msgSend(v6, "sceneRelativeFrame"), v34.origin.x = v20, v34.origin.y = v21, v34.size.width = v22, v34.size.height = v23, v31.origin.x = v13, v31.origin.y = v15, v31.size.width = v17, v31.size.height = v19, CGRectEqualToRect(v31, v34)))
  {
LABEL_9:
    v24 = element;
    goto LABEL_21;
  }

  v25 = AXLogOpaqueElements();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [(NSObject(UIAccessibilityOpaqueElementProvider) *)v6 _accessibilityCurrentlyFocusedElementForTechnology:element];
  }

LABEL_16:

  [v6 sceneRelativeFrame];
  MidX = CGRectGetMidX(v32);
  [v6 sceneRelativeFrame];
  MidY = CGRectGetMidY(v33);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _AXAssert();
  }

  v24 = [self _accessibilityHitTest:0 withEvent:{UIAccessibilityPointToPoint(self, MidX, MidY)}];

  v28 = AXLogOpaqueElements();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(UIAccessibilityOpaqueElementProvider) _accessibilityCurrentlyFocusedElementForTechnology:v6];
  }

LABEL_21:

  return v24;
}

- (void)_accessibilityDidReuseOpaqueElementView:()UIAccessibilityOpaqueElementProvider
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _accessibilityFocusStatePerTechnology = [self _accessibilityFocusStatePerTechnology];
  allValues = [_accessibilityFocusStatePerTechnology allValues];

  v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        reusableView = [v11 reusableView];

        if (reusableView == v4)
        {
          [v11 setHasBeenReused:1];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)_accessibilityUpdateFocusState:()UIAccessibilityOpaqueElementProvider forFocusedElement:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_1A9B83000, log, OS_LOG_TYPE_DEBUG, "Opaque element provider: %{public}@. Focus state: %{public}@", &v3, 0x16u);
}

- (void)_accessibilityCurrentlyFocusedElementForTechnology:()UIAccessibilityOpaqueElementProvider .cold.1(void *a1, void *a2)
{
  [a1 sceneRelativeFrame];
  v3 = NSStringFromCGRect(v10);
  [a2 accessibilityFrame];
  v4 = NSStringFromCGRect(v11);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)_accessibilityCurrentlyFocusedElementForTechnology:()UIAccessibilityOpaqueElementProvider .cold.2(void *a1)
{
  v1 = [a1 _accessibilityParentView];
  [v1 _accessibilityViewIsVisible];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_accessibilityCurrentlyFocusedElementForTechnology:()UIAccessibilityOpaqueElementProvider .cold.4(void *a1)
{
  [a1 sceneRelativeFrame];
  v6 = NSStringFromCGRect(v7);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end