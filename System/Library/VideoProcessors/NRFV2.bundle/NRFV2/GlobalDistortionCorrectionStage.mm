@interface GlobalDistortionCorrectionStage
+ (int)prewarmShaders:(id)a3;
- (GlobalDistortionCorrectionStage)initWithMetalContext:(id)a3;
- (int)_copyTexture:(id)a3 outTex:(id)a4;
- (int)applyInplace:(__CVBuffer *)a3 gdcParams:(const GlobalDistortionCorrectionParameters *)a4 cscParams:(const ColorSpaceConversionParameters *)a5;
@end

@implementation GlobalDistortionCorrectionStage

- (GlobalDistortionCorrectionStage)initWithMetalContext:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = GlobalDistortionCorrectionStage;
  v6 = [(GlobalDistortionCorrectionStage *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, a3);
    v11 = objc_msgSend_sharedInstance(GlobalDistortionCorrectionShared, v8, v9, v10);
    v14 = objc_msgSend_getShaders_(v11, v12, v7[1], v13);
    v15 = v7[2];
    v7[2] = v14;

    v16 = v7;
    if (!v7[2])
    {
      sub_2958C2C80(v7, &v20);
      v16 = v20;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v17;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [GlobalDistortionCorrectionShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, v3, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -12786;
  }

  return v8;
}

- (int)applyInplace:(__CVBuffer *)a3 gdcParams:(const GlobalDistortionCorrectionParameters *)a4 cscParams:(const ColorSpaceConversionParameters *)a5
{
  v5 = a3;
  v249 = 0;
  v250 = 0;
  if (!a3)
  {
    sub_2958C3810(&v244);
LABEL_43:
    v63 = 0;
    v29 = 0;
    goto LABEL_44;
  }

  if (!a4)
  {
    sub_2958C3774(&v244);
LABEL_32:
    v5 = 0;
    goto LABEL_43;
  }

  if (!a5)
  {
    sub_2958C36D8(&v244);
    goto LABEL_32;
  }

  nonLinearPower_high = HIBYTE(a5[3].transferFunctionInv.nonLinearPower);
  v10 = [LumaChromaImage alloc];
  v5 = objc_msgSend_initWithContext_pixelBuffer_lumaAlignmentFactor_chromaAlignmentFactor_(v10, v11, self->_metal, v5, 1, 1);
  v15 = *(v5 + 16);
  if (!v15)
  {
    sub_2958C363C(&v244);
    goto LABEL_43;
  }

  if (!*(v5 + 24))
  {
    sub_2958C35A0(&v244);
    goto LABEL_43;
  }

  if (!nonLinearPower_high)
  {
    goto LABEL_10;
  }

  v16 = objc_msgSend_bindYCbCrTexture_alignmentFactor_(v5, v12, self->_metal, 1);
  if (v16)
  {
    v231 = v16;
    sub_2958C2D30();
    v63 = 0;
    v29 = 0;
    v98 = 0;
    v137 = 0;
    goto LABEL_28;
  }

  if (!*(v5 + 32))
  {
    sub_2958C2D90(&v244);
    goto LABEL_43;
  }

  v15 = *(v5 + 16);
LABEL_10:
  v17 = objc_msgSend_width(v15, v12, v13, v14);
  v21 = objc_msgSend_height(*(v5 + 16), v18, v19, v20);
  v25 = objc_msgSend_allocator(self->_metal, v22, v23, v24);
  v29 = objc_msgSend_newTextureDescriptor(v25, v26, v27, v28);

  if (!v29)
  {
    sub_2958C3504(&v244);
    v63 = 0;
LABEL_44:
    v98 = 0;
    goto LABEL_45;
  }

  v33 = objc_msgSend_desc(v29, v30, v31, v32);
  objc_msgSend_setWidth_(v33, v34, v17, v35);

  v39 = objc_msgSend_desc(v29, v36, v37, v38);
  objc_msgSend_setHeight_(v39, v40, v21, v41);

  v45 = objc_msgSend_desc(v29, v42, v43, v44);
  objc_msgSend_setUsage_(v45, v46, 3, v47);

  v51 = objc_msgSend_desc(v29, v48, v49, v50);
  objc_msgSend_setPixelFormat_(v51, v52, 25, v53);

  objc_msgSend_setLabel_(v29, v54, 0, v55);
  v59 = objc_msgSend_allocator(self->_metal, v56, v57, v58);
  v63 = objc_msgSend_newTextureDescriptor(v59, v60, v61, v62);

  if (!v63)
  {
    sub_2958C3468(&v244);
    goto LABEL_44;
  }

  v240 = v17;
  v67 = objc_msgSend_desc(v63, v64, v65, v66);
  v236 = v17 >> 1;
  objc_msgSend_setWidth_(v67, v68, v17 >> 1, v69);

  v239 = v21;
  v70 = v21 >> 1;
  v74 = objc_msgSend_desc(v63, v71, v72, v73);
  objc_msgSend_setHeight_(v74, v75, v70, v76);

  v80 = objc_msgSend_desc(v63, v77, v78, v79);
  objc_msgSend_setUsage_(v80, v81, 3, v82);

  v86 = objc_msgSend_desc(v63, v83, v84, v85);
  objc_msgSend_setPixelFormat_(v86, v87, 65, v88);

  objc_msgSend_setLabel_(v63, v89, 0, v90);
  v94 = objc_msgSend_commandQueue(self->_metal, v91, v92, v93);
  v98 = objc_msgSend_commandBuffer(v94, v95, v96, v97);

  if (!v98)
  {
    sub_2958C33CC(&v244);
LABEL_45:
    v137 = 0;
    v231 = v244;
    goto LABEL_28;
  }

  v238 = v98;
  v98 = objc_msgSend_computeCommandEncoder(v98, v99, v100, v101);
  if (!v98)
  {
    sub_2958C3330(&v244);
    goto LABEL_48;
  }

  v105 = *&a5[3].transferFunctionFwd.linearThreshold;
  v106 = *&a5[3].transferFunctionInv.linearScale;
  v107 = *&a5[2].transferFunctionInv.linearThreshold;
  v248[9] = *&a5[2].finalScaleFwd;
  v248[10] = v105;
  v108 = *&a5[3].transferFunctionInv.nonLinearPower;
  v248[11] = v106;
  v248[12] = v108;
  v109 = *&a5[1].finalScale;
  v110 = *&a5[2].transferFunctionFwd.nonLinearScale;
  v111 = *&a5[1].transferFunctionFwd.nonLinearBias;
  v248[5] = *&a5[1].transferFunctionInv.nonLinearScale;
  v248[6] = v109;
  v248[7] = v110;
  v248[8] = v107;
  v112 = *&a5->transferFunctionInv.nonLinearBias;
  v113 = *&a5->outputToLinearYCbCr;
  v114 = *&a5->transferFunctionFwd.linearScale;
  v248[1] = *&a5->transferFunctionFwd.nonLinearPower;
  v248[2] = v112;
  v248[3] = v113;
  v248[4] = v111;
  v115 = *&a4->var2[2];
  v247[0] = *&a4->var0;
  v247[1] = v115;
  v247[2] = *&a4->var2[6];
  v248[0] = v114;
  v237 = v29;
  if (nonLinearPower_high)
  {
    v116 = objc_msgSend_allocator(self->_metal, v102, v103, v104);
    v119 = objc_msgSend_newTextureWithDescriptor_(v116, v117, v63, v118);
    v249 = v119;

    if (v119)
    {
      v123 = objc_msgSend_allocator(self->_metal, v120, v121, v122);
      v126 = objc_msgSend_newTextureWithDescriptor_(v123, v124, v29, v125);
      v250 = v126;

      if (v126)
      {
        objc_msgSend_setTexture_atIndex_(v98, v127, *(v5 + 32), 0);
        objc_msgSend_setTexture_atIndex_(v98, v128, v126, 1);
        objc_msgSend_setTexture_atIndex_(v98, v129, v119, 2);
        objc_msgSend_setBytes_length_atIndex_(v98, v130, v247, 256, 0);
        objc_msgSend_setComputePipelineState_(v98, v131, self->_shaders->_kernelGlobalDistortionCorrectionHWCSC, v132);
        v244 = v240;
        v245 = v239;
        v246 = 1;
        v242 = vdupq_n_s64(0x20uLL);
        v243 = 1;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v98, v133, &v244, &v242);
        objc_msgSend_endEncoding(v98, v134, v135, v136);
        v137 = v238;
        objc_msgSend_commit(v238, v138, v139, v140);
        goto LABEL_25;
      }

      sub_2958C2E2C(&v244);
    }

    else
    {
      sub_2958C2EC8(&v244);
    }

LABEL_48:
    v231 = v244;
    v137 = v238;
    goto LABEL_28;
  }

  v241 = 0;
  v142 = objc_msgSend_allocator(self->_metal, v102, v103, v104);
  v146 = objc_msgSend_newTextureDescriptor(v142, v143, v144, v145);

  if (v146)
  {
    v150 = objc_msgSend_desc(v146, v147, v148, v149);
    objc_msgSend_setWidth_(v150, v151, v240, v152);

    v156 = objc_msgSend_desc(v146, v153, v154, v155);
    objc_msgSend_setHeight_(v156, v157, v239, v158);

    v162 = objc_msgSend_desc(v146, v159, v160, v161);
    objc_msgSend_setUsage_(v162, v163, 3, v164);

    v168 = objc_msgSend_allocator(self->_metal, v165, v166, v167);
    v126 = objc_msgSend_newTextureWithDescriptor_(v168, v169, v29, v170);
    v250 = v126;

    if (v126)
    {
      v174 = objc_msgSend_allocator(self->_metal, v171, v172, v173);
      v177 = objc_msgSend_newTextureWithDescriptor_(v174, v175, v63, v176);
      v249 = v177;

      if (v177)
      {
        v235 = v70;
        v181 = objc_msgSend_desc(v146, v178, v179, v180);
        objc_msgSend_setPixelFormat_(v181, v182, 25, v183);

        objc_msgSend_setLabel_(v146, v184, 0, v185);
        v189 = objc_msgSend_allocator(self->_metal, v186, v187, v188);
        v192 = objc_msgSend_newTextureWithDescriptor_(v189, v190, v146, v191);
        v241 = v192;

        if (v192)
        {
          v234 = v177;
          v196 = objc_msgSend_desc(v146, v193, v194, v195);
          objc_msgSend_setPixelFormat_(v196, v197, 65, v198);

          objc_msgSend_setLabel_(v146, v199, 0, v200);
          v204 = objc_msgSend_allocator(self->_metal, v201, v202, v203);
          v207 = objc_msgSend_newTextureWithDescriptor_(v204, v205, v146, v206);

          if (v207)
          {
            objc_msgSend_setTexture_atIndex_(v98, v208, *(v5 + 16), 0);
            v209 = 1;
            objc_msgSend_setTexture_atIndex_(v98, v210, *(v5 + 24), 1);
            objc_msgSend_setTexture_atIndex_(v98, v211, v192, 2);
            objc_msgSend_setTexture_atIndex_(v98, v212, v207, 3);
            objc_msgSend_setBytes_length_atIndex_(v98, v213, v248, 208, 0);
            objc_msgSend_setComputePipelineState_(v98, v214, self->_shaders->_kernelGlobalDistortionCorrectionSWCSCtoLinearRGB, v215);
            v244 = v236;
            v245 = v235;
            v246 = 1;
            v242 = vdupq_n_s64(8uLL);
            v243 = 1;
            objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v98, v216, &v244, &v242);
            objc_msgSend_setTexture_atIndex_(v98, v217, v192, 0);
            objc_msgSend_setTexture_atIndex_(v98, v218, v207, 1);
            objc_msgSend_setTexture_atIndex_(v98, v219, v126, 2);
            objc_msgSend_setTexture_atIndex_(v98, v220, v234, 3);
            objc_msgSend_setBytes_length_atIndex_(v98, v221, v247, 256, 0);
            objc_msgSend_setComputePipelineState_(v98, v222, self->_shaders->_kernelGlobalDistortionCorrectionLinearRGB, v223);
            v244 = v240;
            v245 = v239;
            v246 = 1;
            v242 = vdupq_n_s64(0x10uLL);
            v243 = 1;
            objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v98, v224, &v244, &v242);
            objc_msgSend_endEncoding(v98, v225, v226, v227);
            v137 = v238;
            objc_msgSend_commit(v238, v228, v229, v230);
            FigMetalDecRef();
            FigMetalDecRef();

            v231 = 0;
            goto LABEL_24;
          }

          sub_2958C2F64(&v244);
        }

        else
        {
          sub_2958C3000(&v244);
        }
      }

      else
      {
        sub_2958C309C(&v244);
      }
    }

    else
    {
      sub_2958C3138(&v244);
    }
  }

  else
  {
    sub_2958C31D4(&v244);
    v126 = 0;
  }

  v209 = 0;
  v231 = v244;
  v137 = v238;
LABEL_24:

  if (!v209)
  {
LABEL_40:
    v29 = v237;
    goto LABEL_28;
  }

LABEL_25:
  v231 = objc_msgSend__copyTexture_outTex_(self, v141, v126, *(v5 + 16));
  FigMetalDecRef();
  if (v231)
  {
    sub_2958C3270();
    goto LABEL_40;
  }

  v231 = objc_msgSend__copyTexture_outTex_(self, v232, v249, *(v5 + 24));
  FigMetalDecRef();
  v29 = v237;
  if (v231)
  {
    sub_2958C32D0();
  }

LABEL_28:

  return v231;
}

- (int)_copyTexture:(id)a3 outTex:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_commandQueue(self->_metal, v8, v9, v10);
  v15 = objc_msgSend_commandBuffer(v11, v12, v13, v14);

  if (!v15)
  {
    sub_2958C3AB0(v56);
LABEL_22:
    v53 = v56[0];
    v33 = v7;
    goto LABEL_19;
  }

  v19 = objc_msgSend_computeCommandEncoder(v15, v16, v17, v18);
  if (!v19)
  {
    sub_2958C3A14(v56);
    goto LABEL_22;
  }

  v23 = v19;
  isCompressed = objc_msgSend_isCompressed(v7, v20, v21, v22);
  if (isCompressed)
  {
    v28 = 32;
  }

  else
  {
    v28 = 4;
  }

  if (isCompressed)
  {
    v29 = 32;
  }

  else
  {
    v29 = 64;
  }

  if ((objc_msgSend_isCompressed(v7, v25, v26, v27) & 1) != 0 || objc_msgSend_pixelFormat(v7, v30, v31, v32) != 588)
  {
    if ((objc_msgSend_isCompressed(v7, v30, v31, v32) & 1) != 0 || objc_msgSend_pixelFormat(v7, v34, v37, v35) != 589)
    {
      v36 = 16;
      v33 = v7;
      goto LABEL_18;
    }

    v33 = objc_msgSend_rebindTex_format_usage_plane_xFactor_(self->_metal, v34, v7, 103, 6, 1, 3);

    if (v33)
    {
      v36 = 32;
      goto LABEL_18;
    }

    sub_2958C3960(v23, v56);
LABEL_25:
    v53 = v56[0];
    goto LABEL_19;
  }

  v33 = objc_msgSend_rebindTex_format_usage_plane_xFactor_(self->_metal, v30, v7, 53, 6, 0, 3);

  if (!v33)
  {
    sub_2958C38AC(v23, v56);
    goto LABEL_25;
  }

  v36 = 24;
LABEL_18:
  objc_msgSend_setComputePipelineState_(v23, v34, *(&self->_shaders->super.isa + v36), v35);
  objc_msgSend_setTexture_atIndex_(v23, v38, v6, 0);
  objc_msgSend_setTexture_atIndex_(v23, v39, v33, 1);
  v56[0] = objc_msgSend_width(v33, v40, v41, v42);
  v56[1] = objc_msgSend_height(v33, v43, v44, v45);
  v56[2] = 1;
  v55[0] = v29;
  v55[1] = v28;
  v55[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v23, v46, v56, v55);
  objc_msgSend_endEncoding(v23, v47, v48, v49);
  objc_msgSend_commit(v15, v50, v51, v52);

  v53 = 0;
LABEL_19:

  return v53;
}

@end