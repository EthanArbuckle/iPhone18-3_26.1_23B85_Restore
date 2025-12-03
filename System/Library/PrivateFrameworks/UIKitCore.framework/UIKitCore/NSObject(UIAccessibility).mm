@interface NSObject(UIAccessibility)
- (double)accessibilityActivationPoint;
- (double)accessibilityFrame;
- (uint64_t)_accessibilityGetBlockForAttribute:()UIAccessibility;
- (uint64_t)accessibilityContainer;
- (uint64_t)accessibilityDirectTouchOptions;
- (uint64_t)accessibilityElementsHidden;
- (uint64_t)accessibilityExpandedStatus;
- (uint64_t)accessibilityHeaderElements;
- (uint64_t)accessibilityHint;
- (uint64_t)accessibilityLabel;
- (uint64_t)accessibilityNavigationStyle;
- (uint64_t)accessibilityRespondsToUserInteraction;
- (uint64_t)accessibilityTraits;
- (uint64_t)accessibilityValue;
- (uint64_t)accessibilityViewIsModal;
- (uint64_t)isAccessibilityElement;
- (uint64_t)setAccessibilityHint:()UIAccessibility;
- (uint64_t)setAccessibilityLabel:()UIAccessibility;
- (uint64_t)setAccessibilityUserInputLabels:()UIAccessibility;
- (uint64_t)setAccessibilityValue:()UIAccessibility;
- (uint64_t)shouldGroupAccessibilityChildren;
- (void)_accessibilitySetReturnBlock:()UIAccessibility forAttribute:;
- (void)accessibilityUserInputLabels;
- (void)setAccessibilityActivationPoint:()UIAccessibility;
- (void)setAccessibilityContainer:()UIAccessibility;
- (void)setAccessibilityDirectTouchOptions:()UIAccessibility;
- (void)setAccessibilityElementsHidden:()UIAccessibility;
- (void)setAccessibilityExpandedStatus:()UIAccessibility;
- (void)setAccessibilityFrame:()UIAccessibility;
- (void)setAccessibilityHeaderElements:()UIAccessibility;
- (void)setAccessibilityNavigationStyle:()UIAccessibility;
- (void)setAccessibilityRespondsToUserInteraction:()UIAccessibility;
- (void)setAccessibilityTraits:()UIAccessibility;
- (void)setAccessibilityViewIsModal:()UIAccessibility;
- (void)setIsAccessibilityElement:()UIAccessibility;
- (void)setShouldGroupAccessibilityChildren:()UIAccessibility;
@end

@implementation NSObject(UIAccessibility)

- (uint64_t)accessibilityContainer
{
  AssociatedObject = objc_getAssociatedObject(self, &AXContainerIdentifier);

  return [AssociatedObject referencedContainer];
}

- (uint64_t)accessibilityValue
{
  _internalAccessibilityAttributedValue = [self _internalAccessibilityAttributedValue];

  return [_internalAccessibilityAttributedValue string];
}

- (uint64_t)accessibilityHint
{
  _internalAccessibilityAttributedHint = [self _internalAccessibilityAttributedHint];

  return [_internalAccessibilityAttributedHint string];
}

- (uint64_t)accessibilityLabel
{
  _internalAccessibilityAttributedLabel = [self _internalAccessibilityAttributedLabel];

  return [_internalAccessibilityAttributedLabel string];
}

- (uint64_t)accessibilityTraits
{
  AssociatedObject = objc_getAssociatedObject(self, &AXTraitsIdentifier);

  return [AssociatedObject unsignedLongLongValue];
}

- (void)accessibilityUserInputLabels
{
  v14 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _internalAccessibilityAttributedUserInputLabels = [self _internalAccessibilityAttributedUserInputLabels];
  v4 = [_internalAccessibilityAttributedUserInputLabels countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(_internalAccessibilityAttributedUserInputLabels);
        }

        [array addObject:{objc_msgSend(*(*(&v9 + 1) + 8 * v7++), "string")}];
      }

      while (v5 != v7);
      v5 = [_internalAccessibilityAttributedUserInputLabels countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return array;
}

- (uint64_t)isAccessibilityElement
{
  AssociatedObject = objc_getAssociatedObject(self, &AXIsElementIdentifier);

  return [AssociatedObject BOOLValue];
}

- (uint64_t)shouldGroupAccessibilityChildren
{
  storedShouldGroupAccessibilityChildren = [self storedShouldGroupAccessibilityChildren];

  return [storedShouldGroupAccessibilityChildren BOOLValue];
}

- (double)accessibilityActivationPoint
{
  AssociatedObject = objc_getAssociatedObject(self, &AXActivationPointIdentifier);
  if (AssociatedObject)
  {

    [AssociatedObject pointValue];
  }

  else
  {
    [self accessibilityFrame];
    x = v10.origin.x;
    y = v10.origin.y;
    width = v10.size.width;
    height = v10.size.height;
    MidX = CGRectGetMidX(v10);
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    CGRectGetMidY(v11);
    return MidX;
  }

  return result;
}

- (double)accessibilityFrame
{
  AssociatedObject = objc_getAssociatedObject(self, &AXFrameIdentifier);
  if (!AssociatedObject)
  {
    return *MEMORY[0x1E695F058];
  }

  [AssociatedObject rectValue];
  return result;
}

- (uint64_t)accessibilityViewIsModal
{
  storedAccessibilityViewIsModal = [self storedAccessibilityViewIsModal];

  return [storedAccessibilityViewIsModal BOOLValue];
}

- (uint64_t)accessibilityElementsHidden
{
  storedAccessibilityElementsHidden = [self storedAccessibilityElementsHidden];

  return [storedAccessibilityElementsHidden BOOLValue];
}

- (uint64_t)accessibilityNavigationStyle
{
  storedAccessibilityNavigationStyle = [self storedAccessibilityNavigationStyle];

  return [storedAccessibilityNavigationStyle integerValue];
}

- (uint64_t)accessibilityRespondsToUserInteraction
{
  storedAccessibilityRespondsToUserInteraction = [self storedAccessibilityRespondsToUserInteraction];

  return [storedAccessibilityRespondsToUserInteraction BOOLValue];
}

- (uint64_t)accessibilityHeaderElements
{
  AssociatedObject = objc_getAssociatedObject(self, &AXHeaderElementsIdentifier);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return AssociatedObject;
  }

  return [AssociatedObject allObjects];
}

- (void)setAccessibilityElementsHidden:()UIAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];

  objc_setAssociatedObject(self, &AXElementsHiddenIdentifier, v2, 1);
}

- (void)setAccessibilityViewIsModal:()UIAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];

  objc_setAssociatedObject(self, &AXViewIsModalIdentifier, v2, 1);
}

- (uint64_t)setAccessibilityLabel:()UIAccessibility
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && a3)
  {
    a3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a3];
  }

  return [self _internalSetAccessibilityAttributedLabel:a3];
}

- (uint64_t)setAccessibilityValue:()UIAccessibility
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && a3)
  {
    a3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a3];
  }

  return [self _internalSetAccessibilityAttributedValue:a3];
}

- (uint64_t)setAccessibilityHint:()UIAccessibility
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && a3)
  {
    a3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a3];
  }

  return [self _internalSetAccessibilityAttributedHint:a3];
}

- (void)setAccessibilityFrame:()UIAccessibility
{
  v2 = [MEMORY[0x1E696B098] valueWithRect:?];

  objc_setAssociatedObject(self, &AXFrameIdentifier, v2, 1);
}

- (void)setAccessibilityActivationPoint:()UIAccessibility
{
  v2 = [MEMORY[0x1E696B098] valueWithPoint:?];

  objc_setAssociatedObject(self, &AXActivationPointIdentifier, v2, 1);
}

- (void)setAccessibilityTraits:()UIAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];

  objc_setAssociatedObject(self, &AXTraitsIdentifier, v2, 1);
}

- (void)setIsAccessibilityElement:()UIAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];

  objc_setAssociatedObject(self, &AXIsElementIdentifier, v2, 1);
}

- (void)setAccessibilityContainer:()UIAccessibility
{
  if (a3)
  {
    AssociatedObject = objc_getAssociatedObject(object, &AXContainerIdentifier);
    if (!AssociatedObject)
    {
      AssociatedObject = objc_alloc_init(UIAccessibilityContainerReferenceHolder);
      objc_setAssociatedObject(object, &AXContainerIdentifier, AssociatedObject, 1);
    }

    [(UIAccessibilityContainerReferenceHolder *)AssociatedObject setReferencedContainer:a3];
  }

  else
  {

    objc_setAssociatedObject(object, &AXContainerIdentifier, 0, 1);
  }
}

- (void)setShouldGroupAccessibilityChildren:()UIAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];

  objc_setAssociatedObject(self, &AXShouldGroupChildren, v2, 1);
}

- (void)setAccessibilityNavigationStyle:()UIAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];

  objc_setAssociatedObject(self, &AXNavigationStyle, v2, 1);
}

- (void)setAccessibilityRespondsToUserInteraction:()UIAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];

  objc_setAssociatedObject(self, &AXRespondsToUserInteractionIdentifier, v2, 1);
}

- (uint64_t)setAccessibilityUserInputLabels:()UIAccessibility
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(a3);
          }

          [array addObject:{objc_msgSend(objc_alloc(MEMORY[0x1E696AAB0]), "initWithString:", *(*(&v11 + 1) + 8 * i))}];
        }

        v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else
  {
    array = 0;
  }

  return [self _internalSetAccessibilityAttributedUserInputLabels:array];
}

- (uint64_t)accessibilityDirectTouchOptions
{
  AssociatedObject = objc_getAssociatedObject(self, &AXDirectTouchOptionsIdentifier);

  return [AssociatedObject unsignedIntegerValue];
}

- (void)setAccessibilityDirectTouchOptions:()UIAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];

  objc_setAssociatedObject(self, &AXDirectTouchOptionsIdentifier, v2, 1);
}

- (void)setAccessibilityHeaderElements:()UIAccessibility
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = objc_opt_class();
    [v10 raise:v11 format:{@"accessibilityHeaderElements must be an NSArray. Was actually: %@", NSStringFromClass(v12)}];
LABEL_12:
    weakObjectsPointerArray = 0;
    goto LABEL_13;
  }

  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        [weakObjectsPointerArray addPointer:*(*(&v13 + 1) + 8 * i)];
      }

      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

LABEL_13:
  objc_setAssociatedObject(self, &AXHeaderElementsIdentifier, weakObjectsPointerArray, 1);
}

- (void)_accessibilitySetReturnBlock:()UIAccessibility forAttribute:
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return;
  }

  dictionary = [self _accessibilityValueForKey:@"AccessibilityAttributeBlockStorageKey"];
  if (dictionary)
  {
    if (a3)
    {
LABEL_5:
      v8 = _Block_copy(a3);
      [dictionary setObject:v8 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a4)}];

      _Block_release(v8);
      return;
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [self _accessibilitySetValue:dictionary forKey:@"AccessibilityAttributeBlockStorageKey" storageMode:0];
    if (a3)
    {
      goto LABEL_5;
    }
  }

  [dictionary removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a4)}];
  if (![dictionary count])
  {

    [self _accessibilitySetValue:0 forKey:@"AccessibilityAttributeBlockStorageKey" storageMode:1];
  }
}

- (uint64_t)_accessibilityGetBlockForAttribute:()UIAccessibility
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v5 = [self _accessibilityValueForKey:@"AccessibilityAttributeBlockStorageKey"];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  return [v6 objectForKey:v7];
}

- (void)setAccessibilityExpandedStatus:()UIAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];

  objc_setAssociatedObject(self, &AXExpandedStatusIdentifier, v2, 1);
}

- (uint64_t)accessibilityExpandedStatus
{
  AssociatedObject = objc_getAssociatedObject(self, &AXExpandedStatusIdentifier);

  return [AssociatedObject integerValue];
}

@end