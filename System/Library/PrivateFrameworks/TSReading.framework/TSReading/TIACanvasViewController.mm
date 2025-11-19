@interface TIACanvasViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (TSAInteractiveCanvasController)interactiveCanvasController;
- (id)commonGestureRecognizers;
- (id)p_LocalGestureRecognizers;
- (void)setUpGestureRecognizers;
@end

@implementation TIACanvasViewController

- (id)commonGestureRecognizers
{
  v3.receiver = self;
  v3.super_class = TIACanvasViewController;
  return [(NSArray *)[(TSDiOSCanvasViewController *)&v3 commonGestureRecognizers] arrayByAddingObjectsFromArray:[(TIACanvasViewController *)self p_LocalGestureRecognizers]];
}

- (void)setUpGestureRecognizers
{
  v4.receiver = self;
  v4.super_class = TIACanvasViewController;
  [(TSWPiOSCanvasViewController *)&v4 setUpGestureRecognizers];
  if ([(TIACanvasViewController *)self wantsHyperlinkGestureRecognizer])
  {
    if (![(TIACanvasViewController *)self hyperlinkGestureRecognizer])
    {
      v3 = [[TSAHyperlinkGestureRecognizer alloc] initWithTarget:self action:sel_handleHyperlinkGesture_];
      [(TIACanvasViewController *)self setHyperlinkGestureRecognizer:v3];
      [(TSAHyperlinkGestureRecognizer *)v3 setDelegate:self];
      [(TSAHyperlinkGestureRecognizer *)v3 setIcc:[(TIACanvasViewController *)self interactiveCanvasController]];
    }

    [-[TIACanvasViewController view](self "view")];
    [(UITapGestureRecognizer *)self->super.super.mSingleTapGestureRecognizer requireGestureRecognizerToFail:[(TIACanvasViewController *)self hyperlinkGestureRecognizer]];
    [(TSDRepDragGestureRecognizer *)self->super.super.mRepDragGestureRecognizer requireGestureRecognizerToFail:[(TIACanvasViewController *)self hyperlinkGestureRecognizer]];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v8.receiver = self;
  v8.super_class = TIACanvasViewController;
  return [(TSDiOSCanvasViewController *)&v8 gestureRecognizer:a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:a4];
}

- (TSAInteractiveCanvasController)interactiveCanvasController
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (id)p_LocalGestureRecognizers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(UIGestureRecognizer *)[(TIACanvasViewController *)self hyperlinkGestureRecognizer] isEnabled])
  {
    [v3 addObject:{-[TIACanvasViewController hyperlinkGestureRecognizer](self, "hyperlinkGestureRecognizer")}];
  }

  return v3;
}

@end