@interface PXPhotosDetailsViewModel
- (void)performChanges:(id)a3;
- (void)setDisabledActionTypes:(id)a3;
- (void)setFaceModeEnabled:(BOOL)a3;
- (void)setSelecting:(BOOL)a3;
- (void)setSelectionManager:(id)a3;
- (void)setSupportsSelection:(BOOL)a3;
@end

@implementation PXPhotosDetailsViewModel

- (void)setDisabledActionTypes:(id)a3
{
  v8 = a3;
  v5 = self->_disabledActionTypes;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_disabledActionTypes, a3);
      [(PXPhotosDetailsViewModel *)self signalChange:32];
    }
  }
}

- (void)setFaceModeEnabled:(BOOL)a3
{
  if (self->_faceModeEnabled != a3)
  {
    self->_faceModeEnabled = a3;
    [(PXPhotosDetailsViewModel *)self signalChange:16];
  }
}

- (void)setSelectionManager:(id)a3
{
  v5 = a3;
  if (self->_selectionManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectionManager, a3);
    [(PXPhotosDetailsViewModel *)self signalChange:4];
    v5 = v6;
  }
}

- (void)setSupportsSelection:(BOOL)a3
{
  if (self->_supportsSelection != a3)
  {
    self->_supportsSelection = a3;
    [(PXPhotosDetailsViewModel *)self signalChange:2];
  }
}

- (void)setSelecting:(BOOL)a3
{
  if (self->_selecting != a3)
  {
    self->_selecting = a3;
    if (!a3)
    {
      [(PXPhotosDetailsViewModel *)self setFaceModeEnabled:0];
    }

    [(PXPhotosDetailsViewModel *)self signalChange:1];
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsViewModel;
  [(PXPhotosDetailsViewModel *)&v3 performChanges:a3];
}

@end