@interface FuseRemixShaders
+ (unsigned)getIdxForOptionsWithIsLuma:(BOOL)luma isTopBand:(BOOL)band isBand0:(BOOL)band0 isFirstBatch:(BOOL)batch isLastBatch:(BOOL)lastBatch usePatchBasedFusion:(BOOL)fusion useGpuCSC:(BOOL)c ggmEnabled:(BOOL)self0;
- (FuseRemixShaders)initWithMetal:(id)metal pixelFormatLuma:(unint64_t)luma pixelFormatChroma:(unint64_t)chroma;
@end

@implementation FuseRemixShaders

+ (unsigned)getIdxForOptionsWithIsLuma:(BOOL)luma isTopBand:(BOOL)band isBand0:(BOOL)band0 isFirstBatch:(BOOL)batch isLastBatch:(BOOL)lastBatch usePatchBasedFusion:(BOOL)fusion useGpuCSC:(BOOL)c ggmEnabled:(BOOL)self0
{
  if (band)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | luma;
  if (band0)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  if (batch)
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  v14 = v11 | v12 | v13;
  if (lastBatch)
  {
    v15 = 16;
  }

  else
  {
    v15 = 0;
  }

  if (fusion)
  {
    v16 = 32;
  }

  else
  {
    v16 = 0;
  }

  v17 = v14 | v15 | v16;
  if (c)
  {
    v18 = 64;
  }

  else
  {
    v18 = 0;
  }

  v19 = v17 | v18;
  if (enabled)
  {
    v20 = 128;
  }

  else
  {
    v20 = 0;
  }

  return v19 | v20;
}

- (FuseRemixShaders)initWithMetal:(id)metal pixelFormatLuma:(unint64_t)luma pixelFormatChroma:(unint64_t)chroma
{
  metalCopy = metal;
  v58 = 0;
  v57 = 1;
  v56.receiver = self;
  v56.super_class = FuseRemixShaders;
  v8 = [(FuseRemixShaders *)&v56 init];
  if (v8)
  {
    v55 = metalCopy;
    for (i = 0; i != 256; ++i)
    {
      v10 = i > 0x7F;
      if ((i & 4) != 0)
      {
        v10 = (i & 2) != 0;
      }

      v11 = &v8->super.isa + i;
      if (v10)
      {
        goto LABEL_12;
      }

      v12 = (i & 4) == 0;
      if ((i & 1) == 0)
      {
        v12 = 1;
      }

      if ((i & 0x20) != 0 && v12 || (i & 0x24) != 4 && (i & 0x40) != 0)
      {
LABEL_12:
        v13 = v11[1];
        v11[1] = 0;
      }

      else
      {
        if (i)
        {
          chromaCopy = luma;
        }

        else
        {
          chromaCopy = chroma;
        }

        if (i)
        {
          v15 = 25;
        }

        else
        {
          v15 = 65;
        }

        v13 = objc_msgSend_getShaderNameWithIsLuma_isTopBand_(FuseRemixShaders, v7, i & 1, (i >> 1) & 1);
        if ((i & 4) == 0)
        {
          v15 = 0;
        }

        v16 = [FuseRemixFragmentShader alloc];
        BYTE2(v52) = i > 0x7F;
        BYTE1(v52) = (i & 0x40) != 0;
        LOBYTE(v52) = (i & 0x20) != 0;
        isLastBatch_usePatchBasedFusion_useGpuCSC_ggmEnabled = objc_msgSend_initWithMetal_fragName_pixelFormat_noisePixelFormat_isFirstBatch_isLastBatch_usePatchBasedFusion_useGpuCSC_ggmEnabled_(v16, v17, v55, v13, chromaCopy, v15, (i >> 3) & 1, (i >> 4) & 1, v52);
        v19 = v11[1];
        v11[1] = isLastBatch_usePatchBasedFusion_useGpuCSC_ggmEnabled;

        if (!v11[1])
        {
          sub_2958C4D48();
          v24 = 0;
          v48 = v59;
          metalCopy = v55;
          goto LABEL_35;
        }
      }
    }

    metalCopy = v55;
    v20 = objc_msgSend_computePipelineStateFor_constants_(v55, v7, @"accWeightDownsample", 0);
    accWeightDownsample = v8->accWeightDownsample;
    v8->accWeightDownsample = v20;

    if (v8->accWeightDownsample)
    {
      v22 = objc_opt_new();
      v24 = v22;
      if (v22)
      {
        objc_msgSend_setConstantValue_type_atIndex_(v22, v23, &v57, 53, 1);
        objc_msgSend_setConstantValue_type_atIndex_(v24, v25, &v57, 53, 2);
        v27 = objc_msgSend_computePipelineStateFor_constants_(v55, v26, @"stationaryFusion", v24);
        stationaryFusionInitial = v8->stationaryFusionInitial;
        v8->stationaryFusionInitial = v27;

        if (v8->stationaryFusionInitial)
        {
          v30 = objc_msgSend_computePipelineStateFor_constants_(v55, v29, @"stationaryAccWeightDownsample", v24);
          stationaryAccWeightDownsampleInitial = v8->stationaryAccWeightDownsampleInitial;
          v8->stationaryAccWeightDownsampleInitial = v30;

          if (v8->stationaryAccWeightDownsampleInitial)
          {
            objc_msgSend_setConstantValue_type_atIndex_(v24, v32, &v58, 53, 2);
            v34 = objc_msgSend_computePipelineStateFor_constants_(v55, v33, @"stationaryFusion", v24);
            stationaryFusionSubsequent = v8->stationaryFusionSubsequent;
            v8->stationaryFusionSubsequent = v34;

            if (v8->stationaryFusionSubsequent)
            {
              v37 = objc_msgSend_computePipelineStateFor_constants_(v55, v36, @"stationaryAccWeightDownsample", v24);
              stationaryAccWeightDownsampleSubsequent = v8->stationaryAccWeightDownsampleSubsequent;
              v8->stationaryAccWeightDownsampleSubsequent = v37;

              if (v8->stationaryAccWeightDownsampleSubsequent)
              {
                v40 = objc_msgSend_computePipelineStateFor_constants_(v55, v39, @"stationaryAccWeightCalcAB", v24);
                stationaryAccWeightCalcAB = v8->stationaryAccWeightCalcAB;
                v8->stationaryAccWeightCalcAB = v40;

                if (v8->stationaryAccWeightCalcAB)
                {
                  v43 = objc_msgSend_computePipelineStateFor_constants_(v55, v42, @"stationaryAccWeightFilterAB", v24);
                  stationaryAccWeightFilterAB = v8->stationaryAccWeightFilterAB;
                  v8->stationaryAccWeightFilterAB = v43;

                  if (v8->stationaryAccWeightFilterAB)
                  {
                    v46 = objc_msgSend_computePipelineStateFor_constants_(v55, v45, @"stationaryDownsampleForInference", v24);
                    stationaryDownsampleForInference = v8->stationaryDownsampleForInference;
                    v8->stationaryDownsampleForInference = v46;

                    if (v8->stationaryDownsampleForInference)
                    {
                      v48 = 0;
                      goto LABEL_35;
                    }

                    sub_2958C4DE8(&v59);
                  }

                  else
                  {
                    sub_2958C4E84(&v59);
                  }
                }

                else
                {
                  sub_2958C4F20(&v59);
                }
              }

              else
              {
                sub_2958C4FBC(&v59);
              }
            }

            else
            {
              sub_2958C5058(&v59);
            }
          }

          else
          {
            sub_2958C50F4(&v59);
          }
        }

        else
        {
          sub_2958C5190(&v59);
        }
      }

      else
      {
        sub_2958C522C(&v59);
      }
    }

    else
    {
      sub_2958C52C8(&v59);
      v24 = 0;
    }

    v48 = v59;
LABEL_35:
    if (v48)
    {
      v49 = 0;
    }

    else
    {
      v49 = v8;
    }
  }

  else
  {
    v24 = 0;
    v49 = 0;
  }

  v50 = v49;

  return v50;
}

@end