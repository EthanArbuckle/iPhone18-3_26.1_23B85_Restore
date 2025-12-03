@interface PAEFilterDefaultBase
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getInputBitmap:(id *)bitmap withInfo:(id *)info atTime:(id)time appendHGGraph:(HGRef<HGNode>)graph;
- (BOOL)getInputBitmap:(id *)bitmap withInfo:(id *)info atTime:(id)time withROI:(HGRect *)i;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (BOOL)renderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (HGRef<HGNode>)makePrescaledBlurNode:(HGRef<HGNode>)node radius:(float)radius withScale:(PCVector2<float>)scale minInputScale:(float)inputScale maxInputScale:(float)maxInputScale;
- (HGRef<HGNode>)preScaleDown:(float)down withOutputRadius:(float *)radius withOutputScaleFactor:(float *)factor withInput:(HGRef<HGNode>)input minInputScale:(float)scale maxInputScale:(float)inputScale;
- (HGRef<HGNode>)preScaleUp:(float)up withInput:(HGRef<HGNode>)input;
- (id)getParamAPIWithError:(id *)error;
- (id)getParamErrorFor:(id)for;
@end

@implementation PAEFilterDefaultBase

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  *width = input->var0;
  *height = input->var1;
  return 1;
}

- (BOOL)renderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v5 = *&info->var2;
  v7[0] = *&info->var0.var0;
  v7[1] = v5;
  v7[2] = *&info->var4;
  return [(PAEFilterDefaultBase *)self canThrowRenderOutput:output withInput:input withInfo:v7];
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 1;
  *hardware = 1;
  return 1;
}

- (BOOL)getInputBitmap:(id *)bitmap withInfo:(id *)info atTime:(id)time withROI:(HGRect *)i
{
  v10 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_2873670A8];
  if (v10)
  {
    v11 = v10;
    if (objc_opt_respondsToSelector())
    {
      v12 = *&info->var2;
      v14[0] = *&info->var0.var0;
      v14[1] = v12;
      v14[2] = *&info->var4;
      LOBYTE(v10) = [v11 getInputBitmap:bitmap withInfo:v14 atTime:time.var1 withROI:i];
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (BOOL)getInputBitmap:(id *)bitmap withInfo:(id *)info atTime:(id)time appendHGGraph:(HGRef<HGNode>)graph
{
  v10 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_2873670A8];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v12 = *&info->var2;
  v17[0] = *&info->var0.var0;
  v17[1] = v12;
  v17[2] = *&info->var4;
  v13 = *graph.var0;
  v16 = v13;
  if (v13)
  {
    (*(*v13 + 16))(v13);
  }

  v14 = [v11 getInputBitmap:bitmap withInfo:v17 atTime:time.var1 appendHGGraph:&v16];
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  return v14;
}

- (id)getParamAPIWithError:(id *)error
{
  v4 = [(PROAPIAccessing *)self->super._apiManager apiForProtocol:&unk_28735E258];
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Unable to retrieve FxParameterRetrievalAPI object", *MEMORY[0x277CCA450], 0}];
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:FxPlugErrorDomain code:100001 userInfo:v5];
    }
  }

  return v4;
}

- (id)getParamErrorFor:(id)for
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to retrieve a parameter in [-%@             dynamicPropertiesAtTime:withError:]", for];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v3, *MEMORY[0x277CCA450], 0}];
  v5 = MEMORY[0x277CCA9B8];
  v6 = FxPlugErrorDomain;

  return [v5 errorWithDomain:v6 code:100002 userInfo:v4];
}

- (HGRef<HGNode>)preScaleDown:(float)down withOutputRadius:(float *)radius withOutputScaleFactor:(float *)factor withInput:(HGRef<HGNode>)input minInputScale:(float)scale maxInputScale:(float)inputScale
{
  v15 = v8;
  v17 = log2f(down);
  if (v17 <= inputScale)
  {
    inputScaleCopy = v17;
  }

  else
  {
    inputScaleCopy = inputScale;
  }

  if (v17 >= scale)
  {
    scaleCopy = inputScaleCopy;
  }

  else
  {
    scaleCopy = scale;
  }

  *factor = scaleCopy;
  if (scaleCopy <= 1.0)
  {
    *radius = down;
    *v15 = *input.var0;
    *input.var0 = 0;
  }

  else
  {
    *radius = down / scaleCopy;
    v20 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v20);
    HGTransform::HGTransform(v21);
    HGTransform::Scale(v21, 1.0 / *factor, 1.0 / *factor, 1.0);
    (*(*v20 + 120))(v20, 0, *input.var0);
    (*(*v20 + 576))(v20, v21);
    (*(*v20 + 592))(v20, 0, 0.0);
    *v15 = v20;
    HGTransform::~HGTransform(v21);
  }

  return v16;
}

- (HGRef<HGNode>)preScaleUp:(float)up withInput:(HGRef<HGNode>)input
{
  v7 = v4;
  if (up <= 1.0)
  {
    *v4 = *input.var0;
    *input.var0 = 0;
  }

  else
  {
    v8 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v8);
    HGTransform::HGTransform(v9);
    HGTransform::Scale(v9, up, up, 1.0);
    (*(*v8 + 120))(v8, 0, *input.var0);
    (*(*v8 + 576))(v8, v9);
    (*(*v8 + 592))(v8, 0, 0.0);
    *v7 = v8;
    HGTransform::~HGTransform(v9);
  }

  return self;
}

- (HGRef<HGNode>)makePrescaledBlurNode:(HGRef<HGNode>)node radius:(float)radius withScale:(PCVector2<float>)scale minInputScale:(float)inputScale maxInputScale:(float)maxInputScale
{
  var1 = scale.var1;
  var0 = scale.var0;
  v11 = v7;
  v14 = v8;
  v15 = *node.var0;
  v23 = v15;
  if (v15)
  {
    (*(*v15 + 16))(v15, a2, radius, *&scale.var0, *&scale.var1, inputScale, maxInputScale);
  }

  v25 = 0;
  if (!self)
  {
    v24 = 0;
    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *&v16 = radius;
  scale.var0 = var0;
  scale.var1 = var1;
  [(PAEFilterDefaultBase *)self preScaleDown:&v25 + 4 withOutputRadius:&v25 withOutputScaleFactor:&v23 withInput:v16 minInputScale:*&scale maxInputScale:*&scale.var1];
  v15 = v23;
  if (v23)
  {
LABEL_7:
    (*(*v15 + 24))(v15);
  }

LABEL_8:
  v17 = HGObject::operator new(0x1B0uLL);
  HGaussianBlur::HGaussianBlur(v17);
  HGaussianBlur::init(v17, *(&v25 + 1), *v11, v11[1], 0, 0, 0);
  (*(*v17 + 120))(v17, 0, v24);
  v18 = v25;
  v22 = v17;
  (*(*v17 + 16))(v17);
  if (!self)
  {
    *v14 = 0;
    v20 = v17;
    goto LABEL_12;
  }

  LODWORD(v19) = v18;
  [(PAEFilterDefaultBase *)self preScaleUp:&v22 withInput:v19];
  v20 = v22;
  if (v22)
  {
LABEL_12:
    (*(*v20 + 24))(v20);
  }

  (*(*v17 + 24))(v17);
  v21.var0 = v24;
  if (v24)
  {
    return (*(*v24 + 24))(v24);
  }

  return v21;
}

@end