@interface VMUDominatorRoots
- (VMUDominatorRoots)initWithDominatorGraph:(id)a3;
- (id)nextObject;
@end

@implementation VMUDominatorRoots

- (VMUDominatorRoots)initWithDominatorGraph:(id)a3
{
  self->_i = 0;
  objc_storeStrong(&self->_dg, a3);
  return self;
}

- (id)nextObject
{
  v3 = [(VMUDominatorGraph *)self->_dg nodeNamespaceSize];
  v4 = [(VMUDominatorGraph *)self->_dg dominators];
  v5 = [(VMUDominatorGraph *)self->_dg firstDominates];
  i = self->_i;
  if (v3 <= i)
  {
LABEL_6:
    v8 = 0;
    self->_i = v3;
  }

  else
  {
    v7 = v3 - i;
    while (v4[i] != -1 || v5[i] == -1)
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