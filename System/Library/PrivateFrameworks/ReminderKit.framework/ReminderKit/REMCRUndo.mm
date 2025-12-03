@interface REMCRUndo
- (REMCRUndo)initWithUndoBlocks:(id)blocks;
@end

@implementation REMCRUndo

- (REMCRUndo)initWithUndoBlocks:(id)blocks
{
  blocksCopy = blocks;
  v9.receiver = self;
  v9.super_class = REMCRUndo;
  v5 = [(REMCRUndo *)&v9 init];
  if (v5)
  {
    v6 = [blocksCopy copy];
    undoBlocks = v5->_undoBlocks;
    v5->_undoBlocks = v6;
  }

  return v5;
}

@end