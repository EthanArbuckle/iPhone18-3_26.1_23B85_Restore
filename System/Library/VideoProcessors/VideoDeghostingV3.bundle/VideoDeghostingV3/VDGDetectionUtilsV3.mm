@interface VDGDetectionUtilsV3
- ($43C834F0531B50B92CAF4577069D180C)configuration;
- (CGPoint)calcOpticalCenterFromMetaData:(id)data;
- (VDGDetectionUtilsV3)initWithConfiguration:(id *)configuration;
- (id)generateDetectionRoiList:(id)list;
- (id)getDetectionRoiListFromMeta:(id *)meta;
- (void)dealloc;
- (void)setConfiguration:(id *)configuration;
- (void)setSimParams:(_simParamsStruct *)params withMetaData:(id)data;
@end

@implementation VDGDetectionUtilsV3

- (VDGDetectionUtilsV3)initWithConfiguration:(id *)configuration
{
  v11.receiver = self;
  v11.super_class = VDGDetectionUtilsV3;
  v4 = [(VDGDetectionUtilsV3 *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&configuration->var0.var0;
    v7 = *&configuration->var0.var7;
    v8 = *&configuration->var1.var0;
    *(v4 + 56) = *&configuration->var1.var4;
    *(v4 + 40) = v8;
    *(v4 + 24) = v7;
    *(v4 + 8) = v6;
    v9 = v4;
  }

  else
  {
    [VDGDetectionUtilsV3 initWithConfiguration:];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VDGDetectionUtilsV3;
  [(VDGDetectionUtilsV3 *)&v2 dealloc];
}

- (void)setSimParams:(_simParamsStruct *)params withMetaData:(id)data
{
  *params->DesGenMapping = 0u;
  *&params->totalKP = 0u;
  *params->lsMaskMapping = 0u;
  params->totalKP = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  memset(&v14[8], 0, 304);
  v5 = [data objectForKeyedSubscript:{@"IspScalerInfo", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  [v5 getBytes:v14 length:576];
  *&params->lightSourceWidth = vmovn_s64(vcvtq_s64_f64(*(&v14[8] + 8)));
  v6 = v24;
  v7 = v26;
  v8 = v26 * v21;
  params->DesGenMapping[0] = v24 * *(&v19 + 2);
  params->DesGenMapping[1] = v8;
  v9 = v25;
  v10 = v27;
  v11 = (v23 * v27) + (v7 * v22);
  params->DesGenMapping[2] = (v25 * v23) + (v6 * v20);
  params->DesGenMapping[3] = v11;
  v12 = v7 * *&v16;
  params->lsMaskMapping[0] = v6 * *&v15;
  params->lsMaskMapping[1] = v12;
  v13 = (v10 * *&v17) + (v7 * *(&v16 + 1));
  params->lsMaskMapping[2] = (v9 * *&v17) + (v6 * *(&v15 + 2));
  params->lsMaskMapping[3] = v13;
}

- (CGPoint)calcOpticalCenterFromMetaData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy objectForKeyedSubscript:@"OpticalCenter"];
  v16.x = 0.0;
  v16.y = 0.0;
  CGPointMakeWithDictionaryRepresentation(v4, &v16);
  x = v16.x;
  y = v16.y;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v7 = [dataCopy objectForKeyedSubscript:@"IspScalerInfo"];

  [v7 getBytes:v17 length:576];
  v8 = *&v18;
  v9 = *(&v18 + 1);
  v10 = x - v8;
  v11 = y - v9;
  v12 = (v28 + (v10 * v27));
  v13 = (v30 + (v11 * v29));

  v14 = v12;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (id)generateDetectionRoiList:(id)list
{
  listCopy = list;
  v4 = objc_alloc_init(NSMutableArray);
  if ([listCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [listCopy objectAtIndexedSubscript:v5];
      [v6 bbox];
      v8 = v7;
      [v6 bbox];
      v10 = v9;
      [v6 bbox];
      v12 = v11;
      [v6 bbox];
      v14 = -[DetectedROI initWithTrackId:trackedCnt:andRoi:]([DetectedROI alloc], "initWithTrackId:trackedCnt:andRoi:", [v6 trackID], objc_msgSend(v6, "trackedCnt"), v8, v10, v12, v13);
      [v4 addObject:v14];

      ++v5;
    }

    while ([listCopy count] > v5);
  }

  return v4;
}

- (id)getDetectionRoiListFromMeta:(id *)meta
{
  v5 = objc_alloc_init(NSMutableArray);
  if (meta->var0 >= 1)
  {
    v6 = 0;
    v7 = 40;
    metaCopy = meta;
    do
    {
      v9 = [[DetectedROI alloc] initWithTrackId:metaCopy->var11[2] trackedCnt:LODWORD(metaCopy[3].var9[25].var6) andRoi:*(&meta->var0 + v7), *(&meta->var2 + v7), (*(&meta->var7 + v7) + *(&meta->var7 + v7)), (*(&meta->var8 + v7) + *(&meta->var8 + v7))];
      [v5 addObject:v9];

      ++v6;
      metaCopy = (metaCopy + 4);
      v7 += 32;
    }

    while (v6 < meta->var0);
  }

  return v5;
}

- ($43C834F0531B50B92CAF4577069D180C)configuration
{
  v3 = *&self->var0.var10;
  *&retstr->var0.var0 = *&self->var0.var2;
  *&retstr->var0.var7 = v3;
  v4 = *&self->var1.var9;
  *&retstr->var1.var0 = *&self->var1.var2;
  *&retstr->var1.var4 = v4;
  return self;
}

- (void)setConfiguration:(id *)configuration
{
  v3 = *&configuration->var0.var0;
  v4 = *&configuration->var0.var7;
  v5 = *&configuration->var1.var0;
  *&self->_configuration.externalCfg.frameDelay = *&configuration->var1.var4;
  *&self->_configuration.externalCfg.lightMode = v5;
  *&self->_configuration.internalCfg.enableColorMask = v4;
  *&self->_configuration.internalCfg.clipThreshold = v3;
}

@end