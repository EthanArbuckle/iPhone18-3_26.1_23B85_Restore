@interface PXPeopleDetailSettingsCollectionViewCell
+ (double)preferredHeightForWidth:(double)width forAvatarPercentage:(double)percentage withSizeClass:(int64_t)class isFavorite:(BOOL)favorite;
- (BOOL)isActionIndicatorHidden;
- (PXPeopleDetailSettingsCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIImage)image;
- (double)avatarCenterYOffset;
- (id)_placeHolderColor;
- (int64_t)_preferredSizeClass;
- (void)_updateType;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActionIndicatorHidden:(BOOL)hidden;
- (void)setImage:(id)image;
- (void)setImage:(id)image normalizedFaceRect:(CGRect)rect;
- (void)setIsFavorite:(BOOL)favorite;
- (void)setName:(id)name;
- (void)setPhotoQuantity:(unint64_t)quantity;
- (void)setSelected:(BOOL)selected;
- (void)setTextAlpha:(double)alpha;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXPeopleDetailSettingsCollectionViewCell

- (id)_placeHolderColor
{
  if (_placeHolderColor_token != -1)
  {
    dispatch_once(&_placeHolderColor_token, &__block_literal_global_111);
  }

  v3 = _placeHolderColor_placeHolderColor;

  return v3;
}

void __61__PXPeopleDetailSettingsCollectionViewCell__placeHolderColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithWhite:0.899999976 alpha:1.0];
  v1 = _placeHolderColor_placeHolderColor;
  _placeHolderColor_placeHolderColor = v0;
}

- (void)_updateType
{
  if ([(PXPeopleDetailSettingsCollectionViewCell *)self _preferredSizeClass]== 1)
  {
    v3 = MEMORY[0x1E69DDD28];
    if (self->_isFavorite)
    {
      v4 = MEMORY[0x1E69DDD80];
    }

    else
    {
      v4 = MEMORY[0x1E69DDD28];
    }

    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v4];
    if (self->_isFavorite)
    {
      v5 = v3;
    }

    else
    {
      v5 = MEMORY[0x1E69DDD08];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v5 = MEMORY[0x1E69DDD80];
  }

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v5];
  nameLabel = [(PXPeopleDetailSettingsCollectionViewCell *)self nameLabel];
  [nameLabel setFont:v9];

  quantityLabel = [(PXPeopleDetailSettingsCollectionViewCell *)self quantityLabel];
  [quantityLabel setFont:v6];
}

- (int64_t)_preferredSizeClass
{
  traitCollection = [(PXPeopleDetailSettingsCollectionViewCell *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    if ([traitCollection userInterfaceIdiom] == 1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (double)avatarCenterYOffset
{
  avatarView = [(PXPeopleDetailSettingsCollectionViewCell *)self avatarView];
  [avatarView center];
  v5 = v4;
  [(PXPeopleDetailSettingsCollectionViewCell *)self bounds];
  v7 = v5 + v6 * -0.5;

  return v7;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = PXPeopleDetailSettingsCollectionViewCell;
  [(PXPeopleDetailSettingsCollectionViewCell *)&v6 setSelected:?];
  selectionView = [(PXPeopleDetailSettingsCollectionViewCell *)self selectionView];
  [selectionView setHidden:!selectedCopy];
}

- (void)setTextAlpha:(double)alpha
{
  self->_textAlpha = alpha;
  nameLabel = [(PXPeopleDetailSettingsCollectionViewCell *)self nameLabel];
  [nameLabel setAlpha:self->_textAlpha];

  quantityLabel = [(PXPeopleDetailSettingsCollectionViewCell *)self quantityLabel];
  [quantityLabel setAlpha:self->_textAlpha];
}

- (BOOL)isActionIndicatorHidden
{
  actionIndicatorView = [(PXPeopleDetailSettingsCollectionViewCell *)self actionIndicatorView];
  isHidden = [actionIndicatorView isHidden];

  return isHidden;
}

- (void)setActionIndicatorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  actionIndicatorView = [(PXPeopleDetailSettingsCollectionViewCell *)self actionIndicatorView];
  [actionIndicatorView setHidden:hiddenCopy];
}

- (void)setPhotoQuantity:(unint64_t)quantity
{
  self->_photoQuantity = quantity;
  quantityNumberFormatter = self->_quantityNumberFormatter;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSNumberFormatter *)quantityNumberFormatter stringFromNumber:v5];

  quantityLabel = [(PXPeopleDetailSettingsCollectionViewCell *)self quantityLabel];
  [quantityLabel setText:v7];
}

- (UIImage)image
{
  avatarView = [(PXPeopleDetailSettingsCollectionViewCell *)self avatarView];
  image = [avatarView image];

  return image;
}

- (void)setImage:(id)image normalizedFaceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  avatarView = [(PXPeopleDetailSettingsCollectionViewCell *)self avatarView];
  layer = [avatarView layer];
  [avatarView setImage:imageCopy];

  [avatarView setContentMode:2];
  [layer setContentsRect:{x, y, width, height}];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  avatarView = [(PXPeopleDetailSettingsCollectionViewCell *)self avatarView];
  [avatarView setImage:imageCopy];

  [avatarView setContentMode:1];
  layer = [avatarView layer];
  [layer setContentsRect:{self->_unitRect.origin.x, self->_unitRect.origin.y, self->_unitRect.size.width, self->_unitRect.size.height}];
}

- (void)setName:(id)name
{
  nameCopy = name;
  name = self->_name;
  v11 = nameCopy;
  if (name != nameCopy || (v7 = [(NSString *)name isEqualToString:nameCopy], v8 = v11, !v7))
  {
    objc_storeStrong(&self->_name, name);
    nameLabel = [(PXPeopleDetailSettingsCollectionViewCell *)self nameLabel];
    v10 = [(NSString *)v11 length];
    if (v10)
    {
      [nameLabel setText:v11];
    }

    [nameLabel setHidden:v10 == 0];
    [(PXPeopleDetailSettingsCollectionViewCell *)self setNeedsLayout];

    v8 = v11;
  }
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = PXPeopleDetailSettingsCollectionViewCell;
  [(PXPeopleDetailSettingsCollectionViewCell *)&v6 prepareForReuse];
  [(UIImageView *)self->_avatarView setImage:0];
  name = self->_name;
  self->_name = &stru_1F1741150;

  [(UILabel *)self->_nameLabel setText:&stru_1F1741150];
  [(UILabel *)self->_nameLabel setHidden:1];
  self->_photoQuantity = 0;
  quantityLabel = self->_quantityLabel;
  v5 = [(NSNumberFormatter *)self->_quantityNumberFormatter stringFromNumber:&unk_1F1909820];
  [(UILabel *)quantityLabel setText:v5];

  [(PXPeopleDetailSettingsCollectionViewCell *)self setHidden:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PXPeopleDetailSettingsCollectionViewCell;
  [(PXPeopleDetailSettingsCollectionViewCell *)&v4 traitCollectionDidChange:change];
  [(PXPeopleDetailSettingsCollectionViewCell *)self _updateType];
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = PXPeopleDetailSettingsCollectionViewCell;
  [(PXPeopleDetailSettingsCollectionViewCell *)&v58 layoutSubviews];
  avatarView = [(PXPeopleDetailSettingsCollectionViewCell *)self avatarView];
  quantityLabel = [(PXPeopleDetailSettingsCollectionViewCell *)self quantityLabel];
  nameLabel = [(PXPeopleDetailSettingsCollectionViewCell *)self nameLabel];
  actionIndicatorView = [(PXPeopleDetailSettingsCollectionViewCell *)self actionIndicatorView];
  selectionView = [(PXPeopleDetailSettingsCollectionViewCell *)self selectionView];
  [(PXPeopleDetailSettingsCollectionViewCell *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  isHidden = [nameLabel isHidden];
  font = [nameLabel font];
  font2 = [quantityLabel font];
  [nameLabel setFont:font];
  [quantityLabel setFont:font2];
  _preferredSizeClass = [(PXPeopleDetailSettingsCollectionViewCell *)self _preferredSizeClass];
  if (_preferredSizeClass == 1)
  {
    v20 = 20.0;
  }

  else
  {
    v20 = 30.0;
  }

  if (_preferredSizeClass == 1)
  {
    v21 = 16.0;
  }

  else
  {
    v21 = 20.0;
  }

  [font _scaledValueForValue:v20];
  v23 = v22;
  [font2 _scaledValueForValue:v20];
  v55 = v24;
  [font2 _scaledValueForValue:v21];
  v26 = v25;
  v59.origin.x = v9;
  v59.origin.y = v11;
  v59.size.width = v13;
  v59.size.height = v15;
  Width = CGRectGetWidth(v59);
  v60.origin.x = v9;
  v60.origin.y = v11;
  v60.size.width = v13;
  v28 = v26;
  v60.size.height = v15;
  Height = CGRectGetHeight(v60);
  [quantityLabel sizeThatFits:{Width, 1.79769313e308}];
  v31 = v30;
  [quantityLabel sizeThatFits:1.79769313e308];
  v57 = v32;
  [nameLabel sizeThatFits:{Width, 1.79769313e308}];
  v34 = v33;
  [nameLabel sizeThatFits:1.79769313e308];
  v56 = v35;
  if (Height - (v23 + v26) >= Width)
  {
    v36 = Width;
  }

  else
  {
    v36 = Height - (v23 + v26);
  }

  [avatarView setFrame:{(Width - v36) * 0.5, 0.0, v36, v36}];
  layer = [avatarView layer];
  [layer setCornerRadius:v36 * 0.5];

  [avatarView setClipsToBounds:1];
  [avatarView frame];
  v62 = CGRectInset(v61, -2.0, -2.0);
  v38 = v62.size.width;
  [selectionView setFrame:{v62.origin.x, v62.origin.y}];
  layer2 = [selectionView layer];
  [layer2 setCornerRadius:v38 * 0.5];

  if (isHidden)
  {
    [font2 ascender];
    *&v40 = v55 + v36 - v40;
    v41 = floorf(*&v40);
    [avatarView frame];
    MinX = CGRectGetMinX(v63);
    v43 = MinX;
    v44 = v41;
    v34 = v31;
    v45 = v57;
  }

  else
  {
    v46 = v23 + v36;
    [font ascender];
    *&v47 = v23 + v36 - v47;
    v44 = floorf(*&v47);
    [avatarView frame];
    v43 = CGRectGetMinX(v64);
    [nameLabel setFrame:{v43, v44, Width, v34}];
    [font2 ascender];
    *&v48 = v28 + v46 - v48;
    v41 = floorf(*&v48);
    [avatarView frame];
    MinX = CGRectGetMinX(v65);
    v45 = v56;
  }

  v49 = v31 * 0.5;
  v50 = floorf(v49);
  [quantityLabel setFrame:{MinX, v41, Width}];
  v66.origin.x = v43;
  v66.origin.y = v44;
  v66.size.width = Width;
  v66.size.height = v34;
  v51 = CGRectGetMidX(v66) - v45 * 0.5 - v50 + -5.0;
  v52 = floorf(v51);
  v67.origin.x = v43;
  v67.origin.y = v44;
  v67.size.width = Width;
  v67.size.height = v34;
  v53 = CGRectGetMidY(v67) - v50 * 0.5;
  [actionIndicatorView setFrame:{v52, floorf(v53), v50, v50}];
  layer3 = [actionIndicatorView layer];
  [layer3 setCornerRadius:v50 * 0.5];
}

- (void)setIsFavorite:(BOOL)favorite
{
  if (self->_isFavorite != favorite)
  {
    self->_isFavorite = favorite;
    [(PXPeopleDetailSettingsCollectionViewCell *)self _updateType];

    [(PXPeopleDetailSettingsCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PXPeopleDetailSettingsCollectionViewCell;
  [(PXPeopleDetailSettingsCollectionViewCell *)&v4 dealloc];
}

- (PXPeopleDetailSettingsCollectionViewCell)initWithFrame:(CGRect)frame
{
  v38.receiver = self;
  v38.super_class = PXPeopleDetailSettingsCollectionViewCell;
  v3 = [(PXPeopleDetailSettingsCollectionViewCell *)&v38 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_unitRect.origin.x = 0.0;
    v3->_unitRect.origin.y = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v3->_unitRect.size = _Q0;
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    quantityNumberFormatter = v4->_quantityNumberFormatter;
    v4->_quantityNumberFormatter = v11;

    [(NSNumberFormatter *)v4->_quantityNumberFormatter setLocale:currentLocale];
    [(NSNumberFormatter *)v4->_quantityNumberFormatter setFormatterBehavior:1040];
    [(NSNumberFormatter *)v4->_quantityNumberFormatter setNumberStyle:1];
    contentView = [(PXPeopleDetailSettingsCollectionViewCell *)v4 contentView];
    v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    avatarView = v4->_avatarView;
    v4->_avatarView = v14;

    [(UIImageView *)v4->_avatarView setContentMode:1];
    v16 = v4->_avatarView;
    _placeHolderColor = [(PXPeopleDetailSettingsCollectionViewCell *)v4 _placeHolderColor];
    [(UIImageView *)v16 setBackgroundColor:_placeHolderColor];

    [contentView addSubview:v4->_avatarView];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v18 setTextAlignment:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v18 setTextColor:labelColor];

    [(UILabel *)v18 setHidden:1];
    [(UILabel *)v18 setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v18 setText:&stru_1F1741150];
    [(UILabel *)v18 setAdjustsFontSizeToFitWidth:1];
    [contentView addSubview:v18];
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v18;
    v21 = v18;

    name = v4->_name;
    v4->_name = &stru_1F1741150;

    v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v24 = [(NSNumberFormatter *)v4->_quantityNumberFormatter stringFromNumber:&unk_1F1909820];
    [(UILabel *)v23 setText:v24];

    [(UILabel *)v23 setTextAlignment:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v23 setTextColor:secondaryLabelColor];

    [(UILabel *)v23 setAdjustsFontForContentSizeCategory:1];
    [contentView addSubview:v23];
    quantityLabel = v4->_quantityLabel;
    v4->_quantityLabel = v23;
    v27 = v23;

    v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
    actionIndicatorView = v4->_actionIndicatorView;
    v4->_actionIndicatorView = v28;

    [(UIView *)v4->_actionIndicatorView setHidden:1];
    layer = [(UIView *)v4->_actionIndicatorView layer];
    tintColor = [(PXPeopleDetailSettingsCollectionViewCell *)v4 tintColor];
    [layer setBackgroundColor:{objc_msgSend(tintColor, "CGColor")}];

    [contentView addSubview:v4->_actionIndicatorView];
    v32 = objc_alloc_init(MEMORY[0x1E69DD250]);
    selectionView = v4->_selectionView;
    v4->_selectionView = v32;

    [(UIView *)v4->_selectionView setHidden:1];
    layer2 = [(UIView *)v4->_selectionView layer];
    tintColor2 = [(PXPeopleDetailSettingsCollectionViewCell *)v4 tintColor];
    [layer2 setBorderColor:{objc_msgSend(tintColor2, "CGColor")}];

    [layer2 setBorderWidth:2.0];
    [contentView addSubview:v4->_selectionView];
    [(PXPeopleDetailSettingsCollectionViewCell *)v4 _updateType];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

+ (double)preferredHeightForWidth:(double)width forAvatarPercentage:(double)percentage withSizeClass:(int64_t)class isFavorite:(BOOL)favorite
{
  v8 = MEMORY[0x1E69DDCF8];
  v9 = MEMORY[0x1E69DDD28];
  if (favorite)
  {
    v10 = MEMORY[0x1E69DDD80];
  }

  else
  {
    v10 = MEMORY[0x1E69DDD28];
  }

  if (!favorite)
  {
    v9 = MEMORY[0x1E69DDD08];
  }

  if (class == 1)
  {
    v8 = v10;
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E69DDD80];
  }

  if (class == 1)
  {
    v12 = 36.0;
  }

  else
  {
    v12 = 50.0;
  }

  if (class == 1)
  {
    v13 = 16.0;
  }

  else
  {
    v13 = 20.0;
  }

  if (class == 1)
  {
    v14 = 20.0;
  }

  else
  {
    v14 = 30.0;
  }

  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*v8, 30.0, 20.0, 50.0, 16.0, 36.0}];
  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v11];
  if (percentage > 0.0 && percentage < 1.0)
  {
    percentageCopy = percentage;
  }

  else
  {
    percentageCopy = 0.65;
  }

  [v15 _scaledValueForValue:v14];
  v20 = v19;
  [v16 _scaledValueForValue:v13];
  widthCopy = percentageCopy / (1.0 - percentageCopy) * v12 + v20 - v14 + v21 - v13;
  if (widthCopy >= width)
  {
    widthCopy = width;
  }

  v23 = v12 + widthCopy;
  v24 = ceilf(v23);

  return v24;
}

@end