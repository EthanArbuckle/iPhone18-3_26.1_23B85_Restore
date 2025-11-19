@interface _UICollectionViewListAccessoryControl
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UICollectionViewListAccessoryControl)initWithType:(int64_t)a3 constants:(id)a4;
- (id)_renderedImage;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_executeActionHandler;
- (void)_updateImageViewIfNeeded;
- (void)layoutSubviews;
- (void)setAccessoryBackgroundColor:(id)a3;
- (void)setAccessoryTintColor:(id)a3;
- (void)setAccessoryUsesMonochromaticTreatment:(BOOL)a3;
- (void)setActionHandler:(id)a3;
- (void)setConstants:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3 isUserInitiated:(BOOL)a4;
- (void)setType:(int64_t)a3;
@end

@implementation _UICollectionViewListAccessoryControl

- (_UICollectionViewListAccessoryControl)initWithType:(int64_t)a3 constants:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _UICollectionViewListAccessoryControl;
  v8 = [(UIControl *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(UIView *)v8 setOpaque:0];
    v9->_type = a3;
    objc_storeStrong(&v9->_constants, a4);
    v9->_needsImageViewUpdate = 1;
    v10 = +[UITraitCollection systemTraitsAffectingColorAppearance];
    v11 = +[UITraitCollection systemTraitsAffectingImageLookup];
    v12 = [v10 arrayByAddingObjectsFromArray:v11];

    v13 = [(UIView *)v9 registerForTraitChanges:v12 withAction:sel__setNeedsImageViewUpdate];
  }

  return v9;
}

- (void)setActionHandler:(id)a3
{
  actionHandler = self->_actionHandler;
  v6 = [a3 copy];
  v7 = self->_actionHandler;
  self->_actionHandler = v6;

  if (!a3 || actionHandler)
  {
    if (!a3 && actionHandler)
    {

      [(UIControl *)self removeTarget:self action:sel__executeActionHandler forControlEvents:0x2000];
    }
  }

  else
  {

    [(UIControl *)self addTarget:self action:sel__executeActionHandler forControlEvents:0x2000];
  }
}

- (void)_executeActionHandler
{
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2]();
  }
}

- (void)setType:(int64_t)a3
{
  if (self->_type != a3)
  {
    self->_type = a3;
    self->_nextImageViewUpdateShouldAnimate = 0;
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
  }
}

- (void)setConstants:(id)a3
{
  v5 = a3;
  if (self->_constants != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_constants, a3);
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
    v5 = v6;
  }
}

- (void)setAccessoryTintColor:(id)a3
{
  v5 = a3;
  if (self->_accessoryTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryTintColor, a3);
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
    v5 = v6;
  }
}

- (void)setAccessoryBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_accessoryBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryBackgroundColor, a3);
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
    v5 = v6;
  }
}

- (void)setAccessoryUsesMonochromaticTreatment:(BOOL)a3
{
  if (self->_accessoryUsesMonochromaticTreatment != a3)
  {
    self->_accessoryUsesMonochromaticTreatment = a3;
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UICollectionViewListAccessoryControl;
  [(UIControl *)&v4 setHighlighted:a3];
  [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
}

- (void)setSelected:(BOOL)a3 isUserInitiated:(BOOL)a4
{
  v5 = a3;
  v7 = [(UIControl *)self isSelected];
  v9.receiver = self;
  v9.super_class = _UICollectionViewListAccessoryControl;
  [(UIControl *)&v9 setSelected:v5];
  if (v7 != v5)
  {
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
    if (_UISolariumEnabled())
    {
      v8 = self->_type == 2 && a4;
    }

    else
    {
      v8 = 0;
    }

    self->_nextImageViewUpdateShouldAnimate = v8;
  }
}

- (void)_updateImageViewIfNeeded
{
  if (!self->_needsImageViewUpdate)
  {
    return;
  }

  v26 = v2;
  v27 = v3;
  self->_needsImageViewUpdate = 0;
  if (!self->_imageView)
  {
    v5 = objc_alloc_init(UIImageView);
    imageView = self->_imageView;
    self->_imageView = v5;

    [(UIView *)self addSubview:self->_imageView];
  }

  type = self->_type;
  if (type > 1)
  {
    if (type == 2)
    {
      v13 = [(UIControl *)self isSelected];
      constants = self->_constants;
      v15 = [(UIView *)self traitCollection];
      accessoryTintColor = self->_accessoryTintColor;
      if (v13)
      {
        [(UITableConstants *)constants defaultMultiSelectSelectedImageForCellStyle:0 traitCollection:v15 checkmarkColor:accessoryTintColor backgroundColor:self->_accessoryBackgroundColor];
      }

      else
      {
        [(UITableConstants *)constants defaultMultiSelectNotSelectedImageForCellStyle:0 traitCollection:v15 accessoryBaseColor:accessoryTintColor];
      }
      v10 = ;

      goto LABEL_19;
    }

    if (type == 3)
    {
      v9 = [(UITableConstants *)self->_constants defaultDetailAccessoryImage];
      v10 = v9;
      v11 = self->_accessoryTintColor;
      if (v11)
      {
        v12 = [v9 imageWithTintColor:v11 renderingMode:1];

        v10 = v12;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (!type)
    {
      v8 = [(UITableConstants *)self->_constants defaultDeleteImageWithTintColor:self->_accessoryTintColor backgroundColor:self->_accessoryBackgroundColor];
      goto LABEL_14;
    }

    if (type == 1)
    {
      v8 = [(UITableConstants *)self->_constants defaultInsertImageWithTintColor:self->_accessoryTintColor backgroundColor:self->_accessoryBackgroundColor];
LABEL_14:
      v10 = v8;
      goto LABEL_19;
    }
  }

  v10 = 0;
LABEL_19:
  v17 = self->_constants;
  v18 = [(UIView *)self traitCollection];
  if (self->_type >= 4uLL)
  {
    v19 = 4;
  }

  else
  {
    v19 = self->_type;
  }

  v20 = [(UITableConstants *)v17 defaultListCellAccessoryImageSymbolConfigurationForTraitCollection:v18 accessoryType:v19];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v20];

  v21 = [(_UICollectionViewListAccessoryControl *)self accessoryUsesMonochromaticTreatment];
  v22 = self->_imageView;
  if (v21)
  {
    [(UIView *)v22 _setMonochromaticTreatment:1];
    v22 = self->_imageView;
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  [(UIView *)v22 _setEnableMonochromaticTreatment:v23];
  if (self->_nextImageViewUpdateShouldAnimate)
  {
    self->_nextImageViewUpdateShouldAnimate = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65___UICollectionViewListAccessoryControl__updateImageViewIfNeeded__block_invoke;
    v24[3] = &unk_1E70F35B8;
    v24[4] = self;
    v25 = v10;
    [UIView _performWithAnimation:v24];
  }

  else
  {
    [(UIImageView *)self->_imageView setImage:v10];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_UICollectionViewListAccessoryControl *)self _updateImageViewIfNeeded:a3.width];
  v4 = [(UIImageView *)self->_imageView _currentImage];
  [v4 size];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = _UICollectionViewListAccessoryControl;
  [(UIView *)&v12 layoutSubviews];
  [(_UICollectionViewListAccessoryControl *)self _updateImageViewIfNeeded];
  v3 = [(UIImageView *)self->_imageView _currentImage];
  [v3 size];
  v5 = v4;
  v7 = v6;

  [(UIImageView *)self->_imageView setBounds:0.0, 0.0, v5, v7];
  [(UIView *)self bounds];
  [(UIImageView *)self->_imageView setCenter:v9 + v8 * 0.5, v11 + v10 * 0.5];
}

- (id)viewForFirstBaselineLayout
{
  [(_UICollectionViewListAccessoryControl *)self _updateImageViewIfNeeded];
  imageView = self->_imageView;

  return imageView;
}

- (id)viewForLastBaselineLayout
{
  [(_UICollectionViewListAccessoryControl *)self _updateImageViewIfNeeded];
  imageView = self->_imageView;

  return imageView;
}

- (id)_renderedImage
{
  [(_UICollectionViewListAccessoryControl *)self _updateImageViewIfNeeded];
  imageView = self->_imageView;

  return [(UIImageView *)imageView _currentImage];
}

@end