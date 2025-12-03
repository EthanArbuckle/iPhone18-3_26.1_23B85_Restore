@interface UIKBAutoFillTestTaggerView
- (UIKBAutoFillTestTaggerView)initWithFrame:(CGRect)frame;
- (UIKBAutoFillTestTaggerViewDelegate)delegate;
- (id)_formTypes;
- (id)_textFieldTypes;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_doneBarButtonAction:(id)action;
- (void)_nextBarButtonAction:(id)action;
- (void)_performTagRequest:(id)request;
- (void)_previousBarButtonAction:(id)action;
- (void)_updateTitle;
- (void)_updateToolbarButtons;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setTagRequests:(id)requests;
@end

@implementation UIKBAutoFillTestTaggerView

- (UIKBAutoFillTestTaggerView)initWithFrame:(CGRect)frame
{
  v99[19] = *MEMORY[0x1E69E9840];
  v98.receiver = self;
  v98.super_class = UIKBAutoFillTestTaggerView;
  v3 = [(UIView *)&v98 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [UIVisualEffectView alloc];
    v14 = [UIBlurEffect effectWithStyle:501];
    v15 = [(UIVisualEffectView *)v13 initWithEffect:v14];
    visualEffectView = v4->_visualEffectView;
    v4->_visualEffectView = v15;

    [(UIView *)v4->_visualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v4->_visualEffectView];
    contentView = [(UIVisualEffectView *)v4->_visualEffectView contentView];
    v18 = objc_alloc_init(UIView);
    v19 = +[UIColor lightGrayColor];
    [(UIView *)v18 setBackgroundColor:v19];

    [(UIView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v18];
    v20 = [[UIToolbar alloc] initWithFrame:v6, v8, v10, v12];
    toolbar = v4->_toolbar;
    v4->_toolbar = v20;

    [(UIToolbar *)v4->_toolbar setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_toolbar];
    v22 = objc_alloc_init(UILabel);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v22;

    v24 = [off_1E70ECC18 systemFontOfSize:15.0 weight:*off_1E70ECD28];
    [(UILabel *)v4->_titleLabel setFont:v24];

    v25 = +[UIColor grayColor];
    [(UILabel *)v4->_titleLabel setTextColor:v25];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(UIView *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_titleLabel];
    v26 = [[UIPickerView alloc] initWithFrame:v6, v8, v10, v12];
    pickerView = v4->_pickerView;
    v4->_pickerView = v26;

    [(UIPickerView *)v4->_pickerView setDataSource:v4];
    [(UIPickerView *)v4->_pickerView setDelegate:v4];
    [(UIView *)v4->_pickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_pickerView];
    v74 = MEMORY[0x1E69977A0];
    topAnchor = [(UIView *)v18 topAnchor];
    topAnchor2 = [(UIView *)v4 topAnchor];
    v94 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v99[0] = v94;
    leadingAnchor = [(UIView *)v18 leadingAnchor];
    leadingAnchor2 = [(UIView *)v4 leadingAnchor];
    v91 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v99[1] = v91;
    trailingAnchor = [(UIView *)v18 trailingAnchor];
    trailingAnchor2 = [(UIView *)v4 trailingAnchor];
    v88 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v99[2] = v88;
    v97 = v18;
    heightAnchor = [(UIView *)v18 heightAnchor];
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v85 = [heightAnchor constraintEqualToConstant:1.0 / v28];
    v99[3] = v85;
    topAnchor3 = [(UIView *)v4->_visualEffectView topAnchor];
    bottomAnchor = [(UIView *)v18 bottomAnchor];
    v82 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v99[4] = v82;
    leadingAnchor3 = [(UIView *)v4->_visualEffectView leadingAnchor];
    leadingAnchor4 = [(UIView *)v4 leadingAnchor];
    v79 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v99[5] = v79;
    trailingAnchor3 = [(UIView *)v4->_visualEffectView trailingAnchor];
    trailingAnchor4 = [(UIView *)v4 trailingAnchor];
    v76 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v99[6] = v76;
    bottomAnchor2 = [(UIView *)v4->_visualEffectView bottomAnchor];
    bottomAnchor3 = [(UIView *)v4 bottomAnchor];
    v72 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v99[7] = v72;
    topAnchor4 = [(UIView *)v4->_toolbar topAnchor];
    topAnchor5 = [contentView topAnchor];
    v68 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v99[8] = v68;
    leadingAnchor5 = [(UIView *)v4->_toolbar leadingAnchor];
    leadingAnchor6 = [contentView leadingAnchor];
    v65 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v99[9] = v65;
    trailingAnchor5 = [(UIView *)v4->_toolbar trailingAnchor];
    trailingAnchor6 = [contentView trailingAnchor];
    v62 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v99[10] = v62;
    topAnchor6 = [(UIView *)v4->_titleLabel topAnchor];
    bottomAnchor4 = [(UIView *)v4->_toolbar bottomAnchor];
    v59 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:15.0];
    v99[11] = v59;
    centerXAnchor = [(UIView *)v4->_titleLabel centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v56 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v99[12] = v56;
    leadingAnchor7 = [(UIView *)v4->_titleLabel leadingAnchor];
    leadingAnchor8 = [contentView leadingAnchor];
    v53 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
    v99[13] = v53;
    trailingAnchor7 = [(UIView *)v4->_titleLabel trailingAnchor];
    v70 = contentView;
    trailingAnchor8 = [contentView trailingAnchor];
    v50 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-16.0];
    v99[14] = v50;
    topAnchor7 = [(UIView *)v4->_pickerView topAnchor];
    bottomAnchor5 = [(UIView *)v4->_titleLabel bottomAnchor];
    v47 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5];
    v99[15] = v47;
    leadingAnchor9 = [(UIView *)v4->_pickerView leadingAnchor];
    leadingAnchor10 = [contentView leadingAnchor];
    v30 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v99[16] = v30;
    trailingAnchor9 = [(UIView *)v4->_pickerView trailingAnchor];
    trailingAnchor10 = [contentView trailingAnchor];
    v33 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v99[17] = v33;
    bottomAnchor6 = [(UIView *)v4->_pickerView bottomAnchor];
    bottomAnchor7 = [contentView bottomAnchor];
    v36 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v99[18] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:19];
    [v74 activateConstraints:v37];

    v38 = [[UIBarButtonItem alloc] initWithTitle:@"Previous" style:0 target:v4 action:sel__previousBarButtonAction_];
    previousBarButtonItem = v4->_previousBarButtonItem;
    v4->_previousBarButtonItem = v38;

    v40 = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:0 target:v4 action:sel__nextBarButtonAction_];
    nextBarButtoItem = v4->_nextBarButtoItem;
    v4->_nextBarButtoItem = v40;

    v42 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v4 action:sel__doneBarButtonAction_];
    doneBarButtonItem = v4->_doneBarButtonItem;
    v4->_doneBarButtonItem = v42;

    v44 = v4;
  }

  return v4;
}

- (void)setTagRequests:(id)requests
{
  requestsCopy = requests;
  tagRequests = self->_tagRequests;
  if (tagRequests != requestsCopy)
  {
    v10 = requestsCopy;
    v6 = [(NSArray *)tagRequests isEqualToArray:requestsCopy];
    requestsCopy = v10;
    if (!v6)
    {
      v7 = [(NSArray *)v10 copy];
      v8 = self->_tagRequests;
      self->_tagRequests = v7;

      firstObject = [(NSArray *)self->_tagRequests firstObject];
      [(UIKBAutoFillTestTaggerView *)self _performTagRequest:firstObject];

      requestsCopy = v10;
    }
  }
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v5 = [(UIKBAutoFillTestTagRequest *)self->_currentRequest requestType:view];
  if (v5 == 1)
  {
    _textFieldTypes = [(UIKBAutoFillTestTaggerView *)self _textFieldTypes];
    goto LABEL_5;
  }

  if (!v5)
  {
    _textFieldTypes = [(UIKBAutoFillTestTaggerView *)self _formTypes];
LABEL_5:
    v7 = _textFieldTypes;
    v8 = [_textFieldTypes count];

    return v8;
  }

  return 0;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = [(UIKBAutoFillTestTagRequest *)self->_currentRequest requestType:view];
  if (v7 == 1)
  {
    _textFieldTypes = [(UIKBAutoFillTestTaggerView *)self _textFieldTypes];
    v9 = [_textFieldTypes objectAtIndexedSubscript:row];
    integerValue = [v9 integerValue];
    if (integerValue > 5)
    {
      if (integerValue <= 8)
      {
        if (integerValue == 6)
        {
          v11 = @"One Time Code";
        }

        else if (integerValue == 7)
        {
          v11 = @"Email";
        }

        else
        {
          v11 = @"First Name";
        }

        goto LABEL_42;
      }

      if (integerValue == 9)
      {
        v11 = @"Last Name";
        goto LABEL_42;
      }

      if (integerValue == 10)
      {
        v11 = @"Zip Code";
        goto LABEL_42;
      }

LABEL_29:
      if (integerValue == 10000)
      {
        v11 = @"Other";
        goto LABEL_42;
      }

LABEL_32:
      v11 = &stru_1EFB14550;
      goto LABEL_42;
    }

    if (integerValue > 2)
    {
      if (integerValue == 3)
      {
        v11 = @"Password";
      }

      else if (integerValue == 4)
      {
        v11 = @"Confirm Password";
      }

      else
      {
        v11 = @"New Password";
      }

      goto LABEL_42;
    }

    if (integerValue)
    {
      if (integerValue == 1)
      {
        v11 = @"User Name";
        goto LABEL_42;
      }

      if (integerValue != 2)
      {
        goto LABEL_32;
      }

      v11 = @"User Name (Email)";
LABEL_42:

      return v11;
    }

LABEL_31:
    v11 = @"Unspecified";
    goto LABEL_42;
  }

  if (!v7)
  {
    _textFieldTypes = [(UIKBAutoFillTestTaggerView *)self _formTypes];
    v9 = [_textFieldTypes objectAtIndexedSubscript:row];
    integerValue = [v9 integerValue];
    if (integerValue > 2)
    {
      if (integerValue <= 4)
      {
        if (integerValue == 3)
        {
          v11 = @"Sign Up";
        }

        else
        {
          v11 = @"Sign Up (Multi-step)";
        }

        goto LABEL_42;
      }

      if (integerValue == 5)
      {
        v11 = @"Change Password";
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    if (integerValue)
    {
      if (integerValue == 1)
      {
        v11 = @"Sign In";
        goto LABEL_42;
      }

      if (integerValue != 2)
      {
        goto LABEL_32;
      }

      v11 = @"Sign In (Multi-step)";
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  return &stru_1EFB14550;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![(UIKBAutoFillTestTagRequest *)self->_currentRequest requestType])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    currentRequest = self->_currentRequest;
    _formTypes = [(UIKBAutoFillTestTaggerView *)self _formTypes];
    v9 = [_formTypes objectAtIndexedSubscript:row];
    [WeakRetained taggerView:self didTagFormRequest:currentRequest withSelectedType:{objc_msgSend(v9, "integerValue")}];
    goto LABEL_7;
  }

  if ([(UIKBAutoFillTestTagRequest *)self->_currentRequest requestType]== 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = self->_currentRequest;
    _formTypes = [(UIKBAutoFillTestTaggerView *)self _textFieldTypes];
    v9 = [_formTypes objectAtIndexedSubscript:row];
    [WeakRetained taggerView:self didTagTextFieldRequest:v7 withSelectedType:{objc_msgSend(v9, "integerValue")}];
LABEL_7:
  }

LABEL_8:
}

- (id)_formTypes
{
  if (_formTypes_formTypes)
  {
    v2 = _formTypes_formTypes;
  }

  else
  {
    v2 = &unk_1EFE2C148;
    _formTypes_formTypes = &unk_1EFE2C148;
  }

  return v2;
}

- (id)_textFieldTypes
{
  if (_textFieldTypes_textFieldTypes)
  {
    v2 = _textFieldTypes_textFieldTypes;
  }

  else
  {
    v2 = &unk_1EFE2C160;
    _textFieldTypes_textFieldTypes = &unk_1EFE2C160;
  }

  return v2;
}

- (void)_performTagRequest:(id)request
{
  requestCopy = request;
  if (requestCopy && self->_currentRequest != requestCopy)
  {
    v13 = requestCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained taggerView:self willTagRequest:v13];
    }

    objc_storeStrong(&self->_currentRequest, request);
    [(UIKBAutoFillTestTaggerView *)self _updateToolbarButtons];
    [(UIKBAutoFillTestTaggerView *)self _updateTitle];
    if ([(UIKBAutoFillTestTagRequest *)v13 requestType])
    {
      if ([(UIKBAutoFillTestTagRequest *)v13 requestType]== 1 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v7 = [WeakRetained taggerView:self selectedTypeForTextFieldRequest:self->_currentRequest];
        _textFieldTypes = [(UIKBAutoFillTestTaggerView *)self _textFieldTypes];
        goto LABEL_11;
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v7 = [WeakRetained taggerView:self selectedTypeForFormRequest:self->_currentRequest];
      _textFieldTypes = [(UIKBAutoFillTestTaggerView *)self _formTypes];
LABEL_11:
      v9 = _textFieldTypes;
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      v11 = [v9 indexOfObject:v10];

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      goto LABEL_15;
    }

    v12 = 0;
LABEL_15:
    [(UIPickerView *)self->_pickerView reloadAllComponents];
    [(UIPickerView *)self->_pickerView selectRow:v12 inComponent:0 animated:1];

    requestCopy = v13;
  }
}

- (void)_updateToolbarButtons
{
  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v3 = [MEMORY[0x1E695DF70] arrayWithObjects:{self->_previousBarButtonItem, v7, 0}];
  v4 = [(NSArray *)self->_tagRequests indexOfObject:self->_currentRequest];
  v5 = [(NSArray *)self->_tagRequests count];
  v6 = 6;
  if (v4 < v5 - 1)
  {
    v6 = 5;
  }

  [v3 addObject:*(&self->super.super.super.isa + OBJC_IVAR___UIKBAutoFillTestTaggerView__visualEffectView[v6])];
  [(UIBarButtonItem *)self->_previousBarButtonItem setEnabled:v4 != 0];
  [(UIToolbar *)self->_toolbar setItems:v3 animated:1];
}

- (void)_updateTitle
{
  currentRequest = self->_currentRequest;
  if (!currentRequest)
  {
    titleLabel = self->_titleLabel;
LABEL_6:
    v6 = &stru_1EFB14550;
    goto LABEL_8;
  }

  requestType = [(UIKBAutoFillTestTagRequest *)currentRequest requestType];
  titleLabel = self->_titleLabel;
  if (requestType != 1)
  {
    if (!requestType)
    {
      v6 = @"What kind of form is this view controller?";
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v6 = @"What kind of form field is this?";
LABEL_8:

  [(UILabel *)titleLabel setText:v6];
}

- (void)_nextBarButtonAction:(id)action
{
  v4 = [(NSArray *)self->_tagRequests indexOfObject:self->_currentRequest]+ 1;
  if (v4 < [(NSArray *)self->_tagRequests count])
  {
    v5 = [(NSArray *)self->_tagRequests objectAtIndexedSubscript:v4];
    [(UIKBAutoFillTestTaggerView *)self _performTagRequest:v5];
  }
}

- (void)_previousBarButtonAction:(id)action
{
  v4 = [(NSArray *)self->_tagRequests objectAtIndexedSubscript:[(NSArray *)self->_tagRequests indexOfObject:self->_currentRequest]- 1];
  [(UIKBAutoFillTestTaggerView *)self _performTagRequest:v4];
}

- (void)_doneBarButtonAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained taggerViewDidFinish:self];
  }
}

- (UIKBAutoFillTestTaggerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end