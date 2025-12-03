@interface UIKeyboardUISnapshotView
- (CGSize)intrinsicContentSize;
- (void)setSnapshot:(id)snapshot;
@end

@implementation UIKeyboardUISnapshotView

- (CGSize)intrinsicContentSize
{
  [(UIKeyboardUISnapshot *)self->_snapshot size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_snapshot != snapshotCopy)
  {
    self->_snapshot = snapshotCopy;
    v7 = snapshotCopy;
    if ([(UIKeyboardUISnapshot *)snapshotCopy slotID])
    {
      layer2 = [MEMORY[0x1E6979320] objectForSlot:{-[UIKeyboardUISnapshot slotID](self->_snapshot, "slotID")}];
      layer = [(UIView *)self layer];
      [layer setContents:layer2];
    }

    else
    {
      layer2 = [(UIView *)self layer];
      [layer2 setContents:0];
    }

    snapshotCopy = v7;
  }
}

@end