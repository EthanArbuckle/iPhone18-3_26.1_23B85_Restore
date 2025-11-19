@interface _UITextDocumentInterface
- (BOOL)enablesReturnKeyAutomatically;
- (BOOL)hasText;
- (BOOL)needsInputModeSwitchKey;
- (NSString)documentContextAfterInput;
- (NSString)documentContextBeforeInput;
- (NSString)markedText;
- (NSString)selectedText;
- (NSString)textContentType;
- (NSUUID)documentIdentifier;
- (TIDocumentState)_documentState;
- (TITextInputTraits)_textInputTraits;
- (UITextInputMode)documentInputMode;
- (_UIInputViewControllerOutput)_controllerOutput;
- (_UIInputViewControllerState)_controllerState;
- (_UITextDocumentInterfaceDelegate)_delegate;
- (int64_t)autocapitalizationType;
- (int64_t)autocorrectionType;
- (int64_t)keyboardAppearance;
- (int64_t)keyboardType;
- (int64_t)returnKeyType;
- (int64_t)smartDashesType;
- (int64_t)smartInsertDeleteType;
- (int64_t)smartQuotesType;
- (int64_t)spellCheckingType;
- (void)_createControllerOutputIfNecessary;
- (void)_didPerformOutputOperation;
- (void)_handleInputViewControllerState:(id)a3;
- (void)_setHasDictation:(BOOL)a3;
- (void)_setInputModeList:(int64_t)a3 touchBegan:(double)a4 fromLocation:(CGPoint)a5 updatePoint:(CGPoint)a6;
- (void)_setPrimaryLanguage:(id)a3;
- (void)_setProceedShouldReturnIfPossibleForASP;
- (void)_setShouldAdvanceInputMode;
- (void)_setShouldDismiss;
- (void)adjustTextPositionByCharacterOffset:(int64_t)a3;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)setForwardingInterface:(id)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)unmarkText;
@end

@implementation _UITextDocumentInterface

- (void)setForwardingInterface:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UITextDocumentInterface;
  [(UIInputViewControllerInterface *)&v6 setForwardingInterface:a3];
  v4 = [(UIInputViewControllerInterface *)self forwardingInterface];
  v5 = [(_UITextDocumentInterface *)self _controllerState];
  [v4 _handleInputViewControllerState:v5];
}

- (_UIInputViewControllerState)_controllerState
{
  controllerState = self->_controllerState;
  if (!controllerState)
  {
    v4 = objc_alloc_init(_UIInputViewControllerState);
    v5 = self->_controllerState;
    self->_controllerState = v4;

    controllerState = self->_controllerState;
  }

  [(_UIInputViewControllerState *)controllerState createDocumentStateIfNecessary];
  v6 = self->_controllerState;

  return v6;
}

- (void)_createControllerOutputIfNecessary
{
  if (!self->_controllerOutput)
  {
    v3 = objc_alloc_init(_UIInputViewControllerOutput);
    controllerOutput = self->_controllerOutput;
    self->_controllerOutput = v3;

    v5 = self->_controllerOutput;

    [(_UIInputViewControllerOutput *)v5 setSource:5];
  }
}

- (_UIInputViewControllerOutput)_controllerOutput
{
  [(_UITextDocumentInterface *)self _createControllerOutputIfNecessary];
  controllerOutput = self->_controllerOutput;

  return controllerOutput;
}

- (TIDocumentState)_documentState
{
  v2 = [(_UITextDocumentInterface *)self _controllerState];
  v3 = [v2 documentState];

  return v3;
}

- (TITextInputTraits)_textInputTraits
{
  v2 = [(_UITextDocumentInterface *)self _controllerState];
  v3 = [v2 textInputTraits];

  return v3;
}

- (int64_t)autocapitalizationType
{
  v2 = [(_UITextDocumentInterface *)self _textInputTraits];
  v3 = [v2 autocapitalizationType];

  return v3;
}

- (int64_t)autocorrectionType
{
  v2 = [(_UITextDocumentInterface *)self _textInputTraits];
  v3 = [v2 autocorrectionType];

  return v3;
}

- (int64_t)spellCheckingType
{
  v2 = [(_UITextDocumentInterface *)self _textInputTraits];
  v3 = [v2 spellCheckingType];

  return v3;
}

- (int64_t)keyboardType
{
  v2 = MEMORY[0x1E69D96E0];
  v3 = [(_UITextDocumentInterface *)self _textInputTraits];
  v4 = [v2 translateToPublicKeyboardType:{objc_msgSend(v3, "keyboardType")}];

  return v4;
}

- (int64_t)keyboardAppearance
{
  v2 = [(_UITextDocumentInterface *)self _textInputTraits];
  v3 = +[UITextInputTraits translateToPublicUIKeyboardAppearance:](UITextInputTraits, "translateToPublicUIKeyboardAppearance:", [v2 keyboardAppearance]);

  return v3;
}

- (int64_t)returnKeyType
{
  v2 = [(_UITextDocumentInterface *)self _textInputTraits];
  v3 = [v2 returnKeyType];

  return v3;
}

- (BOOL)enablesReturnKeyAutomatically
{
  v2 = [(_UITextDocumentInterface *)self _textInputTraits];
  v3 = [v2 enablesReturnKeyAutomatically];

  return v3;
}

- (NSString)textContentType
{
  v2 = [(_UITextDocumentInterface *)self _textInputTraits];
  v3 = [v2 textContentType];

  return v3;
}

- (int64_t)smartQuotesType
{
  v2 = [(_UITextDocumentInterface *)self _textInputTraits];
  if ([v2 smartQuotesEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (int64_t)smartDashesType
{
  v2 = [(_UITextDocumentInterface *)self _textInputTraits];
  if ([v2 smartDashesEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (int64_t)smartInsertDeleteType
{
  v2 = [(_UITextDocumentInterface *)self _textInputTraits];
  if ([v2 smartInsertDeleteEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)hasText
{
  v2 = [(_UITextDocumentInterface *)self _documentState];
  v3 = [v2 documentIsEmpty];

  return v3 ^ 1;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v5 = [(_UITextDocumentInterface *)self _documentState];
  v6 = [v5 documentStateAfterInsertingText:v4];
  v7 = [(_UITextDocumentInterface *)self _controllerState];
  [v7 setDocumentState:v6];

  v8 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v8 insertText:v4];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)deleteBackward
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v3 = [(_UITextDocumentInterface *)self _documentState];
  v4 = [v3 documentStateAfterDeletingBackward];
  v5 = [(_UITextDocumentInterface *)self _controllerState];
  [v5 setDocumentState:v4];

  v6 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v6 deleteBackward];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v8 = [(_UITextDocumentInterface *)self _documentState];
  v9 = [v8 documentStateAfterSettingMarkedText:v7 selectedRange:{location, length}];
  v10 = [(_UITextDocumentInterface *)self _controllerState];
  [v10 setDocumentState:v9];

  v11 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v11 setSetMarkedText:1];

  v12 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v12 setMarkedText:v7];

  v13 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v13 setSelectedRange:{location, length}];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)unmarkText
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v3 = [(_UITextDocumentInterface *)self _controllerState];
  v4 = [v3 documentState];
  v5 = [v4 documentStateAfterUnmarkingText];
  v6 = [(_UITextDocumentInterface *)self _controllerState];
  [v6 setDocumentState:v5];

  v7 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v7 setUnmarkText:1];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (NSString)documentContextBeforeInput
{
  v3 = [(_UITextDocumentInterface *)self _documentState];
  v4 = [v3 contextBeforeInput];
  if ([v4 length])
  {
    v5 = [(_UITextDocumentInterface *)self _documentState];
    v6 = [v5 contextBeforeInput];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)documentContextAfterInput
{
  v3 = [(_UITextDocumentInterface *)self _documentState];
  v4 = [v3 contextAfterInput];
  if ([v4 length])
  {
    v5 = [(_UITextDocumentInterface *)self _documentState];
    v6 = [v5 contextAfterInput];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UITextInputMode)documentInputMode
{
  v2 = [(_UITextDocumentInterface *)self _controllerState];
  v3 = [v2 documentInputMode];

  return v3;
}

- (NSString)selectedText
{
  v2 = [(_UITextDocumentInterface *)self _documentState];
  v3 = [v2 selectedText];

  return v3;
}

- (NSString)markedText
{
  v2 = [(_UITextDocumentInterface *)self _documentState];
  v3 = [v2 markedText];

  return v3;
}

- (NSUUID)documentIdentifier
{
  v2 = [(_UITextDocumentInterface *)self _controllerState];
  v3 = [v2 documentIdentifier];

  return v3;
}

- (BOOL)needsInputModeSwitchKey
{
  v2 = [(_UITextDocumentInterface *)self _controllerState];
  v3 = [v2 needsInputModeSwitchKey];

  return v3;
}

- (void)adjustTextPositionByCharacterOffset:(int64_t)a3
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  if (a3)
  {
    v5 = [(_UITextDocumentInterface *)self _documentState];
    v6 = [v5 documentStateAfterCursorAdjustment:a3];
    v7 = [(_UITextDocumentInterface *)self _controllerState];
    [v7 setDocumentState:v6];

    v8 = [(_UITextDocumentInterface *)self _controllerOutput];
    [v8 adjustTextPositionByCharacterOffset:a3];
  }

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_handleInputViewControllerState:(id)a3
{
  v4 = a3;
  v5 = [(_UITextDocumentInterface *)self _delegate];
  [v5 _willResetDocumentState];

  [(_UITextDocumentInterface *)self setControllerState:v4];
  v6 = [(_UITextDocumentInterface *)self _delegate];
  [v6 _didResetDocumentState];
}

- (void)_didPerformOutputOperation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___UITextDocumentInterface__didPerformOutputOperation__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setPrimaryLanguage:(id)a3
{
  v4 = a3;
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v5 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v5 setPrimaryLanguage:v4];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_setShouldDismiss
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v3 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v3 setShouldDismiss:1];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_setProceedShouldReturnIfPossibleForASP
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v3 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v3 setProceedShouldReturn:1];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_setShouldAdvanceInputMode
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v3 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v3 setShouldAdvanceInputMode:1];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_setHasDictation:(BOOL)a3
{
  v3 = a3;
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v6 setHasDictation:v5];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_setInputModeList:(int64_t)a3 touchBegan:(double)a4 fromLocation:(CGPoint)a5 updatePoint:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v13 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v13 setInputModeListTouchPhase:a3];

  v14 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v14 setInputModeListTouchBegan:a4];

  v15 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v15 setInputModeListFromLocation:{v9, v8}];

  v16 = [(_UITextDocumentInterface *)self _controllerOutput];
  [v16 setInputModeListUpdatePoint:{x, y}];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (_UITextDocumentInterfaceDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end