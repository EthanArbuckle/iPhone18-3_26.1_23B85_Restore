@interface PXVolumeController
- (PXVolumeController)init;
- (PXVolumeController)initWithIsInSilentMode:(BOOL)mode;
- (void)performChanges:(id)changes;
- (void)setIsInSilentMode:(BOOL)mode;
@end

@implementation PXVolumeController

- (void)setIsInSilentMode:(BOOL)mode
{
  if (self->_isInSilentMode != mode)
  {
    self->_isInSilentMode = mode;
    [(PXVolumeController *)self signalChange:1];
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXVolumeController.m" lineNumber:33 description:{@"%s must be called on the main thread", "-[PXVolumeController performChanges:]"}];
  }

  v7.receiver = self;
  v7.super_class = PXVolumeController;
  [(PXVolumeController *)&v7 performChanges:changesCopy];
}

- (PXVolumeController)initWithIsInSilentMode:(BOOL)mode
{
  v5.receiver = self;
  v5.super_class = PXVolumeController;
  result = [(PXVolumeController *)&v5 init];
  if (result)
  {
    result->_isInSilentMode = mode;
  }

  return result;
}

- (PXVolumeController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVolumeController.m" lineNumber:21 description:{@"%s is not available as initializer", "-[PXVolumeController init]"}];

  abort();
}

@end