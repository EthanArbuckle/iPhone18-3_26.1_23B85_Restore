@interface PUPhotoEditAutoAdjustmentCell
- (PUPhotoEditAutoAdjustmentCell)initWithCoder:(id)coder;
- (PUPhotoEditAutoAdjustmentCell)initWithFrame:(CGRect)frame;
- (PUPhotoEditBaseAdjustmentCellDelegate)delegate;
- (void)_configureContainerButton;
- (void)handleButton:(id)button;
- (void)performPrimaryAction;
- (void)setEnabled:(BOOL)enabled;
- (void)setImageName:(id)name;
- (void)setSelected:(BOOL)selected;
@end

@implementation PUPhotoEditAutoAdjustmentCell

- (PUPhotoEditBaseAdjustmentCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performPrimaryAction
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [(PUPhotoEditAutoAdjustmentCell *)self handleButton:containerButton];
}

- (void)handleButton:(id)button
{
  buttonCopy = button;
  delegate = [(PUPhotoEditAutoAdjustmentCell *)self delegate];
  v5 = [delegate canToggleCell:self];

  if (v5)
  {
    [buttonCopy setSelected:{objc_msgSend(buttonCopy, "isSelected") ^ 1}];
    -[PUPhotoEditAutoAdjustmentCell setEnabled:](self, "setEnabled:", [buttonCopy isSelected]);
    delegate2 = [(PUPhotoEditAutoAdjustmentCell *)self delegate];
    [delegate2 didToggleCell:self];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = PUPhotoEditAutoAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v6 setEnabled:?];
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setSelected:enabledCopy];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = PUPhotoEditAutoAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v6 setSelected:?];
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setUserInteractionEnabled:selectedCopy];
}

- (void)setImageName:(id)name
{
  nameCopy = name;
  if (self->super._imageName != nameCopy)
  {
    v18 = nameCopy;
    objc_storeStrong(&self->super._imageName, name);
    v6 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:v18];
    v7 = MEMORY[0x1E69DCAB8];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-Selected", v18];
    v9 = [v7 pu_PhotosUIImageNamed:v8];

    traitCollection = [(PUPhotoEditAutoAdjustmentCell *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
    v13 = containerButton;
    if (userInterfaceStyle == 2)
    {
      v14 = v6;
    }

    else
    {
      v14 = v9;
    }

    [containerButton setImage:v14 forState:0];

    if (v9)
    {
      containerButton2 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
      v16 = containerButton2;
      if (userInterfaceStyle == 2)
      {
        v17 = v9;
      }

      else
      {
        v17 = v6;
      }

      [containerButton2 setImage:v17 forState:4];
    }

    nameCopy = v18;
  }
}

- (void)_configureContainerButton
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setShouldShowValueLabel:0];

  containerButton2 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton2 setShouldShowCircularRing:0];

  containerButton3 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton3 setShouldScaleDownImage:0];

  containerButton4 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton4 setEnabled:1];

  containerButton5 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton5 addTarget:self action:sel_handleButton_ forControlEvents:64];
}

- (PUPhotoEditAutoAdjustmentCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditAutoAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditAutoAdjustmentCell *)v3 _configureContainerButton];
  }

  return v4;
}

- (PUPhotoEditAutoAdjustmentCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditAutoAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditAutoAdjustmentCell *)v3 _configureContainerButton];
  }

  return v4;
}

@end