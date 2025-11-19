@interface TUIEmojiSearchTextField
+ (double)preferredHeight;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isActive;
- (BOOL)isEditing;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldClear:(id)a3;
- (CGRect)clearButtonRectForBounds:(CGRect)a3;
- (CGRect)leftViewRectForBounds:(CGRect)a3;
- (CGRect)rightViewRectForBounds:(CGRect)a3;
- (CGRect)visibleRect;
- (TUIEmojiSearchTextField)initWithFrame:(CGRect)a3 pretendsToBecomeFirstResponder:(BOOL)a4;
- (TUIEmojiSearchTextFieldDelegate)searchDelegate;
- (id)_clearButton;
- (id)_textAndGlyphColorForRenderConfig:(id)a3;
- (id)_textAndGlyphCompositingFilterForRenderConfig:(id)a3;
- (id)portalView;
- (void)_matchPortalViewFrame:(CGRect)a3;
- (void)_setCursorVisibleAndBlinks:(BOOL)a3;
- (void)_setRenderConfig:(id)a3;
- (void)_updatePlaceholderPosition;
- (void)_windowBecameKeyNotificationPosted:(id)a3;
- (void)didMoveToWindow;
- (void)fieldEditorDidChange:(id)a3;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)paste:(id)a3;
- (void)postSearchViewNotification;
- (void)setActive:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation TUIEmojiSearchTextField

- (TUIEmojiSearchTextFieldDelegate)searchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);

  return WeakRetained;
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = [(TUIEmojiSearchTextField *)self searchDelegate];

  if (v4)
  {
    v5 = [(TUIEmojiSearchTextField *)self searchDelegate];
    [v5 emojiSearchTextFieldWillClear:self];

    v6 = [(TUIEmojiSearchTextField *)self searchDelegate];
    [v6 emojiSearchTextField:self didChangeSearchString:&stru_1F03BA8F8];
  }

  return 1;
}

- (void)fieldEditorDidChange:(id)a3
{
  v14.receiver = self;
  v14.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v14 fieldEditorDidChange:a3];
  if (-[TUIEmojiSearchTextField hasMarkedText](self, "hasMarkedText") && (-[TUIEmojiSearchTextField text](self, "text"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, v5 == 1))
  {
    v6 = [(TUIEmojiSearchTextField *)self text];
    v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    if ([v6 rangeOfCharacterFromSet:v7])
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 == 1;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(TUIEmojiSearchTextField *)self searchDelegate];

  if (v11)
  {
    if ((v10 & 1) == 0)
    {
      v12 = [(TUIEmojiSearchTextField *)self searchDelegate];
      v13 = [(TUIEmojiSearchTextField *)self text];
      [v12 emojiSearchTextField:self didChangeSearchString:v13];
    }
  }
}

- (CGRect)visibleRect
{
  v2 = [(TUIEmojiSearchTextField *)self window];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)postSearchViewNotification
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"ButtonConfiguration";
  v8[0] = &unk_1F03D8E70;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__TUIEmojiSearchTextField_postSearchViewNotification__block_invoke;
  block[3] = &unk_1E72D85E0;
  block[4] = self;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __53__TUIEmojiSearchTextField_postSearchViewNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) effectiveUserInterfaceLayoutDirection];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__TUIEmojiSearchTextField_postSearchViewNotification__block_invoke_2;
  aBlock[3] = &unk_1E72D83A0;
  v7 = *(a1 + 40);
  v3 = _Block_copy(aBlock);
  v4 = CACurrentMediaTime();
  v5 = *(a1 + 32);
  if (v4 - *(v5 + 1104) <= 0.5)
  {
    LOBYTE(v2) = v2 == 1;
    goto LABEL_5;
  }

  LODWORD(v2) = v2 == 1;
  if (*(v5 + 1097) != v2)
  {
LABEL_5:
    v3[2](v3);
    goto LABEL_6;
  }

  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.25];
LABEL_6:
  *(*(a1 + 32) + 1097) = v2;
}

void __53__TUIEmojiSearchTextField_postSearchViewNotification__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUIEmojiSearchViewButtonConfigurationWillChangeNotification" object:0 userInfo:*(a1 + 32)];
}

- (BOOL)resignFirstResponder
{
  v3 = [(TUIEmojiSearchTextField *)self searchDelegate];
  [v3 emojiSearchTextFieldWillBecomeInactive:self];

  if ([(TUIEmojiSearchTextField *)self pretendsToBecomeFirstResponder])
  {
    [(TUIEmojiSearchTextField *)self setActive:0];
    v4 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TUIEmojiSearchTextField;
    v4 = [(TUIEmojiSearchTextField *)&v7 resignFirstResponder];
  }

  v5 = [(TUIEmojiSearchTextField *)self searchDelegate];
  [v5 emojiSearchTextFieldDidBecomeInactive:self];

  [(TUIEmojiSearchTextField *)self postSearchViewNotification];
  return v4;
}

- (BOOL)becomeFirstResponder
{
  if ([(TUIEmojiSearchTextField *)self isActive])
  {
    if ([(TUIEmojiSearchTextField *)self pretendsToBecomeFirstResponder])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = [(TUIEmojiSearchTextField *)self searchDelegate];
    [v3 emojiSearchTextFieldWillBecomeActive:self];

    if ([(TUIEmojiSearchTextField *)self pretendsToBecomeFirstResponder])
    {
      [(TUIEmojiSearchTextField *)self setActive:1];
      v4 = [(TUIEmojiSearchTextField *)self searchDelegate];
      [v4 emojiSearchTextFieldDidBecomeActive:self];

      goto LABEL_8;
    }
  }

  v9.receiver = self;
  v9.super_class = TUIEmojiSearchTextField;
  if ([(TUIEmojiSearchTextField *)&v9 becomeFirstResponder])
  {
    v5 = [(TUIEmojiSearchTextField *)self searchDelegate];
    [v5 emojiSearchTextFieldDidBecomeActive:self];

    v6 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v6 = 0;
LABEL_9:
  portalView = self->_portalView;
  if (portalView)
  {
    [(TUIEmojiSearchTextFieldPortalView *)portalView frame];
    [(TUIEmojiSearchTextField *)self _matchPortalViewFrame:?];
  }

  [(TUIEmojiSearchTextField *)self postSearchViewNotification];
  return v6;
}

- (void)_windowBecameKeyNotificationPosted:(id)a3
{
  if ([(TUIEmojiSearchTextField *)self pretendsToBecomeFirstResponder])
  {

    [(TUIEmojiSearchTextField *)self setActive:0];
  }
}

- (BOOL)isEditing
{
  if (self->_pretendsToBecomeFirstResponder)
  {

    return [(TUIEmojiSearchTextField *)self isActive];
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = TUIEmojiSearchTextField;
    return [(TUIEmojiSearchTextField *)&v5 isEditing];
  }
}

- (BOOL)isActive
{
  if (self->_pretendsToBecomeFirstResponder)
  {
    return self->_active;
  }

  else
  {
    return [(TUIEmojiSearchTextField *)self isFirstResponder];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v4 = a3;
    self->_active = a3;
    [(TUIEmojiSearchTextField *)self _setCursorVisibleAndBlinks:?];
    if (v4)
    {
      [(TUIEmojiSearchTextField *)self _attachFieldEditor];
      v6 = [(TUIEmojiSearchTextField *)self interactionAssistant];
      [v6 activateSelection];
    }

    else
    {
      [(TUIEmojiSearchTextField *)self _detachFieldEditor];
      v6 = [(TUIEmojiSearchTextField *)self interactionAssistant];
      [v6 deactivateSelection];
    }
  }
}

- (void)_setCursorVisibleAndBlinks:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIEmojiSearchTextField *)self interactionAssistant];
  [v5 setCursorVisible:v3];

  v6 = [(TUIEmojiSearchTextField *)self interactionAssistant];
  v7 = objc_opt_respondsToSelector();

  v8 = [(TUIEmojiSearchTextField *)self interactionAssistant];
  v10 = v8;
  if (v7)
  {
    [v8 setCursorBlinkAnimationEnabled:v3];
  }

  else
  {
    v9 = [v8 selectionView];
    [v9 setCaretBlinks:v3];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v13 setHighlighted:?];
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF00] now];
    highlightBeginTime = self->_highlightBeginTime;
    self->_highlightBeginTime = v5;

    backgroundView = self->_backgroundView;
    v8 = 2;
    v9 = 1;
  }

  else
  {
    v10 = self->_backgroundView;
    v11 = self->_highlightBeginTime;
    if (v11)
    {
      [(NSDate *)v11 timeIntervalSinceNow];
      v9 = v12 < -0.3;
    }

    else
    {
      v9 = 0;
    }

    backgroundView = v10;
    v8 = 1;
  }

  [(TUIEmojiSearchTextFieldBackgroundView *)backgroundView setBackgroundStyle:v8 animated:v9];
}

- (void)_matchPortalViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(TUIEmojiSearchTextField *)self superview];
  v9 = [(TUIEmojiSearchTextFieldPortalView *)self->_portalView superview];
  [v8 convertRect:v9 fromView:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(TUIEmojiSearchTextField *)self setFrame:v11, v13, v15, v17];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kFrameChangeContext == a6)
  {
    v7 = [a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0], a4}];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [(TUIEmojiSearchTextField *)self _matchPortalViewFrame:v9, v11, v13, v15];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = TUIEmojiSearchTextField;
    [(TUIEmojiSearchTextField *)&v16 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (CGRect)clearButtonRectForBounds:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v17 clearButtonRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = TUIRemoteEmojiSearchViewControllerEnabled();
  v12 = 0.0;
  if (v11)
  {
    v12 = -3.0;
  }

  v13 = v4 + v12;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v8 rightViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  UIRectInsetEdges();
  v7 = width - v5 + -10.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v15 leftViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  UIRectInsetEdges();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (TUIRemoteEmojiSearchViewControllerEnabled())
  {
    v9 = 3.0;
  }

  else
  {
    v9 = 10.0;
  }

  v10 = _UISolariumEnabled();
  v11 = v9 + 3.0;
  if (!v10)
  {
    v11 = v9;
  }

  v12 = v4;
  v13 = v6;
  v14 = v8;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)layoutSubviews
{
  [(TUIEmojiSearchTextField *)self setLeftView:self->_magnifyingGlassView];
  [(TUIEmojiSearchTextField *)self setRightView:0];
  v3.receiver = self;
  v3.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v3 layoutSubviews];
  [(TUIEmojiSearchTextField *)self bounds];
  [(TUIEmojiSearchTextFieldBackgroundView *)self->_backgroundView setFrame:?];
  if ([(TUIEmojiSearchTextField *)self isActive])
  {
    [(TUIEmojiSearchTextField *)self _setCursorVisibleAndBlinks:1];
  }
}

- (void)_updatePlaceholderPosition
{
  if ([(TUIEmojiSearchTextField *)self _shouldReverseLayoutDirection])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(TUIEmojiSearchTextField *)self _placeholderLabel];
  [v4 setTextAlignment:v3];
}

- (id)portalView
{
  if (!self->_portalView)
  {
    v3 = [(_UIPortalView *)[TUIEmojiSearchTextFieldPortalView alloc] initWithSourceView:self];
    portalView = self->_portalView;
    self->_portalView = v3;

    [(TUIEmojiSearchTextFieldPortalView *)self->_portalView setHitTestView:self];
    [(_UIPortalView *)self->_portalView setHidesSourceView:1];
    [(_UIPortalView *)self->_portalView setForwardsClientHitTestingToSourceView:1];
    [(TUIEmojiSearchTextFieldPortalView *)self->_portalView addObserver:self forKeyPath:@"frame" options:1 context:kFrameChangeContext];
    [(TUIEmojiSearchTextFieldPortalView *)self->_portalView addObserver:self forKeyPath:@"bounds" options:1 context:kFrameChangeContext];
    v5 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 scene];
      if (v7)
      {
        v8 = [MEMORY[0x1E69DD0A8] activeTextEffectsWindowForWindowScene:v7];
        v9 = v8;
        if (v8)
        {
          [v8 addSubview:self];
        }
      }
    }
  }

  [(TUIEmojiSearchTextField *)self frame];
  [(_UIPortalView *)self->_portalView setFrame:?];
  v10 = self->_portalView;

  return v10;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v4 didMoveToWindow];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__windowBecameKeyNotificationPosted_ name:*MEMORY[0x1E69DE7B0] object:0];

  self->_wasRTL = [(TUIEmojiSearchTextField *)self effectiveUserInterfaceLayoutDirection]== 1;
}

- (id)_clearButton
{
  v9.receiver = self;
  v9.super_class = TUIEmojiSearchTextField;
  v3 = [(TUIEmojiSearchTextField *)&v9 _clearButton];
  v4 = [(TUIEmojiSearchTextField *)self _inheritedRenderConfig];
  v5 = [(TUIEmojiSearchTextField *)self _textAndGlyphCompositingFilterForRenderConfig:v4];
  v6 = [v3 layer];
  [v6 setCompositingFilter:v5];

  v7 = [(TUIEmojiSearchTextField *)self _textAndGlyphColorForRenderConfig:v4];
  [v3 setTintColor:v7];

  return v3;
}

- (void)_setRenderConfig:(id)a3
{
  v15.receiver = self;
  v15.super_class = TUIEmojiSearchTextField;
  v4 = a3;
  [(TUIEmojiSearchTextField *)&v15 _setRenderConfig:v4];
  v5 = [(TUIEmojiSearchTextField *)self _textAndGlyphColorForRenderConfig:v4, v15.receiver, v15.super_class];
  v6 = [(TUIEmojiSearchTextField *)self _textAndGlyphCompositingFilterForRenderConfig:v4];
  [(UIImageView *)self->_magnifyingGlassView setTintColor:v5];
  v7 = [(TUIEmojiSearchTextField *)self _placeholderLabel];
  [v7 setTextColor:v5];

  v8 = [(TUIEmojiSearchTextField *)self _clearButton];
  [v8 setTintColor:v5];

  v9 = [(UIImageView *)self->_magnifyingGlassView layer];
  [v9 setCompositingFilter:v6];

  v10 = [(TUIEmojiSearchTextField *)self _placeholderLabel];
  v11 = [v10 layer];
  [v11 setCompositingFilter:v6];

  v12 = [(TUIEmojiSearchTextField *)self _clearButton];
  v13 = [v12 layer];
  [v13 setCompositingFilter:v6];

  LOBYTE(v12) = [v4 lightKeyboard];
  if (v12)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v14 = ;
  [(TUIEmojiSearchTextField *)self setTextColor:v14];
}

- (id)_textAndGlyphCompositingFilterForRenderConfig:(id)a3
{
  v3 = [a3 lightKeyboard];
  v4 = MEMORY[0x1E6979CE8];
  if (!v3)
  {
    v4 = MEMORY[0x1E6979CF8];
  }

  v5 = *v4;

  return v5;
}

- (id)_textAndGlyphColorForRenderConfig:(id)a3
{
  v3 = [a3 lightKeyboard];
  v4 = 0.36;
  if (v3)
  {
    v4 = 0.6;
  }

  v5 = MEMORY[0x1E69DC888];

  return [v5 colorWithWhite:v4 alpha:1.0];
}

- (TUIEmojiSearchTextField)initWithFrame:(CGRect)a3 pretendsToBecomeFirstResponder:(BOOL)a4
{
  v22.receiver = self;
  v22.super_class = TUIEmojiSearchTextField;
  v5 = [(TUIEmojiSearchTextField *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_pretendsToBecomeFirstResponder = a4;
    v7 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    backgroundView = v6->_backgroundView;
    v6->_backgroundView = v7;

    [(TUIEmojiSearchTextField *)v6 insertSubview:v6->_backgroundView atIndex:0];
    v9 = [(TUIEmojiSearchTextField *)v6 layer];
    [v9 setAllowsGroupBlending:0];

    [(TUIEmojiSearchTextField *)v6 setClearButtonMode:1];
    [(TUIEmojiSearchTextField *)v6 setAutocapitalizationType:0];
    [(TUIEmojiSearchTextField *)v6 setDelegate:v6];
    v10 = MEMORY[0x1E69DCAD8];
    v11 = [(TUIEmojiSearchTextField *)v6 font];
    v12 = [v10 configurationWithFont:v11];
    v13 = [v12 _configurationIgnoringDynamicType];

    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass" withConfiguration:v13];
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v14];
    magnifyingGlassView = v6->_magnifyingGlassView;
    v6->_magnifyingGlassView = v15;

    [(UIImageView *)v6->_magnifyingGlassView setContentMode:4];
    v17 = *MEMORY[0x1E6979CE8];
    v18 = [(TUIEmojiSearchTextField *)v6 _placeholderLabel];
    v19 = [v18 layer];
    [v19 setCompositingFilter:v17];

    [(UIImageView *)v6->_magnifyingGlassView sizeToFit];
    [(TUIEmojiSearchTextField *)v6 setLeftView:v6->_magnifyingGlassView];
    [(TUIEmojiSearchTextField *)v6 setLeftViewMode:3];
    [(TUIEmojiSearchTextField *)v6 setRightViewMode:3];
    v20 = [MEMORY[0x1E69DC888] _systemInteractionTintColor];
    [(TUIEmojiSearchTextField *)v6 setTintColor:v20];

    v6->_startTime = CACurrentMediaTime();
  }

  return v6;
}

+ (double)preferredHeight
{
  v2 = _UISolariumEnabled();
  result = 49.0;
  if (v2)
  {
    return 53.0;
  }

  return result;
}

- (void)paste:(id)a3
{
  if (self->_pretendsToBecomeFirstResponder)
  {
    v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v5 = [v4 string];

    [(TUIEmojiSearchTextField *)self insertText:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TUIEmojiSearchTextField;
    [(TUIEmojiSearchTextField *)&v6 paste:a3];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_paste_ == a3)
  {
    if ([(TUIEmojiSearchTextField *)self isEditing])
    {
      v11 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v12 = [v11 hasStrings];
LABEL_20:
      v10 = v12;

      goto LABEL_23;
    }

LABEL_21:
    v10 = 0;
    goto LABEL_23;
  }

  if (sel_selectAll_ == a3)
  {
    if ([(TUIEmojiSearchTextField *)self isEditing]&& [(TUIEmojiSearchTextField *)self hasText])
    {
      v11 = [(TUIEmojiSearchTextField *)self selectedTextRange];
      v12 = [v11 isEmpty];
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (sel_replace_ == a3)
  {
    v10 = 1;
    goto LABEL_23;
  }

  if (sel__share_ == a3 || sel__define_ == a3 || sel__translate_ == a3 || sel_captureTextFromCamera_ == a3)
  {
    goto LABEL_21;
  }

  v14.receiver = self;
  v14.super_class = TUIEmojiSearchTextField;
  v10 = [(TUIEmojiSearchTextField *)&v14 canPerformAction:a3 withSender:v6];
LABEL_23:

  return v10;
}

@end