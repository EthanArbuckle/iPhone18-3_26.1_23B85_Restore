@interface BilateralGrid
+ (int)prewarmShaders:(id)shaders;
- (BilateralGrid)initWithContext:(id)context normalizeGridConfidence:(BOOL)confidence;
- (id)allocGridTexture:(unint64_t)texture label:(id)label;
- (id)solverPcg:(int)pcg;
- (int)allocateTextures;
- (int)blurAndNormalize:(id)normalize grid_tmp_tex:(id)grid_tmp_tex;
- (int)buildWithGuideAndConfidence:(id)confidence target:(id)target confidence:(id)a5 grid_tex:(id)grid_tex ltc_tex:(id)ltc_tex gtcRatio_tex:(id)ratio_tex gtcFinal_tex:(id)final_tex ltmROI:;
- (int)setupWithConfig:(BilateralGridConfiguration *)config width:(unint64_t)width height:(unint64_t)height;
- (int)solverfilter:(__CVBuffer *)solverfilter target:(__CVBuffer *)target confidence:(__CVBuffer *)confidence output:(__CVBuffer *)output;
- (int)solverfilterWithGuide:(id)guide target:(id)target confidence:(id)confidence ltc_tex:(id)ltc_tex gtcRatio_tex:(id)ratio_tex gtcFinal_tex:(id)final_tex ltmROI:(id)i output:;
- (int)solverfilterWithGuide:(id)guide target:(id)target confidence:(id)confidence output:(id)output;
- (int)upsample:(id)upsample grid_tex:(id)grid_tex conf_tex:(id)conf_tex ltc_tex:(id)ltc_tex gtcRatio_tex:(id)ratio_tex gtcFinal_tex:(id)final_tex ltmROI:(id)i output:;
- (void)dealloc;
- (void)releaseTextures;
@end

@implementation BilateralGrid

- (BilateralGrid)initWithContext:(id)context normalizeGridConfidence:(BOOL)confidence
{
  contextCopy = context;
  v69.receiver = self;
  v69.super_class = BilateralGrid;
  v8 = [(BilateralGrid *)&v69 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metal, context);
    v9->_normalizeGridConfidence = confidence;
    v9->_useMetalAllocator = 0;
    v13 = objc_msgSend_device(v9->_metal, v10, v11, v12);
    v15 = objc_msgSend_newBufferWithLength_options_(v13, v14, 36, 0);
    uniforms = v9->_uniforms;
    v9->_uniforms = v15;

    if (v9->_uniforms)
    {
      v20 = objc_msgSend_device(v9->_metal, v17, v18, v19);
      v22 = objc_msgSend_newBufferWithLength_options_(v20, v21, 4, 0);
      max_grid_confidence = v9->_max_grid_confidence;
      v9->_max_grid_confidence = v22;

      if (v9->_max_grid_confidence)
      {
        v27 = objc_msgSend_sharedInstance(BilateralGridShared, v24, v25, v26);
        v29 = objc_msgSend_getShaders_normalizeGridConfidence_(v27, v28, v9->_metal, v9->_normalizeGridConfidence);
        shaders = v9->_shaders;
        v9->_shaders = v29;

        if (v9->_shaders)
        {
          v34 = objc_msgSend_device(v9->_metal, v31, v32, v33);
          v36 = objc_msgSend_newBufferWithLength_options_(v34, v35, 4, 0);
          l0_buf = v9->_l0_buf;
          v9->_l0_buf = v36;

          if (v9->_l0_buf)
          {
            v41 = objc_msgSend_device(v9->_metal, v38, v39, v40);
            v43 = objc_msgSend_newBufferWithLength_options_(v41, v42, 4, 0);
            l1_buf = v9->_l1_buf;
            v9->_l1_buf = v43;

            if (v9->_l1_buf)
            {
              v48 = objc_msgSend_device(v9->_metal, v45, v46, v47);
              v50 = objc_msgSend_newBufferWithLength_options_(v48, v49, 4, 0);
              alpha_buf = v9->_alpha_buf;
              v9->_alpha_buf = v50;

              if (v9->_alpha_buf)
              {
                v55 = objc_msgSend_device(v9->_metal, v52, v53, v54);
                v57 = objc_msgSend_newBufferWithLength_options_(v55, v56, 4, 0);
                residual_buf = v9->_residual_buf;
                v9->_residual_buf = v57;

                if (v9->_residual_buf)
                {
                  v62 = objc_msgSend_device(v9->_metal, v59, v60, v61);
                  v64 = objc_msgSend_newBufferWithLength_options_(v62, v63, 4, 0);
                  hasconverged_buf = v9->_hasconverged_buf;
                  v9->_hasconverged_buf = v64;

                  if (v9->_hasconverged_buf)
                  {
                    goto LABEL_10;
                  }

                  sub_2958794C4(&v70);
                }

                else
                {
                  sub_295879560(&v70);
                }
              }

              else
              {
                sub_2958795FC(&v70);
              }
            }

            else
            {
              sub_295879698(&v70);
            }
          }

          else
          {
            sub_295879734(&v70);
          }
        }

        else
        {
          sub_2958797D0(&v70);
        }
      }

      else
      {
        sub_29587986C(&v70);
      }
    }

    else
    {
      sub_295879908(&v70);
    }
  }

  else
  {
    sub_2958799A4(&v70);
  }

  if (v70)
  {
    v66 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v66 = v9;
LABEL_11:
  v67 = v66;

  return v67;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [BilateralGridShaders alloc];
  v6 = objc_msgSend_initWithMetal_normalizeGridConfidence_(v4, v5, shadersCopy, 0);
  if (!v6)
  {
    v13 = 353;
LABEL_7:
    sub_295879A40(v13, &v14);
    v10 = 0;
    v11 = v14;
    goto LABEL_4;
  }

  v7 = v6;
  v8 = [BilateralGridShaders alloc];
  v10 = objc_msgSend_initWithMetal_normalizeGridConfidence_(v8, v9, shadersCopy, 1);

  if (!v10)
  {
    v13 = 357;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_4:

  return v11;
}

- (id)allocGridTexture:(unint64_t)texture label:(id)label
{
  v6 = objc_msgSend_allocator(self->_metal, a2, texture, label);
  v10 = objc_msgSend_newTextureDescriptor(v6, v7, v8, v9);

  if (v10)
  {
    v14 = objc_msgSend_desc(v10, v11, v12, v13);
    objc_msgSend_setCompressionMode_(v14, v15, 2, v16);

    v20 = objc_msgSend_desc(v10, v17, v18, v19);
    objc_msgSend_setCompressionFootprint_(v20, v21, 0, v22);

    grid_width = self->_grid_width;
    v27 = objc_msgSend_desc(v10, v24, v25, v26);
    objc_msgSend_setWidth_(v27, v28, grid_width, v29);

    grid_height = self->_grid_height;
    v34 = objc_msgSend_desc(v10, v31, v32, v33);
    objc_msgSend_setHeight_(v34, v35, grid_height, v36);

    grid_depth = self->_grid_depth;
    v41 = objc_msgSend_desc(v10, v38, v39, v40);
    objc_msgSend_setDepth_(v41, v42, grid_depth, v43);

    v47 = objc_msgSend_desc(v10, v44, v45, v46);
    objc_msgSend_setUsage_(v47, v48, 3, v49);

    v53 = objc_msgSend_desc(v10, v50, v51, v52);
    objc_msgSend_setTextureType_(v53, v54, 7, v55);

    v59 = objc_msgSend_desc(v10, v56, v57, v58);
    objc_msgSend_setPixelFormat_(v59, v60, texture, v61);

    objc_msgSend_setLabel_(v10, v62, 0, v63);
    metal = self->_metal;
    if (self->_useMetalAllocator)
    {
      v68 = objc_msgSend_allocator(metal, v64, v65, v66);
      v71 = objc_msgSend_newTextureWithDescriptor_(v68, v69, v10, v70);

      if (!v71)
      {
        sub_295879CB0();
      }
    }

    else
    {
      v72 = objc_msgSend_device(metal, v64, v65, v66);
      v76 = objc_msgSend_desc(v10, v73, v74, v75);
      v71 = objc_msgSend_newTextureWithDescriptor_(v72, v77, v76, v78);

      if (!v71)
      {
        sub_295879C18();
      }
    }
  }

  else
  {
    sub_295879D48();
    v71 = 0;
  }

  return v71;
}

- (int)allocateTextures
{
  v3 = objc_msgSend_allocGridTexture_label_(self, a2, 115, @"grid_tex");
  grid_tex = self->_grid_tex;
  self->_grid_tex = v3;

  if (!self->_grid_tex)
  {
    sub_29587A530(&v42);
    return v42;
  }

  v6 = objc_msgSend_allocGridTexture_label_(self, v5, 115, @"tmp_grid_tex");
  tmp_grid_tex = self->_tmp_grid_tex;
  self->_tmp_grid_tex = v6;

  if (!self->_tmp_grid_tex)
  {
    sub_29587A494(&v42);
    return v42;
  }

  v9 = objc_msgSend_allocGridTexture_label_(self, v8, 25, @"confidence_solved_tex");
  confidence_solved_tex = self->_confidence_solved_tex;
  self->_confidence_solved_tex = v9;

  if (!self->_confidence_solved_tex)
  {
    sub_29587A3F8(&v42);
    return v42;
  }

  v12 = objc_msgSend_allocGridTexture_label_(self, v11, 55, @"bistochast_m_tex");
  bistochast_m_tex = self->_bistochast_m_tex;
  self->_bistochast_m_tex = v12;

  if (!self->_bistochast_m_tex)
  {
    sub_29587A35C(&v42);
    return v42;
  }

  v15 = objc_msgSend_allocGridTexture_label_(self, v14, 55, @"bistochast_n_tex");
  bistochast_n_tex = self->_bistochast_n_tex;
  self->_bistochast_n_tex = v15;

  if (!self->_bistochast_n_tex)
  {
    sub_29587A2C0(&v42);
    return v42;
  }

  v18 = objc_msgSend_allocGridTexture_label_(self, v17, 55, @"A_tex");
  A_tex = self->_A_tex;
  self->_A_tex = v18;

  if (!self->_A_tex)
  {
    sub_29587A224(&v42);
    return v42;
  }

  v21 = objc_msgSend_allocGridTexture_label_(self, v20, 25, @"x0_tex");
  x0_tex = self->_x0_tex;
  self->_x0_tex = v21;

  if (!self->_x0_tex)
  {
    sub_29587A188(&v42);
    return v42;
  }

  v24 = objc_msgSend_allocGridTexture_label_(self, v23, 25, @"x1_tex");
  x1_tex = self->_x1_tex;
  self->_x1_tex = v24;

  if (!self->_x1_tex)
  {
    sub_29587A0EC(&v42);
    return v42;
  }

  v27 = objc_msgSend_allocGridTexture_label_(self, v26, 55, @"residual0_tex");
  residual0_tex = self->_residual0_tex;
  self->_residual0_tex = v27;

  if (!self->_residual0_tex)
  {
    sub_29587A050(&v42);
    return v42;
  }

  v30 = objc_msgSend_allocGridTexture_label_(self, v29, 55, @"residual1_tex");
  residual1_tex = self->_residual1_tex;
  self->_residual1_tex = v30;

  if (!self->_residual1_tex)
  {
    sub_295879FB4(&v42);
    return v42;
  }

  v33 = objc_msgSend_allocGridTexture_label_(self, v32, 55, @"d0_tex");
  d0_tex = self->_d0_tex;
  self->_d0_tex = v33;

  if (!self->_d0_tex)
  {
    sub_295879F18(&v42);
    return v42;
  }

  v36 = objc_msgSend_allocGridTexture_label_(self, v35, 55, @"d1_tex");
  d1_tex = self->_d1_tex;
  self->_d1_tex = v36;

  if (!self->_d1_tex)
  {
    sub_295879E7C(&v42);
    return v42;
  }

  v39 = objc_msgSend_allocGridTexture_label_(self, v38, 55, @"q_tex");
  q_tex = self->_q_tex;
  self->_q_tex = v39;

  if (!self->_q_tex)
  {
    sub_295879DE0(&v42);
    return v42;
  }

  return 0;
}

- (void)releaseTextures
{
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();

  FigMetalDecRef();
}

- (void)dealloc
{
  objc_msgSend_releaseTextures(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = BilateralGrid;
  [(BilateralGrid *)&v5 dealloc];
}

- (int)setupWithConfig:(BilateralGridConfiguration *)config width:(unint64_t)width height:(unint64_t)height
{
  v9 = objc_msgSend_allocator(self->_metal, a2, config, width);

  if (v9)
  {
    v13 = objc_msgSend_allocator(self->_metal, v10, v11, v12);
    self->_useMetalAllocator = objc_msgSend_allocatorType(v13, v14, v15, v16) == 2;

    *&v17 = config->var1;
    *&v18 = config->var2.var0;
    *&v19 = config->var2.var1;
    *&v20 = config->var2.var2;
    *&v21 = config->var2.var3;
    v23 = objc_msgSend_config_height_space_sigma_range_sigma_solver_(self, v22, width, height, config->var0, v17, v18, v19, v20, v21);
    if (v23)
    {
      v27 = v23;
      sub_29587A5CC();
    }

    else
    {
      if (!self->_useMetalAllocator)
      {
        objc_msgSend_allocateTextures(self, v24, v25, v26);
      }

      return 0;
    }
  }

  else
  {
    sub_29587A630(&v29);
    return v29;
  }

  return v27;
}

- (int)buildWithGuideAndConfidence:(id)confidence target:(id)target confidence:(id)a5 grid_tex:(id)grid_tex ltc_tex:(id)ltc_tex gtcRatio_tex:(id)ratio_tex gtcFinal_tex:(id)final_tex ltmROI:
{
  v58 = v9;
  confidenceCopy = confidence;
  targetCopy = target;
  v16 = a5;
  grid_texCopy = grid_tex;
  ltc_texCopy = ltc_tex;
  ratio_texCopy = ratio_tex;
  final_texCopy = final_tex;
  v64 = v58;
  grid_width = self->_grid_width;
  grid_height = self->_grid_height;
  v26 = objc_msgSend_commandQueue(self->_metal, v23, v24, v25);
  v30 = objc_msgSend_commandBuffer(v26, v27, v28, v29);

  if (v30)
  {
    v34 = objc_msgSend_computeCommandEncoder(v30, v31, v32, v33);
    v37 = v34;
    if (v34)
    {
      v38 = (grid_width + 7) >> 3;
      v39 = (grid_height + 7) >> 3;
      v40 = 8;
      if (ltc_texCopy)
      {
        v40 = 16;
      }

      objc_msgSend_setComputePipelineState_(v34, v35, *(&self->_shaders->super.isa + v40), v36, v58);
      objc_msgSend_setTexture_atIndex_(v37, v41, confidenceCopy, 0);
      objc_msgSend_setTexture_atIndex_(v37, v42, targetCopy, 1);
      objc_msgSend_setTexture_atIndex_(v37, v43, v16, 2);
      objc_msgSend_setTexture_atIndex_(v37, v44, grid_texCopy, 3);
      if (ltc_texCopy && ratio_texCopy && final_texCopy)
      {
        objc_msgSend_setTexture_atIndex_(v37, v45, ltc_texCopy, 4);
        objc_msgSend_setTexture_atIndex_(v37, v46, ratio_texCopy, 5);
        objc_msgSend_setTexture_atIndex_(v37, v47, final_texCopy, 6);
        objc_msgSend_setBytes_length_atIndex_(v37, v48, &v64, 16, 1);
      }

      objc_msgSend_setBuffer_offset_atIndex_(v37, v45, self->_uniforms, 0, 0);
      v63[0] = v38;
      v63[1] = v39;
      v63[2] = 1;
      v61 = vdupq_n_s64(8uLL);
      v62 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v37, v49, v63, &v61);
      objc_msgSend_endEncoding(v37, v50, v51, v52);
      objc_msgSend_commit(v30, v53, v54, v55);
      v56 = 0;
    }

    else
    {
      sub_29587A6CC(v63);
      v56 = v63[0];
    }
  }

  else
  {
    sub_29587A768(v63);
    v56 = v63[0];
  }

  return v56;
}

- (int)blurAndNormalize:(id)normalize grid_tmp_tex:(id)grid_tmp_tex
{
  normalizeCopy = normalize;
  grid_tmp_texCopy = grid_tmp_tex;
  v8 = normalizeCopy;
  v9 = grid_tmp_texCopy;
  grid_width = self->_grid_width;
  grid_height = self->_grid_height;
  v15 = objc_msgSend_commandQueue(self->_metal, v12, v13, v14);
  v19 = objc_msgSend_commandBuffer(v15, v16, v17, v18);

  v62 = v19;
  if (v19)
  {
    v23 = 0;
    v24 = 0;
    v61 = (grid_width + 7) >> 3;
    v60 = vdupq_n_s64(8uLL);
    v58 = v9;
    v59 = v8;
    v25 = v8;
    while (2)
    {
      v26 = 1;
      do
      {
        v27 = v25;
        v28 = v9;
        v29 = v26;
        v30 = objc_msgSend_computeCommandEncoder(v62, v20, v21, v22, v58, v59);
        if (!v30)
        {
          sub_29587A8A0(&v65);
          v56 = v65;
          goto LABEL_16;
        }

        v33 = v30;
        objc_msgSend_setComputePipelineState_(v30, v31, self->_shaders->_bgBlur[v23], v32);
        objc_msgSend_setTexture_atIndex_(v33, v34, v25, 0);
        objc_msgSend_setTexture_atIndex_(v33, v35, v28, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v33, v36, self->_uniforms, 0, 0);
        if (v23 == 2 && self->_normalizeGridConfidence)
        {
          objc_msgSend_setBuffer_offset_atIndex_(v33, v37, self->_max_grid_confidence, 0, 1);
        }

        v65 = v61;
        v66 = (grid_height + 7) >> 3;
        v67 = 1;
        v63 = v60;
        v64 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v33, v37, &v65, &v63);
        objc_msgSend_endEncoding(v33, v38, v39, v40);
        v41 = v25;

        v25 = v28;
        v24 = v41;

        v26 = 0;
        v9 = v24;
      }

      while ((v29 & 1) != 0);
      ++v23;
      v9 = v24;
      if (v23 != 3)
      {
        continue;
      }

      break;
    }

    v42 = objc_msgSend_computeCommandEncoder(v62, v20, v21, v22);
    v45 = v42;
    if (v42)
    {
      objc_msgSend_setComputePipelineState_(v42, v43, self->_shaders->_bgNormalize, v44);
      objc_msgSend_setTexture_atIndex_(v45, v46, v25, 0);
      objc_msgSend_setTexture_atIndex_(v45, v47, v24, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v45, v48, self->_uniforms, 0, 0);
      if (self->_normalizeGridConfidence)
      {
        objc_msgSend_setBuffer_offset_atIndex_(v45, v49, self->_max_grid_confidence, 0, 1);
      }

      v65 = v61;
      v66 = (grid_height + 7) >> 3;
      v67 = 1;
      v63 = vdupq_n_s64(8uLL);
      v64 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v45, v49, &v65, &v63);
      objc_msgSend_endEncoding(v45, v50, v51, v52);
      objc_msgSend_commit(v62, v53, v54, v55);
      objc_storeStrong(&self->_grid_tex, v27);
      objc_storeStrong(&self->_tmp_grid_tex, v28);
      v56 = 0;
    }

    else
    {
      sub_29587A804(&v65);
      v56 = v65;
    }

    v28 = v24;
LABEL_16:
    v9 = v58;
    v8 = v59;
  }

  else
  {
    sub_29587A93C(&v65);
    v24 = 0;
    v56 = v65;
    v25 = v8;
    v28 = v9;
  }

  return v56;
}

- (int)upsample:(id)upsample grid_tex:(id)grid_tex conf_tex:(id)conf_tex ltc_tex:(id)ltc_tex gtcRatio_tex:(id)ratio_tex gtcFinal_tex:(id)final_tex ltmROI:(id)i output:
{
  v89 = v9;
  upsampleCopy = upsample;
  grid_texCopy = grid_tex;
  conf_texCopy = conf_tex;
  ltc_texCopy = ltc_tex;
  ratio_texCopy = ratio_tex;
  final_texCopy = final_tex;
  v19 = final_texCopy;
  v93 = v89;
  if (ltc_texCopy)
  {
    v20 = ratio_texCopy == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  v22 = final_texCopy != 0;
  iCopy = i;
  v27 = objc_msgSend_pixelFormat(iCopy, v24, v25, v26);
  v28 = v21 & v22;
  v29 = 64;
  if (v28)
  {
    v29 = 72;
  }

  if (v27 != 25)
  {
    v29 = 56;
  }

  v30 = *(&self->_shaders->super.isa + v29);
  v34 = objc_msgSend_renderPassDescriptor(MEMORY[0x29EDBB5F8], v31, v32, v33);
  v38 = objc_msgSend_colorAttachments(v34, v35, v36, v37);
  v41 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, 0, v40);
  objc_msgSend_setTexture_(v41, v42, iCopy, v43);

  v47 = objc_msgSend_colorAttachments(v34, v44, v45, v46);
  v50 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, 0, v49);
  objc_msgSend_setLoadAction_(v50, v51, 0, v52);

  v56 = objc_msgSend_commandQueue(self->_metal, v53, v54, v55);
  v60 = objc_msgSend_commandBuffer(v56, v57, v58, v59);

  if (!v60)
  {
    sub_29587AA74(&v94);
LABEL_19:
    v87 = v94;
    v70 = upsampleCopy;
    goto LABEL_16;
  }

  v63 = objc_msgSend_renderCommandEncoderWithDescriptor_(v60, v61, v34, v62);
  if (!v63)
  {
    sub_29587A9D8(&v94);
    goto LABEL_19;
  }

  v67 = v63;
  v68 = objc_msgSend_fullRangeVertexBuf(self->_metal, v64, v65, v66);
  objc_msgSend_setVertexBuffer_offset_atIndex_(v67, v69, v68, 0, 0);

  v70 = upsampleCopy;
  objc_msgSend_setFragmentTexture_atIndex_(v67, v71, upsampleCopy, 0);
  objc_msgSend_setFragmentTexture_atIndex_(v67, v72, grid_texCopy, 1);
  objc_msgSend_setFragmentTexture_atIndex_(v67, v73, conf_texCopy, 2);
  if (v28)
  {
    objc_msgSend_setFragmentTexture_atIndex_(v67, v74, ltc_texCopy, 3);
    objc_msgSend_setFragmentTexture_atIndex_(v67, v75, ratio_texCopy, 4);
    objc_msgSend_setFragmentTexture_atIndex_(v67, v76, v19, 5);
    objc_msgSend_setFragmentBytes_length_atIndex_(v67, v77, &v93, 16, 1);
  }

  objc_msgSend_setFragmentBuffer_offset_atIndex_(v67, v74, self->_uniforms, 0, 0, v89);
  objc_msgSend_setRenderPipelineState_(v67, v78, v30, v79);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v67, v80, 4, 0, 4);
  objc_msgSend_endEncoding(v67, v81, v82, v83);
  objc_msgSend_commit(v60, v84, v85, v86);

  v87 = 0;
LABEL_16:

  return v87;
}

- (int)solverfilterWithGuide:(id)guide target:(id)target confidence:(id)confidence output:(id)output
{
  v6 = objc_msgSend_solverfilterWithGuide_target_confidence_ltc_tex_gtcRatio_tex_gtcFinal_tex_ltmROI_output_(self, a2, guide, target, confidence, 0, 0, 0, 0.0, output);
  if (v6)
  {
    sub_29587AB10();
  }

  return v6;
}

- (id)solverPcg:(int)pcg
{
  grid_width = self->_grid_width;
  grid_height = self->_grid_height;
  v235 = 0;
  v236 = 0;
  memset(v230, 0, sizeof(v230));
  v237[0] = self->_grid_tex;
  v237[1] = self->_bistochast_n_tex;
  v237[2] = self->_bistochast_m_tex;
  v237[3] = self->_A_tex;
  v238 = self->_x0_tex;
  v239 = self->_residual0_tex;
  v240 = self->_d0_tex;
  obj = self->_x1_tex;
  v242 = self->_residual1_tex;
  v243 = self->_d1_tex;
  v244 = self->_q_tex;
  v245 = self->_confidence_solved_tex;
  v231 = self->_uniforms;
  v232 = self->_l0_buf;
  v233 = self->_l1_buf;
  v234 = self->_alpha_buf;
  objc_storeStrong(&v235, self->_residual_buf);
  objc_storeStrong(&v236, self->_hasconverged_buf);
  v9 = objc_msgSend_commandQueue(self->_metal, v6, v7, v8);
  v13 = objc_msgSend_commandBuffer(v9, v10, v11, v12);

  if (!v13)
  {
    sub_29587B560();
    v28 = 0;
LABEL_42:
    v21 = 0;
LABEL_43:
    v211 = 0;
    goto LABEL_27;
  }

  v17 = objc_msgSend_commandQueue(self->_metal, v14, v15, v16);
  v21 = objc_msgSend_commandBuffer(v17, v18, v19, v20);

  if (!v21)
  {
    sub_29587B4C8();
    v28 = 0;
    goto LABEL_43;
  }

  v25 = objc_msgSend_computeCommandEncoder(v21, v22, v23, v24);
  v28 = v25;
  if (!v25)
  {
    sub_29587B430();
    goto LABEL_43;
  }

  objc_msgSend_setComputePipelineState_(v25, v26, self->_shaders->_bgSolverInit1, v27);
  objc_msgSend_setTextures_withRange_(v28, v29, v237, 0, 12);
  objc_msgSend_setBuffers_offsets_withRange_(v28, v30, &v231, v230, 0, 6);
  *buf = (grid_width + 7) >> 3;
  *v219 = (grid_height + 7) >> 3;
  *&v219[8] = 1;
  v228 = vdupq_n_s64(8uLL);
  v229 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v28, v31, buf, &v228);
  objc_msgSend_endEncoding(v28, v32, v33, v34);
  objc_msgSend_commit(v21, v35, v36, v37);
  v41 = objc_msgSend_commandQueue(self->_metal, v38, v39, v40);
  v45 = objc_msgSend_commandBuffer(v41, v42, v43, v44);

  if (!v45)
  {
    sub_29587B3A4();
    goto LABEL_42;
  }

  v49 = objc_msgSend_computeCommandEncoder(v45, v46, v47, v48);

  if (!v49)
  {
    sub_29587B318();
LABEL_45:
    v28 = 0;
    v211 = 0;
    goto LABEL_26;
  }

  objc_msgSend_setComputePipelineState_(v49, v50, self->_shaders->_bgSolverInit2, v51);
  objc_msgSend_setTextures_withRange_(v49, v52, v237, 0, 12);
  objc_msgSend_setBuffers_offsets_withRange_(v49, v53, &v231, v230, 0, 6);
  *buf = (grid_width + 7) >> 3;
  *v219 = (grid_height + 7) >> 3;
  *&v219[8] = 1;
  v228 = vdupq_n_s64(8uLL);
  v229 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v49, v54, buf, &v228);
  objc_msgSend_endEncoding(v49, v55, v56, v57);
  objc_msgSend_commit(v45, v58, v59, v60);
  if (pcg >= 1)
  {
    v64 = 0;
    v65 = vdupq_n_s64(8uLL);
    v216 = v65;
    v65.i64[0] = 67110656;
    v215 = v65;
    while (1)
    {
      v66 = objc_msgSend_commandQueue(self->_metal, v61, v62, v63, *&v215);
      v21 = objc_msgSend_commandBuffer(v66, v67, v68, v69);

      if (!v21)
      {
        sub_29587B28C();
LABEL_39:
        v211 = 0;
        v28 = v49;
        goto LABEL_27;
      }

      v28 = objc_msgSend_computeCommandEncoder(v21, v70, v71, v72);

      if (!v28)
      {
        sub_29587B200();
        goto LABEL_43;
      }

      objc_msgSend_setComputePipelineState_(v28, v73, self->_shaders->_bgSolverPcgIter0, v74);
      objc_msgSend_setTextures_withRange_(v28, v75, v237, 0, 12);
      objc_msgSend_setBuffers_offsets_withRange_(v28, v76, &v231, v230, 0, 6);
      *buf = (grid_width + 7) >> 3;
      *v219 = (grid_height + 7) >> 3;
      *&v219[8] = 1;
      v228 = v216;
      v229 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v28, v77, buf, &v228);
      objc_msgSend_endEncoding(v28, v78, v79, v80);
      objc_msgSend_commit(v21, v81, v82, v83);
      v87 = objc_msgSend_commandQueue(self->_metal, v84, v85, v86);
      v45 = objc_msgSend_commandBuffer(v87, v88, v89, v90);

      if (!v45)
      {
        sub_29587B174();
        goto LABEL_42;
      }

      v49 = objc_msgSend_computeCommandEncoder(v45, v91, v92, v93);

      if (!v49)
      {
        sub_29587B0E8();
        goto LABEL_45;
      }

      objc_msgSend_setComputePipelineState_(v49, v94, self->_shaders->_bgSolverPcgIter1, v95);
      objc_msgSend_setTextures_withRange_(v49, v96, v237, 0, 12);
      objc_msgSend_setBuffers_offsets_withRange_(v49, v97, &v231, v230, 0, 6);
      *buf = (grid_width + 7) >> 3;
      *v219 = (grid_height + 7) >> 3;
      *&v219[8] = 1;
      v228 = vdupq_n_s64(8uLL);
      v229 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v49, v98, buf, &v228);
      objc_msgSend_endEncoding(v49, v99, v100, v101);
      objc_msgSend_commit(v45, v102, v103, v104);
      v108 = objc_msgSend_commandQueue(self->_metal, v105, v106, v107);
      v21 = objc_msgSend_commandBuffer(v108, v109, v110, v111);

      if (!v21)
      {
        sub_29587B05C();
        goto LABEL_39;
      }

      v28 = objc_msgSend_computeCommandEncoder(v21, v112, v113, v114);

      if (!v28)
      {
        sub_29587AFD0();
        goto LABEL_43;
      }

      objc_msgSend_setComputePipelineState_(v28, v115, self->_shaders->_bgSolverPcgIter2, v116);
      objc_msgSend_setTextures_withRange_(v28, v117, v237, 0, 12);
      objc_msgSend_setBuffers_offsets_withRange_(v28, v118, &v231, v230, 0, 6);
      *buf = (grid_width + 7) >> 3;
      *v219 = (grid_height + 7) >> 3;
      *&v219[8] = 1;
      v228 = vdupq_n_s64(8uLL);
      v229 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v28, v119, buf, &v228);
      objc_msgSend_endEncoding(v28, v120, v121, v122);
      objc_msgSend_commit(v21, v123, v124, v125);
      v129 = objc_msgSend_commandQueue(self->_metal, v126, v127, v128);
      v45 = objc_msgSend_commandBuffer(v129, v130, v131, v132);

      if (!v45)
      {
        sub_29587AF44();
        goto LABEL_42;
      }

      v49 = objc_msgSend_computeCommandEncoder(v45, v133, v134, v135);

      if (!v49)
      {
        break;
      }

      objc_msgSend_setComputePipelineState_(v49, v136, self->_shaders->_bgSolverPcgIter3, v137);
      objc_msgSend_setTextures_withRange_(v49, v138, v237, 0, 12);
      objc_msgSend_setBuffers_offsets_withRange_(v49, v139, &v231, v230, 0, 6);
      *buf = (grid_width + 7) >> 3;
      *v219 = (grid_height + 7) >> 3;
      *&v219[8] = 1;
      v228 = vdupq_n_s64(8uLL);
      v229 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v49, v140, buf, &v228);
      objc_msgSend_endEncoding(v49, v141, v142, v143);
      objc_msgSend_commit(v45, v144, v145, v146);
      objc_msgSend_waitForIdle(self->_metal, v147, v148, v149);
      sub_2957FCDF4(v239, "res0");
      sub_2957FCDF4(v242, "res1");
      v150 = v232;
      v154 = *objc_msgSend_contents(v150, v151, v152, v153);
      v155 = v234;
      v159 = 0.0001;
      if ((*objc_msgSend_contents(v155, v156, v157, v158) * 0.00024414) > 0.0001)
      {
        v160 = v234;
        v159 = *objc_msgSend_contents(v160, v161, v162, v163) * 0.00024414;
      }

      v164 = v233;
      v168 = *objc_msgSend_contents(v164, v165, v166, v167);
      v169 = v232;
      v173 = 0.0001;
      if ((*objc_msgSend_contents(v169, v170, v171, v172) * 0.00024414) > 0.0001)
      {
        v174 = v232;
        v173 = *objc_msgSend_contents(v174, v175, v176, v177) * 0.00024414;
      }

      if (qword_2A138BA50 != -1)
      {
        sub_29587AE90();
      }

      v178 = qword_2A138BA48;
      if (os_log_type_enabled(qword_2A138BA48, OS_LOG_TYPE_DEFAULT))
      {
        v179 = (v154 * 0.00024414) / v159;
        v180 = v232;
        v181 = (v168 * 0.00024414) / v173;
        v182 = v232;
        v183 = v178;
        v187 = (*objc_msgSend_contents(v180, v184, v185, v186) * 0.00024414);
        v188 = v233;
        v192 = (*objc_msgSend_contents(v188, v189, v190, v191) * 0.00024414);
        v193 = self->_residual_buf;
        v197 = (*objc_msgSend_contents(v193, v194, v195, v196) * 0.00024414);
        v198 = self->_hasconverged_buf;
        v202 = *objc_msgSend_contents(v198, v199, v200, v201);
        *buf = v215.i32[0];
        *&buf[4] = v64;
        *v219 = 2048;
        *&v219[2] = v187;
        *&v219[10] = 2048;
        *&v219[12] = v192;
        v220 = 2048;
        v221 = v197;
        v222 = 2048;
        v223 = v179;
        v224 = 2048;
        v225 = v181;
        v226 = 1024;
        v227 = v202;
        _os_log_impl(&dword_2957F6000, v183, OS_LOG_TYPE_DEFAULT, "debug\t%d\tl0:%f\tl1:%f\tres:%f\talpha:%f\tbeta:%f\tconv:%u", buf, 0x40u);
      }

      v203 = v238;
      objc_storeStrong(&v238, obj);
      v204 = obj;
      obj = v203;

      v205 = v240;
      objc_storeStrong(&v240, v243);
      v206 = v243;
      v243 = v205;

      v207 = v239;
      objc_storeStrong(&v239, v242);
      v208 = v242;
      v242 = v207;

      v209 = v232;
      objc_storeStrong(&v232, v233);
      v210 = v233;
      v233 = v209;

      if (pcg == ++v64)
      {
        goto LABEL_25;
      }
    }

    sub_29587AEB8();
    goto LABEL_45;
  }

LABEL_25:
  v211 = v238;
  v28 = v49;
LABEL_26:
  v21 = v45;
LABEL_27:
  for (i = 40; i != -8; i -= 8)
  {
  }

  for (j = 11; j != -1; --j)
  {
  }

  return v211;
}

- (int)solverfilterWithGuide:(id)guide target:(id)target confidence:(id)confidence ltc_tex:(id)ltc_tex gtcRatio_tex:(id)ratio_tex gtcFinal_tex:(id)final_tex ltmROI:(id)i output:
{
  v39 = v9;
  guideCopy = guide;
  targetCopy = target;
  confidenceCopy = confidence;
  ltc_texCopy = ltc_tex;
  ratio_texCopy = ratio_tex;
  final_texCopy = final_tex;
  iCopy = i;
  if (self->_useMetalAllocator)
  {
    Textures = objc_msgSend_allocateTextures(self, v22, v23, v24);
    if (Textures)
    {
      v37 = Textures;
      goto LABEL_24;
    }
  }

  v27 = objc_msgSend_pixelFormat(guideCopy, v22, v23, v24);
  v29 = v27 == 10 || v27 == 25;
  if (!v29 && v27 != 576 && v27 != 588)
  {
    sub_2957FD180();
    FigDebugAssert3();
    v35 = 0;
    v37 = -1;
    goto LABEL_19;
  }

  v30 = objc_msgSend_buildWithGuideAndConfidence_target_confidence_grid_tex_ltc_tex_gtcRatio_tex_gtcFinal_tex_ltmROI_(self, v28, guideCopy, targetCopy, confidenceCopy, self->_grid_tex, ltc_texCopy, ratio_texCopy, v39, final_texCopy);
  if (v30)
  {
    v37 = v30;
    sub_2957FD180();
    FigDebugAssert3();
LABEL_24:
    v35 = 0;
    goto LABEL_19;
  }

  if (confidenceCopy)
  {
    objc_msgSend_solverBistochastize_(self, v31, 10, v32);
    v35 = objc_msgSend_solverPcg_(self, v33, 20, v34);
    if (iCopy)
    {
      v36 = objc_msgSend_upsample_grid_tex_conf_tex_ltc_tex_gtcRatio_tex_gtcFinal_tex_ltmROI_output_(self, v22, guideCopy, v35, self->_confidence_solved_tex, ltc_texCopy, ratio_texCopy, final_texCopy, v39, iCopy);
      goto LABEL_15;
    }

LABEL_17:
    v37 = 0;
    goto LABEL_19;
  }

  objc_msgSend_blurAndNormalize_grid_tmp_tex_(self, v31, self->_grid_tex, self->_tmp_grid_tex);
  v35 = self->_grid_tex;
  if (!iCopy)
  {
    goto LABEL_17;
  }

  v36 = objc_msgSend_upsample_grid_tex_conf_tex_ltc_tex_gtcRatio_tex_gtcFinal_tex_ltmROI_output_(self, v22, guideCopy, v35, 0, ltc_texCopy, ratio_texCopy, final_texCopy, v39, iCopy);
LABEL_15:
  v37 = v36;
  if (v36)
  {
    sub_2957FD180();
    FigDebugAssert3();
  }

LABEL_19:
  if (self->_useMetalAllocator)
  {
    objc_msgSend_releaseTextures(self, v22, v23, v24);
  }

  return v37;
}

- (int)solverfilter:(__CVBuffer *)solverfilter target:(__CVBuffer *)target confidence:(__CVBuffer *)confidence output:(__CVBuffer *)output
{
  if (!self->_useMetalAllocator || (Textures = objc_msgSend_allocateTextures(self, a2, solverfilter, target)) == 0)
  {
    input_width = self->_input_width;
    input_height = self->_input_height;
    if (CVPixelBufferGetWidth(solverfilter) == input_width && CVPixelBufferGetHeight(solverfilter) == input_height && (v18 = self->_input_width, v17 = self->_input_height, CVPixelBufferGetWidth(target) == v18) && CVPixelBufferGetHeight(target) == v17)
    {
      if (CVPixelBufferGetPixelFormatType(solverfilter) != 875704422)
      {
        sub_2957FD180();
        FigDebugAssert3();
        v47 = -1;
        goto LABEL_50;
      }

      v20 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v19, solverfilter, 10, 23, 0);
      if (v20)
      {
        v21 = v20;
        PixelFormatType = CVPixelBufferGetPixelFormatType(target);
        if (PixelFormatType == 1278226536 || PixelFormatType == 1751410032 || PixelFormatType == 1751411059)
        {
          objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v23, target, 25, 23, 0);
        }

        else
        {
          objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v23, target, 10, 23, 0);
        }
        v26 = ;
        if (!v26)
        {
          sub_2957FD170();
          FigDebugAssert3();
          sub_2957F8880();
          v47 = FigSignalErrorAtGM();
          goto LABEL_49;
        }

        v28 = v26;
        if (confidence)
        {
          v30 = self->_input_width;
          v29 = self->_input_height;
          if (CVPixelBufferGetWidth(confidence) == v30 && CVPixelBufferGetHeight(confidence) == v29)
          {
            confidence = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v31, confidence, 25, 23, 0);
            if (confidence)
            {
              goto LABEL_23;
            }

            sub_2957FD160();
            FigDebugAssert3();
            sub_2957F8880();
          }

          else
          {
            sub_2957FD160();
            FigDebugAssert3();
          }

          v47 = FigSignalErrorAtGM();
          goto LABEL_48;
        }

LABEL_23:
        if (!output)
        {
          goto LABEL_36;
        }

        v33 = self->_input_width;
        v32 = self->_input_height;
        if (CVPixelBufferGetWidth(output) == v33 && CVPixelBufferGetHeight(output) == v32)
        {
          v34 = CVPixelBufferGetPixelFormatType(output);
          if (v34 == 1278226536 || v34 == 1751410032 || v34 == 1751411059)
          {
            objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v35, output, 25, 22, 0);
          }

          else
          {
            objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v35, output, 10, 22, 0);
          }
          output = ;
          if (output)
          {
LABEL_36:
            v38 = objc_msgSend_buildWithGuideAndConfidence_target_confidence_grid_tex_ltc_tex_gtcRatio_tex_gtcFinal_tex_ltmROI_(self, v27, v21, v28, confidence, self->_grid_tex, 0, 0, 0.0, 0);
            if (v38)
            {
              v47 = v38;
              sub_2957FD180();
              FigDebugAssert3();
              goto LABEL_46;
            }

            if (confidence)
            {
              objc_msgSend_solverBistochastize_(self, v39, 10, v40);
              v44 = objc_msgSend_solverPcg_(self, v41, 20, v42);
              if (output)
              {
                v45 = objc_msgSend_upsample_grid_tex_conf_tex_ltc_tex_gtcRatio_tex_gtcFinal_tex_ltmROI_output_(self, v43, v21, v44, self->_confidence_solved_tex, 0, 0, 0, 0.0, output);
                goto LABEL_42;
              }
            }

            else
            {
              objc_msgSend_blurAndNormalize_grid_tmp_tex_(self, v39, self->_grid_tex, self->_tmp_grid_tex);
              v44 = self->_grid_tex;
              if (output)
              {
                v45 = objc_msgSend_upsample_grid_tex_conf_tex_ltc_tex_gtcRatio_tex_gtcFinal_tex_ltmROI_output_(self, v46, v21, v44, 0, 0, 0, 0, 0.0, output);
LABEL_42:
                v47 = v45;
                if (v45)
                {
                  sub_2957FD180();
                  FigDebugAssert3();
                }

                goto LABEL_45;
              }
            }

            v47 = 0;
LABEL_45:

LABEL_46:
LABEL_47:

LABEL_48:
LABEL_49:

            goto LABEL_50;
          }

          sub_2957FD160();
          FigDebugAssert3();
          sub_2957F8880();
        }

        else
        {
          sub_2957FD160();
          FigDebugAssert3();
        }

        v47 = FigSignalErrorAtGM();
        goto LABEL_47;
      }

      sub_2957F885C();
      FigDebugAssert3();
      sub_2957F8880();
    }

    else
    {
      sub_2957F885C();
      FigDebugAssert3();
    }

    Textures = FigSignalErrorAtGM();
  }

  v47 = Textures;
LABEL_50:
  if (self->_useMetalAllocator)
  {
    objc_msgSend_releaseTextures(self, v12, v13, v14);
  }

  return v47;
}

@end