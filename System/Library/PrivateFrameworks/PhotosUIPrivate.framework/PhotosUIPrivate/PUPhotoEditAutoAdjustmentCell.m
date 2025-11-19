@interface PUPhotoEditAutoAdjustmentCell
- (PUPhotoEditAutoAdjustmentCell)initWithCoder:(id)a3;
- (PUPhotoEditAutoAdjustmentCell)initWithFrame:(CGRect)a3;
- (PUPhotoEditBaseAdjustmentCellDelegate)delegate;
- (void)_configureContainerButton;
- (void)handleButton:(id)a3;
- (void)performPrimaryAction;
- (void)setEnabled:(BOOL)a3;
- (void)setImageName:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PUPhotoEditAutoAdjustmentCell

- (PUPhotoEditBaseAdjustmentCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performPrimaryAction
{
  v3 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [(PUPhotoEditAutoAdjustmentCell *)self handleButton:v3];
}

- (void)handleButton:(id)a3
{
  v7 = a3;
  v4 = [(PUPhotoEditAutoAdjustmentCell *)self delegate];
  v5 = [v4 canToggleCell:self];

  if (v5)
  {
    [v7 setSelected:{objc_msgSend(v7, "isSelected") ^ 1}];
    -[PUPhotoEditAutoAdjustmentCell setEnabled:](self, "setEnabled:", [v7 isSelected]);
    v6 = [(PUPhotoEditAutoAdjustmentCell *)self delegate];
    [v6 didToggleCell:self];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PUPhotoEditAutoAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v6 setEnabled:?];
  v5 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v5 setSelected:v3];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PUPhotoEditAutoAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v6 setSelected:?];
  v5 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v5 setUserInteractionEnabled:v3];
}

- (void)setImageName:(id)a3
{
  v5 = a3;
  if (self->super._imageName != v5)
  {
    v18 = v5;
    objc_storeStrong(&self->super._imageName, a3);
    v6 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:v18];
    v7 = MEMORY[0x1E69DCAB8];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-Selected", v18];
    v9 = [v7 pu_PhotosUIImageNamed:v8];

    v10 = [(PUPhotoEditAutoAdjustmentCell *)self traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
    v13 = v12;
    if (v11 == 2)
    {
      v14 = v6;
    }

    else
    {
      v14 = v9;
    }

    [v12 setImage:v14 forState:0];

    if (v9)
    {
      v15 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
      v16 = v15;
      if (v11 == 2)
      {
        v17 = v9;
      }

      else
      {
        v17 = v6;
      }

      [v15 setImage:v17 forState:4];
    }

    v5 = v18;
  }
}

- (void)_configureContainerButton
{
  v3 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v3 setShouldShowValueLabel:0];

  v4 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setShouldShowCircularRing:0];

  v5 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v5 setShouldScaleDownImage:0];

  v6 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v6 setEnabled:1];

  v7 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v7 addTarget:self action:sel_handleButton_ forControlEvents:64];
}

- (PUPhotoEditAutoAdjustmentCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditAutoAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditAutoAdjustmentCell *)v3 _configureContainerButton];
  }

  return v4;
}

- (PUPhotoEditAutoAdjustmentCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditAutoAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditAutoAdjustmentCell *)v3 _configureContainerButton];
  }

  return v4;
}

@end