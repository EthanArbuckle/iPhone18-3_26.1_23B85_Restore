@interface PUPhotosSharingSelectionView
- (PUPhotosSharingSelectionView)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation PUPhotosSharingSelectionView

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v22[2] = *MEMORY[0x1E69E9840];
  v7 = @"circle";
  if (a3)
  {
    v7 = @"checkmark.circle.platter";
  }

  v8 = v7;
  v9 = MEMORY[0x1E69DCAD8];
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  v11 = v10;
  if (v5)
  {
    v22[0] = v10;
    v12 = [MEMORY[0x1E69DC888] tintColor];
    v22[1] = v12;
    v13 = MEMORY[0x1E695DEC8];
    v14 = v22;
    v15 = 2;
  }

  else
  {
    v12 = [v10 colorWithAlphaComponent:1.0];
    v21 = v12;
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v21;
    v15 = 1;
  }

  v16 = [v13 arrayWithObjects:v14 count:{v15, v21}];
  v17 = [v9 configurationWithPaletteColors:v16];

  v18 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v8 withConfiguration:v17];
  checkmarkView = self->_checkmarkView;
  if (v4)
  {
    v20 = [MEMORY[0x1E6982288] transition];
    [(UIImageView *)checkmarkView setSymbolImage:v18 withContentTransition:v20];
  }

  else
  {
    [(UIImageView *)checkmarkView setImage:v18];
  }
}

- (PUPhotosSharingSelectionView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PUPhotosSharingSelectionView;
  v3 = [(PUPhotosSharingSelectionView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    checkmarkView = v3->_checkmarkView;
    v3->_checkmarkView = v4;

    [(PUPhotosSharingSelectionView *)v3 bounds];
    [(UIImageView *)v3->_checkmarkView setFrame:?];
    [(UIImageView *)v3->_checkmarkView setContentMode:1];
    [(PUPhotosSharingSelectionView *)v3 addSubview:v3->_checkmarkView];
    [(PUPhotosSharingSelectionView *)v3 setSelected:0 animated:0];
  }

  return v3;
}

@end