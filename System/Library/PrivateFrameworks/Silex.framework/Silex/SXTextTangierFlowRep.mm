@interface SXTextTangierFlowRep
- (BOOL)accessibilitySupportsTextSelection;
- (BOOL)isAccessibilityElement;
- (BOOL)p_doesRep:(id)rep containCharIndex:(unint64_t)index isStart:(BOOL)start;
- (BOOL)updateFromVisualPosition;
- (CGRect)accessibilityFrameForScrolling;
- (CGRect)frameInCanvas;
- (SXTextTangierInteractiveCanvasController)icc;
- (SXTextTangierRepAccessibilityDataSource)accessibilityDataSource;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)accessibilityHitTest:(CGPoint)test;
- (id)accessibilityNextTextNavigationElement;
- (id)accessibilityPreviousTextNavigationElement;
- (id)automationElements;
- (id)hitRep:(CGPoint)rep withGesture:(id)gesture passingTest:(id)test;
- (id)itemsForCustomRotor:(id)rotor;
- (id)orderedSiblings;
- (id)repForCharIndex:(unint64_t)index isStart:(BOOL)start;
- (id)siblings;
- (id)storage;
- (id)supportedCustomRotors;
- (id)sxaxLinkElements;
- (id)sxaxNameForEditRotorAction:(id)action;
- (id)sxaxSupportedEditRotorActions;
- (unint64_t)accessibilityTraits;
- (unint64_t)charIndexForPointWithPinning:(CGPoint)pinning isTail:(BOOL)tail selectionType:(int)type;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)dealloc;
@end

@implementation SXTextTangierFlowRep

- (id)storage
{
  info = [(SXTextTangierFlowRep *)self info];
  storage = [info storage];

  return storage;
}

- (id)hitRep:(CGPoint)rep withGesture:(id)gesture passingTest:(id)test
{
  y = rep.y;
  x = rep.x;
  v29 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  testCopy = test;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  childReps = [(SXTextTangierFlowRep *)self childReps];
  v11 = [childReps countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(childReps);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          layout = [v15 layout];
          geometry = [layout geometry];
          [geometry frame];
          v31.x = x;
          v31.y = y;
          v18 = CGRectContainsPoint(v32, v31);

          if (v18)
          {

            v20 = 0;
            v19 = gestureCopy;
            goto LABEL_12;
          }
        }
      }

      v12 = [childReps countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v23.receiver = self;
  v23.super_class = SXTextTangierFlowRep;
  v19 = gestureCopy;
  v20 = [(SXTextTangierFlowRep *)&v23 hitRep:gestureCopy withGesture:testCopy passingTest:x, y];
LABEL_12:

  return v20;
}

- (BOOL)p_doesRep:(id)rep containCharIndex:(unint64_t)index isStart:(BOOL)start
{
  startCopy = start;
  range = [rep range];
  if (startCopy && range <= index)
  {
    return range + v8 > index;
  }

  v10 = range + v8 >= index;
  if (range >= index)
  {
    v10 = 0;
  }

  return !startCopy && v10;
}

- (id)repForCharIndex:(unint64_t)index isStart:(BOOL)start
{
  startCopy = start;
  v20 = *MEMORY[0x1E69E9840];
  if ([(SXTextTangierFlowRep *)self p_doesRep:self containCharIndex:index isStart:start])
  {
    selfCopy = self;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    siblings = [(SXTextTangierFlowRep *)self siblings];
    v9 = [siblings countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(siblings);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([(SXTextTangierFlowRep *)self p_doesRep:v13 containCharIndex:index isStart:startCopy])
          {
            selfCopy = v13;

            goto LABEL_13;
          }
        }

        v10 = [siblings countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
}

- (unint64_t)charIndexForPointWithPinning:(CGPoint)pinning isTail:(BOOL)tail selectionType:(int)type
{
  tailCopy = tail;
  v15.receiver = self;
  v15.super_class = SXTextTangierFlowRep;
  v8 = [(SXTextTangierFlowRep *)&v15 charIndexForPointWithPinning:pinning.x isTail:pinning.y selectionType:?];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    storage = [(SXTextTangierFlowRep *)self storage];
    v11 = [storage length];
    if (type == 7 && v8 < v11 && tailCopy)
    {
      storage2 = [(SXTextTangierFlowRep *)self storage];
      v14 = [storage2 characterAtIndex:v8];

      if (v14 != 10)
      {
        return v8;
      }

      storage = [(SXTextTangierFlowRep *)self storage];
      v8 = [storage previousCharacterIndex:v8];
    }

    return v8;
  }

  return result;
}

- (id)siblings
{
  v2 = MEMORY[0x1E695DFD8];
  orderedSiblings = [(SXTextTangierFlowRep *)self orderedSiblings];
  array = [orderedSiblings array];
  v5 = [v2 setWithArray:array];

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
  topLevelReps = [v4 topLevelReps];

  v6 = [topLevelReps countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        storage = [v10 storage];
        storage2 = [(SXTextTangierFlowRep *)self storage];

        if (storage == storage2)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [topLevelReps countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v3 copy];

  return v13;
}

- (BOOL)updateFromVisualPosition
{
  layout = [(SXTextTangierFlowRep *)self layout];
  geometry = [layout geometry];
  [geometry frame];
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
    layout2 = [(SXTextTangierFlowRep *)self layout];
    [layout2 setGeometry:v19];
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
  accessibilityDataSource = [(SXTextTangierFlowRep *)self accessibilityDataSource];
  v15 = [accessibilityDataSource accessibilityCustomRotorMembershipForRep:self];

  storage = [(SXTextTangierFlowRep *)self storage];
  range = [(SXTextTangierFlowRep *)self range];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SXTextTangierFlowRep_supportedCustomRotors__block_invoke;
  v9[3] = &unk_1E8502040;
  v9[4] = self;
  v9[5] = &v10;
  [storage enumerateSmartFieldsWithAttributeKind:6 inRange:range usingBlock:{v6, v9}];

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

- (id)itemsForCustomRotor:(id)rotor
{
  v28 = *MEMORY[0x1E69E9840];
  rotorCopy = rotor;
  headingsRotor = [(SXTextTangierFlowRep *)self headingsRotor];
  v6 = headingsRotor;
  if (headingsRotor == rotorCopy)
  {
    headingsRotor2 = [(SXTextTangierFlowRep *)self headingsRotor];

    if (headingsRotor2)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DC5F8]) initWithTargetElement:self targetRange:0];
      linkRotor2 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObject:v11];

      goto LABEL_16;
    }
  }

  else
  {
  }

  linkRotor = [(SXTextTangierFlowRep *)self linkRotor];
  v8 = linkRotor;
  if (linkRotor == rotorCopy)
  {
    linkRotor2 = [(SXTextTangierFlowRep *)self linkRotor];

    if (linkRotor2)
    {
      sxaxLinkElements = [(SXTextTangierFlowRep *)self sxaxLinkElements];
      v13 = objc_opt_new();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = sxaxLinkElements;
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

      linkRotor2 = [v13 copy];
    }
  }

  else
  {

    linkRotor2 = 0;
  }

LABEL_16:

  return linkRotor2;
}

- (id)sxaxLinkElements
{
  v3 = [(SXTextTangierFlowRep *)self _accessibilityValueForKey:@"SXAXLinkElementsKey"];
  if (![v3 count])
  {
    v4 = objc_opt_new();
    storage = [(SXTextTangierFlowRep *)self storage];
    range = [(SXTextTangierFlowRep *)self range];
    v8 = v7;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __40__SXTextTangierFlowRep_sxaxLinkElements__block_invoke;
    v15 = &unk_1E84FF8A0;
    selfCopy = self;
    v17 = v4;
    v9 = v4;
    [storage enumerateSmartFieldsWithAttributeKind:6 inRange:range usingBlock:{v8, &v12}];

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
  sxaxLinkElements = [(SXTextTangierFlowRep *)self sxaxLinkElements];
  if ([sxaxLinkElements count])
  {
    automationElements = sxaxLinkElements;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SXTextTangierFlowRep;
    automationElements = [(SXTextTangierFlowRep *)&v7 automationElements];
  }

  v5 = automationElements;

  return v5;
}

- (BOOL)isAccessibilityElement
{
  info = [(SXTextTangierFlowRep *)self info];
  hasSpeakableContent = [info hasSpeakableContent];

  if (!hasSpeakableContent)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SXTextTangierFlowRep;
  return [(TSWPRep *)&v6 isAccessibilityElement];
}

- (id)accessibilityHitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
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
  _accessibilityScrollParent = [(SXTextTangierFlowRep *)self _accessibilityScrollParent];
  [_accessibilityScrollParent contentInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [_accessibilityScrollParent adjustedContentInset];
  if (v15 == v23 && v13 == v20 && v19 == v22 && v17 == v21)
  {
    [_accessibilityScrollParent safeAreaInsets];
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
  accessibilityTraits = [(SXTextTangierFlowRep *)&v10 accessibilityTraits];
  accessibilityDataSource = [(SXTextTangierFlowRep *)self accessibilityDataSource];
  v5 = [accessibilityDataSource accessibilityCustomRotorMembershipForRep:self];
  headingsRotor = [(SXTextTangierFlowRep *)self headingsRotor];
  v7 = [v5 containsObject:headingsRotor];

  v8 = *MEMORY[0x1E69DD9C8];
  if (!v7)
  {
    v8 = 0;
  }

  return v8 | accessibilityTraits;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  accessibilityDataSource = [(SXTextTangierFlowRep *)self accessibilityDataSource];
  v4 = [accessibilityDataSource accessibilityRepIsSelectable:self];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = SXTextTangierFlowRep;
    _accessibilitySelectedTextRange = [(TSWPRep *)&v7 _accessibilitySelectedTextRange];
  }

  else
  {
    _accessibilitySelectedTextRange = 0;
    v6 = 0;
  }

  result.length = v6;
  result.location = _accessibilitySelectedTextRange;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  accessibilityDataSource = [(SXTextTangierFlowRep *)self accessibilityDataSource];
  v7 = [accessibilityDataSource accessibilityRepIsSelectable:self];

  if (v7)
  {
    v8.receiver = self;
    v8.super_class = SXTextTangierFlowRep;
    [(TSWPRep *)&v8 _accessibilitySetSelectedTextRange:location, length];
  }
}

- (id)accessibilityNextTextNavigationElement
{
  orderedSiblings = [(SXTextTangierFlowRep *)self orderedSiblings];
  v4 = [orderedSiblings indexOfObject:self];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, v4 >= [orderedSiblings count] - 1))
  {
    v6 = 0;
  }

  else
  {
    v6 = [orderedSiblings objectAtIndexedSubscript:v5 + 1];
  }

  return v6;
}

- (id)accessibilityPreviousTextNavigationElement
{
  orderedSiblings = [(SXTextTangierFlowRep *)self orderedSiblings];
  v4 = [orderedSiblings indexOfObject:self];
  v5 = 0;
  if (v4 && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [orderedSiblings objectAtIndexedSubscript:v4 - 1];
  }

  return v5;
}

- (BOOL)accessibilitySupportsTextSelection
{
  selfCopy = self;
  accessibilityDataSource = [(SXTextTangierFlowRep *)self accessibilityDataSource];
  LOBYTE(selfCopy) = [accessibilityDataSource accessibilityRepIsSelectable:selfCopy];

  return selfCopy;
}

- (id)sxaxSupportedEditRotorActions
{
  array = [MEMORY[0x1E695DF70] array];
  v7.receiver = self;
  v7.super_class = SXTextTangierFlowRep;
  sxaxSupportedEditRotorActions = [(TSWPRep *)&v7 sxaxSupportedEditRotorActions];
  if (sxaxSupportedEditRotorActions)
  {
    [array addObjectsFromArray:sxaxSupportedEditRotorActions];
  }

  if (([array containsObject:@"lookup:"] & 1) == 0)
  {
    [array addObject:@"lookup:"];
  }

  v5 = [array copy];

  return v5;
}

- (id)sxaxNameForEditRotorAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"lookup:"])
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Lookup" value:&stru_1F532F6C0 table:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SXTextTangierFlowRep;
    v6 = [(TSWPRep *)&v8 sxaxNameForEditRotorAction:actionCopy];
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