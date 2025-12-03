@interface PXDragHapticFeedbackGenerator
- (_UIDragSnappingFeedbackGenerator)reorderFeedbackGenerator;
- (void)draggedObjectLanded;
- (void)draggedObjectLifted;
- (void)performFeedback;
- (void)setReorderFeedbackEnabled:(BOOL)enabled;
@end

@implementation PXDragHapticFeedbackGenerator

- (void)draggedObjectLanded
{
  if ([(PXDragHapticFeedbackGenerator *)self reorderFeedbackEnabled])
  {
    reorderFeedbackGenerator = [(PXDragHapticFeedbackGenerator *)self reorderFeedbackGenerator];
    [reorderFeedbackGenerator draggedObjectLanded];
  }
}

- (void)draggedObjectLifted
{
  if ([(PXDragHapticFeedbackGenerator *)self reorderFeedbackEnabled])
  {
    reorderFeedbackGenerator = [(PXDragHapticFeedbackGenerator *)self reorderFeedbackGenerator];
    [reorderFeedbackGenerator draggedObjectLifted];
  }
}

- (void)performFeedback
{
  reorderFeedbackGenerator = [(PXDragHapticFeedbackGenerator *)self reorderFeedbackGenerator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PXDragHapticFeedbackGenerator_performFeedback__block_invoke;
  v4[3] = &unk_1E7BB8880;
  v4[4] = self;
  [reorderFeedbackGenerator performFeedbackWithDelay:v4 insideBlock:0.05];
}

void __48__PXDragHapticFeedbackGenerator_performFeedback__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) reorderFeedbackGenerator];
  [v1 objectSnapped];
}

- (void)setReorderFeedbackEnabled:(BOOL)enabled
{
  if (self->_reorderFeedbackEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_reorderFeedbackEnabled = enabled;
    reorderFeedbackGenerator = [(PXDragHapticFeedbackGenerator *)self reorderFeedbackGenerator];
    v6 = reorderFeedbackGenerator;
    if (enabledCopy)
    {
      [reorderFeedbackGenerator userInteractionStarted];
    }

    else
    {
      [reorderFeedbackGenerator userInteractionEnded];
    }
  }
}

- (_UIDragSnappingFeedbackGenerator)reorderFeedbackGenerator
{
  reorderFeedbackGenerator = self->_reorderFeedbackGenerator;
  if (!reorderFeedbackGenerator)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD488]);
    v5 = self->_reorderFeedbackGenerator;
    self->_reorderFeedbackGenerator = v4;

    reorderFeedbackGenerator = self->_reorderFeedbackGenerator;
  }

  return reorderFeedbackGenerator;
}

@end