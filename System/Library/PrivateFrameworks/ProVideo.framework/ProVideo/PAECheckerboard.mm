@interface PAECheckerboard
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInfo:(id *)a4;
- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5;
- (BOOL)parameterChanged:(unsigned int)a3;
- (PAECheckerboard)initWithAPIManager:(id)a3;
- (id)multiplyMatrix:(id)a3 byMatrix:(id)a4;
- (id)properties;
- (void)getTransformMatrix:(double *)(a3 forCenterX:centerY:angle:andOutputImage:;
- (void)updateShapeParameter:(unsigned int)a3 atTime:(id)a4;
@end

@implementation PAECheckerboard

- (PAECheckerboard)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAECheckerboard;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (BOOL)addParameters
{
  v14.receiver = self;
  v14.super_class = PAECheckerboard;
  [(PAESharedDefaultBase *)&v14 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B4F8];
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
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Type" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(objc_msgSend(v8, "localizedStringForKey:value:table:", @"Checkerboard::Types", 0, 0), "componentsSeparatedByString:", @";", 1}];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"Checkerboard::Center" defaultY:0 parmFlags:{0), 310, 0, 0.5, 0.5}];
    [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"Checkerboard::Color 1" defaultGreen:0 defaultBlue:0) defaultAlpha:311 parmFlags:{0, 1.0, 1.0, 1.0, 1.0}];
    [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"Checkerboard::Color 2" defaultGreen:0 defaultBlue:0) defaultAlpha:312 parmFlags:{0, 0.0, 0.0, 0.0, 1.0}];
    v9 = [v8 localizedStringForKey:@"Checkerboard::Size" value:0 table:0];
    if (v7 >= 2)
    {
      v10 = 3200.0;
    }

    else
    {
      v10 = 800.0;
    }

    if (v7 >= 2)
    {
      v11 = 1600.0;
    }

    else
    {
      v11 = 800.0;
    }

    [v3 addFloatSliderWithName:v9 parmId:313 defaultValue:0 parameterMin:80.0 parameterMax:0.0 sliderMin:v10 sliderMax:0.0 delta:v11 parmFlags:10.0];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Divisions" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:2 delta:8.0 parmFlags:{0.0, 180.0, 0.0, 180.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Twirl" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:2 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.01}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Board Angle" parameterMin:0 parameterMax:0) parmFlags:{2, 288, 0.0, -3600.0, 3600.0}];
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Radial Shape" menuEntries:0 parmFlags:{0), 5, 0, objc_msgSend(objc_msgSend(v8, "localizedStringForKey:value:table:", @"Checkerboard::Radial Shapes", 0, 0), "componentsSeparatedByString:", @";", 3}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Radial Scale" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:2 delta:1.0 parmFlags:{0.5, 2.0, 0.5, 2.0, 0.1}];
    v12 = [objc_msgSend(v8 localizedStringForKey:@"Checkerboard::Shapes" value:0 table:{0), "componentsSeparatedByString:", @";"}];
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Shape 1" menuEntries:0 parmFlags:{0), 7, 0, v12, 3}];
    [v3 startParameterSubGroup:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Checkerboard::Shape 1 Group", 0, 0), 8, 10}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Num Sides 1" parameterMin:0 parameterMax:0) sliderMin:9 sliderMax:34 delta:5.0 parmFlags:{3.0, 50.0, 3.0, 50.0, 1.0}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Shape Angle 1" parameterMin:0 parameterMax:0) parmFlags:{10, 290, 0.0, -3600.0, 3600.0}];
    [v3 addPercentSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Shape Radius 1" parameterMin:0 parameterMax:0) sliderMin:11 sliderMax:34 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v3 endParameterSubGroup];
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Shape 2" menuEntries:0 parmFlags:{0), 12, 1, v12, 3}];
    [v3 startParameterSubGroup:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Checkerboard::Shape 2 Group", 0, 0), 13, 10}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Num Sides 2" parameterMin:0 parameterMax:0) sliderMin:14 sliderMax:34 delta:5.0 parmFlags:{3.0, 50.0, 3.0, 50.0, 1.0}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Shape Angle 2" parameterMin:0 parameterMax:0) parmFlags:{15, 290, 0.0, -3600.0, 3600.0}];
    [v3 addPercentSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Shape Radius 2" parameterMin:0 parameterMax:0) sliderMin:16 sliderMax:34 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v3 endParameterSubGroup];
    [v3 addPercentSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Vertical Scale" parameterMin:0 parameterMax:0) sliderMin:17 sliderMax:2 delta:1.0 parmFlags:{0.0, 100.0, 0.0, 10.0, 0.5}];
    [v3 addPercentSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Checkerboard::Contrast" parameterMin:0 parameterMax:0) sliderMin:314 sliderMax:0 delta:1.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
  }

  return v6;
}

- (void)updateShapeParameter:(unsigned int)a3 atTime:(id)a4
{
  v5 = *&a3;
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735BAA0];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287366FF0];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = 0;
  [v7 getIntValue:&v18 fromParm:v5 atFxTime:a4.var1];
  v17 = 0;
  v16 = 0;
  v15 = 0;
  [v7 getParameterFlags:&v17 fromParm:(v5 + 1)];
  [v7 getParameterFlags:&v16 + 4 fromParm:(v5 + 2)];
  [v7 getParameterFlags:&v16 fromParm:(v5 + 3)];
  [v7 getParameterFlags:&v15 fromParm:(v5 + 4)];
  if (v18 == 3)
  {
    if (v5 == 7)
    {
      v13 = @"Checkerboard::Num Points 1";
    }

    else
    {
      v13 = @"Checkerboard::Num Points 2";
    }

    [v9 setParameter:(v5 + 2) name:{objc_msgSend(v10, "localizedStringForKey:value:table:", v13, 0, 0)}];
    [v8 setParameterFlags:v17 & 0xFFFFFFFD toParm:(v5 + 1)];
    [v8 setParameterFlags:HIDWORD(v16) & 0xFFFFFFFD toParm:(v5 + 2)];
    [v8 setParameterFlags:v16 & 0xFFFFFFFD toParm:(v5 + 3)];
    v14 = v15 & 0xFFFFFFFD;
  }

  else
  {
    if (v18 == 2)
    {
      if (v5 == 7)
      {
        v11 = @"Checkerboard::Num Sides 1";
      }

      else
      {
        v11 = @"Checkerboard::Num Sides 2";
      }

      [v10 localizedStringForKey:v11 value:0 table:0];
      [v9 setParameter:(v5 + 2) name:0];
      [v8 setParameterFlags:v17 & 0xFFFFFFFD toParm:(v5 + 1)];
      [v8 setParameterFlags:HIDWORD(v16) & 0xFFFFFFFD toParm:(v5 + 2)];
      v12 = v16 & 0xFFFFFFFD;
    }

    else
    {
      [v8 setParameterFlags:v17 | 2u toParm:(v5 + 1)];
      [v8 setParameterFlags:HIDWORD(v16) | 2u toParm:(v5 + 2)];
      v12 = v16 | 2;
    }

    [v8 setParameterFlags:v12 toParm:(v5 + 3)];
    v14 = v15 | 2u;
  }

  [v8 setParameterFlags:v14 toParm:(v5 + 4)];
}

- (BOOL)parameterChanged:(unsigned int)a3
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735BAA0];
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287366FF0];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 || v7 == 0;
  v10 = !v9;
  if (v9)
  {
    return v10;
  }

  v29 = *MEMORY[0x277CC0898];
  v30 = *(MEMORY[0x277CC0898] + 16);
  switch(a3)
  {
    case 0xCu:
      v14 = self;
      v15 = 12;
      goto LABEL_20;
    case 7u:
      v14 = self;
      v15 = 7;
LABEL_20:
      [(PAECheckerboard *)v14 updateShapeParameter:v15 atTime:&v29];
      return v10;
    case 1u:
      v11 = v7;
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = 0;
      [v5 getIntValue:&v28 fromParm:1 atFxTime:&v29];
      v27 = 0;
      v25 = 0;
      v26 = 0;
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      [v5 getParameterFlags:&v27 fromParm:3];
      [v5 getParameterFlags:&v26 + 4 fromParm:4];
      [v5 getParameterFlags:&v26 fromParm:5];
      [v5 getParameterFlags:&v25 + 4 fromParm:6];
      [v5 getParameterFlags:&v25 fromParm:7];
      [v5 getParameterFlags:&v24 + 4 fromParm:8];
      [v5 getParameterFlags:&v24 fromParm:9];
      [v5 getParameterFlags:&v23 + 4 fromParm:10];
      [v5 getParameterFlags:&v23 fromParm:11];
      [v5 getParameterFlags:&v22 + 4 fromParm:12];
      [v5 getParameterFlags:&v22 fromParm:13];
      [v5 getParameterFlags:&v21 + 4 fromParm:14];
      [v5 getParameterFlags:&v21 fromParm:15];
      [v5 getParameterFlags:&v20 + 4 fromParm:16];
      [v5 getParameterFlags:&v20 fromParm:17];
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          [v11 setParameter:313 name:{objc_msgSend(v12, "localizedStringForKey:value:table:", @"Checkerboard::Size", 0, 0)}];
          v18 = 1;
          v19 = 0;
          [v5 getIntValue:&v19 fromParm:7 atFxTime:&v29];
          [v5 getIntValue:&v18 fromParm:12 atFxTime:&v29];
          [v6 setParameterFlags:v27 | 2u toParm:3];
          [v6 setParameterFlags:HIDWORD(v26) | 2u toParm:4];
          [v6 setParameterFlags:v26 | 2 toParm:5];
          [v6 setParameterFlags:HIDWORD(v25) | 2u toParm:6];
          [v6 setParameterFlags:v25 & 0xFFFFFFFD toParm:7];
          [v6 setParameterFlags:HIDWORD(v22) & 0xFFFFFFFD toParm:12];
          [(PAECheckerboard *)self updateShapeParameter:7 atTime:&v29];
          [(PAECheckerboard *)self updateShapeParameter:12 atTime:&v29];
          goto LABEL_27;
        }

        if (v28 == 3)
        {
          [v11 setParameter:313 name:{objc_msgSend(v12, "localizedStringForKey:value:table:", @"Checkerboard::Size", 0, 0)}];
          [v6 setParameterFlags:v27 | 2u toParm:3];
          [v6 setParameterFlags:HIDWORD(v26) | 2u toParm:4];
          [v6 setParameterFlags:v26 | 2 toParm:5];
          [v6 setParameterFlags:HIDWORD(v25) | 2u toParm:6];
          [v6 setParameterFlags:v25 | 2 toParm:7];
          [v6 setParameterFlags:HIDWORD(v24) | 2u toParm:8];
          [v6 setParameterFlags:v24 | 2 toParm:9];
          [v6 setParameterFlags:HIDWORD(v23) | 2u toParm:10];
          [v6 setParameterFlags:v23 | 2 toParm:11];
          [v6 setParameterFlags:HIDWORD(v22) | 2u toParm:12];
          [v6 setParameterFlags:v22 | 2 toParm:13];
          [v6 setParameterFlags:HIDWORD(v21) | 2u toParm:14];
          [v6 setParameterFlags:v21 | 2 toParm:15];
          [v6 setParameterFlags:HIDWORD(v20) | 2u toParm:16];
          v16 = v20 & 0xFFFFFFFD;
LABEL_28:
          [v6 setParameterFlags:v16 toParm:17];
        }
      }

      else
      {
        if (!v28)
        {
          [v6 setParameterFlags:v27 | 2u toParm:3];
          [v6 setParameterFlags:HIDWORD(v26) | 2u toParm:4];
          [v6 setParameterFlags:v26 | 2 toParm:5];
          [v6 setParameterFlags:HIDWORD(v25) | 2u toParm:6];
          v13 = @"Checkerboard::Size";
          goto LABEL_25;
        }

        if (v28 == 1)
        {
          [v6 setParameterFlags:v27 & 0xFFFFFFFD toParm:3];
          [v6 setParameterFlags:HIDWORD(v26) & 0xFFFFFFFD toParm:4];
          [v6 setParameterFlags:v26 & 0xFFFFFFFD toParm:5];
          [v6 setParameterFlags:HIDWORD(v25) & 0xFFFFFFFD toParm:6];
          v13 = @"Checkerboard::Tile Height";
LABEL_25:
          [v11 setParameter:313 name:{objc_msgSend(v12, "localizedStringForKey:value:table:", v13, 0, 0)}];
          [v6 setParameterFlags:v25 | 2 toParm:7];
          [v6 setParameterFlags:HIDWORD(v24) | 2u toParm:8];
          [v6 setParameterFlags:v24 | 2 toParm:9];
          [v6 setParameterFlags:HIDWORD(v23) | 2u toParm:10];
          [v6 setParameterFlags:v23 | 2 toParm:11];
          [v6 setParameterFlags:HIDWORD(v22) | 2u toParm:12];
          [v6 setParameterFlags:v22 | 2 toParm:13];
          [v6 setParameterFlags:HIDWORD(v21) | 2u toParm:14];
          [v6 setParameterFlags:v21 | 2 toParm:15];
          [v6 setParameterFlags:HIDWORD(v20) | 2u toParm:16];
LABEL_27:
          v16 = v20 | 2;
          goto LABEL_28;
        }
      }

      break;
  }

  return v10;
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"PreservesAlpha", v5, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (id)multiplyMatrix:(id)a3 byMatrix:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [a3 matrix];
  v6 = [a4 matrix];
  v7 = 0;
  v8 = v5 + 96;
  v9 = *v6;
  v10 = v6[1];
  v11 = v6[2];
  v12 = v6[3];
  v13 = v6[4];
  v14 = v6[5];
  v15 = v6[6];
  v16 = v6[7];
  v17 = v6[8];
  v18 = v6[9];
  v19 = v6[10];
  v20 = v6[11];
  v21 = v6[12];
  v22 = v6[13];
  v23 = v6[14];
  v24 = v6[15];
  do
  {
    v25 = *(v5 + v7);
    v26 = *(v8 + v7 - 64);
    v27 = *(v8 + v7 - 32);
    v28 = *(v8 + v7);
    v29 = (&v31 + v7);
    *v29 = v25 * v9 + v26 * v10 + v27 * v11 + v28 * v12;
    v29[4] = v25 * v13 + v26 * v14 + v27 * v15 + v28 * v16;
    v29[8] = v25 * v17 + v26 * v18 + v27 * v19 + v28 * v20;
    v29[12] = v25 * v21 + v26 * v22 + v27 * v23 + v28 * v24;
    v7 += 8;
  }

  while (v7 != 32);
  return [[FxMatrix44 alloc] initWithMatrix44Data:&v31];
}

- (void)getTransformMatrix:(double *)(a3 forCenterX:centerY:angle:andOutputImage:
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = __sincos_stret(a6);
  v21[0] = *&v12.__cosval;
  *&v21[1] = -v12.__sinval;
  v21[2] = 0;
  v21[3] = 0;
  v22 = v12;
  v23 = 0;
  v24 = 0;
  v25 = xmmword_260343E60;
  v26 = unk_260343E70;
  v27 = xmmword_260343E80;
  v28 = unk_260343E90;
  v13[1] = 0;
  v13[2] = 0;
  v13[0] = 0x3FF0000000000000;
  *&v13[3] = a4;
  v14 = xmmword_260342700;
  v15 = 0;
  v16 = a5;
  v17 = xmmword_260343E60;
  v18 = unk_260343E70;
  v19 = xmmword_260343E80;
  v20 = unk_260343E90;
  *a3 = [-[PAECheckerboard multiplyMatrix:byMatrix:](self multiplyMatrix:-[PAECheckerboard multiplyMatrix:byMatrix:](self byMatrix:{"multiplyMatrix:byMatrix:", -[FxMatrix44 initWithMatrix44Data:]([FxMatrix44 alloc], "initWithMatrix44Data:", v13), objc_msgSend(a7, "inversePixelTransform")), -[FxMatrix44 initWithMatrix44Data:]([FxMatrix44 alloc], "initWithMatrix44Data:", v21)), "matrix"}];
}

- (BOOL)canThrowRenderOutput:(id)a3 withInfo:(id *)a4
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v7)
  {
    _ZF = v8 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    return 0;
  }

  v11 = [v8 versionAtCreation];
  v197 = 0;
  v195 = 0x3FE0000000000000;
  v196 = 0x3FE0000000000000;
  v193 = 1.0;
  v194 = 1.0;
  v191 = 1.0;
  v192 = 1.0;
  v189 = 0.0;
  v190 = 0.0;
  v187 = 1.0;
  v188 = 0.0;
  v185 = 0.0;
  v186 = 80.0;
  v184 = 1.0;
  v183 = 0;
  v182 = 5;
  v180 = 1.0;
  v181 = 0.0;
  v178 = 5;
  v179 = 1;
  v176 = 1.0;
  v177 = 0.0;
  v174 = 8.0;
  v175 = 1.0;
  v173 = 0.0;
  v172 = 0;
  v171 = 1.0;
  [a3 height];
  [a3 width];
  [v7 getIntValue:&v197 fromParm:1 atFxTime:a4->var0.var1];
  [v7 getXValue:&v196 YValue:&v195 fromParm:310 atFxTime:a4->var0.var1];
  [v7 getRedValue:&v194 greenValue:&v193 blueValue:&v192 alphaValue:&v191 fromParm:311 atFxTime:a4->var0.var1];
  if (v11)
  {
    v193 = v191 * v193;
    v194 = v191 * v194;
    v192 = v191 * v192;
    [v7 getRedValue:&v190 greenValue:&v189 blueValue:&v188 alphaValue:&v187 fromParm:312 atFxTime:a4->var0.var1];
    v189 = v187 * v189;
    v190 = v187 * v190;
    v188 = v187 * v188;
  }

  else
  {
    [v7 getRedValue:&v190 greenValue:&v189 blueValue:&v188 alphaValue:&v187 fromParm:312 atFxTime:a4->var0.var1];
  }

  [v7 getFloatValue:&v186 fromParm:313 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v185 fromParm:2 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v184 fromParm:314 atFxTime:a4->var0.var1];
  [v7 getIntValue:&v183 fromParm:7 atFxTime:a4->var0.var1];
  [v7 getIntValue:&v182 fromParm:9 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v181 fromParm:10 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v180 fromParm:11 atFxTime:a4->var0.var1];
  [v7 getIntValue:&v179 fromParm:12 atFxTime:a4->var0.var1];
  [v7 getIntValue:&v178 fromParm:14 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v177 fromParm:15 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v176 fromParm:16 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v175 fromParm:17 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v174 fromParm:3 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v173 fromParm:4 atFxTime:a4->var0.var1];
  [v7 getIntValue:&v172 fromParm:5 atFxTime:a4->var0.var1];
  [v7 getFloatValue:&v171 fromParm:6 atFxTime:a4->var0.var1];
  [a3 origin];
  v12 = [a3 imageType];
  v10 = v12 == 3;
  if (v12 == 3)
  {
    if (v197 > 1)
    {
      if (v197 == 2)
      {
        v105 = [a3 pixelTransform];
        [a3 bounds];
        v163 = v107;
        v167 = v106;
        v170 = xmmword_260343E50;
        [v7 getXValue:&v170 YValue:&v170.f64[1] fromParm:310 atFxTime:a4->var0.var1];
        __asm { FMOV            V1.2D, #0.5 }

        v109 = vsubq_f64(_Q1, v170);
        _Q1.f64[0] = v167;
        _Q1.f64[1] = v163;
        v170 = vmulq_f64(_Q1, v109);
        [v105 transform2DPoint:*&v170];
        v170.f64[0] = v110;
        v170.f64[1] = v111;
        v184 = v184 * v184;
        v169 = 0;
        [PAECheckerboard getTransformMatrix:"getTransformMatrix:forCenterX:centerY:angle:andOutputImage:" forCenterX:&v169 centerY:a3 angle:? andOutputImage:?];
        v40 = HGObject::operator new(0x1A0uLL);
        HgcShapeCheckerboard::HgcShapeCheckerboard(v40);
        v112 = v186;
        (*(*v40 + 96))(v40, 0, v112, 0.0, 0.0, 0.0);
        v113 = v194;
        v114 = v193;
        v115 = v192;
        v116 = v191;
        (*(*v40 + 96))(v40, 1, v113, v114, v115, v116);
        v117 = v190;
        v118 = v189;
        v119 = v188;
        v120 = v187;
        (*(*v40 + 96))(v40, 2, v117, v118, v119, v120);
        (*(*v40 + 96))(v40, 3, v183, 0.0, 0.0, 0.0);
        (*(*v40 + 96))(v40, 4, v179, 0.0, 0.0, 0.0);
        (*(*v40 + 96))(v40, 5, v182, 0.0, 0.0, 0.0);
        (*(*v40 + 96))(v40, 6, v178, 0.0, 0.0, 0.0);
        v121 = v181;
        (*(*v40 + 96))(v40, 7, v121, 0.0, 0.0, 0.0);
        v122 = v177;
        (*(*v40 + 96))(v40, 8, v122, 0.0, 0.0, 0.0);
        v123 = v180;
        (*(*v40 + 96))(v40, 9, v123, 0.0, 0.0, 0.0);
        v124 = v176;
        (*(*v40 + 96))(v40, 10, v124, 0.0, 0.0, 0.0);
        v125 = v184;
        (*(*v40 + 96))(v40, 11, v125, 0.0, 0.0, 0.0);
        v126 = *v169;
        v127 = v169[1];
        v128 = v169[2];
        v129 = v169[3];
        (*(*v40 + 96))(v40, 12, v126, v127, v128, v129);
        v130 = v169[4];
        v131 = v169[5];
        v132 = v169[6];
        v133 = v169[7];
        (*(*v40 + 96))(v40, 13, v130, v131, v132, v133);
        v168 = v40;
        (*(*v40 + 16))(v40);
        [a3 setHeliumRef:&v168];
        if (v168)
        {
          (*(*v168 + 24))(v168);
        }

        goto LABEL_31;
      }

      if (v197 == 3)
      {
        v67 = HGObject::operator new(0x1A0uLL);
        HgcTriangularCheckerboard::HgcTriangularCheckerboard(v67);
        v184 = pow(v184, 3.0);
        v68 = v186 * 0.5;
        v69 = v175 * sqrt(v186 * v186 + v68 * v68 + v186 * (v68 + v68) * -0.5);
        v70 = atan(v69 / (v186 * 0.5));
        v71 = __sincos_stret(v70);
        v72 = [a3 pixelTransform];
        [a3 bounds];
        v162 = v74;
        v166 = v73;
        v170 = xmmword_260343E50;
        [v7 getXValue:&v170 YValue:&v170.f64[1] fromParm:310 atFxTime:a4->var0.var1];
        __asm { FMOV            V1.2D, #1.0 }

        v76 = vsubq_f64(_Q1, v170);
        __asm { FMOV            V1.2D, #-0.5 }

        v78 = vaddq_f64(v76, _Q1);
        _Q1.f64[0] = v166;
        _Q1.f64[1] = v162;
        v170 = vmulq_f64(_Q1, v78);
        [v72 transform2DPoint:*&v170];
        v170.f64[0] = v79;
        v170.f64[1] = v80;
        v169 = 0;
        [PAECheckerboard getTransformMatrix:"getTransformMatrix:forCenterX:centerY:angle:andOutputImage:" forCenterX:&v169 centerY:a3 angle:? andOutputImage:?];
        v81 = 1.0 / v68;
        v82 = 1.0 / v69;
        v83 = v68;
        v84 = v69;
        (*(*v67 + 96))(v67, 6, v81, v82, v83, v84);
        sinval = v71.__sinval;
        cosval = v71.__cosval;
        (*(*v67 + 96))(v67, 5, sinval, cosval, 0.0, 0.0);
        v87 = v184;
        (*(*v67 + 96))(v67, 2, v87, 0.0, 0.0, 0.0);
        v88 = *v169;
        v89 = v169[1];
        v90 = v169[2];
        v91 = v169[3];
        (*(*v67 + 96))(v67, 3, v88, v89, v90, v91);
        v92 = v169[4];
        v93 = v169[5];
        v94 = v169[6];
        v95 = v169[7];
        (*(*v67 + 96))(v67, 4, v92, v93, v94, v95);
        v96 = v194;
        v97 = v193;
        v98 = v192;
        v99 = v191;
        (*(*v67 + 96))(v67, 0, v96, v97, v98, v99);
        v100 = v190;
        v101 = v189;
        v102 = v188;
        v103 = v187;
        (*(*v67 + 96))(v67, 1, v100, v101, v102, v103);
        v168 = v67;
        (*(*v67 + 16))(v67);
        [a3 setHeliumRef:&v168];
        if (v168)
        {
          (*(*v168 + 24))(v168);
        }

        (*(*v67 + 24))(v67);
      }
    }

    else
    {
      if (!v197)
      {
        v104 = HGObject::operator new(0x1A0uLL);
        HgcCheckerboard::HgcCheckerboard(v104);
      }

      if (v197 == 1)
      {
        [a3 bounds];
        v161 = v14;
        v164 = v13;
        v170 = xmmword_260343E50;
        [v7 getXValue:&v170 YValue:&v170.f64[1] fromParm:310 atFxTime:a4->var0.var1];
        __asm { FMOV            V1.2D, #1.0 }

        v19 = vsubq_f64(_Q1, v170);
        __asm { FMOV            V1.2D, #-0.5 }

        v21 = vaddq_f64(v19, _Q1);
        _Q1.f64[0] = v164;
        _Q1.f64[1] = v161;
        v170 = vmulq_f64(_Q1, v21);
        v22 = [a3 pixelTransform];
        [v22 transform2DPoint:*&v170];
        v170.f64[0] = v23;
        v170.f64[1] = v24;
        v25 = v191 + v187;
        v26 = v194 + v190;
        v165 = v193 + v189;
        v27 = v192 + v188;
        v174 = 360.0 / (v174 + v174);
        v28 = v174 * 3.14159265;
        v29 = [a3 height];
        v173 = v173 * (6.28318531 / (v29 / a4->var4));
        v30 = 1.0 / v171;
        v171 = v30;
        v186 = pow(v186, v30);
        v31 = v172;
        v32 = pow(v184 * 1.25, 3.0);
        if (v31)
        {
          v32 = pow(v32, 1.0 / v30);
        }

        v33 = v25 * 0.5;
        v34 = v26 * 0.5;
        v184 = v32;
        v169 = 0;
        v35 = v165 * 0.5;
        v36 = v27 * 0.5;
        v37 = v28 / 180.0;
        [(PAECheckerboard *)self getTransformMatrix:&v169 forCenterX:a3 centerY:*&v170 angle:v185 andOutputImage:?];
        v38 = v172;
        v39 = HGObject::operator new(0x1A0uLL);
        v40 = v39;
        if (v38)
        {
          HgcConcentricTriangleChecker::HgcConcentricTriangleChecker(v39);
          v41 = v174;
          (*(*v40 + 96))(v40, 0, v41, 0.0, 0.0, 0.0);
          v42 = v186;
          (*(*v40 + 96))(v40, 1, v42, 0.0, 0.0, 0.0);
          v43 = v37;
          (*(*v40 + 96))(v40, 2, v43, 0.0, 0.0, 0.0);
          v44 = v171;
          (*(*v40 + 96))(v40, 3, v44, 0.0, 0.0, 0.0);
          v45 = v173;
          (*(*v40 + 96))(v40, 4, v45, 0.0, 0.0, 0.0);
          v46 = v194;
          v47 = v193;
          v48 = v192;
          v49 = v191;
          (*(*v40 + 96))(v40, 5, v46, v47, v48, v49);
          v50 = v190;
          v51 = v189;
          v52 = v188;
          v53 = v187;
          (*(*v40 + 96))(v40, 6, v50, v51, v52, v53);
          v54 = v34;
          v55 = v35;
          v56 = v36;
          v57 = v33;
          (*(*v40 + 96))(v40, 7, v54, v55, v56, v57);
          v58 = v184;
          (*(*v40 + 96))(v40, 8, v58, 0.0, 0.0, 0.0);
          (*(*v40 + 96))(v40, 9, 0.0, 0.0, 0.0, 0.0);
          v59 = *v169;
          v60 = v169[1];
          v61 = v169[2];
          v62 = v169[3];
          (*(*v40 + 96))(v40, 10, v59, v60, v61, v62);
          v63 = v169[4];
          v64 = v169[5];
          v65 = v169[6];
          v66 = v169[7];
          (*(*v40 + 96))(v40, 11, v63, v64, v65, v66);
          v168 = v40;
          (*(*v40 + 16))(v40);
          [a3 setHeliumRef:&v168];
          if (v168)
          {
            (*(*v168 + 24))(v168);
          }
        }

        else
        {
          HgcConcentricSquareChecker::HgcConcentricSquareChecker(v39);
          v134 = v174;
          (*(*v40 + 96))(v40, 0, v134, 0.0, 0.0, 0.0);
          v135 = v186;
          (*(*v40 + 96))(v40, 1, v135, 0.0, 0.0, 0.0);
          v136 = v37;
          (*(*v40 + 96))(v40, 2, v136, 0.0, 0.0, 0.0);
          v137 = v171;
          (*(*v40 + 96))(v40, 3, v137, 0.0, 0.0, 0.0);
          v138 = v173;
          (*(*v40 + 96))(v40, 4, v138, 0.0, 0.0, 0.0);
          v139 = v194;
          v140 = v193;
          v141 = v192;
          v142 = v191;
          (*(*v40 + 96))(v40, 5, v139, v140, v141, v142);
          v143 = v190;
          v144 = v189;
          v145 = v188;
          v146 = v187;
          (*(*v40 + 96))(v40, 6, v143, v144, v145, v146);
          v147 = v34;
          v148 = v35;
          v149 = v36;
          v150 = v33;
          (*(*v40 + 96))(v40, 7, v147, v148, v149, v150);
          v151 = v184;
          (*(*v40 + 96))(v40, 8, v151, 0.0, 0.0, 0.0);
          (*(*v40 + 96))(v40, 9, 0.0, 0.0, 0.0, 0.0);
          v152 = *v169;
          v153 = v169[1];
          v154 = v169[2];
          v155 = v169[3];
          (*(*v40 + 96))(v40, 10, v152, v153, v154, v155);
          v156 = v169[4];
          v157 = v169[5];
          v158 = v169[6];
          v159 = v169[7];
          (*(*v40 + 96))(v40, 11, v156, v157, v158, v159);
          v168 = v40;
          (*(*v40 + 16))(v40);
          [a3 setHeliumRef:&v168];
          if (v168)
          {
            (*(*v168 + 24))(v168);
          }
        }

LABEL_31:
        (*(*v40 + 24))(v40);
      }
    }
  }

  return v10;
}

- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5
{
  *a5 = 0;
  *a4 = 1;
  v5 = *&a3->var2;
  v7[0] = *&a3->var0.var0;
  v7[1] = v5;
  v7[2] = *&a3->var4;
  [PAESharedDefaultBase overrideFrameSetupForRenderMode:"overrideFrameSetupForRenderMode:hardware:software:" hardware:v7 software:?];
  return 1;
}

@end