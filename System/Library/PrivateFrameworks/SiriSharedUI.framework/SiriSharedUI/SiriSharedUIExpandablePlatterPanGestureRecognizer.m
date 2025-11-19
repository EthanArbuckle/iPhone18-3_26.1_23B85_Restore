@interface SiriSharedUIExpandablePlatterPanGestureRecognizer
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (SiriSharedUIExpandablePlatterPanGestureRecognizer)initWithExpansionDelegate:(id)a3;
- (SiriSharedUIExpandablePlatterPanGestureRecognizerDelegate)expansionDelegate;
- (void)panGestureRecognizerDidPan:(id)a3;
@end

@implementation SiriSharedUIExpandablePlatterPanGestureRecognizer

- (SiriSharedUIExpandablePlatterPanGestureRecognizer)initWithExpansionDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SiriSharedUIExpandablePlatterPanGestureRecognizer;
  v5 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)&v8 initWithTarget:self action:sel_panGestureRecognizerDidPan_];
  v6 = v5;
  if (v5)
  {
    [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)v5 setDelegate:v5];
    objc_storeWeak(&v6->_expansionDelegate, v4);
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  return v5 & isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = a3;
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

- (void)panGestureRecognizerDidPan:(id)a3
{
  v39 = a3;
  v4 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self view];
  [v39 translationInView:v4];
  v6 = v5;

  v7 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self view];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v39 state];
  v17 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self view];
  [v39 velocityInView:v17];
  v19 = v18;
  v21 = v20;

  if (v16 == 3)
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

  if ([v39 state] == 1)
  {
    if (fabs(v19) > fabs(v21))
    {
      [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self setState:4];
      goto LABEL_32;
    }

    v30 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self expansionDelegate];
    [v30 expandablePlatterGestureDidBeginWithRecognizer:self];
  }

  else
  {
    if ([v39 state] != 2)
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

    v29 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self view];
    [v39 setTranslation:v29 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    v30 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self expansionDelegate];
    [v30 expandablePlatterGesture:self trackingGestureDidUpdateHeight:collapsedHeight];
  }

LABEL_21:
  if ([v39 state] != 3)
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
  v34 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self expansionDelegate];
  [v34 expandablePlatterGesture:self didCompleteTransitionToStyle:v25 phaseHeight:scrollViewContentHeight];

  v35 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self expansionDelegate];
  [v35 expandablePlatterGestureDidEndWithRecognizer:self];

LABEL_30:
  if ([v39 state] == 4)
  {
    v36 = [(SiriSharedUIExpandablePlatterPanGestureRecognizer *)self expansionDelegate];
    [v36 expandablePlatterGestureDidEndWithRecognizer:self];
  }

LABEL_32:
}

- (SiriSharedUIExpandablePlatterPanGestureRecognizerDelegate)expansionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expansionDelegate);

  return WeakRetained;
}

@end