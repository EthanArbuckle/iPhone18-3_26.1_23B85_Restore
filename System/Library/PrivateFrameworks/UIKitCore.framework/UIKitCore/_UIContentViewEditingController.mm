@interface _UIContentViewEditingController
- (BOOL)isDisplayingEditedText;
- (BOOL)makeTextInputFirstResponderWithInitialLayoutBlock:(id)block;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (NSString)description;
- (UIView)contentView;
- (_UIContentViewEditingController)initWithContentView:(id)view editableLabel:(id)label;
- (uint64_t)removeGestureRecognizer;
- (uint64_t)tearDownTextInputView;
- (void)dealloc;
- (void)longPressRecognizerChanged:(id)changed;
- (void)setupTextInputView;
- (void)tearDownPassthroughInteraction;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateLabelProperties:(id)properties editingConfiguration:(id)configuration;
@end

@implementation _UIContentViewEditingController

- (_UIContentViewEditingController)initWithContentView:(id)view editableLabel:(id)label
{
  viewCopy = view;
  labelCopy = label;
  v9 = labelCopy;
  if (viewCopy)
  {
    if (labelCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingController.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"contentView != nil"}];

    if (v9)
    {
LABEL_3:
      if (![v9 isHidden])
      {
        goto LABEL_4;
      }
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingController.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"editableLabel != nil && !editableLabel.hidden"}];

LABEL_4:
  v15.receiver = self;
  v15.super_class = _UIContentViewEditingController;
  v10 = [(_UIContentViewEditingController *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_contentView, viewCopy);
    objc_storeStrong(&v11->_editableLabel, label);
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  weakRetained = [v3 stringWithFormat:@"<%@ %p contentView: %@>", v4, self, WeakRetained];

  return weakRetained;
}

- (void)updateLabelProperties:(id)properties editingConfiguration:(id)configuration
{
  propertiesCopy = properties;
  configurationCopy = configuration;
  objc_storeStrong(&self->_editingConfiguration, configuration);
  objc_storeStrong(&self->_labelProperties, properties);
  textInputView = self->_textInputView;
  if (textInputView && ![(UIView *)textInputView isFirstResponder]&& ![(_UIContentViewEditingConfiguration *)self->_editingConfiguration useTextInputAsLabel])
  {
    [(_UIContentViewEditingController *)self tearDownTextInputView];
  }

  editingConfiguration = self->_editingConfiguration;
  if (!editingConfiguration)
  {
    [(_UIContentViewEditingController *)self tearDownTextInputView];
LABEL_19:
    [(_UIContentViewEditingController *)self removeGestureRecognizer];
    goto LABEL_20;
  }

  if (!propertiesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingController.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"labelProperties != nil"}];

    editingConfiguration = self->_editingConfiguration;
  }

  useTextInputAsLabel = [(_UIContentViewEditingConfiguration *)editingConfiguration useTextInputAsLabel];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___UIContentViewEditingController_updateLabelProperties_editingConfiguration___block_invoke;
  block[3] = &unk_1E70F35E0;
  v19 = useTextInputAsLabel;
  v13 = propertiesCopy;
  v18 = v13;
  if (updateLabelProperties_editingConfiguration__once != -1)
  {
    dispatch_once(&updateLabelProperties_editingConfiguration__once, block);
  }

  if (self->_textInputView)
  {
    [(_UIListContentTextPropertiesInternal *)self->_labelProperties _applyToTextField:?];
  }

  else if (useTextInputAsLabel)
  {
    [(_UIContentViewEditingController *)&self->super.isa setupTextInputView];
  }

  if (![v13 _hasText])
  {
    goto LABEL_19;
  }

  if (![(_UIContentViewEditingConfiguration *)self->_editingConfiguration useTextInputAsLabel]&& !self->_longPressRecognizer)
  {
    v14 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel_longPressRecognizerChanged_];
    longPressRecognizer = self->_longPressRecognizer;
    self->_longPressRecognizer = v14;

    [(UIView *)self->_editableLabel addGestureRecognizer:self->_longPressRecognizer];
    [(UIGestureRecognizer *)self->_longPressRecognizer setCancelsTouchesInView:1];
    [(UILabel *)self->_editableLabel setUserInteractionEnabled:1];
  }

LABEL_20:
}

- (uint64_t)tearDownTextInputView
{
  if (result)
  {
    v1 = result;
    [(_UIContentViewEditingController *)result tearDownPassthroughInteraction];
    [*(v1 + 48) setDelegate:0];
    [*(v1 + 48) removeFromSuperview];
    v2 = *(v1 + 48);
    *(v1 + 48) = 0;

    v3 = *(v1 + 40);

    return [v3 setAlpha:1.0];
  }

  return result;
}

- (void)setupTextInputView
{
  if (self)
  {
    if (self[6])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_setupTextInputView object:self file:@"_UIContentViewEditingController.m" lineNumber:127 description:@"Attempting to set up a text input view while one already exists."];
    }

    [self[5] frame];
    v6 = [(UITextField *)[_UIContentViewEditingTextField alloc] initWithFrame:v2, v3, v4, v5];
    v7 = self[6];
    self[6] = v6;

    [self[6] setDelegate:self];
    [self[8] _applyToTextField:self[6]];
    [self[5] setAlpha:0.0];
    WeakRetained = objc_loadWeakRetained(self + 4);
    [WeakRetained addSubview:self[6]];
  }
}

- (uint64_t)removeGestureRecognizer
{
  if (result)
  {
    v1 = result;
    view = [*(result + 8) view];
    [view removeGestureRecognizer:*(v1 + 8)];

    v3 = *(v1 + 40);

    return [v3 setUserInteractionEnabled:0];
  }

  return result;
}

- (void)dealloc
{
  [(_UIContentViewEditingController *)self tearDownTextInputView];
  v3.receiver = self;
  v3.super_class = _UIContentViewEditingController;
  [(_UIContentViewEditingController *)&v3 dealloc];
}

- (void)longPressRecognizerChanged:(id)changed
{
  if ([changed state] == 1 && !-[UIView isFirstResponder](self->_textInputView, "isFirstResponder") && !-[_UIContentViewEditingController makeTextInputFirstResponderWithInitialLayoutBlock:](self, "makeTextInputFirstResponderWithInitialLayoutBlock:", &__block_literal_global_321))
  {

    [(_UIContentViewEditingController *)self tearDownTextInputView];
  }
}

- (void)tearDownPassthroughInteraction
{
  if (self && *(self + 16))
  {
    [*(self + 48) removeInteraction:?];
    v2 = *(self + 16);
    *(self + 16) = 0;
  }
}

- (BOOL)makeTextInputFirstResponderWithInitialLayoutBlock:(id)block
{
  blockCopy = block;
  if (self->_editingConfiguration)
  {
    if (!self->_textInputView)
    {
      [(_UIContentViewEditingController *)&self->super.isa setupTextInputView];
    }

    if (blockCopy)
    {
      [UIView performWithoutAnimation:blockCopy];
    }

    LODWORD(v5) = [(UITextField *)self->_textInputView becomeFirstResponder];
    if ([(_UIContentViewEditingConfiguration *)self->_editingConfiguration selectAllTextWhenEditingBegins]&& v5)
    {
      textInputView = self->_textInputView;
      beginningOfDocument = [(UITextField *)textInputView beginningOfDocument];
      endOfDocument = [(UITextField *)self->_textInputView endOfDocument];
      v5 = [(UITextField *)textInputView textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];
      [(UITextField *)self->_textInputView setSelectedTextRange:v5];

      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isDisplayingEditedText
{
  if (self->_textInputView)
  {
    return ![(_UIContentViewEditingConfiguration *)self->_editingConfiguration useTextInputAsLabel];
  }

  else
  {
    return 0;
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if ([stringCopy isEqualToString:@"\t"])
  {
    [fieldCopy resignFirstResponder];
    v11 = 0;
  }

  else
  {
    shouldChangeHandler = [(_UIContentViewEditingConfiguration *)self->_editingConfiguration shouldChangeHandler];
    if (shouldChangeHandler)
    {
      v13 = [_UIContentViewEditingState alloc];
      text = [fieldCopy text];
      v15 = [(_UIContentViewEditingState *)v13 initWithText:text proposedReplacementText:stringCopy proposedReplacementRange:location, length];

      v16 = (shouldChangeHandler)[2](shouldChangeHandler, v15);
      v11 = [(_UIContentViewEditingState *)v15 isEqual:v16];
      if ((v11 & 1) == 0)
      {
        text2 = [v16 text];
        [fieldCopy setText:text2];
      }
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  shouldBeginHandler = [(_UIContentViewEditingConfiguration *)self->_editingConfiguration shouldBeginHandler];
  v4 = shouldBeginHandler;
  if (shouldBeginHandler)
  {
    v5 = (*(shouldBeginHandler + 16))(shouldBeginHandler);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  if (self)
  {
    if (self->_passthroughInteraction)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_setupPassthroughInteraction object:self file:@"_UIContentViewEditingController.m" lineNumber:180 description:@"Attempting to set up a passthrough interaction while one already exists"];
    }

    v4 = objc_alloc_init(_UIPassthroughScrollInteraction);
    passthroughInteraction = self->_passthroughInteraction;
    self->_passthroughInteraction = v4;

    [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction setDelegate:self];
    textInputView = self->_textInputView;
    v7 = self->_passthroughInteraction;

    [(UIView *)textInputView addInteraction:v7];
  }
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  editingCopy = editing;
  shouldEndHandler = [(_UIContentViewEditingConfiguration *)self->_editingConfiguration shouldEndHandler];
  if (shouldEndHandler && (v6 = [_UIContentViewEditingState alloc], [editingCopy text], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[_UIContentViewEditingState initWithText:](v6, "initWithText:", v7), v7, LODWORD(v7) = (shouldEndHandler)[2](shouldEndHandler, v8), v8, !v7))
  {
    v12 = 0;
  }

  else
  {
    text = [editingCopy text];
    text2 = [(_UIListContentTextPropertiesInternal *)self->_labelProperties text];
    v11 = [text isEqualToString:text2];

    v12 = 1;
    if ((v11 & 1) == 0)
    {
      self->_hasEdits = 1;
    }
  }

  return v12;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  [(_UIContentViewEditingController *)self tearDownPassthroughInteraction];
  v5 = self->_editingConfiguration;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingController.m" lineNumber:265 description:{@"Text field ended editing, but we no longer have an editing configuration."}];
  }

  didEndHandler = [(_UIContentViewEditingConfiguration *)v5 didEndHandler];
  if (didEndHandler)
  {
    v7 = [_UIContentViewEditingState alloc];
    text = [editingCopy text];
    v9 = [(_UIContentViewEditingState *)v7 initWithText:text];

    (didEndHandler)[2](didEndHandler, v9);
  }

  if (!self->_hasEdits && ![(_UIContentViewEditingConfiguration *)v5 useTextInputAsLabel])
  {
    [(_UIContentViewEditingController *)self tearDownTextInputView];
  }

  self->_hasEdits = 0;
}

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end