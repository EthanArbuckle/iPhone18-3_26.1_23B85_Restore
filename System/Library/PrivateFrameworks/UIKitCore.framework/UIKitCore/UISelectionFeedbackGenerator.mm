@interface UISelectionFeedbackGenerator
- (void)_deactivated;
- (void)selectionChangedAtLocation:(CGPoint)location;
- (void)userInteractionCancelledAtLocation:(CGPoint)location;
- (void)userInteractionEndedAtLocation:(CGPoint)location;
@end

@implementation UISelectionFeedbackGenerator

- (void)_deactivated
{
  v3.receiver = self;
  v3.super_class = UISelectionFeedbackGenerator;
  [(UIFeedbackGenerator *)&v3 _deactivated];
  self->_lastSelectionChangeTime = 0.0;
}

- (void)userInteractionEndedAtLocation:(CGPoint)location
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, location.x, location.y];

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)userInteractionCancelledAtLocation:(CGPoint)location
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, location.x, location.y];

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)selectionChangedAtLocation:(CGPoint)location
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v4 = CACurrentMediaTime();
  lastSelectionChangeTime = self->_lastSelectionChangeTime;
  v6 = 1.0 / (v4 - lastSelectionChangeTime);
  if (v4 - lastSelectionChangeTime <= 0.0)
  {
    v6 = 0.0;
  }

  if (lastSelectionChangeTime > 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  self->_lastSelectionChangeTime = v4;
  _selectionConfiguration = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
  feedback = [_selectionConfiguration feedback];

  _selectionConfiguration2 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
  [_selectionConfiguration2 maxSpeed];
  v11 = v10;

  if (v11 > 0.0)
  {
    _selectionConfiguration3 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [_selectionConfiguration3 maxSpeed];
    v14 = v7 / v13;

    v15 = fmin(fmax(v14, 0.0), 1.0);
    _selectionConfiguration4 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [_selectionConfiguration4 slowAudioVolume];
    v18 = v17;
    _selectionConfiguration5 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [_selectionConfiguration5 fastAudioVolume];
    v21 = v20;
    _selectionConfiguration6 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [_selectionConfiguration6 slowAudioVolume];
    *&v18 = v18 + v15 * (v21 - v23);
    audioParameters = [feedback audioParameters];
    LODWORD(v25) = LODWORD(v18);
    [audioParameters setVolume:v25];

    _selectionConfiguration7 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [_selectionConfiguration7 slowHapticVolume];
    v28 = v27;
    _selectionConfiguration8 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [_selectionConfiguration8 fastHapticVolume];
    v31 = v30;
    _selectionConfiguration9 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [_selectionConfiguration9 slowHapticVolume];
    *&v28 = v28 + v15 * (v31 - v33);
    hapticParameters = [feedback hapticParameters];
    LODWORD(v35) = LODWORD(v28);
    [hapticParameters setVolume:v35];
  }

  _selectionConfiguration10 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
  [_selectionConfiguration10 minimumInterval];
  [UIFeedbackGenerator _playFeedback:"_playFeedback:withMinimumIntervalPassed:since:prefersRegularPace:atLocation:" withMinimumIntervalPassed:feedback since:&_playFeedbackWithSpeed_atLocation____lastTime prefersRegularPace:1 atLocation:?];
}

@end