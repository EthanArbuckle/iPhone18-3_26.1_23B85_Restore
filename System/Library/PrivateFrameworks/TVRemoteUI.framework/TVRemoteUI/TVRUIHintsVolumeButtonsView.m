@interface TVRUIHintsVolumeButtonsView
- (TVRUIHintsVolumeButtonsView)initWithPresentation:(unint64_t)a3 image:(id)a4 styleProvider:(id)a5 buttonEdge:(unsigned int)a6 buttonHeight:(double)a7;
- (id)_constraintsForLeftAndRightSideButtonsWithButtonWidth:(double)a3;
- (void)_setupConstraintsForButtonEdge:(unsigned int)a3 buttonWidth:(double)a4;
- (void)_setupGlyphViewWithImage:(id)a3;
- (void)_updateViewForButtonEdge:(unsigned int)a3;
- (void)setPresentation:(unint64_t)a3;
- (void)updateGlyphImage:(id)a3;
@end

@implementation TVRUIHintsVolumeButtonsView

- (TVRUIHintsVolumeButtonsView)initWithPresentation:(unint64_t)a3 image:(id)a4 styleProvider:(id)a5 buttonEdge:(unsigned int)a6 buttonHeight:(double)a7
{
  v8 = *&a6;
  v12 = a4;
  v13 = a5;
  v31.receiver = self;
  v31.super_class = TVRUIHintsVolumeButtonsView;
  v14 = [(TVRUIHintsVolumeButtonsView *)&v31 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_styleProvider, a5);
    v15->_presentation = a3;
    v15->_buttonHeight = a7;
    v15->_buttonEdge = v8;
    v16 = [MEMORY[0x277CBEB18] array];
    buttonConstraints = v15->_buttonConstraints;
    v15->_buttonConstraints = v16;

    v18 = objc_alloc_init(MEMORY[0x277D75D18]);
    volumeUpButtonView = v15->_volumeUpButtonView;
    v15->_volumeUpButtonView = v18;

    [(UIView *)v15->_volumeUpButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TVRUIHintsStyleProvider *)v15->_styleProvider buttonOutlineWidth];
    v21 = v20;
    v22 = [(UIView *)v15->_volumeUpButtonView layer];
    [v22 setCornerRadius:v21];

    v23 = [(TVRUIHintsStyleProvider *)v15->_styleProvider primaryTintColor];
    [(UIView *)v15->_volumeUpButtonView setBackgroundColor:v23];

    [(TVRUIHintsVolumeButtonsView *)v15 addSubview:v15->_volumeUpButtonView];
    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    volumeDownButtonView = v15->_volumeDownButtonView;
    v15->_volumeDownButtonView = v24;

    [(UIView *)v15->_volumeDownButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TVRUIHintsStyleProvider *)v15->_styleProvider buttonOutlineWidth];
    v27 = v26;
    v28 = [(UIView *)v15->_volumeDownButtonView layer];
    [v28 setCornerRadius:v27];

    v29 = [(TVRUIHintsStyleProvider *)v15->_styleProvider primaryTintColor];
    [(UIView *)v15->_volumeDownButtonView setBackgroundColor:v29];

    [(TVRUIHintsVolumeButtonsView *)v15 addSubview:v15->_volumeDownButtonView];
    [(TVRUIHintsVolumeButtonsView *)v15 _setupGlyphViewWithImage:v12];
    [(TVRUIHintsVolumeButtonsView *)v15 _updateViewForButtonEdge:v8];
  }

  return v15;
}

- (void)setPresentation:(unint64_t)a3
{
  if (self->_presentation != a3)
  {
    self->_presentation = a3;
    v5 = [(TVRUIHintsVolumeButtonsView *)self buttonEdge];

    [(TVRUIHintsVolumeButtonsView *)self _updateViewForButtonEdge:v5];
  }
}

- (void)_setupGlyphViewWithImage:(id)a3
{
  v7 = a3;
  glyphView = self->_glyphView;
  if (glyphView)
  {
    [(TVRUIHintsGlyphView *)glyphView removeFromSuperview];
  }

  v5 = [[TVRUIHintsGlyphView alloc] initWithImage:v7 styleProvider:self->_styleProvider];
  v6 = self->_glyphView;
  self->_glyphView = v5;

  [(TVRUIHintsGlyphView *)self->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TVRUIHintsVolumeButtonsView *)self addSubview:self->_glyphView];
}

- (void)updateGlyphImage:(id)a3
{
  [(TVRUIHintsVolumeButtonsView *)self _setupGlyphViewWithImage:a3];
  v4 = [(TVRUIHintsVolumeButtonsView *)self buttonEdge];

  [(TVRUIHintsVolumeButtonsView *)self _updateViewForButtonEdge:v4];
}

- (void)_updateViewForButtonEdge:(unsigned int)a3
{
  v3 = *&a3;
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
    v10 = [(TVRUIHintsVolumeButtonsView *)self styleProvider];
    if ([v10 supportsSBHints])
    {
      v11 = [(TVRUIHintsVolumeButtonsView *)self styleProvider];
      [v11 hintButtonWidth];
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
  v13 = [(UIView *)self->_volumeUpButtonView layer];
  [v13 setCornerRadius:v6];

  v14 = [(UIView *)self->_volumeDownButtonView layer];
  [v14 setCornerRadius:v6];

  [(TVRUIHintsVolumeButtonsView *)self _setupConstraintsForButtonEdge:v3 buttonWidth:v6];
}

- (void)_setupConstraintsForButtonEdge:(unsigned int)a3 buttonWidth:(double)a4
{
  v68[10] = *MEMORY[0x277D85DE8];
  v7 = [(TVRUIHintsVolumeButtonsView *)self buttonConstraints];

  v8 = 0x277CCA000uLL;
  if (v7)
  {
    v9 = MEMORY[0x277CCAAD0];
    v10 = [(TVRUIHintsVolumeButtonsView *)self buttonConstraints];
    [v9 deactivateConstraints:v10];

    v11 = [(TVRUIHintsVolumeButtonsView *)self buttonConstraints];
    [v11 removeAllObjects];
  }

  if (a3 == 2)
  {
    buttonConstraints = self->_buttonConstraints;
    v31 = [(TVRUIHintsVolumeButtonsView *)self _constraintsForLeftAndRightSideButtonsWithButtonWidth:a4];
    [(NSMutableArray *)buttonConstraints addObjectsFromArray:v31];

    v14 = self->_buttonConstraints;
    v15 = [(TVRUIHintsVolumeButtonsView *)self glyphView];
    v16 = [v15 rightAnchor];
    v17 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
    v18 = [v17 leftAnchor];
    v19 = [(TVRUIHintsVolumeButtonsView *)self styleProvider];
    [v19 imageMargin];
    v20 = -v32;
  }

  else
  {
    if (a3 == 1)
    {
      v52 = self->_buttonConstraints;
      v67 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
      v66 = [v67 heightAnchor];
      v65 = [v66 constraintEqualToConstant:a4 + a4];
      v68[0] = v65;
      v64 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
      v63 = [v64 leftAnchor];
      v62 = [(TVRUIHintsVolumeButtonsView *)self leftAnchor];
      v61 = [v63 constraintEqualToAnchor:v62];
      v68[1] = v61;
      v60 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
      v59 = [v60 widthAnchor];
      [(TVRUIHintsVolumeButtonsView *)self buttonHeight];
      v58 = [v59 constraintEqualToConstant:?];
      v68[2] = v58;
      v57 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
      v56 = [v57 bottomAnchor];
      v55 = [(TVRUIHintsVolumeButtonsView *)self bottomAnchor];
      v54 = [v56 constraintEqualToAnchor:v55 constant:a4];
      v68[3] = v54;
      v53 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
      v51 = [v53 heightAnchor];
      v50 = [v51 constraintEqualToConstant:a4 + a4];
      v68[4] = v50;
      v49 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
      v48 = [v49 widthAnchor];
      [(TVRUIHintsVolumeButtonsView *)self buttonHeight];
      v47 = [v48 constraintEqualToConstant:?];
      v68[5] = v47;
      v46 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
      v45 = [v46 rightAnchor];
      v44 = [(TVRUIHintsVolumeButtonsView *)self rightAnchor];
      v43 = [v45 constraintEqualToAnchor:v44];
      v68[6] = v43;
      v42 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
      v41 = [v42 bottomAnchor];
      v40 = [(TVRUIHintsVolumeButtonsView *)self bottomAnchor];
      v39 = [v41 constraintEqualToAnchor:v40 constant:a4];
      v68[7] = v39;
      v38 = [(TVRUIHintsVolumeButtonsView *)self glyphView];
      v21 = [v38 centerXAnchor];
      v22 = [(TVRUIHintsVolumeButtonsView *)self centerXAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      v68[8] = v23;
      v24 = [(TVRUIHintsVolumeButtonsView *)self glyphView];
      v25 = [v24 topAnchor];
      v26 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
      v27 = [v26 bottomAnchor];
      [(TVRUIHintsStyleProvider *)self->_styleProvider imageMargin];
      v28 = [v25 constraintEqualToAnchor:v27 constant:?];
      v68[9] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:10];
      [(NSMutableArray *)v52 addObjectsFromArray:v29];

      v8 = 0x277CCA000;
      goto LABEL_13;
    }

    if (a3)
    {
      v15 = _TVRUIHintsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [TVRUIHintsVolumeButtonsView _setupConstraintsForButtonEdge:v15 buttonWidth:?];
      }

      goto LABEL_12;
    }

    v12 = self->_buttonConstraints;
    v13 = [(TVRUIHintsVolumeButtonsView *)self _constraintsForLeftAndRightSideButtonsWithButtonWidth:a4];
    [(NSMutableArray *)v12 addObjectsFromArray:v13];

    v14 = self->_buttonConstraints;
    v15 = [(TVRUIHintsVolumeButtonsView *)self glyphView];
    v16 = [v15 leftAnchor];
    v17 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
    v18 = [v17 rightAnchor];
    v19 = [(TVRUIHintsVolumeButtonsView *)self styleProvider];
    [v19 imageMargin];
  }

  v33 = [v16 constraintEqualToAnchor:v18 constant:v20];
  [(NSMutableArray *)v14 addObject:v33];

LABEL_12:
LABEL_13:
  v34 = [(TVRUIHintsVolumeButtonsView *)self buttonConstraints];
  v35 = [v34 count];

  if (v35)
  {
    v36 = *(v8 + 2768);
    v37 = [(TVRUIHintsVolumeButtonsView *)self buttonConstraints];
    [v36 activateConstraints:v37];
  }
}

- (id)_constraintsForLeftAndRightSideButtonsWithButtonWidth:(double)a3
{
  v43[9] = *MEMORY[0x277D85DE8];
  v42 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
  v41 = [v42 widthAnchor];
  v5 = a3 + a3;
  v40 = [v41 constraintEqualToConstant:a3 + a3];
  v43[0] = v40;
  v39 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
  v38 = [v39 leftAnchor];
  v37 = [(TVRUIHintsVolumeButtonsView *)self leftAnchor];
  v6 = -a3;
  v36 = [v38 constraintEqualToAnchor:v37 constant:v6];
  v43[1] = v36;
  v35 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
  v34 = [v35 topAnchor];
  v33 = [(TVRUIHintsVolumeButtonsView *)self topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v43[2] = v32;
  v31 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
  v30 = [v31 heightAnchor];
  [(TVRUIHintsVolumeButtonsView *)self buttonHeight];
  v29 = [v30 constraintEqualToConstant:?];
  v43[3] = v29;
  v28 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
  v27 = [v28 widthAnchor];
  v26 = [v27 constraintEqualToConstant:v5];
  v43[4] = v26;
  v25 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
  v24 = [v25 leftAnchor];
  v23 = [(TVRUIHintsVolumeButtonsView *)self leftAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:v6];
  v43[5] = v22;
  v21 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
  v20 = [v21 bottomAnchor];
  v19 = [(TVRUIHintsVolumeButtonsView *)self bottomAnchor];
  v7 = [v20 constraintEqualToAnchor:v19];
  v43[6] = v7;
  v8 = [(TVRUIHintsVolumeButtonsView *)self volumeDownButtonView];
  v9 = [v8 heightAnchor];
  v10 = [(TVRUIHintsVolumeButtonsView *)self volumeUpButtonView];
  v11 = [v10 heightAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v43[7] = v12;
  v13 = [(TVRUIHintsVolumeButtonsView *)self glyphView];
  v14 = [v13 centerYAnchor];
  v15 = [(TVRUIHintsVolumeButtonsView *)self centerYAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v43[8] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:9];

  return v18;
}

@end