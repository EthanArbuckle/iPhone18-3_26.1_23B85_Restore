@interface PXPhotosDetailsViewModel
- (void)performChanges:(id)changes;
- (void)setDisabledActionTypes:(id)types;
- (void)setFaceModeEnabled:(BOOL)enabled;
- (void)setSelecting:(BOOL)selecting;
- (void)setSelectionManager:(id)manager;
- (void)setSupportsSelection:(BOOL)selection;
@end

@implementation PXPhotosDetailsViewModel

- (void)setDisabledActionTypes:(id)types
{
  typesCopy = types;
  v5 = self->_disabledActionTypes;
  v6 = v5;
  if (v5 == typesCopy)
  {
  }

  else
  {
    v7 = [(NSSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_disabledActionTypes, types);
      [(PXPhotosDetailsViewModel *)self signalChange:32];
    }
  }
}

- (void)setFaceModeEnabled:(BOOL)enabled
{
  if (self->_faceModeEnabled != enabled)
  {
    self->_faceModeEnabled = enabled;
    [(PXPhotosDetailsViewModel *)self signalChange:16];
  }
}

- (void)setSelectionManager:(id)manager
{
  managerCopy = manager;
  if (self->_selectionManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_selectionManager, manager);
    [(PXPhotosDetailsViewModel *)self signalChange:4];
    managerCopy = v6;
  }
}

- (void)setSupportsSelection:(BOOL)selection
{
  if (self->_supportsSelection != selection)
  {
    self->_supportsSelection = selection;
    [(PXPhotosDetailsViewModel *)self signalChange:2];
  }
}

- (void)setSelecting:(BOOL)selecting
{
  if (self->_selecting != selecting)
  {
    self->_selecting = selecting;
    if (!selecting)
    {
      [(PXPhotosDetailsViewModel *)self setFaceModeEnabled:0];
    }

    [(PXPhotosDetailsViewModel *)self signalChange:1];
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsViewModel;
  [(PXPhotosDetailsViewModel *)&v3 performChanges:changes];
}

@end