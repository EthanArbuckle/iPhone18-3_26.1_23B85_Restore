@interface WFTriggerOptionSelectionView
+ (double)scaledValueForValue:(double)a3;
- (BOOL)selected;
- (WFTriggerOptionSelectionView)init;
- (void)setDefaultImage:(id)a3;
- (void)setDefaultImageTintColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectedStateImageTintColor:(id)a3;
- (void)updateAlpha;
@end

@implementation WFTriggerOptionSelectionView

- (void)updateAlpha
{
  if ([(WFTriggerOptionSelectionView *)self highlighted])
  {
    v3 = [(WFTriggerOptionSelectionView *)self layer];
    [v3 removeAllAnimations];

    [(WFTriggerOptionSelectionView *)self setAlpha:0.5056];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __43__WFTriggerOptionSelectionView_updateAlpha__block_invoke;
    v4[3] = &unk_279EE8A78;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0 completion:0.1];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if ([(WFTriggerOptionSelectionView *)self highlighted]!= a3)
  {
    self->_highlighted = a3;

    [(WFTriggerOptionSelectionView *)self updateAlpha];
  }
}

- (BOOL)selected
{
  v3 = [(WFTriggerOptionSelectionView *)self selectedView];
  [v3 alpha];
  if (v4 == 1.0)
  {
    v5 = [(WFTriggerOptionSelectionView *)self unselectedView];
    [v5 alpha];
    v7 = v6 == 0.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  memset(&v20, 0, sizeof(v20));
  if (a3)
  {
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&v20.a = *MEMORY[0x277CBF2C0];
    *&v20.c = v5;
    *&v20.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v20, 0.01, 0.01);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v18 = v20;
  v17[2] = __44__WFTriggerOptionSelectionView_setSelected___block_invoke;
  v17[3] = &unk_279EE75B8;
  v17[4] = self;
  v19 = v3;
  [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:2054 animations:v17 completion:0];
  if (v3 && ([(WFTriggerOptionSelectionView *)self selectedImage], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(WFTriggerOptionSelectionView *)self selectedImage];
    v8 = [(WFTriggerOptionSelectionView *)self imageView];
    [v8 setImage:v7];
  }

  else
  {
    v9 = [(WFTriggerOptionSelectionView *)self selectedImage];

    if (v9)
    {
      v10 = [(WFTriggerOptionSelectionView *)self defaultImage];
      v11 = [(WFTriggerOptionSelectionView *)self imageView];
      [v11 setImage:v10];
    }

    if (!v3)
    {
      goto LABEL_12;
    }
  }

  v12 = [(WFTriggerOptionSelectionView *)self selectedStateImageTintColor];

  if (v12)
  {
    v13 = [(WFTriggerOptionSelectionView *)self selectedStateImageTintColor];
    goto LABEL_14;
  }

LABEL_12:
  v14 = [(WFTriggerOptionSelectionView *)self selectedStateImageTintColor];

  if (!v14)
  {
    return;
  }

  v13 = [(WFTriggerOptionSelectionView *)self defaultImageTintColor];
LABEL_14:
  v15 = v13;
  v16 = [(WFTriggerOptionSelectionView *)self imageView];
  [v16 setTintColor:v15];
}

void __44__WFTriggerOptionSelectionView_setSelected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedView];
  v3 = *(a1 + 56);
  v9[0] = *(a1 + 40);
  v9[1] = v3;
  v9[2] = *(a1 + 72);
  [v2 setTransform:v9];

  LOBYTE(v4) = *(a1 + 88);
  v5 = v4;
  v6 = [*(a1 + 32) selectedView];
  [v6 setAlpha:v5];

  v7 = (*(a1 + 88) ^ 1u);
  v8 = [*(a1 + 32) unselectedView];
  [v8 setAlpha:v7];
}

- (void)setDefaultImage:(id)a3
{
  objc_storeStrong(&self->_defaultImage, a3);
  v5 = a3;
  v6 = [(WFTriggerOptionSelectionView *)self imageView];
  [v6 setImage:v5];
}

- (void)setDefaultImageTintColor:(id)a3
{
  objc_storeStrong(&self->_defaultImageTintColor, a3);
  v5 = a3;
  v6 = [(WFTriggerOptionSelectionView *)self imageView];
  [v6 setTintColor:v5];
}

- (void)setSelectedStateImageTintColor:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_selectedStateImageTintColor, a3);
  if ([(WFTriggerOptionSelectionView *)self selected])
  {
    v5 = [(WFTriggerOptionSelectionView *)self imageView];
    [v5 setTintColor:v6];
  }
}

- (WFTriggerOptionSelectionView)init
{
  v80[18] = *MEMORY[0x277D85DE8];
  v79.receiver = self;
  v79.super_class = WFTriggerOptionSelectionView;
  v2 = [(WFTriggerOptionSelectionView *)&v79 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v2->_imageView;
    v2->_imageView = v3;

    [(UIImageView *)v2->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v2->_imageView setContentMode:4];
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v2->_label;
    v2->_label = v5;

    [(UILabel *)v2->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74410]];
    [(UILabel *)v2->_label setFont:v7];

    v8 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v2->_label setTextColor:v8];

    [(UILabel *)v2->_label setNumberOfLines:0];
    [(UILabel *)v2->_label setTextAlignment:1];
    [WFTriggerOptionSelectionView scaledValueForValue:35.0];
    v10 = v9;
    v11 = [WFCircularGlyphView alloc];
    v12 = [MEMORY[0x277D75348] systemBlueColor];
    v13 = [MEMORY[0x277D75348] clearColor];
    v14 = [(WFCircularGlyphView *)v11 initWithName:@"checkmark.circle.fill" glyphColor:v12 backgroundColor:v13];
    selectedView = v2->_selectedView;
    v2->_selectedView = v14;

    [(WFCircularGlyphView *)v2->_selectedView setImagePointSize:v10];
    v16 = [WFCircularGlyphView alloc];
    v17 = [MEMORY[0x277D75348] systemMidGrayColor];
    v18 = [MEMORY[0x277D75348] clearColor];
    v19 = [(WFCircularGlyphView *)v16 initWithName:@"circle" glyphColor:v17 backgroundColor:v18];
    unselectedView = v2->_unselectedView;
    v2->_unselectedView = v19;

    [(WFCircularGlyphView *)v2->_unselectedView setImagePointSize:v10];
    [(WFCircularGlyphView *)v2->_selectedView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFCircularGlyphView *)v2->_selectedView setAlpha:0.0];
    [(WFCircularGlyphView *)v2->_unselectedView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFCircularGlyphView *)v2->_selectedView frame];
    v22 = v21;
    v24 = v23;
    [(WFTriggerOptionSelectionView *)v2 addSubview:v2->_imageView];
    [(WFTriggerOptionSelectionView *)v2 addSubview:v2->_label];
    [(WFTriggerOptionSelectionView *)v2 addSubview:v2->_selectedView];
    [(WFTriggerOptionSelectionView *)v2 addSubview:v2->_unselectedView];
    v59 = MEMORY[0x277CCAAD0];
    v78 = [(UIImageView *)v2->_imageView topAnchor];
    v77 = [(WFTriggerOptionSelectionView *)v2 topAnchor];
    v76 = [v78 constraintEqualToAnchor:v77 constant:18.0];
    v80[0] = v76;
    v75 = [(UIImageView *)v2->_imageView heightAnchor];
    v74 = [v75 constraintEqualToConstant:60.0];
    v80[1] = v74;
    v73 = [(UIImageView *)v2->_imageView widthAnchor];
    v72 = [v73 constraintEqualToConstant:60.0];
    v80[2] = v72;
    v71 = [(UIImageView *)v2->_imageView centerXAnchor];
    v70 = [(WFTriggerOptionSelectionView *)v2 centerXAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v80[3] = v69;
    v68 = [(UILabel *)v2->_label topAnchor];
    v67 = [(UIImageView *)v2->_imageView bottomAnchor];
    v66 = [v68 constraintEqualToAnchor:v67 constant:20.0];
    v80[4] = v66;
    v65 = [(UILabel *)v2->_label centerXAnchor];
    v64 = [(WFTriggerOptionSelectionView *)v2 centerXAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v80[5] = v63;
    v62 = [(UILabel *)v2->_label leadingAnchor];
    v61 = [(WFTriggerOptionSelectionView *)v2 leadingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v80[6] = v60;
    v58 = [(UILabel *)v2->_label trailingAnchor];
    v57 = [(WFTriggerOptionSelectionView *)v2 trailingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v80[7] = v56;
    v55 = [(WFCircularGlyphView *)v2->_selectedView topAnchor];
    v54 = [(UILabel *)v2->_label bottomAnchor];
    v53 = [v55 constraintEqualToAnchor:v54 constant:12.0];
    v80[8] = v53;
    v52 = [(WFCircularGlyphView *)v2->_selectedView centerXAnchor];
    v51 = [(WFTriggerOptionSelectionView *)v2 centerXAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v80[9] = v50;
    v49 = [(WFCircularGlyphView *)v2->_selectedView bottomAnchor];
    v48 = [(WFTriggerOptionSelectionView *)v2 bottomAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:-20.0];
    v80[10] = v47;
    v46 = [(WFCircularGlyphView *)v2->_selectedView widthAnchor];
    v45 = [v46 constraintEqualToConstant:v22];
    v80[11] = v45;
    v44 = [(WFCircularGlyphView *)v2->_selectedView heightAnchor];
    v43 = [v44 constraintEqualToConstant:v24];
    v80[12] = v43;
    v42 = [(WFCircularGlyphView *)v2->_unselectedView topAnchor];
    v41 = [(WFCircularGlyphView *)v2->_selectedView topAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v80[13] = v40;
    v39 = [(WFCircularGlyphView *)v2->_unselectedView centerXAnchor];
    v38 = [(WFCircularGlyphView *)v2->_selectedView centerXAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v80[14] = v37;
    v36 = [(WFCircularGlyphView *)v2->_unselectedView bottomAnchor];
    v25 = [(WFCircularGlyphView *)v2->_selectedView bottomAnchor];
    v26 = [v36 constraintEqualToAnchor:v25];
    v80[15] = v26;
    v27 = [(WFCircularGlyphView *)v2->_unselectedView widthAnchor];
    v28 = [(WFCircularGlyphView *)v2->_selectedView widthAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 multiplier:1.0];
    v80[16] = v29;
    v30 = [(WFCircularGlyphView *)v2->_unselectedView heightAnchor];
    v31 = [(WFCircularGlyphView *)v2->_selectedView heightAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 multiplier:1.0];
    v80[17] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:18];
    [v59 activateConstraints:v33];

    v34 = v2;
  }

  return v2;
}

+ (double)scaledValueForValue:(double)a3
{
  v4 = objc_alloc(MEMORY[0x277D75520]);
  v5 = [v4 initForTextStyle:*MEMORY[0x277D769D0]];
  [v5 scaledValueForValue:a3];
  v7 = fmax(fmin(v6, 50.0), 24.0);

  return v7;
}

@end