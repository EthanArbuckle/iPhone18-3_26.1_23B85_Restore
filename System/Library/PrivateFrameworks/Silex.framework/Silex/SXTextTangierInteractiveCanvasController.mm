@interface SXTextTangierInteractiveCanvasController
- (BOOL)p_currentlyScrolling;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (SXTextTangierInteractiveCanvasControllerDataSource)dataSource;
- (id)closestRepToPoint:(CGPoint)a3 forStorage:(id)a4;
- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5;
- (id)i_topLevelLayersForTiling;
- (id)topLevelRepsForHitTesting;
- (void)endUISession;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setSelection:(id)a3 onModel:(id)a4 withFlags:(unint64_t)a5;
- (void)teardown;
- (void)willEndEditingText;
@end

@implementation SXTextTangierInteractiveCanvasController

- (void)setSelection:(id)a3 onModel:(id)a4 withFlags:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = TSUDynamicCast();
  objc_opt_class();
  v11 = TSUDynamicCast();
  v12 = [v11 substringWithSelection:v10];
  [(SXTextTangierInteractiveCanvasController *)self setSelectedText:v12];

  v13.receiver = self;
  v13.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v13 setSelection:v9 onModel:v8 withFlags:a5 & 0xFFFFFFFFFFFFFFAFLL];
}

- (void)willEndEditingText
{
  [(SXTextTangierInteractiveCanvasController *)self setSelectedText:0];
  v3.receiver = self;
  v3.super_class = SXTextTangierInteractiveCanvasController;
  [(TSWPInteractiveCanvasController *)&v3 willEndEditingText];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v5 scrollViewWillBeginDragging:a3];
  v4 = [(TSDInteractiveCanvasController *)self delegate];
  [v4 interactiveCanvasControllerWillStartInteraction:self];

  [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:1];
}

- (void)scrollViewDidScroll:(id)a3
{
  v6.receiver = self;
  v6.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v6 scrollViewDidScroll:a3];
  if ([(SXTextTangierInteractiveCanvasController *)self mightScrollToTop])
  {
    [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:1];
    [(SXTextTangierInteractiveCanvasController *)self setMightScrollToTop:0];
    v4 = [(TSDInteractiveCanvasController *)self delegate];
    [v4 interactiveCanvasControllerWillStartInteraction:self];
  }

  v5 = [(TSDInteractiveCanvasController *)self delegate];
  [v5 interactiveCanvasControllerDidScroll:self];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v10 scrollViewDidEndDragging:v6 willDecelerate:v4];
  if (!v4)
  {
    [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:0];
  }

  v7 = [(TSDInteractiveCanvasController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(TSDInteractiveCanvasController *)self delegate];
    [v9 interactiveCanvasController:self scrollViewDidEndDragging:v6 willDecelerate:v4];
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = [a3 scrollsToTop];
  if (v4)
  {
    [(SXTextTangierInteractiveCanvasController *)self setMightScrollToTop:1];
  }

  return v4;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v5 scrollViewDidEndDecelerating:a3];
  [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:0];
  v4 = [(TSDInteractiveCanvasController *)self delegate];
  [v4 interactiveCanvasControllerDidStopScrolling:self];
}

- (void)scrollViewDidScrollToTop:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v5 scrollViewDidScrollToTop:a3];
  [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:0];
  v4 = [(TSDInteractiveCanvasController *)self delegate];
  [v4 interactiveCanvasControllerDidStopScrolling:self];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v5 scrollViewDidEndScrollingAnimation:a3];
  [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:0];
  v4 = [(TSDInteractiveCanvasController *)self delegate];
  [v4 interactiveCanvasControllerDidStopScrolling:self];
}

- (id)topLevelRepsForHitTesting
{
  v3 = [(SXTextTangierInteractiveCanvasController *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SXTextTangierInteractiveCanvasController *)self dataSource];
    v6 = [v5 topLevelRepsForInteractiveCanvasController:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SXTextTangierInteractiveCanvasController;
    v6 = [(TSDInteractiveCanvasController *)&v8 topLevelRepsForHitTesting];
  }

  return v6;
}

- (id)i_topLevelLayersForTiling
{
  v3 = [(SXTextTangierInteractiveCanvasController *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SXTextTangierInteractiveCanvasController *)self dataSource];
    v6 = [v5 topLevelLayersForInteractiveCanvasController:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SXTextTangierInteractiveCanvasController;
    v6 = [(TSDInteractiveCanvasController *)&v8 i_topLevelLayersForTiling];
  }

  return v6;
}

- (id)closestRepToPoint:(CGPoint)a3 forStorage:(id)a4
{
  y = a3.y;
  x = a3.x;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [(SXTextTangierInteractiveCanvasController *)self topLevelRepsForHitTesting];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v27;
    v13 = INFINITY;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 storage];

          if (v16 == v7)
          {
            [v15 frameInUnscaledCanvas];
            v17 = v34.origin.x;
            v18 = v34.origin.y;
            width = v34.size.width;
            height = v34.size.height;
            v33.x = x;
            v33.y = y;
            if (CGRectContainsPoint(v34, v33))
            {
              v24 = v15;

              v11 = v24;
              goto LABEL_16;
            }

            v35.origin.x = v17;
            v35.origin.y = v18;
            v35.size.width = width;
            v35.size.height = height;
            CGRectGetMidX(v35);
            v36.origin.x = v17;
            v36.origin.y = v18;
            v36.size.width = width;
            v36.size.height = height;
            CGRectGetMidY(v36);
            TSDDistance();
            if (v21 < v13)
            {
              v22 = v21;
              v23 = v15;

              v13 = v22;
              v11 = v23;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (id)hitRep:(CGPoint)a3 withGesture:(id)a4 passingTest:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = a4;
  v11 = [(TSDInteractiveCanvasController *)self canvas];
  v12 = [(SXTextTangierInteractiveCanvasController *)self topLevelRepsForHitTesting];
  [objc_opt_class() smallRepOutsetForHitTesting];
  v14 = [v11 hitRep:v12 inTopLevelReps:v10 smallRepOutset:v9 withGesture:x passingTest:{y, v13}];

  return v14;
}

- (BOOL)p_currentlyScrolling
{
  v6.receiver = self;
  v6.super_class = SXTextTangierInteractiveCanvasController;
  if ([(TSDInteractiveCanvasController *)&v6 p_currentlyScrolling])
  {
    return 1;
  }

  v4 = [(SXTextTangierInteractiveCanvasController *)self scrollView];
  v3 = [v4 _isAnimatingScrollTest];

  return v3;
}

- (void)endUISession
{
  v2 = [MEMORY[0x1E69D56F0] sharedHyperlinkUIController];
  [v2 endUISession];
}

- (void)teardown
{
  v3.receiver = self;
  v3.super_class = SXTextTangierInteractiveCanvasController;
  [(TSWPInteractiveCanvasController *)&v3 teardown];
  [(TSDInteractiveCanvasController *)self setDelegate:0];
}

- (SXTextTangierInteractiveCanvasControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end