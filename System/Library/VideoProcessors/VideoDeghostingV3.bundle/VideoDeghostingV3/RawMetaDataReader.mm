@interface RawMetaDataReader
+ (BOOL)_getExposureInfo:(id)a3 info:(float *)a4;
+ (BOOL)_getKeypointsMappingInfoFrom:(id)a3 validWidth:(unint64_t)a4 validHeight:(unint64_t)a5 KeyPointDictionary:(__CFDictionary *)a6 IspInfo:(id *)a7;
+ (BOOL)_getLightSourceMappingInfoFrom:(id)a3 imageValidWidth:(unint64_t)a4 imageValidHeight:(unint64_t)a5 lightSourceDictionary:(__CFDictionary *)a6 lightSourceValidWidth:(unint64_t)a7 lightSourceValidHeight:(unint64_t)a8 ispInfo:(id *)a9;
+ (BOOL)_getRegistrationInfo:(id)a3 validWidth:(unint64_t)a4 validHeight:(unint64_t)a5 keypointDictionary:(__CFDictionary *)a6 ispInfo:(id *)a7;
+ (BOOL)computeMappingMatrices:(id *)a3;
+ (BOOL)isOpticalCenterKeyV2Present:(id)a3;
+ (id)readMetaDataFromDictionary:(id)a3 andValidWidth:(unint64_t)a4 andValidHeight:(unint64_t)a5 andLightSource:(opaqueCMSampleBuffer *)a6 andKeyPoints:(opaqueCMSampleBuffer *)a7;
- (BOOL)readIspConfigInfoFromSei:(id *)a3;
- (BOOL)readIspDistInfoFromSei:(id *)a3;
- (BOOL)readIspExposureInfoFromSei:(id *)a3;
- (BOOL)readIspMappingInfoFromSei:(id *)a3;
- (BOOL)readIspOisInfoFromSei:(id *)a3;
- (BOOL)readIspRegInfoFromSei:(id *)a3 simMatrix:(id)a4;
- (BOOL)readIspScalerInfoFromSei:(id *)a3;
- (BOOL)readLtmInfoFromSei:(const __CFData *)a3;
- (RawMetaDataReader)initWithMetaBuffer:(id)a3;
- (__CFData)ExtractClippingInfoFromRawMetaData:(sCIspMetaDataSharedLocalClipping *)a3;
- (id)readMetaDataInfoFromSimulation:(id)a3;
- (void)setInstanceVariablesFrom:(id)a3;
@end

@implementation RawMetaDataReader

- (RawMetaDataReader)initWithMetaBuffer:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = RawMetaDataReader;
  v6 = [(RawMetaDataReader *)&v10 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->inputDictionary, a3);
  v8 = [v5 objectForKeyedSubscript:@"RawMetaData"];
  if (v8)
  {
    [(RawMetaDataReader *)v7 setInstanceVariablesFrom:v8];

LABEL_4:
    v8 = v7;
  }

  return v8;
}

- (void)setInstanceVariablesFrom:(id)a3
{
  v5 = a3;
  v6 = [a3 bytes];
  self->pMetadata = v6;
  var3 = v6->var3;
  if (var3)
  {
    var4 = v6->var4;
    if (var4)
    {
      self->pMetaDataInput = (v6 + var4);
    }

    if (var3 != 1)
    {
      v9 = v6->var5[0];
      if (v9)
      {
        self->pMetaDataOutput = (v6 + v9);
      }

      if (var3 >= 3)
      {
        v10 = v6->var5[1];
        if (v10)
        {
          self->pMetaDataAE = (v6 + v10);
        }

        if (var3 >= 0xE)
        {
          v11 = v6->var5[12];
          if (v11)
          {
            self->pMetadataOIS = (v6 + v11);
          }

          if (var3 >= 0x1F)
          {
            v12 = v6->var5[29];
            if (v12)
            {
              self->pMetaDataSharedDistortion = (v6 + v12);
            }

            if (var3 >= 0x40)
            {
              v13 = v6->var5[62];
              if (v13)
              {
                self->pMetaDataSharedLocalClipping = (v6 + v13);
              }
            }
          }
        }
      }
    }
  }
}

- (__CFData)ExtractClippingInfoFromRawMetaData:(sCIspMetaDataSharedLocalClipping *)a3
{
  v4 = 0;
  v5 = 0;
  v6 = 0xFFFF;
  v7 = -1;
  v8 = -1;
  v9 = 0xFFFF;
  do
  {
    v10 = a3->var0[v4];
    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_18;
      }

      if (v10 == 1)
      {
        v8 = v4;
      }
    }

    else
    {
      if (v10 == 2)
      {
        v11 = v4;
      }

      else
      {
        v11 = v9;
      }

      if (v10 == 3)
      {
        v11 = v9;
        v12 = v4;
      }

      else
      {
        v12 = v6;
      }

      if (v10 == 4)
      {
        v7 = v4;
      }

      else
      {
        v9 = v11;
      }

      if (v10 != 4)
      {
        v6 = v12;
      }
    }

    ++v5;
LABEL_18:
    ++v4;
  }

  while (v4 != 4);
  v13 = 2 * v5 * a3->var1.var2 * a3->var1.var3;
  if (!v13)
  {
    [RawMetaDataReader ExtractClippingInfoFromRawMetaData:];
LABEL_26:
    v15 = 0;
LABEL_29:
    free(v15);
    return 0;
  }

  if (v13 >= 0x181)
  {
    [RawMetaDataReader ExtractClippingInfoFromRawMetaData:];
    goto LABEL_26;
  }

  v14 = malloc_type_malloc((v13 + 44), 0x1000040DE9E61F1uLL);
  v15 = v14;
  if (!v14)
  {
    [RawMetaDataReader ExtractClippingInfoFromRawMetaData:];
    goto LABEL_29;
  }

  *v14 = 1;
  *(v14 + 1) = v13 + 44;
  *(v14 + 8) = vextq_s8(a3->var1, vuzp1q_s32(a3->var1, vdupq_lane_s32(*&a3->var1.var0, 1)), 0xCuLL);
  *(v14 + 12) = a3->var6;
  *(v14 + 7) = a3->var4;
  *(v14 + 16) = a3->var2;
  *(v14 + 17) = v9;
  *(v14 + 20) = v8;
  *(v14 + 18) = a3->var3;
  *(v14 + 19) = v7;
  *(v14 + 21) = v6;
  memcpy(v14 + 44, a3->var5, v13);
  result = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v15, (v13 + 44), kCFAllocatorMalloc);
  if (!result)
  {
    [RawMetaDataReader ExtractClippingInfoFromRawMetaData:];
    goto LABEL_29;
  }

  return result;
}

+ (BOOL)computeMappingMatrices:(id *)a3
{
  x = a3->var2.var7.origin.x;
  y = a3->var2.var7.origin.y;
  width = a3->var2.var7.size.width;
  height = a3->var2.var7.size.height;
  v7 = a3->var2.var1.size.width / a3->var2.var2.width;
  v8 = a3->var2.var1.size.height / a3->var2.var2.height;
  v9 = vadd_f32(*&a3->var1.var0, *&a3->var1.var0);
  v10 = vmvn_s8(vceqz_f32(v9));
  if (v10.i8[0])
  {
    v7 = v7 * v9.f32[0];
  }

  v11 = v8 * v9.f32[0];
  if (v10.i8[4])
  {
    v8 = v11;
  }

  v12 = a3->var2.var1.origin.x - x;
  v13 = a3->var2.var1.origin.y - y;
  *&a3->var3.var0[1] = 0;
  *&a3->var3.var0[3] = 0u;
  *&a3->var3.var0[7] = 0x3F80000000000000;
  a3->var3.var0[0] = v7;
  a3->var3.var0[2] = v12;
  a3->var3.var0[4] = v8;
  a3->var3.var0[5] = v13;
  v14 = a3->var2.var5.size.width / a3->var2.var6.width;
  v15 = a3->var2.var5.size.height / a3->var2.var6.height;
  v16 = a3->var2.var5.origin.x - x;
  v17 = a3->var2.var5.origin.y - y;
  a3->var3.var1[7] = 0.0;
  *&a3->var3.var1[5] = 0;
  *&a3->var3.var1[1] = 0u;
  a3->var3.var1[0] = v14;
  a3->var3.var1[2] = v16;
  a3->var3.var1[4] = v15;
  a3->var3.var1[5] = v17;
  a3->var3.var1[8] = 1.0;
  v18 = a3->var2.var3.size.width / a3->var2.var4.width;
  v19 = a3->var2.var3.size.height / a3->var2.var4.height;
  v20 = a3->var2.var3.origin.x - x;
  v21 = a3->var2.var3.origin.y - y;
  a3->var3.var2[7] = 0.0;
  *&a3->var3.var2[5] = 0;
  *&a3->var3.var2[1] = 0u;
  a3->var3.var2[0] = v18;
  a3->var3.var2[2] = v20;
  a3->var3.var2[4] = v19;
  a3->var3.var2[5] = v21;
  a3->var3.var2[8] = 1.0;
  v22 = height;
  v23 = a3->var2.var8.size.width / width;
  v24 = a3->var2.var8.size.height / v22;
  v25 = a3->var2.var8.origin.x - CGRectZero.origin.x;
  v26 = a3->var2.var8.origin.y - CGRectZero.origin.y;
  a3->var3.var3[7] = 0.0;
  *&a3->var3.var3[5] = 0;
  *&a3->var3.var3[1] = 0u;
  a3->var3.var3[0] = v23;
  v27 = v26;
  a3->var3.var3[2] = v25;
  a3->var3.var3[4] = v24;
  a3->var3.var3[5] = v27;
  a3->var3.var3[8] = 1.0;
  return 1;
}

- (BOOL)readIspScalerInfoFromSei:(id *)a3
{
  if (a3)
  {
    if (self->pMetaDataInput)
    {
      if (self->pMetaDataOutput)
      {
        bzero(a3, 0x240uLL);
        pMetaDataInput = self->pMetaDataInput;
        pMetaDataOutput = self->pMetaDataOutput;
        v7 = pMetaDataInput[256] >> 1;
        v8 = pMetaDataInput[257] >> 1;
        a3->var1.var3.x = v7;
        a3->var1.var3.y = v8;
        v9 = vcvtmd_s64_f64(vcvtd_n_f64_u32(v7, 1uLL) * 0.5);
        *&a3->var1.var0 = 0x4000000040000000;
        a3->var1.var4.width = ((v9 + (v9 >> 31)) & 0xFFFFFFFE);
        a3->var1.var4.height = floor(vcvtd_n_f64_u32(v8, 1uLL) * 0.5);
        v10 = *&pMetaDataOutput->var15.var2;
        v11.i64[0] = v10;
        v11.i64[1] = HIDWORD(v10);
        v12 = vcvtq_f64_u64(v11);
        v13 = *&pMetaDataOutput->var21.var2;
        v11.i64[0] = v13;
        v11.i64[1] = HIDWORD(v13);
        v14 = *&pMetaDataOutput->var21.var0;
        v15.i32[0] = pMetaDataInput[254];
        v15.i32[1] = pMetaDataInput[255];
        *a3->var1.var5 = vcvt_f32_f64(vdivq_f64(v12, vcvtq_f64_u64(v11)));
        *&a3->var1.var5[2] = vcvt_f32_s32(vsub_s32(v14, v15));
        a3->var1.var6 = 0x7FFFFFFF;
        return 1;
      }

      [RawMetaDataReader readIspScalerInfoFromSei:];
    }

    else
    {
      [RawMetaDataReader readIspScalerInfoFromSei:];
    }
  }

  else
  {
    [RawMetaDataReader readIspScalerInfoFromSei:];
  }

  return 0;
}

- (BOOL)readIspMappingInfoFromSei:(id *)a3
{
  if (!a3)
  {
    [RawMetaDataReader readIspMappingInfoFromSei:];
    return 0;
  }

  if (!self->pMetaDataInput)
  {
    [RawMetaDataReader readIspMappingInfoFromSei:];
    return 0;
  }

  if (!self->pMetaDataOutput)
  {
    [RawMetaDataReader readIspMappingInfoFromSei:];
    return 0;
  }

  a3->var2.var8.origin = 0u;
  a3->var2.var8.size = 0u;
  a3->var2.var7.origin = 0u;
  a3->var2.var7.size = 0u;
  a3->var2.var5.size = 0u;
  a3->var2.var6 = 0u;
  a3->var2.var4 = 0u;
  a3->var2.var5.origin = 0u;
  a3->var2.var3.origin = 0u;
  a3->var2.var3.size = 0u;
  a3->var2.var1.size = 0u;
  a3->var2.var2 = 0u;
  a3->var2.var0.size = 0u;
  a3->var2.var1.origin = 0u;
  a3->var2.var0.origin = 0u;
  pMetaDataInput = self->pMetaDataInput;
  pMetaDataOutput = self->pMetaDataOutput;
  var173_low = LOWORD(pMetaDataInput->var173);
  LOWORD(v3) = HIWORD(pMetaDataInput->var173);
  v9 = v3;
  LOWORD(v4) = pMetaDataInput->var174;
  LOWORD(v5) = pMetaDataInput->var175;
  a3->var2.var0.origin.x = var173_low;
  a3->var2.var0.origin.y = v9;
  a3->var2.var0.size.width = v4;
  a3->var2.var0.size.height = v5;
  LOWORD(var173_low) = pMetaDataInput->var111;
  v10 = *&var173_low;
  LOWORD(v9) = HIWORD(pMetaDataInput->var111);
  v11 = *&v9;
  var112 = pMetaDataInput->var112;
  LODWORD(pMetaDataInput) = pMetaDataInput->var113;
  a3->var2.var1.origin.x = v10;
  a3->var2.var1.origin.y = v11;
  a3->var2.var1.size.width = var112;
  a3->var2.var1.size.height = pMetaDataInput;
  a3->var2.var2.width = (var112 >> 1);
  a3->var2.var2.height = (pMetaDataInput >> 1);
  a3->var2.var3.origin.x = v10;
  a3->var2.var3.origin.y = v11;
  a3->var2.var3.size.width = var112;
  a3->var2.var3.size.height = pMetaDataInput;
  a3->var2.var4.width = (var112 >> 2);
  a3->var2.var4.height = (pMetaDataInput >> 2);
  a3->var2.var5.origin.x = v10;
  a3->var2.var5.origin.y = v11;
  a3->var2.var5.size.width = var112;
  a3->var2.var5.size.height = pMetaDataInput;
  a3->var2.var6.width = var112;
  a3->var2.var6.height = pMetaDataInput;
  v13 = *&pMetaDataOutput->var21.var0;
  v14.i64[0] = v13;
  v14.i64[1] = SHIDWORD(v13);
  v15 = vcvtq_f64_s64(v14);
  v16 = *&pMetaDataOutput->var21.var2;
  v14.i64[0] = v16;
  v14.i64[1] = HIDWORD(v16);
  a3->var2.var7.origin = v15;
  a3->var2.var7.size = vcvtq_f64_u64(v14);
  v15.x = *&pMetaDataOutput->var15.var0;
  v14.i64[0] = SLODWORD(v15.x);
  v14.i64[1] = SHIDWORD(v15.x);
  v17 = vcvtq_f64_s64(v14);
  v18 = *&pMetaDataOutput->var15.var2;
  v14.i64[0] = v18;
  v14.i64[1] = HIDWORD(v18);
  a3->var2.var8.origin = v17;
  a3->var2.var8.size = vcvtq_f64_u64(v14);
  [RawMetaDataReader computeMappingMatrices:?];
  return 1;
}

- (BOOL)readIspRegInfoFromSei:(id *)a3 simMatrix:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 && self->pMetaDataInput && self->pMetaDataOutput)
  {
    *&a3->var0.var4[7] = 0u;
    *a3->var0.var4 = 0u;
    *&a3->var0.var4[4] = 0u;
    *&a3->var0.var0[4] = 0u;
    *&a3->var0.var0[8] = 0u;
    *a3->var0.var0 = 0u;
    pMetaDataOutput = self->pMetaDataOutput;
    v9 = *pMetaDataOutput->var30;
    v10 = *&pMetaDataOutput->var30[4];
    a3->var0.var0[8] = pMetaDataOutput->var30[8];
    *a3->var0.var0 = v9;
    *&a3->var0.var0[4] = v10;
    v11 = self->pMetaDataOutput;
    a3->var0.var1 = v11->var39;
    a3->var0.var2 = v11->var43;
    if (v6)
    {
      for (i = 0; i != 9; ++i)
      {
        v13 = [v7 objectAtIndexedSubscript:i];
        [v13 floatValue];
        a3->var0.var4[i] = v14;
      }

      a3->var0.var5 = 1;
    }

    a3->var0.var3 = self->pMetaDataInput->var0;
    v15 = 1;
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v15 = 0;
  }

  return v15;
}

- (BOOL)readIspOisInfoFromSei:(id *)a3
{
  if (!a3)
  {
    [RawMetaDataReader readIspOisInfoFromSei:];
    return 0;
  }

  if (!self->pMetadataOIS)
  {
    [RawMetaDataReader readIspOisInfoFromSei:];
    return 0;
  }

  bzero(a3, 0x1FE8uLL);
  pMetadataOIS = self->pMetadataOIS;
  var1 = pMetadataOIS->var1;
  a3->var1 = var1;
  if (var1)
  {
    p_var1 = &a3->var4[0].var1;
    p_var7 = &pMetadataOIS->var4[0].var7;
    do
    {
      *(p_var1 - 1) = *(p_var7 - 3);
      v9 = *p_var7;
      p_var7 += 20;
      *p_var1 = v9;
      p_var1 += 4;
      --var1;
    }

    while (var1);
  }

  return 1;
}

- (BOOL)readIspDistInfoFromSei:(id *)a3
{
  if (!a3)
  {
    [RawMetaDataReader readIspDistInfoFromSei:];
    return 0;
  }

  if (!self->pMetaDataSharedDistortion)
  {
    [RawMetaDataReader readIspDistInfoFromSei:];
    return 0;
  }

  *&a3->var0 = 0u;
  *&a3->var4 = 0u;
  pMetaDataSharedDistortion = self->pMetaDataSharedDistortion;
  *&v4 = *&pMetaDataSharedDistortion->var5;
  *(&v4 + 1) = *&pMetaDataSharedDistortion->var19;
  *&a3->var0 = v4;
  *&a3->var4 = *&pMetaDataSharedDistortion->var23;
  a3->var6 = pMetaDataSharedDistortion->var12;
  return 1;
}

- (BOOL)readIspExposureInfoFromSei:(id *)a3
{
  if (!a3)
  {
    [RawMetaDataReader readIspExposureInfoFromSei:];
    return 0;
  }

  if (!self->pMetaDataInput)
  {
    [RawMetaDataReader readIspExposureInfoFromSei:];
    return 0;
  }

  if (!self->pMetaDataAE)
  {
    [RawMetaDataReader readIspExposureInfoFromSei:];
    return 0;
  }

  *a3 = 0;
  pMetaDataAE = self->pMetaDataAE;
  LODWORD(v3) = pMetaDataAE->var0;
  v5 = v3 / 1000000.0;
  a3->var0 = ((vcvts_n_f32_u32(pMetaDataAE->var1, 8uLL) * vcvts_n_f32_u32(pMetaDataAE->var3, 8uLL)) * (pMetaDataAE->var226 / (vcvts_n_f32_u32(self->pMetaDataInput->var69, 8uLL) * 256.0))) * v5;
  a3->var1 = v5;
  return 1;
}

- (BOOL)readLtmInfoFromSei:(const __CFData *)a3
{
  if (a3)
  {
    if (self->pMetaDataSharedLocalClipping)
    {
      v4 = [(RawMetaDataReader *)self ExtractClippingInfoFromRawMetaData:?];
      *a3 = v4;
      if (v4)
      {
        return 1;
      }

      [RawMetaDataReader readLtmInfoFromSei:];
    }

    else
    {
      [RawMetaDataReader readLtmInfoFromSei:];
    }
  }

  else
  {
    [RawMetaDataReader readLtmInfoFromSei:];
  }

  return 0;
}

- (BOOL)readIspConfigInfoFromSei:(id *)a3
{
  if (a3)
  {
    *&a3->var0 = 0;
    *&a3->var2 = 0;
    a3->var0 = self->pMetadata->var0;
  }

  else
  {
    [RawMetaDataReader readIspConfigInfoFromSei:];
  }

  return a3 != 0;
}

- (id)readMetaDataInfoFromSimulation:(id)a3
{
  v3 = __chkstk_darwin(self, a2, a3);
  v5 = v4;
  v26 = 0;
  [v3 readIspConfigInfoFromSei:&v38];
  if (([v3 readIspScalerInfoFromSei:v36] & 1) == 0 || (v39 |= 1u, (objc_msgSend(v3, "readIspMappingInfoFromSei:", v36) & 1) == 0) || (v39 |= 1u, (objc_msgSend(v3, "readIspRegInfoFromSei:simMatrix:", v36, v5) & 1) == 0))
  {
    fig_log_get_emitter();
LABEL_30:
    FigDebugAssert3();
    v8 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_22;
  }

  v39 |= 0x20u;
  if (([v3 readIspOisInfoFromSei:v34] & 1) == 0)
  {
    fig_log_get_emitter();
    goto LABEL_30;
  }

  v39 |= 2u;
  if (([v3 readIspDistInfoFromSei:v27] & 1) == 0 || (v39 |= 8u, (objc_msgSend(v3, "readIspExposureInfoFromSei:", &v37) & 1) == 0))
  {
    fig_log_get_emitter();
    goto LABEL_30;
  }

  v39 |= 4u;
  if (([v3 readLtmInfoFromSei:&v26] & 1) == 0)
  {
    fig_log_get_emitter();
    goto LABEL_30;
  }

  v39 |= 0x10u;
  v6 = +[NSMutableDictionary dictionary];
  v40 = 0x100000001;
  v7 = [NSData dataWithBytes:&v38 length:16];
  [v6 setObject:v7 forKeyedSubscript:@"MetaConfig"];
  v8 = [NSData dataWithBytes:v36 length:576];
  [v6 setObject:v8 forKeyedSubscript:@"IspScalerInfo"];
  LODWORD(v9) = v37;
  v10 = [NSNumber numberWithFloat:v9];
  [v6 setObject:v10 forKeyedSubscript:@"ExposureInfo"];

  v11 = kFigCaptureStreamMetadata_ExposureTime;
  v12 = [v3[1] objectForKeyedSubscript:kFigCaptureStreamMetadata_ExposureTime];
  [v6 setObject:v12 forKeyedSubscript:v11];

  v13 = v3[1];
  v14 = kFigCaptureStreamMetadata_LuxLevel;
  v15 = [v13 objectForKeyedSubscript:kFigCaptureStreamMetadata_LuxLevel];
  [v6 setObject:v15 forKeyedSubscript:v14];

  v16 = &v34[16 * v35];
  v17 = (v32 * 256.0);
  v18 = *v16 * 1000.0 / v17 + ((v30 - v27[0]) / 1000000.0);
  v19 = v16[1] * 1000.0 / v17 + ((v31 - v27[1]) / 1000000.0);
  if (v33)
  {
    v18 = v28 / 1000000.0;
    v19 = v29 / 1000000.0;
  }

  v20 = v38 > 0xF09 || v28 != 0x7FFFFFFF;
  v21 = v38 > 0xF09 || v29 != 0x7FFFFFFF;
  if (v20)
  {
    v18 = ((v28 / 1000000.0) + v18) * 0.5;
  }

  v22 = ((v29 / 1000000.0) + v19) * 0.5;
  if (!v21)
  {
    v22 = v19;
  }

  v42.x = v18;
  v42.y = v22;
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v42);
  [v6 setObject:DictionaryRepresentation forKeyedSubscript:@"OpticalCenter"];

  if ((v39 & 0x10) != 0)
  {
    v24 = v26;
    [v6 setObject:v26 forKeyedSubscript:@"ClippingInfo"];
  }

LABEL_22:

  return v6;
}

+ (BOOL)_getLightSourceMappingInfoFrom:(id)a3 imageValidWidth:(unint64_t)a4 imageValidHeight:(unint64_t)a5 lightSourceDictionary:(__CFDictionary *)a6 lightSourceValidWidth:(unint64_t)a7 lightSourceValidHeight:(unint64_t)a8 ispInfo:(id *)a9
{
  v14 = a3;
  v38 = 0;
  size = CGRectNull.size;
  rect.origin = CGRectNull.origin;
  rect.size = size;
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = a4;
  v36.size.height = a5;
  v35.origin = rect.origin;
  v35.size = size;
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  width = a7;
  height = a8;
  v34.size.width = a7;
  v34.size.height = a8;
  if (!v14 || !a6 || !a9 || !CFDictionaryGetValue(a6, kFigCaptureStreamMetadata_LightSourceMaskInfo) || (FigCFDictionaryGetIntIfPresent(), (Value = CFDictionaryGetValue(v14, kFigCaptureStreamMetadata_SensorRawValidBufferRect)) == 0))
  {
    fig_log_get_emitter();
    goto LABEL_22;
  }

  if (!CGRectMakeWithDictionaryRepresentation(Value, &rect))
  {
    fig_log_get_emitter();
    goto LABEL_22;
  }

  v17 = kFigCaptureStreamMetadata_ValidBufferRect;
  v18 = CFDictionaryGetValue(v14, kFigCaptureStreamMetadata_ValidBufferRect);
  if (v18 && !CGRectMakeWithDictionaryRepresentation(v18, &v36) || (v19 = CFDictionaryGetValue(a6, kFigCaptureStreamMetadata_TotalSensorCropRect)) == 0)
  {
    fig_log_get_emitter();
    goto LABEL_22;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v19, &v35))
  {
    fig_log_get_emitter();
    goto LABEL_22;
  }

  v20 = CFDictionaryGetValue(a6, v17);
  if (v20)
  {
    if (CGRectMakeWithDictionaryRepresentation(v20, &v34))
    {
      width = v34.size.width;
      height = v34.size.height;
      goto LABEL_14;
    }

    fig_log_get_emitter();
LABEL_22:
    FigDebugAssert3();
    v30 = 0;
    goto LABEL_15;
  }

LABEL_14:
  *&a9->var1.var0 = 0;
  a9->var1.var4.width = width;
  a9->var1.var4.height = height;
  v21.f64[0] = width;
  v21.f64[1] = height;
  origin = rect.origin;
  v22 = rect.size;
  *a9->var1.var5 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(rect.size, v21)), vsubq_f64(rect.origin, v35.origin));
  a9->var1.var6 = v38;
  v24 = v35.size;
  a9->var2.var1.origin = v35.origin;
  a9->var2.var1.size = v24;
  a9->var2.var2.width = width;
  a9->var2.var2.height = height;
  a9->var2.var7.origin = origin;
  a9->var2.var7.size = v22;
  v25 = v36.size;
  a9->var2.var8.origin = v36.origin;
  a9->var2.var8.size = v25;
  v26 = a9->var2.var7.size.width;
  v27 = a9->var2.var7.size.height;
  *&v22.width = a9->var2.var1.size.width / width;
  v28 = a9->var2.var1.size.height / height;
  *&v24.width = a9->var2.var1.origin.x - a9->var2.var7.origin.x;
  *&v25.width = a9->var2.var1.origin.y - a9->var2.var7.origin.y;
  *&a9->var3.var0[1] = 0u;
  *&a9->var3.var0[5] = 0;
  *&a9->var3.var0[7] = 0x3F80000000000000;
  a9->var3.var0[0] = *&v22.width;
  a9->var3.var0[2] = *&v24.width;
  a9->var3.var0[4] = v28;
  a9->var3.var0[5] = *&v25.width;
  *&v22.width = a9->var2.var8.size.width / v26;
  v29 = a9->var2.var8.size.height / v27;
  *&v24.width = a9->var2.var8.origin.x - CGRectZero.origin.x;
  v25.width = a9->var2.var8.origin.y - CGRectZero.origin.y;
  *&a9->var3.var3[1] = 0u;
  *&a9->var3.var3[5] = 0;
  *&a9->var3.var3[7] = 0x3F80000000000000;
  a9->var3.var3[0] = *&v22.width;
  a9->var3.var3[2] = *&v24.width;
  *&v24.width = v25.width;
  a9->var3.var3[4] = v29;
  a9->var3.var3[5] = *&v24.width;
  v30 = 1;
LABEL_15:

  return v30;
}

+ (BOOL)_getKeypointsMappingInfoFrom:(id)a3 validWidth:(unint64_t)a4 validHeight:(unint64_t)a5 KeyPointDictionary:(__CFDictionary *)a6 IspInfo:(id *)a7
{
  v11 = a3;
  v12 = v11;
  v40.origin.x = 0.0;
  v40.origin.y = 0.0;
  v40.size.width = a4;
  v40.size.height = a5;
  v13 = CGRectNull.size;
  rect.origin = CGRectNull.origin;
  rect.size = v13;
  v38.origin = rect.origin;
  v38.size = v13;
  v14 = CGRectNull.size;
  v37.origin = CGRectNull.origin;
  v37.size = v14;
  if (!v11 || !a6 || !a7 || (Value = CFDictionaryGetValue(v11, kFigCaptureStreamMetadata_SensorRawValidBufferRect)) == 0)
  {
    fig_log_get_emitter();
LABEL_23:
    FigDebugAssert3();
    v34 = 0;
    goto LABEL_15;
  }

  if (!CGRectMakeWithDictionaryRepresentation(Value, &rect) || (v16 = CFDictionaryGetValue(v12, kFigCaptureStreamMetadata_ValidBufferRect)) != 0 && !CGRectMakeWithDictionaryRepresentation(v16, &v40) || (v17 = CFDictionaryGetValue(a6, kFigCaptureStreamImageRegistrationInfoKey_KeypointDescriptorSensorCropRect)) == 0)
  {
    fig_log_get_emitter();
    goto LABEL_23;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v17, &v38) || (v18 = CFDictionaryGetValue(a6, kFigCaptureStreamImageRegistrationInfoKey_KeypointDescriptorImageSize)) == 0)
  {
    fig_log_get_emitter();
    goto LABEL_23;
  }

  if (!CGSizeMakeWithDictionaryRepresentation(v18, &size) || (v19 = CFDictionaryGetValue(a6, kFigCaptureStreamImageRegistrationInfoKey_HomographySensorCropRect)) == 0 || !CGRectMakeWithDictionaryRepresentation(v19, &v37))
  {
    fig_log_get_emitter();
    goto LABEL_23;
  }

  v20 = v38.size;
  a7->var2.var3.origin = v38.origin;
  a7->var2.var3.size = v20;
  v20.width = size.width;
  height = size.height;
  a7->var2.var4.width = size.width;
  a7->var2.var4.height = height;
  v22 = v37.size;
  a7->var2.var5.origin = v37.origin;
  a7->var2.var5.size = v22;
  width = v37.size.width;
  v22.width = v37.size.height;
  a7->var2.var6.width = v37.size.width;
  a7->var2.var6.height = v22.width;
  v24 = rect.size;
  a7->var2.var7.origin = rect.origin;
  a7->var2.var7.size = v24;
  v25 = v40.size;
  a7->var2.var8.origin = v40.origin;
  a7->var2.var8.size = v25;
  x = a7->var2.var7.origin.x;
  y = a7->var2.var7.origin.y;
  v28 = a7->var2.var7.size.width;
  v29 = a7->var2.var7.size.height;
  v30 = v22.width;
  *&v22.width = a7->var2.var5.size.width / width;
  v31 = a7->var2.var5.size.height / v30;
  *&v25.width = a7->var2.var5.origin.x - x;
  v32 = a7->var2.var5.origin.y - y;
  *&a7->var3.var1[1] = 0u;
  *&a7->var3.var1[5] = 0;
  *&a7->var3.var1[7] = 0x3F80000000000000;
  a7->var3.var1[0] = *&v22.width;
  a7->var3.var1[2] = *&v25.width;
  a7->var3.var1[4] = v31;
  a7->var3.var1[5] = v32;
  v33 = height;
  *&height = a7->var2.var3.size.width / v20.width;
  *&v25.width = a7->var2.var3.size.height / v33;
  *&v20.width = a7->var2.var3.origin.x - x;
  *&v22.width = a7->var2.var3.origin.y - y;
  a7->var3.var2[7] = 0.0;
  *&a7->var3.var2[5] = 0;
  *&a7->var3.var2[1] = 0u;
  a7->var3.var2[0] = *&height;
  a7->var3.var2[2] = *&v20.width;
  a7->var3.var2[4] = *&v25.width;
  a7->var3.var2[5] = *&v22.width;
  a7->var3.var2[8] = 1.0;
  *&v22.width = a7->var2.var8.size.width / v28;
  *&v25.width = a7->var2.var8.size.height / v29;
  *&height = a7->var2.var8.origin.x - CGRectZero.origin.x;
  v20.width = a7->var2.var8.origin.y - CGRectZero.origin.y;
  a7->var3.var3[7] = 0.0;
  *&a7->var3.var3[5] = 0;
  *&a7->var3.var3[1] = 0u;
  a7->var3.var3[0] = *&v22.width;
  a7->var3.var3[2] = *&height;
  a7->var3.var3[4] = *&v25.width;
  *&height = v20.width;
  a7->var3.var3[5] = *&height;
  a7->var3.var3[8] = 1.0;
  v34 = 1;
LABEL_15:

  return v34;
}

+ (BOOL)_getRegistrationInfo:(id)a3 validWidth:(unint64_t)a4 validHeight:(unint64_t)a5 keypointDictionary:(__CFDictionary *)a6 ispInfo:(id *)a7
{
  v11 = a3;
  v12 = v11;
  v22 = 0;
  v21 = 0;
  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  rect.size.width = a4;
  rect.size.height = a5;
  if (!v11)
  {
    goto LABEL_17;
  }

  if (!a6)
  {
    goto LABEL_17;
  }

  if (!a7)
  {
    goto LABEL_17;
  }

  v13 = [(__CFDictionary *)v11 objectForKeyedSubscript:kFigCaptureStreamMetadata_SensorID];
  v14 = [v13 intValue];

  if (!v14 || !CFDictionaryGetValue(a6, kFigCaptureStreamImageRegistrationInfoKey_RegistrationHomography))
  {
    goto LABEL_17;
  }

  v15 = 0;
  v16 = a7;
  do
  {
    if (!FigCFArrayGetFloatAtIndex())
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      goto LABEL_22;
    }

    ++v15;
    v16 = (v16 + 4);
  }

  while (v15 != 9);
  if (FigCFDictionaryGetIntIfPresent() && (a7->var0.var1 = HIDWORD(v22), FigCFDictionaryGetFloatIfPresent()) && FigCFDictionaryGetIntIfPresent())
  {
    LODWORD(a7->var0.var2) = v22;
    a7->var0.var3 = v14;
    a7->var0.var6 = v21;
    Value = CFDictionaryGetValue(v12, kFigCaptureStreamMetadata_ValidBufferRect);
    if (!Value || CGRectMakeWithDictionaryRepresentation(Value, &rect))
    {
      v18 = 1;
      goto LABEL_15;
    }

    fig_log_get_emitter();
  }

  else
  {
LABEL_17:
    fig_log_get_emitter();
  }

  FigDebugAssert3();
LABEL_22:
  v18 = 0;
LABEL_15:

  return v18;
}

+ (BOOL)_getExposureInfo:(id)a3 info:(float *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && a4 && ([v5 objectForKeyedSubscript:kFigCaptureStreamMetadata_AGC], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "intValue"), v7, v8))
  {
    v9 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_ispDGain];
    v10 = [v9 intValue];

    v11 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_sensorDGain];
    LODWORD(v9) = [v11 intValue];

    v12 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_ispDGainRangeExpansionFactor];
    [v12 doubleValue];
    v14 = v13;

    v15 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_ExposureTime];
    [v15 doubleValue];
    v17 = v16;

    v18 = v10 / (v14 * 256.0) * (vcvts_n_f32_s32(v8, 8uLL) * vcvts_n_f32_s32(v9, 8uLL));
    v19 = v17 * v18;
    *a4 = v19;
    v20 = 1;
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v20 = 0;
  }

  return v20;
}

+ (BOOL)isOpticalCenterKeyV2Present:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:kFigCaptureStreamMetadata_DistortionOpticalCenterV2];
  v4 = v3 != 0;

  return v4;
}

+ (id)readMetaDataFromDictionary:(id)a3 andValidWidth:(unint64_t)a4 andValidHeight:(unint64_t)a5 andLightSource:(opaqueCMSampleBuffer *)a6 andKeyPoints:(opaqueCMSampleBuffer *)a7
{
  v9 = a3;
  v36[0] = 0;
  v34 = 0;
  v35 = 0;
  bzero(v33, 0x240uLL);
  v31 = v9;
  v32 = +[NSMutableDictionary dictionary];
  if (v9)
  {
    v34 = 0;
    v35 = 0;
    if ([RawMetaDataReader _getExposureInfo:v9 info:v36])
    {
      LODWORD(v10) = v36[0];
      v11 = [NSNumber numberWithFloat:v10];
      [v32 setObject:v11 forKeyedSubscript:@"ExposureInfo"];
    }

    v12 = kFigCaptureStreamMetadata_ExposureTime;
    v30 = [v31 objectForKeyedSubscript:kFigCaptureStreamMetadata_ExposureTime];
    if (v30)
    {
      [v32 setObject:v30 forKeyedSubscript:v12];
    }

    v13 = [v31 objectForKeyedSubscript:kFigCaptureStreamMetadata_DistortionOpticalCenterV2];
    if (v13)
    {
      [v32 setObject:v13 forKeyedSubscript:@"OpticalCenter"];
    }

    v14 = kFigCaptureStreamMetadata_LuxLevel;
    v15 = [v31 objectForKeyedSubscript:kFigCaptureStreamMetadata_LuxLevel];
    if (v15)
    {
      [v32 setObject:v15 forKeyedSubscript:v14];
    }

    bzero(v33, 0x240uLL);
    if (a7)
    {
      v16 = CMGetAttachment(a7, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
      if (v16)
      {
        Value = CFDictionaryGetValue(v16, kFigCaptureStreamMetadata_ImageRegistrationInfo);
        if (Value)
        {
          v18 = [RawMetaDataReader _getRegistrationInfo:v31 validWidth:a4 validHeight:a5 keypointDictionary:Value ispInfo:v33];
          if ((v18 & [RawMetaDataReader _getKeypointsMappingInfoFrom:v31 validWidth:a4 validHeight:a5 KeyPointDictionary:Value IspInfo:v33]) == 1)
          {
            LODWORD(v35) = 1;
          }
        }
      }
    }

    if (!a6)
    {
      goto LABEL_28;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(a6);
    v20 = ImageBuffer;
    if (!ImageBuffer)
    {
      goto LABEL_28;
    }

    Width = CVPixelBufferGetWidth(ImageBuffer);
    Height = CVPixelBufferGetHeight(v20);
    v23 = CMGetAttachment(a6, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    if (v23 && [RawMetaDataReader _getLightSourceMappingInfoFrom:v31 imageValidWidth:a4 imageValidHeight:a5 lightSourceDictionary:v23 lightSourceValidWidth:Width lightSourceValidHeight:Height ispInfo:v33])
    {
      HIDWORD(v35) = 1;
    }

    HIDWORD(v34) = 1;
    v24 = [NSData dataWithBytes:&v34 length:16];
    if (v24)
    {
      [v32 setObject:v24 forKeyedSubscript:@"MetaConfig"];
      v25 = [NSData dataWithBytes:v33 length:576];
      if (v25)
      {
        [v32 setObject:v25 forKeyedSubscript:@"IspScalerInfo"];
        v26 = [v31 objectForKeyedSubscript:kFigCaptureStreamMetadata_ScalingFactor];
        if (v26)
        {
          [v32 setObject:v26 forKeyedSubscript:@"ScalingFactor"];
        }

        else
        {
          fig_log_get_emitter();
          FigDebugAssert3();
          v26 = 0;
        }
      }

      else
      {
        fig_log_get_emitter();
        FigDebugAssert3();
        v25 = 0;
        v26 = 0;
      }
    }

    else
    {
LABEL_28:
      fig_log_get_emitter();
      FigDebugAssert3();
      v25 = 0;
      v24 = 0;
      v26 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    v15 = 0;
    v30 = 0;
    v13 = 0;
    FigDebugAssert3();
    v25 = 0;
    v24 = 0;
    v26 = 0;
  }

  return v32;
}

- (uint64_t)ExtractClippingInfoFromRawMetaData:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)ExtractClippingInfoFromRawMetaData:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)ExtractClippingInfoFromRawMetaData:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)ExtractClippingInfoFromRawMetaData:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspScalerInfoFromSei:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspScalerInfoFromSei:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspScalerInfoFromSei:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspMappingInfoFromSei:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspMappingInfoFromSei:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspMappingInfoFromSei:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspOisInfoFromSei:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspOisInfoFromSei:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspDistInfoFromSei:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspDistInfoFromSei:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspExposureInfoFromSei:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspExposureInfoFromSei:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspExposureInfoFromSei:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readLtmInfoFromSei:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readLtmInfoFromSei:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readLtmInfoFromSei:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)readIspConfigInfoFromSei:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end