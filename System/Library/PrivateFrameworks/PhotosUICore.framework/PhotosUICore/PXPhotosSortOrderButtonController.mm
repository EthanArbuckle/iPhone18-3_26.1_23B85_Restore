@interface PXPhotosSortOrderButtonController
- (PXPhotosSortOrderButtonController)initWithModel:(id)a3;
- (void)_updateButtonMenu;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXPhotosSortOrderButtonController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXPhotosViewOptionsModelObserverContext_179585 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosSortOrderButtonController.m" lineNumber:59 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x12) != 0)
  {
    v11 = v9;
    [(PXPhotosSortOrderButtonController *)self _updateButtonMenu];
    v9 = v11;
  }
}

- (void)_updateButtonMenu
{
  v3 = [(PXPhotosViewOptionsModel *)self->_model sortOrderMenu];
  [(UIButton *)self->_button setMenu:v3];

  button = self->_button;

  [(UIButton *)button setShowsMenuAsPrimaryAction:1];
}

- (PXPhotosSortOrderButtonController)initWithModel:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PXPhotosSortOrderButtonController;
  v6 = [(PXPhotosSortOrderButtonController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:14.0];
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.arrow.down" withConfiguration:v8];
    v10 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    [v10 setImage:v9];
    v11 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v10 primaryAction:0];
    button = v7->_button;
    v7->_button = v11;

    [(PXPhotosSortOrderButtonController *)v7 _updateButtonMenu];
    [(PXPhotosViewOptionsModel *)v7->_model registerChangeObserver:v7 context:PXPhotosViewOptionsModelObserverContext_179585];
  }

  return v7;
}

@end