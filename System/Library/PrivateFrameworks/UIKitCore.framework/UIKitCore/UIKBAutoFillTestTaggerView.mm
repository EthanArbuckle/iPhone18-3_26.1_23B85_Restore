@interface UIKBAutoFillTestTaggerView
- (UIKBAutoFillTestTaggerView)initWithFrame:(CGRect)a3;
- (UIKBAutoFillTestTaggerViewDelegate)delegate;
- (id)_formTypes;
- (id)_textFieldTypes;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_doneBarButtonAction:(id)a3;
- (void)_nextBarButtonAction:(id)a3;
- (void)_performTagRequest:(id)a3;
- (void)_previousBarButtonAction:(id)a3;
- (void)_updateTitle;
- (void)_updateToolbarButtons;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setTagRequests:(id)a3;
@end

@implementation UIKBAutoFillTestTaggerView

- (UIKBAutoFillTestTaggerView)initWithFrame:(CGRect)a3
{
  v99[19] = *MEMORY[0x1E69E9840];
  v98.receiver = self;
  v98.super_class = UIKBAutoFillTestTaggerView;
  v3 = [(UIView *)&v98 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v17 = [(UIVisualEffectView *)v4->_visualEffectView contentView];
    v18 = objc_alloc_init(UIView);
    v19 = +[UIColor lightGrayColor];
    [(UIView *)v18 setBackgroundColor:v19];

    [(UIView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:v18];
    v20 = [[UIToolbar alloc] initWithFrame:v6, v8, v10, v12];
    toolbar = v4->_toolbar;
    v4->_toolbar = v20;

    [(UIToolbar *)v4->_toolbar setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 addSubview:v4->_toolbar];
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
    [v17 addSubview:v4->_titleLabel];
    v26 = [[UIPickerView alloc] initWithFrame:v6, v8, v10, v12];
    pickerView = v4->_pickerView;
    v4->_pickerView = v26;

    [(UIPickerView *)v4->_pickerView setDataSource:v4];
    [(UIPickerView *)v4->_pickerView setDelegate:v4];
    [(UIView *)v4->_pickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 addSubview:v4->_pickerView];
    v74 = MEMORY[0x1E69977A0];
    v96 = [(UIView *)v18 topAnchor];
    v95 = [(UIView *)v4 topAnchor];
    v94 = [v96 constraintEqualToAnchor:v95];
    v99[0] = v94;
    v93 = [(UIView *)v18 leadingAnchor];
    v92 = [(UIView *)v4 leadingAnchor];
    v91 = [v93 constraintEqualToAnchor:v92];
    v99[1] = v91;
    v90 = [(UIView *)v18 trailingAnchor];
    v89 = [(UIView *)v4 trailingAnchor];
    v88 = [v90 constraintEqualToAnchor:v89];
    v99[2] = v88;
    v97 = v18;
    v86 = [(UIView *)v18 heightAnchor];
    v87 = [objc_opt_self() mainScreen];
    [v87 scale];
    v85 = [v86 constraintEqualToConstant:1.0 / v28];
    v99[3] = v85;
    v84 = [(UIView *)v4->_visualEffectView topAnchor];
    v83 = [(UIView *)v18 bottomAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v99[4] = v82;
    v81 = [(UIView *)v4->_visualEffectView leadingAnchor];
    v80 = [(UIView *)v4 leadingAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v99[5] = v79;
    v78 = [(UIView *)v4->_visualEffectView trailingAnchor];
    v77 = [(UIView *)v4 trailingAnchor];
    v76 = [v78 constraintEqualToAnchor:v77];
    v99[6] = v76;
    v75 = [(UIView *)v4->_visualEffectView bottomAnchor];
    v73 = [(UIView *)v4 bottomAnchor];
    v72 = [v75 constraintEqualToAnchor:v73];
    v99[7] = v72;
    v71 = [(UIView *)v4->_toolbar topAnchor];
    v69 = [v17 topAnchor];
    v68 = [v71 constraintEqualToAnchor:v69];
    v99[8] = v68;
    v67 = [(UIView *)v4->_toolbar leadingAnchor];
    v66 = [v17 leadingAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v99[9] = v65;
    v64 = [(UIView *)v4->_toolbar trailingAnchor];
    v63 = [v17 trailingAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v99[10] = v62;
    v61 = [(UIView *)v4->_titleLabel topAnchor];
    v60 = [(UIView *)v4->_toolbar bottomAnchor];
    v59 = [v61 constraintEqualToAnchor:v60 constant:15.0];
    v99[11] = v59;
    v58 = [(UIView *)v4->_titleLabel centerXAnchor];
    v57 = [v17 centerXAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v99[12] = v56;
    v55 = [(UIView *)v4->_titleLabel leadingAnchor];
    v54 = [v17 leadingAnchor];
    v53 = [v55 constraintEqualToAnchor:v54 constant:16.0];
    v99[13] = v53;
    v52 = [(UIView *)v4->_titleLabel trailingAnchor];
    v70 = v17;
    v51 = [v17 trailingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51 constant:-16.0];
    v99[14] = v50;
    v49 = [(UIView *)v4->_pickerView topAnchor];
    v48 = [(UIView *)v4->_titleLabel bottomAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v99[15] = v47;
    v46 = [(UIView *)v4->_pickerView leadingAnchor];
    v29 = [v17 leadingAnchor];
    v30 = [v46 constraintEqualToAnchor:v29];
    v99[16] = v30;
    v31 = [(UIView *)v4->_pickerView trailingAnchor];
    v32 = [v17 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v99[17] = v33;
    v34 = [(UIView *)v4->_pickerView bottomAnchor];
    v35 = [v17 bottomAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
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

- (void)setTagRequests:(id)a3
{
  v4 = a3;
  tagRequests = self->_tagRequests;
  if (tagRequests != v4)
  {
    v10 = v4;
    v6 = [(NSArray *)tagRequests isEqualToArray:v4];
    v4 = v10;
    if (!v6)
    {
      v7 = [(NSArray *)v10 copy];
      v8 = self->_tagRequests;
      self->_tagRequests = v7;

      v9 = [(NSArray *)self->_tagRequests firstObject];
      [(UIKBAutoFillTestTaggerView *)self _performTagRequest:v9];

      v4 = v10;
    }
  }
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = [(UIKBAutoFillTestTagRequest *)self->_currentRequest requestType:a3];
  if (v5 == 1)
  {
    v6 = [(UIKBAutoFillTestTaggerView *)self _textFieldTypes];
    goto LABEL_5;
  }

  if (!v5)
  {
    v6 = [(UIKBAutoFillTestTaggerView *)self _formTypes];
LABEL_5:
    v7 = v6;
    v8 = [v6 count];

    return v8;
  }

  return 0;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = [(UIKBAutoFillTestTagRequest *)self->_currentRequest requestType:a3];
  if (v7 == 1)
  {
    v8 = [(UIKBAutoFillTestTaggerView *)self _textFieldTypes];
    v9 = [v8 objectAtIndexedSubscript:a4];
    v10 = [v9 integerValue];
    if (v10 > 5)
    {
      if (v10 <= 8)
      {
        if (v10 == 6)
        {
          v11 = @"One Time Code";
        }

        else if (v10 == 7)
        {
          v11 = @"Email";
        }

        else
        {
          v11 = @"First Name";
        }

        goto LABEL_42;
      }

      if (v10 == 9)
      {
        v11 = @"Last Name";
        goto LABEL_42;
      }

      if (v10 == 10)
      {
        v11 = @"Zip Code";
        goto LABEL_42;
      }

LABEL_29:
      if (v10 == 10000)
      {
        v11 = @"Other";
        goto LABEL_42;
      }

LABEL_32:
      v11 = &stru_1EFB14550;
      goto LABEL_42;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v11 = @"Password";
      }

      else if (v10 == 4)
      {
        v11 = @"Confirm Password";
      }

      else
      {
        v11 = @"New Password";
      }

      goto LABEL_42;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        v11 = @"User Name";
        goto LABEL_42;
      }

      if (v10 != 2)
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
    v8 = [(UIKBAutoFillTestTaggerView *)self _formTypes];
    v9 = [v8 objectAtIndexedSubscript:a4];
    v10 = [v9 integerValue];
    if (v10 > 2)
    {
      if (v10 <= 4)
      {
        if (v10 == 3)
        {
          v11 = @"Sign Up";
        }

        else
        {
          v11 = @"Sign Up (Multi-step)";
        }

        goto LABEL_42;
      }

      if (v10 == 5)
      {
        v11 = @"Change Password";
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        v11 = @"Sign In";
        goto LABEL_42;
      }

      if (v10 != 2)
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

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![(UIKBAutoFillTestTagRequest *)self->_currentRequest requestType])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    currentRequest = self->_currentRequest;
    v8 = [(UIKBAutoFillTestTaggerView *)self _formTypes];
    v9 = [v8 objectAtIndexedSubscript:a4];
    [WeakRetained taggerView:self didTagFormRequest:currentRequest withSelectedType:{objc_msgSend(v9, "integerValue")}];
    goto LABEL_7;
  }

  if ([(UIKBAutoFillTestTagRequest *)self->_currentRequest requestType]== 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = self->_currentRequest;
    v8 = [(UIKBAutoFillTestTaggerView *)self _textFieldTypes];
    v9 = [v8 objectAtIndexedSubscript:a4];
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

- (void)_performTagRequest:(id)a3
{
  v5 = a3;
  if (v5 && self->_currentRequest != v5)
  {
    v13 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained taggerView:self willTagRequest:v13];
    }

    objc_storeStrong(&self->_currentRequest, a3);
    [(UIKBAutoFillTestTaggerView *)self _updateToolbarButtons];
    [(UIKBAutoFillTestTaggerView *)self _updateTitle];
    if ([(UIKBAutoFillTestTagRequest *)v13 requestType])
    {
      if ([(UIKBAutoFillTestTagRequest *)v13 requestType]== 1 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v7 = [WeakRetained taggerView:self selectedTypeForTextFieldRequest:self->_currentRequest];
        v8 = [(UIKBAutoFillTestTaggerView *)self _textFieldTypes];
        goto LABEL_11;
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v7 = [WeakRetained taggerView:self selectedTypeForFormRequest:self->_currentRequest];
      v8 = [(UIKBAutoFillTestTaggerView *)self _formTypes];
LABEL_11:
      v9 = v8;
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

    v5 = v13;
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

  v4 = [(UIKBAutoFillTestTagRequest *)currentRequest requestType];
  titleLabel = self->_titleLabel;
  if (v4 != 1)
  {
    if (!v4)
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

- (void)_nextBarButtonAction:(id)a3
{
  v4 = [(NSArray *)self->_tagRequests indexOfObject:self->_currentRequest]+ 1;
  if (v4 < [(NSArray *)self->_tagRequests count])
  {
    v5 = [(NSArray *)self->_tagRequests objectAtIndexedSubscript:v4];
    [(UIKBAutoFillTestTaggerView *)self _performTagRequest:v5];
  }
}

- (void)_previousBarButtonAction:(id)a3
{
  v4 = [(NSArray *)self->_tagRequests objectAtIndexedSubscript:[(NSArray *)self->_tagRequests indexOfObject:self->_currentRequest]- 1];
  [(UIKBAutoFillTestTaggerView *)self _performTagRequest:v4];
}

- (void)_doneBarButtonAction:(id)a3
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