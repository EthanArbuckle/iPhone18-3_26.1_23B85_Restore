@interface DefringeStage
+ (int)prewarmShaders:(id)a3 tuningParameters:(id)a4;
- (DefringeStage)initWithMetalContext:(id)a3;
- (id)_functionNameForProgram:(int)a3;
- (int)_compileShaders;
- (int)defringePyramid:(id)a3 outputPyramid:(id)a4 chromaScratch:(id)a5 tuningParameters:(id)a6;
- (void)_collapseFilteredChroma:(id)a3 usingInputDown:(id)a4 inputUp:(id)a5 into:(id)a6;
- (void)_copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)_defringeLuma:(id)a3 chroma:(id)a4 into:(id)a5;
@end

@implementation DefringeStage

+ (int)prewarmShaders:(id)a3 tuningParameters:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"DefaultSensorIDs", v8);
  v10 = v9;
  if (v9)
  {
    v75 = v9;
    v76 = v5;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v11 = v9;
    v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v82, v81, 16);
    if (v79)
    {
      v77 = v11;
      v78 = *v83;
      while (2)
      {
        for (i = 0; i != v79; ++i)
        {
          if (*v83 != v78)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v82 + 1) + 8 * i);
          v17 = objc_msgSend_objectForKeyedSubscript_(v11, v13, v16, v14, v75);
          v20 = objc_msgSend_objectForKeyedSubscript_(v6, v18, v16, v19);
          v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v17, v22);
          v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"ChromaticDefringing", v25);

          if (v26)
          {
            v29 = objc_msgSend_objectForKeyedSubscript_(v6, v27, v16, v28);
            v32 = objc_msgSend_objectForKeyedSubscript_(v29, v30, v17, v31);
            v35 = objc_msgSend_objectForKeyedSubscript_(v32, v33, @"ChromaticDefringing", v34);
            objc_msgSend_objectForKeyedSubscript_(v35, v36, @"Still", v37);
            v80 = v26;
            v39 = v38 = v6;
            v42 = objc_msgSend_objectForKeyedSubscript_(v39, v40, @"CorrectionEnabled", v41);
            v46 = objc_msgSend_BOOLValue(v42, v43, v44, v45);

            v11 = v77;
            v6 = v38;
            v26 = v80;

            if (v46)
            {
              v48 = [DefringeStage alloc];
              v5 = v76;
              v52 = objc_msgSend_initWithMetalContext_(v48, v49, v76, v50);
              if (v52)
              {
                v53 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v51, 65, 4, 4, 0);
                objc_msgSend_setUsage_(v53, v54, 3, v55);
                v59 = objc_msgSend_device(v76, v56, v57, v58);
                v62 = objc_msgSend_newTextureWithDescriptor_(v59, v60, v53, v61);

                v66 = objc_msgSend_device(v76, v63, v64, v65);
                v69 = objc_msgSend_newTextureWithDescriptor_(v66, v67, v53, v68);

                objc_msgSend__copyFromTexture_toTexture_(v52, v70, v62, v69);
                objc_msgSend_commit(v76, v71, v72, v73);

                v47 = 0;
              }

              else
              {
                v47 = -12786;
              }

              goto LABEL_16;
            }
          }
        }

        v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v82, v81, 16);
        if (v79)
        {
          continue;
        }

        break;
      }
    }

    v47 = 0;
    v5 = v76;
LABEL_16:
    v10 = v75;
  }

  else
  {
    sub_295893210(v86);
    v47 = v86[0];
  }

  return v47;
}

- (id)_functionNameForProgram:(int)a3
{
  if (!a3)
  {
    return @"defringe_still";
  }

  if (a3 == 1)
  {
    return @"collapse_cbcr";
  }

  FigDebugAssert3();
  return 0;
}

- (int)_compileShaders
{
  metalContext = self->_metalContext;
  v5 = objc_msgSend__functionNameForProgram_(self, a2, 0, v2);
  v7 = objc_msgSend_computePipelineStateFor_constants_(metalContext, v6, v5, 0);
  v8 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v7;

  if (self->_pipelineStates[0])
  {
    v11 = self->_metalContext;
    v12 = objc_msgSend__functionNameForProgram_(self, v9, 1, v10);
    v14 = objc_msgSend_computePipelineStateFor_constants_(v11, v13, v12, 0);
    v15 = self->_pipelineStates[1];
    self->_pipelineStates[1] = v14;

    if (self->_pipelineStates[1])
    {
      return 0;
    }

    else
    {
      sub_2958932A0(&v17);
      return v17;
    }
  }

  else
  {
    sub_29589332C(&v18);
    return v18;
  }
}

- (DefringeStage)initWithMetalContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DefringeStage;
  v6 = [(DefringeStage *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, a3);
    if (objc_msgSend__compileShaders(v7, v8, v9, v10))
    {
      sub_2958933B8();
    }
  }

  else
  {
    sub_295893440();
  }

  return v7;
}

- (void)_defringeLuma:(id)a3 chroma:(id)a4 into:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v14 = objc_msgSend_width(v8, v11, v12, v13);
  v18 = objc_msgSend_height(v8, v15, v16, v17);
  objc_msgSend_setRadialParamsForWidth_height_(self->_tuningParameters, v19, v14, v18);
  v23 = objc_msgSend_commandBuffer(self->_metalContext, v20, v21, v22);
  v30 = objc_msgSend_computeCommandEncoder(v23, v24, v25, v26);
  v70 = 0;
  v31 = 0uLL;
  memset(v69, 0, sizeof(v69));
  tuningParameters = self->_tuningParameters;
  if (tuningParameters && (objc_msgSend_correctionParams(tuningParameters, v27, v28, v29), v33 = self->_tuningParameters, v31 = 0uLL, v67 = 0u, v68 = 0u, v65 = 0u, v66 = 0u, v33))
  {
    objc_msgSend_radialParams(v33, v27, v28, v29);
    objc_msgSend_desaturationParams(self->_tuningParameters, v34, v35, v36);
  }

  else
  {
    v67 = v31;
    v68 = v31;
    v65 = v31;
    v66 = v31;
    objc_msgSend_desaturationParams(0, v27, v28, v29);
  }

  v64[0] = v39;
  v64[1] = v40;
  v64[2] = v41;
  objc_msgSend_setComputePipelineState_(v30, v37, self->_pipelineStates[0], v38);
  objc_msgSend_setImageblockWidth_height_(v30, v42, 16, 16);
  objc_msgSend_setTexture_atIndex_(v30, v43, v10, 0);

  objc_msgSend_setTexture_atIndex_(v30, v44, v8, 1);
  objc_msgSend_setTexture_atIndex_(v30, v45, v9, 4);
  objc_msgSend_setBytes_length_atIndex_(v30, v46, v69, 232, 0);
  objc_msgSend_setBytes_length_atIndex_(v30, v47, v64, 12, 1);
  objc_msgSend_setBytes_length_atIndex_(v30, v48, &v65, 64, 2);
  v52 = objc_msgSend_width(v9, v49, v50, v51);
  v56 = objc_msgSend_height(v9, v53, v54, v55);

  v63[0] = v52;
  v63[1] = v56;
  v63[2] = 1;
  v61 = vdupq_n_s64(0x10uLL);
  v62 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v30, v57, v63, &v61);
  objc_msgSend_endEncoding(v30, v58, v59, v60);
}

- (void)_collapseFilteredChroma:(id)a3 usingInputDown:(id)a4 inputUp:(id)a5 into:(id)a6
{
  metalContext = self->_metalContext;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v18 = objc_msgSend_commandBuffer(metalContext, v15, v16, v17);
  v22 = objc_msgSend_computeCommandEncoder(v18, v19, v20, v21);
  objc_msgSend_setComputePipelineState_(v22, v23, self->_pipelineStates[1], v24);
  objc_msgSend_setTexture_atIndex_(v22, v25, v12, 1);

  objc_msgSend_setTexture_atIndex_(v22, v26, v13, 2);
  objc_msgSend_setTexture_atIndex_(v22, v27, v14, 3);

  objc_msgSend_setTexture_atIndex_(v22, v28, v11, 4);
  v32 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[1], v29, v30, v31);
  v36 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[1], v33, v34, v35) / v32;
  v40 = objc_msgSend_width(v11, v37, v38, v39);
  v44 = objc_msgSend_height(v11, v41, v42, v43);

  v50[0] = v40;
  v50[1] = v44;
  v50[2] = 1;
  v49[0] = v32;
  v49[1] = v36;
  v49[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v22, v45, v50, v49);
  objc_msgSend_endEncoding(v22, v46, v47, v48);
}

- (void)_copyFromTexture:(id)a3 toTexture:(id)a4
{
  metalContext = self->_metalContext;
  v6 = a4;
  v7 = a3;
  v19 = objc_msgSend_commandBuffer(metalContext, v8, v9, v10);
  v14 = objc_msgSend_blitCommandEncoder(v19, v11, v12, v13);
  objc_msgSend_copyFromTexture_toTexture_(v14, v15, v7, v6);

  objc_msgSend_endEncoding(v14, v16, v17, v18);
}

- (int)defringePyramid:(id)a3 outputPyramid:(id)a4 chromaScratch:(id)a5 tuningParameters:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v78 = a6;
  if (*MEMORY[0x29EDB9270])
  {
    v16 = objc_msgSend_commandQueue(self->_metalContext, v13, v14, v15);
    v20 = objc_msgSend_commandBuffer(v16, v17, v18, v19);

    objc_msgSend_setLabel_(v20, v21, @"KTRACE_START_MTL", v22);
    objc_msgSend_addCompletedHandler_(v20, v23, &unk_2A1CA9420, v24);
    objc_msgSend_commit(v20, v25, v26, v27);
  }

  v28 = *(v10 + 2);
  v29 = *(v11 + 2);
  if (v28 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  if (v28 <= 1)
  {
    sub_29589390C(&v80);
LABEL_26:
    v76 = v80;
    goto LABEL_23;
  }

  if (v29 <= 1)
  {
    sub_295893884(&v80);
    goto LABEL_26;
  }

  v31 = objc_msgSend_pixelFormat(v12, v13, v14, v15);
  if (v31 != objc_msgSend_pixelFormat(*(v11 + 62), v32, v33, v34))
  {
    sub_2958934CC(&v80);
    goto LABEL_26;
  }

  if (!v78)
  {
    sub_2958937FC(&v80);
    goto LABEL_26;
  }

  v35 = v30;
  v36 = v10;
  v37 = v11;
  do
  {
    v38 = *(v36 + 62);
    if ((FigMetalIsValid() & 1) == 0)
    {
      sub_295893554(&v80);
      goto LABEL_26;
    }

    v39 = *(v37 + 62);
    if ((FigMetalIsValid() & 1) == 0)
    {
      sub_2958935DC(&v80);
      goto LABEL_26;
    }

    v37 += 8;
    v36 += 8;
    --v35;
  }

  while (v35);
  if ((FigMetalIsValid() & 1) == 0)
  {
    sub_295893664(&v80);
    goto LABEL_26;
  }

  v40 = *(v10 + 43);
  if ((FigMetalIsValid() & 1) == 0)
  {
    sub_2958936EC(&v80);
    goto LABEL_26;
  }

  v41 = *(v10 + 44);
  if ((FigMetalIsValid() & 1) == 0)
  {
    sub_295893774(&v80);
    goto LABEL_26;
  }

  objc_storeStrong(&self->_tuningParameters, a6);
  objc_msgSend_commit(self->_metalContext, v42, v43, v44);
  v48 = objc_msgSend_commandBuffer(self->_metalContext, v45, v46, v47);
  objc_msgSend_setLabel_(v48, v49, @"defringe", v50);

  if (v30 >= 3)
  {
    v52 = v30 + 1;
    v53 = 8 * v30 - 8;
    v54 = &v11[v53];
    v55 = &v10[v53];
    do
    {
      objc_msgSend__copyFromTexture_toTexture_(self, v51, *(v55 + 62), *(v54 + 62));
      --v52;
      v54 -= 8;
      v55 -= 8;
    }

    while (v52 > 3);
  }

  objc_msgSend__defringeLuma_chroma_into_(self, v51, *(v10 + 44), *(v10 + 63), *(v11 + 63));
  objc_msgSend__collapseFilteredChroma_usingInputDown_inputUp_into_(self, v56, *(v11 + 63), *(v10 + 63), *(v10 + 62), v12);
  objc_msgSend__defringeLuma_chroma_into_(self, v57, *(v10 + 43), v12, *(v11 + 62));
  objc_msgSend_commit(self->_metalContext, v58, v59, v60);
  if (*MEMORY[0x29EDB9270])
  {
    v64 = objc_msgSend_commandQueue(self->_metalContext, v61, v62, v63);
    v68 = objc_msgSend_commandBuffer(v64, v65, v66, v67);

    objc_msgSend_setLabel_(v68, v69, @"KTRACE_END_MTL", v70);
    v79[0] = MEMORY[0x29EDCA5F8];
    v79[1] = 3221225472;
    v79[2] = sub_29581E520;
    v79[3] = &unk_29EDDBE78;
    memset(&v79[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v68, v71, v79, v72);
    objc_msgSend_commit(v68, v73, v74, v75);
  }

  v76 = 0;
LABEL_23:

  return v76;
}

@end