@interface NCNotificationTextInputView
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (CGSize)intrinsicContentSize;
- (NCNotificationTextInputView)initWithFrame:(CGRect)a3;
- (NCNotificationTextInputViewDelegate)delegate;
- (double)_maximumTextViewHeight;
- (double)_pencilModeHeight;
- (double)_textViewHeight;
- (double)_textViewWidth;
- (void)_buttonPressed:(id)a3;
- (void)_updateForTextChange;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setAction:(id)a3;
- (void)setButtonTitle:(id)a3;
- (void)setInputContextHistory:(id)a3;
- (void)setPlaceholder:(id)a3;
@end

@implementation NCNotificationTextInputView

- (NCNotificationTextInputView)initWithFrame:(CGRect)a3
{
  v33.receiver = self;
  v33.super_class = NCNotificationTextInputView;
  v3 = [(NCNotificationTextInputView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NCNotificationTextInputView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc(MEMORY[0x277D75C40]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    textView = v4->_textView;
    v4->_textView = v10;

    [(UITextView *)v4->_textView setAcceptsEmoji:1];
    [(UITextView *)v4->_textView setAutoresizingMask:18];
    [(UITextView *)v4->_textView setDelegate:v4];
    v12 = v4->_textView;
    v13 = *MEMORY[0x277D76918];
    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextView *)v12 setFont:v14];

    [(UITextView *)v4->_textView setTextContainerInset:8.0, 0.0, 8.0, 0.0];
    [(NCNotificationTextInputView *)v4 addSubview:v4->_textView];
    v15 = [MEMORY[0x277D75220] buttonWithType:1];
    button = v4->_button;
    v4->_button = v15;

    LODWORD(v17) = 1148846080;
    [(UIButton *)v4->_button setContentHuggingPriority:0 forAxis:v17];
    v18 = [(UIButton *)v4->_button titleLabel];
    v19 = [MEMORY[0x277D74300] bsui_preferredFontForTextStyle:v13 hiFontStyle:4];
    [v18 setFont:v19];

    v20 = v4->_button;
    v21 = NCUserNotificationsUIKitFrameworkBundle();
    v22 = [v21 localizedStringForKey:@"QUICK_REPLY_SEND_BUTTON_TITLE" value:&stru_282FE84F8 table:0];
    [(UIButton *)v20 setTitle:v22 forState:0];

    [(UIButton *)v4->_button addTarget:v4 action:sel__buttonPressed_ forControlEvents:64];
    v23 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v6, v7, v8, v9}];
    horizontalStack = v4->_horizontalStack;
    v4->_horizontalStack = v23;

    [(UIStackView *)v4->_horizontalStack addArrangedSubview:v4->_textView];
    [(UIStackView *)v4->_horizontalStack addArrangedSubview:v4->_button];
    [(UIStackView *)v4->_horizontalStack setDistribution:0];
    [(UIStackView *)v4->_horizontalStack setAxis:0];
    [(UIStackView *)v4->_horizontalStack setSpacing:8.0];
    [(NCNotificationTextInputView *)v4 addSubview:v4->_horizontalStack];
    v25 = [MEMORY[0x277D75348] clearColor];
    [(NCNotificationTextInputView *)v4 setBackgroundColor:v25];

    v26 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:0 smoothness:12.0];
    v27 = v4->_textView;
    v28 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v27 setBackgroundColor:v28];

    [(UIStackView *)v4->_horizontalStack _setBackground:v26];
    [(UIStackView *)v4->_horizontalStack setLayoutMargins:0.0, 12.0, 0.0, 12.0];
    [(UIStackView *)v4->_horizontalStack setLayoutMarginsRelativeArrangement:1];
    v29 = [objc_alloc(MEMORY[0x277D759B0]) initWithDelegate:v4];
    scribbleInteraction = v4->_scribbleInteraction;
    v4->_scribbleInteraction = v29;

    v31 = [(NCNotificationTextInputView *)v4 textView];
    [v31 addInteraction:v4->_scribbleInteraction];

    [(NCNotificationTextInputView *)v4 _updateForTextChange];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  [(NCNotificationTextInputView *)self directionalLayoutMargins];
  v4 = v3;
  v5 = *MEMORY[0x277D77260];
  [(NCNotificationTextInputView *)self _textViewHeight];
  v7 = v6;
  [(NCNotificationTextInputView *)self _maximumTextViewHeight];
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v4 + v8 + 12.0;
  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = NCNotificationTextInputView;
  [(NCNotificationTextInputView *)&v3 safeAreaInsetsDidChange];
  [(NCNotificationTextInputView *)self invalidateIntrinsicContentSize];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = NCNotificationTextInputView;
  [(NCNotificationTextInputView *)&v20 layoutSubviews];
  [(NCNotificationTextInputView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NCNotificationTextInputView *)self directionalLayoutMargins];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  horizontalStack = self->_horizontalStack;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v18 = CGRectGetWidth(v21) - v12 - v16;
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  [(UIStackView *)horizontalStack setFrame:v12, 6.0, v18, CGRectGetHeight(v22) + -12.0 - v14];
  [(UIStackView *)self->_horizontalStack frame];
  UIRoundToScale();
  [(UIStackView *)self->_horizontalStack _setContinuousCornerRadius:fmin(v19, 19.0)];
}

- (void)setAction:(id)a3
{
  v5 = a3;
  if (self->_action != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_action, a3);
    v6 = [(NCNotificationAction *)v10 behaviorParameters];
    v7 = [v6 objectForKey:*MEMORY[0x277CE20B8]];

    [(NCNotificationTextInputView *)self setButtonTitle:v7];
    v8 = [(NCNotificationAction *)v10 behaviorParameters];
    v9 = [v8 objectForKey:*MEMORY[0x277CE20C0]];

    [(NCNotificationTextInputView *)self setPlaceholder:v9];
    v5 = v10;
  }
}

- (void)setButtonTitle:(id)a3
{
  v9 = a3;
  v4 = [v9 length];
  v5 = [(NCNotificationTextInputView *)self button];
  v6 = v5;
  if (v4)
  {
    [v5 setTitle:v9 forState:0];
  }

  else
  {
    v7 = NCUserNotificationsUIKitFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"QUICK_REPLY_SEND_BUTTON_TITLE" value:&stru_282FE84F8 table:0];
    [v6 setTitle:v8 forState:0];
  }
}

- (void)setPlaceholder:(id)a3
{
  v5 = [MEMORY[0x277CCA898] nc_safeAttributedStringWithString:a3];
  v4 = [(NCNotificationTextInputView *)self textView];
  [v4 setAttributedPlaceholder:v5];
}

- (void)setInputContextHistory:(id)a3
{
  v5 = a3;
  if (self->_inputContextHistory != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inputContextHistory, a3);
    [(UITextView *)self->_textView setInputContextHistory:v6];
    v5 = v6;
  }
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(NCNotificationTextInputView *)self textView];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v2 = [(NCNotificationTextInputView *)self textView];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)canResignFirstResponder
{
  v2 = [(NCNotificationTextInputView *)self textView];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = NCNotificationTextInputView;
  if ([(NCNotificationTextInputView *)&v6 resignFirstResponder])
  {
    return 1;
  }

  v4 = [(NCNotificationTextInputView *)self textView];
  v3 = [v4 resignFirstResponder];

  return v3;
}

- (BOOL)isFirstResponder
{
  v2 = [(NCNotificationTextInputView *)self textView];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (double)_textViewWidth
{
  v3 = [(NCNotificationTextInputView *)self button];
  [v3 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v5 = v4;

  [(NCNotificationTextInputView *)self directionalLayoutMargins];
  v7 = v6;
  v9 = v8;
  [(NCNotificationTextInputView *)self bounds];
  result = CGRectGetWidth(v11) + -24.0 - v7 - v9 - v5;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)_textViewHeight
{
  v3 = [(NCNotificationTextInputView *)self button];
  [v3 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v5 = v4;

  v6 = [(NCNotificationTextInputView *)self textView];
  [(NCNotificationTextInputView *)self _textViewWidth];
  [v6 sizeThatFits:?];
  v8 = v7;

  if ([MEMORY[0x277D759B0] isPencilInputExpected])
  {

    [(NCNotificationTextInputView *)self _pencilModeHeight];
  }

  else if (v5 >= v8)
  {
    return v5;
  }

  else
  {
    return v8;
  }

  return result;
}

- (double)_maximumTextViewHeight
{
  v2 = [(UITextView *)self->_textView font];
  [v2 lineHeight];
  v4 = v3 * 4.0;

  return v4;
}

- (double)_pencilModeHeight
{
  v2 = [(UITextView *)self->_textView font];
  [v2 lineHeight];
  v4 = v3;
  [MEMORY[0x277D759B0] _recommendedBlankSpaceHeight];
  v6 = v4 + v5;

  return v6;
}

- (void)_buttonPressed:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277D75658] activeKeyboard];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NCNotificationTextInputView__buttonPressed___block_invoke;
  v6[3] = &unk_27836F510;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [v5 acceptAutocorrectionWithCompletionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__NCNotificationTextInputView__buttonPressed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained textView];
  v3 = [v2 text];

  if ([v3 length])
  {
    v4 = [WeakRetained delegate];
    v5 = *(a1 + 32);
    v6 = [WeakRetained action];
    [v4 notificationTextInputView:v5 didConfirmText:v3 forAction:v6];

    v7 = [WeakRetained textView];
    [v7 setText:0];
  }
}

- (void)_updateForTextChange
{
  [(NCNotificationTextInputView *)self invalidateIntrinsicContentSize];
  v3 = [(UITextView *)self->_textView text];
  v4 = [v3 length] != 0;

  [(UIButton *)self->_button setEnabled:v4];
  [(NCNotificationTextInputView *)self _textViewHeight];
  v6 = v5;
  [(NCNotificationTextInputView *)self _maximumTextViewHeight];
  textView = self->_textView;

  [(UITextView *)textView setScrollEnabled:v6 >= v7];
}

- (NCNotificationTextInputViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end