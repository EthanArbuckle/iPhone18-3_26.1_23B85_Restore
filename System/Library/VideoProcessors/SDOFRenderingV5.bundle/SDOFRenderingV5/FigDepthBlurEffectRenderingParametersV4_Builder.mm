@interface FigDepthBlurEffectRenderingParametersV4_Builder
- (FigDepthBlurEffectRenderingParametersV4_Builder)initWithVersion:(int)a3;
- (id)encodedParams;
- (void)dealloc;
- (void)setParam:(signed __int16)a3 floatValue:(float)a4;
- (void)setParamPair:(const FigDepthBlurEffectRenderingParametersV4_ParameterPair *)a3;
@end

@implementation FigDepthBlurEffectRenderingParametersV4_Builder

- (FigDepthBlurEffectRenderingParametersV4_Builder)initWithVersion:(int)a3
{
  v8.receiver = self;
  v8.super_class = FigDepthBlurEffectRenderingParametersV4_Builder;
  v4 = [(FigDepthBlurEffectRenderingParametersV4_Builder *)&v8 init];
  if (v4)
  {
    v5 = malloc_type_malloc(0x410uLL, 0x1000040451B5BE8uLL);
    v4->_rawParams = v5;
    if (!v5)
    {
      sub_295EB40B0();
      v6 = 0;
      goto LABEL_5;
    }

    v5->var0.var0 = 1145980242;
    v5->var0.var1 = a3 - 1;
    *&v5->var0.var2 = 0x100000010;
    v4->_length = 0;
    v4->_capacity = 128;
    v4->_sorted = 1;
  }

  v6 = v4;
LABEL_5:

  return v6;
}

- (void)dealloc
{
  free(self->_rawParams);
  v3.receiver = self;
  v3.super_class = FigDepthBlurEffectRenderingParametersV4_Builder;
  [(FigDepthBlurEffectRenderingParametersV4_Builder *)&v3 dealloc];
}

- (id)encodedParams
{
  if (!self->_sorted)
  {
    length = self->_length;
    if (length)
    {
      qsort_b(self->_rawParams->var2, length, 8uLL, &unk_2A1D12408);
    }

    self->_sorted = 1;
  }

  v4 = objc_alloc(MEMORY[0x29EDB8DA0]);
  v6 = objc_msgSend_initWithBytes_length_(v4, v5, self->_rawParams, self->_rawParams->var0.var2);

  return v6;
}

- (void)setParamPair:(const FigDepthBlurEffectRenderingParametersV4_ParameterPair *)a3
{
  length = self->_length;
  capacity = self->_capacity;
  if (length < capacity)
  {
    rawParams = self->_rawParams;
LABEL_5:
    rawParams->var2[length] = *a3;
    v8 = self->_length + 1;
    self->_length = v8;
    self->_sorted = 0;
    self->_rawParams->var0.var2 = 8 * v8 + 16;
    return;
  }

  rawParams = reallocf(self->_rawParams, 16 * capacity + 16);
  self->_rawParams = rawParams;
  if (rawParams)
  {
    self->_capacity = 2 * capacity;
    length = self->_length;
    goto LABEL_5;
  }

  sub_295EB4128();
}

- (void)setParam:(signed __int16)a3 floatValue:(float)a4
{
  v5[1] = 1;
  v5[0] = a3;
  v6 = a4;
  objc_msgSend_setParamPair_(self, a2, v5, v4);
}

@end