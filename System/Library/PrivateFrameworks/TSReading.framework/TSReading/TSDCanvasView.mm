@interface TSDCanvasView
- (BOOL)isInteractingWithLink;
- (BOOL)mightHaveLinks;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)willInteractWithLinkAtPoint:(CGPoint)point;
- (TSDCanvasLayer)canvasLayer;
- (TSDCanvasView)rootCanvasView;
- (TSKScrollView)enclosingScrollView;
- (id)_textImageFromRect:(CGRect)rect;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)_requestTextItemConstrainedToLineAtPoint:(CGPoint)point resultHandler:(id)handler;
- (void)cancelInteractionWithLink;
- (void)setController:(id)controller;
- (void)startInteractionWithLinkAtPoint:(CGPoint)point;
- (void)startLongInteractionWithLinkAtPoint:(CGPoint)point;
- (void)tapLinkAtPoint:(CGPoint)point;
- (void)teardown;
- (void)updateInteractionWithLinkAtPoint:(CGPoint)point;
- (void)validateInteractionWithLinkAtPoint:(CGPoint)point;
@end

@implementation TSDCanvasView

- (void)setController:(id)controller
{
  if (!self->mController || (v5 = [MEMORY[0x277D6C290] currentHandler], v6 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDCanvasView setController:]"), objc_msgSend(v5, "handleFailureInFunction:file:lineNumber:description:", v6, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasView.m"), 38, @"shouldn't try to set canvasView's controller more than once"), !self->mController))
  {
    self->mController = controller;
    [(TSDCanvasLayer *)[(TSDCanvasView *)self canvasLayer] setController:controller];
    layerHost = [controller layerHost];

    [(TSDCanvasView *)self setLayerHost:layerHost];
  }
}

- (void)teardown
{
  self->mController = 0;
  [(TSDCanvasLayer *)[(TSDCanvasView *)self canvasLayer] teardown];
  if (TSUSupportsTextInteraction())
  {
    self->mHyperLinkDelegate = 0;
  }
}

- (TSDCanvasLayer)canvasLayer
{
  objc_opt_class();
  [(TSDCanvasView *)self layer];

  return TSUDynamicCast();
}

- (TSKScrollView)enclosingScrollView
{
  objc_opt_class();
  [(TSDCanvasView *)self superview];

  return TSUDynamicCast();
}

- (TSDCanvasView)rootCanvasView
{
  selfCopy = self;
  superview = [(TSDCanvasView *)self superview];
  if (superview)
  {
    superview2 = superview;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy = superview2;
      }

      superview2 = [(TSDCanvasView *)superview2 superview];
    }

    while (superview2);
  }

  return selfCopy;
}

- (BOOL)mightHaveLinks
{
  v3 = TSUSupportsTextInteraction();
  if (v3)
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    LOBYTE(v3) = [(UITextLinkInteraction *)mHyperLinkDelegate mightHaveLinks];
  }

  return v3;
}

- (void)tapLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (TSUSupportsTextInteraction())
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate tapLinkAtPoint:x, y];
  }
}

- (BOOL)isInteractingWithLink
{
  v3 = TSUSupportsTextInteraction();
  if (v3)
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    LOBYTE(v3) = [(UITextLinkInteraction *)mHyperLinkDelegate isInteractingWithLink];
  }

  return v3;
}

- (void)startInteractionWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (TSUSupportsTextInteraction())
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate startInteractionWithLinkAtPoint:x, y];
  }
}

- (void)updateInteractionWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (TSUSupportsTextInteraction())
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate updateInteractionWithLinkAtPoint:x, y];
  }
}

- (void)validateInteractionWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (TSUSupportsTextInteraction())
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate validateInteractionWithLinkAtPoint:x, y];
  }
}

- (void)cancelInteractionWithLink
{
  if (TSUSupportsTextInteraction())
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate cancelInteractionWithLink];
  }
}

- (void)startLongInteractionWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (TSUSupportsTextInteraction())
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate startLongInteractionWithLinkAtPoint:x, y];
  }
}

- (BOOL)willInteractWithLinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = TSUSupportsTextInteraction();
  if (v6)
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    LOBYTE(v6) = [(UITextLinkInteraction *)mHyperLinkDelegate willInteractWithLinkAtPoint:x, y];
  }

  return v6;
}

- (void)_requestTextItemConstrainedToLineAtPoint:(CGPoint)point resultHandler:(id)handler
{
  y = point.y;
  x = point.x;
  if (TSUSupportsTextInteraction() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate _requestTextItemConstrainedToLineAtPoint:handler resultHandler:x, y];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(TSDCanvasView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  mController = self->mController;
  if (mController)
  {
    [(TSDInteractiveCanvasController *)mController delegate];
    if (objc_opt_respondsToSelector())
    {
      [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)self->mController delegate] interactiveCanvasController:self->mController expandBoundsForHitTesting:v8, v10, v12, v14];
      v8 = v16;
      v10 = v17;
      v12 = v18;
      v14 = v19;
    }
  }

  v20 = v8;
  v21 = v10;
  v22 = v12;
  v23 = v14;
  v24 = x;
  v25 = y;

  return CGRectContainsPoint(*&v20, *&v24);
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  if ([(TSDCanvasView *)self layer]== layer && (v8 = [(TSDInteractiveCanvasController *)self->mController i_currentAnimation]) != 0)
  {

    return [v8 actionForLayer:layer forKey:key];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSDCanvasView;
    return [(TSDCanvasView *)&v9 actionForLayer:layer forKey:key];
  }
}

- (id)_textImageFromRect:(CGRect)rect
{
  result = [(TSDInteractiveCanvasController *)self->mController textImageFromRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x277D755B8];

    return [v5 imageWithCGImage:v4];
  }

  return result;
}

@end