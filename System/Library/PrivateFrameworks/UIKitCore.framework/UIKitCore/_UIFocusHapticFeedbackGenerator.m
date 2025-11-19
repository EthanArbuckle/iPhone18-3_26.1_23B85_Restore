@interface _UIFocusHapticFeedbackGenerator
- (_UIFocusHapticFeedbackGenerator)initWithWindowScene:(id)a3;
- (void)performHapticFeedbackForFocusUpdateInContext:(id)a3;
@end

@implementation _UIFocusHapticFeedbackGenerator

- (_UIFocusHapticFeedbackGenerator)initWithWindowScene:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIFocusHapticFeedbackGenerator;
  v5 = [(_UIFocusHapticFeedbackGenerator *)&v12 init];
  if (v5)
  {
    v6 = [v4 screen];
    v7 = [v6 _carSession];
    carSession = v5->_carSession;
    v5->_carSession = v7;

    v9 = [v4 carPlaySession];
    carSessionClient = v5->_carSessionClient;
    v5->_carSessionClient = v9;
  }

  return v5;
}

- (void)performHapticFeedbackForFocusUpdateInContext:(id)a3
{
  v17 = a3;
  v4 = [v17 _request];
  v5 = [v4 inputDeviceInfo];

  v6 = v17;
  if (v5)
  {
    v7 = [v17 _request];
    v8 = [v7 inputDeviceInfo];
    v9 = [v8 senderID];

    v6 = v17;
    if (v9)
    {
      if ([(_UIFocusHapticFeedbackGenerator *)self currentSenderID]!= v9)
      {
        v10 = [(CARSession *)self->_carSession inputDeviceManager];
        v11 = [v10 touchpadWithSenderID:v9];

        if ([v11 feedbackSupported])
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        currentTouchpad = self->_currentTouchpad;
        self->_currentTouchpad = v12;

        v14 = [(_UISceneCarPlaySessionClient *)self->_carSessionClient touchpadForSenderID:v9];
        if ([v14 feedbackSupported])
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        currentCarTouchpad = self->_currentCarTouchpad;
        self->_currentCarTouchpad = v15;

        if (!self->_currentCarTouchpad && !self->_currentTouchpad)
        {
          v9 = 0;
        }

        self->_currentSenderID = v9;
      }

      if (self->_currentCarTouchpad)
      {
        [(_UISceneCarPlaySessionClient *)self->_carSessionClient performFeedbackOfType:1 forTouchpad:?];
      }

      else
      {
        [(CARInputDeviceTouchpad *)self->_currentTouchpad performFeedbackOfType:1];
      }

      v6 = v17;
    }
  }
}

@end