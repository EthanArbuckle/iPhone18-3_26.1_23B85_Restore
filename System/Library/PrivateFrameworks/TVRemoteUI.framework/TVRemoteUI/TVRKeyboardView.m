@interface TVRKeyboardView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TVRKeyboardView)initWithStyleProvider:(id)a3;
- (TVRKeyboardViewDelegate)delegate;
- (void)_cancelButton:(id)a3;
- (void)_setupPadding;
- (void)_setupSearchIcon;
- (void)_textDidChange:(id)a3;
- (void)handleTextActionPayload:(id)a3;
- (void)layoutSubviews;
- (void)setAttributes:(id)a3;
- (void)setText:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation TVRKeyboardView

- (TVRKeyboardView)initWithStyleProvider:(id)a3
{
  v5 = a3;
  v40.receiver = self;
  v40.super_class = TVRKeyboardView;
  v6 = [(TVRKeyboardView *)&v40 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleProvider, a3);
    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView = v7->_contentView;
    v7->_contentView = v8;

    [(UIView *)v7->_contentView setBackgroundColor:0];
    [(UIView *)v7->_contentView tvrui_setGlassGroup];
    [(TVRKeyboardView *)v7 addSubview:v7->_contentView];
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    textFieldWrapper = v7->_textFieldWrapper;
    v7->_textFieldWrapper = v10;

    [(UIView *)v7->_textFieldWrapper tvrui_setFlexibleGlassBackground];
    [(UIView *)v7->_textFieldWrapper tvrui_makeCapsuleCorners];
    [(UIView *)v7->_textFieldWrapper setBackgroundColor:0];
    [(UIView *)v7->_textFieldWrapper setClipsToBounds:1];
    v12 = objc_alloc_init(_TVRTextField);
    textField = v7->_textField;
    v7->_textField = v12;

    v14 = v7->_textField;
    v15 = [(TVRUIStyleProvider *)v7->_styleProvider primaryTextAndGlyphColor];
    [(_TVRTextField *)v14 setTextColor:v15];

    [(_TVRTextField *)v7->_textField setDelegate:v7];
    v16 = v7->_textField;
    v17 = [(TVRUIStyleProvider *)v7->_styleProvider primaryTextAndGlyphColor];
    [(_TVRTextField *)v16 setInsertionPointColor:v17];

    v18 = *MEMORY[0x277CDA138];
    v19 = [(_TVRTextField *)v7->_textField layer];
    [v19 setCornerCurve:v18];

    v20 = [(_TVRTextField *)v7->_textField layer];
    [v20 setCornerRadius:22.0];

    v21 = [(_TVRTextField *)v7->_textField layer];
    [v21 setMaskedCorners:15];

    [(_TVRTextField *)v7->_textField setKeyboardAppearance:10];
    [(_TVRTextField *)v7->_textField addTarget:v7 action:sel__textDidChange_ forControlEvents:0x20000];
    [(_TVRTextField *)v7->_textField setClearButtonMode:1];
    [(_TVRTextField *)v7->_textField setAutocorrectionType:1];
    [(_TVRTextField *)v7->_textField setAcceptsDictationSearchResults:1];
    [(_TVRTextField *)v7->_textField setAdjustsFontForContentSizeCategory:1];
    v22 = v7->_textField;
    v23 = *MEMORY[0x277D76918];
    v24 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(_TVRTextField *)v22 setFont:v24];

    [(_TVRTextField *)v7->_textField _setForcesClearButtonHighContrastAppearance:1];
    [(_TVRTextField *)v7->_textField setClipsToBounds:1];
    [(UIView *)v7->_textFieldWrapper addSubview:v7->_textField];
    [(UIView *)v7->_contentView addSubview:v7->_textFieldWrapper];
    v25 = +[TVRUIDeviceInfo currentDeviceInfo];
    LOBYTE(v24) = [v25 isPad];

    if ((v24 & 1) == 0)
    {
      v26 = [MEMORY[0x277D75230] plainButtonConfiguration];
      v27 = MEMORY[0x277D755D0];
      v28 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v23 weight:*MEMORY[0x277D74410]];
      v29 = [v27 configurationWithFont:v28 scale:3];

      v30 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v29];
      [v26 setImage:v30];

      v31 = [MEMORY[0x277D75220] buttonWithConfiguration:v26 primaryAction:0];
      dismissButton = v7->_dismissButton;
      v7->_dismissButton = v31;

      [(UIButton *)v7->_dismissButton tvrui_makeCapsuleCorners];
      [(UIButton *)v7->_dismissButton _setMonochromaticTreatment:2];
      [(UIButton *)v7->_dismissButton _setEnableMonochromaticTreatment:1];
      [(UIButton *)v7->_dismissButton addTarget:v7 action:sel__cancelButton_ forControlEvents:64];
      [(UIButton *)v7->_dismissButton tvrui_setFlexibleGlassBackground];
      [(UIView *)v7->_contentView addSubview:v7->_dismissButton];
    }

    v33 = [MEMORY[0x277D759A0] mainScreen];
    [v33 bounds];
    [(TVRKeyboardView *)v7 sizeThatFits:v34, 1.79769313e308];

    [(TVRKeyboardView *)v7 bounds];
    v36 = v35;
    [(TVRKeyboardView *)v7 bounds];
    [(TVRKeyboardView *)v7 setBounds:v36];
    v37 = objc_alloc_init(MEMORY[0x277D46178]);
    currentSourceSession = v7->_currentSourceSession;
    v7->_currentSourceSession = v37;

    [(RTIInputSystemSourceSession *)v7->_currentSourceSession setPayloadDelegate:v7];
    [(_TVRTextField *)v7->_textField set_rtiSourceSession:v7->_currentSourceSession];
    [(TVRKeyboardView *)v7 _setupPadding];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  Width = CGRectGetWidth(v8);

  v5 = 52.0;
  v6 = Width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = TVRKeyboardView;
  [(TVRKeyboardView *)&v21 layoutSubviews];
  [(TVRKeyboardView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TVRKeyboardView *)self bounds];
  [(UIView *)self->_contentView setFrame:?];
  [(UIView *)self->_contentView frame];
  Width = CGRectGetWidth(v22);
  [(UIView *)self->_contentView frame];
  Height = CGRectGetHeight(v23);
  v13 = +[TVRUIDeviceInfo currentDeviceInfo];
  v14 = [v13 isPad];

  if (v14)
  {
    v15 = Width * 0.8;
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    MinX = CGRectGetMidX(v24) + v15 * -0.5;
  }

  else
  {
    [(UIButton *)self->_dismissButton sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v18 = fmax(v10, v17);
    [(TVRKeyboardView *)self safeAreaInsets];
    [(UIButton *)self->_dismissButton setFrame:Width - (v18 + v19), (Height - v10) * 0.5, v18, v10];
    [(UIButton *)self->_dismissButton frame];
    v15 = CGRectGetMinX(v25) + -8.0;
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    MinX = CGRectGetMinX(v26);
  }

  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  [(UIView *)self->_textFieldWrapper setFrame:MinX, CGRectGetMinY(v27), v15, Height];
  [(UIView *)self->_textFieldWrapper _setContinuousCornerRadius:v10 * 0.5];
  textField = self->_textField;
  [(UIView *)self->_textFieldWrapper frame];
  [(_TVRTextField *)textField setFrame:8.0, 4.0, CGRectGetWidth(v28) + -16.0, 44.0];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    textField = self->_textField;
    v6 = [(_TVRTextField *)textField canBecomeFirstResponder];
    v7 = [(_TVRTextField *)self->_textField isFirstResponder];
    v8 = 136315906;
    v9 = "[TVRKeyboardView textFieldDidBeginEditing:]";
    v10 = 2112;
    v11 = textField;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s %@ canBecomeFirstResponder, %d, isFirstresponder:%d", &v8, 0x22u);
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[TVRKeyboardView textFieldDidEndEditing:]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }
}

- (BOOL)becomeFirstResponder
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(_TVRTextField *)self->_textField becomeFirstResponder];
  v4 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    textField = self->_textField;
    v6 = [(_TVRTextField *)textField canBecomeFirstResponder];
    v7 = [(_TVRTextField *)self->_textField isFirstResponder];
    v9 = 136316162;
    v10 = "[TVRKeyboardView becomeFirstResponder]";
    v11 = 2112;
    v12 = textField;
    v13 = 1024;
    v14 = v3;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s %@ result:%d canBecomeFirstResponder, %d, isFirstresponder:%d", &v9, 0x28u);
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v20 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = TVRKeyboardView;
  [(TVRKeyboardView *)&v9 resignFirstResponder];
  v3 = [(_TVRTextField *)self->_textField resignFirstResponder];
  v4 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    textField = self->_textField;
    v6 = [(_TVRTextField *)textField canBecomeFirstResponder];
    v7 = [(_TVRTextField *)self->_textField isFirstResponder];
    *buf = 136316162;
    v11 = "[TVRKeyboardView resignFirstResponder]";
    v12 = 2112;
    v13 = textField;
    v14 = 1024;
    v15 = v3;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s %@ result:%d canBecomeFirstResponder, %d, isFirstresponder:%d", buf, 0x28u);
  }

  return v3;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained keyboardViewDidHitReturnKey:self];

  return 1;
}

- (void)_setupSearchIcon
{
  v30[8] = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];
  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v29];
  [v3 setContentMode:1];
  v4 = [(TVRUIStyleProvider *)self->_styleProvider primaryTextAndGlyphColor];
  [v3 setTintColor:v4];

  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v5 addSubview:v3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = MEMORY[0x277CCAAD0];
  v27 = [v3 heightAnchor];
  v26 = [v27 constraintEqualToConstant:22.0];
  v30[0] = v26;
  v25 = [v3 widthAnchor];
  v24 = [v25 constraintEqualToConstant:22.0];
  v30[1] = v24;
  v23 = [v3 centerXAnchor];
  v22 = [v5 centerXAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v30[2] = v21;
  v18 = [v3 centerYAnchor];
  v17 = [v5 centerYAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v30[3] = v16;
  v15 = [v5 heightAnchor];
  v7 = [v15 constraintEqualToConstant:44.0];
  v30[4] = v7;
  v8 = [v5 widthAnchor];
  v9 = [v8 constraintEqualToConstant:44.0];
  v30[5] = v9;
  v20 = v6;
  v10 = [v6 heightAnchor];
  v11 = [v10 constraintEqualToConstant:44.0];
  v30[6] = v11;
  v12 = [v6 widthAnchor];
  v13 = [v12 constraintEqualToConstant:10.0];
  v30[7] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:8];
  [v19 activateConstraints:v14];

  [(_TVRTextField *)self->_textField setLeftViewMode:3];
  [(_TVRTextField *)self->_textField setLeftView:v5];
  [(_TVRTextField *)self->_textField setRightViewMode:2];
  [(_TVRTextField *)self->_textField setRightView:v20];
}

- (void)_setupPadding
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = MEMORY[0x277CCAAD0];
  v14 = [v3 heightAnchor];
  v13 = [v14 constraintEqualToConstant:44.0];
  v15[0] = v13;
  v5 = [v3 widthAnchor];
  v6 = [v5 constraintEqualToConstant:10.0];
  v15[1] = v6;
  v7 = [v4 heightAnchor];
  v8 = [v7 constraintEqualToConstant:44.0];
  v15[2] = v8;
  v9 = [v4 widthAnchor];
  v10 = [v9 constraintEqualToConstant:10.0];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  [v12 activateConstraints:v11];

  [(_TVRTextField *)self->_textField setLeftViewMode:3];
  [(_TVRTextField *)self->_textField setRightViewMode:2];
  [(_TVRTextField *)self->_textField setLeftView:v3];
  [(_TVRTextField *)self->_textField setRightView:v4];
}

- (void)setText:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[TVRKeyboardView setText:]";
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s text:%{public}@", &v11, 0x16u);
  }

  [(_TVRTextField *)self->_textField setText:v4];
  v6 = [(_TVRTextField *)self->_textField markedTextRange];
  v7 = v6;
  if (v6 && ([v6 isEmpty] & 1) == 0)
  {
    v10 = _TVRUIKeyboardLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "marked range: %{public}@", &v11, 0xCu);
    }

    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 keyboardView:self didUpdateText:v4];
LABEL_9:
  }
}

- (void)setAttributes:(id)a3
{
  v5 = a3;
  if (self->_attributes != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_attributes, a3);
    [(TVRCKeyboardAttributes *)v6 applyToTextField:self->_textField];
    v5 = v6;
  }
}

- (void)handleTextActionPayload:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 data];
    v17 = 136315650;
    v18 = "[TVRKeyboardView handleTextActionPayload:]";
    v19 = 2114;
    v20 = v4;
    v21 = 2048;
    v22 = [v6 length];
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s payload: %{public}@, data length: %lu", &v17, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 documentState];
    v8 = [v7 documentState];
    v9 = [v8 contextBeforeInput];

    v10 = _TVRUIKeyboardLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 length];
      v12 = [(TVRKeyboardView *)self text];
      v13 = [v12 length];
      v17 = 134218240;
      v18 = v11;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "payload string length: %lu textField.text length: %lu", &v17, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 keyboardView:self generatedTextInputPayload:v4];
  }
}

- (void)_cancelButton:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 keyboardViewDidCancel:self];
  }
}

- (void)_textDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 text];
    v13 = 136315394;
    v14 = "[TVRKeyboardView _textDidChange:]";
    v15 = 2048;
    v16 = [v6 length];
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s text length: %lu", &v13, 0x16u);
  }

  v7 = [v4 markedTextRange];
  v8 = v7;
  if (!v7 || [v7 isEmpty])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = [v4 text];
      [v11 keyboardView:self didUpdateText:v12];
    }
  }
}

- (TVRKeyboardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end