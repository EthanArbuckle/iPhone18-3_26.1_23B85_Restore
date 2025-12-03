@interface SBHomeGestureDismissableCoverSheetViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (void)_addOrRemoveGestureForCurrentSettings;
- (void)_handleBottomEdgeGesture:(id)gesture;
- (void)_handleBottomEdgeGestureEnded:(id)ended;
- (void)_relinquishHomeGestureOwnership;
- (void)_requestHomeGestureOwnership;
- (void)setWantsHomeGestureOwnership:(BOOL)ownership;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBHomeGestureDismissableCoverSheetViewController

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBHomeGestureDismissableCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:appear];
  [(SBHomeGestureDismissableCoverSheetViewController *)self _addOrRemoveGestureForCurrentSettings];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBHomeGestureDismissableCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillDisappear:disappear];
  [(SBHomeGestureDismissableCoverSheetViewController *)self _addOrRemoveGestureForCurrentSettings];
}

- (void)zStackParticipantDidChange:(id)change
{
  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  v7 = +[SBSystemGestureManager mainDisplayManager];
  ownsHomeGesture = [(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture];
  if (self->_hasHomeGestureOwnership != ownsHomeGesture)
  {
    v5 = ownsHomeGesture;
    bottomEdgeRecognizer = self->_bottomEdgeRecognizer;
    if (ownsHomeGesture)
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

- (void)setWantsHomeGestureOwnership:(BOOL)ownership
{
  if (self->_wantsHomeGestureOwnership != ownership)
  {
    self->_wantsHomeGestureOwnership = ownership;
    if (ownership)
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
  zStackParticipant = [(SBHomeGestureDismissableCoverSheetViewController *)self zStackParticipant];
  if (!zStackParticipant)
  {
    if (![(SBHomeGestureDismissableCoverSheetViewController *)self zStackParticipantIdentifier])
    {
      return;
    }

    view = [(SBHomeGestureDismissableCoverSheetViewController *)self view];
    _sbWindowScene = [view _sbWindowScene];
    zStackResolver = [_sbWindowScene zStackResolver];
    v7 = [zStackResolver acquireParticipantWithIdentifier:-[SBHomeGestureDismissableCoverSheetViewController zStackParticipantIdentifier](self delegate:{"zStackParticipantIdentifier"), self}];

    [(SBHomeGestureDismissableCoverSheetViewController *)self setZStackParticipant:v7];
    [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
    zStackParticipant = v7;
  }
}

- (void)_relinquishHomeGestureOwnership
{
  zStackParticipant = [(SBHomeGestureDismissableCoverSheetViewController *)self zStackParticipant];

  if (zStackParticipant)
  {
    zStackParticipant2 = [(SBHomeGestureDismissableCoverSheetViewController *)self zStackParticipant];
    [zStackParticipant2 invalidate];

    [(SBHomeGestureDismissableCoverSheetViewController *)self setZStackParticipant:0];
  }
}

- (void)_addOrRemoveGestureForCurrentSettings
{
  v7 = +[SBSystemGestureManager mainDisplayManager];
  _appearState = [(SBHomeGestureDismissableCoverSheetViewController *)self _appearState];
  if (_appearState && _appearState != 3 && SBHomeGestureEnabled())
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

- (void)_handleBottomEdgeGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ((state - 3) < 3)
  {
    [(SBHomeGestureDismissableCoverSheetViewController *)self _handleBottomEdgeGestureEnded:gestureCopy];
LABEL_8:
    v6 = gestureCopy;
    goto LABEL_9;
  }

  if (state == 2)
  {
    [(SBHomeGestureDismissableCoverSheetViewController *)self _handleBottomEdgeGestureChanged:gestureCopy];
    goto LABEL_8;
  }

  v5 = state == 1;
  v6 = gestureCopy;
  if (v5)
  {
    [(SBHomeGestureDismissableCoverSheetViewController *)self _handleBottomEdgeGestureBegan:gestureCopy];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleBottomEdgeGestureEnded:(id)ended
{
  if (self->_bottomEdgeRecognizer == ended && [(SBHomeGestureDismissableCoverSheetViewController *)self shouldDismissForHomeGestureRecognizer:?])
  {

    [(CSCoverSheetViewControllerBase *)self dismiss];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [(SBHomeGestureDismissableCoverSheetViewController *)self view];
  _sbWindowScene = [view _sbWindowScene];
  zStackResolver = [_sbWindowScene zStackResolver];
  v7 = zStackResolver == 0;

  zStackParticipant = [(SBHomeGestureDismissableCoverSheetViewController *)self zStackParticipant];
  LOBYTE(view) = [zStackParticipant ownsHomeGesture];

  return (v7 | view) & 1;
}

@end