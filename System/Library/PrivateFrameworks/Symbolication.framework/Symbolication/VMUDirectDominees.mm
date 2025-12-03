@interface VMUDirectDominees
- (VMUDirectDominees)initWithDominatorGraph:(id)graph rootNode:(unsigned int)node;
- (id)nextObject;
@end

@implementation VMUDirectDominees

- (VMUDirectDominees)initWithDominatorGraph:(id)graph rootNode:(unsigned int)node
{
  graphCopy = graph;
  self->_node = [(VMUDominatorGraph *)graphCopy firstDominates][4 * node];
  dg = self->_dg;
  self->_dg = graphCopy;

  return self;
}

- (id)nextObject
{
  if (self->_node == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    self->_node = [(VMUDominatorGraph *)self->_dg nextDominates][4 * self->_node];
  }

  return v3;
}

@end