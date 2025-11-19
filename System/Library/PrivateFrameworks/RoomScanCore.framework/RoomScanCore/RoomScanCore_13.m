void sub_2622A8360(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v5 = objc_msgSend_copy(WeakRetained[4], v3, v4);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v10 = objc_msgSend_copy(v13[13], v8, v9);
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    WeakRetained = v13;
  }
}

void sub_2622A83FC(uint64_t a1)
{
  v1 = a1;
  v427 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_127;
  }

  v4 = objc_msgSend_date(MEMORY[0x277CBEAA8], v2, v3);
  v5 = *(WeakRetained + 6);
  *(WeakRetained + 6) = v4;

  v6 = *(WeakRetained + 19);
  v9 = objc_msgSend_allValues(*(*(*(v1 + 32) + 8) + 40), v7, v8);
  sub_2621EB520(v6, v9, 0);

  v381 = sub_2621EEA88(*(WeakRetained + 2), *(*(*(v1 + 32) + 8) + 40), *(*(*(v1 + 40) + 8) + 40));
  if (objc_msgSend_isBoundaryRefinementEnabled(*(WeakRetained + 1), v10, v11))
  {
    std::mutex::lock((WeakRetained + 200));
    v14 = objc_msgSend_firstObject(*(WeakRetained + 24), v12, v13);
    std::mutex::unlock((WeakRetained + 200));
    if (v14)
    {
      v15 = *(WeakRetained + 23);
      v382 = v381;
      v377 = v14;
      v380 = v14;
      v390 = v15;
      if (v15)
      {
        v416 = 9757;
        v417 = 0;
        kdebug_trace();
        std::chrono::steady_clock::now();
        v375.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        v393 = objc_msgSend_copy(v382, v16, v17);
        v20 = objc_msgSend_windows(v382, v18, v19);
        v379 = objc_msgSend_copy(v20, v21, v22);

        v25 = objc_msgSend_doors(v382, v23, v24);
        v386 = objc_msgSend_copy(v25, v26, v27);

        v28 = v380;
        if ((*(v390 + 16) & 1) == 0)
        {
          v31 = objc_msgSend_colorBuffer(v28, v29, v30);
          CVPixelBufferGetWidth(v31);
          CVPixelBufferGetHeight(v31);
          operator new();
        }

        v378 = v28;

        v414 = 0;
        v415 = 0;
        v413 = &v414;
        kdebug_trace();
        v34 = objc_msgSend_walls(v393, v32, v33);
        v37 = objc_msgSend_count(v34, v35, v36) == 0;

        if (!v37)
        {
          v388 = v393;
          v40 = objc_msgSend_array(MEMORY[0x277CBEB18], v38, v39);
          v43 = objc_msgSend_windows(v388, v41, v42, v40);
          objc_msgSend_addObjectsFromArray_(v40, v44, v43);

          v47 = objc_msgSend_doors(v388, v45, v46);
          objc_msgSend_addObjectsFromArray_(v40, v48, v47);

          v51 = objc_msgSend_opendoors(v388, v49, v50);
          objc_msgSend_addObjectsFromArray_(v40, v52, v51);

          v55 = objc_msgSend_openings(v388, v53, v54);
          objc_msgSend_addObjectsFromArray_(v40, v56, v55);

          v410 = 0;
          v411 = 0;
          v412 = 0;
          buf = 0u;
          v424 = 0u;
          v425 = 0u;
          v426 = 0u;
          v57 = v40;
          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &buf, &v420, 16);
          obj = v57;
          v376 = v1;
          if (v61)
          {
            v62 = 0;
            v63 = *v424;
            do
            {
              for (i = 0; i != v61; ++i)
              {
                if (*v424 != v63)
                {
                  objc_enumerationMutation(obj);
                }

                objc_msgSend_quad(*(*(&buf + 1) + 8 * i), v59, v60);
                v73 = v62;
                v74 = v62 >> 6;
                if (((v62 >> 6) + 1) >> 58)
                {
                  v412 = 0;
                  v410 = 0;
                  sub_2621CBEB0();
                }

                if (v62 >> 6 != -1)
                {
                  if (!(((v62 >> 6) + 1) >> 58))
                  {
                    operator new();
                  }

                  v411 = v62;
                  v412 = 0;
                  v410 = 0;
                  sub_2621C6A34();
                }

                v75 = v74 << 6;
                *v75 = v65;
                *(v75 + 8) = v66;
                *(v75 + 16) = v67;
                *(v75 + 24) = v68;
                *(v75 + 40) = v70;
                *(v75 + 32) = v69;
                *(v75 + 48) = v71;
                *(v75 + 56) = v72;
                v62 = (v74 << 6) + 64;
                memcpy(0, 0, v73);
              }

              v411 = (v74 << 6) + 64;
              v412 = 0;
              v410 = 0;
              v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &buf, &v420, 16);
            }

            while (v61);
          }

          v76 = *(v390 + 1);
          v79 = objc_msgSend_walls(v388, v77, v78);
          sub_26225FA34(&v420, v76, 0, v378, v79, &v410, 0);
          sub_26225CF48(v414);
          v80 = v421;
          v413 = v420;
          v414 = v421;
          v415 = v422;
          if (v422)
          {
            v421[2] = &v414;
            v420 = &v421;
            v421 = 0;
            v422 = 0;
            v80 = 0;
          }

          else
          {
            v413 = &v414;
          }

          sub_26225CF48(v80);

          v83 = objc_msgSend_walls(v388, v81, v82);
          v86 = objc_msgSend_walls(*(v390 + 5), v84, v85);
          sub_2622EAA80(v83, &v413, v86);

          v89 = objc_msgSend_walls(v388, v87, v88);
          buf = 0u;
          v424 = 0u;
          v425 = 0u;
          v426 = 0u;
          v90 = v89;
          v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &buf, &v420, 16);
          if (v94)
          {
            v95 = *v424;
            do
            {
              for (j = 0; j != v94; ++j)
              {
                if (*v424 != v95)
                {
                  objc_enumerationMutation(v90);
                }

                v97 = *(*(&buf + 1) + 8 * j);
                if (objc_msgSend_polygonSize(v97, v92, v93) >= 3)
                {
                  v98 = objc_msgSend_polygonSize(v97, v92, v93);
                  sub_26229CBDC(&__p, v98);
                  objc_msgSend_quad(v97, v99, v100);
                  v404 = v101;
                  v104 = objc_msgSend_polygon(v97, v102, v103);
                  v107 = objc_msgSend_polygonSize(v97, v105, v106);
                  v108 = v404;
                  v108.i32[2] = *(v104 + 16 * v107 - 24);
                  v419[-2] = v108;
                  objc_msgSend_quad(v97, v109, v110);
                  v405 = v111;
                  v114 = objc_msgSend_polygon(v97, v112, v113);
                  v117 = objc_msgSend_polygonSize(v97, v115, v116);
                  v118 = v405;
                  v118.i32[2] = *(v114 + 16 * v117 - 8);
                  v419[-1] = v118;
                  v121 = objc_msgSend_polygon(v97, v119, v120);
                  v124 = objc_msgSend_polygonSize(v97, v122, v123);
                  v127 = objc_msgSend_polygon(v97, v125, v126);
                  v130 = v121 + 16 * v124;
                  v133 = v127 + 16 * objc_msgSend_polygonSize(v97, v128, v129);
                  v134 = v419;
                  v135 = vsubq_f32(*(v133 - 32), *(v130 - 16));
                  v136 = sqrtf(vaddv_f32(*&vmulq_f32(v135, v135)));
                  if (v136 >= 0.00000001)
                  {
                    v137 = v136;
                  }

                  else
                  {
                    v137 = 0.00000001;
                  }

                  if (v419 - __p != 32)
                  {
                    v138 = 0;
                    v139 = 0;
                    v398 = vsubq_f32(v419[-2], v419[-1]);
                    do
                    {
                      v140 = objc_msgSend_polygon(v97, v131, v132);
                      v400 = *(v130 - 16);
                      v402 = *(v140 + v138);
                      v406 = v134[-1];
                      v143 = objc_msgSend_polygon(v97, v141, v142);
                      v144 = vsubq_f32(v402, v400);
                      v145 = vmlaq_n_f32(v406, v398, sqrtf(vaddv_f32(*&vmulq_f32(v144, v144))) / v137);
                      v145.i32[2] = *(v143 + v138 + 8);
                      *(__p + v139++) = v145;
                      v138 += 16;
                    }

                    while (v139 < ((v419 - __p) >> 4) - 2);
                  }

                  v146 = objc_msgSend_polygonSize(v97, v131, v132);
                  if (v146)
                  {
                    if ((v146 & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    sub_2621CBEB0();
                  }

                  MEMORY[0xFFFFFFFFFFFFFFFF] = objc_msgSend_edgeStates(v97, v147, v148) >> 24;
                  MEMORY[0xFFFFFFFFFFFFFFFE] = objc_msgSend_edgeStates(v97, v149, v150) >> 16;
                  MEMORY[0xFFFFFFFFFFFFFFFD] = objc_msgSend_edgeStates(v97, v151, v152) >> 8;
                  for (k = 0; k != -3; ++k)
                  {
                    *k = k[objc_msgSend_polygonEdgeStates(v97, v153, v154)];
                  }

                  v156 = __p;
                  v157 = objc_msgSend_polygonEdgeConfidence(v97, v153, v154);
                  v160 = objc_msgSend_polygonSize(v97, v158, v159);
                  sub_2622C51B4(v97, v156, 0, v157, v160);
                  operator delete(0);
                  if (__p)
                  {
                    v419 = __p;
                    operator delete(__p);
                  }
                }
              }

              v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v92, &buf, &v420, 16);
            }

            while (v94);
          }

          v1 = v376;
          v163 = objc_msgSend_openings(v388, v161, v162);
          v166 = objc_msgSend_count(v163, v164, v165) == 0;

          if (!v166)
          {
            v169 = objc_msgSend_openings(v388, v167, v168);
            sub_262264F2C(3, &v413, v169);
            objc_claimAutoreleasedReturnValue();
            sub_2622AE920(v388, v169);
          }

          v170 = objc_msgSend_opendoors(v388, v167, v168);
          v173 = objc_msgSend_count(v170, v171, v172) == 0;

          if (!v173)
          {
            v176 = objc_msgSend_opendoors(v388, v174, v175);
            sub_262264F2C(4, &v413, v176);
            objc_claimAutoreleasedReturnValue();
            sub_26223FCBC(v388, v176);
          }
        }

        kdebug_trace();
        kdebug_trace();
        v177 = sub_2622EAF60(*(v390 + 3), v379);
        objc_storeStrong(v390 + 3, v379);
        v420 = 0;
        v421 = 0;
        v422 = 0;
        v180 = objc_msgSend_windows(v393, v178, v179);
        v183 = objc_msgSend_count(v180, v181, v182) == 0;

        if (!v183)
        {
          v186 = objc_msgSend_windows(v393, v184, v185);
          sub_262264F2C(1, &v413, v186);
          objc_claimAutoreleasedReturnValue();
          sub_2622AE910(v393, v186);

          v187 = *(v390 + 1);
          v190 = objc_msgSend_windows(v393, v188, v189);
          sub_26225FA34(&buf, v187, 1u, v378, v190, &v420, v177);

          v193 = objc_msgSend_windows(v393, v191, v192);
          v196 = objc_msgSend_windows(*(v390 + 5), v194, v195);
          sub_2622EAA80(v193, &buf, v196);

          v199 = objc_msgSend_windows(v393, v197, v198);
          sub_262264F2C(1, &v413, v199);
          objc_claimAutoreleasedReturnValue();
          sub_2622AE910(v393, v199);

          sub_26225CF48(*(&buf + 1));
        }

        kdebug_trace();
        kdebug_trace();
        v200 = sub_2622EAF60(*(v390 + 4), v386);
        objc_storeStrong(v390 + 4, v386);
        v203 = objc_msgSend_doors(v393, v201, v202);
        v206 = objc_msgSend_count(v203, v204, v205) == 0;

        if (!v206)
        {
          v209 = objc_msgSend_doors(v393, v207, v208);
          sub_262264F2C(2, &v413, v209);
          objc_claimAutoreleasedReturnValue();
          sub_26223FCDC(v393, v209);

          v210 = *(v390 + 1);
          v213 = objc_msgSend_doors(v393, v211, v212);
          sub_26225FA34(&buf, v210, 2u, v378, v213, &v420, v200);

          v216 = objc_msgSend_doors(v393, v214, v215);
          v219 = objc_msgSend_doors(*(v390 + 5), v217, v218);
          sub_2622EAA80(v216, &buf, v219);

          v222 = objc_msgSend_doors(v393, v220, v221);
          sub_262264F2C(2, &v413, v222);
          objc_claimAutoreleasedReturnValue();
          sub_26223FCDC(v393, v222);

          sub_26225CF48(*(&buf + 1));
        }

        kdebug_trace();
        sub_2622B21F8(v393);
        v223 = *(v390 + 5);
        v15 = v393;
        v224 = v223;
        v227 = objc_msgSend_walls(v15, v225, v226);
        v230 = objc_msgSend_walls(v224, v228, v229);
        sub_2622EB110(v227, v230);

        v233 = objc_msgSend_openings(v15, v231, v232);
        v236 = objc_msgSend_openings(v224, v234, v235);
        sub_2622EB110(v233, v236);

        v239 = objc_msgSend_windows(v15, v237, v238);
        v242 = objc_msgSend_windows(v224, v240, v241);
        sub_2622EB374(v239, v242);

        v245 = objc_msgSend_doors(v15, v243, v244);
        v248 = objc_msgSend_doors(v224, v246, v247);
        sub_2622EB374(v245, v248);

        v251 = objc_msgSend_opendoors(v15, v249, v250);
        v254 = objc_msgSend_opendoors(v224, v252, v253);
        sub_2622EB374(v251, v254);

        *(*(v390 + 1) + 208) = 0;
        v257 = objc_msgSend_copy(v15, v255, v256);
        v258 = *(v390 + 5);
        *(v390 + 5) = v257;

        v259.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        if (qword_27FF0C0D0 != -1)
        {
          dispatch_once(&qword_27FF0C0D0, &unk_2874EE1E0);
        }

        v260 = qword_27FF0C0C8;
        if (os_log_type_enabled(v260, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = (v259.__d_.__rep_ - v375.__d_.__rep_) / 1000000;
          _os_log_debug_impl(&dword_2621C3000, v260, OS_LOG_TYPE_DEBUG, "Boundary refinement consume: %lld ms", &buf, 0xCu);
        }

        sub_26225CF48(v414);
        sub_2621CD534(&v416);
      }

      v381 = v15;
      v14 = v377;
    }
  }

  v261 = sub_2621F6A6C(*(WeakRetained + 2), *(*(*(v1 + 40) + 8) + 40), v381);
  objc_msgSend_updateObjects_(v381, v262, v261);

  sub_2621ECCF8(*(WeakRetained + 19), v381);
  v263 = *(WeakRetained + 8);
  v383 = v381;
  if (v263)
  {
    v425 = 0u;
    v426 = 0u;
    buf = 0u;
    v424 = 0u;
    v266 = objc_msgSend_walls(v383, v264, v265);
    v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(v266, v267, &buf, &v420, 16);
    if (v270)
    {
      v271 = *v424;
      v407 = 0u;
      __asm { FMOV            V0.4S, #0.25 }

      *v387 = _Q0;
      do
      {
        for (m = 0; m != v270; ++m)
        {
          if (*v424 != v271)
          {
            objc_enumerationMutation(v266);
          }

          v278 = *(*(&buf + 1) + 8 * m);
          objc_msgSend_quad(v278, v268, v269);
          v403 = v279;
          objc_msgSend_quad(v278, v280, v281);
          v401 = v282;
          objc_msgSend_quad(v278, v283, v284);
          v399 = v285;
          objc_msgSend_quad(v278, v286, v287);
          *obja = v288;
          objc_msgSend_quad(v278, v289, v290);
          v394 = v291;
          objc_msgSend_quad(v278, v292, v293);
          v391 = v294;
          objc_msgSend_quad(v278, v295, v296);
          v389 = v297;
          objc_msgSend_quad(v278, v298, v299);
          v302 = vsubq_f32(v394, v391);
          v304 = vsubq_f32(v389, v303);
          v395 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v304, v304), v304, 0xCuLL), vnegq_f32(v302)), v304, vextq_s8(vuzp1q_s32(v302, v302), v302, 0xCuLL));
          v305 = vmulq_f32(v395, v395);
          v305.f32[0] = sqrtf(v305.f32[1] + (v305.f32[2] + v305.f32[0]));
          if (v305.f32[0] < 0.001)
          {
            v305.f32[0] = 0.001;
          }

          v392 = *v305.f32;
          objc_msgSend_quad(v278, v300, v301);
          v313 = v312;
          v314 = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v403, v401), v399), *obja), *v387);
          v315 = vdivq_f32(vextq_s8(vuzp1q_s32(v395, v395), v395, 0xCuLL), vdupq_lane_s32(v392, 0));
          v316 = v407.i64[0];
          v317 = v407.i64[1] - v407.i64[0];
          v318 = 0xAAAAAAAAAAAAAAABLL * ((v407.i64[1] - v407.i64[0]) >> 5) + 1;
          if (v318 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_2621CBEB0();
          }

          if (0x5555555555555556 * (-v407.i64[0] >> 5) > v318)
          {
            v318 = 0x5555555555555556 * (-v407.i64[0] >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v407.i64[0] >> 5) >= 0x155555555555555)
          {
            v319 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v319 = v318;
          }

          if (v319)
          {
            if (v319 <= 0x2AAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_2621C6A34();
          }

          v320 = 32 * ((v407.i64[1] - v407.i64[0]) >> 5);
          *v320 = v314;
          *(v320 + 16) = v315;
          *(v320 + 40) = v307;
          *(v320 + 32) = v306;
          *(v320 + 48) = v313;
          *(v320 + 56) = DWORD2(v313);
          *(v320 + 64) = v308;
          *(v320 + 72) = v309;
          *(v320 + 88) = v311;
          *(v320 + 80) = v310;
          v321 = v320 + 96;
          memcpy((v320 + 96 * (v317 / -96)), v407.i64[0], v317);
          v408 = 32 * ((v407.i64[1] - v407.i64[0]) >> 5) + 96 * (v317 / -96);
          if (v316)
          {
            operator delete(v316);
          }

          v322.i64[0] = v408;
          v322.i64[1] = v321;
          v407 = v322;
        }

        v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(v266, v268, &buf, &v420, 16);
      }

      while (v270);
    }

    else
    {
      v407 = 0u;
    }

    std::mutex::lock((v263 + 936));
    v323 = *(v263 + 832);
    *(v263 + 832) = v407;
    *(v263 + 848) = 0;
    std::mutex::unlock((v263 + 936));
    if (v323)
    {
      operator delete(v323);
    }
  }

  v326 = *(WeakRetained + 8);
  v327 = *(WeakRetained + 2);
  if (v327)
  {
    v328 = sub_2621CD3A4(*(v327 + 72));
    if (v328)
    {
      v329 = v328[6];
    }

    else
    {
      v329 = 0;
    }

    v409.i64[0] = v329;

    if (!v326)
    {
      goto LABEL_111;
    }

LABEL_87:
    v330 = objc_msgSend_date(MEMORY[0x277CBEAA8], v324, v325);
    v331 = *(v326 + 888);
    if (!v331)
    {
      objc_storeStrong((v326 + 888), v330);
    }

    std::mutex::lock((v326 + 936));
    objc_msgSend_timeIntervalSinceDate_(v330, v332, *(v326 + 888));
    if (v335 >= -1.0)
    {
      if (objc_msgSend_type(*(v326 + 864), v333, v334))
      {
        v342 = [RSTextCoachingSignal alloc];
        if (v409.f32[1] >= 15.0)
        {
          v343 = 0;
          v344 = 1.0;
        }

        else
        {
          v343 = -1;
          v344 = (15.0 - v409.f32[1]) / 15.0;
        }

        if (v342)
        {
          v342 = sub_2622E743C(v342, v343, v344);
        }

        v345 = *(v326 + 864);
        *(v326 + 864) = v342;
      }

      if (!objc_msgSend_type(*(v326 + 856), v340, v341))
      {
        goto LABEL_110;
      }

      if (v409.f32[0] >= 15.0)
      {
        v347 = [RSTextCoachingSignal alloc];
        if (v347)
        {
          v347 = sub_2622E743C(v347, 0, 1.0);
        }
      }

      else
      {
        v347 = [RSTextCoachingSignal alloc];
        if (v347)
        {
          v347 = sub_2622E743C(v347, -1, (15.0 - v409.f32[0]) / 15.0);
        }
      }

      v339 = *(v326 + 856);
      *(v326 + 856) = v347;
    }

    else
    {
      v336 = [RSTextCoachingSignal alloc];
      if (v336)
      {
        v336 = sub_2622E743C(v336, -1, -1.0);
      }

      v337 = *(v326 + 856);
      *(v326 + 856) = v336;

      v338 = [RSTextCoachingSignal alloc];
      if (v338)
      {
        v338 = sub_2622E743C(v338, -1, -1.0);
      }

      v339 = *(v326 + 864);
      *(v326 + 864) = v338;
    }

LABEL_110:
    sub_262346BD0(v326, (v331 == 0), v346);
    std::mutex::unlock((v326 + 936));

    goto LABEL_111;
  }

  v409.i64[0] = 0;
  if (v326)
  {
    goto LABEL_87;
  }

LABEL_111:
  v384 = v383;

  if (objc_msgSend_isOnboardingEnabled(*(WeakRetained + 1), v348, v349) && objc_msgSend_isTextCoachingEnabled(*(WeakRetained + 1), v350, v351) && ((v352 = *(WeakRetained + 8)) == 0 || *(v352 + 1000) != 3))
  {
    v357 = *(WeakRetained + 2);
    if (v357)
    {
      sub_2622E7360(*(v357 + 80));
    }

    v358 = *(WeakRetained + 23);
    if (v358)
    {
      v359 = objc_alloc_init(RSFloorPlan);
      v360 = *(v358 + 40);
      *(v358 + 40) = v359;
    }
  }

  else
  {
    v353 = objc_msgSend_delegate(WeakRetained, v350, v351);
    v354 = objc_opt_respondsToSelector();

    if (v354)
    {
      v355 = objc_msgSend_delegate(WeakRetained, v350, v351);
      objc_msgSend_session_didUpdateFloorPlan_(v355, v356, WeakRetained, v384);
    }
  }

  if (objc_msgSend_isMarkerCoachingEnabled(*(WeakRetained + 1), v350, v351))
  {
    v363 = objc_msgSend_delegate(WeakRetained, v361, v362);
    v364 = objc_opt_respondsToSelector();

    if (v364)
    {
      v368 = objc_msgSend_delegate(WeakRetained, v365, v366);
      v369 = *(WeakRetained + 2);
      if (v369)
      {
        v370 = *(v369 + 152);
        objc_msgSend_session_didUpdateMarkerCoaching_(v368, v371, WeakRetained, v370);
      }

      else
      {
        v370 = 0;
        objc_msgSend_session_didUpdateMarkerCoaching_(v368, v367, WeakRetained, 0);
      }
    }
  }

  v372 = *(WeakRetained + 12);
  *(WeakRetained + 12) = v384;
  v373 = v384;

  dispatch_semaphore_signal(*(WeakRetained + 16));
LABEL_127:
  v374 = *MEMORY[0x277D85DE8];
}

void sub_2622A9CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, id a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, unsigned int a43, uint64_t a44, void *__p, uint64_t a46)
{
  if (v47)
  {
    operator delete(v47);
  }

  sub_26225CF48(a41);

  sub_2621CD534(&a43);
  _Unwind_Resume(a1);
}

void sub_2622AB028(_Unwind_Exception *a1)
{
  v4 = v2;

  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2622AB06C(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && (WeakRetained[15] & 1) == 0)
  {
    v5 = MEMORY[0x266727EF0]();
    v6 = v3[19];
    if (v6 && *(v6 + 177) == 1 && *(v6 + 104))
    {
      v7 = *(v6 + 64);
      v8 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v4, v5, @"avail_mem");
      v28[1] = @"time_stamp";
      *&buf = v8;
      v9 = MEMORY[0x277CCABB0];
      objc_msgSend_timestamp(*(v6 + 104), v10, v11);
      v14 = objc_msgSend_numberWithDouble_(v9, v12, v13);
      *(&buf + 1) = v14;
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &buf, v28, 2);
      objc_msgSend_addObject_(v7, v17, v16);
    }

    if (*(a1 + 40) > v5)
    {
      if (qword_27FF0C0B0 != -1)
      {
        dispatch_once(&qword_27FF0C0B0, &unk_2874EE1A0);
      }

      v18 = qword_27FF0C0A8;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v5;
        _os_log_error_impl(&dword_2621C3000, v18, OS_LOG_TYPE_ERROR, "RSError: limited available memory: %{bytes}zu", &buf, 0xCu);
      }

      v21 = objc_msgSend_delegate(v3, v19, v20);
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        v25 = objc_msgSend_delegate(v3, v23, v24);
        objc_msgSend_session_didFailWithError_(v25, v26, v3, -1);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_2622AB5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622AB5CC(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    sub_2622AB9E8(&v36, a3, a3 + 8 * a2, a2);
    sub_2622ABA5C(__p, a1 + 1, &v36);
    v4 = a1[1];
    if (v4)
    {
      a1[2] = v4;
      operator delete(v4);
      a1[1] = 0;
      a1[2] = 0;
      a1[3] = 0;
    }

    *(a1 + 1) = *__p;
    a1[3] = v40;
    sub_2622ABA5C(__p, a1 + 4, &v36);
    v5 = a1[4];
    if (v5)
    {
      a1[5] = v5;
      operator delete(v5);
      a1[4] = 0;
      a1[5] = 0;
      a1[6] = 0;
    }

    *(a1 + 2) = *__p;
    a1[6] = v40;
    v35 = 0;
    v34 = 0uLL;
    v7 = v36;
    v6 = v37;
    sub_2622ABC20(&v34, (v37 - v36) >> 3);
    __p[0] = 0;
    __p[1] = 0;
    v40 = 0;
    sub_2622ABCC4(__p, a1[7], a1[8], (a1[8] - a1[7]) >> 2);
    v9 = __p[0];
    if (v7 != v6)
    {
      v10 = *(&v34 + 1);
      v11 = v35;
      v12 = v34;
      do
      {
        v8.i32[0] = v9[*v7];
        v13 = vmovl_u8(v8).u64[0];
        if (v10 >= v11)
        {
          v14 = v10 - v12;
          v15 = (v10 - v12) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            v35 = v11;
            *&v34 = v12;
            sub_2621CBEB0();
          }

          if ((v11 - v12) >> 1 > v16)
          {
            v16 = (v11 - v12) >> 1;
          }

          if (v11 - v12 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            sub_2621C7F54(v17);
          }

          v18 = (4 * v15);
          v11 = 0;
          *v18 = vuzp1_s8(v13, v13).u32[0];
          v10 = (v18 + 1);
          memcpy(0, v12, v14);
          if (v12)
          {
            operator delete(v12);
          }

          v12 = 0;
        }

        else
        {
          v8 = vuzp1_s8(v13, v13);
          *v10 = v8.i32[0];
          v10 += 4;
        }

        ++v7;
      }

      while (v7 != v6);
      *(&v34 + 1) = v10;
      v35 = v11;
      *&v34 = v12;
      v9 = __p[0];
    }

    if (v9)
    {
      operator delete(v9);
    }

    v19 = a1[7];
    if (v19)
    {
      a1[8] = v19;
      operator delete(v19);
      a1[7] = 0;
      a1[8] = 0;
      a1[9] = 0;
    }

    *(a1 + 7) = v34;
    v20 = v36;
    a1[9] = v35;
    v35 = 0;
    v34 = 0uLL;
    v21 = v37;
    sub_26220F5A0(&v34, v37 - v20);
    __p[0] = 0;
    __p[1] = 0;
    v40 = 0;
    sub_2622ABD40(__p, a1[10], a1[11], (a1[11] - a1[10]) >> 3);
    v22 = __p[0];
    if (v20 != v21)
    {
      v23 = *(&v34 + 1);
      v24 = v35;
      v25 = v34;
      do
      {
        v26 = v22[*v20];
        if (v23 >= v24)
        {
          v27 = v23 - v25;
          v28 = (v23 - v25) >> 3;
          v29 = v28 + 1;
          if ((v28 + 1) >> 61)
          {
            v35 = v24;
            *&v34 = v25;
            sub_2621CBEB0();
          }

          if ((v24 - v25) >> 2 > v29)
          {
            v29 = (v24 - v25) >> 2;
          }

          if (v24 - v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            sub_2621CBEC8(v30);
          }

          v31 = (8 * v28);
          v24 = 0;
          *v31 = v26;
          v23 = (v31 + 1);
          memcpy(0, v25, v27);
          if (v25)
          {
            operator delete(v25);
          }

          v25 = 0;
        }

        else
        {
          *v23 = v26;
          v23 += 8;
        }

        ++v20;
      }

      while (v20 != v21);
      *(&v34 + 1) = v23;
      v35 = v24;
      *&v34 = v25;
      v22 = __p[0];
    }

    if (v22)
    {
      operator delete(v22);
    }

    v32 = a1[10];
    if (v32)
    {
      a1[11] = v32;
      operator delete(v32);
      a1[10] = 0;
      a1[11] = 0;
      a1[12] = 0;
    }

    *(a1 + 5) = v34;
    a1[12] = v35;
    sub_2622ABA5C(__p, a1 + 13, &v36);
    v33 = a1[13];
    if (v33)
    {
      a1[14] = v33;
      operator delete(v33);
      a1[13] = 0;
      a1[14] = 0;
      a1[15] = 0;
    }

    *(a1 + 13) = *__p;
    a1[15] = v40;
    if (v36)
    {
      operator delete(v36);
    }
  }
}

void sub_2622AB978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622AB9E8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_2622ABA40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622ABA5C(void **a1, uint64_t *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2622ABDBC(a1, (a3[1] - *a3) >> 3);
  v6 = *a3;
  v7 = a3[1];
  memset(__p, 0, sizeof(__p));
  sub_2621DDA38(__p, *a2, a2[1], (a2[1] - *a2) >> 4);
  v8 = __p[0];
  if (v6 != v7)
  {
    v9 = a1[1];
    v10 = a1[2];
    do
    {
      if (v9 >= v10)
      {
        v11 = *a1;
        v12 = v9 - *a1;
        v13 = (v12 >> 4) + 1;
        if (v13 >> 60)
        {
          sub_2621CBEB0();
        }

        if ((v10 - v11) >> 3 > v13)
        {
          v13 = (v10 - v11) >> 3;
        }

        if (v10 - v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_2621CBF10(v14);
        }

        v15 = (16 * (v12 >> 4));
        v10 = 0;
        *v15 = v8[*v6];
        v9 = (v15 + 1);
        memcpy(0, v11, v12);
        *a1 = 0;
        a1[2] = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v9 = v8[*v6];
        v9 += 16;
      }

      a1[1] = v9;
      ++v6;
    }

    while (v6 != v7);
    v8 = __p[0];
  }

  if (v8)
  {

    operator delete(v8);
  }
}

void sub_2622ABBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2622ABC20(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_2621C7F54(a2);
    }

    sub_2621CBEB0();
  }

  return result;
}

uint64_t sub_2622ABCC4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621C8EEC(result, a4);
  }

  return result;
}

void sub_2622ABD24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622ABD40(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_2622ABDA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2622ABDBC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      sub_2621CBF10(a2);
    }

    sub_2621CBEB0();
  }

  return result;
}

void sub_2622AC378(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2622ACF80(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_262236A0C(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14++;
        *v15++ = v16;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

void *sub_2622AD0AC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2621C8EEC(result, a2);
  }

  return result;
}

void sub_2622AD108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2622AD124(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 1)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v8 <= a4)
      {
        v10 = a4;
      }

      else
      {
        v10 = v8;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2622AD2C4(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 1)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 2;
        *v15 = v16;
        v15 += 2;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

void *sub_2622AD24C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2621CC71C(result, a2);
  }

  return result;
}

void sub_2622AD2A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622AD2C4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2621CBEB0();
}

void sub_2622AD434(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

id RSKeyframeToDictionary(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3);
  v5 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_count(v1, v6, v7);
  v10 = objc_msgSend_numberWithInteger_(v5, v9, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v11, v10, @"count");

  objc_msgSend_cameraPose(v1, v12, v13);
  v134[0] = v14;
  v134[1] = v15;
  v134[2] = v16;
  v134[3] = v17;
  v19 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v18, v134, 64);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v20, v19, @"cameraPose");

  v23 = objc_msgSend_points(v1, v21, v22);
  v26 = objc_msgSend_points(v1, v24, v25);
  v29 = objc_msgSend_count(v1, v27, v28);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  sub_26225172C(&v131, v23, v26 + 16 * v29, (v26 + 16 * v29 - v23) >> 4);
  v30 = v131;
  v31 = v132;
  v32 = v132 - v131;
  sub_26220EDA4(&v129, ((v132 - v131) >> 3) + ((v132 - v131) >> 4));
  if (v31 != v30)
  {
    v34 = 0;
    v35 = v32 >> 4;
    if ((v32 >> 4) <= 1)
    {
      v35 = 1;
    }

    v36 = v30;
    do
    {
      v37 = v129 + v34;
      v38 = *v36;
      *(v37 + 2) = v36[2];
      *v37 = v38;
      v36 += 4;
      v34 += 12;
      --v35;
    }

    while (v35);
  }

  if (v130 == v129)
  {
    v39 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v39 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v33, v129, v130 - v129);
  }

  v41 = v39;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v40, v39, @"points");

  v44 = objc_msgSend_pointsToWorld(v1, v42, v43);
  v47 = objc_msgSend_pointsToWorld(v1, v45, v46);
  v50 = objc_msgSend_count(v1, v48, v49);
  v126 = 0;
  v127 = 0;
  v128 = 0;
  sub_2621DDA38(&v126, v44, v47 + 16 * v50, (v47 + 16 * v50 - v44) >> 4);
  v51 = v126;
  v52 = v127;
  v53 = v127 - v126;
  sub_26220EDA4(&v124, ((v127 - v126) >> 3) + ((v127 - v126) >> 4));
  if (v52 != v51)
  {
    v55 = 0;
    v56 = v53 >> 4;
    if ((v53 >> 4) <= 1)
    {
      v56 = 1;
    }

    v57 = v51;
    do
    {
      v58 = v124 + v55;
      v59 = *v57;
      *(v58 + 2) = v57[2];
      *v58 = v59;
      v57 += 4;
      v55 += 12;
      --v56;
    }

    while (v56);
  }

  if (v125 == v124)
  {
    v60 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v60 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v54, v124, v125 - v124);
  }

  v62 = v60;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v61, v60, @"pointsToWorld");

  v65 = objc_msgSend_semanticLabels(v1, v63, v64);
  v69 = objc_msgSend_count(v1, v66, v67);
  if (v65 && v69)
  {
    v70 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v68, v65, 4 * v69);
  }

  else
  {
    v70 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v72 = v70;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v71, v70, @"semanticLabels");

  v75 = objc_msgSend_semanticVotes(v1, v73, v74);
  v79 = objc_msgSend_count(v1, v76, v77);
  if (v75 && v79)
  {
    v80 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v78, v75, 8 * v79);
  }

  else
  {
    v80 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v82 = v80;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v81, v80, @"semanticVotes");

  v85 = objc_msgSend_identifier(v1, v83, v84);
  v88 = objc_msgSend_UUIDString(v85, v86, v87);

  objc_msgSend_setObject_forKeyedSubscript_(v4, v89, v88, @"identifier");
  v92 = objc_msgSend_colors(v1, v90, v91);
  v95 = objc_msgSend_colors(v1, v93, v94);
  v98 = objc_msgSend_count(v1, v96, v97);
  v121 = 0;
  v122 = 0;
  v123 = 0;
  sub_2621DDA38(&v121, v92, v95 + 16 * v98, (v95 + 16 * v98 - v92) >> 4);
  v99 = v121;
  v100 = v122;
  v101 = v122 - v121;
  sub_26220EDA4(&__p, ((v122 - v121) >> 3) + ((v122 - v121) >> 4));
  if (v100 != v99)
  {
    v103 = 0;
    v104 = v101 >> 4;
    if ((v101 >> 4) <= 1)
    {
      v104 = 1;
    }

    v105 = v99;
    do
    {
      v106 = __p + v103;
      v107 = *v105;
      *(v106 + 2) = v105[2];
      *v106 = v107;
      v105 += 4;
      v103 += 12;
      --v104;
    }

    while (v104);
  }

  if (v120 == __p)
  {
    v108 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v108 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v102, __p, v120 - __p);
  }

  v110 = v108;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v109, v108, @"colors");

  v111 = MEMORY[0x277CCABB0];
  objc_msgSend_timestamp(v1, v112, v113);
  v116 = objc_msgSend_numberWithDouble_(v111, v114, v115);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v117, v116, @"timestamp");

  if (__p)
  {
    v120 = __p;
    operator delete(__p);
  }

  if (v99)
  {
    operator delete(v99);
  }

  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  if (v51)
  {
    operator delete(v51);
  }

  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v30)
  {
    operator delete(v30);
  }

  return v4;
}

void sub_2622AD940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  v29 = v27;

  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (v25)
  {
    operator delete(v25);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

id RSKeyframeFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [RSKeyframeExtended alloc];
  v4 = objc_msgSend_initWithDictionary_(v2, v3, v1);

  return v4;
}

id RSKeyframeSequenceToDictionary(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CBEB38];
  v5 = objc_msgSend_count(v1, v3, v4);
  v7 = objc_msgSend_dictionaryWithCapacity_(v2, v6, v5);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = objc_msgSend_allKeys(v1, v8, v9, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v25, v29, 16);
  if (v13)
  {
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = objc_msgSend_objectForKeyedSubscript_(v1, v12, v16);
        v18 = RSKeyframeToDictionary(v17);
        v21 = objc_msgSend_UUIDString(v16, v19, v20);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v22, v18, v21);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v25, v29, 16);
    }

    while (v13);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

id RSKeyframeSequenceFromDictionary(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CBEB38];
  v5 = objc_msgSend_count(v1, v3, v4);
  v30 = objc_msgSend_dictionaryWithCapacity_(v2, v6, v5);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = objc_msgSend_allKeys(v1, v7, v8);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v32, v36, 16);
  if (v10)
  {
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277CCAD78]);
        v16 = objc_msgSend_initWithUUIDString_(v14, v15, v13);
        v17 = [RSKeyframeExtended alloc];
        v19 = objc_msgSend_objectForKeyedSubscript_(v1, v18, v13);
        v21 = objc_msgSend_initWithDictionary_(v17, v20, v19);

        if (v16)
        {
          v23 = v21 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v30, v22, v21, v16);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v32, v36, 16);
    }

    while (v10);
  }

  v27 = objc_msgSend_copy(v30, v25, v26);
  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

id RSKeyframeSequenceFromDictionaryWithId(void *a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = MEMORY[0x277CBEB38];
  v34 = v3;
  v7 = objc_msgSend_count(v3, v5, v6);
  v32 = objc_msgSend_dictionaryWithCapacity_(v4, v8, v7);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = objc_msgSend_allKeys(v34, v9, v10);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v35, v39, 16);
  if (v12)
  {
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = objc_alloc(MEMORY[0x277CCAD78]);
        v18 = objc_msgSend_initWithUUIDString_(v16, v17, v15);
        v19 = [RSKeyframeExtended alloc];
        v21 = objc_msgSend_objectForKeyedSubscript_(v34, v20, v15);
        v23 = objc_msgSend_initWithDictionary_withGroupId_(v19, v22, v21, a2);

        if (v18)
        {
          v25 = v23 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v32, v24, v23, v18);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v35, v39, 16);
    }

    while (v12);
  }

  v29 = objc_msgSend_copy(v32, v27, v28);
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void sub_2622AE900(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_2622AE910(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_2622AE920(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_2622AE930(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_2622AE940(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

void sub_2622AE950(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_2622AE960(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_2622AE970(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_2622AEA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2622AEAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2622AEE64(uint64_t a1, const char *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = objc_msgSend_walls(a1, a2, a3);
    v7 = objc_msgSend_count(v4, v5, v6);

    if (!v7)
    {
      *(a1 + 12) = 0xBFC000003F99999ALL;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = objc_msgSend_walls(a1, v8, v9);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v28, v32, 16);
    if (v14)
    {
      v15 = *v29;
      v16 = -3.4028e38;
      v17 = 3.4028e38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          objc_msgSend_quad(v19, v12, v13);
          v27 = v20;
          objc_msgSend_quad(v19, v21, v22);
          v24 = v27;
          if (v27 >= v23)
          {
            v25 = v27;
          }

          else
          {
            v25 = v23;
          }

          if (v27 >= v23)
          {
            v24 = v23;
          }

          if (v25 > v16)
          {
            v16 = v25;
          }

          if (v24 < v17)
          {
            v17 = v24;
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v28, v32, 16);
      }

      while (v14);
    }

    else
    {
      v16 = -3.4028e38;
      v17 = 3.4028e38;
    }

    *(a1 + 12) = v16;
    *(a1 + 16) = v17;
  }

  v26 = *MEMORY[0x277D85DE8];
}

id sub_2622AFA60(void *a1, char a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = v3;
  if (v3 && objc_msgSend_count(v3, v4, v5))
  {
    v9 = MEMORY[0x277CBEB18];
    v10 = objc_msgSend_count(v6, v7, v8);
    v12 = objc_msgSend_arrayWithCapacity_(v9, v11, v10);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v6;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v28, v32, 16);
    if (v17)
    {
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          if (v20)
          {
            v20[104] = a2;
          }

          v21 = objc_msgSend_dictionaryRepresentation(v20, v15, v16, v28);
          objc_msgSend_addObject_(v12, v22, v21);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v28, v32, 16);
      }

      while (v17);
    }

    v25 = objc_msgSend_copy(v12, v23, v24);
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

id sub_2622AFC34(void *a1, char a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = v3;
  if (v3 && objc_msgSend_count(v3, v4, v5))
  {
    v9 = MEMORY[0x277CBEB18];
    v10 = objc_msgSend_count(v6, v7, v8);
    v12 = objc_msgSend_arrayWithCapacity_(v9, v11, v10);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v6;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v28, v32, 16);
    if (v17)
    {
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          if (v20)
          {
            v20[104] = a2;
          }

          v21 = objc_msgSend_dictionaryRepresentation(v20, v15, v16, v28);
          objc_msgSend_addObject_(v12, v22, v21);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v28, v32, 16);
      }

      while (v17);
    }

    v25 = objc_msgSend_copy(v12, v23, v24);
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void *sub_2622AFE14(void *a1, void *a2, uint64_t a3)
{
  v125 = *MEMORY[0x277D85DE8];
  v117 = a2;
  if (a1)
  {
    v119.receiver = a1;
    v119.super_class = RSFloorPlan;
    v118 = objc_msgSendSuper2(&v119, sel_init);
    v6 = objc_msgSend_objectForKeyedSubscript_(v117, v5, @"walls");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_2622B086C(v7, 0, a3);
    v9 = v118[3];
    v118[3] = v8;

    v11 = objc_msgSend_objectForKeyedSubscript_(v117, v10, @"doors");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_2622B086C(v12, 2, a3);
    v14 = v118[4];
    v118[4] = v13;

    v16 = objc_msgSend_objectForKeyedSubscript_(v117, v15, @"windows");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_2622B086C(v17, 1, a3);
    v19 = v118[5];
    v118[5] = v18;

    v21 = objc_msgSend_objectForKeyedSubscript_(v117, v20, @"openings");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_2622B086C(v22, 3, a3);
    v24 = v118[6];
    v118[6] = v23;

    v26 = objc_msgSend_objectForKeyedSubscript_(v117, v25, @"open_doors");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = sub_2622B086C(v27, 4, a3);
    v29 = v118[7];
    v118[7] = v28;

    v31 = objc_msgSend_objectForKeyedSubscript_(v117, v30, @"objects");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v116 = v33;
    if (v33 && (v36 = v33, objc_msgSend_count(v33, v34, v35)))
    {
      v39 = MEMORY[0x277CBEB18];
      v40 = objc_msgSend_count(v36, v37, v38);
      v42 = objc_msgSend_arrayWithCapacity_(v39, v41, v40);
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v43 = v36;
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v120, v124, 16);
      if (v45)
      {
        v46 = *v121;
        do
        {
          v47 = 0;
          do
          {
            if (*v121 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v120 + 1) + 8 * v47);
            v49 = [RS3DObject alloc];
            v51 = objc_msgSend_initWithDictionaryRepresentation_(v49, v50, v48);

            sub_26223FAB0(v51, a3, @"FloorPlan");
            if (v51)
            {
              objc_msgSend_addObject_(v42, v52, v51);
            }

            ++v47;
          }

          while (v45 != v47);
          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v53, &v120, v124, 16);
        }

        while (v45);
      }

      v56 = objc_msgSend_copy(v42, v54, v55);
    }

    else
    {
      v56 = MEMORY[0x277CBEBF8];
    }

    v57 = v118[8];
    v118[8] = v56;

    v59 = objc_msgSend_objectForKeyedSubscript_(v117, v58, @"curved_walls");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    v61 = sub_2622B0A70(v60, 0, a3);
    v62 = v118[9];
    v118[9] = v61;

    v64 = objc_msgSend_objectForKeyedSubscript_(v117, v63, @"room_types");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v66 = v65;
    v69 = v66;
    if (v66 && objc_msgSend_count(v66, v67, v68))
    {
      v72 = MEMORY[0x277CBEB18];
      v73 = objc_msgSend_count(v69, v70, v71);
      v75 = objc_msgSend_arrayWithCapacity_(v72, v74, v73);
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v76 = v69;
      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v120, v124, 16);
      if (v78)
      {
        v79 = *v121;
        do
        {
          v80 = 0;
          do
          {
            if (*v121 != v79)
            {
              objc_enumerationMutation(v76);
            }

            v81 = *(*(&v120 + 1) + 8 * v80);
            v82 = [RSRoomType alloc];
            v85 = objc_msgSend_initWithDictionaryRepresentation_withGroupId_(v82, v83, v81, 0);
            if (v85)
            {
              objc_msgSend_addObject_(v75, v84, v85);
            }

            ++v80;
          }

          while (v78 != v80);
          v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v86, &v120, v124, 16);
        }

        while (v78);
      }

      v89 = objc_msgSend_copy(v75, v87, v88);
    }

    else
    {
      v89 = MEMORY[0x277CBEBF8];
    }

    v90 = v118[10];
    v118[10] = v89;

    v92 = objc_msgSend_objectForKeyedSubscript_(v117, v91, @"floors");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = v92;
    }

    else
    {
      v93 = 0;
    }

    v94 = sub_2622B086C(v93, 5, a3);
    v95 = v118[11];
    v118[11] = v94;

    v97 = objc_msgSend_objectForKeyedSubscript_(v117, v96, @"curved_windows");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    v99 = sub_2622B0A70(v98, 1, a3);
    v100 = v118[12];
    v118[12] = v99;

    v102 = objc_msgSend_objectForKeyedSubscript_(v117, v101, @"curved_doors");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v103 = v102;
    }

    else
    {
      v103 = 0;
    }

    v104 = sub_2622B0A70(v103, 2, a3);
    v105 = v118[13];
    v118[13] = v104;

    sub_2622AEE64(v118, v106, v107);
    *(v118 + 2) = a3;
    v109 = objc_msgSend_objectForKeyedSubscript_(v117, v108, @"story");
    v112 = objc_msgSend_integerValue(v109, v110, v111);
    sub_2622B0C74(v118, v112, v113);
  }

  else
  {
    v118 = 0;
  }

  v114 = *MEMORY[0x277D85DE8];
  return v118;
}

id sub_2622B086C(void *a1, char a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v30 = v5;
  if (v5 && objc_msgSend_count(v5, v6, v7))
  {
    v10 = MEMORY[0x277CBEB18];
    v11 = objc_msgSend_count(v30, v8, v9);
    v13 = objc_msgSend_arrayWithCapacity_(v10, v12, v11);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v30;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v31, v35, 16);
    if (v16)
    {
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = [RS3DSurface alloc];
          v22 = objc_msgSend_initWithDictionaryRepresentation_WithGroupId_(v20, v21, v19, a3);

          if (v22)
          {
            v22[104] = a2;
            objc_msgSend_addObject_(v13, v23, v22);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v24, &v31, v35, 16);
      }

      while (v16);
    }

    v27 = objc_msgSend_copy(v13, v25, v26);
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

id sub_2622B0A70(void *a1, char a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v30 = v5;
  if (v5 && objc_msgSend_count(v5, v6, v7))
  {
    v10 = MEMORY[0x277CBEB18];
    v11 = objc_msgSend_count(v30, v8, v9);
    v13 = objc_msgSend_arrayWithCapacity_(v10, v12, v11);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v30;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v31, v35, 16);
    if (v16)
    {
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = [RS3DCurvedSurface alloc];
          v22 = objc_msgSend_initWithDictionaryRepresentation_WithGroupId_(v20, v21, v19, a3);

          if (v22)
          {
            v22[104] = a2;
            objc_msgSend_addObject_(v13, v23, v22);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v24, &v31, v35, 16);
      }

      while (v16);
    }

    v27 = objc_msgSend_copy(v13, v25, v26);
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void sub_2622B0C74(void *a1, const char *a2, uint64_t a3)
{
  v158 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    a1[15] = a2;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v5 = objc_msgSend_walls(a1, a2, a3);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v143, v157, 16);
    if (v8)
    {
      v9 = *v144;
      do
      {
        v10 = 0;
        do
        {
          if (*v144 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v143 + 1) + 8 * v10);
          if (v11)
          {
            *(v11 + 184) = a2;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v143, v157, 16);
      }

      while (v8);
    }

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v14 = objc_msgSend_windows(a1, v12, v13);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v139, v156, 16);
    if (v17)
    {
      v18 = *v140;
      do
      {
        v19 = 0;
        do
        {
          if (*v140 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v139 + 1) + 8 * v19);
          if (v20)
          {
            *(v20 + 184) = a2;
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v139, v156, 16);
      }

      while (v17);
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v23 = objc_msgSend_doors(a1, v21, v22);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v135, v155, 16);
    if (v26)
    {
      v27 = *v136;
      do
      {
        v28 = 0;
        do
        {
          if (*v136 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v135 + 1) + 8 * v28);
          if (v29)
          {
            *(v29 + 184) = a2;
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v135, v155, 16);
      }

      while (v26);
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v32 = objc_msgSend_opendoors(a1, v30, v31);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v131, v154, 16);
    if (v35)
    {
      v36 = *v132;
      do
      {
        v37 = 0;
        do
        {
          if (*v132 != v36)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v131 + 1) + 8 * v37);
          if (v38)
          {
            *(v38 + 184) = a2;
          }

          ++v37;
        }

        while (v35 != v37);
        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v131, v154, 16);
      }

      while (v35);
    }

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v41 = objc_msgSend_openings(a1, v39, v40);
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v127, v153, 16);
    if (v44)
    {
      v45 = *v128;
      do
      {
        v46 = 0;
        do
        {
          if (*v128 != v45)
          {
            objc_enumerationMutation(v41);
          }

          v47 = *(*(&v127 + 1) + 8 * v46);
          if (v47)
          {
            *(v47 + 184) = a2;
          }

          ++v46;
        }

        while (v44 != v46);
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v127, v153, 16);
      }

      while (v44);
    }

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v50 = objc_msgSend_objects(a1, v48, v49);
    v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v123, v152, 16);
    if (v53)
    {
      v54 = *v124;
      do
      {
        v55 = 0;
        do
        {
          if (*v124 != v54)
          {
            objc_enumerationMutation(v50);
          }

          v56 = *(*(&v123 + 1) + 8 * v55);
          if (v56)
          {
            *(v56 + 112) = a2;
          }

          ++v55;
        }

        while (v53 != v55);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v52, &v123, v152, 16);
      }

      while (v53);
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v59 = objc_msgSend_floors(a1, v57, v58);
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v119, v151, 16);
    if (v62)
    {
      v63 = *v120;
      do
      {
        v64 = 0;
        do
        {
          if (*v120 != v63)
          {
            objc_enumerationMutation(v59);
          }

          v65 = *(*(&v119 + 1) + 8 * v64);
          if (v65)
          {
            *(v65 + 184) = a2;
          }

          ++v64;
        }

        while (v62 != v64);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v61, &v119, v151, 16);
      }

      while (v62);
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v68 = objc_msgSend_roomTypes(a1, v66, v67);
    v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v115, v150, 16);
    if (v71)
    {
      v72 = *v116;
      do
      {
        v73 = 0;
        do
        {
          if (*v116 != v72)
          {
            objc_enumerationMutation(v68);
          }

          v74 = *(*(&v115 + 1) + 8 * v73);
          if (v74)
          {
            *(v74 + 32) = a2;
          }

          ++v73;
        }

        while (v71 != v73);
        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v115, v150, 16);
      }

      while (v71);
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v77 = objc_msgSend_curvedWalls(a1, v75, v76);
    v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v111, v149, 16);
    if (v80)
    {
      v81 = *v112;
      do
      {
        v82 = 0;
        do
        {
          if (*v112 != v81)
          {
            objc_enumerationMutation(v77);
          }

          v83 = *(*(&v111 + 1) + 8 * v82);
          if (v83)
          {
            *(v83 + 184) = a2;
          }

          ++v82;
        }

        while (v80 != v82);
        v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v79, &v111, v149, 16);
      }

      while (v80);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v86 = objc_msgSend_curvedWindows(a1, v84, v85);
    v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v87, &v107, v148, 16);
    if (v89)
    {
      v90 = *v108;
      do
      {
        v91 = 0;
        do
        {
          if (*v108 != v90)
          {
            objc_enumerationMutation(v86);
          }

          v92 = *(*(&v107 + 1) + 8 * v91);
          if (v92)
          {
            *(v92 + 184) = a2;
          }

          ++v91;
        }

        while (v89 != v91);
        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v88, &v107, v148, 16);
      }

      while (v89);
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v95 = objc_msgSend_curvedDoors(a1, v93, v94, 0);
    v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v103, v147, 16);
    if (v98)
    {
      v99 = *v104;
      do
      {
        v100 = 0;
        do
        {
          if (*v104 != v99)
          {
            objc_enumerationMutation(v95);
          }

          v101 = *(*(&v103 + 1) + 8 * v100);
          if (v101)
          {
            *(v101 + 184) = a2;
          }

          ++v100;
        }

        while (v98 != v100);
        v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v97, &v103, v147, 16);
      }

      while (v98);
    }
  }

  v102 = *MEMORY[0x277D85DE8];
}

void sub_2622B1590(uint64_t a1, void *a2)
{
  v10 = a2;
  for (i = 0; objc_msgSend_count(v10, v3, v4) > i; ++i)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v10, v6, i);
    if (v7)
    {
      v9 = *(a1 + 12);
      v8 = *(a1 + 16);
      v7[70] = v9;
      v7[74] = v9;
      v7[78] = v8;
      v7[82] = v8;
    }
  }
}

unint64_t sub_2622B1630(unint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_2622B1590(result, *(result + 24));
    sub_2622B1590(v1, *(v1 + 72));
    v2 = *(v1 + 16);
    if ((v2 + 1.0) >= (*(v1 + 12) + -0.3))
    {
      v3 = v2 + 1.0;
    }

    else
    {
      v3 = *(v1 + 12) + -0.3;
    }

    v6 = *(v1 + 48);
    for (i = 0; objc_msgSend_count(v6, v4, v5) > i; ++i)
    {
      v9 = objc_msgSend_objectAtIndexedSubscript_(v6, v8, i);
      if (v9)
      {
        v9[70] = v3;
        v9[74] = v3;
        v9[78] = v2;
        v9[82] = v2;
      }
    }

    if (objc_msgSend_count(*(v1 + 40), v10, v11))
    {
      v14 = 0;
      do
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(*(v1 + 40), v12, v14);
        objc_msgSend_quad(v15, v16, v17);
        v56 = v18;
        v19 = *(v1 + 12);
        objc_msgSend_quad(v15, v20, v21);
        if (v15)
        {
          v23 = *(v1 + 16);
          if (v23 < v22)
          {
            v23 = v22;
          }

          v24 = v56;
          if (v56 >= v19)
          {
            v24 = v19;
          }

          v15[70] = v24;
          v15[74] = v24;
          v15[78] = v23;
          v15[82] = v23;
        }

        ++v14;
      }

      while (objc_msgSend_count(*(v1 + 40), v25, v26) > v14);
    }

    if (objc_msgSend_count(*(v1 + 32), v12, v13))
    {
      v29 = 0;
      do
      {
        v30 = objc_msgSend_objectAtIndexedSubscript_(*(v1 + 32), v27, v29);
        objc_msgSend_quad(v30, v31, v32);
        v57 = v33;
        v34 = *(v1 + 12);
        objc_msgSend_quad(v30, v35, v36);
        if (v30)
        {
          v38 = *(v1 + 16);
          if (v38 < v37)
          {
            v38 = v37;
          }

          v39 = v57;
          if (v57 >= v34)
          {
            v39 = v34;
          }

          v30[70] = v39;
          v30[74] = v39;
          v30[78] = v38;
          v30[82] = v38;
        }

        ++v29;
      }

      while (objc_msgSend_count(*(v1 + 32), v40, v41) > v29);
    }

    result = objc_msgSend_count(*(v1 + 56), v27, v28);
    if (result)
    {
      for (j = 0; j < result; ++j)
      {
        v44 = objc_msgSend_objectAtIndexedSubscript_(*(v1 + 56), v42, j);
        objc_msgSend_quad(v44, v45, v46);
        v58 = v47;
        v48 = *(v1 + 12);
        objc_msgSend_quad(v44, v49, v50);
        if (v44)
        {
          v52 = *(v1 + 16);
          if (v52 < v51)
          {
            v52 = v51;
          }

          v53 = v58;
          if (v58 >= v48)
          {
            v53 = v48;
          }

          v44[70] = v53;
          v44[74] = v53;
          v44[78] = v52;
          v44[82] = v52;
        }

        result = objc_msgSend_count(*(v1 + 56), v54, v55);
      }
    }
  }

  return result;
}

id sub_2622B18A8(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v33, 16);
  if (v9)
  {
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        objc_msgSend_quad(v12, v7, v8);
        v28 = v13;
        objc_msgSend_quad(v12, v14, v15);
        v27 = v16;
        objc_msgSend_quad(v12, v17, v18);
        v26 = v19;
        objc_msgSend_quad(v12, v20, v21);
        v22 = vsubq_f32(v28, v27);
        if ((sqrtf(vaddv_f32(*&vmulq_f32(v22, v22))) * fabsf(COERCE_FLOAT(vsubq_f32(v26, v23).i32[2]))) >= 0.00001)
        {
          objc_msgSend_addObject_(v4, v7, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v29, v33, 16);
    }

    while (v9);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_2622B1A88(void **a1)
{
  if (a1)
  {
    v2 = sub_2622B18A8(a1[3]);
    v3 = a1[3];
    a1[3] = v2;

    v4 = sub_2622B18A8(a1[5]);
    v5 = a1[5];
    a1[5] = v4;

    v6 = sub_2622B18A8(a1[4]);
    v7 = a1[4];
    a1[4] = v6;

    v8 = sub_2622B18A8(a1[6]);
    v9 = a1[6];
    a1[6] = v8;

    v10 = sub_2622B18A8(a1[7]);
    v11 = a1[7];
    a1[7] = v10;

    v12 = sub_2622B18A8(a1[9]);
    v13 = a1[9];
    a1[9] = v12;

    v14 = sub_2622B18A8(a1[12]);
    v15 = a1[12];
    a1[12] = v14;

    v16 = sub_2622B18A8(a1[13]);
    v17 = a1[13];
    a1[13] = v16;
  }
}

id sub_2622B1B7C(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v12)
  {
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = objc_msgSend_parentIdentifier(v15, v10, v11);
        if (v16)
        {
          v17 = objc_msgSend_parentIdentifier(v15, v10, v11);
          v19 = objc_msgSend_containsObject_(v4, v18, v17);

          if (v19)
          {
            objc_msgSend_addObject_(v7, v10, v15);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v22, v26, 16);
    }

    while (v12);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_2622B1D54(id *a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, a3);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v5 = a1[3];
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v40, v45, 16);
    if (v9)
    {
      v10 = *v41;
      do
      {
        v11 = 0;
        do
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = objc_msgSend_identifier(*(*(&v40 + 1) + 8 * v11), v7, v8);
          objc_msgSend_addObject_(v4, v13, v12);

          ++v11;
        }

        while (v9 != v11);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v40, v45, 16);
      }

      while (v9);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = a1[9];
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v36, v44, 16);
    if (v18)
    {
      v19 = *v37;
      do
      {
        v20 = 0;
        do
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = objc_msgSend_identifier(*(*(&v36 + 1) + 8 * v20), v16, v17, v36);
          objc_msgSend_addObject_(v4, v22, v21);

          ++v20;
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v36, v44, 16);
      }

      while (v18);
    }

    v23 = sub_2622B1B7C(a1[5], v4);
    v24 = a1[5];
    a1[5] = v23;

    v25 = sub_2622B1B7C(a1[4], v4);
    v26 = a1[4];
    a1[4] = v25;

    v27 = sub_2622B1B7C(a1[6], v4);
    v28 = a1[6];
    a1[6] = v27;

    v29 = sub_2622B1B7C(a1[7], v4);
    v30 = a1[7];
    a1[7] = v29;

    v31 = sub_2622B1B7C(a1[12], v4);
    v32 = a1[12];
    a1[12] = v31;

    v33 = sub_2622B1B7C(a1[13], v4);
    v34 = a1[13];
    a1[13] = v33;
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_2622B2024(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v1 = *(a1 + 24);
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v20, v24, 16);
    if (v5)
    {
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v1);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = objc_msgSend_polygonSize(v8, v3, v4);
          if (v9 >= 3)
          {
            v10 = 0;
            v11 = (v9 - 2);
            v12 = 3.4028e38;
            v13 = -3.4028e38;
            do
            {
              v19 = *(objc_msgSend_polygon(v8, v3, v4) + v10);
              v16 = objc_msgSend_polygon(v8, v14, v15);
              if (v13 < *(&v19 + 2))
              {
                v13 = *(&v19 + 2);
              }

              if (*(v16 + v10 + 8) < v12)
              {
                v12 = *(v16 + v10 + 8);
              }

              v10 += 16;
              --v11;
            }

            while (v11);
            if (vabds_f32(v13, v12) < 0.001 && v8 != 0)
            {
              v8[2] = v8[1];
              v8[11] = v8[10];
              v8[5] = v8[4];
              v8[8] = v8[7];
            }
          }
        }

        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v3, &v20, v24, 16);
      }

      while (v5);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2622B21F8(void **a1)
{
  if (a1)
  {
    v2 = sub_2622B22D0(a1[6], a1[3]);
    v3 = a1[6];
    a1[6] = v2;

    v4 = sub_2622B22D0(a1[5], a1[3]);
    v5 = a1[5];
    a1[5] = v4;

    v6 = sub_2622B22D0(a1[4], a1[3]);
    v7 = a1[4];
    a1[4] = v6;

    v8 = sub_2622B22D0(a1[7], a1[3]);
    v9 = a1[7];
    a1[7] = v8;

    v10 = sub_2622B22D0(a1[12], a1[9]);
    v11 = a1[12];
    a1[12] = v10;

    v12 = sub_2622B22D0(a1[13], a1[9]);
    v13 = a1[13];
    a1[13] = v12;
  }
}

id sub_2622B22D0(void *a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v49 = a2;
  v46 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v3);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v58, v63, 16);
  if (v7)
  {
    v48 = *v59;
    do
    {
      v50 = v7;
      for (i = 0; i != v50; ++i)
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v58 + 1) + 8 * i);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v10 = v49;
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v54, v62, 16);
        if (v14)
        {
          v15 = *v55;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v55 != v15)
              {
                objc_enumerationMutation(v10);
              }

              v17 = *(*(&v54 + 1) + 8 * j);
              v18 = objc_msgSend_parentIdentifier(v9, v12, v13);
              v21 = objc_msgSend_identifier(v17, v19, v20);
              isEqual = objc_msgSend_isEqual_(v18, v22, v21);

              if (isEqual)
              {
                objc_msgSend_quad(v17, v12, v13);
                v52 = v24;
                objc_msgSend_quad(v9, v25, v26);
                if (v29 >= (v52 + -0.03))
                {
                  v30 = v52 + -0.03;
                }

                else
                {
                  v30 = v29;
                }

                objc_msgSend_quad(v17, v27, v28);
                v53 = v31;
                objc_msgSend_quad(v9, v32, v33);
                if (v9)
                {
                  v37 = v53;
                  v9[70] = v30;
                  v9[74] = v30;
                  if (v53 < v36)
                  {
                    v37 = v36;
                  }

                  v9[78] = v37;
                  v9[82] = v37;
                }

                objc_msgSend_quad(v9, v34, v35);
                v51 = v38;
                objc_msgSend_quad(v9, v39, v40);
                if (vmovn_s32(vcgtq_f32(v51, v42)).i32[1])
                {
                  objc_msgSend_addObject_(v46, v41, v9);
                }

                goto LABEL_24;
              }
            }

            v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v54, v62, 16);
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_24:
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v58, v63, 16);
    }

    while (v7);
  }

  v44 = *MEMORY[0x277D85DE8];

  return v46;
}

id sub_2622B261C(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v4;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v25, 16);
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = objc_msgSend_parentIdentifier(v15, v10, v11, v21);
        isEqual = objc_msgSend_isEqual_(v16, v17, v3);

        if (isEqual)
        {
          objc_msgSend_addObject_(v7, v10, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v21, v25, 16);
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

id sub_2622B27C4(void *a1, void *a2, void *a3)
{
  v345 = *MEMORY[0x277D85DE8];
  v299 = a1;
  v300 = a2;
  v304 = a3;
  v7 = objc_msgSend_count(v304, v5, v6);
  v311 = 0;
  v312 = 0;
  v313 = 0;
  v328.i64[0] = &v311;
  v328.i8[8] = 0;
  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_2621CBEB0();
  }

  for (i = 0; objc_msgSend_count(v304, v8, v9) > i; ++i)
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(v304, v11, i);
    v13 = v311[i];
    v311[i] = v12;
  }

  v14 = @"lshaped";
  if (v311 == v312)
  {
    v67 = 0;
    v68 = 0;
    v308 = 0;
    v309 = 0;
    v310 = 0;
  }

  else
  {
    sub_26220EDA4(__p, v312 - v311);
    v15 = v311;
    v16 = v312;
    v17 = __p[0];
    if (v311 != v312)
    {
      do
      {
        v18 = *v15;
        v22 = 0.0;
        if (objc_msgSend_hasBoxesDict_(v18, v19, @"lshaped"))
        {
          v23 = objc_msgSend_boxesDict(v18, v20, v21);
          v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"lshaped");
          sub_262211250(&v328, v25);
          sub_26220F71C(&v328);
        }

        v28 = objc_msgSend_parts(v18, v20, v21);
        if (v28)
        {
          v29 = objc_msgSend_parts(v18, v26, v27);
          v32 = objc_msgSend_count(v29, v30, v31) == 0;

          if (!v32)
          {
            v22 = 0.0 + 0.0;
          }
        }

        *v17++ = v22;
        ++v15;
      }

      while (v15 != v16);
      v17 = __p[0];
    }

    v308 = 0;
    v309 = 0;
    v310 = 0;
    sub_2622101A8(&v318, (__p[1] - v17) >> 2);
    v33 = v318;
    v34 = v319;
    if (v318 != v319)
    {
      v35 = 0;
      v36 = (v319 - v318 - 4) >> 2;
      v37 = vdupq_n_s64(v36);
      v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v39 = v318 + 8;
      do
      {
        v40 = vdupq_n_s64(v35);
        v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_2623A7620)));
        if (vuzp1_s16(v41, *v37.i8).u8[0])
        {
          *(v39 - 2) = v35;
        }

        if (vuzp1_s16(v41, *&v37).i8[2])
        {
          *(v39 - 1) = v35 + 1;
        }

        if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_2623A7630)))).i32[1])
        {
          *v39 = v35 + 2;
          v39[1] = v35 + 3;
        }

        v35 += 4;
        v39 += 4;
      }

      while (v38 != v35);
    }

    v42 = 126 - 2 * __clz(v34 - v33);
    if (v34 == v33)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    v328.i64[0] = __p;
    sub_262210220(v33, v34, &v328, v43, 1);
    v45 = v318;
    v46 = v319;
    if (v318 != v319)
    {
      do
      {
        v47 = *(v46 - 1);
        v315 = v47;
        if (objc_msgSend_hasBoxesDict_(v311[v47], v44, @"lshaped"))
        {
          v334 = 0u;
          v335 = 0u;
          v332 = 0u;
          v333 = 0u;
          v330 = 0u;
          v331 = 0u;
          v328 = 0u;
          v329 = 0u;
          v49 = objc_msgSend_boxesDict(v311[v47], v44, v48);
          v51 = objc_msgSend_objectForKeyedSubscript_(v49, v50, @"lshaped");
          sub_262211250(&v328, v51);

          sub_2621C9004(&v308, &v315);
          v316 = 0;
          v317 = 0uLL;
          v52 = v318;
          if (v319 - v318 != 4)
          {
            v53 = 0;
            do
            {
              v314 = v52[v53];
              v54 = v314;
              if (objc_msgSend_hasBoxesDict_(v311[v314], v44, @"lshaped"))
              {
                v56 = objc_msgSend_type(v311[v47], v44, v55);
                v59 = objc_msgSend_type(v311[v54], v57, v58);
                isEqualToString = objc_msgSend_isEqualToString_(v56, v60, v59);

                if (!isEqualToString)
                {
                  goto LABEL_35;
                }

                v326 = 0u;
                v327 = 0u;
                v324 = 0u;
                v325 = 0u;
                v322 = 0u;
                v323 = 0u;
                v320 = 0u;
                v321 = 0u;
                v64 = objc_msgSend_boxesDict(v311[v54], v62, v63);
                v66 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"lshaped");
                sub_262211250(&v320, v66);

                sub_26220FA14(buf, &v328, &v320);
                if (buf[0].f32[0] <= 0.1)
                {
LABEL_35:
                  sub_2621C7CD0(&v316, &v314);
                }
              }

              ++v53;
              v52 = v318;
            }

            while (((v319 - v318) >> 2) - 1 > v53);
          }

          if (v52)
          {
            *&v319 = v52;
            operator delete(v52);
          }

          v45 = v316;
          v318 = v316;
          v319 = v317;
          v46 = v317;
        }

        else
        {
          v45 = v318;
          v46 = (v319 - 4);
          *&v319 = v319 - 4;
        }
      }

      while (v45 != v46);
    }

    if (v45)
    {
      *&v319 = v45;
      operator delete(v45);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v67 = v308;
    v68 = v309;
  }

  v303 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v69, v68 - v67);
  v72 = v309;
  if (v67 != v309)
  {
    v73 = v67;
    do
    {
      objc_msgSend_addObject_(v303, v70, v311[*v73++]);
    }

    while (v73 != v72);
  }

  if (v303)
  {
    v74 = v303;
    v307 = objc_msgSend_count(v74, v75, v76);
    v306 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v77, @"Dishwasher", @"Washer", @"Oven", 0);
    v305 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v78, @"Stove", @"Sink", 0);
    if (v307)
    {
      v80 = 0;
      while (1)
      {
        v81 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v80);
        v84 = objc_msgSend_type(v81, v82, v83);
        if (objc_msgSend_isEqualToString_(v84, v85, @"Sofa"))
        {
          break;
        }

        v87 = objc_msgSend_objectAtIndexedSubscript_(v74, v86, v80);
        v90 = objc_msgSend_type(v87, v88, v89);
        v92 = objc_msgSend_isEqualToString_(v90, v91, @"Table");

        if ((v92 & 1) == 0)
        {
          v81 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v80);
          sub_26223FCCC(v81, 0);
          goto LABEL_58;
        }

LABEL_59:
        if (v307 == ++v80)
        {
          v93 = 0;
          while (1)
          {
            v94 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v93);
            v97 = objc_msgSend_type(v94, v95, v96);
            if (objc_msgSend_isEqualToString_(v97, v98, @"Cabinet"))
            {
              break;
            }

            v100 = objc_msgSend_objectAtIndexedSubscript_(v74, v99, v93);
            v103 = objc_msgSend_type(v100, v101, v102);
            v105 = objc_msgSend_isEqualToString_(v103, v104, @"Storage");

            if (v105)
            {
              goto LABEL_64;
            }

LABEL_81:
            if (++v93 == v307)
            {
              v157 = 0;
              while (1)
              {
                v158 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v157);
                v161 = objc_msgSend_type(v158, v159, v160);
                if (objc_msgSend_isEqualToString_(v161, v162, @"Cabinet"))
                {
                  break;
                }

                v164 = objc_msgSend_objectAtIndexedSubscript_(v74, v163, v157);
                v167 = objc_msgSend_type(v164, v165, v166);
                v169 = objc_msgSend_isEqualToString_(v167, v168, @"Storage");

                if (v169)
                {
                  goto LABEL_86;
                }

LABEL_99:
                if (++v157 == v307)
                {
                  v221 = 0;
                  while (1)
                  {
                    v222 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v221);
                    v225 = objc_msgSend_type(v222, v223, v224);
                    if (!objc_msgSend_isEqualToString_(v225, v226, @"Sink"))
                    {
                      goto LABEL_122;
                    }

                    v228 = objc_msgSend_objectAtIndexedSubscript_(v74, v227, v221);
                    if ((objc_msgSend_hasBoxesDict_(v228, v229, @"rawdetection") & 1) == 0)
                    {
                      break;
                    }

                    v231 = objc_msgSend_objectAtIndexedSubscript_(v74, v230, v221);
                    v234 = objc_msgSend_parent_id(v231, v232, v233);
                    v235 = v234 == 0;

                    if (v235)
                    {
                      v236 = 0;
                      while (1)
                      {
                        v237 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v236);
                        v240 = objc_msgSend_type(v237, v238, v239);
                        if (objc_msgSend_isEqualToString_(v240, v241, @"Cabinet"))
                        {
                          goto LABEL_108;
                        }

                        v243 = objc_msgSend_objectAtIndexedSubscript_(v74, v242, v236);
                        v246 = objc_msgSend_type(v243, v244, v245);
                        if (objc_msgSend_isEqualToString_(v246, v247, @"Storage"))
                        {
                          break;
                        }

                        v279 = objc_msgSend_objectAtIndexedSubscript_(v74, v248, v236);
                        v282 = objc_msgSend_type(v279, v280, v281);
                        v284 = objc_msgSend_isEqualToString_(v282, v283, @"Table");

                        if (v284)
                        {
                          goto LABEL_109;
                        }

LABEL_119:
                        if (v307 == ++v236)
                        {
                          goto LABEL_123;
                        }
                      }

LABEL_108:
LABEL_109:
                      v249 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v236);
                      hasBoxesDict = objc_msgSend_hasBoxesDict_(v249, v250, @"rawdetection");

                      if (hasBoxesDict)
                      {
                        v334 = 0u;
                        v335 = 0u;
                        v332 = 0u;
                        v333 = 0u;
                        v330 = 0u;
                        v331 = 0u;
                        v328 = 0u;
                        v329 = 0u;
                        v252 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v221);
                        v255 = objc_msgSend_boxesDict(v252, v253, v254);
                        v257 = objc_msgSend_objectForKeyedSubscript_(v255, v256, @"rawdetection");
                        sub_262211250(&v328, v257);

                        v326 = 0u;
                        v327 = 0u;
                        v324 = 0u;
                        v325 = 0u;
                        v322 = 0u;
                        v323 = 0u;
                        v320 = 0u;
                        v321 = 0u;
                        v259 = objc_msgSend_objectAtIndexedSubscript_(v74, v258, v236);
                        v262 = objc_msgSend_boxesDict(v259, v260, v261);
                        v264 = objc_msgSend_objectForKeyedSubscript_(v262, v263, @"rawdetection");
                        sub_262211250(&v320, v264);

                        v265 = *(&v332 + 2);
                        v266 = *(&v324 + 2);
                        v343 = 0u;
                        v344 = 0u;
                        v341 = 0u;
                        v342 = 0u;
                        v339 = 0u;
                        v340 = 0u;
                        memset(buf, 0, sizeof(buf));
                        sub_2622110F8(buf, &v328, 0.2);
                        v318 = 0;
                        v319 = 0uLL;
                        sub_26220FA14(&v318, buf, &v320);
                        if (*&v318 > 0.01 && v265 > v266)
                        {
                          v267 = *(&v319 + 3);
                          if (*(&v319 + 3) >= 0.5)
                          {
                            v268 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v236, *&v318);
                            v271 = objc_msgSend_identifier(v268, v269, v270);
                            v274 = objc_msgSend_copy(v271, v272, v273);
                            v276 = objc_msgSend_objectAtIndexedSubscript_(v74, v275, v221);
                            sub_26223FCCC(v276, v274);

                            if (qword_27FF0C060 != -1)
                            {
                              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                            }

                            v277 = qword_27FF0C058;
                            if (os_log_type_enabled(v277, OS_LOG_TYPE_DEBUG))
                            {
                              v285 = objc_msgSend_objectAtIndexedSubscript_(v74, v278, v236);
                              v288 = objc_msgSend_type(v285, v286, v287);
                              v290 = objc_msgSend_objectAtIndexedSubscript_(v74, v289, v221);
                              v293 = objc_msgSend_parent_id(v290, v291, v292);
                              LODWORD(__p[0]) = 138412802;
                              *(__p + 4) = v288;
                              WORD2(__p[1]) = 2112;
                              *(&__p[1] + 6) = v293;
                              HIWORD(__p[2]) = 2048;
                              v337 = v267;
                              _os_log_debug_impl(&dword_2621C3000, v277, OS_LOG_TYPE_DEBUG, "The sink has parent object (%@) with parent_id: %@, %f", __p, 0x20u);
                            }
                          }
                        }
                      }

                      goto LABEL_119;
                    }

LABEL_123:
                    if (++v221 == v307)
                    {
                      goto LABEL_124;
                    }
                  }

LABEL_122:
                  goto LABEL_123;
                }
              }

LABEL_86:
              v170 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v157);
              v172 = objc_msgSend_hasBoxesDict_(v170, v171, @"rawdetection");

              if (v172)
              {
                for (j = 0; j != v307; ++j)
                {
                  v174 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, j);
                  v177 = objc_msgSend_type(v174, v175, v176);
                  if (objc_msgSend_containsObject_(v305, v178, v177))
                  {
                    v180 = objc_msgSend_objectAtIndexedSubscript_(v74, v179, j);
                    v182 = objc_msgSend_hasBoxesDict_(v180, v181, @"rawdetection");

                    if (v182)
                    {
                      v334 = 0u;
                      v335 = 0u;
                      v332 = 0u;
                      v333 = 0u;
                      v330 = 0u;
                      v331 = 0u;
                      v328 = 0u;
                      v329 = 0u;
                      v183 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v157);
                      v186 = objc_msgSend_boxesDict(v183, v184, v185);
                      v188 = objc_msgSend_objectForKeyedSubscript_(v186, v187, @"rawdetection");
                      sub_262211250(&v328, v188);

                      v326 = 0u;
                      v327 = 0u;
                      v324 = 0u;
                      v325 = 0u;
                      v322 = 0u;
                      v323 = 0u;
                      v320 = 0u;
                      v321 = 0u;
                      v190 = objc_msgSend_objectAtIndexedSubscript_(v74, v189, j);
                      v193 = objc_msgSend_boxesDict(v190, v191, v192);
                      v195 = objc_msgSend_objectForKeyedSubscript_(v193, v194, @"rawdetection");
                      sub_262211250(&v320, v195);

                      v343 = 0u;
                      v344 = 0u;
                      v341 = 0u;
                      v342 = 0u;
                      v339 = 0u;
                      v340 = 0u;
                      memset(buf, 0, sizeof(buf));
                      sub_2622110F8(buf, &v320, 0.3);
                      v318 = 0;
                      v319 = 0uLL;
                      sub_26220FA14(&v318, &v328, buf);
                      if (*&v318 >= 0.000001)
                      {
                        LODWORD(v196) = HIDWORD(v319);
                        if (*(&v319 + 3) >= 0.5)
                        {
                          v197 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v157, v196);
                          v200 = objc_msgSend_identifier(v197, v198, v199);
                          v203 = objc_msgSend_copy(v200, v201, v202);
                          v205 = objc_msgSend_objectAtIndexedSubscript_(v74, v204, j);
                          sub_26223FCCC(v205, v203);

                          if (qword_27FF0C060 != -1)
                          {
                            dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                          }

                          v206 = qword_27FF0C058;
                          if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
                          {
                            v208 = objc_msgSend_objectAtIndexedSubscript_(v74, v207, j);
                            v302 = objc_msgSend_type(v208, v209, v210);
                            v212 = objc_msgSend_objectAtIndexedSubscript_(v74, v211, v157);
                            v215 = objc_msgSend_type(v212, v213, v214);
                            v217 = objc_msgSend_objectAtIndexedSubscript_(v74, v216, j);
                            objc_msgSend_parent_id(v217, v218, v219);
                            v220 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                            LODWORD(__p[0]) = 138412802;
                            *(__p + 4) = v302;
                            WORD2(__p[1]) = 2112;
                            *(&__p[1] + 6) = v215;
                            HIWORD(__p[2]) = 2112;
                            v337 = v220;
                            _os_log_debug_impl(&dword_2621C3000, v206, OS_LOG_TYPE_DEBUG, "%@ has parent object (%@) with parent_id: %@", __p, 0x20u);
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                  }
                }
              }

              goto LABEL_99;
            }
          }

LABEL_64:
          v106 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v93);
          v108 = objc_msgSend_hasBoxesDict_(v106, v107, @"rawdetection");

          if (v108)
          {
            v334 = 0u;
            v335 = 0u;
            v332 = 0u;
            v333 = 0u;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v109 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v93);
            v112 = objc_msgSend_boxesDict(v109, v110, v111);
            v114 = objc_msgSend_objectForKeyedSubscript_(v112, v113, @"rawdetection");
            sub_262211250(&v328, v114);

            for (k = 0; k != v307; ++k)
            {
              v116 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, k);
              v119 = objc_msgSend_type(v116, v117, v118);
              if (objc_msgSend_containsObject_(v306, v120, v119))
              {
                v122 = objc_msgSend_objectAtIndexedSubscript_(v74, v121, k);
                v124 = objc_msgSend_hasBoxesDict_(v122, v123, @"rawdetection");

                if (v124)
                {
                  v326 = 0u;
                  v327 = 0u;
                  v324 = 0u;
                  v325 = 0u;
                  v322 = 0u;
                  v323 = 0u;
                  v320 = 0u;
                  v321 = 0u;
                  v125 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, k);
                  v128 = objc_msgSend_boxesDict(v125, v126, v127);
                  v130 = objc_msgSend_objectForKeyedSubscript_(v128, v129, @"rawdetection");
                  sub_262211250(&v320, v130);

                  memset(__p, 0, sizeof(__p));
                  sub_26220FA14(__p, &v328, &v320);
                  if (*__p >= 0.000001 && *(&__p[1] + 1) >= 0.8)
                  {
                    sub_26220F644(&v318, &v328);
                    sub_26220F644(&v316, &v320);
                    v132 = v316;
                    if (((*(v316 + 3) * *(v316 + 4)) * *(v316 + 5)) >= ((*(v318 + 3) * *(v318 + 4)) * *(v318 + 5)))
                    {
                      goto LABEL_76;
                    }

                    v133 = objc_msgSend_objectAtIndexedSubscript_(v74, v131, v93);
                    v136 = objc_msgSend_identifier(v133, v134, v135);
                    v139 = objc_msgSend_copy(v136, v137, v138);
                    v141 = objc_msgSend_objectAtIndexedSubscript_(v74, v140, k);
                    sub_26223FCCC(v141, v139);

                    if (qword_27FF0C060 != -1)
                    {
                      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                    }

                    v142 = qword_27FF0C058;
                    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
                    {
                      v144 = objc_msgSend_objectAtIndexedSubscript_(v74, v143, k);
                      v301 = objc_msgSend_type(v144, v145, v146);
                      v148 = objc_msgSend_objectAtIndexedSubscript_(v74, v147, v93);
                      v151 = objc_msgSend_type(v148, v149, v150);
                      v153 = objc_msgSend_objectAtIndexedSubscript_(v74, v152, k);
                      v156 = objc_msgSend_parent_id(v153, v154, v155);
                      buf[0].i32[0] = 138412802;
                      *(buf[0].i64 + 4) = v301;
                      buf[0].i16[6] = 2112;
                      *(&buf[0].i64[1] + 6) = v151;
                      buf[1].i16[3] = 2112;
                      buf[1].i64[1] = v156;
                      _os_log_debug_impl(&dword_2621C3000, v142, OS_LOG_TYPE_DEBUG, "%@ has parent object (%@) with parent_id: %@", buf, 0x20u);
                    }

                    v132 = v316;
                    if (v316)
                    {
LABEL_76:
                      *&v317 = v132;
                      operator delete(v132);
                    }

                    if (v318)
                    {
                      *&v319 = v318;
                      operator delete(v318);
                    }
                  }
                }
              }

              else
              {
              }
            }
          }

          goto LABEL_81;
        }
      }

LABEL_58:
      goto LABEL_59;
    }

LABEL_124:

    v294 = objc_alloc_init(RSObjectAsset);
    sub_2622AD434(v294, v74);
    v295 = objc_alloc_init(RSObjectAlign);
    v296 = sub_2621E3D3C(v295, v299, v300, v294, 1, 1);

    v67 = v308;
  }

  else
  {
    v296 = objc_msgSend_array(MEMORY[0x277CBEA60], v70, v71);
  }

  if (v67)
  {
    v309 = v67;
    operator delete(v67);
  }

  v328.i64[0] = &v311;
  sub_2621C512C(&v328);

  v297 = *MEMORY[0x277D85DE8];

  return v296;
}

void sub_2622B3B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, _Unwind_Exception *exception_objecta, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  a53 = &a26;
  sub_2621C512C(&a53);

  _Unwind_Resume(a1);
}

void sub_2622B4144(uint64_t a1)
{
  v179 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v2 = *(a1 + 24);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v164, v178, 16);
    if (v6)
    {
      v8 = *v165;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v165 != v8)
          {
            objc_enumerationMutation(v2);
          }

          v10 = *(*(&v164 + 1) + 8 * i);
          *&v7 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v10, v4, v5, v7);
          objc_msgSend_translateBy_(v10, v11, v12, *(a1 + 128));
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v164, v178, 16);
      }

      while (v6);
    }

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v13 = *(a1 + 32);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v160, v177, 16);
    if (v17)
    {
      v19 = *v161;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v161 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v160 + 1) + 8 * j);
          *&v18 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v21, v15, v16, v18);
          objc_msgSend_translateBy_(v21, v22, v23, *(a1 + 128));
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v160, v177, 16);
      }

      while (v17);
    }

    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v24 = *(a1 + 40);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v156, v176, 16);
    if (v28)
    {
      v30 = *v157;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v157 != v30)
          {
            objc_enumerationMutation(v24);
          }

          v32 = *(*(&v156 + 1) + 8 * k);
          *&v29 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v32, v26, v27, v29);
          objc_msgSend_translateBy_(v32, v33, v34, *(a1 + 128));
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v156, v176, 16);
      }

      while (v28);
    }

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v35 = *(a1 + 48);
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v152, v175, 16);
    if (v39)
    {
      v41 = *v153;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v153 != v41)
          {
            objc_enumerationMutation(v35);
          }

          v43 = *(*(&v152 + 1) + 8 * m);
          *&v40 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v43, v37, v38, v40);
          objc_msgSend_translateBy_(v43, v44, v45, *(a1 + 128));
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v152, v175, 16);
      }

      while (v39);
    }

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v46 = *(a1 + 56);
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v148, v174, 16);
    if (v50)
    {
      v52 = *v149;
      do
      {
        for (n = 0; n != v50; ++n)
        {
          if (*v149 != v52)
          {
            objc_enumerationMutation(v46);
          }

          v54 = *(*(&v148 + 1) + 8 * n);
          *&v51 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v54, v48, v49, v51);
          objc_msgSend_translateBy_(v54, v55, v56, *(a1 + 128));
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v148, v174, 16);
      }

      while (v50);
    }

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v57 = *(a1 + 64);
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v144, v173, 16);
    if (v61)
    {
      v63 = *v145;
      do
      {
        for (ii = 0; ii != v61; ++ii)
        {
          if (*v145 != v63)
          {
            objc_enumerationMutation(v57);
          }

          v65 = *(*(&v144 + 1) + 8 * ii);
          *&v62 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v65, v59, v60, v62);
          objc_msgSend_translateBy_(v65, v66, v67, *(a1 + 128));
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v59, &v144, v173, 16);
      }

      while (v61);
    }

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v68 = *(a1 + 88);
    v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v140, v172, 16);
    if (v72)
    {
      v74 = *v141;
      do
      {
        for (jj = 0; jj != v72; ++jj)
        {
          if (*v141 != v74)
          {
            objc_enumerationMutation(v68);
          }

          v76 = *(*(&v140 + 1) + 8 * jj);
          *&v73 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v76, v70, v71, v73);
          objc_msgSend_translateBy_(v76, v77, v78, *(a1 + 128));
        }

        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v140, v172, 16);
      }

      while (v72);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v79 = *(a1 + 72);
    v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v136, v171, 16);
    if (v83)
    {
      v85 = *v137;
      do
      {
        for (kk = 0; kk != v83; ++kk)
        {
          if (*v137 != v85)
          {
            objc_enumerationMutation(v79);
          }

          v87 = *(*(&v136 + 1) + 8 * kk);
          *&v84 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v87, v81, v82, v84);
          objc_msgSend_translateBy_(v87, v88, v89, *(a1 + 128));
        }

        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v81, &v136, v171, 16);
      }

      while (v83);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v90 = *(a1 + 104);
    v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &v132, v170, 16);
    if (v94)
    {
      v96 = *v133;
      do
      {
        for (mm = 0; mm != v94; ++mm)
        {
          if (*v133 != v96)
          {
            objc_enumerationMutation(v90);
          }

          v98 = *(*(&v132 + 1) + 8 * mm);
          *&v95 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v98, v92, v93, v95);
          objc_msgSend_translateBy_(v98, v99, v100, *(a1 + 128));
        }

        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v92, &v132, v170, 16);
      }

      while (v94);
    }

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v101 = *(a1 + 96);
    v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v102, &v128, v169, 16);
    if (v105)
    {
      v107 = *v129;
      do
      {
        for (nn = 0; nn != v105; ++nn)
        {
          if (*v129 != v107)
          {
            objc_enumerationMutation(v101);
          }

          v109 = *(*(&v128 + 1) + 8 * nn);
          *&v106 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v109, v103, v104, v106);
          objc_msgSend_translateBy_(v109, v110, v111, *(a1 + 128));
        }

        v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v103, &v128, v169, 16);
      }

      while (v105);
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v112 = *(a1 + 80);
    v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v113, &v124, v168, 16);
    if (v116)
    {
      v118 = *v125;
      do
      {
        for (i1 = 0; i1 != v116; ++i1)
        {
          if (*v125 != v118)
          {
            objc_enumerationMutation(v112);
          }

          v120 = *(*(&v124 + 1) + 8 * i1);
          *&v117 = -*(a1 + 20);
          objc_msgSend_rotateAlongZAxisRightHand_(v120, v114, v115, v117, v124);
          objc_msgSend_translateBy_(v120, v121, v122, *(a1 + 128));
        }

        v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v114, &v124, v168, 16);
      }

      while (v116);
    }
  }

  v123 = *MEMORY[0x277D85DE8];
}

void sub_2622B4958(id *a1)
{
  v111 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v2 = a1[3];
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v98, v110, 16);
    if (v5)
    {
      v6 = *v99;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v99 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v98 + 1) + 8 * i);
          if (v8)
          {
            *(v8 + 192) = xmmword_2623A7B70;
          }
        }

        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v98, v110, 16);
      }

      while (v5);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v9 = a1[5];
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v94, v109, 16);
    if (v12)
    {
      v13 = *v95;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v95 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v94 + 1) + 8 * j);
          if (v15)
          {
            *(v15 + 192) = xmmword_2623A7B80;
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v94, v109, 16);
      }

      while (v12);
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v16 = a1[4];
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v90, v108, 16);
    if (v19)
    {
      v20 = *v91;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v91 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v90 + 1) + 8 * k);
          if (v22)
          {
            *(v22 + 192) = xmmword_2623A7B90;
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v90, v108, 16);
      }

      while (v19);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v23 = a1[7];
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v86, v107, 16);
    if (v26)
    {
      v27 = *v87;
      do
      {
        for (m = 0; m != v26; ++m)
        {
          if (*v87 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v86 + 1) + 8 * m);
          if (v29)
          {
            *(v29 + 192) = xmmword_2623A7BA0;
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v86, v107, 16);
      }

      while (v26);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v30 = a1[6];
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v82, v106, 16);
    if (v33)
    {
      v34 = *v83;
      do
      {
        for (n = 0; n != v33; ++n)
        {
          if (*v83 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v82 + 1) + 8 * n);
          if (v36)
          {
            *(v36 + 192) = xmmword_2623A7BB0;
          }
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v82, v106, 16);
      }

      while (v33);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v37 = a1[9];
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v78, v105, 16);
    if (v40)
    {
      v41 = *v79;
      do
      {
        for (ii = 0; ii != v40; ++ii)
        {
          if (*v79 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v78 + 1) + 8 * ii);
          if (v43)
          {
            *(v43 + 192) = xmmword_2623A7BC0;
          }
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v78, v105, 16);
      }

      while (v40);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v44 = a1[12];
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v74, v104, 16);
    if (v47)
    {
      v48 = *v75;
      do
      {
        for (jj = 0; jj != v47; ++jj)
        {
          if (*v75 != v48)
          {
            objc_enumerationMutation(v44);
          }

          v50 = *(*(&v74 + 1) + 8 * jj);
          if (v50)
          {
            *(v50 + 192) = xmmword_2623A7B80;
          }
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v74, v104, 16);
      }

      while (v47);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v51 = a1[13];
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v70, v103, 16);
    if (v54)
    {
      v55 = *v71;
      do
      {
        for (kk = 0; kk != v54; ++kk)
        {
          if (*v71 != v55)
          {
            objc_enumerationMutation(v51);
          }

          v57 = *(*(&v70 + 1) + 8 * kk);
          if (v57)
          {
            *(v57 + 192) = xmmword_2623A7B90;
          }
        }

        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v70, v103, 16);
      }

      while (v54);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v58 = a1[11];
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v66, v102, 16);
    if (v61)
    {
      v62 = *v67;
      do
      {
        for (mm = 0; mm != v61; ++mm)
        {
          if (*v67 != v62)
          {
            objc_enumerationMutation(v58);
          }

          v64 = *(*(&v66 + 1) + 8 * mm);
          if (v64)
          {
            *(v64 + 192) = xmmword_2623A7B90;
          }
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v60, &v66, v102, 16);
      }

      while (v61);
    }
  }

  v65 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2622B5158(void *a1, void *a2, void *a3, void *a4, int a5, int a6, void *a7, void *a8, void *a9)
{
  v14 = a1;
  v15 = a3;
  v157 = a4;
  v156 = a7;
  v155 = a8;
  v161 = a9;
  v154 = v15;
  if (v15)
  {
    v16 = *(v15 + 8);
    v159 = v16;
    v160 = *(v15 + 6);
    v164 = *(v15 + 5);
    v165 = *(v15 + 7);
    v18 = *(v15 + 7);
    v17 = *(v15 + 8);
    v19 = *(v15 + 4);
    v20 = *(v15 + 6);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0.0;
    v164 = 0u;
    v165 = 0u;
    v159 = 0u;
    v160 = 0u;
    v20 = 0.0;
  }

  v176 = 0uLL;
  v177 = 0uLL;
  v178 = 1065353216;
  v21 = vcvtd_n_f64_u64((a2[1] - *a2) >> 3, 2uLL);
  sub_2621C67D4(&v176, v21);
  v173 = 0u;
  v174 = 0u;
  v175 = 1065353216;
  if (v17 >= 1)
  {
    sub_2621C67D4(&v173, v21);
  }

  v25 = *a2;
  v24 = a2[1];
  v158 = v17;
  if (*a2 != v24)
  {
    v26 = v19 + v20;
    do
    {
      v27 = (objc_msgSend_points(v14, v22, v23) + 16 * *v25);
      v28 = *v27->f32;
      v29 = vmulq_f64(v164, vaddq_f64(v165, vcvtq_f64_f32(*v27)));
      v30 = llround(v29.f64[0]);
      if ((v30 & 0x80000000) == 0 && v18 > v30)
      {
        v31 = llround(v29.f64[1]);
        if ((v31 & 0x80000000) == 0 && v18 > v31)
        {
          v162 = *v27->f32;
          v32 = v31 + v18 * v30;
          v169[0] = v32;
          *&v170[0] = v169;
          v33 = sub_2621C65A4(&v176, v32);
          v34 = v33;
          v36 = v33[4];
          v35 = v33[5];
          if (v36 >= v35)
          {
            v38 = v33[3];
            v39 = v36 - v38;
            v40 = (v36 - v38) >> 2;
            v41 = v40 + 1;
            if ((v40 + 1) >> 62)
            {
              sub_2621CBEB0();
            }

            v42 = v35 - v38;
            if (v42 >> 1 > v41)
            {
              v41 = v42 >> 1;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v43 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              sub_2621C7F54(v43);
            }

            v44 = (v36 - v38) >> 2;
            v45 = (4 * v40);
            v46 = (4 * v40 - 4 * v44);
            *v45 = *v25;
            v37 = v45 + 1;
            memcpy(v46, v38, v39);
            v47 = v34[3];
            v34[3] = v46;
            v34[4] = v37;
            v34[5] = 0;
            if (v47)
            {
              operator delete(v47);
            }

            v17 = v158;
          }

          else
          {
            *v36 = *v25;
            v37 = v36 + 4;
          }

          v48.f64[1] = *(&v162 + 1);
          v48.f64[0] = *(&v162 + 2);
          v49 = llround(vmulq_f64(v160, vaddq_f64(v159, v48)).f64[0]);
          v34[4] = v37;
          if (v17 > v49 && (v49 & 0x80000000) == 0)
          {
            v50 = v27[1].f32[0];
            if (v19 <= v50 && v50 <= v26)
            {
              v172 = v32 + v18 * v18 * v49;
              *&v170[0] = &v172;
              v52 = sub_2622B596C(&v173, v172);
              ++*(v52 + 5);
            }
          }
        }
      }

      ++v25;
    }

    while (v25 != v24);
  }

  v163 = sub_2622C57A4(v157, 0);
  v55 = sub_2622C57A4(v157, 0x1AuLL);
  if (v157)
  {
    v56 = v157[5] * v157[3];
  }

  else
  {
    v56 = 0;
  }

  if (a5 <= 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = a5;
  }

  v58 = v177;
  if (!v177)
  {
    goto LABEL_52;
  }

  do
  {
    v166 = v57;
    v171 = 0;
    memset(v170, 0, sizeof(v170));
    v59 = v58[3];
    v60 = v58[4];
    v61 = v59;
    if (v59 != v60)
    {
      do
      {
        v62 = objc_msgSend_semanticLabels(v14, v53, v54);
        v63 = *v59;
        v66 = objc_msgSend_semanticVotes(v14, v64, v65);
        sub_2622CB1A4((v62 + 4 * v63), (v66 + 8 * *v59), v169, v67, v68, v69);
        for (i = 0; i != 26; ++i)
        {
          *(v170 + i * 4) = *(v170 + i * 4) + *&v169[i];
        }

        ++v59;
      }

      while (v59 != v60);
      v59 = v58[3];
      v61 = v58[4];
    }

    v71 = 0;
    v72 = (v61 - v59) >> 2;
    _S0 = v72;
    __asm { FCVT            H1, S0 }

    v79 = *(v58 + 4);
    *(v55 + v79) = _H1;
    v80 = v163;
    do
    {
      _S1 = *(v170 + v71) / _S0;
      __asm { FCVT            H1, S1 }

      *(v80 + v79) = LOWORD(_S1);
      v71 += 4;
      v80 = (v80 + v56);
    }

    while (v71 != 104);
    v57 = v166;
    if (v166 <= v72)
    {
      v57 = v72;
    }

    v58 = *v58;
  }

  while (v58);
  v82 = v177;
  if (v177)
  {
    v84 = v158;
    do
    {
      v85 = *(v82 + 4);
      _H1 = *(v55 + v85);
      __asm { FCVT            S1, H1 }

      v83 = 1.0 / v57;
      _S1 = v83 * _S1;
      __asm { FCVT            H1, S1 }

      *(v55 + v85) = LOWORD(_S1);
      v82 = *v82;
    }

    while (v82);
  }

  else
  {
LABEL_52:
    v84 = v158;
  }

  if (a6 <= 1)
  {
    v89 = 1;
  }

  else
  {
    v89 = a6;
  }

  if (v84 >= 1)
  {
    v90 = sub_2622C57A4(v157, 0x1BuLL);
    v91 = v174;
    if (v174)
    {
      v92 = v174;
      do
      {
        v93 = *(v92 + 5);
        _S0 = v93;
        __asm { FCVT            H0, S0 }

        *(v90 + *(v92 + 4)) = LOWORD(_S0);
        if (v89 <= v93)
        {
          v89 = v93;
        }

        else
        {
          v89 = v89;
        }

        v92 = *v92;
      }

      while (v92);
      do
      {
        v96 = *(v91 + 4);
        _H1 = *(v90 + v96);
        __asm { FCVT            S1, H1 }

        v95 = 1.0 / v89;
        _S1 = v95 * _S1;
        __asm { FCVT            H1, S1 }

        *(v90 + v96) = LOWORD(_S1);
        v91 = *v91;
      }

      while (v91);
    }
  }

  if (v156)
  {
    v100 = sub_2622C57A4(v156, 0);
    v104 = v177;
    if (v177)
    {
      v105 = v100;
      LOWORD(v19) = -1024;
      do
      {
        v106 = v104[3];
        v107 = v104[4];
        *&_D0 = v19;
        if (v106 != v107)
        {
          _S9 = -3.4028e38;
          do
          {
            v109 = objc_msgSend_points(v14, v101, v102, _D0);
            v110 = *v106++;
            v111 = v109 + 16 * v110;
            LODWORD(_D0) = *(v111 + 8);
            if (_S9 < *&_D0)
            {
              _S9 = *(v111 + 8);
            }
          }

          while (v106 != v107);
          __asm { FCVT            H0, S9 }
        }

        *(v105 + *(v104 + 4)) = LOWORD(_D0);
        v104 = *v104;
      }

      while (v104);
    }
  }

  if (v155)
  {
    v112 = sub_2622C57A4(v155, 0);
    v115 = v177;
    if (v177)
    {
      v116 = v112;
      v117 = v164.f64[0] + v164.f64[0];
      do
      {
        v118 = v115[3];
        v119 = v115[4];
        if (v118 == v119)
        {
          _S0 = 0.0;
        }

        else
        {
          v120 = 0;
          do
          {
            v121.i32[0] = *(objc_msgSend_semanticLabels(v14, v113, v114) + 4 * *v118);
            if (vmovl_u8(v121).u8[0] == 6 && *(objc_msgSend_semanticVotes(v14, v113, v114) + 8 * *v118))
            {
              ++v120;
            }

            ++v118;
          }

          while (v118 != v119);
          _S0 = v120;
        }

        __asm { FCVT            H1, S0 }

        *(v116 + *(v115 + 4)) = _H1;
        if (v117 < _S0)
        {
          v117 = _S0;
        }

        v115 = *v115;
      }

      while (v115);
      for (j = v177; j; j = *j)
      {
        v125 = *(j + 4);
        _H3 = *(v116 + v125);
        __asm { FCVT            S3, H3 }

        v128 = (255.0 / v117) * _S3;
        if (v128 <= 255.0)
        {
          v129 = v128;
        }

        else
        {
          v129 = 255.0;
        }

        if (v128 >= 0.0)
        {
          _S3 = v129;
        }

        else
        {
          _S3 = 0.0;
        }

        __asm { FCVT            H3, S3 }

        *(v116 + v125) = _H3;
      }
    }
  }

  if (v161)
  {
    v132 = sub_2622C57A4(v161, 0);
    v135 = v177;
    if (v177)
    {
      v136 = v132;
      do
      {
        v137 = v135[3];
        v138 = v135[4];
        v139 = 0;
        while (v137 != v138)
        {
          v167 = *(objc_msgSend_cameraPositions(v14, v133, v134) + 16 * *v137);
          v142 = objc_msgSend_points(v14, v140, v141);
          v143 = *v137++;
          v139 = vadd_f32(v139, vsub_f32(*&v167, *(v142 + 16 * v143)));
        }

        v144 = v161[7];
        if (v144)
        {
          v145 = 0;
          v146 = ((v135[4] - v135[3]) >> 2);
          v147 = *(v135 + 4);
          v148 = v136;
          do
          {
            v168 = v139;
            _S1 = *(&v168 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v145 & 1))) / v146;
            __asm { FCVT            H1, S1 }

            *(v148 + v147) = LOWORD(_S1);
            ++v145;
            v148 = (v148 + v56);
          }

          while (v144 != v145);
        }

        v135 = *v135;
      }

      while (v135);
    }
  }

  sub_2621C74C4(&v173);
  sub_2621C7150(v177);
  v150 = v176;
  *&v176 = 0;
  if (v150)
  {
    operator delete(v150);
  }

  return v57 | (v89 << 32);
}

void sub_2622B58E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  sub_2621C74C4(v23 - 192);
  sub_2621C7004(v23 - 144);

  _Unwind_Resume(a1);
}

uint64_t *sub_2622B596C(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_2622B5BA8(float *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v3 != v2)
  {
    v4 = a2;
    v175 = *(a2 + 16);
    while (1)
    {
      v6 = (v3 + 16);
      v7 = vsub_f32(*(v3 + 16), *(v3 + 24));
      if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < a1[3])
      {
        break;
      }

LABEL_151:
      v3 += 176;
      if (v3 == v2)
      {
        return;
      }
    }

    sub_2622B676C(&v182, a1, v3, *(v4 + 8), *(v4 + 16));
    v8 = a1[4];
    v9 = a1[5];
    v11 = a1[7];
    v10 = a1[8];
    v12 = a1[6];
    v13 = a1[2];
    v15 = v182;
    v14 = v183;
    if (v183 - v182 != 24)
    {
      v179 = (v3 + 16);
      if (v183 - v182 == 48 && v183 != v182)
      {
        v26 = 0;
        v27 = 0;
        v28 = v182 + 8;
        v29 = -1;
        v30 = -100000.0;
        do
        {
          v27 += *v28;
          v31 = vsub_f32(*(*(v28 - 1) + 16), *(*(v28 - 1) + 24));
          v32 = sqrtf(vaddv_f32(vmul_f32(v31, v31)));
          if (v32 > v30)
          {
            v30 = v32;
            v29 = v26;
          }

          ++v26;
          v28 += 6;
        }

        while (v26 != 2);
        if (v27 == 1 && (v29 & 0x80000000) == 0)
        {
          if (v30 > v13 || (v33 = vsub_f32(*(v3 + 16), *(v3 + 24)), v30 > (v10 * sqrtf(vaddv_f32(vmul_f32(v33, v33))))))
          {
            v34 = *(v182 + 3 * (1 - v29));
            v35 = v34 + 2;
            v36 = vsub_f32(v34[2], v34[3]);
            v37 = sqrtf(vaddv_f32(vmul_f32(v36, v36)));
            v38 = a1[6];
            if (v37 > v8)
            {
              if (v37 <= a1[3])
              {
                v38 = a1[15];
              }

              else
              {
                v38 = a1[14];
              }
            }

            v80 = v182 + 24 * v29;
            v81 = *v80;
            v82 = sub_2621C92AC(v179, (*v80 + 16), 0);
            v83 = sub_2621C92AC(v81 + 2, v35, 0);
            v84 = v83 >= v38 && v83 <= (180.0 - v38);
            if (!v84 && (v85 = vsub_f32(*(v3 + 16), *(v3 + 24)), sqrtf(vaddv_f32(vmul_f32(v85, v85))) <= v8) && (v86 = vabds_f32(90.0, v82), v86 < v12) || (v86 = vabds_f32(90.0, v82), v86 < v9))
            {
              if (v86 < v11)
              {
                goto LABEL_148;
              }

              v87 = sub_2621C92AC(v179, v81 + 2, 0);
              v88 = sub_2621C92AC(v179, v35, 0);
              v89 = fabsf(v87 + -90.0);
              v90 = fabsf(v88 + -90.0);
              v91 = vsub_f32(v34[2], v34[3]);
              v92 = v90 + v90;
              if (sqrtf(vaddv_f32(vmul_f32(v91, v91))) < v8 || v89 < v92)
              {
                v94 = *(v80 + 2);
                v95 = *(v80 + 3);
                v96 = v81[2];
                v97 = vsub_f32(v81[3], v96);
                v96.f32[0] = -*&v97.i32[1];
                v98 = vzip1_s32(v96, v97);
                v99 = v179[1 - v94];
                v100 = vadd_f32(v99, v98);
                v101 = vsub_f32(v99, v100);
                v102 = vaddv_f32(vmul_f32(vsub_f32(v179[v94], v100), v101));
                v103 = vaddv_f32(vmul_f32(v101, v101));
                if (v103 < 0.000001)
                {
                  v103 = 0.000001;
                }

                v104 = COERCE_DOUBLE(vmla_n_f32(v100, v101, v102 / v103));
                sub_2622B6BB0(v3, v94, v104);
                if (v95 != -1)
                {
                  sub_2622B6BB0(v81, v95, v104);
                }

                goto LABEL_148;
              }
            }
          }
        }
      }

LABEL_67:
      if (v14 != v15)
      {
        v105 = a1[5];
        v107 = a1[7];
        v106 = a1[8];
        v109 = a1[2];
        v108 = a1[3];
        v180 = v14;
        v181 = (v3 + 128);
        while (2)
        {
          if (*(v15 + 4))
          {
            goto LABEL_129;
          }

          v110 = vsub_f32((*v15)[2], (*v15)[3]);
          if (sqrtf(vaddv_f32(vmul_f32(v110, v110))) >= v108)
          {
            goto LABEL_129;
          }

          v111 = a1;
          sub_2622B676C(__p, a1, *v15, *(v4 + 8), *(v4 + 16));
          v113 = __p[0];
          v112 = __p[1];
          if (__p[0] != __p[1])
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            while (1)
            {
              v117 = *v113;
              v118 = *(*v113 + 151);
              if (v118 < 0)
              {
                if (!*(v117 + 136))
                {
                  goto LABEL_95;
                }
              }

              else if (!*(*v113 + 151))
              {
                goto LABEL_95;
              }

              v119 = *(v3 + 151);
              if (v119 < 0)
              {
                v120 = *(v3 + 136);
                if (!v120)
                {
                  goto LABEL_95;
                }
              }

              else
              {
                if (!*(v3 + 151))
                {
                  goto LABEL_95;
                }

                v120 = *(v3 + 136);
              }

              if (v118 >= 0)
              {
                v121 = *(*v113 + 151);
              }

              else
              {
                v121 = *(v117 + 136);
              }

              if (v119 >= 0)
              {
                v120 = *(v3 + 151);
              }

              if (v121 != v120 || ((v124 = *(v117 + 128), v122 = (v117 + 128), v123 = v124, v118 >= 0) ? (v125 = v122) : (v125 = v123), (v126 = *v181, v119 >= 0) ? (v127 = (v3 + 128)) : (v127 = *v181), memcmp(v125, v127, v121)))
              {
                v129 = 0xAAAAAAAAAAAAAAABLL * ((v116 - v115) >> 3);
                v130 = v129 + 1;
                if (v129 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * (-v115 >> 3) > v130)
                {
                  v130 = 0x5555555555555556 * (-v115 >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * (-v115 >> 3) >= 0x555555555555555)
                {
                  v131 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v131 = v130;
                }

                if (v131)
                {
                  sub_2622B6B58(v131);
                }

                v132 = 24 * v129;
                v133 = *v113;
                *(v132 + 16) = v113[2];
                *v132 = v133;
                v128 = 24 * v129 + 24;
                v134 = v114 - v115;
                v135 = (24 * v129 + 24 * ((v114 - v115) / -24));
                memcpy(v135, v115, v134);
                if (v115)
                {
                  operator delete(v115);
                }

                v115 = v135;
                v116 = 24 * v129 + 24;
                goto LABEL_107;
              }

LABEL_95:
              v128 = v114;
LABEL_107:
              v113 += 3;
              v114 = v128;
              if (v113 == v112)
              {
                v4 = a2;
                goto LABEL_110;
              }
            }
          }

          v115 = 0;
          v116 = 0;
LABEL_110:
          a1 = v111;
          if (v116 - v115 == 24)
          {
            v136 = *v115;
            v137 = vsub_f32((*v115)[2], (*v115)[3]);
            v138 = sqrtf(vaddv_f32(vmul_f32(v137, v137)));
            v14 = v180;
            if (v138 <= v109 && (v139 = vsub_f32(*(v3 + 16), *(v3 + 24)), v138 <= (v106 * sqrtf(vaddv_f32(vmul_f32(v139, v139))))) || ((v140 = sub_2621C92AC(v179, *v115 + 2, 0), v140 > v105) ? (v142 = v140 < (180.0 - v105)) : (v142 = 0), v142))
            {
              v144 = 1;
            }

            else
            {
              if (v140 < v107 || v140 > (180.0 - v107))
              {
                v144 = 0;
                break;
              }

              v146 = *(v3 + 16);
              v145 = *(v3 + 24);
              v147 = vmul_f32(vadd_f32(v146, v145), 0x3F0000003F000000);
              v148 = v136[2];
              v149 = vsub_f32(v136[3], v148);
              v148.f32[0] = -*&v149.i32[1];
              v150 = vzip1_s32(v148, v149);
              v151 = vadd_f32(v146, v150);
              v152 = vadd_f32(v145, v150);
              v153 = vsub_f32(v151, v146);
              v154 = vaddv_f32(vmul_f32(vsub_f32(v147, v146), v153));
              v155 = vaddv_f32(vmul_f32(v153, v153));
              if (v155 < 0.000001)
              {
                v155 = 0.000001;
              }

              v156 = vmla_n_f32(v146, v153, v154 / v155);
              *&v157 = vsub_f32(v152, v145);
              *&v158 = vmul_f32(vsub_f32(v147, v145), *&v157);
              *&v158 = vaddv_f32(*&v158);
              v159 = vaddv_f32(vmul_f32(*&v157, *&v157));
              if (v159 < 0.000001)
              {
                v159 = 0.000001;
              }

              v176 = vmla_n_f32(v145, *&v157, *&v158 / v159);
              v177 = v156;
              v160 = v182;
              v161 = v183;
              while (v160 != v161)
              {
                if (!*(v160 + 4))
                {
                  v162 = *(v160 + 3);
                  if (v162 <= 1)
                  {
                    LODWORD(v158) = 0;
                    LODWORD(v157) = *(v160 + 2);
                    v163 = *v160;
                    v185 = *(*v160)[2].f32;
                    *(&v157 + 1) = *(&v185 + 1);
                    *(&v185 + v162) = vbsl_s8(vdup_lane_s32(vceq_s32(*&v157, *&v158), 0), v177, v176);
                    *(&v158 + 1) = *(&v185 + 1);
                    *v163[2].f32 = v185;
                    *&v158 = v163[2];
                    *&v157 = v163[3];
                    v141 = v158;
                    DWORD2(v141) = v163[8].i32[0];
                    v164 = v157;
                    DWORD2(v164) = v163[8].i32[1];
                    DWORD2(v158) = DWORD2(v164);
                    DWORD2(v157) = DWORD2(v141);
                    *v163[4].f32 = v141;
                    *v163[6].f32 = v164;
                    v165 = v163[1];
                    src = v158;
                    v187 = v164;
                    v188 = v157;
                    v189 = v141;
                    if (v165)
                    {
                      objc_copyStruct((*&v165 + 272), &src, 64, 1, 0);
                    }
                  }
                }

                v160 += 3;
              }

              v166 = *(v3 + 64);
              *&v167 = v177;
              *&v168 = v177;
              *(&v168 + 1) = v166;
              *&v141 = *(v3 + 24);
              v169 = v141;
              DWORD2(v169) = v166.i32[1];
              *(v3 + 16) = v177;
              *(&v167 + 1) = vdup_lane_s32(v166, 1);
              *(&v141 + 1) = v166;
              *(v3 + 32) = v168;
              *(v3 + 48) = v169;
              v170 = *(v3 + 8);
              src = v167;
              v187 = v169;
              v188 = v141;
              v189 = v168;
              if (v170)
              {
                objc_copyStruct((v170 + 272), &src, 64, 1, 0);
                v166 = *(v3 + 64);
                v170 = *(v3 + 8);
              }

              v171 = *(v3 + 16);
              *&v172 = v176;
              *(v3 + 24) = v176;
              *&v173 = v171;
              *(&v173 + 1) = v166;
              *&v174 = v176;
              *(&v174 + 1) = vdup_lane_s32(v166, 1);
              *(v3 + 32) = v173;
              *(v3 + 48) = v174;
              DWORD2(v171) = v166.i32[1];
              *(&v172 + 1) = v166;
              src = v171;
              v187 = v174;
              v188 = v172;
              v189 = v173;
              if (v170)
              {
                objc_copyStruct((v170 + 272), &src, 64, 1, 0);
              }

              v144 = 0;
              if (!v115)
              {
LABEL_126:
                if (__p[0])
                {
                  operator delete(__p[0]);
                }

                if (!v144)
                {
                  goto LABEL_148;
                }

LABEL_129:
                v15 += 3;
                if (v15 == v14)
                {
                  goto LABEL_148;
                }

                continue;
              }
            }
          }

          else
          {
            v144 = 1;
            v14 = v180;
            if (!v115)
            {
              goto LABEL_126;
            }
          }

          break;
        }

        operator delete(v115);
        goto LABEL_126;
      }

      goto LABEL_148;
    }

    if (!*(v182 + 4))
    {
      v39 = *v182;
      v40 = vsub_f32(*(*v182 + 16), *(*v182 + 24));
      v41 = sqrtf(vaddv_f32(vmul_f32(v40, v40)));
      if (v41 > v13 || (v42 = vsub_f32(*(v3 + 16), *(v3 + 24)), v41 > (v10 * sqrtf(vaddv_f32(vmul_f32(v42, v42))))))
      {
        v43 = sub_2621C92AC((v3 + 16), (*v182 + 16), 0);
        v45 = vsub_f32(*(v3 + 16), *(v3 + 24));
        if (sqrtf(vaddv_f32(vmul_f32(v45, v45))) >= v8)
        {
          v46 = v9;
        }

        else
        {
          v46 = v12;
        }

        v47 = fabsf(v43 + -90.0);
        if (v47 <= v46)
        {
          if (v47 < v11)
          {
            goto LABEL_148;
          }

          v67 = *(v15 + 2);
          v68 = v39[2];
          v69 = vsub_f32(v39[3], v68);
          v68.f32[0] = -*&v69.i32[1];
          v70 = vzip1_s32(v68, v69);
          v71 = *(v6 + 8 * v67);
          v72 = vadd_f32(v71, v70);
          v73 = 1 - v67;
          v74 = vsub_f32(v71, v72);
          v75 = vaddv_f32(vmul_f32(vsub_f32(*(v6 + 8 * v73), v72), v74));
          v76 = vaddv_f32(vmul_f32(v74, v74));
          if (v76 < 0.000001)
          {
            v76 = 0.000001;
          }

          *__p = *v6;
          __p[v73] = vmla_n_f32(v72, v74, v75 / v76);
          *v6 = *__p;
          v77 = *(v3 + 16);
          v78 = v77;
          DWORD2(v78) = *(v3 + 64);
          *&v44 = *(v3 + 24);
          v79 = v44;
          DWORD2(v79) = *(v3 + 68);
          DWORD2(v77) = DWORD2(v79);
          DWORD2(v44) = DWORD2(v78);
          *(v3 + 32) = v78;
          *(v3 + 48) = v79;
          v63 = *(v3 + 8);
          src = v77;
          v187 = v79;
          v188 = v44;
          v189 = v78;
          if (!v63)
          {
            goto LABEL_148;
          }

          goto LABEL_43;
        }

        v8 = a1[4];
        v9 = a1[5];
        v11 = a1[7];
        v10 = a1[8];
        v12 = a1[6];
        v13 = a1[2];
      }
    }

    if (*(v15 + 4) != 1)
    {
      goto LABEL_13;
    }

    v16 = *v15;
    v17 = vsub_f32((*v15)[2], (*v15)[3]);
    v18 = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
    if (v18 <= v13)
    {
      v19 = vsub_f32(*(v3 + 16), *(v3 + 24));
      if (v18 <= (v10 * sqrtf(vaddv_f32(vmul_f32(v19, v19)))))
      {
        goto LABEL_13;
      }
    }

    v20 = sub_2621C92AC((v3 + 16), *v15 + 2, 0);
    v21 = *(v3 + 16);
    v22 = *(v3 + 24);
    *&v23 = vsub_f32(v21, v22);
    v24 = sqrtf(vaddv_f32(vmul_f32(*&v23, *&v23))) >= v8 ? v9 : v12;
    v25 = fabsf(v20 + -90.0);
    if (v25 > v24)
    {
LABEL_13:
      v179 = (v3 + 16);
      goto LABEL_67;
    }

    if (v25 < v11)
    {
      goto LABEL_148;
    }

    v48 = *(v15 + 2);
    v49 = vmul_f32(vadd_f32(v21, v22), 0x3F0000003F000000);
    v50 = v16[2];
    v51 = vsub_f32(v16[3], v50);
    v52 = vaddv_f32(vmul_f32(vsub_f32(v49, v50), v51));
    *&v23 = vaddv_f32(vmul_f32(v51, v51));
    if (*&v23 < 0.000001)
    {
      *&v23 = 0.000001;
    }

    v53 = vmla_n_f32(v50, v51, v52 / *&v23);
    v54 = 1 - v48;
    v55 = *(v6 + 8 * (1 - v48));
    v56 = vsub_f32(v49, v53);
    v57 = vaddv_f32(vmul_f32(v56, v56));
    *__p = *v6;
    __p[v48] = v53;
    *v6 = *__p;
    v58 = *(v3 + 16);
    *&v23 = *(v3 + 24);
    v61 = v23;
    DWORD2(v61) = *(v3 + 32);
    v59 = *(v3 + 64);
    *&v60 = *(v3 + 16);
    *(&v60 + 1) = v59;
    DWORD2(v61) = HIDWORD(v59);
    if (v57 >= 0.000001)
    {
      v62 = v57;
    }

    else
    {
      v62 = 0.000001;
    }

    DWORD2(v58) = HIDWORD(v59);
    *(&v23 + 1) = v59;
    *(v3 + 32) = v60;
    *(v3 + 48) = v61;
    v63 = *(v3 + 8);
    src = v58;
    v187 = v61;
    v188 = v23;
    v189 = v60;
    if (v63)
    {
      objc_copyStruct((v63 + 272), &src, 64, 1, 0);
      v59 = *(v3 + 64);
      v63 = *(v3 + 8);
    }

    *__p = *v6;
    __p[v54] = vmla_n_f32(v53, v56, vaddv_f32(vmul_f32(vsub_f32(v55, v53), v56)) / v62);
    *v6 = *__p;
    v64 = *(v3 + 16);
    *&v65 = *(v3 + 16);
    *(&v65 + 1) = v59;
    *&v23 = *(v3 + 24);
    v66 = v23;
    DWORD2(v66) = HIDWORD(v59);
    *(v3 + 32) = v65;
    *(v3 + 48) = v66;
    DWORD2(v64) = HIDWORD(v59);
    *(&v23 + 1) = v59;
    src = v64;
    v187 = v66;
    v188 = v23;
    v189 = v65;
    if (!v63)
    {
LABEL_148:
      if (v182)
      {
        operator delete(v182);
      }

      v2 = v175;
      goto LABEL_151;
    }

LABEL_43:
    objc_copyStruct((v63 + 272), &src, 64, 1, 0);
    goto LABEL_148;
  }
}

void sub_2622B6714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622B676C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*(a3 + 151) < 0)
  {
    if (!*(a3 + 136))
    {
      return;
    }

    goto LABEL_5;
  }

  if (*(a3 + 151))
  {
LABEL_5:
    v9 = *(a2 + 36);
    *v74[0].f32 = *(a3 + 16);
    if (a4 == a5)
    {
      return;
    }

    v10 = (a3 + 128);
    v11 = *v74[0].f32;
    do
    {
      v12 = *(v6 + 151);
      if (v12 < 0)
      {
        v13 = *(v6 + 136);
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else if (*(v6 + 151))
      {
        v13 = *(v6 + 136);
LABEL_11:
        if (v12 >= 0)
        {
          v14 = *(v6 + 151);
        }

        else
        {
          v14 = v13;
        }

        v15 = *(a3 + 151);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(a3 + 136);
        }

        if (v14 == v15)
        {
          v17 = v12 >= 0 ? (v6 + 128) : *(v6 + 128);
          v18 = *v10;
          v19 = (v16 >= 0 ? a3 + 128 : *v10);
          if (!memcmp(v17, v19, v14))
          {
            goto LABEL_75;
          }
        }

        v73 = *(v6 + 16);
        sub_2621DCD34(&v71, v74, &v73);
        v20 = v71;
        v21 = v71 + 1;
        v22 = *v71;
        if (v71 == v72 || v21 == v72)
        {
          v29 = v71;
          if (v22 < v9)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v23 = *v71;
          v24 = v71 + 1;
          v25 = v71;
          v26 = v71 + 1;
          do
          {
            v27 = *v26++;
            v28 = v27;
            if (v27 < v23)
            {
              v23 = v28;
              v25 = v24;
            }

            v24 = v26;
          }

          while (v26 != v72);
          if (*v25 < v9)
          {
            v29 = v71;
            v30 = v71 + 1;
            do
            {
              v31 = *v30++;
              v32 = v31;
              if (v31 < v22)
              {
                v22 = v32;
                v29 = v21;
              }

              v21 = v30;
            }

            while (v30 != v72);
LABEL_37:
            v33 = (v29 - v71) >> 2;
            *&v69 = v6;
            DWORD2(v69) = v33 / 2;
            HIDWORD(v69) = v33 % 2;
            v70 = 0;
            sub_2622B6C30(a1, &v69);
LABEL_74:
            operator delete(v20);
            goto LABEL_75;
          }
        }

        *&v34 = sub_2621C92AC(v74, &v73, 0);
        LODWORD(v37) = 1127153664;
        if (*&v34 <= 5.0 || *&v34 >= 175.0)
        {
          goto LABEL_74;
        }

        sub_2621DC4A4(&v69, v74, &v73, v34, v37, v35, v36);
        v42 = v69;
        if (v69 == *(&v69 + 1))
        {
          if (v69)
          {
            operator delete(v69);
          }

          goto LABEL_74;
        }

        v43 = (v69 + 8);
        v44 = (v69 + 4);
        v45 = v69;
        if (v69 + 4 != v69 + 8)
        {
          v46 = *v69;
          v47 = (v69 + 4);
          v45 = v69;
          v48 = (v69 + 4);
          do
          {
            v49 = *v48++;
            v50 = v49;
            if (v49 < v46)
            {
              v46 = v50;
              v45 = v47;
            }

            v47 = v48;
          }

          while (v48 != v43);
        }

        if (v43 == *(&v69 + 1))
        {
          v52 = (v69 + 8);
        }

        else
        {
          v51 = (v69 + 12);
          v52 = (v69 + 8);
          if (v69 + 12 != *(&v69 + 1))
          {
            v53 = *v43;
            v52 = (v69 + 8);
            v54 = (v69 + 12);
            do
            {
              v55 = *v54++;
              v56 = v55;
              if (v55 < v53)
              {
                v53 = v56;
                v52 = v51;
              }

              v51 = v54;
            }

            while (v54 != *(&v69 + 1));
          }
        }

        v57 = *v45;
        v58 = *v52;
        sub_2621DC654(&__p, &v73, *&v11, *(&v11 + 8), v39, v40, v41);
        v59 = __p;
        if (v57 >= v9 || v58 < v9)
        {
LABEL_70:
          if (v59)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if ((*__p & 2) != 0)
          {
            if (v44 == v43)
            {
              v61 = v42;
            }

            else
            {
              v60 = *v42;
              v61 = v42;
              v62 = v42 + 1;
              do
              {
                v63 = *v62++;
                v64 = v63;
                if (v63 < v60)
                {
                  v60 = v64;
                  v61 = v44;
                }

                v44 = v62;
              }

              while (v62 != v43);
            }

            v65 = v6;
            v66 = (v61 - v42) >> 2;
            v67 = 0x1FFFFFFFFLL;
            sub_2622B6C30(a1, &v65);
            goto LABEL_70;
          }

LABEL_71:
          operator delete(v59);
        }

        if (v42)
        {
          operator delete(v42);
        }

        goto LABEL_74;
      }

LABEL_75:
      v6 += 176;
    }

    while (v6 != a5);
  }
}

void sub_2622B6B00(_Unwind_Exception *a1)
{
  operator delete(v4);
  if (v3)
  {
    operator delete(v3);
  }

  operator delete(v2);
  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_2622B6B58(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_2622B6BB0(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *(a1 + 16);
  *(&v3 + 1) = *(&v8 + 1);
  *(&src[-1] + a2) = a3;
  *(&v4 + 1) = *(&v8 + 1);
  *(a1 + 16) = v8;
  *&v4 = *(a1 + 16);
  *&v3 = *(a1 + 24);
  v5 = v4;
  DWORD2(v5) = *(a1 + 64);
  v6 = v3;
  DWORD2(v6) = *(a1 + 68);
  DWORD2(v4) = DWORD2(v6);
  DWORD2(v3) = DWORD2(v5);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v7 = *(a1 + 8);
  src[0] = v4;
  src[1] = v6;
  src[2] = v3;
  src[3] = v5;
  if (v7)
  {
    objc_copyStruct((v7 + 272), src, 64, 1, 0);
  }
}

void sub_2622B6C30(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2622B6B58(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t *sub_2622B6D34(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_2622B6E14(void *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_msgSend_quad(v1, v2, v3);
  v54 = v4;
  objc_msgSend_quad(v1, v5, v6);
  v52 = v7;

  if (v1)
  {
    objc_copyStruct(&dest, v1 + 240, 16, 1, 0);
    v51 = dest;
    objc_copyStruct(&dest, v1 + 240, 16, 1, 0);
    v50 = dest;
    objc_copyStruct(&dest, v1 + 256, 16, 1, 0);
    v10 = v52;
    v11 = v50;
    v12 = vsubq_f32(v54, v51);
    v13 = dest;
  }

  else
  {
    v11 = 0uLL;
    v10 = v52;
    v12 = v54;
    v13 = 0uLL;
  }

  v14 = vsubq_f32(v10, v11);
  v16 = vmulq_f32(v12, v13);
  v15 = sqrtf(vaddv_f32(*&vmulq_f32(v13, v13)));
  v16.f32[0] = (vaddv_f32(*v16.f32) / sqrtf(vaddv_f32(*&vmulq_f32(v12, v12)))) * v15;
  v17 = (vaddv_f32(*&vmulq_f32(v14, v13)) / sqrtf(vaddv_f32(*&vmulq_f32(v14, v14)))) * v15;
  v18 = (-v13.f32[1] * v12.f32[0]) + (v13.f32[0] * v12.f32[1]);
  v19 = (-v13.f32[1] * v14.f32[0]) + (v13.f32[0] * v14.f32[1]);
  v58 = 0uLL;
  if (v18 > 0.0 && v19 > 0.0)
  {
    if (v16.f32[0] <= v17)
    {
LABEL_16:
      v20.i64[1] = v54.i64[1];
      v58.i64[0] = v54.i64[0];
      v58.i64[1] = v10.i64[0];
      v20.i64[0] = v10.i64[0];
      goto LABEL_17;
    }

LABEL_13:
    v20 = v54;
    v58.i64[0] = v10.i64[0];
    v58.i64[1] = v54.i64[0];
LABEL_17:
    v53 = v20;
    goto LABEL_18;
  }

  if (v18 < 0.0 && v19 < 0.0)
  {
    if (v16.f32[0] > v17)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v18 <= 0.0 && v19 >= 0.0)
  {
    goto LABEL_13;
  }

  v16.i64[0] = 0;
  v53 = v16;
  if (v18 >= 0.0 && v19 <= 0.0)
  {
    goto LABEL_16;
  }

LABEL_18:
  objc_msgSend_quad(v1, v8, v9, *&v50);
  dest.i32[0] = v21;
  objc_msgSend_quad(v1, v22, v23);
  dest.i32[1] = v24;
  objc_msgSend_quad(v1, v25, v26);
  dest.i32[2] = v27;
  objc_msgSend_quad(v1, v28, v29);
  dest.i32[3] = v30;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  sub_2621DC430(&v55, &dest, v60, 4uLL);
  v31 = v55;
  v32 = v55 + 1;
  v33 = *v55;
  if (v55 == v56 || v32 == v56)
  {
    v40 = *v55;
  }

  else
  {
    v34 = *v55;
    v35 = v55 + 1;
    v36 = v55;
    v37 = v55 + 1;
    do
    {
      v38 = *v37++;
      v39 = v38;
      if (v38 < v34)
      {
        v34 = v39;
        v36 = v35;
      }

      v35 = v37;
    }

    while (v37 != v56);
    v40 = *v36;
    v41 = v55;
    v42 = v55 + 1;
    do
    {
      v43 = *v42++;
      v44 = v43;
      if (v33 < v43)
      {
        v33 = v44;
        v41 = v32;
      }

      v32 = v42;
    }

    while (v42 != v56);
    v33 = *v41;
  }

  v45 = v58;
  v46 = v58;
  v46.f32[2] = v33;
  v47 = v53;
  v48 = v53;
  v48.f32[2] = v33;
  v47.f32[2] = v40;
  v45.f32[2] = v40;
  dest = v46;
  v60[0] = v48;
  v60[1] = v47;
  v60[2] = v45;
  if (v1)
  {
    objc_copyStruct(v1 + 272, &dest, 64, 1, 0);
  }

  operator delete(v31);

  v49 = *MEMORY[0x277D85DE8];
}

void sub_2622B7120(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void sub_2622B7170(void *a1, int a2, __n128 *a3, __n128 *a4, _DWORD *a5, _OWORD *a6)
{
  v11 = a1;
  v12 = v11;
  if (v11)
  {
    v11[105] = a2;
    if (a2)
    {
      src = *a3;
      objc_copyStruct(v11 + 240, &src, 16, 1, 0);
      src = *a4;
      objc_copyStruct(v12 + 256, &src, 16, 1, 0);
      goto LABEL_11;
    }
  }

  else if (a2)
  {
    goto LABEL_11;
  }

  v13 = v11;
  v31 = *a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_circleCenter(v13, v14, v15);
    v31.n128_u64[0] = v16;
  }

  v17 = sub_26223FCEC(v13).n128_u64[0];
  v19 = vsub_f32(v18.n128_u64[0], v17);
  v20.n128_f32[0] = vaddv_f32(vmul_f32(vsub_f32(v31.n128_u64[0], v17), v19));
  v21 = vaddv_f32(vmul_f32(v19, v19));
  if (v21 < 0.000001)
  {
    v21 = 0.000001;
  }

  v20.n128_u64[0] = vsub_f32(vmla_n_f32(v17, v19, v20.n128_f32[0] / v21), v31.n128_u64[0]);
  v22 = vmul_f32(v20.n128_u64[0], v20.n128_u64[0]);
  v22.i32[0] = vadd_f32(v22, vdup_lane_s32(v22, 1)).u32[0];
  v23 = vrsqrte_f32(v22.u32[0]);
  v24 = vmul_f32(v23, vrsqrts_f32(v22.u32[0], vmul_f32(v23, v23)));
  v20.n128_u64[0] = vmul_n_f32(v20.n128_u64[0], vmul_f32(v24, vrsqrts_f32(v22.u32[0], vmul_f32(v24, v24))).f32[0]);
  v18.n128_u64[0] = vmul_f32(vadd_f32(v17, v18.n128_u64[0]), 0x3F0000003F000000);
  __asm { FMOV            V0.2S, #-3.0 }

  v18.n128_u64[0] = vmla_f32(v18.n128_u64[0], _D0, v20.n128_u64[0]);
  v30 = v20;
  v32 = v18;

  src = v32;
  if (v12)
  {
    objc_copyStruct(v13 + 240, &src, 16, 1, 0);
    src = v30;
    objc_copyStruct(v13 + 256, &src, 16, 1, 0);
  }

LABEL_11:
  sub_2622B6E14(v12);
  if (v12)
  {
    *(v12 + 31) = *a5;
    *(v12 + 14) = *a6;
  }
}

void sub_2622B7364(void *a1, void *a2, unsigned int a3, uint64_t a4, float32_t a5)
{
  v40 = a1;
  v9 = a2;
  v12 = sub_26223FCEC(v9).n128_u64[0];
  v14 = v13;
  v15 = 0;
  v42[0] = v12;
  v42[1] = v13;
  v16 = a3;
  v17 = vsub_f32(v13, v12);
  v13.f32[0] = -*&v17.i32[1];
  v18 = vzip1_s32(v13, v17);
  while (objc_msgSend_count(v40, v10, v11) > v15)
  {
    v20 = objc_msgSend_objectAtIndexedSubscript_(v40, v19, v15);
    v21 = v20;
    if (v16 == v15)
    {
      goto LABEL_23;
    }

    v22 = sub_26223FCEC(v20).n128_u64[0];
    v24 = v23;
    v41[0] = v22;
    v41[1] = v23;
    v25 = v42[sub_2621DCEC8(v42, v41)];
    v27 = v41[v26];
    v28 = vsub_f32(v25, v27);
    if (sqrtf(vaddv_f32(vmul_f32(v28, v28))) < a5)
    {
      v29 = vsub_f32(v12, v25);
      if (sqrtf(vaddv_f32(vmul_f32(v29, v29))) < 0.00001 || (v30 = vsub_f32(v12, v27), sqrtf(vaddv_f32(vmul_f32(v30, v30))) < 0.00001))
      {
        if (!v21 || v21[29] != 3)
        {
          *(a4 + 3) = 0;
        }
      }

      v31 = vsub_f32(v14, v25);
      if (sqrtf(vaddv_f32(vmul_f32(v31, v31))) < 0.00001 || (v32 = vsub_f32(v14, v27), sqrtf(vaddv_f32(vmul_f32(v32, v32))) < 0.00001))
      {
        if (v21 && v21[29] == 3)
        {
          goto LABEL_23;
        }

        *(a4 + 1) = 0;
      }
    }

    if (!v21 || v21[29] != 3)
    {
      v33 = vsub_f32(v24, v22);
      v34 = vmul_f32(v33, v18);
      if (vaddv_f32(v34) != 0.0)
      {
        v35 = v22;
        v36 = vmul_f32(vsub_f32(v12, v22), v18);
        v37 = vmla_n_f32(v22, v33, vdiv_f32(vadd_f32(v36, vdup_lane_s32(v36, 1)), vadd_f32(v34, vdup_lane_s32(v34, 1))).f32[0]);
        if (sub_2621DC76C(v37, v35, v24, 0.00001) < a5)
        {
          v38 = vsub_f32(v12, v37);
          if (sqrtf(vaddv_f32(vmul_f32(v38, v38))) < a5)
          {
            *(a4 + 3) = 0;
          }

          v39 = vsub_f32(v14, v37);
          if (sqrtf(vaddv_f32(vmul_f32(v39, v39))) < a5)
          {
            *(a4 + 1) = 0;
          }
        }
      }
    }

LABEL_23:

    ++v15;
  }
}

void sub_2622B75F8(void *a1, void *a2, void *a3, __n128 *a4, __n128 *a5, int a6)
{
  v183[8] = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = v8;
  v12 = v9;
  v15 = v12;
  v148 = v10;
  if (v11)
  {
    v152 = objc_msgSend_count(v11, v13, v14);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v152 = 0;
    if (v12)
    {
LABEL_3:
      v16 = objc_msgSend_count(v15, v13, v14);
      v165 = 0;
      v166 = 0;
      v164 = &v165;
      LODWORD(v176[0]) = 0;
      if (v16 >= 1)
      {
        v18 = 0;
        v149 = v16;
        do
        {
          if (v152 >= 1)
          {
            for (i = 0; i != v152; ++i)
            {
              v20 = objc_msgSend_objectAtIndexedSubscript_(v15, v17, SLODWORD(v176[0]));
              v23 = objc_msgSend_identifier(v20, v21, v22);
              v25 = objc_msgSend_objectAtIndexedSubscript_(v11, v24, i);
              v28 = objc_msgSend_identifier(v25, v26, v27);
              isEqual = objc_msgSend_isEqual_(v23, v29, v28);

              if (isEqual)
              {
                *&dest[0] = v176;
                *(sub_2622B6D34(&v164, v176[0]) + 8) = i;
              }
            }

            v18 = v176[0];
            v16 = v149;
          }

          LODWORD(v176[0]) = ++v18;
        }

        while (v18 < v16);
      }

      goto LABEL_15;
    }
  }

  v165 = 0;
  v166 = 0;
  v164 = &v165;
LABEL_15:

  v33 = 0;
  v163 = -1;
  v162 = 0uLL;
  while (1)
  {
    LODWORD(v171) = v33;
    if (objc_msgSend_count(v15, v31, v32) <= v33)
    {
      break;
    }

    v35 = objc_msgSend_objectAtIndexedSubscript_(v15, v34, v171);
    v36 = v35;
    v37 = v165;
    if (!v165)
    {
      goto LABEL_26;
    }

    v38 = &v165;
    do
    {
      v39 = v37;
      v40 = v38;
      v41 = *(v37 + 7);
      if (v41 >= v171)
      {
        v38 = v37;
      }

      v37 = v37[v41 < v171];
    }

    while (v37);
    if (v38 == &v165)
    {
      goto LABEL_26;
    }

    if (v41 < v171)
    {
      v39 = v40;
    }

    if (v171 < *(v39 + 7))
    {
LABEL_26:
      sub_2622B7170(v35, 0, a4, a5, &v163, &v162);
      goto LABEL_27;
    }

    *&dest[0] = &v171;
    v43 = *(sub_2622B6D34(&v164, v171) + 8);
    if (a6 == 3)
    {
      v46 = objc_msgSend_objectAtIndexedSubscript_(v11, v42, v43);
      if (v46)
      {
        v47 = v46[30] == 3;

        if (v47)
        {
LABEL_35:
          sub_2622B7170(v36, 0, a4, a5, &v163, &v162);
          goto LABEL_27;
        }
      }
    }

    else if (!a6)
    {
      v44 = objc_msgSend_objectAtIndexedSubscript_(v11, v42, v43);
      if (v44)
      {
        v45 = v44[29] == 3;

        if (v45)
        {
          goto LABEL_35;
        }
      }
    }

    v49 = objc_msgSend_objectAtIndexedSubscript_(v11, v42, v43);
    if (v49)
    {
      objc_copyStruct(dest, (v49 + 240), 16, 1, 0);
      v50 = dest[0];
    }

    else
    {
      v50 = 0uLL;
    }

    *v176 = v50;
    v51 = objc_msgSend_objectAtIndexedSubscript_(v11, v48, v43);
    if (v51)
    {
      objc_copyStruct(dest, (v51 + 256), 16, 1, 0);
      v52 = dest[0];
    }

    else
    {
      v52 = 0uLL;
    }

    *v174 = v52;
    sub_2622B7170(v36, 2, v176, v174, &v163, &v162);

LABEL_27:
    v33 = v171 + 1;
  }

  v53 = v11;
  v54 = v15;
  v55 = *a5;
  v56 = vmulq_f32(*a5, xmmword_2623A7700);
  v57 = v56.f32[2] + vaddv_f32(*v56.f32);
  v58 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v55, v55)));
  *v56.f32 = vrsqrte_f32(v58);
  *v56.f32 = vmul_f32(*v56.f32, vrsqrts_f32(v58.u32[0], vmul_f32(*v56.f32, *v56.f32)));
  *v55.f32 = vmul_n_f32(a5->n128_u64[0], vmul_f32(*v56.f32, vrsqrts_f32(v58.u32[0], vmul_f32(*v56.f32, *v56.f32))).f32[0]);
  v59 = dest;
  v60 = vdup_lane_s32(*v55.f32, 1);
  __asm { FMOV            V2.4S, #5.0 }

  v153 = _Q2;
  v155 = *a4;
  v160 = v55;
  v150 = vmlaq_f32(*a4, _Q2, v55);
  v65 = 1;
  do
  {
    v66 = v65 & 1;
    if (v65)
    {
      v67 = -0.5236;
    }

    else
    {
      v67 = -0.34907;
    }

    if (v65)
    {
      v68 = 0.34907;
    }

    else
    {
      v68 = 0.5236;
    }

    v69 = __sincosf_stret(v67);
    v70.f32[0] = -v69.__sinval;
    v70.i32[1] = LODWORD(v69.__cosval);
    v71.i64[1] = v160.i64[1];
    *v71.f32 = vmla_f32(vmul_n_f32(__PAIR64__(LODWORD(v69.__sinval), LODWORD(v69.__cosval)), v160.f32[0]), v60, v70);
    v157 = v71;
    v74 = __sincosf_stret(v68);
    v65 = 0;
    v75.f32[0] = -v74.__sinval;
    v75.i32[1] = LODWORD(v74.__cosval);
    v76.i32[3] = v160.i32[3];
    *v76.f32 = vmla_f32(vmul_n_f32(__PAIR64__(LODWORD(v74.__sinval), LODWORD(v74.__cosval)), v160.f32[0]), v60, v75);
    v76.i32[2] = 0;
    *v59 = v155;
    v59[1] = vmlaq_f32(v155, v153, v157);
    v59[2] = v150;
    v59[3] = vmlaq_f32(v155, v153, v76);
    v59 = v183;
  }

  while (v66);
  v77 = 0;
  v78 = fabsf(v57);
  while (objc_msgSend_count(v54, v72, *&v73) > v77)
  {
    v80 = objc_msgSend_objectAtIndexedSubscript_(v54, v79, v77);
    objc_msgSend_quad(v80, v81, v82);
    v161 = v83;
    objc_msgSend_quad(v80, v84, v85);
    v158 = v86;
    v181 = 16843009;
    memset_pattern16(__b, &unk_2623A7E60, 0x10uLL);
    if (objc_msgSend_individualUpdate(v80, v87, v88))
    {
      if (objc_msgSend_individualUpdate(v80, v89, v90) == 2)
      {
        v93 = v165;
        if (v165)
        {
          v94 = &v165;
          v95 = v165;
          do
          {
            v96 = v95;
            v97 = v94;
            v98 = *(v95 + 7);
            if (v77 <= v98)
            {
              v94 = v95;
            }

            v95 = v95[v77 > v98];
          }

          while (v95);
          if (v94 != &v165)
          {
            if (v77 > v98)
            {
              v96 = v97;
            }

            if (v77 >= *(v96 + 7))
            {
              while (1)
              {
                while (1)
                {
                  v99 = *(v93 + 7);
                  if (v77 >= v99)
                  {
                    break;
                  }

                  v93 = *v93;
                  if (!v93)
                  {
                    goto LABEL_122;
                  }
                }

                if (v77 <= v99)
                {
                  break;
                }

                v93 = v93[1];
                if (!v93)
                {
LABEL_122:
                  sub_2621C84A8("map::at:  key not found");
                }
              }

              v100 = *(v93 + 8);
              if ((v100 & 0x80000000) == 0 && objc_msgSend_count(v53, v91, v92) > v100)
              {
                v102 = objc_msgSend_objectAtIndexedSubscript_(v53, v101, v100);
                v147 = v53;
                objc_msgSend_quad(v102, v103, v104);
                v151 = v105;
                objc_msgSend_quad(v102, v106, v107);
                v109 = fabsf(COERCE_FLOAT(vsubq_f32(v161, v151).i32[2])) / 0.15;
                if (v109 <= 1.0)
                {
                  v110 = v109;
                }

                else
                {
                  v110 = 1.0;
                }

                v111 = fabsf(COERCE_FLOAT(vsubq_f32(v108, v158).i32[2])) / 0.15;
                if (v111 <= 1.0)
                {
                  v112 = v111;
                }

                else
                {
                  v112 = 1.0;
                }

                v178 = sub_26223FCEC(v80).n128_u64[0];
                v179 = v113;
                v181 = 0;
                BYTE1(v181) = objc_msgSend_edgeStates(v102, v114, v115) >> 8;
                HIBYTE(v181) = objc_msgSend_edgeStates(v102, v116, v117) >> 24;
                if (v78 < 0.86603)
                {
                  if (sub_262247B68(dest, 4, &v178))
                  {
                    HIBYTE(v181) = 0;
                  }

                  if (sub_262247B68(v183, 4, &v179))
                  {
                    BYTE1(v181) = 0;
                  }
                }

                v176[0] = 0;
                v176[1] = 0;
                v177 = 0;
                v174[0] = 0;
                v174[1] = 0;
                v175 = 0;
                v171 = sub_26223FCEC(v80).n128_u64[0];
                v172 = v118;
                v119 = sub_26223FCEC(v102).n128_u64[0];
                if (sub_26229E760(&v171, v176, v174, v119, v120, 0.05))
                {
                  v121 = sub_26223FCEC(v80).n128_u64[0];
                  v122 = v174[0];
                  v123 = v174[1];
                  v124 = sub_26229E8EC(v174[0], v174[1], v121);
                  sub_26223FCEC(v80);
                  v126 = sub_26229E8EC(v122, v123, v125);
                  if (v124 > 0.0)
                  {
                    HIBYTE(v181) = 1;
                    v127 = v124 / 0.15;
                    if ((v124 / 0.15) > 1.0)
                    {
                      v127 = 1.0;
                    }

                    __b[3] = v127;
                  }

                  v53 = v147;
                  if (v126 > 0.0)
                  {
                    BYTE1(v181) = 1;
                    v128 = v126 / 0.15;
                    if (v128 > 1.0)
                    {
                      v128 = 1.0;
                    }

                    __b[1] = v128;
                  }
                }

                v171 = 0;
                v172 = 0;
                v173 = 0;
                __p = 0;
                v169 = 0;
                v170 = 0;
                v167[0] = sub_26223FCEC(v102).n128_u64[0];
                v167[1] = v129;
                v130 = sub_26223FCEC(v80).n128_u64[0];
                if (sub_26229E760(v167, &v171, &__p, v130, v131, 0.05))
                {
                  v132 = sub_26223FCEC(v102).n128_u64[0];
                  v133 = __p;
                  v134 = v169;
                  v135 = sub_26229E8EC(__p, v169, v132);
                  sub_26223FCEC(v102);
                  v137 = sub_26229E8EC(v133, v134, v136);
                  if (v135 > 0.0)
                  {
                    HIBYTE(v181) = 1;
                    v138 = v135 / 0.15;
                    if ((v135 / 0.15) > 1.0)
                    {
                      v138 = 1.0;
                    }

                    __b[3] = v138;
                  }

                  v53 = v147;
                  if (v137 > 0.0)
                  {
                    BYTE1(v181) = 1;
                    v139 = v137 / 0.15;
                    if (v139 > 1.0)
                    {
                      v139 = 1.0;
                    }

                    __b[1] = v139;
                  }
                }

                sub_2622B7364(v54, v80, v77, &v181, 0.05);
                LOBYTE(v181) = 1;
                __b[0] = v110;
                BYTE2(v181) = 1;
                v142 = 0;
                __b[2] = v112;
                do
                {
                  v167[0].i32[0] = objc_msgSend_edgeStates(v102, v140, v141);
                  _CF = v167[0].u8[v142] != *(&v181 + v142) || v142 >= 3;
                  ++v142;
                }

                while (!_CF);
                if (v80)
                {
                  *(v80 + 105) = 1;
                  *(v80 + 124) = v181;
                  v144 = __b[3];
                  v145 = __b[1];
                  *(v80 + 224) = v110;
                  *(v80 + 228) = v145;
                  *(v80 + 232) = v112;
                  *(v80 + 236) = v144;
                }

                if (__p)
                {
                  operator delete(__p);
                }

                if (v171)
                {
                  operator delete(v171);
                }

                if (v174[0])
                {
                  operator delete(v174[0]);
                }

                if (v176[0])
                {
                  operator delete(v176[0]);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_2622B7364(v54, v80, v77, &v181, 0.05);
      if (v80)
      {
        *(v80 + 124) = v181;
        *(v80 + 224) = *__b;
      }
    }

    ++v77;
  }

  sub_2621C6C04(v165);
  v146 = *MEMORY[0x277D85DE8];
}

void sub_2622B7FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a39)
  {
    operator delete(a39);
  }

  sub_2621C6C04(a25);
  _Unwind_Resume(a1);
}

void sub_2622B8150(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262224B84();
}

void sub_2622B84FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  v27 = *(v25 + 128);
  if (v27)
  {
    sub_2621D1B78(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622B855C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_262258F3C(a1, a2);
  }

  else
  {
    sub_262258DB0(a1[1], a2);
    result = v3 + 320;
    a1[1] = v3 + 320;
  }

  a1[1] = result;
  return result;
}

void sub_2622B85B0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2622B8670(uint64_t result, unint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v7 = result;
  v271 = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = a2;
  v9 = a2 - 320;
  v228 = a2 - 960;
  v229 = a2 - 640;
  v10 = v7;
  while (1)
  {
    v7 = v10;
    v11 = v8 - v10;
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 6);
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3:
        v81 = (*a3)(v10 + 320, v10);
        result = (*a3)(v9, v10 + 320);
        if (v81)
        {
          if (result)
          {
            goto LABEL_121;
          }

          sub_2622BA094(v10, v10 + 320);
          result = (*a3)(v9, v10 + 320);
          if (result)
          {
            v82 = *MEMORY[0x277D85DE8];
            v83 = v10 + 320;
            goto LABEL_122;
          }
        }

        else if (result)
        {
          v79 = v10 + 320;
          v80 = a2 - 320;
          goto LABEL_192;
        }

LABEL_204:
        v227 = *MEMORY[0x277D85DE8];
        return result;
      case 4:
        v84 = *MEMORY[0x277D85DE8];

        return sub_2622BA2A0(v10, v10 + 320, v10 + 640, v9, a3);
      case 5:
        sub_2622BA2A0(v10, v10 + 320, v10 + 640, v10 + 960, a3);
        result = (*a3)(v9, v10 + 960);
        if (result)
        {
          sub_2622BA094(v10 + 960, v9);
          result = (*a3)(v10 + 960, v10 + 640);
          if (result)
          {
            sub_2622BA094(v10 + 640, v10 + 960);
            result = (*a3)(v10 + 640, v10 + 320);
            if (result)
            {
              v79 = v10 + 320;
              v80 = v10 + 640;
LABEL_192:
              sub_2622BA094(v79, v80);
              result = (*a3)(v10 + 320, v10);
              if (result)
              {
                v202 = *MEMORY[0x277D85DE8];
                v86 = v10 + 320;
                v83 = v10;
                goto LABEL_123;
              }
            }
          }
        }

        goto LABEL_204;
    }

LABEL_10:
    if (v11 <= 7679)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v87 = v10 + 320;
          if (v10 + 320 != a2)
          {
            v88 = 0;
            v89 = v10;
            do
            {
              v90 = v89;
              v89 = v87;
              result = (*a3)(v87, v90);
              if (result)
              {
                sub_262258DB0(&v253, v89);
                v91 = v88;
                while (1)
                {
                  v92 = v91;
                  v93 = v7 + v91;
                  objc_storeStrong((v7 + v91 + 328), *(v7 + v91 + 8));
                  v94 = *(v93 + 96);
                  *(v93 + 400) = *(v93 + 80);
                  *(v93 + 416) = v94;
                  *(v93 + 425) = *(v93 + 105);
                  v95 = *(v93 + 32);
                  *(v93 + 336) = *(v93 + 16);
                  *(v93 + 352) = v95;
                  v96 = *(v93 + 64);
                  *(v93 + 368) = *(v93 + 48);
                  *(v93 + 384) = v96;
                  std::string::operator=((v93 + 448), (v93 + 128));
                  v97 = v7 + v92;
                  std::string::operator=((v7 + v92 + 472), (v7 + v92 + 152));
                  objc_storeStrong((v97 + 496), *(v97 + 176));
                  *(v97 + 528) = *(v97 + 208);
                  *(v97 + 540) = *(v97 + 220);
                  v98 = v7 + v92;
                  v99 = *(v7 + v92 + 256);
                  *(v98 + 560) = *(v7 + v92 + 240);
                  *(v98 + 576) = v99;
                  *(v98 + 592) = *(v7 + v92 + 272);
                  sub_26225945C(v7 + v92 + 608, *(v7 + v92 + 288), *(v7 + v92 + 296), (*(v7 + v92 + 296) - *(v7 + v92 + 288)) >> 3);
                  *(v98 + 632) = *(v98 + 312);
                  if (!v92)
                  {
                    break;
                  }

                  v100 = (*a3)(&v253, v7 + v92 - 320);
                  v91 = v92 - 320;
                  if ((v100 & 1) == 0)
                  {
                    v101 = v7 + v92;
                    v102 = v7 + v92;
                    v103 = (v7 + v92 + 16);
                    v104 = (v102 + 128);
                    v231 = (v102 + 152);
                    v105 = (v102 + 240);
                    v106 = (v102 + 208);
                    goto LABEL_136;
                  }
                }

                v103 = (v7 + 16);
                v104 = (v7 + 128);
                v231 = (v7 + 152);
                v105 = (v7 + 240);
                v106 = (v7 + 208);
                v101 = v7;
LABEL_136:
                objc_storeStrong((v101 + 8), obj);
                v107 = v255;
                v108 = v257;
                v103[1] = v256;
                v103[2] = v108;
                *v103 = v107;
                v109 = v258;
                v110 = v259;
                v111 = v260[0];
                *(v103 + 89) = *(v260 + 9);
                v103[4] = v110;
                v103[5] = v111;
                v103[3] = v109;
                std::string::operator=(v104, &v261);
                std::string::operator=(v231, &v262);
                objc_storeStrong((v101 + 176), v263);
                v112 = v264[0];
                *(v106 + 12) = *(v264 + 12);
                *v106 = v112;
                v113 = v265;
                v114 = v267;
                v105[1] = v266;
                v105[2] = v114;
                *v105 = v113;
                if (v101 != &v253)
                {
                  sub_26225945C(v101 + 288, *v268, *v269, (*v269 - *v268) >> 3);
                }

                *(v101 + 312) = v270;
                v253 = off_2874EE620;
                v235 = v268;
                sub_2621C512C(&v235);

                result = sub_2621C50C4(&v253);
              }

              v87 = v89 + 320;
              v88 += 320;
            }

            while (v89 + 320 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v203 = v10 + 320;
        if (v10 + 320 != a2)
        {
          v204 = v10 + 632;
          do
          {
            v205 = v7;
            v7 = v203;
            result = (*a3)(v203, v205);
            if (result)
            {
              sub_262258DB0(&v253, v7);
              v206 = v204;
              do
              {
                v207 = v206;
                objc_storeStrong(v206 - 38, *(v206 - 78));
                v208 = v206 - 74;
                v209 = v206 - 154;
                v210 = *(v206 - 146);
                *(v206 - 62) = *(v206 - 142);
                v211 = *(v206 - 134);
                *(v206 - 58) = *(v206 - 138);
                *(v206 - 54) = v211;
                v212 = *(v206 - 150);
                *v208 = *(v206 - 154);
                v208[1] = v212;
                v208[2] = v210;
                v213 = (v206 - 126);
                *(v206 - 207) = *(v206 - 527);
                std::string::operator=((v206 - 46), v206 - 21);
                v214 = (v206 - 120);
                std::string::operator=((v206 - 40), v206 - 20);
                objc_storeStrong(v206 - 17, *(v206 - 57));
                v215 = v206 - 106;
                *(v206 - 26) = *(v206 - 106);
                *(v206 - 23) = *(v206 - 103);
                v216 = v206 - 98;
                v217 = *(v206 - 94);
                *(v206 - 18) = *(v206 - 98);
                *(v206 - 14) = v217;
                *(v206 - 10) = *(v206 - 90);
                sub_26225945C((v206 - 6), *(v206 - 43), *(v206 - 42), (*(v206 - 42) - *(v206 - 43)) >> 3);
                v206 -= 80;
                *v207 = *(v207 - 80);
              }

              while (((*a3)(&v253, (v207 - 238)) & 1) != 0);
              v218 = (v207 - 158);
              objc_storeStrong(v218 + 1, obj);
              v219 = v255;
              v220 = v257;
              v209[1] = v256;
              v209[2] = v220;
              *v209 = v219;
              v221 = v258;
              v222 = v259;
              v223 = v260[0];
              *(v209 + 89) = *(v260 + 9);
              v209[4] = v222;
              v209[5] = v223;
              v209[3] = v221;
              std::string::operator=(v213, &v261);
              std::string::operator=(v214, &v262);
              objc_storeStrong(v218 + 22, v263);
              v224 = v264[0];
              *(v215 + 12) = *(v264 + 12);
              *v215 = v224;
              v225 = v265;
              v226 = v267;
              v216[1] = v266;
              v216[2] = v226;
              *v216 = v225;
              if (v218 != &v253)
              {
                sub_26225945C((v218 + 36), *v268, *v269, (*v269 - *v268) >> 3);
              }

              *(v218 + 78) = v270;
              v253 = off_2874EE620;
              v235 = v268;
              sub_2621C512C(&v235);

              result = sub_2621C50C4(&v253);
            }

            v203 = v7 + 320;
            v204 += 320;
          }

          while (v7 + 320 != a2);
        }
      }

      goto LABEL_204;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v115 = (v12 - 2) >> 1;
        v232 = v115;
        do
        {
          v116 = v115;
          if (v232 >= v115)
          {
            v117 = (2 * v115) | 1;
            v118 = v7 + 320 * v117;
            if (2 * v115 + 2 < v12 && (*a3)(v7 + 320 * v117, v118 + 320))
            {
              v118 += 320;
              v117 = 2 * v116 + 2;
            }

            v119 = v7 + 320 * v116;
            result = (*a3)(v118, v119);
            if ((result & 1) == 0)
            {
              sub_262258DB0(&v253, v7 + 320 * v116);
              do
              {
                v120 = v118;
                objc_storeStrong((v119 + 8), *(v118 + 8));
                v121 = *(v118 + 16);
                v122 = *(v118 + 48);
                *(v119 + 32) = *(v118 + 32);
                *(v119 + 48) = v122;
                *(v119 + 16) = v121;
                v123 = *(v118 + 64);
                v124 = *(v118 + 80);
                v125 = *(v118 + 96);
                *(v119 + 105) = *(v118 + 105);
                *(v119 + 80) = v124;
                *(v119 + 96) = v125;
                *(v119 + 64) = v123;
                std::string::operator=((v119 + 128), (v118 + 128));
                std::string::operator=((v119 + 152), (v118 + 152));
                objc_storeStrong((v119 + 176), *(v118 + 176));
                v126 = *(v118 + 208);
                *(v119 + 220) = *(v118 + 220);
                *(v119 + 208) = v126;
                v127 = *(v118 + 240);
                v128 = *(v118 + 272);
                *(v119 + 256) = *(v118 + 256);
                *(v119 + 272) = v128;
                *(v119 + 240) = v127;
                if (v119 != v118)
                {
                  sub_26225945C(v119 + 288, *(v118 + 288), *(v118 + 296), (*(v118 + 296) - *(v118 + 288)) >> 3);
                }

                *(v119 + 312) = *(v118 + 312);
                if (v232 < v117)
                {
                  break;
                }

                v129 = (2 * v117) | 1;
                v118 = v7 + 320 * v129;
                v117 = 2 * v117 + 2;
                if (v117 >= v12)
                {
                  v117 = v129;
                }

                else if ((*a3)(v7 + 320 * v129, v118 + 320))
                {
                  v118 += 320;
                }

                else
                {
                  v117 = v129;
                }

                v119 = v120;
              }

              while (!(*a3)(v118, &v253));
              objc_storeStrong((v120 + 8), obj);
              v130 = v255;
              v131 = v257;
              *(v120 + 32) = v256;
              *(v120 + 48) = v131;
              *(v120 + 16) = v130;
              v132 = v258;
              v133 = v259;
              v134 = v260[0];
              *(v120 + 105) = *(v260 + 9);
              *(v120 + 80) = v133;
              *(v120 + 96) = v134;
              *(v120 + 64) = v132;
              std::string::operator=((v120 + 128), &v261);
              std::string::operator=((v120 + 152), &v262);
              objc_storeStrong((v120 + 176), v263);
              v135 = v264[0];
              *(v120 + 220) = *(v264 + 12);
              *(v120 + 208) = v135;
              v136 = v265;
              v137 = v267;
              *(v120 + 256) = v266;
              *(v120 + 272) = v137;
              *(v120 + 240) = v136;
              if (v120 != &v253)
              {
                sub_26225945C(v120 + 288, *v268, *v269, (*v269 - *v268) >> 3);
              }

              *(v120 + 312) = v270;
              v253 = off_2874EE620;
              v235 = v268;
              sub_2621C512C(&v235);

              result = sub_2621C50C4(&v253);
            }
          }

          v115 = v116 - 1;
        }

        while (v116);
        v138 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 6);
        do
        {
          if (v138 >= 2)
          {
            sub_262258DB0(&v235, v7);
            v139 = 0;
            v140 = v7;
            do
            {
              v141 = v140 + 320 * v139;
              v142 = v141 + 320;
              v143 = 2 * v139;
              v139 = (2 * v139) | 1;
              v144 = v143 + 2;
              if (v143 + 2 < v138)
              {
                v145 = v141 + 640;
                if ((*a3)(v141 + 320, v141 + 640))
                {
                  v142 = v145;
                  v139 = v144;
                }
              }

              objc_storeStrong((v140 + 8), *(v142 + 8));
              v146 = *(v142 + 16);
              v147 = *(v142 + 48);
              *(v140 + 32) = *(v142 + 32);
              *(v140 + 48) = v147;
              *(v140 + 16) = v146;
              v148 = *(v142 + 64);
              v149 = *(v142 + 80);
              v150 = *(v142 + 96);
              *(v140 + 105) = *(v142 + 105);
              *(v140 + 80) = v149;
              *(v140 + 96) = v150;
              *(v140 + 64) = v148;
              std::string::operator=((v140 + 128), (v142 + 128));
              std::string::operator=((v140 + 152), (v142 + 152));
              objc_storeStrong((v140 + 176), *(v142 + 176));
              v151 = *(v142 + 208);
              *(v140 + 220) = *(v142 + 220);
              *(v140 + 208) = v151;
              v152 = *(v142 + 240);
              v153 = *(v142 + 272);
              *(v140 + 256) = *(v142 + 256);
              *(v140 + 272) = v153;
              *(v140 + 240) = v152;
              if (v140 != v142)
              {
                sub_26225945C(v140 + 288, *(v142 + 288), *(v142 + 296), (*(v142 + 296) - *(v142 + 288)) >> 3);
              }

              *(v140 + 312) = *(v142 + 312);
              v140 = v142;
            }

            while (v139 <= ((v138 - 2) >> 1));
            if (v142 == a2 - 320)
            {
              objc_storeStrong((v142 + 8), v236);
              v193 = v237;
              v194 = v239;
              *(v142 + 32) = v238;
              *(v142 + 48) = v194;
              *(v142 + 16) = v193;
              v195 = v240;
              v196 = v241;
              v197 = v242[0];
              *(v142 + 105) = *(v242 + 9);
              *(v142 + 80) = v196;
              *(v142 + 96) = v197;
              *(v142 + 64) = v195;
              std::string::operator=((v142 + 128), &v243);
              std::string::operator=((v142 + 152), &v244);
              objc_storeStrong((v142 + 176), v245);
              v198 = v246[0];
              *(v142 + 220) = *(v246 + 12);
              *(v142 + 208) = v198;
              v199 = v247;
              v200 = v249;
              *(v142 + 256) = v248;
              *(v142 + 272) = v200;
              *(v142 + 240) = v199;
              if (v142 != &v235)
              {
                sub_26225945C(v142 + 288, v250, v251, v251 - v250);
              }

              *(v142 + 312) = v252;
            }

            else
            {
              objc_storeStrong((v142 + 8), *(a2 - 312));
              v154 = (a2 - 304);
              v155 = *(a2 - 256);
              v156 = *(a2 - 240);
              v157 = *(a2 - 224);
              *(v142 + 105) = *(a2 - 215);
              *(v142 + 80) = v156;
              *(v142 + 96) = v157;
              *(v142 + 64) = v155;
              v158 = *(a2 - 304);
              v159 = *(a2 - 272);
              *(v142 + 32) = *(a2 - 288);
              *(v142 + 48) = v159;
              *(v142 + 16) = v158;
              std::string::operator=((v142 + 128), (a2 - 192));
              std::string::operator=((v142 + 152), (a2 - 168));
              objc_storeStrong((v142 + 176), *(a2 - 144));
              v160 = *(a2 - 112);
              *(v142 + 220) = *(a2 - 100);
              *(v142 + 208) = v160;
              v161 = *(a2 - 80);
              v162 = *(a2 - 48);
              *(v142 + 256) = *(a2 - 64);
              *(v142 + 272) = v162;
              *(v142 + 240) = v161;
              sub_26225945C(v142 + 288, *(a2 - 32), *(a2 - 24), (*(a2 - 24) - *(a2 - 32)) >> 3);
              *(v142 + 312) = *(a2 - 8);
              objc_storeStrong((a2 - 312), v236);
              v163 = v237;
              v164 = v239;
              v154[1] = v238;
              v154[2] = v164;
              *v154 = v163;
              v165 = v240;
              v166 = v241;
              v167 = v242[0];
              *(v154 + 89) = *(v242 + 9);
              v154[4] = v166;
              v154[5] = v167;
              v154[3] = v165;
              std::string::operator=((a2 - 192), &v243);
              std::string::operator=((a2 - 168), &v244);
              objc_storeStrong((a2 - 144), v245);
              v168 = (a2 - 112);
              v169 = (a2 - 80);
              v170 = v246[0];
              *(v168 + 12) = *(v246 + 12);
              *v168 = v170;
              v171 = v247;
              v172 = v249;
              v169[1] = v248;
              v169[2] = v172;
              *v169 = v171;
              if ((a2 - 320) != &v235)
              {
                sub_26225945C(a2 - 32, v250, v251, v251 - v250);
              }

              *(a2 - 8) = v252;
              v173 = v142 - v7 + 320;
              if (v173 >= 321)
              {
                v174 = (-2 - 0x3333333333333333 * (v173 >> 6)) >> 1;
                v175 = v7 + 320 * v174;
                if ((*a3)(v175, v142))
                {
                  sub_262258DB0(&v253, v142);
                  do
                  {
                    v176 = v175;
                    objc_storeStrong((v142 + 8), *(v175 + 8));
                    v177 = *(v175 + 16);
                    v178 = *(v175 + 48);
                    *(v142 + 32) = *(v175 + 32);
                    *(v142 + 48) = v178;
                    *(v142 + 16) = v177;
                    v179 = *(v175 + 64);
                    v180 = *(v175 + 80);
                    v181 = *(v175 + 96);
                    *(v142 + 105) = *(v175 + 105);
                    *(v142 + 80) = v180;
                    *(v142 + 96) = v181;
                    *(v142 + 64) = v179;
                    std::string::operator=((v142 + 128), (v175 + 128));
                    std::string::operator=((v142 + 152), (v175 + 152));
                    objc_storeStrong((v142 + 176), *(v175 + 176));
                    v182 = *(v175 + 208);
                    *(v142 + 220) = *(v175 + 220);
                    *(v142 + 208) = v182;
                    v183 = *(v175 + 240);
                    v184 = *(v175 + 272);
                    *(v142 + 256) = *(v175 + 256);
                    *(v142 + 272) = v184;
                    *(v142 + 240) = v183;
                    if (v142 != v175)
                    {
                      sub_26225945C(v142 + 288, *(v175 + 288), *(v175 + 296), (*(v175 + 296) - *(v175 + 288)) >> 3);
                    }

                    *(v142 + 312) = *(v175 + 312);
                    if (!v174)
                    {
                      break;
                    }

                    v174 = (v174 - 1) >> 1;
                    v175 = v7 + 320 * v174;
                    v142 = v176;
                  }

                  while (((*a3)(v175, &v253) & 1) != 0);
                  objc_storeStrong((v176 + 8), obj);
                  v185 = v255;
                  v186 = v257;
                  *(v176 + 32) = v256;
                  *(v176 + 48) = v186;
                  *(v176 + 16) = v185;
                  v187 = v258;
                  v188 = v259;
                  v189 = v260[0];
                  *(v176 + 105) = *(v260 + 9);
                  *(v176 + 80) = v188;
                  *(v176 + 96) = v189;
                  *(v176 + 64) = v187;
                  std::string::operator=((v176 + 128), &v261);
                  std::string::operator=((v176 + 152), &v262);
                  objc_storeStrong((v176 + 176), v263);
                  v190 = v264[0];
                  *(v176 + 220) = *(v264 + 12);
                  *(v176 + 208) = v190;
                  v191 = v265;
                  v192 = v267;
                  *(v176 + 256) = v266;
                  *(v176 + 272) = v192;
                  *(v176 + 240) = v191;
                  if (v176 != &v253)
                  {
                    sub_26225945C(v176 + 288, *v268, *v269, (*v269 - *v268) >> 3);
                  }

                  *(v176 + 312) = v270;
                  v253 = off_2874EE620;
                  v234 = v268;
                  sub_2621C512C(&v234);

                  sub_2621C50C4(&v253);
                }
              }
            }

            v235 = off_2874EE620;
            v253 = &v250;
            sub_2621C512C(&v253);

            result = sub_2621C50C4(&v235);
          }

          a2 -= 320;
        }

        while (v138-- > 2);
      }

      goto LABEL_204;
    }

    v13 = v12 >> 1;
    v14 = v10 + 320 * v13;
    v15 = *a3;
    if (v11 > 0xA000)
    {
      v16 = v15(v7 + 320 * v13, v7);
      v17 = (*a3)(v9, v7 + 320 * v13);
      if (v16)
      {
        if (v17)
        {
          v18 = v7;
          goto LABEL_27;
        }

        sub_2622BA094(v7, v7 + 320 * v13);
        if ((*a3)(v9, v7 + 320 * v13))
        {
          v18 = v7 + 320 * v13;
LABEL_27:
          v22 = a2 - 320;
LABEL_28:
          sub_2622BA094(v18, v22);
        }
      }

      else if (v17)
      {
        sub_2622BA094(v7 + 320 * v13, v9);
        if ((*a3)(v7 + 320 * v13, v7))
        {
          v18 = v7;
          v22 = v7 + 320 * v13;
          goto LABEL_28;
        }
      }

      v24 = v7 + 320 * v13 - 320;
      v25 = (*a3)(v24, v7 + 320);
      v26 = (*a3)(v229, v24);
      if (v25)
      {
        if (v26)
        {
          v27 = v7 + 320;
          goto LABEL_40;
        }

        sub_2622BA094(v7 + 320, v7 + 320 * v13 - 320);
        if ((*a3)(v229, v7 + 320 * v13 - 320))
        {
          v27 = v7 + 320 * v13 - 320;
LABEL_40:
          v28 = a2 - 640;
LABEL_41:
          sub_2622BA094(v27, v28);
        }
      }

      else if (v26)
      {
        sub_2622BA094(v7 + 320 * v13 - 320, v229);
        if ((*a3)(v7 + 320 * v13 - 320, v7 + 320))
        {
          v27 = v7 + 320;
          v28 = v7 + 320 * v13 - 320;
          goto LABEL_41;
        }
      }

      v29 = v7 + 320 * v13;
      v30 = (*a3)(v29 + 320, v7 + 640);
      v31 = (*a3)(v228, v29 + 320);
      if (v30)
      {
        if (v31)
        {
          v32 = v7 + 640;
          goto LABEL_50;
        }

        sub_2622BA094(v7 + 640, v29 + 320);
        if ((*a3)(v228, v29 + 320))
        {
          v32 = v29 + 320;
LABEL_50:
          v33 = a2 - 960;
LABEL_51:
          sub_2622BA094(v32, v33);
        }
      }

      else if (v31)
      {
        sub_2622BA094(v29 + 320, v228);
        if ((*a3)(v29 + 320, v7 + 640))
        {
          v32 = v7 + 640;
          v33 = v29 + 320;
          goto LABEL_51;
        }
      }

      v34 = (*a3)(v14, v24);
      v35 = (*a3)(v29 + 320, v14);
      if (v34)
      {
        if (v35)
        {
          v36 = v29 + 320;
          v37 = v24;
          goto LABEL_60;
        }

        sub_2622BA094(v24, v14);
        if ((*a3)(v29 + 320, v14))
        {
          v36 = v29 + 320;
          v37 = v14;
LABEL_60:
          sub_2622BA094(v37, v36);
        }
      }

      else if (v35)
      {
        sub_2622BA094(v14, v29 + 320);
        if ((*a3)(v14, v24))
        {
          v37 = v24;
          v36 = v14;
          goto LABEL_60;
        }
      }

      v21 = v7;
      v23 = v14;
      goto LABEL_62;
    }

    v19 = v15(v7, v7 + 320 * v13);
    v20 = (*a3)(v9, v7);
    if (v19)
    {
      if (v20)
      {
        v21 = v7 + 320 * v13;
      }

      else
      {
        sub_2622BA094(v7 + 320 * v13, v7);
        if (!(*a3)(v9, v7))
        {
          goto LABEL_63;
        }

        v21 = v7;
      }

      v23 = a2 - 320;
    }

    else
    {
      if (!v20)
      {
        goto LABEL_63;
      }

      sub_2622BA094(v7, v9);
      if (!(*a3)(v7, v7 + 320 * v13))
      {
        goto LABEL_63;
      }

      v21 = v7 + 320 * v13;
      v23 = v7;
    }

LABEL_62:
    sub_2622BA094(v21, v23);
LABEL_63:
    --a4;
    if (a5 & 1) != 0 || ((*a3)(v7 - 320, v7))
    {
      sub_262258DB0(&v253, v7);
      v38 = v7;
      do
      {
        v38 += 320;
      }

      while (((*a3)(v38, &v253) & 1) != 0);
      v39 = a2;
      if (v38 - 320 == v7)
      {
        v39 = a2;
        do
        {
          if (v38 >= v39)
          {
            break;
          }

          v39 -= 320;
        }

        while (((*a3)(v39, &v253) & 1) == 0);
      }

      else
      {
        do
        {
          v39 -= 320;
        }

        while (!(*a3)(v39, &v253));
      }

      v10 = v38;
      if (v38 < v39)
      {
        v40 = v39;
        do
        {
          sub_2622BA094(v10, v40);
          do
          {
            v10 += 320;
          }

          while (((*a3)(v10, &v253) & 1) != 0);
          do
          {
            v40 -= 320;
          }

          while (!(*a3)(v40, &v253));
        }

        while (v10 < v40);
      }

      if (v10 - 320 != v7)
      {
        objc_storeStrong((v7 + 8), *(v10 - 312));
        v41 = *(v10 - 256);
        v42 = *(v10 - 240);
        v43 = *(v10 - 224);
        *(v7 + 105) = *(v10 - 215);
        *(v7 + 80) = v42;
        *(v7 + 96) = v43;
        *(v7 + 64) = v41;
        v44 = *(v10 - 304);
        v45 = *(v10 - 272);
        *(v7 + 32) = *(v10 - 288);
        *(v7 + 48) = v45;
        *(v7 + 16) = v44;
        std::string::operator=((v7 + 128), (v10 - 192));
        std::string::operator=((v7 + 152), (v10 - 168));
        objc_storeStrong((v7 + 176), *(v10 - 144));
        v46 = *(v10 - 112);
        *(v7 + 220) = *(v10 - 100);
        *(v7 + 208) = v46;
        v47 = *(v10 - 80);
        v48 = *(v10 - 48);
        *(v7 + 256) = *(v10 - 64);
        *(v7 + 272) = v48;
        *(v7 + 240) = v47;
        sub_26225945C(v7 + 288, *(v10 - 32), *(v10 - 24), (*(v10 - 24) - *(v10 - 32)) >> 3);
        *(v7 + 312) = *(v10 - 8);
      }

      objc_storeStrong((v10 - 312), obj);
      v49 = (v10 - 304);
      v50 = v255;
      v51 = v257;
      v49[1] = v256;
      v49[2] = v51;
      *v49 = v50;
      v52 = v258;
      v53 = v259;
      v54 = v260[0];
      *(v10 - 215) = *(v260 + 9);
      *(v10 - 240) = v53;
      *(v10 - 224) = v54;
      *(v10 - 256) = v52;
      std::string::operator=((v10 - 192), &v261);
      std::string::operator=((v10 - 168), &v262);
      objc_storeStrong((v10 - 144), v263);
      v55 = v264[0];
      *(v10 - 100) = *(v264 + 12);
      *(v10 - 112) = v55;
      v56 = v265;
      v57 = v267;
      *(v10 - 64) = v266;
      *(v10 - 48) = v57;
      *(v10 - 80) = v56;
      if ((v10 - 320) != &v253)
      {
        sub_26225945C(v10 - 32, *v268, *v269, (*v269 - *v268) >> 3);
      }

      *(v10 - 8) = v270;
      v253 = off_2874EE620;
      v235 = v268;
      sub_2621C512C(&v235);

      sub_2621C50C4(&v253);
      v8 = a2;
      if (v38 < v39)
      {
        goto LABEL_86;
      }

      v58 = sub_2622BA3F0(v7, v10 - 320, a3);
      result = sub_2622BA3F0(v10, a2, a3);
      if (result)
      {
        a2 = v10 - 320;
        if (!v58)
        {
          goto LABEL_2;
        }

        goto LABEL_204;
      }

      if (!v58)
      {
LABEL_86:
        result = sub_2622B8670(v7, v10 - 320, a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      sub_262258DB0(&v253, v7);
      if ((*a3)(&v253, v9))
      {
        v10 = v7;
        do
        {
          v10 += 320;
        }

        while (((*a3)(&v253, v10) & 1) == 0);
      }

      else
      {
        v59 = v7 + 320;
        do
        {
          v10 = v59;
          if (v59 >= a2)
          {
            break;
          }

          v60 = (*a3)(&v253, v59);
          v59 = v10 + 320;
        }

        while (!v60);
      }

      v61 = a2;
      if (v10 < a2)
      {
        v61 = a2;
        do
        {
          v61 -= 320;
        }

        while (((*a3)(&v253, v61) & 1) != 0);
      }

      while (v10 < v61)
      {
        sub_2622BA094(v10, v61);
        do
        {
          v10 += 320;
        }

        while (!(*a3)(&v253, v10));
        do
        {
          v61 -= 320;
        }

        while (((*a3)(&v253, v61) & 1) != 0);
      }

      if (v10 - 320 != v7)
      {
        objc_storeStrong((v7 + 8), *(v10 - 312));
        v62 = *(v10 - 256);
        v63 = *(v10 - 240);
        v64 = *(v10 - 224);
        *(v7 + 105) = *(v10 - 215);
        *(v7 + 80) = v63;
        *(v7 + 96) = v64;
        *(v7 + 64) = v62;
        v65 = *(v10 - 304);
        v66 = *(v10 - 272);
        *(v7 + 32) = *(v10 - 288);
        *(v7 + 48) = v66;
        *(v7 + 16) = v65;
        std::string::operator=((v7 + 128), (v10 - 192));
        std::string::operator=((v7 + 152), (v10 - 168));
        objc_storeStrong((v7 + 176), *(v10 - 144));
        v67 = *(v10 - 112);
        *(v7 + 220) = *(v10 - 100);
        *(v7 + 208) = v67;
        v68 = *(v10 - 80);
        v69 = *(v10 - 48);
        *(v7 + 256) = *(v10 - 64);
        *(v7 + 272) = v69;
        *(v7 + 240) = v68;
        sub_26225945C(v7 + 288, *(v10 - 32), *(v10 - 24), (*(v10 - 24) - *(v10 - 32)) >> 3);
        *(v7 + 312) = *(v10 - 8);
      }

      objc_storeStrong((v10 - 312), obj);
      v70 = (v10 - 304);
      v71 = v255;
      v72 = v257;
      v70[1] = v256;
      v70[2] = v72;
      *v70 = v71;
      v73 = v258;
      v74 = v259;
      v75 = v260[0];
      *(v10 - 215) = *(v260 + 9);
      *(v10 - 240) = v74;
      *(v10 - 224) = v75;
      *(v10 - 256) = v73;
      std::string::operator=((v10 - 192), &v261);
      std::string::operator=((v10 - 168), &v262);
      objc_storeStrong((v10 - 144), v263);
      v76 = v264[0];
      *(v10 - 100) = *(v264 + 12);
      *(v10 - 112) = v76;
      v77 = v265;
      v78 = v267;
      *(v10 - 64) = v266;
      *(v10 - 48) = v78;
      *(v10 - 80) = v77;
      if ((v10 - 320) != &v253)
      {
        sub_26225945C(v10 - 32, *v268, *v269, (*v269 - *v268) >> 3);
      }

      *(v10 - 8) = v270;
      v253 = off_2874EE620;
      v235 = v268;
      sub_2621C512C(&v235);

      result = sub_2621C50C4(&v253);
      a5 = 0;
      v8 = a2;
    }
  }

  if (v12 < 2)
  {
    goto LABEL_204;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  result = (*a3)(v9, v10);
  if (!result)
  {
    goto LABEL_204;
  }

LABEL_121:
  v85 = *MEMORY[0x277D85DE8];
  v83 = v10;
LABEL_122:
  v86 = a2 - 320;
LABEL_123:

  return sub_2622BA094(v83, v86);
}

uint64_t sub_2622B9F2C(const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      sub_2621E1EE4(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    sub_2621DDA38(24 * v7, *a2, a2[1], (a2[1] - *a2) >> 4);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_26220AA90(&v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    result = sub_2621DDA38(v4, *a2, a2[1], (a2[1] - *a2) >> 4);
    v6 = v4 + 24;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_2622BA074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26220AA90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622BA094(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  sub_262258DB0(v19, a1);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 16) = v4;
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  *(a1 + 64) = v6;
  std::string::operator=((a1 + 128), (a2 + 128));
  std::string::operator=((a1 + 152), (a2 + 152));
  objc_storeStrong((a1 + 176), *(a2 + 176));
  v9 = *(a2 + 208);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 208) = v9;
  v10 = *(a2 + 240);
  v11 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v11;
  *(a1 + 240) = v10;
  if (a1 != a2)
  {
    sub_26225945C(a1 + 288, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 3);
  }

  *(a1 + 312) = *(a2 + 312);
  objc_storeStrong((a2 + 8), v19[1]);
  v12 = v25[0];
  *(a2 + 80) = v24;
  *(a2 + 96) = v12;
  *(a2 + 105) = *(v25 + 9);
  v13 = v21;
  *(a2 + 16) = v20;
  *(a2 + 32) = v13;
  v14 = v23;
  *(a2 + 48) = v22;
  *(a2 + 64) = v14;
  std::string::operator=((a2 + 128), &v26);
  std::string::operator=((a2 + 152), &v27);
  objc_storeStrong((a2 + 176), v28);
  *(a2 + 208) = v29[0];
  *(a2 + 220) = *(v29 + 12);
  v15 = v29[3];
  *(a2 + 240) = v29[2];
  *(a2 + 256) = v15;
  *(a2 + 272) = v29[4];
  if (v19 != a2)
  {
    sub_26225945C(a2 + 288, v30, v31, v31 - v30);
  }

  *(a2 + 312) = v32;
  v18 = &v30;
  v19[0] = off_2874EE620;
  sub_2621C512C(&v18);

  result = sub_2621C50C4(v19);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622BA284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26225972C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622BA2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    sub_2622BA094(a1, a2);
    if ((*a5)(a3, a2))
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_2622BA094(a2, a3);
    if ((*a5)(a2, a1))
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      sub_2622BA094(v12, v13);
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    sub_2622BA094(a3, a4);
    result = (*a5)(a3, a2);
    if (result)
    {
      sub_2622BA094(a2, a3);
      result = (*a5)(a2, a1);
      if (result)
      {

        return sub_2622BA094(a1, a2);
      }
    }
  }

  return result;
}

BOOL sub_2622BA3F0(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 6);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v12 = a2 - 320;
        v13 = (*a3)(a1 + 320, a1);
        v14 = (*a3)(a2 - 320, a1 + 320);
        if (v13)
        {
          if (v14)
          {
            v7 = a1;
          }

          else
          {
            sub_2622BA094(a1, a1 + 320);
            if (!(*a3)(v12, a1 + 320))
            {
              goto LABEL_47;
            }

            v7 = a1 + 320;
          }

          v8 = v12;
          goto LABEL_30;
        }

        if (!v14)
        {
LABEL_47:
          result = 1;
          goto LABEL_48;
        }

        v10 = a1 + 320;
        v11 = v12;
        break;
      case 4:
        sub_2622BA2A0(a1, a1 + 320, a1 + 640, a2 - 320, a3);
        goto LABEL_47;
      case 5:
        v9 = a2 - 320;
        sub_2622BA2A0(a1, a1 + 320, a1 + 640, a1 + 960, a3);
        if (!(*a3)(a2 - 320, a1 + 960))
        {
          goto LABEL_47;
        }

        sub_2622BA094(a1 + 960, v9);
        if (!(*a3)(a1 + 960, a1 + 640))
        {
          goto LABEL_47;
        }

        sub_2622BA094(a1 + 640, a1 + 960);
        if (!(*a3)(a1 + 640, a1 + 320))
        {
          goto LABEL_47;
        }

        v10 = a1 + 320;
        v11 = a1 + 640;
        break;
      default:
        goto LABEL_16;
    }

    sub_2622BA094(v10, v11);
    if ((*a3)(a1 + 320, a1))
    {
      v8 = a1 + 320;
      v7 = a1;
      goto LABEL_30;
    }

    goto LABEL_47;
  }

  if (v5 < 2)
  {
    goto LABEL_47;
  }

  if (v5 == 2)
  {
    v6 = a2 - 320;
    if ((*a3)(a2 - 320, a1))
    {
      v7 = a1;
      v8 = v6;
LABEL_30:
      sub_2622BA094(v7, v8);
      goto LABEL_47;
    }

    goto LABEL_47;
  }

LABEL_16:
  v15 = a1 + 640;
  v16 = (*a3)(a1 + 320, a1);
  v17 = (*a3)(a1 + 640, a1 + 320);
  if (v16)
  {
    if (v17)
    {
      v18 = a1;
    }

    else
    {
      sub_2622BA094(a1, a1 + 320);
      if (!(*a3)(a1 + 640, a1 + 320))
      {
        goto LABEL_35;
      }

      v18 = a1 + 320;
    }

    v19 = a1 + 640;
    goto LABEL_34;
  }

  if (v17)
  {
    sub_2622BA094(a1 + 320, a1 + 640);
    if ((*a3)(a1 + 320, a1))
    {
      v19 = a1 + 320;
      v18 = a1;
LABEL_34:
      sub_2622BA094(v18, v19);
    }
  }

LABEL_35:
  v20 = a1 + 960;
  if (a1 + 960 == a2)
  {
    goto LABEL_47;
  }

  v21 = 0;
  v44 = 0;
  while (1)
  {
    if ((*a3)(v20, v15))
    {
      sub_262258DB0(v47, v20);
      v22 = v21;
      while (1)
      {
        v23 = v22;
        v24 = a1 + v22;
        objc_storeStrong((a1 + v22 + 968), *(a1 + v22 + 648));
        v25 = *(v24 + 736);
        *(v24 + 1040) = *(v24 + 720);
        *(v24 + 1056) = v25;
        v26 = *(v24 + 672);
        *(v24 + 976) = *(v24 + 656);
        *(v24 + 992) = v26;
        v27 = *(v24 + 704);
        *(v24 + 1008) = *(v24 + 688);
        *(v24 + 1024) = v27;
        *(v24 + 1065) = *(v24 + 745);
        std::string::operator=((v24 + 1088), (v24 + 768));
        std::string::operator=((a1 + v23 + 1112), (a1 + v23 + 792));
        objc_storeStrong((a1 + v23 + 1136), *(a1 + v23 + 816));
        v28 = a1 + v23;
        *(v28 + 1168) = *(a1 + v23 + 848);
        *(a1 + v23 + 1180) = *(a1 + v23 + 860);
        v29 = *(a1 + v23 + 896);
        *(v28 + 1200) = *(a1 + v23 + 880);
        *(v28 + 1216) = v29;
        *(v28 + 1232) = *(a1 + v23 + 912);
        sub_26225945C(a1 + v23 + 1248, *(a1 + v23 + 928), *(a1 + v23 + 936), (*(a1 + v23 + 936) - *(a1 + v23 + 928)) >> 3);
        *(v28 + 1272) = *(v28 + 952);
        if (v23 == -640)
        {
          break;
        }

        v30 = (*a3)(v47, a1 + v23 + 320);
        v22 = v23 - 320;
        if ((v30 & 1) == 0)
        {
          v31 = a1 + v23;
          v32 = (a1 + v23 + 656);
          v33 = a1 + v22 + 960;
          v34 = (v31 + 768);
          v43 = (v31 + 792);
          v35 = (v31 + 880);
          v36 = (v31 + 848);
          goto LABEL_43;
        }
      }

      v32 = (a1 + 16);
      v34 = (a1 + 128);
      v43 = (a1 + 152);
      v35 = (a1 + 240);
      v36 = (a1 + 208);
      v33 = a1;
LABEL_43:
      objc_storeStrong((v33 + 8), v47[1]);
      v37 = v53[0];
      v32[4] = v52;
      v32[5] = v37;
      *(v32 + 89) = *(v53 + 9);
      v38 = v49;
      *v32 = v48;
      v32[1] = v38;
      v39 = v51;
      v32[2] = v50;
      v32[3] = v39;
      std::string::operator=(v34, &v54);
      std::string::operator=(v43, &v55);
      objc_storeStrong((v33 + 176), v56);
      *v36 = v57[0];
      *(v36 + 12) = *(v57 + 12);
      v40 = v57[3];
      *v35 = v57[2];
      v35[1] = v40;
      v35[2] = v57[4];
      if (v33 != v47)
      {
        sub_26225945C(v33 + 288, v58, v59, v59 - v58);
      }

      *(v33 + 312) = v60;
      ++v44;
      v46 = &v58;
      v47[0] = off_2874EE620;
      sub_2621C512C(&v46);

      sub_2621C50C4(v47);
      if (v44 == 8)
      {
        break;
      }
    }

    v15 = v20;
    v21 += 320;
    v20 += 320;
    if (v20 == a2)
    {
      goto LABEL_47;
    }
  }

  result = v20 + 320 == a2;
LABEL_48:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2622BA928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_26225972C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622BA9AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v164 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  v9 = *(a2 + 280);
  if (v7 == v8)
  {
    if (*(a2 + 280))
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v10 = *(result + 104);
      v11 = *(result + 144);
      if (*(result + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 288);
          do
          {
            v13 = *v12++;
            *v11++ = (v13 * *(a2 + 344));
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v82 = 0;
        v83 = *(result + 56);
        v84 = *(result + 64);
        v85 = *(a2 + 288);
        do
        {
          v86 = 0;
          v11[v84 * *(&v149 + 1) + v83 * v149] = (*(v85 + 4 * v82) * *(a2 + 344));
          do
          {
            v87 = *(&v149 + v86 + 8) + 1;
            *(&v149 + v86 + 8) = v87;
            result = *(v3 + 16 + v86);
            if (v87 != result)
            {
              break;
            }

            *(&v149 + v86 + 8) = 0;
            v86 -= 8;
          }

          while (v86 != -16);
          ++v82;
        }

        while (v82 != v10);
      }
    }

    else
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v42 = *(result + 104);
      v43 = *(result + 144);
      if (*(result + 136))
      {
        if (v42)
        {
          v44 = 0;
          v45 = *(a2 + 200);
          v46 = *(a2 + 208);
          v47 = *(a2 + 288);
          do
          {
            v48 = 0;
            *(v43 + 4 * v44) = (*(v47 + 4 * v46 * *(&v149 + 1) + 4 * v45 * v149) * *(a2 + 344));
            do
            {
              v49 = *(&v149 + v48 + 8) + 1;
              *(&v149 + v48 + 8) = v49;
              result = *(v3 + 16 + v48);
              if (v49 != result)
              {
                break;
              }

              *(&v149 + v48 + 8) = 0;
              v48 -= 8;
            }

            while (v48 != -16);
            ++v44;
          }

          while (v44 != v42);
        }
      }

      else if (v42)
      {
        v88 = 0;
        v89 = *(result + 56);
        v90 = *(result + 64);
        v91 = *(a2 + 200);
        v92 = *(a2 + 208);
        v93 = *(a2 + 288);
        do
        {
          result = 0;
          *(v43 + 4 * v90 * *(&v149 + 1) + 4 * v89 * v149) = (*(v93 + 4 * v92 * *(&v149 + 1) + 4 * v91 * v149) * *(a2 + 344));
          do
          {
            v94 = *(&v149 + result + 8) + 1;
            *(&v149 + result + 8) = v94;
            if (v94 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v149 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v88;
        }

        while (v88 != v42);
      }
    }
  }

  else
  {
    if (*(a2 + 280))
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v140 = 0uLL;
      sub_2621D96E4(&v149, v5, a2, &v140);
      v14 = 0;
      v15 = &v140;
      v16 = 1;
      do
      {
        v17 = *v15;
        v18 = *(v5 + v14);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v16 = 0;
        v15 = &v140 + 1;
        v14 = 1;
      }

      while (v17 == v18);
      if (v17 != v18)
      {
        v19 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v20 = sub_2621D552C(v19, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v20, " ", 1);
        v21 = MEMORY[0x277D82670];
        v22 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v22, " ", 1);
        sub_2621D552C(v22, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v24 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *&v146[0].__locale_ = 0u;
      v143 = 0u;
      v144 = 0u;
      v25 = *(v3 + 104);
      v26 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v25)
        {
          v27 = 0;
          v29 = *(&v150 + 1);
          v28 = v151;
          v30 = (v151 - *(&v150 + 1)) >> 3;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = *(a2 + 288);
          do
          {
            v143 = *&v146[0].__locale_;
            if (v28 != v29)
            {
              v32 = v29;
              v33 = v30;
              do
              {
                v34 = *v32++;
                *(&v143 + v34) = 0;
                --v33;
              }

              while (v33);
            }

            v35 = 0;
            v36 = 0;
            v37 = &v143;
            v38 = 1;
            do
            {
              v39 = v38;
              v36 += *(&v161 + v35) * *v37;
              v37 = (&v143 + 8);
              v35 = 1;
              v38 = 0;
            }

            while ((v39 & 1) != 0);
            *(v26 + 4 * v27) = (*(v31 + 4 * v36) * *(a2 + 344));
            for (i = 1; i != -1; --i)
            {
              v41 = (v146[i].__locale_ + 1);
              v146[i].__locale_ = v41;
              if (v41 != *(&v140 + i * 8))
              {
                break;
              }

              v146[i].__locale_ = 0;
            }

            ++v27;
          }

          while (v27 != v25);
        }
      }

      else if (v25)
      {
        v95 = 0;
        v97 = *(&v150 + 1);
        v96 = v151;
        v98 = (v151 - *(&v150 + 1)) >> 3;
        if (v98 <= 1)
        {
          v98 = 1;
        }

        v99 = *(v3 + 56);
        v100 = *(v3 + 64);
        v101 = *(a2 + 288);
        do
        {
          locale = v146[0].__locale_;
          v103 = v146[1].__locale_;
          v143 = *&v146[0].__locale_;
          if (v96 != v97)
          {
            v104 = v97;
            v105 = v98;
            do
            {
              v106 = *v104++;
              *(&v143 + v106) = 0;
              --v105;
            }

            while (v105);
          }

          v107 = 0;
          v108 = 0;
          v109 = &v143;
          v110 = 1;
          do
          {
            v111 = v110;
            v108 += *(&v161 + v107) * *v109;
            v109 = (&v143 + 8);
            v107 = 1;
            v110 = 0;
          }

          while ((v111 & 1) != 0);
          *(v26 + 4 * v103 * v100 + 4 * locale * v99) = (*(v101 + 4 * v108) * *(a2 + 344));
          for (j = 1; j != -1; --j)
          {
            v113 = (v146[j].__locale_ + 1);
            v146[j].__locale_ = v113;
            if (v113 != *(&v140 + j * 8))
            {
              break;
            }

            v146[j].__locale_ = 0;
          }

          ++v95;
        }

        while (v95 != v25);
      }
    }

    else
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v140 = 0uLL;
      sub_2621D96E4(&v149, v5, a2, &v140);
      v50 = 0;
      v51 = &v140;
      v52 = 1;
      do
      {
        v53 = *v51;
        v54 = *(v5 + v50);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v52 = 0;
        v51 = &v140 + 1;
        v50 = 1;
      }

      while (v53 == v54);
      if (v53 != v54)
      {
        v55 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v56 = sub_2621D552C(v55, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v56, " ", 1);
        v57 = MEMORY[0x277D82670];
        v58 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v58, " ", 1);
        sub_2621D552C(v58, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v58 + *(*v58 - 24)));
        v59 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v59->__vftable[2].~facet_0)(v59, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v60 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v60->__vftable[2].~facet_0)(v60, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *&v146[0].__locale_ = 0u;
      v143 = 0u;
      v144 = 0u;
      v61 = *(v3 + 104);
      v62 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v61)
        {
          v63 = 0;
          v65 = *(&v150 + 1);
          v64 = v151;
          v66 = (v151 - *(&v150 + 1)) >> 3;
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = *(a2 + 280);
          v68 = *(a2 + 200);
          v69 = *(a2 + 208);
          v70 = *(a2 + 288);
          do
          {
            v143 = *&v146[0].__locale_;
            if (v64 != v65)
            {
              v71 = v65;
              v72 = v66;
              do
              {
                v73 = *v71++;
                *(&v143 + v73) = 0;
                --v72;
              }

              while (v72);
            }

            v74 = 0;
            v75 = 0;
            v76 = &v143;
            v77 = 1;
            do
            {
              v78 = v77;
              v75 += *(&v161 + v74) * *v76;
              v76 = (&v143 + 8);
              v74 = 1;
              v77 = 0;
            }

            while ((v78 & 1) != 0);
            v79 = (v70 + 4 * v75);
            if (!v67)
            {
              v79 = (v70 + 4 * *(&v143 + 1) * v69 + 4 * v143 * v68);
            }

            *(v62 + 4 * v63) = (*v79 * *(a2 + 344));
            for (k = 1; k != -1; --k)
            {
              v81 = (v146[k].__locale_ + 1);
              v146[k].__locale_ = v81;
              if (v81 != *(&v140 + k * 8))
              {
                break;
              }

              v146[k].__locale_ = 0;
            }

            ++v63;
          }

          while (v63 != v61);
        }
      }

      else if (v61)
      {
        v114 = 0;
        v116 = *(&v150 + 1);
        v115 = v151;
        v117 = (v151 - *(&v150 + 1)) >> 3;
        if (v117 <= 1)
        {
          v117 = 1;
        }

        v118 = *(v3 + 56);
        v119 = *(v3 + 64);
        v120 = *(a2 + 280);
        v121 = *(a2 + 200);
        v122 = *(a2 + 208);
        v123 = *(a2 + 288);
        do
        {
          v124 = v146[0].__locale_;
          v125 = v146[1].__locale_;
          v143 = *&v146[0].__locale_;
          if (v115 != v116)
          {
            v126 = v116;
            v127 = v117;
            do
            {
              v128 = *v126++;
              *(&v143 + v128) = 0;
              --v127;
            }

            while (v127);
          }

          v129 = 0;
          v130 = 0;
          v131 = &v143;
          v132 = 1;
          do
          {
            v133 = v132;
            v130 += *(&v161 + v129) * *v131;
            v131 = (&v143 + 8);
            v129 = 1;
            v132 = 0;
          }

          while ((v133 & 1) != 0);
          v134 = v124 * v118;
          v135 = v125 * v119;
          v136 = (v123 + 4 * v130);
          if (!v120)
          {
            v136 = (v123 + 4 * *(&v143 + 1) * v122 + 4 * v143 * v121);
          }

          *(v62 + 4 * v135 + 4 * v134) = (*v136 * *(a2 + 344));
          for (m = 1; m != -1; --m)
          {
            v138 = (v146[m].__locale_ + 1);
            v146[m].__locale_ = v138;
            if (v138 != *(&v140 + m * 8))
            {
              break;
            }

            v146[m].__locale_ = 0;
          }

          ++v114;
        }

        while (v114 != v61);
      }
    }

    result = sub_2621C57C8(&v149);
  }

  v139 = *MEMORY[0x277D85DE8];
  return result;
}