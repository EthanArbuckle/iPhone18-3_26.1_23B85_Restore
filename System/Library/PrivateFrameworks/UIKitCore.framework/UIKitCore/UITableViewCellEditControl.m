@interface UITableViewCellEditControl
- (CGSize)defaultSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UITableViewCellEditControl)initWithTableViewCell:(id)a3 editingStyle:(int64_t)a4;
- (id)_currentImage;
- (id)_deleteImage;
- (id)_insertImage;
- (id)_multiSelectNotSelectedImage;
- (id)_multiSelectSelectedImage;
- (id)_shadowImage;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_createImageViewIfNecessary;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_toggleRotateAnimationDidStop;
- (void)_updateImageView;
- (void)adjustLayoutForFocalRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setRotated:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UITableViewCellEditControl

- (id)_deleteImage
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v3 = [WeakRetained _constants];
  v4 = [v3 defaultDeleteImageForCell:WeakRetained];

  return v4;
}

- (id)_insertImage
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v3 = [WeakRetained _constants];
  v4 = [v3 defaultInsertImageForCell:WeakRetained];

  return v4;
}

- (id)_multiSelectNotSelectedImage
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v3 = [WeakRetained _constants];
  v4 = [WeakRetained _cellStyle];
  v5 = [WeakRetained traitCollection];
  v6 = [WeakRetained _tableView];
  v7 = [v6 _accessoryBaseColor];
  v8 = [v3 defaultMultiSelectNotSelectedImageForCellStyle:v4 traitCollection:v5 accessoryBaseColor:v7];

  return v8;
}

- (id)_multiSelectSelectedImage
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v4 = [WeakRetained _tableView];
  v5 = [v4 _multiselectCheckmarkColor];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(UITableViewCellEditControl *)self accessoryTintColor];
  }

  v8 = v7;

  v9 = [WeakRetained _constants];
  v10 = [WeakRetained _cellStyle];
  v11 = [WeakRetained traitCollection];
  v12 = [(UITableViewCellEditControl *)self accessoryBackgroundColor];
  v13 = [v9 defaultMultiSelectSelectedImageForCellStyle:v10 traitCollection:v11 checkmarkColor:v8 backgroundColor:v12];

  return v13;
}

- (void)_updateImageView
{
  v5 = [(UITableViewCellEditControl *)self _currentImage];
  if (!_UISolariumEnabled() || (~*(self + 496) & 3) != 0)
  {
    [(UIImageView *)self->_imageView setImage:v5];
  }

  else
  {
    imageView = self->_imageView;
    v4 = [(UIControl *)self isHighlighted]|| [(UIControl *)self isSelected];
    _UICollectionTableSetImageForMultiselectAccessoryImageViewWithAnimation(imageView, v5, v4);
  }
}

- (id)_currentImage
{
  if ((*(self + 496) & 3u) > 1)
  {
    if ((*(self + 496) & 3) == 2)
    {
      v3 = [(UITableViewCellEditControl *)self _insertImage];
    }

    else if ([(UIControl *)self isHighlighted]|| [(UIControl *)self isSelected])
    {
      v3 = [(UITableViewCellEditControl *)self _multiSelectSelectedImage];
    }

    else
    {
      v3 = [(UITableViewCellEditControl *)self _multiSelectNotSelectedImage];
    }
  }

  else if ((*(self + 496) & 3) != 0)
  {
    v3 = [(UITableViewCellEditControl *)self _deleteImage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)defaultSize
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v3 = [WeakRetained _constants];
  v4 = [WeakRetained _tableView];
  [v3 defaultEditControlSizeForCell:WeakRetained inTableView:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v5 = [WeakRetained _usesModernAccessoriesLayout];

  if (v5)
  {
    [(UITableViewCellEditControl *)self _createImageViewIfNecessary];
    v6 = [(UIImageView *)self->_imageView _currentImage];
    [v6 size];
    v8 = v7;
    v10 = v9;

    v11 = v8;
    v12 = v10;
  }

  else
  {

    [(UITableViewCellEditControl *)self defaultSize];
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (UITableViewCellEditControl)initWithTableViewCell:(id)a3 editingStyle:(int64_t)a4
{
  v6 = a3;
  [(UITableViewCellEditControl *)self defaultSize];
  v13.receiver = self;
  v13.super_class = UITableViewCellEditControl;
  v9 = [(UIControl *)&v13 initWithFrame:0.0, 0.0, v7, v8];
  v10 = v9;
  if (v9)
  {
    [(UIView *)v9 setAlpha:1.0];
    [(UIView *)v10 setOpaque:0];
    [(UIControl *)v10 setRequiresDisplayOnTracking:1];
    objc_storeWeak(&v10->_cell, v6);
    *(v10 + 496) = *(v10 + 496) & 0xFC | a4 & 3;
    if (v10->_imageView)
    {
      v11 = [(UITableViewCellEditControl *)v10 _currentImage];
      [(UIImageView *)v10->_imageView setImage:v11];
    }

    if (!a4 || a4 == 3)
    {
      [(UIView *)v10 setUserInteractionEnabled:0];
    }

    else if (a4 == 1)
    {
      [(UIControl *)v10 addTarget:v10 action:sel__toggleRotate forControlEvents:64];
    }

    v10->_focalY = NAN;
    v10->_focalHeight = NAN;
  }

  return v10;
}

- (void)adjustLayoutForFocalRect:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  IsEmpty = CGRectIsEmpty(a3);
  v7 = NAN;
  if (IsEmpty)
  {
    v8 = NAN;
  }

  else
  {
    v8 = y;
  }

  self->_focalY = v8;
  if (!IsEmpty)
  {
    v7 = height;
  }

  self->_focalHeight = v7;

  [(UIView *)self setNeedsLayout];
}

- (id)_shadowImage
{
  v3 = _shadowImage_shadowImage;
  if (!_shadowImage_shadowImage)
  {
    [(UIView *)self _currentScreenScale];
    _UIGraphicsBeginImageContextWithOptions(0, 0, 23.5, 23.5, v4);
    v5 = [UIColor colorWithWhite:0.0 alpha:0.05];
    [v5 set];

    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 23.5;
    v12.size.height = 23.5;
    CGContextFillEllipseInRect(v7, v12);
    v8 = _UIGraphicsGetImageFromCurrentImageContext(0);
    v9 = _shadowImage_shadowImage;
    _shadowImage_shadowImage = v8;

    UIGraphicsEndImageContext();
    v3 = _shadowImage_shadowImage;
  }

  return v3;
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v5 = v4 + v3 * 0.5;
  imageView = self->_imageView;
  [(UITableViewCellEditControl *)self _createImageViewIfNecessary];
  v7 = [(UIImageView *)self->_imageView _currentImage];
  [v7 size];
  v9 = v8;
  v11 = v10;

  v12 = [(UIView *)self _shouldReverseLayoutDirection];
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v14 = [WeakRetained _usesModernAccessoriesLayout];

  v15 = 3.0;
  if (v14)
  {
    v15 = 0.0;
  }

  v16 = -0.0;
  if (!v14)
  {
    v16 = -3.0;
  }

  if (v12)
  {
    v15 = v16;
  }

  v17 = floor(v5 - v9 * 0.5);
  v18 = floor((self->_focalHeight - v11) * 0.5);
  v19 = self->_focalY + v18;
  v20 = v19;
  v21 = v17 + v15;
  if (imageView)
  {
    [(UIImageView *)self->_imageView setFrame:v17 + v15, self->_focalY + v18, v9, v11];
  }

  else
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __44__UITableViewCellEditControl_layoutSubviews__block_invoke;
    v28[3] = &unk_1E70F3B20;
    v28[4] = self;
    *&v28[5] = v17 + v15;
    *&v28[6] = v19;
    *&v28[7] = v9;
    *&v28[8] = v11;
    [UIView performWithoutAnimation:v28];
  }

  v22 = [(UITableViewCellEditControl *)self wantsImageShadow];
  shadowView = self->_shadowView;
  if (v22)
  {
    if (!shadowView)
    {
      v24 = [UIImageView alloc];
      v25 = [(UITableViewCellEditControl *)self _shadowImage];
      v26 = [(UIImageView *)v24 initWithImage:v25];
      v27 = self->_shadowView;
      self->_shadowView = v26;

      [(UIView *)self insertSubview:self->_shadowView belowSubview:self->_imageView];
      shadowView = self->_shadowView;
    }

    [(UIImageView *)shadowView setFrame:v21, v20 + 2.0, v9, v11];
  }

  else
  {
    [(UIView *)shadowView removeFromSuperview];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewCellEditControl;
  [(UIControl *)&v4 setHighlighted:a3];
  [(UITableViewCellEditControl *)self _updateImageView];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewCellEditControl;
  [(UIControl *)&v4 setSelected:a3];
  [(UITableViewCellEditControl *)self _updateImageView];
}

- (void)setRotated:(BOOL)a3 animated:(BOOL)a4
{
  if (((((*(self + 496) & 4) == 0) ^ a3) & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__UITableViewCellEditControl_setRotated_animated___block_invoke_2;
    v6[3] = &unk_1E70F8A10;
    v6[4] = self;
    v7 = a3;
    v8 = a4;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __50__UITableViewCellEditControl_setRotated_animated___block_invoke_3;
    v4[3] = &unk_1E70FA0F0;
    v5 = a4;
    v4[4] = self;
    [UIView conditionallyAnimate:a4 withAnimation:&__block_literal_global_556 layout:v6 completion:v4];
  }
}

_BYTE *__50__UITableViewCellEditControl_setRotated_animated___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 496) = *(*(a1 + 32) + 496) & 0xFB | (4 * *(a1 + 40));
  *(*(a1 + 32) + 496) = *(*(a1 + 32) + 496) & 0xF7 | (8 * *(a1 + 41));
  result = *(a1 + 32);
  if ((result[496] & 4) != 0 || (result[496] & 8) != 0)
  {
    return [result _updateImageView];
  }

  return result;
}

uint64_t __50__UITableViewCellEditControl_setRotated_animated___block_invoke_3(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _toggleRotateAnimationDidStop];
  }

  return result;
}

- (void)_toggleRotateAnimationDidStop
{
  *(self + 496) &= ~8u;
  if ((*(self + 496) & 4) == 0)
  {
    [(UITableViewCellEditControl *)self _updateImageView];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = UITableViewCellEditControl;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(UITableViewCellEditControl *)self _updateImageView];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UITableViewCellEditControl;
  [(UIView *)&v9 traitCollectionDidChange:v4];
  v5 = [(UIView *)self traitCollection];
  v6 = _UITableConstantsForTraitCollection(v5);
  v7 = [(UIView *)self traitCollection];
  v8 = [v6 defaultListCellAccessoryImageSymbolConfigurationForTraitCollection:v7 accessoryType:qword_18A682868[*(self + 496) & 3]];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v8];

  [(UIView *)self setNeedsLayout];
}

- (id)viewForFirstBaselineLayout
{
  [(UITableViewCellEditControl *)self _createImageViewIfNecessary];
  imageView = self->_imageView;

  return imageView;
}

- (id)viewForLastBaselineLayout
{
  [(UITableViewCellEditControl *)self _createImageViewIfNecessary];
  imageView = self->_imageView;

  return imageView;
}

- (void)_createImageViewIfNecessary
{
  if (self->_imageView)
  {
    return;
  }

  v3 = [UIImageView alloc];
  v4 = [(UITableViewCellEditControl *)self _currentImage];
  v5 = [(UIImageView *)v3 initWithImage:v4];
  imageView = self->_imageView;
  self->_imageView = v5;

  v7 = [(UIView *)self traitCollection];
  v8 = _UITableConstantsForTraitCollection(v7);
  v9 = [(UIView *)self traitCollection];
  v10 = [v8 defaultListCellAccessoryImageSymbolConfigurationForTraitCollection:v9 accessoryType:qword_18A682868[*(self + 496) & 3]];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v10];

  v11 = *(self + 496) & 3;
  if (v11 == 1)
  {
    v12 = 0.823529412;
    v13 = 0.0;
    v14 = 0.0;
    goto LABEL_6;
  }

  if (v11 == 2)
  {
    v12 = 0.00392156863;
    v13 = 0.678431373;
    v14 = 0.196078431;
LABEL_6:
    v15 = [UIColor colorWithRed:v12 green:v13 blue:v14 alpha:1.0];
    [(UIView *)self _setInteractionTintColor:v15];
  }

  v16 = self->_imageView;

  [(UIView *)self addSubview:v16];
}

@end