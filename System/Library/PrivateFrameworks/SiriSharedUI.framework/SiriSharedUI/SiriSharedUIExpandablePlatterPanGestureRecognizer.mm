@interface SiriSharedUIExpandablePlatterPanGestureRecognizer
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (SiriSharedUIExpandablePlatterPanGestureRecognizer)initWithExpansionDelegate:(id)delegate;
- (SiriSharedUIExpandablePlatterPanGestureRecognizerDelegate)expansionDelegate;
- (void)panGestureRecognizerDidPan:(id)pan;
@end

@implementation SiriSharedUIExpandablePlatterPanGestureRecognizer

- (SiriSharedUIExpandablePlatterPanGestureRecognizer)initWithExpansionDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SiriSharedUIExpandablePlatterPanGestureRecognizer;
  v5 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)&v8 initWithTarget:self action:sel_panGestureRecognizerDidPan_];
  v6 = v5;
  if (v5)
  {
    [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)v5 setDelegate:v5];
    objc_storeWeak(&v6->_expansionDelegate, delegateCopy);
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  objc_opt_class();
  LOBYTE(gestureRecognizerCopy) = objc_opt_isKindOfClass();

  return gestureRecognizerCopy & isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = 0;
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }
  }

  return v8;
}

- (void)panGestureRecognizerDidPan:(id)pan
{
  panCopy = pan;
  view = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self view];
  [panCopy translationInView:view];
  v6 = v5;

  view2 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self view];
  [view2 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  state = [panCopy state];
  view3 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self view];
  [panCopy velocityInView:view3];
  v19 = v18;
  v21 = v20;

  if (state == 3)
  {
    [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self projectedTranslationWithVelocity:v21 decelerationRate:SiriSharedUIScrollViewDecelerationRateNormal()];
    v6 = v6 + v22;
  }

  v37 = v9;
  v41.origin.x = v9;
  v41.origin.y = v11;
  v41.size.width = v13;
  v41.size.height = v15;
  Height = CGRectGetHeight(v41);
  if (self->_allowExpandedState)
  {
    if (self->_expandedHeight >= self->_scrollViewContentHeight)
    {
      scrollViewContentHeight = self->_scrollViewContentHeight;
    }

    else
    {
      scrollViewContentHeight = self->_expandedHeight;
    }

    v25 = 3;
  }

  else
  {
    scrollViewContentHeight = self->_initialHeight;
    v25 = 1;
  }

  if ([panCopy state] == 1)
  {
    if (fabs(v19) > fabs(v21))
    {
      [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self setState:4];
      goto LABEL_32;
    }

    expansionDelegate = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self expansionDelegate];
    [expansionDelegate expandablePlatterGestureDidBeginWithRecognizer:self];
  }

  else
  {
    if ([panCopy state] != 2)
    {
      goto LABEL_21;
    }

    v26 = Height - v6;
    v27 = Height - v6 <= scrollViewContentHeight;
    collapsedHeight = scrollViewContentHeight;
    if (v27)
    {
      if (v26 < self->_collapsedHeight)
      {
        collapsedHeight = self->_collapsedHeight;
      }

      else
      {
        collapsedHeight = v26;
      }
    }

    view4 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self view];
    [panCopy setTranslation:view4 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    expansionDelegate = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self expansionDelegate];
    [expansionDelegate expandablePlatterGesture:self trackingGestureDidUpdateHeight:collapsedHeight];
  }

LABEL_21:
  if ([panCopy state] != 3)
  {
    goto LABEL_30;
  }

  v42.origin.x = v38;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  v31 = CGRectGetHeight(v42);
  if (v21 < 0.0 || v31 / scrollViewContentHeight >= 0.5 && v21 == 0.0)
  {
    v43.origin.x = v38;
    v43.origin.y = v11;
    v43.size.width = v13;
    v43.size.height = v15;
    v32 = CGRectGetHeight(v43);
    v33 = self->_collapsedHeight;
    if (v32 > v33)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v33 = self->_collapsedHeight;
  }

  v25 = 2;
  scrollViewContentHeight = v33;
LABEL_29:
  expansionDelegate2 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self expansionDelegate];
  [expansionDelegate2 expandablePlatterGesture:self didCompleteTransitionToStyle:v25 phaseHeight:scrollViewContentHeight];

  expansionDelegate3 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self expansionDelegate];
  [expansionDelegate3 expandablePlatterGestureDidEndWithRecognizer:self];

LABEL_30:
  if ([panCopy state] == 4)
  {
    expansionDelegate4 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self expansionDelegate];
    [expansionDelegate4 expandablePlatterGestureDidEndWithRecognizer:self];
  }

LABEL_32:
}

- (SiriSharedUIExpandablePlatterPanGestureRecognizerDelegate)expansionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expansionDelegate);

  return WeakRetained;
}

@end