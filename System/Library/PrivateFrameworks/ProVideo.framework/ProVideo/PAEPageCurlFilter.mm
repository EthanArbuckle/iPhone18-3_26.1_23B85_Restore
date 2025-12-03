@interface PAEPageCurlFilter
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)parameterChanged:(unsigned int)changed;
@end

@implementation PAEPageCurlFilter

- (BOOL)addParameters
{
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v4, "localizedStringForKey:value:table:", @"PageCurl::Open", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"PageCurl::Close", 0, 0), 0}];
  [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"PageCurl::Direction" menuEntries:0 parmFlags:{0), 9, 0, v5, 1}];

  result = 0;
  if (v6)
  {
    v8.receiver = self;
    v8.super_class = PAEPageCurlFilter;
    return [(PAESharedDefaultBase *)&v8 addParameters];
  }

  return result;
}

- (BOOL)parameterChanged:(unsigned int)changed
{
  if (changed == 10)
  {
    v15 = v3;
    v16 = v4;
    v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
    v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
    v13 = *MEMORY[0x277CC08F0];
    v14 = *(MEMORY[0x277CC08F0] + 16);
    v12 = 0;
    v8 = [v7 getBoolValue:&v12 fromParm:10 atFxTime:&v13];
    if (v8)
    {
      v11 = 0;
      [v7 getParameterFlags:&v11 fromParm:11];
      if (v12)
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      v11 = v11 & 0xFFFFFFFB | v9;
      [v6 setParameterFlags:? toParm:?];
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  if ([input imageType] != 3)
  {
    return 0;
  }

  if ([output imageType] != 3)
  {
    return 0;
  }

  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F060];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v37 = 0;
  v13 = [v11 getBoolValue:&v37 fromParm:10 atFxTime:info->var0.var1];
  v36 = 0;
  v14 = [v12 getIntValue:&v36 fromParm:9 atFxTime:info->var0.var1];
  v15 = 0;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    return v15;
  }

  if (v37 != 1)
  {
    *&v34 = 0;
    if ([v12 getFloatValue:&v34 fromParm:11 atFxTime:info->var0.var1])
    {
      v23 = *&v34 / 100.0;
      goto LABEL_13;
    }

    return 0;
  }

  var1 = info->var0.var1;
  v18 = MEMORY[0x277CC0888];
  v34 = *MEMORY[0x277CC0888];
  v35 = *(MEMORY[0x277CC0888] + 16);
  v33 = &v34;
  [v10 startFxTimeForEffect:&v33];
  v31 = *v18;
  v32 = *(v18 + 2);
  v30 = &v31;
  [v10 durationFxTimeForEffect:&v30];
  memset(&v29, 0, sizeof(v29));
  v19 = *var1;
  lhs.epoch = *(var1 + 2);
  *&lhs.value = v19;
  v20 = *(v33 + 2);
  *&v27.value = *v33;
  v27.epoch = v20;
  CMTimeSubtract(&v29, &lhs, &v27);
  lhs = v29;
  Seconds = CMTimeGetSeconds(&lhs);
  v22 = *(v30 + 2);
  *&lhs.value = *v30;
  lhs.epoch = v22;
  v23 = Seconds / CMTimeGetSeconds(&lhs);
LABEL_13:
  v24 = v23;
  if (v36)
  {
    v24 = 1.0 - v24;
  }

  v25 = v34;
  v15 = v34 != 0;
  if (v34)
  {
    *&v31 = v34;
    (*(*v34 + 16))(v34);
    [output setHeliumRef:&v31];
    if (v31)
    {
      (*(*v31 + 24))(v31);
    }

    (*(*v25 + 24))(v25);
  }

  return v15;
}

@end