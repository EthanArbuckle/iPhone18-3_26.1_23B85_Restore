@interface _UIButtonFeedbackGenerator
- (_UIButtonFeedbackGenerator)initWithStyle:(int64_t)a3 coordinateSpace:(id)a4;
- (_UIButtonFeedbackGenerator)initWithStyle:(int64_t)a3 view:(id)a4;
- (void)userInteractionCancelledAtLocation:(CGPoint)a3;
- (void)userInteractionEndedAtLocation:(CGPoint)a3;
- (void)userInteractionStartedAtLocation:(CGPoint)a3;
@end

@implementation _UIButtonFeedbackGenerator

- (_UIButtonFeedbackGenerator)initWithStyle:(int64_t)a3 coordinateSpace:(id)a4
{
  v6 = _viewFromCoordinateSpace(a4);
  v7 = [(_UIButtonFeedbackGenerator *)self initWithStyle:a3 view:v6];

  return v7;
}

- (_UIButtonFeedbackGenerator)initWithStyle:(int64_t)a3 view:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = [objc_msgSend(objc_opt_class() "_configurationClass")];
  }

  else
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [objc_msgSend(objc_opt_class() "_configurationClass")];
  }

  v8 = v7;
LABEL_7:
  v11.receiver = self;
  v11.super_class = _UIButtonFeedbackGenerator;
  v9 = [(UIFeedbackGenerator *)&v11 initWithConfiguration:v8 view:v6];

  return v9;
}

- (void)userInteractionStartedAtLocation:(CGPoint)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63___UIButtonFeedbackGenerator_userInteractionStartedAtLocation___block_invoke;
  v3[3] = &unk_1E70F3CD8;
  v3[4] = self;
  v4 = a3;
  [(UIFeedbackGenerator *)self activateWithCompletionBlock:v3];
}

- (void)userInteractionEndedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v6 = [(_UIButtonFeedbackGenerator *)self _buttonConfiguration];
  v7 = [v6 interactionEndedFeedback];
  [(UIFeedbackGenerator *)self _playFeedback:v7 atLocation:x, y];

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)userInteractionCancelledAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v6 = [(_UIButtonFeedbackGenerator *)self _buttonConfiguration];
  v7 = [v6 interactionCancelledFeedback];
  [(UIFeedbackGenerator *)self _playFeedback:v7 atLocation:x, y];

  [(UIFeedbackGenerator *)self deactivate];
}

@end