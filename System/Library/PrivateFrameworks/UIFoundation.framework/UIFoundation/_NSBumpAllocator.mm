@interface _NSBumpAllocator
- (Slab)_allocateSlabWithSize:(unint64_t)size;
- (void)allocate:(unint64_t)allocate;
- (void)dealloc;
- (void)reset;
@end

@implementation _NSBumpAllocator

- (Slab)_allocateSlabWithSize:(unint64_t)size
{
  result = malloc_type_malloc(size, 0x299B2E2DuLL);
  result->var0 = size;
  result->var1 = 0;
  return result;
}

- (void)allocate:(unint64_t)allocate
{
  if (allocate - 4081 <= 0xFFFFFFFFFFFFEFFELL)
  {
    [_NSBumpAllocator allocate:];
  }

  if (!self->_firstSlab)
  {
    v7 = [(_NSBumpAllocator *)self _allocateSlabWithSize:4096];
    var1 = v7;
    self->_firstSlab = v7;
    self->_curSlab = v7;
LABEL_8:
    var0 = v7->var0;
    result = v7->var2;
    self->_endPtr = var1 + var0;
    goto LABEL_9;
  }

  result = self->_ptr;
  if ((result + allocate) > self->_endPtr)
  {
    var1 = self->_curSlab->var1;
    if (!var1)
    {
      self->_curSlab->var1 = [(_NSBumpAllocator *)self _allocateSlabWithSize:4096];
      var1 = self->_curSlab->var1;
    }

    self->_curSlab = var1;
    v7 = var1;
    goto LABEL_8;
  }

LABEL_9:
  self->_ptr = result + allocate;
  return result;
}

- (void)reset
{
  firstSlab = self->_firstSlab;
  var0 = firstSlab->var0;
  self->_curSlab = firstSlab;
  self->_ptr = firstSlab->var2;
  self->_endPtr = firstSlab + var0;
}

- (void)dealloc
{
  firstSlab = self->_firstSlab;
  if (firstSlab)
  {
    do
    {
      var1 = firstSlab->var1;
      free(firstSlab);
      firstSlab = var1;
    }

    while (var1);
  }

  v5.receiver = self;
  v5.super_class = _NSBumpAllocator;
  [(_NSBumpAllocator *)&v5 dealloc];
}

@end