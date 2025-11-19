@interface SCROBrailleLineVirtualStatus
- (void)dealloc;
@end

@implementation SCROBrailleLineVirtualStatus

- (void)dealloc
{
  cells = self->_cells;
  if (cells)
  {
    free(cells);
  }

  v4.receiver = self;
  v4.super_class = SCROBrailleLineVirtualStatus;
  [(SCROBrailleLineVirtualStatus *)&v4 dealloc];
}

@end