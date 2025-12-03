@interface TVRKeyboardView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TVRKeyboardView)initWithStyleProvider:(id)provider;
- (TVRKeyboardViewDelegate)delegate;
- (void)_cancelButton:(id)button;
- (void)_setupPadding;
- (void)_setupSearchIcon;
- (void)_textDidChange:(id)change;
- (void)handleTextActionPayload:(id)payload;
- (void)layoutSubviews;
- (void)setAttributes:(id)attributes;
- (void)setText:(id)text;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation TVRKeyboardView

- (TVRKeyboardView)initWithStyleProvider:(id)provider
{
  providerCopy = provider;
  v40.receiver = self;
  v40.super_class = TVRKeyboardView;
  v6 = [(TVRKeyboardView *)&v40 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleProvider, provider);
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
    primaryTextAndGlyphColor = [(TVRUIStyleProvider *)v7->_styleProvider primaryTextAndGlyphColor];
    [(_TVRTextField *)v14 setTextColor:primaryTextAndGlyphColor];

    [(_TVRTextField *)v7->_textField setDelegate:v7];
    v16 = v7->_textField;
    primaryTextAndGlyphColor2 = [(TVRUIStyleProvider *)v7->_styleProvider primaryTextAndGlyphColor];
    [(_TVRTextField *)v16 setInsertionPointColor:primaryTextAndGlyphColor2];

    v18 = *MEMORY[0x277CDA138];
    layer = [(_TVRTextField *)v7->_textField layer];
    [layer setCornerCurve:v18];

    layer2 = [(_TVRTextField *)v7->_textField layer];
    [layer2 setCornerRadius:22.0];

    layer3 = [(_TVRTextField *)v7->_textField layer];
    [layer3 setMaskedCorners:15];

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
      plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
      v27 = MEMORY[0x277D755D0];
      v28 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v23 weight:*MEMORY[0x277D74410]];
      v29 = [v27 configurationWithFont:v28 scale:3];

      v30 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v29];
      [plainButtonConfiguration setImage:v30];

      v31 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
      dismissButton = v7->_dismissButton;
      v7->_dismissButton = v31;

      [(UIButton *)v7->_dismissButton tvrui_makeCapsuleCorners];
      [(UIButton *)v7->_dismissButton _setMonochromaticTreatment:2];
      [(UIButton *)v7->_dismissButton _setEnableMonochromaticTreatment:1];
      [(UIButton *)v7->_dismissButton addTarget:v7 action:sel__cancelButton_ forControlEvents:64];
      [(UIButton *)v7->_dismissButton tvrui_setFlexibleGlassBackground];
      [(UIView *)v7->_contentView addSubview:v7->_dismissButton];
    }

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
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
  isPad = [v13 isPad];

  if (isPad)
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

- (void)textFieldDidBeginEditing:(id)editing
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    textField = self->_textField;
    canBecomeFirstResponder = [(_TVRTextField *)textField canBecomeFirstResponder];
    isFirstResponder = [(_TVRTextField *)self->_textField isFirstResponder];
    v8 = 136315906;
    v9 = "[TVRKeyboardView textFieldDidBeginEditing:]";
    v10 = 2112;
    v11 = textField;
    v12 = 1024;
    v13 = canBecomeFirstResponder;
    v14 = 1024;
    v15 = isFirstResponder;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s %@ canBecomeFirstResponder, %d, isFirstresponder:%d", &v8, 0x22u);
  }
}

- (void)textFieldDidEndEditing:(id)editing
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
  becomeFirstResponder = [(_TVRTextField *)self->_textField becomeFirstResponder];
  v4 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    textField = self->_textField;
    canBecomeFirstResponder = [(_TVRTextField *)textField canBecomeFirstResponder];
    isFirstResponder = [(_TVRTextField *)self->_textField isFirstResponder];
    v9 = 136316162;
    v10 = "[TVRKeyboardView becomeFirstResponder]";
    v11 = 2112;
    v12 = textField;
    v13 = 1024;
    v14 = becomeFirstResponder;
    v15 = 1024;
    v16 = canBecomeFirstResponder;
    v17 = 1024;
    v18 = isFirstResponder;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s %@ result:%d canBecomeFirstResponder, %d, isFirstresponder:%d", &v9, 0x28u);
  }

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v20 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = TVRKeyboardView;
  [(TVRKeyboardView *)&v9 resignFirstResponder];
  resignFirstResponder = [(_TVRTextField *)self->_textField resignFirstResponder];
  v4 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    textField = self->_textField;
    canBecomeFirstResponder = [(_TVRTextField *)textField canBecomeFirstResponder];
    isFirstResponder = [(_TVRTextField *)self->_textField isFirstResponder];
    *buf = 136316162;
    v11 = "[TVRKeyboardView resignFirstResponder]";
    v12 = 2112;
    v13 = textField;
    v14 = 1024;
    v15 = resignFirstResponder;
    v16 = 1024;
    v17 = canBecomeFirstResponder;
    v18 = 1024;
    v19 = isFirstResponder;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s %@ result:%d canBecomeFirstResponder, %d, isFirstresponder:%d", buf, 0x28u);
  }

  return resignFirstResponder;
}

- (BOOL)textFieldShouldReturn:(id)return
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
  primaryTextAndGlyphColor = [(TVRUIStyleProvider *)self->_styleProvider primaryTextAndGlyphColor];
  [v3 setTintColor:primaryTextAndGlyphColor];

  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v5 addSubview:v3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = MEMORY[0x277CCAAD0];
  heightAnchor = [v3 heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:22.0];
  v30[0] = v26;
  widthAnchor = [v3 widthAnchor];
  v24 = [widthAnchor constraintEqualToConstant:22.0];
  v30[1] = v24;
  centerXAnchor = [v3 centerXAnchor];
  centerXAnchor2 = [v5 centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v30[2] = v21;
  centerYAnchor = [v3 centerYAnchor];
  centerYAnchor2 = [v5 centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v30[3] = v16;
  heightAnchor2 = [v5 heightAnchor];
  v7 = [heightAnchor2 constraintEqualToConstant:44.0];
  v30[4] = v7;
  widthAnchor2 = [v5 widthAnchor];
  v9 = [widthAnchor2 constraintEqualToConstant:44.0];
  v30[5] = v9;
  v20 = v6;
  heightAnchor3 = [v6 heightAnchor];
  v11 = [heightAnchor3 constraintEqualToConstant:44.0];
  v30[6] = v11;
  widthAnchor3 = [v6 widthAnchor];
  v13 = [widthAnchor3 constraintEqualToConstant:10.0];
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
  heightAnchor = [v3 heightAnchor];
  v13 = [heightAnchor constraintEqualToConstant:44.0];
  v15[0] = v13;
  widthAnchor = [v3 widthAnchor];
  v6 = [widthAnchor constraintEqualToConstant:10.0];
  v15[1] = v6;
  heightAnchor2 = [v4 heightAnchor];
  v8 = [heightAnchor2 constraintEqualToConstant:44.0];
  v15[2] = v8;
  widthAnchor2 = [v4 widthAnchor];
  v10 = [widthAnchor2 constraintEqualToConstant:10.0];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  [v12 activateConstraints:v11];

  [(_TVRTextField *)self->_textField setLeftViewMode:3];
  [(_TVRTextField *)self->_textField setRightViewMode:2];
  [(_TVRTextField *)self->_textField setLeftView:v3];
  [(_TVRTextField *)self->_textField setRightView:v4];
}

- (void)setText:(id)text
{
  v15 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v5 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[TVRKeyboardView setText:]";
    v13 = 2114;
    v14 = textCopy;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s text:%{public}@", &v11, 0x16u);
  }

  [(_TVRTextField *)self->_textField setText:textCopy];
  markedTextRange = [(_TVRTextField *)self->_textField markedTextRange];
  v7 = markedTextRange;
  if (markedTextRange && ([markedTextRange isEmpty] & 1) == 0)
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
    [v10 keyboardView:self didUpdateText:textCopy];
LABEL_9:
  }
}

- (void)setAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_attributes != attributesCopy)
  {
    v6 = attributesCopy;
    objc_storeStrong(&self->_attributes, attributes);
    [(TVRCKeyboardAttributes *)v6 applyToTextField:self->_textField];
    attributesCopy = v6;
  }
}

- (void)handleTextActionPayload:(id)payload
{
  v23 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    data = [payloadCopy data];
    v17 = 136315650;
    v18 = "[TVRKeyboardView handleTextActionPayload:]";
    v19 = 2114;
    v20 = payloadCopy;
    v21 = 2048;
    v22 = [data length];
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s payload: %{public}@, data length: %lu", &v17, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    documentState = [payloadCopy documentState];
    v7DocumentState = [documentState documentState];
    contextBeforeInput = [v7DocumentState contextBeforeInput];

    v10 = _TVRUIKeyboardLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [contextBeforeInput length];
      text = [(TVRKeyboardView *)self text];
      v13 = [text length];
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
    [v16 keyboardView:self generatedTextInputPayload:payloadCopy];
  }
}

- (void)_cancelButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 keyboardViewDidCancel:self];
  }
}

- (void)_textDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    text = [changeCopy text];
    v13 = 136315394;
    v14 = "[TVRKeyboardView _textDidChange:]";
    v15 = 2048;
    v16 = [text length];
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s text length: %lu", &v13, 0x16u);
  }

  markedTextRange = [changeCopy markedTextRange];
  v8 = markedTextRange;
  if (!markedTextRange || [markedTextRange isEmpty])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      text2 = [changeCopy text];
      [v11 keyboardView:self didUpdateText:text2];
    }
  }
}

- (TVRKeyboardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end