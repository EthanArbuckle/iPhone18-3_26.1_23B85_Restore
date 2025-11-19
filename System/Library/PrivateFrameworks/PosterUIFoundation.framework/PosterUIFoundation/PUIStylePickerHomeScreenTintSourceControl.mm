@interface PUIStylePickerHomeScreenTintSourceControl
- (PUIStylePickerHomeScreenTintSourceControl)initWithTintColor:(id)a3 tintSource:(unint64_t)a4 primaryAction:(id)a5;
- (id)_imageViewForEnabled:(BOOL)a3;
- (id)_symbolNameForTintSource:(unint64_t)a3;
- (void)_updateSelectionViewMask;
- (void)setEnabled:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setTintColor:(id)a3;
@end

@implementation PUIStylePickerHomeScreenTintSourceControl

- (PUIStylePickerHomeScreenTintSourceControl)initWithTintColor:(id)a3 tintSource:(unint64_t)a4 primaryAction:(id)a5
{
  v8 = a3;
  v9 = a5;
  +[PUIStylePickerHomeScreenTintSourceControl defaultDiameter];
  v11 = v10;
  v32.receiver = self;
  v32.super_class = PUIStylePickerHomeScreenTintSourceControl;
  v12 = [(PUIStylePickerHomeScreenTintSourceControl *)&v32 initWithFrame:v9 primaryAction:0.0, 0.0, v11, v11];

  if (v12)
  {
    [(PUIStylePickerHomeScreenTintSourceControl *)v12 setTintColor:v8];
    v12->_iconTintSource = a4;
    v13 = [[PUITouchPassThroughView alloc] initWithFrame:0.0, 0.0, v11, v11];
    v14 = [MEMORY[0x1E69DC888] systemWhiteColor];
    [(PUITouchPassThroughView *)v13 setBackgroundColor:v14];

    [(PUITouchPassThroughView *)v13 setAlpha:0.06];
    v15 = [(PUITouchPassThroughView *)v13 layer];
    v16 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [v15 setCompositingFilter:v16];

    [(PUITouchPassThroughView *)v13 _setCornerRadius:v11 * 0.5];
    backgroundView = v12->_backgroundView;
    v12->_backgroundView = v13;
    v18 = v13;

    [(PUIStylePickerHomeScreenTintSourceControl *)v12 addSubview:v12->_backgroundView];
    v19 = [[PUITouchPassThroughView alloc] initWithFrame:0.0, 0.0, v11, v11];
    v20 = [MEMORY[0x1E69DC888] systemWhiteColor];
    [(PUITouchPassThroughView *)v19 setBackgroundColor:v20];

    [(PUITouchPassThroughView *)v19 _setCornerRadius:v11 * 0.5];
    [(PUITouchPassThroughView *)v18 center];
    [(PUITouchPassThroughView *)v19 setCenter:?];
    [(PUITouchPassThroughView *)v19 setAlpha:0.0];
    selectionView = v12->_selectionView;
    v12->_selectionView = v19;
    v22 = v19;

    [(PUIStylePickerHomeScreenTintSourceControl *)v12 addSubview:v22];
    [(PUIStylePickerHomeScreenTintSourceControl *)v12 _updateSelectionViewMask];
    v23 = [[PUITouchPassThroughView alloc] initWithFrame:0.0, 0.0, 40.6666667, 40.6666667];
    [(PUITouchPassThroughView *)v23 setBackgroundColor:v8];
    [(PUITouchPassThroughView *)v23 _setCornerRadius:20.3333333];
    [(PUITouchPassThroughView *)v18 center];
    [(PUITouchPassThroughView *)v23 setCenter:?];
    v24 = [(PUITouchPassThroughView *)v23 layer];
    v25 = [MEMORY[0x1E69DC888] systemWhiteColor];
    [v24 setBorderColor:{objc_msgSend(v25, "CGColor")}];

    colorFillView = v12->_colorFillView;
    v12->_colorFillView = v23;
    v27 = v23;

    [(PUIStylePickerHomeScreenTintSourceControl *)v12 addSubview:v12->_colorFillView];
    v28 = [(PUIStylePickerHomeScreenTintSourceControl *)v12 _imageViewForEnabled:1];
    [(PUITouchPassThroughView *)v18 center];
    [(UIImageView *)v28 setCenter:?];
    imageView = v12->_imageView;
    v12->_imageView = v28;
    v30 = v28;

    [(PUIStylePickerHomeScreenTintSourceControl *)v12 addSubview:v12->_imageView];
    [(PUIStylePickerHomeScreenTintSourceControl *)v12 setSelected:0];
  }

  return v12;
}

- (id)_symbolNameForTintSource:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      v3 = @"eyedropper";
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  switch(a3)
  {
    case 4uLL:
      v4 = [MEMORY[0x1E69DC938] currentDevice];
      v5 = [v4 userInterfaceIdiom];
      v6 = @"iphone";
      if (v5 == 1)
      {
        v6 = @"ipad";
      }

      v3 = v6;

      break;
    case 3uLL:
      v3 = @"iphone.case";
      break;
    case 2uLL:
      v3 = @"apple.photos";
      break;
    default:
LABEL_8:
      v3 = @"question";
      break;
  }

LABEL_13:

  return v3;
}

- (id)_imageViewForEnabled:(BOOL)a3
{
  v3 = a3;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v6 = 1.0;
  if (!v3)
  {
    v6 = 0.5;
  }

  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:v6];
  v8 = MEMORY[0x1E69DCAD8];
  v17[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v10 = [v8 configurationWithPaletteColors:v9];

  iconTintSource = self->_iconTintSource;
  v12 = [(PUIStylePickerHomeScreenTintSourceControl *)self _symbolNameForTintSource:iconTintSource];
  if (iconTintSource == 2)
  {
    [MEMORY[0x1E69DCAB8] _systemImageNamed:v12 withConfiguration:v5];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] systemImageNamed:v12 withConfiguration:v5];
  }
  v13 = ;
  v14 = [v13 imageWithConfiguration:v10];

  v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v14];

  return v15;
}

- (void)_updateSelectionViewMask
{
  if ((([(PUIStylePickerHomeScreenTintSourceControl *)self isEnabled]& 1) != 0 || ([(PUIStylePickerHomeScreenTintSourceControl *)self isSelected]& 1) == 0) && self->_tintColor)
  {
    v13 = [(PUITouchPassThroughView *)self->_selectionView layer];
    [v13 setMask:0];
  }

  else
  {
    [(PUITouchPassThroughView *)self->_selectionView bounds];
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    MidX = CGRectGetMidX(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    MidY = CGRectGetMidY(v16);
    v13 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x, y, width, height}];
    v9 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{MidX + -20.3333333, MidY + -20.3333333, 40.6666667, 40.6666667}];
    [v13 appendPath:v9];
    [v13 setUsesEvenOddFillRule:1];
    v10 = objc_alloc_init(MEMORY[0x1E69794A0]);
    v11 = v13;
    [v10 setPath:{objc_msgSend(v13, "CGPath")}];
    [v10 setFillRule:*MEMORY[0x1E69797F8]];
    v12 = [(PUITouchPassThroughView *)self->_selectionView layer];
    [v12 setMask:v10];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(PUIStylePickerHomeScreenTintSourceControl *)self isSelected]!= a3)
  {
    v9.receiver = self;
    v9.super_class = PUIStylePickerHomeScreenTintSourceControl;
    [(PUIStylePickerHomeScreenTintSourceControl *)&v9 setSelected:v5];
    v7 = 0.0;
    if (v5)
    {
      v7 = 1.0;
    }

    if (v4)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __66__PUIStylePickerHomeScreenTintSourceControl_setSelected_animated___block_invoke;
      v8[3] = &unk_1E7855A10;
      v8[4] = self;
      *&v8[5] = v7;
      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.3];
    }

    else
    {
      [(PUITouchPassThroughView *)self->_selectionView setAlpha:v7];
      [(PUIStylePickerHomeScreenTintSourceControl *)self _updateSelectionViewMask];
    }
  }
}

uint64_t __66__PUIStylePickerHomeScreenTintSourceControl_setSelected_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 760) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _updateSelectionViewMask];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PUIStylePickerHomeScreenTintSourceControl;
  [(PUIStylePickerHomeScreenTintSourceControl *)&v8 setEnabled:?];
  [(UIImageView *)self->_imageView removeFromSuperview];
  v5 = [(PUIStylePickerHomeScreenTintSourceControl *)self _imageViewForEnabled:v3];
  [(PUITouchPassThroughView *)self->_backgroundView center];
  [(UIImageView *)v5 setCenter:?];
  imageView = self->_imageView;
  self->_imageView = v5;
  v7 = v5;

  [(PUIStylePickerHomeScreenTintSourceControl *)self addSubview:self->_imageView];
  [(PUIStylePickerHomeScreenTintSourceControl *)self _updateSelectionViewMask];
}

- (void)setTintColor:(id)a3
{
  v5 = a3;
  if (self->_tintColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_tintColor, a3);
    colorFillView = self->_colorFillView;
    if (colorFillView)
    {
      [(PUITouchPassThroughView *)colorFillView setBackgroundColor:v7];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

@end