@interface PUPhotosSharingSelectionView
- (PUPhotosSharingSelectionView)initWithFrame:(CGRect)frame;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation PUPhotosSharingSelectionView

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  v22[2] = *MEMORY[0x1E69E9840];
  v7 = @"circle";
  if (selected)
  {
    v7 = @"checkmark.circle.platter";
  }

  v8 = v7;
  v9 = MEMORY[0x1E69DCAD8];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v11 = whiteColor;
  if (selectedCopy)
  {
    v22[0] = whiteColor;
    tintColor = [MEMORY[0x1E69DC888] tintColor];
    v22[1] = tintColor;
    v13 = MEMORY[0x1E695DEC8];
    v14 = v22;
    v15 = 2;
  }

  else
  {
    tintColor = [whiteColor colorWithAlphaComponent:1.0];
    v21 = tintColor;
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v21;
    v15 = 1;
  }

  v16 = [v13 arrayWithObjects:v14 count:{v15, v21}];
  v17 = [v9 configurationWithPaletteColors:v16];

  v18 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v8 withConfiguration:v17];
  checkmarkView = self->_checkmarkView;
  if (animatedCopy)
  {
    transition = [MEMORY[0x1E6982288] transition];
    [(UIImageView *)checkmarkView setSymbolImage:v18 withContentTransition:transition];
  }

  else
  {
    [(UIImageView *)checkmarkView setImage:v18];
  }
}

- (PUPhotosSharingSelectionView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PUPhotosSharingSelectionView;
  v3 = [(PUPhotosSharingSelectionView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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