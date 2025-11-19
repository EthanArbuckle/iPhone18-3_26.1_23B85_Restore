@interface SDOFResources
+ (id)sharedInstance;
- (BOOL)activateResources;
- (id)initInstance;
- (int)allocateResourcesUsingMetalContext:(id)a3 inputImageWidth:(unint64_t)a4 inputImageHeight:(unint64_t)a5 shiftMapWidth:(unint64_t)a6 shiftMapHeight:(unint64_t)a7 enableForegroundBlur:(BOOL)a8;
- (void)clearInstance;
- (void)deactivateResources;
- (void)deallocateResources;
@end

@implementation SDOFResources

- (void)clearInstance
{
  metalContext = self->_metalContext;
  self->_metalContext = 0;

  *&self->_referenceCount = 0;
  *&self->_inputImageWidth = 0u;
  *&self->_shiftMapWidth = 0u;
  disparityRefinement_weightsX_tex = self->_disparityRefinement_weightsX_tex;
  self->_disparityRefinement_weightsX_tex = 0;

  disparityRefinement_weightsY_tex = self->_disparityRefinement_weightsY_tex;
  self->_disparityRefinement_weightsY_tex = 0;

  disparityRefinement_sampledD_tex = self->_disparityRefinement_sampledD_tex;
  self->_disparityRefinement_sampledD_tex = 0;

  disparityRefinement_preproc_tex = self->_disparityRefinement_preproc_tex;
  self->_disparityRefinement_preproc_tex = 0;

  disparityRefinement_blurmap_tex = self->_disparityRefinement_blurmap_tex;
  self->_disparityRefinement_blurmap_tex = 0;

  faceMask_adjBlurmap_tex = self->_faceMask_adjBlurmap_tex;
  self->_faceMask_adjBlurmap_tex = 0;

  blurMapSmoothing_intermediate_tex = self->_blurMapSmoothing_intermediate_tex;
  self->_blurMapSmoothing_intermediate_tex = 0;

  blurMapSmoothing_result_tex = self->_blurMapSmoothing_result_tex;
  self->_blurMapSmoothing_result_tex = 0;

  blurMapRefinement_alphaMaskDelta = self->_blurMapRefinement_alphaMaskDelta;
  self->_blurMapRefinement_alphaMaskDelta = 0;

  blurMapRefinement_hairMaskDelta = self->_blurMapRefinement_hairMaskDelta;
  self->_blurMapRefinement_hairMaskDelta = 0;

  blurMapRefinement_intermediate = self->_blurMapRefinement_intermediate;
  self->_blurMapRefinement_intermediate = 0;

  rendering_halfResRGBA1_tex = self->_rendering_halfResRGBA1_tex;
  self->_rendering_halfResRGBA1_tex = 0;

  rendering_halfResRGBA2_tex = self->_rendering_halfResRGBA2_tex;
  self->_rendering_halfResRGBA2_tex = 0;

  rendering_halfResRGBAsRGB1_texalias = self->_rendering_halfResRGBAsRGB1_texalias;
  self->_rendering_halfResRGBAsRGB1_texalias = 0;

  rendering_halfResRGBAsRGB2_texalias = self->_rendering_halfResRGBAsRGB2_texalias;
  self->_rendering_halfResRGBAsRGB2_texalias = 0;

  rendering_halfResRG_tex = self->_rendering_halfResRG_tex;
  self->_rendering_halfResRG_tex = 0;

  halfResRGBABuffer1 = self->_halfResRGBABuffer1;
  self->_halfResRGBABuffer1 = 0;

  halfResRGBABuffer2 = self->_halfResRGBABuffer2;
  self->_halfResRGBABuffer2 = 0;

  slm_mapping_buf = self->_slm_mapping_buf;
  self->_slm_mapping_buf = 0;

  rendering_xhlrbProcessList_buf = self->_rendering_xhlrbProcessList_buf;
  self->_rendering_xhlrbProcessList_buf = 0;
}

- (id)initInstance
{
  v8.receiver = self;
  v8.super_class = SDOFResources;
  v2 = [(SDOFResources *)&v8 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_clearInstance(v2, v3, v4, v5);
  }

  return v6;
}

+ (id)sharedInstance
{
  if (qword_2A18AAF30 != -1)
  {
    sub_295EB22D8();
  }

  v3 = qword_2A18AAF28;

  return v3;
}

- (int)allocateResourcesUsingMetalContext:(id)a3 inputImageWidth:(unint64_t)a4 inputImageHeight:(unint64_t)a5 shiftMapWidth:(unint64_t)a6 shiftMapHeight:(unint64_t)a7 enableForegroundBlur:(BOOL)a8
{
  v8 = a8;
  v15 = a3;
  v19 = v15;
  if (self->_referenceCount)
  {
    goto LABEL_65;
  }

  obj = a3;
  v252 = a4 >> 1;
  v247 = a5;
  v20 = a5 >> 1;
  v255 = a6;
  v256 = a7;
  v22 = a4 >> 1 == a6 && v20 == a7;
  v259 = v22;
  v23 = objc_msgSend_device(v15, v16, v17, v18);
  v257 = v8;
  v26 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v23, v24, 25, v25);

  v30 = objc_msgSend_device(v19, v27, v28, v29);
  v33 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v30, v31, 65, v32);

  v37 = objc_msgSend_device(v19, v34, v35, v36);
  v40 = v19;
  v41 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v37, v38, 30, v39);

  v45 = objc_msgSend_device(v40, v42, v43, v44);
  v48 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v45, v46, 10, v47);

  v52 = objc_msgSend_device(v40, v49, v50, v51);
  v55 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v52, v53, 70, v54);

  if (v26 <= v33)
  {
    v59 = v33;
  }

  else
  {
    v59 = v26;
  }

  v60 = v20;
  if (v59 <= v41)
  {
    v59 = v41;
  }

  if (v48 <= v55)
  {
    v61 = v55;
  }

  else
  {
    v61 = v48;
  }

  if (v59 <= v61)
  {
    v62 = v61;
  }

  else
  {
    v62 = v59;
  }

  v63 = (v62 - 1 + (a4 >> 1)) / v62 * v62;
  v246 = a4;
  v64 = (v62 - 1 + (a4 & 0xFFFFFFFFFFFFFFFELL)) / v62 * v62;
  v65 = 2 * v64;
  v249 = (v62 - 1 + 4 * v252) / v62 * v62;
  if (v249 > 2 * v64)
  {
    v65 = (v62 - 1 + 4 * v252) / v62 * v62;
  }

  v66 = 4;
  if (v257)
  {
    v66 = 6;
  }

  v67 = v63 * v66;
  if (v65 <= v67)
  {
    v65 = v67;
  }

  v68 = v65 * v60;
  v69 = objc_msgSend_device(v40, v56, v57, v58);
  v71 = objc_msgSend_newBufferWithLength_options_(v69, v70, v68, 32);
  halfResRGBABuffer1 = self->_halfResRGBABuffer1;
  self->_halfResRGBABuffer1 = v71;

  if (!self->_halfResRGBABuffer1)
  {
    sub_295EB2A2C(v260);
LABEL_81:
    v238 = v260[0];
    v19 = v40;
    goto LABEL_110;
  }

  v76 = objc_msgSend_device(v40, v73, v74, v75);
  v78 = objc_msgSend_newBufferWithLength_options_(v76, v77, v68, 32);
  halfResRGBABuffer2 = self->_halfResRGBABuffer2;
  self->_halfResRGBABuffer2 = v78;

  if (!self->_halfResRGBABuffer2)
  {
    sub_295EB2980(v260);
    goto LABEL_81;
  }

  v83 = objc_msgSend_device(v40, v80, v81, v82);
  v85 = objc_msgSend_newBufferWithLength_options_(v83, v84, 16, 32);
  slm_mapping_buf = self->_slm_mapping_buf;
  self->_slm_mapping_buf = v85;

  if (!self->_slm_mapping_buf)
  {
    sub_295EB28D4(v260);
    goto LABEL_81;
  }

  v258 = v60;
  v251 = v40;
  v90 = objc_msgSend_device(v40, v87, v88, v89);
  v92 = objc_msgSend_newBufferWithLength_options_(v90, v91, (((v60 + 7) >> 1) & 0x7FFFFFFFFFFFFFFCLL) * (((v252 + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) + 16, 0);
  rendering_xhlrbProcessList_buf = self->_rendering_xhlrbProcessList_buf;
  self->_rendering_xhlrbProcessList_buf = v92;

  if (!self->_rendering_xhlrbProcessList_buf)
  {
    sub_295EB2828(v260);
    v238 = v260[0];
    goto LABEL_109;
  }

  if (v259)
  {
    v95 = 0;
    objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v94, 25, v252, v60, 0);
  }

  else
  {
    v96 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v94, 65, v255, v256, 0);
    if (!v96)
    {
      sub_295EB22EC();
      goto LABEL_101;
    }

    v95 = v96;
    objc_msgSend_setUsage_(v96, v97, 19, v98);
    objc_msgSend_setResourceOptions_(v95, v99, 32, v100);
    objc_msgSend_setCompressionFootprint_(v95, v101, 0, v102);
    objc_msgSend_setCompressionMode_(v95, v103, 0, v104);
    objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v105, 25, v252, v60, 0);
  }
  v106 = ;
  if (!v106)
  {
    sub_295EB279C(v95);
LABEL_101:
    v238 = -12786;
    goto LABEL_109;
  }

  v109 = v106;
  v254 = v95;
  objc_msgSend_setUsage_(v106, v107, 19, v108);
  objc_msgSend_setResourceOptions_(v109, v110, 32, v111);
  objc_msgSend_setCompressionFootprint_(v109, v112, 0, v113);
  objc_msgSend_setCompressionMode_(v109, v114, 0, v115);
  v117 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v116, 30, v252, v60, 0);
  if (!v117)
  {
    sub_295EB2708(v109, v95);
    goto LABEL_101;
  }

  v120 = v117;
  objc_msgSend_setUsage_(v117, v118, 19, v119);
  objc_msgSend_setResourceOptions_(v120, v121, 32, v122);
  objc_msgSend_setCompressionFootprint_(v120, v123, 0, v124);
  objc_msgSend_setCompressionMode_(v120, v125, 0, v126);
  v128 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v127, 10, v252, v60, 0);
  if (!v128)
  {
    sub_295EB2664(v120, v109, v254);
    goto LABEL_101;
  }

  v131 = v60;
  v132 = v128;
  objc_msgSend_setUsage_(v128, v129, 19, v130);
  objc_msgSend_setResourceOptions_(v132, v133, 32, v134);
  objc_msgSend_setCompressionFootprint_(v132, v135, 0, v136);
  v250 = v132;
  objc_msgSend_setCompressionMode_(v132, v137, 0, v138);
  v140 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v139, 70, v252, v131, 0);
  if (!v140)
  {
    sub_295EB25B8(v132, v120, v109, v254);
    goto LABEL_101;
  }

  v143 = v140;
  objc_msgSend_setUsage_(v140, v141, 19, v142);
  objc_msgSend_setResourceOptions_(v143, v144, 32, v145);
  objc_msgSend_setCompressionFootprint_(v143, v146, 0, v147);
  v248 = v143;
  objc_msgSend_setCompressionMode_(v143, v148, 0, v149);
  v151 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v150, 30, v252, v131, 0);
  if (!v151)
  {
    fig_log_get_emitter();
    FigDebugAssert3();

LABEL_100:
    goto LABEL_101;
  }

  v154 = v151;
  objc_msgSend_setUsage_(v151, v152, 19, v153);
  objc_msgSend_setResourceOptions_(v154, v155, 32, v156);
  objc_msgSend_setCompressionFootprint_(v154, v157, 0, v158);
  objc_msgSend_setCompressionMode_(v154, v159, 0, v160);
  v164 = v259;
  v253 = v109;
  if (!v259)
  {
    v165 = (v62 - 1 + 4 * v255) / v62 * v62;
    v166 = v64 * v258;
    v167 = v165 * v256;
    if (v165 * v256 <= v63 * v258)
    {
      v168 = v63 * v258;
    }

    else
    {
      v168 = v165 * v256;
    }

    if (v166 >= 2 * v167 && v168 + v167 < v166)
    {
      v169 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v161, v254, 0, v165);
      disparityRefinement_weightsX_tex = self->_disparityRefinement_weightsX_tex;
      self->_disparityRefinement_weightsX_tex = v169;

      if (self->_disparityRefinement_weightsX_tex)
      {
        v172 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v171, v254, v168, v165);
        disparityRefinement_weightsY_tex = self->_disparityRefinement_weightsY_tex;
        self->_disparityRefinement_weightsY_tex = v172;

        if (!self->_disparityRefinement_weightsY_tex)
        {
          fig_log_get_emitter();
          FigDebugAssert3();
          fig_log_get_emitter();
          v238 = FigSignalErrorAtGM();

LABEL_107:
          goto LABEL_108;
        }

        v175 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v174, v253, v166, v64);
        disparityRefinement_sampledD_tex = self->_disparityRefinement_sampledD_tex;
        self->_disparityRefinement_sampledD_tex = v175;

        v164 = v259;
        if (!self->_disparityRefinement_sampledD_tex)
        {
          fig_log_get_emitter();
          FigDebugAssert3();
          fig_log_get_emitter();
          v238 = FigSignalErrorAtGM();

LABEL_108:
          goto LABEL_109;
        }

        goto LABEL_47;
      }

      fig_log_get_emitter();
      FigDebugAssert3();
      fig_log_get_emitter();
      v238 = FigSignalErrorAtGM();

LABEL_109:
      v19 = v251;
LABEL_110:
      if (!v238)
      {
        goto LABEL_71;
      }

      goto LABEL_111;
    }

    fig_log_get_emitter();
    FigDebugAssert3();

    goto LABEL_100;
  }

LABEL_47:
  v177 = self->_halfResRGBABuffer1;
  if (v257)
  {
    v178 = objc_msgSend_device(v177, v161, v162, v163);
    v181 = objc_msgSend_newTextureWithDescriptor_(v178, v179, v154, v180);
    disparityRefinement_blurmap_tex = self->_disparityRefinement_blurmap_tex;
    self->_disparityRefinement_blurmap_tex = v181;
  }

  else
  {
    v183 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(v177, v161, v250, 0, v63);
    v178 = self->_disparityRefinement_blurmap_tex;
    self->_disparityRefinement_blurmap_tex = v183;
  }

  if (!self->_disparityRefinement_blurmap_tex)
  {
    goto LABEL_105;
  }

  v185 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v184, v120, 0, v64);
  blurMapSmoothing_intermediate_tex = self->_blurMapSmoothing_intermediate_tex;
  self->_blurMapSmoothing_intermediate_tex = v185;

  if (!self->_blurMapSmoothing_intermediate_tex)
  {
    goto LABEL_105;
  }

  v188 = v64;
  v189 = v63 * v258;
  v190 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v187, v250, v63 * v258, v63);
  blurMapRefinement_alphaMaskDelta = self->_blurMapRefinement_alphaMaskDelta;
  self->_blurMapRefinement_alphaMaskDelta = v190;

  if (!self->_blurMapRefinement_alphaMaskDelta)
  {
    goto LABEL_105;
  }

  v193 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v192, v250, 2 * v189, v63);
  blurMapRefinement_hairMaskDelta = self->_blurMapRefinement_hairMaskDelta;
  self->_blurMapRefinement_hairMaskDelta = v193;

  if (!self->_blurMapRefinement_hairMaskDelta)
  {
    goto LABEL_105;
  }

  v196 = v154;
  v197 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v195, v250, 3 * v189, v63);
  blurMapRefinement_intermediate = self->_blurMapRefinement_intermediate;
  self->_blurMapRefinement_intermediate = v197;

  if (!self->_blurMapRefinement_intermediate || (v200 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v199, v248, 0, v249), rendering_halfResRGBA1_tex = self->_rendering_halfResRGBA1_tex, self->_rendering_halfResRGBA1_tex = v200, rendering_halfResRGBA1_tex, !self->_rendering_halfResRGBA1_tex))
  {
    fig_log_get_emitter();
    v243 = v120;
    FigDebugAssert3();
    fig_log_get_emitter();
    v238 = FigSignalErrorAtGM();

LABEL_106:
    goto LABEL_107;
  }

  v203 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v202, v154, 0, v188);
  rendering_halfResRG_tex = self->_rendering_halfResRG_tex;
  self->_rendering_halfResRG_tex = v203;

  if (!self->_rendering_halfResRG_tex)
  {
    goto LABEL_105;
  }

  if (!v164)
  {
    v206 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer2, v205, v248, 0, v249);
    disparityRefinement_preproc_tex = self->_disparityRefinement_preproc_tex;
    self->_disparityRefinement_preproc_tex = v206;

    if (!self->_disparityRefinement_preproc_tex)
    {
      goto LABEL_105;
    }
  }

  v208 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer2, v205, v250, 0, v63);
  faceMask_adjBlurmap_tex = self->_faceMask_adjBlurmap_tex;
  self->_faceMask_adjBlurmap_tex = v208;

  if (!self->_faceMask_adjBlurmap_tex || (v211 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer2, v210, v250, 0, v63), blurMapSmoothing_result_tex = self->_blurMapSmoothing_result_tex, self->_blurMapSmoothing_result_tex = v211, blurMapSmoothing_result_tex, !self->_blurMapSmoothing_result_tex))
  {
LABEL_105:
    fig_log_get_emitter();
    v244 = v154;
    v243 = v120;
    FigDebugAssert3();
    fig_log_get_emitter();
    v238 = FigSignalErrorAtGM();

    goto LABEL_106;
  }

  v214 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer2, v213, v248, 0, v249);
  rendering_halfResRGBA2_tex = self->_rendering_halfResRGBA2_tex;
  self->_rendering_halfResRGBA2_tex = v214;

  v19 = v251;
  if (!self->_rendering_halfResRGBA2_tex)
  {
    fig_log_get_emitter();
    v218 = v120;
    FigDebugAssert3();
    fig_log_get_emitter();
LABEL_97:
    v238 = FigSignalErrorAtGM();

    goto LABEL_110;
  }

  v218 = v120;
  v219 = objc_msgSend_newTextureViewWithPixelFormat_(self->_rendering_halfResRGBA1_tex, v216, 71, v217);
  rendering_halfResRGBAsRGB1_texalias = self->_rendering_halfResRGBAsRGB1_texalias;
  self->_rendering_halfResRGBAsRGB1_texalias = v219;

  if (!self->_rendering_halfResRGBAsRGB1_texalias || (v223 = objc_msgSend_newTextureViewWithPixelFormat_(self->_rendering_halfResRGBA2_tex, v221, 71, v222), rendering_halfResRGBAsRGB2_texalias = self->_rendering_halfResRGBAsRGB2_texalias, self->_rendering_halfResRGBAsRGB2_texalias = v223, rendering_halfResRGBAsRGB2_texalias, !self->_rendering_halfResRGBAsRGB2_texalias))
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    goto LABEL_97;
  }

  objc_storeStrong(&self->_metalContext, obj);
  a4 = v246;
  self->_inputImageWidth = v246;
  self->_inputImageHeight = v247;
  a7 = v256;
  self->_shiftMapWidth = v255;
  self->_shiftMapHeight = v256;

  a6 = v255;
  a5 = v247;

LABEL_65:
  v225 = objc_msgSend_device(v19, v16, v17, v18);
  v229 = objc_msgSend_hash(v225, v226, v227, v228);
  v233 = objc_msgSend_device(self->_metalContext, v230, v231, v232);
  v237 = objc_msgSend_hash(v233, v234, v235, v236);

  if (v229 == v237)
  {
    if (self->_inputImageWidth == a4)
    {
      if (self->_inputImageHeight == a5)
      {
        if (self->_shiftMapWidth == a6)
        {
          if (self->_shiftMapHeight == a7)
          {
            v238 = 0;
            ++self->_referenceCount;
            goto LABEL_71;
          }

          sub_295EB2540();
        }

        else
        {
          sub_295EB24C8();
        }
      }

      else
      {
        sub_295EB2450();
      }
    }

    else
    {
      sub_295EB23D8();
    }
  }

  else
  {
    sub_295EB2360();
  }

  v238 = -12780;
LABEL_111:
  if (!self->_referenceCount)
  {
    objc_msgSend_clearInstance(self, v240, v241, v242);
  }

LABEL_71:

  return v238;
}

- (void)deallocateResources
{
  referenceCount = self->_referenceCount;
  v5 = __OFSUB__(referenceCount--, 1);
  self->_referenceCount = referenceCount;
  if ((referenceCount < 0) ^ v5 | (referenceCount == 0))
  {
    objc_msgSend_clearInstance(self, a2, v2, v3);
  }
}

- (BOOL)activateResources
{
  activeCount = self->_activeCount;
  if (!activeCount)
  {
    objc_msgSend_setPurgeableState_(self->_halfResRGBABuffer1, a2, 2, v2);
    objc_msgSend_setPurgeableState_(self->_halfResRGBABuffer2, v5, 2, v6);
    objc_msgSend_setPurgeableState_(self->_rendering_xhlrbProcessList_buf, v7, 2, v8);
    objc_msgSend_setPurgeableState_(self->_slm_mapping_buf, v9, 2, v10);
    activeCount = self->_activeCount;
  }

  self->_activeCount = activeCount + 1;
  return 1;
}

- (void)deactivateResources
{
  v4 = self->_activeCount - 1;
  self->_activeCount = v4;
  if (!v4)
  {
    objc_msgSend_setPurgeableState_(self->_halfResRGBABuffer1, a2, 3, v2);
    objc_msgSend_setPurgeableState_(self->_halfResRGBABuffer2, v6, 3, v7);
    objc_msgSend_setPurgeableState_(self->_rendering_xhlrbProcessList_buf, v8, 3, v9);
    slm_mapping_buf = self->_slm_mapping_buf;

    objc_msgSend_setPurgeableState_(slm_mapping_buf, v10, 3, v11);
  }
}

@end