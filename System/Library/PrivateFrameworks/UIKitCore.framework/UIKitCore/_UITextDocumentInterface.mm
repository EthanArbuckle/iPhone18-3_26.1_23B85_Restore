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
- (void)_handleInputViewControllerState:(id)state;
- (void)_setHasDictation:(BOOL)dictation;
- (void)_setInputModeList:(int64_t)list touchBegan:(double)began fromLocation:(CGPoint)location updatePoint:(CGPoint)point;
- (void)_setPrimaryLanguage:(id)language;
- (void)_setProceedShouldReturnIfPossibleForASP;
- (void)_setShouldAdvanceInputMode;
- (void)_setShouldDismiss;
- (void)adjustTextPositionByCharacterOffset:(int64_t)offset;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)setForwardingInterface:(id)interface;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)unmarkText;
@end

@implementation _UITextDocumentInterface

- (void)setForwardingInterface:(id)interface
{
  v6.receiver = self;
  v6.super_class = _UITextDocumentInterface;
  [(UIInputViewControllerInterface *)&v6 setForwardingInterface:interface];
  forwardingInterface = [(UIInputViewControllerInterface *)self forwardingInterface];
  _controllerState = [(_UITextDocumentInterface *)self _controllerState];
  [forwardingInterface _handleInputViewControllerState:_controllerState];
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
  _controllerState = [(_UITextDocumentInterface *)self _controllerState];
  documentState = [_controllerState documentState];

  return documentState;
}

- (TITextInputTraits)_textInputTraits
{
  _controllerState = [(_UITextDocumentInterface *)self _controllerState];
  textInputTraits = [_controllerState textInputTraits];

  return textInputTraits;
}

- (int64_t)autocapitalizationType
{
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  autocapitalizationType = [_textInputTraits autocapitalizationType];

  return autocapitalizationType;
}

- (int64_t)autocorrectionType
{
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  autocorrectionType = [_textInputTraits autocorrectionType];

  return autocorrectionType;
}

- (int64_t)spellCheckingType
{
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  spellCheckingType = [_textInputTraits spellCheckingType];

  return spellCheckingType;
}

- (int64_t)keyboardType
{
  v2 = MEMORY[0x1E69D96E0];
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  v4 = [v2 translateToPublicKeyboardType:{objc_msgSend(_textInputTraits, "keyboardType")}];

  return v4;
}

- (int64_t)keyboardAppearance
{
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  v3 = +[UITextInputTraits translateToPublicUIKeyboardAppearance:](UITextInputTraits, "translateToPublicUIKeyboardAppearance:", [_textInputTraits keyboardAppearance]);

  return v3;
}

- (int64_t)returnKeyType
{
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  returnKeyType = [_textInputTraits returnKeyType];

  return returnKeyType;
}

- (BOOL)enablesReturnKeyAutomatically
{
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  enablesReturnKeyAutomatically = [_textInputTraits enablesReturnKeyAutomatically];

  return enablesReturnKeyAutomatically;
}

- (NSString)textContentType
{
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  textContentType = [_textInputTraits textContentType];

  return textContentType;
}

- (int64_t)smartQuotesType
{
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  if ([_textInputTraits smartQuotesEnabled])
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
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  if ([_textInputTraits smartDashesEnabled])
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
  _textInputTraits = [(_UITextDocumentInterface *)self _textInputTraits];
  if ([_textInputTraits smartInsertDeleteEnabled])
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
  _documentState = [(_UITextDocumentInterface *)self _documentState];
  documentIsEmpty = [_documentState documentIsEmpty];

  return documentIsEmpty ^ 1;
}

- (void)insertText:(id)text
{
  textCopy = text;
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  _documentState = [(_UITextDocumentInterface *)self _documentState];
  v6 = [_documentState documentStateAfterInsertingText:textCopy];
  _controllerState = [(_UITextDocumentInterface *)self _controllerState];
  [_controllerState setDocumentState:v6];

  _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput insertText:textCopy];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)deleteBackward
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  _documentState = [(_UITextDocumentInterface *)self _documentState];
  documentStateAfterDeletingBackward = [_documentState documentStateAfterDeletingBackward];
  _controllerState = [(_UITextDocumentInterface *)self _controllerState];
  [_controllerState setDocumentState:documentStateAfterDeletingBackward];

  _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput deleteBackward];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  _documentState = [(_UITextDocumentInterface *)self _documentState];
  v9 = [_documentState documentStateAfterSettingMarkedText:textCopy selectedRange:{location, length}];
  _controllerState = [(_UITextDocumentInterface *)self _controllerState];
  [_controllerState setDocumentState:v9];

  _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput setSetMarkedText:1];

  _controllerOutput2 = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput2 setMarkedText:textCopy];

  _controllerOutput3 = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput3 setSelectedRange:{location, length}];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)unmarkText
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  _controllerState = [(_UITextDocumentInterface *)self _controllerState];
  documentState = [_controllerState documentState];
  documentStateAfterUnmarkingText = [documentState documentStateAfterUnmarkingText];
  _controllerState2 = [(_UITextDocumentInterface *)self _controllerState];
  [_controllerState2 setDocumentState:documentStateAfterUnmarkingText];

  _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput setUnmarkText:1];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (NSString)documentContextBeforeInput
{
  _documentState = [(_UITextDocumentInterface *)self _documentState];
  contextBeforeInput = [_documentState contextBeforeInput];
  if ([contextBeforeInput length])
  {
    _documentState2 = [(_UITextDocumentInterface *)self _documentState];
    contextBeforeInput2 = [_documentState2 contextBeforeInput];
  }

  else
  {
    contextBeforeInput2 = 0;
  }

  return contextBeforeInput2;
}

- (NSString)documentContextAfterInput
{
  _documentState = [(_UITextDocumentInterface *)self _documentState];
  contextAfterInput = [_documentState contextAfterInput];
  if ([contextAfterInput length])
  {
    _documentState2 = [(_UITextDocumentInterface *)self _documentState];
    contextAfterInput2 = [_documentState2 contextAfterInput];
  }

  else
  {
    contextAfterInput2 = 0;
  }

  return contextAfterInput2;
}

- (UITextInputMode)documentInputMode
{
  _controllerState = [(_UITextDocumentInterface *)self _controllerState];
  documentInputMode = [_controllerState documentInputMode];

  return documentInputMode;
}

- (NSString)selectedText
{
  _documentState = [(_UITextDocumentInterface *)self _documentState];
  selectedText = [_documentState selectedText];

  return selectedText;
}

- (NSString)markedText
{
  _documentState = [(_UITextDocumentInterface *)self _documentState];
  markedText = [_documentState markedText];

  return markedText;
}

- (NSUUID)documentIdentifier
{
  _controllerState = [(_UITextDocumentInterface *)self _controllerState];
  documentIdentifier = [_controllerState documentIdentifier];

  return documentIdentifier;
}

- (BOOL)needsInputModeSwitchKey
{
  _controllerState = [(_UITextDocumentInterface *)self _controllerState];
  needsInputModeSwitchKey = [_controllerState needsInputModeSwitchKey];

  return needsInputModeSwitchKey;
}

- (void)adjustTextPositionByCharacterOffset:(int64_t)offset
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  if (offset)
  {
    _documentState = [(_UITextDocumentInterface *)self _documentState];
    v6 = [_documentState documentStateAfterCursorAdjustment:offset];
    _controllerState = [(_UITextDocumentInterface *)self _controllerState];
    [_controllerState setDocumentState:v6];

    _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
    [_controllerOutput adjustTextPositionByCharacterOffset:offset];
  }

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_handleInputViewControllerState:(id)state
{
  stateCopy = state;
  _delegate = [(_UITextDocumentInterface *)self _delegate];
  [_delegate _willResetDocumentState];

  [(_UITextDocumentInterface *)self setControllerState:stateCopy];
  _delegate2 = [(_UITextDocumentInterface *)self _delegate];
  [_delegate2 _didResetDocumentState];
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

- (void)_setPrimaryLanguage:(id)language
{
  languageCopy = language;
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput setPrimaryLanguage:languageCopy];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_setShouldDismiss
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput setShouldDismiss:1];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_setProceedShouldReturnIfPossibleForASP
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput setProceedShouldReturn:1];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_setShouldAdvanceInputMode
{
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput setShouldAdvanceInputMode:1];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_setHasDictation:(BOOL)dictation
{
  dictationCopy = dictation;
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:dictationCopy];
  _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput setHasDictation:v5];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (void)_setInputModeList:(int64_t)list touchBegan:(double)began fromLocation:(CGPoint)location updatePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v8 = location.y;
  v9 = location.x;
  [(_UITextDocumentInterface *)self _willPerformOutputOperation];
  _controllerOutput = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput setInputModeListTouchPhase:list];

  _controllerOutput2 = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput2 setInputModeListTouchBegan:began];

  _controllerOutput3 = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput3 setInputModeListFromLocation:{v9, v8}];

  _controllerOutput4 = [(_UITextDocumentInterface *)self _controllerOutput];
  [_controllerOutput4 setInputModeListUpdatePoint:{x, y}];

  [(_UITextDocumentInterface *)self _didPerformOutputOperation];
}

- (_UITextDocumentInterfaceDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end