@interface AXElement(AXElementTextEditing)
- (BOOL)isVisibleTextRect:()AXElementTextEditing;
- (CACTextMarker)cacLastPosition;
- (CACTextMarkerRange)cacTextSelectionCACTextMarkerRange;
- (double)textMarkerFrame:()AXElementTextEditing;
- (id)cacString;
- (id)cacStringForRange:()AXElementTextEditing;
- (id)elementForTextMarker:()AXElementTextEditing;
- (id)objectForRange:()AXElementTextEditing withParameterizedAttribute:;
- (id)textLineEndMarker:()AXElementTextEditing;
- (id)textLineStartMarker:()AXElementTextEditing;
- (id)textMarkerRangeForSelection;
- (id)textMarkersForRange:()AXElementTextEditing;
- (uint64_t)_numberOfCharacters;
- (uint64_t)cacSetTextSelectionToCACTextMarkerRange:()AXElementTextEditing;
- (uint64_t)cacSetTextSelectionToRange:()AXElementTextEditing;
- (uint64_t)cacStringForCACTextMarkerRange:()AXElementTextEditing;
- (uint64_t)cacSupportsTextOperation:()AXElementTextEditing;
- (uint64_t)deleteTextAtRange:()AXElementTextEditing;
- (uint64_t)deleteTextAtTextMarkerRange:()AXElementTextEditing;
- (uint64_t)isVisibleTextRange:()AXElementTextEditing;
- (uint64_t)lineRangeForPosition:()AXElementTextEditing;
- (uint64_t)rangeForTextMarker:()AXElementTextEditing;
- (uint64_t)rangeForTextMarkers:()AXElementTextEditing;
- (uint64_t)visibleTextRange;
- (void)_scrollToVisibleForRange:()AXElementTextEditing;
- (void)cacPerformTextPaste;
- (void)cacPerformTextSelectAll;
- (void)cacPerformTextUndo;
- (void)rectForRange:()AXElementTextEditing;
@end

@implementation AXElement(AXElementTextEditing)

- (void)cacPerformTextPaste
{
  selfCopy = self;
  if ([selfCopy hasAnyTraits:*MEMORY[0x277CE6E90]])
  {
    textOperationsOperator = [selfCopy textOperationsOperator];
    v3 = textOperationsOperator;
    if (textOperationsOperator)
    {
      v4 = textOperationsOperator;

      selfCopy = v4;
    }
  }

  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  uiElement = [selfCopy uiElement];
  v7 = [uiElement numberWithAXAttribute:3065];
  longLongValue = [v7 longLongValue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__AXElement_AXElementTextEditing__cacPerformTextPaste__block_invoke;
  v10[3] = &unk_279CEBE30;
  v11 = selfCopy;
  v9 = selfCopy;
  [generalPasteboard _requestSecurePasteAuthenticationMessageWithContext:0x6B3CE0810AAF53ALL forClientVersionedPID:longLongValue completionBlock:v10];
}

- (void)cacPerformTextUndo
{
  if ([self cacSupportsTextOperation:*MEMORY[0x277CE6E60]])
  {
    mEMORY[0x277CE7178] = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [mEMORY[0x277CE7178] performUndoIncludingProvisionalTextForElement:self];
  }

  else
  {
    mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
    [mEMORY[0x277CE7178] shake];
  }
}

- (void)cacPerformTextSelectAll
{
  v2 = MEMORY[0x277CE6E50];
  v3 = [self cacSupportsTextOperation:*MEMORY[0x277CE6E50]];
  cacFirstPosition = [self cacFirstPosition];
  cacLastPosition = [self cacLastPosition];
  v5 = [CACTextMarkerRange markerRangeWithStartMarker:cacFirstPosition endMarker:cacLastPosition];
  v6 = v5;
  if (v3)
  {
    nsRange = [v5 nsRange];
    v9 = v8;

    v10 = +[CACDisplayManager sharedManager];
    [v10 willProgrammaticallySelectRange:nsRange forElement:{v9, self}];

    v11 = *v2;

    [self cacPerformTextOperation:v11];
  }

  else
  {
    [self cacSetTextSelectionToCACTextMarkerRange:v5];
  }
}

- (uint64_t)cacSupportsTextOperation:()AXElementTextEditing
{
  v4 = a3;
  cacTextOperations = [self cacTextOperations];
  v6 = [cacTextOperations containsObject:v4];

  return v6;
}

- (void)rectForRange:()AXElementTextEditing
{
  if (a3 != 0x7FFFFFFF)
  {
    return [result boundsForTextRange:{v3, v4}];
  }

  return result;
}

- (void)_scrollToVisibleForRange:()AXElementTextEditing
{
  if (a3 != 0x7FFFFFFF)
  {
    [self boundsForTextRange:?];
    x = v11.origin.x;
    y = v11.origin.y;
    width = v11.size.width;
    height = v11.size.height;
    if (!CGRectEqualToRect(v11, *MEMORY[0x277CBF3A0]))
    {
      uiElement = [self uiElement];
      v8 = [MEMORY[0x277CCAE60] valueWithRect:{x, y, width, height}];
      [uiElement performAXAction:2039 withValue:v8];
    }
  }
}

- (uint64_t)visibleTextRange
{
  uiElement = [self uiElement];
  [uiElement updateCache:2216];

  uiElement2 = [self uiElement];
  v4 = [uiElement2 rangeWithAXAttribute:2216];

  return v4;
}

- (uint64_t)isVisibleTextRange:()AXElementTextEditing
{
  [self rectForRange:?];

  return [self isVisibleTextRect:?];
}

- (BOOL)isVisibleTextRect:()AXElementTextEditing
{
  if (CGRectEqualToRect(*&a2, *MEMORY[0x277CBF3A0]))
  {
    return 0;
  }

  [self visibleFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;

  return CGRectIntersectsRect(*&v19, *&v12);
}

- (CACTextMarkerRange)cacTextSelectionCACTextMarkerRange
{
  selectedTextRange = [self selectedTextRange];

  return [CACTextMarkerRange markerRangeWithNSRange:selectedTextRange, v1];
}

- (uint64_t)cacSetTextSelectionToRange:()AXElementTextEditing
{
  v7 = +[CACDisplayManager sharedManager];
  [v7 willProgrammaticallySelectRange:a3 forElement:{a4, self}];

  result = [self setSelectedTextRange:{a3, a4}];
  if (a4)
  {

    return [self _scrollToVisibleForRange:{a3, a4}];
  }

  return result;
}

- (uint64_t)cacSetTextSelectionToCACTextMarkerRange:()AXElementTextEditing
{
  nsRange = [a3 nsRange];

  return [self cacSetTextSelectionToRange:{nsRange, v4}];
}

- (id)cacStringForRange:()AXElementTextEditing
{
  _numberOfCharacters = [self _numberOfCharacters];
  if (a3 <= _numberOfCharacters)
  {
    v8 = 0;
    if (a4 && a3 + a4 <= _numberOfCharacters)
    {
      uiElement = [self uiElement];
      [uiElement updateCache:2006];

      value = [self value];
      v8 = [value substringWithRange:{a3, a4}];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)cacString
{
  uiElement = [self uiElement];
  [uiElement updateCache:2006];

  value = [self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [value copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)cacStringForCACTextMarkerRange:()AXElementTextEditing
{
  nsRange = [a3 nsRange];

  return [self cacStringForRange:{nsRange, v4}];
}

- (uint64_t)deleteTextAtRange:()AXElementTextEditing
{
  [self setSelectedTextRange:?];
  if (a4)
  {
    [self _scrollToVisibleForRange:{a3, a4}];
  }

  return [self deleteText];
}

- (uint64_t)deleteTextAtTextMarkerRange:()AXElementTextEditing
{
  nsRange = [a3 nsRange];

  return [self deleteTextAtRange:{nsRange, v4}];
}

- (CACTextMarker)cacLastPosition
{
  _numberOfCharacters = [self _numberOfCharacters];

  return [CACTextMarker markerWithIndex:_numberOfCharacters];
}

- (uint64_t)_numberOfCharacters
{
  uiElement = [self uiElement];
  [uiElement updateCache:2006];

  value = [self value];
  v4 = [value length];

  return v4;
}

- (uint64_t)lineRangeForPosition:()AXElementTextEditing
{
  v8 = xmmword_26B404FF0;
  uiElement = [self uiElement];
  v5 = [uiElement objectWithAXAttribute:94009 parameter:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", a3)}];

  if (!v5)
  {
    return 0x7FFFFFFFLL;
  }

  v6 = CFGetTypeID(v5);
  if (v6 != AXValueGetTypeID() || AXValueGetType(v5) != kAXValueTypeCFRange)
  {
    return 0x7FFFFFFFLL;
  }

  AXValueGetValue(v5, kAXValueTypeCFRange, &v8);
  return v8;
}

- (id)textMarkerRangeForSelection
{
  uiElement = [self uiElement];
  [uiElement updateCache:4004];

  uiElement2 = [self uiElement];
  v4 = [uiElement2 arrayWithAXAttribute:4004];

  return v4;
}

- (id)textLineEndMarker:()AXElementTextEditing
{
  v4 = a3;
  uiElement = [self uiElement];
  [uiElement updateCache:94003];

  uiElement2 = [self uiElement];
  v7 = [uiElement2 objectWithAXAttribute:94003 parameter:v4];

  return v7;
}

- (id)textLineStartMarker:()AXElementTextEditing
{
  v4 = a3;
  uiElement = [self uiElement];
  [uiElement updateCache:94002];

  uiElement2 = [self uiElement];
  v7 = [uiElement2 objectWithAXAttribute:94002 parameter:v4];

  return v7;
}

- (id)elementForTextMarker:()AXElementTextEditing
{
  v4 = a3;
  uiElement = [self uiElement];
  [uiElement updateCache:94006];

  v6 = [self elementForAttribute:94006 parameter:v4];

  return v6;
}

- (double)textMarkerFrame:()AXElementTextEditing
{
  v4 = a3;
  uiElement = [self uiElement];
  v6 = [uiElement objectWithAXAttribute:94000 parameter:v4];

  if (v6 && (v7 = CFGetTypeID(v6), v7 == AXValueGetTypeID()))
  {
    v10 = 0u;
    v11 = 0u;
    AXValueGetValue(v6, kAXValueTypeCGRect, &v10);
  }

  else
  {
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *MEMORY[0x277CBF3A0];
    v11 = v8;
  }

  return *&v10;
}

- (uint64_t)rangeForTextMarker:()AXElementTextEditing
{
  v9 = xmmword_26B404FF0;
  v4 = a3;
  uiElement = [self uiElement];
  v6 = [uiElement objectWithAXAttribute:94012 parameter:v4];

  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == AXValueGetTypeID() && AXValueGetType(v6) == kAXValueTypeCFRange)
    {
      AXValueGetValue(v6, kAXValueTypeCFRange, &v9);
    }
  }

  return v9;
}

- (uint64_t)rangeForTextMarkers:()AXElementTextEditing
{
  v9 = xmmword_26B404FF0;
  v4 = a3;
  uiElement = [self uiElement];
  v6 = [uiElement objectWithAXAttribute:94017 parameter:v4];

  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == AXValueGetTypeID() && AXValueGetType(v6) == kAXValueTypeCFRange)
    {
      AXValueGetValue(v6, kAXValueTypeCFRange, &v9);
    }
  }

  return v9;
}

- (id)objectForRange:()AXElementTextEditing withParameterizedAttribute:
{
  v12[0] = a3;
  v12[1] = a4;
  v7 = AXValueCreate(kAXValueTypeCFRange, v12);
  if (v7)
  {
    v8 = v7;
    uiElement = [self uiElement];
    v10 = [uiElement objectWithAXAttribute:a5 parameter:v8];

    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)textMarkersForRange:()AXElementTextEditing
{
  v4 = [self objectForRange:a3 withParameterizedAttribute:{a4, 94014}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end