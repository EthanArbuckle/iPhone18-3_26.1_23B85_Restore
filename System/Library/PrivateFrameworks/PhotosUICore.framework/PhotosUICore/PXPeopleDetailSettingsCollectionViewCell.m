@interface PXPeopleDetailSettingsCollectionViewCell
+ (double)preferredHeightForWidth:(double)a3 forAvatarPercentage:(double)a4 withSizeClass:(int64_t)a5 isFavorite:(BOOL)a6;
- (BOOL)isActionIndicatorHidden;
- (PXPeopleDetailSettingsCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIImage)image;
- (double)avatarCenterYOffset;
- (id)_placeHolderColor;
- (int64_t)_preferredSizeClass;
- (void)_updateType;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActionIndicatorHidden:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImage:(id)a3 normalizedFaceRect:(CGRect)a4;
- (void)setIsFavorite:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setPhotoQuantity:(unint64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTextAlpha:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
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
  v7 = [(PXPeopleDetailSettingsCollectionViewCell *)self nameLabel];
  [v7 setFont:v9];

  v8 = [(PXPeopleDetailSettingsCollectionViewCell *)self quantityLabel];
  [v8 setFont:v6];
}

- (int64_t)_preferredSizeClass
{
  v2 = [(PXPeopleDetailSettingsCollectionViewCell *)self traitCollection];
  if ([v2 horizontalSizeClass] == 2)
  {
    if ([v2 userInterfaceIdiom] == 1)
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
  v3 = [(PXPeopleDetailSettingsCollectionViewCell *)self avatarView];
  [v3 center];
  v5 = v4;
  [(PXPeopleDetailSettingsCollectionViewCell *)self bounds];
  v7 = v5 + v6 * -0.5;

  return v7;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PXPeopleDetailSettingsCollectionViewCell;
  [(PXPeopleDetailSettingsCollectionViewCell *)&v6 setSelected:?];
  v5 = [(PXPeopleDetailSettingsCollectionViewCell *)self selectionView];
  [v5 setHidden:!v3];
}

- (void)setTextAlpha:(double)a3
{
  self->_textAlpha = a3;
  v4 = [(PXPeopleDetailSettingsCollectionViewCell *)self nameLabel];
  [v4 setAlpha:self->_textAlpha];

  v5 = [(PXPeopleDetailSettingsCollectionViewCell *)self quantityLabel];
  [v5 setAlpha:self->_textAlpha];
}

- (BOOL)isActionIndicatorHidden
{
  v2 = [(PXPeopleDetailSettingsCollectionViewCell *)self actionIndicatorView];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setActionIndicatorHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXPeopleDetailSettingsCollectionViewCell *)self actionIndicatorView];
  [v4 setHidden:v3];
}

- (void)setPhotoQuantity:(unint64_t)a3
{
  self->_photoQuantity = a3;
  quantityNumberFormatter = self->_quantityNumberFormatter;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSNumberFormatter *)quantityNumberFormatter stringFromNumber:v5];

  v6 = [(PXPeopleDetailSettingsCollectionViewCell *)self quantityLabel];
  [v6 setText:v7];
}

- (UIImage)image
{
  v2 = [(PXPeopleDetailSettingsCollectionViewCell *)self avatarView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3 normalizedFaceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v11 = [(PXPeopleDetailSettingsCollectionViewCell *)self avatarView];
  v10 = [v11 layer];
  [v11 setImage:v9];

  [v11 setContentMode:2];
  [v10 setContentsRect:{x, y, width, height}];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v6 = [(PXPeopleDetailSettingsCollectionViewCell *)self avatarView];
  [v6 setImage:v4];

  [v6 setContentMode:1];
  v5 = [v6 layer];
  [v5 setContentsRect:{self->_unitRect.origin.x, self->_unitRect.origin.y, self->_unitRect.size.width, self->_unitRect.size.height}];
}

- (void)setName:(id)a3
{
  v5 = a3;
  name = self->_name;
  v11 = v5;
  if (name != v5 || (v7 = [(NSString *)name isEqualToString:v5], v8 = v11, !v7))
  {
    objc_storeStrong(&self->_name, a3);
    v9 = [(PXPeopleDetailSettingsCollectionViewCell *)self nameLabel];
    v10 = [(NSString *)v11 length];
    if (v10)
    {
      [v9 setText:v11];
    }

    [v9 setHidden:v10 == 0];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXPeopleDetailSettingsCollectionViewCell;
  [(PXPeopleDetailSettingsCollectionViewCell *)&v4 traitCollectionDidChange:a3];
  [(PXPeopleDetailSettingsCollectionViewCell *)self _updateType];
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = PXPeopleDetailSettingsCollectionViewCell;
  [(PXPeopleDetailSettingsCollectionViewCell *)&v58 layoutSubviews];
  v3 = [(PXPeopleDetailSettingsCollectionViewCell *)self avatarView];
  v4 = [(PXPeopleDetailSettingsCollectionViewCell *)self quantityLabel];
  v5 = [(PXPeopleDetailSettingsCollectionViewCell *)self nameLabel];
  v6 = [(PXPeopleDetailSettingsCollectionViewCell *)self actionIndicatorView];
  v7 = [(PXPeopleDetailSettingsCollectionViewCell *)self selectionView];
  [(PXPeopleDetailSettingsCollectionViewCell *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v5 isHidden];
  v17 = [v5 font];
  v18 = [v4 font];
  [v5 setFont:v17];
  [v4 setFont:v18];
  v19 = [(PXPeopleDetailSettingsCollectionViewCell *)self _preferredSizeClass];
  if (v19 == 1)
  {
    v20 = 20.0;
  }

  else
  {
    v20 = 30.0;
  }

  if (v19 == 1)
  {
    v21 = 16.0;
  }

  else
  {
    v21 = 20.0;
  }

  [v17 _scaledValueForValue:v20];
  v23 = v22;
  [v18 _scaledValueForValue:v20];
  v55 = v24;
  [v18 _scaledValueForValue:v21];
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
  [v4 sizeThatFits:{Width, 1.79769313e308}];
  v31 = v30;
  [v4 sizeThatFits:1.79769313e308];
  v57 = v32;
  [v5 sizeThatFits:{Width, 1.79769313e308}];
  v34 = v33;
  [v5 sizeThatFits:1.79769313e308];
  v56 = v35;
  if (Height - (v23 + v26) >= Width)
  {
    v36 = Width;
  }

  else
  {
    v36 = Height - (v23 + v26);
  }

  [v3 setFrame:{(Width - v36) * 0.5, 0.0, v36, v36}];
  v37 = [v3 layer];
  [v37 setCornerRadius:v36 * 0.5];

  [v3 setClipsToBounds:1];
  [v3 frame];
  v62 = CGRectInset(v61, -2.0, -2.0);
  v38 = v62.size.width;
  [v7 setFrame:{v62.origin.x, v62.origin.y}];
  v39 = [v7 layer];
  [v39 setCornerRadius:v38 * 0.5];

  if (v16)
  {
    [v18 ascender];
    *&v40 = v55 + v36 - v40;
    v41 = floorf(*&v40);
    [v3 frame];
    MinX = CGRectGetMinX(v63);
    v43 = MinX;
    v44 = v41;
    v34 = v31;
    v45 = v57;
  }

  else
  {
    v46 = v23 + v36;
    [v17 ascender];
    *&v47 = v23 + v36 - v47;
    v44 = floorf(*&v47);
    [v3 frame];
    v43 = CGRectGetMinX(v64);
    [v5 setFrame:{v43, v44, Width, v34}];
    [v18 ascender];
    *&v48 = v28 + v46 - v48;
    v41 = floorf(*&v48);
    [v3 frame];
    MinX = CGRectGetMinX(v65);
    v45 = v56;
  }

  v49 = v31 * 0.5;
  v50 = floorf(v49);
  [v4 setFrame:{MinX, v41, Width}];
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
  [v6 setFrame:{v52, floorf(v53), v50, v50}];
  v54 = [v6 layer];
  [v54 setCornerRadius:v50 * 0.5];
}

- (void)setIsFavorite:(BOOL)a3
{
  if (self->_isFavorite != a3)
  {
    self->_isFavorite = a3;
    [(PXPeopleDetailSettingsCollectionViewCell *)self _updateType];

    [(PXPeopleDetailSettingsCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PXPeopleDetailSettingsCollectionViewCell;
  [(PXPeopleDetailSettingsCollectionViewCell *)&v4 dealloc];
}

- (PXPeopleDetailSettingsCollectionViewCell)initWithFrame:(CGRect)a3
{
  v38.receiver = self;
  v38.super_class = PXPeopleDetailSettingsCollectionViewCell;
  v3 = [(PXPeopleDetailSettingsCollectionViewCell *)&v38 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_unitRect.origin.x = 0.0;
    v3->_unitRect.origin.y = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v3->_unitRect.size = _Q0;
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    quantityNumberFormatter = v4->_quantityNumberFormatter;
    v4->_quantityNumberFormatter = v11;

    [(NSNumberFormatter *)v4->_quantityNumberFormatter setLocale:v10];
    [(NSNumberFormatter *)v4->_quantityNumberFormatter setFormatterBehavior:1040];
    [(NSNumberFormatter *)v4->_quantityNumberFormatter setNumberStyle:1];
    v13 = [(PXPeopleDetailSettingsCollectionViewCell *)v4 contentView];
    v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    avatarView = v4->_avatarView;
    v4->_avatarView = v14;

    [(UIImageView *)v4->_avatarView setContentMode:1];
    v16 = v4->_avatarView;
    v17 = [(PXPeopleDetailSettingsCollectionViewCell *)v4 _placeHolderColor];
    [(UIImageView *)v16 setBackgroundColor:v17];

    [v13 addSubview:v4->_avatarView];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v18 setTextAlignment:0];
    v19 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v18 setTextColor:v19];

    [(UILabel *)v18 setHidden:1];
    [(UILabel *)v18 setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v18 setText:&stru_1F1741150];
    [(UILabel *)v18 setAdjustsFontSizeToFitWidth:1];
    [v13 addSubview:v18];
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v18;
    v21 = v18;

    name = v4->_name;
    v4->_name = &stru_1F1741150;

    v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v24 = [(NSNumberFormatter *)v4->_quantityNumberFormatter stringFromNumber:&unk_1F1909820];
    [(UILabel *)v23 setText:v24];

    [(UILabel *)v23 setTextAlignment:0];
    v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v23 setTextColor:v25];

    [(UILabel *)v23 setAdjustsFontForContentSizeCategory:1];
    [v13 addSubview:v23];
    quantityLabel = v4->_quantityLabel;
    v4->_quantityLabel = v23;
    v27 = v23;

    v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
    actionIndicatorView = v4->_actionIndicatorView;
    v4->_actionIndicatorView = v28;

    [(UIView *)v4->_actionIndicatorView setHidden:1];
    v30 = [(UIView *)v4->_actionIndicatorView layer];
    v31 = [(PXPeopleDetailSettingsCollectionViewCell *)v4 tintColor];
    [v30 setBackgroundColor:{objc_msgSend(v31, "CGColor")}];

    [v13 addSubview:v4->_actionIndicatorView];
    v32 = objc_alloc_init(MEMORY[0x1E69DD250]);
    selectionView = v4->_selectionView;
    v4->_selectionView = v32;

    [(UIView *)v4->_selectionView setHidden:1];
    v34 = [(UIView *)v4->_selectionView layer];
    v35 = [(PXPeopleDetailSettingsCollectionViewCell *)v4 tintColor];
    [v34 setBorderColor:{objc_msgSend(v35, "CGColor")}];

    [v34 setBorderWidth:2.0];
    [v13 addSubview:v4->_selectionView];
    [(PXPeopleDetailSettingsCollectionViewCell *)v4 _updateType];
    v36 = [MEMORY[0x1E696AD88] defaultCenter];
    [v36 addObserver:v4 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

+ (double)preferredHeightForWidth:(double)a3 forAvatarPercentage:(double)a4 withSizeClass:(int64_t)a5 isFavorite:(BOOL)a6
{
  v8 = MEMORY[0x1E69DDCF8];
  v9 = MEMORY[0x1E69DDD28];
  if (a6)
  {
    v10 = MEMORY[0x1E69DDD80];
  }

  else
  {
    v10 = MEMORY[0x1E69DDD28];
  }

  if (!a6)
  {
    v9 = MEMORY[0x1E69DDD08];
  }

  if (a5 == 1)
  {
    v8 = v10;
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E69DDD80];
  }

  if (a5 == 1)
  {
    v12 = 36.0;
  }

  else
  {
    v12 = 50.0;
  }

  if (a5 == 1)
  {
    v13 = 16.0;
  }

  else
  {
    v13 = 20.0;
  }

  if (a5 == 1)
  {
    v14 = 20.0;
  }

  else
  {
    v14 = 30.0;
  }

  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*v8, 30.0, 20.0, 50.0, 16.0, 36.0}];
  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v11];
  if (a4 > 0.0 && a4 < 1.0)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0.65;
  }

  [v15 _scaledValueForValue:v14];
  v20 = v19;
  [v16 _scaledValueForValue:v13];
  v22 = v18 / (1.0 - v18) * v12 + v20 - v14 + v21 - v13;
  if (v22 >= a3)
  {
    v22 = a3;
  }

  v23 = v12 + v22;
  v24 = ceilf(v23);

  return v24;
}

@end