@interface VMUDominatorRoots
- (VMUDominatorRoots)initWithDominatorGraph:(id)graph;
- (id)nextObject;
@end

@implementation VMUDominatorRoots

- (VMUDominatorRoots)initWithDominatorGraph:(id)graph
{
  self->_i = 0;
  objc_storeStrong(&self->_dg, graph);
  return self;
}

- (id)nextObject
{
  nodeNamespaceSize = [(VMUDominatorGraph *)self->_dg nodeNamespaceSize];
  dominators = [(VMUDominatorGraph *)self->_dg dominators];
  firstDominates = [(VMUDominatorGraph *)self->_dg firstDominates];
  i = self->_i;
  if (nodeNamespaceSize <= i)
  {
LABEL_6:
    v8 = 0;
    self->_i = nodeNamespaceSize;
  }

  else
  {
    v7 = nodeNamespaceSize - i;
    while (dominators[i] != -1 || firstDominates[i] == -1)
    {
      ++i;
      if (!--v7)
      {
        goto LABEL_6;
      }
    }

    self->_i = i + 1;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  }

  return v8;
}

@end