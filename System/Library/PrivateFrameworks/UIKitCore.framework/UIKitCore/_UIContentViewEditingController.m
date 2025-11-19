@interface _UIContentViewEditingController
- (BOOL)isDisplayingEditedText;
- (BOOL)makeTextInputFirstResponderWithInitialLayoutBlock:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (NSString)description;
- (UIView)contentView;
- (_UIContentViewEditingController)initWithContentView:(id)a3 editableLabel:(id)a4;
- (uint64_t)removeGestureRecognizer;
- (uint64_t)tearDownTextInputView;
- (void)dealloc;
- (void)longPressRecognizerChanged:(id)a3;
- (void)setupTextInputView;
- (void)tearDownPassthroughInteraction;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateLabelProperties:(id)a3 editingConfiguration:(id)a4;
@end

@implementation _UIContentViewEditingController

- (_UIContentViewEditingController)initWithContentView:(id)a3 editableLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingController.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"contentView != nil"}];

    if (v9)
    {
LABEL_3:
      if (![v9 isHidden])
      {
        goto LABEL_4;
      }
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingController.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"editableLabel != nil && !editableLabel.hidden"}];

LABEL_4:
  v15.receiver = self;
  v15.super_class = _UIContentViewEditingController;
  v10 = [(_UIContentViewEditingController *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_contentView, v7);
    objc_storeStrong(&v11->_editableLabel, a4);
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  v6 = [v3 stringWithFormat:@"<%@ %p contentView: %@>", v4, self, WeakRetained];

  return v6;
}

- (void)updateLabelProperties:(id)a3 editingConfiguration:(id)a4
{
  v8 = a3;
  v9 = a4;
  objc_storeStrong(&self->_editingConfiguration, a4);
  objc_storeStrong(&self->_labelProperties, a3);
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

  if (!v8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingController.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"labelProperties != nil"}];

    editingConfiguration = self->_editingConfiguration;
  }

  v12 = [(_UIContentViewEditingConfiguration *)editingConfiguration useTextInputAsLabel];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___UIContentViewEditingController_updateLabelProperties_editingConfiguration___block_invoke;
  block[3] = &unk_1E70F35E0;
  v19 = v12;
  v13 = v8;
  v18 = v13;
  if (updateLabelProperties_editingConfiguration__once != -1)
  {
    dispatch_once(&updateLabelProperties_editingConfiguration__once, block);
  }

  if (self->_textInputView)
  {
    [(_UIListContentTextPropertiesInternal *)self->_labelProperties _applyToTextField:?];
  }

  else if (v12)
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
  if (a1)
  {
    if (a1[6])
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_setupTextInputView object:a1 file:@"_UIContentViewEditingController.m" lineNumber:127 description:@"Attempting to set up a text input view while one already exists."];
    }

    [a1[5] frame];
    v6 = [(UITextField *)[_UIContentViewEditingTextField alloc] initWithFrame:v2, v3, v4, v5];
    v7 = a1[6];
    a1[6] = v6;

    [a1[6] setDelegate:a1];
    [a1[8] _applyToTextField:a1[6]];
    [a1[5] setAlpha:0.0];
    WeakRetained = objc_loadWeakRetained(a1 + 4);
    [WeakRetained addSubview:a1[6]];
  }
}

- (uint64_t)removeGestureRecognizer
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 8) view];
    [v2 removeGestureRecognizer:*(v1 + 8)];

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

- (void)longPressRecognizerChanged:(id)a3
{
  if ([a3 state] == 1 && !-[UIView isFirstResponder](self->_textInputView, "isFirstResponder") && !-[_UIContentViewEditingController makeTextInputFirstResponderWithInitialLayoutBlock:](self, "makeTextInputFirstResponderWithInitialLayoutBlock:", &__block_literal_global_321))
  {

    [(_UIContentViewEditingController *)self tearDownTextInputView];
  }
}

- (void)tearDownPassthroughInteraction
{
  if (a1 && *(a1 + 16))
  {
    [*(a1 + 48) removeInteraction:?];
    v2 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

- (BOOL)makeTextInputFirstResponderWithInitialLayoutBlock:(id)a3
{
  v4 = a3;
  if (self->_editingConfiguration)
  {
    if (!self->_textInputView)
    {
      [(_UIContentViewEditingController *)&self->super.isa setupTextInputView];
    }

    if (v4)
    {
      [UIView performWithoutAnimation:v4];
    }

    LODWORD(v5) = [(UITextField *)self->_textInputView becomeFirstResponder];
    if ([(_UIContentViewEditingConfiguration *)self->_editingConfiguration selectAllTextWhenEditingBegins]&& v5)
    {
      textInputView = self->_textInputView;
      v7 = [(UITextField *)textInputView beginningOfDocument];
      v8 = [(UITextField *)self->_textInputView endOfDocument];
      v5 = [(UITextField *)textInputView textRangeFromPosition:v7 toPosition:v8];
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

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if ([v10 isEqualToString:@"\t"])
  {
    [v9 resignFirstResponder];
    v11 = 0;
  }

  else
  {
    v12 = [(_UIContentViewEditingConfiguration *)self->_editingConfiguration shouldChangeHandler];
    if (v12)
    {
      v13 = [_UIContentViewEditingState alloc];
      v14 = [v9 text];
      v15 = [(_UIContentViewEditingState *)v13 initWithText:v14 proposedReplacementText:v10 proposedReplacementRange:location, length];

      v16 = (v12)[2](v12, v15);
      v11 = [(_UIContentViewEditingState *)v15 isEqual:v16];
      if ((v11 & 1) == 0)
      {
        v17 = [v16 text];
        [v9 setText:v17];
      }
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v3 = [(_UIContentViewEditingConfiguration *)self->_editingConfiguration shouldBeginHandler];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  if (self)
  {
    if (self->_passthroughInteraction)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_setupPassthroughInteraction object:self file:@"_UIContentViewEditingController.m" lineNumber:180 description:@"Attempting to set up a passthrough interaction while one already exists"];
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

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = a3;
  v5 = [(_UIContentViewEditingConfiguration *)self->_editingConfiguration shouldEndHandler];
  if (v5 && (v6 = [_UIContentViewEditingState alloc], [v4 text], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[_UIContentViewEditingState initWithText:](v6, "initWithText:", v7), v7, LODWORD(v7) = (v5)[2](v5, v8), v8, !v7))
  {
    v12 = 0;
  }

  else
  {
    v9 = [v4 text];
    v10 = [(_UIListContentTextPropertiesInternal *)self->_labelProperties text];
    v11 = [v9 isEqualToString:v10];

    v12 = 1;
    if ((v11 & 1) == 0)
    {
      self->_hasEdits = 1;
    }
  }

  return v12;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v11 = a3;
  [(_UIContentViewEditingController *)self tearDownPassthroughInteraction];
  v5 = self->_editingConfiguration;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIContentViewEditingController.m" lineNumber:265 description:{@"Text field ended editing, but we no longer have an editing configuration."}];
  }

  v6 = [(_UIContentViewEditingConfiguration *)v5 didEndHandler];
  if (v6)
  {
    v7 = [_UIContentViewEditingState alloc];
    v8 = [v11 text];
    v9 = [(_UIContentViewEditingState *)v7 initWithText:v8];

    (v6)[2](v6, v9);
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