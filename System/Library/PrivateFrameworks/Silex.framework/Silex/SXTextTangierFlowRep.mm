@interface SXTextTangierFlowRep
- (BOOL)accessibilitySupportsTextSelection;
- (BOOL)isAccessibilityElement;
- (BOOL)p_doesRep:(id)a3 containCharIndex:(unint64_t)a4 isStart:(BOOL)a5;
- (BOOL)updateFromVisualPosition;
- (CGRect)accessibilityFrameForScrolling;
- (CGRect)frameInCanvas;
- (SXTextTangierInteractiveCanvasController)icc;
- (SXTextTangierRepAccessibilityDataSource)accessibilityDataSource;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)accessibilityHitTest:(CGPoint)a3;
- (id)accessibilityNextTextNavigationElement;
- (id)accessibilityPreviousTextNavigationElement;
- (id)automationElements;
- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5;
- (id)itemsForCustomRotor:(id)a3;
- (id)orderedSiblings;
- (id)repForCharIndex:(unint64_t)a3 isStart:(BOOL)a4;
- (id)siblings;
- (id)storage;
- (id)supportedCustomRotors;
- (id)sxaxLinkElements;
- (id)sxaxNameForEditRotorAction:(id)a3;
- (id)sxaxSupportedEditRotorActions;
- (unint64_t)accessibilityTraits;
- (unint64_t)charIndexForPointWithPinning:(CGPoint)a3 isTail:(BOOL)a4 selectionType:(int)a5;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)dealloc;
@end

@implementation SXTextTangierFlowRep

- (id)storage
{
  v2 = [(SXTextTangierFlowRep *)self info];
  v3 = [v2 storage];

  return v3;
}

- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5
{
  y = a3.y;
  x = a3.x;
  v29 = *MEMORY[0x1E69E9840];
  v22 = a4;
  v9 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [(SXTextTangierFlowRep *)self childReps];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 layout];
          v17 = [v16 geometry];
          [v17 frame];
          v31.x = x;
          v31.y = y;
          v18 = CGRectContainsPoint(v32, v31);

          if (v18)
          {

            v20 = 0;
            v19 = v22;
            goto LABEL_12;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v23.receiver = self;
  v23.super_class = SXTextTangierFlowRep;
  v19 = v22;
  v20 = [(SXTextTangierFlowRep *)&v23 hitRep:v22 withGesture:v9 passingTest:x, y];
LABEL_12:

  return v20;
}

- (BOOL)p_doesRep:(id)a3 containCharIndex:(unint64_t)a4 isStart:(BOOL)a5
{
  v5 = a5;
  v7 = [a3 range];
  if (v5 && v7 <= a4)
  {
    return v7 + v8 > a4;
  }

  v10 = v7 + v8 >= a4;
  if (v7 >= a4)
  {
    v10 = 0;
  }

  return !v5 && v10;
}

- (id)repForCharIndex:(unint64_t)a3 isStart:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  if ([(SXTextTangierFlowRep *)self p_doesRep:self containCharIndex:a3 isStart:a4])
  {
    v7 = self;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(SXTextTangierFlowRep *)self siblings];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([(SXTextTangierFlowRep *)self p_doesRep:v13 containCharIndex:a3 isStart:v4])
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (unint64_t)charIndexForPointWithPinning:(CGPoint)a3 isTail:(BOOL)a4 selectionType:(int)a5
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = SXTextTangierFlowRep;
  v8 = [(SXTextTangierFlowRep *)&v15 charIndexForPointWithPinning:a3.x isTail:a3.y selectionType:?];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(SXTextTangierFlowRep *)self storage];
    v11 = [v10 length];
    if (a5 == 7 && v8 < v11 && v6)
    {
      v13 = [(SXTextTangierFlowRep *)self storage];
      v14 = [v13 characterAtIndex:v8];

      if (v14 != 10)
      {
        return v8;
      }

      v10 = [(SXTextTangierFlowRep *)self storage];
      v8 = [v10 previousCharacterIndex:v8];
    }

    return v8;
  }

  return result;
}

- (id)siblings
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(SXTextTangierFlowRep *)self orderedSiblings];
  v4 = [v3 array];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)orderedSiblings
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(SXTextTangierFlowRep *)self canvas:0];
  v5 = [v4 topLevelReps];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        v11 = [v10 storage];
        v12 = [(SXTextTangierFlowRep *)self storage];

        if (v11 == v12)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v3 copy];

  return v13;
}

- (BOOL)updateFromVisualPosition
{
  v3 = [(SXTextTangierFlowRep *)self layout];
  v4 = [v3 geometry];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SXTextTangierFlowRep *)self frameInCanvas];
  v23.origin.x = v13;
  v23.origin.y = v14;
  v23.size.width = v15;
  v23.size.height = v16;
  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  v17 = CGRectEqualToRect(v22, v23);

  if (!v17)
  {
    v18 = objc_alloc(MEMORY[0x1E69D5668]);
    [(SXTextTangierFlowRep *)self frameInCanvas];
    v19 = [v18 initWithFrame:?];
    v20 = [(SXTextTangierFlowRep *)self layout];
    [v20 setGeometry:v19];
  }

  return !v17;
}

- (void)dealloc
{
  [(SXTextTangierFlowRep *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = SXTextTangierFlowRep;
  [(SXTextTangierFlowRep *)&v3 dealloc];
}

- (id)supportedCustomRotors
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v3 = [(SXTextTangierFlowRep *)self accessibilityDataSource];
  v15 = [v3 accessibilityCustomRotorMembershipForRep:self];

  v4 = [(SXTextTangierFlowRep *)self storage];
  v5 = [(SXTextTangierFlowRep *)self range];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SXTextTangierFlowRep_supportedCustomRotors__block_invoke;
  v9[3] = &unk_1E8502040;
  v9[4] = self;
  v9[5] = &v10;
  [v4 enumerateSmartFieldsWithAttributeKind:6 inRange:v5 usingBlock:{v6, v9}];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __45__SXTextTangierFlowRep_supportedCustomRotors__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithSet:*(*(*(a1 + 40) + 8) + 40)];
  v7 = [*(a1 + 32) linkRotor];

  if (v7)
  {
    v8 = [*(a1 + 32) linkRotor];
    [v12 addObject:v8];
  }

  v9 = [v12 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = 1;
}

- (id)itemsForCustomRotor:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXTextTangierFlowRep *)self headingsRotor];
  v6 = v5;
  if (v5 == v4)
  {
    v10 = [(SXTextTangierFlowRep *)self headingsRotor];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DC5F8]) initWithTargetElement:self targetRange:0];
      v9 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObject:v11];

      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(SXTextTangierFlowRep *)self linkRotor];
  v8 = v7;
  if (v7 == v4)
  {
    v9 = [(SXTextTangierFlowRep *)self linkRotor];

    if (v9)
    {
      v12 = [(SXTextTangierFlowRep *)self sxaxLinkElements];
      v13 = objc_opt_new();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            v20 = objc_alloc(MEMORY[0x1E69DC5F8]);
            v21 = [v20 initWithTargetElement:v19 targetRange:{0, v23}];
            [v13 addObject:v21];
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v16);
      }

      v9 = [v13 copy];
    }
  }

  else
  {

    v9 = 0;
  }

LABEL_16:

  return v9;
}

- (id)sxaxLinkElements
{
  v3 = [(SXTextTangierFlowRep *)self _accessibilityValueForKey:@"SXAXLinkElementsKey"];
  if (![v3 count])
  {
    v4 = objc_opt_new();
    v5 = [(SXTextTangierFlowRep *)self storage];
    v6 = [(SXTextTangierFlowRep *)self range];
    v8 = v7;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __40__SXTextTangierFlowRep_sxaxLinkElements__block_invoke;
    v15 = &unk_1E84FF8A0;
    v16 = self;
    v17 = v4;
    v9 = v4;
    [v5 enumerateSmartFieldsWithAttributeKind:6 inRange:v6 usingBlock:{v8, &v12}];

    v10 = [v9 copy];
    [(SXTextTangierFlowRep *)self _accessibilitySetRetainedValue:v10 forKey:@"SXAXLinkElementsKey"];

    v3 = v10;
  }

  return v3;
}

void __40__SXTextTangierFlowRep_sxaxLinkElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v4 = [[SXTextLinkAccessibilityElement alloc] initWithHyperlinkField:v5 parentRep:*(a1 + 32)];
    [*(a1 + 40) addObject:v4];
  }
}

- (id)automationElements
{
  v3 = [(SXTextTangierFlowRep *)self sxaxLinkElements];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SXTextTangierFlowRep;
    v4 = [(SXTextTangierFlowRep *)&v7 automationElements];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(SXTextTangierFlowRep *)self info];
  v4 = [v3 hasSpeakableContent];

  if (!v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SXTextTangierFlowRep;
  return [(TSWPRep *)&v6 isAccessibilityElement];
}

- (id)accessibilityHitTest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v20 = *MEMORY[0x1E69E9840];
  [(SXTextTangierFlowRep *)self accessibilityElements];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v15 + 1) + 8 * v10) accessibilityHitTest:{x, y}];

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14.receiver = self;
  v14.super_class = SXTextTangierFlowRep;
  v12 = [(SXTextTangierFlowRep *)&v14 accessibilityHitTest:x, y];

  return v12;
}

- (CGRect)accessibilityFrameForScrolling
{
  v37.receiver = self;
  v37.super_class = SXTextTangierFlowRep;
  [(SXTextTangierFlowRep *)&v37 accessibilityFrameForScrolling];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SXTextTangierFlowRep *)self _accessibilityScrollParent];
  [v11 contentInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v11 adjustedContentInset];
  if (v15 == v23 && v13 == v20 && v19 == v22 && v17 == v21)
  {
    [v11 safeAreaInsets];
    v28 = fmin(-v27, 0.0);
    v30 = fmin(-v29, 0.0);
    v4 = v4 + v30;
    v6 = v6 + v28;
    v8 = v8 - (v30 + fmin(-v32, 0.0));
    v10 = v10 - (v28 + fmin(-v31, 0.0));
  }

  v33 = v4;
  v34 = v6;
  v35 = v8;
  v36 = v10;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = SXTextTangierFlowRep;
  v3 = [(SXTextTangierFlowRep *)&v10 accessibilityTraits];
  v4 = [(SXTextTangierFlowRep *)self accessibilityDataSource];
  v5 = [v4 accessibilityCustomRotorMembershipForRep:self];
  v6 = [(SXTextTangierFlowRep *)self headingsRotor];
  v7 = [v5 containsObject:v6];

  v8 = *MEMORY[0x1E69DD9C8];
  if (!v7)
  {
    v8 = 0;
  }

  return v8 | v3;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v3 = [(SXTextTangierFlowRep *)self accessibilityDataSource];
  v4 = [v3 accessibilityRepIsSelectable:self];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = SXTextTangierFlowRep;
    v5 = [(TSWPRep *)&v7 _accessibilitySelectedTextRange];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result.length = v6;
  result.location = v5;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(SXTextTangierFlowRep *)self accessibilityDataSource];
  v7 = [v6 accessibilityRepIsSelectable:self];

  if (v7)
  {
    v8.receiver = self;
    v8.super_class = SXTextTangierFlowRep;
    [(TSWPRep *)&v8 _accessibilitySetSelectedTextRange:location, length];
  }
}

- (id)accessibilityNextTextNavigationElement
{
  v3 = [(SXTextTangierFlowRep *)self orderedSiblings];
  v4 = [v3 indexOfObject:self];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, v4 >= [v3 count] - 1))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 objectAtIndexedSubscript:v5 + 1];
  }

  return v6;
}

- (id)accessibilityPreviousTextNavigationElement
{
  v3 = [(SXTextTangierFlowRep *)self orderedSiblings];
  v4 = [v3 indexOfObject:self];
  v5 = 0;
  if (v4 && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 objectAtIndexedSubscript:v4 - 1];
  }

  return v5;
}

- (BOOL)accessibilitySupportsTextSelection
{
  v2 = self;
  v3 = [(SXTextTangierFlowRep *)self accessibilityDataSource];
  LOBYTE(v2) = [v3 accessibilityRepIsSelectable:v2];

  return v2;
}

- (id)sxaxSupportedEditRotorActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v7.receiver = self;
  v7.super_class = SXTextTangierFlowRep;
  v4 = [(TSWPRep *)&v7 sxaxSupportedEditRotorActions];
  if (v4)
  {
    [v3 addObjectsFromArray:v4];
  }

  if (([v3 containsObject:@"lookup:"] & 1) == 0)
  {
    [v3 addObject:@"lookup:"];
  }

  v5 = [v3 copy];

  return v5;
}

- (id)sxaxNameForEditRotorAction:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"lookup:"])
  {
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Lookup" value:&stru_1F532F6C0 table:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SXTextTangierFlowRep;
    v6 = [(TSWPRep *)&v8 sxaxNameForEditRotorAction:v4];
  }

  return v6;
}

- (SXTextTangierRepAccessibilityDataSource)accessibilityDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->accessibilityDataSource);

  return WeakRetained;
}

- (SXTextTangierInteractiveCanvasController)icc
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);

  return WeakRetained;
}

- (CGRect)frameInCanvas
{
  x = self->_frameInCanvas.origin.x;
  y = self->_frameInCanvas.origin.y;
  width = self->_frameInCanvas.size.width;
  height = self->_frameInCanvas.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end