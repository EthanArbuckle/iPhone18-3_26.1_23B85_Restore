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
  if ([self hasBeenRemoved])
  {
    return *MEMORY[0x1E695F058];
  }

  [self convertNaturalRectToUnscaledCanvas:{a2, a3, a4, a5}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  interactiveCanvasController = [self interactiveCanvasController];
  [interactiveCanvasController convertUnscaledToBoundsRect:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  interactiveCanvasController2 = [self interactiveCanvasController];
  canvasView = [interactiveCanvasController2 canvasView];
  v31.origin.x = v21;
  v31.origin.y = v23;
  v31.size.width = v25;
  v31.size.height = v27;
  *&v10 = UIAccessibilityConvertFrameToScreenCoordinates(v31, canvasView);

  return v10;
}

- (uint64_t)SXAXConvertScreenRectToNaturalSpace:()SXAccessibility
{
  result = [self hasBeenRemoved];
  if ((result & 1) == 0)
  {
    interactiveCanvasController = [self interactiveCanvasController];
    [interactiveCanvasController convertBoundsToUnscaledRect:{a2, a3, a4, a5}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    return [self convertNaturalRectFromUnscaledCanvas:{v13, v15, v17, v19}];
  }

  return result;
}

- (uint64_t)accessibilityFrame
{
  [self naturalBounds];

  return [self SXAXConvertNaturalRectToScreenSpace:?];
}

- (id)_accessibilityParentForFindingScrollParent
{
  interactiveCanvasController = [self interactiveCanvasController];
  canvasView = [interactiveCanvasController canvasView];

  return canvasView;
}

- (id)_accessibilityWindow
{
  interactiveCanvasController = [self interactiveCanvasController];
  canvasView = [interactiveCanvasController canvasView];
  window = [canvasView window];

  return window;
}

@end