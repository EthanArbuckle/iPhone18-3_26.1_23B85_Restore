@interface TVRUIHintsUserIntentButtonView
- (TVRUIHintsUserIntentButtonView)initWithPresentation:(unint64_t)presentation styleProvider:(id)provider buttonEdge:(unsigned int)edge;
- (void)_setupConstraintsForButtonEdge:(unsigned int)edge buttonWidth:(double)width;
- (void)_updateViewForButtonEdge:(unsigned int)edge;
- (void)setPresentation:(unint64_t)presentation;
@end

@implementation TVRUIHintsUserIntentButtonView

- (TVRUIHintsUserIntentButtonView)initWithPresentation:(unint64_t)presentation styleProvider:(id)provider buttonEdge:(unsigned int)edge
{
  v5 = *&edge;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = TVRUIHintsUserIntentButtonView;
  v10 = [(TVRUIHintsUserIntentButtonView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_styleProvider, provider);
    v11->_presentation = presentation;
    v11->_buttonEdge = v5;
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(TVRUIHintsUserIntentButtonView *)v11 setButtonOutline:v12];

    buttonOutline = [(TVRUIHintsUserIntentButtonView *)v11 buttonOutline];
    [buttonOutline setTranslatesAutoresizingMaskIntoConstraints:0];

    primaryTintColor = [(TVRUIHintsStyleProvider *)v11->_styleProvider primaryTintColor];
    buttonOutline2 = [(TVRUIHintsUserIntentButtonView *)v11 buttonOutline];
    [buttonOutline2 setBackgroundColor:primaryTintColor];

    buttonOutline3 = [(TVRUIHintsUserIntentButtonView *)v11 buttonOutline];
    [(TVRUIHintsUserIntentButtonView *)v11 addSubview:buttonOutline3];

    siriImage = [(TVRUIHintsStyleProvider *)v11->_styleProvider siriImage];
    v18 = [[TVRUIHintsGlyphView alloc] initWithImage:siriImage styleProvider:v11->_styleProvider];
    glyphView = v11->_glyphView;
    v11->_glyphView = v18;

    [(TVRUIHintsGlyphView *)v11->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TVRUIHintsUserIntentButtonView *)v11 addSubview:v11->_glyphView];
    [(TVRUIHintsUserIntentButtonView *)v11 _updateViewForButtonEdge:v5];
  }

  return v11;
}

- (void)setPresentation:(unint64_t)presentation
{
  if (self->_presentation != presentation)
  {
    self->_presentation = presentation;
    buttonEdge = [(TVRUIHintsUserIntentButtonView *)self buttonEdge];

    [(TVRUIHintsUserIntentButtonView *)self _updateViewForButtonEdge:buttonEdge];
  }
}

- (void)_updateViewForButtonEdge:(unsigned int)edge
{
  v3 = *&edge;
  [(TVRUIHintsStyleProvider *)self->_styleProvider buttonOutlineWidth];
  v6 = v5;
  presentation = self->_presentation;
  glyphView = [(TVRUIHintsUserIntentButtonView *)self glyphView];
  styleProvider = glyphView;
  if (presentation == 1)
  {
    [glyphView setAlpha:0.0];

    styleProvider = [(TVRUIHintsUserIntentButtonView *)self styleProvider];
    if ([styleProvider supportsSBHints])
    {
      styleProvider2 = [(TVRUIHintsUserIntentButtonView *)self styleProvider];
      [styleProvider2 hintButtonWidth];
      v6 = v11;
    }
  }

  else
  {
    [glyphView setAlpha:1.0];
  }

  buttonOutline = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
  layer = [buttonOutline layer];
  [layer setCornerRadius:v6];

  [(TVRUIHintsUserIntentButtonView *)self _setupConstraintsForButtonEdge:v3 buttonWidth:v6];
}

- (void)_setupConstraintsForButtonEdge:(unsigned int)edge buttonWidth:(double)width
{
  buttonConstraints = [(TVRUIHintsUserIntentButtonView *)self buttonConstraints];

  v8 = 0x277CCA000uLL;
  if (buttonConstraints)
  {
    v9 = MEMORY[0x277CCAAD0];
    buttonConstraints2 = [(TVRUIHintsUserIntentButtonView *)self buttonConstraints];
    [v9 deactivateConstraints:buttonConstraints2];

    [(TVRUIHintsUserIntentButtonView *)self setButtonConstraints:0];
  }

  if (edge == 2)
  {
    v52 = MEMORY[0x277CBEA60];
    buttonOutline = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    widthAnchor = [buttonOutline widthAnchor];
    width = [widthAnchor constraintEqualToConstant:width + width];
    buttonOutline2 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    rightAnchor = [buttonOutline2 rightAnchor];
    rightAnchor2 = [(TVRUIHintsUserIntentButtonView *)self rightAnchor];
    v70 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:width];
    buttonOutline3 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    topAnchor = [buttonOutline3 topAnchor];
    topAnchor2 = [(TVRUIHintsUserIntentButtonView *)self topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
    buttonOutline4 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    bottomAnchor = [buttonOutline4 bottomAnchor];
    bottomAnchor2 = [(TVRUIHintsUserIntentButtonView *)self bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    glyphView = [(TVRUIHintsUserIntentButtonView *)self glyphView];
    centerYAnchor = [glyphView centerYAnchor];
    centerYAnchor2 = [(TVRUIHintsUserIntentButtonView *)self centerYAnchor];
    v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    glyphView2 = [(TVRUIHintsUserIntentButtonView *)self glyphView];
    rightAnchor3 = [glyphView2 rightAnchor];
    buttonOutline5 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    leftAnchor = [buttonOutline5 leftAnchor];
    [(TVRUIHintsStyleProvider *)self->_styleProvider imageMargin];
    v30 = [rightAnchor3 constraintEqualToAnchor:leftAnchor constant:-v29];
    v31 = [v52 arrayWithObjects:{width, v70, v38, v22, v24, v30, 0}];
    buttonConstraints = self->_buttonConstraints;
    self->_buttonConstraints = v31;

    v8 = 0x277CCA000;
    v21 = buttonOutline;
    goto LABEL_7;
  }

  if (edge == 1)
  {
    v49 = MEMORY[0x277CBEA60];
    buttonOutline6 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    heightAnchor = [buttonOutline6 heightAnchor];
    width2 = [heightAnchor constraintEqualToConstant:width + width];
    buttonOutline7 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    leftAnchor2 = [buttonOutline7 leftAnchor];
    leftAnchor3 = [(TVRUIHintsUserIntentButtonView *)self leftAnchor];
    v67 = [leftAnchor2 constraintEqualToAnchor:leftAnchor3];
    buttonOutline8 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    rightAnchor4 = [buttonOutline8 rightAnchor];
    rightAnchor5 = [(TVRUIHintsUserIntentButtonView *)self rightAnchor];
    v37 = [rightAnchor4 constraintEqualToAnchor:rightAnchor5];
    buttonOutline9 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    bottomAnchor3 = [buttonOutline9 bottomAnchor];
    bottomAnchor4 = [(TVRUIHintsUserIntentButtonView *)self bottomAnchor];
    v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:width];
    glyphView3 = [(TVRUIHintsUserIntentButtonView *)self glyphView];
    centerXAnchor = [glyphView3 centerXAnchor];
    centerXAnchor2 = [(TVRUIHintsUserIntentButtonView *)self centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    glyphView4 = [(TVRUIHintsUserIntentButtonView *)self glyphView];
    topAnchor3 = [glyphView4 topAnchor];
    buttonOutline10 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    bottomAnchor5 = [buttonOutline10 bottomAnchor];
    [(TVRUIHintsStyleProvider *)self->_styleProvider imageMargin];
    v18 = [topAnchor3 constraintEqualToAnchor:bottomAnchor5 constant:?];
    v19 = [v49 arrayWithObjects:{width2, v67, v37, v11, v13, v18, 0}];
    v20 = self->_buttonConstraints;
    self->_buttonConstraints = v19;

    v8 = 0x277CCA000;
    v21 = buttonOutline6;
LABEL_7:

    goto LABEL_11;
  }

  v33 = _TVRUIHintsLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    [TVRUIHintsUserIntentButtonView _setupConstraintsForButtonEdge:v33 buttonWidth:?];
  }

LABEL_11:
  buttonConstraints3 = [(TVRUIHintsUserIntentButtonView *)self buttonConstraints];

  if (buttonConstraints3)
  {
    v35 = *(v8 + 2768);
    buttonConstraints4 = [(TVRUIHintsUserIntentButtonView *)self buttonConstraints];
    [v35 activateConstraints:buttonConstraints4];
  }
}

@end