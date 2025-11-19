@interface PAEConcentricShapes
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInfo:(id *)a4;
- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5;
- (BOOL)parameterChanged:(unsigned int)a3;
- (PAEConcentricShapes)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEConcentricShapes

- (PAEConcentricShapes)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEConcentricShapes;
  result = [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->_lastWidth = 0.0;
    result->_lastHeight = 0.0;
    result->_lastScale = 1.0;
  }

  return result;
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", v5, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v17.receiver = self;
  v17.super_class = PAEConcentricShapes;
  [(PAESharedDefaultBase *)&v17 addParameters];
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
    [v3 startParameterSubGroup:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"ConcentricCircles::Geometry", 0, 0), 1, 0}];
    v9 = [v8 localizedStringForKey:@"ConcentricCircles::Shape" value:0 table:0];
    [v3 addPopupMenuWithName:v9 parmId:2 defaultValue:0 menuEntries:objc_msgSend(MEMORY[0x277CBEA60] parmFlags:{"arrayWithObjects:", objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::Circles", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::Polygons", 0, 0), 0), 1}];
    LODWORD(v16) = 4;
    [v3 addIntSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Number of Sides" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:3 delta:3 parmFlags:{100, 3, 0x100000064, v16}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Rotation" parameterMin:0 parameterMax:0) parmFlags:{4, 4, 0.0, -3600.0, 3600.0}];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"ConcentricCircles::Center" defaultY:0 parmFlags:{0), 5, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Inner Cutoff" parameterMin:0 parameterMax:0) sliderMin:17 sliderMax:0 delta:0.0 parmFlags:{0.0, 10000.0, 0.0, 2250.0, 10.0}];
    v10 = [v8 localizedStringForKey:@"ConcentricCircles::Cutoff" value:0 table:0];
    if (v7)
    {
      v11 = 4096.0;
    }

    else
    {
      v11 = 2048.0;
    }

    if (v7)
    {
      v12 = 4096.0;
    }

    else
    {
      v12 = 2250.0;
    }

    [v3 addFloatSliderWithName:v10 parmId:16 defaultValue:0 parameterMin:v11 parameterMax:0.0 sliderMin:10000.0 sliderMax:0.0 delta:v12 parmFlags:10.0];
    [v3 endParameterSubGroup];
    [v3 startParameterSubGroup:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"ConcentricCircles::Coloring", 0, 0), 7, 0}];
    v13 = [v8 localizedStringForKey:@"ConcentricCircles::Color Type" value:0 table:0];
    [v3 addPopupMenuWithName:v13 parmId:8 defaultValue:0 menuEntries:objc_msgSend(MEMORY[0x277CBEA60] parmFlags:{"arrayWithObjects:", objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::2 Color", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::CTGradient", 0, 0), 0), 1}];
    [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"ConcentricCircles::Color 1" defaultGreen:0 defaultBlue:0) defaultAlpha:9 parmFlags:{0, 0.0, 0.0, 0.0, 1.0}];
    [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"ConcentricCircles::Color 2" defaultGreen:0 defaultBlue:0) defaultAlpha:10 parmFlags:{0, 1.0, 1.0, 1.0, 1.0}];
    [v3 addGradientWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"ConcentricCircles::Gradient", 0, 0), 11, 2}];
    v14 = [v8 localizedStringForKey:@"ConcentricCircles::Gradient Handling" value:0 table:0];
    [v3 addPopupMenuWithName:v14 parmId:12 defaultValue:0 menuEntries:objc_msgSend(MEMORY[0x277CBEA60] parmFlags:{"arrayWithObjects:", objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::GHClamp", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::GHMirror", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::GHRepeat", 0, 0), 0), 3}];
    [v3 endParameterSubGroup];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Width" parameterMin:0 parameterMax:0) sliderMin:13 sliderMax:0 delta:50.0 parmFlags:{1.0, 2048.0, 1.0, 500.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Contrast" parameterMin:0 parameterMax:0) sliderMin:14 sliderMax:0 delta:0.84 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Phase" parameterMin:0 parameterMax:0) sliderMin:15 sliderMax:256 delta:0.0 parmFlags:{-10000.0, 10000.0, -1000.0, 1000.0, 10.0}];
  }

  return v6;
}

- (BOOL)parameterChanged:(unsigned int)a3
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v9 = v6;
    v23 = *MEMORY[0x277CC08F0];
    v24 = *(MEMORY[0x277CC08F0] + 16);
    if (a3 == 8)
    {
      v21 = 0;
      v22 = 0;
      v20 = 0;
      [v5 getParameterFlags:&v22 + 4 fromParm:9];
      [v5 getParameterFlags:&v22 fromParm:10];
      [v5 getParameterFlags:&v21 + 4 fromParm:11];
      [v5 getParameterFlags:&v21 fromParm:14];
      [v5 getParameterFlags:&v20 fromParm:12];
      v19 = 0;
      [v5 getIntValue:&v19 fromParm:8 atFxTime:&v23];
      if (v19)
      {
        v13 = HIDWORD(v22) | 2;
      }

      else
      {
        v13 = HIDWORD(v22) & 0xFFFFFFFD;
      }

      if (v19)
      {
        v14 = v22 | 2;
      }

      else
      {
        v14 = v22 & 0xFFFFFFFD;
      }

      v22 = __PAIR64__(v13, v14);
      if (v19)
      {
        v15 = v21 | 2;
      }

      else
      {
        v15 = v21 & 0xFFFFFFFD;
      }

      if (v19)
      {
        v16 = HIDWORD(v21) & 0xFFFFFFFD;
      }

      else
      {
        v16 = HIDWORD(v21) | 2;
      }

      if (v19)
      {
        v17 = v20 & 0xFFFFFFFD;
      }

      else
      {
        v17 = v20 | 2;
      }

      v21 = __PAIR64__(v16, v15);
      v20 = v17;
      [v9 setParameterFlags:? toParm:?];
      [v9 setParameterFlags:v22 toParm:10];
      [v9 setParameterFlags:v21 toParm:14];
      [v9 setParameterFlags:HIDWORD(v21) toParm:11];
      v10 = v20;
      v11 = v9;
      v12 = 12;
      goto LABEL_27;
    }

    if (a3 == 2)
    {
      v22 = 0;
      [v5 getParameterFlags:&v22 + 4 fromParm:3];
      [v5 getParameterFlags:&v22 fromParm:4];
      HIDWORD(v21) = 0;
      [v5 getIntValue:&v21 + 4 fromParm:2 atFxTime:&v23];
      LODWORD(v22) = v22 & 0xFFFFFFFB | (4 * (HIDWORD(v21) == 0));
      HIDWORD(v22) = HIDWORD(v22) & 0xFFFFFFFB | (4 * (HIDWORD(v21) == 0));
      [v9 setParameterFlags:? toParm:?];
      v10 = v22;
      v11 = v9;
      v12 = 4;
LABEL_27:
      [v11 setParameterFlags:v10 toParm:v12];
    }
  }

  return v8;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInfo:(id *)a4
{
  self->_lastWidth = [a3 width];
  self->_lastHeight = [a3 height];
  self->_lastScale = a4->var4;
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735BD98];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 0;
  }

  v11 = v8;
  v12 = [a3 imageType];
  v13 = [(PAESharedDefaultBase *)self getRenderMode:a4->var0.var1];
  v83[0] = 0;
  v82 = 0uLL;
  v80 = 0.0;
  v81 = 0.0;
  v78 = 0.0;
  v79 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v71 = 0;
  v69 = 0.0;
  v70 = 0.0;
  v67 = 2048.0;
  v68 = 0;
  v66 = 0.0;
  [v7 getIntValue:v83 fromParm:2 atFxTime:a4->var0.var1];
  [v7 getIntValue:&v71 fromParm:3 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v70 fromParm:4 atFxTime:a4->var0.var1];
  [v7 getXValue:&v82 YValue:&v82 + 8 fromParm:5 atFxTime:a4->var0.var1];
  [(PAESharedDefaultBase *)self convertRelativeToPixelCoordinates:&v82 withImage:a3];
  v82 = v63;
  [v7 getRedValue:&v81 greenValue:&v80 blueValue:&v79 alphaValue:&v78 fromParm:9 atFxTime:a4->var0.var1];
  v80 = v78 * v80;
  v81 = v78 * v81;
  v79 = v78 * v79;
  [v7 getRedValue:&v77 greenValue:&v76 blueValue:&v75 alphaValue:&v74 fromParm:10 atFxTime:a4->var0.var1];
  v76 = v74 * v76;
  v77 = v74 * v77;
  v75 = v74 * v75;
  [v7 getFloatValue:&v73 fromParm:13 atFxTime:a4->var0.var1];
  v14 = v73;
  [v7 getFloatValue:&v72 fromParm:14 atFxTime:a4->var0.var1];
  v72 = 1.0 / (1.0 - fmin(log10(v72 * 10.0), 0.999999999));
  [v7 getIntValue:&v68 + 4 fromParm:8 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v69 fromParm:15 atFxTime:a4->var0.var1];
  v15 = v69;
  v16 = -v69;
  v69 = -v69;
  v17 = HIDWORD(v68);
  if (v83[0] == 1)
  {
    v18 = v73;
    if (!HIDWORD(v68))
    {
      v24 = 0;
      v69 = fmod(v16, v73) / v18;
      goto LABEL_18;
    }

    v19 = fmod(v16, v73) / v18;
    v20 = floor(fabs(v15) / v18);
    if (v15 > 0.0)
    {
      v20 = -v20;
    }

    v69 = v19 + v20;
  }

  if (v17 == 1)
  {
    v21 = HGRectMake4i(0, 0, 0x100u, 1u);
    v23 = v22;
    v24 = HGObject::operator new(0x80uLL);
    *&v25 = HGBitmap::HGBitmap(v24, v21, v23, 29).n128_u64[0];
    v26 = *(v24 + 10);
    [v11 getGradientSamples:v26 numSamples:256 depth:4 fromParm:11 atFxTime:{a4->var0.var1, v25}];
    v27 = (v26 + 8);
    v28 = 256;
    do
    {
      v29 = *(v27 - 2);
      v30 = v29 * *(v27 - 1);
      v31 = v29 * *v27;
      v32 = v29 * v27[1];
      *(v27 - 1) = v30;
      *v27 = v31;
      v27[1] = v32;
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  else
  {
    v24 = 0;
  }

LABEL_18:
  [v7 getIntValue:&v68 fromParm:12 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v67 fromParm:16 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v66 fromParm:17 atFxTime:a4->var0.var1];
  if (v13)
  {
    v33 = v12 == 3;
  }

  else
  {
    v33 = 0;
  }

  v10 = v33;
  if (v33)
  {
    v65 = 0;
    if (v83[0])
    {
      if (HIDWORD(v68))
      {
        v34 = HGObject::operator new(0x1A0uLL);
        HgcConcentricPolygonsGradient::HgcConcentricPolygonsGradient(v34);
      }

      v36 = HGObject::operator new(0x1A0uLL);
      HgcConcentricPolygons::HgcConcentricPolygons(v36);
      if (v36)
      {
        v65 = v36;
      }

      v62 = 0x800000009;
    }

    else
    {
      if (HIDWORD(v68))
      {
        v35 = HGObject::operator new(0x1A0uLL);
        HgcConcentricCirclesGradient::HgcConcentricCirclesGradient(v35);
      }

      v36 = HGObject::operator new(0x1A0uLL);
      HgcConcentricCircles::HgcConcentricCircles(v36);
      if (v36)
      {
        v65 = v36;
      }

      v62 = 0x600000007;
    }

    if (HIDWORD(v68) == 1)
    {
      v37 = HGObject::operator new(0x1F0uLL);
      HGBitmapLoader::HGBitmapLoader(v37, v24);
      (*(*v36 + 120))(v36, 0, v37);
      if (v37)
      {
        (*(*v37 + 24))(v37);
      }
    }

    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
    v38 = *&v82;
    v39 = *(&v82 + 1);
    (*(*v36 + 96))(v36, 0, v38, v39, 0.0, 0.0);
    v40 = v81;
    v41 = v80;
    v42 = v79;
    v43 = v78;
    (*(*v36 + 96))(v36, 1, v40, v41, v42, v43);
    v44 = v77;
    v45 = v76;
    v46 = v75;
    v47 = v74;
    (*(*v36 + 96))(v36, 2, v44, v45, v46, v47);
    v48 = v73;
    v49 = v69;
    (*(*v36 + 96))(v36, 3, v48, v49, 0.0, 0.0);
    v50 = v72;
    (*(*v36 + 96))(v36, 4, v50, 0.0, 0.0, 0.0);
    v51 = *&v63;
    v52 = v64;
    (*(*v36 + 96))(v36, 5, v51, fabsf(v52), 1.0, 0.0);
    v53 = 6.28318531 / v71;
    v54 = v71 / 6.28318531;
    (*(*v36 + 96))(v36, 6, v53, v54, 0.0, 0.0);
    v55 = __sincos_stret(v70);
    cosval = v55.__cosval;
    sinval = v55.__sinval;
    (*(*v36 + 96))(v36, 7, cosval, sinval, -sinval);
    v58 = 1.0 / v14;
    (*(*v36 + 96))(v36, 8, v58, 0.0, 0.0, 0.0);
    (*(*v36 + 96))(v36, 9, (v68 - 1), 0.0, 0.0, 0.0);
    v59 = v67;
    (*(*v36 + 96))(v36, HIDWORD(v62), v59, 0.0, 0.0, 0.0);
    v60 = v66;
    (*(*v36 + 96))(v36, v62, v60, 0.0, 0.0, 0.0);
    [a3 setHeliumRef:&v65];
    if (v65)
    {
      (*(*v65 + 24))(v65);
    }
  }

  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  return v10;
}

- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5
{
  *a5 = 0;
  *a4 = 0;
  v5 = *&a3->var2;
  v7[0] = *&a3->var0.var0;
  v7[1] = v5;
  v7[2] = *&a3->var4;
  [PAESharedDefaultBase overrideFrameSetupForRenderMode:"overrideFrameSetupForRenderMode:hardware:software:" hardware:v7 software:?];
  return 1;
}

@end