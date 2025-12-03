@interface TVRUIHintsVolumeButtonsView
- (TVRUIHintsVolumeButtonsView)initWithPresentation:(unint64_t)presentation image:(id)image styleProvider:(id)provider buttonEdge:(unsigned int)edge buttonHeight:(double)height;
- (id)_constraintsForLeftAndRightSideButtonsWithButtonWidth:(double)width;
- (void)_setupConstraintsForButtonEdge:(unsigned int)edge buttonWidth:(double)width;
- (void)_setupGlyphViewWithImage:(id)image;
- (void)_updateViewForButtonEdge:(unsigned int)edge;
- (void)setPresentation:(unint64_t)presentation;
- (void)updateGlyphImage:(id)image;
@end

@implementation TVRUIHintsVolumeButtonsView

- (TVRUIHintsVolumeButtonsView)initWithPresentation:(unint64_t)presentation image:(id)image styleProvider:(id)provider buttonEdge:(unsigned int)edge buttonHeight:(double)height
{
  v8 = *&edge;
  imageCopy = image;
  providerCopy = provider;
  v31.receiver = self;
  v31.super_class = TVRUIHintsVolumeButtonsView;
  v14 = [(TVRUIHintsVolumeButtonsView *)&v31 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_styleProvider, provider);
    v15->_presentation = presentation;
    v15->_buttonHeight = height;
    v15->_buttonEdge = v8;
    array = [MEMORY[0x277CBEB18] array];
    buttonConstraints = v15->_buttonConstraints;
    v15->_buttonConstraints = array;

    v18 = objc_alloc_init(MEMORY[0x277D75D18]);
    volumeUpButtonView = v15->_volumeUpButtonView;
    v15->_volumeUpButtonView = v18;

    [(UIView *)v15->_volumeUpButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TVRUIHintsStyleProvider *)v15->_styleProvider buttonOutlineWidth];
    v21 = v20;
    layer = [(UIView *)v15->_volumeUpButtonView layer];
    [layer setCornerRadius:v21];

    primaryTintColor = [(TVRUIHintsStyleProvider *)v15->_styleProvider primaryTintColor];
    [(UIView *)v15->_volumeUpButtonView setBackgroundColor:primaryTintColor];

    [(TVRUIHintsVolumeButtonsView *)v15 addSubview:v15->_volumeUpButtonView];
    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    volumeDownButtonView = v15->_volumeDownButtonView;
    v15->_volumeDownButtonView = v24;

    [(UIView *)v15->_volumeDownButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TVRUIHintsStyleProvider *)v15->_styleProvider buttonOutlineWidth];
    v27 = v26;
    layer2 = [(UIView *)v15->_volumeDownButtonView layer];
    [layer2 setCornerRadius:v27];

    primaryTintColor2 = [(TVRUIHintsStyleProvider *)v15->_styleProvider primaryTintColor];
    [(UIView *)v15->_volumeDownButtonView setBackgroundColor:primaryTintColor2];

    [(TVRUIHintsVolumeButtonsView *)v15 addSubview:v15->_volumeDownButtonView];
    [(TVRUIHintsVolumeButtonsView *)v15 _setupGlyphViewWithImage:imageCopy];
    [(TVRUIHintsVolumeButtonsView *)v15 _updateViewForButtonEdge:v8];
  }

  return v15;
}

- (void)setPresentation:(unint64_t)presentation
{
  if (self->_presentation != presentation)
  {
    self->_presentation = presentation;
    buttonEdge = [(TVRUIHintsVolumeButtonsView *)self buttonEdge];

    [(TVRUIHintsVolumeButtonsView *)self _updateViewForButtonEdge:buttonEdge];
  }
}

- (void)_setupGlyphViewWithImage:(id)image
{
  imageCopy = image;
  glyphView = self->_glyphView;
  if (glyphView)
  {
    [(TVRUIHintsGlyphView *)glyphView removeFromSuperview];
  }

  v5 = [[TVRUIHintsGlyphView alloc] initWithImage:imageCopy styleProvider:self->_styleProvider];
  v6 = self->_glyphView;
  self->_glyphView = v5;

  [(TVRUIHintsGlyphView *)self->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TVRUIHintsVolumeButtonsView *)self addSubview:self->_glyphView];
}

- (void)updateGlyphImage:(id)image
{
  [(TVRUIHintsVolumeButtonsView *)self _setupGlyphViewWithImage:image];
  buttonEdge = [(TVRUIHintsVolumeButtonsView *)self buttonEdge];

  [(TVRUIHintsVolumeButtonsView *)self _updateViewForButtonEdge:buttonEdge];
}

- (void)_updateViewForButtonEdge:(unsigned int)edge
{
  v3 = *&edge;
  [(TVRUIHintsStyleProvider *)self->_styleProvider buttonOutlineWidth];
  v6 = v5;
  presentation = self->_presentation;
  if (presentation)
  {
    if (presentation == 1)
    {
      [(TVRUIHintsGlyphView *)self->_glyphView setAlpha:0.0];
      [(UIView *)self->_volumeUpButtonView setAlpha:1.0];
      volumeDownButtonView = self->_volumeDownButtonView;
      v9 = 0.0;
    }

    else
    {
      if (presentation != 2)
      {
        goto LABEL_10;
      }

      [(TVRUIHintsGlyphView *)self->_glyphView setAlpha:0.0];
      [(UIView *)self->_volumeUpButtonView setAlpha:0.0];
      volumeDownButtonView = self->_volumeDownButtonView;
      v9 = 1.0;
    }

    [(UIView *)volumeDownButtonView setAlpha:v9];
    styleProvider = [(TVRUIHintsVolumeButtonsView *)self styleProvider];
    if ([styleProvider supportsSBHints])
    {
      styleProvider2 = [(TVRUIHintsVolumeButtonsView *)self styleProvider];
      [styleProvider2 hintButtonWidth];
      v6 = v12;
    }
  }

  else
  {
    [(TVRUIHintsGlyphView *)self->_glyphView setAlpha:1.0];
    [(UIView *)self->_volumeUpButtonView setAlpha:1.0];
    [(UIView *)self->_volumeDownButtonView setAlpha:1.0];
  }

LABEL_10:
  layer = [(UIView *)self->_volumeUpButtonView layer];
  [layer setCornerRadius:v6];

  layer2 = [(UIView *)self->_volumeDownButtonView layer];
  [layer2 setCornerRadius:v6];

  [(TVRUIHintsVolumeButtonsView *)self _setupConstraintsForButtonEdge:v3 buttonWidth:v6];
}

- (void)_setupConstraintsForButtonEdge:(unsigned int)edge buttonWidth:(double)width
{
  v68[10] = *MEMORY[0x277D85DE8];
  buttonConstraints = [(TVRUIHintsVolumeButtonsView *)self buttonConstraints];

  v8 = 0x277CCA000uLL;
  if (buttonConstraints)
  {
    v9 = MEMORY[0x277CCAAD0];
    buttonConstraints2 = [(TVRUIHintsVolumeButtonsView *)self buttonConstraints];
    [v9 deactivateConstraints:buttonConstraints2];

    buttonConstraints3 = [(TVRUIHintsVolumeButtonsView *)self buttonConstraints];
    [buttonConstraints3 removeAllObjects];
  }

  if (edge == 2)
  {
    buttonConstraints = self->_buttonConstraints;
    v31 = [(TVRUIHintsVolumeButtonsView *)self _constraintsForLeftAndRightSideButtonsWithButtonWidth:width];
    [(NSMutableArray *)buttonConstraints addObjectsFromArray:v31];

    v14 = self->_buttonConstraints;
    glyphView = [(TVRUIHintsVolumeButtonsView *)self glyphView];
    rightAnchor = [glyphView rightAnchor];
    volumeUpButtonView = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
    leftAnchor = [volumeUpButtonView leftAnchor];
    styleProvider = [(TVRUIHintsVolumeButtonsView *)self styleProvider];
    [styleProvider imageMargin];
    v20 = -v32;
  }

  else
  {
    if (edge == 1)
    {
      v52 = self->_buttonConstraints;
      volumeDownButtonView = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
      heightAnchor = [volumeDownButtonView heightAnchor];
      width = [heightAnchor constraintEqualToConstant:width + width];
      v68[0] = width;
      volumeDownButtonView2 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
      leftAnchor2 = [volumeDownButtonView2 leftAnchor];
      leftAnchor3 = [(TVRUIHintsVolumeButtonsView *)self leftAnchor];
      v61 = [leftAnchor2 constraintEqualToAnchor:leftAnchor3];
      v68[1] = v61;
      volumeDownButtonView3 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
      widthAnchor = [volumeDownButtonView3 widthAnchor];
      [(TVRUIHintsVolumeButtonsView *)self buttonHeight];
      v58 = [widthAnchor constraintEqualToConstant:?];
      v68[2] = v58;
      volumeDownButtonView4 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
      bottomAnchor = [volumeDownButtonView4 bottomAnchor];
      bottomAnchor2 = [(TVRUIHintsVolumeButtonsView *)self bottomAnchor];
      v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:width];
      v68[3] = v54;
      volumeUpButtonView2 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
      heightAnchor2 = [volumeUpButtonView2 heightAnchor];
      width2 = [heightAnchor2 constraintEqualToConstant:width + width];
      v68[4] = width2;
      volumeUpButtonView3 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
      widthAnchor2 = [volumeUpButtonView3 widthAnchor];
      [(TVRUIHintsVolumeButtonsView *)self buttonHeight];
      v47 = [widthAnchor2 constraintEqualToConstant:?];
      v68[5] = v47;
      volumeUpButtonView4 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
      rightAnchor2 = [volumeUpButtonView4 rightAnchor];
      rightAnchor3 = [(TVRUIHintsVolumeButtonsView *)self rightAnchor];
      v43 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
      v68[6] = v43;
      volumeUpButtonView5 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
      bottomAnchor3 = [volumeUpButtonView5 bottomAnchor];
      bottomAnchor4 = [(TVRUIHintsVolumeButtonsView *)self bottomAnchor];
      v39 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:width];
      v68[7] = v39;
      glyphView2 = [(TVRUIHintsVolumeButtonsView *)self glyphView];
      centerXAnchor = [glyphView2 centerXAnchor];
      centerXAnchor2 = [(TVRUIHintsVolumeButtonsView *)self centerXAnchor];
      v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v68[8] = v23;
      glyphView3 = [(TVRUIHintsVolumeButtonsView *)self glyphView];
      topAnchor = [glyphView3 topAnchor];
      volumeUpButtonView6 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
      bottomAnchor5 = [volumeUpButtonView6 bottomAnchor];
      [(TVRUIHintsStyleProvider *)self->_styleProvider imageMargin];
      v28 = [topAnchor constraintEqualToAnchor:bottomAnchor5 constant:?];
      v68[9] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:10];
      [(NSMutableArray *)v52 addObjectsFromArray:v29];

      v8 = 0x277CCA000;
      goto LABEL_13;
    }

    if (edge)
    {
      glyphView = _TVRUIHintsLog();
      if (os_log_type_enabled(glyphView, OS_LOG_TYPE_FAULT))
      {
        [TVRUIHintsVolumeButtonsView _setupConstraintsForButtonEdge:glyphView buttonWidth:?];
      }

      goto LABEL_12;
    }

    v12 = self->_buttonConstraints;
    v13 = [(TVRUIHintsVolumeButtonsView *)self _constraintsForLeftAndRightSideButtonsWithButtonWidth:width];
    [(NSMutableArray *)v12 addObjectsFromArray:v13];

    v14 = self->_buttonConstraints;
    glyphView = [(TVRUIHintsVolumeButtonsView *)self glyphView];
    rightAnchor = [glyphView leftAnchor];
    volumeUpButtonView = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
    leftAnchor = [volumeUpButtonView rightAnchor];
    styleProvider = [(TVRUIHintsVolumeButtonsView *)self styleProvider];
    [styleProvider imageMargin];
  }

  v33 = [rightAnchor constraintEqualToAnchor:leftAnchor constant:v20];
  [(NSMutableArray *)v14 addObject:v33];

LABEL_12:
LABEL_13:
  buttonConstraints4 = [(TVRUIHintsVolumeButtonsView *)self buttonConstraints];
  v35 = [buttonConstraints4 count];

  if (v35)
  {
    v36 = *(v8 + 2768);
    buttonConstraints5 = [(TVRUIHintsVolumeButtonsView *)self buttonConstraints];
    [v36 activateConstraints:buttonConstraints5];
  }
}

- (id)_constraintsForLeftAndRightSideButtonsWithButtonWidth:(double)width
{
  v43[9] = *MEMORY[0x277D85DE8];
  volumeUpButtonView = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
  widthAnchor = [volumeUpButtonView widthAnchor];
  v5 = width + width;
  width = [widthAnchor constraintEqualToConstant:width + width];
  v43[0] = width;
  volumeUpButtonView2 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
  leftAnchor = [volumeUpButtonView2 leftAnchor];
  leftAnchor2 = [(TVRUIHintsVolumeButtonsView *)self leftAnchor];
  v6 = -width;
  v36 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v6];
  v43[1] = v36;
  volumeUpButtonView3 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
  topAnchor = [volumeUpButtonView3 topAnchor];
  topAnchor2 = [(TVRUIHintsVolumeButtonsView *)self topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[2] = v32;
  volumeUpButtonView4 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
  heightAnchor = [volumeUpButtonView4 heightAnchor];
  [(TVRUIHintsVolumeButtonsView *)self buttonHeight];
  v29 = [heightAnchor constraintEqualToConstant:?];
  v43[3] = v29;
  volumeDownButtonView = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
  widthAnchor2 = [volumeDownButtonView widthAnchor];
  v26 = [widthAnchor2 constraintEqualToConstant:v5];
  v43[4] = v26;
  volumeDownButtonView2 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
  leftAnchor3 = [volumeDownButtonView2 leftAnchor];
  leftAnchor4 = [(TVRUIHintsVolumeButtonsView *)self leftAnchor];
  v22 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:v6];
  v43[5] = v22;
  volumeDownButtonView3 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
  bottomAnchor = [volumeDownButtonView3 bottomAnchor];
  bottomAnchor2 = [(TVRUIHintsVolumeButtonsView *)self bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v43[6] = v7;
  volumeDownButtonView4 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
  heightAnchor2 = [volumeDownButtonView4 heightAnchor];
  volumeUpButtonView5 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
  heightAnchor3 = [volumeUpButtonView5 heightAnchor];
  v12 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v43[7] = v12;
  glyphView = [(TVRUIHintsVolumeButtonsView *)self glyphView];
  centerYAnchor = [glyphView centerYAnchor];
  centerYAnchor2 = [(TVRUIHintsVolumeButtonsView *)self centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v43[8] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:9];

  return v18;
}

@end