@interface VMUDirectDominees
- (VMUDirectDominees)initWithDominatorGraph:(id)a3 rootNode:(unsigned int)a4;
- (id)nextObject;
@end

@implementation VMUDirectDominees

- (VMUDirectDominees)initWithDominatorGraph:(id)a3 rootNode:(unsigned int)a4
{
  v6 = a3;
  self->_node = [(VMUDominatorGraph *)v6 firstDominates][4 * a4];
  dg = self->_dg;
  self->_dg = v6;

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