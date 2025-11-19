@interface BilateralGridShaders
- (BilateralGridShaders)initWithMetal:(id)a3 normalizeGridConfidence:(BOOL)a4;
- (id)createBasicComputeShader:(const char *)a3 metal:(id)a4;
@end

@implementation BilateralGridShaders

- (BilateralGridShaders)initWithMetal:(id)a3 normalizeGridConfidence:(BOOL)a4
{
  v6 = a3;
  v94 = a4;
  v92 = 0;
  v93 = 0;
  v91.receiver = self;
  v91.super_class = BilateralGridShaders;
  v7 = [(BilateralGridShaders *)&v91 init];
  v8 = v7;
  if (!v7)
  {
    sub_2958793C8();
    goto LABEL_33;
  }

  v90 = 0;
  bgSplat = v7->_bgSplat;
  do
  {
    v10 = objc_opt_new();
    v11 = *(&v92 + v90);
    *(&v92 + v90) = v10;

    v13 = *(&v92 + v90);
    if (!v13)
    {
      sub_29587933C();
      goto LABEL_33;
    }

    objc_msgSend_setConstantValue_type_atIndex_(v13, v12, &v90, 53, 3);
    v15 = objc_msgSend_computePipelineStateFor_constants_(v6, v14, @"bg_splat", *(&v92 + v90));
    v16 = bgSplat[v90];
    bgSplat[v90] = v15;

    v17 = v90;
    if (!bgSplat[v90])
    {
      sub_2958792B0();
      goto LABEL_33;
    }

    ++v90;
  }

  while (v17 <= 0);
  v90 = 0;
  bgBlur = v8->_bgBlur;
  do
  {
    v19 = objc_opt_new();
    v21 = v19;
    if (!v19)
    {
      sub_295879224();
LABEL_32:

      goto LABEL_33;
    }

    objc_msgSend_setConstantValue_type_atIndex_(v19, v20, &v90, 29, 2);
    objc_msgSend_setConstantValue_type_atIndex_(v21, v22, &v94, 53, 1);
    v24 = objc_msgSend_computePipelineStateFor_constants_(v6, v23, @"bg_blur", v21);
    v25 = bgBlur[v90];
    bgBlur[v90] = v24;

    if (!bgBlur[v90])
    {
      sub_295879198();
      goto LABEL_32;
    }

    v26 = v90++;
  }

  while (v26 < 2);
  v27 = objc_opt_new();
  v29 = v27;
  if (!v27)
  {
    sub_29587910C();
LABEL_40:

    goto LABEL_33;
  }

  objc_msgSend_setConstantValue_type_atIndex_(v27, v28, &v94, 53, 1);
  v31 = objc_msgSend_computePipelineStateFor_constants_(v6, v30, @"bg_norm", v29);
  bgNormalize = v8->_bgNormalize;
  v8->_bgNormalize = v31;

  if (!v8->_bgNormalize)
  {
    sub_295879080();
    goto LABEL_40;
  }

  v29 = objc_opt_new();
  objc_msgSend_setPixelFormat_(v29, v33, 10, v34);
  v35 = v92;
  v89 = v29;
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v36, &v89, 1);
  v39 = objc_msgSend_renderPipelineStateForVertexFunction_vertexDescriptor_fragmentFunction_constants_colorAttachmentDescriptorArrray_(v6, v38, @"BilateralUpsample_vert", 0, @"BilateralUpsample_frag", v35, v37);
  bgUpsample8 = v8->_bgUpsample8;
  v8->_bgUpsample8 = v39;

  if (!v8->_bgUpsample8)
  {
    sub_295878FF4();
    goto LABEL_40;
  }

  v41 = objc_opt_new();

  objc_msgSend_setPixelFormat_(v41, v42, 25, v43);
  v88 = v41;
  v45 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v44, &v88, 1);
  v47 = objc_msgSend_renderPipelineStateForVertexFunction_vertexDescriptor_fragmentFunction_constants_colorAttachmentDescriptorArrray_(v6, v46, @"BilateralUpsample_vert", 0, @"BilateralUpsample_frag", v35, v45);
  bgUpsample16 = v8->_bgUpsample16;
  v8->_bgUpsample16 = v47;

  if (!v8->_bgUpsample16)
  {
    sub_295878F68();
    v29 = v41;
    goto LABEL_40;
  }

  v29 = objc_opt_new();

  objc_msgSend_setPixelFormat_(v29, v49, 25, v50);
  v51 = v93;
  v87 = v29;
  v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v52, &v87, 1);
  v55 = objc_msgSend_renderPipelineStateForVertexFunction_vertexDescriptor_fragmentFunction_constants_colorAttachmentDescriptorArrray_(v6, v54, @"BilateralUpsample_vert", 0, @"BilateralUpsample_frag", v51, v53);
  bgUpsample16ToneMapped = v8->_bgUpsample16ToneMapped;
  v8->_bgUpsample16ToneMapped = v55;

  if (!v8->_bgUpsample16ToneMapped)
  {
    sub_295878EDC();
    goto LABEL_40;
  }

  v58 = objc_msgSend_createBasicComputeShader_metal_(v8, v57, "bg_bistochastize_init", v6);
  bgBistochastizeInit = v8->_bgBistochastizeInit;
  v8->_bgBistochastizeInit = v58;

  if (v8->_bgBistochastizeInit)
  {
    v61 = objc_msgSend_createBasicComputeShader_metal_(v8, v60, "bg_bistochastize_iter", v6);
    bgBistochastizeIter = v8->_bgBistochastizeIter;
    v8->_bgBistochastizeIter = v61;

    if (v8->_bgBistochastizeIter)
    {
      v64 = objc_msgSend_createBasicComputeShader_metal_(v8, v63, "bg_bistochastize_final", v6);
      bgBistochastizeFinal = v8->_bgBistochastizeFinal;
      v8->_bgBistochastizeFinal = v64;

      if (v8->_bgBistochastizeFinal)
      {
        v67 = objc_msgSend_createBasicComputeShader_metal_(v8, v66, "bg_solver_init1", v6);
        bgSolverInit1 = v8->_bgSolverInit1;
        v8->_bgSolverInit1 = v67;

        if (v8->_bgSolverInit1)
        {
          v70 = objc_msgSend_createBasicComputeShader_metal_(v8, v69, "bg_solver_init2", v6);
          bgSolverInit2 = v8->_bgSolverInit2;
          v8->_bgSolverInit2 = v70;

          if (v8->_bgSolverInit2)
          {
            v73 = objc_msgSend_createBasicComputeShader_metal_(v8, v72, "bg_solver_pcg_iter0", v6);
            bgSolverPcgIter0 = v8->_bgSolverPcgIter0;
            v8->_bgSolverPcgIter0 = v73;

            if (v8->_bgSolverPcgIter0)
            {
              v76 = objc_msgSend_createBasicComputeShader_metal_(v8, v75, "bg_solver_pcg_iter1", v6);
              bgSolverPcgIter1 = v8->_bgSolverPcgIter1;
              v8->_bgSolverPcgIter1 = v76;

              if (v8->_bgSolverPcgIter1)
              {
                v79 = objc_msgSend_createBasicComputeShader_metal_(v8, v78, "bg_solver_pcg_iter2", v6);
                bgSolverPcgIter2 = v8->_bgSolverPcgIter2;
                v8->_bgSolverPcgIter2 = v79;

                if (v8->_bgSolverPcgIter2)
                {
                  v82 = objc_msgSend_createBasicComputeShader_metal_(v8, v81, "bg_solver_pcg_iter3", v6);
                  bgSolverPcgIter3 = v8->_bgSolverPcgIter3;
                  v8->_bgSolverPcgIter3 = v82;

                  if (v8->_bgSolverPcgIter3)
                  {
                    v84 = v8;
                    goto LABEL_25;
                  }

                  sub_2958789F0();
                }

                else
                {
                  sub_295878A7C();
                }
              }

              else
              {
                sub_295878B08();
              }
            }

            else
            {
              sub_295878B94();
            }
          }

          else
          {
            sub_295878C20();
          }
        }

        else
        {
          sub_295878CAC();
        }
      }

      else
      {
        sub_295878D38();
      }
    }

    else
    {
      sub_295878DC4();
    }
  }

  else
  {
    sub_295878E50();
  }

LABEL_33:
  v84 = 0;
LABEL_25:
  for (i = 8; i != -8; i -= 8)
  {
  }

  return v84;
}

- (id)createBasicComputeShader:(const char *)a3 metal:(id)a4
{
  v5 = MEMORY[0x29EDBA0F8];
  v6 = a4;
  v9 = objc_msgSend_stringWithUTF8String_(v5, v7, a3, v8);
  v11 = objc_msgSend_computePipelineStateFor_constants_(v6, v10, v9, 0);

  return v11;
}

@end