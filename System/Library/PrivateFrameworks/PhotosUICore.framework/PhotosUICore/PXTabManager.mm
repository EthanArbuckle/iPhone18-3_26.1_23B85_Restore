@interface PXTabManager
- (void)setEnabled:(BOOL)enabled;
@end

@implementation PXTabManager

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __27__PXTabManager_setEnabled___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    enabledCopy = enabled;
    [(PXTabManager *)self performChanges:v5];
  }
}

@end