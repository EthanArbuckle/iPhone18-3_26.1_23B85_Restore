@interface OZFxPlugParameterHandler_v4
- (BOOL)_getFontName:(id *)name fromParm:(unsigned int)parm atTime:(id)time;
- (BOOL)addFlags:(unsigned int)flags toParm:(unsigned int)parm;
- (BOOL)addFontMenuWithName:(id)name parmId:(unsigned int)id fontName:(id)fontName parmFlags:(unsigned int)flags;
- (BOOL)addHelpButtonWithName:(id)name parmId:(unsigned int)id selector:(SEL)selector parmFlags:(unsigned int)flags;
- (BOOL)addPushButtonWithName:(id)name parmId:(unsigned int)id selector:(SEL)selector parmFlags:(unsigned int)flags;
- (BOOL)getBitmap:(id *)bitmap layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atFxTime:(id)time;
- (BOOL)getCustomParameterValue:(id *)value fromParm:(unsigned int)parm;
- (BOOL)getGradientStartEnd:(double *)end startY:(double *)y endX:(double *)x endY:(double *)endY type:(int *)type fromParm:(unsigned int)parm atFxTime:(id)time;
- (BOOL)getParameterFlags:(unsigned int *)flags fromParm:(unsigned int)parm;
- (BOOL)getRGBABitmap:(id *)bitmap layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParameter:(unsigned int)parameter atTime:(id)time;
- (BOOL)getStringParameterValue:(id *)value fromParm:(unsigned int)parm;
- (BOOL)getTexture:(id *)texture layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atFxTime:(id)time;
- (BOOL)removeFlags:(unsigned int)flags fromParm:(unsigned int)parm;
- (BOOL)setCustomParameterValue:(id)value toParm:(unsigned int)parm;
- (BOOL)setParameterFlags:(unsigned int)flags toParm:(unsigned int)parm;
- (BOOL)setStringParameterValue:(id)value toParm:(unsigned int)parm;
- (id)pushButtonSelectorNameForParameterID:(unsigned int)d;
@end

@implementation OZFxPlugParameterHandler_v4

- (BOOL)addFontMenuWithName:(id)name parmId:(unsigned int)id fontName:(id)fontName parmFlags:(unsigned int)flags
{
  LODWORD(v7) = id;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&id checkMix:1 checkSpecialCheckboxIDs:1, v7])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addPushButtonWithName:(id)name parmId:(unsigned int)id selector:(SEL)selector parmFlags:(unsigned int)flags
{
  idCopy = id;
  LODWORD(v9) = flags;
  v7 = [(OZFxPlugParameterHandler *)self _intParameter:*&id hasValidMin:0 max:1 sliderMin:0 sliderMax:1 defaultValue:0 paramFlags:v9];
  result = 0;
  if (v7 && id - 1 <= 0x270D)
  {
    operator new();
  }

  return result;
}

- (BOOL)addHelpButtonWithName:(id)name parmId:(unsigned int)id selector:(SEL)selector parmFlags:(unsigned int)flags
{
  idCopy = id;
  LODWORD(v9) = flags;
  v7 = [(OZFxPlugParameterHandler *)self _intParameter:*&id hasValidMin:0 max:1 sliderMin:0 sliderMax:1 defaultValue:0 paramFlags:v9];
  result = 0;
  if (v7 && id - 1 <= 0x270D)
  {
    operator new();
  }

  return result;
}

- (BOOL)_getFontName:(id *)name fromParm:(unsigned int)parm atTime:(id)time
{
  v7 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&parm];
  if (v7)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
    }

    else
    {
      v9 = 0;
    }

    *name = PCString::ns_str(&v7[5].var11);
    ProCore_Impl::PCNSRefImpl::release(&v9);
  }

  return v7 != 0;
}

- (BOOL)getRGBABitmap:(id *)bitmap layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParameter:(unsigned int)parameter atTime:(id)time
{
  v8 = *&info->var2;
  v12[0] = *&info->var0.var0;
  v12[1] = v8;
  v12[2] = *&info->var4;
  LOBYTE(v11) = 1;
  LOBYTE(v10) = 0;
  return [(OZFxPlugParameterHandler *)self retrieveImage:bitmap layerOffsetX:x layerOffsetY:y requestInfo:v12 fromParm:*&parameter atTime:time.var1 retriever:sel_textureRetriever_ ARGB:v10 imageType:1 forAnalysis:v11];
}

- (BOOL)getBitmap:(id *)bitmap layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atFxTime:(id)time
{
  v8 = *&info->var2;
  v12[0] = *&info->var0.var0;
  v12[1] = v8;
  v12[2] = *&info->var4;
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 1;
  return [(OZFxPlugParameterHandler *)self retrieveImage:bitmap layerOffsetX:x layerOffsetY:y requestInfo:v12 fromParm:*&parm atTime:time.var1 retriever:sel_textureRetriever_ ARGB:v10 imageType:1 forAnalysis:v11];
}

- (BOOL)getTexture:(id *)texture layerOffsetX:(double *)x layerOffsetY:(double *)y requestInfo:(id *)info fromParm:(unsigned int)parm atFxTime:(id)time
{
  v8 = *&info->var2;
  v12[0] = *&info->var0.var0;
  v12[1] = v8;
  v12[2] = *&info->var4;
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 1;
  return [(OZFxPlugParameterHandler *)self retrieveImage:texture layerOffsetX:x layerOffsetY:y requestInfo:v12 fromParm:*&parm atTime:time.var1 retriever:sel_textureRetriever_ ARGB:v10 imageType:2 forAnalysis:v11];
}

- (BOOL)getCustomParameterValue:(id *)value fromParm:(unsigned int)parm
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 getCustomParameterValue:value fromParm:*&parm];
}

- (BOOL)getParameterFlags:(unsigned int *)flags fromParm:(unsigned int)parm
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 getParameterFlags:flags fromParm:*&parm];
}

- (BOOL)getStringParameterValue:(id *)value fromParm:(unsigned int)parm
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 getStringParameterValue:value fromParm:*&parm];
}

- (BOOL)setCustomParameterValue:(id)value toParm:(unsigned int)parm
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 setCustomParameterValue:value toParm:*&parm];
}

- (BOOL)setParameterFlags:(unsigned int)flags toParm:(unsigned int)parm
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 setParameterFlags:*&flags toParm:*&parm];
}

- (BOOL)addFlags:(unsigned int)flags toParm:(unsigned int)parm
{
  v4 = *&parm;
  v9 = 0;
  v7 = [(OZFxPlugParameterHandler_v4 *)self getParameterFlags:&v9 fromParm:?];
  result = 0;
  if (v7)
  {
    return [(OZFxPlugParameterHandler_v4 *)self setParameterFlags:v9 | flags toParm:v4];
  }

  return result;
}

- (BOOL)removeFlags:(unsigned int)flags fromParm:(unsigned int)parm
{
  v4 = *&parm;
  v9 = 0;
  v7 = [(OZFxPlugParameterHandler_v4 *)self getParameterFlags:&v9 fromParm:?];
  result = 0;
  if (v7)
  {
    return [(OZFxPlugParameterHandler_v4 *)self setParameterFlags:v9 & ~flags toParm:v4];
  }

  return result;
}

- (BOOL)setStringParameterValue:(id)value toParm:(unsigned int)parm
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 setStringParameterValue:value toParm:*&parm];
}

- (BOOL)getGradientStartEnd:(double *)end startY:(double *)y endX:(double *)x endY:(double *)endY type:(int *)type fromParm:(unsigned int)parm atFxTime:(id)time
{
  v10.receiver = self;
  v10.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v10 getGradientStartEnd:end startY:y endX:x endY:endY type:type fromParm:*&parm atTime:time.var1];
}

- (id)pushButtonSelectorNameForParameterID:(unsigned int)d
{
  channelMap = self->super._channelMap;
  v6 = channelMap[1];
  v4 = (channelMap + 1);
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= d;
    v10 = v8 < d;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 == v4)
  {
    return 0;
  }

  if (*(v7 + 8) > d)
  {
    return 0;
  }

  v11 = *(v7 + 5);
  if (!v11)
  {
    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  PCString::PCString(&v15, v12 + 20);
  v13 = PCString::ns_str(&v15);
  PCString::~PCString(&v15);
  return v13;
}

@end