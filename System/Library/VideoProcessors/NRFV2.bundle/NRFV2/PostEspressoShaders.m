@interface PostEspressoShaders
- (PostEspressoShaders)initWithMetal:(id)a3 networkVersion:(int)a4;
@end

@implementation PostEspressoShaders

- (PostEspressoShaders)initWithMetal:(id)a3 networkVersion:(int)a4
{
  v6 = a3;
  v47.receiver = self;
  v47.super_class = PostEspressoShaders;
  v7 = [(PostEspressoShaders *)&v47 init];
  if (v7)
  {
    v11 = objc_opt_new();
    if (v11)
    {
      kernelDeghostAndDenoise = v7->_kernelDeghostAndDenoise;
      v13 = -4;
      do
      {
        objc_msgSend_reset(v11, v8, v9, v10);
        v46 = (v13 + 4) & 1;
        objc_msgSend_setConstantValue_type_atIndex_(v11, v14, &v46, 53, 0);
        v46 = ((v13 + 4) & 2) != 0;
        objc_msgSend_setConstantValue_type_atIndex_(v11, v15, &v46, 53, 1);
        v17 = objc_msgSend_computePipelineStateFor_constants_(v6, v16, @"applyEspressoOutput", v11);
        v18 = *(kernelDeghostAndDenoise - 6);
        *(kernelDeghostAndDenoise - 6) = v17;

        if (!*(kernelDeghostAndDenoise - 6))
        {
          sub_295886338();
          goto LABEL_19;
        }

        v20 = objc_msgSend_computePipelineStateFor_constants_(v6, v19, @"deghostAndDenoise", v11);
        v21 = *kernelDeghostAndDenoise;
        *kernelDeghostAndDenoise = v20;

        if (!*kernelDeghostAndDenoise)
        {
          sub_2958862AC();
          goto LABEL_19;
        }

        ++kernelDeghostAndDenoise;
      }

      while (!__CFADD__(v13++, 1));
      v23 = objc_msgSend_computePipelineStateFor_constants_(v6, v8, @"applyEspressoOutputLumaOnly", 0);
      kernelApplyEspressoOutputLumaOnly = v7->_kernelApplyEspressoOutputLumaOnly;
      v7->_kernelApplyEspressoOutputLumaOnly = v23;

      if (v7->_kernelApplyEspressoOutputLumaOnly)
      {
        v26 = objc_msgSend_computePipelineStateFor_constants_(v6, v25, @"convert444To420", 0);
        kernelConvert444to420 = v7->_kernelConvert444to420;
        v7->_kernelConvert444to420 = v26;

        if (v7->_kernelConvert444to420)
        {
          v29 = objc_msgSend_computePipelineStateFor_constants_(v6, v28, @"computeTextureness", 0);
          kernelComputeTextureness = v7->_kernelComputeTextureness;
          v7->_kernelComputeTextureness = v29;

          if (v7->_kernelComputeTextureness)
          {
            v32 = objc_msgSend_computePipelineStateFor_constants_(v6, v31, @"computeAMBNRDenoiseBoostMap", 0);
            kernelComputeDenoiseBoostMap = v7->_kernelComputeDenoiseBoostMap;
            v7->_kernelComputeDenoiseBoostMap = v32;

            if (v7->_kernelComputeDenoiseBoostMap)
            {
              objc_msgSend_reset(v11, v34, v35, v36);
              v46 = a4 == 2;
              objc_msgSend_setConstantValue_type_atIndex_(v11, v37, &v46, 53, 1);
              v39 = objc_msgSend_computePipelineStateFor_constants_(v6, v38, @"addPreviousLevel", v11);
              kernelAddPreviousLevel = v7->_kernelAddPreviousLevel;
              v7->_kernelAddPreviousLevel = v39;

              if (v7->_kernelAddPreviousLevel)
              {
                v42 = objc_msgSend_computePipelineStateFor_constants_(v6, v41, @"collapseWeightsOnTileStage1", v11);
                kernelCollapseWeightsOnTileStage1 = v7->_kernelCollapseWeightsOnTileStage1;
                v7->_kernelCollapseWeightsOnTileStage1 = v42;

                if (v7->_kernelCollapseWeightsOnTileStage1)
                {

                  goto LABEL_15;
                }

                sub_295885F64();
              }

              else
              {
                sub_295885FF0();
              }
            }

            else
            {
              sub_29588607C();
            }
          }

          else
          {
            sub_295886108();
          }
        }

        else
        {
          sub_295886194();
        }
      }

      else
      {
        sub_295886220();
      }
    }

    else
    {
      sub_2958863C4();
    }

LABEL_19:

    v44 = 0;
  }

  else
  {
LABEL_15:
    v44 = v7;
  }

  return v44;
}

@end