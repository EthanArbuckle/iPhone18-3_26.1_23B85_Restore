@interface SXTextTangierInteractiveCanvasController
- (BOOL)p_currentlyScrolling;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (SXTextTangierInteractiveCanvasControllerDataSource)dataSource;
- (id)closestRepToPoint:(CGPoint)point forStorage:(id)storage;
- (id)hitRep:(CGPoint)rep withGesture:(id)gesture passingTest:(id)test;
- (id)i_topLevelLayersForTiling;
- (id)topLevelRepsForHitTesting;
- (void)endUISession;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setSelection:(id)selection onModel:(id)model withFlags:(unint64_t)flags;
- (void)teardown;
- (void)willEndEditingText;
@end

@implementation SXTextTangierInteractiveCanvasController

- (void)setSelection:(id)selection onModel:(id)model withFlags:(unint64_t)flags
{
  modelCopy = model;
  selectionCopy = selection;
  objc_opt_class();
  v10 = TSUDynamicCast();
  objc_opt_class();
  v11 = TSUDynamicCast();
  v12 = [v11 substringWithSelection:v10];
  [(SXTextTangierInteractiveCanvasController *)self setSelectedText:v12];

  v13.receiver = self;
  v13.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v13 setSelection:selectionCopy onModel:modelCopy withFlags:flags & 0xFFFFFFFFFFFFFFAFLL];
}

- (void)willEndEditingText
{
  [(SXTextTangierInteractiveCanvasController *)self setSelectedText:0];
  v3.receiver = self;
  v3.super_class = SXTextTangierInteractiveCanvasController;
  [(TSWPInteractiveCanvasController *)&v3 willEndEditingText];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v5.receiver = self;
  v5.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v5 scrollViewWillBeginDragging:dragging];
  delegate = [(TSDInteractiveCanvasController *)self delegate];
  [delegate interactiveCanvasControllerWillStartInteraction:self];

  [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:1];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v6.receiver = self;
  v6.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v6 scrollViewDidScroll:scroll];
  if ([(SXTextTangierInteractiveCanvasController *)self mightScrollToTop])
  {
    [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:1];
    [(SXTextTangierInteractiveCanvasController *)self setMightScrollToTop:0];
    delegate = [(TSDInteractiveCanvasController *)self delegate];
    [delegate interactiveCanvasControllerWillStartInteraction:self];
  }

  delegate2 = [(TSDInteractiveCanvasController *)self delegate];
  [delegate2 interactiveCanvasControllerDidScroll:self];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  v10.receiver = self;
  v10.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v10 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  if (!decelerateCopy)
  {
    [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:0];
  }

  delegate = [(TSDInteractiveCanvasController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(TSDInteractiveCanvasController *)self delegate];
    [delegate2 interactiveCanvasController:self scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  scrollsToTop = [top scrollsToTop];
  if (scrollsToTop)
  {
    [(SXTextTangierInteractiveCanvasController *)self setMightScrollToTop:1];
  }

  return scrollsToTop;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v5.receiver = self;
  v5.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v5 scrollViewDidEndDecelerating:decelerating];
  [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:0];
  delegate = [(TSDInteractiveCanvasController *)self delegate];
  [delegate interactiveCanvasControllerDidStopScrolling:self];
}

- (void)scrollViewDidScrollToTop:(id)top
{
  v5.receiver = self;
  v5.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v5 scrollViewDidScrollToTop:top];
  [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:0];
  delegate = [(TSDInteractiveCanvasController *)self delegate];
  [delegate interactiveCanvasControllerDidStopScrolling:self];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v5.receiver = self;
  v5.super_class = SXTextTangierInteractiveCanvasController;
  [(TSDInteractiveCanvasController *)&v5 scrollViewDidEndScrollingAnimation:animation];
  [(SXTextTangierInteractiveCanvasController *)self setIsScrolling:0];
  delegate = [(TSDInteractiveCanvasController *)self delegate];
  [delegate interactiveCanvasControllerDidStopScrolling:self];
}

- (id)topLevelRepsForHitTesting
{
  dataSource = [(SXTextTangierInteractiveCanvasController *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    dataSource2 = [(SXTextTangierInteractiveCanvasController *)self dataSource];
    topLevelRepsForHitTesting = [dataSource2 topLevelRepsForInteractiveCanvasController:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SXTextTangierInteractiveCanvasController;
    topLevelRepsForHitTesting = [(TSDInteractiveCanvasController *)&v8 topLevelRepsForHitTesting];
  }

  return topLevelRepsForHitTesting;
}

- (id)i_topLevelLayersForTiling
{
  dataSource = [(SXTextTangierInteractiveCanvasController *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    dataSource2 = [(SXTextTangierInteractiveCanvasController *)self dataSource];
    i_topLevelLayersForTiling = [dataSource2 topLevelLayersForInteractiveCanvasController:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SXTextTangierInteractiveCanvasController;
    i_topLevelLayersForTiling = [(TSDInteractiveCanvasController *)&v8 i_topLevelLayersForTiling];
  }

  return i_topLevelLayersForTiling;
}

- (id)closestRepToPoint:(CGPoint)point forStorage:(id)storage
{
  y = point.y;
  x = point.x;
  v31 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  topLevelRepsForHitTesting = [(SXTextTangierInteractiveCanvasController *)self topLevelRepsForHitTesting];
  v9 = [topLevelRepsForHitTesting countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(topLevelRepsForHitTesting);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          storage = [v15 storage];

          if (storage == storageCopy)
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

      v10 = [topLevelRepsForHitTesting countByEnumeratingWithState:&v26 objects:v30 count:16];
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

- (id)hitRep:(CGPoint)rep withGesture:(id)gesture passingTest:(id)test
{
  y = rep.y;
  x = rep.x;
  testCopy = test;
  gestureCopy = gesture;
  canvas = [(TSDInteractiveCanvasController *)self canvas];
  topLevelRepsForHitTesting = [(SXTextTangierInteractiveCanvasController *)self topLevelRepsForHitTesting];
  [objc_opt_class() smallRepOutsetForHitTesting];
  v14 = [canvas hitRep:topLevelRepsForHitTesting inTopLevelReps:gestureCopy smallRepOutset:testCopy withGesture:x passingTest:{y, v13}];

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

  scrollView = [(SXTextTangierInteractiveCanvasController *)self scrollView];
  _isAnimatingScrollTest = [scrollView _isAnimatingScrollTest];

  return _isAnimatingScrollTest;
}

- (void)endUISession
{
  mEMORY[0x1E69D56F0] = [MEMORY[0x1E69D56F0] sharedHyperlinkUIController];
  [mEMORY[0x1E69D56F0] endUISession];
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