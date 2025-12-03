@interface _NSLineBreakerNodePool
- (_WLNode)allocNode;
- (_WLNode)retainNode:(_WLNode *)node;
- (void)releaseNode:(_WLNode *)node;
@end

@implementation _NSLineBreakerNodePool

- (_WLNode)allocNode
{
  if (!self->_allocator)
  {
    v3 = objc_alloc_init(_NSBumpAllocator);
    allocator = self->_allocator;
    self->_allocator = v3;
  }

  result = self->_freeList;
  if (result)
  {
    self->_freeList = result->var0;
  }

  else
  {
    result = [(_NSBumpAllocator *)self->_allocator allocate:112];
  }

  result->var3 = 0.0;
  result->var0 = 0;
  result->var1 = 1;
  result->var4 = 0;
  return result;
}

- (_WLNode)retainNode:(_WLNode *)node
{
  if (node)
  {
    if (node->var4)
    {
      [_NSLineBreakerNodePool retainNode:];
    }

    ++node->var1;
  }

  return node;
}

- (void)releaseNode:(_WLNode *)node
{
  if (node)
  {
    while (node->var1 == 1)
    {
      if (node->var4)
      {
        [_NSLineBreakerNodePool releaseNode:];
      }

      var0 = node->var0;
      node->var4 = 1;
      node->var0 = self->_freeList;
      node->var1 = 0;
      self->_freeList = node;
      node = var0;
      if (!var0)
      {
        return;
      }
    }

    if (node->var4)
    {
      [_NSLineBreakerNodePool releaseNode:];
    }

    --node->var1;
  }
}

@end