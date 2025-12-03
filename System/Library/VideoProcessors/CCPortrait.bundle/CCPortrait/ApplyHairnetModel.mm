@interface ApplyHairnetModel
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)apply:(id)apply sdof:(id)sdof mask:(id)mask alpha:(id)alpha chromaWeight:(float)weight chromaBlurSigma:(float)sigma model:(id)model;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation ApplyHairnetModel

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  inputsCopy = inputs;
  argumentsCopy = arguments;
  outputCopy = output;
  v12 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v11, @"fullWidth");
  v15 = objc_msgSend_unsignedLongValue(v12, v13, v14);

  v17 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v16, @"fullHeight");
  v20 = objc_msgSend_unsignedLongValue(v17, v18, v19);

  v22 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v21, @"tileSize");
  v25 = objc_msgSend_unsignedLongValue(v22, v23, v24);

  v27 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v26, @"tileOverlap");
  v30 = objc_msgSend_unsignedLongValue(v27, v28, v29);

  v32 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v31, @"chromaWeight");
  objc_msgSend_floatValue(v32, v33, v34);
  v495 = v35;

  v37 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v36, @"chromaBlurSigma");
  objc_msgSend_floatValue(v37, v38, v39);
  v41 = v40;

  v42 = outputCopy;
  v45 = objc_msgSend_metalTexture(v42, v43, v44);
  if (!v45)
  {
    sub_2956CC240();
  }

  v525 = v30;
  v46 = v25 + 2 * v30;
  v481 = v25 - 1 + v15;
  v47 = v481 / v25;
  v512 = v25;
  v524 = v25 - 1 + v20;
  v484 = v524 / v25;

  v474 = argumentsCopy;
  v494 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v48, @"model");
  v50 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v49, 0);
  v52 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v51, 1);
  v54 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v53, 2);
  v475 = inputsCopy;
  v56 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v55, 3);
  v473 = v50;
  v514 = sub_2956AA43C(v50);
  v472 = v52;
  v513 = sub_2956AA43C(v52);
  v471 = v54;
  v516 = sub_2956AA43C(v54);
  v470 = v56;
  v511 = sub_2956AA43C(v56);
  v59 = objc_msgSend_metalContext(v42, v57, v58);
  v62 = v59;
  if (v59)
  {
    v63 = v59;
  }

  else
  {
    v64 = MEMORY[0x29EDB9168];
    v65 = objc_msgSend_metalContext(v42, v60, v61);
    v68 = objc_msgSend_internalCommandQueue(v65, v66, v67);
    v69 = *MEMORY[0x29EDB91B8];
    v563[0] = *MEMORY[0x29EDB91C8];
    v563[1] = v69;
    v564[0] = @"HairnetProcessor";
    v564[1] = MEMORY[0x29EDB8EA8];
    v563[2] = *MEMORY[0x29EDB91C0];
    v564[2] = &unk_2A1C94AF8;
    v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v70, v564, v563, 3);
    v73 = objc_msgSend_contextWithMTLCommandQueue_options_(v64, v72, v68, v71);

    v63 = v73;
  }

  v562[1] = 0;
  v562[0] = 0;
  v561[1] = 0;
  v561[0] = 0;
  v560[1] = 0;
  v560[0] = 0;
  v559[1] = 0;
  v559[0] = 0;
  v558[1] = 0;
  v558[0] = 0;
  sub_2956AA570(v46, (3 * v46), v562);
  sub_2956AA570(v46, (3 * v46), v561);
  sub_2956AA570(v46, v46, v560);
  sub_2956AA570(v46, v46, v559);
  sub_2956AA570(v46, (3 * v46), v558);
  v76 = objc_msgSend_metalTexture(v42, v74, v75);
  v79 = objc_msgSend_device(v76, v77, v78);
  v493 = sub_2956AA67C(v79, v562);

  v82 = objc_msgSend_metalTexture(v42, v80, v81);
  v85 = objc_msgSend_device(v82, v83, v84);
  v492 = sub_2956AA67C(v85, v561);

  v88 = objc_msgSend_metalTexture(v42, v86, v87);
  v91 = objc_msgSend_device(v88, v89, v90);
  v491 = sub_2956AA67C(v91, v560);

  v94 = objc_msgSend_metalTexture(v42, v92, v93);
  v97 = objc_msgSend_device(v94, v95, v96);
  v490 = sub_2956AA67C(v97, v559);

  v100 = objc_msgSend_metalTexture(v42, v98, v99);
  v103 = objc_msgSend_device(v100, v101, v102);
  v489 = sub_2956AA67C(v103, v558);

  v488 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v104, @"addR");
  v508 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v105, @"multiply_weight");
  v510 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v106, @"make_corrupt");
  v479 = objc_msgSend_kernelWithName_andOutputFormat_(CoreImageOnlyLibrary, v107, @"scan_has_zero", *MEMORY[0x29EDB91E8]);
  v109 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v108, @"weights");
  v110 = v46;
  v112 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v111, v46);
  v557[0] = v112;
  v515 = v525;
  v115 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v113, v114, v515 + v515);
  v557[1] = v115;
  v117 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v116, v557, 2);
  v469 = v109;
  v507 = objc_msgSend_applyWithExtent_arguments_(v109, v118, v117, 0.0, 0.0, v46, v46);

  v121 = objc_msgSend_internalCommandQueue(v63, v119, v120);
  v124 = objc_msgSend_commandBuffer(v121, v122, v123);

  v125 = objc_alloc(MEMORY[0x29EDB9188]);
  v522 = v42;
  v128 = objc_msgSend_metalTexture(v42, v126, v127);
  v130 = objc_msgSend_initWithMTLTexture_commandBuffer_(v125, v129, v128, v124);

  objc_msgSend_setFlipped_(v130, v131, 1);
  objc_msgSend_setColorSpace_(v130, v132, 0);
  v135 = objc_msgSend_componentAdd(MEMORY[0x29EDB9150], v133, v134);
  objc_msgSend_setBlendKernel_(v130, v136, v135);

  objc_msgSend_setBlendsInDestinationColorSpace_(v130, v137, 1);
  v467 = v130;
  v139 = objc_msgSend_startTaskToClear_error_(v63, v138, v130, 0);
  v468 = v124;
  v142 = objc_msgSend_commit(v124, v140, v141);
  v466[2] = v466;
  MEMORY[0x2A1C7C4A8](v142);
  v478 = v466 - v143;
  v144 = v512;
  v146 = ceil(vcvtd_n_f64_u64(v145 * v512, 1uLL));
  v555[0] = *MEMORY[0x29EDBB1B8];
  v149 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v147, v148, v47);
  v556[0] = v149;
  v555[1] = *MEMORY[0x29EDBB150];
  v152 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v150, v151, v146);
  v153 = *MEMORY[0x29EDBB180];
  v556[1] = v152;
  v556[2] = &unk_2A1C94B10;
  v154 = *MEMORY[0x29EDBB138];
  v555[2] = v153;
  v555[3] = v154;
  objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v155, (v47 + 31) & 0xFFFFFFFFFFFFFFE0);
  v157 = v156 = v63;
  v555[4] = *MEMORY[0x29EDBB130];
  v556[3] = v157;
  v556[4] = &unk_2A1C94B28;
  v159 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v158, v556, v555, 5);

  v523 = v159;
  v521 = IOSurfaceCreate(v159);
  v554[0] = MEMORY[0x29EDCA5F8];
  v483 = 3221225472;
  v554[1] = 3221225472;
  v554[2] = sub_2956AA7B0;
  v554[3] = &unk_29EDD4898;
  v554[4] = v144;
  v160 = v525;
  v554[5] = v525;
  v554[6] = v46;
  v163 = objc_msgSend_imageByClampingToExtent(v516, v161, v162);
  v553[0] = v163;
  v165 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v164, v144);
  v553[1] = v165;
  objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v166, v160);
  v168 = v167 = v156;
  v553[2] = v168;
  v170 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v169, v553, 3);
  v172 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v479, v171, v554, v170, 0.0, 0.0, v47, v146);

  v173 = v521;
  v174 = objc_alloc(MEMORY[0x29EDB9188]);
  v176 = objc_msgSend_initWithIOSurface_(v174, v175, v173);
  v517 = v167;
  v178 = objc_msgSend_startTaskToRender_toDestination_error_(v167, v177, v172, v176, 0);
  LODWORD(seed.a) = 0;
  IOSurfaceLock(v173, 1u, &seed);
  BaseAddress = IOSurfaceGetBaseAddress(v173);
  if (v144 <= v524)
  {
    v184 = 0;
    v185 = -v525 >> 1;
    v186 = (v525 + v144) / 2;
    v180 = v522;
    v187 = v523;
    v188 = v481;
    v189 = v484;
    v190 = v478;
    do
    {
      if (v144 <= v188)
      {
        v191 = 0;
        v192 = (v189 + ~v184) * (v144 >> 1);
        do
        {
          if (v186 <= v185)
          {
            v193 = 1;
          }

          else
          {
            v193 = 0;
            v194 = v185 + 1;
            v195 = v186 - v185;
            v196 = v185;
            do
            {
              v197 = (v196 + v192);
              if (v196 + v192 >= 0 && v146 > v197 && BaseAddress[v191 + ((v47 + 31) & 0xFFFFFFFFFFFFFFE0) * v197])
              {
                break;
              }

              ++v196;
              v193 = v194++ >= v186;
              --v195;
            }

            while (v195);
          }

          v190[v184 * v47 + v191++] = v193;
        }

        while (v191 < v47);
      }

      ++v184;
    }

    while (v184 < v189);
    IOSurfaceUnlock(v173, 1u, &seed);
    CFRelease(v173);

    v509 = 0;
    v200 = 0;
    v201 = v144;
    v466[1] = v534;
    v487 = *MEMORY[0x29EDB9228];
    v486 = *MEMORY[0x29EDB9250];
    v485 = *MEMORY[0x29EDB9218];
    v477 = v566;
    v480 = v41;
    v476 = 0.333333333;
    v500 = v144;
    while (1)
    {
      v482 = v200;
      if (v144 <= v481)
      {
        break;
      }

LABEL_23:
      v200 = v482 + 1;
      if (v482 + 1 >= v484)
      {
        goto LABEL_7;
      }
    }

    v202 = 0;
    v203 = 0;
    v204 = (v200 * v144);
    v205 = v204 - v515;
    v505 = &v478[v200 * v47];
    v506 = v200 * v47;
    v503 = v204;
    while (1)
    {
      v206 = v202;
      objc_msgSend_region(v180, v198, v199);
      v572.origin.x = v207;
      v572.origin.y = v208;
      v572.size.width = v209;
      v572.size.height = v210;
      v568.origin.x = v202;
      v568.origin.y = v204;
      v568.size.width = v201;
      v568.size.height = v201;
      if (CGRectIntersectsRect(v568, v572))
      {
        break;
      }

LABEL_87:
      ++v203;
      v202 += v144;
      if (v203 >= v47)
      {
        goto LABEL_23;
      }
    }

    v211 = (v203 + v506) & 1;
    v212 = v206 - v515;
    v213 = sub_2956AA7D8(v514, v198, v199, v206 - v515, v205, v110, v110);
    v216 = sub_2956AA7D8(v516, v214, v215, v212, v205, v110, v110);
    v524 = sub_2956AA7D8(v511, v217, v218, v212, v205, v110, v110);
    v221 = sub_2956AA7D8(v513, v219, v220, v212, v205, v110, v110);
    objc_msgSend_extent(v221, v222, v223);
    v225 = v224;
    v227 = v226;
    v229 = v228;
    v231 = v230;
    v523 = v221;
    v552[0] = v221;
    v525 = v216;
    v552[1] = v216;
    v233 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v232, v552, 2);
    v235 = objc_msgSend_applyWithExtent_arguments_(v510, v234, v233, v225, v227, v229, v231);

    v520 = v203;
    v238 = v505[v203];
    v239 = v561[v211];
    v240 = v560[v211];
    v241 = v559[v211];
    v242 = v558[v211];
    v518 = v562[v211];
    v504 = v239;
    if (v518)
    {
      v243 = v239 == 0;
    }

    else
    {
      v243 = 1;
    }

    v501 = v241;
    v502 = v240;
    v245 = v243 || v240 == 0 || v241 == 0;
    v246 = v245;
    if (v245)
    {
      v247 = uni_logger_api();
      if (os_log_type_enabled(v247, OS_LOG_TYPE_ERROR))
      {
        sub_2956CBF9C(v550, &v551, v247);
      }
    }

    if (!v242)
    {
      v248 = uni_logger_api();
      if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
      {
        sub_2956CBFE0(v548, &v549, v248);
      }
    }

    v521 = v202;
    if (v242)
    {
      v249 = v246;
    }

    else
    {
      v249 = 1;
    }

    v250 = v522;
    objc_msgSend_region(v522, v236, v237);
    v252 = v251;
    objc_msgSend_region(v250, v253, v254);
    v256 = v255;
    if ((v249 & 1) != 0 || v238)
    {
      v519 = v213;
      v289 = v523;
      v292 = v523;
      v518 = v235;
LABEL_86:
      objc_msgSend_extent(v292, v290, v291);
      v423 = v422;
      v425 = v424;
      v427 = v426;
      v429 = v428;
      v527[0] = v292;
      v527[1] = v507;
      v431 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v430, v527, 2);
      v433 = objc_msgSend_applyWithExtent_arguments_(v508, v432, v431, v423, v425, v427, v429);

      v434 = v517;
      v437 = objc_msgSend_internalCommandQueue(v517, v435, v436);
      v440 = objc_msgSend_commandBuffer(v437, v438, v439);

      v441 = v522;
      v444 = objc_msgSend_metalTexture(v522, v442, v443);
      v445 = v434;
      v446 = v433;
      v447 = MEMORY[0x29EDB9188];
      v448 = v440;
      v449 = [v447 alloc];
      v451 = objc_msgSend_initWithMTLTexture_commandBuffer_(v449, v450, v444, v448);

      objc_msgSend_setFlipped_(v451, v452, 1);
      objc_msgSend_setColorSpace_(v451, v453, 0);
      v456 = objc_msgSend_componentAdd(MEMORY[0x29EDB9150], v454, v455);
      objc_msgSend_setBlendKernel_(v451, v457, v456);

      v180 = v441;
      objc_msgSend_setBlendsInDestinationColorSpace_(v451, v458, 1);
      objc_msgSend_extent(v446, v459, v460);
      v462 = objc_msgSend_startTaskToRender_fromRect_toDestination_atPoint_error_(v445, v461, v446, v451, 0);

      objc_msgSend_commit(v448, v463, v464);
      v144 = v512;
      v201 = v500;
      v203 = v520;
      v202 = v521;
      v204 = v503;
      goto LABEL_87;
    }

    v257 = sub_2956AAAB4(v213);
    v258 = sub_2956AA888(v257);
    v259 = v213;
    v260 = v258;

    v261 = sub_2956AAAB4(v235);
    v262 = sub_2956AA888(v261);

    v263 = v517;
    v266 = objc_msgSend_internalCommandQueue(v517, v264, v265);
    v269 = objc_msgSend_commandBuffer(v266, v267, v268);

    v271 = objc_msgSend_objectAtIndexedSubscript_(v493, v270, v211);
    v499 = v260;
    sub_2956AAB94(v263, v260, v271, v269);

    v273 = objc_msgSend_objectAtIndexedSubscript_(v492, v272, v211);
    v519 = v262;
    sub_2956AAB94(v263, v262, v273, v269);

    v275 = objc_msgSend_objectAtIndexedSubscript_(v491, v274, v211);
    sub_2956AAB94(v263, v525, v275, v269);

    v277 = objc_msgSend_objectAtIndexedSubscript_(v490, v276, v211);
    sub_2956AAB94(v263, v524, v277, v269);

    objc_msgSend_commit(v269, v278, v279);
    v498 = v269;
    objc_msgSend_waitUntilScheduled(v269, v280, v281);
    v282 = v494;
    objc_sync_enter(v282);
    v285 = objc_msgSend_buildWait(v282, v283, v284);
    v497 = v256;
    if (v285)
    {
      v509 = objc_msgSend_bind_buffer_(v282, v286, "input_ref", v518);
      if (v509)
      {
        v288 = uni_logger_api();
        if (os_log_type_enabled(v288, OS_LOG_TYPE_ERROR))
        {
          sub_2956CC068(v544, &v545, v288);
        }

LABEL_75:

LABEL_76:
        objc_sync_exit(v282);

        v298 = MEMORY[0x29EDB9178];
        v300 = objc_msgSend_objectAtIndexedSubscript_(v489, v299, v211);
        v531 = v487;
        v532 = MEMORY[0x29EDB8EB0];
        v302 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v301, &v532, &v531, 1);
        v304 = objc_msgSend_imageWithMTLTexture_options_(v298, v303, v300, v302);

        objc_msgSend_extent(v304, v305, v306);
        v308 = v307;
        v310 = v309;
        v312 = v311;
        v314 = v313;
        v530[0] = v519;
        v530[1] = v304;
        v316 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v315, v530, 2);
        v528 = v486;
        v318 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v317, v485);
        v529 = v318;
        v320 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v319, &v529, &v528, 1);
        v322 = objc_msgSend_applyWithExtent_arguments_options_(v488, v321, v316, v320, v308, v310, v312, v314);

        v323 = v322;
        v327 = objc_msgSend_kernelWithName_(CoreImageOnlyLibrary, v324, @"ccp_planarToInterleaved");
        v496 = v252;
        v518 = v304;
        if (v323)
        {
          objc_msgSend_extent(v323, v325, v326);
          IsInfinite = CGRectIsInfinite(v569);
          v331 = v523;
          if (IsInfinite)
          {
            v332 = 0;
            v333 = v323;
          }

          else
          {
            objc_msgSend_extent(v323, v329, v330);
            v335 = v334;
            objc_msgSend_extent(v323, v336, v337);
            v339 = v338;
            v341 = v340;
            v343 = v342;
            v345 = v344;
            CGAffineTransformMakeScale(&seed, 1.0, v476);
            v570.origin.x = v339;
            v570.origin.y = v341;
            v570.size.width = v343;
            v570.size.height = v345;
            v571 = CGRectApplyAffineTransform(v570, &seed);
            x = v571.origin.x;
            y = v571.origin.y;
            width = v571.size.width;
            height = v571.size.height;
            v565[0] = MEMORY[0x29EDCA5F8];
            v565[1] = v483;
            v566[0] = sub_2956AB5F0;
            v566[1] = &unk_29EDD48E0;
            v566[2] = v335;
            *&seed.a = v323;
            v352 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v350, v351, v571.size.height);
            *&seed.b = v352;
            v354 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v353, &seed, 2);
            v356 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v327, v355, v565, v354, x, y, width, height);

            v333 = v356;
            v332 = v333;
          }
        }

        else
        {
          v333 = 0;
          v332 = 0;
          v331 = v523;
        }

        v357 = v332;
        v359 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v358, @"from_range_m1_p1");
        objc_msgSend_extent(v357, v360, v361);
        v363 = v362;
        v365 = v364;
        v367 = v366;
        v369 = v368;
        *&seed.a = v357;
        v371 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v370, &seed, 1);

        v373 = objc_msgSend_applyWithExtent_arguments_(v359, v372, v371, v363, v365, v367, v369);

        v374 = v373;
        v376 = v331;
        *&v377 = v495;
        if (v495 >= 1.0)
        {
          v292 = v374;
        }

        else
        {
          v504 = v376;
          v378 = objc_msgSend_imageYCC444_matrix_fullRange_precision_colorSpace_(MEMORY[0x29EDB9178], v375, v376, 709, 1, 0, 0, v377);
          v380 = objc_msgSend_imageYCC444_matrix_fullRange_precision_colorSpace_(MEMORY[0x29EDB9178], v379, v374, 709, 1, 0, 0);
          v381 = v378;
          objc_msgSend_extent(v381, v382, v383);
          v385 = v384;
          v387 = v386;
          v389 = v388;
          v391 = v390;
          v394 = objc_msgSend_imageByClampingToExtent(v381, v392, v393);

          v397 = objc_msgSend_imageByApplyingGaussianBlurWithSigma_(v394, v395, v396, v480);

          v400 = objc_msgSend_imageByCroppingToRect_(v397, v398, v399, v385, v387, v389, v391);

          if (!v400)
          {
            sub_2956CC214();
          }

          v402 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v401, @"blend_chroma");
          objc_msgSend_setPerservesAlpha_(v402, v403, 1);
          objc_msgSend_extent(v380, v404, v405);
          v407 = v406;
          v409 = v408;
          v411 = v410;
          v413 = v412;
          *&seed.a = v380;
          *&seed.b = v400;
          *&v406 = v495;
          v416 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v414, v415, v406);
          *&seed.c = v416;
          v418 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v417, &seed, 3);
          v420 = objc_msgSend_applyWithExtent_arguments_(v402, v419, v418, v407, v409, v411, v413);

          v331 = v523;
          v292 = objc_msgSend_imageWithYCCImage_matrix_fullRange_precision_colorSpace_(MEMORY[0x29EDB9178], v421, v420, 709, 1, 0, 0);

          v376 = v504;
        }

        v518 = v519;
        v519 = v499;
        v289 = v331;
        goto LABEL_86;
      }

      v509 = objc_msgSend_bind_buffer_(v282, v287, "input_corrupted", v504);
      if (v509)
      {
        v288 = uni_logger_api();
        if (os_log_type_enabled(v288, OS_LOG_TYPE_ERROR))
        {
          sub_2956CC0AC(v542, &v543, v288);
        }

        goto LABEL_75;
      }

      v509 = objc_msgSend_bind_buffer_(v282, v295, "input_mask", v502);
      if (v509)
      {
        v288 = uni_logger_api();
        if (os_log_type_enabled(v288, OS_LOG_TYPE_ERROR))
        {
          sub_2956CC0F0(v540, &v541, v288);
        }

        goto LABEL_75;
      }

      v509 = objc_msgSend_bind_buffer_(v282, v296, "input_alpha", v501);
      if (v509)
      {
        v288 = uni_logger_api();
        if (os_log_type_enabled(v288, OS_LOG_TYPE_ERROR))
        {
          sub_2956CC134(v538, &v539, v288);
        }

        goto LABEL_75;
      }

      v509 = objc_msgSend_bind_buffer_(v282, v297, "output_residual", v242);
      if (v509)
      {
        v288 = uni_logger_api();
        if (os_log_type_enabled(v288, OS_LOG_TYPE_ERROR))
        {
          sub_2956CC178(v536, &v537, v288);
        }

        goto LABEL_75;
      }
    }

    else
    {
      v293 = uni_logger_api();
      if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
      {
        sub_2956CC024(v546, &v547, v293);
      }

      if (v509)
      {
        goto LABEL_76;
      }
    }

    v533[0] = MEMORY[0x29EDCA5F8];
    v533[1] = v483;
    v534[0] = sub_2956AAD50;
    v534[1] = &unk_29EDD48C0;
    v535 = v250;
    if (objc_msgSend_executeAsync_(v282, v294, v533))
    {
      v465 = uni_logger_api();
      if (os_log_type_enabled(v465, OS_LOG_TYPE_ERROR))
      {
        sub_2956CC1BC(v465);
      }

      __assert_rtn("+[ApplyHairnetModel processWithInputs:arguments:output:error:]", "HairnetProcessor.m", 605, "status==0");
    }

    v509 = 0;
    v288 = v535;
    goto LABEL_75;
  }

  IOSurfaceUnlock(v173, 1u, &seed);
  CFRelease(v173);

  v180 = v522;
LABEL_7:
  v181 = dispatch_get_global_queue(-32768, 0);
  v526[0] = MEMORY[0x29EDCA5F8];
  v526[1] = v483;
  v526[2] = sub_2956AADDC;
  v526[3] = &unk_29EDD47F0;
  v182 = v517;
  v526[4] = v517;
  dispatch_async(v181, v526);

  return 1;
}

+ (int)formatForInputAtIndex:(int)index
{
  v3 = MEMORY[0x29EDB91E8];
  v4 = MEMORY[0x29EDB9208];
  if (index >= 2)
  {
    v4 = MEMORY[0x29EDB9218];
  }

  if (index != 2)
  {
    v3 = v4;
  }

  return *v3;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  argumentsCopy = arguments;
  v7 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v6, @"fullWidth");
  v10 = objc_msgSend_unsignedLongValue(v7, v8, v9);

  v12 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v11, @"fullHeight");
  v15 = objc_msgSend_unsignedLongValue(v12, v13, v14);

  v17 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v16, @"tileSize");
  v20 = objc_msgSend_unsignedLongValue(v17, v18, v19);

  v22 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v21, @"tileOverlap");
  v25 = objc_msgSend_unsignedLongValue(v22, v23, v24);

  v26 = v20 - 1;
  v27 = v20 - 1 + v15;
  x = *MEMORY[0x29EDB90D8];
  y = *(MEMORY[0x29EDB90D8] + 8);
  width = *(MEMORY[0x29EDB90D8] + 16);
  height = *(MEMORY[0x29EDB90D8] + 24);
  if (v20 <= v27)
  {
    v32 = 0;
    v33 = v26 + v10;
    v34 = (v26 + v10) / v20;
    v35 = v25;
    v36 = (v20 + 2 * v25);
    v37 = v27 / v20;
    do
    {
      if (v20 <= v33)
      {
        v38 = 0;
        v39 = 0;
        do
        {
          v49.origin.x = v38 - v35;
          v49.origin.y = (v32 * v20) - v35;
          v49.size.width = v36;
          v49.size.height = v36;
          if (CGRectIntersectsRect(v49, rect))
          {
            v50.origin.x = x;
            v50.origin.y = y;
            v50.size.width = width;
            v50.size.height = height;
            v55.origin.x = v38 - v35;
            v55.origin.y = (v32 * v20) - v35;
            v55.size.width = v36;
            v55.size.height = v36;
            v51 = CGRectUnion(v50, v55);
            x = v51.origin.x;
            y = v51.origin.y;
            width = v51.size.width;
            height = v51.size.height;
          }

          ++v39;
          v38 += v20;
        }

        while (v39 < v34);
      }

      ++v32;
    }

    while (v32 < v37);
  }

  v56.size.width = v10;
  v56.size.height = v15;
  v56.origin.x = 0.0;
  v56.origin.y = 0.0;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v53 = CGRectIntersection(v52, v56);
  v40 = v53.origin.x;
  v41 = v53.origin.y;
  v42 = v53.size.width;
  v43 = v53.size.height;

  v44 = v40;
  v45 = v41;
  v46 = v42;
  v47 = v43;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

+ (id)apply:(id)apply sdof:(id)sdof mask:(id)mask alpha:(id)alpha chromaWeight:(float)weight chromaBlurSigma:(float)sigma model:(id)model
{
  applyCopy = apply;
  sdofCopy = sdof;
  maskCopy = mask;
  alphaCopy = alpha;
  modelCopy = model;
  v21 = maskCopy;
  if (!v21)
  {
    sub_2956CC348();
  }

  v23 = v21;
  v24 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v22, @"invertMask");
  if (!v24)
  {
    sub_2956CC31C();
  }

  v27 = v24;
  selfCopy = self;
  v92 = alphaCopy;
  objc_msgSend_extent(v23, v25, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v99 = v23;
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v36, &v99, 1);
  v97 = *MEMORY[0x29EDB9250];
  v39 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v38, *MEMORY[0x29EDB9218]);
  v98 = v39;
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v40, &v98, &v97, 1);
  v43 = objc_msgSend_applyWithExtent_arguments_options_(v27, v42, v37, v41, v29, v31, v33, v35);

  if (!v43)
  {
    sub_2956CC2F0();
  }

  v95[0] = @"fullWidth";
  v44 = MEMORY[0x29EDBA070];
  objc_msgSend_extent(applyCopy, v45, v46);
  v50 = objc_msgSend_numberWithDouble_(v44, v47, v48, v49);
  v96[0] = v50;
  v95[1] = @"fullHeight";
  v51 = MEMORY[0x29EDBA070];
  objc_msgSend_extent(applyCopy, v52, v53);
  v57 = objc_msgSend_numberWithDouble_(v51, v54, v55, v56);
  v96[1] = v57;
  v95[2] = @"tileSize";
  v59 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v58, 336);
  v96[2] = v59;
  v95[3] = @"tileOverlap";
  v61 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v60, 24);
  v96[3] = v61;
  v95[4] = @"chromaWeight";
  *&v62 = weight;
  objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v63, v64, v62);
  v65 = modelCopy;
  v90 = modelCopy;
  v66 = v43;
  v68 = v67 = sdofCopy;
  v96[4] = v68;
  v95[5] = @"chromaBlurSigma";
  *&v69 = sigma;
  v72 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v70, v71, v69);
  v95[6] = @"model";
  v96[5] = v72;
  v96[6] = v65;
  v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v73, v96, v95, 7);

  objc_msgSend_extent(applyCopy, v75, v76);
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v94[0] = applyCopy;
  v94[1] = v67;
  v94[2] = v66;
  v94[3] = v92;
  v86 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v85, v94, 4);
  v93 = 0;
  v88 = objc_msgSend_applyWithExtent_inputs_arguments_error_(selfCopy, v87, v86, v74, &v93, v78, v80, v82, v84);

  return v88;
}

@end