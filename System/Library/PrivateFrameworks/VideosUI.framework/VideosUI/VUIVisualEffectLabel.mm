@interface VUIVisualEffectLabel
+ (id)labelWithType:(unint64_t)a3 label:(id)a4 traitCollection:(id)a5 existingVisualEffectLabel:(id)a6;
+ (int64_t)_backdropStyleForVisualEffectType:(unint64_t)a3 traitCollection:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIVisualEffectLabel)initWithFrame:(CGRect)a3;
- (void)_configureVisualEffectForTraitCollection;
- (void)_updateContentWithNewLabel:(id)a3 oldLabel:(id)a4;
- (void)layoutSubviews;
- (void)setDisableClippingOnTallScripts:(BOOL)a3;
- (void)setLabel:(id)a3;
- (void)setVisualEffectView:(id)a3;
@end

@implementation VUIVisualEffectLabel

- (VUIVisualEffectLabel)initWithFrame:(CGRect)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VUIVisualEffectLabel;
  v3 = [(VUIVisualEffectLabel *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

+ (id)labelWithType:(unint64_t)a3 label:(id)a4 traitCollection:(id)a5 existingVisualEffectLabel:(id)a6
{
  v8 = a6;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(VUIVisualEffectLabel);
  }

  v11 = v10;
  v12 = [(VUIVisualEffectLabel *)v10 visualEffectView];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E69DD298]);
  }

  v15 = v14;

  [(VUIVisualEffectLabel *)v11 setVisualEffectLabelType:a3];
  [(VUIVisualEffectLabel *)v11 setVisualEffectView:v15];
  [(VUIVisualEffectLabel *)v11 setLabel:v9];

  return v11;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  label = self->_label;
  if (label != v4)
  {
    v9 = v4;
    v6 = v4;
    v7 = self->_label;
    self->_label = v6;
    v8 = label;

    [(VUIVisualEffectLabel *)self _updateContentWithNewLabel:self->_label oldLabel:v8];
    v4 = v9;
  }
}

- (void)setVisualEffectView:(id)a3
{
  v5 = a3;
  visualEffectView = self->_visualEffectView;
  if (visualEffectView != v5)
  {
    v7 = v5;
    [(UIVisualEffectView *)visualEffectView removeFromSuperview];
    objc_storeStrong(&self->_visualEffectView, a3);
    if (v7)
    {
      [(VUIVisualEffectLabel *)self addSubview:v7];
    }

    [(VUIVisualEffectLabel *)self setNeedsLayout];
    v5 = v7;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUILabel *)self->_label sizeThatFits:a3.width, a3.height];
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

- (void)setDisableClippingOnTallScripts:(BOOL)a3
{
  if (a3 && CTFontHasExuberatedLineHeight())
  {
    v5 = [(UIVisualEffectView *)self->_visualEffectView contentView];
    [v5 setClipsToBounds:0];
  }

  self->_disableClippingOnTallScripts = a3;
}

- (void)_updateContentWithNewLabel:(id)a3 oldLabel:(id)a4
{
  v7 = a3;
  [a4 removeFromSuperview];
  if (v7)
  {
    v6 = [(UIVisualEffectView *)self->_visualEffectView contentView];
    [v6 addSubview:v7];
  }

  [(VUIVisualEffectLabel *)self setNeedsLayout];
}

+ (int64_t)_backdropStyleForVisualEffectType:(unint64_t)a3 traitCollection:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 2)
  {
    if ([v5 userInterfaceStyle] == 1)
    {
      v7 = 4015;
    }

    else
    {
      v7 = 4014;
    }
  }

  else if (a3 == 1)
  {
    if ([v5 userInterfaceStyle] == 1)
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
  v3 = [(VUIVisualEffectLabel *)self visualEffectView];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(VUIVisualEffectLabel *)self visualEffectLabelType];
    v6 = [(VUIVisualEffectLabel *)self traitCollection];
    v7 = [v4 _backdropStyleForVisualEffectType:v5 traitCollection:v6];

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
      v10 = [(VUIVisualEffectLabel *)self visualEffectView];
      [v10 setEffect:v9];
    }
  }
}

@end