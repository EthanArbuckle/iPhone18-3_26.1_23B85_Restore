@interface PXTabManager
- (void)setEnabled:(BOOL)a3;
@end

@implementation PXTabManager

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __27__PXTabManager_setEnabled___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    v6 = a3;
    [(PXTabManager *)self performChanges:v5];
  }
}

@end