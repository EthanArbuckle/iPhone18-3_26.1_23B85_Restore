@interface DBSCheckmarkView
- (DBSCheckmarkView)initWithFrame:(CGRect)frame;
- (void)_configureView;
- (void)_updateViewState;
- (void)setSelected:(BOOL)selected;
@end

@implementation DBSCheckmarkView

- (DBSCheckmarkView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DBSCheckmarkView;
  v3 = [(DBSCheckmarkView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_selected = 0;
    [(DBSCheckmarkView *)v3 _configureView];
  }

  return v4;
}

- (void)_configureView
{
  v109[1] = *MEMORY[0x277D85DE8];
  v3 = _UISolariumEnabled();
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  [(DBSCheckmarkView *)self set_checkmarkImageView:v9];

  if (v3)
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
    [(DBSCheckmarkView *)self set_circleFillImage:v10];

    v11 = MEMORY[0x277D755B8];
    v12 = MEMORY[0x277D755D0];
    tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
    v109[0] = tertiaryLabelColor;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:1];
    v15 = [v12 configurationWithPaletteColors:v14];
    v16 = [v11 systemImageNamed:@"circle" withConfiguration:v15];
    [(DBSCheckmarkView *)self set_circleImage:v16];

    _checkmarkImageView = [(DBSCheckmarkView *)self _checkmarkImageView];
    if ([(DBSCheckmarkView *)self isSelected])
    {
      [(DBSCheckmarkView *)self _circleFillImage];
    }

    else
    {
      [(DBSCheckmarkView *)self _circleImage];
    }
    v84 = ;
    transition = [MEMORY[0x277CE1600] transition];
    [_checkmarkImageView setSymbolImage:v84 withContentTransition:transition];

    _checkmarkImageView2 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [_checkmarkImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    _checkmarkImageView3 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [_checkmarkImageView3 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

    v88 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
    _checkmarkImageView4 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [_checkmarkImageView4 setPreferredSymbolConfiguration:v88];

    _checkmarkImageView5 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [(DBSCheckmarkView *)self addSubview:_checkmarkImageView5];

    array = [MEMORY[0x277CBEB18] array];
    _checkmarkImageView6 = [(DBSCheckmarkView *)self _checkmarkImageView];
    leadingAnchor = [_checkmarkImageView6 leadingAnchor];
    leadingAnchor2 = [(DBSCheckmarkView *)self leadingAnchor];
    v95 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v95];

    _checkmarkImageView7 = [(DBSCheckmarkView *)self _checkmarkImageView];
    trailingAnchor = [_checkmarkImageView7 trailingAnchor];
    trailingAnchor2 = [(DBSCheckmarkView *)self trailingAnchor];
    v99 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v99];

    _checkmarkImageView8 = [(DBSCheckmarkView *)self _checkmarkImageView];
    topAnchor = [_checkmarkImageView8 topAnchor];
    topAnchor2 = [(DBSCheckmarkView *)self topAnchor];
    v103 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v103];

    _checkmarkImageView9 = [(DBSCheckmarkView *)self _checkmarkImageView];
    bottomAnchor = [_checkmarkImageView9 bottomAnchor];
    bottomAnchor2 = [(DBSCheckmarkView *)self bottomAnchor];
    v107 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v107];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  else
  {
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill" compatibleWithTraitCollection:0];
    _imageThatSuppressesAccessibilityHairlineThickening = [v18 _imageThatSuppressesAccessibilityHairlineThickening];
    v20 = [_imageThatSuppressesAccessibilityHairlineThickening imageWithRenderingMode:2];
    _checkmarkImageView10 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [_checkmarkImageView10 setImage:v20];

    _checkmarkImageView11 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [_checkmarkImageView11 setTranslatesAutoresizingMaskIntoConstraints:0];

    _checkmarkImageView12 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [_checkmarkImageView12 setContentMode:4];

    _checkmarkImageView13 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [_checkmarkImageView13 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

    _checkmarkImageView14 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [_checkmarkImageView14 setAlpha:0.0];

    v26 = *MEMORY[0x277D76918];
    v27 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
    _checkmarkImageView15 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [_checkmarkImageView15 setPreferredSymbolConfiguration:v27];

    _checkmarkImageView16 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [(DBSCheckmarkView *)self addSubview:_checkmarkImageView16];

    v30 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    [(DBSCheckmarkView *)self set_circleImageView:v30];

    v31 = [MEMORY[0x277D755B8] systemImageNamed:@"circle" compatibleWithTraitCollection:0];
    v32 = [v31 imageWithRenderingMode:2];
    _circleImageView = [(DBSCheckmarkView *)self _circleImageView];
    [_circleImageView setImage:v32];

    _circleImageView2 = [(DBSCheckmarkView *)self _circleImageView];
    [_circleImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    _circleImageView3 = [(DBSCheckmarkView *)self _circleImageView];
    [_circleImageView3 setContentMode:4];

    _circleImageView4 = [(DBSCheckmarkView *)self _circleImageView];
    [_circleImageView4 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

    tertiaryLabelColor2 = [MEMORY[0x277D75348] tertiaryLabelColor];
    _circleImageView5 = [(DBSCheckmarkView *)self _circleImageView];
    [_circleImageView5 setTintColor:tertiaryLabelColor2];

    v39 = [MEMORY[0x277D755D0] configurationWithTextStyle:v26 scale:3];
    _circleImageView6 = [(DBSCheckmarkView *)self _circleImageView];
    [_circleImageView6 setPreferredSymbolConfiguration:v39];

    _circleImageView7 = [(DBSCheckmarkView *)self _circleImageView];
    [(DBSCheckmarkView *)self addSubview:_circleImageView7];

    array2 = [MEMORY[0x277CBEB18] array];
    _checkmarkImageView17 = [(DBSCheckmarkView *)self _checkmarkImageView];
    leadingAnchor3 = [_checkmarkImageView17 leadingAnchor];
    leadingAnchor4 = [(DBSCheckmarkView *)self leadingAnchor];
    v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array2 addObject:v45];

    _checkmarkImageView18 = [(DBSCheckmarkView *)self _checkmarkImageView];
    trailingAnchor3 = [_checkmarkImageView18 trailingAnchor];
    trailingAnchor4 = [(DBSCheckmarkView *)self trailingAnchor];
    v49 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array2 addObject:v49];

    _checkmarkImageView19 = [(DBSCheckmarkView *)self _checkmarkImageView];
    topAnchor3 = [_checkmarkImageView19 topAnchor];
    topAnchor4 = [(DBSCheckmarkView *)self topAnchor];
    v53 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [array2 addObject:v53];

    _checkmarkImageView20 = [(DBSCheckmarkView *)self _checkmarkImageView];
    bottomAnchor3 = [_checkmarkImageView20 bottomAnchor];
    bottomAnchor4 = [(DBSCheckmarkView *)self bottomAnchor];
    v57 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array2 addObject:v57];

    _circleImageView8 = [(DBSCheckmarkView *)self _circleImageView];
    leadingAnchor5 = [_circleImageView8 leadingAnchor];
    leadingAnchor6 = [(DBSCheckmarkView *)self leadingAnchor];
    v61 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [array2 addObject:v61];

    _circleImageView9 = [(DBSCheckmarkView *)self _circleImageView];
    trailingAnchor5 = [_circleImageView9 trailingAnchor];
    trailingAnchor6 = [(DBSCheckmarkView *)self trailingAnchor];
    v65 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [array2 addObject:v65];

    _circleImageView10 = [(DBSCheckmarkView *)self _circleImageView];
    topAnchor5 = [_circleImageView10 topAnchor];
    topAnchor6 = [(DBSCheckmarkView *)self topAnchor];
    v69 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [array2 addObject:v69];

    _circleImageView11 = [(DBSCheckmarkView *)self _circleImageView];
    bottomAnchor5 = [_circleImageView11 bottomAnchor];
    bottomAnchor6 = [(DBSCheckmarkView *)self bottomAnchor];
    v73 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    [array2 addObject:v73];

    _circleImageView12 = [(DBSCheckmarkView *)self _circleImageView];
    heightAnchor = [_circleImageView12 heightAnchor];
    _circleImageView13 = [(DBSCheckmarkView *)self _circleImageView];
    widthAnchor = [_circleImageView13 widthAnchor];
    v78 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:1.0];
    [array2 addObject:v78];

    _checkmarkImageView21 = [(DBSCheckmarkView *)self _checkmarkImageView];
    heightAnchor2 = [_checkmarkImageView21 heightAnchor];
    _checkmarkImageView22 = [(DBSCheckmarkView *)self _checkmarkImageView];
    widthAnchor2 = [_checkmarkImageView22 widthAnchor];
    v83 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
    [array2 addObject:v83];

    [MEMORY[0x277CCAAD0] activateConstraints:array2];
  }
}

- (void)_updateViewState
{
  if (_UISolariumEnabled())
  {
    _checkmarkImageView = [(DBSCheckmarkView *)self _checkmarkImageView];
    if ([(DBSCheckmarkView *)self isSelected])
    {
      [(DBSCheckmarkView *)self _circleFillImage];
    }

    else
    {
      [(DBSCheckmarkView *)self _circleImage];
    }
    v7 = ;
    transition = [MEMORY[0x277CE1600] transition];
    [_checkmarkImageView setSymbolImage:v7 withContentTransition:transition];

    if ([(DBSCheckmarkView *)self isSelected])
    {
      [MEMORY[0x277D75348] systemBlueColor];
    }

    else
    {
      [MEMORY[0x277D75348] tertiaryLabelColor];
    }
    v17 = ;
    _checkmarkImageView2 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [_checkmarkImageView2 setTintColor:v17];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
    isSelected = [(DBSCheckmarkView *)self isSelected];
    v5 = MEMORY[0x277CBF2C0];
    if (isSelected)
    {
      v6 = *(MEMORY[0x277CBF2C0] + 16);
      *&v19.a = *MEMORY[0x277CBF2C0];
      *&v19.c = v6;
      *&v19.tx = *(MEMORY[0x277CBF2C0] + 32);
    }

    else
    {
      CGAffineTransformMakeScale(&v19, 0.01, 0.01);
    }

    _checkmarkImageView3 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v10 = v5[1];
    *&v18.a = *v5;
    *&v18.c = v10;
    *&v18.tx = v5[2];
    [_checkmarkImageView3 setTransform:&v18];

    _checkmarkImageView4 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v18 = v19;
    [_checkmarkImageView4 setTransform:&v18];

    _checkmarkImageView5 = [(DBSCheckmarkView *)self _checkmarkImageView];
    if ([(DBSCheckmarkView *)self isSelected])
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    [_checkmarkImageView5 setAlpha:v13];

    _circleImageView = [(DBSCheckmarkView *)self _circleImageView];
    if ([(DBSCheckmarkView *)self isSelected])
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }

    [_circleImageView setAlpha:v15];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    if (_UISolariumEnabled())
    {

      [(DBSCheckmarkView *)self _updateViewState];
    }

    else
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __32__DBSCheckmarkView_setSelected___block_invoke;
      v4[3] = &unk_278459558;
      v4[4] = self;
      [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:2054 animations:v4 completion:0];
    }
  }
}

@end