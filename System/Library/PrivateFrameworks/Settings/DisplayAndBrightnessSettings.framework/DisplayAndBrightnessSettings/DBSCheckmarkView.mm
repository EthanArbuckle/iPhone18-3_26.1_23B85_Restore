@interface DBSCheckmarkView
- (DBSCheckmarkView)initWithFrame:(CGRect)a3;
- (void)_configureView;
- (void)_updateViewState;
- (void)setSelected:(BOOL)a3;
@end

@implementation DBSCheckmarkView

- (DBSCheckmarkView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DBSCheckmarkView;
  v3 = [(DBSCheckmarkView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v13 = [MEMORY[0x277D75348] tertiaryLabelColor];
    v109[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:1];
    v15 = [v12 configurationWithPaletteColors:v14];
    v16 = [v11 systemImageNamed:@"circle" withConfiguration:v15];
    [(DBSCheckmarkView *)self set_circleImage:v16];

    v17 = [(DBSCheckmarkView *)self _checkmarkImageView];
    if ([(DBSCheckmarkView *)self isSelected])
    {
      [(DBSCheckmarkView *)self _circleFillImage];
    }

    else
    {
      [(DBSCheckmarkView *)self _circleImage];
    }
    v84 = ;
    v85 = [MEMORY[0x277CE1600] transition];
    [v17 setSymbolImage:v84 withContentTransition:v85];

    v86 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [v86 setTranslatesAutoresizingMaskIntoConstraints:0];

    v87 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [v87 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

    v88 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
    v89 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [v89 setPreferredSymbolConfiguration:v88];

    v90 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [(DBSCheckmarkView *)self addSubview:v90];

    v91 = [MEMORY[0x277CBEB18] array];
    v92 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v93 = [v92 leadingAnchor];
    v94 = [(DBSCheckmarkView *)self leadingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];
    [v91 addObject:v95];

    v96 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v97 = [v96 trailingAnchor];
    v98 = [(DBSCheckmarkView *)self trailingAnchor];
    v99 = [v97 constraintEqualToAnchor:v98];
    [v91 addObject:v99];

    v100 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v101 = [v100 topAnchor];
    v102 = [(DBSCheckmarkView *)self topAnchor];
    v103 = [v101 constraintEqualToAnchor:v102];
    [v91 addObject:v103];

    v104 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v105 = [v104 bottomAnchor];
    v106 = [(DBSCheckmarkView *)self bottomAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];
    [v91 addObject:v107];

    [MEMORY[0x277CCAAD0] activateConstraints:v91];
  }

  else
  {
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill" compatibleWithTraitCollection:0];
    v19 = [v18 _imageThatSuppressesAccessibilityHairlineThickening];
    v20 = [v19 imageWithRenderingMode:2];
    v21 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [v21 setImage:v20];

    v22 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    v23 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [v23 setContentMode:4];

    v24 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [v24 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

    v25 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [v25 setAlpha:0.0];

    v26 = *MEMORY[0x277D76918];
    v27 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
    v28 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [v28 setPreferredSymbolConfiguration:v27];

    v29 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [(DBSCheckmarkView *)self addSubview:v29];

    v30 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    [(DBSCheckmarkView *)self set_circleImageView:v30];

    v31 = [MEMORY[0x277D755B8] systemImageNamed:@"circle" compatibleWithTraitCollection:0];
    v32 = [v31 imageWithRenderingMode:2];
    v33 = [(DBSCheckmarkView *)self _circleImageView];
    [v33 setImage:v32];

    v34 = [(DBSCheckmarkView *)self _circleImageView];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = [(DBSCheckmarkView *)self _circleImageView];
    [v35 setContentMode:4];

    v36 = [(DBSCheckmarkView *)self _circleImageView];
    [v36 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

    v37 = [MEMORY[0x277D75348] tertiaryLabelColor];
    v38 = [(DBSCheckmarkView *)self _circleImageView];
    [v38 setTintColor:v37];

    v39 = [MEMORY[0x277D755D0] configurationWithTextStyle:v26 scale:3];
    v40 = [(DBSCheckmarkView *)self _circleImageView];
    [v40 setPreferredSymbolConfiguration:v39];

    v41 = [(DBSCheckmarkView *)self _circleImageView];
    [(DBSCheckmarkView *)self addSubview:v41];

    v108 = [MEMORY[0x277CBEB18] array];
    v42 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v43 = [v42 leadingAnchor];
    v44 = [(DBSCheckmarkView *)self leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [v108 addObject:v45];

    v46 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v47 = [v46 trailingAnchor];
    v48 = [(DBSCheckmarkView *)self trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [v108 addObject:v49];

    v50 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v51 = [v50 topAnchor];
    v52 = [(DBSCheckmarkView *)self topAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    [v108 addObject:v53];

    v54 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v55 = [v54 bottomAnchor];
    v56 = [(DBSCheckmarkView *)self bottomAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    [v108 addObject:v57];

    v58 = [(DBSCheckmarkView *)self _circleImageView];
    v59 = [v58 leadingAnchor];
    v60 = [(DBSCheckmarkView *)self leadingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    [v108 addObject:v61];

    v62 = [(DBSCheckmarkView *)self _circleImageView];
    v63 = [v62 trailingAnchor];
    v64 = [(DBSCheckmarkView *)self trailingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];
    [v108 addObject:v65];

    v66 = [(DBSCheckmarkView *)self _circleImageView];
    v67 = [v66 topAnchor];
    v68 = [(DBSCheckmarkView *)self topAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
    [v108 addObject:v69];

    v70 = [(DBSCheckmarkView *)self _circleImageView];
    v71 = [v70 bottomAnchor];
    v72 = [(DBSCheckmarkView *)self bottomAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];
    [v108 addObject:v73];

    v74 = [(DBSCheckmarkView *)self _circleImageView];
    v75 = [v74 heightAnchor];
    v76 = [(DBSCheckmarkView *)self _circleImageView];
    v77 = [v76 widthAnchor];
    v78 = [v75 constraintEqualToAnchor:v77 multiplier:1.0];
    [v108 addObject:v78];

    v79 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v80 = [v79 heightAnchor];
    v81 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v82 = [v81 widthAnchor];
    v83 = [v80 constraintEqualToAnchor:v82 multiplier:1.0];
    [v108 addObject:v83];

    [MEMORY[0x277CCAAD0] activateConstraints:v108];
  }
}

- (void)_updateViewState
{
  if (_UISolariumEnabled())
  {
    v3 = [(DBSCheckmarkView *)self _checkmarkImageView];
    if ([(DBSCheckmarkView *)self isSelected])
    {
      [(DBSCheckmarkView *)self _circleFillImage];
    }

    else
    {
      [(DBSCheckmarkView *)self _circleImage];
    }
    v7 = ;
    v8 = [MEMORY[0x277CE1600] transition];
    [v3 setSymbolImage:v7 withContentTransition:v8];

    if ([(DBSCheckmarkView *)self isSelected])
    {
      [MEMORY[0x277D75348] systemBlueColor];
    }

    else
    {
      [MEMORY[0x277D75348] tertiaryLabelColor];
    }
    v17 = ;
    v16 = [(DBSCheckmarkView *)self _checkmarkImageView];
    [v16 setTintColor:v17];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
    v4 = [(DBSCheckmarkView *)self isSelected];
    v5 = MEMORY[0x277CBF2C0];
    if (v4)
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

    v9 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v10 = v5[1];
    *&v18.a = *v5;
    *&v18.c = v10;
    *&v18.tx = v5[2];
    [v9 setTransform:&v18];

    v11 = [(DBSCheckmarkView *)self _checkmarkImageView];
    v18 = v19;
    [v11 setTransform:&v18];

    v12 = [(DBSCheckmarkView *)self _checkmarkImageView];
    if ([(DBSCheckmarkView *)self isSelected])
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    [v12 setAlpha:v13];

    v14 = [(DBSCheckmarkView *)self _circleImageView];
    if ([(DBSCheckmarkView *)self isSelected])
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }

    [v14 setAlpha:v15];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
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