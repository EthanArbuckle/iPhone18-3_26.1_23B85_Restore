@interface DenoiseRemixShaders
- (DenoiseRemixShaders)initWithMetal:(id)a3 vertName:(id)a4 pixelFormatLuma:(unint64_t)a5 pixelFormatChroma:(unint64_t)a6 options:(const DenoiseRemixStageOptions *)a7;
@end

@implementation DenoiseRemixShaders

- (DenoiseRemixShaders)initWithMetal:(id)a3 vertName:(id)a4 pixelFormatLuma:(unint64_t)a5 pixelFormatChroma:(unint64_t)a6 options:(const DenoiseRemixStageOptions *)a7
{
  v12 = a3;
  v13 = a4;
  v48.receiver = self;
  v48.super_class = DenoiseRemixShaders;
  v14 = [(DenoiseRemixShaders *)&v48 init];
  if (v14)
  {
    v15 = objc_opt_new();
    v17 = v15;
    if (v15)
    {
      objc_msgSend_setConstantValue_type_atIndex_(v15, v16, a7, 29, 1);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v18, &a7->enableNoiseMap, 53, 2);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v19, &a7->enableBilateralRegression, 53, 3);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v20, &a7->enableLoGOffset, 53, 4);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v21, &a7->enableGdFlatness, 53, 5);
      v22 = [DenoiseRemixFragmentShader alloc];
      v24 = objc_msgSend_initWithMetal_vertName_fragName_constantValues_pixelFormat_pixelFormat2_(v22, v23, v12, v13, @"DenoiseChroma_frag", v17, a6, 0);
      denoiseChroma = v14->_denoiseChroma;
      v14->_denoiseChroma = v24;

      if (v14->_denoiseChroma)
      {
        v26 = [DenoiseRemixFragmentShader alloc];
        v28 = objc_msgSend_initWithMetal_vertName_fragName_constantValues_pixelFormat_pixelFormat2_(v26, v27, v12, v13, @"DenoiseLumaDenoiseRemixChroma_frag", v17, a5, a6);
        denoiseLumaDenoiseRemixChroma = v14->_denoiseLumaDenoiseRemixChroma;
        v14->_denoiseLumaDenoiseRemixChroma = v28;

        if (v14->_denoiseLumaDenoiseRemixChroma)
        {
          v30 = [DenoiseRemixFragmentShader alloc];
          v32 = objc_msgSend_initWithMetal_vertName_fragName_constantValues_pixelFormat_pixelFormat2_(v30, v31, v12, v13, @"DenoiseRemixLumaChroma_frag", v17, a5, a6);
          denoiseRemixLumaChroma = v14->_denoiseRemixLumaChroma;
          v14->_denoiseRemixLumaChroma = v32;

          if (v14->_denoiseRemixLumaChroma)
          {
            v34 = [DenoiseRemixFragmentShader alloc];
            v36 = objc_msgSend_initWithMetal_vertName_fragName_constantValues_pixelFormat_pixelFormat2_(v34, v35, v12, v13, @"RemixLuma_frag", v17, a5, 0);
            remixLuma = v14->_remixLuma;
            v14->_remixLuma = v36;

            if (v14->_remixLuma)
            {
              v38 = [DenoiseRemixFragmentShader alloc];
              v40 = objc_msgSend_initWithMetal_vertName_fragName_constantValues_pixelFormat_pixelFormat2_(v38, v39, v12, v13, @"DenoiseRemixLuma_frag", v17, a5, 0);
              denoiseRemixLuma = v14->_denoiseRemixLuma;
              v14->_denoiseRemixLuma = v40;

              if (v14->_denoiseRemixLuma)
              {
                v43 = objc_msgSend_computePipelineStateFor_constants_(v12, v42, @"VarianceSharpening_kernel_5x5", v17);
                varianceSharpening = v14->_varianceSharpening;
                v14->_varianceSharpening = v43;

                if (v14->_varianceSharpening)
                {
                  goto LABEL_9;
                }

                sub_2958CD738(&v49);
              }

              else
              {
                sub_2958CD7D4(&v49);
              }
            }

            else
            {
              sub_2958CD870(&v49);
            }
          }

          else
          {
            sub_2958CD90C(&v49);
          }
        }

        else
        {
          sub_2958CD9A8(&v49);
        }
      }

      else
      {
        sub_2958CDA44(&v49);
      }
    }

    else
    {
      sub_2958CDAE0(&v49);
    }
  }

  else
  {
    sub_2958CDB7C(&v49);
    v17 = 0;
  }

  if (v49)
  {
    v45 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v45 = v14;
LABEL_10:
  v46 = v45;

  return v46;
}

@end