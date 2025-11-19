@interface PAEComicTown
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (PAEComicTown)initWithAPIManager:(id)a3;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEComicTown

- (PAEComicTown)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEComicTown;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEComicTown;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", v5, @"PositionIndependent", v6, @"PixelIndependent", v7, @"SDRWorkingSpace", v8, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v17.receiver = self;
  v17.super_class = PAEComicTown;
  [(PAESharedDefaultBase *)&v17 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"ComicTown::P1" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:2 delta:2.0 parmFlags:{0.0, 5.0, 0.0, 5.0, 0.1}];
    v7 = v6 & [v4 addPopupMenuWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"ComicTown::Style" menuEntries:0 parmFlags:{0), 2, 5, &unk_28732D868, 0}];
    LODWORD(v11) = 0;
    LODWORD(v5) = [v4 addIntSliderWithName:@"ComicTown::Smooth" parmId:3 defaultValue:22 parameterMin:0 parameterMax:100 sliderMin:0 sliderMax:0x100000064 delta:v11 parmFlags:?];
    LODWORD(v12) = 0;
    v8 = v7 & v5 & [v4 addIntSliderWithName:@"ComicTown::Brightness" parmId:4 defaultValue:22 parameterMin:0 parameterMax:100 sliderMin:0 sliderMax:0x100000064 delta:v12 parmFlags:?];
    LODWORD(v13) = 0;
    LODWORD(v5) = [v4 addIntSliderWithName:@"ComicTown::Loose" parmId:5 defaultValue:30 parameterMin:0 parameterMax:100 sliderMin:0 sliderMax:0x100000064 delta:v13 parmFlags:?];
    LODWORD(v14) = 0;
    LODWORD(v5) = v5 & [v4 addIntSliderWithName:@"ComicTown::BlackFill" parmId:6 defaultValue:50 parameterMin:0 parameterMax:100 sliderMin:0 sliderMax:0x100000064 delta:v14 parmFlags:?];
    LODWORD(v15) = 0;
    v9 = v8 & v5 & [v4 addIntSliderWithName:@"ComicTown::color" parmId:9 defaultValue:0 parameterMin:0 parameterMax:5 sliderMin:0 sliderMax:0x100000005 delta:v15 parmFlags:?];
    LODWORD(v16) = 0;
    LOBYTE(v5) = [v4 addIntSliderWithName:@"ComicTown::quantizeLevels" parmId:10 defaultValue:6 parameterMin:2 parameterMax:1000 sliderMin:2 sliderMax:0x100000032 delta:v16 parmFlags:?];
    LOBYTE(v3) = v9 & v5 & [v4 addToggleButtonWithName:@"ComicTown::useHelium" parmId:11 defaultValue:0 parmFlags:0];
  }

  return v3;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_9;
  }

  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  [v9 getFloatValue:&v33 fromParm:1 atFxTime:a5->var0.var1];
  [v9 getIntValue:&v32 fromParm:2 atFxTime:a5->var0.var1];
  [v9 getIntValue:&v31 fromParm:3 atFxTime:a5->var0.var1];
  [v9 getIntValue:&v30 + 4 fromParm:4 atFxTime:a5->var0.var1];
  [v9 getIntValue:&v30 fromParm:5 atFxTime:a5->var0.var1];
  [v9 getIntValue:&v29 fromParm:6 atFxTime:a5->var0.var1];
  [v9 getIntValue:&v29 + 4 fromParm:9 atFxTime:a5->var0.var1];
  [v9 getIntValue:&v28 fromParm:10 atFxTime:a5->var0.var1];
  v12 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  if (!v12)
  {
    return v12;
  }

  if ([a4 imageType] != 3)
  {
LABEL_9:
    LOBYTE(v12) = 0;
    return v12;
  }

  if (a4)
  {
    [a4 heliumRef];
  }

  else
  {
    v27 = 0;
  }

  v26 = 0;
  v13 = HGObject::operator new(0x1A0uLL);
  HGComicDesignerInterface::HGComicDesignerInterface(v13);
  (*(*v13 + 120))(v13, 0, v27);
  (*(*v13 + 96))(v13, 0, v31, 0.0, 0.0, 0.0);
  (*(*v13 + 96))(v13, 1, SHIDWORD(v30), 0.0, 0.0, 0.0);
  (*(*v13 + 96))(v13, 2, v30, 0.0, 0.0, 0.0);
  (*(*v13 + 96))(v13, 4, v28, 0.0, 0.0, 0.0);
  (*(*v13 + 96))(v13, 5, 720.0, 0.0, 0.0, 0.0);
  (*(*v13 + 96))(v13, 6, v32, 0.0, 0.0, 0.0);
  (*(*v13 + 96))(v13, 7, v29, 0.0, 0.0, 0.0);
  (*(*v13 + 96))(v13, 3, SHIDWORD(v29), 0.0, 0.0, 0.0);
  (*(*v13 + 96))(v13, 10, 1.0, 0.0, 0.0, 0.0);
  v14 = [a4 dod];
  v17 = HGRectMake4i(v14 + 1, HIDWORD(v14) + 1, v15 - 1, v16 - 1);
  (*(*v13 + 96))(v13, 8, v17, SHIDWORD(v17), v18, v19);
  [(PAESharedDefaultBase *)self getScaleForImage:a4];
  v20 = v24;
  v21 = v25;
  (*(*v13 + 96))(v13, 9, v20, v21, 0.0, 0.0);
  v22 = *v13;
  v26 = v13;
  (*(v22 + 16))(v13);
  (*(*v13 + 24))(v13);
  [a3 setHeliumRef:&v26];
  if (v26)
  {
    (*(*v26 + 24))(v26);
  }

  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  LOBYTE(v12) = 1;
  return v12;
}

@end