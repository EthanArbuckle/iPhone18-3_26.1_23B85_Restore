@interface FxTexture
- (BOOL)_verifyImage;
- (FxTexture)init;
- (FxTexture)initWithInfo:(id *)info textureId:(unsigned int)id andTarget:(unsigned int)target;
- (id)copyWithZone:(_NSZone *)zone;
- (void)createData:(unsigned int)data withType:(unsigned int)type;
- (void)dealloc;
- (void)getTextureCoords:(double *)coords right:(double *)right bottom:(double *)bottom top:(double *)top;
@end

@implementation FxTexture

- (FxTexture)init
{
  v5.receiver = self;
  v5.super_class = FxTexture;
  result = [(FxImage *)&v5 init];
  if (result)
  {
    v3 = result;
    v4 = malloc_type_calloc(1uLL, 0xCuLL, 0x100004005A209FEuLL);
    v3->_texturePriv = v4;
    if (v4)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (FxTexture)initWithInfo:(id *)info textureId:(unsigned int)id andTarget:(unsigned int)target
{
  v7 = *&info->var6;
  v14[2] = *&info->var4;
  v14[3] = v7;
  var8 = info->var8;
  v8 = *&info->var2;
  v14[0] = *&info->var0;
  v14[1] = v8;
  v13.receiver = self;
  v13.super_class = FxTexture;
  v9 = [(FxImage *)&v13 initWithInfo:v14];
  v10 = v9;
  if (v9)
  {
    texturePriv = v9->_texturePriv;
    if (texturePriv || (texturePriv = malloc_type_calloc(1uLL, 0xCuLL, 0x100004005A209FEuLL), (v10->_texturePriv = texturePriv) != 0))
    {
      texturePriv->var0 = id;
      texturePriv->var1 = target;
      texturePriv->var2 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FxTexture alloc];
  if (self)
  {
    [(FxImage *)self imageInfo];
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
  }

  return [(FxTexture *)v4 initWithInfo:&v6 textureId:[(FxTexture *)self textureId:v6] andTarget:[(FxTexture *)self target]];
}

- (void)dealloc
{
  texturePriv = self->_texturePriv;
  if (texturePriv)
  {
    free(texturePriv);
  }

  v4.receiver = self;
  v4.super_class = FxTexture;
  [(FxImage *)&v4 dealloc];
}

- (void)createData:(unsigned int)data withType:(unsigned int)type
{
  v5 = malloc_type_malloc(4 * [(FxImage *)self width:*&data]* [(FxImage *)self height], 0x100004077774924uLL);
  [(FxTexture *)self bind];
  return v5;
}

- (void)getTextureCoords:(double *)coords right:(double *)right bottom:(double *)bottom top:(double *)top
{
  v11 = [(FxImage *)self dod];
  v12 = v11;
  v14 = v13;
  v15 = HIDWORD(v11);
  if ([(FxTexture *)self isInputImage])
  {
    if (coords)
    {
      *coords = 0.0;
    }

    if (bottom)
    {
      *bottom = 0.0;
    }

    if (right)
    {
      *right = (v14 - v12);
    }

    if (top)
    {
      LODWORD(v16) = HIDWORD(v14) - v15;
LABEL_18:
      *top = v16;
    }
  }

  else
  {
    if (coords)
    {
      *coords = v12;
    }

    if (right)
    {
      *right = v14;
    }

    if (bottom)
    {
      *bottom = v15;
    }

    if (top)
    {
      v16 = HIDWORD(v14);
      goto LABEL_18;
    }
  }
}

- (BOOL)_verifyImage
{
  v6.receiver = self;
  v6.super_class = FxTexture;
  _verifyImage = [(FxImage *)&v6 _verifyImage];
  if (_verifyImage)
  {
    texturePriv = self->_texturePriv;
    if (texturePriv)
    {
      LOBYTE(_verifyImage) = texturePriv->var1 != 0;
    }

    else
    {
      LOBYTE(_verifyImage) = 0;
    }
  }

  return _verifyImage;
}

@end