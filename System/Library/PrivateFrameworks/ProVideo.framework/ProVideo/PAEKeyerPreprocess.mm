@interface PAEKeyerPreprocess
- (BOOL)addAdvancedParametersWithParamAPI:(id)a3 paramFlags:(unsigned int)a4;
- (BOOL)doPreprocessKeyerFootageWithParamAPI:(id)a3 withInfo:(id *)a4 linearInput:(BOOL)a5 scaleX:(float)a6 scaleY:(float)a7 width:(float)a8 height:(float)a9 fixDVResult:(void *)a10 degrainResult:(void *)a11 outputNode:(void *)a12;
- (BOOL)findGrainRegionWithInfo:(id *)a3 coordX:(int *)a4 coordY:(int *)a5 width:(int)a6 height:(int)a7 minGreenHueAngle:(float)a8 maxGreenHueAngle:(float)a9 greenChroma:(float)a10 minBlueHueAngle:(float)a11 maxBlueHueAngle:(float)a12 blueChroma:(float)a13;
- (void)dealloc;
@end

@implementation PAEKeyerPreprocess

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEKeyerPreprocess;
  [(PAEKeyerPreprocess *)&v2 dealloc];
}

- (BOOL)addAdvancedParametersWithParamAPI:(id)a3 paramFlags:(unsigned int)a4
{
  if (a3)
  {
    [a3 addToggleButtonWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" defaultValue:objc_opt_class()) parmFlags:{"localizedStringForKey:value:table:", @"Keyer::FixVideo", @"Fix Video", 0), 68, 1, a4 | 0x221}];
  }

  return 1;
}

- (BOOL)findGrainRegionWithInfo:(id *)a3 coordX:(int *)a4 coordY:(int *)a5 width:(int)a6 height:(int)a7 minGreenHueAngle:(float)a8 maxGreenHueAngle:(float)a9 greenChroma:(float)a10 minBlueHueAngle:(float)a11 maxBlueHueAngle:(float)a12 blueChroma:(float)a13
{
  *a5 = 0;
  *a4 = 0;
  v13 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v13);
  v14 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v14);
  (*(*v14 + 144))(v14, 0.100000001, 0.100000001, 1.0);
  (*(*v13 + 576))(v13, v14);
  v15 = HGObject::operator new(0x1F0uLL);
  HGColorMatrix::HGColorMatrix(v15);
}

- (BOOL)doPreprocessKeyerFootageWithParamAPI:(id)a3 withInfo:(id *)a4 linearInput:(BOOL)a5 scaleX:(float)a6 scaleY:(float)a7 width:(float)a8 height:(float)a9 fixDVResult:(void *)a10 degrainResult:(void *)a11 outputNode:(void *)a12
{
  v16 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0;
  [a3 getBoolValue:&v24 fromParm:68 atFxTime:{a4->var0.var1, a10, a11}];
  if (v24 == 1)
  {
    desiredRGBToYCbCrMatrix(self->_apiManager, v26, a4->var0.var1);
    desiredYCbCrToRGBMatrix(self->_apiManager, v25, a4->var0.var1);
    v19 = HGObject::operator new(0x240uLL);
    HFixDV::HFixDV(v19, a6, a7);
    v20 = 0.45455;
    if (!v16)
    {
      v20 = 1.0;
    }

    *(v19 + 102) = v20;
    *(v19 + 103) = 1082130432;
    *(v19 + 208) = 257;
    HFixDV::setRGBToYCbCrMatrix(v19, v26);
    HFixDV::setYCbCrToRGBMatrix(v19, v25);
    (*(*v19 + 120))(v19, 0, *a12);
    v21 = *a12;
    if (*a12 != v19)
    {
      if (v21)
      {
        (*(*v21 + 24))(v21);
      }

      *a12 = v19;
      (*(*v19 + 16))(v19);
      v21 = *a12;
    }

    v22 = *a10;
    if (*a10 != v21)
    {
      if (v22)
      {
        (*(*v22 + 24))(*a10);
        v21 = *a12;
      }

      *a10 = v21;
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