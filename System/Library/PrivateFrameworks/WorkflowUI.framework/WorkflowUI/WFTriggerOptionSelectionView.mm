@interface WFTriggerOptionSelectionView
+ (double)scaledValueForValue:(double)value;
- (BOOL)selected;
- (WFTriggerOptionSelectionView)init;
- (void)setDefaultImage:(id)image;
- (void)setDefaultImageTintColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedStateImageTintColor:(id)color;
- (void)updateAlpha;
@end

@implementation WFTriggerOptionSelectionView

- (void)updateAlpha
{
  if ([(WFTriggerOptionSelectionView *)self highlighted])
  {
    layer = [(WFTriggerOptionSelectionView *)self layer];
    [layer removeAllAnimations];

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

- (void)setHighlighted:(BOOL)highlighted
{
  if ([(WFTriggerOptionSelectionView *)self highlighted]!= highlighted)
  {
    self->_highlighted = highlighted;

    [(WFTriggerOptionSelectionView *)self updateAlpha];
  }
}

- (BOOL)selected
{
  selectedView = [(WFTriggerOptionSelectionView *)self selectedView];
  [selectedView alpha];
  if (v4 == 1.0)
  {
    unselectedView = [(WFTriggerOptionSelectionView *)self unselectedView];
    [unselectedView alpha];
    v7 = v6 == 0.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  memset(&v20, 0, sizeof(v20));
  if (selected)
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
  v19 = selectedCopy;
  [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:2054 animations:v17 completion:0];
  if (selectedCopy && ([(WFTriggerOptionSelectionView *)self selectedImage], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    selectedImage = [(WFTriggerOptionSelectionView *)self selectedImage];
    imageView = [(WFTriggerOptionSelectionView *)self imageView];
    [imageView setImage:selectedImage];
  }

  else
  {
    selectedImage2 = [(WFTriggerOptionSelectionView *)self selectedImage];

    if (selectedImage2)
    {
      defaultImage = [(WFTriggerOptionSelectionView *)self defaultImage];
      imageView2 = [(WFTriggerOptionSelectionView *)self imageView];
      [imageView2 setImage:defaultImage];
    }

    if (!selectedCopy)
    {
      goto LABEL_12;
    }
  }

  selectedStateImageTintColor = [(WFTriggerOptionSelectionView *)self selectedStateImageTintColor];

  if (selectedStateImageTintColor)
  {
    selectedStateImageTintColor2 = [(WFTriggerOptionSelectionView *)self selectedStateImageTintColor];
    goto LABEL_14;
  }

LABEL_12:
  selectedStateImageTintColor3 = [(WFTriggerOptionSelectionView *)self selectedStateImageTintColor];

  if (!selectedStateImageTintColor3)
  {
    return;
  }

  selectedStateImageTintColor2 = [(WFTriggerOptionSelectionView *)self defaultImageTintColor];
LABEL_14:
  v15 = selectedStateImageTintColor2;
  imageView3 = [(WFTriggerOptionSelectionView *)self imageView];
  [imageView3 setTintColor:v15];
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

- (void)setDefaultImage:(id)image
{
  objc_storeStrong(&self->_defaultImage, image);
  imageCopy = image;
  imageView = [(WFTriggerOptionSelectionView *)self imageView];
  [imageView setImage:imageCopy];
}

- (void)setDefaultImageTintColor:(id)color
{
  objc_storeStrong(&self->_defaultImageTintColor, color);
  colorCopy = color;
  imageView = [(WFTriggerOptionSelectionView *)self imageView];
  [imageView setTintColor:colorCopy];
}

- (void)setSelectedStateImageTintColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_selectedStateImageTintColor, color);
  if ([(WFTriggerOptionSelectionView *)self selected])
  {
    imageView = [(WFTriggerOptionSelectionView *)self imageView];
    [imageView setTintColor:colorCopy];
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

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v2->_label setTextColor:labelColor];

    [(UILabel *)v2->_label setNumberOfLines:0];
    [(UILabel *)v2->_label setTextAlignment:1];
    [WFTriggerOptionSelectionView scaledValueForValue:35.0];
    v10 = v9;
    v11 = [WFCircularGlyphView alloc];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    clearColor = [MEMORY[0x277D75348] clearColor];
    v14 = [(WFCircularGlyphView *)v11 initWithName:@"checkmark.circle.fill" glyphColor:systemBlueColor backgroundColor:clearColor];
    selectedView = v2->_selectedView;
    v2->_selectedView = v14;

    [(WFCircularGlyphView *)v2->_selectedView setImagePointSize:v10];
    v16 = [WFCircularGlyphView alloc];
    systemMidGrayColor = [MEMORY[0x277D75348] systemMidGrayColor];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    v19 = [(WFCircularGlyphView *)v16 initWithName:@"circle" glyphColor:systemMidGrayColor backgroundColor:clearColor2];
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
    topAnchor = [(UIImageView *)v2->_imageView topAnchor];
    topAnchor2 = [(WFTriggerOptionSelectionView *)v2 topAnchor];
    v76 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:18.0];
    v80[0] = v76;
    heightAnchor = [(UIImageView *)v2->_imageView heightAnchor];
    v74 = [heightAnchor constraintEqualToConstant:60.0];
    v80[1] = v74;
    widthAnchor = [(UIImageView *)v2->_imageView widthAnchor];
    v72 = [widthAnchor constraintEqualToConstant:60.0];
    v80[2] = v72;
    centerXAnchor = [(UIImageView *)v2->_imageView centerXAnchor];
    centerXAnchor2 = [(WFTriggerOptionSelectionView *)v2 centerXAnchor];
    v69 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v80[3] = v69;
    topAnchor3 = [(UILabel *)v2->_label topAnchor];
    bottomAnchor = [(UIImageView *)v2->_imageView bottomAnchor];
    v66 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
    v80[4] = v66;
    centerXAnchor3 = [(UILabel *)v2->_label centerXAnchor];
    centerXAnchor4 = [(WFTriggerOptionSelectionView *)v2 centerXAnchor];
    v63 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v80[5] = v63;
    leadingAnchor = [(UILabel *)v2->_label leadingAnchor];
    leadingAnchor2 = [(WFTriggerOptionSelectionView *)v2 leadingAnchor];
    v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v80[6] = v60;
    trailingAnchor = [(UILabel *)v2->_label trailingAnchor];
    trailingAnchor2 = [(WFTriggerOptionSelectionView *)v2 trailingAnchor];
    v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v80[7] = v56;
    topAnchor4 = [(WFCircularGlyphView *)v2->_selectedView topAnchor];
    bottomAnchor2 = [(UILabel *)v2->_label bottomAnchor];
    v53 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:12.0];
    v80[8] = v53;
    centerXAnchor5 = [(WFCircularGlyphView *)v2->_selectedView centerXAnchor];
    centerXAnchor6 = [(WFTriggerOptionSelectionView *)v2 centerXAnchor];
    v50 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v80[9] = v50;
    bottomAnchor3 = [(WFCircularGlyphView *)v2->_selectedView bottomAnchor];
    bottomAnchor4 = [(WFTriggerOptionSelectionView *)v2 bottomAnchor];
    v47 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-20.0];
    v80[10] = v47;
    widthAnchor2 = [(WFCircularGlyphView *)v2->_selectedView widthAnchor];
    v45 = [widthAnchor2 constraintEqualToConstant:v22];
    v80[11] = v45;
    heightAnchor2 = [(WFCircularGlyphView *)v2->_selectedView heightAnchor];
    v43 = [heightAnchor2 constraintEqualToConstant:v24];
    v80[12] = v43;
    topAnchor5 = [(WFCircularGlyphView *)v2->_unselectedView topAnchor];
    topAnchor6 = [(WFCircularGlyphView *)v2->_selectedView topAnchor];
    v40 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v80[13] = v40;
    centerXAnchor7 = [(WFCircularGlyphView *)v2->_unselectedView centerXAnchor];
    centerXAnchor8 = [(WFCircularGlyphView *)v2->_selectedView centerXAnchor];
    v37 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v80[14] = v37;
    bottomAnchor5 = [(WFCircularGlyphView *)v2->_unselectedView bottomAnchor];
    bottomAnchor6 = [(WFCircularGlyphView *)v2->_selectedView bottomAnchor];
    v26 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v80[15] = v26;
    widthAnchor3 = [(WFCircularGlyphView *)v2->_unselectedView widthAnchor];
    widthAnchor4 = [(WFCircularGlyphView *)v2->_selectedView widthAnchor];
    v29 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
    v80[16] = v29;
    heightAnchor3 = [(WFCircularGlyphView *)v2->_unselectedView heightAnchor];
    heightAnchor4 = [(WFCircularGlyphView *)v2->_selectedView heightAnchor];
    v32 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:1.0];
    v80[17] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:18];
    [v59 activateConstraints:v33];

    v34 = v2;
  }

  return v2;
}

+ (double)scaledValueForValue:(double)value
{
  v4 = objc_alloc(MEMORY[0x277D75520]);
  v5 = [v4 initForTextStyle:*MEMORY[0x277D769D0]];
  [v5 scaledValueForValue:value];
  v7 = fmax(fmin(v6, 50.0), 24.0);

  return v7;
}

@end