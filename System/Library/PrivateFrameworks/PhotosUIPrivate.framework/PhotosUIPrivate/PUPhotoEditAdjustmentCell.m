@interface PUPhotoEditAdjustmentCell
- (BOOL)displayMappedValue;
- (PUPhotoEditAdjustmentCell)initWithCoder:(id)a3;
- (PUPhotoEditAdjustmentCell)initWithFrame:(CGRect)a3;
- (PUPhotoEditBaseAdjustmentCellDelegate)delegate;
- (void)_setupEventHandler;
- (void)_updateValueLabelVisibility;
- (void)handleButton:(id)a3;
- (void)reloadImage;
- (void)setDisplayMappedValue:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setImageIsColor:(BOOL)a3;
- (void)setImageName:(id)a3;
- (void)setImageTransformBlock:(id)a3;
- (void)setIsUserModifying:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PUPhotoEditAdjustmentCell

- (PUPhotoEditBaseAdjustmentCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleButton:(id)a3
{
  v7 = a3;
  v4 = [(PUPhotoEditAdjustmentCell *)self delegate];
  v5 = [v4 canToggleCell:self];

  if (v5)
  {
    [v7 setSelected:{objc_msgSend(v7, "isSelected") ^ 1}];
    -[PUPhotoEditAdjustmentCell setEnabled:](self, "setEnabled:", [v7 isSelected]);
    v6 = [(PUPhotoEditAdjustmentCell *)self delegate];
    [v6 didToggleCell:self];
  }
}

- (BOOL)displayMappedValue
{
  v2 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  v3 = [v2 displayMappedValue];

  return v3;
}

- (void)setDisplayMappedValue:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setDisplayMappedValue:v3];
}

- (void)_updateValueLabelVisibility
{
  if ([(PUPhotoEditBaseAdjustmentCell *)self isUserModifying])
  {
    v3 = [(PUPhotoEditAdjustmentCell *)self shouldDisplayValueLabel];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setShouldShowValueLabel:v3];
}

- (void)setIsUserModifying:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v4 setIsUserModifying:a3];
  [(PUPhotoEditAdjustmentCell *)self _updateValueLabelVisibility];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PUPhotoEditAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v8 setEnabled:?];
  v5 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v5 setSelected:v3];

  if (v3)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.3;
  }

  v7 = [(PUPhotoEditAdjustmentCell *)self contentView];
  [v7 setAlpha:v6];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = PUPhotoEditAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v7 setSelected:?];
  v5 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v5 setEnabled:v3];

  v6 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v6 setUserInteractionEnabled:v3];
}

- (void)reloadImage
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [(PUPhotoEditBaseAdjustmentCell *)self imageName];
  v11 = [v3 pu_PhotosUIImageNamed:v4];

  if (![(PUPhotoEditBaseAdjustmentCell *)self imageIsColor])
  {
    v5 = [MEMORY[0x1E69DC888] labelColor];
    v6 = [v11 imageWithTintColor:v5];

    v11 = v6;
  }

  v7 = [(PUPhotoEditBaseAdjustmentCell *)self imageTransformBlock];

  if (v7)
  {
    v8 = [(PUPhotoEditBaseAdjustmentCell *)self imageTransformBlock];
    v9 = (v8)[2](v8, v11);

    v11 = v9;
  }

  v10 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v10 setImage:v11 forState:0];
}

- (void)setImageTransformBlock:(id)a3
{
  v4 = _Block_copy(a3);
  imageTransformBlock = self->super._imageTransformBlock;
  self->super._imageTransformBlock = v4;

  [(PUPhotoEditAdjustmentCell *)self reloadImage];
}

- (void)setImageIsColor:(BOOL)a3
{
  if (self->super._imageIsColor != a3)
  {
    self->super._imageIsColor = a3;
    [(PUPhotoEditAdjustmentCell *)self reloadImage];
  }
}

- (void)setImageName:(id)a3
{
  v5 = a3;
  if (self->super._imageName != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._imageName, a3);
    [(PUPhotoEditAdjustmentCell *)self reloadImage];
    v5 = v6;
  }
}

- (void)_setupEventHandler
{
  v3 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v3 addTarget:self action:sel_handleButton_ forControlEvents:64];
}

- (PUPhotoEditAdjustmentCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditAdjustmentCell *)v3 _setupEventHandler];
  }

  return v4;
}

- (PUPhotoEditAdjustmentCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditAdjustmentCell *)v3 _setupEventHandler];
  }

  return v4;
}

@end