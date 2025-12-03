@interface NSObjectAccessibility
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)accessibilityViewIsModal;
- (BOOL)isAccessibilityElement;
- (BOOL)shouldGroupAccessibilityChildren;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (id)accessibilityCustomActions;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (id)accessibilityElements;
- (id)accessibilityHeaderElements;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (id)accessibilityNextTextNavigationElement;
- (id)accessibilityPath;
- (id)accessibilityPreviousTextNavigationElement;
- (id)accessibilityTextInputResponder;
- (id)accessibilityUserDefinedActivationPoint;
- (id)accessibilityUserDefinedContainer;
- (id)accessibilityUserDefinedDragSourceDescriptors;
- (id)accessibilityUserDefinedDropPointDescriptors;
- (id)accessibilityUserDefinedFrame;
- (id)accessibilityUserDefinedHint;
- (id)accessibilityUserDefinedIdentifier;
- (id)accessibilityUserDefinedLabel;
- (id)accessibilityUserDefinedLanguage;
- (id)accessibilityUserDefinedShouldGroupChildren;
- (id)accessibilityUserDefinedTraits;
- (id)accessibilityUserDefinedValue;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)automationElements;
- (id)isAccessibilityUserDefinedElement;
- (id)storedAccessibilityElementsHidden;
- (id)storedAccessibilityViewIsModal;
- (id)storedShouldGroupAccessibilityChildren;
- (int64_t)accessibilityElementCount;
- (int64_t)accessibilityNavigationStyle;
- (int64_t)indexOfAccessibilityElement:(id)element;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)accessibilityLabel;
- (void)setAccessibilityElements:(id)elements;
- (void)setAccessibilityHint:(id)hint;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityValue:(id)value;
- (void)setAutomationElements:(id)elements;
@end

@implementation NSObjectAccessibility

- (id)accessibilityUserDefinedLabel
{
  v3 = [self _accessibilityGetBlockForAttribute:1];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
    goto LABEL_12;
  }

  v9.receiver = self;
  v9.super_class = NSObjectAccessibility;
  accessibilityAttributedLabel = [(NSObjectAccessibility *)&v9 accessibilityAttributedLabel];
  if (!accessibilityAttributedLabel)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = AXRuntimeLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [NSObjectAccessibility accessibilityLabel];
      }
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:accessibilityAttributedLabel];
LABEL_11:

LABEL_12:

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [self _accessibilityGetBlockForAttribute:1];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
    goto LABEL_12;
  }

  v9.receiver = self;
  v9.super_class = NSObjectAccessibility;
  accessibilityAttributedLabel = [(NSObjectAccessibility *)&v9 accessibilityAttributedLabel];
  if (!accessibilityAttributedLabel)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = AXRuntimeLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [NSObjectAccessibility accessibilityLabel];
      }
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:accessibilityAttributedLabel];
LABEL_11:

LABEL_12:

  return v5;
}

- (id)accessibilityUserDefinedIdentifier
{
  v3 = [self _accessibilityGetBlockForAttribute:21];
  v4 = v3;
  if (v3)
  {
    accessibilityIdentifier = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityIdentifier = [(NSObjectAccessibility *)&v8 accessibilityIdentifier];
  }

  v6 = accessibilityIdentifier;

  return v6;
}

- (id)accessibilityLanguage
{
  v3 = [self _accessibilityGetBlockForAttribute:9];
  v4 = v3;
  if (v3)
  {
    accessibilityLanguage = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityLanguage = [(NSObjectAccessibility *)&v8 accessibilityLanguage];
  }

  v6 = accessibilityLanguage;

  return v6;
}

- (int64_t)accessibilityElementCount
{
  v3 = [(NSObjectAccessibility *)self _accessibilityBoolValueForKey:@"AXPerformingChildrenCount"];
  [(NSObjectAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"AXPerformingChildrenCount"];
  _accessibilityElements = [self _accessibilityElements];
  v5 = _accessibilityElements;
  if (_accessibilityElements)
  {
    v6 = [_accessibilityElements count];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(NSObjectAccessibility *)self _accessibilitySetBoolValue:v3 forKey:@"AXPerformingChildrenCount"];

  return v6;
}

- (id)accessibilityElements
{
  v3 = [self _accessibilityGetBlockForAttribute:22];
  v4 = v3;
  if (v3)
  {
    accessibilityElements = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityElements = [(NSObjectAccessibility *)&v8 accessibilityElements];
  }

  v6 = accessibilityElements;

  return v6;
}

- (id)accessibilityTextInputResponder
{
  v3 = [self _accessibilityGetBlockForAttribute:49];
  v4 = v3;
  if (v3)
  {
    accessibilityTextInputResponder = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityTextInputResponder = [(NSObjectAccessibility *)&v8 accessibilityTextInputResponder];
  }

  v6 = accessibilityTextInputResponder;

  return v6;
}

- (BOOL)isAccessibilityElement
{
  v3 = [self _accessibilityGetBlockForAttribute:0];
  v4 = v3;
  if (v3)
  {
    isAccessibilityElement = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    isAccessibilityElement = [(NSObjectAccessibility *)&v8 isAccessibilityElement];
  }

  v6 = isAccessibilityElement;

  return v6;
}

- (id)accessibilityIdentifier
{
  v3 = [self _accessibilityGetBlockForAttribute:21];
  v4 = v3;
  if (v3)
  {
    accessibilityIdentifier = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityIdentifier = [(NSObjectAccessibility *)&v8 accessibilityIdentifier];
  }

  v6 = accessibilityIdentifier;

  return v6;
}

- (id)accessibilityUserDefinedFrame
{
  v3 = [self _accessibilityGetBlockForAttribute:6];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696B098];
    (*(v3 + 16))(v3);
    [v5 valueWithRect:?];
  }

  else
  {
    [(NSObjectAccessibility *)self storedAccessibilityFrame];
  }
  v6 = ;

  return v6;
}

- (BOOL)shouldGroupAccessibilityChildren
{
  v3 = [self _accessibilityGetBlockForAttribute:12];
  v4 = v3;
  if (v3)
  {
    shouldGroupAccessibilityChildren = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    shouldGroupAccessibilityChildren = [(NSObjectAccessibility *)&v8 shouldGroupAccessibilityChildren];
  }

  v6 = shouldGroupAccessibilityChildren;

  return v6;
}

- (id)storedShouldGroupAccessibilityChildren
{
  v3 = [self _accessibilityGetBlockForAttribute:12];
  v4 = v3;
  if (v3)
  {
    storedShouldGroupAccessibilityChildren = [MEMORY[0x1E696AD98] numberWithBool:(*(v3 + 16))(v3)];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    storedShouldGroupAccessibilityChildren = [(NSObjectAccessibility *)&v8 storedShouldGroupAccessibilityChildren];
  }

  v6 = storedShouldGroupAccessibilityChildren;

  return v6;
}

- (id)accessibilityCustomActions
{
  v3 = [self _accessibilityGetBlockForAttribute:26];
  v4 = v3;
  if (v3)
  {
    accessibilityCustomActions = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityCustomActions = [(NSObjectAccessibility *)&v8 accessibilityCustomActions];
  }

  v6 = accessibilityCustomActions;

  return v6;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  _accessibilityElements = [self _accessibilityElements];
  v5 = _accessibilityElements;
  if (_accessibilityElements)
  {
    v6 = [_accessibilityElements count];
    v7 = 0;
    if ((index & 0x8000000000000000) == 0 && v6 > index)
    {
      v7 = [v5 objectAtIndex:index];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  elementCopy = element;
  _accessibilityElements = [self _accessibilityElements];
  v6 = _accessibilityElements;
  if (_accessibilityElements)
  {
    v7 = [_accessibilityElements indexOfObject:elementCopy];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)accessibilityIncrement
{
  v2 = [self _accessibilityGetBlockForAttribute:18];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)accessibilityDecrement
{
  v2 = [self _accessibilityGetBlockForAttribute:19];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v3 = [self _accessibilityGetBlockForAttribute:41];
  v4 = v3;
  if (!v3)
  {
    storedAccessibilityRespondsToUserInteraction = [(NSObjectAccessibility *)self storedAccessibilityRespondsToUserInteraction];
    v7 = storedAccessibilityRespondsToUserInteraction;
    if (storedAccessibilityRespondsToUserInteraction)
    {
      bOOLValue = [storedAccessibilityRespondsToUserInteraction BOOLValue];
    }

    else
    {
      accessibilityTraits = [(NSObjectAccessibility *)self accessibilityTraits];
      v10 = dyld_program_sdk_at_least();
      v11 = *MEMORY[0x1E6989068];
      if (!v10)
      {
        v11 = 0;
      }

      if (((*MEMORY[0x1E6989138] | *MEMORY[0x1E69890D8]) & accessibilityTraits) == 0)
      {
        v12 = *MEMORY[0x1E6989018];
        if ((*MEMORY[0x1E6989148] & accessibilityTraits) == 0 || (v12 & accessibilityTraits) != 0)
        {
          v13 = (*MEMORY[0x1E6989060] | *MEMORY[0x1E6989140] | v11) & accessibilityTraits;
          if (((*MEMORY[0x1E69890A8] | *MEMORY[0x1E6989160] | *MEMORY[0x1E69890F8] | *MEMORY[0x1E6989030] | *MEMORY[0x1E6988FC0] | *MEMORY[0x1E6988FD0] | *MEMORY[0x1E6989268] | *MEMORY[0x1E69890A0] | *MEMORY[0x1E6989050] | *MEMORY[0x1E6988FE0] | *MEMORY[0x1E6989098] | *MEMORY[0x1E6989210] | *MEMORY[0x1E6989150] | v12) & accessibilityTraits) != 0 || v13 == 0)
          {
            v5 = 1;
LABEL_18:

            goto LABEL_19;
          }
        }
      }

      bOOLValue = [self _accessibilityRespondsToUserInteraction];
    }

    v5 = bOOLValue;
    goto LABEL_18;
  }

  v5 = (*(v3 + 16))(v3);
LABEL_19:

  return v5;
}

- (void)setAccessibilityLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isAXAttributedString])
  {
    -[NSObjectAccessibility setAccessibilityAttributedLabel:](&v6, sel_setAccessibilityAttributedLabel_, [labelCopy cfAttributedString], v5.receiver, v5.super_class, self, NSObjectAccessibility);
  }

  else
  {
    [(NSObjectAccessibility *)&v5 setAccessibilityLabel:labelCopy, self, NSObjectAccessibility, v6.receiver, v6.super_class];
  }
}

- (id)accessibilityValue
{
  v3 = [self _accessibilityGetBlockForAttribute:3];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:{-[NSObjectAccessibility accessibilityAttributedValue](&v8, sel_accessibilityAttributedValue)}];
  }

  v6 = v5;

  return v6;
}

- (void)setAccessibilityValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isAXAttributedString])
  {
    -[NSObjectAccessibility setAccessibilityAttributedValue:](&v6, sel_setAccessibilityAttributedValue_, [valueCopy cfAttributedString], v5.receiver, v5.super_class, self, NSObjectAccessibility);
  }

  else
  {
    [(NSObjectAccessibility *)&v5 setAccessibilityValue:valueCopy, self, NSObjectAccessibility, v6.receiver, v6.super_class];
  }
}

- (id)accessibilityUserDefinedValue
{
  v3 = [self _accessibilityGetBlockForAttribute:3];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:{-[NSObjectAccessibility accessibilityAttributedValue](&v8, sel_accessibilityAttributedValue)}];
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityHint
{
  v3 = [self _accessibilityGetBlockForAttribute:2];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:{-[NSObjectAccessibility accessibilityAttributedHint](&v8, sel_accessibilityAttributedHint)}];
  }

  v6 = v5;

  return v6;
}

- (void)setAccessibilityHint:(id)hint
{
  hintCopy = hint;
  if ([hintCopy isAXAttributedString])
  {
    -[NSObjectAccessibility setAccessibilityAttributedHint:](&v6, sel_setAccessibilityAttributedHint_, [hintCopy cfAttributedString], v5.receiver, v5.super_class, self, NSObjectAccessibility);
  }

  else
  {
    [(NSObjectAccessibility *)&v5 setAccessibilityHint:hintCopy, self, NSObjectAccessibility, v6.receiver, v6.super_class];
  }
}

- (id)accessibilityUserDefinedHint
{
  v3 = [self _accessibilityGetBlockForAttribute:2];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:{-[NSObjectAccessibility accessibilityAttributedHint](&v8, sel_accessibilityAttributedHint)}];
  }

  v6 = v5;

  return v6;
}

- (CGRect)accessibilityFrame
{
  v3 = [self _accessibilityGetBlockForAttribute:6];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NSObjectAccessibility;
    [(NSObjectAccessibility *)&v17 accessibilityFrame];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3 = [self _accessibilityGetBlockForAttribute:4];
  v4 = v3;
  if (!v3 || (accessibilityTraits = (*(v3 + 16))(v3)) == 0)
  {
    v7.receiver = self;
    v7.super_class = NSObjectAccessibility;
    accessibilityTraits = [(NSObjectAccessibility *)&v7 accessibilityTraits];
  }

  return accessibilityTraits;
}

- (id)accessibilityUserDefinedTraits
{
  v3 = [self _accessibilityGetBlockForAttribute:4];
  v4 = v3;
  if (v3)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(*(v3 + 16))(v3)];
  }

  else
  {
    [(NSObjectAccessibility *)self storedAccessibilityTraits];
  }
  v5 = ;

  return v5;
}

- (id)isAccessibilityUserDefinedElement
{
  v3 = [self _accessibilityGetBlockForAttribute:0];
  v4 = v3;
  if (v3)
  {
    [MEMORY[0x1E696AD98] numberWithBool:(*(v3 + 16))(v3)];
  }

  else
  {
    [(NSObjectAccessibility *)self storedIsAccessibilityElement];
  }
  v5 = ;

  return v5;
}

- (id)accessibilityUserDefinedLanguage
{
  v3 = [self _accessibilityGetBlockForAttribute:9];
  v4 = v3;
  if (v3)
  {
    accessibilityLanguage = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityLanguage = [(NSObjectAccessibility *)&v8 accessibilityLanguage];
  }

  v6 = accessibilityLanguage;

  return v6;
}

- (BOOL)accessibilityActivate
{
  v2 = [self _accessibilityGetBlockForAttribute:17];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [self _accessibilityGetBlockForAttribute:8];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = NSObjectAccessibility;
    [(NSObjectAccessibility *)&v11 accessibilityActivationPoint];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [self _accessibilityGetBlockForAttribute:25];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)accessibilityPerformMagicTap
{
  v3 = [self _accessibilityGetBlockForAttribute:44];
  v4 = v3;
  if (v3)
  {
    accessibilityPerformMagicTap = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityPerformMagicTap = [(NSObjectAccessibility *)&v8 accessibilityPerformMagicTap];
  }

  v6 = accessibilityPerformMagicTap;

  return v6;
}

- (id)accessibilityUserDefinedActivationPoint
{
  v3 = [self _accessibilityGetBlockForAttribute:8];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696B098];
    (*(v3 + 16))(v3);
    [v5 valueWithCGPoint:?];
  }

  else
  {
    [(NSObjectAccessibility *)self storedAccessibilityActivationPoint];
  }
  v6 = ;

  return v6;
}

- (id)accessibilityUserDefinedShouldGroupChildren
{
  v3 = [self _accessibilityGetBlockForAttribute:12];
  v4 = v3;
  if (v3)
  {
    [MEMORY[0x1E696AD98] numberWithBool:(*(v3 + 16))(v3)];
  }

  else
  {
    [(NSObjectAccessibility *)self storedShouldGroupAccessibilityChildren];
  }
  v5 = ;

  return v5;
}

- (id)accessibilityPath
{
  v3 = [self _accessibilityGetBlockForAttribute:7];
  v4 = v3;
  if (v3)
  {
    accessibilityPath = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityPath = [(NSObjectAccessibility *)&v8 accessibilityPath];
  }

  v6 = accessibilityPath;

  return v6;
}

- (BOOL)accessibilityElementsHidden
{
  v3 = [self _accessibilityGetBlockForAttribute:10];
  v4 = v3;
  if (v3)
  {
    accessibilityElementsHidden = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityElementsHidden = [(NSObjectAccessibility *)&v8 accessibilityElementsHidden];
  }

  v6 = accessibilityElementsHidden;

  return v6;
}

- (id)storedAccessibilityElementsHidden
{
  v3 = [self _accessibilityGetBlockForAttribute:10];
  v4 = v3;
  if (v3)
  {
    storedAccessibilityElementsHidden = [MEMORY[0x1E696AD98] numberWithBool:(*(v3 + 16))(v3)];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    storedAccessibilityElementsHidden = [(NSObjectAccessibility *)&v8 storedAccessibilityElementsHidden];
  }

  v6 = storedAccessibilityElementsHidden;

  return v6;
}

- (BOOL)accessibilityViewIsModal
{
  v3 = [self _accessibilityGetBlockForAttribute:11];
  v4 = v3;
  if (v3)
  {
    accessibilityViewIsModal = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityViewIsModal = [(NSObjectAccessibility *)&v8 accessibilityViewIsModal];
  }

  v6 = accessibilityViewIsModal;

  return v6;
}

- (id)storedAccessibilityViewIsModal
{
  v3 = [self _accessibilityGetBlockForAttribute:11];
  v4 = v3;
  if (v3)
  {
    storedAccessibilityViewIsModal = [MEMORY[0x1E696AD98] numberWithBool:(*(v3 + 16))(v3)];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    storedAccessibilityViewIsModal = [(NSObjectAccessibility *)&v8 storedAccessibilityViewIsModal];
  }

  v6 = storedAccessibilityViewIsModal;

  return v6;
}

- (int64_t)accessibilityNavigationStyle
{
  v3 = [self _accessibilityGetBlockForAttribute:13];
  v4 = v3;
  if (v3)
  {
    accessibilityNavigationStyle = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityNavigationStyle = [(NSObjectAccessibility *)&v8 accessibilityNavigationStyle];
  }

  v6 = accessibilityNavigationStyle;

  return v6;
}

- (id)accessibilityHeaderElements
{
  v3 = [self _accessibilityGetBlockForAttribute:14];
  v4 = v3;
  if (v3)
  {
    accessibilityHeaderElements = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityHeaderElements = [&v8 accessibilityHeaderElements];
  }

  v6 = accessibilityHeaderElements;

  return v6;
}

- (id)accessibilityUserDefinedContainer
{
  v4.receiver = self;
  v4.super_class = NSObjectAccessibility;
  accessibilityContainer = [(NSObjectAccessibility *)&v4 accessibilityContainer];

  return accessibilityContainer;
}

- (void)setAccessibilityElements:(id)elements
{
  v5.receiver = self;
  v5.super_class = NSObjectAccessibility;
  elementsCopy = elements;
  [(NSObjectAccessibility *)&v5 setAccessibilityElements:elementsCopy];
  [self _accessibilityUpdateContainerElementReferencesIfNeededForNewElements:elementsCopy, v5.receiver, v5.super_class];
}

- (id)automationElements
{
  v3 = [self _accessibilityGetBlockForAttribute:45];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NSObjectAccessibility;
    automationElements = [(NSObjectAccessibility *)&v10 automationElements];
    v7 = automationElements;
    if (automationElements)
    {
      _accessibilityUserTestingChildren = automationElements;
    }

    else
    {
      _accessibilityUserTestingChildren = [self _accessibilityUserTestingChildren];
    }

    v5 = _accessibilityUserTestingChildren;
  }

  return v5;
}

- (void)setAutomationElements:(id)elements
{
  v3.receiver = self;
  v3.super_class = NSObjectAccessibility;
  [(NSObjectAccessibility *)&v3 setAutomationElements:elements];
}

- (id)accessibilityUserInputLabels
{
  v3 = [self _accessibilityGetBlockForAttribute:37];
  v4 = v3;
  if (v3)
  {
    accessibilityUserInputLabels = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityUserInputLabels = [(NSObjectAccessibility *)&v8 accessibilityUserInputLabels];
  }

  v6 = accessibilityUserInputLabels;

  return v6;
}

- (id)accessibilityUserDefinedDragSourceDescriptors
{
  v4.receiver = self;
  v4.super_class = NSObjectAccessibility;
  accessibilityDragSourceDescriptors = [(NSObjectAccessibility *)&v4 accessibilityDragSourceDescriptors];

  return accessibilityDragSourceDescriptors;
}

- (id)accessibilityUserDefinedDropPointDescriptors
{
  v4.receiver = self;
  v4.super_class = NSObjectAccessibility;
  accessibilityDropPointDescriptors = [(NSObjectAccessibility *)&v4 accessibilityDropPointDescriptors];

  return accessibilityDropPointDescriptors;
}

- (id)accessibilityPreviousTextNavigationElement
{
  v3 = [self _accessibilityGetBlockForAttribute:46];
  v4 = v3;
  if (v3)
  {
    accessibilityPreviousTextNavigationElement = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityPreviousTextNavigationElement = [(NSObjectAccessibility *)&v8 accessibilityPreviousTextNavigationElement];
  }

  v6 = accessibilityPreviousTextNavigationElement;

  return v6;
}

- (id)accessibilityNextTextNavigationElement
{
  v3 = [self _accessibilityGetBlockForAttribute:47];
  v4 = v3;
  if (v3)
  {
    accessibilityNextTextNavigationElement = (*(v3 + 16))(v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSObjectAccessibility;
    accessibilityNextTextNavigationElement = [(NSObjectAccessibility *)&v8 accessibilityNextTextNavigationElement];
  }

  v6 = accessibilityNextTextNavigationElement;

  return v6;
}

- (void)accessibilityLabel
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_24();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end