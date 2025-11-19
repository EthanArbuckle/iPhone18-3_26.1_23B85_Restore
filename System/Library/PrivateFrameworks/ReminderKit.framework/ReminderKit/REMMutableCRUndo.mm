@interface REMMutableCRUndo
- (REMMutableCRUndo)init;
- (id)immutableCopy;
- (void)addUndoBlock:(id)a3;
@end

@implementation REMMutableCRUndo

- (REMMutableCRUndo)init
{
  v6.receiver = self;
  v6.super_class = REMMutableCRUndo;
  v2 = [(REMMutableCRUndo *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    undoBlocks = v2->_undoBlocks;
    v2->_undoBlocks = v3;
  }

  return v2;
}

- (void)addUndoBlock:(id)a3
{
  v4 = a3;
  v6 = [(REMMutableCRUndo *)self undoBlocks];
  v5 = MEMORY[0x19A8FD720](v4);

  [v6 addObject:v5];
}

- (id)immutableCopy
{
  v3 = [REMCRUndo alloc];
  v4 = [(REMMutableCRUndo *)self undoBlocks];
  v5 = [v4 copy];
  v6 = [(REMCRUndo *)v3 initWithUndoBlocks:v5];

  return v6;
}

@end