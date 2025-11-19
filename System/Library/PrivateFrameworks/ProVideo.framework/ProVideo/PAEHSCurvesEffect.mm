@interface PAEHSCurvesEffect
- (BOOL)addParameters;
- (BOOL)overrideRender:(id)a3 withOutputImage:(id)a4 inputImage:(id)a5 input:(void *)a6 withInfo:(id *)a7;
- (BOOL)parameterChanged:(id)a3 atTime:(id *)a4 paramID:(unsigned int)a5 customChannelData:(id)a6;
- (BOOL)resync:(id)a3 atTime:(id)a4 paramID:(unsigned int)a5 customChannelData:(id *)a6;
- (Class)classForCustomParameterID:(unsigned int)a3;
- (PAEHSCurvesEffect)initWithAPIManager:(id)a3;
- (id)shouldDeselectOtherMasks:(id)a3;
- (void)_registerColorCurveParameter:(int)a3 name:(id)a4 red:(double)a5 green:(double)a6 blue:(double)a7;
- (void)_registerHueCurveParameter:(int)a3 name:(id)a4;
- (void)_registerOffsetColorCurveParameter:(int)a3 name:(id)a4 red:(double)a5 green:(double)a6 blue:(double)a7;
- (void)dealloc;
- (void)resyncOnce:(id)a3 atTime:(id)a4;
@end

@implementation PAEHSCurvesEffect

- (PAEHSCurvesEffect)initWithAPIManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = PAEHSCurvesEffect;
  v3 = [(PAEBaseCorrectorEffect *)&v6 initWithAPIManager:a3];
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
  v3.super_class = PAEHSCurvesEffect;
  [(PAEBaseCorrectorEffect *)&v3 dealloc];
}

- (void)_registerHueCurveParameter:(int)a3 name:(id)a4
{
  v5 = *&a3;
  v7 = objc_alloc_init(PAEHueCurveChannelData);
  [-[PAEBaseCorrectorEffect parameterCreationAPI](self "parameterCreationAPI")];
}

- (void)_registerOffsetColorCurveParameter:(int)a3 name:(id)a4 red:(double)a5 green:(double)a6 blue:(double)a7
{
  v8 = *&a3;
  v10 = [[PAEOffsetColorCurveChannelData alloc] initWithRed:a5 green:a6 blue:a7];
  [-[PAEBaseCorrectorEffect parameterCreationAPI](self "parameterCreationAPI")];
}

- (void)_registerColorCurveParameter:(int)a3 name:(id)a4 red:(double)a5 green:(double)a6 blue:(double)a7
{
  v8 = *&a3;
  v10 = [[PAEColorCurveChannelData alloc] initWithRed:a5 green:a6 blue:a7];
  [-[PAEBaseCorrectorEffect parameterCreationAPI](self "parameterCreationAPI")];
}

- (BOOL)addParameters
{
  v3 = [(PAEBaseCorrectorEffect *)self parameterCreationAPI];
  v4 = v3;
  if (v3)
  {
    [v3 addCustomParameterWithName:&stru_2872E16E0 parmId:8888 defaultValue:0 parmFlags:17];
    -[PAEHSCurvesEffect _registerHueCurveParameter:name:](self, "_registerHueCurveParameter:name:", 1, [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PAEHSCurvesEffectHueVsHue", 0, @"Localizable"}]);
    -[PAEHSCurvesEffect _registerHueCurveParameter:name:](self, "_registerHueCurveParameter:name:", 2, [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PAEHSCurvesEffectHueVsSat", 0, @"Localizable"}]);
    -[PAEHSCurvesEffect _registerHueCurveParameter:name:](self, "_registerHueCurveParameter:name:", 3, [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PAEHSCurvesEffectHueVsLuma", 0, @"Localizable"}]);
    -[PAEHSCurvesEffect _registerOffsetColorCurveParameter:name:red:green:blue:](self, "_registerOffsetColorCurveParameter:name:red:green:blue:", 4, [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PAEHSCurvesEffectLumaVsSat", 0, @"Localizable"}], 1.0, 1.0, 1.0);
    -[PAEHSCurvesEffect _registerOffsetColorCurveParameter:name:red:green:blue:](self, "_registerOffsetColorCurveParameter:name:red:green:blue:", 5, [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PAEHSCurvesEffectSatVsSat", 0, @"Localizable"}], 1.0, 1.0, 1.0);
    -[PAEHSCurvesEffect _registerOffsetColorCurveParameter:name:red:green:blue:](self, "_registerOffsetColorCurveParameter:name:red:green:blue:", 6, [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"PAEHSCurvesEffectCustomVsSat", 0, @"Localizable"}], 0.912, 0.324, 0.002);
    v5 = [-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")];
    [v4 addCustomParameterWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" defaultValue:objc_opt_class()) parmFlags:{"localizedStringForKey:value:table:", @"PAEHSCurvesEffectGradingMode", 0, @"Localizable", 8893, objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", *(&self->super._hostApplication + 1)), 627}];
    if (v5 == 1)
    {
      [v4 addPopupMenuWithName:@"Legacy Grading Mode" parmId:8889 defaultValue:0 menuEntries:&unk_28732D880 parmFlags:531];
    }

    [v4 addToggleButtonWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" defaultValue:objc_opt_class()) parmFlags:{"localizedStringForKey:value:table:", @"PAEColorCurvesEffectPreserveLuma", 0, @"Localizable", 8894, v5 > 5, 515}];
    v6 = objc_alloc_init(PAEColorSelectionChannelData);
    [v4 addCustomParameterWithName:@"OSC" parmId:9321 defaultValue:v6 parmFlags:3];
  }

  return v4 != 0;
}

- (Class)classForCustomParameterID:(unsigned int)a3
{
  if (a3 <= 3)
  {
    if (a3 - 1 < 3)
    {
      return objc_opt_class();
    }
  }

  else if (a3 > 8887)
  {
    if (a3 == 8888 || a3 == 9321 || a3 == 8893)
    {
      return objc_opt_class();
    }
  }

  else if (a3 - 4 < 3)
  {
    return objc_opt_class();
  }

  return 0;
}

- (void)resyncOnce:(id)a3 atTime:(id)a4
{
  v6 = [a3 apiForProtocol:&unk_28735E258];
  v10 = 0;
  v7 = [-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")];
  if (v7 == 1)
  {

    [v6 getIntValue:&self->super._hostApplication + 1 fromParm:8889 atFxTime:a4.var1];
  }

  else
  {
    v8 = v7;
    if ([v6 getCustomParameterValue:&v10 fromParm:8893 atFxTime:a4.var1])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v10 intValue];
      }

      else
      {
        v9 = 0;
      }

      *(&self->super._hostApplication + 1) = v9;
    }

    if (v8 >= 6)
    {
      [v6 getBoolValue:&self->_gradingMode fromParm:8894 atFxTime:a4.var1];
    }
  }
}

- (BOOL)resync:(id)a3 atTime:(id)a4 paramID:(unsigned int)a5 customChannelData:(id *)a6
{
  v7 = *&a5;
  v11 = [a3 apiForProtocol:&unk_28735E258];
  v12 = v11;
  if ((v7 - 1) <= 5)
  {
    v13 = [-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")];
    v14 = [v12 getCustomParameterValue:a6 fromParm:v7 atFxTime:a4.var1];
    if (v13 <= 3 && (v7 == 6 || (v7 & 6) == 4))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = *a6;
        v16 = [PAEOffsetColorCurveChannelData alloc];
        [v15 red];
        v18 = v17;
        [v15 green];
        v20 = v19;
        [v15 blue];
        v22 = [(PAEOffsetColorCurveChannelData *)v16 initWithRed:v18 green:v20 blue:v21];
        *a6 = v22;
        [(PAEOffsetColorCurveChannelData *)v22 conformFromColorCurve:v15];
      }
    }

    return v14;
  }

  if (v7 == 8893)
  {
    if ([-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")] == 1)
    {
      v24 = [v12 getIntValue:&self->super._hostApplication + 1 fromParm:8889 atFxTime:a4.var1];
      *a6 = [MEMORY[0x277CCABB0] numberWithInt:*(&self->super._hostApplication + 1)];
      return v24;
    }

    if (![v12 getCustomParameterValue:a6 fromParm:8893 atFxTime:a4.var1])
    {
      return 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [*a6 intValue];
    }

    else
    {
      v25 = 0;
    }

    [(PAEHSCurvesEffect *)self _setGradingMode:v25];
    return 1;
  }

  if (v7 != 8894)
  {
    v26.receiver = self;
    v26.super_class = PAEHSCurvesEffect;
    return [(PAEBaseCorrectorEffect *)&v26 resync:a3 atTime:a4.var1 paramID:v7 customChannelData:a6];
  }

  return [v11 getBoolValue:&self->_gradingMode fromParm:8894 atFxTime:a4.var1];
}

- (BOOL)parameterChanged:(id)a3 atTime:(id *)a4 paramID:(unsigned int)a5 customChannelData:(id)a6
{
  v12 = a6;
  if (a5 == 8893)
  {
    v7 = [objc_msgSend(a3 apiForProtocol:{&unk_28735E258), "getCustomParameterValue:fromParm:atFxTime:", &v12, 8893, a4}];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v12 intValue];
      }

      else
      {
        v8 = 0;
      }

      [(PAEHSCurvesEffect *)self willChangeValueForKey:@"gradingMode"];
      [(PAEHSCurvesEffect *)self _setGradingMode:v8];
      [(PAEHSCurvesEffect *)self didChangeValueForKey:@"gradingMode"];
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    v11 = *a4;
    v10.receiver = self;
    v10.super_class = PAEHSCurvesEffect;
    LOBYTE(v7) = [PAEBaseCorrectorEffect parameterChanged:sel_parameterChanged_atTime_paramID_customChannelData_ atTime:a3 paramID:&v11 customChannelData:?];
  }

  return v7;
}

- (BOOL)overrideRender:(id)a3 withOutputImage:(id)a4 inputImage:(id)a5 input:(void *)a6 withInfo:(id *)a7
{
  v11 = (*(*a6 + 128))(a6, 0, a3, a4, a5);
  v12 = v11;
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  v22 = v12;
  var1 = a7->var0.var1;
  if (!a7->var0.var1)
  {
    var1 = MEMORY[0x277CC08F0];
  }

  v20 = *var1;
  v21 = *(var1 + 2);
  v18 = v20;
  v19 = v21;
  [(PAEBaseCorrectorEffect *)self customChannelData:a3 ofParamID:1 time:&v18];
  v18 = v20;
  v19 = v21;
  [(PAEBaseCorrectorEffect *)self customChannelData:a3 ofParamID:2 time:&v18, a4];
  v18 = v20;
  v19 = v21;
  [(PAEBaseCorrectorEffect *)self customChannelData:a3 ofParamID:3 time:&v18];
  v18 = v20;
  v19 = v21;
  v17 = [(PAEBaseCorrectorEffect *)self customChannelData:a3 ofParamID:4 time:&v18];
  v18 = v20;
  v19 = v21;
  v16 = [(PAEBaseCorrectorEffect *)self customChannelData:a3 ofParamID:5 time:&v18];
  v18 = v20;
  v19 = v21;
  v14 = [(PAEBaseCorrectorEffect *)self customChannelData:a3 ofParamID:6 time:&v18];
  if ([-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")] <= 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_alloc_init(PAEOffsetColorCurveChannelData) conformFromColorCurve:v17];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_alloc_init(PAEOffsetColorCurveChannelData) conformFromColorCurve:v16];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_alloc_init(PAEOffsetColorCurveChannelData) conformFromColorCurve:v14];
    }
  }

  {
    [PAEHSCurvesEffect overrideRender:withOutputImage:inputImage:input:withInfo:];
  }

  [objc_opt_class() colorPrimaries:a3];
  operator new();
}

- (id)shouldDeselectOtherMasks:(id)a3
{
  if ([a3 mode] && !objc_msgSend(a3, "state"))
  {
    return MEMORY[0x277CBEC38];
  }

  else
  {
    return MEMORY[0x277CBEC28];
  }
}

@end