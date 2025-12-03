@interface PAEKeyerPreprocess
- (BOOL)addAdvancedParametersWithParamAPI:(id)i paramFlags:(unsigned int)flags;
- (BOOL)doPreprocessKeyerFootageWithParamAPI:(id)i withInfo:(id *)info linearInput:(BOOL)input scaleX:(float)x scaleY:(float)y width:(float)width height:(float)height fixDVResult:(void *)self0 degrainResult:(void *)self1 outputNode:(void *)self2;
- (BOOL)findGrainRegionWithInfo:(id *)info coordX:(int *)x coordY:(int *)y width:(int)width height:(int)height minGreenHueAngle:(float)angle maxGreenHueAngle:(float)hueAngle greenChroma:(float)self0 minBlueHueAngle:(float)self1 maxBlueHueAngle:(float)self2 blueChroma:(float)self3;
- (void)dealloc;
@end

@implementation PAEKeyerPreprocess

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEKeyerPreprocess;
  [(PAEKeyerPreprocess *)&v2 dealloc];
}

- (BOOL)addAdvancedParametersWithParamAPI:(id)i paramFlags:(unsigned int)flags
{
  if (i)
  {
    [i addToggleButtonWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" defaultValue:objc_opt_class()) parmFlags:{"localizedStringForKey:value:table:", @"Keyer::FixVideo", @"Fix Video", 0), 68, 1, flags | 0x221}];
  }

  return 1;
}

- (BOOL)findGrainRegionWithInfo:(id *)info coordX:(int *)x coordY:(int *)y width:(int)width height:(int)height minGreenHueAngle:(float)angle maxGreenHueAngle:(float)hueAngle greenChroma:(float)self0 minBlueHueAngle:(float)self1 maxBlueHueAngle:(float)self2 blueChroma:(float)self3
{
  *y = 0;
  *x = 0;
  v13 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v13);
  v14 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v14);
  (*(*v14 + 144))(v14, 0.100000001, 0.100000001, 1.0);
  (*(*v13 + 576))(v13, v14);
  v15 = HGObject::operator new(0x1F0uLL);
  HGColorMatrix::HGColorMatrix(v15);
}

- (BOOL)doPreprocessKeyerFootageWithParamAPI:(id)i withInfo:(id *)info linearInput:(BOOL)input scaleX:(float)x scaleY:(float)y width:(float)width height:(float)height fixDVResult:(void *)self0 degrainResult:(void *)self1 outputNode:(void *)self2
{
  inputCopy = input;
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0;
  [i getBoolValue:&v24 fromParm:68 atFxTime:{info->var0.var1, result, degrainResult}];
  if (v24 == 1)
  {
    desiredRGBToYCbCrMatrix(self->_apiManager, v26, info->var0.var1);
    desiredYCbCrToRGBMatrix(self->_apiManager, v25, info->var0.var1);
    v19 = HGObject::operator new(0x240uLL);
    HFixDV::HFixDV(v19, x, y);
    v20 = 0.45455;
    if (!inputCopy)
    {
      v20 = 1.0;
    }

    *(v19 + 102) = v20;
    *(v19 + 103) = 1082130432;
    *(v19 + 208) = 257;
    HFixDV::setRGBToYCbCrMatrix(v19, v26);
    HFixDV::setYCbCrToRGBMatrix(v19, v25);
    (*(*v19 + 120))(v19, 0, *node);
    v21 = *node;
    if (*node != v19)
    {
      if (v21)
      {
        (*(*v21 + 24))(v21);
      }

      *node = v19;
      (*(*v19 + 16))(v19);
      v21 = *node;
    }

    v22 = *result;
    if (*result != v21)
    {
      if (v22)
      {
        (*(*v22 + 24))(*result);
        v21 = *node;
      }

      *result = v21;
      if (v21)
      {
        (*(*v21 + 16))(v21);
      }
    }

    (*(*v19 + 24))(v19);
  }

  return 1;
}

@end