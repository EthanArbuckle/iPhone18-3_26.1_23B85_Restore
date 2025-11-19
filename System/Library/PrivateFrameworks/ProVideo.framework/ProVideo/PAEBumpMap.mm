@interface PAEBumpMap
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)parameterChanged:(unsigned int)a3;
- (PAEBumpMap)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
@end

@implementation PAEBumpMap

- (PAEBumpMap)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEBumpMap;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v10 = 0.0;
  if ([-[PAEFilterDefaultBase getParamAPIWithError:](self getParamAPIWithError:{a4), "getFloatValue:fromParm:atFxTime:", &v10, 3, a3.var1}])
  {
    if (v10 == 0.0)
    {
      v6 = 6;
    }

    else
    {
      v6 = 1;
    }

    return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v6, v10), @"PixelTransformSupport", 0}];
  }

  else if (a4)
  {
    v8 = objc_opt_class();
    v9 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v8)];
    result = 0;
    *a4 = v9;
  }

  else
  {
    return 0;
  }

  return result;
}

- (BOOL)addParameters
{
  v13.receiver = self;
  v13.super_class = PAEBumpMap;
  [(PAESharedDefaultBase *)&v13 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    v7 = [v4 versionAtCreation];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addImageReferenceWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"BumpMap::Map Image", 0, 0), 1, 0}];
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"BumpMap::Controls" menuEntries:0 parmFlags:{0), 5, 0, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v8, "localizedStringForKey:value:table:", @"BumpMap::Angle And Scale", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"BumpMap::X and Y Distance", 0, 0), 0), 1}];
    v9 = 10.0;
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"BumpMap::Direction" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 10.0, -6.28318531, 6.28318531}];
    v10 = [v8 localizedStringForKey:@"BumpMap::Amount" value:0 table:0];
    if (v7 >= 2)
    {
      v11 = -10.0;
    }

    else
    {
      v11 = -1.0;
    }

    if (v7 < 2)
    {
      v9 = 1.0;
    }

    [v3 addFloatSliderWithName:v10 parmId:3 defaultValue:0 parameterMin:0.1 parameterMax:v11 sliderMin:v9 sliderMax:-1.0 delta:1.0 parmFlags:0.1];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"BumpMap::XScale" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:2 delta:0.1 parmFlags:{v11, v9, -1.0, 1.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"BumpMap::YScale" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:2 delta:0.1 parmFlags:{v11, v9, -1.0, 1.0, 0.1}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"BumpMap::Repeat Edges" parmFlags:{0, 0), 4, 0, 33}];
  }

  return v6;
}

- (BOOL)parameterChanged:(unsigned int)a3
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
  v20 = *MEMORY[0x277CC08F0];
  v21 = *(MEMORY[0x277CC08F0] + 16);
  if (a3 != 5)
  {
    if ((a3 & 0xFFFFFFFE) == 6)
    {
      v16 = 0.0;
      v17 = 0.0;
      [v5 getFloatValue:&v17 fromParm:6 atFxTime:&v20];
      [v5 getFloatValue:&v16 fromParm:7 atFxTime:&v20];
      v14 = v16;
      v13 = v17;
      [v6 setFloatValue:2 toParm:&v20 atFxTime:{atan2(v17, v16)}];
      v10 = v6;
      v11 = sqrt(v13 * v13 + v14 * v14);
      v12 = 3;
    }

    else
    {
      if ((a3 & 0xFFFFFFFE) != 2)
      {
        return 1;
      }

      v16 = 0.0;
      v17 = 0.0;
      [v5 getFloatValue:&v17 fromParm:2 atFxTime:&v20];
      [v5 getFloatValue:&v16 fromParm:3 atFxTime:&v20];
      v8 = v16;
      v9 = __sincos_stret(v17);
      [v6 setFloatValue:6 toParm:&v20 atFxTime:v8 * v9.__sinval];
      v10 = v6;
      v11 = v8 * v9.__cosval;
      v12 = 7;
    }

    [v10 setFloatValue:v12 toParm:&v20 atFxTime:v11];
    return 1;
  }

  LODWORD(v17) = 0;
  [v5 getIntValue:&v17 fromParm:5 atFxTime:&v20];
  LODWORD(v16) = 0;
  v19 = 0;
  v18 = 0;
  [v5 getParameterFlags:&v16 fromParm:2];
  [v5 getParameterFlags:&v19 + 4 fromParm:3];
  [v5 getParameterFlags:&v19 fromParm:6];
  [v5 getParameterFlags:&v18 fromParm:7];
  if (LODWORD(v17))
  {
    [v6 setParameterFlags:LODWORD(v16) | 2u toParm:2];
    [v6 setParameterFlags:HIDWORD(v19) | 2u toParm:3];
    [v6 setParameterFlags:v19 & 0xFFFFFFFD toParm:6];
    v7 = v18 & 0xFFFFFFFD;
  }

  else
  {
    [v6 setParameterFlags:LODWORD(v16) & 0xFFFFFFFD toParm:2];
    [v6 setParameterFlags:HIDWORD(v19) & 0xFFFFFFFD toParm:3];
    [v6 setParameterFlags:v19 | 2 toParm:6];
    v7 = v18 | 2u;
  }

  [v6 setParameterFlags:v7 toParm:7];
  return 1;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    _ZF = v10 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    goto LABEL_16;
  }

  v12 = v10;
  if ([a4 imageType] != 3)
  {
    goto LABEL_16;
  }

  v13 = [v12 versionAtCreation];
  v38 = 0;
  v36 = 0.0;
  v37 = 0.0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  [v9 getFloatValue:&v36 fromParm:3 atFxTime:a5->var0.var1];
  if (v36 != 0.0)
  {
    [v9 getFloatValue:&v37 fromParm:2 atFxTime:{a5->var0.var1, v36}];
    [v9 getBoolValue:&v38 fromParm:4 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v35 fromParm:6 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v34 fromParm:7 atFxTime:a5->var0.var1];
    [v9 getIntValue:&v33 fromParm:5 atFxTime:a5->var0.var1];
    v14 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
    if (!v14)
    {
      return v14;
    }

    if ([a4 imageType] == 3)
    {
      v32 = 0;
      var2 = a5->var2;
      var5 = a5->var5;
      v29[0] = a5->var0.var1;
      v29[1] = 2;
      v29[2] = var2;
      __asm { FMOV            V1.2D, #1.0 }

      v30 = _Q1;
      v31 = var5;
      [(PAESharedDefaultBase *)self getHeliumImage:&v32 layerOffsetX:0 layerOffsetY:0 requestInfo:v29 fromParm:1 atTime:v29[0]];
      [(PAESharedDefaultBase *)self getImageBoundary:a4];
      [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
      [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
      if (v32)
      {
        [(PAESharedDefaultBase *)self transformFromImage:v32 toImage:a4 fit:1];
        v21 = v28;
        if (v28 && fabs(v36) >= 0.0000001)
        {
          if (a4)
          {
            [a4 heliumRef];
          }

          else
          {
            v28 = 0;
          }

          if (v13 > 1)
          {
            if (v33)
            {
LABEL_38:
              v23 = v28;
              if (v28)
              {
                (*(*v28 + 16))(v28);
                if ((v38 & 1) == 0)
                {
                  goto LABEL_52;
                }

                v26 = v28;
                (*(*v28 + 16))(v28);
              }

              else
              {
                if ((v38 & 1) == 0)
                {
                  goto LABEL_52;
                }

                v26 = 0;
              }

              [(PAESharedDefaultBase *)self smear:&v26 fromImage:a4 toImage:a4];
              if (v23 == v27)
              {
                if (v23)
                {
                  (*(*v27 + 24))();
                }
              }

              else
              {
                if (v23)
                {
                  (*(*v23 + 24))(v23);
                }

                v27 = 0;
              }

              if (v26)
              {
                (*(*v26 + 24))(v26);
              }

LABEL_52:
              v24 = HGObject::operator new(0x1A0uLL);
              HgcBumpMap::HgcBumpMap(v24);
            }
          }

          else
          {
            if (v33)
            {
              [a3 height];
              [a3 height];
              goto LABEL_38;
            }

            v22 = v36;
            v36 = v22 * [a3 height] / 640.0;
          }

          __sincos_stret(v37);
          goto LABEL_38;
        }
      }

      else
      {
        v21 = 0;
      }

      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v28 = 0;
      }

      [a3 setHeliumRef:&v28];
      if (v28)
      {
        (*(*v28 + 24))(v28);
      }

      if (v21)
      {
        (*(*v21 + 24))(v21);
      }

      goto LABEL_21;
    }

LABEL_16:
    LOBYTE(v14) = 0;
    return v14;
  }

  if (a4)
  {
    [a4 heliumRef];
  }

  else
  {
    v29[0] = 0;
  }

  [a3 setHeliumRef:v29];
  if (v29[0])
  {
    (*(*v29[0] + 24))(v29[0]);
  }

LABEL_21:
  LOBYTE(v14) = 1;
  return v14;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  *a6 = 0;
  *a5 = 0;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end