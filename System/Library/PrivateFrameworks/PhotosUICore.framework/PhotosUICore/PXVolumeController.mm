@interface PXVolumeController
- (PXVolumeController)init;
- (PXVolumeController)initWithIsInSilentMode:(BOOL)a3;
- (void)performChanges:(id)a3;
- (void)setIsInSilentMode:(BOOL)a3;
@end

@implementation PXVolumeController

- (void)setIsInSilentMode:(BOOL)a3
{
  if (self->_isInSilentMode != a3)
  {
    self->_isInSilentMode = a3;
    [(PXVolumeController *)self signalChange:1];
  }
}

- (void)performChanges:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXVolumeController.m" lineNumber:33 description:{@"%s must be called on the main thread", "-[PXVolumeController performChanges:]"}];
  }

  v7.receiver = self;
  v7.super_class = PXVolumeController;
  [(PXVolumeController *)&v7 performChanges:v5];
}

- (PXVolumeController)initWithIsInSilentMode:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXVolumeController;
  result = [(PXVolumeController *)&v5 init];
  if (result)
  {
    result->_isInSilentMode = a3;
  }

  return result;
}

- (PXVolumeController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXVolumeController.m" lineNumber:21 description:{@"%s is not available as initializer", "-[PXVolumeController init]"}];

  abort();
}

@end