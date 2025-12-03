@interface TUIEmojiSearchTextField
+ (double)preferredHeight;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isActive;
- (BOOL)isEditing;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldClear:(id)clear;
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)visibleRect;
- (TUIEmojiSearchTextField)initWithFrame:(CGRect)frame pretendsToBecomeFirstResponder:(BOOL)responder;
- (TUIEmojiSearchTextFieldDelegate)searchDelegate;
- (id)_clearButton;
- (id)_textAndGlyphColorForRenderConfig:(id)config;
- (id)_textAndGlyphCompositingFilterForRenderConfig:(id)config;
- (id)portalView;
- (void)_matchPortalViewFrame:(CGRect)frame;
- (void)_setCursorVisibleAndBlinks:(BOOL)blinks;
- (void)_setRenderConfig:(id)config;
- (void)_updatePlaceholderPosition;
- (void)_windowBecameKeyNotificationPosted:(id)posted;
- (void)didMoveToWindow;
- (void)fieldEditorDidChange:(id)change;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)paste:(id)paste;
- (void)postSearchViewNotification;
- (void)setActive:(BOOL)active;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation TUIEmojiSearchTextField

- (TUIEmojiSearchTextFieldDelegate)searchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);

  return WeakRetained;
}

- (BOOL)textFieldShouldClear:(id)clear
{
  searchDelegate = [(TUIEmojiSearchTextField *)self searchDelegate];

  if (searchDelegate)
  {
    searchDelegate2 = [(TUIEmojiSearchTextField *)self searchDelegate];
    [searchDelegate2 emojiSearchTextFieldWillClear:self];

    searchDelegate3 = [(TUIEmojiSearchTextField *)self searchDelegate];
    [searchDelegate3 emojiSearchTextField:self didChangeSearchString:&stru_1F03BA8F8];
  }

  return 1;
}

- (void)fieldEditorDidChange:(id)change
{
  v14.receiver = self;
  v14.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v14 fieldEditorDidChange:change];
  if (-[TUIEmojiSearchTextField hasMarkedText](self, "hasMarkedText") && (-[TUIEmojiSearchTextField text](self, "text"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, v5 == 1))
  {
    text = [(TUIEmojiSearchTextField *)self text];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    if ([text rangeOfCharacterFromSet:whitespaceCharacterSet])
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

  searchDelegate = [(TUIEmojiSearchTextField *)self searchDelegate];

  if (searchDelegate)
  {
    if ((v10 & 1) == 0)
    {
      searchDelegate2 = [(TUIEmojiSearchTextField *)self searchDelegate];
      text2 = [(TUIEmojiSearchTextField *)self text];
      [searchDelegate2 emojiSearchTextField:self didChangeSearchString:text2];
    }
  }
}

- (CGRect)visibleRect
{
  window = [(TUIEmojiSearchTextField *)self window];
  [window bounds];
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
  searchDelegate = [(TUIEmojiSearchTextField *)self searchDelegate];
  [searchDelegate emojiSearchTextFieldWillBecomeInactive:self];

  if ([(TUIEmojiSearchTextField *)self pretendsToBecomeFirstResponder])
  {
    [(TUIEmojiSearchTextField *)self setActive:0];
    resignFirstResponder = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TUIEmojiSearchTextField;
    resignFirstResponder = [(TUIEmojiSearchTextField *)&v7 resignFirstResponder];
  }

  searchDelegate2 = [(TUIEmojiSearchTextField *)self searchDelegate];
  [searchDelegate2 emojiSearchTextFieldDidBecomeInactive:self];

  [(TUIEmojiSearchTextField *)self postSearchViewNotification];
  return resignFirstResponder;
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
    searchDelegate = [(TUIEmojiSearchTextField *)self searchDelegate];
    [searchDelegate emojiSearchTextFieldWillBecomeActive:self];

    if ([(TUIEmojiSearchTextField *)self pretendsToBecomeFirstResponder])
    {
      [(TUIEmojiSearchTextField *)self setActive:1];
      searchDelegate2 = [(TUIEmojiSearchTextField *)self searchDelegate];
      [searchDelegate2 emojiSearchTextFieldDidBecomeActive:self];

      goto LABEL_8;
    }
  }

  v9.receiver = self;
  v9.super_class = TUIEmojiSearchTextField;
  if ([(TUIEmojiSearchTextField *)&v9 becomeFirstResponder])
  {
    searchDelegate3 = [(TUIEmojiSearchTextField *)self searchDelegate];
    [searchDelegate3 emojiSearchTextFieldDidBecomeActive:self];

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

- (void)_windowBecameKeyNotificationPosted:(id)posted
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

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    [(TUIEmojiSearchTextField *)self _setCursorVisibleAndBlinks:?];
    if (activeCopy)
    {
      [(TUIEmojiSearchTextField *)self _attachFieldEditor];
      interactionAssistant = [(TUIEmojiSearchTextField *)self interactionAssistant];
      [interactionAssistant activateSelection];
    }

    else
    {
      [(TUIEmojiSearchTextField *)self _detachFieldEditor];
      interactionAssistant = [(TUIEmojiSearchTextField *)self interactionAssistant];
      [interactionAssistant deactivateSelection];
    }
  }
}

- (void)_setCursorVisibleAndBlinks:(BOOL)blinks
{
  blinksCopy = blinks;
  interactionAssistant = [(TUIEmojiSearchTextField *)self interactionAssistant];
  [interactionAssistant setCursorVisible:blinksCopy];

  interactionAssistant2 = [(TUIEmojiSearchTextField *)self interactionAssistant];
  v7 = objc_opt_respondsToSelector();

  interactionAssistant3 = [(TUIEmojiSearchTextField *)self interactionAssistant];
  v10 = interactionAssistant3;
  if (v7)
  {
    [interactionAssistant3 setCursorBlinkAnimationEnabled:blinksCopy];
  }

  else
  {
    selectionView = [interactionAssistant3 selectionView];
    [selectionView setCaretBlinks:blinksCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v13.receiver = self;
  v13.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v13 setHighlighted:?];
  if (highlightedCopy)
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

- (void)_matchPortalViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  superview = [(TUIEmojiSearchTextField *)self superview];
  superview2 = [(TUIEmojiSearchTextFieldPortalView *)self->_portalView superview];
  [superview convertRect:superview2 fromView:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(TUIEmojiSearchTextField *)self setFrame:v11, v13, v15, v17];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kFrameChangeContext == context)
  {
    v7 = [change objectForKeyedSubscript:{*MEMORY[0x1E696A4F0], object}];
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
    [(TUIEmojiSearchTextField *)&v16 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  v17.receiver = self;
  v17.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v17 clearButtonRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v8.receiver = self;
  v8.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v8 rightViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  UIRectInsetEdges();
  v7 = width - v5 + -10.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
  v15.receiver = self;
  v15.super_class = TUIEmojiSearchTextField;
  [(TUIEmojiSearchTextField *)&v15 leftViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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

  _placeholderLabel = [(TUIEmojiSearchTextField *)self _placeholderLabel];
  [_placeholderLabel setTextAlignment:v3];
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
    activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
    v6 = activeKeyboardSceneDelegate;
    if (activeKeyboardSceneDelegate)
    {
      scene = [activeKeyboardSceneDelegate scene];
      if (scene)
      {
        v8 = [MEMORY[0x1E69DD0A8] activeTextEffectsWindowForWindowScene:scene];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__windowBecameKeyNotificationPosted_ name:*MEMORY[0x1E69DE7B0] object:0];

  self->_wasRTL = [(TUIEmojiSearchTextField *)self effectiveUserInterfaceLayoutDirection]== 1;
}

- (id)_clearButton
{
  v9.receiver = self;
  v9.super_class = TUIEmojiSearchTextField;
  _clearButton = [(TUIEmojiSearchTextField *)&v9 _clearButton];
  _inheritedRenderConfig = [(TUIEmojiSearchTextField *)self _inheritedRenderConfig];
  v5 = [(TUIEmojiSearchTextField *)self _textAndGlyphCompositingFilterForRenderConfig:_inheritedRenderConfig];
  layer = [_clearButton layer];
  [layer setCompositingFilter:v5];

  v7 = [(TUIEmojiSearchTextField *)self _textAndGlyphColorForRenderConfig:_inheritedRenderConfig];
  [_clearButton setTintColor:v7];

  return _clearButton;
}

- (void)_setRenderConfig:(id)config
{
  v15.receiver = self;
  v15.super_class = TUIEmojiSearchTextField;
  configCopy = config;
  [(TUIEmojiSearchTextField *)&v15 _setRenderConfig:configCopy];
  v5 = [(TUIEmojiSearchTextField *)self _textAndGlyphColorForRenderConfig:configCopy, v15.receiver, v15.super_class];
  v6 = [(TUIEmojiSearchTextField *)self _textAndGlyphCompositingFilterForRenderConfig:configCopy];
  [(UIImageView *)self->_magnifyingGlassView setTintColor:v5];
  _placeholderLabel = [(TUIEmojiSearchTextField *)self _placeholderLabel];
  [_placeholderLabel setTextColor:v5];

  _clearButton = [(TUIEmojiSearchTextField *)self _clearButton];
  [_clearButton setTintColor:v5];

  layer = [(UIImageView *)self->_magnifyingGlassView layer];
  [layer setCompositingFilter:v6];

  _placeholderLabel2 = [(TUIEmojiSearchTextField *)self _placeholderLabel];
  layer2 = [_placeholderLabel2 layer];
  [layer2 setCompositingFilter:v6];

  _clearButton2 = [(TUIEmojiSearchTextField *)self _clearButton];
  layer3 = [_clearButton2 layer];
  [layer3 setCompositingFilter:v6];

  LOBYTE(_clearButton2) = [configCopy lightKeyboard];
  if (_clearButton2)
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

- (id)_textAndGlyphCompositingFilterForRenderConfig:(id)config
{
  lightKeyboard = [config lightKeyboard];
  v4 = MEMORY[0x1E6979CE8];
  if (!lightKeyboard)
  {
    v4 = MEMORY[0x1E6979CF8];
  }

  v5 = *v4;

  return v5;
}

- (id)_textAndGlyphColorForRenderConfig:(id)config
{
  lightKeyboard = [config lightKeyboard];
  v4 = 0.36;
  if (lightKeyboard)
  {
    v4 = 0.6;
  }

  v5 = MEMORY[0x1E69DC888];

  return [v5 colorWithWhite:v4 alpha:1.0];
}

- (TUIEmojiSearchTextField)initWithFrame:(CGRect)frame pretendsToBecomeFirstResponder:(BOOL)responder
{
  v22.receiver = self;
  v22.super_class = TUIEmojiSearchTextField;
  v5 = [(TUIEmojiSearchTextField *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_pretendsToBecomeFirstResponder = responder;
    v7 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    backgroundView = v6->_backgroundView;
    v6->_backgroundView = v7;

    [(TUIEmojiSearchTextField *)v6 insertSubview:v6->_backgroundView atIndex:0];
    layer = [(TUIEmojiSearchTextField *)v6 layer];
    [layer setAllowsGroupBlending:0];

    [(TUIEmojiSearchTextField *)v6 setClearButtonMode:1];
    [(TUIEmojiSearchTextField *)v6 setAutocapitalizationType:0];
    [(TUIEmojiSearchTextField *)v6 setDelegate:v6];
    v10 = MEMORY[0x1E69DCAD8];
    font = [(TUIEmojiSearchTextField *)v6 font];
    v12 = [v10 configurationWithFont:font];
    _configurationIgnoringDynamicType = [v12 _configurationIgnoringDynamicType];

    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass" withConfiguration:_configurationIgnoringDynamicType];
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v14];
    magnifyingGlassView = v6->_magnifyingGlassView;
    v6->_magnifyingGlassView = v15;

    [(UIImageView *)v6->_magnifyingGlassView setContentMode:4];
    v17 = *MEMORY[0x1E6979CE8];
    _placeholderLabel = [(TUIEmojiSearchTextField *)v6 _placeholderLabel];
    layer2 = [_placeholderLabel layer];
    [layer2 setCompositingFilter:v17];

    [(UIImageView *)v6->_magnifyingGlassView sizeToFit];
    [(TUIEmojiSearchTextField *)v6 setLeftView:v6->_magnifyingGlassView];
    [(TUIEmojiSearchTextField *)v6 setLeftViewMode:3];
    [(TUIEmojiSearchTextField *)v6 setRightViewMode:3];
    _systemInteractionTintColor = [MEMORY[0x1E69DC888] _systemInteractionTintColor];
    [(TUIEmojiSearchTextField *)v6 setTintColor:_systemInteractionTintColor];

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

- (void)paste:(id)paste
{
  if (self->_pretendsToBecomeFirstResponder)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    string = [generalPasteboard string];

    [(TUIEmojiSearchTextField *)self insertText:string];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TUIEmojiSearchTextField;
    [(TUIEmojiSearchTextField *)&v6 paste:paste];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_paste_ == action)
  {
    if ([(TUIEmojiSearchTextField *)self isEditing])
    {
      generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
      hasStrings = [generalPasteboard hasStrings];
LABEL_20:
      v10 = hasStrings;

      goto LABEL_23;
    }

LABEL_21:
    v10 = 0;
    goto LABEL_23;
  }

  if (sel_selectAll_ == action)
  {
    if ([(TUIEmojiSearchTextField *)self isEditing]&& [(TUIEmojiSearchTextField *)self hasText])
    {
      generalPasteboard = [(TUIEmojiSearchTextField *)self selectedTextRange];
      hasStrings = [generalPasteboard isEmpty];
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (sel_replace_ == action)
  {
    v10 = 1;
    goto LABEL_23;
  }

  if (sel__share_ == action || sel__define_ == action || sel__translate_ == action || sel_captureTextFromCamera_ == action)
  {
    goto LABEL_21;
  }

  v14.receiver = self;
  v14.super_class = TUIEmojiSearchTextField;
  v10 = [(TUIEmojiSearchTextField *)&v14 canPerformAction:action withSender:senderCopy];
LABEL_23:

  return v10;
}

@end