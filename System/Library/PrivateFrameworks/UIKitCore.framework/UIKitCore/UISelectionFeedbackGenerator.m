@interface UISelectionFeedbackGenerator
- (void)_deactivated;
- (void)selectionChangedAtLocation:(CGPoint)a3;
- (void)userInteractionCancelledAtLocation:(CGPoint)a3;
- (void)userInteractionEndedAtLocation:(CGPoint)a3;
@end

@implementation UISelectionFeedbackGenerator

- (void)_deactivated
{
  v3.receiver = self;
  v3.super_class = UISelectionFeedbackGenerator;
  [(UIFeedbackGenerator *)&v3 _deactivated];
  self->_lastSelectionChangeTime = 0.0;
}

- (void)userInteractionEndedAtLocation:(CGPoint)a3
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, a3.x, a3.y];

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)userInteractionCancelledAtLocation:(CGPoint)a3
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, a3.x, a3.y];

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)selectionChangedAtLocation:(CGPoint)a3
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
  v8 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
  v37 = [v8 feedback];

  v9 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
  [v9 maxSpeed];
  v11 = v10;

  if (v11 > 0.0)
  {
    v12 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [v12 maxSpeed];
    v14 = v7 / v13;

    v15 = fmin(fmax(v14, 0.0), 1.0);
    v16 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [v16 slowAudioVolume];
    v18 = v17;
    v19 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [v19 fastAudioVolume];
    v21 = v20;
    v22 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [v22 slowAudioVolume];
    *&v18 = v18 + v15 * (v21 - v23);
    v24 = [v37 audioParameters];
    LODWORD(v25) = LODWORD(v18);
    [v24 setVolume:v25];

    v26 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [v26 slowHapticVolume];
    v28 = v27;
    v29 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [v29 fastHapticVolume];
    v31 = v30;
    v32 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
    [v32 slowHapticVolume];
    *&v28 = v28 + v15 * (v31 - v33);
    v34 = [v37 hapticParameters];
    LODWORD(v35) = LODWORD(v28);
    [v34 setVolume:v35];
  }

  v36 = [(UISelectionFeedbackGenerator *)self _selectionConfiguration];
  [v36 minimumInterval];
  [UIFeedbackGenerator _playFeedback:"_playFeedback:withMinimumIntervalPassed:since:prefersRegularPace:atLocation:" withMinimumIntervalPassed:v37 since:&_playFeedbackWithSpeed_atLocation____lastTime prefersRegularPace:1 atLocation:?];
}

@end