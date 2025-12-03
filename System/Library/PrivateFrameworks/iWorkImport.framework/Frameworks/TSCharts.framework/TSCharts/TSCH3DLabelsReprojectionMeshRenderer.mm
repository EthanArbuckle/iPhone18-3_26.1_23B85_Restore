@interface TSCH3DLabelsReprojectionMeshRenderer
- (void)renderWithMeshRenderLabelInfo:(id)info;
@end

@implementation TSCH3DLabelsReprojectionMeshRenderer

- (void)renderWithMeshRenderLabelInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_renderer(infoCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_pipeline(v8, v9, v10, v11, v12);
  v316 = objc_msgSend_processor(v13, v14, v15, v16, v17);
  v22 = objc_msgSend_labelCamera(v8, v18, v19, v20, v21);
  v28 = v22;
  if (v22)
  {
    objc_msgSend_normalizedProjection(v22, v23, v24, v25, v26);
    if (infoCopy)
    {
LABEL_3:
      objc_msgSend_translation(infoCopy, v23, v29, v25, v26);
      v30 = v350;
      v31 = v351;
      goto LABEL_6;
    }
  }

  else
  {
    v29 = 0.0;
    memset(&v362, 0, 64);
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  v351 = 0.0;
  v350 = 0;
  v30 = 0;
  v31 = 0.0;
LABEL_6:
  v354 = 0;
  v353 = 0;
  v352 = 1065353216;
  v355 = 1065353216;
  v356 = 0;
  v357 = 0;
  v32 = vmul_f32(v30, 0);
  v33 = vrev64_s32(v32);
  v32.f32[0] = vaddv_f32(v32);
  *v27.i32 = v31 * 0.0;
  v358 = 1065353216;
  v359 = vadd_f32(vadd_f32(vadd_f32(v30, v33), vdup_lane_s32(v27, 0)), 0);
  v360 = (v31 + v32.f32[0]) + 0.0;
  v361 = (v32.f32[0] + (v31 * 0.0)) + 1.0;
  *&v35 = sub_2761558A0(&v362, &v352, &v363).u64[0];
  if (infoCopy)
  {
    objc_msgSend_offset(infoCopy, v34, v35, v36, v37);
    v38 = v339;
  }

  else
  {
    v339 = 0;
    v38 = 0;
  }

  v342 = 0;
  v341 = 0;
  v340 = 1065353216;
  v343 = 1065353216;
  v344 = 0;
  v345 = 0;
  v39 = vmul_f32(v38, 0);
  v346 = 1065353216;
  v347 = vadd_f32(vadd_f32(v38, vrev64_s32(v39)), 0);
  v348 = vaddv_f32(v39) + 0.0;
  v349 = v348 + 1.0;
  *&v40 = sub_2761558A0(&v363, &v340, v364).u64[0];
  objc_msgSend_rotation(infoCopy, v41, v40, v42, v43);
  v45 = __sincosf_stret(v44 * 0.017453);
  v46 = (1.0 - v45.__cosval) * 0.0;
  v47 = v45.__cosval + (v46 * 0.0);
  v48 = (v46 * 0.0) + 0.0;
  v49 = v45.__sinval + v48;
  v50 = v46 + 0.0;
  v51 = v50 - (v45.__sinval * 0.0);
  v52 = v48 - v45.__sinval;
  v53 = v50 + (v45.__sinval * 0.0);
  v54 = ((1.0 - v45.__cosval) * 0.0) + 0.0;
  v55 = v54 + (v45.__sinval * 0.0);
  v56 = v54 - (v45.__sinval * 0.0);
  v57 = v45.__cosval + (1.0 - v45.__cosval);
  v58 = (v47 * 0.0) + (v49 * 0.0);
  v337[0] = (v51 * 0.0) + (v47 + (v49 * 0.0));
  v337[1] = ((v47 * 0.0) + v49) + (v51 * 0.0);
  v337[2] = v51 + v58;
  v337[3] = (v51 * 0.0) + v58;
  v59 = (v47 * 0.0) + (v52 * 0.0);
  v337[4] = ((v47 * 0.0) + v52) + (v53 * 0.0);
  v337[5] = (v53 * 0.0) + (v47 + (v52 * 0.0));
  v337[6] = v53 + v59;
  v337[7] = (v53 * 0.0) + v59;
  v60 = (v55 * 0.0) + (v56 * 0.0);
  v337[8] = (v57 * 0.0) + (v55 + (v56 * 0.0));
  v337[9] = (v57 * 0.0) + (v56 + (v55 * 0.0));
  v337[10] = v57 + v60;
  v337[11] = (v57 * 0.0) + v60;
  v338 = xmmword_2764D5F20;
  *&v62 = sub_2761558A0(v364, v337, __p).u64[0];
  if (infoCopy)
  {
    objc_msgSend_alignmentOffset(infoCopy, v61, v62, v63, v64);
    v65 = v326;
  }

  else
  {
    v326 = 0;
    v65 = 0;
  }

  v66 = vmul_f32(v65, 0);
  v327 = 1065353216;
  v329 = 0;
  v328 = 0;
  v330 = 1065353216;
  v331 = 0;
  v332 = 0;
  v333 = 1065353216;
  v334 = vadd_f32(vadd_f32(v65, vrev64_s32(v66)), 0);
  v335 = vaddv_f32(v66) + 0.0;
  v336 = v335 + 1.0;
  *&v68 = sub_2761558A0(__p, &v327, &v374).u64[0];
  if (infoCopy)
  {
    objc_msgSend_scale(infoCopy, v67, v68, *v69.i64, v70);
    v69.i32[0] = v319;
    v71 = v320;
  }

  else
  {
    v71 = 0;
    v69.i32[0] = 0;
  }

  v321[0] = v69.i32[0];
  *&v321[1] = *v69.i32 * 0.0;
  *&v321[2] = *v69.i32 * 0.0;
  *&v321[3] = *v69.i32 * 0.0;
  *v69.i8 = vmul_f32(v71, 0);
  v322 = vzip1_s32(*v69.i8, v71);
  v323 = vzip1q_s32(v69, v69);
  v324 = vzip2_s32(v71, *v69.i8);
  v325 = xmmword_2764D5F20;
  sub_2761558A0(&v374, v321, &v377);

  v75 = 0;
  v363 = xmmword_2764D5EE0;
  do
  {
    v374 = xmmword_2764D5ED0;
    sub_2761FF824(v374.f32, v75, __p, 0.0, v72, v73, v74);
    *v76.i32 = v383 + (((*&__p[4] * v379) + (v377.f32[3] * *__p)) + (v381 * 0.0));
    *v374.f32 = vdiv_f32(vadd_f32(v382, vmla_f32(vmla_n_f32(vmul_n_f32(v378, *&__p[4]), *v377.f32, *__p), 0, v380)), vdup_lane_s32(v76, 0));
    *&v78 = sub_276152BD8(&v363, &v374);
    ++v75;
  }

  while (v75 != 4);
  v80 = objc_msgSend_camera(v13, *&v77, v78, v72, v73);
  if (infoCopy)
  {
    objc_msgSend_position(infoCopy, v79, v81, v82, v83);
  }

  else
  {
    v374.i32[2] = 0;
    v374.i64[0] = 0;
  }

  v84 = objc_msgSend_unitToWorld(v8, v79, v81, v82, v83);
  *&v87 = sub_276154744(&v374, v84, &v362, v85);
  if (v80)
  {
    objc_msgSend_transform(v80, v86, v87, v88, v89);
    v93 = *(&v375 + 1);
    v92 = *&v375;
    v94 = *(&v375 + 2);
    v96 = *(&v376 + 1);
    v95 = *&v376;
    v317 = *(&v376 + 2);
  }

  else
  {
    v375 = 0u;
    v376 = 0u;
    memset(&v374, 0, 32);
    HIDWORD(v91) = 0;
    v317 = 0.0;
    v96 = 0.0;
    v95 = 0.0;
    v94 = 0.0;
    v93 = 0.0;
    v92 = 0.0;
  }

  LODWORD(v88) = v363.i32[1];
  LODWORD(v91) = v363.i32[0];
  LODWORD(v90) = v363.i32[3];
  LODWORD(v89) = v363.i32[2];
  if (v363.f32[3] < v363.f32[1] || v363.f32[2] < v363.f32[0])
  {
    v98 = 0;
  }

  else
  {
    v98 = 4;
  }

  v99 = v362.f32[1];
  v100 = v362.f32[0];
  v101 = v362.f32[2];
  v102 = objc_msgSend_mesh(v8, v86, v91, v88, v89, v90);

  if (!v102)
  {
    v107 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v103, v104, v105, v106, v98);
    v112 = objc_msgSend_resourceWithBuffer_(TSCH3DDataBufferResource, v108, v109, v110, v111, v107);
    objc_msgSend_setMesh_(v8, v113, v114, v115, v116, v112);
  }

  v117 = objc_msgSend_mesh(v8, v103, v104, v105, v106);
  v118 = sub_27618C648(v117);

  sub_2761EDA00(v118, v98);
  sub_2761F27A8(v364, v98);
  *&v123 = 1.0 / sqrtf(((v93 * v93) + (v92 * v92)) + (v94 * v94));
  *&v121 = -(v93 * *&v123);
  *&v122 = -(v92 * *&v123);
  *&v123 = -(v94 * *&v123);
  *&v120 = (v96 * *&v121) + (*&v122 * v95);
  *&v121 = (v99 * *&v121) + (v100 * *&v122);
  *&v122 = *&v120 + (*&v123 * v317);
  *&v123 = *&v121 + (v101 * *&v123);
  v124 = *&v123 - *&v122;
  if (v98)
  {
    v125 = 0;
    for (i = 0; i != v98; ++i)
    {
      *&v128 = sub_2761FF824(v363.f32, i, &v352, v123, v121, v122, v120);
      if (v80)
      {
        *&v128 = v124;
        objc_msgSend_projectNormalizedPoint_planeDistance_(v80, v127, v128, v129, v130, &v352);
      }

      else
      {
        memset(__p, 0, sizeof(__p));
      }

      v131 = objc_msgSend_worldToStage(v8, v127, v128, v129, v130);
      sub_276154744(__p, v131, &v352, v132);
      v133 = *v118 + v125;
      *v133 = v352;
      *(v133 + 4) = v353;
      v134 = v364[0].i64[0] + v125;
      *v134 = *__p;
      LODWORD(v123) = *&__p[8];
      *(v134 + 8) = *&__p[8];
      v125 += 12;
    }
  }

  if (v80)
  {
    objc_msgSend_modelViewNormalizedProjection(v80, v119, v123, v121, v122);
    v135 = *__p;
    v136 = *(&v366 + 1);
    LODWORD(v122) = v367;
    v137 = *&v369;
    v138 = *(&v371 + 1);
    v314 = *&v366;
    v311 = *(&v368 + 1);
    LODWORD(v121) = v368;
    v312 = *&v371;
    LODWORD(v139) = v373;
    v318 = *&v373;
  }

  else
  {
    v139 = 0.0;
    v318 = 0.0;
    v312 = 0.0;
    v311 = 0.0;
    v314 = 0.0;
    v138 = 0.0;
    v137 = 0.0;
    v136 = 0.0;
    v135 = 0.0;
  }

  if (byte_280A46430 == 1)
  {
    v140 = v362.i64[0];
    v141 = v362.f32[2];
    v142 = objc_msgSend_label(v8, v119, v139, v121, v122);
    v309 = v13;
    v310 = infoCopy;
    v147 = objc_msgSend_attributes(v142, v143, v144, v145, v146);
    v152 = objc_msgSend_string(v147, v148, v149, v150, v151);
    v153 = MEMORY[0x277CCACA8];
    sub_276152EB4(v363.f32, v154, v155, v156, v157, v158, v159, v160);
    if (v367 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v153, v161, v162, v163, v164, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v153, v161, v162, v163, v164, *__p);
    }
    v172 = ;
    v173 = (v138 + (((*(&v140 + 1) * v136) + (v135 * *&v140)) + (v137 * v141))) / (v318 + (((*(&v140 + 1) * v311) + (v314 * *&v140)) + (v312 * v141)));
    if (SHIBYTE(v367) < 0)
    {
      operator delete(*__p);
    }

    v174 = MEMORY[0x277CCACA8];
    v308 = v173;
    sub_276152FD4("vec3(%f, %f, %f)", v165, v166, v167, v168, v169, v170, v171, SLOBYTE(v308));
    if (v367 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v174, v175, v176, v177, v178, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v174, v175, v176, v177, v178, *__p);
    }
    v179 = ;
    if (SHIBYTE(v367) < 0)
    {
      operator delete(*__p);
    }

    NSLog(&cfstr_LabelboundsDis.isa, v152, v172, v124, v179);

    v13 = v309;
    infoCopy = v310;
    if (byte_280A46430)
    {
      v186 = MEMORY[0x277CCACA8];
      v187 = *v364[0].i64[0];
      sub_276152FD4("vec3(%f, %f, %f)", v119, v180, v181, v182, v183, v184, v185, SLOBYTE(v187));
      if (v367 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v186, v188, v189, v190, v191, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v186, v188, v189, v190, v191, *__p);
      }
      v199 = ;
      if (SHIBYTE(v367) < 0)
      {
        operator delete(*__p);
      }

      v200 = MEMORY[0x277CCACA8];
      v201 = *(v364[0].i64[0] + 12);
      sub_276152FD4("vec3(%f, %f, %f)", v192, v193, v194, v195, v196, v197, v198, SLOBYTE(v201));
      if (v367 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v200, v202, v203, v204, v205, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v200, v202, v203, v204, v205, *__p);
      }
      v315 = ;
      if (SHIBYTE(v367) < 0)
      {
        operator delete(*__p);
      }

      v213 = MEMORY[0x277CCACA8];
      v214 = *(v364[0].i64[0] + 24);
      sub_276152FD4("vec3(%f, %f, %f)", v206, v207, v208, v209, v210, v211, v212, SLOBYTE(v214));
      if (v367 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v213, v215, v216, v217, v218, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v213, v215, v216, v217, v218, *__p);
      }
      v226 = ;
      if (SHIBYTE(v367) < 0)
      {
        operator delete(*__p);
      }

      v227 = MEMORY[0x277CCACA8];
      v228 = *(v364[0].i64[0] + 36);
      v313 = v226;
      sub_276152FD4("vec3(%f, %f, %f)", v219, v220, v221, v222, v223, v224, v225, SLOBYTE(v228));
      if (v367 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v227, v229, v230, v231, v232, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v227, v229, v230, v231, v232, *__p);
      }
      v240 = ;
      if (SHIBYTE(v367) < 0)
      {
        operator delete(*__p);
      }

      v241 = MEMORY[0x277CCACA8];
      v242 = **v118;
      sub_276152FD4("vec3(%f, %f, %f)", v233, v234, v235, v236, v237, v238, v239, SLOBYTE(v242));
      if (v367 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v241, v243, v244, v245, v246, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v241, v243, v244, v245, v246, *__p);
      }
      v254 = ;
      if (SHIBYTE(v367) < 0)
      {
        operator delete(*__p);
      }

      v255 = MEMORY[0x277CCACA8];
      v256 = *(*v118 + 12);
      sub_276152FD4("vec3(%f, %f, %f)", v247, v248, v249, v250, v251, v252, v253, SLOBYTE(v256));
      if (v367 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v255, v257, v258, v259, v260, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v255, v257, v258, v259, v260, *__p);
      }
      v268 = ;
      if (SHIBYTE(v367) < 0)
      {
        operator delete(*__p);
      }

      v269 = MEMORY[0x277CCACA8];
      v270 = *(*v118 + 24);
      sub_276152FD4("vec3(%f, %f, %f)", v261, v262, v263, v264, v265, v266, v267, SLOBYTE(v270));
      if (v367 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v269, v271, v272, v273, v274, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v269, v271, v272, v273, v274, *__p);
      }
      v282 = ;
      if (SHIBYTE(v367) < 0)
      {
        operator delete(*__p);
      }

      v283 = MEMORY[0x277CCACA8];
      v284 = *(*v118 + 36);
      sub_276152FD4("vec3(%f, %f, %f)", v275, v276, v277, v278, v279, v280, v281, SLOBYTE(v284));
      if (v367 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v283, v285, v286, v287, v288, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v283, v285, v286, v287, v288, *__p);
      }
      v289 = ;
      if (SHIBYTE(v367) < 0)
      {
        operator delete(*__p);
      }

      NSLog(&cfstr_PlaneInverse.isa, v199, v315, v313, v240, v254, v268, v282, v289);

      v13 = v309;
      infoCopy = v310;
    }
  }

  v366 = 0;
  *&__p[4] = 0;
  *__p = 1065353216;
  v367 = 1065353216;
  v369 = 0;
  v368 = 0;
  v372 = 0;
  v371 = 0;
  v370 = 1065353216;
  *&v373 = 1.0;
  objc_msgSend_replace_(v316, v119, v139, v121, v122, __p);
  v294 = objc_msgSend_mesh(v8, v290, v291, v292, v293);
  objc_msgSend_geometry_(v316, v295, v296, v297, v298, v294);

  v303 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v299, v300, v301, v302, 5);
  objc_msgSend_submit_(v316, v304, v305, v306, v307, v303);

  if (v364[0].i64[0])
  {
    v364[0].i64[1] = v364[0].i64[0];
    operator delete(v364[0].i64[0]);
  }
}

@end