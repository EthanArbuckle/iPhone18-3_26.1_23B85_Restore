@interface PKEnhancedMerchantCollectionViewCell
- (PKEnhancedMerchantCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_createHighlightFilterIfNecessary;
- (void)_updateFilter;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)updateWithAccountEnhancedMerchant:(id)merchant;
@end

@implementation PKEnhancedMerchantCollectionViewCell

- (PKEnhancedMerchantCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKEnhancedMerchantCollectionViewCell;
  v3 = [(PKEnhancedMerchantCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKEnhancedMerchantCollectionViewCell *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  imageView = self->_imageView;
  self->_imageView = v3;

  [(UIImageView *)self->_imageView setContentMode:1];
  layer = [(PKEnhancedMerchantCollectionViewCell *)self layer];
  v5 = _UISolariumFeatureFlagEnabled();
  v6 = 10.0;
  if (v5)
  {
    v6 = 26.0;
  }

  [layer setCornerRadius:v6];
  [layer setCornerCurve:*MEMORY[0x1E69796E8]];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(PKEnhancedMerchantCollectionViewCell *)self setBackgroundColor:whiteColor];

  contentView = [(PKEnhancedMerchantCollectionViewCell *)self contentView];
  [contentView addSubview:self->_imageView];

  v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  normalInputColor = self->_normalInputColor;
  self->_normalInputColor = v9;

  tableCellDefaultSelectionTintColor = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
  v13 = [tableCellDefaultSelectionTintColor resolvedColorWithTraitCollection:v12];
  highlightInputColor = self->_highlightInputColor;
  self->_highlightInputColor = v13;

  self->_highlighted = 0;
  self->_selected = 0;
  [(PKEnhancedMerchantCollectionViewCell *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9758]];
}

- (void)_createHighlightFilterIfNecessary
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!self->_highlightFilter)
  {
    v3 = objc_alloc(MEMORY[0x1E6979378]);
    v4 = [v3 initWithType:*MEMORY[0x1E6979CB0]];
    highlightFilter = self->_highlightFilter;
    self->_highlightFilter = v4;

    [(CAFilter *)self->_highlightFilter setName:@"highlightFilter"];
    [(CAFilter *)self->_highlightFilter setValue:[(UIColor *)self->_normalInputColor CGColor] forKey:@"inputColor"];
    layer = [(PKEnhancedMerchantCollectionViewCell *)self layer];
    v8[0] = self->_highlightFilter;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [layer setFilters:v7];

    objc_storeStrong(&self->_appliedInputColor, self->_normalInputColor);
  }
}

- (void)updateWithAccountEnhancedMerchant:(id)merchant
{
  merchantCopy = merchant;
  objc_storeStrong(&self->_enhancedMerchant, merchant);
  v5 = merchantCopy;
  if (!merchantCopy)
  {
    [(UIImageView *)self->_imageView setImage:0];
    v5 = 0;
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKEnhancedMerchantCollectionViewCell;
  [(PKEnhancedMerchantCollectionViewCell *)&v3 prepareForReuse];
  [(PKEnhancedMerchantCollectionViewCell *)self updateWithAccountEnhancedMerchant:0];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PKEnhancedMerchantCollectionViewCell;
  [(PKEnhancedMerchantCollectionViewCell *)&v16 layoutSubviews];
  [(PKEnhancedMerchantCollectionViewCell *)self bounds];
  v18 = CGRectInset(v17, 30.0, 30.0);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  contentView = [(PKEnhancedMerchantCollectionViewCell *)self contentView];
  [(PKEnhancedMerchantCollectionViewCell *)self convertRect:contentView toView:x, y, width, height];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(UIImageView *)self->_imageView setFrame:v9, v11, v13, v15];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = PKEnhancedMerchantCollectionViewCell;
  [(PKEnhancedMerchantCollectionViewCell *)&v5 setHighlighted:?];
  if (self->_highlighted != highlightedCopy)
  {
    self->_highlighted = highlightedCopy;
    [(PKEnhancedMerchantCollectionViewCell *)self _updateFilter];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = PKEnhancedMerchantCollectionViewCell;
  [(PKEnhancedMerchantCollectionViewCell *)&v5 setSelected:?];
  if (self->_selected != selectedCopy)
  {
    self->_selected = selectedCopy;
    [(PKEnhancedMerchantCollectionViewCell *)self _updateFilter];
  }
}

- (void)_updateFilter
{
  [(PKEnhancedMerchantCollectionViewCell *)self _createHighlightFilterIfNecessary];
  v3 = &OBJC_IVAR___PKEnhancedMerchantCollectionViewCell__highlightInputColor;
  if (!self->_highlighted)
  {
    v4 = 1;
    if (self->_selected)
    {
      v4 = 2;
    }

    v3 = &OBJC_IVAR___PKEnhancedMerchantCollectionViewCell__imageView[v4];
  }

  v5 = *(&self->super.super.super.super.super.isa + *v3);
  v17 = v5;
  if (([(UIColor *)self->_appliedInputColor isEqual:?]& 1) == 0)
  {
    v6 = MEMORY[0x1E69DC888];
    layer = [(PKEnhancedMerchantCollectionViewCell *)self layer];
    presentationLayer = [layer presentationLayer];
    cGColor = [presentationLayer valueForKeyPath:@"filters.highlightFilter.inputColor"];
    if (!cGColor)
    {
      cGColor = [(UIColor *)self->_appliedInputColor CGColor];
    }

    v10 = [v6 colorWithCGColor:cGColor];

    layer2 = [(PKEnhancedMerchantCollectionViewCell *)self layer];
    v12 = v17;
    [layer2 setValue:objc_msgSend(v17 forKeyPath:{"CGColor"), @"filters.highlightFilter.inputColor"}];

    v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
    [v13 setAdditive:0];
    [v13 setDuration:0.15];
    [v13 setFromValue:{objc_msgSend(v10, "CGColor")}];
    v14 = v17;
    [v13 setToValue:{objc_msgSend(v17, "CGColor")}];
    layer3 = [(PKEnhancedMerchantCollectionViewCell *)self layer];
    [layer3 removeAnimationForKey:@"highlight"];

    layer4 = [(PKEnhancedMerchantCollectionViewCell *)self layer];
    [layer4 addAnimation:v13 forKey:@"highlight"];

    objc_storeStrong(&self->_appliedInputColor, v5);
  }
}

@end