@interface UIAccessibilityElement(Private)
- (double)bounds;
- (id)accessibilityDelegate;
- (uint64_t)_accessibilityViewIsVisible;
- (void)delegateSpecificsForAttribute:()Private delegate:selector:;
- (void)setAccessibilityDelegate:()Private;
- (void)setBounds:()Private;
- (void)setDelegate:()Private forAttribute:withSelector:;
@end

@implementation UIAccessibilityElement(Private)

- (id)accessibilityDelegate
{
  v1 = objc_getAssociatedObject(a1, &AXDelegateKey);
  v2 = [v1 delegate];

  return v2;
}

- (void)setAccessibilityDelegate:()Private
{
  v4 = a3;
  value = objc_alloc_init(UIAccessibilityElementWeakDelegateContainer);
  [(UIAccessibilityElementWeakDelegateContainer *)value setDelegate:v4];

  objc_setAssociatedObject(a1, &AXDelegateKey, value, 1);
}

- (uint64_t)_accessibilityViewIsVisible
{
  v1 = [a1 _accessibilityParentView];
  v2 = [v1 _accessibilityViewIsVisible];

  return v2;
}

- (void)setDelegate:()Private forAttribute:withSelector:
{
  v8 = a3;
  v13 = [a1 _accessibilityValueForKey:@"UIAXDelegateSpecific"];
  if (!v13)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    [a1 _accessibilitySetRetainedValue:? forKey:?];
  }

  v9 = MEMORY[0x1E695DF20];
  v10 = NSStringFromSelector(a5);
  v11 = [v9 dictionaryWithObjectsAndKeys:{v8, @"UIAXDelegate", v10, @"selector", 0}];

  v12 = [MEMORY[0x1E696AD98] numberWithLong:a4];
  [v13 setObject:v11 forKey:v12];
}

- (void)delegateSpecificsForAttribute:()Private delegate:selector:
{
  v8 = [a1 _accessibilityValueForKey:@"UIAXDelegateSpecific"];
  if (v8)
  {
    v12 = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithLong:a3];
    v10 = [v12 objectForKey:v9];

    *a4 = [v10 objectForKey:@"UIAXDelegate"];
    v11 = [v10 objectForKey:@"selector"];
    *a5 = NSSelectorFromString(v11);

    v8 = v12;
  }
}

- (void)setBounds:()Private
{
  v2 = [MEMORY[0x1E696B098] valueWithRect:?];
  [a1 _accessibilitySetValue:v2 forKey:@"AXElementBounds" storageMode:0];
}

- (double)bounds
{
  v1 = [a1 _accessibilityValueForKey:@"AXElementBounds"];
  v2 = v1;
  if (v1)
  {
    [v1 rectValue];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
  }

  return v4;
}

@end