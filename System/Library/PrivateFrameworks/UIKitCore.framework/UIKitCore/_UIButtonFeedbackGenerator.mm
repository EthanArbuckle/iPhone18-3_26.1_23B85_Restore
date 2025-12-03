@interface _UIButtonFeedbackGenerator
- (_UIButtonFeedbackGenerator)initWithStyle:(int64_t)style coordinateSpace:(id)space;
- (_UIButtonFeedbackGenerator)initWithStyle:(int64_t)style view:(id)view;
- (void)userInteractionCancelledAtLocation:(CGPoint)location;
- (void)userInteractionEndedAtLocation:(CGPoint)location;
- (void)userInteractionStartedAtLocation:(CGPoint)location;
@end

@implementation _UIButtonFeedbackGenerator

- (_UIButtonFeedbackGenerator)initWithStyle:(int64_t)style coordinateSpace:(id)space
{
  v6 = _viewFromCoordinateSpace(space);
  v7 = [(_UIButtonFeedbackGenerator *)self initWithStyle:style view:v6];

  return v7;
}

- (_UIButtonFeedbackGenerator)initWithStyle:(int64_t)style view:(id)view
{
  viewCopy = view;
  if (style == 1)
  {
    v7 = [objc_msgSend(objc_opt_class() "_configurationClass")];
  }

  else
  {
    if (style)
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
  v9 = [(UIFeedbackGenerator *)&v11 initWithConfiguration:v8 view:viewCopy];

  return v9;
}

- (void)userInteractionStartedAtLocation:(CGPoint)location
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63___UIButtonFeedbackGenerator_userInteractionStartedAtLocation___block_invoke;
  v3[3] = &unk_1E70F3CD8;
  v3[4] = self;
  locationCopy = location;
  [(UIFeedbackGenerator *)self activateWithCompletionBlock:v3];
}

- (void)userInteractionEndedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  _buttonConfiguration = [(_UIButtonFeedbackGenerator *)self _buttonConfiguration];
  interactionEndedFeedback = [_buttonConfiguration interactionEndedFeedback];
  [(UIFeedbackGenerator *)self _playFeedback:interactionEndedFeedback atLocation:x, y];

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)userInteractionCancelledAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  _buttonConfiguration = [(_UIButtonFeedbackGenerator *)self _buttonConfiguration];
  interactionCancelledFeedback = [_buttonConfiguration interactionCancelledFeedback];
  [(UIFeedbackGenerator *)self _playFeedback:interactionCancelledFeedback atLocation:x, y];

  [(UIFeedbackGenerator *)self deactivate];
}

@end