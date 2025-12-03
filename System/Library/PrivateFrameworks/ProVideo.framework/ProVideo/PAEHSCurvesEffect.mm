@interface PAEHSCurvesEffect
- (BOOL)addParameters;
- (BOOL)overrideRender:(id)render withOutputImage:(id)image inputImage:(id)inputImage input:(void *)input withInfo:(id *)info;
- (BOOL)parameterChanged:(id)changed atTime:(id *)time paramID:(unsigned int)d customChannelData:(id)data;
- (BOOL)resync:(id)resync atTime:(id)time paramID:(unsigned int)d customChannelData:(id *)data;
- (Class)classForCustomParameterID:(unsigned int)d;
- (PAEHSCurvesEffect)initWithAPIManager:(id)manager;
- (id)shouldDeselectOtherMasks:(id)masks;
- (void)_registerColorCurveParameter:(int)parameter name:(id)name red:(double)red green:(double)green blue:(double)blue;
- (void)_registerHueCurveParameter:(int)parameter name:(id)name;
- (void)_registerOffsetColorCurveParameter:(int)parameter name:(id)name red:(double)red green:(double)green blue:(double)blue;
- (void)dealloc;
- (void)resyncOnce:(id)once atTime:(id)time;
@end

@implementation PAEHSCurvesEffect

- (PAEHSCurvesEffect)initWithAPIManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = PAEHSCurvesEffect;
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
  v3.super_class = PAEHSCurvesEffect;
  [(PAEBaseCorrectorEffect *)&v3 dealloc];
}

- (void)_registerHueCurveParameter:(int)parameter name:(id)name
{
  v5 = *&parameter;
  v7 = objc_alloc_init(PAEHueCurveChannelData);
  [-[PAEBaseCorrectorEffect parameterCreationAPI](self "parameterCreationAPI")];
}

- (void)_registerOffsetColorCurveParameter:(int)parameter name:(id)name red:(double)red green:(double)green blue:(double)blue
{
  v8 = *&parameter;
  v10 = [[PAEOffsetColorCurveChannelData alloc] initWithRed:red green:green blue:blue];
  [-[PAEBaseCorrectorEffect parameterCreationAPI](self "parameterCreationAPI")];
}

- (void)_registerColorCurveParameter:(int)parameter name:(id)name red:(double)red green:(double)green blue:(double)blue
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

- (Class)classForCustomParameterID:(unsigned int)d
{
  if (d <= 3)
  {
    if (d - 1 < 3)
    {
      return objc_opt_class();
    }
  }

  else if (d > 8887)
  {
    if (d == 8888 || d == 9321 || d == 8893)
    {
      return objc_opt_class();
    }
  }

  else if (d - 4 < 3)
  {
    return objc_opt_class();
  }

  return 0;
}

- (void)resyncOnce:(id)once atTime:(id)time
{
  v6 = [once apiForProtocol:&unk_28735E258];
  v10 = 0;
  v7 = [-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")];
  if (v7 == 1)
  {

    [v6 getIntValue:&self->super._hostApplication + 1 fromParm:8889 atFxTime:time.var1];
  }

  else
  {
    v8 = v7;
    if ([v6 getCustomParameterValue:&v10 fromParm:8893 atFxTime:time.var1])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [v10 intValue];
      }

      else
      {
        intValue = 0;
      }

      *(&self->super._hostApplication + 1) = intValue;
    }

    if (v8 >= 6)
    {
      [v6 getBoolValue:&self->_gradingMode fromParm:8894 atFxTime:time.var1];
    }
  }
}

- (BOOL)resync:(id)resync atTime:(id)time paramID:(unsigned int)d customChannelData:(id *)data
{
  v7 = *&d;
  v11 = [resync apiForProtocol:&unk_28735E258];
  v12 = v11;
  if ((v7 - 1) <= 5)
  {
    v13 = [-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")];
    v14 = [v12 getCustomParameterValue:data fromParm:v7 atFxTime:time.var1];
    if (v13 <= 3 && (v7 == 6 || (v7 & 6) == 4))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = *data;
        v16 = [PAEOffsetColorCurveChannelData alloc];
        [v15 red];
        v18 = v17;
        [v15 green];
        v20 = v19;
        [v15 blue];
        v22 = [(PAEOffsetColorCurveChannelData *)v16 initWithRed:v18 green:v20 blue:v21];
        *data = v22;
        [(PAEOffsetColorCurveChannelData *)v22 conformFromColorCurve:v15];
      }
    }

    return v14;
  }

  if (v7 == 8893)
  {
    if ([-[PAEBaseCorrectorEffect versionsingAPI](self "versionsingAPI")] == 1)
    {
      v24 = [v12 getIntValue:&self->super._hostApplication + 1 fromParm:8889 atFxTime:time.var1];
      *data = [MEMORY[0x277CCABB0] numberWithInt:*(&self->super._hostApplication + 1)];
      return v24;
    }

    if (![v12 getCustomParameterValue:data fromParm:8893 atFxTime:time.var1])
    {
      return 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [*data intValue];
    }

    else
    {
      intValue = 0;
    }

    [(PAEHSCurvesEffect *)self _setGradingMode:intValue];
    return 1;
  }

  if (v7 != 8894)
  {
    v26.receiver = self;
    v26.super_class = PAEHSCurvesEffect;
    return [(PAEBaseCorrectorEffect *)&v26 resync:resync atTime:time.var1 paramID:v7 customChannelData:data];
  }

  return [v11 getBoolValue:&self->_gradingMode fromParm:8894 atFxTime:time.var1];
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

      [(PAEHSCurvesEffect *)self willChangeValueForKey:@"gradingMode"];
      [(PAEHSCurvesEffect *)self _setGradingMode:intValue];
      [(PAEHSCurvesEffect *)self didChangeValueForKey:@"gradingMode"];
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    v11 = *time;
    v10.receiver = self;
    v10.super_class = PAEHSCurvesEffect;
    LOBYTE(v7) = [PAEBaseCorrectorEffect parameterChanged:sel_parameterChanged_atTime_paramID_customChannelData_ atTime:changed paramID:&v11 customChannelData:?];
  }

  return v7;
}

- (BOOL)overrideRender:(id)render withOutputImage:(id)image inputImage:(id)inputImage input:(void *)input withInfo:(id *)info
{
  v11 = (*(*input + 128))(input, 0, render, image, inputImage);
  v12 = v11;
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  v22 = v12;
  var1 = info->var0.var1;
  if (!info->var0.var1)
  {
    var1 = MEMORY[0x277CC08F0];
  }

  v20 = *var1;
  v21 = *(var1 + 2);
  v18 = v20;
  v19 = v21;
  [(PAEBaseCorrectorEffect *)self customChannelData:render ofParamID:1 time:&v18];
  v18 = v20;
  v19 = v21;
  [(PAEBaseCorrectorEffect *)self customChannelData:render ofParamID:2 time:&v18, image];
  v18 = v20;
  v19 = v21;
  [(PAEBaseCorrectorEffect *)self customChannelData:render ofParamID:3 time:&v18];
  v18 = v20;
  v19 = v21;
  v17 = [(PAEBaseCorrectorEffect *)self customChannelData:render ofParamID:4 time:&v18];
  v18 = v20;
  v19 = v21;
  v16 = [(PAEBaseCorrectorEffect *)self customChannelData:render ofParamID:5 time:&v18];
  v18 = v20;
  v19 = v21;
  v14 = [(PAEBaseCorrectorEffect *)self customChannelData:render ofParamID:6 time:&v18];
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

  [objc_opt_class() colorPrimaries:render];
  operator new();
}

- (id)shouldDeselectOtherMasks:(id)masks
{
  if ([masks mode] && !objc_msgSend(masks, "state"))
  {
    return MEMORY[0x277CBEC38];
  }

  else
  {
    return MEMORY[0x277CBEC28];
  }
}

@end