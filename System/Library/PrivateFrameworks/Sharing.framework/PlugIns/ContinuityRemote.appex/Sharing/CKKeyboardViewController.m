@interface CKKeyboardViewController
- (void)doneButtonPressed;
- (void)updatePrompt:(id)a3;
@end

@implementation CKKeyboardViewController

- (void)doneButtonPressed
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005D68();
  }

  v5 = SFRemoteTextInputPayloadFromLegacyAPI();
  v3 = SFTextInputDataForRTIDataPayload();
  v4 = [self->super._mainController riSession];
  [v4 sendPayload:v3];
}

- (void)updatePrompt:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (gLogCategory_ContinuityKeyboard > 30 || gLogCategory_ContinuityKeyboard == -1 && (v5 = _LogCategory_Initialize(), v4 = v6, !v5))
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100005DA0();
  if (v6)
  {
LABEL_5:
    [(CRTextField *)self->_textField setPlaceholder:v6];
  }

LABEL_6:

  _objc_release_x1();
}

@end