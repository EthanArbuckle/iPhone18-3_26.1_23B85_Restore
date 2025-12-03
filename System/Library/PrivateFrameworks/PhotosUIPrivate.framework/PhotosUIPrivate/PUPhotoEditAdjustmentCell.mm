@interface PUPhotoEditAdjustmentCell
- (BOOL)displayMappedValue;
- (PUPhotoEditAdjustmentCell)initWithCoder:(id)coder;
- (PUPhotoEditAdjustmentCell)initWithFrame:(CGRect)frame;
- (PUPhotoEditBaseAdjustmentCellDelegate)delegate;
- (void)_setupEventHandler;
- (void)_updateValueLabelVisibility;
- (void)handleButton:(id)button;
- (void)reloadImage;
- (void)setDisplayMappedValue:(BOOL)value;
- (void)setEnabled:(BOOL)enabled;
- (void)setImageIsColor:(BOOL)color;
- (void)setImageName:(id)name;
- (void)setImageTransformBlock:(id)block;
- (void)setIsUserModifying:(BOOL)modifying;
- (void)setSelected:(BOOL)selected;
@end

@implementation PUPhotoEditAdjustmentCell

- (PUPhotoEditBaseAdjustmentCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleButton:(id)button
{
  buttonCopy = button;
  delegate = [(PUPhotoEditAdjustmentCell *)self delegate];
  v5 = [delegate canToggleCell:self];

  if (v5)
  {
    [buttonCopy setSelected:{objc_msgSend(buttonCopy, "isSelected") ^ 1}];
    -[PUPhotoEditAdjustmentCell setEnabled:](self, "setEnabled:", [buttonCopy isSelected]);
    delegate2 = [(PUPhotoEditAdjustmentCell *)self delegate];
    [delegate2 didToggleCell:self];
  }
}

- (BOOL)displayMappedValue
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  displayMappedValue = [containerButton displayMappedValue];

  return displayMappedValue;
}

- (void)setDisplayMappedValue:(BOOL)value
{
  valueCopy = value;
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setDisplayMappedValue:valueCopy];
}

- (void)_updateValueLabelVisibility
{
  if ([(PUPhotoEditBaseAdjustmentCell *)self isUserModifying])
  {
    shouldDisplayValueLabel = [(PUPhotoEditAdjustmentCell *)self shouldDisplayValueLabel];
  }

  else
  {
    shouldDisplayValueLabel = 0;
  }

  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setShouldShowValueLabel:shouldDisplayValueLabel];
}

- (void)setIsUserModifying:(BOOL)modifying
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v4 setIsUserModifying:modifying];
  [(PUPhotoEditAdjustmentCell *)self _updateValueLabelVisibility];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = PUPhotoEditAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v8 setEnabled:?];
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setSelected:enabledCopy];

  if (enabledCopy)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.3;
  }

  contentView = [(PUPhotoEditAdjustmentCell *)self contentView];
  [contentView setAlpha:v6];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = PUPhotoEditAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v7 setSelected:?];
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setEnabled:selectedCopy];

  containerButton2 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton2 setUserInteractionEnabled:selectedCopy];
}

- (void)reloadImage
{
  v3 = MEMORY[0x1E69DCAB8];
  imageName = [(PUPhotoEditBaseAdjustmentCell *)self imageName];
  v11 = [v3 pu_PhotosUIImageNamed:imageName];

  if (![(PUPhotoEditBaseAdjustmentCell *)self imageIsColor])
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v6 = [v11 imageWithTintColor:labelColor];

    v11 = v6;
  }

  imageTransformBlock = [(PUPhotoEditBaseAdjustmentCell *)self imageTransformBlock];

  if (imageTransformBlock)
  {
    imageTransformBlock2 = [(PUPhotoEditBaseAdjustmentCell *)self imageTransformBlock];
    v9 = (imageTransformBlock2)[2](imageTransformBlock2, v11);

    v11 = v9;
  }

  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setImage:v11 forState:0];
}

- (void)setImageTransformBlock:(id)block
{
  v4 = _Block_copy(block);
  imageTransformBlock = self->super._imageTransformBlock;
  self->super._imageTransformBlock = v4;

  [(PUPhotoEditAdjustmentCell *)self reloadImage];
}

- (void)setImageIsColor:(BOOL)color
{
  if (self->super._imageIsColor != color)
  {
    self->super._imageIsColor = color;
    [(PUPhotoEditAdjustmentCell *)self reloadImage];
  }
}

- (void)setImageName:(id)name
{
  nameCopy = name;
  if (self->super._imageName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->super._imageName, name);
    [(PUPhotoEditAdjustmentCell *)self reloadImage];
    nameCopy = v6;
  }
}

- (void)_setupEventHandler
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton addTarget:self action:sel_handleButton_ forControlEvents:64];
}

- (PUPhotoEditAdjustmentCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditAdjustmentCell *)v3 _setupEventHandler];
  }

  return v4;
}

- (PUPhotoEditAdjustmentCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditAdjustmentCell *)v3 _setupEventHandler];
  }

  return v4;
}

@end