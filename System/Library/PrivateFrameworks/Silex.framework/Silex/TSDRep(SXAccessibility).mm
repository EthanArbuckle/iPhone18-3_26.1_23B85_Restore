@interface TSDRep(SXAccessibility)
- (double)SXAXConvertNaturalRectToScreenSpace:()SXAccessibility;
- (id)_accessibilityParentForFindingScrollParent;
- (id)_accessibilityWindow;
- (uint64_t)SXAXConvertScreenRectToNaturalSpace:()SXAccessibility;
- (uint64_t)accessibilityFrame;
@end

@implementation TSDRep(SXAccessibility)

- (double)SXAXConvertNaturalRectToScreenSpace:()SXAccessibility
{
  if ([a1 hasBeenRemoved])
  {
    return *MEMORY[0x1E695F058];
  }

  [a1 convertNaturalRectToUnscaledCanvas:{a2, a3, a4, a5}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [a1 interactiveCanvasController];
  [v19 convertUnscaledToBoundsRect:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [a1 interactiveCanvasController];
  v29 = [v28 canvasView];
  v31.origin.x = v21;
  v31.origin.y = v23;
  v31.size.width = v25;
  v31.size.height = v27;
  *&v10 = UIAccessibilityConvertFrameToScreenCoordinates(v31, v29);

  return v10;
}

- (uint64_t)SXAXConvertScreenRectToNaturalSpace:()SXAccessibility
{
  result = [a1 hasBeenRemoved];
  if ((result & 1) == 0)
  {
    v11 = [a1 interactiveCanvasController];
    [v11 convertBoundsToUnscaledRect:{a2, a3, a4, a5}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    return [a1 convertNaturalRectFromUnscaledCanvas:{v13, v15, v17, v19}];
  }

  return result;
}

- (uint64_t)accessibilityFrame
{
  [a1 naturalBounds];

  return [a1 SXAXConvertNaturalRectToScreenSpace:?];
}

- (id)_accessibilityParentForFindingScrollParent
{
  v1 = [a1 interactiveCanvasController];
  v2 = [v1 canvasView];

  return v2;
}

- (id)_accessibilityWindow
{
  v1 = [a1 interactiveCanvasController];
  v2 = [v1 canvasView];
  v3 = [v2 window];

  return v3;
}

@end