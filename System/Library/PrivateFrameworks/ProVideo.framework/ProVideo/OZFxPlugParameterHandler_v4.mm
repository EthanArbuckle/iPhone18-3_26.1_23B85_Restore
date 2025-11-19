@interface OZFxPlugParameterHandler_v4
- (BOOL)_getFontName:(id *)a3 fromParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)addFlags:(unsigned int)a3 toParm:(unsigned int)a4;
- (BOOL)addFontMenuWithName:(id)a3 parmId:(unsigned int)a4 fontName:(id)a5 parmFlags:(unsigned int)a6;
- (BOOL)addHelpButtonWithName:(id)a3 parmId:(unsigned int)a4 selector:(SEL)a5 parmFlags:(unsigned int)a6;
- (BOOL)addPushButtonWithName:(id)a3 parmId:(unsigned int)a4 selector:(SEL)a5 parmFlags:(unsigned int)a6;
- (BOOL)getBitmap:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atFxTime:(id)a8;
- (BOOL)getCustomParameterValue:(id *)a3 fromParm:(unsigned int)a4;
- (BOOL)getGradientStartEnd:(double *)a3 startY:(double *)a4 endX:(double *)a5 endY:(double *)a6 type:(int *)a7 fromParm:(unsigned int)a8 atFxTime:(id)a9;
- (BOOL)getParameterFlags:(unsigned int *)a3 fromParm:(unsigned int)a4;
- (BOOL)getRGBABitmap:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParameter:(unsigned int)a7 atTime:(id)a8;
- (BOOL)getStringParameterValue:(id *)a3 fromParm:(unsigned int)a4;
- (BOOL)getTexture:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atFxTime:(id)a8;
- (BOOL)removeFlags:(unsigned int)a3 fromParm:(unsigned int)a4;
- (BOOL)setCustomParameterValue:(id)a3 toParm:(unsigned int)a4;
- (BOOL)setParameterFlags:(unsigned int)a3 toParm:(unsigned int)a4;
- (BOOL)setStringParameterValue:(id)a3 toParm:(unsigned int)a4;
- (id)pushButtonSelectorNameForParameterID:(unsigned int)a3;
@end

@implementation OZFxPlugParameterHandler_v4

- (BOOL)addFontMenuWithName:(id)a3 parmId:(unsigned int)a4 fontName:(id)a5 parmFlags:(unsigned int)a6
{
  LODWORD(v7) = a4;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1, v7])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addPushButtonWithName:(id)a3 parmId:(unsigned int)a4 selector:(SEL)a5 parmFlags:(unsigned int)a6
{
  v10 = a4;
  LODWORD(v9) = a6;
  v7 = [(OZFxPlugParameterHandler *)self _intParameter:*&a4 hasValidMin:0 max:1 sliderMin:0 sliderMax:1 defaultValue:0 paramFlags:v9];
  result = 0;
  if (v7 && a4 - 1 <= 0x270D)
  {
    operator new();
  }

  return result;
}

- (BOOL)addHelpButtonWithName:(id)a3 parmId:(unsigned int)a4 selector:(SEL)a5 parmFlags:(unsigned int)a6
{
  v10 = a4;
  LODWORD(v9) = a6;
  v7 = [(OZFxPlugParameterHandler *)self _intParameter:*&a4 hasValidMin:0 max:1 sliderMin:0 sliderMax:1 defaultValue:0 paramFlags:v9];
  result = 0;
  if (v7 && a4 - 1 <= 0x270D)
  {
    operator new();
  }

  return result;
}

- (BOOL)_getFontName:(id *)a3 fromParm:(unsigned int)a4 atTime:(id)a5
{
  v7 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a4];
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

    *a3 = PCString::ns_str(&v7[5].var11);
    ProCore_Impl::PCNSRefImpl::release(&v9);
  }

  return v7 != 0;
}

- (BOOL)getRGBABitmap:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParameter:(unsigned int)a7 atTime:(id)a8
{
  v8 = *&a6->var2;
  v12[0] = *&a6->var0.var0;
  v12[1] = v8;
  v12[2] = *&a6->var4;
  LOBYTE(v11) = 1;
  LOBYTE(v10) = 0;
  return [(OZFxPlugParameterHandler *)self retrieveImage:a3 layerOffsetX:a4 layerOffsetY:a5 requestInfo:v12 fromParm:*&a7 atTime:a8.var1 retriever:sel_textureRetriever_ ARGB:v10 imageType:1 forAnalysis:v11];
}

- (BOOL)getBitmap:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atFxTime:(id)a8
{
  v8 = *&a6->var2;
  v12[0] = *&a6->var0.var0;
  v12[1] = v8;
  v12[2] = *&a6->var4;
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 1;
  return [(OZFxPlugParameterHandler *)self retrieveImage:a3 layerOffsetX:a4 layerOffsetY:a5 requestInfo:v12 fromParm:*&a7 atTime:a8.var1 retriever:sel_textureRetriever_ ARGB:v10 imageType:1 forAnalysis:v11];
}

- (BOOL)getTexture:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atFxTime:(id)a8
{
  v8 = *&a6->var2;
  v12[0] = *&a6->var0.var0;
  v12[1] = v8;
  v12[2] = *&a6->var4;
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 1;
  return [(OZFxPlugParameterHandler *)self retrieveImage:a3 layerOffsetX:a4 layerOffsetY:a5 requestInfo:v12 fromParm:*&a7 atTime:a8.var1 retriever:sel_textureRetriever_ ARGB:v10 imageType:2 forAnalysis:v11];
}

- (BOOL)getCustomParameterValue:(id *)a3 fromParm:(unsigned int)a4
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 getCustomParameterValue:a3 fromParm:*&a4];
}

- (BOOL)getParameterFlags:(unsigned int *)a3 fromParm:(unsigned int)a4
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 getParameterFlags:a3 fromParm:*&a4];
}

- (BOOL)getStringParameterValue:(id *)a3 fromParm:(unsigned int)a4
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 getStringParameterValue:a3 fromParm:*&a4];
}

- (BOOL)setCustomParameterValue:(id)a3 toParm:(unsigned int)a4
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 setCustomParameterValue:a3 toParm:*&a4];
}

- (BOOL)setParameterFlags:(unsigned int)a3 toParm:(unsigned int)a4
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 setParameterFlags:*&a3 toParm:*&a4];
}

- (BOOL)addFlags:(unsigned int)a3 toParm:(unsigned int)a4
{
  v4 = *&a4;
  v9 = 0;
  v7 = [(OZFxPlugParameterHandler_v4 *)self getParameterFlags:&v9 fromParm:?];
  result = 0;
  if (v7)
  {
    return [(OZFxPlugParameterHandler_v4 *)self setParameterFlags:v9 | a3 toParm:v4];
  }

  return result;
}

- (BOOL)removeFlags:(unsigned int)a3 fromParm:(unsigned int)a4
{
  v4 = *&a4;
  v9 = 0;
  v7 = [(OZFxPlugParameterHandler_v4 *)self getParameterFlags:&v9 fromParm:?];
  result = 0;
  if (v7)
  {
    return [(OZFxPlugParameterHandler_v4 *)self setParameterFlags:v9 & ~a3 toParm:v4];
  }

  return result;
}

- (BOOL)setStringParameterValue:(id)a3 toParm:(unsigned int)a4
{
  v5.receiver = self;
  v5.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v5 setStringParameterValue:a3 toParm:*&a4];
}

- (BOOL)getGradientStartEnd:(double *)a3 startY:(double *)a4 endX:(double *)a5 endY:(double *)a6 type:(int *)a7 fromParm:(unsigned int)a8 atFxTime:(id)a9
{
  v10.receiver = self;
  v10.super_class = OZFxPlugParameterHandler_v4;
  return [(OZFxPlugParameterHandler *)&v10 getGradientStartEnd:a3 startY:a4 endX:a5 endY:a6 type:a7 fromParm:*&a8 atTime:a9.var1];
}

- (id)pushButtonSelectorNameForParameterID:(unsigned int)a3
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
    v9 = v8 >= a3;
    v10 = v8 < a3;
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

  if (*(v7 + 8) > a3)
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