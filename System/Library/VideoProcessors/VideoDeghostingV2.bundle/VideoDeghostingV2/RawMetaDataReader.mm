@interface RawMetaDataReader
+ (BOOL)_getExposureInfo:(id)info info:(float *)a4;
+ (BOOL)_getKeypointsMappingInfoFrom:(id)from validWidth:(unint64_t)width validHeight:(unint64_t)height KeyPointDictionary:(__CFDictionary *)dictionary IspInfo:(id *)info;
+ (BOOL)_getLightSourceMappingInfoFrom:(id)from imageValidWidth:(unint64_t)width imageValidHeight:(unint64_t)height lightSourceDictionary:(__CFDictionary *)dictionary lightSourceValidWidth:(unint64_t)validWidth lightSourceValidHeight:(unint64_t)validHeight ispInfo:(id *)info;
+ (BOOL)_getRegistrationInfo:(id)info validWidth:(unint64_t)width validHeight:(unint64_t)height keypointDictionary:(__CFDictionary *)dictionary ispInfo:(id *)ispInfo;
+ (BOOL)computeMappingMatrices:(id *)matrices;
+ (BOOL)isOpticalCenterKeyV2Present:(id)present;
+ (id)readMetaDataFromDictionary:(id)dictionary andValidWidth:(unint64_t)width andValidHeight:(unint64_t)height andLightSource:(opaqueCMSampleBuffer *)source andKeyPoints:(opaqueCMSampleBuffer *)points;
- (BOOL)readIspConfigInfoFromSei:(id *)sei;
- (BOOL)readIspDistInfoFromSei:(id *)sei;
- (BOOL)readIspExposureInfoFromSei:(id *)sei;
- (BOOL)readIspMappingInfoFromSei:(id *)sei;
- (BOOL)readIspOisInfoFromSei:(id *)sei;
- (BOOL)readIspRegInfoFromSei:(id *)sei simMatrix:(id)matrix;
- (BOOL)readIspScalerInfoFromSei:(id *)sei;
- (BOOL)readLtmInfoFromSei:(const __CFData *)sei;
- (RawMetaDataReader)initWithMetaBuffer:(id)buffer;
- (__CFData)ExtractClippingInfoFromRawMetaData:(sCIspMetaDataSharedLocalClipping *)data;
- (id)readMetaDataInfoFromSimulation:(id)simulation;
- (void)setInstanceVariablesFrom:(id)from;
@end

@implementation RawMetaDataReader

- (RawMetaDataReader)initWithMetaBuffer:(id)buffer
{
  bufferCopy = buffer;
  v10.receiver = self;
  v10.super_class = RawMetaDataReader;
  v6 = [(RawMetaDataReader *)&v10 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->inputDictionary, buffer);
  v8 = [bufferCopy objectForKeyedSubscript:@"RawMetaData"];
  if (v8)
  {
    [(RawMetaDataReader *)v7 setInstanceVariablesFrom:v8];

LABEL_4:
    v8 = v7;
  }

  return v8;
}

- (void)setInstanceVariablesFrom:(id)from
{
  fromCopy = from;
  bytes = [from bytes];
  self->pMetadata = bytes;
  var3 = bytes->var3;
  if (var3)
  {
    var4 = bytes->var4;
    if (var4)
    {
      self->pMetaDataInput = (bytes + var4);
    }

    if (var3 != 1)
    {
      v9 = bytes->var5[0];
      if (v9)
      {
        self->pMetaDataOutput = (bytes + v9);
      }

      if (var3 >= 3)
      {
        v10 = bytes->var5[1];
        if (v10)
        {
          self->pMetaDataAE = (bytes + v10);
        }

        if (var3 >= 0xE)
        {
          v11 = bytes->var5[12];
          if (v11)
          {
            self->pMetadataOIS = (bytes + v11);
          }

          if (var3 >= 0x1F)
          {
            v12 = bytes->var5[29];
            if (v12)
            {
              self->pMetaDataSharedDistortion = (bytes + v12);
            }

            if (var3 >= 0x40)
            {
              v13 = bytes->var5[62];
              if (v13)
              {
                self->pMetaDataSharedLocalClipping = (bytes + v13);
              }
            }
          }
        }
      }
    }
  }
}

- (__CFData)ExtractClippingInfoFromRawMetaData:(sCIspMetaDataSharedLocalClipping *)data
{
  v4 = 0;
  v5 = 0;
  v6 = 0xFFFF;
  v7 = -1;
  v8 = -1;
  v9 = 0xFFFF;
  do
  {
    v10 = data->var0[v4];
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
  v13 = 2 * v5 * data->var1.var2 * data->var1.var3;
  if (!v13)
  {
    sub_256F0();
LABEL_26:
    v15 = 0;
LABEL_29:
    free(v15);
    return 0;
  }

  if (v13 >= 0x181)
  {
    sub_25678();
    goto LABEL_26;
  }

  v14 = malloc_type_malloc((v13 + 44), 0x1000040DE9E61F1uLL);
  v15 = v14;
  if (!v14)
  {
    sub_25600();
    goto LABEL_29;
  }

  *v14 = 1;
  *(v14 + 1) = v13 + 44;
  *(v14 + 8) = vextq_s8(data->var1, vuzp1q_s32(data->var1, vdupq_lane_s32(*&data->var1.var0, 1)), 0xCuLL);
  *(v14 + 12) = data->var6;
  *(v14 + 7) = data->var4;
  *(v14 + 16) = data->var2;
  *(v14 + 17) = v9;
  *(v14 + 20) = v8;
  *(v14 + 18) = data->var3;
  *(v14 + 19) = v7;
  *(v14 + 21) = v6;
  memcpy(v14 + 44, data->var5, v13);
  result = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v15, (v13 + 44), kCFAllocatorMalloc);
  if (!result)
  {
    sub_25588();
    goto LABEL_29;
  }

  return result;
}

+ (BOOL)computeMappingMatrices:(id *)matrices
{
  x = matrices->var2.var7.origin.x;
  y = matrices->var2.var7.origin.y;
  width = matrices->var2.var7.size.width;
  height = matrices->var2.var7.size.height;
  v7 = matrices->var2.var1.size.width / matrices->var2.var2.width;
  v8 = matrices->var2.var1.size.height / matrices->var2.var2.height;
  v9 = vadd_f32(*&matrices->var1.var0, *&matrices->var1.var0);
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

  v12 = matrices->var2.var1.origin.x - x;
  v13 = matrices->var2.var1.origin.y - y;
  *&matrices->var3.var0[1] = 0;
  *&matrices->var3.var0[3] = 0u;
  *&matrices->var3.var0[7] = 0x3F80000000000000;
  matrices->var3.var0[0] = v7;
  matrices->var3.var0[2] = v12;
  matrices->var3.var0[4] = v8;
  matrices->var3.var0[5] = v13;
  v14 = matrices->var2.var5.size.width / matrices->var2.var6.width;
  v15 = matrices->var2.var5.size.height / matrices->var2.var6.height;
  v16 = matrices->var2.var5.origin.x - x;
  v17 = matrices->var2.var5.origin.y - y;
  matrices->var3.var1[7] = 0.0;
  *&matrices->var3.var1[5] = 0;
  *&matrices->var3.var1[1] = 0u;
  matrices->var3.var1[0] = v14;
  matrices->var3.var1[2] = v16;
  matrices->var3.var1[4] = v15;
  matrices->var3.var1[5] = v17;
  matrices->var3.var1[8] = 1.0;
  v18 = matrices->var2.var3.size.width / matrices->var2.var4.width;
  v19 = matrices->var2.var3.size.height / matrices->var2.var4.height;
  v20 = matrices->var2.var3.origin.x - x;
  v21 = matrices->var2.var3.origin.y - y;
  matrices->var3.var2[7] = 0.0;
  *&matrices->var3.var2[5] = 0;
  *&matrices->var3.var2[1] = 0u;
  matrices->var3.var2[0] = v18;
  matrices->var3.var2[2] = v20;
  matrices->var3.var2[4] = v19;
  matrices->var3.var2[5] = v21;
  matrices->var3.var2[8] = 1.0;
  v22 = height;
  v23 = matrices->var2.var8.size.width / width;
  v24 = matrices->var2.var8.size.height / v22;
  v25 = matrices->var2.var8.origin.x - CGRectZero.origin.x;
  v26 = matrices->var2.var8.origin.y - CGRectZero.origin.y;
  matrices->var3.var3[7] = 0.0;
  *&matrices->var3.var3[5] = 0;
  *&matrices->var3.var3[1] = 0u;
  matrices->var3.var3[0] = v23;
  v27 = v26;
  matrices->var3.var3[2] = v25;
  matrices->var3.var3[4] = v24;
  matrices->var3.var3[5] = v27;
  matrices->var3.var3[8] = 1.0;
  return 1;
}

- (BOOL)readIspScalerInfoFromSei:(id *)sei
{
  if (sei)
  {
    if (self->pMetaDataInput)
    {
      if (self->pMetaDataOutput)
      {
        bzero(sei, 0x240uLL);
        pMetaDataInput = self->pMetaDataInput;
        pMetaDataOutput = self->pMetaDataOutput;
        v7 = pMetaDataInput[256] >> 1;
        v8 = pMetaDataInput[257] >> 1;
        sei->var1.var3.x = v7;
        sei->var1.var3.y = v8;
        v9 = vcvtmd_s64_f64(vcvtd_n_f64_u32(v7, 1uLL) * 0.5);
        *&sei->var1.var0 = 0x4000000040000000;
        sei->var1.var4.width = ((v9 + (v9 >> 31)) & 0xFFFFFFFE);
        sei->var1.var4.height = floor(vcvtd_n_f64_u32(v8, 1uLL) * 0.5);
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
        *sei->var1.var5 = vcvt_f32_f64(vdivq_f64(v12, vcvtq_f64_u64(v11)));
        *&sei->var1.var5[2] = vcvt_f32_s32(vsub_s32(v14, v15));
        sei->var1.var6 = 0x7FFFFFFF;
        return 1;
      }

      sub_25768();
    }

    else
    {
      sub_257E0();
    }
  }

  else
  {
    sub_25858();
  }

  return 0;
}

- (BOOL)readIspMappingInfoFromSei:(id *)sei
{
  if (!sei)
  {
    sub_259C0();
    return 0;
  }

  if (!self->pMetaDataInput)
  {
    sub_25948();
    return 0;
  }

  if (!self->pMetaDataOutput)
  {
    sub_258D0();
    return 0;
  }

  sei->var2.var8.origin = 0u;
  sei->var2.var8.size = 0u;
  sei->var2.var7.origin = 0u;
  sei->var2.var7.size = 0u;
  sei->var2.var5.size = 0u;
  sei->var2.var6 = 0u;
  sei->var2.var4 = 0u;
  sei->var2.var5.origin = 0u;
  sei->var2.var3.origin = 0u;
  sei->var2.var3.size = 0u;
  sei->var2.var1.size = 0u;
  sei->var2.var2 = 0u;
  sei->var2.var0.size = 0u;
  sei->var2.var1.origin = 0u;
  sei->var2.var0.origin = 0u;
  pMetaDataInput = self->pMetaDataInput;
  pMetaDataOutput = self->pMetaDataOutput;
  var173_low = LOWORD(pMetaDataInput->var173);
  LOWORD(v3) = HIWORD(pMetaDataInput->var173);
  v9 = v3;
  LOWORD(v4) = pMetaDataInput->var174;
  LOWORD(v5) = pMetaDataInput->var175;
  sei->var2.var0.origin.x = var173_low;
  sei->var2.var0.origin.y = v9;
  sei->var2.var0.size.width = v4;
  sei->var2.var0.size.height = v5;
  LOWORD(var173_low) = pMetaDataInput->var111;
  v10 = *&var173_low;
  LOWORD(v9) = HIWORD(pMetaDataInput->var111);
  v11 = *&v9;
  var112 = pMetaDataInput->var112;
  LODWORD(pMetaDataInput) = pMetaDataInput->var113;
  sei->var2.var1.origin.x = v10;
  sei->var2.var1.origin.y = v11;
  sei->var2.var1.size.width = var112;
  sei->var2.var1.size.height = pMetaDataInput;
  sei->var2.var2.width = (var112 >> 1);
  sei->var2.var2.height = (pMetaDataInput >> 1);
  sei->var2.var3.origin.x = v10;
  sei->var2.var3.origin.y = v11;
  sei->var2.var3.size.width = var112;
  sei->var2.var3.size.height = pMetaDataInput;
  sei->var2.var4.width = (var112 >> 2);
  sei->var2.var4.height = (pMetaDataInput >> 2);
  sei->var2.var5.origin.x = v10;
  sei->var2.var5.origin.y = v11;
  sei->var2.var5.size.width = var112;
  sei->var2.var5.size.height = pMetaDataInput;
  sei->var2.var6.width = var112;
  sei->var2.var6.height = pMetaDataInput;
  v13 = *&pMetaDataOutput->var21.var0;
  v14.i64[0] = v13;
  v14.i64[1] = SHIDWORD(v13);
  v15 = vcvtq_f64_s64(v14);
  v16 = *&pMetaDataOutput->var21.var2;
  v14.i64[0] = v16;
  v14.i64[1] = HIDWORD(v16);
  sei->var2.var7.origin = v15;
  sei->var2.var7.size = vcvtq_f64_u64(v14);
  v15.x = *&pMetaDataOutput->var15.var0;
  v14.i64[0] = SLODWORD(v15.x);
  v14.i64[1] = SHIDWORD(v15.x);
  v17 = vcvtq_f64_s64(v14);
  v18 = *&pMetaDataOutput->var15.var2;
  v14.i64[0] = v18;
  v14.i64[1] = HIDWORD(v18);
  sei->var2.var8.origin = v17;
  sei->var2.var8.size = vcvtq_f64_u64(v14);
  [RawMetaDataReader computeMappingMatrices:?];
  return 1;
}

- (BOOL)readIspRegInfoFromSei:(id *)sei simMatrix:(id)matrix
{
  matrixCopy = matrix;
  v7 = matrixCopy;
  if (sei && self->pMetaDataInput && self->pMetaDataOutput)
  {
    *&sei->var0.var4[7] = 0u;
    *sei->var0.var4 = 0u;
    *&sei->var0.var4[4] = 0u;
    *&sei->var0.var0[4] = 0u;
    *&sei->var0.var0[8] = 0u;
    *sei->var0.var0 = 0u;
    pMetaDataOutput = self->pMetaDataOutput;
    v9 = *pMetaDataOutput->var30;
    v10 = *&pMetaDataOutput->var30[4];
    sei->var0.var0[8] = pMetaDataOutput->var30[8];
    *sei->var0.var0 = v9;
    *&sei->var0.var0[4] = v10;
    v11 = self->pMetaDataOutput;
    sei->var0.var1 = v11->var39;
    sei->var0.var2 = v11->var43;
    if (matrixCopy)
    {
      for (i = 0; i != 9; ++i)
      {
        v13 = [v7 objectAtIndexedSubscript:i];
        [v13 floatValue];
        sei->var0.var4[i] = v14;
      }

      sei->var0.var5 = 1;
    }

    sei->var0.var3 = self->pMetaDataInput->var0;
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

- (BOOL)readIspOisInfoFromSei:(id *)sei
{
  if (!sei)
  {
    sub_25AB0();
    return 0;
  }

  if (!self->pMetadataOIS)
  {
    sub_25A38();
    return 0;
  }

  bzero(sei, 0x1FE8uLL);
  pMetadataOIS = self->pMetadataOIS;
  var1 = pMetadataOIS->var1;
  sei->var1 = var1;
  if (var1)
  {
    p_var1 = &sei->var4[0].var1;
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

- (BOOL)readIspDistInfoFromSei:(id *)sei
{
  if (!sei)
  {
    sub_25BA0();
    return 0;
  }

  if (!self->pMetaDataSharedDistortion)
  {
    sub_25B28();
    return 0;
  }

  *&sei->var0 = 0u;
  *&sei->var4 = 0u;
  pMetaDataSharedDistortion = self->pMetaDataSharedDistortion;
  *&v4 = *&pMetaDataSharedDistortion->var5;
  *(&v4 + 1) = *&pMetaDataSharedDistortion->var19;
  *&sei->var0 = v4;
  *&sei->var4 = *&pMetaDataSharedDistortion->var23;
  sei->var6 = pMetaDataSharedDistortion->var12;
  return 1;
}

- (BOOL)readIspExposureInfoFromSei:(id *)sei
{
  if (!sei)
  {
    sub_25D08();
    return 0;
  }

  if (!self->pMetaDataInput)
  {
    sub_25C90();
    return 0;
  }

  if (!self->pMetaDataAE)
  {
    sub_25C18();
    return 0;
  }

  *sei = 0;
  pMetaDataAE = self->pMetaDataAE;
  LODWORD(v3) = pMetaDataAE->var0;
  v5 = v3 / 1000000.0;
  sei->var0 = ((vcvts_n_f32_u32(pMetaDataAE->var1, 8uLL) * vcvts_n_f32_u32(pMetaDataAE->var3, 8uLL)) * (pMetaDataAE->var226 / (vcvts_n_f32_u32(self->pMetaDataInput->var69, 8uLL) * 256.0))) * v5;
  sei->var1 = v5;
  return 1;
}

- (BOOL)readLtmInfoFromSei:(const __CFData *)sei
{
  if (sei)
  {
    if (self->pMetaDataSharedLocalClipping)
    {
      v4 = [(RawMetaDataReader *)self ExtractClippingInfoFromRawMetaData:?];
      *sei = v4;
      if (v4)
      {
        return 1;
      }

      sub_25D80();
    }

    else
    {
      sub_25DF8();
    }
  }

  else
  {
    sub_25E70();
  }

  return 0;
}

- (BOOL)readIspConfigInfoFromSei:(id *)sei
{
  if (sei)
  {
    *&sei->var0 = 0;
    *&sei->var2 = 0;
    sei->var0 = self->pMetadata->var0;
  }

  else
  {
    sub_25EE8();
  }

  return sei != 0;
}

- (id)readMetaDataInfoFromSimulation:(id)simulation
{
  v3 = __chkstk_darwin(self, a2, simulation);
  v5 = v4;
  v24 = 0;
  [v3 readIspConfigInfoFromSei:&v36];
  if (([v3 readIspScalerInfoFromSei:v34] & 1) == 0 || (v37 |= 1u, (objc_msgSend(v3, "readIspMappingInfoFromSei:", v34) & 1) == 0) || (v37 |= 1u, (objc_msgSend(v3, "readIspRegInfoFromSei:simMatrix:", v34, v5) & 1) == 0))
  {
    fig_log_get_emitter();
LABEL_30:
    FigDebugAssert3();
    v8 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_22;
  }

  v37 |= 0x20u;
  if (([v3 readIspOisInfoFromSei:v32] & 1) == 0)
  {
    fig_log_get_emitter();
    goto LABEL_30;
  }

  v37 |= 2u;
  if (([v3 readIspDistInfoFromSei:v25] & 1) == 0 || (v37 |= 8u, (objc_msgSend(v3, "readIspExposureInfoFromSei:", &v35) & 1) == 0))
  {
    fig_log_get_emitter();
    goto LABEL_30;
  }

  v37 |= 4u;
  if (([v3 readLtmInfoFromSei:&v24] & 1) == 0)
  {
    fig_log_get_emitter();
    goto LABEL_30;
  }

  v37 |= 0x10u;
  v6 = +[NSMutableDictionary dictionary];
  v38 = 0x100000001;
  v7 = [NSData dataWithBytes:&v36 length:16];
  [v6 setObject:v7 forKeyedSubscript:@"MetaConfig"];
  v8 = [NSData dataWithBytes:v34 length:576];
  [v6 setObject:v8 forKeyedSubscript:@"IspScalerInfo"];
  LODWORD(v9) = v35;
  v10 = [NSNumber numberWithFloat:v9];
  [v6 setObject:v10 forKeyedSubscript:@"ExposureInfo"];

  v11 = v3[1];
  v12 = kFigCaptureStreamMetadata_LuxLevel;
  v13 = [v11 objectForKeyedSubscript:kFigCaptureStreamMetadata_LuxLevel];
  [v6 setObject:v13 forKeyedSubscript:v12];

  v14 = &v32[16 * v33];
  v15 = (v30 * 256.0);
  v16 = *v14 * 1000.0 / v15 + ((v28 - v25[0]) / 1000000.0);
  v17 = v14[1] * 1000.0 / v15 + ((v29 - v25[1]) / 1000000.0);
  if (v31)
  {
    v16 = v26 / 1000000.0;
    v17 = v27 / 1000000.0;
  }

  v18 = v36 > 0xF09 || v26 != 0x7FFFFFFF;
  v19 = v36 > 0xF09 || v27 != 0x7FFFFFFF;
  if (v18)
  {
    v16 = ((v26 / 1000000.0) + v16) * 0.5;
  }

  v20 = ((v27 / 1000000.0) + v17) * 0.5;
  if (!v19)
  {
    v20 = v17;
  }

  v40.x = v16;
  v40.y = v20;
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v40);
  [v6 setObject:DictionaryRepresentation forKeyedSubscript:@"OpticalCenter"];

  if ((v37 & 0x10) != 0)
  {
    v22 = v24;
    [v6 setObject:v24 forKeyedSubscript:@"ClippingInfo"];
  }

LABEL_22:

  return v6;
}

+ (BOOL)_getLightSourceMappingInfoFrom:(id)from imageValidWidth:(unint64_t)width imageValidHeight:(unint64_t)height lightSourceDictionary:(__CFDictionary *)dictionary lightSourceValidWidth:(unint64_t)validWidth lightSourceValidHeight:(unint64_t)validHeight ispInfo:(id *)info
{
  fromCopy = from;
  v38 = 0;
  size = CGRectNull.size;
  rect.origin = CGRectNull.origin;
  rect.size = size;
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = width;
  v36.size.height = height;
  v35.origin = rect.origin;
  v35.size = size;
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  width = validWidth;
  height = validHeight;
  v34.size.width = validWidth;
  v34.size.height = validHeight;
  if (!fromCopy || !dictionary || !info || !CFDictionaryGetValue(dictionary, kFigCaptureStreamMetadata_LightSourceMaskInfo) || (FigCFDictionaryGetIntIfPresent(), (Value = CFDictionaryGetValue(fromCopy, kFigCaptureStreamMetadata_SensorRawValidBufferRect)) == 0))
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
  v18 = CFDictionaryGetValue(fromCopy, kFigCaptureStreamMetadata_ValidBufferRect);
  if (v18 && !CGRectMakeWithDictionaryRepresentation(v18, &v36) || (v19 = CFDictionaryGetValue(dictionary, kFigCaptureStreamMetadata_TotalSensorCropRect)) == 0)
  {
    fig_log_get_emitter();
    goto LABEL_22;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v19, &v35))
  {
    fig_log_get_emitter();
    goto LABEL_22;
  }

  v20 = CFDictionaryGetValue(dictionary, v17);
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
  *&info->var1.var0 = 0;
  info->var1.var4.width = width;
  info->var1.var4.height = height;
  v21.f64[0] = width;
  v21.f64[1] = height;
  origin = rect.origin;
  v22 = rect.size;
  *info->var1.var5 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(rect.size, v21)), vsubq_f64(rect.origin, v35.origin));
  info->var1.var6 = v38;
  v24 = v35.size;
  info->var2.var1.origin = v35.origin;
  info->var2.var1.size = v24;
  info->var2.var2.width = width;
  info->var2.var2.height = height;
  info->var2.var7.origin = origin;
  info->var2.var7.size = v22;
  v25 = v36.size;
  info->var2.var8.origin = v36.origin;
  info->var2.var8.size = v25;
  v26 = info->var2.var7.size.width;
  v27 = info->var2.var7.size.height;
  *&v22.width = info->var2.var1.size.width / width;
  v28 = info->var2.var1.size.height / height;
  *&v24.width = info->var2.var1.origin.x - info->var2.var7.origin.x;
  *&v25.width = info->var2.var1.origin.y - info->var2.var7.origin.y;
  *&info->var3.var0[1] = 0u;
  *&info->var3.var0[5] = 0;
  *&info->var3.var0[7] = 0x3F80000000000000;
  info->var3.var0[0] = *&v22.width;
  info->var3.var0[2] = *&v24.width;
  info->var3.var0[4] = v28;
  info->var3.var0[5] = *&v25.width;
  *&v22.width = info->var2.var8.size.width / v26;
  v29 = info->var2.var8.size.height / v27;
  *&v24.width = info->var2.var8.origin.x - CGRectZero.origin.x;
  v25.width = info->var2.var8.origin.y - CGRectZero.origin.y;
  *&info->var3.var3[1] = 0u;
  *&info->var3.var3[5] = 0;
  *&info->var3.var3[7] = 0x3F80000000000000;
  info->var3.var3[0] = *&v22.width;
  info->var3.var3[2] = *&v24.width;
  *&v24.width = v25.width;
  info->var3.var3[4] = v29;
  info->var3.var3[5] = *&v24.width;
  v30 = 1;
LABEL_15:

  return v30;
}

+ (BOOL)_getKeypointsMappingInfoFrom:(id)from validWidth:(unint64_t)width validHeight:(unint64_t)height KeyPointDictionary:(__CFDictionary *)dictionary IspInfo:(id *)info
{
  fromCopy = from;
  v12 = fromCopy;
  v40.origin.x = 0.0;
  v40.origin.y = 0.0;
  v40.size.width = width;
  v40.size.height = height;
  v13 = CGRectNull.size;
  rect.origin = CGRectNull.origin;
  rect.size = v13;
  v38.origin = rect.origin;
  v38.size = v13;
  v14 = CGRectNull.size;
  v37.origin = CGRectNull.origin;
  v37.size = v14;
  if (!fromCopy || !dictionary || !info || (Value = CFDictionaryGetValue(fromCopy, kFigCaptureStreamMetadata_SensorRawValidBufferRect)) == 0)
  {
    fig_log_get_emitter();
LABEL_23:
    FigDebugAssert3();
    v34 = 0;
    goto LABEL_15;
  }

  if (!CGRectMakeWithDictionaryRepresentation(Value, &rect) || (v16 = CFDictionaryGetValue(v12, kFigCaptureStreamMetadata_ValidBufferRect)) != 0 && !CGRectMakeWithDictionaryRepresentation(v16, &v40) || (v17 = CFDictionaryGetValue(dictionary, kFigCaptureStreamImageRegistrationInfoKey_KeypointDescriptorSensorCropRect)) == 0)
  {
    fig_log_get_emitter();
    goto LABEL_23;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v17, &v38) || (v18 = CFDictionaryGetValue(dictionary, kFigCaptureStreamImageRegistrationInfoKey_KeypointDescriptorImageSize)) == 0)
  {
    fig_log_get_emitter();
    goto LABEL_23;
  }

  if (!CGSizeMakeWithDictionaryRepresentation(v18, &size) || (v19 = CFDictionaryGetValue(dictionary, kFigCaptureStreamImageRegistrationInfoKey_HomographySensorCropRect)) == 0 || !CGRectMakeWithDictionaryRepresentation(v19, &v37))
  {
    fig_log_get_emitter();
    goto LABEL_23;
  }

  v20 = v38.size;
  info->var2.var3.origin = v38.origin;
  info->var2.var3.size = v20;
  v20.width = size.width;
  height = size.height;
  info->var2.var4.width = size.width;
  info->var2.var4.height = height;
  v22 = v37.size;
  info->var2.var5.origin = v37.origin;
  info->var2.var5.size = v22;
  width = v37.size.width;
  v22.width = v37.size.height;
  info->var2.var6.width = v37.size.width;
  info->var2.var6.height = v22.width;
  v24 = rect.size;
  info->var2.var7.origin = rect.origin;
  info->var2.var7.size = v24;
  v25 = v40.size;
  info->var2.var8.origin = v40.origin;
  info->var2.var8.size = v25;
  x = info->var2.var7.origin.x;
  y = info->var2.var7.origin.y;
  v28 = info->var2.var7.size.width;
  v29 = info->var2.var7.size.height;
  v30 = v22.width;
  *&v22.width = info->var2.var5.size.width / width;
  v31 = info->var2.var5.size.height / v30;
  *&v25.width = info->var2.var5.origin.x - x;
  v32 = info->var2.var5.origin.y - y;
  *&info->var3.var1[1] = 0u;
  *&info->var3.var1[5] = 0;
  *&info->var3.var1[7] = 0x3F80000000000000;
  info->var3.var1[0] = *&v22.width;
  info->var3.var1[2] = *&v25.width;
  info->var3.var1[4] = v31;
  info->var3.var1[5] = v32;
  heightCopy = height;
  *&height = info->var2.var3.size.width / v20.width;
  *&v25.width = info->var2.var3.size.height / heightCopy;
  *&v20.width = info->var2.var3.origin.x - x;
  *&v22.width = info->var2.var3.origin.y - y;
  info->var3.var2[7] = 0.0;
  *&info->var3.var2[5] = 0;
  *&info->var3.var2[1] = 0u;
  info->var3.var2[0] = *&height;
  info->var3.var2[2] = *&v20.width;
  info->var3.var2[4] = *&v25.width;
  info->var3.var2[5] = *&v22.width;
  info->var3.var2[8] = 1.0;
  *&v22.width = info->var2.var8.size.width / v28;
  *&v25.width = info->var2.var8.size.height / v29;
  *&height = info->var2.var8.origin.x - CGRectZero.origin.x;
  v20.width = info->var2.var8.origin.y - CGRectZero.origin.y;
  info->var3.var3[7] = 0.0;
  *&info->var3.var3[5] = 0;
  *&info->var3.var3[1] = 0u;
  info->var3.var3[0] = *&v22.width;
  info->var3.var3[2] = *&height;
  info->var3.var3[4] = *&v25.width;
  *&height = v20.width;
  info->var3.var3[5] = *&height;
  info->var3.var3[8] = 1.0;
  v34 = 1;
LABEL_15:

  return v34;
}

+ (BOOL)_getRegistrationInfo:(id)info validWidth:(unint64_t)width validHeight:(unint64_t)height keypointDictionary:(__CFDictionary *)dictionary ispInfo:(id *)ispInfo
{
  infoCopy = info;
  v12 = infoCopy;
  v22 = 0;
  v21 = 0;
  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  rect.size.width = width;
  rect.size.height = height;
  if (!infoCopy)
  {
    goto LABEL_17;
  }

  if (!dictionary)
  {
    goto LABEL_17;
  }

  if (!ispInfo)
  {
    goto LABEL_17;
  }

  v13 = [(__CFDictionary *)infoCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_SensorID];
  intValue = [v13 intValue];

  if (!intValue || !CFDictionaryGetValue(dictionary, kFigCaptureStreamImageRegistrationInfoKey_RegistrationHomography))
  {
    goto LABEL_17;
  }

  v15 = 0;
  ispInfoCopy = ispInfo;
  do
  {
    if (!FigCFArrayGetFloatAtIndex())
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      goto LABEL_22;
    }

    ++v15;
    ispInfoCopy = (ispInfoCopy + 4);
  }

  while (v15 != 9);
  if (FigCFDictionaryGetIntIfPresent() && (ispInfo->var0.var1 = HIDWORD(v22), FigCFDictionaryGetFloatIfPresent()) && FigCFDictionaryGetIntIfPresent())
  {
    LODWORD(ispInfo->var0.var2) = v22;
    ispInfo->var0.var3 = intValue;
    ispInfo->var0.var6 = v21;
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

+ (BOOL)_getExposureInfo:(id)info info:(float *)a4
{
  infoCopy = info;
  v6 = infoCopy;
  if (infoCopy && a4 && ([infoCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_AGC], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "intValue"), v7, v8))
  {
    v9 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_ispDGain];
    intValue = [v9 intValue];

    v11 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_sensorDGain];
    LODWORD(v9) = [v11 intValue];

    v12 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_ispDGainRangeExpansionFactor];
    [v12 doubleValue];
    v14 = v13;

    v15 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_ExposureTime];
    [v15 doubleValue];
    v17 = v16;

    v18 = intValue / (v14 * 256.0) * (vcvts_n_f32_s32(v8, 8uLL) * vcvts_n_f32_s32(v9, 8uLL));
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

+ (BOOL)isOpticalCenterKeyV2Present:(id)present
{
  v3 = [present objectForKeyedSubscript:kFigCaptureStreamMetadata_DistortionOpticalCenterV2];
  v4 = v3 != 0;

  return v4;
}

+ (id)readMetaDataFromDictionary:(id)dictionary andValidWidth:(unint64_t)width andValidHeight:(unint64_t)height andLightSource:(opaqueCMSampleBuffer *)source andKeyPoints:(opaqueCMSampleBuffer *)points
{
  dictionaryCopy = dictionary;
  v33[0] = 0;
  v31 = 0;
  v32 = 0;
  bzero(v30, 0x240uLL);
  v29 = +[NSMutableDictionary dictionary];
  if (dictionaryCopy)
  {
    v31 = 0;
    v32 = 0;
    if ([RawMetaDataReader _getExposureInfo:dictionaryCopy info:v33])
    {
      LODWORD(v11) = v33[0];
      v12 = [NSNumber numberWithFloat:v11];
      [v29 setObject:v12 forKeyedSubscript:@"ExposureInfo"];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_DistortionOpticalCenterV2];
    if (v13)
    {
      [v29 setObject:v13 forKeyedSubscript:@"OpticalCenter"];
    }

    v14 = kFigCaptureStreamMetadata_LuxLevel;
    v15 = [dictionaryCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_LuxLevel];
    if (v15)
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:v14];
      [v29 setObject:v16 forKeyedSubscript:v14];
    }

    bzero(v30, 0x240uLL);
    if (points)
    {
      v17 = CMGetAttachment(points, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
      if (v17)
      {
        Value = CFDictionaryGetValue(v17, kFigCaptureStreamMetadata_ImageRegistrationInfo);
        if (Value)
        {
          v19 = [RawMetaDataReader _getRegistrationInfo:dictionaryCopy validWidth:width validHeight:height keypointDictionary:Value ispInfo:v30];
          if ((v19 & [RawMetaDataReader _getKeypointsMappingInfoFrom:dictionaryCopy validWidth:width validHeight:height KeyPointDictionary:Value IspInfo:v30]) == 1)
          {
            LODWORD(v32) = 1;
          }
        }
      }
    }

    if (!source)
    {
      goto LABEL_25;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(source);
    v21 = ImageBuffer;
    if (!ImageBuffer)
    {
      goto LABEL_25;
    }

    Width = CVPixelBufferGetWidth(ImageBuffer);
    Height = CVPixelBufferGetHeight(v21);
    v24 = CMGetAttachment(source, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    if (v24 && [RawMetaDataReader _getLightSourceMappingInfoFrom:dictionaryCopy imageValidWidth:width imageValidHeight:height lightSourceDictionary:v24 lightSourceValidWidth:Width lightSourceValidHeight:Height ispInfo:v30])
    {
      HIDWORD(v32) = 1;
    }

    HIDWORD(v31) = 1;
    v25 = [NSData dataWithBytes:&v31 length:16];
    if (v25)
    {
      [v29 setObject:v25 forKeyedSubscript:@"MetaConfig"];
      v26 = [NSData dataWithBytes:v30 length:576];
      if (v26)
      {
        [v29 setObject:v26 forKeyedSubscript:@"IspScalerInfo"];
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
LABEL_25:
      fig_log_get_emitter();
      FigDebugAssert3();
      v26 = 0;
      v25 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    v15 = 0;
    v13 = 0;
    FigDebugAssert3();
    v26 = 0;
    v25 = 0;
  }

  return v29;
}

@end