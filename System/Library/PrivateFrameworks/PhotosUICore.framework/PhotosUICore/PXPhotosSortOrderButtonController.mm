@interface PXPhotosSortOrderButtonController
- (PXPhotosSortOrderButtonController)initWithModel:(id)model;
- (void)_updateButtonMenu;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXPhotosSortOrderButtonController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXPhotosViewOptionsModelObserverContext_179585 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSortOrderButtonController.m" lineNumber:59 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x12) != 0)
  {
    v11 = observableCopy;
    [(PXPhotosSortOrderButtonController *)self _updateButtonMenu];
    observableCopy = v11;
  }
}

- (void)_updateButtonMenu
{
  sortOrderMenu = [(PXPhotosViewOptionsModel *)self->_model sortOrderMenu];
  [(UIButton *)self->_button setMenu:sortOrderMenu];

  button = self->_button;

  [(UIButton *)button setShowsMenuAsPrimaryAction:1];
}

- (PXPhotosSortOrderButtonController)initWithModel:(id)model
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = PXPhotosSortOrderButtonController;
  v6 = [(PXPhotosSortOrderButtonController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:14.0];
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.arrow.down" withConfiguration:v8];
    borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    [borderlessButtonConfiguration setImage:v9];
    v11 = [MEMORY[0x1E69DC738] buttonWithConfiguration:borderlessButtonConfiguration primaryAction:0];
    button = v7->_button;
    v7->_button = v11;

    [(PXPhotosSortOrderButtonController *)v7 _updateButtonMenu];
    [(PXPhotosViewOptionsModel *)v7->_model registerChangeObserver:v7 context:PXPhotosViewOptionsModelObserverContext_179585];
  }

  return v7;
}

@end