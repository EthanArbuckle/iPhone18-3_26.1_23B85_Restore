@interface _UICollectionViewListAccessoryControl
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UICollectionViewListAccessoryControl)initWithType:(int64_t)type constants:(id)constants;
- (id)_renderedImage;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_executeActionHandler;
- (void)_updateImageViewIfNeeded;
- (void)layoutSubviews;
- (void)setAccessoryBackgroundColor:(id)color;
- (void)setAccessoryTintColor:(id)color;
- (void)setAccessoryUsesMonochromaticTreatment:(BOOL)treatment;
- (void)setActionHandler:(id)handler;
- (void)setConstants:(id)constants;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected isUserInitiated:(BOOL)initiated;
- (void)setType:(int64_t)type;
@end

@implementation _UICollectionViewListAccessoryControl

- (_UICollectionViewListAccessoryControl)initWithType:(int64_t)type constants:(id)constants
{
  constantsCopy = constants;
  v15.receiver = self;
  v15.super_class = _UICollectionViewListAccessoryControl;
  v8 = [(UIControl *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(UIView *)v8 setOpaque:0];
    v9->_type = type;
    objc_storeStrong(&v9->_constants, constants);
    v9->_needsImageViewUpdate = 1;
    v10 = +[UITraitCollection systemTraitsAffectingColorAppearance];
    v11 = +[UITraitCollection systemTraitsAffectingImageLookup];
    v12 = [v10 arrayByAddingObjectsFromArray:v11];

    v13 = [(UIView *)v9 registerForTraitChanges:v12 withAction:sel__setNeedsImageViewUpdate];
  }

  return v9;
}

- (void)setActionHandler:(id)handler
{
  actionHandler = self->_actionHandler;
  v6 = [handler copy];
  v7 = self->_actionHandler;
  self->_actionHandler = v6;

  if (!handler || actionHandler)
  {
    if (!handler && actionHandler)
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

- (void)setType:(int64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    self->_nextImageViewUpdateShouldAnimate = 0;
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
  }
}

- (void)setConstants:(id)constants
{
  constantsCopy = constants;
  if (self->_constants != constantsCopy)
  {
    v6 = constantsCopy;
    objc_storeStrong(&self->_constants, constants);
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
    constantsCopy = v6;
  }
}

- (void)setAccessoryTintColor:(id)color
{
  colorCopy = color;
  if (self->_accessoryTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_accessoryTintColor, color);
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
    colorCopy = v6;
  }
}

- (void)setAccessoryBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_accessoryBackgroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_accessoryBackgroundColor, color);
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
    colorCopy = v6;
  }
}

- (void)setAccessoryUsesMonochromaticTreatment:(BOOL)treatment
{
  if (self->_accessoryUsesMonochromaticTreatment != treatment)
  {
    self->_accessoryUsesMonochromaticTreatment = treatment;
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = _UICollectionViewListAccessoryControl;
  [(UIControl *)&v4 setHighlighted:highlighted];
  [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
}

- (void)setSelected:(BOOL)selected isUserInitiated:(BOOL)initiated
{
  selectedCopy = selected;
  isSelected = [(UIControl *)self isSelected];
  v9.receiver = self;
  v9.super_class = _UICollectionViewListAccessoryControl;
  [(UIControl *)&v9 setSelected:selectedCopy];
  if (isSelected != selectedCopy)
  {
    [(_UICollectionViewListAccessoryControl *)self _setNeedsImageViewUpdate];
    if (_UISolariumEnabled())
    {
      v8 = self->_type == 2 && initiated;
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
      isSelected = [(UIControl *)self isSelected];
      constants = self->_constants;
      traitCollection = [(UIView *)self traitCollection];
      accessoryTintColor = self->_accessoryTintColor;
      if (isSelected)
      {
        [(UITableConstants *)constants defaultMultiSelectSelectedImageForCellStyle:0 traitCollection:traitCollection checkmarkColor:accessoryTintColor backgroundColor:self->_accessoryBackgroundColor];
      }

      else
      {
        [(UITableConstants *)constants defaultMultiSelectNotSelectedImageForCellStyle:0 traitCollection:traitCollection accessoryBaseColor:accessoryTintColor];
      }
      v10 = ;

      goto LABEL_19;
    }

    if (type == 3)
    {
      defaultDetailAccessoryImage = [(UITableConstants *)self->_constants defaultDetailAccessoryImage];
      v10 = defaultDetailAccessoryImage;
      v11 = self->_accessoryTintColor;
      if (v11)
      {
        v12 = [defaultDetailAccessoryImage imageWithTintColor:v11 renderingMode:1];

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
  traitCollection2 = [(UIView *)self traitCollection];
  if (self->_type >= 4uLL)
  {
    v19 = 4;
  }

  else
  {
    v19 = self->_type;
  }

  v20 = [(UITableConstants *)v17 defaultListCellAccessoryImageSymbolConfigurationForTraitCollection:traitCollection2 accessoryType:v19];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v20];

  accessoryUsesMonochromaticTreatment = [(_UICollectionViewListAccessoryControl *)self accessoryUsesMonochromaticTreatment];
  v22 = self->_imageView;
  if (accessoryUsesMonochromaticTreatment)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_UICollectionViewListAccessoryControl *)self _updateImageViewIfNeeded:fits.width];
  _currentImage = [(UIImageView *)self->_imageView _currentImage];
  [_currentImage size];
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
  _currentImage = [(UIImageView *)self->_imageView _currentImage];
  [_currentImage size];
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