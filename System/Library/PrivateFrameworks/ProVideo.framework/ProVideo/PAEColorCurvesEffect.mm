@interface PAEColorCurvesEffect
- (BOOL)addParameters;
- (BOOL)overrideRender:(id)render withOutputImage:(id)image inputImage:(id)inputImage input:(void *)input withInfo:(id *)info;
- (BOOL)parameterChanged:(id)changed atTime:(id *)time paramID:(unsigned int)d customChannelData:(id)data;
- (BOOL)resync:(id)resync atTime:(id)time paramID:(unsigned int)d customChannelData:(id *)data;
- (Class)classForCustomParameterID:(unsigned int)d;
- (PAEColorCurvesEffect)initWithAPIManager:(id)manager;
- (id)shouldDeselectOtherMasks:(id)masks;
- (void)_registerCurveParameter:(int)parameter name:(id)name red:(double)red green:(double)green blue:(double)blue;
- (void)dealloc;
- (void)resyncOnce:(id)once atTime:(id)time;
- (void)setParameters:(id)parameters onNodeCorrector:(void *)corrector time:(id *)time;
@end

@implementation PAEColorCurvesEffect

- (PAEColorCurvesEffect)initWithAPIManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = PAEColorCurvesEffect;
  v3 = [(PAEBaseCorrectorEffect *)&v6 initWithAPIManager:manager];
  v4 = v3;
  if (v3)
  {
    PAEInitSampling(v3);
  }

  return v4;
}

- (void)dealloc
{
  PAEDisposeSampling(self);
  v3.receiver = self;
  v3.super_class = PAEColorCurvesEffect;
  [(PAEBaseCorrectorEffect *)&v3 dealloc];
}

- (void)_registerCurveParameter:(int)parameter name:(id)name red:(double)red green:(double)green blue:(double)blue
{
  v8 = *&parameter;
  v10 = [[PAEColorCurveChannelData alloc] initWithRed:red green:green blue:blue];
  [-[PAEBaseCorrectorEffect parameterCreationAPI](self "parameterCreationAPI")];
}

- (BOOL)addParameters
{
  parameterCreationAPI = [(PAEBaseCorrectorEffect *)self parameterCreationAPI];
  v4 = parameterCreationAPI;
  if (parameterCreationAPI)
  {
    [parameterCreationAPI addCustomParameterWithName:&stru_2872E16E0 parmId:8888 defaultValue:0 parmFlags:17];
    [v4 addToggleButtonWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" defaultValue:objc_opt_class()) parmFlags:{"localizedStringForKey:value:table:", @"PAEColorCurvesEffectPreserveLuma", 0, @"Localizable", 8889, 1, 545}];
    -[PAEColorCurvesEffect _registerCurveParameter:name:red:green:blue:](self, "_registerCurveParameter:name:red:green:blue:", 1, [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PAEColorCurvesEffectCustom1", 0, @"Localizable"}], 1.0, 0.0, 0.0);
    -[PAEColorCurvesEffect _registerCurveParameter:name:red:green:blue:](self, "_registerCurveParameter:name:red:green:blue:", 2, [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PAEColorCurvesEffectCustom2", 0, @"Localizable"}], 0.0, 1.0, 0.0);
    -[PAEColorCurvesEffect _registerCurveParameter:name:red:green:blue:](self, "_registerCurveParameter:name:red:green:blue:", 3, [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PAEColorCurvesEffectCustom3", 0, @"Localizable"}], 0.0, 0.0, 1.0);
    -[PAEColorCurvesEffect _registerCurveParameter:name:red:green:blue:](self, "_registerCurveParameter:name:red:green:blue:", 4, [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PAEColorCurvesEffectLuma", 0, @"Localizable"}], 1.0, 1.0, 1.0);
    v5 = [-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")];
    [v4 addCustomParameterWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" defaultValue:objc_opt_class()) parmFlags:{"localizedStringForKey:value:table:", @"PAEColorCurvesEffectGradingMode", 0, @"Localizable", 8893, objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", *(&self->super._hostApplication + 1)), 627}];
    if (v5 == 1)
    {
      [v4 addPopupMenuWithName:@"Legacy Grading Mode" parmId:8890 defaultValue:0 menuEntries:&unk_28732D850 parmFlags:531];
    }

    v6 = objc_alloc_init(PAEColorSelectionChannelData);
    [v4 addCustomParameterWithName:@"OSC" parmId:9321 defaultValue:v6 parmFlags:3];
  }

  return v4 != 0;
}

- (Class)classForCustomParameterID:(unsigned int)d
{
  if (d > 8887)
  {
    if (d == 8888 || d == 8893 || d == 9321)
    {
      return objc_opt_class();
    }
  }

  else if (d - 1 < 4)
  {
    return objc_opt_class();
  }

  return 0;
}

- (void)resyncOnce:(id)once atTime:(id)time
{
  v6 = [once apiForProtocol:&unk_28735E258];
  v8 = 0;
  if ([-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")] == 1)
  {
    [v6 getIntValue:&self->super._hostApplication + 1 fromParm:8890 atFxTime:time.var1];
  }

  else if ([v6 getCustomParameterValue:&v8 fromParm:8893 atFxTime:time.var1])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v8 intValue];
    }

    else
    {
      intValue = 0;
    }

    *(&self->super._hostApplication + 1) = intValue;
  }

  [v6 getBoolValue:&self->_gradingMode fromParm:8889 atFxTime:time.var1];
}

- (BOOL)resync:(id)resync atTime:(id)time paramID:(unsigned int)d customChannelData:(id *)data
{
  v7 = *&d;
  v11 = [resync apiForProtocol:&unk_28735E258];
  v12 = v11;
  if ((v7 - 1) > 3)
  {
    if (v7 == 8893)
    {
      if ([-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")] == 1)
      {
        v14 = [v12 getIntValue:&self->super._hostApplication + 1 fromParm:8890 atFxTime:time.var1];
        *data = [MEMORY[0x277CCABB0] numberWithInt:*(&self->super._hostApplication + 1)];
        LOBYTE(v13) = v14;
      }

      else
      {
        v13 = [v12 getCustomParameterValue:data fromParm:8893 atFxTime:time.var1];
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            intValue = [*data intValue];
          }

          else
          {
            intValue = 0;
          }

          [(PAEColorCurvesEffect *)self _setGradingMode:intValue];
          LOBYTE(v13) = 1;
        }
      }
    }

    else if (v7 == 8889)
    {

      LOBYTE(v13) = [v11 getBoolValue:&self->_gradingMode fromParm:8889 atFxTime:time.var1];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = PAEColorCurvesEffect;
      LOBYTE(v13) = [(PAEBaseCorrectorEffect *)&v17 resync:resync atTime:time.var1 paramID:v7 customChannelData:data];
    }
  }

  else
  {

    LOBYTE(v13) = [v11 getCustomParameterValue:data fromParm:v7 atFxTime:time.var1];
  }

  return v13;
}

- (BOOL)parameterChanged:(id)changed atTime:(id *)time paramID:(unsigned int)d customChannelData:(id)data
{
  dataCopy = data;
  if (d == 8893)
  {
    v7 = [objc_msgSend(changed apiForProtocol:{&unk_28735E258), "getCustomParameterValue:fromParm:atFxTime:", &dataCopy, 8893, time}];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [dataCopy intValue];
      }

      else
      {
        intValue = 0;
      }

      [(PAEColorCurvesEffect *)self willChangeValueForKey:@"gradingMode"];
      [(PAEColorCurvesEffect *)self _setGradingMode:intValue];
      [(PAEColorCurvesEffect *)self didChangeValueForKey:@"gradingMode"];
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    v11 = *time;
    v10.receiver = self;
    v10.super_class = PAEColorCurvesEffect;
    LOBYTE(v7) = [PAEBaseCorrectorEffect parameterChanged:sel_parameterChanged_atTime_paramID_customChannelData_ atTime:changed paramID:&v11 customChannelData:?];
  }

  return v7;
}

- (BOOL)overrideRender:(id)render withOutputImage:(id)image inputImage:(id)inputImage input:(void *)input withInfo:(id *)info
{
  v12 = (*(*input + 128))(input, 0, render, image, inputImage);
  v13 = v12;
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  if (*(&self->super._hostApplication + 1) == 1)
  {
    v14 = 1;
  }

  else
  {
    {
      [PAEColorCurvesEffect overrideRender:withOutputImage:inputImage:input:withInfo:];
    }
  }

  v15 = [objc_opt_class() colorPrimaries:render] == 1 || v14;
  if (v15)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v15)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = PAECreateGammaEncodingNode(input, v16, v16, v18, 1, 0);
  newNodeForCorrector = [(PAEColorCurvesEffect *)self newNodeForCorrector];
  v21 = newNodeForCorrector;
  if (!newNodeForCorrector)
  {
    newNodeForCorrector = v19;
  }

  v22 = PAECreateGammaDecodingNode(newNodeForCorrector, v16, v16, v18, 0, 1);
  if (v21)
  {
    var1 = info->var0.var1;
    if (!info->var0.var1)
    {
      var1 = MEMORY[0x277CC08F0];
    }

    v24 = *(var1 + 2);
    v26 = *var1;
    v27 = v24;
    [(PAEColorCurvesEffect *)self setParameters:render onNodeCorrector:v21 time:&v26];
    (*(*v21 + 120))(v21, 0, v19);
  }

  if (v22)
  {
    (*(*v22 + 16))(v22);
  }

  *&v26 = v22;
  [image setHeliumRef:&v26];
  if (v26)
  {
    (*(*v26 + 24))(v26);
  }

  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  (*(*v19 + 24))(v19);
  (*(*v22 + 24))(v22);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  return 1;
}

- (void)setParameters:(id)parameters onNodeCorrector:(void *)corrector time:(id *)time
{
  v44 = *time;
  v9 = [(PAEBaseCorrectorEffect *)self customChannelData:parameters ofParamID:4 time:&v44];
  v44 = *time;
  v10 = [(PAEBaseCorrectorEffect *)self customChannelData:parameters ofParamID:1 time:&v44];
  v44 = *time;
  v11 = [(PAEBaseCorrectorEffect *)self customChannelData:parameters ofParamID:2 time:&v44];
  v44 = *time;
  v12 = [(PAEBaseCorrectorEffect *)self customChannelData:parameters ofParamID:3 time:&v44];
  curveRef = [v9 curveRef];
  if (*(&self->super._hostApplication + 1) == 1)
  {
    v14 = 0;
  }

  else
  {
    {
      [PAEColorCurvesEffect setParameters:onNodeCorrector:time:];
    }
  }

  v15 = [objc_opt_class() colorPrimaries:parameters] != 1;
  (*(*corrector + 96))(corrector, 3, -LOBYTE(self->_gradingMode), 0.0, 0.0, 0.0);
  v19 = !v14 || !v15;
  if (v14 && v15)
  {
    v20 = &cc::matrix::rgb_to_YCbCr709;
  }

  else
  {
    v20 = &cc::matrix::rgb_to_YCbCr2020;
  }

  v16.n128_u32[0] = *v20;
  v21 = &cc::matrix::rgb_to_YCbCr709 + 4;
  if (!v14 || !v15)
  {
    v21 = &cc::matrix::rgb_to_YCbCr2020 + 4;
  }

  v17.n128_u32[0] = *v21;
  v22 = &cc::matrix::rgb_to_YCbCr709 + 8;
  if (v14 && v15)
  {
    v23 = &cc::matrix::rgb_to_YCbCr709 + 3;
  }

  else
  {
    v22 = &cc::matrix::rgb_to_YCbCr2020 + 8;
    v23 = &cc::matrix::rgb_to_YCbCr2020 + 3;
  }

  if (v14 && v15)
  {
    v24 = algn_280C5F964;
  }

  else
  {
    v24 = &unk_280C5F868;
  }

  if (v14 && v15)
  {
    v25 = &dword_280C5F968;
  }

  else
  {
    v25 = &unk_280C5F86C;
  }

  if (v14 && v15)
  {
    v26 = &unk_280C5F96C;
  }

  else
  {
    v26 = &unk_280C5F870;
  }

  if (v14 && v15)
  {
    v27 = &unk_280C5F970;
  }

  else
  {
    v27 = &unk_280C5F874;
  }

  if (v19)
  {
    v28 = &dword_280C5F878;
  }

  else
  {
    v28 = &dword_280C5F974;
  }

  if (v19)
  {
    v29 = cc::matrix::YCbCr2020_to_rgb;
  }

  else
  {
    v29 = cc::matrix::YCbCr709_to_rgb;
  }

  if (v19)
  {
    v30 = &cc::matrix::YCbCr2020_to_rgb[0].f32[1];
  }

  else
  {
    v30 = &cc::matrix::YCbCr709_to_rgb[0].f32[1];
  }

  if (v19)
  {
    v31 = &cc::matrix::YCbCr2020_to_rgb[0].i64[1];
  }

  else
  {
    v31 = &cc::matrix::YCbCr709_to_rgb[0].i64[1];
  }

  if (v19)
  {
    v32 = &cc::matrix::YCbCr2020_to_rgb[0].i8[12];
  }

  else
  {
    v32 = &cc::matrix::YCbCr709_to_rgb[0].i8[12];
  }

  v33 = &unk_280C5F9C0;
  if (v19)
  {
    v33 = &unk_280C5F8E4;
  }

  v39 = v33;
  v40 = v32;
  v34 = &unk_280C5F9C4;
  if (v19)
  {
    v34 = &unk_280C5F8E8;
  }

  v38 = v34;
  if (v19)
  {
    v35 = &unk_280C5F8EC;
  }

  else
  {
    v35 = &unk_280C5F9C8;
  }

  v36 = &unk_280C5F9CC;
  if (v19)
  {
    v36 = &unk_280C5F8F0;
  }

  v42 = v36;
  v43 = v35;
  v37 = &dword_280C5F9D0;
  if (v19)
  {
    v37 = &dword_280C5F8F4;
  }

  v41 = v37;
  v18.n128_u32[0] = *v22;
  (*(*corrector + 96))(corrector, 5, v16, v17, v18, 0.0);
  (*(*corrector + 96))(corrector, 6, *v23, *v24, *v25, 0.0);
  (*(*corrector + 96))(corrector, 7, *v26, *v27, *v28, 0.0);
  (*(*corrector + 96))(corrector, 8, v29->f32[0], *v30, *v31, 0.0);
  (*(*corrector + 96))(corrector, 9, *v40, *v39, *v38, 0.0);
  (*(*corrector + 96))(corrector, 10, *v43, *v42, *v41, 0.0);
}

- (id)shouldDeselectOtherMasks:(id)masks
{
  if ([masks mode] == 1 && !objc_msgSend(masks, "state"))
  {
    return MEMORY[0x277CBEC38];
  }

  else
  {
    return MEMORY[0x277CBEC28];
  }
}

@end