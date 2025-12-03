@interface UIGestureRecognizer(TSDGestureDispatcher)
- (__CFString)gestureKind;
- (uint64_t)boundsLocationForICC:()TSDGestureDispatcher;
- (uint64_t)gestureDelegate;
- (uint64_t)naturalLocationForRep:()TSDGestureDispatcher;
- (uint64_t)setGestureDelegate:()TSDGestureDispatcher;
- (uint64_t)unscaledLocationForICC:()TSDGestureDispatcher;
- (void)initWithGestureDispatcher:()TSDGestureDispatcher gestureKind:;
@end

@implementation UIGestureRecognizer(TSDGestureDispatcher)

- (void)initWithGestureDispatcher:()TSDGestureDispatcher gestureKind:
{
  v6 = [self initWithTarget:a3 action:sel_handleGesture_];
  v7 = v6;
  if (v6)
  {
    [v6 setGestureDelegate:a3];
    [v7 setGestureKind:a4];
  }

  return v7;
}

- (__CFString)gestureKind
{
  result = objc_getAssociatedObject(self, &gestureKindKey);
  if (!result)
  {
    return @"TSWPUndefinedGestureKind";
  }

  return result;
}

- (uint64_t)unscaledLocationForICC:()TSDGestureDispatcher
{
  [self locationInView:{objc_msgSend(a3, "canvasView")}];

  return [a3 convertBoundsToUnscaledPoint:?];
}

- (uint64_t)boundsLocationForICC:()TSDGestureDispatcher
{
  [self unscaledLocationForICC:?];

  return [a3 convertUnscaledToBoundsPoint:?];
}

- (uint64_t)naturalLocationForRep:()TSDGestureDispatcher
{
  [self unscaledLocationForICC:{objc_msgSend(a3, "interactiveCanvasController")}];

  return [a3 convertNaturalPointFromUnscaledCanvas:?];
}

- (uint64_t)gestureDelegate
{
  [self delegate];

  return TSUProtocolCast();
}

- (uint64_t)setGestureDelegate:()TSDGestureDispatcher
{
  v2 = TSUProtocolCast();
  if (!v2)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[UIGestureRecognizer(TSDGestureDispatcher) setGestureDelegate:]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGestureDispatcher.m"), 136, @"invalid nil value for '%s'", "grDelegate"}];
  }

  return [self setDelegate:v2];
}

@end