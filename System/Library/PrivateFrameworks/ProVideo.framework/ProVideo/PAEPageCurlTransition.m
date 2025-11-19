@interface PAEPageCurlTransition
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInputA:(id)a4 withInputB:(id)a5 withTimeFraction:(float)a6 withSpeed:(float)a7 withInfo:(id *)a8;
- (BOOL)parameterChanged:(unsigned int)a3;
- (void)observeNotification:(id)a3;
@end

@implementation PAEPageCurlTransition

- (BOOL)addParameters
{
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B3F0];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "localizedStringForKey:value:table:", @"PageCurl::Right", 0, 0), objc_msgSend(v5, "localizedStringForKey:value:table:", @"PageCurl::Left", 0, 0), objc_msgSend(v5, "localizedStringForKey:value:table:", @"PageCurl::Custom", 0, 0), 0}];
    [v4 addPopupMenuWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"PageCurl::Direction Preset" menuEntries:0 parmFlags:{0), 1, 0, v6, 1}];

    v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "localizedStringForKey:value:table:", @"Transition Direction::Open", 0, 0), objc_msgSend(v5, "localizedStringForKey:value:table:", @"Transition Direction::Close", 0, 0), objc_msgSend(v5, "localizedStringForKey:value:table:", @"Transition Direction::Automatic Direction", 0, 0), 0}];
    [v4 addPopupMenuWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Transition Direction::Direction" menuEntries:0 parmFlags:{0), 9, 2, v7, 1}];

    v8 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}];
    self->super._initGap = v8;
    if (v3)
    {
      v10.receiver = self;
      v10.super_class = PAEPageCurlTransition;
      LOBYTE(v3) = [(PAETransitionDefaultBase *)&v10 addParameters];
    }
  }

  return v3;
}

- (BOOL)parameterChanged:(unsigned int)a3
{
  if (a3 == 1)
  {
    v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
    v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
    v12 = *MEMORY[0x277CC08F0];
    v13 = *(MEMORY[0x277CC08F0] + 16);
    v11 = 0;
    if ([v5 getIntValue:&v11 fromParm:1 atFxTime:&v12])
    {
      if (!v11)
      {
        v6 = -0.41887902;
        v7 = -0.314159265;
        goto LABEL_10;
      }

      if (v11 == 1)
      {
        v6 = 0.41887902;
        v7 = 3.45575192;
LABEL_10:
        [v4 setFloatValue:2 toParm:&v12 atFxTime:v7];
        [v4 setFloatValue:3 toParm:&v12 atFxTime:v6];
      }

      return 1;
    }

    return 0;
  }

  else
  {
    if ((a3 & 0xFFFFFFFE) != 2)
    {
      return 1;
    }

    v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
    v12 = *MEMORY[0x277CC08F0];
    v13 = *(MEMORY[0x277CC08F0] + 16);
    v9 = 1;
    [v8 setIntValue:2 toParm:1 atFxTime:&v12];
  }

  return v9;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInputA:(id)a4 withInputB:(id)a5 withTimeFraction:(float)a6 withSpeed:(float)a7 withInfo:(id *)a8
{
  if ([a4 imageType] != 3)
  {
    return 0;
  }

  if ([a5 imageType] != 3)
  {
    return 0;
  }

  if ([a3 imageType] != 3)
  {
    return 0;
  }

  v14 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v14)
  {
    return 0;
  }

  v27 = 0;
  [v14 getIntValue:&v27 fromParm:9 atFxTime:a8->var0.var1];
  if (v27 == 2)
  {
    v27 = [(PAETransitionDefaultBase *)self isFrontGap];
  }

  if ([(PAETransitionDefaultBase *)self isFrontGap])
  {
    v17 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v17);
  }

  if ([(PAETransitionDefaultBase *)self isEndGap])
  {
    v18 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v18);
  }

  v19 = 1.0 - a6;
  if (v27 == 1)
  {
    v20 = a4;
  }

  else
  {
    v20 = a5;
  }

  if (v27 == 1)
  {
    v21 = a5;
  }

  else
  {
    v21 = a4;
  }

  if (v27 != 1)
  {
    v19 = a6;
  }

  v22 = v26;
  v15 = v26 != 0;
  if (v26)
  {
    if (v20)
    {
      [v20 heliumRef];
    }

    else
    {
      v25 = 0;
    }

    v23 = HGObject::operator new(0x220uLL);
    HGHWBlendFlipped::HGHWBlendFlipped(v23);
    v24 = v23;
    (*(*v23 + 96))(v23, 0, 9u, 0.0, 0.0, 0.0);
    [(PAESharedDefaultBase *)self getBlendingGamma];
    (*(*v23 + 96))(v23, 5);
    (*(*v23 + 120))(v23, 0, v22);
    (*(*v23 + 120))(v23, 1, v25);
    [a3 setHeliumRef:&v24];
    if (v24)
    {
      (*(*v24 + 24))(v24);
    }

    if (v25)
    {
      (*(*v25 + 24))(v25);
    }

    (*(*v22 + 24))(v22);
  }

  return v15;
}

- (void)observeNotification:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:kFxNotificationName_NotificationTypeKey];
  if (self->super._initGap >= 2u && [v5 isEqualToString:kFxNotificationName_ColorModelChanged])
  {
    v6 = [a3 objectForKeyedSubscript:kFxNotificationKey_ColorModel];

    [(PAETransitionDefaultBase *)self showHideHDRWhiteLevelParameterForColorModel:v6];
  }
}

@end