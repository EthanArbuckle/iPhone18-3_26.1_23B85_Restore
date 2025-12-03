@interface MotionDetection
+ (int)prewarmShaders:(id)shaders;
- (MotionDetection)initWithMetalContext:(id)context;
- (float)getMotionDetectionResultSync;
- (int)runMotionDetection:(float *)detection evm:(id)evm ev0:(id)ev0 evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties nrfPlist:(id)plist;
- (int)runMotionDetectionLL:(BOOL)l image:(id)image imgProperties:(frameProperties_t *)properties refProperties:(frameProperties_t *)refProperties;
- (int)startMotionDetection:(id)detection evm:(id)evm ev0:(id)ev0 evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties;
- (void)dealloc;
@end

@implementation MotionDetection

- (MotionDetection)initWithMetalContext:(id)context
{
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = MotionDetection;
  v6 = [(MotionDetection *)&v27 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_metal, context);
  v11 = objc_msgSend_sharedInstance(MotionDetectionShared, v8, v9, v10);
  v14 = objc_msgSend_getShaders_(v11, v12, v7[1], v13);
  v15 = v7[2];
  v7[2] = v14;

  if (v7[2])
  {
    v19 = objc_msgSend_device(v7[1], v16, v17, v18);
    v21 = objc_msgSend_newBufferWithLength_options_(v19, v20, 4, 0);
    v22 = v7[3];
    v7[3] = v21;

    if (v7[3])
    {
      v23 = v7[4];
      v7[4] = 0;

      goto LABEL_5;
    }

    sub_295894EE8(&v28);
  }

  else
  {
    sub_295894F84(&v28);
  }

  if (v28)
  {
    v24 = 0;
    goto LABEL_6;
  }

LABEL_5:
  v24 = v7;
LABEL_6:
  v25 = v24;

  return v25;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [MotionDetectionShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, shadersCopy, v6);

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

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = MotionDetection;
  [(MotionDetection *)&v5 dealloc];
}

- (int)runMotionDetection:(float *)detection evm:(id)evm ev0:(id)ev0 evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties nrfPlist:(id)plist
{
  started = objc_msgSend_startMotionDetection_evm_ev0_evmProperties_ev0Properties_(self, a2, plist, evm, ev0, properties, ev0Properties);
  if (started)
  {
    sub_295895020();
  }

  else
  {
    objc_msgSend_getMotionDetectionResultSync(self, v10, v11, v12);
    *detection = v14;
  }

  return started;
}

- (int)startMotionDetection:(id)detection evm:(id)evm ev0:(id)ev0 evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties
{
  detectionCopy = detection;
  evmCopy = evm;
  ev0Copy = ev0;
  v473 = 0;
  v474 = 0;
  v471 = 0;
  v472 = 0;
  v469 = 0;
  v470 = 0;
  v467 = 0;
  v468 = 0;
  v16 = objc_msgSend_allocator(self->_metal, v13, v14, v15);
  v20 = objc_msgSend_newTextureDescriptor(v16, v17, v18, v19);

  if (!v20)
  {
    sub_295895E0C(&v464);
LABEL_37:
    v95 = 0;
LABEL_38:
    v449 = v464;
    goto LABEL_32;
  }

  v24 = objc_msgSend_desc(v20, v21, v22, v23);
  objc_msgSend_setUsage_(v24, v25, 7, v26);

  v30 = objc_msgSend_allocator(self->_metal, v27, v28, v29);
  v34 = objc_msgSend_newTextureDescriptor(v30, v31, v32, v33);

  if (!v34)
  {
    sub_295895D70(&v464);
    goto LABEL_37;
  }

  v38 = objc_msgSend_desc(v34, v35, v36, v37);
  objc_msgSend_setUsage_(v38, v39, 7, v40);

  v44 = objc_msgSend_desc(v34, v41, v42, v43);
  objc_msgSend_setCompressionMode_(v44, v45, 2, v46);

  v50 = objc_msgSend_desc(v34, v47, v48, v49);
  objc_msgSend_setCompressionFootprint_(v50, v51, 0, v52);

  if (self->_pendingResultCommandBuffer)
  {
    sub_295895088(v34);
    goto LABEL_37;
  }

  v56 = objc_msgSend_width(evmCopy, v53, v54, v55);
  v60 = objc_msgSend_desc(v20, v57, v58, v59);
  objc_msgSend_setWidth_(v60, v61, v56, v62);

  v66 = objc_msgSend_height(evmCopy, v63, v64, v65);
  v70 = objc_msgSend_desc(v20, v67, v68, v69);
  objc_msgSend_setHeight_(v70, v71, v66, v72);

  v76 = objc_msgSend_desc(v20, v73, v74, v75);
  objc_msgSend_setPixelFormat_(v76, v77, 10, v78);

  objc_msgSend_setLabel_(v20, v79, 0, v80);
  v84 = objc_msgSend_allocator(self->_metal, v81, v82, v83);
  v87 = objc_msgSend_newTextureWithDescriptor_(v84, v85, v20, v86);
  v467 = v87;

  if (!v87)
  {
    sub_295895CC0(v34);
    goto LABEL_37;
  }

  v91 = objc_msgSend_commandQueue(self->_metal, v88, v89, v90);
  v95 = objc_msgSend_commandBuffer(v91, v92, v93, v94);

  if (!v95)
  {
    sub_295895C10(v34);
    goto LABEL_38;
  }

  v99 = objc_msgSend_computeCommandEncoder(v95, v96, v97, v98);
  if (!v99)
  {
    sub_295895B60(v34);
    goto LABEL_38;
  }

  v102 = v99;
  v456 = v34;
  objc_msgSend_setComputePipelineState_(v99, v100, self->_shaders->_motionDetectWarp, v101);
  v452 = evmCopy;
  objc_msgSend_setTexture_atIndex_(v102, v103, evmCopy, 0);
  objc_msgSend_setTexture_atIndex_(v102, v104, v87, 1);
  v105 = *&properties[1].meta.exposureParams.luxLevel;
  v466[0] = *&properties[1].meta.exposureParams.conversion_gain;
  v466[1] = v105;
  v466[2] = *&properties[1].meta.exposureParams.CCT;
  objc_msgSend_setBytes_length_atIndex_(v102, v106, v466, 48, 0);
  *&v464 = objc_msgSend_width(v87, v107, v108, v109);
  *(&v464 + 1) = objc_msgSend_height(v87, v110, v111, v112);
  v465 = 1;
  v453 = 8;
  v462 = vdupq_n_s64(8uLL);
  v463 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v102, v113, &v464, &v462);
  objc_msgSend_endEncoding(v102, v114, v115, v116);
  objc_msgSend_commit(v95, v117, v118, v119);
  v460 = 0;
  v461 = 0;
  v459 = 0;
  v120 = detectionCopy[3];
  v458[0] = 1.0 - (v120[12] / 255.0);
  v458[1] = v120[13] / 255.0;
  v458[2] = v120[16];
  v458[3] = sub_295820728(&properties->meta.exposureParams, &ev0Properties->meta.exposureParams, properties);
  LODWORD(v459) = *(detectionCopy[3] + 68);
  if (LODWORD(ev0Properties[1].meta.ROI.origin.y) == 2)
  {
    v124 = 8;
    if (ev0Properties[1].meta.ltmCurves.ltmLut.bytes[176])
    {
      v124 = 16;
    }

    v453 = v124;
  }

  v125 = objc_msgSend_desc(v20, v121, v122, v123);
  v129 = objc_msgSend_width(v125, v126, v127, v128);
  objc_msgSend_setWidth_(v125, v130, v129 >> 2, v131);

  v135 = objc_msgSend_desc(v20, v132, v133, v134);
  v139 = objc_msgSend_height(v135, v136, v137, v138);
  objc_msgSend_setHeight_(v135, v140, v139 >> 2, v141);

  v145 = objc_msgSend_desc(v34, v142, v143, v144);
  objc_msgSend_setPixelFormat_(v145, v146, 13, v147);

  v151 = objc_msgSend_desc(v20, v148, v149, v150);
  v155 = objc_msgSend_width(v151, v152, v153, v154);
  v159 = objc_msgSend_desc(v34, v156, v157, v158);
  objc_msgSend_setWidth_(v159, v160, v155, v161);

  v165 = objc_msgSend_desc(v20, v162, v163, v164);
  v169 = objc_msgSend_height(v165, v166, v167, v168);
  v173 = objc_msgSend_desc(v456, v170, v171, v172);
  objc_msgSend_setHeight_(v173, v174, v169, v175);

  objc_msgSend_setLabel_(v456, v176, 0, v177);
  v181 = objc_msgSend_allocator(self->_metal, v178, v179, v180);
  v184 = objc_msgSend_newTextureWithDescriptor_(v181, v182, v456, v183);
  v474 = v184;

  if (!v184)
  {
    sub_295895ABC();
LABEL_59:
    v449 = v464;
    goto LABEL_31;
  }

  v188 = objc_msgSend_desc(v20, v185, v186, v187);
  objc_msgSend_setPixelFormat_(v188, v189, 10, v190);

  objc_msgSend_setLabel_(v20, v191, 0, v192);
  v196 = objc_msgSend_allocator(self->_metal, v193, v194, v195);
  v199 = objc_msgSend_newTextureWithDescriptor_(v196, v197, v20, v198);
  v472 = v199;

  if (!v199)
  {
    sub_295895A18();
    goto LABEL_59;
  }

  v451 = detectionCopy;
  objc_msgSend_setLabel_(v20, v200, 0, v201);
  v205 = objc_msgSend_allocator(self->_metal, v202, v203, v204);
  v208 = objc_msgSend_newTextureWithDescriptor_(v205, v206, v20, v207);
  v471 = v208;

  if (!v208)
  {
    sub_295895974();
LABEL_55:
    v449 = v464;
    goto LABEL_56;
  }

  v212 = objc_msgSend_commandQueue(self->_metal, v209, v210, v211);
  v216 = objc_msgSend_commandBuffer(v212, v213, v214, v215);

  if (!v216)
  {
    sub_2958958D0();
    v95 = 0;
    goto LABEL_55;
  }

  v220 = objc_msgSend_computeCommandEncoder(v216, v217, v218, v219);

  if (v220)
  {
    objc_msgSend_setComputePipelineState_(v220, v221, *(&self->_shaders->super.isa + v453), v222);
    objc_msgSend_setTexture_atIndex_(v220, v223, ev0Copy, 0);
    objc_msgSend_setTexture_atIndex_(v220, v224, v87, 1);
    objc_msgSend_setTexture_atIndex_(v220, v225, v199, 2);
    objc_msgSend_setTexture_atIndex_(v220, v226, v208, 3);
    objc_msgSend_setTexture_atIndex_(v220, v227, v184, 4);
    objc_msgSend_setBytes_length_atIndex_(v220, v228, v458, 40, 0);
    v232 = objc_msgSend_width(v199, v229, v230, v231);
    v236 = objc_msgSend_height(v199, v233, v234, v235);
    *&v464 = v232;
    *(&v464 + 1) = v236;
    v465 = 1;
    v462 = vdupq_n_s64(8uLL);
    v463 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v220, v237, &v464, &v462);
    objc_msgSend_endEncoding(v220, v238, v239, v240);
    FigMetalDecRef();
    objc_msgSend_setLabel_(v456, v241, 0, v242);
    v246 = objc_msgSend_allocator(self->_metal, v243, v244, v245);
    v249 = objc_msgSend_newTextureWithDescriptor_(v246, v247, v456, v248);
    v473 = v249;

    if (v249)
    {
      v253 = objc_msgSend_computeCommandEncoder(v216, v250, v251, v252);

      if (v253)
      {
        objc_msgSend_setComputePipelineState_(v253, v254, self->_shaders->_motionDetectDilate, v255);
        objc_msgSend_setTexture_atIndex_(v253, v256, v184, 0);
        objc_msgSend_setTexture_atIndex_(v253, v257, v249, 1);
        objc_msgSend_setBytes_length_atIndex_(v253, v258, v458, 40, 0);
        v262 = objc_msgSend_width(v184, v259, v260, v261) >> 1;
        v266 = objc_msgSend_height(v184, v263, v264, v265);
        *&v464 = v262;
        *(&v464 + 1) = v266 >> 1;
        v465 = 1;
        v462 = vdupq_n_s64(8uLL);
        v463 = 1;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v253, v267, &v464, &v462);
        objc_msgSend_endEncoding(v253, v268, v269, v270);
        objc_msgSend_commit(v216, v271, v272, v273);
        FigMetalDecRef();
        v277 = objc_msgSend_desc(v20, v274, v275, v276);
        objc_msgSend_setPixelFormat_(v277, v278, 25, v279);

        objc_msgSend_setLabel_(v20, v280, 0, v281);
        v285 = objc_msgSend_allocator(self->_metal, v282, v283, v284);
        v288 = objc_msgSend_newTextureWithDescriptor_(v285, v286, v20, v287);
        v470 = v288;

        if (v288)
        {
          v292 = objc_msgSend_commandQueue(self->_metal, v289, v290, v291);
          v95 = objc_msgSend_commandBuffer(v292, v293, v294, v295);

          if (v95)
          {
            v299 = objc_msgSend_computeCommandEncoder(v95, v296, v297, v298);

            if (v299)
            {
              objc_msgSend_setComputePipelineState_(v299, v300, self->_shaders->_motionDetectGradient, v301);
              objc_msgSend_setTexture_atIndex_(v299, v302, v199, 0);
              objc_msgSend_setTexture_atIndex_(v299, v303, v288, 1);
              v307 = objc_msgSend_width(v199, v304, v305, v306) >> 1;
              v311 = objc_msgSend_height(v199, v308, v309, v310);
              *&v464 = v307;
              *(&v464 + 1) = v311;
              v465 = 1;
              v462 = vdupq_n_s64(8uLL);
              v463 = 1;
              objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v299, v312, &v464, &v462);
              objc_msgSend_endEncoding(v299, v313, v314, v315);
              FigMetalDecRef();
              v319 = objc_msgSend_desc(v20, v316, v317, v318);
              objc_msgSend_setPixelFormat_(v319, v320, 25, v321);

              objc_msgSend_setLabel_(v20, v322, 0, v323);
              v327 = objc_msgSend_allocator(self->_metal, v324, v325, v326);
              v330 = objc_msgSend_newTextureWithDescriptor_(v327, v328, v20, v329);
              v469 = v330;

              if (v330)
              {
                v334 = objc_msgSend_computeCommandEncoder(v95, v331, v332, v333);

                if (v334)
                {
                  v338 = objc_msgSend_allocator(self->_metal, v335, v336, v337);
                  v342 = objc_msgSend_allocatorType(v338, v339, v340, v341);

                  if (v342 == 2)
                  {
                    objc_msgSend_insertCompressedTextureReinterpretationFlush(v334, v343, v344, v345);
                  }

                  objc_msgSend_setComputePipelineState_(v334, v343, self->_shaders->_motionDetectGradient, v345);
                  objc_msgSend_setTexture_atIndex_(v334, v346, v208, 0);
                  objc_msgSend_setTexture_atIndex_(v334, v347, v330, 1);
                  v351 = objc_msgSend_width(v208, v348, v349, v350) >> 1;
                  v355 = objc_msgSend_height(v208, v352, v353, v354);
                  *&v464 = v351;
                  *(&v464 + 1) = v355;
                  v465 = 1;
                  v462 = vdupq_n_s64(8uLL);
                  v463 = 1;
                  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v334, v356, &v464, &v462);
                  objc_msgSend_endEncoding(v334, v357, v358, v359);
                  FigMetalDecRef();
                  v363 = objc_msgSend_desc(v20, v360, v361, v362);
                  objc_msgSend_setPixelFormat_(v363, v364, 25, v365);

                  objc_msgSend_setLabel_(v20, v366, 0, v367);
                  v371 = objc_msgSend_allocator(self->_metal, v368, v369, v370);
                  v374 = objc_msgSend_newTextureWithDescriptor_(v371, v372, v20, v373);
                  v468 = v374;

                  if (v374)
                  {
                    v378 = objc_msgSend_computeCommandEncoder(v95, v375, v376, v377);

                    detectionCopy = v451;
                    if (v378)
                    {
                      objc_msgSend_setComputePipelineState_(v378, v379, self->_shaders->_motionDetectDiffGradient, v380);
                      objc_msgSend_setTexture_atIndex_(v378, v381, v288, 0);
                      objc_msgSend_setTexture_atIndex_(v378, v382, v330, 1);
                      objc_msgSend_setTexture_atIndex_(v378, v383, v249, 2);
                      objc_msgSend_setTexture_atIndex_(v378, v384, v374, 3);
                      objc_msgSend_setBytes_length_atIndex_(v378, v385, v458, 40, 0);
                      v386 = *&ev0Properties[1].meta.exposureParams.luxLevel;
                      v457[0] = *&ev0Properties[1].meta.exposureParams.conversion_gain;
                      v457[1] = v386;
                      v457[2] = *&ev0Properties[1].meta.exposureParams.CCT;
                      objc_msgSend_setBytes_length_atIndex_(v378, v387, v457, 48, 1);
                      objc_msgSend_setBytes_length_atIndex_(v378, v388, v457, 48, 2);
                      v392 = objc_msgSend_width(v288, v389, v390, v391);
                      v396 = objc_msgSend_height(v288, v393, v394, v395);
                      *&v464 = v392;
                      *(&v464 + 1) = v396;
                      v465 = 1;
                      v462 = vdupq_n_s64(8uLL);
                      v463 = 1;
                      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v378, v397, &v464, &v462);
                      objc_msgSend_endEncoding(v378, v398, v399, v400);
                      objc_msgSend_commit(v95, v401, v402, v403);
                      FigMetalDecRef();
                      FigMetalDecRef();
                      FigMetalDecRef();
                      *objc_msgSend_contents(self->_motionDetectScore, v404, v405, v406) = 0;
                      LODWORD(v460) = objc_msgSend_width(v374, v407, v408, v409) >> 2;
                      HIDWORD(v460) = objc_msgSend_height(v374, v410, v411, v412) >> 2;
                      LODWORD(v461) = (objc_msgSend_width(v374, v413, v414, v415) >> 1) / 3;
                      HIDWORD(v461) = (objc_msgSend_height(v374, v416, v417, v418) >> 2) & 0x7FFFFFFF;
                      WORD2(v459) = 1000;
                      v422 = objc_msgSend_commandQueue(self->_metal, v419, v420, v421);
                      v426 = objc_msgSend_commandBuffer(v422, v423, v424, v425);

                      if (v426)
                      {
                        v430 = objc_msgSend_computeCommandEncoder(v426, v427, v428, v429);

                        if (v430)
                        {
                          objc_msgSend_setComputePipelineState_(v430, v431, self->_shaders->_motionDetectMaxTileAvg, v432);
                          objc_msgSend_setTexture_atIndex_(v430, v433, v374, 0);
                          objc_msgSend_setBytes_length_atIndex_(v430, v434, v458, 40, 0);
                          objc_msgSend_setBuffer_offset_atIndex_(v430, v435, self->_motionDetectScore, 0, 1);
                          v464 = xmmword_2959D5EA0;
                          v465 = 1;
                          v462 = vdupq_n_s64(2uLL);
                          v463 = 1;
                          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v430, v436, &v464, &v462);
                          objc_msgSend_endEncoding(v430, v437, v438, v439);
                          objc_msgSend_commit(v426, v440, v441, v442);
                          FigMetalDecRef();
                          objc_storeStrong(&self->_pendingResultCommandBuffer, v426);
                          v443.f32[0] = (v461 * WORD2(v459) * HIDWORD(v461));
                          v443.i32[1] = v459;
                          __asm { FMOV            V1.2S, #1.0 }

                          *&self->_tileScoreScale = vdiv_f32(_D1, v443);

                          v449 = 0;
                        }

                        else
                        {
                          sub_295895138();
                          v449 = v464;
                        }

                        v95 = v426;
                        goto LABEL_31;
                      }

                      sub_2958951D8();
                      v95 = 0;
                    }

                    else
                    {
                      sub_29589527C();
                    }

                    goto LABEL_59;
                  }

                  sub_29589531C();
                }

                else
                {
                  sub_2958953C0();
                }
              }

              else
              {
                sub_295895460();
              }
            }

            else
            {
              sub_295895504();
            }
          }

          else
          {
            sub_2958955A4();
          }

          goto LABEL_55;
        }

        sub_295895648();
      }

      else
      {
        sub_2958956EC();
      }
    }

    else
    {
      sub_29589578C();
    }
  }

  else
  {
    sub_295895830();
  }

  v449 = v464;
  v95 = v216;
LABEL_56:
  detectionCopy = v451;
LABEL_31:
  evmCopy = v452;
LABEL_32:

  return v449;
}

- (float)getMotionDetectionResultSync
{
  pendingResultCommandBuffer = self->_pendingResultCommandBuffer;
  if (pendingResultCommandBuffer)
  {
    objc_msgSend_waitUntilCompleted(pendingResultCommandBuffer, a2, v2, v3);
    v6 = self->_pendingResultCommandBuffer;
    self->_pendingResultCommandBuffer = 0;
  }

  v7 = objc_msgSend_contents(self->_motionDetectScore, a2, v2, v3);
  scorePower = self->_scorePower;
  v9 = self->_tileScoreScale * *v7;

  return powf(v9, scorePower);
}

- (int)runMotionDetectionLL:(BOOL)l image:(id)image imgProperties:(frameProperties_t *)properties refProperties:(frameProperties_t *)refProperties
{
  lCopy = l;
  imageCopy = image;
  v328 = 0;
  v329 = 0;
  v327 = 0;
  v13 = objc_msgSend_allocator(self->_metal, v10, v11, v12);
  v17 = objc_msgSend_newTextureDescriptor(v13, v14, v15, v16);

  if (!v17)
  {
    sub_295896664(v323);
    goto LABEL_31;
  }

  v21 = objc_msgSend_desc(v17, v18, v19, v20);
  objc_msgSend_setUsage_(v21, v22, 7, v23);

  v326 = 0;
  memset(v325, 0, sizeof(v325));
  if (lCopy)
  {
    if (self->_llmotionDetectDownsampledRef)
    {
      sub_29589607C();
      v64 = 0;
      v103 = 0;
      v191 = 0;
      goto LABEL_25;
    }

    v27 = objc_msgSend_desc(v17, v24, v25, v26);
    objc_msgSend_setPixelFormat_(v27, v28, 25, v29);

    v33 = objc_msgSend_width(imageCopy, v30, v31, v32) >> 3;
    v37 = objc_msgSend_desc(v17, v34, v35, v36);
    objc_msgSend_setWidth_(v37, v38, v33, v39);

    v43 = objc_msgSend_height(imageCopy, v40, v41, v42) >> 3;
    v47 = objc_msgSend_desc(v17, v44, v45, v46);
    objc_msgSend_setHeight_(v47, v48, v43, v49);

    objc_msgSend_setLabel_(v17, v50, 0, v51);
    v55 = objc_msgSend_allocator(self->_metal, v52, v53, v54);
    v58 = objc_msgSend_newTextureWithDescriptor_(v55, v56, v17, v57);
    llmotionDetectDownsampledRef = self->_llmotionDetectDownsampledRef;
    self->_llmotionDetectDownsampledRef = v58;

    v63 = 0;
    v64 = 0;
    if (!self->_llmotionDetectDownsampledRef)
    {
      sub_2958965C8(v323);
LABEL_31:
      v64 = 0;
      v103 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v65 = objc_msgSend_desc(v17, v24, v25, v26);
    objc_msgSend_setPixelFormat_(v65, v66, 25, v67);

    v71 = objc_msgSend_width(imageCopy, v68, v69, v70);
    v75 = objc_msgSend_desc(v17, v72, v73, v74);
    objc_msgSend_setWidth_(v75, v76, v71, v77);

    v81 = objc_msgSend_height(imageCopy, v78, v79, v80);
    v85 = objc_msgSend_desc(v17, v82, v83, v84);
    objc_msgSend_setHeight_(v85, v86, v81, v87);

    objc_msgSend_setLabel_(v17, v88, 0, v89);
    v93 = objc_msgSend_allocator(self->_metal, v90, v91, v92);
    v63 = objc_msgSend_newTextureWithDescriptor_(v93, v94, v17, v95);
    v329 = v63;

    if (!v63)
    {
      sub_295895FE0(v323);
      goto LABEL_31;
    }

    v99 = objc_msgSend_commandQueue(self->_metal, v96, v97, v98);
    v103 = objc_msgSend_commandBuffer(v99, v100, v101, v102);

    if (!v103)
    {
      sub_295895F44(v323);
      goto LABEL_41;
    }

    v107 = objc_msgSend_computeCommandEncoder(v103, v104, v105, v106);
    v64 = v107;
    if (!v107)
    {
      sub_295895EA8(v323);
      goto LABEL_42;
    }

    objc_msgSend_setComputePipelineState_(v107, v108, self->_shaders->_motionDetectWarp, v109);
    objc_msgSend_setTexture_atIndex_(v64, v110, imageCopy, 0);
    objc_msgSend_setTexture_atIndex_(v64, v111, v63, 1);
    v112 = *&properties[1].meta.exposureParams.luxLevel;
    *v323 = *&properties[1].meta.exposureParams.conversion_gain;
    *&v323[16] = v112;
    v324 = *&properties[1].meta.exposureParams.CCT;
    objc_msgSend_setBytes_length_atIndex_(v64, v113, v323, 48, 0);
    *v322 = objc_msgSend_width(v63, v114, v115, v116);
    *&v322[8] = objc_msgSend_height(v63, v117, v118, v119);
    *&v322[16] = 1;
    v320 = vdupq_n_s64(8uLL);
    v321 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v64, v120, v322, &v320);
    objc_msgSend_endEncoding(v64, v121, v122, v123);
    objc_msgSend_commit(v103, v124, v125, v126);
  }

  v127 = objc_msgSend_commandQueue(self->_metal, v60, v61, v62);
  v103 = objc_msgSend_commandBuffer(v127, v128, v129, v130);

  if (!v103)
  {
    sub_29589652C(v323);
LABEL_42:
    v191 = *v323;
    goto LABEL_25;
  }

  v134 = objc_msgSend_computeCommandEncoder(v103, v131, v132, v133);

  if (!v134)
  {
    sub_295896490(v323);
    goto LABEL_41;
  }

  objc_msgSend_setComputePipelineState_(v134, v135, self->_shaders->_motionDetectLLDownscale, v136);
  if (lCopy)
  {
    HIDWORD(v325[0]) = 1065353216;
    objc_msgSend_setTexture_atIndex_(v134, v137, imageCopy, 0);
    objc_msgSend_setTexture_atIndex_(v134, v140, self->_llmotionDetectDownsampledRef, 1);
    v142 = 0;
  }

  else
  {
    v143 = objc_msgSend_desc(v17, v137, v138, v139);
    objc_msgSend_setPixelFormat_(v143, v144, 25, v145);

    v149 = objc_msgSend_width(imageCopy, v146, v147, v148) >> 3;
    v153 = objc_msgSend_desc(v17, v150, v151, v152);
    objc_msgSend_setWidth_(v153, v154, v149, v155);

    v159 = objc_msgSend_height(imageCopy, v156, v157, v158) >> 3;
    v163 = objc_msgSend_desc(v17, v160, v161, v162);
    objc_msgSend_setHeight_(v163, v164, v159, v165);

    objc_msgSend_setLabel_(v17, v166, 0, v167);
    v171 = objc_msgSend_allocator(self->_metal, v168, v169, v170);
    v142 = objc_msgSend_newTextureWithDescriptor_(v171, v172, v17, v173);
    v328 = v142;

    if (!v142)
    {
      sub_2958960E8(v323);
      goto LABEL_37;
    }

    HIDWORD(v325[0]) = sub_295820728(&refProperties->meta.exposureParams, &properties->meta.exposureParams, refProperties);
    objc_msgSend_setTexture_atIndex_(v134, v174, v63, 0);
    objc_msgSend_setTexture_atIndex_(v134, v175, v142, 1);
  }

  objc_msgSend_setBytes_length_atIndex_(v134, v141, v325, 40, 0);
  v179 = objc_msgSend_width(self->_llmotionDetectDownsampledRef, v176, v177, v178);
  v183 = objc_msgSend_height(self->_llmotionDetectDownsampledRef, v180, v181, v182);
  *v323 = v179;
  *&v323[8] = v183;
  *&v323[16] = 1;
  *v322 = vdupq_n_s64(8uLL);
  *&v322[16] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v134, v184, v323, v322);
  objc_msgSend_endEncoding(v134, v185, v186, v187);
  objc_msgSend_commit(v103, v188, v189, v190);
  if (!lCopy)
  {
    FigMetalDecRef();
    v195 = objc_msgSend_desc(v17, v192, v193, v194);
    objc_msgSend_setPixelFormat_(v195, v196, 55, v197);

    v201 = objc_msgSend_width(imageCopy, v198, v199, v200) >> 3;
    v205 = objc_msgSend_desc(v17, v202, v203, v204);
    objc_msgSend_setWidth_(v205, v206, v201, v207);

    v211 = objc_msgSend_height(imageCopy, v208, v209, v210) >> 3;
    v215 = objc_msgSend_desc(v17, v212, v213, v214);
    objc_msgSend_setHeight_(v215, v216, v211, v217);

    v221 = objc_msgSend_desc(v17, v218, v219, v220);
    objc_msgSend_setCompressionMode_(v221, v222, 2, v223);

    v227 = objc_msgSend_desc(v17, v224, v225, v226);
    objc_msgSend_setCompressionFootprint_(v227, v228, 0, v229);

    objc_msgSend_setLabel_(v17, v230, 0, v231);
    v235 = objc_msgSend_allocator(self->_metal, v232, v233, v234);
    v238 = objc_msgSend_newTextureWithDescriptor_(v235, v236, v17, v237);
    v327 = v238;

    if (v238)
    {
      v242 = objc_msgSend_commandQueue(self->_metal, v239, v240, v241);
      v246 = objc_msgSend_commandBuffer(v242, v243, v244, v245);

      if (v246)
      {
        v64 = objc_msgSend_computeCommandEncoder(v246, v247, v248, v249);

        if (!v64)
        {
          sub_2958962BC(v323);
          v191 = *v323;
          v103 = v246;
          goto LABEL_25;
        }

        objc_msgSend_setComputePipelineState_(v64, v250, self->_shaders->_motionDetectLL, v251);
        objc_msgSend_setTexture_atIndex_(v64, v252, self->_llmotionDetectDownsampledRef, 0);
        objc_msgSend_setTexture_atIndex_(v64, v253, v142, 1);
        objc_msgSend_setTexture_atIndex_(v64, v254, v238, 2);
        v258 = objc_msgSend_width(v238, v255, v256, v257);
        v262 = objc_msgSend_height(v238, v259, v260, v261);
        *v323 = v258;
        *&v323[8] = v262;
        *&v323[16] = 1;
        *v322 = vdupq_n_s64(8uLL);
        *&v322[16] = 1;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v64, v263, v323, v322);
        objc_msgSend_endEncoding(v64, v264, v265, v266);
        objc_msgSend_commit(v246, v267, v268, v269);
        FigMetalDecRef();
        v273 = objc_msgSend_commandQueue(self->_metal, v270, v271, v272);
        v103 = objc_msgSend_commandBuffer(v273, v274, v275, v276);

        if (!v103)
        {
          sub_295896220(v323);
          goto LABEL_42;
        }

        v280 = objc_msgSend_computeCommandEncoder(v103, v277, v278, v279);

        if (v280)
        {
          objc_msgSend_setComputePipelineState_(v280, v281, self->_shaders->_motionDetectLLSumReduce, v282);
          objc_msgSend_setTexture_atIndex_(v280, v283, v238, 0);
          objc_msgSend_setBuffer_offset_atIndex_(v280, v284, self->_motionDetectScore, 0, 0);
          v288 = objc_msgSend_height(v238, v285, v286, v287);
          v292 = objc_msgSend_height(v238, v289, v290, v291);
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(v280, v293, ((4 * (v292 & 3)) ^ 0xFFFFFFFFFFFFFFF7) + 4 * v288 + 9, 0);
          *v323 = objc_msgSend_height(v238, v294, v295, v296) - 2;
          *&v323[8] = vdupq_n_s64(1uLL);
          *v322 = *v323;
          *&v322[8] = *&v323[8];
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v280, v297, v323, v322);
          objc_msgSend_endEncoding(v280, v298, v299, v300);
          objc_msgSend_commit(v103, v301, v302, v303);
          objc_msgSend_waitUntilCompleted(v103, v304, v305, v306);
          v310 = *objc_msgSend_contents(self->_motionDetectScore, v307, v308, v309);
          v314 = objc_msgSend_width(v238, v311, v312, v313) - 2;
          *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].RB.mid = v310 / ((objc_msgSend_height(v238, v315, v316, v317) - 2) * v314);
          FigMetalDecRef();
          v191 = 0;
          v64 = v280;
          goto LABEL_25;
        }

        sub_295896184(v323);
LABEL_41:
        v64 = 0;
        goto LABEL_42;
      }

      sub_295896358(v323);
      v103 = 0;
    }

    else
    {
      sub_2958963F4(v323);
    }

LABEL_37:
    v191 = *v323;
    goto LABEL_18;
  }

  v191 = 0;
LABEL_18:
  v64 = v134;
LABEL_25:

  return v191;
}

@end