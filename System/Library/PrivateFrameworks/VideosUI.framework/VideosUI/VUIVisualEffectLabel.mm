@interface VUIVisualEffectLabel
+ (id)labelWithType:(unint64_t)type label:(id)label traitCollection:(id)collection existingVisualEffectLabel:(id)effectLabel;
+ (int64_t)_backdropStyleForVisualEffectType:(unint64_t)type traitCollection:(id)collection;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIVisualEffectLabel)initWithFrame:(CGRect)frame;
- (void)_configureVisualEffectForTraitCollection;
- (void)_updateContentWithNewLabel:(id)label oldLabel:(id)oldLabel;
- (void)layoutSubviews;
- (void)setDisableClippingOnTallScripts:(BOOL)scripts;
- (void)setLabel:(id)label;
- (void)setVisualEffectView:(id)view;
@end

@implementation VUIVisualEffectLabel

- (VUIVisualEffectLabel)initWithFrame:(CGRect)frame
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VUIVisualEffectLabel;
  v3 = [(VUIVisualEffectLabel *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v4 = objc_opt_self();
    v11[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__VUIVisualEffectLabel_initWithFrame___block_invoke;
    v7[3] = &unk_1E872E760;
    objc_copyWeak(&v8, &location);
    [(VUIVisualEffectLabel *)v3 vui_registerForTraitChanges:v5 withHandler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __38__VUIVisualEffectLabel_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

+ (id)labelWithType:(unint64_t)type label:(id)label traitCollection:(id)collection existingVisualEffectLabel:(id)effectLabel
{
  effectLabelCopy = effectLabel;
  labelCopy = label;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = effectLabelCopy;
  }

  else
  {
    v10 = objc_alloc_init(VUIVisualEffectLabel);
  }

  v11 = v10;
  visualEffectView = [(VUIVisualEffectLabel *)v10 visualEffectView];
  v13 = visualEffectView;
  if (visualEffectView)
  {
    v14 = visualEffectView;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E69DD298]);
  }

  v15 = v14;

  [(VUIVisualEffectLabel *)v11 setVisualEffectLabelType:type];
  [(VUIVisualEffectLabel *)v11 setVisualEffectView:v15];
  [(VUIVisualEffectLabel *)v11 setLabel:labelCopy];

  return v11;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  label = self->_label;
  if (label != labelCopy)
  {
    v9 = labelCopy;
    v6 = labelCopy;
    v7 = self->_label;
    self->_label = v6;
    labelCopy2 = label;

    [(VUIVisualEffectLabel *)self _updateContentWithNewLabel:self->_label oldLabel:labelCopy2];
    labelCopy = v9;
  }
}

- (void)setVisualEffectView:(id)view
{
  viewCopy = view;
  visualEffectView = self->_visualEffectView;
  if (visualEffectView != viewCopy)
  {
    v7 = viewCopy;
    [(UIVisualEffectView *)visualEffectView removeFromSuperview];
    objc_storeStrong(&self->_visualEffectView, view);
    if (v7)
    {
      [(VUIVisualEffectLabel *)self addSubview:v7];
    }

    [(VUIVisualEffectLabel *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUILabel *)self->_label sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUIVisualEffectLabel;
  [(VUIVisualEffectLabel *)&v5 layoutSubviews];
  [(VUIVisualEffectLabel *)self _configureVisualEffectForTraitCollection];
  visualEffectView = self->_visualEffectView;
  [(VUIVisualEffectLabel *)self bounds];
  [(UIVisualEffectView *)visualEffectView setFrame:?];
  label = self->_label;
  [(VUIVisualEffectLabel *)self bounds];
  [(VUILabel *)label setFrame:?];
}

- (void)setDisableClippingOnTallScripts:(BOOL)scripts
{
  if (scripts && CTFontHasExuberatedLineHeight())
  {
    contentView = [(UIVisualEffectView *)self->_visualEffectView contentView];
    [contentView setClipsToBounds:0];
  }

  self->_disableClippingOnTallScripts = scripts;
}

- (void)_updateContentWithNewLabel:(id)label oldLabel:(id)oldLabel
{
  labelCopy = label;
  [oldLabel removeFromSuperview];
  if (labelCopy)
  {
    contentView = [(UIVisualEffectView *)self->_visualEffectView contentView];
    [contentView addSubview:labelCopy];
  }

  [(VUIVisualEffectLabel *)self setNeedsLayout];
}

+ (int64_t)_backdropStyleForVisualEffectType:(unint64_t)type traitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (type == 2)
  {
    if ([collectionCopy userInterfaceStyle] == 1)
    {
      v7 = 4015;
    }

    else
    {
      v7 = 4014;
    }
  }

  else if (type == 1)
  {
    if ([collectionCopy userInterfaceStyle] == 1)
    {
      v7 = 4002;
    }

    else
    {
      v7 = 4007;
    }
  }

  else
  {
    v7 = 0x8000000000000000;
  }

  return v7;
}

- (void)_configureVisualEffectForTraitCollection
{
  visualEffectView = [(VUIVisualEffectLabel *)self visualEffectView];

  if (visualEffectView)
  {
    v4 = objc_opt_class();
    visualEffectLabelType = [(VUIVisualEffectLabel *)self visualEffectLabelType];
    traitCollection = [(VUIVisualEffectLabel *)self traitCollection];
    v7 = [v4 _backdropStyleForVisualEffectType:visualEffectLabelType traitCollection:traitCollection];

    if (v7 != [(VUIVisualEffectLabel *)self blurEffectStyle])
    {
      [(VUIVisualEffectLabel *)self setBlurEffectStyle:v7];
      v11 = [MEMORY[0x1E69DC730] effectWithStyle:v7];
      if ([(VUIVisualEffectLabel *)self visualEffectLabelType]== 1)
      {
        v8 = [MEMORY[0x1E69DD248] effectForBlurEffect:v11];
      }

      else
      {
        v8 = v11;
      }

      v9 = v8;
      visualEffectView2 = [(VUIVisualEffectLabel *)self visualEffectView];
      [visualEffectView2 setEffect:v9];
    }
  }
}

@end