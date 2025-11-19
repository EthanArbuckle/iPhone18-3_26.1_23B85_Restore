@interface SBHomeGestureDismissableCoverSheetViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (void)_addOrRemoveGestureForCurrentSettings;
- (void)_handleBottomEdgeGesture:(id)a3;
- (void)_handleBottomEdgeGestureEnded:(id)a3;
- (void)_relinquishHomeGestureOwnership;
- (void)_requestHomeGestureOwnership;
- (void)setWantsHomeGestureOwnership:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBHomeGestureDismissableCoverSheetViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHomeGestureDismissableCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:a3];
  [(SBHomeGestureDismissableCoverSheetViewController *)self _addOrRemoveGestureForCurrentSettings];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHomeGestureDismissableCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:a3];
  [(SBHomeGestureDismissableCoverSheetViewController *)self _addOrRemoveGestureForCurrentSettings];
}

- (void)zStackParticipantDidChange:(id)a3
{
  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  v7 = +[SBSystemGestureManager mainDisplayManager];
  v4 = [(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture];
  if (self->_hasHomeGestureOwnership != v4)
  {
    v5 = v4;
    bottomEdgeRecognizer = self->_bottomEdgeRecognizer;
    if (v4)
    {
      [v7 addGestureRecognizer:bottomEdgeRecognizer withType:96];
    }

    else
    {
      [v7 removeGestureRecognizer:bottomEdgeRecognizer];
    }

    self->_hasHomeGestureOwnership = v5;
  }
}

- (void)setWantsHomeGestureOwnership:(BOOL)a3
{
  if (self->_wantsHomeGestureOwnership != a3)
  {
    self->_wantsHomeGestureOwnership = a3;
    if (a3)
    {
      [(SBHomeGestureDismissableCoverSheetViewController *)self _requestHomeGestureOwnership];
    }

    else
    {
      [(SBHomeGestureDismissableCoverSheetViewController *)self _relinquishHomeGestureOwnership];
    }
  }
}

- (void)_requestHomeGestureOwnership
{
  v3 = [(SBHomeGestureDismissableCoverSheetViewController *)self zStackParticipant];
  if (!v3)
  {
    if (![(SBHomeGestureDismissableCoverSheetViewController *)self zStackParticipantIdentifier])
    {
      return;
    }

    v4 = [(SBHomeGestureDismissableCoverSheetViewController *)self view];
    v5 = [v4 _sbWindowScene];
    v6 = [v5 zStackResolver];
    v7 = [v6 acquireParticipantWithIdentifier:-[SBHomeGestureDismissableCoverSheetViewController zStackParticipantIdentifier](self delegate:{"zStackParticipantIdentifier"), self}];

    [(SBHomeGestureDismissableCoverSheetViewController *)self setZStackParticipant:v7];
    [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
    v3 = v7;
  }
}

- (void)_relinquishHomeGestureOwnership
{
  v3 = [(SBHomeGestureDismissableCoverSheetViewController *)self zStackParticipant];

  if (v3)
  {
    v4 = [(SBHomeGestureDismissableCoverSheetViewController *)self zStackParticipant];
    [v4 invalidate];

    [(SBHomeGestureDismissableCoverSheetViewController *)self setZStackParticipant:0];
  }
}

- (void)_addOrRemoveGestureForCurrentSettings
{
  v7 = +[SBSystemGestureManager mainDisplayManager];
  v3 = [(SBHomeGestureDismissableCoverSheetViewController *)self _appearState];
  if (v3 && v3 != 3 && SBHomeGestureEnabled())
  {
    if (!self->_bottomEdgeRecognizer)
    {
      v4 = [SBHomeGesturePanGestureRecognizer homeGesturePanGestureRecognizerWithTarget:self action:sel__handleBottomEdgeGesture_];
      bottomEdgeRecognizer = self->_bottomEdgeRecognizer;
      self->_bottomEdgeRecognizer = v4;

      [(UIScreenEdgePanGestureRecognizer *)self->_bottomEdgeRecognizer setEdges:4];
      [(SBHomeGesturePanGestureRecognizer *)self->_bottomEdgeRecognizer setDelegate:self];
      [(SBHomeGestureDismissableCoverSheetViewController *)self setWantsHomeGestureOwnership:1];
      if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
      {
        [v7 addGestureRecognizer:self->_bottomEdgeRecognizer withType:96];
        self->_hasHomeGestureOwnership = 1;
      }
    }
  }

  else if (self->_bottomEdgeRecognizer)
  {
    [v7 removeGestureRecognizer:?];
    self->_hasHomeGestureOwnership = 0;
    v6 = self->_bottomEdgeRecognizer;
    self->_bottomEdgeRecognizer = 0;

    [(SBHomeGestureDismissableCoverSheetViewController *)self setWantsHomeGestureOwnership:0];
  }
}

- (void)_handleBottomEdgeGesture:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if ((v4 - 3) < 3)
  {
    [(SBHomeGestureDismissableCoverSheetViewController *)self _handleBottomEdgeGestureEnded:v7];
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    [(SBHomeGestureDismissableCoverSheetViewController *)self _handleBottomEdgeGestureChanged:v7];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(SBHomeGestureDismissableCoverSheetViewController *)self _handleBottomEdgeGestureBegan:v7];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleBottomEdgeGestureEnded:(id)a3
{
  if (self->_bottomEdgeRecognizer == a3 && [(SBHomeGestureDismissableCoverSheetViewController *)self shouldDismissForHomeGestureRecognizer:?])
  {

    [(CSCoverSheetViewControllerBase *)self dismiss];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [(SBHomeGestureDismissableCoverSheetViewController *)self view];
  v5 = [v4 _sbWindowScene];
  v6 = [v5 zStackResolver];
  v7 = v6 == 0;

  v8 = [(SBHomeGestureDismissableCoverSheetViewController *)self zStackParticipant];
  LOBYTE(v4) = [v8 ownsHomeGesture];

  return (v7 | v4) & 1;
}

@end