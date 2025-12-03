@interface _UIFocusHapticFeedbackGenerator
- (_UIFocusHapticFeedbackGenerator)initWithWindowScene:(id)scene;
- (void)performHapticFeedbackForFocusUpdateInContext:(id)context;
@end

@implementation _UIFocusHapticFeedbackGenerator

- (_UIFocusHapticFeedbackGenerator)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v12.receiver = self;
  v12.super_class = _UIFocusHapticFeedbackGenerator;
  v5 = [(_UIFocusHapticFeedbackGenerator *)&v12 init];
  if (v5)
  {
    screen = [sceneCopy screen];
    _carSession = [screen _carSession];
    carSession = v5->_carSession;
    v5->_carSession = _carSession;

    carPlaySession = [sceneCopy carPlaySession];
    carSessionClient = v5->_carSessionClient;
    v5->_carSessionClient = carPlaySession;
  }

  return v5;
}

- (void)performHapticFeedbackForFocusUpdateInContext:(id)context
{
  contextCopy = context;
  _request = [contextCopy _request];
  inputDeviceInfo = [_request inputDeviceInfo];

  v6 = contextCopy;
  if (inputDeviceInfo)
  {
    _request2 = [contextCopy _request];
    inputDeviceInfo2 = [_request2 inputDeviceInfo];
    senderID = [inputDeviceInfo2 senderID];

    v6 = contextCopy;
    if (senderID)
    {
      if ([(_UIFocusHapticFeedbackGenerator *)self currentSenderID]!= senderID)
      {
        inputDeviceManager = [(CARSession *)self->_carSession inputDeviceManager];
        v11 = [inputDeviceManager touchpadWithSenderID:senderID];

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

        v14 = [(_UISceneCarPlaySessionClient *)self->_carSessionClient touchpadForSenderID:senderID];
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
          senderID = 0;
        }

        self->_currentSenderID = senderID;
      }

      if (self->_currentCarTouchpad)
      {
        [(_UISceneCarPlaySessionClient *)self->_carSessionClient performFeedbackOfType:1 forTouchpad:?];
      }

      else
      {
        [(CARInputDeviceTouchpad *)self->_currentTouchpad performFeedbackOfType:1];
      }

      v6 = contextCopy;
    }
  }
}

@end