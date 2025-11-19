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
  v1 = a1;
  if ([v1 hasAnyTraits:*MEMORY[0x277CE6E90]])
  {
    v2 = [v1 textOperationsOperator];
    v3 = v2;
    if (v2)
    {
      v4 = v2;

      v1 = v4;
    }
  }

  v5 = [MEMORY[0x277D75810] generalPasteboard];
  v6 = [v1 uiElement];
  v7 = [v6 numberWithAXAttribute:3065];
  v8 = [v7 longLongValue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__AXElement_AXElementTextEditing__cacPerformTextPaste__block_invoke;
  v10[3] = &unk_279CEBE30;
  v11 = v1;
  v9 = v1;
  [v5 _requestSecurePasteAuthenticationMessageWithContext:0x6B3CE0810AAF53ALL forClientVersionedPID:v8 completionBlock:v10];
}

- (void)cacPerformTextUndo
{
  if ([a1 cacSupportsTextOperation:*MEMORY[0x277CE6E60]])
  {
    v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v2 performUndoIncludingProvisionalTextForElement:a1];
  }

  else
  {
    v2 = [MEMORY[0x277CE7178] sharedInstance];
    [v2 shake];
  }
}

- (void)cacPerformTextSelectAll
{
  v2 = MEMORY[0x277CE6E50];
  v3 = [a1 cacSupportsTextOperation:*MEMORY[0x277CE6E50]];
  v12 = [a1 cacFirstPosition];
  v4 = [a1 cacLastPosition];
  v5 = [CACTextMarkerRange markerRangeWithStartMarker:v12 endMarker:v4];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 nsRange];
    v9 = v8;

    v10 = +[CACDisplayManager sharedManager];
    [v10 willProgrammaticallySelectRange:v7 forElement:{v9, a1}];

    v11 = *v2;

    [a1 cacPerformTextOperation:v11];
  }

  else
  {
    [a1 cacSetTextSelectionToCACTextMarkerRange:v5];
  }
}

- (uint64_t)cacSupportsTextOperation:()AXElementTextEditing
{
  v4 = a3;
  v5 = [a1 cacTextOperations];
  v6 = [v5 containsObject:v4];

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
    [a1 boundsForTextRange:?];
    x = v11.origin.x;
    y = v11.origin.y;
    width = v11.size.width;
    height = v11.size.height;
    if (!CGRectEqualToRect(v11, *MEMORY[0x277CBF3A0]))
    {
      v9 = [a1 uiElement];
      v8 = [MEMORY[0x277CCAE60] valueWithRect:{x, y, width, height}];
      [v9 performAXAction:2039 withValue:v8];
    }
  }
}

- (uint64_t)visibleTextRange
{
  v2 = [a1 uiElement];
  [v2 updateCache:2216];

  v3 = [a1 uiElement];
  v4 = [v3 rangeWithAXAttribute:2216];

  return v4;
}

- (uint64_t)isVisibleTextRange:()AXElementTextEditing
{
  [a1 rectForRange:?];

  return [a1 isVisibleTextRect:?];
}

- (BOOL)isVisibleTextRect:()AXElementTextEditing
{
  if (CGRectEqualToRect(*&a2, *MEMORY[0x277CBF3A0]))
  {
    return 0;
  }

  [a1 visibleFrame];
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
  v2 = [a1 selectedTextRange];

  return [CACTextMarkerRange markerRangeWithNSRange:v2, v1];
}

- (uint64_t)cacSetTextSelectionToRange:()AXElementTextEditing
{
  v7 = +[CACDisplayManager sharedManager];
  [v7 willProgrammaticallySelectRange:a3 forElement:{a4, a1}];

  result = [a1 setSelectedTextRange:{a3, a4}];
  if (a4)
  {

    return [a1 _scrollToVisibleForRange:{a3, a4}];
  }

  return result;
}

- (uint64_t)cacSetTextSelectionToCACTextMarkerRange:()AXElementTextEditing
{
  v5 = [a3 nsRange];

  return [a1 cacSetTextSelectionToRange:{v5, v4}];
}

- (id)cacStringForRange:()AXElementTextEditing
{
  v7 = [a1 _numberOfCharacters];
  if (a3 <= v7)
  {
    v8 = 0;
    if (a4 && a3 + a4 <= v7)
    {
      v9 = [a1 uiElement];
      [v9 updateCache:2006];

      v10 = [a1 value];
      v8 = [v10 substringWithRange:{a3, a4}];
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
  v2 = [a1 uiElement];
  [v2 updateCache:2006];

  v3 = [a1 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)cacStringForCACTextMarkerRange:()AXElementTextEditing
{
  v5 = [a3 nsRange];

  return [a1 cacStringForRange:{v5, v4}];
}

- (uint64_t)deleteTextAtRange:()AXElementTextEditing
{
  [a1 setSelectedTextRange:?];
  if (a4)
  {
    [a1 _scrollToVisibleForRange:{a3, a4}];
  }

  return [a1 deleteText];
}

- (uint64_t)deleteTextAtTextMarkerRange:()AXElementTextEditing
{
  v5 = [a3 nsRange];

  return [a1 deleteTextAtRange:{v5, v4}];
}

- (CACTextMarker)cacLastPosition
{
  v1 = [a1 _numberOfCharacters];

  return [CACTextMarker markerWithIndex:v1];
}

- (uint64_t)_numberOfCharacters
{
  v2 = [a1 uiElement];
  [v2 updateCache:2006];

  v3 = [a1 value];
  v4 = [v3 length];

  return v4;
}

- (uint64_t)lineRangeForPosition:()AXElementTextEditing
{
  v8 = xmmword_26B404FF0;
  v4 = [a1 uiElement];
  v5 = [v4 objectWithAXAttribute:94009 parameter:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", a3)}];

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
  v2 = [a1 uiElement];
  [v2 updateCache:4004];

  v3 = [a1 uiElement];
  v4 = [v3 arrayWithAXAttribute:4004];

  return v4;
}

- (id)textLineEndMarker:()AXElementTextEditing
{
  v4 = a3;
  v5 = [a1 uiElement];
  [v5 updateCache:94003];

  v6 = [a1 uiElement];
  v7 = [v6 objectWithAXAttribute:94003 parameter:v4];

  return v7;
}

- (id)textLineStartMarker:()AXElementTextEditing
{
  v4 = a3;
  v5 = [a1 uiElement];
  [v5 updateCache:94002];

  v6 = [a1 uiElement];
  v7 = [v6 objectWithAXAttribute:94002 parameter:v4];

  return v7;
}

- (id)elementForTextMarker:()AXElementTextEditing
{
  v4 = a3;
  v5 = [a1 uiElement];
  [v5 updateCache:94006];

  v6 = [a1 elementForAttribute:94006 parameter:v4];

  return v6;
}

- (double)textMarkerFrame:()AXElementTextEditing
{
  v4 = a3;
  v5 = [a1 uiElement];
  v6 = [v5 objectWithAXAttribute:94000 parameter:v4];

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
  v5 = [a1 uiElement];
  v6 = [v5 objectWithAXAttribute:94012 parameter:v4];

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
  v5 = [a1 uiElement];
  v6 = [v5 objectWithAXAttribute:94017 parameter:v4];

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
    v9 = [a1 uiElement];
    v10 = [v9 objectWithAXAttribute:a5 parameter:v8];

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
  v4 = [a1 objectForRange:a3 withParameterizedAttribute:{a4, 94014}];
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