@interface REMCRUndo
- (REMCRUndo)initWithUndoBlocks:(id)a3;
@end

@implementation REMCRUndo

- (REMCRUndo)initWithUndoBlocks:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMCRUndo;
  v5 = [(REMCRUndo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    undoBlocks = v5->_undoBlocks;
    v5->_undoBlocks = v6;
  }

  return v5;
}

@end