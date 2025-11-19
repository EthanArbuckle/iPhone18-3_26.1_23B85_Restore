@interface PXGSpriteMetadataStore
- (PXGSpriteMetadataStore)init;
- (unsigned)_indexOfResizableCapInsets:(id)a3;
- (unsigned)addResizableCapInsets:(id)a3;
- (void)dealloc;
@end

@implementation PXGSpriteMetadataStore

- (PXGSpriteMetadataStore)init
{
  v5.receiver = self;
  v5.super_class = PXGSpriteMetadataStore;
  v2 = [(PXGSpriteMetadataStore *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXGSpriteMetadataStore *)v2 addResizableCapInsets:0.0, 0.0, 0.0, 0.0];
  }

  return v3;
}

- (unsigned)_indexOfResizableCapInsets:(id)a3
{
  if (self->_numberOfResizableCapInsets)
  {
    v3 = 0;
    var1 = a3.var1;
    v5 = *&a3.var2;
    while ((vminv_u16(vmovn_s32(vceqq_f32(a3, self->_resizableCapInsets[v3]))) & 1) == 0)
    {
      if (self->_numberOfResizableCapInsets == ++v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LOWORD(v3) = -1;
  }

  return v3;
}

- (unsigned)addResizableCapInsets:(id)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  LODWORD(numberOfResizableCapInsets) = [(PXGSpriteMetadataStore *)self _indexOfResizableCapInsets:?];
  if (numberOfResizableCapInsets == 0xFFFF)
  {
    numberOfResizableCapInsets = self->_numberOfResizableCapInsets;
    self->_numberOfResizableCapInsets = numberOfResizableCapInsets + 1;
    resizableCapInsetsCapacity = self->_resizableCapInsetsCapacity;
    if (resizableCapInsetsCapacity >= (numberOfResizableCapInsets + 1))
    {
      resizableCapInsets = self->_resizableCapInsets;
    }

    else
    {
      if (self->_resizableCapInsetsCapacity)
      {
        do
        {
          LOWORD(resizableCapInsetsCapacity) = 2 * resizableCapInsetsCapacity;
        }

        while ((resizableCapInsetsCapacity & 0xFFFE) < (numberOfResizableCapInsets + 1));
      }

      else
      {
        LOWORD(resizableCapInsetsCapacity) = numberOfResizableCapInsets + 1;
      }

      self->_resizableCapInsetsCapacity = resizableCapInsetsCapacity;
      resizableCapInsets = malloc_type_realloc(self->_resizableCapInsets, 16 * resizableCapInsetsCapacity, 0x42760281uLL);
      self->_resizableCapInsets = resizableCapInsets;
    }

    p_var0 = &resizableCapInsets[numberOfResizableCapInsets].var0;
    *p_var0 = var0;
    p_var0[1] = var1;
    p_var0[2] = var2;
    p_var0[3] = var3;
  }

  return numberOfResizableCapInsets;
}

- (void)dealloc
{
  free(self->_resizableCapInsets);
  v3.receiver = self;
  v3.super_class = PXGSpriteMetadataStore;
  [(PXGSpriteMetadataStore *)&v3 dealloc];
}

@end