@interface CKKeyboardViewController
- (void)doneButtonPressed;
- (void)updatePrompt:(id)prompt;
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
  riSession = [self->super._mainController riSession];
  [riSession sendPayload:v3];
}

- (void)updatePrompt:(id)prompt
{
  promptCopy = prompt;
  v6 = promptCopy;
  if (gLogCategory_ContinuityKeyboard > 30 || gLogCategory_ContinuityKeyboard == -1 && (v5 = _LogCategory_Initialize(), promptCopy = v6, !v5))
  {
    if (!promptCopy)
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