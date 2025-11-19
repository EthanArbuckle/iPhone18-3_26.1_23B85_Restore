@interface _NSLineBreakerNodePool
- (_WLNode)allocNode;
- (_WLNode)retainNode:(_WLNode *)a3;
- (void)releaseNode:(_WLNode *)a3;
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

- (_WLNode)retainNode:(_WLNode *)a3
{
  if (a3)
  {
    if (a3->var4)
    {
      [_NSLineBreakerNodePool retainNode:];
    }

    ++a3->var1;
  }

  return a3;
}

- (void)releaseNode:(_WLNode *)a3
{
  if (a3)
  {
    while (a3->var1 == 1)
    {
      if (a3->var4)
      {
        [_NSLineBreakerNodePool releaseNode:];
      }

      var0 = a3->var0;
      a3->var4 = 1;
      a3->var0 = self->_freeList;
      a3->var1 = 0;
      self->_freeList = a3;
      a3 = var0;
      if (!var0)
      {
        return;
      }
    }

    if (a3->var4)
    {
      [_NSLineBreakerNodePool releaseNode:];
    }

    --a3->var1;
  }
}

@end