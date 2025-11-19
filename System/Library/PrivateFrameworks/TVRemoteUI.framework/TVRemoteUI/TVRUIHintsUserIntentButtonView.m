@interface TVRUIHintsUserIntentButtonView
- (TVRUIHintsUserIntentButtonView)initWithPresentation:(unint64_t)a3 styleProvider:(id)a4 buttonEdge:(unsigned int)a5;
- (void)_setupConstraintsForButtonEdge:(unsigned int)a3 buttonWidth:(double)a4;
- (void)_updateViewForButtonEdge:(unsigned int)a3;
- (void)setPresentation:(unint64_t)a3;
@end

@implementation TVRUIHintsUserIntentButtonView

- (TVRUIHintsUserIntentButtonView)initWithPresentation:(unint64_t)a3 styleProvider:(id)a4 buttonEdge:(unsigned int)a5
{
  v5 = *&a5;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = TVRUIHintsUserIntentButtonView;
  v10 = [(TVRUIHintsUserIntentButtonView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_styleProvider, a4);
    v11->_presentation = a3;
    v11->_buttonEdge = v5;
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(TVRUIHintsUserIntentButtonView *)v11 setButtonOutline:v12];

    v13 = [(TVRUIHintsUserIntentButtonView *)v11 buttonOutline];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(TVRUIHintsStyleProvider *)v11->_styleProvider primaryTintColor];
    v15 = [(TVRUIHintsUserIntentButtonView *)v11 buttonOutline];
    [v15 setBackgroundColor:v14];

    v16 = [(TVRUIHintsUserIntentButtonView *)v11 buttonOutline];
    [(TVRUIHintsUserIntentButtonView *)v11 addSubview:v16];

    v17 = [(TVRUIHintsStyleProvider *)v11->_styleProvider siriImage];
    v18 = [[TVRUIHintsGlyphView alloc] initWithImage:v17 styleProvider:v11->_styleProvider];
    glyphView = v11->_glyphView;
    v11->_glyphView = v18;

    [(TVRUIHintsGlyphView *)v11->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TVRUIHintsUserIntentButtonView *)v11 addSubview:v11->_glyphView];
    [(TVRUIHintsUserIntentButtonView *)v11 _updateViewForButtonEdge:v5];
  }

  return v11;
}

- (void)setPresentation:(unint64_t)a3
{
  if (self->_presentation != a3)
  {
    self->_presentation = a3;
    v5 = [(TVRUIHintsUserIntentButtonView *)self buttonEdge];

    [(TVRUIHintsUserIntentButtonView *)self _updateViewForButtonEdge:v5];
  }
}

- (void)_updateViewForButtonEdge:(unsigned int)a3
{
  v3 = *&a3;
  [(TVRUIHintsStyleProvider *)self->_styleProvider buttonOutlineWidth];
  v6 = v5;
  presentation = self->_presentation;
  v8 = [(TVRUIHintsUserIntentButtonView *)self glyphView];
  v9 = v8;
  if (presentation == 1)
  {
    [v8 setAlpha:0.0];

    v9 = [(TVRUIHintsUserIntentButtonView *)self styleProvider];
    if ([v9 supportsSBHints])
    {
      v10 = [(TVRUIHintsUserIntentButtonView *)self styleProvider];
      [v10 hintButtonWidth];
      v6 = v11;
    }
  }

  else
  {
    [v8 setAlpha:1.0];
  }

  v12 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
  v13 = [v12 layer];
  [v13 setCornerRadius:v6];

  [(TVRUIHintsUserIntentButtonView *)self _setupConstraintsForButtonEdge:v3 buttonWidth:v6];
}

- (void)_setupConstraintsForButtonEdge:(unsigned int)a3 buttonWidth:(double)a4
{
  v7 = [(TVRUIHintsUserIntentButtonView *)self buttonConstraints];

  v8 = 0x277CCA000uLL;
  if (v7)
  {
    v9 = MEMORY[0x277CCAAD0];
    v10 = [(TVRUIHintsUserIntentButtonView *)self buttonConstraints];
    [v9 deactivateConstraints:v10];

    [(TVRUIHintsUserIntentButtonView *)self setButtonConstraints:0];
  }

  if (a3 == 2)
  {
    v52 = MEMORY[0x277CBEA60];
    v68 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    v66 = [v68 widthAnchor];
    v48 = [v66 constraintEqualToConstant:a4 + a4];
    v64 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    v62 = [v64 rightAnchor];
    v60 = [(TVRUIHintsUserIntentButtonView *)self rightAnchor];
    v70 = [v62 constraintEqualToAnchor:v60 constant:a4];
    v58 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    v56 = [v58 topAnchor];
    v54 = [(TVRUIHintsUserIntentButtonView *)self topAnchor];
    v38 = [v56 constraintEqualToAnchor:v54];
    v50 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    v46 = [v50 bottomAnchor];
    v44 = [(TVRUIHintsUserIntentButtonView *)self bottomAnchor];
    v22 = [v46 constraintEqualToAnchor:v44];
    v42 = [(TVRUIHintsUserIntentButtonView *)self glyphView];
    v40 = [v42 centerYAnchor];
    v23 = [(TVRUIHintsUserIntentButtonView *)self centerYAnchor];
    v24 = [v40 constraintEqualToAnchor:v23];
    v25 = [(TVRUIHintsUserIntentButtonView *)self glyphView];
    v26 = [v25 rightAnchor];
    v27 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    v28 = [v27 leftAnchor];
    [(TVRUIHintsStyleProvider *)self->_styleProvider imageMargin];
    v30 = [v26 constraintEqualToAnchor:v28 constant:-v29];
    v31 = [v52 arrayWithObjects:{v48, v70, v38, v22, v24, v30, 0}];
    buttonConstraints = self->_buttonConstraints;
    self->_buttonConstraints = v31;

    v8 = 0x277CCA000;
    v21 = v68;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v49 = MEMORY[0x277CBEA60];
    v65 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    v63 = [v65 heightAnchor];
    v69 = [v63 constraintEqualToConstant:a4 + a4];
    v61 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    v59 = [v61 leftAnchor];
    v57 = [(TVRUIHintsUserIntentButtonView *)self leftAnchor];
    v67 = [v59 constraintEqualToAnchor:v57];
    v55 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    v53 = [v55 rightAnchor];
    v51 = [(TVRUIHintsUserIntentButtonView *)self rightAnchor];
    v37 = [v53 constraintEqualToAnchor:v51];
    v47 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    v45 = [v47 bottomAnchor];
    v43 = [(TVRUIHintsUserIntentButtonView *)self bottomAnchor];
    v11 = [v45 constraintEqualToAnchor:v43 constant:a4];
    v41 = [(TVRUIHintsUserIntentButtonView *)self glyphView];
    v39 = [v41 centerXAnchor];
    v12 = [(TVRUIHintsUserIntentButtonView *)self centerXAnchor];
    v13 = [v39 constraintEqualToAnchor:v12];
    v14 = [(TVRUIHintsUserIntentButtonView *)self glyphView];
    v15 = [v14 topAnchor];
    v16 = [(TVRUIHintsUserIntentButtonView *)self buttonOutline];
    v17 = [v16 bottomAnchor];
    [(TVRUIHintsStyleProvider *)self->_styleProvider imageMargin];
    v18 = [v15 constraintEqualToAnchor:v17 constant:?];
    v19 = [v49 arrayWithObjects:{v69, v67, v37, v11, v13, v18, 0}];
    v20 = self->_buttonConstraints;
    self->_buttonConstraints = v19;

    v8 = 0x277CCA000;
    v21 = v65;
LABEL_7:

    goto LABEL_11;
  }

  v33 = _TVRUIHintsLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    [TVRUIHintsUserIntentButtonView _setupConstraintsForButtonEdge:v33 buttonWidth:?];
  }

LABEL_11:
  v34 = [(TVRUIHintsUserIntentButtonView *)self buttonConstraints];

  if (v34)
  {
    v35 = *(v8 + 2768);
    v36 = [(TVRUIHintsUserIntentButtonView *)self buttonConstraints];
    [v35 activateConstraints:v36];
  }
}

@end