@interface SuperPixelHoleFillMetal
- (SuperPixelHoleFillMetal)initWithMetalContext:(id)a3;
- (int)RunSolver:(float)a3;
- (int)computeStage0:(id *)a3 inImageTexture:(id)a4 inLabelTexture:(id)a5 inPersonMaskTexture:(id)a6 inInstanceSegmentationLayer0Texture:(id)a7 inInstanceSegmentationLayer1Texture:(id)a8 inInstanceSegmentationLayer2Texture:(id)a9 inInstanceSegmentationLayer3Texture:(id)a10;
- (int)computeStage4:(id *)a3 inLabelTexture:(id)a4 inDepthTex:(id)a5 inConfTex:(id)a6 inDistanceTransformMapTex:(id)a7 maxDist:(float)a8 sigma_den:(float)a9;
- (int)computeStageSolver:(id *)a3 inLabelTexture:(id)a4 inConfTex:(id)a5 inImageTex:(id)a6 outDepthTex:(id)a7 outConfTex:(id)a8;
- (int)convertFrom420fPixelBuffer:(id *)a3 lumaTexture:(id)a4 chromaTexture:(id)a5 toSlicRgbaTexture:(id)a6;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation SuperPixelHoleFillMetal

- (SuperPixelHoleFillMetal)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_29572EF1C();
    goto LABEL_23;
  }

  v53.receiver = self;
  v53.super_class = SuperPixelHoleFillMetal;
  v6 = [(SuperPixelHoleFillMetal *)&v53 init];
  self = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, a3);
    v10 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v7, @"kernelConvertToRbga", 0, v8, v9);
    kernelConvertToRbga = self->_kernelConvertToRbga;
    self->_kernelConvertToRbga = v10;

    if (self->_kernelConvertToRbga)
    {
      v15 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v12, @"kernelComputeStage0", 0, v13, v14);
      kernelComputeStage0 = self->_kernelComputeStage0;
      self->_kernelComputeStage0 = v15;

      if (self->_kernelComputeStage0)
      {
        v20 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v17, @"kernelComputeStage1", 0, v18, v19);
        kernelComputeStage1 = self->_kernelComputeStage1;
        self->_kernelComputeStage1 = v20;

        if (self->_kernelComputeStage1)
        {
          v25 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v22, @"kernelComputeStage2", 0, v23, v24);
          kernelComputeStage2 = self->_kernelComputeStage2;
          self->_kernelComputeStage2 = v25;

          if (self->_kernelComputeStage2)
          {
            v30 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v27, @"kernelComputeStage4", 0, v28, v29);
            kernelComputeStage4 = self->_kernelComputeStage4;
            self->_kernelComputeStage4 = v30;

            if (self->_kernelComputeStage4)
            {
              v35 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v32, @"kernelComputeStage5", 0, v33, v34);
              kernelComputeStage5 = self->_kernelComputeStage5;
              self->_kernelComputeStage5 = v35;

              if (self->_kernelComputeStage5)
              {
                v40 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v37, @"kernelFindLabelRoi", 0, v38, v39);
                kernelFindLabelRoi = self->_kernelFindLabelRoi;
                self->_kernelFindLabelRoi = v40;

                if (self->_kernelFindLabelRoi)
                {
                  v45 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v42, @"kernelSuperPixel2Image", 0, v43, v44);
                  kernelSuperPixel2Image = self->_kernelSuperPixel2Image;
                  self->_kernelSuperPixel2Image = v45;

                  if (self->_kernelSuperPixel2Image)
                  {
                    v50 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v47, @"kernelComputeConfidence", 0, v48, v49);
                    kernelComputeConfidence = self->_kernelComputeConfidence;
                    self->_kernelComputeConfidence = v50;

                    if (self->_kernelComputeConfidence)
                    {
                      goto LABEL_12;
                    }

                    sub_29572EB08();
                  }

                  else
                  {
                    sub_29572EB7C();
                  }
                }

                else
                {
                  sub_29572EBF0();
                }
              }

              else
              {
                sub_29572EC64();
              }
            }

            else
            {
              sub_29572ECD8();
            }
          }

          else
          {
            sub_29572ED4C();
          }
        }

        else
        {
          sub_29572EDC0();
        }
      }

      else
      {
        sub_29572EE34();
      }
    }

    else
    {
      sub_29572EEA8();
    }

LABEL_23:

    self = 0;
  }

LABEL_12:

  return self;
}

- (void)releaseResources
{
  solverMemoryPointer = self->_solverMemoryPointer;
  if (solverMemoryPointer)
  {
    self->_solverMemoryPointer = 0;
    free(solverMemoryPointer);
  }

  workMem = self->_workMem;
  self->_workMem = 0;

  superPixelsBoundaries = self->_superPixelsBoundaries;
  self->_superPixelsBoundaries = 0;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = SuperPixelHoleFillMetal;
  [(SuperPixelHoleFillMetal *)&v7 dealloc];
}

- (int)convertFrom420fPixelBuffer:(id *)a3 lumaTexture:(id)a4 chromaTexture:(id)a5 toSlicRgbaTexture:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18 = v12;
  if (!self->_metalContext)
  {
    sub_29572F90C(v137);
    goto LABEL_26;
  }

  if (!v10)
  {
    sub_29572F860(v137);
    goto LABEL_26;
  }

  if (!v11)
  {
    sub_29572F7B4(v137);
    goto LABEL_26;
  }

  if (!v12)
  {
    sub_29572F708(v137);
    goto LABEL_26;
  }

  v19 = objc_msgSend_width(v10, v13, v14, v15, v16, v17);
  v25 = objc_msgSend_height(v10, v20, v21, v22, v23, v24);
  if (objc_msgSend_pixelFormat(v10, v26, v27, v28, v29, v30) != 10)
  {
    sub_29572F2EC(v137);
    goto LABEL_26;
  }

  if (objc_msgSend_pixelFormat(v11, v31, v32, v33, v34, v35) != 30)
  {
    sub_29572F398(v137);
    goto LABEL_26;
  }

  if (objc_msgSend_pixelFormat(v18, v36, v37, v38, v39, v40) != 70)
  {
    sub_29572F444(v137);
    goto LABEL_26;
  }

  if (v19 != objc_msgSend_width(v18, v41, v42, v43, v44, v45) || v25 != objc_msgSend_height(v18, v46, v47, v48, v49, v50))
  {
    sub_29572F4F0(v137);
LABEL_26:
    v134 = v137[0];
    goto LABEL_15;
  }

  v56 = objc_msgSend_commandQueue(self->_metalContext, v51, v52, v53, v54, v55);
  v62 = objc_msgSend_commandBuffer(v56, v57, v58, v59, v60, v61);

  if (!v62)
  {
    sub_29572F65C(v137);
    goto LABEL_26;
  }

  var1 = a3->var0.var0.var1;
  v139 = vdiv_f32(*&a3->var0.var0.var2, vdup_n_s32(0x437F0000u));
  var0 = a3->var0.var0.var0;
  v68 = objc_msgSend_computeCommandEncoder(v62, v63, v64, v65, v66, v67);
  if (!v68)
  {
    sub_29572F59C(&var1, v62);
    goto LABEL_26;
  }

  v73 = v68;
  objc_msgSend_setComputePipelineState_(v68, v69, self->_kernelConvertToRbga, v70, v71, v72);
  objc_msgSend_setTexture_atIndex_(v73, v74, v10, 0, v75, v76);
  objc_msgSend_setTexture_atIndex_(v73, v77, v11, 1, v78, v79);
  objc_msgSend_setTexture_atIndex_(v73, v80, v18, 2, v81, v82);
  objc_msgSend_setBytes_length_atIndex_(v73, v83, &var1, 16, 0, v84);
  v90 = objc_msgSend_threadExecutionWidth(self->_kernelConvertToRbga, v85, v86, v87, v88, v89);
  v96 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelConvertToRbga, v91, v92, v93, v94, v95);
  v137[0] = v19 >> 1;
  v137[1] = v25 >> 1;
  v137[2] = 1;
  v136[0] = v90;
  v136[1] = v96 / v90;
  v136[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v73, v97, v137, v136, v98, v99);
  objc_msgSend_endEncoding(v73, v100, v101, v102, v103, v104);
  if (*MEMORY[0x29EDB9270])
  {
    v110 = objc_msgSend_commandQueue(v62, v105, v106, v107, v108, v109);
    v116 = objc_msgSend_commandBuffer(v110, v111, v112, v113, v114, v115);

    objc_msgSend_setLabel_(v116, v117, @"KTRACE_MTLCMDBUF", v118, v119, v120);
    objc_msgSend_addCompletedHandler_(v116, v121, &unk_2A1C98290, v122, v123, v124);
    objc_msgSend_commit(v116, v125, v126, v127, v128, v129);
    objc_msgSend_addCompletedHandler_(v62, v130, &unk_2A1C982B0, v131, v132, v133);
  }

  objc_msgSend_commit(v62, v105, v106, v107, v108, v109);

  v134 = 0;
LABEL_15:

  return v134;
}

- (int)computeStage0:(id *)a3 inImageTexture:(id)a4 inLabelTexture:(id)a5 inPersonMaskTexture:(id)a6 inInstanceSegmentationLayer0Texture:(id)a7 inInstanceSegmentationLayer1Texture:(id)a8 inInstanceSegmentationLayer2Texture:(id)a9 inInstanceSegmentationLayer3Texture:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v375 = a7;
  v373 = a8;
  v19 = a9;
  v377 = a10;
  if (!self->_metalContext)
  {
    sub_2957306C8(&v381);
    v370 = v381;
    v26 = v373;
    v25 = v375;
    goto LABEL_47;
  }

  v26 = v373;
  v25 = v375;
  if (!self->_solverMemoryPointer)
  {
    sub_29573061C(&v381);
    goto LABEL_63;
  }

  if (!v16)
  {
    sub_295730570(&v381);
    goto LABEL_63;
  }

  if (!v17)
  {
    sub_2957304C4(&v381);
    goto LABEL_63;
  }

  if (!v18)
  {
    sub_295730418(&v381);
    goto LABEL_63;
  }

  if (!v375)
  {
    sub_29573036C(&v381);
    goto LABEL_63;
  }

  if (!v373)
  {
    sub_2957302C0(&v381);
    goto LABEL_63;
  }

  if (!v19)
  {
    sub_295730214(&v381);
    goto LABEL_63;
  }

  if (!v377)
  {
    sub_295730168(&v381);
    goto LABEL_63;
  }

  if (objc_msgSend_pixelFormat(v17, v20, v21, v22, v23, v24) != 23)
  {
    sub_29572F9B8(&v381);
    goto LABEL_63;
  }

  v32 = objc_msgSend_width(v17, v27, v28, v29, v30, v31);
  v38 = objc_msgSend_height(v17, v33, v34, v35, v36, v37);
  if (objc_msgSend_pixelFormat(v16, v39, v40, v41, v42, v43) != 70)
  {
    sub_29572FA64(&v381);
    goto LABEL_63;
  }

  v376 = v19;
  v49 = objc_msgSend_width(v16, v44, v45, v46, v47, v48);
  v55 = objc_msgSend_height(v16, v50, v51, v52, v53, v54);
  if (v32 != v49 || v38 != v55)
  {
    sub_2957300BC(&v381);
LABEL_67:
    v370 = v381;
    goto LABEL_46;
  }

  v19 = v376;
  if (objc_msgSend_pixelFormat(v18, v56, v57, v58, v59, v60) != 25 || !objc_msgSend_width(v18, v61, v62, v63, v64, v65) || !objc_msgSend_height(v18, v66, v67, v68, v69, v70))
  {
    sub_295730010(&v381);
    goto LABEL_63;
  }

  if (!objc_msgSend_width(v375, v71, v72, v73, v74, v75) || !objc_msgSend_width(v373, v76, v77, v78, v79, v80) || !objc_msgSend_width(v376, v81, v82, v83, v84, v85) || !objc_msgSend_width(v377, v86, v87, v88, v89, v90) || !objc_msgSend_height(v375, v91, v92, v93, v94, v95) || !objc_msgSend_height(v373, v96, v97, v98, v99, v100) || !objc_msgSend_height(v376, v101, v102, v103, v104, v105) || !objc_msgSend_height(v377, v106, v107, v108, v109, v110))
  {
    sub_29572FF64(&v381);
LABEL_63:
    v370 = v381;
    goto LABEL_47;
  }

  v116 = objc_msgSend_width(v375, v111, v112, v113, v114, v115);
  v122 = objc_msgSend_height(v375, v117, v118, v119, v120, v121);
  v128 = objc_msgSend_width(v373, v123, v124, v125, v126, v127);
  v134 = v128 == v116;
  v19 = v376;
  if (!v134 || (v135 = v128, objc_msgSend_width(v376, v129, v130, v131, v132, v133) != v128) || objc_msgSend_width(v377, v136, v137, v138, v139, v140) != v135)
  {
    sub_29572FB10(&v381);
    goto LABEL_63;
  }

  v146 = objc_msgSend_height(v373, v141, v142, v143, v144, v145);
  if (v146 != v122 || (v152 = v146, objc_msgSend_height(v376, v147, v148, v149, v150, v151) != v146) || objc_msgSend_height(v377, v153, v154, v155, v156, v157) != v152)
  {
    sub_29572FBBC(&v381);
    goto LABEL_63;
  }

  v163 = objc_msgSend_commandQueue(self->_metalContext, v158, v159, v160, v161, v162);
  v169 = objc_msgSend_commandBuffer(v163, v164, v165, v166, v167, v168);

  if (!v169)
  {
    sub_29572FEB8(&v381);
    goto LABEL_67;
  }

  v175 = objc_msgSend_computeCommandEncoder(v169, v170, v171, v172, v173, v174);
  if (!v175)
  {
    sub_29572FDF8(v169);
    goto LABEL_67;
  }

  v181 = v175;
  v182 = v18;
  v183 = objc_msgSend_contents(self->_superPixelsBoundaries, v176, v177, v178, v179, v180);
  if (self->_maxNumSuperPixels)
  {
    v188 = 0;
    do
    {
      *(v183 + 16 * v188++) = xmmword_295742E30;
    }

    while (v188 < self->_maxNumSuperPixels);
  }

  objc_msgSend_setComputePipelineState_(v181, v184, self->_kernelFindLabelRoi, v185, v186, v187, v373);
  objc_msgSend_setTexture_atIndex_(v181, v189, v17, 0, v190, v191);
  objc_msgSend_setBuffer_offset_atIndex_(v181, v192, self->_superPixelsBoundaries, 0, 0, v193);
  v199 = objc_msgSend_threadExecutionWidth(self->_kernelFindLabelRoi, v194, v195, v196, v197, v198);
  v205 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelFindLabelRoi, v200, v201, v202, v203, v204) / v199;
  v381 = objc_msgSend_width(v17, v206, v207, v208, v209, v210) >> 1;
  v382 = objc_msgSend_height(v17, v211, v212, v213, v214, v215) >> 1;
  *&v383 = 1;
  *v386 = v199;
  *&v386[8] = v205;
  *&v386[16] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v181, v216, &v381, v386, v217, v218);
  objc_msgSend_endEncoding(v181, v219, v220, v221, v222, v223);
  maxNumSuperPixels = self->_maxNumSuperPixels;
  if (HIWORD(maxNumSuperPixels))
  {
    sub_29572FD28(v181, v169, &v381);
    v370 = v381;
    v18 = v182;
    v26 = v374;
    v25 = v375;
  }

  else
  {
    v385 = 0;
    LODWORD(v381) = maxNumSuperPixels;
    *(&v381 + 1) = a3->var0.var1.var0 * a3->var0.var1.var0;
    v382 = *&a3->var0.var1.var1;
    var6 = a3->var0.var1.var6;
    v383 = *a3->var0.var1.var5;
    v230 = objc_msgSend_computeCommandEncoder(v169, v224, v225, v226, v227, v228);

    v18 = v182;
    if (v230)
    {
      objc_msgSend_setComputePipelineState_(v230, v231, self->_kernelComputeStage0, v232, v233, v234);
      objc_msgSend_setTexture_atIndex_(v230, v235, v17, 0, v236, v237);
      objc_msgSend_setTexture_atIndex_(v230, v238, v16, 1, v239, v240);
      objc_msgSend_setBytes_length_atIndex_(v230, v241, &v381, 40, 0, v242);
      objc_msgSend_setBuffer_offset_atIndex_(v230, v243, self->_workMem, 0, 1, v244);
      objc_msgSend_setBuffer_offset_atIndex_(v230, v245, self->_superPixelsBoundaries, 0, 2, v246);
      *v386 = vdupq_n_s64(1uLL);
      *&v386[16] = 1;
      *v380 = *v386;
      *&v380[16] = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v230, v247, v386, v380, v248, v249);
      objc_msgSend_endEncoding(v230, v250, v251, v252, v253, v254);
      v260 = objc_msgSend_computeCommandEncoder(v169, v255, v256, v257, v258, v259);

      v26 = v374;
      v25 = v375;
      if (v260)
      {
        objc_msgSend_setComputePipelineState_(v260, v261, self->_kernelComputeStage1, v262, v263, v264);
        objc_msgSend_setTexture_atIndex_(v260, v265, v17, 0, v266, v267);
        objc_msgSend_setTexture_atIndex_(v260, v268, v16, 1, v269, v270);
        objc_msgSend_setTexture_atIndex_(v260, v271, v18, 2, v272, v273);
        objc_msgSend_setTexture_atIndex_(v260, v274, v375, 3, v275, v276);
        objc_msgSend_setTexture_atIndex_(v260, v277, v374, 4, v278, v279);
        objc_msgSend_setTexture_atIndex_(v260, v280, v376, 5, v281, v282);
        objc_msgSend_setTexture_atIndex_(v260, v283, v377, 6, v284, v285);
        objc_msgSend_setBytes_length_atIndex_(v260, v286, &v381, 40, 0, v287);
        objc_msgSend_setBuffer_offset_atIndex_(v260, v288, self->_workMem, 0, 1, v289);
        objc_msgSend_setBuffer_offset_atIndex_(v260, v290, self->_superPixelsBoundaries, 0, 2, v291);
        v294 = -8;
        do
        {
          v294 += 8;
          v385 = v294;
          objc_msgSend_setBytes_length_atIndex_(v260, v292, &v381, 40, 0, v293);
          *v386 = self->_maxNumSuperPixels;
          v378 = vdupq_n_s64(1uLL);
          *&v386[8] = v378;
          *v380 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelComputeStage1, v295, v296, v297, v298, v299) >> 2;
          *&v380[8] = v378;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v260, v300, v386, v380, v301, v302);
        }

        while (v294 < 0x38);
        objc_msgSend_endEncoding(v260, v292, v303, v304, v305, v293);
        v311 = objc_msgSend_computeCommandEncoder(v169, v306, v307, v308, v309, v310);

        if (v311)
        {
          objc_msgSend_setComputePipelineState_(v311, v312, self->_kernelComputeStage2, v313, v314, v315);
          objc_msgSend_setTexture_atIndex_(v311, v316, v17, 0, v317, v318);
          objc_msgSend_setTexture_atIndex_(v311, v319, v16, 1, v320, v321);
          objc_msgSend_setBytes_length_atIndex_(v311, v322, &v381, 40, 0, v323);
          objc_msgSend_setBuffer_offset_atIndex_(v311, v324, self->_workMem, 0, 1, v325);
          objc_msgSend_setBuffer_offset_atIndex_(v311, v326, self->_superPixelsBoundaries, 0, 2, v327);
          *v386 = self->_maxNumSuperPixels;
          v379 = vdupq_n_s64(1uLL);
          *&v386[8] = v379;
          *v380 = objc_msgSend_threadExecutionWidth(self->_kernelComputeStage2, v328, v329, v330, v331, v332);
          *&v380[8] = v379;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v311, v333, v386, v380, v334, v335);
          objc_msgSend_endEncoding(v311, v336, v337, v338, v339, v340);
          if (*MEMORY[0x29EDB9270])
          {
            v346 = objc_msgSend_commandQueue(v169, v341, v342, v343, v344, v345);
            v352 = objc_msgSend_commandBuffer(v346, v347, v348, v349, v350, v351);

            objc_msgSend_setLabel_(v352, v353, @"KTRACE_MTLCMDBUF", v354, v355, v356);
            objc_msgSend_addCompletedHandler_(v352, v357, &unk_2A1C982D0, v358, v359, v360);
            objc_msgSend_commit(v352, v361, v362, v363, v364, v365);
            objc_msgSend_addCompletedHandler_(v169, v366, &unk_2A1C982F0, v367, v368, v369);
          }

          objc_msgSend_commit(v169, v341, v342, v343, v344, v345);

          v370 = 0;
          goto LABEL_46;
        }

        v372 = 403;
      }

      else
      {
        v372 = 379;
      }
    }

    else
    {
      v372 = 367;
      v26 = v374;
      v25 = v375;
    }

    sub_29572FC68(v372, &v381, v169, v386);
    v370 = *v386;
  }

LABEL_46:
  v19 = v376;
LABEL_47:

  return v370;
}

- (int)computeStage4:(id *)a3 inLabelTexture:(id)a4 inDepthTex:(id)a5 inConfTex:(id)a6 inDistanceTransformMapTex:(id)a7 maxDist:(float)a8 sigma_den:(float)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v24 = a7;
  if (!self->_metalContext)
  {
    sub_2957310F0(v193);
LABEL_40:
    v186 = v193[0];
    goto LABEL_25;
  }

  if (!self->_solverMemoryPointer)
  {
    sub_295731044(v193);
    goto LABEL_40;
  }

  if (!v16)
  {
    sub_295730F98(v193);
    goto LABEL_40;
  }

  if (objc_msgSend_pixelFormat(v16, v19, v20, v21, v22, v23) != 23)
  {
    sub_295730774(v193);
    goto LABEL_40;
  }

  v30 = objc_msgSend_width(v16, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_height(v16, v31, v32, v33, v34, v35);
  if (!v17)
  {
    sub_295730EEC(v193);
    goto LABEL_40;
  }

  v42 = v36;
  if (objc_msgSend_pixelFormat(v17, v37, v38, v39, v40, v41) != 25)
  {
    sub_295730820(v193);
    goto LABEL_40;
  }

  v48 = objc_msgSend_width(v17, v43, v44, v45, v46, v47);
  v54 = objc_msgSend_height(v17, v49, v50, v51, v52, v53);
  if (v30 != v48 || v42 != v54)
  {
    sub_295730E40(v193);
    goto LABEL_40;
  }

  if (!v18)
  {
    sub_295730D94(v193);
    goto LABEL_40;
  }

  if (objc_msgSend_pixelFormat(v18, v55, v56, v57, v58, v59) != 25)
  {
    sub_2957308CC(v193);
    goto LABEL_40;
  }

  v65 = objc_msgSend_width(v18, v60, v61, v62, v63, v64);
  v71 = objc_msgSend_height(v18, v66, v67, v68, v69, v70);
  if (v30 != v65 || v42 != v71)
  {
    sub_295730CE8(v193);
    goto LABEL_40;
  }

  if (!v24)
  {
    sub_295730C3C(v193);
    goto LABEL_40;
  }

  if (objc_msgSend_pixelFormat(v24, v72, v73, v74, v75, v76) != 25)
  {
    sub_295730978(v193);
    goto LABEL_40;
  }

  v82 = objc_msgSend_width(v24, v77, v78, v79, v80, v81);
  v88 = objc_msgSend_height(v24, v83, v84, v85, v86, v87);
  if (v30 != v82 || v42 != v88)
  {
    sub_295730B90(v193);
    goto LABEL_40;
  }

  v94 = objc_msgSend_commandQueue(self->_metalContext, v89, v90, v91, v92, v93);
  v100 = objc_msgSend_commandBuffer(v94, v95, v96, v97, v98, v99);

  if (!v100)
  {
    sub_295730AE4(v193);
    goto LABEL_40;
  }

  v198 = 0;
  var6 = a3->var0.var6;
  v193[0] = LODWORD(a3->var0.var4);
  *&v193[1] = var6;
  *&v193[2] = a3->var0.var1.var0 * a3->var0.var1.var0;
  v194 = *&a3->var0.var2;
  v195 = a8;
  v196 = a9;
  var2 = a3->var0.var1.var2;
  v107 = objc_msgSend_computeCommandEncoder(v100, v101, v102, v103, v104, v105);
  if (v107)
  {
    v112 = v107;
    objc_msgSend_setComputePipelineState_(v107, v108, self->_kernelComputeStage4, v109, v110, v111);
    objc_msgSend_setTexture_atIndex_(v112, v113, v16, 0, v114, v115);
    objc_msgSend_setTexture_atIndex_(v112, v116, v17, 1, v117, v118);
    objc_msgSend_setTexture_atIndex_(v112, v119, v18, 2, v120, v121);
    objc_msgSend_setTexture_atIndex_(v112, v122, v24, 3, v123, v124);
    objc_msgSend_setBytes_length_atIndex_(v112, v125, v193, 36, 0, v126);
    objc_msgSend_setBuffer_offset_atIndex_(v112, v127, self->_workMem, 0, 1, v128);
    objc_msgSend_setBuffer_offset_atIndex_(v112, v129, self->_superPixelsBoundaries, 0, 2, v130);
    maxNumSuperPixels = self->_maxNumSuperPixels;
    v192 = vdupq_n_s64(1uLL);
    v189 = objc_msgSend_threadExecutionWidth(self->_kernelComputeStage4, v131, v132, v133, v134, v135);
    v190 = v192;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v112, v136, &maxNumSuperPixels, &v189, v137, v138);
    objc_msgSend_setComputePipelineState_(v112, v139, self->_kernelComputeStage5, v140, v141, v142);
    if (self->_maxNumSuperPixels)
    {
      v148 = 0;
      v188 = vdupq_n_s64(1uLL);
      do
      {
        v198 = v148;
        objc_msgSend_setBytes_length_atIndex_(v112, v143, v193, 36, 0, v147, *&v188);
        maxNumSuperPixels = self->_maxNumSuperPixels;
        v192 = v188;
        v189 = objc_msgSend_threadExecutionWidth(self->_kernelComputeStage5, v149, v150, v151, v152, v153);
        v190 = v188;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v112, v154, &maxNumSuperPixels, &v189, v155, v156);
        v148 += 512;
      }

      while (v148 < self->_maxNumSuperPixels);
    }

    objc_msgSend_endEncoding(v112, v143, v144, v145, v146, v147);
    if (*MEMORY[0x29EDB9270])
    {
      v162 = objc_msgSend_commandQueue(v100, v157, v158, v159, v160, v161);
      v168 = objc_msgSend_commandBuffer(v162, v163, v164, v165, v166, v167);

      objc_msgSend_setLabel_(v168, v169, @"KTRACE_MTLCMDBUF", v170, v171, v172);
      objc_msgSend_addCompletedHandler_(v168, v173, &unk_2A1C98310, v174, v175, v176);
      objc_msgSend_commit(v168, v177, v178, v179, v180, v181);
      objc_msgSend_addCompletedHandler_(v100, v182, &unk_2A1C98330, v183, v184, v185);
    }

    objc_msgSend_commit(v100, v157, v158, v159, v160, v161);

    v186 = 0;
  }

  else
  {
    sub_295730A24(v193, v100);
    v186 = maxNumSuperPixels;
  }

LABEL_25:

  return v186;
}

- (int)computeStageSolver:(id *)a3 inLabelTexture:(id)a4 inConfTex:(id)a5 inImageTex:(id)a6 outDepthTex:(id)a7 outConfTex:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23 = a8;
  if (!self->_metalContext)
  {
    sub_295731E9C(&v259);
LABEL_53:
    v252 = v259;
    goto LABEL_33;
  }

  if (!self->_solverMemoryPointer)
  {
    sub_295731DF0(&v259);
    goto LABEL_53;
  }

  if (!v14)
  {
    sub_295731D44(&v259);
    goto LABEL_53;
  }

  if (objc_msgSend_pixelFormat(v14, v18, v19, v20, v21, v22) != 23)
  {
    sub_29573119C(&v259);
    goto LABEL_53;
  }

  v29 = objc_msgSend_width(v14, v24, v25, v26, v27, v28);
  v35 = objc_msgSend_height(v14, v30, v31, v32, v33, v34);
  if (!v15)
  {
    sub_295731C98(&v259);
    goto LABEL_53;
  }

  v41 = v35;
  if (objc_msgSend_pixelFormat(v15, v36, v37, v38, v39, v40) != 25)
  {
    sub_295731248(&v259);
    goto LABEL_53;
  }

  v47 = objc_msgSend_width(v15, v42, v43, v44, v45, v46);
  v53 = objc_msgSend_height(v15, v48, v49, v50, v51, v52);
  if (v29 != v47 || v41 != v53)
  {
    sub_295731BEC(&v259);
    goto LABEL_53;
  }

  if (!v16)
  {
    sub_295731B40(&v259);
    goto LABEL_53;
  }

  if (objc_msgSend_pixelFormat(v16, v54, v55, v56, v57, v58) != 70)
  {
    sub_2957312F4(&v259);
    goto LABEL_53;
  }

  v64 = objc_msgSend_width(v16, v59, v60, v61, v62, v63);
  v70 = objc_msgSend_height(v16, v65, v66, v67, v68, v69);
  if (v29 != v64 || v41 != v70)
  {
    sub_295731A94(&v259);
    goto LABEL_53;
  }

  if (!v17)
  {
    sub_2957319E8(&v259);
    goto LABEL_53;
  }

  if (objc_msgSend_pixelFormat(v17, v71, v72, v73, v74, v75) != 25)
  {
    sub_2957313A0(&v259);
    goto LABEL_53;
  }

  v81 = objc_msgSend_width(v17, v76, v77, v78, v79, v80);
  v87 = objc_msgSend_height(v17, v82, v83, v84, v85, v86);
  if (v29 != v81 || v41 != v87)
  {
    sub_29573193C(&v259);
    goto LABEL_53;
  }

  if (!v23)
  {
    sub_295731890(&v259);
    goto LABEL_53;
  }

  if (objc_msgSend_pixelFormat(v23, v88, v89, v90, v91, v92) != 25)
  {
    sub_29573144C(&v259);
    goto LABEL_53;
  }

  v98 = objc_msgSend_width(v23, v93, v94, v95, v96, v97);
  v104 = objc_msgSend_height(v23, v99, v100, v101, v102, v103);
  if (v29 != v98 || v41 != v104)
  {
    sub_2957317E4(&v259);
    goto LABEL_53;
  }

  v111 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  *&v110 = a3->var0.var5;
  v112 = objc_msgSend_RunSolver_(self, v105, v106, v107, v108, v109, v110);
  if (v112)
  {
    sub_2957314F8(v112, &v259);
    goto LABEL_53;
  }

  if (*v111 == 1)
  {
    kdebug_trace();
  }

  v118 = objc_msgSend_commandQueue(self->_metalContext, v113, v114, v115, v116, v117);
  v124 = objc_msgSend_commandBuffer(v118, v119, v120, v121, v122, v123);

  if (!v124)
  {
    sub_295731738(&v259);
    goto LABEL_53;
  }

  v130 = objc_msgSend_computeCommandEncoder(v124, v125, v126, v127, v128, v129);
  if (!v130)
  {
    sub_295731678(v124);
    goto LABEL_53;
  }

  v135 = v130;
  v254 = v23;
  v255 = v16;
  v136 = v15;
  objc_msgSend_setComputePipelineState_(v130, v131, self->_kernelSuperPixel2Image, v132, v133, v134);
  objc_msgSend_setTexture_atIndex_(v135, v137, v14, 0, v138, v139);
  objc_msgSend_setTexture_atIndex_(v135, v140, v17, 1, v141, v142);
  objc_msgSend_setBuffer_offset_atIndex_(v135, v143, self->_workMem, 0, 0, v144);
  v150 = objc_msgSend_threadExecutionWidth(self->_kernelSuperPixel2Image, v145, v146, v147, v148, v149);
  v156 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelSuperPixel2Image, v151, v152, v153, v154, v155) / v150;
  *&v259 = objc_msgSend_width(v14, v157, v158, v159, v160, v161) >> 1;
  *(&v259 + 1) = objc_msgSend_height(v14, v162, v163, v164, v165, v166) >> 1;
  v260 = 1;
  v257.i64[0] = v150;
  v257.i64[1] = v156;
  v258 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v135, v167, &v259, &v257, v168, v169);
  objc_msgSend_endEncoding(v135, v170, v171, v172, v173, v174);
  LODWORD(v259) = self->_maxNumSuperPixels;
  *(&v259 + 4) = vmul_f32(*&a3->var1.var0, vadd_f32(*&a3->var1.var0, *&a3->var1.var0));
  *(&v259 + 3) = a3->var1.var2 * (a3->var1.var2 + a3->var1.var2);
  v260 = vrev64_s32(*&a3->var1.var3);
  v180 = objc_msgSend_threadExecutionWidth(self->_kernelComputeConfidence, v175, v176, v177, v178, v179);
  v186 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_kernelComputeConfidence, v181, v182, v183, v184, v185);
  v192 = objc_msgSend_computeCommandEncoder(v124, v187, v188, v189, v190, v191);

  if (v192)
  {
    objc_msgSend_setComputePipelineState_(v192, v193, self->_kernelComputeConfidence, v194, v195, v196);
    objc_msgSend_setTexture_atIndex_(v192, v197, v14, 0, v198, v199);
    objc_msgSend_setTexture_atIndex_(v192, v200, v255, 1, v201, v202);
    objc_msgSend_setTexture_atIndex_(v192, v203, v136, 2, v204, v205);
    objc_msgSend_setTexture_atIndex_(v192, v206, v254, 3, v207, v208);
    objc_msgSend_setBytes_length_atIndex_(v192, v209, &v259, 24, 0, v210);
    objc_msgSend_setBuffer_offset_atIndex_(v192, v211, self->_workMem, 0, 1, v212);
    objc_msgSend_setBuffer_offset_atIndex_(v192, v213, self->_superPixelsBoundaries, 0, 2, v214);
    v257 = vdupq_n_s64(1uLL);
    v258 = 1;
    v256[0] = v180;
    v256[1] = v186 / v180;
    v256[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v192, v215, &v257, v256, v216, v217);
    objc_msgSend_endEncoding(v192, v218, v219, v220, v221, v222);
    if (*MEMORY[0x29EDB9270])
    {
      v228 = objc_msgSend_commandQueue(v124, v223, v224, v225, v226, v227);
      v234 = objc_msgSend_commandBuffer(v228, v229, v230, v231, v232, v233);

      objc_msgSend_setLabel_(v234, v235, @"KTRACE_MTLCMDBUF", v236, v237, v238);
      objc_msgSend_addCompletedHandler_(v234, v239, &unk_2A1C98350, v240, v241, v242);
      objc_msgSend_commit(v234, v243, v244, v245, v246, v247);
      objc_msgSend_addCompletedHandler_(v124, v248, &unk_2A1C98370, v249, v250, v251);
    }

    objc_msgSend_commit(v124, v223, v224, v225, v226, v227);

    v252 = 0;
  }

  else
  {
    sub_2957315BC(&v259, v124, &v257);
    v252 = v257.i32[0];
  }

  v15 = v136;
  v23 = v254;
  v16 = v255;
LABEL_33:

  return v252;
}

- (int)RunSolver:(float)a3
{
  columnStarts = self->_matrixAtA.structure.columnStarts;
  rowIndices = self->_matrixAtA.structure.rowIndices;
  data = self->_matrixAtA.data;
  v12 = self->_vectorAtB.data;
  v13 = objc_msgSend_contents(self->_workMem, a2, v3, v4, v5, v6);
  v14 = v13;
  v15 = v13 + 4;
  v16 = *v13;
  self->_matrixAtA.structure.rowCount = v16;
  self->_matrixAtA.structure.columnCount = v16;
  self->_vectorAtB.count = v16;
  self->_vectorX.count = v16;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = v13 + 38;
    v20 = (v13 + 17);
    do
    {
      v21 = *(v15 + 11);
      v22 = (*(v15 + 9) * *(v15 + 9)) / ((v21 * 7.0) + 1.0);
      v23 = *(v15 + 67);
      v12[v17] = *(v15 + 10) * v22;
      columnStarts[v17] = v18;
      if (v23)
      {
        v24 = v21 * 0.01;
        v25 = v20;
        v26 = v19;
        v27 = 1;
        do
        {
          v29 = *v26;
          v26 = (v26 + 2);
          v28 = v29;
          v30 = (*v25 * a3) * (*v25 * a3);
          v31 = fmaxf(v24, v30 + v30);
          if (v17 < v29)
          {
            data[v27 + v18] = -v31;
            rowIndices[v27 + v18] = v28;
            ++v27;
          }

          v22 = v22 + v31;
          ++v25;
          --v23;
        }

        while (v23);
      }

      else
      {
        v27 = 1;
      }

      data[v18] = v22;
      rowIndices[v18] = v17;
      v18 += v27;
      ++v17;
      v15 += 56;
      v19 += 56;
      v20 += 56;
    }

    while (v17 != v16);
    v32 = v16;
  }

  else
  {
    v32 = 0;
    v18 = 0;
  }

  columnStarts[v32] = v18;
  v55 = 0;
  memset(&v54, 0, sizeof(v54));
  v33 = *&self->_matrixAtA.structure.rowIndices;
  *&Matrix.status = *&self->_matrixAtA.structure.rowCount;
  *&Matrix.symbolicFactorization.columnCount = v33;
  Matrix.symbolicFactorization.workspaceSize_Float = self->_matrixAtA.data;
  *&sfoptions.status = xmmword_2A1C98390;
  *&sfoptions.symbolicFactorization.columnCount = unk_2A1C983A0;
  *&sfoptions.symbolicFactorization.workspaceSize_Float = xmmword_2A1C983B0;
  nfoptions = *ymmword_295742E48;
  if (Matrix.status <= SparseStatusOK)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_295731F48();
    }

    goto LABEL_40;
  }

  if (*&Matrix.attributes <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_295731FA4();
    }

    goto LABEL_40;
  }

  if (!BYTE4(Matrix.symbolicFactorization.factorization))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_295732278();
    }

    goto LABEL_40;
  }

  v34 = Matrix.symbolicFactorization.factorization & 0xC;
  if (Matrix.status != *&Matrix.attributes && v34 == 12)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_295732000();
    }

LABEL_40:
    _SparseTrap();
    v55 = 0;
    memset(&v54, 0, sizeof(v54));
    v54.status = SparseParameterError;
    v54.symbolicFactorization.status = SparseParameterError;
    goto LABEL_41;
  }

  if (v34 != 12)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_295732080();
    }

    goto LABEL_40;
  }

  _SparseFactorSymmetric_Float(&v54, SparseFactorizationCholesky, &Matrix, &sfoptions, &nfoptions);
  if (v54.status)
  {
LABEL_41:
    v38 = -12782;
    goto LABEL_42;
  }

  Matrix = v54;
  v52 = v55;
  if (v54.symbolicFactorization.status || !Matrix.symbolicFactorization.workspaceSize_Float)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_295732234();
    }

    goto LABEL_31;
  }

  count = self->_vectorAtB.count;
  v41 = self->_vectorAtB.data;
  v42 = self->_vectorX.count;
  v43 = self->_vectorX.data;
  _SparseGetOptionsFromSymbolicFactor(&sfoptions, &Matrix.symbolicFactorization);
  workspaceSize_Double = sfoptions.symbolicFactorization.workspaceSize_Double;
  if (Matrix.symbolicFactorization.status || !Matrix.symbolicFactorization.workspaceSize_Float || Matrix.status || !Matrix.solveWorkspaceRequiredStatic)
  {
    if (!sfoptions.symbolicFactorization.workspaceSize_Double)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        sub_2957321DC();
      }

      goto LABEL_31;
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(&sfoptions, 0, sizeof(sfoptions));
    snprintf(&sfoptions, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
  }

  else
  {
    if ((*&Matrix.attributes ^ *&Matrix.symbolicFactorization.attributes))
    {
      v45 = Matrix.symbolicFactorization.columnCount * LOBYTE(Matrix.symbolicFactorization.factorization);
    }

    else
    {
      v45 = Matrix.symbolicFactorization.rowCount * LOBYTE(Matrix.symbolicFactorization.factorization);
    }

    if ((*&Matrix.attributes ^ *&Matrix.symbolicFactorization.attributes))
    {
      v46 = Matrix.symbolicFactorization.rowCount * LOBYTE(Matrix.symbolicFactorization.factorization);
    }

    else
    {
      v46 = Matrix.symbolicFactorization.columnCount * LOBYTE(Matrix.symbolicFactorization.factorization);
    }

    if (BYTE1(Matrix.symbolicFactorization.factorization) == 40)
    {
      v47 = v45;
    }

    else
    {
      v47 = v46;
    }

    if (v46 == v42)
    {
      if (v47 == count)
      {
        workspaceSize_Float = sfoptions.symbolicFactorization.workspaceSize_Float;
        nfoptions.control = count;
        *&nfoptions.scalingMethod = 1;
        nfoptions.scaling = count;
        *&nfoptions.pivotTolerance = v41;
        Soln.rowCount = v42;
        Soln.columnCount = 1;
        Soln.columnStride = v42;
        *&Soln.attributes = 0;
        Soln.data = v43;
        v49 = (sfoptions.symbolicFactorization.factorization)(v52 + Matrix.solveWorkspaceRequiredPerRHS);
        if (v49)
        {
          v50 = v49;
          _SparseSolveOpaque_Float(&Matrix, &nfoptions, &Soln, v49);
          workspaceSize_Float(v50);
          goto LABEL_32;
        }

        if (workspaceSize_Double)
        {
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          memset(&sfoptions, 0, sizeof(sfoptions));
          snprintf(&sfoptions, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
          goto LABEL_70;
        }

        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          sub_29573218C();
        }

LABEL_31:
        _SparseTrap();
        goto LABEL_32;
      }

      if (!sfoptions.symbolicFactorization.workspaceSize_Double)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          sub_295732128();
        }

        goto LABEL_31;
      }
    }

    else if (!sfoptions.symbolicFactorization.workspaceSize_Double)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        sub_2957320C4();
      }

      goto LABEL_31;
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(&sfoptions, 0, sizeof(sfoptions));
    snprintf(&sfoptions, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
  }

LABEL_70:
  workspaceSize_Double(&sfoptions);
LABEL_32:
  if (v16)
  {
    v35 = self->_vectorX.data;
    v36 = (v14 + 16);
    do
    {
      v37 = *v35;
      v38 = -12782;
      if (*v35 < 0.0)
      {
        break;
      }

      if (v37 > 100000000.0)
      {
        break;
      }

      v38 = 0;
      *v36 = v37;
      v36 += 56;
      ++v35;
      --v32;
    }

    while (v32);
  }

  else
  {
    v38 = 0;
  }

LABEL_42:
  sfoptions = v54;
  *&v58 = v55;
  _SparseDestroyOpaqueNumeric_Float(&sfoptions);
  return v38;
}

@end