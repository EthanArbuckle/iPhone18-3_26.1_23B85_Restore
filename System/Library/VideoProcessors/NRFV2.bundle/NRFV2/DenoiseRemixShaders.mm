@interface DenoiseRemixShaders
- (DenoiseRemixShaders)initWithMetal:(id)metal vertName:(id)name pixelFormatLuma:(unint64_t)luma pixelFormatChroma:(unint64_t)chroma options:(const DenoiseRemixStageOptions *)options;
@end

@implementation DenoiseRemixShaders

- (DenoiseRemixShaders)initWithMetal:(id)metal vertName:(id)name pixelFormatLuma:(unint64_t)luma pixelFormatChroma:(unint64_t)chroma options:(const DenoiseRemixStageOptions *)options
{
  metalCopy = metal;
  nameCopy = name;
  v48.receiver = self;
  v48.super_class = DenoiseRemixShaders;
  v14 = [(DenoiseRemixShaders *)&v48 init];
  if (v14)
  {
    v15 = objc_opt_new();
    v17 = v15;
    if (v15)
    {
      objc_msgSend_setConstantValue_type_atIndex_(v15, v16, options, 29, 1);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v18, &options->enableNoiseMap, 53, 2);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v19, &options->enableBilateralRegression, 53, 3);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v20, &options->enableLoGOffset, 53, 4);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v21, &options->enableGdFlatness, 53, 5);
      v22 = [DenoiseRemixFragmentShader alloc];
      v24 = objc_msgSend_initWithMetal_vertName_fragName_constantValues_pixelFormat_pixelFormat2_(v22, v23, metalCopy, nameCopy, @"DenoiseChroma_frag", v17, chroma, 0);
      denoiseChroma = v14->_denoiseChroma;
      v14->_denoiseChroma = v24;

      if (v14->_denoiseChroma)
      {
        v26 = [DenoiseRemixFragmentShader alloc];
        v28 = objc_msgSend_initWithMetal_vertName_fragName_constantValues_pixelFormat_pixelFormat2_(v26, v27, metalCopy, nameCopy, @"DenoiseLumaDenoiseRemixChroma_frag", v17, luma, chroma);
        denoiseLumaDenoiseRemixChroma = v14->_denoiseLumaDenoiseRemixChroma;
        v14->_denoiseLumaDenoiseRemixChroma = v28;

        if (v14->_denoiseLumaDenoiseRemixChroma)
        {
          v30 = [DenoiseRemixFragmentShader alloc];
          v32 = objc_msgSend_initWithMetal_vertName_fragName_constantValues_pixelFormat_pixelFormat2_(v30, v31, metalCopy, nameCopy, @"DenoiseRemixLumaChroma_frag", v17, luma, chroma);
          denoiseRemixLumaChroma = v14->_denoiseRemixLumaChroma;
          v14->_denoiseRemixLumaChroma = v32;

          if (v14->_denoiseRemixLumaChroma)
          {
            v34 = [DenoiseRemixFragmentShader alloc];
            v36 = objc_msgSend_initWithMetal_vertName_fragName_constantValues_pixelFormat_pixelFormat2_(v34, v35, metalCopy, nameCopy, @"RemixLuma_frag", v17, luma, 0);
            remixLuma = v14->_remixLuma;
            v14->_remixLuma = v36;

            if (v14->_remixLuma)
            {
              v38 = [DenoiseRemixFragmentShader alloc];
              v40 = objc_msgSend_initWithMetal_vertName_fragName_constantValues_pixelFormat_pixelFormat2_(v38, v39, metalCopy, nameCopy, @"DenoiseRemixLuma_frag", v17, luma, 0);
              denoiseRemixLuma = v14->_denoiseRemixLuma;
              v14->_denoiseRemixLuma = v40;

              if (v14->_denoiseRemixLuma)
              {
                v43 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v42, @"VarianceSharpening_kernel_5x5", v17);
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