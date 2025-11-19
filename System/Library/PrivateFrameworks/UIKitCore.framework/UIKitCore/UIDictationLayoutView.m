@interface UIDictationLayoutView
- (BOOL)isShowing;
- (UIDictationLayoutView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)finishReturnToKeyboard;
- (void)globeButtonPressed:(id)a3 withEvent:(id)a4;
- (void)globeButtonPressed:(id)a3 withEvent:(id)a4 location:(CGPoint)a5;
- (void)keyboardButtonPressed:(id)a3;
- (void)layoutSubviews;
- (void)returnToKeyboard;
- (void)setRenderConfig:(id)a3;
- (void)setState:(int)a3;
- (void)updateLanguageLabel;
@end

@implementation UIDictationLayoutView

- (UIDictationLayoutView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = UIDictationLayoutView;
  v3 = [(UIDictationView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UILabel alloc];
    v5 = [(UILabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    languageLabel = v3->_languageLabel;
    v3->_languageLabel = v5;

    [(UILabel *)v3->_languageLabel setTextAlignment:1];
    [(UILabel *)v3->_languageLabel setLineBreakMode:0];
    v7 = [UIButton buttonWithType:0];
    keyboardButton = v3->_keyboardButton;
    v3->_keyboardButton = v7;

    [(UIControl *)v3->_keyboardButton addTarget:v3 action:sel_keyboardButtonPressed_ forControlEvents:64];
    v9 = v3->_keyboardButton;
    v10 = _UIImageWithName(@"dictation_keyboard.png");
    [(UIButton *)v9 setImage:v10 forState:0];

    [(UIButton *)v3->_keyboardButton setFrame:0.0, 0.0, 40.0, 40.0];
    v11 = [UIButton buttonWithType:0];
    globeButton = v3->_globeButton;
    v3->_globeButton = v11;

    [(UIControl *)v3->_globeButton addTarget:v3 action:sel_globeButtonPressed_withEvent_ forControlEvents:4095];
    v13 = v3->_globeButton;
    v14 = _UIImageWithName(@"dictation_global.png");
    [(UIButton *)v13 setImage:v14 forState:0];

    [(UIButton *)v3->_globeButton setFrame:0.0, 0.0, 40.0, 40.0];
    v15 = v3->_keyboardButton;
    v16 = [[UIPointerInteraction alloc] initWithDelegate:v3];
    [(UIView *)v15 addInteraction:v16];

    v17 = v3->_globeButton;
    v18 = [[UIPointerInteraction alloc] initWithDelegate:v3];
    [(UIView *)v17 addInteraction:v18];

    v19 = [UIButton buttonWithType:0];
    v20 = +[UIColor clearColor];
    [(UIView *)v19 setBackgroundColor:v20];

    [(UIView *)v19 addTarget:v3 action:sel_keyboardButtonPressed_ forControlEvents:64];
    waveTapEndpointButtonView = v3->_waveTapEndpointButtonView;
    v3->_waveTapEndpointButtonView = v19;
  }

  return v3;
}

- (void)keyboardButtonPressed:(id)a3
{
  v8 = a3;
  v4 = +[UIInputSwitcherView sharedInstance];
  if ([v4 isVisible])
  {
    [v4 hide];
  }

  else
  {
    if (self->_keyboardButton == v8)
    {
      v5 = 15;
    }

    else if (self->_waveTapEndpointButtonView == v8)
    {
      v5 = 14;
    }

    else
    {
      v5 = 0;
    }

    v6 = +[UIDictationController sharedInstance];
    [v6 setReasonType:v5];

    v7 = +[UIDictationController sharedInstance];
    [v7 stopDictation];
  }

  [(UIDictationLayoutView *)self returnToKeyboard];
}

- (void)updateLanguageLabel
{
  v31[2] = *MEMORY[0x1E69E9840];
  if (self->_blackTextColor)
  {
    [(UIDictationLayoutView *)self darkGrayColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;
  v4 = *off_1E70EC918;
  v30[0] = *off_1E70EC920;
  v30[1] = v4;
  v31[0] = v3;
  v5 = [off_1E70ECC18 systemFontOfSize:18.0];
  v31[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v7 = UIKeyboardLocalizedDictationDisplayName(self->_currentDictationLanguage);
  currentDictationLanguage = v7;
  if (!v7)
  {
    currentDictationLanguage = self->_currentDictationLanguage;
  }

  v9 = currentDictationLanguage;

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v6];
  [(UILabel *)self->_languageLabel setAttributedText:v10];

  [(UILabel *)self->_languageLabel setNumberOfLines:1];
  [(UIView *)self->_languageLabel sizeToFit];
  [(UIView *)self frame];
  v12 = v11;
  [(UIView *)self center];
  v14 = v12 - v13;
  [(UIView *)self center];
  if (v14 < v15)
  {
    v15 = v14;
  }

  v16 = v15 + v15;
  v17 = [(UIView *)self->_keyboardButton window];

  if (v17)
  {
    v16 = v16 + -120.0;
  }

  [(UIView *)self->_languageLabel frame];
  if (v16 < v18)
  {
    [(UILabel *)self->_languageLabel setNumberOfLines:2];
  }

  [(UIView *)self->_languageLabel frame];
  [(UILabel *)self->_languageLabel setBounds:0.0, 0.0, v16, v19 * [(UILabel *)self->_languageLabel numberOfLines]];
  v20 = [(UIView *)self->_keyboardButton superview];

  if (v20)
  {
    [(UIView *)self frame];
    v22 = v21 * 0.5;
    [(UIView *)self->_keyboardButton center];
    languageLabel = self->_languageLabel;
  }

  else
  {
    v25 = +[UIKeyboard activeKeyboard];
    v26 = [v25 interfaceOrientation] - 3;

    [(UIView *)self frame];
    v22 = v27 * 0.5;
    [(UIView *)self frame];
    languageLabel = self->_languageLabel;
    if (v26 > 1)
    {
      v29 = -10.0;
    }

    else
    {
      v29 = -20.0;
    }

    v23 = v28 + v29;
  }

  [(UIView *)languageLabel setCenter:v22, v23];
  [(UIView *)self addSubview:self->_languageLabel];
  [(UIView *)self->_languageLabel setAlpha:1.0];
}

- (void)globeButtonPressed:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v8 = a3;
  [v8 bounds];
  MidX = CGRectGetMidX(v10);
  [v8 bounds];
  [v8 convertPoint:0 toView:{MidX, CGRectGetMidY(v11) + -20.0}];
  [(UIDictationLayoutView *)self globeButtonPressed:v8 withEvent:v6 location:?];
}

- (void)globeButtonPressed:(id)a3 withEvent:(id)a4 location:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = +[UIKeyboardInputModeController sharedInputModeController];
  v12 = [v11 enabledDictationLanguages];

  if ([v12 count])
  {
    [(UIDictationView *)self setSwitchingLanguage:1];
    v13 = +[UIInputSwitcherView sharedInstance];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__UIDictationLayoutView_globeButtonPressed_withEvent_location___block_invoke;
    v17[3] = &unk_1E70F3590;
    v17[4] = self;
    v14 = [v13 buttonPressed:v9 withEvent:v10 location:1 isForDictation:v17 tapAction:{x, y}];
  }

  else
  {
    v15 = +[UIDictationController sharedInstance];
    [v15 setReasonType:16];

    v16 = +[UIDictationController sharedInstance];
    [v16 stopDictation];

    [(UIDictationLayoutView *)self returnToKeyboard];
  }
}

void __63__UIDictationLayoutView_globeButtonPressed_withEvent_location___block_invoke(uint64_t a1)
{
  v2 = +[UIDictationController sharedInstance];
  [v2 setReasonType:16];

  v3 = +[UIDictationController activeInstance];
  [v3 stopDictation];

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 enabledDictationLanguages];

  v6 = [v5 indexOfObject:*(*(a1 + 32) + 496)];
  if (v6 + 1 < [v5 count])
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectAtIndex:v7];
  v9 = *(a1 + 32);
  v10 = *(v9 + 496);
  *(v9 + 496) = v8;

  gDictationViewSharedInstance_block_invoke___touchUp = CFAbsoluteTimeGetCurrent();
  v11 = dispatch_time(0, 500000000);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__UIDictationLayoutView_globeButtonPressed_withEvent_location___block_invoke_2;
  v12[3] = &unk_1E70F32F0;
  v12[4] = *(a1 + 32);
  v12[5] = 0x3FE0000000000000;
  dispatch_after(v11, MEMORY[0x1E69E96A0], v12);
  [*(a1 + 32) updateLanguageLabel];
}

void __63__UIDictationLayoutView_globeButtonPressed_withEvent_location___block_invoke_2(uint64_t a1)
{
  if (CFAbsoluteTimeGetCurrent() - *&gDictationViewSharedInstance_block_invoke___touchUp >= *(a1 + 40))
  {
    v2 = +[UIDictationController sharedInstance];
    [v2 setReasonType:16];

    v3 = +[UIDictationController sharedInstance];
    [v3 switchToDictationLanguage:*(*(a1 + 32) + 496)];

    [*(a1 + 32) setSwitchingLanguage:0];
    v4 = *(a1 + 32);

    [v4 setNeedsLayout];
  }
}

- (void)setRenderConfig:(id)a3
{
  background = self->super._background;
  v4 = a3;
  v5 = [(UIKeyboardDicationBackground *)background gradient];
  [v5 setRenderConfig:v4];
}

- (void)setState:(int)a3
{
  v3 = *&a3;
  if (a3 == 2)
  {
    [(UIView *)self bounds];
    v9 = v8;
    SUICFlamesViewClass = getSUICFlamesViewClass();
    flamesView = self->super._flamesView;
    if (flamesView)
    {
      [(SUICFlamesView *)flamesView setFrame:0.0, 0.0, v9, 100.0];
    }

    else
    {
      v12 = [SUICFlamesViewClass alloc];
      v13 = [objc_opt_self() mainScreen];
      v14 = [v12 initWithFrame:v13 screen:2 fidelity:{0.0, 0.0, v9, 100.0}];
      v15 = self->super._flamesView;
      self->super._flamesView = v14;
    }

    [(SUICFlamesView *)self->super._flamesView setDelegate:self];
    [(SUICFlamesView *)self->super._flamesView setHidden:0];
    [(SUICFlamesView *)self->super._flamesView setMode:1];
    [(SUICFlamesView *)self->super._flamesView setState:1];
    if (self->_blackTextColor)
    {
      [(UIDictationLayoutView *)self darkGrayColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v16 = ;
    [(SUICFlamesView *)self->super._flamesView setDictationColor:v16];

    [(SUICFlamesView *)self->super._flamesView setNeedsLayout];
    [(UIView *)self addSubview:self->super._flamesView];
    [(UIView *)self setNeedsLayout];
  }

  else if (a3 == 1)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 _inheritedRenderConfig];
    [(UIDictationLayoutView *)self setRenderConfig:v6];

    v7 = [(UIKeyboardDicationBackground *)self->super._background gradient];
    [v7 startColorTransitionIn];
  }

  else
  {
    [(SUICFlamesView *)self->super._flamesView setHidden:1];
  }

  v17 = [(UIKeyboardDicationBackground *)self->super._background gradient];
  [v17 setNeedsLayout];

  v18.receiver = self;
  v18.super_class = UIDictationLayoutView;
  [(UIDictationView *)&v18 setState:v3];
}

- (void)layoutSubviews
{
  v60.receiver = self;
  v60.super_class = UIDictationLayoutView;
  [(UIView *)&v60 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  if (+[UIKeyboardImpl isSplit])
  {
    v7 = +[UIKeyboardImpl activeInstance];
    v8 = [v7 centerFilled];

    if ((v8 & 1) == 0)
    {
      v9 = +[UIKeyboardLayoutDictation activeInstance];
      [v9 splitLeftSize];
      v4 = v10;
    }
  }

  v11 = +[UIKeyboardImpl showsGlobeAndDictationKeysExternally];
  v12 = +[UIKeyboardInputMode dictationInputMode];
  v13 = [v12 triggeringTouch];
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11;
  }

  [(SUICFlamesView *)self->super._flamesView setBounds:0.0, 0.0, v4, 100.0];
  [(UIView *)self frame];
  if (v11)
  {
    v16 = v15 * 0.5;
  }

  else
  {
    v16 = v15 * 94.0 / 216.0;
  }

  [(SUICFlamesView *)self->super._flamesView setCenter:v4 * 0.5, v16];
  [(SUICFlamesView *)self->super._flamesView setNeedsLayout];
  v17 = +[UIKeyboardImpl activeInstance];
  v18 = [v17 _inheritedRenderConfig];
  self->_blackTextColor = [v18 lightKeyboard];

  v19 = +[UIDevice currentDevice];
  v20 = [v19 userInterfaceIdiom];

  [(UIView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UIView *)self bounds];
    v30 = v29 * 0.5;
    [(UIView *)self bounds];
    v57 = v6;
    v32 = v31 * 0.25;
    [(UIView *)self bounds];
    v22 = v22 + v33 * 0.25;
    v34 = v32 + v33 * 0.25;
    v6 = v57;
    v26 = v26 - v34;
    v24 = v24 + v30;
    v28 = v28 - (v30 + 0.0);
  }

  [(UIView *)self->_waveTapEndpointButtonView setFrame:v22, v24, v26, v28];
  [(UIView *)self addSubview:self->_waveTapEndpointButtonView];
  if (v4 * 0.25 <= 80.0)
  {
    v35 = v4 * 0.25;
  }

  else
  {
    v35 = 80.0;
  }

  if (v14)
  {
    [(UIView *)self->_globeButton removeFromSuperview];
    [(UIView *)self->_keyboardButton removeFromSuperview];
  }

  else
  {
    v36 = v6 - fmin(v6 * 0.25, 40.0);
    v37 = v6 * 0.5;
    v38 = +[UIKeyboardInputModeController sharedInputModeController];
    v39 = [v38 enabledDictationLanguages];
    v40 = [v39 count];

    if (v40 < 2)
    {
      [(UIView *)self->_globeButton removeFromSuperview];
      v41 = *MEMORY[0x1E695EFF8];
      v42 = *(MEMORY[0x1E695EFF8] + 8);
    }

    else
    {
      v41 = *MEMORY[0x1E695EFF8];
      v42 = *(MEMORY[0x1E695EFF8] + 8);
      [(UIButton *)self->_globeButton setBounds:*MEMORY[0x1E695EFF8], v42, v35, v37];
      [(UIView *)self->_globeButton setCenter:40.0, v36];
      globeButton = self->_globeButton;
      if (self->_blackTextColor)
      {
        v44 = @"dictation_global_dark.png";
      }

      else
      {
        v44 = @"dictation_global.png";
      }

      v45 = _UIImageWithName(v44);
      [(UIButton *)globeButton setImage:v45 forState:0];

      [(UIView *)self addSubview:self->_globeButton];
    }

    [(UIButton *)self->_keyboardButton setBounds:v41, v42, v35, v37];
    v46 = [(UIView *)self->_globeButton superview];

    v47 = v4 + -40.0;
    if (!v46)
    {
      v47 = v4 * 0.5;
    }

    [(UIView *)self->_keyboardButton setCenter:v47, v36];
    keyboardButton = self->_keyboardButton;
    if (self->_blackTextColor)
    {
      v49 = @"dictation_keyboard_dark.png";
    }

    else
    {
      v49 = @"dictation_keyboard.png";
    }

    v50 = _UIImageWithName(v49);
    [(UIButton *)keyboardButton setImage:v50 forState:0];

    [(UIView *)self addSubview:self->_keyboardButton];
  }

  if ([(UIDictationView *)self showLanguageLabel])
  {
    [(UIDictationView *)self setShowLanguageLabel:0];
    v51 = +[UIKeyboardImpl activeInstance];
    v52 = [v51 activeDictationLanguage];
    currentDictationLanguage = self->_currentDictationLanguage;
    self->_currentDictationLanguage = v52;

    [(UIView *)self->_languageLabel alpha];
    if (v54 == 0.0)
    {
      v55 = 0.75;
    }

    else
    {
      v55 = 0.25;
    }

    if (self->_currentDictationLanguage)
    {
      v56 = [(UIView *)self->_globeButton superview];

      if (!v56)
      {
        [(UIView *)self->_keyboardButton setAlpha:0.0];
      }

      [(UIDictationLayoutView *)self updateLanguageLabel];
    }

    v58[4] = self;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __39__UIDictationLayoutView_layoutSubviews__block_invoke;
    v59[3] = &unk_1E70F3590;
    v59[4] = self;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __39__UIDictationLayoutView_layoutSubviews__block_invoke_2;
    v58[3] = &unk_1E70F5AC0;
    [UIView animateWithDuration:0 delay:v59 options:v58 animations:0.25 completion:v55];
  }

  [(UIDictationView *)self removeBackgroundView];
}

void __39__UIDictationLayoutView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 488) setAlpha:0.0];
  v2 = [*(*(a1 + 32) + 472) superview];

  if (!v2)
  {
    v3 = *(*(a1 + 32) + 480);

    [v3 setAlpha:1.0];
  }
}

- (void)finishReturnToKeyboard
{
  [(SUICFlamesView *)self->super._flamesView removeFromSuperview];
  [(SUICFlamesView *)self->super._flamesView setDelegate:0];
  flamesView = self->super._flamesView;
  self->super._flamesView = 0;

  v4.receiver = self;
  v4.super_class = UIDictationLayoutView;
  [(UIDictationView *)&v4 finishReturnToKeyboard];
}

- (void)returnToKeyboard
{
  if (self->super._background)
  {
    v2 = [(UIKeyboardDicationBackground *)self->super._background gradient];
    [v2 startColorTransitionOut];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = UIDictationLayoutView;
    [(UIDictationView *)&v3 returnToKeyboard];
  }
}

- (BOOL)isShowing
{
  v2 = +[UIKeyboardImpl sharedInstance];
  if ([v2 isUsingDictationLayout])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[UIKeyboardImpl sharedInstance];
    v3 = [v4 isDictationPopoverPresented];
  }

  return v3;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [a3 view];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [v4 imageView];
  if (!v5)
  {
LABEL_11:
    v25 = 0;
    goto LABEL_12;
  }

  v6 = [[UITargetedPreview alloc] initWithView:v5];
  [v4 bounds];
  v8 = v7;
  v10 = v9;
  [v5 frame];
  v12 = v11;
  v14 = v13;
  [v5 bounds];
  v17 = v10 - v16;
  v18 = 0.0;
  if (v10 - v16 < 0.0)
  {
    v17 = 0.0;
  }

  if (v8 - v15 >= 0.0)
  {
    v18 = v8 - v15;
  }

  if (v17 >= v18)
  {
    v17 = v18;
  }

  v19 = v12 - v17 * 0.5;
  v20 = v14 - v17 * 0.5;
  v21 = v15 + v17;
  v22 = v16 + v17;
  v23 = [UIPointerEffect effectWithPreview:v6];
  v24 = [UIPointerShape shapeWithRoundedRect:v19, v20, v21, v22];
  v25 = [UIPointerStyle styleWithEffect:v23 shape:v24];

LABEL_12:
  v26 = v25;

  return v25;
}

@end