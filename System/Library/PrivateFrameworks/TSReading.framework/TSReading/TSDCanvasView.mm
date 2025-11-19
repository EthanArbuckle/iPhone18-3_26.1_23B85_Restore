@interface TSDCanvasView
- (BOOL)isInteractingWithLink;
- (BOOL)mightHaveLinks;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)willInteractWithLinkAtPoint:(CGPoint)a3;
- (TSDCanvasLayer)canvasLayer;
- (TSDCanvasView)rootCanvasView;
- (TSKScrollView)enclosingScrollView;
- (id)_textImageFromRect:(CGRect)a3;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)_requestTextItemConstrainedToLineAtPoint:(CGPoint)a3 resultHandler:(id)a4;
- (void)cancelInteractionWithLink;
- (void)setController:(id)a3;
- (void)startInteractionWithLinkAtPoint:(CGPoint)a3;
- (void)startLongInteractionWithLinkAtPoint:(CGPoint)a3;
- (void)tapLinkAtPoint:(CGPoint)a3;
- (void)teardown;
- (void)updateInteractionWithLinkAtPoint:(CGPoint)a3;
- (void)validateInteractionWithLinkAtPoint:(CGPoint)a3;
@end

@implementation TSDCanvasView

- (void)setController:(id)a3
{
  if (!self->mController || (v5 = [MEMORY[0x277D6C290] currentHandler], v6 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDCanvasView setController:]"), objc_msgSend(v5, "handleFailureInFunction:file:lineNumber:description:", v6, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDiOSCanvasView.m"), 38, @"shouldn't try to set canvasView's controller more than once"), !self->mController))
  {
    self->mController = a3;
    [(TSDCanvasLayer *)[(TSDCanvasView *)self canvasLayer] setController:a3];
    v7 = [a3 layerHost];

    [(TSDCanvasView *)self setLayerHost:v7];
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
  v2 = self;
  v3 = [(TSDCanvasView *)self superview];
  if (v3)
  {
    v4 = v3;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = v4;
      }

      v4 = [(TSDCanvasView *)v4 superview];
    }

    while (v4);
  }

  return v2;
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

- (void)tapLinkAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)startInteractionWithLinkAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (TSUSupportsTextInteraction())
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate startInteractionWithLinkAtPoint:x, y];
  }
}

- (void)updateInteractionWithLinkAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (TSUSupportsTextInteraction())
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate updateInteractionWithLinkAtPoint:x, y];
  }
}

- (void)validateInteractionWithLinkAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)startLongInteractionWithLinkAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (TSUSupportsTextInteraction())
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate startLongInteractionWithLinkAtPoint:x, y];
  }
}

- (BOOL)willInteractWithLinkAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = TSUSupportsTextInteraction();
  if (v6)
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    LOBYTE(v6) = [(UITextLinkInteraction *)mHyperLinkDelegate willInteractWithLinkAtPoint:x, y];
  }

  return v6;
}

- (void)_requestTextItemConstrainedToLineAtPoint:(CGPoint)a3 resultHandler:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (TSUSupportsTextInteraction() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    mHyperLinkDelegate = self->mHyperLinkDelegate;

    [(UITextLinkInteraction *)mHyperLinkDelegate _requestTextItemConstrainedToLineAtPoint:a4 resultHandler:x, y];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  if ([(TSDCanvasView *)self layer]== a3 && (v8 = [(TSDInteractiveCanvasController *)self->mController i_currentAnimation]) != 0)
  {

    return [v8 actionForLayer:a3 forKey:a4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSDCanvasView;
    return [(TSDCanvasView *)&v9 actionForLayer:a3 forKey:a4];
  }
}

- (id)_textImageFromRect:(CGRect)a3
{
  result = [(TSDInteractiveCanvasController *)self->mController textImageFromRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x277D755B8];

    return [v5 imageWithCGImage:v4];
  }

  return result;
}

@end