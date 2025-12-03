@interface PAEPageCurlTransition
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInputA:(id)a withInputB:(id)b withTimeFraction:(float)fraction withSpeed:(float)speed withInfo:(id *)info;
- (BOOL)parameterChanged:(unsigned int)changed;
- (void)observeNotification:(id)notification;
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

- (BOOL)parameterChanged:(unsigned int)changed
{
  if (changed == 1)
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
    if ((changed & 0xFFFFFFFE) != 2)
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

- (BOOL)canThrowRenderOutput:(id)output withInputA:(id)a withInputB:(id)b withTimeFraction:(float)fraction withSpeed:(float)speed withInfo:(id *)info
{
  if ([a imageType] != 3)
  {
    return 0;
  }

  if ([b imageType] != 3)
  {
    return 0;
  }

  if ([output imageType] != 3)
  {
    return 0;
  }

  v14 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v14)
  {
    return 0;
  }

  isFrontGap = 0;
  [v14 getIntValue:&isFrontGap fromParm:9 atFxTime:info->var0.var1];
  if (isFrontGap == 2)
  {
    isFrontGap = [(PAETransitionDefaultBase *)self isFrontGap];
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

  fractionCopy = 1.0 - fraction;
  if (isFrontGap == 1)
  {
    bCopy = a;
  }

  else
  {
    bCopy = b;
  }

  if (isFrontGap == 1)
  {
    aCopy2 = b;
  }

  else
  {
    aCopy2 = a;
  }

  if (isFrontGap != 1)
  {
    fractionCopy = fraction;
  }

  v22 = v26;
  v15 = v26 != 0;
  if (v26)
  {
    if (bCopy)
    {
      [bCopy heliumRef];
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
    [output setHeliumRef:&v24];
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

- (void)observeNotification:(id)notification
{
  v5 = [notification objectForKeyedSubscript:kFxNotificationName_NotificationTypeKey];
  if (self->super._initGap >= 2u && [v5 isEqualToString:kFxNotificationName_ColorModelChanged])
  {
    v6 = [notification objectForKeyedSubscript:kFxNotificationKey_ColorModel];

    [(PAETransitionDefaultBase *)self showHideHDRWhiteLevelParameterForColorModel:v6];
  }
}

@end