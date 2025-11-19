@interface UIDictationPopoverView
+ (CGSize)viewSize;
- (CGSize)intrinsicContentSize;
- (UIDictationPopoverView)initWithFrame:(CGRect)a3;
- (id)buttonImageNamed:(id)a3;
- (id)languageButtons:(BOOL)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)cancelButtonPressed:(id)a3;
- (void)centerButtonPressed:(id)a3;
- (void)clearLanguageButtons;
- (void)keyboardButtonPressed:(id)a3;
- (void)languageButtonPressed:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)returnToKeyboard;
- (void)setState:(int)a3;
- (void)startButtonPressed:(id)a3;
- (void)stopButtonPressed:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIDictationPopoverView

+ (CGSize)viewSize
{
  v2 = 172.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_class();

  [v2 viewSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)buttonImageNamed:(id)a3
{
  v3 = [UIImage systemImageNamed:a3];
  v4 = +[UIColor systemGrayColor];
  v5 = [v3 imageWithTintColor:v4 renderingMode:1];

  return v5;
}

- (UIDictationPopoverView)initWithFrame:(CGRect)a3
{
  v44.receiver = self;
  v44.super_class = UIDictationPopoverView;
  v3 = [(UIDictationView *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIButton buttonWithType:0];
    cancelButton = v3->_cancelButton;
    v3->_cancelButton = v4;

    [(UIControl *)v3->_cancelButton addTarget:v3 action:sel_cancelButtonPressed_ forControlEvents:64];
    v6 = v3->_cancelButton;
    v7 = [(UIDictationPopoverView *)v3 buttonImageNamed:@"xmark.square.fill"];
    [(UIButton *)v6 setImage:v7 forState:0];

    [(UIView *)v3 addSubview:v3->_cancelButton];
    [(UIButton *)v3->_cancelButton setFrame:130.0, 0.0, 42.0, 40.0];
    v8 = [UIButton buttonWithType:0];
    centerButton = v3->_centerButton;
    v3->_centerButton = v8;

    [(UIControl *)v3->_centerButton addTarget:v3 action:sel_centerButtonPressed_ forControlEvents:64];
    [(UIView *)v3 addSubview:v3->_centerButton];
    v10 = [(UIDictationPopoverView *)v3 buttonImageNamed:@"mic.slash"];
    stopDictationImage = v3->_stopDictationImage;
    v3->_stopDictationImage = v10;

    [(UIButton *)v3->_centerButton setFrame:0.0, 0.0, 114.0, 40.0];
    [(UIView *)v3->_centerButton setAlpha:0.3];
    v12 = [UIButton buttonWithType:0];
    languageButton = v3->_languageButton;
    v3->_languageButton = v12;

    [(UIControl *)v3->_languageButton addTarget:v3 action:sel_languageButtonPressed_withEvent_ forControlEvents:64];
    [(UIView *)v3 addSubview:v3->_languageButton];
    v14 = +[UIColor systemGrayColor];
    [(UIButton *)v3->_languageButton setTintColor:v14];

    [(UIButton *)v3->_languageButton setFrame:0.0, 0.0, 42.0, 40.0];
    v15 = [UIButton buttonWithType:0];
    startButton = v3->_startButton;
    v3->_startButton = v15;

    [(UIControl *)v3->_startButton addTarget:v3 action:sel_startButtonPressed_ forControlEvents:64];
    v17 = v3->_startButton;
    v18 = [(UIDictationPopoverView *)v3 buttonImageNamed:@"mic"];
    [(UIButton *)v17 setImage:v18 forState:0];

    [(UIView *)v3 addSubview:v3->_startButton];
    [(UIView *)v3->_cancelButton bounds];
    [(UIButton *)v3->_startButton setFrame:?];
    v19 = [UIButton buttonWithType:0];
    stopButton = v3->_stopButton;
    v3->_stopButton = v19;

    [(UIControl *)v3->_stopButton addTarget:v3 action:sel_stopButtonPressed_ forControlEvents:64];
    v21 = v3->_stopButton;
    v22 = [(UIDictationPopoverView *)v3 buttonImageNamed:@"mic.slash"];
    [(UIButton *)v21 setImage:v22 forState:0];

    [(UIView *)v3 addSubview:v3->_stopButton];
    [(UIView *)v3->_cancelButton bounds];
    [(UIButton *)v3->_stopButton setFrame:?];
    v23 = [UIButton buttonWithType:0];
    keyboardButton = v3->_keyboardButton;
    v3->_keyboardButton = v23;

    [(UIControl *)v3->_keyboardButton addTarget:v3 action:sel_keyboardButtonPressed_ forControlEvents:64];
    v25 = [(UIDictationPopoverView *)v3 buttonImageNamed:@"keyboard"];
    showKeyboardButtonImage = v3->_showKeyboardButtonImage;
    v3->_showKeyboardButtonImage = v25;

    v27 = [(UIDictationPopoverView *)v3 buttonImageNamed:@"keyboard.chevron.compact.down"];
    hideKeyboardButtonImage = v3->_hideKeyboardButtonImage;
    v3->_hideKeyboardButtonImage = v27;

    [(UIButton *)v3->_keyboardButton setImage:v3->_hideKeyboardButtonImage forState:0];
    [(UIView *)v3 addSubview:v3->_keyboardButton];
    [(UIView *)v3->_cancelButton bounds];
    [(UIButton *)v3->_keyboardButton setFrame:?];
    [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [MEMORY[0x1E695DF70] array];
    languageButtons = v3->_languageButtons;
    v3->_languageButtons = v29;

    [(UIDictationView *)v3 removeBackgroundView];
    v31 = v3->_cancelButton;
    v32 = [[UIPointerInteraction alloc] initWithDelegate:v3];
    [(UIView *)v31 addInteraction:v32];

    v33 = v3->_languageButton;
    v34 = [[UIPointerInteraction alloc] initWithDelegate:v3];
    [(UIView *)v33 addInteraction:v34];

    v35 = v3->_centerButton;
    v36 = [[UIPointerInteraction alloc] initWithDelegate:v3];
    [(UIView *)v35 addInteraction:v36];

    v37 = v3->_startButton;
    v38 = [[UIPointerInteraction alloc] initWithDelegate:v3];
    [(UIView *)v37 addInteraction:v38];

    v39 = v3->_stopButton;
    v40 = [[UIPointerInteraction alloc] initWithDelegate:v3];
    [(UIView *)v39 addInteraction:v40];

    v41 = v3->_keyboardButton;
    v42 = [[UIPointerInteraction alloc] initWithDelegate:v3];
    [(UIView *)v41 addInteraction:v42];
  }

  return v3;
}

- (void)keyboardButtonPressed:(id)a3
{
  self->_popoverPage = 1;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 containerRootController];
  v6 = [v5 placement];
  v7 = [v6 showsKeyboard];

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 setKeyboardMinimizedByDictation:v7];

  [(UIView *)self setNeedsLayout];
}

- (void)startButtonPressed:(id)a3
{
  self->_popoverPage = 0;
  v4 = +[UIDictationController sharedInstance];
  [v4 startDictation];

  [(UIDictationView *)self setSwitchingLanguage:0];

  [(UIView *)self setNeedsLayout];
}

- (void)stopButtonPressed:(id)a3
{
  self->_popoverPage = 1;
  [(UIDictationView *)self setSwitchingLanguage:1];
  v4 = +[UIDictationController sharedInstance];
  [v4 stopAndCancelDictationWithReasonType:15];

  [(UIView *)self setNeedsLayout];
}

- (void)centerButtonPressed:(id)a3
{
  v7 = a3;
  if (+[UIDictationController isRunning])
  {
    if (!self->_popoverPage)
    {
      v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v5 = [v4 preferencesActions];
      v6 = [v5 BOOLForPreferenceKey:@"ShowKeyboardButtonOnDictationPopover"];

      if (v6)
      {
        [(UIDictationPopoverView *)self stopButtonPressed:v7];
      }

      else
      {
        [(UIDictationPopoverView *)self cancelButtonPressed:v7];
      }
    }
  }

  else
  {
    [(UIDictationPopoverView *)self startButtonPressed:v7];
  }
}

- (void)cancelButtonPressed:(id)a3
{
  self->_popoverPage = 0;
  [(UIDictationView *)self setSwitchingLanguage:0];
  v3 = +[UIDictationController sharedInstance];
  [v3 setReasonType:29];

  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 dismissDictationPopover];

  v5 = +[UIDictationController sharedInstance];
  [v5 resignFirstResponderWhenIdleIfNeeded];
}

- (void)clearLanguageButtons
{
  if (self->_languageView)
  {
    v3 = [(UIView *)self->_cancelButton superview];

    if (v3 != self)
    {
      [(UIView *)self addSubview:self->_cancelButton];
      [(UIView *)self bounds];
      v5 = v4;
      [(UIView *)self bounds];
      v7 = v5 - v6;
      [(UIView *)self->_cancelButton frame];
      [(UIButton *)self->_cancelButton setFrame:v7, 0.0];
    }

    [(NSMutableArray *)self->_languageButtons makeObjectsPerformSelector:sel_removeFromSuperview];
    [(NSMutableArray *)self->_languageButtons removeAllObjects];
    [(UIView *)self->_languageView removeFromSuperview];
    languageView = self->_languageView;
    self->_languageView = 0;
  }
}

- (id)languageButtons:(BOOL)a3
{
  v25 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v4 = [UIView alloc];
  v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = +[UIKeyboardInputMode dictationInputMode];
  v7 = [v6 currentInputModeForDictation];
  v27 = [v7 dictationLanguage];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  v9 = [v8 enabledDictationLanguages];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [UIButton buttonWithType:0];
        v17 = +[UIKeyboardInputMode dictationInputMode];
        v18 = [v17 indicatorIconForDictationLanguage:v15 scaleFactor:1.0];
        [v16 setImage:v18 forState:0];

        if ([v15 isEqualToString:v27])
        {
          +[UIColor blueColor];
        }

        else
        {
          +[UIColor systemGrayColor];
        }
        v19 = ;
        [v16 setTintColor:v19];

        [v16 addTarget:self action:sel_languageButtonPressed_withEvent_ forControlEvents:64];
        [(UIView *)v5 addSubview:v16];
        [v16 setFrame:{v13, 0.0, 42.0, 40.0}];
        v13 = v13 + 31.0;
        [(NSMutableArray *)self->_languageButtons addObject:v16];
        v20 = [[UIPointerInteraction alloc] initWithDelegate:self];
        [v16 addInteraction:v20];
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  if (v25)
  {
    [(UIView *)v5 addSubview:self->_cancelButton];
    [(UIView *)self->_cancelButton frame];
    v22 = v21;
    [(UIView *)self->_cancelButton frame];
    [(UIButton *)self->_cancelButton setFrame:v13, 0.0, v22];
    [(UIView *)self->_cancelButton bounds];
    v13 = v13 + v23;
  }

  [(UIView *)self bounds];
  [(UIView *)v5 setFrame:0.0, 0.0, v13];

  return v5;
}

- (void)languageButtonPressed:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = +[UIDictationController sharedInstance];
  [v6 setReasonType:28];

  if ([(UIButton *)self->_languageButton isEqual:v5])
  {
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v7 enabledDictationLanguages];
    v9 = [v8 count];

    if (v9 < 5)
    {
      v22 = [(UIDictationPopoverView *)self languageButtons:0];
      languageView = self->_languageView;
      self->_languageView = v22;
    }

    else
    {
      v10 = [(UIDictationPopoverView *)self languageButtons:1];
      v11 = [UIScrollView alloc];
      [(UIView *)self bounds];
      v12 = [(UIScrollView *)v11 initWithFrame:?];
      [v10 frame];
      [(UIScrollView *)v12 setContentSize:v13, v14];
      [(UIView *)v12 addSubview:v10];
      objc_storeStrong(&self->_languageView, v12);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __58__UIDictationPopoverView_languageButtonPressed_withEvent___block_invoke;
      v25[3] = &unk_1E70F3590;
      v26 = v12;
      v15 = v12;
      [UIView animateWithDuration:0 delay:v25 options:0 animations:0.25 completion:0.25];
    }

    [(UIView *)self addSubview:self->_languageView];
    self->_popoverPage = 2;
    [(UIDictationView *)self setSwitchingLanguage:1];
    v24 = +[UIDictationController sharedInstance];
    [v24 stopDictation];

    [(UIView *)self setNeedsLayout];
  }

  else
  {
    v16 = +[UIDictationController sharedInstance];
    v17 = [v16 state];

    if (!v17)
    {
      self->_popoverPage = 0;
      v18 = +[UIKeyboardInputModeController sharedInputModeController];
      v19 = [v18 enabledDictationLanguages];
      v20 = [v19 objectAtIndex:{-[NSMutableArray indexOfObject:](self->_languageButtons, "indexOfObject:", v5)}];

      [(UIDictationPopoverView *)self clearLanguageButtons];
      v21 = +[UIDictationController sharedInstance];
      [v21 switchToDictationLanguage:v20];

      [(UIDictationView *)self setSwitchingLanguage:0];
    }
  }
}

uint64_t __58__UIDictationPopoverView_languageButtonPressed_withEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 contentSize];
  v4 = v3;
  [*(a1 + 32) bounds];

  return [v2 setContentOffset:{v4 - v5, 0.0}];
}

- (void)setState:(int)a3
{
  v3 = *&a3;
  if (a3 == 2)
  {
    if (!self->super._flamesView)
    {
      v5 = objc_alloc(getSUICFlamesViewClass());
      [(UIView *)self bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [objc_opt_self() mainScreen];
      v15 = [v5 initWithFrame:v14 screen:2 fidelity:{v7, v9, v11, v13}];
      flamesView = self->super._flamesView;
      self->super._flamesView = v15;

      [(SUICFlamesView *)self->super._flamesView setDelegate:self];
      [(SUICFlamesView *)self->super._flamesView setMode:1];
      [(UIView *)self insertSubview:self->super._flamesView belowSubview:self->_centerButton];
      [(SUICFlamesView *)self->super._flamesView setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = [(SUICFlamesView *)self->super._flamesView leadingAnchor];
      v18 = [(UIView *)self->_centerButton leadingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      [v19 setActive:1];

      v20 = [(SUICFlamesView *)self->super._flamesView trailingAnchor];
      v21 = [(UIView *)self->_centerButton trailingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      [v22 setActive:1];

      v23 = [(SUICFlamesView *)self->super._flamesView leadingAnchor];
      v24 = [(UIView *)self->_centerButton leadingAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      [v25 setActive:1];

      v26 = [(SUICFlamesView *)self->super._flamesView topAnchor];
      v27 = [(UIView *)self->_centerButton topAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      [v28 setActive:1];

      v29 = [(SUICFlamesView *)self->super._flamesView bottomAnchor];
      v30 = [(UIView *)self->_centerButton bottomAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      [v31 setActive:1];
    }

    v32 = +[UIKeyboard isKeyboardProcess];
    v33 = +[UIKeyboardImpl activeInstance];
    v34 = v33;
    if (v32)
    {
      [v33 remoteTextInputPartner];
    }

    else
    {
      [v33 textInputTraits];
    }
    v35 = ;
    v36 = [v35 insertionPointColor];

    if (v36)
    {
      [(SUICFlamesView *)self->super._flamesView setDictationColor:v36];
    }

    else
    {
      v37 = +[UIColor blueColor];
      [(SUICFlamesView *)self->super._flamesView setDictationColor:v37];
    }

    [(SUICFlamesView *)self->super._flamesView setHidden:0];
    [(SUICFlamesView *)self->super._flamesView setState:1];
    [(SUICFlamesView *)self->super._flamesView setNeedsLayout];
    [(UIView *)self setNeedsLayout];
  }

  else if (a3 == 1)
  {
    [(UIDictationPopoverView *)self clearLanguageButtons];
    self->_popoverPage = 0;
  }

  else
  {
    [(SUICFlamesView *)self->super._flamesView setHidden:1];
  }

  v38.receiver = self;
  v38.super_class = UIDictationPopoverView;
  [(UIDictationView *)&v38 setState:v3];
}

- (void)layoutSubviews
{
  v49[3] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = UIDictationPopoverView;
  [(UIView *)&v48 layoutSubviews];
  startButton = self->_startButton;
  v49[0] = self->_stopButton;
  v49[1] = startButton;
  v49[2] = self->_keyboardButton;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_381_0];

  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v6 = [v5 preferencesActions];
  v7 = [v6 BOOLForPreferenceKey:@"ShowKeyboardButtonOnDictationPopover"];

  [(UIView *)self->_centerButton setHidden:0];
  [(UIView *)self->_languageButton bounds];
  v9 = v8;
  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  [objc_opt_class() viewSize];
  [(UIView *)self setFrame:v11, v13, v14, v15];
  v16 = +[UIKeyboardInputModeController sharedInputModeController];
  v17 = [v16 enabledDictationLanguages];
  -[UIView setHidden:](self->_languageButton, "setHidden:", [v17 count] < 2);

  popoverPage = self->_popoverPage;
  if (popoverPage == 1)
  {
    [(UIView *)self->_startButton setHidden:0];
    v21 = +[UIKeyboardImpl activeInstance];
    v22 = ([v21 hardwareKeyboardAttached] ^ 1) & v7;

    if (v22 == 1)
    {
      [(UIView *)self->_keyboardButton setHidden:0];
      v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v24 = [v23 containerRootController];
      v25 = [v24 placement];
      v26 = [v25 showsKeyboard];

      v27 = 22;
      if (v26)
      {
        v27 = 23;
      }

      [(UIButton *)self->_keyboardButton setImage:*(&self->super.super.super.super.isa + OBJC_IVAR___UIKeyboardDicationBackground__gradient[v27]) forState:0];
    }

    v28 = [(UIView *)self->_languageButton isHidden];
    v29 = [(UIView *)self->_keyboardButton isHidden];
    v30 = v29;
    if (v28)
    {
      [(UIView *)self->_languageButton center];
      if (v30)
      {
        [(UIView *)self->_startButton setCenter:?];
        v31 = 0;
        v9 = 0.0;
        goto LABEL_24;
      }

      [(UIView *)self->_keyboardButton setCenter:?];
    }

    else if (!v29)
    {
      [(UIView *)self bounds];
      v33 = v32;
      [(UIView *)self bounds];
      v35 = (v33 - v34) / 3.0;
      [(UIView *)self->_languageButton center];
      v37 = v36 + v35;
      [(UIView *)self->_keyboardButton center];
      [(UIView *)self->_keyboardButton setCenter:v37];
      [(UIView *)self->_keyboardButton center];
      v39 = v35 + v38;
LABEL_22:
      [(UIView *)self->_startButton center];
      [(UIView *)self->_startButton setCenter:v39];
      goto LABEL_23;
    }

    [(UIView *)self center];
    v39 = v46;
    goto LABEL_22;
  }

  if (popoverPage == 2)
  {
    [(UIView *)self->_centerButton setHidden:1];
    languageButton = self->_languageButton;
    v20 = 1;
LABEL_4:
    [(UIView *)languageButton setHidden:v20];
LABEL_23:
    v31 = 0;
    goto LABEL_24;
  }

  if ([(UIView *)self->_languageButton isHidden])
  {
    if (!v7)
    {
      v31 = 0;
      v9 = 16.0;
      goto LABEL_24;
    }

    languageButton = self->_stopButton;
    v20 = 0;
    goto LABEL_4;
  }

  v40 = +[UIKeyboardImpl activeInstance];
  v41 = [v40 activeDictationLanguage];

  v42 = self->_languageButton;
  v43 = +[UIKeyboardInputMode dictationInputMode];
  v44 = [v43 indicatorIconForDictationLanguage:v41 scaleFactor:1.0];
  [(UIButton *)v42 setImage:v44 forState:0];

  v31 = 0;
  if (v7)
  {
    v31 = self->_stopDictationImage;
  }

  [(UIView *)self->_languageButton bounds];
  v9 = v45;

LABEL_24:
  [(UIButton *)self->_centerButton setImage:v31 forState:0];
  [(UIView *)self->_cancelButton frame];
  [(UIButton *)self->_centerButton setFrame:v9, 0.0, v47 - v9, 40.0];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(UIDictationView *)self setSwitchingLanguage:0];
    [(SUICFlamesView *)self->super._flamesView removeFromSuperview];
    [(SUICFlamesView *)self->super._flamesView setDelegate:0];
    flamesView = self->super._flamesView;
    self->super._flamesView = 0;

    goto LABEL_12;
  }

  if ([(NSMutableArray *)self->_languageButtons count])
  {
    [(UIDictationView *)self setSwitchingLanguage:1];
    v5 = 2;
  }

  else if (+[UIDictationController isRunning])
  {
    v5 = 0;
  }

  else
  {
    v7 = +[UIKeyboardImpl sharedInstance];
    v8 = [v7 isDictationPopoverPresented];

    if (!v8)
    {
      goto LABEL_10;
    }

    v5 = 1;
  }

  self->_popoverPage = v5;
LABEL_10:
  v9 = +[UIDictationController activeInstance];
  v10 = [v9 state];

  if (v10 == 2)
  {
    [(UIDictationPopoverView *)self setState:2];
  }

LABEL_12:
  v11.receiver = self;
  v11.super_class = UIDictationPopoverView;
  [(UIView *)&v11 willMoveToWindow:v4];
}

- (void)returnToKeyboard
{
  [(UIDictationPopoverView *)self willMoveToWindow:0];
  if (self->_popoverPage != 1)
  {
    v3 = +[UIDictationController sharedInstance];
    v4 = [v3 shouldSuppressSoftwareKeyboard];

    if (v4)
    {
      v5 = +[UIDictationController sharedInstance];
      [v5 resignFirstResponderWhenIdleIfNeeded];
    }
  }

  v6.receiver = self;
  v6.super_class = UIDictationPopoverView;
  [(UIDictationView *)&v6 returnToKeyboard];
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