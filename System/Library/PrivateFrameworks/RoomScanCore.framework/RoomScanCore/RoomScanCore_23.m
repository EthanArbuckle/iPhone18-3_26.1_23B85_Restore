void sub_262369838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float sub_26236A948(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_walls(v3, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (!v9)
  {
    v22 = 0.0;
    goto LABEL_43;
  }

  v12 = objc_msgSend_walls(v3, v10, v11);
  sub_262377468(&v63, v12);

  v61 = 0;
  v62 = 0;
  memset(v59, 0, sizeof(v59));
  v60 = 0;
  v13 = v63;
  v14 = v64;
  if (v63 == v64)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v15 = v63 + 32;
    do
    {
      v16 = v15 - 2;
      v17 = vsub_f32(*(v15 - 2), *(v15 - 24));
      LODWORD(v50) = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
      if (*&v50 >= *(a1 + 200))
      {
        v18 = atanf(-COERCE_FLOAT(*v15) / COERCE_FLOAT(HIDWORD(*v15)));
        if (v18 < 0.0)
        {
          v19 = v18 + 1.57079633;
          v18 = v19;
        }

        v56 = __sincosf_stret(v18 * 4.0);
        LODWORD(v57) = -1;
        sub_262240B6C(&v60, &v56);
        sub_2621C8F2C(v59, &v50);
      }

      v15 += 3;
    }

    while (v16 + 3 != v14);
    v21 = v60;
    v20 = v61;
  }

  v23 = *(a1 + 204);
  v54 = 0;
  v55 = 0;
  __p = 0;
  sub_262349634(&__p, v21, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 2));
  v24 = v23 * 4.0 / 180.0 * 3.14159265 * 0.5;
  sub_2623496B0(&v56, 1, &__p, v24);
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  sub_262336EFC(&v56);
  v25 = v58;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  sub_262349634(&v50, v56, v57, 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 2));
  if (v25)
  {
    v47 = 0;
    sub_262378F74(v49, v25);
    sub_2621CD1D8(&v47, v25);
    v26 = v50;
    if (v51 != v50)
    {
      v27 = 0;
      v28 = v59[0];
      v29 = 0xAAAAAAAAAAAAAAABLL * (v51 - v50);
      v30 = v50 + 2;
      do
      {
        v31 = *v30 - 1;
        if (*v30 >= 1)
        {
          *(v49[0] + v31) = vmla_n_f32(*(v49[0] + 8 * v31), *(v30 - 2), v28[v27]);
          v47[v31] = v28[v27] + v47[v31];
        }

        ++v27;
        v30 += 3;
      }

      while (v29 > v27);
    }

    v32 = v47;
    v33 = v47 + 1;
    v34 = v47 == v48 || v33 == v48;
    v35 = v47;
    if (!v34)
    {
      v36 = *v47;
      v35 = v47;
      v37 = v47 + 1;
      do
      {
        v38 = *v37++;
        v39 = v38;
        if (v36 < v38)
        {
          v36 = v39;
          v35 = v33;
        }

        v33 = v37;
      }

      while (v37 != v48);
    }

    v40 = (v47 + ((v35 - v47) << 30 >> 30));
    v41 = vld1_dup_f32(v40);
    v42 = vdiv_f32(*(v49[0] + ((v35 - v47) << 30 >> 29)), v41);
    v43 = atan2f(v42.f32[0], v42.f32[1]);
    if (v43 >= 0.0)
    {
      v45 = v43;
    }

    else
    {
      v44 = v43 + 6.28318531;
      v45 = v44;
    }

    v48 = v32;
    operator delete(v32);
    if (v49[0])
    {
      v49[1] = v49[0];
      operator delete(v49[0]);
    }

    v22 = v45 * 0.25;
    if (!v26)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v22 = 0.0;
    v26 = v50;
    if (!v50)
    {
      goto LABEL_35;
    }
  }

  operator delete(v26);
LABEL_35:
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v59[0])
  {
    operator delete(v59[0]);
  }

  if (v21)
  {
    operator delete(v21);
  }

  if (v13)
  {
    operator delete(v13);
  }

LABEL_43:

  return v22;
}

void sub_26236ACF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (*v26)
  {
    operator delete(*v26);
  }

  v28 = *(v26 + 24);
  if (v28)
  {
    operator delete(v28);
  }

  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

id sub_26236ADAC(void *a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithArray_(v7, v8, v5);
  if (objc_msgSend_count(v6, v10, v11))
  {
    if (a3)
    {
      v13 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CBEE30];
      v19[0] = @"Outlier Room is found!";
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v19, &v18, 1);
      *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"com.apple.RoomScanCoreError", -1001, v14);
    }

    objc_msgSend_removeObjectsAtIndexes_(v9, v12, v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_26236AF10(uint64_t a1, void *a2)
{
  v449 = *MEMORY[0x277D85DE8];
  v383 = a2;
  sub_262378DD8(a1 + 328);
  sub_262378DD8(a1 + 368);
  sub_262378DD8(a1 + 408);
  *(a1 + 288) = *(a1 + 280);
  *(a1 + 312) = *(a1 + 304);
  *(a1 + 456) = *(a1 + 448);
  if (*(a1 + 496))
  {
    v3 = *(a1 + 488);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    *(a1 + 488) = 0;
    v5 = *(a1 + 480);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*(a1 + 472) + 8 * i) = 0;
      }
    }

    *(a1 + 496) = 0;
  }

  sub_262378DD8(a1 + 512);
  if (*(a1 + 600))
  {
    v7 = *(a1 + 592);
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    *(a1 + 592) = 0;
    v9 = *(a1 + 584);
    if (v9)
    {
      for (j = 0; j != v9; ++j)
      {
        *(*(a1 + 576) + 8 * j) = 0;
      }
    }

    *(a1 + 600) = 0;
  }

  v11 = *(a1 + 624);
  v12 = *(a1 + 616);
  while (v11 != v12)
  {
    v11 = sub_2621C74C4(v11 - 40);
  }

  *(a1 + 624) = v12;
  v13 = *(a1 + 560);
  v14 = *(a1 + 552);
  while (v13 != v14)
  {
    v13 = sub_2621C7004(v13 - 40);
  }

  *(a1 + 560) = v14;
  *(a1 + 656) = 0;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = *(a1 + 640);
  *(a1 + 640) = v15;

  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = *(a1 + 648);
  *(a1 + 648) = v17;

  v19 = v383;
  v22 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21);
  v443 = 0u;
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v23 = v19;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v440, v444, 16);
  v391 = a1;
  if (v27)
  {
    v28 = *v441;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v441 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = objc_msgSend_walls(*(*(&v440 + 1) + 8 * k), v25, v26, v383);
        objc_msgSend_addObjectsFromArray_(v22, v31, v30);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v440, v444, 16);
    }

    while (v27);
  }

  v384 = v23;
  v32 = *(a1 + 256);
  *(a1 + 256) = v22;

  v405 = 0u;
  v406 = 0u;
  v403 = 0u;
  v404 = 0u;
  v33 = *(a1 + 256);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v403, v432, 16);
  if (v35)
  {
    v36 = *v404;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v404 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v403 + 1) + 8 * m);
        *&v39 = sub_262375C50(v38);
        *v444 = v39;
        sub_2621D9F60(v391 + 280, v444);
        v41 = sub_26223FCEC(v38).n128_u64[0];
        v43 = vsub_f32(v41, v42);
        v44 = sqrtf(vaddv_f32(vmul_f32(v43, v43)));
        v46 = *(v391 + 312);
        v45 = *(v391 + 320);
        if (v46 >= v45)
        {
          v48 = *(v391 + 304);
          v49 = v46 - v48;
          v50 = (v46 - v48) >> 2;
          v51 = v50 + 1;
          if ((v50 + 1) >> 62)
          {
            sub_2621CBEB0();
          }

          v52 = v45 - v48;
          if (v52 >> 1 > v51)
          {
            v51 = v52 >> 1;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v53 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            sub_2621C7F54(v53);
          }

          v54 = (v46 - v48) >> 2;
          v55 = (4 * v50);
          v56 = (4 * v50 - 4 * v54);
          *v55 = v44;
          v47 = v55 + 1;
          memcpy(v56, v48, v49);
          v57 = *(v391 + 304);
          *(v391 + 304) = v56;
          *(v391 + 312) = v47;
          *(v391 + 320) = 0;
          if (v57)
          {
            operator delete(v57);
          }
        }

        else
        {
          *v46 = v44;
          v47 = v46 + 1;
        }

        *(v391 + 312) = v47;
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v40, &v403, v432, 16);
    }

    while (v35);
  }

  v58 = v23;
  v401 = 0u;
  v402 = 0u;
  v399 = 0u;
  v400 = 0u;
  v59 = *(v391 + 256);
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v399, v431, 16);
  if (v61)
  {
    v62 = *v400;
    do
    {
      for (n = 0; n != v61; ++n)
      {
        if (*v400 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v399 + 1) + 8 * n);
        v69 = objc_msgSend_polygonSize(v64, v65, v66);
        v70 = 1.0;
        if (v69 >= 3)
        {
          objc_msgSend_quad(v64, v67, v68);
          v392 = v71;
          objc_msgSend_quad(v64, v72, v73);
          v75 = vsubq_f32(v74, v392);
          v76 = vmulq_f32(v75, v75);
          v77 = vaddv_f32(*v76.f32);
          if (sqrtf(v76.f32[2] + v77) >= 0.00001)
          {
            v385 = v77;
            v387 = v74;
            obja = *v75.f32;
            v440 = 0uLL;
            *&v441 = 0;
            sub_26220F5A0(&v440, v69);
            v80 = 0;
            v81.i64[0] = 0x3F0000003F000000;
            v81.i64[1] = 0x3F0000003F000000;
            v393 = vmulq_f32(vaddq_f32(v392, v387), v81);
            *v81.f32 = vrsqrte_f32(LODWORD(v385));
            *v81.f32 = vmul_f32(*v81.f32, vrsqrts_f32(LODWORD(v385), vmul_f32(*v81.f32, *v81.f32)));
            v82 = vmul_n_f32(obja, vmul_f32(*v81.f32, vrsqrts_f32(LODWORD(v385), vmul_f32(*v81.f32, *v81.f32))).f32[0]);
            do
            {
              v83 = vsubq_f32(*(objc_msgSend_polygon(v64, v78, v79, v383) + 16 * v80), v393);
              v84 = vmul_f32(v82, *v83.f32);
              LODWORD(v84) = vadd_f32(v84, vdup_lane_s32(v84, 1)).u32[0];
              HIDWORD(v84) = v83.i32[2];
              v444[0] = v84;
              sub_2621CBA84(&v440, v444);
              ++v80;
            }

            while (v69 != v80);
            v438 = 0;
            __p = 0;
            v439 = 0;
            sub_26220F5A0(&__p, 4uLL);
            for (ii = 0; ii != 8; ii += 2)
            {
              objc_msgSend_quad(v64, v85, v86);
              LODWORD(v444[1]) = v88;
              LODWORD(v444[3]) = v89;
              v444[0] = v90;
              v444[2] = v91;
              v446 = v92;
              v448 = v93;
              v445 = v94;
              v447 = v95;
              v96 = vsubq_f32(*&v444[ii], v393);
              v97 = vmul_f32(v82, *v96.f32);
              v97.i32[0] = vadd_f32(v97, vdup_lane_s32(v97, 1)).u32[0];
              v97.i32[1] = v96.i32[2];
              v436[0] = v97;
              sub_2621CBA84(&__p, v436);
            }

            v99 = v440;
            LODWORD(v98) = 1008981770;
            sub_26233E420(v444, v440, *(&v440 + 1), &__p, v98);
            v100 = v444[0];
            v101 = v444[1];
            v102 = v444[2];
            if (__p)
            {
              operator delete(__p);
            }

            if (v99)
            {
              operator delete(v99);
            }

            v70 = v100 / (v102 + v101 - v100);
            v58 = v384;
          }
        }

        if (v70 > *(v391 + 168) && v64 != 0)
        {
          v64[2] = v64[1];
          v64[11] = v64[10];
          v64[5] = v64[4];
          v64[8] = v64[7];
        }
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v103, &v399, v431, 16);
    }

    while (v61);
  }

  v105 = v58;
  v108 = objc_msgSend_array(MEMORY[0x277CBEB18], v106, v107);
  v443 = 0u;
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v109 = v105;
  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v110, &v440, v444, 16);
  if (v113)
  {
    v114 = *v441;
    do
    {
      for (jj = 0; jj != v113; ++jj)
      {
        if (*v441 != v114)
        {
          objc_enumerationMutation(v109);
        }

        v116 = *(*(&v440 + 1) + 8 * jj);
        v117 = objc_msgSend_doors(v116, v111, v112, v383);
        objc_msgSend_addObjectsFromArray_(v108, v118, v117);

        v121 = objc_msgSend_opendoors(v116, v119, v120);
        objc_msgSend_addObjectsFromArray_(v108, v122, v121);

        v125 = objc_msgSend_openings(v116, v123, v124);
        objc_msgSend_addObjectsFromArray_(v108, v126, v125);
      }

      v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v111, &v440, v444, 16);
    }

    while (v113);
  }

  v127 = *(v391 + 264);
  *(v391 + 264) = v108;

  v128 = v109;
  v131 = objc_msgSend_array(MEMORY[0x277CBEB18], v129, v130);
  v443 = 0u;
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v132 = v128;
  v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v133, &v440, v444, 16);
  if (v136)
  {
    v137 = *v441;
    do
    {
      for (kk = 0; kk != v136; ++kk)
      {
        if (*v441 != v137)
        {
          objc_enumerationMutation(v132);
        }

        v139 = objc_msgSend_windows(*(*(&v440 + 1) + 8 * kk), v134, v135, v383);
        objc_msgSend_addObjectsFromArray_(v131, v140, v139);
      }

      v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v134, &v440, v444, 16);
    }

    while (v136);
  }

  v141 = *(v391 + 272);
  *(v391 + 272) = v131;

  v142 = v132;
  v427 = 0u;
  v428 = 0u;
  v429 = 0u;
  v430 = 0u;
  obj = v142;
  v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v143, &v427, v444, 16);
  if (v146)
  {
    v147 = 0;
    v148 = 0;
    v394 = *v428;
    do
    {
      for (mm = 0; mm != v146; ++mm)
      {
        if (*v428 != v394)
        {
          objc_enumerationMutation(obj);
        }

        v150 = *(*(&v427 + 1) + 8 * mm);
        v423 = 0u;
        v424 = 0u;
        v425 = 0u;
        v426 = 0u;
        v151 = objc_msgSend_walls(v150, v144, v145, v383);
        v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v151, v152, &v423, &v440, 16);
        v155 = v146;
        if (v154)
        {
          v156 = 0;
          v157 = *v424;
          do
          {
            for (nn = 0; nn != v154; ++nn)
            {
              if (*v424 != v157)
              {
                objc_enumerationMutation(v151);
              }

              v159 = *(*(&v423 + 1) + 8 * nn);
              if (v159)
              {
                *(v159 + 160) = v148;
                *(v159 + 168) = v156;
                *(v159 + 176) = v147;
                *(v159 + 112) = v148;
                *(v159 + 106) = 0;
              }

              ++v147;
              ++v156;
            }

            v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v151, v153, &v423, &v440, 16);
          }

          while (v154);
        }

        v146 = v155;
        v421 = 0u;
        v422 = 0u;
        v419 = 0u;
        v420 = 0u;
        v162 = objc_msgSend_windows(v150, v160, v161);
        v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v163, &v419, &__p, 16);
        if (v165)
        {
          v166 = 0;
          v167 = *v420;
          do
          {
            for (i1 = 0; i1 != v165; ++i1)
            {
              if (*v420 != v167)
              {
                objc_enumerationMutation(v162);
              }

              v169 = *(*(&v419 + 1) + 8 * i1);
              if (v169)
              {
                *(v169 + 160) = v148;
                *(v169 + 168) = v166;
                *(v169 + 112) = v148;
                *(v169 + 106) = 0;
              }

              ++v166;
            }

            v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v164, &v419, &__p, 16);
          }

          while (v165);
        }

        v417 = 0u;
        v418 = 0u;
        v415 = 0u;
        v416 = 0u;
        v172 = objc_msgSend_doors(v150, v170, v171);
        v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v173, &v415, v436, 16);
        if (v175)
        {
          v176 = 0;
          v177 = *v416;
          do
          {
            for (i2 = 0; i2 != v175; ++i2)
            {
              if (*v416 != v177)
              {
                objc_enumerationMutation(v172);
              }

              v179 = *(*(&v415 + 1) + 8 * i2);
              if (v179)
              {
                *(v179 + 160) = v148;
                *(v179 + 168) = v176;
                *(v179 + 112) = v148;
                *(v179 + 106) = 0;
              }

              ++v176;
            }

            v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v174, &v415, v436, 16);
          }

          while (v175);
        }

        v182 = objc_msgSend_doors(v150, v180, v181);
        v185 = objc_msgSend_count(v182, v183, v184);

        v413 = 0u;
        v414 = 0u;
        v411 = 0u;
        v412 = 0u;
        v188 = objc_msgSend_opendoors(v150, v186, v187);
        v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v189, &v411, &v434, 16);
        if (v191)
        {
          v192 = *v412;
          do
          {
            for (i3 = 0; i3 != v191; ++i3)
            {
              if (*v412 != v192)
              {
                objc_enumerationMutation(v188);
              }

              v194 = *(*(&v411 + 1) + 8 * i3);
              if (v194)
              {
                *(v194 + 160) = v148;
                *(v194 + 168) = v185;
                *(v194 + 112) = v148;
                *(v194 + 106) = 0;
              }

              ++v185;
            }

            v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v190, &v411, &v434, 16);
          }

          while (v191);
        }

        v197 = objc_msgSend_doors(v150, v195, v196);
        v200 = objc_msgSend_count(v197, v198, v199);
        v203 = objc_msgSend_opendoors(v150, v201, v202);
        v206 = objc_msgSend_count(v203, v204, v205);

        v409 = 0u;
        v410 = 0u;
        v407 = 0u;
        v408 = 0u;
        v209 = objc_msgSend_openings(v150, v207, v208);
        v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(v209, v210, &v407, v433, 16);
        if (v212)
        {
          v213 = v206 + v200;
          v214 = *v408;
          do
          {
            for (i4 = 0; i4 != v212; ++i4)
            {
              if (*v408 != v214)
              {
                objc_enumerationMutation(v209);
              }

              v216 = *(*(&v407 + 1) + 8 * i4);
              if (v216)
              {
                *(v216 + 160) = v148;
                *(v216 + 168) = v213;
                *(v216 + 112) = v148;
                *(v216 + 106) = 0;
              }

              ++v213;
            }

            v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(v209, v211, &v407, v433, 16);
          }

          while (v212);
        }

        ++v148;
      }

      v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v144, &v427, v444, 16);
    }

    while (v146);
  }

  v217 = objc_alloc_init(RSMultiRoomFloorEstimation);
  v218 = *(v391 + 664);
  *(v391 + 664) = v217;

  v221 = objc_msgSend_count(obj, v219, v220);
  memset(v444, 0, 24);
  *&v440 = v444;
  BYTE8(v440) = 0;
  if (v221)
  {
    if (v221 < 0x666666666666667)
    {
      operator new();
    }

    sub_2621CBEB0();
  }

  v222 = 0;
  v386 = (v391 + 552);
  v223 = *(v391 + 552);
  if (v223)
  {
    v224 = *(v391 + 560);
    v225 = *(v391 + 552);
    if (v224 != v223)
    {
      do
      {
        v224 = sub_2621C7004(v224 - 40);
      }

      while (v224 != v223);
      v225 = *v386;
    }

    *(v391 + 560) = v223;
    operator delete(v225);
    *v386 = 0;
    *(v391 + 560) = 0;
    *(v391 + 568) = 0;
    v222 = v444[0];
    v226 = *&v444[1];
  }

  else
  {
    v226 = vdupq_n_s64(0);
  }

  *(v391 + 552) = v222;
  *(v391 + 560) = v226;
  memset(v444, 0, 24);
  *&v440 = v444;
  sub_262362DD4(&v440);
  for (i5 = 0; objc_msgSend_count(obj, v227, v228, v383) > i5; i5 = v395 + 1)
  {
    v232 = objc_msgSend_objectAtIndexedSubscript_(obj, v230, i5);
    v395 = i5;
    v233 = v232 == 0;

    if (!v233)
    {
      v236 = objc_msgSend_objectAtIndexedSubscript_(obj, v227, v395);
      v237 = 0;
      memset(v444, 0, sizeof(v444));
      LODWORD(v445) = 1065353216;
      while (1)
      {
        v238 = objc_msgSend_walls(v236, v234, v235);
        v241 = objc_msgSend_count(v238, v239, v240) > v237;

        if (!v241)
        {
          break;
        }

        *&v440 = v237;
        v244 = sub_262377868(v444, &v440);
        v245 = *v244;
        if (*v244)
        {
          v244[1] = v245;
          operator delete(v245);
          *v244 = 0;
          v244[1] = 0;
          v244[2] = 0;
        }

        *v244 = 0;
        v244[1] = 0;
        v244[2] = 0;
        *&v440 = v237 | 0x100000000;
        v246 = sub_262377868(v444, &v440);
        v247 = *v246;
        if (*v246)
        {
          v246[1] = v247;
          operator delete(v247);
          *v246 = 0;
          v246[1] = 0;
          v246[2] = 0;
        }

        *v246 = 0;
        v246[1] = 0;
        ++v237;
        v246[2] = 0;
      }

      for (i6 = 0; ; ++i6)
      {
        v249 = objc_msgSend_walls(v236, v242, v243);
        v252 = objc_msgSend_count(v249, v250, v251) > i6;

        if (!v252)
        {
          break;
        }

        v255 = objc_msgSend_walls(v236, v253, v254);
        v257 = objc_msgSend_objectAtIndexedSubscript_(v255, v256, i6);

        if (v257)
        {
          v260 = sub_26223FCEC(v257).n128_u64[0];
          v262 = v261;
          __p = v260;
          v438 = v261;
          v263 = i6;
          while (1)
          {
            v264 = objc_msgSend_walls(v236, v258, v259);
            v267 = objc_msgSend_count(v264, v265, v266) > ++v263;

            if (!v267)
            {
              goto LABEL_199;
            }

            v270 = objc_msgSend_walls(v236, v268, v269);
            v272 = objc_msgSend_objectAtIndexedSubscript_(v270, v271, v263);

            if (v272)
            {
              break;
            }

LABEL_198:
          }

          v273 = sub_26223FCEC(v272).n128_u64[0];
          v275 = v274;
          v436[0] = v273;
          v436[1] = v274;
          sub_2621DCD34(&v440, &__p, v436);
          v276 = v440;
          if (v440 == *(&v440 + 1))
          {
            v278 = v440;
          }

          else
          {
            v277 = (v440 + 4);
            v278 = v440;
            if (v440 + 4 != *(&v440 + 1))
            {
              v279 = *v440;
              v278 = v440;
              v280 = (v440 + 4);
              do
              {
                v281 = *v280++;
                v282 = v281;
                if (v281 < v279)
                {
                  v279 = v282;
                  v278 = v277;
                }

                v277 = v280;
              }

              while (v280 != *(&v440 + 1));
            }
          }

          v283 = (v278 - v440) >> 2;
          if (v283 > 1)
          {
            if (v283 == 2)
            {
              v293 = vceq_f32(v262, v273);
              if ((vpmin_u32(v293, v293).u32[0] & 0x80000000) == 0)
              {
                goto LABEL_181;
              }

              v434 = i6;
              v435 = 1;
              v319 = sub_262377868(v444, &v434);
              v433[0] = v263;
              sub_26223C48C(v319, v433);
              v434 = v263;
              v435 = 0;
              v320 = sub_262377868(v444, &v434);
              v433[0] = i6 | 0x100000000;
              sub_26223C48C(v320, v433);
            }

            else
            {
              if (v283 != 3)
              {
                goto LABEL_181;
              }

              v287 = vceq_f32(v262, v275);
              if ((vpmin_u32(v287, v287).u32[0] & 0x80000000) == 0)
              {
                goto LABEL_181;
              }

              v434 = i6;
              v435 = 1;
              v288 = sub_262377868(v444, &v434);
              v433[0] = v263 | 0x100000000;
              sub_26223C48C(v288, v433);
              v434 = v263;
              v435 = 1;
              v289 = sub_262377868(v444, &v434);
              v433[0] = i6 | 0x100000000;
              sub_26223C48C(v289, v433);
            }
          }

          else
          {
            if (v283)
            {
              if (v283 == 1)
              {
                v284 = vceq_f32(v260, v275);
                if ((vpmin_u32(v284, v284).u32[0] & 0x80000000) != 0)
                {
                  v434 = i6;
                  v435 = 0;
                  v285 = sub_262377868(v444, &v434);
                  v433[0] = v263 | 0x100000000;
                  sub_26223C48C(v285, v433);
                  v434 = v263;
                  v435 = 1;
                  v286 = sub_262377868(v444, &v434);
                  v433[0] = i6;
                  sub_26223C48C(v286, v433);
                  goto LABEL_196;
                }
              }

LABEL_181:
              v294 = vsub_f32(v275, v273);
              v295 = vaddv_f32(vmul_f32(vsub_f32(v260, v273), v294));
              v296 = vaddv_f32(vmul_f32(v294, v294));
              if (v296 < 0.000001)
              {
                v296 = 0.000001;
              }

              v297 = vmla_n_f32(v273, v294, v295 / v296);
              v298 = vsub_f32(v297, v273);
              v299 = vsub_f32(v297, v275);
              if (vaddv_f32(vmul_f32(v298, v299)) > 0.00001)
              {
                v300 = vmul_f32(v298, v298);
                v301 = vmul_f32(v299, v299);
                v302 = vsqrt_f32(vadd_f32(vzip1_s32(v300, v301), vzip2_s32(v300, v301)));
                v297 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v302, 1), v302)), 0), v275, v273);
              }

              v303 = vmla_n_f32(v273, v294, vaddv_f32(vmul_f32(vsub_f32(v262, v273), v294)) / v296);
              v304 = vsub_f32(v303, v273);
              v305 = vsub_f32(v303, v275);
              if (vaddv_f32(vmul_f32(v304, v305)) > 0.00001)
              {
                v306 = vmul_f32(v304, v304);
                v307 = vmul_f32(v305, v305);
                v308 = vsqrt_f32(vadd_f32(vzip1_s32(v306, v307), vzip2_s32(v306, v307)));
                v303 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v308, 1), v308)), 0), v275, v273);
              }

              v309 = vceq_f32(v260, v297);
              v310 = vpmin_u32(v309, v309).u32[0];
              if ((v310 & 0x80000000) != 0 || (v311 = vceq_f32(v262, v303), (vpmin_u32(v311, v311).u32[0] & 0x80000000) != 0))
              {
                v434 = v263;
                v435 = 2;
                v312 = sub_262377868(v444, &v434);
                v313 = *v312;
                if (*v312)
                {
                  v312[1] = v313;
                  operator delete(v313);
                  *v312 = 0;
                  v312[1] = 0;
                  v312[2] = 0;
                }

                *v312 = 0;
                v312[1] = 0;
                v312[2] = 0;
                if ((v310 & 0x80000000) != 0)
                {
                  v434 = i6;
                  v435 = 0;
                  v314 = sub_262377868(v444, &v434);
                  v433[0] = v263 | 0x200000000;
                  sub_26223C48C(v314, v433);
                  v434 = v263;
                  v435 = 2;
                  v315 = sub_262377868(v444, &v434);
                  v433[0] = i6;
                  sub_26223C48C(v315, v433);
                }

                v316 = vceq_f32(v262, v303);
                if ((vpmin_u32(v316, v316).u32[0] & 0x80000000) != 0)
                {
                  v434 = i6;
                  v435 = 1;
                  v317 = sub_262377868(v444, &v434);
                  v433[0] = v263 | 0x200000000;
                  sub_26223C48C(v317, v433);
                  v434 = v263;
                  v435 = 2;
                  v318 = sub_262377868(v444, &v434);
                  v433[0] = i6 | 0x100000000;
                  sub_26223C48C(v318, v433);
                }
              }

              goto LABEL_196;
            }

            v290 = vceq_f32(v260, v273);
            if ((vpmin_u32(v290, v290).u32[0] & 0x80000000) == 0)
            {
              goto LABEL_181;
            }

            v434 = i6;
            v435 = 0;
            v291 = sub_262377868(v444, &v434);
            v433[0] = v263;
            sub_26223C48C(v291, v433);
            v434 = v263;
            v435 = 0;
            v292 = sub_262377868(v444, &v434);
            v433[0] = i6;
            sub_26223C48C(v292, v433);
          }

LABEL_196:
          if (v276)
          {
            operator delete(v276);
          }

          goto LABEL_198;
        }

LABEL_199:
      }

      v321 = *v386 + 40 * v395;
      sub_262378DD8(v321);
      v322 = v444[0];
      v444[0] = 0;
      v323 = *v321;
      *v321 = v322;
      if (v323)
      {
        operator delete(v323);
      }

      v324 = v444[1];
      v325 = v444[2];
      *(v321 + 16) = v444[2];
      *(v321 + 8) = v324;
      v444[1] = 0;
      v326 = v444[3];
      *(v321 + 24) = v444[3];
      *(v321 + 32) = v445;
      if (v326)
      {
        v327 = v325[1];
        v328 = *(v321 + 8);
        if ((v328 & (v328 - 1)) != 0)
        {
          if (v327 >= v328)
          {
            v327 %= v328;
          }
        }

        else
        {
          v327 &= v328 - 1;
        }

        v325 = 0;
        *(*v321 + 8 * v327) = v321 + 16;
        *&v444[2] = 0uLL;
      }

      sub_2621C7150(v325);
      v329 = v444[0];
      v444[0] = 0;
      if (v329)
      {
        operator delete(v329);
      }
    }
  }

  v330 = 0;
LABEL_213:
  if (objc_msgSend_count(obj, v230, v231) > v330)
  {
    v332 = objc_msgSend_objectAtIndexedSubscript_(obj, v331, v330);
    v388 = v330;
    v333 = v332 == 0;

    if (v333)
    {
      goto LABEL_258;
    }

    v334 = objc_msgSend_objectAtIndexedSubscript_(obj, v230, v388);
    v335 = *v386 + 40 * v388;
    *v396 = 0u;
    *v397 = 0u;
    v398 = *(v335 + 32);
    sub_2621C67D4(v396, *(v335 + 8));
    v336 = *(v335 + 16);
    if (!v336)
    {
      goto LABEL_238;
    }

    while (1)
    {
      v337 = *(v336 + 4);
      v338 = *(v336 + 5);
      v339 = v338 ^ v337;
      if (!v396[1])
      {
        goto LABEL_236;
      }

      v340 = vcnt_s8(v396[1]);
      v340.i16[0] = vaddlv_u8(v340);
      if (v340.u32[0] > 1uLL)
      {
        v341 = v338 ^ v337;
        if (v396[1] <= v339)
        {
          v341 = v339 % v396[1];
        }
      }

      else
      {
        v341 = (v396[1] - 1) & v339;
      }

      v342 = *(v396[0] + v341);
      if (!v342 || (v343 = *v342) == 0)
      {
LABEL_236:
        operator new();
      }

      while (1)
      {
        v344 = v343[1];
        if (v344 == v339)
        {
          break;
        }

        if (v340.u32[0] > 1uLL)
        {
          if (v344 >= v396[1])
          {
            v344 %= v396[1];
          }
        }

        else
        {
          v344 &= v396[1] - 1;
        }

        if (v344 != v341)
        {
          goto LABEL_236;
        }

LABEL_235:
        v343 = *v343;
        if (!v343)
        {
          goto LABEL_236;
        }
      }

      if (*(v343 + 4) != v337 || *(v343 + 5) != v338)
      {
        goto LABEL_235;
      }

      v336 = *v336;
      if (!v336)
      {
LABEL_238:
        v346 = v334;
        v351 = objc_msgSend_walls(v346, v347, v348);
        if (v351)
        {
          v352 = objc_msgSend_walls(v346, v349, v350);
          v355 = objc_msgSend_count(v352, v353, v354) == 0;

          if (!v355)
          {
            v358 = objc_msgSend_walls(v346, v356, v357);
            sub_262377468(v444, v358);

            v361 = 0;
            v362 = v444[0];
            for (i7 = (v444[0] + 8); ; i7 += 6)
            {
              v364 = objc_msgSend_walls(v346, v359, v360);
              v367 = objc_msgSend_count(v364, v365, v366) > v361;

              if (!v367)
              {
                break;
              }

              v370 = i7[-1];
              v371 = *i7;
              v372 = objc_msgSend_walls(v346, v368, v369);
              v374 = objc_msgSend_objectAtIndexedSubscript_(v372, v373, v361);
              if (v374)
              {
                v374[107] = 0;
              }

              v375 = vsub_f32(v370, v371);
              if (sqrtf(vaddv_f32(vmul_f32(v375, v375))) <= *(v391 + 212))
              {
                if (!sub_2623777AC(v396, v361, 0) || !sub_2623777AC(v396, v361, 1) || (*&v440 = v361, v376 = sub_262377868(v396, &v440), v376[1] == *v376) || (__p = (v361 | 0x100000000), v377 = sub_262377868(v396, &__p), v377[1] == *v377))
                {
                  v378 = objc_msgSend_walls(v346, v359, v360);
                  v380 = objc_msgSend_objectAtIndexedSubscript_(v378, v379, v361);
                  if (v380)
                  {
                    v380[107] = 1;
                  }
                }
              }

              ++v361;
            }

            if (v362)
            {
              operator delete(v362);
            }
          }
        }

        sub_2621C7150(v397[0]);
        v381 = v396[0];
        v396[0] = 0;
        if (v381)
        {
          operator delete(v381);
        }

LABEL_258:
        v330 = v388 + 1;
        goto LABEL_213;
      }
    }
  }

  v382 = *MEMORY[0x277D85DE8];
}

void sub_26236CC8C(uint64_t a1, void *a2)
{
  v397 = *MEMORY[0x277D85DE8];
  v351 = a2;
  sub_262377468(&v374, *(a1 + 256));
  v369 = a1;
  if (objc_msgSend_count(*(a1 + 256), v3, v4))
  {
    v7 = 0;
    v8 = v374;
    do
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 256), v5, v7, v351);
      v12 = 0;
      v13 = v8;
      while (objc_msgSend_count(*(a1 + 256), v9, v10) > v12)
      {
        if (v12 <= v7)
        {
          goto LABEL_18;
        }

        v14 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 256), v9, v12);
        v17 = objc_msgSend_identifier(v11, v15, v16);
        v20 = objc_msgSend_identifier(v14, v18, v19);
        isEqual = objc_msgSend_isEqual_(v17, v21, v20);

        if ((isEqual & 1) == 0)
        {
          if (v11)
          {
            v23 = v11[20];
            if (v14)
            {
              goto LABEL_9;
            }

LABEL_20:
            v24 = 0;
          }

          else
          {
            v23 = 0;
            if (!v14)
            {
              goto LABEL_20;
            }

LABEL_9:
            v24 = v14[20];
          }

          if (v23 != v24)
          {
            sub_26229E1DC(&v390, &v8[6 * v7], v13, (v369 + 8));
            if (v390 != -1)
            {
              *v385 = &v390;
              v25 = sub_262377054((v369 + 328), v390);
              *v385 = v7;
              *&v385[4] = v12;
              sub_26223C48C((v25 + 3), v385);
            }

            if (*(&v395 + 1))
            {
              *&v396 = *(&v395 + 1);
              operator delete(*(&v395 + 1));
            }

            if (v394)
            {
              *(&v394 + 1) = v394;
              operator delete(v394);
            }
          }
        }

        a1 = v369;
LABEL_18:
        ++v12;
        v13 += 6;
      }

      a1 = v369;
      ++v7;
    }

    while (objc_msgSend_count(*(v369 + 256), v26, v27) > v7);
  }

  if (objc_msgSend_count(*(a1 + 264), v5, v6, v351))
  {
    sub_262377468(v384, *(a1 + 264));
    if (objc_msgSend_count(*(a1 + 264), v30, v31))
    {
      v32 = 0;
      v357 = a1 + 8;
      v33 = vdup_n_s32(0x49742400u);
      do
      {
        v36 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 264), v28, v32);
        v37 = v32;
        v365 = v32;
        while (objc_msgSend_count(*(a1 + 264), v34, v35) > ++v37)
        {
          v39 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 264), v38, v37);
          v42 = objc_msgSend_identifier(v36, v40, v41);
          v45 = objc_msgSend_identifier(v39, v43, v44);
          v47 = objc_msgSend_isEqual_(v42, v46, v45);

          if (v47)
          {
            goto LABEL_79;
          }

          if (v36)
          {
            v48 = v36[20];
            if (v39)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v48 = 0;
            if (v39)
            {
LABEL_30:
              v49 = v39[20];
              goto LABEL_31;
            }
          }

          v49 = 0;
LABEL_31:
          if (v48 != v49)
          {
            v50 = (v384[0] + 48 * v32);
            *v391 = xmmword_2623A7900;
            *&v391[16] = v33;
            v392 = -3175874560;
            v51 = (v384[0] + 48 * v37);
            v393 = 0;
            v394 = 0u;
            v395 = 0u;
            v396 = 0u;
            sub_262240084(v385, v50, v51);
            v52 = 0;
            v53 = *&v385[8];
            v54 = v386;
            v55 = v387;
            v56 = vsub_f32(*v50, v50[1]);
            v57 = sqrtf(vaddv_f32(vmul_f32(v56, v56)));
            v58 = vsub_f32(*v51, v51[1]);
            v59 = sqrtf(vaddv_f32(vmul_f32(v58, v58)));
            if (v59 < v57)
            {
              v57 = v59;
            }

            v60 = 8;
            if (v57 < *(v369 + 24))
            {
              v60 = 12;
            }

            if (v386 < *(v369 + 8) && v387 < *(v357 + v60))
            {
              v52 = *&v385[8] >= *(v369 + 12);
            }

            v61 = *v385;
            v62 = *&v385[12];
            v63 = v388;
            v64 = v389;
            sub_2621DCD34(v385, v50, v51);
            v65 = *v385;
            if (*v385 != *&v385[8])
            {
              v66 = *v385 + 4;
              v65 = *v385;
              if (*v385 + 4 != *&v385[8])
              {
                v67 = **v385;
                v65 = *v385;
                v68 = (*v385 + 4);
                do
                {
                  v69 = *v68++;
                  v70 = v69;
                  if (v69 < v67)
                  {
                    v67 = v70;
                    v65 = v66;
                  }

                  v66 = v68;
                }

                while (v68 != *&v385[8]);
              }
            }

            v71 = vsub_f32(v50[1], *v50);
            v72 = vmul_f32(v71, v71);
            v73 = vsub_f32(v51[1], *v51);
            v74 = vmul_f32(v73, v73);
            v75 = vsqrt_f32(vadd_f32(vzip1_s32(v72, v74), vzip2_s32(v72, v74)));
            *v74.i32 = fabsf(vsub_f32(v75, vdup_lane_s32(v75, 1)).f32[0]);
            v76 = *(v369 + 32);
            v78 = *v74.i32 < *(v369 + 80) && v55 < v76 && v54 < *(v369 + 36);
            if (v78 && ((v79 = *(v369 + 88), *&v61 > v79) ? (v80 = *(&v61 + 1) <= v79) : (v80 = 1), !v80 ? (v81 = *v65 < *(v369 + 84)) : (v81 = 0), v81))
            {
              v85 = 4;
              LODWORD(v390) = 4;
              v84 = 1;
            }

            else
            {
              v83 = v55 < v76 && v53 > *(v369 + 92) && v54 < *(v369 + 96);
              v84 = 0;
              if (v83)
              {
                v85 = 6;
              }

              else
              {
                v85 = -1;
              }

              LODWORD(v390) = v85;
            }

            BYTE12(v390) = v84;
            *v391 = v61;
            *&v391[12] = v62;
            *&v391[8] = v53;
            *&v391[20] = v54;
            v392 = __PAIR64__(v63, LODWORD(v55));
            LOBYTE(v393) = v52;
            HIBYTE(v393) = v64;
            if (*v385)
            {
              operator delete(*v385);
              v85 = v390;
            }

            v32 = v365;
            if (v85 != -1)
            {
              *v385 = &v390;
              v86 = sub_262377054((v369 + 368), v85);
              *v385 = v365;
              *&v385[4] = v37;
              sub_26223C48C((v86 + 3), v385);
            }

            if (*(&v395 + 1))
            {
              *&v396 = *(&v395 + 1);
              operator delete(*(&v395 + 1));
            }

            if (v394)
            {
              *(&v394 + 1) = v394;
              operator delete(v394);
            }
          }

LABEL_79:

          a1 = v369;
        }

        a1 = v369;
        ++v32;
      }

      while (objc_msgSend_count(*(v369 + 264), v87, v88) > v32);
    }

    if (v384[0])
    {
      operator delete(v384[0]);
    }
  }

  if (objc_msgSend_count(*(a1 + 272), v28, v29))
  {
    sub_262377468(v384, *(a1 + 272));
    if (objc_msgSend_count(*(a1 + 272), v89, v90))
    {
      v92 = 0;
      v354 = 1;
      v355 = a1 + 8;
      v353 = 68;
      v93 = vdup_n_s32(0x49742400u);
      do
      {
        v96 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 272), v91, v92);
        v98 = v353;
        v97 = v354;
        v361 = v96;
        v358 = v92;
        while (objc_msgSend_count(*(a1 + 272), v94, v95) > v97)
        {
          v100 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 272), v99, v97);
          v103 = objc_msgSend_identifier(v96, v101, v102);
          v106 = objc_msgSend_identifier(v100, v104, v105);
          v108 = objc_msgSend_isEqual_(v103, v107, v106);

          if (v108)
          {
            goto LABEL_135;
          }

          if (v96)
          {
            v109 = v96[20];
            if (v100)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v109 = 0;
            if (v100)
            {
LABEL_93:
              v110 = v100[20];
              goto LABEL_94;
            }
          }

          v110 = 0;
LABEL_94:
          if (v109 != v110)
          {
            v111 = v384[0];
            *v391 = xmmword_2623A7900;
            v112 = (v384[0] + 48 * v92);
            v113 = v384[0] + v98;
            v114 = (v384[0] + v98 - 20);
            *&v391[16] = v93;
            v392 = -3175874560;
            v393 = 0;
            v394 = 0u;
            v395 = 0u;
            v396 = 0u;
            sub_262240084(v385, v112, v114);
            v115 = 0;
            v116 = *&v385[8];
            v117 = v386;
            v118 = v387;
            v119 = vsub_f32(*v112, v112[1]);
            v120 = sqrtf(vaddv_f32(vmul_f32(v119, v119)));
            v121 = vsub_f32(*v114, *(v113 - 12));
            v122 = sqrtf(vaddv_f32(vmul_f32(v121, v121)));
            if (v122 < v120)
            {
              v120 = v122;
            }

            v123 = 8;
            if (v120 < *(v369 + 24))
            {
              v123 = 12;
            }

            v366 = v98;
            if (v386 < *(v369 + 8) && v387 < *(v355 + v123))
            {
              v115 = *&v385[8] >= *(v369 + 12);
            }

            v124 = v115;
            v125 = *v385;
            v126 = *&v385[12];
            v127 = v388;
            v128 = v389;
            sub_2621DCD34(v385, v112, v114);
            v129 = vsub_f32(v112[1], *v112);
            v130 = vmul_f32(v129, v129);
            v131 = vsub_f32(*(v113 - 12), *v114);
            v132 = vmul_f32(v131, v131);
            v133 = vsqrt_f32(vadd_f32(vzip1_s32(v130, v132), vzip2_s32(v130, v132)));
            v134 = fabsf(vsub_f32(v133, vdup_lane_s32(v133, 1)).f32[0]);
            v135 = *(v369 + 112);
            v136 = *(v369 + 120);
            v138 = v134 < *(v369 + 100) && v118 < v135 && v117 < v136;
            v139 = v124;
            if (v138 && (v142 = *(v369 + 108), *&v125 > v142) && *(&v125 + 1) > v142)
            {
              v141 = 4;
              LODWORD(v390) = 4;
              v140 = 1;
              v98 = v366;
            }

            else
            {
              v98 = v366;
              if (v118 >= v135 || v116 <= *(v369 + 116) || v117 >= v136)
              {
                v140 = 0;
                v141 = -1;
              }

              else
              {
                v140 = 0;
                v141 = 6;
              }

              LODWORD(v390) = v141;
            }

            BYTE12(v390) = v140;
            *v391 = v125;
            *&v391[12] = v126;
            *&v391[8] = v116;
            *&v391[20] = v117;
            v392 = __PAIR64__(v127, LODWORD(v118));
            LOBYTE(v393) = v139;
            HIBYTE(v393) = v128;
            if (*v385)
            {
              operator delete(*v385);
              v141 = v390;
            }

            v96 = v361;
            v92 = v358;
            if (v141 != -1)
            {
              v143 = v112[2].f32[0];
              v144 = v112[2].f32[1];
              v145 = *&v111[v98 - 4];
              v146 = *&v111[v98];
              if (v146 >= v144)
              {
                v147 = v112[2].f32[1];
              }

              else
              {
                v147 = *&v111[v98];
              }

              if (v143 >= v145)
              {
                v148 = v112[2].f32[0];
              }

              else
              {
                v148 = *&v111[v98 - 4];
              }

              v149 = v147 - v148;
              v150 = v149 / (v144 - v143);
              if (v150 < (v149 / (v146 - v145)))
              {
                v150 = v149 / (v146 - v145);
              }

              if (v150 >= *(v369 + 124))
              {
                *v385 = &v390;
                v151 = sub_262377054((v369 + 408), v141);
                *v385 = v358;
                *&v385[4] = v97;
                sub_26223C48C((v151 + 3), v385);
              }
            }

            if (*(&v395 + 1))
            {
              *&v396 = *(&v395 + 1);
              operator delete(*(&v395 + 1));
            }

            if (v394)
            {
              *(&v394 + 1) = v394;
              operator delete(v394);
            }
          }

LABEL_135:

          ++v97;
          v98 += 48;
          a1 = v369;
        }

        a1 = v369;
        ++v92;
        v353 += 48;
        ++v354;
      }

      while (objc_msgSend_count(*(v369 + 272), v152, v153) > v92);
    }

    if (v384[0])
    {
      operator delete(v384[0]);
    }
  }

  v367 = v352;
  for (i = 0; objc_msgSend_count(*(a1 + 256), v154, v155) > i; ++i)
  {
    *&v390 = i;
    v159 = sub_262377868((a1 + 512), &v390);
    v160 = *v159;
    if (*v159)
    {
      v159[1] = v160;
      operator delete(v160);
      *v159 = 0;
      v159[1] = 0;
      v159[2] = 0;
    }

    *v159 = 0;
    v159[1] = 0;
    v159[2] = 0;
    *&v390 = i | 0x100000000;
    v161 = sub_262377868((a1 + 512), &v390);
    v162 = *v161;
    if (*v161)
    {
      v161[1] = v162;
      operator delete(v162);
      *v161 = 0;
      v161[1] = 0;
      v161[2] = 0;
    }

    *v161 = 0;
    v161[1] = 0;
    v161[2] = 0;
  }

  for (j = 0; objc_msgSend_count(*(v369 + 256), v157, v158) > j; ++j)
  {
    v165 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v164, j);
    v168 = v165;
    if (v165)
    {
      v170 = *(v165 + 160);
      v169 = *(v165 + 168);
      if (v170 < objc_msgSend_count(v367, v166, v167))
      {
        v171 = (*(v369 + 552) + 40 * v170);
        if (sub_2623777AC(v171, v169, 0))
        {
          *&v390 = v169;
          v172 = sub_262377868(v171, &v390);
          if (v172[1] != *v172)
          {
            v174 = objc_msgSend_objectAtIndexedSubscript_(v367, v173, v170);
            v177 = objc_msgSend_walls(v174, v175, v176);

            *&v390 = v169;
            v178 = sub_262377868(v171, &v390);
            v182 = *v178;
            v181 = v178[1];
            while (v182 != v181)
            {
              v183 = *v182;
              if (objc_msgSend_count(v177, v179, v180) > v183)
              {
                v184 = objc_msgSend_objectAtIndexedSubscript_(v177, v179, *v182);
                v185 = v184;
                if (v184)
                {
                  v186 = *(v184 + 176);
                }

                else
                {
                  LODWORD(v186) = 0;
                }

                *v385 = j;
                v187 = sub_262377868((v369 + 512), v385);
                v384[0] = __PAIR64__(v182[1], v186);
                sub_26223C48C(v187, v384);
              }

              v182 += 2;
            }
          }
        }

        if (sub_2623777AC(v171, v169, 1))
        {
          *&v390 = v169 | 0x100000000;
          v188 = sub_262377868(v171, &v390);
          if (v188[1] != *v188)
          {
            v190 = objc_msgSend_objectAtIndexedSubscript_(v367, v189, v170);
            v193 = objc_msgSend_walls(v190, v191, v192);

            *&v390 = v169 | 0x100000000;
            v194 = sub_262377868(v171, &v390);
            v197 = *v194;
            v198 = v194[1];
            while (v197 != v198)
            {
              v199 = *v197;
              if (objc_msgSend_count(v193, v195, v196) > v199)
              {
                v200 = objc_msgSend_objectAtIndexedSubscript_(v193, v195, *v197);
                v201 = v200;
                if (v200)
                {
                  v202 = *(v200 + 176);
                }

                else
                {
                  LODWORD(v202) = 0;
                }

                *v385 = j;
                *&v385[4] = 1;
                v203 = sub_262377868((v369 + 512), v385);
                v384[0] = __PAIR64__(v197[1], v202);
                sub_26223C48C(v203, v384);
              }

              v197 += 2;
            }
          }
        }

        if (sub_2623777AC(v171, v169, 2))
        {
          *&v390 = v169 | 0x200000000;
          v204 = sub_262377868(v171, &v390);
          if (v204[1] != *v204)
          {
            *&v390 = j | 0x200000000;
            v206 = sub_262377868((v369 + 512), &v390);
            v207 = *v206;
            if (*v206)
            {
              v206[1] = v207;
              operator delete(v207);
              *v206 = 0;
              v206[1] = 0;
              v206[2] = 0;
            }

            *v206 = 0;
            v206[1] = 0;
            v206[2] = 0;
            v208 = objc_msgSend_objectAtIndexedSubscript_(v367, v205, v170);
            v211 = objc_msgSend_walls(v208, v209, v210);

            *&v390 = v169 | 0x200000000;
            v212 = sub_262377868(v171, &v390);
            v215 = *v212;
            v216 = v212[1];
            while (v215 != v216)
            {
              v217 = *v215;
              if (objc_msgSend_count(v211, v213, v214) > v217)
              {
                v218 = objc_msgSend_objectAtIndexedSubscript_(v211, v213, *v215);
                v219 = v218;
                if (v218)
                {
                  v220 = *(v218 + 176);
                }

                else
                {
                  LODWORD(v220) = 0;
                }

                *v385 = j;
                *&v385[4] = 2;
                v221 = sub_262377868((v369 + 512), v385);
                v384[0] = __PAIR64__(v215[1], v220);
                sub_26223C48C(v221, v384);
              }

              v215 += 2;
            }
          }
        }
      }
    }
  }

  v224 = *(v369 + 256);
  v225 = 0;
  v226 = v374;
  v362 = v224;
  while (objc_msgSend_count(v224, v222, v223) > v225)
  {
    v227 = vsub_f32(v226[6 * v225], v226[6 * v225 + 1]);
    if (sqrtf(vaddv_f32(vmul_f32(v227, v227))) < *(v369 + 148))
    {
      if (sub_2623777AC((v369 + 512), v225, 0))
      {
        if (sub_2623777AC((v369 + 512), v225, 1))
        {
          *&v390 = v225;
          v228 = sub_262377868((v369 + 512), &v390);
          if (v228[1] != *v228)
          {
            *v385 = v225;
            *&v385[4] = 1;
            v229 = sub_262377868((v369 + 512), v385);
            if (v229[1] != *v229)
            {
              *v385 = v225;
              v230 = sub_262377868((v369 + 512), v385);
              v231 = *v230;
              v232 = v230[1];
              while (v231 != v232)
              {
                v383 = *v231;
                v384[0] = (v225 | 0x100000000);
                v233 = sub_262377868((v369 + 512), v384);
                v235 = *v233;
                v234 = v233[1];
                while (v235 != v234)
                {
                  LODWORD(v379) = *v235;
                  sub_262240084(&v390, &v226[6 * v225], &v226[6 * v383]);
                  v236 = *&v391[8];
                  sub_262240084(&v390, &v226[6 * v225], &v226[6 * v379]);
                  v237 = *&v391[8];
                  sub_262240084(&v390, &v226[6 * v383], &v226[6 * v379]);
                  v238 = *(v369 + 152);
                  if (vabdd_f64(90.0, v236) <= v238 && vabdd_f64(90.0, v237) <= v238 && *&v391[8] <= v238)
                  {
                    v240 = v383;
                    v241 = vsub_f32(v226[6 * v383], v226[6 * v383 + 1]);
                    v242 = vmul_f32(v241, v241);
                    v243 = v379;
                    v244 = vsub_f32(v226[6 * v379], v226[6 * v379 + 1]);
                    v245 = vmul_f32(v244, v244);
                    v246 = vsqrt_f32(vadd_f32(vzip1_s32(v242, v245), vzip2_s32(v242, v245)));
                    if (vmvn_s8(vcge_f32(v246, vdup_lane_s32(v246, 1))).u8[0])
                    {
                      *&v390 = &v383;
                      *(sub_262378BB4((v369 + 576), v383) + 5) = v243;
                    }

                    else
                    {
                      *&v390 = &v379;
                      *(sub_262378BB4((v369 + 576), v379) + 5) = v240;
                    }
                  }

                  v235 += 2;
                }

                v231 += 2;
              }

              v224 = v362;
            }
          }
        }
      }
    }

    ++v225;
  }

  for (k = *(v369 + 344); k; k = *k)
  {
    v248 = k[3];
    v249 = k[4];
    while (v248 != v249)
    {
      v250 = v248[1];
      LODWORD(v390) = *v248;
      DWORD1(v390) = v250;
      v251 = *(k + 4);
      DWORD2(v390) = v251;
      if (!sub_2621C719C((v369 + 576), v390) && !sub_2621C719C((v369 + 576), v250) || (v251 != 3 ? (v252 = v251 == 6) : (v252 = 1), !v252))
      {
        sub_262371F84(v369 + 448, &v390);
      }

      v248 += 2;
    }
  }

  sub_262378DD8(v369 + 328);
  v255 = *(v369 + 448);
  v256 = *(v369 + 456);
  if (v255 != v256)
  {
    v257 = v255 + 2;
    do
    {
      *&v390 = v257;
      v258 = sub_262377054((v369 + 328), *v257);
      *&v390 = *(v257 - 1);
      sub_26223C48C((v258 + 3), &v390);
      v259 = v257 + 1;
      v257 += 3;
    }

    while (v259 != v256);
  }

  v260 = objc_msgSend_count(*(v369 + 256), v253, v254);
  sub_262371AD8(&v390, (v369 + 448), v260);
  v261 = (v369 + 616);
  v262 = *(v369 + 616);
  if (v262)
  {
    v263 = *(v369 + 624);
    v264 = *(v369 + 616);
    if (v263 != v262)
    {
      do
      {
        v263 = sub_2621C74C4(v263 - 40);
      }

      while (v263 != v262);
      v264 = *v261;
    }

    *(v369 + 624) = v262;
    operator delete(v264);
    *v261 = 0;
    *(v369 + 624) = 0;
    *(v369 + 632) = 0;
  }

  *v261 = v390;
  *(v369 + 632) = *v391;
  *v391 = 0;
  v390 = 0uLL;
  *v385 = &v390;
  sub_262362D50(v385);
  v265 = *(v369 + 624);
  v266 = *(v369 + 616);
  v267 = 0xCCCCCCCCCCCCCCCDLL * ((v265 - v266) >> 3);
  sub_262371EA8(&v372, v267);
  v270 = *(v369 + 448);
  v269 = *(v369 + 456);
  if (v270 != v269)
  {
    if (v267 <= 1)
    {
      v267 = 1;
    }

    do
    {
      if (v265 != v266)
      {
        v271 = 0;
        v272 = 0;
        v273 = v267;
        do
        {
          v274 = *v261;
          if (sub_2621C719C(*v261 + v271, *v270) || sub_2621C719C(&v274[v271], *(v270 + 4)))
          {
            sub_262371F84(v372 + v272, v270);
          }

          v272 += 24;
          v271 += 40;
          --v273;
        }

        while (v273);
      }

      v270 += 12;
    }

    while (v270 != v269);
    v270 = *(v369 + 448);
    v269 = *(v369 + 456);
  }

  memset(v370, 0, sizeof(v370));
  v371 = 1065353216;
  if (v270 != v269)
  {
    v275 = (v270 + 4);
    do
    {
      if (v275[1] != 3)
      {
        v276 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v268, *(v275 - 1));
        *v277.i64 = sub_262375C50(v276);
        v363 = v277;

        v279 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v278, *v275);
        *v280.i64 = sub_262375C50(v279);
        v359 = v280;

        v281 = vmulq_f32(v363, v359);
        if ((v281.f32[2] + vaddv_f32(*v281.f32)) <= 0.0)
        {
          sub_2621C729C(v370, *(v275 - 1));
          sub_2621C729C(v370, *v275);
        }
      }

      v282 = v275 + 2;
      v275 += 3;
    }

    while (v282 != v269);
  }

  v284 = v372;
  v283 = v373;
  if (v373 == v372)
  {
    goto LABEL_299;
  }

  v285 = 0;
  do
  {
    v286 = (v284 + 24 * v285);
    v287 = *v286;
    v288 = v286[1];
    if (*v286 == v288)
    {
      goto LABEL_298;
    }

    v289 = v374;
    do
    {
      v291 = *v287;
      v290 = v287[1];
      *v385 = v289[3 * v291];
      *v384 = v289[3 * v290];
      sub_262240084(&v390, v385, v384);
      v292 = *&v391[4];
      if (!sub_2621C719C(v370, v291))
      {
        goto LABEL_271;
      }

      v294 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v293, v291);
      if (!v294)
      {
        v297 = *(v369 + 256);
LABEL_265:
        v312 = objc_msgSend_objectAtIndexedSubscript_(v297, v295, v291);
        if (v312)
        {
          v312[33] = v292;
        }

        v311 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v313, v291);
        v299 = 1.0;
        goto LABEL_268;
      }

      v296 = v294[33] > 0.0001;

      v297 = *(v369 + 256);
      if (!v296)
      {
        goto LABEL_265;
      }

      v298 = objc_msgSend_objectAtIndexedSubscript_(v297, v295, v291);
      if (v298)
      {
        v299 = v298[34] + 1.0;
      }

      else
      {
        v299 = 1.0;
      }

      v301 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v300, v291);
      v303 = v301;
      if (v301)
      {
        v304 = *(v301 + 132);
      }

      else
      {
        v304 = 0.0;
      }

      v305 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v302, v291);
      v307 = v305;
      if (v305)
      {
        v308 = *(v305 + 136);
      }

      else
      {
        v308 = 0.0;
      }

      v309 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v306, v291);
      if (v309)
      {
        v309[33] = (v292 + (v304 * v308)) / v299;
      }

      v311 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v310, v291);
LABEL_268:
      if (v311)
      {
        v311[34] = v299;
      }

LABEL_271:
      if (!sub_2621C719C(v370, v290))
      {
        goto LABEL_290;
      }

      v315 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v314, v290);
      if (!v315)
      {
        v318 = *(v369 + 256);
LABEL_284:
        v333 = objc_msgSend_objectAtIndexedSubscript_(v318, v316, v290);
        if (v333)
        {
          v333[33] = v292;
        }

        v332 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v334, v290);
        v320 = 1.0;
        goto LABEL_287;
      }

      v317 = v315[33] > 0.0001;

      v318 = *(v369 + 256);
      if (!v317)
      {
        goto LABEL_284;
      }

      v319 = objc_msgSend_objectAtIndexedSubscript_(v318, v316, v290);
      if (v319)
      {
        v320 = v319[34] + 1.0;
      }

      else
      {
        v320 = 1.0;
      }

      v322 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v321, v290);
      v324 = v322;
      if (v322)
      {
        v325 = *(v322 + 132);
      }

      else
      {
        v325 = 0.0;
      }

      v326 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v323, v290);
      v328 = v326;
      if (v326)
      {
        v329 = *(v326 + 136);
      }

      else
      {
        v329 = 0.0;
      }

      v330 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v327, v290);
      if (v330)
      {
        v330[33] = (v292 + (v325 * v329)) / v320;
      }

      v332 = objc_msgSend_objectAtIndexedSubscript_(*(v369 + 256), v331, v290);
LABEL_287:
      if (v332)
      {
        v332[34] = v320;
      }

LABEL_290:
      v287 += 3;
    }

    while (v287 != v288);
    v284 = v372;
    v283 = v373;
LABEL_298:
    ++v285;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((v283 - v284) >> 3) > v285);
LABEL_299:
  v335 = v367;
  v379 = 0u;
  v380 = 0u;
  v381 = 0u;
  v382 = 0u;
  obj = v335;
  v339 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v336, &v379, &v390, 16);
  if (v339)
  {
    v360 = *v380;
    do
    {
      v340 = 0;
      v364 = v339;
      do
      {
        if (*v380 != v360)
        {
          objc_enumerationMutation(obj);
        }

        v341 = *(*(&v379 + 1) + 8 * v340);
        v375 = 0u;
        v376 = 0u;
        v377 = 0u;
        v378 = 0u;
        v342 = objc_msgSend_walls(v341, v337, v338);
        v345 = objc_msgSend_countByEnumeratingWithState_objects_count_(v342, v343, &v375, v385, 16);
        v368 = v340;
        if (v345)
        {
          v346 = *v376;
          do
          {
            for (m = 0; m != v345; ++m)
            {
              if (*v376 != v346)
              {
                objc_enumerationMutation(v342);
              }

              v348 = *(*(&v375 + 1) + 8 * m);
              if (v348)
              {
                v349 = *(v348 + 132);
                if (v349 > 0.0001 && v349 < *(v369 + 140))
                {
                  sub_2621C7F54(1uLL);
                }
              }
            }

            v345 = objc_msgSend_countByEnumeratingWithState_objects_count_(v342, v344, &v375, v385, 16);
          }

          while (v345);
        }

        v340 = v368 + 1;
      }

      while (v368 + 1 != v364);
      v339 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v337, &v379, &v390, 16);
    }

    while (v339);
  }

  sub_2621C74C4(v370);
  *&v390 = &v372;
  sub_2621E1CB0(&v390);
  if (v374)
  {
    operator delete(v374);
  }

  v350 = *MEMORY[0x277D85DE8];
}

void sub_26236E64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *__p)
{
  if (v30)
  {
    operator delete(v30);
  }

  sub_2621C74C4(&a21);
  a21 = &a27;
  sub_2621E1CB0(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26236E9C8(void *a1, void *a2)
{
  v332 = *MEMORY[0x277D85DE8];
  v272 = a2;
  v3 = a1[78];
  v4 = a1[77];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3);
  sub_262371EA8(&v291, v5);
  v284 = a1;
  v6 = a1[56];
  v7 = a1[57];
  if (v6 != v7)
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      if (v3 != v4)
      {
        v8 = 0;
        v9 = 0;
        v10 = v5;
        do
        {
          v11 = *(v284 + 616);
          if (sub_2621C719C((v11 + v8), *v6) || sub_2621C719C((v11 + v8), *(v6 + 4)))
          {
            sub_262371F84(&v291[v9], v6);
          }

          v9 += 3;
          v8 += 40;
          --v10;
        }

        while (v10);
      }

      v6 += 12;
    }

    while (v6 != v7);
  }

  sub_262377468(&v289, *(v284 + 256));
  v12 = v291;
  v279 = v292;
  if (v291 == v292)
  {
    goto LABEL_186;
  }

  do
  {
    v288[0] = 0;
    v288[1] = 0;
    v287 = v288;
    v13 = v12[1];
    if (*v12 == v13)
    {
      v17 = -1;
      v18 = v288;
    }

    else
    {
      v14 = *v12 + 1;
      do
      {
        sub_2621C8094(&v287, *(v14 - 1));
        sub_2621C8094(&v287, *v14);
        v15 = v14 + 3;
        v16 = v14 + 2;
        v14 += 3;
      }

      while (v16 != v13);
      v17 = *(v15 - 2);
      v18 = v287;
    }

    sub_262331F00(&v285, v18, v288);
    v19 = v285;
    v20 = v286;
    if (v286 - v285 == 8)
    {
      if (v17 != 6)
      {
        if (v17 == 5)
        {
          sub_2623783A4(v284, v289, *v285, *(v285 + 1));
        }

        else if (v17 == 4)
        {
          sub_262378224(v284, v289, *v285, *(v285 + 1));
        }

        goto LABEL_183;
      }

      v25 = *v285;
      v24 = *(v285 + 1);
      v26 = v289;
      sub_26229E1DC(&v318, v289 + 6 * v25, v289 + 6 * v24, (v284 + 8));
      v27 = *(v284 + 448);
      v28 = *(v284 + 456) - v27;
      if (v28)
      {
        v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 2);
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v30 = (v27 + 8);
        do
        {
          v31 = *(v30 - 2);
          v32 = *(v30 - 1);
          _ZF = v31 == v25 && v32 == v24;
          if (_ZF || (v31 == v24 ? (v34 = v32 == v25) : (v34 = 0), v34))
          {
            *v30 = v318;
          }

          v30 += 3;
          --v29;
        }

        while (v29);
      }

      if (v318 > 4)
      {
        if (v318 == 5)
        {
          sub_2623783A4(v284, v26, v25, v24);
          goto LABEL_178;
        }

        if (v318 != 6)
        {
          goto LABEL_178;
        }
      }

      else if (v318 != -1)
      {
        if (v318 == 4)
        {
          sub_262378224(v284, v26, v25, v24);
        }

        goto LABEL_178;
      }

      if (v290 != v26)
      {
        v137 = 0xAAAAAAAAAAAAAAABLL * ((v290 - v26) >> 4);
        if (v137 < 0x555555555555556)
        {
          sub_2623780D4(v137);
        }

        sub_2621CBEB0();
      }

      *v314 = *(48 * v25);
      *v316 = *(48 * v24);
      v139 = v314[0];
      v138 = v314[1];
      v140 = v316[0];
      v141 = v316[1];
      sub_26229E1DC(&v325, v314, v316, (v284 + 8));
      v144.n128_u64[0] = vsub_f32(v139, v138);
      v144.n128_u64[0] = vmul_f32(v144.n128_u64[0], v144.n128_u64[0]);
      v142 = vsub_f32(v140, v141);
      v143 = vmul_f32(v142, v142);
      v144.n128_u64[0] = vsqrt_f32(vadd_f32(vzip1_s32(v144.n128_u64[0], v143), vzip2_s32(v144.n128_u64[0], v143)));
      if (*&v326 <= *(&v326 + 1))
      {
        v145 = v25;
      }

      else
      {
        v145 = v24;
      }

      v150 = *(48 * v145 + 0x20);
      v146 = vmla_n_f32(vmul_lane_f32(vmla_f32(vmul_f32(v141, 0x3F0000003F000000), 0x3F0000003F000000, v140), v144.n128_u64[0], 1), vmla_f32(vmul_f32(v138, 0x3F0000003F000000), 0x3F0000003F000000, v139), v144.n128_f32[0]);
      v147 = vdup_lane_s32(vadd_f32(v144.n128_u64[0], vdup_lane_s32(v144.n128_u64[0], 1)), 0);
      v148 = vdiv_f32(v146, v147);
      v147.f32[0] = -v150.n128_f32[1];
      v144.n128_u64[0] = vadd_f32(vzip1_s32(v147, v150.n128_u64[0]), v148);
      v150.n128_u64[0] = vsub_f32(v139, v148);
      v149 = vsub_f32(v144.n128_u64[0], v148);
      v144.n128_f32[0] = vaddv_f32(vmul_f32(v150.n128_u64[0], v149));
      v150.n128_f32[0] = vaddv_f32(vmul_f32(v149, v149));
      if (v150.n128_f32[0] >= 0.000001)
      {
        v151 = v150.n128_f32[0];
      }

      else
      {
        v151 = 0.000001;
      }

      v144.n128_u64[0] = vmla_n_f32(v148, v149, v144.n128_f32[0] / v151);
      v150.n128_u64[0] = vmla_n_f32(v148, v149, vaddv_f32(vmul_f32(vsub_f32(v138, v148), v149)) / v151);
      sub_26237812C(v284, v25, v144, v150);
      v152.n128_u64[0] = vmla_n_f32(v148, v149, vaddv_f32(vmul_f32(vsub_f32(v141, v148), v149)) / v151);
      v153.n128_u64[0] = vmla_n_f32(v148, v149, vaddv_f32(vmul_f32(vsub_f32(v140, v148), v149)) / v151);
      sub_26237812C(v284, v24, v153, v152);
      if (v330)
      {
        v331 = v330;
        operator delete(v330);
      }

      if (v328)
      {
        v329 = v328;
        operator delete(v328);
      }

      operator delete(0);
LABEL_178:
      if (v323)
      {
        v324 = v323;
        operator delete(v323);
      }

      v136 = v321;
      if (v321)
      {
        v322 = v321;
LABEL_182:
        operator delete(v136);
      }

      goto LABEL_183;
    }

    if ((v286 - v285) < 9)
    {
      goto LABEL_183;
    }

    v316[1] = 0;
    v316[0] = 0;
    v317 = 0;
    v311 = 0;
    v312 = 0;
    v313 = 0;
    v308 = 0;
    v309 = 0;
    v310 = 0;
    v305 = 0;
    v306 = 0;
    v307 = 0;
    v302 = 0;
    v303 = 0;
    v304 = 0;
    v299 = 0;
    v300 = 0;
    v301 = 0;
    if (v285 == v286)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v21 = v289;
      do
      {
        *v281 = v21[3 * *v19 + 2];
        LODWORD(v325) = v281[0];
        sub_2621C8F2C(&v302, &v325);
        LODWORD(v325) = HIDWORD(v281[0]);
        sub_2621C8F2C(&v299, &v325);
        ++v19;
      }

      while (v19 != v20);
      v23 = v302;
      v22 = v303;
    }

    memset(__p, 0, sizeof(__p));
    sub_2621C8E70(__p, v23, v22, (v22 - v23) >> 2);
    *&v325 = &unk_2874EEF98;
    v327 = &v325;
    v35 = sub_26237865C(__p, &v325);
    v37 = v36;
    sub_26230C710(&v325);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    memset(v297, 0, sizeof(v297));
    v282 = v299;
    sub_2621C8E70(v297, v299, v300, (v300 - v299) >> 2);
    *&v318 = &unk_2874EEF98;
    *(&v319 + 1) = &v318;
    v38 = sub_26237865C(v297, &v318);
    v40 = v39;
    sub_26230C710(&v318);
    if (v297[0])
    {
      v297[1] = v297[0];
      operator delete(v297[0]);
    }

    v296[0] = 0;
    v296[1] = 0;
    v295 = v296;
    v43 = v285;
    v44 = v286;
    if (v285 != v286)
    {
      v45 = atanf(((v38 + v40) * 0.5) / ((v35 + v37) * 0.5));
      v46 = v289;
      do
      {
        v47 = *v43;
        LODWORD(v314[0]) = v47;
        v41.n128_f32[0] = ((v45 - atanf(COERCE_FLOAT(HIDWORD(v46[6 * v47 + 4])) / COERCE_FLOAT(*&v46[6 * v47 + 4]))) * 180.0) / 3.14159265;
        if (fabsf(v41.n128_f32[0]) <= *(v284 + 156))
        {
          sub_2621C8094(&v295, v47);
        }

        ++v43;
      }

      while (v43 != v44);
    }

    v48 = *v12;
    v49 = v12[1];
    if (*v12 == v49)
    {
      v91 = 0;
      goto LABEL_138;
    }

    v277 = v23;
    v50 = v289;
    do
    {
      v51 = *v48;
      v52 = v48[1];
      v53 = &v50[3 * *v48];
      v42 = *v53;
      v41 = v50[3 * v52];
      v293 = v41;
      v294 = v42;
      v54 = v48[2];
      if (v54 > 4)
      {
        if (v54 != 5)
        {
          if (v54 != 6)
          {
            goto LABEL_124;
          }

          v58 = v296[0];
          if (!v296[0])
          {
            goto LABEL_111;
          }

          v59 = v296[0];
          while (1)
          {
            v60 = *(v59 + 7);
            if (v51 >= v60)
            {
              if (v60 >= v51)
              {
                v76 = vsub_f32(v294.n128_u64[0], *&v294.n128_i8[8]);
                if (sqrtf(vaddv_f32(vmul_f32(v76, v76))) > *(v284 + 44))
                {
                  v77 = v53[2];
                  v314[0] = v53[2].n128_u64[0];
                  sub_2621CBA84(v316, v314);
                  v58 = v296[0];
                }

                while (1)
                {
LABEL_106:
                  if (!v58)
                  {
                    goto LABEL_111;
                  }

                  v78 = *(v58 + 7);
                  if (v52 >= v78)
                  {
                    if (v78 >= v52)
                    {
                      v79 = vsub_f32(v293.n128_u64[0], *&v293.n128_i8[8]);
                      if (sqrtf(vaddv_f32(vmul_f32(v79, v79))) > *(v284 + 44))
                      {
                        v80 = &v50[3 * v52];
                        v81 = v80[2];
                        v314[0] = v80[2].n128_u64[0];
                        sub_2621CBA84(v316, v314);
                      }

LABEL_111:
                      v314[0] = vmla_f32(vmul_f32(vmul_f32(vadd_f32(v293.n128_u64[0], *&v293.n128_i8[8]), 0x3F0000003F000000), 0x3F0000003F000000), 0x3F0000003F000000, vmul_f32(vadd_f32(v294.n128_u64[0], *&v294.n128_i8[8]), 0x3F0000003F000000));
                      sub_2621CBA84(&v311, v314);
                      goto LABEL_124;
                    }

                    ++v58;
                  }

                  v58 = *v58;
                }
              }

              ++v59;
            }

            v59 = *v59;
            if (!v59)
            {
              goto LABEL_106;
            }
          }
        }

        v64 = v294;
        v65 = v293;
        sub_2621DCD34(v314, &v294, &v293);
        v66 = *(v284 + 72);
        v67 = v65.n128_u64[0];
        v68 = v64.n128_u64[0];
        if (*v314[0] >= v66)
        {
          v67 = *&v65.n128_i8[8];
          v68 = v64.n128_u64[0];
          if (*(v314[0] + 1) >= v66)
          {
            v67 = v65.n128_u64[0];
            v68 = *&v64.n128_i8[8];
            if (*(v314[0] + 2) >= v66)
            {
              v67 = *&v65.n128_i8[8];
              v68 = *&v64.n128_i8[8];
            }
          }
        }

        operator delete(v314[0]);
        v69 = vabd_f32(v68, v64.n128_u64[0]);
        if (fmaxf(v69.f32[0], v69.f32[1]) <= 0.000001)
        {
          v314[0] = v51;
        }

        else
        {
          v314[0] = (v51 | 0x100000000);
        }

        sub_2623787A8((v284 + 472), v314);
        v70 = vabd_f32(v67, v65.n128_u64[0]);
        if (fmaxf(v70.f32[0], v70.f32[1]) <= 0.000001)
        {
          v314[0] = v52;
        }

        else
        {
          v314[0] = (v52 | 0x100000000);
        }

        sub_2623787A8((v284 + 472), v314);
        v71 = v296[0];
        if (v296[0])
        {
          v72 = v296[0];
          while (1)
          {
            v73 = *(v72 + 7);
            if (v51 >= v73)
            {
              if (v73 >= v51)
              {
                v82 = vsub_f32(v64.n128_u64[0], *&v64.n128_i8[8]);
                if (sqrtf(vaddv_f32(vmul_f32(v82, v82))) > *(v284 + 44))
                {
                  v83 = &v50[3 * v51];
                  v84 = v83[2];
                  v314[0] = v83[2].n128_u64[0];
                  sub_2621CBA84(v316, v314);
                  v71 = v296[0];
                }

                while (1)
                {
LABEL_116:
                  if (!v71)
                  {
                    goto LABEL_121;
                  }

                  v85 = *(v71 + 7);
                  if (v52 >= v85)
                  {
                    if (v85 >= v52)
                    {
                      v86 = vsub_f32(v65.n128_u64[0], *&v65.n128_i8[8]);
                      if (sqrtf(vaddv_f32(vmul_f32(v86, v86))) > *(v284 + 44))
                      {
                        v87 = &v50[3 * v52];
                        v88 = v87[2];
                        v314[0] = v87[2].n128_u64[0];
                        sub_2621CBA84(v316, v314);
                      }

                      goto LABEL_121;
                    }

                    ++v71;
                  }

                  v71 = *v71;
                }
              }

              ++v72;
            }

            v72 = *v72;
            if (!v72)
            {
              goto LABEL_116;
            }
          }
        }

LABEL_121:
        v314[0] = vmla_f32(vmul_f32(v67, 0x3F0000003F000000), 0x3F0000003F000000, v68);
        sub_2621CBA84(&v311, v314);
        goto LABEL_124;
      }

      if (v54 == 3)
      {
        v61 = v53[2];
        v314[0] = v53[2].n128_u64[0];
        sub_2621CBA84(&v308, v314);
        v62 = &v50[3 * v52];
        v63 = v62[2];
        v314[0] = v62[2].n128_u64[0];
        sub_2621CBA84(&v308, v314);
        v314[0] = vmul_f32(vadd_f32(v294.n128_u64[0], *&v294.n128_i8[8]), 0x3F0000003F000000);
        sub_2621CBA84(&v305, v314);
        v314[0] = vmul_f32(vadd_f32(v293.n128_u64[0], *&v293.n128_i8[8]), 0x3F0000003F000000);
        sub_2621CBA84(&v305, v314);
        goto LABEL_124;
      }

      if (v54 != 4)
      {
        goto LABEL_124;
      }

      v55 = v296[0];
      if (!v296[0])
      {
        goto LABEL_123;
      }

      v56 = v296[0];
      while (1)
      {
        v57 = *(v56 + 7);
        if (v51 >= v57)
        {
          break;
        }

LABEL_67:
        v56 = *v56;
        if (!v56)
        {
          while (1)
          {
LABEL_97:
            v75 = *(v55 + 7);
            if (v52 >= v75)
            {
              if (v75 >= v52)
              {
                v89 = &v50[3 * v52];
                v90 = v89[2];
                v314[0] = v89[2].n128_u64[0];
                sub_2621CBA84(v316, v314);
                v314[0] = vmul_f32(vadd_f32(v293.n128_u64[0], *&v293.n128_i8[8]), 0x3F0000003F000000);
                sub_2621CBA84(&v311, v314);
                goto LABEL_123;
              }

              ++v55;
            }

            v55 = *v55;
            if (!v55)
            {
              goto LABEL_123;
            }
          }
        }
      }

      if (v57 < v51)
      {
        ++v56;
        goto LABEL_67;
      }

      v74 = v53[2];
      v314[0] = v53[2].n128_u64[0];
      sub_2621CBA84(v316, v314);
      v314[0] = vmul_f32(vadd_f32(v294.n128_u64[0], *&v294.n128_i8[8]), 0x3F0000003F000000);
      sub_2621CBA84(&v311, v314);
      v55 = v296[0];
      if (v296[0])
      {
        goto LABEL_97;
      }

LABEL_123:
      v314[0] = v51;
      sub_2623787A8((v284 + 472), v314);
      v314[0] = (v51 | 0x100000000);
      sub_2623787A8((v284 + 472), v314);
      v314[0] = v52;
      sub_2623787A8((v284 + 472), v314);
      v314[0] = (v52 | 0x100000000);
      sub_2623787A8((v284 + 472), v314);
LABEL_124:
      v48 += 3;
    }

    while (v48 != v49);
    v91 = v316[0];
    v23 = v277;
    if (v316[1] != v316[0])
    {
      v92 = v311;
      if (v312 != v311)
      {
        v93 = 0;
        v94 = v316[0];
        do
        {
          v95 = *v94++;
          v93 = vadd_f32(v93, v95);
        }

        while (v94 != v316[1]);
        v96 = 0;
        do
        {
          v97 = *v92++;
          v98.i32[1] = v97.i32[1];
          v96 = vadd_f32(v96, v97);
        }

        while (v92 != v312);
        v99 = v285;
        v100 = v286;
        if (v285 != v286)
        {
          *v98.i32 = ((v312 - v311) >> 3);
          v101 = vdiv_f32(v96, vdup_lane_s32(v98, 0));
          v96.f32[0] = ((v316[1] - v316[0]) >> 3);
          v102 = vdiv_f32(v93, vdup_lane_s32(v96, 0));
          v103 = vmul_f32(v102, v102);
          v103.i32[0] = vadd_f32(v103, vdup_lane_s32(v103, 1)).u32[0];
          v104 = vrsqrte_f32(v103.u32[0]);
          v105 = vmul_f32(v104, vrsqrts_f32(v103.u32[0], vmul_f32(v104, v104)));
          v106 = vmul_f32(v105, vrsqrts_f32(v103.u32[0], vmul_f32(v105, v105)));
          v107 = vmul_n_f32(v102, *v106.i32);
          *v106.i32 = -*&v107.i32[1];
          v108 = v289;
          v109 = vsub_f32(vadd_f32(v101, vzip1_s32(v106, v107)), v101);
          v110 = vaddv_f32(vmul_f32(v109, v109));
          if (v110 >= 0.000001)
          {
            v111 = v110;
          }

          else
          {
            v111 = 0.000001;
          }

          do
          {
            v112 = *v99;
            v113 = &v108[48 * v112];
            v41.n128_u64[0] = vmla_n_f32(v101, v109, vaddv_f32(vmul_f32(vsub_f32(*v113, v101), v109)) / v111);
            v42.n128_u64[0] = vmla_n_f32(v101, v109, vaddv_f32(vmul_f32(vsub_f32(v113[1], v101), v109)) / v111);
            sub_26237812C(v284, v112, v41, v42);
            ++v99;
          }

          while (v99 != v100);
        }

        goto LABEL_149;
      }
    }

LABEL_138:
    v114 = v305;
    if (v306 != v305)
    {
      v115 = v308;
      v116 = 0;
      v117 = 0;
      if (v309 != v308)
      {
        v118 = 0;
        do
        {
          v119 = *v115++;
          v120.i32[1] = v119.i32[1];
          v118 = vadd_f32(v118, v119);
        }

        while (v115 != v309);
        *v120.i32 = ((v309 - v308) >> 3);
        v121 = vdiv_f32(v118, vdup_lane_s32(v120, 0));
        v122 = vmul_f32(v121, v121);
        v122.i32[0] = vadd_f32(v122, vdup_lane_s32(v122, 1)).u32[0];
        v123 = vrsqrte_f32(v122.u32[0]);
        v124 = vmul_f32(v123, vrsqrts_f32(v122.u32[0], vmul_f32(v123, v123)));
        v117 = vmul_n_f32(v121, vmul_f32(v124, vrsqrts_f32(v122.u32[0], vmul_f32(v124, v124))).f32[0]);
      }

      do
      {
        v125 = *v114++;
        v126.i32[1] = v125.i32[1];
        v116 = vadd_f32(v116, v125);
      }

      while (v114 != v306);
      v127 = v285;
      v128 = v286;
      if (v285 != v286)
      {
        *v126.i32 = ((v306 - v305) >> 3);
        v129 = vdiv_f32(v116, vdup_lane_s32(v126, 0));
        v116.f32[0] = -*&v117.i32[1];
        v130 = v289;
        v131 = vsub_f32(vadd_f32(vzip1_s32(v116, v117), v129), v129);
        v132 = vaddv_f32(vmul_f32(v131, v131));
        if (v132 >= 0.000001)
        {
          v133 = v132;
        }

        else
        {
          v133 = 0.000001;
        }

        do
        {
          v134 = *v127;
          v135 = &v130[48 * v134];
          v41.n128_u64[0] = vmla_n_f32(v129, v131, vaddv_f32(vmul_f32(vsub_f32(*v135, v129), v131)) / v133);
          v42.n128_u64[0] = vmla_n_f32(v129, v131, vaddv_f32(vmul_f32(vsub_f32(v135[1], v129), v131)) / v133);
          sub_26237812C(v284, v134, v41, v42);
          ++v127;
        }

        while (v127 != v128);
      }
    }

LABEL_149:
    sub_2621C6C04(v296[0]);
    if (v282)
    {
      operator delete(v282);
    }

    if (v23)
    {
      operator delete(v23);
    }

    if (v305)
    {
      operator delete(v305);
    }

    if (v308)
    {
      operator delete(v308);
    }

    if (v311)
    {
      operator delete(v311);
    }

    if (v91)
    {
      v136 = v91;
      goto LABEL_182;
    }

LABEL_183:
    if (v285)
    {
      v286 = v285;
      operator delete(v285);
    }

    sub_2621C6C04(v288[0]);
    v12 += 3;
  }

  while (v12 != v279);
LABEL_186:
  if (v289)
  {
    operator delete(v289);
  }

  *&v325 = &v291;
  sub_2621E1CB0(&v325);
  sub_262378DD8(v284 + 328);
  v154 = *(v284 + 448);
  v155 = *(v284 + 456);
  if (v154 != v155)
  {
    v156 = v154 + 2;
    do
    {
      *&v325 = v156;
      v157 = sub_262377054((v284 + 328), *v156);
      *&v325 = *(v156 - 1);
      sub_26223C48C((v157 + 3), &v325);
      v158 = v156 + 1;
      v156 += 3;
    }

    while (v158 != v155);
  }

  v283 = v272;
  for (i = 0; objc_msgSend_count(*(v284 + 256), v159, v160, v272) > i; ++i)
  {
    v163 = objc_msgSend_objectAtIndexedSubscript_(*(v284 + 256), v162, i);
    v166 = v163;
    if (v163)
    {
      v168 = *(v163 + 160);
      v167 = *(v163 + 168);
    }

    else
    {
      v168 = 0;
      LODWORD(v167) = 0;
    }

    if (v168 < objc_msgSend_count(v283, v164, v165) && (!sub_2623777AC((v284 + 472), i, 0) || !sub_2623777AC((v284 + 472), i, 1)))
    {
      v169 = *(v284 + 552);
      v170 = sub_26223FCEC(v166).n128_u64[0];
      v172 = v171;
      v173 = (v169 + 40 * v168);
      if (sub_2623777AC(v173, v167, 0))
      {
        *&v325 = v167;
        v174 = sub_262377868((v169 + 40 * v168), &v325);
        if (v174[1] != *v174)
        {
          v176 = objc_msgSend_objectAtIndexedSubscript_(v283, v175, v168);
          v179 = objc_msgSend_walls(v176, v177, v178);

          *&v325 = v167;
          v180 = sub_262377868(v173, &v325);
          v183 = *v180;
          v184 = v180[1];
          while (v183 != v184)
          {
            v185 = *v183;
            if (objc_msgSend_count(v179, v181, v182) > v185)
            {
              v186 = objc_msgSend_objectAtIndexedSubscript_(v179, v181, *v183);
              v187 = v186;
              if (v186)
              {
                v188 = v186[22];
              }

              else
              {
                v188 = 0;
              }

              v189 = sub_26223FCEC(v186);
              v191 = v189.n128_u64[0];
              v192 = v190.n128_u64[0];
              v193 = v183[1];
              if (v193 == 1)
              {
                v190.n128_u64[0] = vsub_f32(v190.n128_u64[0], v189.n128_u64[0]);
                v189.n128_f32[0] = vaddv_f32(vmul_f32(vsub_f32(v170, v189.n128_u64[0]), v190.n128_u64[0]));
                v198 = vaddv_f32(vmul_f32(v190.n128_u64[0], v190.n128_u64[0]));
                if (v198 < 0.000001)
                {
                  v198 = 0.000001;
                }

                v199 = vmla_n_f32(v191, v190.n128_u64[0], v189.n128_f32[0] / v198);
                v189.n128_u64[0] = v199;
                v190.n128_u64[0] = v172;
                sub_26237812C(v284, i, v189, v190);
                v200.n128_u64[0] = v191;
                v201.n128_u64[0] = v199;
                sub_26237812C(v284, v188, v200, v201);
              }

              else if (!v193)
              {
                v190.n128_u64[0] = vsub_f32(v190.n128_u64[0], v189.n128_u64[0]);
                v189.n128_f32[0] = vaddv_f32(vmul_f32(vsub_f32(v170, v189.n128_u64[0]), v190.n128_u64[0]));
                v194 = vaddv_f32(vmul_f32(v190.n128_u64[0], v190.n128_u64[0]));
                if (v194 < 0.000001)
                {
                  v194 = 0.000001;
                }

                v195 = vmla_n_f32(v191, v190.n128_u64[0], v189.n128_f32[0] / v194);
                v189.n128_u64[0] = v195;
                v190.n128_u64[0] = v172;
                sub_26237812C(v284, i, v189, v190);
                v196.n128_u64[0] = v195;
                v197.n128_u64[0] = v192;
                sub_26237812C(v284, v188, v196, v197);
              }
            }

            v183 += 2;
          }
        }
      }

      if (sub_2623777AC(v173, v167, 1))
      {
        *&v325 = v167 | 0x100000000;
        v202 = sub_262377868(v173, &v325);
        if (v202[1] != *v202)
        {
          v204 = objc_msgSend_objectAtIndexedSubscript_(v283, v203, v168);
          v207 = objc_msgSend_walls(v204, v205, v206);

          *&v325 = v167 | 0x100000000;
          v208 = sub_262377868(v173, &v325);
          v211 = *v208;
          v212 = v208[1];
          while (v211 != v212)
          {
            v213 = *v211;
            if (objc_msgSend_count(v207, v209, v210) > v213)
            {
              v214 = objc_msgSend_objectAtIndexedSubscript_(v207, v209, *v211);
              v215 = v214;
              if (v214)
              {
                v216 = v214[22];
              }

              else
              {
                v216 = 0;
              }

              v217 = sub_26223FCEC(v214);
              v219 = v217.n128_u64[0];
              v220 = v218.n128_u64[0];
              v221 = v211[1];
              if (v221 == 1)
              {
                v218.n128_u64[0] = vsub_f32(v218.n128_u64[0], v217.n128_u64[0]);
                v217.n128_f32[0] = vaddv_f32(vmul_f32(vsub_f32(v172, v217.n128_u64[0]), v218.n128_u64[0]));
                v226 = vaddv_f32(vmul_f32(v218.n128_u64[0], v218.n128_u64[0]));
                if (v226 < 0.000001)
                {
                  v226 = 0.000001;
                }

                v227 = vmla_n_f32(v219, v218.n128_u64[0], v217.n128_f32[0] / v226);
                v217.n128_u64[0] = v170;
                v218.n128_u64[0] = v227;
                sub_26237812C(v284, i, v217, v218);
                v228.n128_u64[0] = v219;
                v229.n128_u64[0] = v227;
                sub_26237812C(v284, v216, v228, v229);
              }

              else if (!v221)
              {
                v218.n128_u64[0] = vsub_f32(v218.n128_u64[0], v217.n128_u64[0]);
                v217.n128_f32[0] = vaddv_f32(vmul_f32(vsub_f32(v172, v217.n128_u64[0]), v218.n128_u64[0]));
                v222 = vaddv_f32(vmul_f32(v218.n128_u64[0], v218.n128_u64[0]));
                if (v222 < 0.000001)
                {
                  v222 = 0.000001;
                }

                v223 = vmla_n_f32(v219, v218.n128_u64[0], v217.n128_f32[0] / v222);
                v217.n128_u64[0] = v170;
                v218.n128_u64[0] = v223;
                sub_26237812C(v284, i, v217, v218);
                v224.n128_u64[0] = v223;
                v225.n128_u64[0] = v220;
                sub_26237812C(v284, v216, v224, v225);
              }
            }

            v211 += 2;
          }
        }
      }
    }
  }

  v230 = v283;
  v231 = *(v284 + 624);
  v232 = *(v284 + 616);
  v233 = 0xCCCCCCCCCCCCCCCDLL * ((v231 - v232) >> 3);
  sub_262371EA8(&v305, v233);
  v234 = *(v284 + 448);
  v235 = *(v284 + 456);
  if (v234 != v235)
  {
    if (v233 <= 1)
    {
      v233 = 1;
    }

    do
    {
      if (v231 != v232)
      {
        v236 = 0;
        v237 = 0;
        v238 = v233;
        do
        {
          v239 = *(v284 + 616);
          if (sub_2621C719C((v239 + v236), *v234) || sub_2621C719C((v239 + v236), *(v234 + 4)))
          {
            sub_262371F84(v305 + v237, v234);
          }

          v237 += 24;
          v236 += 40;
          --v238;
        }

        while (v238);
      }

      v234 += 12;
    }

    while (v234 != v235);
  }

  v318 = 0u;
  v319 = 0u;
  v320 = 1065353216;
  v240 = *(v284 + 624) - *(v284 + 616);
  if (v240)
  {
    v241 = 0xCCCCCCCCCCCCCCCDLL * (v240 >> 3);
    if (v241 <= 1)
    {
      v241 = 1;
    }

    v273 = v241;
    v274 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    while (1)
    {
      v246 = *(v284 + 616);
      sub_262377468(v316, *(v284 + 256));
      v247 = (v305 + 24 * v274);
      v248 = *v247;
      v249 = v247[1];
      while (1)
      {
        if (v248 == v249)
        {
          goto LABEL_295;
        }

        if (*(v248 + 8) != 3)
        {
          break;
        }

        v248 += 12;
      }

      v250 = *(v246 + 40 * v274 + 16);
      if (v250)
      {
        v251 = (v316[0] + 48 * *(v250 + 16));
        v253 = *v251;
        v252 = v251[1];
        sub_262241270(1uLL);
      }

      v254 = *(v284 + 128);
      v312 = 0;
      v313 = 0;
      v311 = 0;
      sub_262349634(&v311, 0, 0, 0);
      sub_2623496B0(v314, 1, &v311, v254 * 0.6);
      if (v311)
      {
        v312 = v311;
        operator delete(v311);
      }

      sub_262336EFC(v314);
      v255 = v315;
      v308 = 0;
      v309 = 0;
      v310 = 0;
      sub_262349634(&v308, v314[0], v314[1], 0xAAAAAAAAAAAAAAABLL * ((v314[1] - v314[0]) >> 2));
      if (v255 >= 1)
      {
        break;
      }

LABEL_291:
      if (v308)
      {
        operator delete(v308);
      }

      if (v314[0])
      {
        v314[1] = v314[0];
        operator delete(v314[0]);
      }

LABEL_295:
      if (v316[0])
      {
        operator delete(v316[0]);
      }

      if (++v274 == v273)
      {
        goto LABEL_298;
      }
    }

    v256 = 0;
    v275 = v255;
    while (2)
    {
      v258 = v308;
      v257 = v309;
      v276 = v256;
      if (v309 == v308)
      {
        v278 = 0;
      }

      else
      {
        v259 = 0;
        v278 = 0;
        v260 = 0;
        v261 = 8;
        do
        {
          if (*&v258[v261] - 1 == v256)
          {
            v262 = v259 - v278;
            v263 = (v259 - v278) >> 2;
            v264 = v263 + 1;
            if ((v263 + 1) >> 62)
            {
              sub_2621CBEB0();
            }

            if (-v278 >> 1 > v264)
            {
              v264 = -v278 >> 1;
            }

            if (-v278 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v265 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v265 = v264;
            }

            if (v265)
            {
              sub_2621C7F54(v265);
            }

            v266 = (v259 - v278) >> 2;
            v267 = (4 * v263);
            v268 = (4 * v263 - 4 * v266);
            *v267 = v260;
            v259 = v267 + 1;
            memcpy(v268, v278, v262);
            if (v278)
            {
              operator delete(v278);
              v258 = v308;
              v257 = v309;
            }

            v278 = v268;
            v256 = v276;
          }

          ++v260;
          v261 += 12;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v257 - v258) >> 2) > v260);
        v269 = v278;
        if (v259 != v278)
        {
          do
          {
            v280 = vcvt_s32_f32(*(8 * *v269));
            if (sub_2623777AC((v284 + 512), v280.i32[0], v280.i32[1]))
            {
              *&v325 = v280;
              v270 = sub_262377868((v284 + 512), &v325);
              if (v270[1] != *v270)
              {
                sub_2621CBEC8(1uLL);
              }
            }

            ++v269;
          }

          while (v269 != v259);
          v255 = v275;
          goto LABEL_288;
        }

        v255 = v275;
      }

      sub_262377468(&v325, *(v284 + 256));
      if (v316[0])
      {
        operator delete(v316[0]);
      }

      *v316 = v325;
      v317 = v326;
LABEL_288:
      if (v278)
      {
        operator delete(v278);
      }

      v256 = v276 + 1;
      if (v276 + 1 == v255)
      {
        goto LABEL_291;
      }

      continue;
    }
  }

LABEL_298:
  sub_2621C74C4(&v318);
  *&v325 = &v305;
  sub_2621E1CB0(&v325);

  v271 = *MEMORY[0x277D85DE8];
}

void sub_262370938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  sub_262258C88(&STACK[0x220]);
  if (__p)
  {
    operator delete(__p);
  }

  sub_2621C6C04(a31);
  if (a33)
  {
    operator delete(a33);
  }

  a64 = &a36;
  sub_2621E1CB0(&a64);

  _Unwind_Resume(a1);
}

void *sub_262370CD4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_2621E1EE4(a2);
    }

    sub_2621CBEB0();
  }

  return result;
}

void sub_262370D9C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 18);
        v4 -= 144;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_262370E1C(float **a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v18, v22, 16);
  if (v7)
  {
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        if (*(*a1 + 4) == 1)
        {
          v11 = **a1;
          objc_msgSend_quad(v10, v5, v6);
          if (vabds_f32(v11, v12) > 0.01)
          {
            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v13 = qword_27FF0C058;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *v17 = 0;
              _os_log_debug_impl(&dword_2621C3000, v13, OS_LOG_TYPE_DEBUG, "Inconsistent floor height from merged and external walls.", v17, 2u);
            }
          }
        }

        else
        {
          objc_msgSend_quad(v10, v5, v6);
          v14 = *a1;
          *v14 = v15;
          *(v14 + 4) = 1;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v18, v22, 16);
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_262371014(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v38 = a2;
  v39 = a3;
  __p = 0;
  v49 = 0uLL;
  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = v8[3];
      v11 = v8[4];
      while (v10 != v11)
      {
        v13 = *v10;
        v12 = v10[1];
        v14 = *(v8 + 4);
        if (v9 >= *(&v49 + 1))
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 2);
          v16 = v15 + 1;
          if ((v15 + 1) > 0x1555555555555555)
          {
            sub_2621CBEB0();
          }

          if (0x5555555555555556 * ((*(&v49 + 1) - __p) >> 2) > v16)
          {
            v16 = 0x5555555555555556 * ((*(&v49 + 1) - __p) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(&v49 + 1) - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v17 = 0x1555555555555555;
          }

          else
          {
            v17 = v16;
          }

          sub_262371A4C(&v50, v17, v15, &__p);
          v18 = v51;
          *v51 = v13;
          *(v18 + 4) = v12;
          *(v18 + 8) = v14;
          *&v51 = v18 + 12;
          v19 = (*(&v50 + 1) - (v49 - __p));
          memcpy(v19, __p, v49 - __p);
          v20 = __p;
          v21 = *(&v49 + 1);
          __p = v19;
          v22 = v51;
          v49 = v51;
          *&v51 = v20;
          *(&v51 + 1) = v21;
          *&v50 = v20;
          *(&v50 + 1) = v20;
          if (v20)
          {
            v42 = v22;
            operator delete(v20);
            v22 = v42;
          }

          v9 = v22;
        }

        else
        {
          *v9 = v13;
          *(v9 + 1) = v12;
          *(v9 + 2) = v14;
          v9 += 12;
        }

        *&v49 = v9;
        v10 += 2;
      }

      v8 = *v8;
    }

    while (v8);
  }

  v23 = objc_msgSend_count(v39, v6, v7);
  sub_262371AD8(&v46, &__p, v23);
  v25 = v46;
  v24 = v47;
  v26 = 0xCCCCCCCCCCCCCCCDLL * ((v47 - v46) >> 3);
  sub_262371EA8(&v44, v26);
  v27 = __p;
  v28 = v49;
  if (__p != v49)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      if (v24 != v25)
      {
        v29 = 0;
        v30 = 0;
        v31 = v26;
        do
        {
          v32 = v46;
          if (sub_2621C719C((v46 + v29), *v27) || sub_2621C719C((v32 + v29), *(v27 + 1)))
          {
            sub_262371F84(v44 + v30, v27);
          }

          v30 += 24;
          v29 += 40;
          --v31;
        }

        while (v31);
      }

      v27 += 12;
    }

    while (v27 != v28);
  }

  v33 = v44;
  v37 = v45;
  if (v44 != v45)
  {
    do
    {
      v50 = 0u;
      v51 = 0u;
      v52 = 1065353216;
      v34 = *(v33 + 8);
      v40 = v33;
      if (*v33 != v34)
      {
        v35 = *v33 + 8;
        sub_2621C729C(&v50, **v33);
        sub_2621C729C(&v50, *(v35 - 4));
        operator new();
      }

      memset(v43, 0, sizeof(v43));
      sub_2623720A0(v43, 0, 0);
      v41 = v38;

      if (v43[0])
      {
        operator delete(v43[0]);
      }

      sub_2621C74C4(&v50);
      v33 = v40 + 24;
    }

    while (v40 + 24 != v37);
  }

  *&v50 = &v44;
  sub_2621E1CB0(&v50);
  *&v50 = &v46;
  sub_262362D50(&v50);
  if (__p)
  {
    *&v49 = __p;
    operator delete(__p);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_2623718E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  a31 = &a25;
  sub_262362D50(&a31);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_262371A4C(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x1555555555555556)
    {
      operator new();
    }

    sub_2621C6A34();
  }

  *result = 0;
  result[1] = 12 * a3;
  result[2] = 12 * a3;
  result[3] = 0;
  return result;
}

void sub_262371AD8(void *a1, int **a2, unint64_t a3)
{
  v13 = -1;
  sub_2621DE86C(__p, a3);
  memset(v14, 0, sizeof(v14));
  v11 = v14;
  v12 = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_2621E1E3C(a3);
    }

    sub_2621CBEB0();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = v14[0];
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      *(*(v8 + 24 * v9) + 4 * v10) = 0;
    }

    while (v6 != v7);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v13 = 0;
  __p[0] = v14;
  sub_2621E1CB0(__p);
}

void sub_262371E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_2621E1CB0(&a11);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_262371EA8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_2621CBEB0();
  }

  return result;
}

void sub_262371F84(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x1555555555555555)
    {
      sub_2621CBEB0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    sub_262371A4C(&v20, v11, v8, a1);
    v12 = v22;
    v13 = *(a2 + 2);
    *v22 = *a2;
    *(v12 + 8) = v13;
    *&v22 = v22 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = &v21[-v14];
    memcpy(&v21[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    v17 = *(a1 + 16);
    v18 = v22;
    *(a1 + 8) = v22;
    *&v22 = v16;
    *(&v22 + 1) = v17;
    v20 = v16;
    v21 = v16;
    if (v16)
    {
      v19 = v18;
      operator delete(v16);
      v18 = v19;
    }

    v7 = v18;
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

uint64_t sub_2623720A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    sub_2621C8EEC(result, a3);
  }

  return result;
}

void sub_2623720EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262372108(void *a1, __n128 a2, __n128 a3, float a4, float a5)
{
  v5 = a1;
  v7 = a2;
  v6 = a3;
  v8 = a2;
  v8.n128_f32[2] = a5;
  v9 = a3;
  v9.n128_f32[2] = a5;
  v6.n128_f32[2] = a4;
  v7.n128_f32[2] = a4;
  src[0] = v8;
  src[1] = v9;
  src[2] = v6;
  src[3] = v7;
  v14 = v5;
  if (v5)
  {
    objc_copyStruct(v5 + 272, src, 64, 1, 0);
  }
}

void sub_2623721AC(uint64_t a1, void *a2, float a3, float a4)
{
  v5 = a2;
  if (a1)
  {
    v19 = v5;
    objc_msgSend_quad(v5, v6, v7);
    v16 = v8;
    objc_msgSend_quad(v19, v9, v10);
    v11 = v16;
    v12 = v16;
    *(&v12 + 2) = a4;
    v14 = v13;
    *(&v14 + 2) = a4;
    *(&v13 + 2) = a3;
    *(&v11 + 2) = a3;
    src[0] = v12;
    src[1] = v14;
    src[2] = v13;
    src[3] = v11;
    v5 = v19;
    if (v19)
    {
      objc_copyStruct(v19 + 34, src, 64, 1, 0);
      v5 = v19;
      v15 = v19[2] - v19[1];
      if (v15 >= 0x21)
      {
        *(v19[2] - 8) = a3;
        *(v19[1] + v15 - 24) = a3;
      }
    }
  }
}

void sub_262372294(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v1[106] = 1;
  }
}

uint64_t sub_2623722C8(uint64_t result, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5)
{
  v9 = result;
  v10 = 0;
  v11 = 0;
  *(*(*a3 + 24 * result) + 4 * a2) = 1;
  v12 = result;
  v13 = a2;
  do
  {
    v14 = *a3;
    if (!*(*(*a3 + 24 * v12) + 4 * v11))
    {
      if (!sub_2621C719C(a4, v11))
      {
        sub_2621C729C(a4, v11);
      }

      result = sub_2623722C8(v9, v11, a3, a4, a5);
      v14 = *a3;
    }

    if (!*(*(v14 + v10) + 4 * v12))
    {
      if (!sub_2621C719C(a4, v11))
      {
        sub_2621C729C(a4, v11);
      }

      result = sub_2623722C8(v11, v9, a3, a4, a5);
      v14 = *a3;
    }

    if (!*(*(v14 + 24 * v13) + 4 * v11))
    {
      if (!sub_2621C719C(a4, v11))
      {
        sub_2621C729C(a4, v11);
      }

      result = sub_2623722C8(a2, v11, a3, a4, a5);
      v14 = *a3;
    }

    if (!*(*(v14 + v10) + 4 * v13))
    {
      if (!sub_2621C719C(a4, v11))
      {
        sub_2621C729C(a4, v11);
      }

      result = sub_2623722C8(v11, a2, a3, a4, a5);
    }

    ++v11;
    v10 += 24;
  }

  while (v11 < a5);
  return result;
}

uint64_t sub_262372488(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_2621C74C4(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2623724D8(uint64_t **a1, void *a2, void *a3, void *a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v66 = a3;
  v67 = a4;
  v68 = v7;
  v10 = objc_msgSend_parentIdentifier(v7, v8, v9);

  if (v10)
  {
    v13 = **a1;
    v14 = objc_msgSend_parentIdentifier(v68, v11, v12);
    v15 = v67;
    v18 = v14;
    if (v13)
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v19 = objc_msgSend_walls(v15, v16, v17);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v73, buf, 16);
      if (v23)
      {
        v24 = *v74;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v74 != v24)
            {
              objc_enumerationMutation(v19);
            }

            v26 = *(*(&v73 + 1) + 8 * i);
            v27 = objc_msgSend_identifier(v26, v21, v22);
            isEqual = objc_msgSend_isEqual_(v27, v28, v18);

            if (isEqual)
            {
              v65 = v26;
              goto LABEL_13;
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v73, buf, 16);
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v65 = 0;
LABEL_13:
    }

    else
    {
      v65 = 0;
    }

    if (!v65)
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v35 = qword_27FF0C058;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v56 = objc_msgSend_identifier(v68, v54, v55);
        v59 = objc_msgSend_parentIdentifier(v68, v57, v58);
        *buf = 138412802;
        v79 = v66;
        v80 = 2112;
        v81 = v56;
        v82 = 2112;
        v83 = v59;
        _os_log_error_impl(&dword_2621C3000, v35, OS_LOG_TYPE_ERROR, "%@ (ID=%@) (ParentID=%@) can't find a matching parent wall!!!", buf, 0x20u);
      }

      goto LABEL_44;
    }

    sub_262372B20(**a1, v68, v65);
    v30 = *(**a1 + 640);
    v33 = objc_msgSend_identifier(v65, v31, v32);
    v35 = objc_msgSend_objectForKeyedSubscript_(v30, v34, v33);

    if (!v35)
    {
LABEL_44:

      v50 = v65;
      goto LABEL_45;
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v36 = *a1[1];
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v69, v77, 16);
    if (v38)
    {
      v39 = 0;
      v40 = *v70;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v70 != v40)
          {
            objc_enumerationMutation(v36);
          }

          v42 = *(*(&v69 + 1) + 8 * j);
          v45 = objc_msgSend_identifier(v42, v43, v44);
          v47 = objc_msgSend_isEqual_(v45, v46, v35);

          if (v47)
          {
            v48 = v42;

            v39 = v48;
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v49, &v69, v77, 16);
      }

      while (v38);

      if (v39)
      {
        sub_262372B20(**a1, v68, v39);
        if (*(v39 + 33) > 0.0 && v68)
        {
          v68[33] = v39[33];
        }

LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
    }

    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v60 = qword_27FF0C058;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v64 = objc_msgSend_identifier(v65, v61, v62);
      *buf = 138412802;
      v79 = v66;
      v80 = 2112;
      v81 = v64;
      v82 = 2112;
      v83 = v35;
      _os_log_error_impl(&dword_2621C3000, v60, OS_LOG_TYPE_ERROR, "instance %@ parent wall (ID=%@) has associated merged wall UUID (=%@) but can't find it in mergedWalls", buf, 0x20u);
    }

    v39 = 0;
    goto LABEL_43;
  }

  if (qword_27FF0C060 != -1)
  {
    dispatch_once(&qword_27FF0C060, &unk_2874EE100);
  }

  v50 = qword_27FF0C058;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v53 = objc_msgSend_identifier(v68, v51, v52);
    *buf = 138412546;
    v79 = v66;
    v80 = 2112;
    v81 = v53;
    _os_log_error_impl(&dword_2621C3000, v50, OS_LOG_TYPE_ERROR, "%@ (ID=%@) has nil parentIdentifier!!!", buf, 0x16u);
  }

LABEL_45:

  v63 = *MEMORY[0x277D85DE8];
}

void sub_262372B20(uint64_t a1, void *a2, void *a3)
{
  v92 = a2;
  v5 = a3;
  v8 = v5;
  if (a1)
  {
    objc_msgSend_quad(v5, v6, v7);
    v90 = v9;
    objc_msgSend_quad(v8, v10, v11);
    v88 = v12;
    objc_msgSend_quad(v8, v13, v14);
    v86 = v15;
    objc_msgSend_quad(v8, v16, v17);
    v84 = v18;
    objc_msgSend_quad(v92, v19, v20);
    v82 = v21;
    objc_msgSend_quad(v92, v22, v23);
    v79 = v24;
    objc_msgSend_dimensions(v92, v25, v26);
    v77 = v27;
    objc_msgSend_dimensions(v92, v28, v29);
    v76 = v30;
    v33 = objc_msgSend_type(v92, v31, v32);
    v36 = vsubq_f32(v90, v88);
    v37 = vmulq_f32(v36, v36);
    v38 = vaddv_f32(*v37.f32);
    *v37.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v37.f32[2] + v38));
    *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v37.f32[2] + v38), vmul_f32(*v37.f32, *v37.f32)));
    v39 = vmulq_n_f32(v36, vmul_f32(*v37.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v37.f32[2] + v38), vmul_f32(*v37.f32, *v37.f32))).f32[0]);
    v75 = xmmword_2623A7700;
    v40 = vmlaq_f32(vmulq_f32(v39, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
    v41 = vmulq_f32(v40, v40);
    *&v42 = v41.f32[1] + (v41.f32[2] + v41.f32[0]);
    v43 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
    *v40.f32 = vrsqrte_f32(v42);
    *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v42, vmul_f32(*v40.f32, *v40.f32)));
    v44 = vmulq_n_f32(v43, vmul_f32(*v40.f32, vrsqrts_f32(v42, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
    v45.i64[0] = 0x3F0000003F000000;
    v45.i64[1] = 0x3F0000003F000000;
    v46 = vmulq_f32(vaddq_f32(v82, v79), v45);
    v80 = vmulq_f32(vaddq_f32(v86, v84), v45);
    v47 = vmulq_f32(v44, vsubq_f32(v46, v80));
    v47.f32[0] = v47.f32[2] + vaddv_f32(*v47.f32);
    v48 = vmlsq_lane_f32(v46, v44, *v47.f32, 0);
    v49 = v77;
    v49.f32[0] = 0.5 * v77.f32[0];
    v87 = v48;
    v89 = v39;
    v85 = v49;
    v83 = vmuls_lane_f32(0.5, v76, 2);
    v91 = vmlaq_n_f32(vmlaq_n_f32(v48, v39, 0.5 * v77.f32[0]), xmmword_2623A7920, v83);
    if (v33 == 2 || objc_msgSend_type(v92, v34, v35, 0, 1065353216) == 4 || objc_msgSend_type(v92, v34, v35) == 3)
    {
      objc_msgSend_quad(v8, v34, v35, *&v75);
      v78 = v50;
      objc_msgSend_quad(v8, v51, v52);
      v54.i64[0] = v91.i64[0];
      v54.i64[1] = __PAIR64__(v91.u32[3], vmlaq_n_f32(v80, xmmword_2623A7930, fabsf(COERCE_FLOAT(*(vsubq_f32(v78, v53).f32 + 8)))).u32[2]);
      v91 = v54;
    }

    objc_msgSend_quad(v8, v34, v35);
    v81 = v55;
    objc_msgSend_quad(v8, v56, v57);
    v58 = vmlaq_n_f32(vmlaq_n_f32(v87, vnegq_f32(v89), v85.f32[0]), v75, v83);
    v59 = vsubq_f32(v81, v87);
    v60 = vmulq_f32(v59, v59);
    v60.f32[0] = sqrtf(vaddv_f32(*v60.f32));
    v61 = v81;
    v61.i32[2] = v58.i32[2];
    v62 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v85, v60), 0), v61, v58);
    v64 = vsubq_f32(v63, v87);
    v65 = vmulq_f32(v64, v64);
    v65.f32[0] = sqrtf(vaddv_f32(*v65.f32));
    v66 = v63;
    v66.i32[2] = v91.i32[2];
    v67 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v85, v65), 0), v66, v91);
    v68 = v62;
    v68.i32[2] = v81.i32[2];
    v69 = vcgt_f32(vzip1_s32(*&vextq_s8(v63, v63, 8uLL), *&vextq_s8(v62, v62, 8uLL)), vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v81, v81, 8uLL)));
    v70 = vbslq_s8(vmovl_s16(vdup_lane_s16(v69, 2)), v68, v62);
    *&v71 = v70.i64[0];
    HIDWORD(v71) = v62.i32[3];
    v72 = v67;
    v72.i32[2] = v63.i32[2];
    v73 = vbslq_s8(vmovl_s16(vdup_lane_s16(v69, 0)), v72, v67);
    src[2] = v73;
    v73.i32[3] = v67.i32[3];
    v74 = v73;
    v74.i32[2] = v70.i32[2];
    DWORD2(v71) = v73.i32[2];
    src[0] = v70;
    src[1] = v74;
    src[3] = v71;
    if (v92)
    {
      objc_copyStruct(v92 + 272, src, 64, 1, 0);
    }
  }
}

void sub_262372EC0(uint64_t *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v18, v22, 16);
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_msgSend_quad(v10, v5, v6);
        v16 = v11;
        v17 = 0xFFFFFFFF00000000;
        sub_262240B6C(*a1, &v16);
        objc_msgSend_quad(v10, v12, v13);
        v16 = v14;
        sub_262240B6C(a1[1], &v16);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v18, v22, 16);
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void *sub_26237302C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      sub_2621CBEC8(a2);
    }

    sub_2621CBEB0();
  }

  return result;
}

void sub_2623730AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2623730C8(uint64_t a1, void *a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = 0;
  v9 = a3;
  while (objc_msgSend_count(v7, v5, v6) > v8)
  {
    v10 = *(**(a1 + 24) + 12 * (v8 + v9) + 8);
    if (v10 >= 1)
    {
      v11 = **(a1 + 8) + 8 * v10;
      if (*(a1 + 32) >= *(v11 - 8))
      {
        v12 = *(v11 - 8);
      }

      else
      {
        v12 = *(a1 + 32);
      }

      v13 = **a1;
      v14 = objc_msgSend_objectAtIndexedSubscript_(v7, v5, v8);
      sub_2623721AC(v13, v14, **(a1 + 16), v12);

      v15 = *(**a1 + 648);
      v17 = objc_msgSend_objectAtIndexedSubscript_(v7, v16, v8);
      v20 = objc_msgSend_identifier(v17, v18, v19);
      v22 = objc_msgSend_objectForKeyedSubscript_(v15, v21, v20);

      if (v22)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v23 = v22;
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v30, v34, 16);
        if (v25)
        {
          v26 = *v31;
          do
          {
            v27 = 0;
            do
            {
              if (*v31 != v26)
              {
                objc_enumerationMutation(v23);
              }

              sub_2623721AC(**a1, *(*(&v30 + 1) + 8 * v27++), **(a1 + 16), v12);
            }

            while (v25 != v27);
            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v28, &v30, v34, 16);
          }

          while (v25);
        }
      }
    }

    ++v8;
  }

  v29 = *MEMORY[0x277D85DE8];
}

__n128 sub_26237332C(unint64_t **a1, char *a2, unint64_t **a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = (a2 - 24);
  v436 = (a2 - 16);
  v437 = (a2 - 8);
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v289 = *v10;
        v290 = a3[1];
        v291 = **a3;
        v292 = vmul_f32(vsub_f32(**v10, v291), *v290);
        v293 = *v11;
        v294 = vmul_f32(*v290, vsub_f32(**v11, v291));
        result.n128_u64[0] = vadd_f32(vzip1_s32(v292, v294), vzip2_s32(v292, v294));
        v295 = result.n128_f32[0] < result.n128_f32[1];
        if (result.n128_f32[0] == result.n128_f32[1])
        {
          result.n128_u32[0] = v289[1].u32[0];
          v295 = result.n128_f32[0] < v293[1].f32[0];
        }

        if (!v295)
        {
          return result;
        }

        *v11 = v289;
        *v10 = v293;
LABEL_357:
        v425 = v11[1];
        v314 = a2 - 8;
        v11[1] = *v436;
        *v436 = v425;
        v315 = v11[2];
        v11[2] = *v437;
LABEL_358:
        *v314 = v315;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_262376468(v11, (v11 + 3), (v11 + 6), (a2 - 24), a3);
      return result;
    }

    if (v13 == 5)
    {
      sub_262376468(v11, (v11 + 3), (v11 + 6), (v11 + 9), a3);
      result.n128_u64[0] = **a3;
      v262 = *v10;
      v263 = *a3[1];
      v264 = vmul_f32(vsub_f32(**v10, result.n128_u64[0]), v263);
      v265 = v11[9];
      result.n128_u64[0] = vmul_f32(v263, vsub_f32(*v265, result.n128_u64[0]));
      result.n128_u64[0] = vadd_f32(vzip1_s32(v264, result.n128_u64[0]), vzip2_s32(v264, result.n128_u64[0]));
      v266 = result.n128_f32[0] < result.n128_f32[1];
      if (result.n128_f32[0] == result.n128_f32[1])
      {
        result.n128_u32[0] = v262[1].u32[0];
        v266 = result.n128_f32[0] < v265[1].f32[0];
      }

      if (v266)
      {
        v11[9] = v262;
        *v10 = v265;
        v267 = v11[10];
        v11[10] = *v436;
        *v436 = v267;
        v268 = v11[11];
        v11[11] = *v437;
        *v437 = v268;
        v269 = v11[9];
        result.n128_u64[0] = *v269;
        v270 = a3[1];
        v271 = **a3;
        v272 = vmul_f32(vsub_f32(*v269, v271), *v270);
        v273 = v11[6];
        v274 = vmul_f32(*v270, vsub_f32(*v273, v271));
        v275 = vadd_f32(vzip1_s32(v272, v274), vzip2_s32(v272, v274));
        v276 = v275.f32[0] < v275.f32[1];
        if (v275.f32[0] == v275.f32[1])
        {
          v276 = v269[1].f32[0] < v273[1].f32[0];
        }

        if (v276)
        {
          v278 = v11[10];
          v277 = v11[11];
          v279 = *(v11 + 7);
          v11[6] = v269;
          v11[7] = v278;
          v11[8] = v277;
          v11[9] = v273;
          *(v11 + 5) = v279;
          v280 = a3[1];
          *&v279 = **a3;
          v281 = vmul_f32(vsub_f32(result.n128_u64[0], *&v279), *v280);
          v282 = v11[3];
          *&v279 = vmul_f32(*v280, vsub_f32(*v282, *&v279));
          *&v279 = vadd_f32(vzip1_s32(v281, *&v279), vzip2_s32(v281, *&v279));
          v283 = *&v279 < *(&v279 + 1);
          if (*&v279 == *(&v279 + 1))
          {
            v283 = v269[1].f32[0] < v282[1].f32[0];
          }

          if (v283)
          {
            v284 = *(v11 + 2);
            v11[3] = v269;
            v11[4] = v278;
            v11[5] = v277;
            v11[6] = v282;
            *(v11 + 7) = v284;
            v285 = a3[1];
            *&v284 = **a3;
            v286 = vmul_f32(vsub_f32(result.n128_u64[0], *&v284), *v285);
            v287 = *v11;
            *&v284 = vmul_f32(*v285, vsub_f32(**v11, *&v284));
            result.n128_u64[0] = vadd_f32(vzip1_s32(v286, *&v284), vzip2_s32(v286, *&v284));
            v288 = result.n128_f32[0] < result.n128_f32[1];
            if (result.n128_f32[0] == result.n128_f32[1])
            {
              result.n128_u32[0] = v269[1].u32[0];
              v288 = result.n128_f32[0] < v287[1].f32[0];
            }

            if (v288)
            {
              result = *(v11 + 1);
              *v11 = v269;
              v11[1] = v278;
              v11[2] = v277;
              v11[3] = v287;
              *(v11 + 2) = result;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v12 <= 575)
    {
      v316 = (v11 + 3);
      v318 = v11 == a2 || v316 == a2;
      if (a5)
      {
        if (!v318)
        {
          v319 = 0;
          v320 = v11;
          do
          {
            v321 = v320;
            v320 = v316;
            v322 = a3[1];
            v323 = **a3;
            v324 = v321[3];
            v325 = vmul_f32(vsub_f32(*v324, v323), *v322);
            v326 = vmul_f32(*v322, vsub_f32(**v321, v323));
            result.n128_u64[0] = vadd_f32(vzip1_s32(v325, v326), vzip2_s32(v325, v326));
            v327 = result.n128_f32[0] < result.n128_f32[1];
            if (result.n128_f32[0] == result.n128_f32[1])
            {
              result.n128_u32[0] = v324[1].u32[0];
              v327 = result.n128_f32[0] < *(*v321 + 2);
            }

            if (v327)
            {
              v328 = *(v321 + 2);
              *v316 = 0;
              *(v316 + 1) = 0;
              v329 = v319;
              *(v316 + 2) = 0;
              while (1)
              {
                v330 = a1 + v329;
                result = *(a1 + v329);
                *(v330 + 24) = result;
                *(v330 + 5) = *(a1 + v329 + 16);
                *(v330 + 1) = 0;
                *(v330 + 2) = 0;
                *v330 = 0;
                if (!v329)
                {
                  break;
                }

                v331 = a3[1];
                v332 = **a3;
                v333 = vmul_f32(vsub_f32(*v324, v332), *v331);
                v334 = *(v330 - 3);
                v335 = vmul_f32(*v331, vsub_f32(*v334, v332));
                result.n128_u64[0] = vadd_f32(vzip1_s32(v333, v335), vzip2_s32(v333, v335));
                v336 = result.n128_f32[0] < result.n128_f32[1];
                if (result.n128_f32[0] == result.n128_f32[1])
                {
                  result.n128_u32[0] = v324[1].u32[0];
                  v336 = result.n128_f32[0] < v334[1].f32[0];
                }

                if (!v336)
                {
                  v337 = (a1 + v329);
                  goto LABEL_282;
                }

                v329 -= 24;
              }

              v337 = a1;
LABEL_282:
              v338 = *v337;
              if (*v337)
              {
                v337[1] = v338;
                v443 = v328;
                operator delete(v338);
                v328 = v443;
              }

              *v337 = v324;
              *(v337 + 1) = v328;
            }

            v316 = (v320 + 3);
            v319 += 24;
          }

          while (v320 + 3 != a2);
        }
      }

      else if (!v318)
      {
        do
        {
          v409 = a1;
          a1 = v316;
          v410 = **a3;
          v411 = v409[3];
          v412 = *a3[1];
          v413 = vmul_f32(vsub_f32(*v411, v410), v412);
          v414 = vmul_f32(v412, vsub_f32(**v409, v410));
          result.n128_u64[0] = vadd_f32(vzip1_s32(v413, v414), vzip2_s32(v413, v414));
          v415 = result.n128_f32[0] < result.n128_f32[1];
          if (result.n128_f32[0] == result.n128_f32[1])
          {
            result.n128_u32[0] = v411[1].u32[0];
            v415 = result.n128_f32[0] < *(*v409 + 2);
          }

          if (v415)
          {
            result = *(v409 + 2);
            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
            do
            {
              v416 = v409;
              *(v409 + 3) = *v409;
              v409[5] = v409[2];
              *v409 = 0;
              v409[1] = 0;
              v409[2] = 0;
              v417 = a3[1];
              v418 = **a3;
              v420 = *(v409 - 3);
              v409 -= 3;
              v419 = v420;
              v421 = vmul_f32(vsub_f32(*v411, v418), *v417);
              v422 = vmul_f32(*v417, vsub_f32(*v420, v418));
              v423 = vadd_f32(vzip1_s32(v421, v422), vzip2_s32(v421, v422));
              v424 = v423.f32[0] < v423.f32[1];
              if (v423.f32[0] == v423.f32[1])
              {
                v424 = v411[1].f32[0] < v419[1].f32[0];
              }
            }

            while (v424);
            *v416 = v411;
            *(v416 + 1) = result;
          }

          v316 = (a1 + 3);
        }

        while (a1 + 3 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v11 == a2)
      {
        return result;
      }

      v339 = (v13 - 2) >> 1;
      v340 = v339;
      do
      {
        v341 = v340;
        if (v339 >= v340)
        {
          v342 = (2 * v340) | 1;
          v343 = &v11[3 * v342];
          v344 = **a3;
          if (2 * v341 + 2 >= v13)
          {
            v346 = *a3[1];
          }

          else
          {
            v345 = v343[3];
            v346 = *a3[1];
            v347 = vmul_f32(vsub_f32(**v343, v344), v346);
            v348 = vmul_f32(v346, vsub_f32(*v345, v344));
            v349 = vadd_f32(vzip1_s32(v347, v348), vzip2_s32(v347, v348));
            v350 = v349.f32[0] < v349.f32[1];
            if (v349.f32[0] == v349.f32[1])
            {
              v350 = *(*v343 + 2) < v345[1].f32[0];
            }

            if (v350)
            {
              v343 += 3;
              v342 = 2 * v341 + 2;
            }
          }

          v351 = &v11[3 * v341];
          v352 = vmul_f32(v346, vsub_f32(**v343, v344));
          v353 = *v351;
          v354 = vmul_f32(v346, vsub_f32(**v351, v344));
          v355 = vadd_f32(vzip1_s32(v352, v354), vzip2_s32(v352, v354));
          v356 = v355.f32[0] < v355.f32[1];
          if (v355.f32[0] == v355.f32[1])
          {
            v356 = *(*v343 + 2) < v353[1].f32[0];
          }

          if (!v356)
          {
            v357 = *(v351 + 1);
            *v351 = 0;
            v351[1] = 0;
            v351[2] = 0;
            do
            {
              v358 = v343;
              *v351 = *v343;
              v351[2] = v343[2];
              *v343 = 0;
              v343[1] = 0;
              v343[2] = 0;
              if (v339 < v342)
              {
                break;
              }

              v359 = 2 * v342;
              v342 = (2 * v342) | 1;
              v343 = &v11[3 * v342];
              v360 = v359 + 2;
              v361 = **a3;
              v362 = *a3[1];
              if (v360 < v13)
              {
                v363 = v343[3];
                v364 = vmul_f32(v362, vsub_f32(**v343, v361));
                v365 = vmul_f32(v362, vsub_f32(*v363, v361));
                v366 = vadd_f32(vzip1_s32(v364, v365), vzip2_s32(v364, v365));
                v367 = v366.f32[0] < v366.f32[1];
                if (v366.f32[0] == v366.f32[1])
                {
                  v367 = *(*v343 + 2) < v363[1].f32[0];
                }

                if (v367)
                {
                  v343 += 3;
                  v342 = v360;
                }
              }

              v368 = vmul_f32(v362, vsub_f32(**v343, v361));
              v369 = vmul_f32(v362, vsub_f32(*v353, v361));
              v370 = vadd_f32(vzip1_s32(v368, v369), vzip2_s32(v368, v369));
              v371 = v370.f32[0] < v370.f32[1];
              if (v370.f32[0] == v370.f32[1])
              {
                v371 = *(*v343 + 2) < v353[1].f32[0];
              }

              v351 = v358;
            }

            while (!v371);
            *v358 = v353;
            *(v358 + 1) = v357;
          }
        }

        v340 = v341 - 1;
      }

      while (v341);
      v372 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
      while (2)
      {
        v373 = 0;
        v374 = *v11;
        result = *(v11 + 1);
        v11[1] = 0;
        v11[2] = 0;
        v375 = v11;
        *v11 = 0;
        do
        {
          v376 = v375;
          v377 = &v375[3 * v373];
          v375 = v377 + 3;
          v378 = 2 * v373;
          v373 = (2 * v373) | 1;
          v379 = v378 + 2;
          if (v379 < v372)
          {
            v382 = v377[6];
            v381 = v377 + 6;
            v380 = v382;
            v383 = a3[1];
            v384 = **a3;
            v385 = *(v381 - 3);
            v386 = vmul_f32(vsub_f32(*v385, v384), *v383);
            v387 = vmul_f32(*v383, vsub_f32(*v382, v384));
            v388 = vadd_f32(vzip1_s32(v386, v387), vzip2_s32(v386, v387));
            v389 = v388.f32[0] < v388.f32[1];
            if (v388.f32[0] == v388.f32[1])
            {
              v389 = v385[1].f32[0] < v380[1].f32[0];
            }

            if (v389)
            {
              v375 = v381;
              v373 = v379;
            }
          }

          *v376 = *v375;
          v376[2] = v375[2];
          *v375 = 0;
          v375[1] = 0;
          v375[2] = 0;
        }

        while (v373 <= ((v372 - 2) >> 1));
        if (v375 == (a2 - 24))
        {
          *v375 = v374;
          v399 = v375;
        }

        else
        {
          *v375 = *(a2 - 24);
          v375[2] = *(a2 - 1);
          *(a2 - 3) = v374;
          *(a2 - 1) = result;
          v390 = v375 - v11 + 24;
          if (v390 < 25)
          {
            goto LABEL_337;
          }

          v391 = (-2 - 0x5555555555555555 * (v390 >> 3)) >> 1;
          v392 = &v11[3 * v391];
          v393 = a3[1];
          v394 = **a3;
          v395 = vmul_f32(vsub_f32(**v392, v394), *v393);
          v396 = *v375;
          v397 = vmul_f32(*v393, vsub_f32(**v375, v394));
          result.n128_u64[0] = vadd_f32(vzip1_s32(v395, v397), vzip2_s32(v395, v397));
          v398 = result.n128_f32[0] < result.n128_f32[1];
          if (result.n128_f32[0] == result.n128_f32[1])
          {
            result.n128_u32[0] = *(*v392 + 2);
            v398 = result.n128_f32[0] < v396[1].f32[0];
          }

          if (!v398)
          {
LABEL_337:
            a2 -= 24;
            if (v372-- <= 2)
            {
              return result;
            }

            continue;
          }

          result = *(v375 + 1);
          *v375 = 0;
          v375[1] = 0;
          v375[2] = 0;
          do
          {
            v399 = v392;
            *v375 = *v392;
            v375[2] = v392[2];
            *v392 = 0;
            v392[1] = 0;
            v392[2] = 0;
            if (!v391)
            {
              break;
            }

            v391 = (v391 - 1) >> 1;
            v392 = &v11[3 * v391];
            v400 = a3[1];
            v401 = **a3;
            v402 = vmul_f32(vsub_f32(**v392, v401), *v400);
            v403 = vmul_f32(*v400, vsub_f32(*v396, v401));
            v404 = vadd_f32(vzip1_s32(v402, v403), vzip2_s32(v402, v403));
            v405 = v404.f32[0] < v404.f32[1];
            if (v404.f32[0] == v404.f32[1])
            {
              v405 = *(*v392 + 2) < v396[1].f32[0];
            }

            v375 = v399;
          }

          while (v405);
          *v399 = v396;
        }

        break;
      }

      *(v399 + 1) = result;
      goto LABEL_337;
    }

    v14 = v13 >> 1;
    v15 = &v11[3 * (v13 >> 1)];
    v16 = **a3;
    v17 = *a3[1];
    if (v12 >= 0xC01)
    {
      v18 = *v15;
      v19 = vmul_f32(vsub_f32(**v15, v16), v17);
      v20 = *v11;
      v21 = **v11;
      v22 = vmul_f32(v17, vsub_f32(v21, v16));
      v23 = vadd_f32(vzip1_s32(v19, v22), vzip2_s32(v19, v22));
      v24 = v23.f32[0] < v23.f32[1];
      if (v23.f32[0] == v23.f32[1])
      {
        v24 = v18[1].f32[0] < v20[1].f32[0];
      }

      if (!v24)
      {
        v52 = *v10;
        v53 = vmul_f32(v17, vsub_f32(**v10, v16));
        v54 = vadd_f32(v53, vdup_lane_s32(v53, 1));
        if (vceq_f32(v54, v23).u8[0])
        {
          if (v52[1].f32[0] >= v18[1].f32[0])
          {
            goto LABEL_53;
          }
        }

        else if ((vcgt_f32(v23, v54).u8[0] & 1) == 0)
        {
          goto LABEL_53;
        }

        *v15 = v52;
        *v10 = v18;
        v34 = (v15 + 1);
        v61 = v15[1];
        v15[1] = *v436;
        *v436 = v61;
        v58 = (v15 + 2);
        v62 = v15[2];
        v15[2] = *v437;
        *v437 = v62;
        v16 = **a3;
        v63 = *v15;
        v17 = *a3[1];
        v64 = vmul_f32(vsub_f32(**v15, v16), v17);
        v65 = *v11;
        v66 = vmul_f32(v17, vsub_f32(**v11, v16));
        v67 = vadd_f32(vzip1_s32(v64, v66), vzip2_s32(v64, v66));
        v68 = v67.f32[0] < v67.f32[1];
        if (v67.f32[0] == v67.f32[1])
        {
          v68 = v63[1].f32[0] < v65[1].f32[0];
        }

        if (!v68)
        {
LABEL_53:
          v71 = &v11[3 * v14];
          v74 = *(v71 - 3);
          v72 = (v71 - 3);
          v73 = v74;
          v75 = vmul_f32(vsub_f32(*v74, v16), v17);
          v76 = v11[3];
          v77 = vmul_f32(v17, vsub_f32(*v76, v16));
          v78 = vadd_f32(vzip1_s32(v75, v77), vzip2_s32(v75, v77));
          v79 = v78.f32[0] < v78.f32[1];
          if (v78.f32[0] == v78.f32[1])
          {
            v79 = v73[1].f32[0] < v76[1].f32[0];
          }

          if (!v79)
          {
            v93 = *(a2 - 6);
            v94 = vmul_f32(v17, vsub_f32(*v93, v16));
            v95 = vadd_f32(v94, vdup_lane_s32(v94, 1));
            if (vceq_f32(v95, v78).u8[0])
            {
              if (v93[1].f32[0] >= v73[1].f32[0])
              {
                goto LABEL_83;
              }
            }

            else if ((vcgt_f32(v78, v95).u8[0] & 1) == 0)
            {
              goto LABEL_83;
            }

            *v72 = v93;
            *(a2 - 6) = v73;
            v110 = v72[1];
            v72[1] = *(a2 - 5);
            *(a2 - 5) = v110;
            v109 = (v72 + 2);
            v111 = v72[2];
            v72[2] = *(a2 - 4);
            *(a2 - 4) = v111;
            v16 = **a3;
            v112 = *v72;
            v17 = *a3[1];
            v113 = vmul_f32(vsub_f32(**v72, v16), v17);
            v114 = v11[3];
            v115 = vmul_f32(v17, vsub_f32(*v114, v16));
            v116 = vadd_f32(vzip1_s32(v113, v115), vzip2_s32(v113, v115));
            v117 = v116.f32[0] < v116.f32[1];
            if (v116.f32[0] == v116.f32[1])
            {
              v117 = v112[1].f32[0] < v114[1].f32[0];
            }

            if (!v117)
            {
LABEL_83:
              v120 = &v11[3 * v14];
              v123 = v120[3];
              v121 = (v120 + 3);
              v122 = v123;
              v124 = vmul_f32(vsub_f32(*v123, v16), v17);
              v125 = v11[6];
              v126 = vmul_f32(v17, vsub_f32(*v125, v16));
              v127 = vadd_f32(vzip1_s32(v124, v126), vzip2_s32(v124, v126));
              v128 = v127.f32[0] < v127.f32[1];
              if (v127.f32[0] == v127.f32[1])
              {
                v128 = v122[1].f32[0] < v125[1].f32[0];
              }

              if (!v128)
              {
                v142 = *(a2 - 9);
                v143 = vmul_f32(v17, vsub_f32(*v142, v16));
                v144 = vadd_f32(v143, vdup_lane_s32(v143, 1));
                if (vceq_f32(v144, v127).u8[0])
                {
                  if (v142[1].f32[0] >= v122[1].f32[0])
                  {
                    goto LABEL_107;
                  }
                }

                else if ((vcgt_f32(v127, v144).u8[0] & 1) == 0)
                {
                  goto LABEL_107;
                }

                *v121 = v142;
                *(a2 - 9) = v122;
                v147 = v121[1];
                v121[1] = *(a2 - 8);
                *(a2 - 8) = v147;
                v146 = (v121 + 2);
                v148 = v121[2];
                v121[2] = *(a2 - 7);
                *(a2 - 7) = v148;
                v16 = **a3;
                v149 = *v121;
                v17 = *a3[1];
                v150 = vmul_f32(vsub_f32(**v121, v16), v17);
                v151 = v11[6];
                v152 = vmul_f32(v17, vsub_f32(*v151, v16));
                v153 = vadd_f32(vzip1_s32(v150, v152), vzip2_s32(v150, v152));
                v154 = v153.f32[0] < v153.f32[1];
                if (v153.f32[0] == v153.f32[1])
                {
                  v154 = v149[1].f32[0] < v151[1].f32[0];
                }

                if (!v154)
                {
LABEL_107:
                  v157 = *v15;
                  v158 = vmul_f32(vsub_f32(**v15, v16), v17);
                  v159 = *v72;
                  v160 = **v72;
                  v161 = vmul_f32(v17, vsub_f32(v160, v16));
                  v162 = vadd_f32(vzip1_s32(v158, v161), vzip2_s32(v158, v161));
                  v163 = v162.f32[0] < v162.f32[1];
                  if (v162.f32[0] == v162.f32[1])
                  {
                    v163 = v157[1].f32[0] < v159[1].f32[0];
                  }

                  if (!v163)
                  {
                    v164 = *v121;
                    v175 = **v121;
                    v176 = vmul_f32(v17, vsub_f32(v175, v16));
                    v177 = vadd_f32(v176, vdup_lane_s32(v176, 1));
                    if (vceq_f32(v177, v162).u8[0])
                    {
                      if (v164[1].f32[0] < v157[1].f32[0])
                      {
LABEL_124:
                        *v121 = v157;
                        v179 = v121[1];
                        v180 = v121[2];
                        v181 = *(v15 + 1);
                        *v15 = v164;
                        v15[1] = v179;
                        v15[2] = v180;
                        *(v121 + 1) = v181;
                        *&v181 = **a3;
                        v182 = *a3[1];
                        v183 = vmul_f32(vsub_f32(v175, *&v181), v182);
                        *&v181 = vmul_f32(vsub_f32(v160, *&v181), v182);
                        *&v181 = vadd_f32(vzip1_s32(v183, *&v181), vzip2_s32(v183, *&v181));
                        v184 = *&v181 < *(&v181 + 1);
                        if (*&v181 == *(&v181 + 1))
                        {
                          v184 = v164[1].f32[0] < v159[1].f32[0];
                        }

                        if (v184)
                        {
                          *v15 = v159;
                          v185 = *(v72 + 1);
                          *v72 = v164;
                          v72[1] = v179;
                          v72[2] = v180;
                          *(v15 + 1) = v185;
                        }

                        else
                        {
LABEL_130:
                          v159 = v164;
                        }

                        goto LABEL_131;
                      }
                    }

                    else if (vcgt_f32(v162, v177).u8[0])
                    {
                      goto LABEL_124;
                    }

LABEL_129:
                    v159 = v157;
                    goto LABEL_131;
                  }

                  v164 = *v121;
                  v165 = **v121;
                  v166 = vmul_f32(v17, vsub_f32(v165, v16));
                  v167 = vadd_f32(v166, vdup_lane_s32(v166, 1));
                  if (vceq_f32(v167, v162).u8[0])
                  {
                    if (v164[1].f32[0] >= v157[1].f32[0])
                    {
                      goto LABEL_113;
                    }

LABEL_122:
                    *v72 = v164;
                    *v121 = v159;
                    v178 = *(v72 + 1);
                    *(v72 + 1) = *(v121 + 1);
                    *(v121 + 1) = v178;
                    goto LABEL_129;
                  }

                  if (vcgt_f32(v162, v167).u8[0])
                  {
                    goto LABEL_122;
                  }

LABEL_113:
                  *v72 = v157;
                  v169 = v72[1];
                  v168 = v72[2];
                  v170 = *(v15 + 1);
                  *v15 = v159;
                  v15[1] = v169;
                  *(v72 + 1) = v170;
                  v15[2] = v168;
                  *&v170 = **a3;
                  v171 = *a3[1];
                  v172 = vmul_f32(vsub_f32(v165, *&v170), v171);
                  *&v170 = vmul_f32(vsub_f32(v160, *&v170), v171);
                  *&v170 = vadd_f32(vzip1_s32(v172, *&v170), vzip2_s32(v172, *&v170));
                  v173 = *&v170 < *(&v170 + 1);
                  if (*&v170 == *(&v170 + 1))
                  {
                    v173 = v164[1].f32[0] < v159[1].f32[0];
                  }

                  if (v173)
                  {
                    *v15 = v164;
                    v174 = *(v121 + 1);
                    *v121 = v159;
                    v121[1] = v169;
                    *(v15 + 1) = v174;
                    v121[2] = v168;
                    goto LABEL_130;
                  }

LABEL_131:
                  v186 = v15[1];
                  result = *v11;
                  *v11 = v159;
                  v11[1] = v186;
                  *v15 = result;
                  v50 = (v11 + 2);
                  v60 = (v15 + 2);
LABEL_132:
                  v187 = *v50;
                  *v50 = *v60;
                  *v60 = v187;
                  goto LABEL_133;
                }

                v11[6] = v149;
                *v121 = v151;
                v155 = v11[7];
                v11[7] = v121[1];
                v121[1] = v155;
                v133 = (v11 + 8);
LABEL_106:
                v156 = *v133;
                *v133 = *v146;
                *v146 = v156;
                v16 = **a3;
                v17 = *a3[1];
                goto LABEL_107;
              }

              v129 = *(a2 - 9);
              v130 = vmul_f32(v17, vsub_f32(*v129, v16));
              v131 = vadd_f32(v130, vdup_lane_s32(v130, 1));
              if (vceq_f32(v131, v127).u8[0])
              {
                if (v129[1].f32[0] >= v122[1].f32[0])
                {
                  goto LABEL_89;
                }

LABEL_98:
                v11[6] = v129;
                *(a2 - 9) = v125;
                v145 = v11[7];
                v11[7] = *(a2 - 8);
                *(a2 - 8) = v145;
                v133 = (v11 + 8);
              }

              else
              {
                if (vcgt_f32(v127, v131).u8[0])
                {
                  goto LABEL_98;
                }

LABEL_89:
                v11[6] = v122;
                *v121 = v125;
                v132 = v11[7];
                v11[7] = v121[1];
                v121[1] = v132;
                v133 = (v121 + 2);
                v134 = v11[8];
                v11[8] = v121[2];
                v121[2] = v134;
                v16 = **a3;
                v135 = *(a2 - 9);
                v17 = *a3[1];
                v136 = vmul_f32(vsub_f32(*v135, v16), v17);
                v137 = *v121;
                v138 = vmul_f32(v17, vsub_f32(**v121, v16));
                v139 = vadd_f32(vzip1_s32(v136, v138), vzip2_s32(v136, v138));
                v140 = v139.f32[0] < v139.f32[1];
                if (v139.f32[0] == v139.f32[1])
                {
                  v140 = v135[1].f32[0] < v137[1].f32[0];
                }

                if (!v140)
                {
                  goto LABEL_107;
                }

                *v121 = v135;
                *(a2 - 9) = v137;
                v141 = v121[1];
                v121[1] = *(a2 - 8);
                *(a2 - 8) = v141;
              }

              v146 = a2 - 56;
              goto LABEL_106;
            }

            v11[3] = v112;
            *v72 = v114;
            v118 = v11[4];
            v11[4] = v72[1];
            v72[1] = v118;
            v84 = (v11 + 5);
LABEL_82:
            v119 = *v84;
            *v84 = *v109;
            *v109 = v119;
            v16 = **a3;
            v17 = *a3[1];
            goto LABEL_83;
          }

          v80 = *(a2 - 6);
          v81 = vmul_f32(v17, vsub_f32(*v80, v16));
          v82 = vadd_f32(v81, vdup_lane_s32(v81, 1));
          if (vceq_f32(v82, v78).u8[0])
          {
            if (v80[1].f32[0] >= v73[1].f32[0])
            {
              goto LABEL_59;
            }

LABEL_74:
            v11[3] = v80;
            *(a2 - 6) = v76;
            v108 = v11[4];
            v11[4] = *(a2 - 5);
            *(a2 - 5) = v108;
            v84 = (v11 + 5);
          }

          else
          {
            if (vcgt_f32(v78, v82).u8[0])
            {
              goto LABEL_74;
            }

LABEL_59:
            v11[3] = v73;
            *v72 = v76;
            v83 = v11[4];
            v11[4] = v72[1];
            v72[1] = v83;
            v84 = (v72 + 2);
            v85 = v11[5];
            v11[5] = v72[2];
            v72[2] = v85;
            v16 = **a3;
            v86 = *(a2 - 6);
            v17 = *a3[1];
            v87 = vmul_f32(vsub_f32(*v86, v16), v17);
            v88 = *v72;
            v89 = vmul_f32(v17, vsub_f32(**v72, v16));
            v90 = vadd_f32(vzip1_s32(v87, v89), vzip2_s32(v87, v89));
            v91 = v90.f32[0] < v90.f32[1];
            if (v90.f32[0] == v90.f32[1])
            {
              v91 = v86[1].f32[0] < v88[1].f32[0];
            }

            if (!v91)
            {
              goto LABEL_83;
            }

            *v72 = v86;
            *(a2 - 6) = v88;
            v92 = v72[1];
            v72[1] = *(a2 - 5);
            *(a2 - 5) = v92;
          }

          v109 = a2 - 32;
          goto LABEL_82;
        }

        *v11 = v63;
        *v15 = v65;
        v35 = v11;
LABEL_52:
        v69 = v35[1];
        v35[1] = *v34;
        *v34 = v69;
        v70 = v35[2];
        v35[2] = *v58;
        *v58 = v70;
        v16 = **a3;
        v17 = *a3[1];
        goto LABEL_53;
      }

      v25 = *v10;
      v26 = vmul_f32(v17, vsub_f32(**v10, v16));
      v27 = vadd_f32(v26, vdup_lane_s32(v26, 1));
      if (vceq_f32(v27, v23).u8[0])
      {
        if (v25[1].f32[0] >= v18[1].f32[0])
        {
          goto LABEL_18;
        }

LABEL_41:
        *v11 = v25;
        *v10 = v20;
        v34 = a2 - 16;
        v35 = v11;
      }

      else
      {
        if (vcgt_f32(v23, v27).u8[0])
        {
          goto LABEL_41;
        }

LABEL_18:
        *v11 = v18;
        *v15 = v20;
        v28 = *(v11 + 1);
        *(v11 + 1) = *(v15 + 1);
        *(v15 + 1) = v28;
        v16 = **a3;
        v29 = *v10;
        v17 = *a3[1];
        v30 = vmul_f32(vsub_f32(**v10, v16), v17);
        v31 = vmul_f32(vsub_f32(v21, v16), v17);
        v32 = vadd_f32(vzip1_s32(v30, v31), vzip2_s32(v30, v31));
        v33 = v32.f32[0] < v32.f32[1];
        if (v32.f32[0] == v32.f32[1])
        {
          v33 = v29[1].f32[0] < v20[1].f32[0];
        }

        if (!v33)
        {
          goto LABEL_53;
        }

        *v15 = v29;
        *v10 = v20;
        v34 = a2 - 16;
        v35 = v15;
      }

      v58 = a2 - 8;
      goto LABEL_52;
    }

    v36 = *v11;
    v37 = vmul_f32(vsub_f32(**v11, v16), v17);
    v38 = *v15;
    v39 = **v15;
    v40 = vmul_f32(v17, vsub_f32(v39, v16));
    v41 = vadd_f32(vzip1_s32(v37, v40), vzip2_s32(v37, v40));
    v42 = v41.f32[0] < v41.f32[1];
    if (v41.f32[0] == v41.f32[1])
    {
      v42 = v36[1].f32[0] < v38[1].f32[0];
    }

    if (v42)
    {
      v43 = *v10;
      v44 = vmul_f32(v17, vsub_f32(**v10, v16));
      v45 = vadd_f32(v44, vdup_lane_s32(v44, 1));
      if (vceq_f32(v45, v41).u8[0])
      {
        if (v43[1].f32[0] >= v36[1].f32[0])
        {
          goto LABEL_29;
        }

LABEL_44:
        *v15 = v43;
        *v10 = v38;
        v59 = v15[1];
        v15[1] = *v436;
        *v436 = v59;
        v50 = (v15 + 2);
      }

      else
      {
        if (vcgt_f32(v41, v45).u8[0])
        {
          goto LABEL_44;
        }

LABEL_29:
        *v15 = v36;
        *v11 = v38;
        result = *(v15 + 1);
        *(v15 + 1) = *(v11 + 1);
        *(v11 + 1) = result;
        result.n128_u64[0] = **a3;
        v46 = *v10;
        v47 = *a3[1];
        v48 = vmul_f32(vsub_f32(**v10, result.n128_u64[0]), v47);
        result.n128_u64[0] = vmul_f32(vsub_f32(v39, result.n128_u64[0]), v47);
        result.n128_u64[0] = vadd_f32(vzip1_s32(v48, result.n128_u64[0]), vzip2_s32(v48, result.n128_u64[0]));
        v49 = result.n128_f32[0] < result.n128_f32[1];
        if (result.n128_f32[0] == result.n128_f32[1])
        {
          v49 = v46[1].f32[0] < v38[1].f32[0];
        }

        if (!v49)
        {
          goto LABEL_133;
        }

        v50 = (v11 + 2);
        *v11 = v46;
        *v10 = v38;
        v51 = v11[1];
        v11[1] = *v436;
        *v436 = v51;
      }

      v60 = a2 - 8;
      goto LABEL_132;
    }

    v55 = *v10;
    v56 = vmul_f32(v17, vsub_f32(**v10, v16));
    v57 = vadd_f32(v56, vdup_lane_s32(v56, 1));
    if ((vceq_f32(v57, v41).u8[0] & 1) == 0)
    {
      if ((vcgt_f32(v41, v57).u8[0] & 1) == 0)
      {
        goto LABEL_133;
      }

LABEL_68:
      *v11 = v55;
      *v10 = v36;
      v96 = v11[1];
      v11[1] = *v436;
      *v436 = v96;
      v60 = (v11 + 2);
      v97 = v11[2];
      v11[2] = *v437;
      *v437 = v97;
      v98 = **a3;
      v99 = *v11;
      v100 = *a3[1];
      v101 = vmul_f32(vsub_f32(**v11, v98), v100);
      v102 = *v15;
      v103 = vmul_f32(v100, vsub_f32(**v15, v98));
      v104 = vadd_f32(vzip1_s32(v101, v103), vzip2_s32(v101, v103));
      v105 = v104.f32[0] < v104.f32[1];
      if (v104.f32[0] == v104.f32[1])
      {
        v105 = v99[1].f32[0] < v102[1].f32[0];
      }

      if (!v105)
      {
        goto LABEL_133;
      }

      v106 = v15[1];
      v107 = v11[1];
      *v15 = v99;
      v15[1] = v107;
      *v11 = v102;
      v11[1] = v106;
      v50 = (v15 + 2);
      goto LABEL_132;
    }

    if (v55[1].f32[0] < v36[1].f32[0])
    {
      goto LABEL_68;
    }

LABEL_133:
    --a4;
    v188 = *v11;
    if ((a5 & 1) == 0)
    {
      v189 = a3[1];
      v190 = **a3;
      v191 = *(v11 - 3);
      v192 = vmul_f32(vsub_f32(*v191, v190), *v189);
      v193 = vmul_f32(*v189, vsub_f32(*v188, v190));
      v194 = vadd_f32(vzip1_s32(v192, v193), vzip2_s32(v192, v193));
      v195 = v194.f32[0] < v194.f32[1];
      if (v194.f32[0] == v194.f32[1])
      {
        v195 = v191[1].f32[0] < v188[1].f32[0];
      }

      if (!v195)
      {
        v229 = *(v11 + 1);
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        v230 = **a3;
        result.n128_u64[0] = *v188;
        v231 = *a3[1];
        v232 = vmul_f32(vsub_f32(*v188, v230), v231);
        v233 = *v10;
        v234 = **v10;
        v235 = vmul_f32(v231, vsub_f32(v234, v230));
        v236 = vadd_f32(vzip1_s32(v232, v235), vzip2_s32(v232, v235));
        if (v236.f32[0] == v236.f32[1])
        {
          if (v188[1].f32[0] < v233[1].f32[0])
          {
            goto LABEL_183;
          }
        }

        else if (v236.f32[0] < v236.f32[1])
        {
LABEL_183:
          for (v11 += 3; ; v11 += 3)
          {
            v237 = vmul_f32(v231, vsub_f32(**v11, v230));
            v238 = vadd_f32(v237, vdup_lane_s32(v237, 1));
            if (vceq_f32(v236, v238).u8[0])
            {
              if (v188[1].f32[0] < *(*v11 + 2))
              {
                goto LABEL_197;
              }
            }

            else if (vcgt_f32(v238, v236).u8[0])
            {
              goto LABEL_197;
            }
          }
        }

        for (v11 += 3; v11 < a2; v11 += 3)
        {
          v239 = vmul_f32(v231, vsub_f32(**v11, v230));
          v240 = vadd_f32(v239, vdup_lane_s32(v239, 1));
          if (vceq_f32(v236, v240).u8[0])
          {
            if (v188[1].f32[0] < *(*v11 + 2))
            {
              break;
            }
          }

          else if (vcgt_f32(v240, v236).u8[0])
          {
            break;
          }
        }

LABEL_197:
        i = a2;
        if (v11 < a2)
        {
          for (i = (a2 - 24); ; i -= 3)
          {
            v242 = vmul_f32(v231, vsub_f32(v234, v230));
            v243 = vadd_f32(v242, vdup_lane_s32(v242, 1));
            if (vceq_f32(v236, v243).u8[0])
            {
              if (v188[1].f32[0] >= v233[1].f32[0])
              {
                break;
              }
            }

            else if ((vcgt_f32(v243, v236).u8[0] & 1) == 0)
            {
              break;
            }

            v244 = *(i - 3);
            v233 = v244;
            v234 = *v244;
          }
        }

        if (v11 < i)
        {
          v245 = *v11;
          v246 = *i;
          do
          {
            *v11 = v246;
            *i = v245;
            v247 = v11[1];
            v11[1] = i[1];
            i[1] = v247;
            v248 = v11[2];
            v11[2] = i[2];
            i[2] = v248;
            v249 = **a3;
            v250 = *a3[1];
            v251 = vmul_f32(vsub_f32(result.n128_u64[0], v249), v250);
            v252 = vadd_f32(v251, vdup_lane_s32(v251, 1));
            do
            {
              while (1)
              {
                v253 = v11[3];
                v11 += 3;
                v245 = v253;
                v254 = vmul_f32(v250, vsub_f32(*v253, v249));
                v255 = vadd_f32(v254, vdup_lane_s32(v254, 1));
                if ((vceq_f32(v252, v255).u8[0] & 1) == 0)
                {
                  break;
                }

                if (v188[1].f32[0] < v245[1].f32[0])
                {
                  goto LABEL_213;
                }
              }
            }

            while ((vcgt_f32(v255, v252).u8[0] & 1) == 0);
            do
            {
LABEL_213:
              while (1)
              {
                v256 = *(i - 3);
                i -= 3;
                v246 = v256;
                v257 = vmul_f32(v250, vsub_f32(*v256, v249));
                v258 = vadd_f32(v257, vdup_lane_s32(v257, 1));
                if (vceq_f32(v252, v258).u8[0])
                {
                  break;
                }

                if ((vcgt_f32(v258, v252).u8[0] & 1) == 0)
                {
                  goto LABEL_215;
                }
              }
            }

            while (v188[1].f32[0] < v246[1].f32[0]);
LABEL_215:
            ;
          }

          while (v11 < i);
        }

        v259 = (v11 - 3);
        if (v11 - 3 == a1)
        {
          v261 = *v259;
          if (*v259)
          {
            *(v11 - 2) = v261;
            v442 = v229;
            operator delete(v261);
            v229 = v442;
          }
        }

        else
        {
          v260 = *a1;
          if (*a1)
          {
            a1[1] = v260;
            v441 = v229;
            operator delete(v260);
            v229 = v441;
            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
          }

          result = *(v11 - 3);
          *a1 = result;
          a1[2] = *(v11 - 1);
          *v259 = 0;
          *(v11 - 2) = 0;
          *(v11 - 1) = 0;
        }

        a5 = 0;
        *(v11 - 3) = v188;
        *(v11 - 1) = v229;
        continue;
      }
    }

    v196 = *(v11 + 1);
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    v197 = **a3;
    v198 = *a3[1];
    v199 = *v188;
    v200 = vmul_f32(v198, vsub_f32(*v188, v197));
    v201 = vadd_f32(v200, vdup_lane_s32(v200, 1));
    for (j = (v11 + 3); ; j += 3)
    {
      v203 = *j;
      v204 = vmul_f32(v198, vsub_f32(**j, v197));
      v205 = vadd_f32(v204, vdup_lane_s32(v204, 1));
      if ((vceq_f32(v205, v201).u32[0] & 1) == 0)
      {
        break;
      }

      if (v203[1].f32[0] >= v188[1].f32[0])
      {
        goto LABEL_144;
      }

LABEL_143:
      ;
    }

    if (vcgt_f32(v201, v205).u32[0])
    {
      goto LABEL_143;
    }

LABEL_144:
    k = (a2 - 24);
    if (j - 3 != v11)
    {
      while (1)
      {
        v207 = vmul_f32(v198, vsub_f32(**k, v197));
        v208 = vadd_f32(v207, vdup_lane_s32(v207, 1));
        if (vceq_f32(v208, v201).u32[0])
        {
          if ((*k)[1].f32[0] < v188[1].f32[0])
          {
            goto LABEL_159;
          }
        }

        else if (vcgt_f32(v201, v208).u32[0])
        {
          goto LABEL_159;
        }

        k -= 3;
      }
    }

    k = a2;
    if (j < a2)
    {
      for (k = (a2 - 24); ; k -= 3)
      {
        v209 = vmul_f32(v198, vsub_f32(**k, v197));
        v210 = vadd_f32(v209, vdup_lane_s32(v209, 1));
        if (vceq_f32(v210, v201).u32[0])
        {
          if (j >= k || (*k)[1].f32[0] < v188[1].f32[0])
          {
            break;
          }
        }

        else if (j >= k || (vmvn_s8(vcgt_f32(v201, v210)).u32[0] & 1) == 0)
        {
          break;
        }
      }
    }

LABEL_159:
    v11 = j;
    if (j < k)
    {
      v211 = *k;
      v11 = j;
      v212 = k;
      do
      {
        *v11 = v211;
        *v212 = v203;
        v213 = v11[1];
        v11[1] = v212[1];
        v212[1] = v213;
        v214 = v11[2];
        v11[2] = v212[2];
        v212[2] = v214;
        v215 = **a3;
        v216 = *a3[1];
        v217 = vmul_f32(vsub_f32(v199, v215), v216);
        v218 = vadd_f32(v217, vdup_lane_s32(v217, 1));
        do
        {
          while (1)
          {
            v219 = v11[3];
            v11 += 3;
            v203 = v219;
            v220 = vmul_f32(v216, vsub_f32(*v219, v215));
            v221 = vadd_f32(v220, vdup_lane_s32(v220, 1));
            if ((vceq_f32(v221, v218).u8[0] & 1) == 0)
            {
              break;
            }

            if (v203[1].f32[0] >= v188[1].f32[0])
            {
              goto LABEL_168;
            }
          }
        }

        while ((vcgt_f32(v218, v221).u8[0] & 1) != 0);
        do
        {
LABEL_168:
          while (1)
          {
            v222 = *(v212 - 3);
            v212 -= 3;
            v211 = v222;
            v223 = vmul_f32(v216, vsub_f32(*v222, v215));
            v224 = vadd_f32(v223, vdup_lane_s32(v223, 1));
            if (vceq_f32(v224, v218).u32[0])
            {
              break;
            }

            if (vcgt_f32(v218, v224).u32[0])
            {
              goto LABEL_170;
            }
          }
        }

        while (v211[1].f32[0] >= v188[1].f32[0]);
LABEL_170:
        ;
      }

      while (v11 < v212);
    }

    v225 = (v11 - 3);
    if (v11 - 3 == a1)
    {
      v227 = *v225;
      if (*v225)
      {
        *(v11 - 2) = v227;
        v439 = v196;
        operator delete(v227);
        v196 = v439;
      }
    }

    else
    {
      v226 = *a1;
      if (*a1)
      {
        a1[1] = v226;
        v438 = v196;
        operator delete(v226);
        v196 = v438;
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }

      *a1 = *(v11 - 3);
      a1[2] = *(v11 - 1);
      *v225 = 0;
      *(v11 - 2) = 0;
      *(v11 - 1) = 0;
    }

    *(v11 - 3) = v188;
    *(v11 - 1) = v196;
    if (j < k)
    {
LABEL_180:
      sub_26237332C(a1, v11 - 3, a3, a4, a5 & 1);
      a5 = 0;
    }

    else
    {
      v228 = sub_262376824(a1, v11 - 24, a3);
      if (sub_262376824(v11, a2, a3))
      {
        a2 = (v11 - 3);
        if (v228)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v228)
      {
        goto LABEL_180;
      }
    }
  }

  v296 = **a3;
  v297 = v11[3];
  v298 = *a3[1];
  v299 = vmul_f32(vsub_f32(*v297, v296), v298);
  v300 = *v11;
  result.n128_u64[0] = **v11;
  v301 = vmul_f32(v298, vsub_f32(result.n128_u64[0], v296));
  v302 = vadd_f32(vzip1_s32(v299, v301), vzip2_s32(v299, v301));
  v303 = v302.f32[0] < v302.f32[1];
  if (v302.f32[0] == v302.f32[1])
  {
    v303 = v297[1].f32[0] < v300[1].f32[0];
  }

  if (!v303)
  {
    v407 = *v10;
    v408 = vmul_f32(v298, vsub_f32(**v10, v296));
    result.n128_u64[0] = vadd_f32(v408, vdup_lane_s32(v408, 1));
    if (vceq_f32(result.n128_u64[0], v302).u8[0])
    {
      result.n128_u32[0] = v407[1].u32[0];
      if (result.n128_f32[0] >= v297[1].f32[0])
      {
        return result;
      }
    }

    else
    {
      result.n128_u64[0] = vcgt_f32(v302, result.n128_u64[0]);
      if ((result.n128_u8[0] & 1) == 0)
      {
        return result;
      }
    }

    v11[3] = v407;
    *v10 = v297;
    v426 = v11[4];
    v11[4] = *v436;
    *v436 = v426;
    v427 = v11[5];
    v11[5] = *v437;
    *v437 = v427;
    v428 = v11[3];
    v429 = a3[1];
    v430 = **a3;
    v431 = vmul_f32(vsub_f32(*v428, v430), *v429);
    v432 = *v11;
    v433 = vmul_f32(*v429, vsub_f32(**v11, v430));
    result.n128_u64[0] = vadd_f32(vzip1_s32(v431, v433), vzip2_s32(v431, v433));
    v434 = result.n128_f32[0] < result.n128_f32[1];
    if (result.n128_f32[0] == result.n128_f32[1])
    {
      result.n128_u32[0] = v428[1].u32[0];
      v434 = result.n128_f32[0] < v432[1].f32[0];
    }

    if (v434)
    {
      *v11 = v428;
      v11[3] = v432;
      result = *(v11 + 2);
      v435 = *(v11 + 1);
      *(v11 + 1) = result;
      *(v11 + 2) = v435;
    }

    return result;
  }

  v304 = *v10;
  v305 = vmul_f32(v298, vsub_f32(**v10, v296));
  v306 = vadd_f32(v305, vdup_lane_s32(v305, 1));
  if (vceq_f32(v306, v302).u8[0])
  {
    if (v304[1].f32[0] >= v297[1].f32[0])
    {
      goto LABEL_253;
    }

LABEL_356:
    *v11 = v304;
    *v10 = v300;
    goto LABEL_357;
  }

  if (vcgt_f32(v302, v306).u8[0])
  {
    goto LABEL_356;
  }

LABEL_253:
  *v11 = v297;
  v11[3] = v300;
  v307 = *(v11 + 1);
  *(v11 + 1) = *(v11 + 2);
  *(v11 + 2) = v307;
  v308 = *v10;
  *&v307 = **a3;
  v309 = *a3[1];
  v310 = vmul_f32(vsub_f32(**v10, *&v307), v309);
  v311 = vmul_f32(vsub_f32(result.n128_u64[0], *&v307), v309);
  result.n128_u64[0] = vadd_f32(vzip1_s32(v310, v311), vzip2_s32(v310, v311));
  v312 = result.n128_f32[0] < result.n128_f32[1];
  if (result.n128_f32[0] == result.n128_f32[1])
  {
    result.n128_u32[0] = v308[1].u32[0];
    v312 = result.n128_f32[0] < v300[1].f32[0];
  }

  if (v312)
  {
    v11[3] = v308;
    *v10 = v300;
    v313 = v11[4];
    v314 = a2 - 8;
    v11[4] = *v436;
    *v436 = v313;
    v315 = v11[5];
    v11[5] = *v437;
    goto LABEL_358;
  }

  return result;
}

void sub_262374FE8(uint64_t a1, float **a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 3;
  j = a1;
  while (1)
  {
    a1 = j;
    v10 = a2 - j;
    v11 = 0xAAAAAAAAAAAAAAABLL * (a2 - j);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          sub_262375D14(j, (j + 3), a2 - 3);
          return;
        case 4:

          sub_262375EE4(j, (j + 3), j + 6, (a2 - 3));
          return;
        case 5:

          sub_26237603C(j, (j + 3), j + 6, (j + 9), (a2 - 3));
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v93 = *v8;
        v94 = **v8;
        v95 = *j;
        v96 = **j;
        v97 = v94 < v96;
        if (v94 == v96)
        {
          v98 = v93[1];
          v99 = v95[1];
          v97 = v98 < v99;
          if (v98 == v99)
          {
            v97 = v93[2] < v95[2];
          }
        }

        if (v97)
        {
          *j = v93;
          *(a2 - 3) = v95;
          v100 = j[1];
          j[1] = *(a2 - 2);
          *(a2 - 2) = v100;
          v101 = j[2];
          j[2] = *(a2 - 1);
          *(a2 - 1) = v101;
        }

        return;
      }
    }

    if (v10 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (j == a2)
      {
        return;
      }

      v123 = (v11 - 2) >> 1;
      v124 = v123;
      do
      {
        v125 = v124;
        if (v123 >= v124)
        {
          v126 = (2 * v124) | 1;
          v127 = &j[3 * v126];
          if (2 * v125 + 2 < v11)
          {
            v128 = v127[3];
            v129 = *v127;
            v130 = **v127;
            v131 = v130 < *v128;
            if (v130 == *v128)
            {
              v132 = v129[1];
              v133 = v128[1];
              v131 = v132 < v133;
              if (v132 == v133)
              {
                v131 = v129[2] < v128[2];
              }
            }

            if (v131)
            {
              v127 += 3;
              v126 = 2 * v125 + 2;
            }
          }

          v134 = &j[3 * v125];
          v135 = *v127;
          v136 = **v127;
          v137 = *v134;
          v138 = **v134;
          v139 = v136 < v138;
          if (v136 == v138)
          {
            v140 = v135[1];
            v141 = v137[1];
            v139 = v140 < v141;
            if (v140 == v141)
            {
              v139 = v135[2] < v137[2];
            }
          }

          if (!v139)
          {
            v142 = *(v134 + 1);
            *v134 = 0;
            v134[1] = 0;
            v134[2] = 0;
            do
            {
              v143 = v127;
              *v134 = *v127;
              v134[2] = v127[2];
              *v127 = 0;
              v127[1] = 0;
              v127[2] = 0;
              if (v123 < v126)
              {
                break;
              }

              v144 = 2 * v126;
              v126 = (2 * v126) | 1;
              v127 = &j[3 * v126];
              v145 = v144 + 2;
              if (v145 < v11)
              {
                v146 = v127[3];
                v147 = *v127;
                v148 = **v127;
                v149 = v148 < *v146;
                if (v148 == *v146)
                {
                  v150 = v147[1];
                  v151 = v146[1];
                  v149 = v150 < v151;
                  if (v150 == v151)
                  {
                    v149 = v147[2] < v146[2];
                  }
                }

                if (v149)
                {
                  v127 += 3;
                  v126 = v145;
                }
              }

              v152 = *v127;
              v153 = **v127;
              v154 = v153 < *v137;
              if (v153 == *v137)
              {
                v155 = v152[1];
                v156 = v137[1];
                v154 = v155 < v156;
                if (v155 == v156)
                {
                  v154 = v152[2] < v137[2];
                }
              }

              v134 = v143;
            }

            while (!v154);
            *v143 = v137;
            *(v143 + 1) = v142;
          }
        }

        v124 = v125 - 1;
      }

      while (v125);
      v157 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
      while (2)
      {
        v158 = 0;
        v159 = *j;
        v160 = *(j + 1);
        j[1] = 0;
        j[2] = 0;
        v161 = j;
        *j = 0;
        do
        {
          v162 = v161;
          v163 = &v161[3 * v158];
          v161 = v163 + 3;
          v164 = 2 * v158;
          v158 = (2 * v158) | 1;
          v165 = v164 + 2;
          if (v165 < v157)
          {
            v168 = v163[6];
            v167 = v163 + 6;
            v166 = v168;
            v169 = *(v167 - 3);
            v170 = *v169 < *v168;
            if (*v169 == *v168)
            {
              v171 = v169[1];
              v172 = v166[1];
              v170 = v171 < v172;
              if (v171 == v172)
              {
                v170 = v169[2] < v166[2];
              }
            }

            if (v170)
            {
              v161 = v167;
              v158 = v165;
            }
          }

          *v162 = *v161;
          v162[2] = v161[2];
          *v161 = 0;
          v161[1] = 0;
          v161[2] = 0;
        }

        while (v158 <= ((v157 - 2) >> 1));
        if (v161 == a2 - 3)
        {
          *v161 = v159;
          v183 = v161;
        }

        else
        {
          *v161 = *(a2 - 3);
          v161[2] = *(a2 - 1);
          *(a2 - 3) = v159;
          *(a2 - 1) = v160;
          v173 = v161 - j + 24;
          if (v173 < 25)
          {
            goto LABEL_214;
          }

          v174 = (0xAAAAAAAAAAAAAAABLL * (v173 >> 3) - 2) >> 1;
          v175 = &j[3 * v174];
          v176 = *v175;
          v177 = **v175;
          v178 = *v161;
          v179 = **v161;
          v180 = v177 < v179;
          if (v177 == v179)
          {
            v181 = v176[1];
            v182 = v178[1];
            v180 = v181 < v182;
            if (v181 == v182)
            {
              v180 = v176[2] < v178[2];
            }
          }

          if (!v180)
          {
LABEL_214:
            a2 -= 3;
            if (v157-- <= 2)
            {
              return;
            }

            continue;
          }

          v160 = *(v161 + 1);
          *v161 = 0;
          v161[1] = 0;
          v161[2] = 0;
          do
          {
            v183 = v175;
            *v161 = *v175;
            v161[2] = v175[2];
            *v175 = 0;
            v175[1] = 0;
            v175[2] = 0;
            if (!v174)
            {
              break;
            }

            v174 = (v174 - 1) >> 1;
            v175 = &j[3 * v174];
            v184 = *v175;
            v185 = **v175;
            v186 = v185 < *v178;
            if (v185 == *v178)
            {
              v187 = v184[1];
              v188 = v178[1];
              v186 = v187 < v188;
              if (v187 == v188)
              {
                v186 = v184[2] < v178[2];
              }
            }

            v161 = v183;
          }

          while (v186);
          *v183 = v178;
        }

        break;
      }

      *(v183 + 1) = v160;
      goto LABEL_214;
    }

    v12 = v11 >> 1;
    v13 = &j[3 * (v11 >> 1)];
    if (v10 < 0xC01)
    {
      sub_262375D14((a1 + 24 * v12), a1, a2 - 3);
    }

    else
    {
      sub_262375D14(a1, a1 + 24 * v12, a2 - 3);
      v14 = 3 * v12;
      sub_262375D14((a1 + 24), a1 + 8 * v14 - 24, a2 - 6);
      sub_262375D14((a1 + 48), a1 + 24 + 8 * v14, a2 - 9);
      sub_262375D14((a1 + 8 * v14 - 24), v13, (a1 + 24 + 8 * v14));
      v15 = *a1;
      *a1 = *v13;
      *v13 = v15;
      v16 = *(a1 + 16);
      *(a1 + 16) = *(v13 + 16);
      *(v13 + 16) = v16;
    }

    --a3;
    v17 = *a1;
    if (a4)
    {
      goto LABEL_20;
    }

    v18 = *(a1 - 24);
    v19 = *v18 < *v17;
    if (*v18 == *v17)
    {
      v20 = v18[1];
      v21 = v17[1];
      v19 = v20 < v21;
      if (v20 == v21)
      {
        v19 = v18[2] < v17[2];
      }
    }

    if (v19)
    {
LABEL_20:
      v22 = *(a1 + 8);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v23 = (a1 + 24);
      v24 = *v17;
      while (1)
      {
        v25 = *v23;
        v26 = **v23;
        v27 = v26 < v24;
        if (v26 == v24)
        {
          v28 = v25[1];
          v29 = v17[1];
          v27 = v28 < v29;
          if (v28 == v29)
          {
            v27 = v25[2] < v17[2];
          }
        }

        if (!v27)
        {
          break;
        }

        v23 += 3;
      }

      i = a2 - 3;
      if (v23 - 3 == a1)
      {
        i = a2;
        if (v23 < a2)
        {
          for (i = a2 - 3; ; i -= 3)
          {
            v36 = *i;
            v37 = **i;
            if (v37 == v24)
            {
              v38 = v36[1];
              v39 = v17[1];
              if (v38 == v39)
              {
                if (v23 >= i)
                {
                  break;
                }

                v38 = v36[2];
                v39 = v17[2];
              }

              else if (v23 >= i)
              {
                break;
              }

              if (v38 < v39)
              {
                break;
              }
            }

            else if (v23 >= i || v37 < v24)
            {
              break;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v31 = *i;
          v32 = **i;
          v33 = v32 < v24;
          if (v32 == v24)
          {
            v34 = v31[1];
            v35 = v17[1];
            v33 = v34 < v35;
            if (v34 == v35)
            {
              v33 = v31[2] < v17[2];
            }
          }

          if (v33)
          {
            break;
          }

          i -= 3;
        }
      }

      j = v23;
      if (v23 < i)
      {
        v40 = *i;
        j = v23;
        v41 = i;
        do
        {
          *j = v40;
          *v41 = v25;
          v42 = j[1];
          j[1] = v41[1];
          v41[1] = v42;
          v43 = j[2];
          j[2] = v41[2];
          v41[2] = v43;
          do
          {
            v44 = j[3];
            j += 3;
            v25 = v44;
            v45 = *v44 < v24;
            if (*v44 == v24)
            {
              v46 = v25[1];
              v47 = v17[1];
              v45 = v46 < v47;
              if (v46 == v47)
              {
                v45 = v25[2] < v17[2];
              }
            }
          }

          while (v45);
          do
          {
            v48 = *(v41 - 3);
            v41 -= 3;
            v40 = v48;
            v49 = *v48 < v24;
            if (*v48 == v24)
            {
              v50 = v40[1];
              v51 = v17[1];
              v49 = v50 < v51;
              if (v50 == v51)
              {
                v49 = v40[2] < v17[2];
              }
            }
          }

          while (!v49);
        }

        while (j < v41);
      }

      v52 = (j - 3);
      if (j - 3 == a1)
      {
        v54 = *v52;
        if (*v52)
        {
          *(j - 2) = v54;
          v205 = v22;
          operator delete(v54);
          v22 = v205;
        }
      }

      else
      {
        v53 = *a1;
        if (*a1)
        {
          *(a1 + 8) = v53;
          v204 = v22;
          operator delete(v53);
          v22 = v204;
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        *a1 = *(j - 3);
        *(a1 + 16) = *(j - 1);
        *v52 = 0;
        *(j - 2) = 0;
        *(j - 1) = 0;
      }

      *(j - 3) = v17;
      *(j - 1) = v22;
      if (v23 < i)
      {
        goto LABEL_67;
      }

      v55 = sub_262376200(a1, j - 3);
      if (sub_262376200(j, a2))
      {
        a2 = j - 3;
        if (v55)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v55)
      {
LABEL_67:
        sub_262374FE8(a1, j - 3, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v56 = *(a1 + 8);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v57 = *v17;
      v58 = *v8;
      v59 = **v8;
      v60 = *v17 < v59;
      if (*v17 == v59)
      {
        v61 = v17[1];
        v62 = v58[1];
        v60 = v61 < v62;
        if (v61 == v62)
        {
          v60 = v17[2] < v58[2];
        }
      }

      if (v60)
      {
        for (j = (a1 + 24); ; j += 3)
        {
          v63 = *j;
          v64 = **j;
          v65 = v57 < v64;
          if (v57 == v64)
          {
            v66 = v17[1];
            v67 = v63[1];
            v65 = v66 < v67;
            if (v66 == v67)
            {
              v65 = v17[2] < v63[2];
            }
          }

          if (v65)
          {
            break;
          }
        }
      }

      else
      {
        for (j = (a1 + 24); j < a2; j += 3)
        {
          v68 = *j;
          v69 = **j;
          v70 = v57 < v69;
          if (v57 == v69)
          {
            v71 = v17[1];
            v72 = v68[1];
            v70 = v71 < v72;
            if (v71 == v72)
            {
              v70 = v17[2] < v68[2];
            }
          }

          if (v70)
          {
            break;
          }
        }
      }

      k = a2;
      if (j < a2)
      {
        for (k = a2 - 3; ; k -= 3)
        {
          v74 = v57 < v59;
          if (v57 == v59)
          {
            v75 = v17[1];
            v76 = v58[1];
            v74 = v75 < v76;
            if (v75 == v76)
            {
              v74 = v17[2] < v58[2];
            }
          }

          if (!v74)
          {
            break;
          }

          v77 = *(k - 3);
          v58 = v77;
          v59 = *v77;
        }
      }

      if (j < k)
      {
        v78 = *j;
        v79 = *k;
        do
        {
          *j = v79;
          *k = v78;
          v80 = j[1];
          j[1] = k[1];
          k[1] = v80;
          v81 = j[2];
          j[2] = k[2];
          k[2] = v81;
          do
          {
            v82 = j[3];
            j += 3;
            v78 = v82;
            v83 = v57 < *v82;
            if (v57 == *v82)
            {
              v84 = v17[1];
              v85 = v78[1];
              v83 = v84 < v85;
              if (v84 == v85)
              {
                v83 = v17[2] < v78[2];
              }
            }
          }

          while (!v83);
          do
          {
            v86 = *(k - 3);
            k -= 3;
            v79 = v86;
            v87 = v57 < *v86;
            if (v57 == *v86)
            {
              v88 = v17[1];
              v89 = v79[1];
              v87 = v88 < v89;
              if (v88 == v89)
              {
                v87 = v17[2] < v79[2];
              }
            }
          }

          while (v87);
        }

        while (j < k);
      }

      v90 = (j - 3);
      if (j - 3 == a1)
      {
        v92 = *v90;
        if (*v90)
        {
          *(j - 2) = v92;
          v207 = v56;
          operator delete(v92);
          v56 = v207;
        }
      }

      else
      {
        v91 = *a1;
        if (*a1)
        {
          *(a1 + 8) = v91;
          v206 = v56;
          operator delete(v91);
          v56 = v206;
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        *a1 = *(j - 3);
        *(a1 + 16) = *(j - 1);
        *v90 = 0;
        *(j - 2) = 0;
        *(j - 1) = 0;
      }

      a4 = 0;
      *(j - 3) = v17;
      *(j - 1) = v56;
    }
  }

  v102 = j + 3;
  v104 = j == a2 || v102 == a2;
  if (a4)
  {
    if (!v104)
    {
      v105 = 0;
      v106 = j;
      do
      {
        v107 = v106;
        v106 = v102;
        v108 = v107[3];
        v109 = *v107;
        v110 = **v107;
        v111 = *v108 < v110;
        if (*v108 == v110)
        {
          v112 = v108[1];
          v113 = v109[1];
          v111 = v112 < v113;
          if (v112 == v113)
          {
            v111 = v108[2] < v109[2];
          }
        }

        if (v111)
        {
          v114 = *(v107 + 2);
          *v106 = 0;
          v106[1] = 0;
          v115 = v105;
          v106[2] = 0;
          while (1)
          {
            v116 = j + v115;
            *(v116 + 24) = *(j + v115);
            *(v116 + 5) = *(j + v115 + 16);
            *(v116 + 1) = 0;
            *(v116 + 2) = 0;
            *v116 = 0;
            if (!v115)
            {
              break;
            }

            v117 = *(v116 - 3);
            v118 = *v108 < *v117;
            if (*v108 == *v117)
            {
              v119 = v108[1];
              v120 = v117[1];
              v118 = v119 < v120;
              if (v119 == v120)
              {
                v118 = v108[2] < v117[2];
              }
            }

            if (!v118)
            {
              v121 = (j + v115);
              goto LABEL_153;
            }

            v115 -= 24;
          }

          v121 = j;
LABEL_153:
          v122 = *v121;
          if (*v121)
          {
            v121[1] = v122;
            v208 = v114;
            operator delete(v122);
            v114 = v208;
          }

          *v121 = v108;
          *(v121 + 1) = v114;
        }

        v102 = v106 + 3;
        v105 += 24;
      }

      while (v106 + 3 != a2);
    }
  }

  else if (!v104)
  {
    do
    {
      v190 = a1;
      a1 = v102;
      v191 = *(v190 + 24);
      v192 = *v190;
      v193 = **v190;
      v194 = *v191 < v193;
      if (*v191 == v193)
      {
        v195 = v191[1];
        v196 = v192[1];
        v194 = v195 < v196;
        if (v195 == v196)
        {
          v194 = v191[2] < v192[2];
        }
      }

      if (v194)
      {
        v197 = *(v190 + 32);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        do
        {
          v198 = v190;
          *(v190 + 24) = *v190;
          *(v190 + 40) = *(v190 + 16);
          *v190 = 0;
          *(v190 + 8) = 0;
          *(v190 + 16) = 0;
          v200 = *(v190 - 24);
          v190 -= 24;
          v199 = v200;
          v201 = *v191 < *v200;
          if (*v191 == *v200)
          {
            v202 = v191[1];
            v203 = v199[1];
            v201 = v202 < v203;
            if (v202 == v203)
            {
              v201 = v191[2] < v199[2];
            }
          }
        }

        while (v201);
        *v198 = v191;
        *(v198 + 8) = v197;
      }

      v102 = (a1 + 24);
    }

    while ((a1 + 24) != a2);
  }
}

double sub_262375C50(void *a1)
{
  v1 = a1;
  objc_msgSend_quad(v1, v2, v3);
  v13 = v4;
  objc_msgSend_quad(v1, v5, v6);
  v8 = vsubq_f32(v13, v7);
  v9 = vmulq_f32(v8, v8);
  *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v10);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
  v11 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
  v14 = vmlaq_f32(vmulq_f32(v11, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));

  *&result = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL).u64[0];
  return result;
}

float **sub_262375D14(float **result, uint64_t a2, float **a3)
{
  v3 = *a2;
  v4 = **a2;
  v5 = *result;
  v6 = **result;
  v7 = v4 < v6;
  if (v4 == v6)
  {
    v8 = v3[1];
    v9 = v5[1];
    v7 = v8 < v9;
    if (v8 == v9)
    {
      v7 = v3[2] < v5[2];
    }
  }

  if (!v7)
  {
    v17 = *a3;
    v18 = **a3;
    v19 = v18 < v4;
    if (v18 == v4)
    {
      v20 = v17[1];
      v21 = v3[1];
      v19 = v20 < v21;
      if (v20 == v21)
      {
        v19 = v17[2] < v3[2];
      }
    }

    if (!v19)
    {
      return result;
    }

    *a2 = v17;
    *a3 = v3;
    v22 = *(a2 + 8);
    *(a2 + 8) = a3[1];
    a3[1] = v22;
    v24 = (a2 + 16);
    v23 = *(a2 + 16);
    *(a2 + 16) = a3[2];
    a3[2] = v23;
    v25 = *a2;
    v26 = **a2;
    v27 = *result;
    v28 = **result;
    v29 = v26 < v28;
    if (v26 == v28)
    {
      v30 = v25[1];
      v31 = v27[1];
      v29 = v30 < v31;
      if (v30 == v31)
      {
        v29 = v25[2] < v27[2];
      }
    }

    if (!v29)
    {
      return result;
    }

    *result = v25;
    *a2 = v27;
    v32 = result[1];
    result[1] = *(a2 + 8);
    *(a2 + 8) = v32;
    v16 = (result + 2);
LABEL_30:
    v43 = *v16;
    *v16 = *v24;
    *v24 = v43;
    return result;
  }

  v10 = *a3;
  v11 = **a3;
  v12 = v11 < v4;
  if (v11 == v4)
  {
    v13 = v10[1];
    v14 = v3[1];
    v12 = v13 < v14;
    if (v13 == v14)
    {
      v12 = v10[2] < v3[2];
    }
  }

  if (v12)
  {
    *result = v10;
    *a3 = v5;
    v15 = result[1];
    result[1] = a3[1];
    a3[1] = v15;
    v16 = (result + 2);
LABEL_29:
    v24 = (a3 + 2);
    goto LABEL_30;
  }

  *result = v3;
  *a2 = v5;
  v33 = result[1];
  result[1] = *(a2 + 8);
  *(a2 + 8) = v33;
  v16 = (a2 + 16);
  v34 = result[2];
  result[2] = *(a2 + 16);
  *(a2 + 16) = v34;
  v35 = *a3;
  v36 = **a3;
  v37 = *a2;
  v38 = **a2;
  v39 = v36 < v38;
  if (v36 == v38)
  {
    v40 = v35[1];
    v41 = v37[1];
    v39 = v40 < v41;
    if (v40 == v41)
    {
      v39 = v35[2] < v37[2];
    }
  }

  if (v39)
  {
    *a2 = v35;
    *a3 = v37;
    v42 = *(a2 + 8);
    *(a2 + 8) = a3[1];
    a3[1] = v42;
    goto LABEL_29;
  }

  return result;
}

float **sub_262375EE4(float **a1, uint64_t a2, float **a3, uint64_t a4)
{
  result = sub_262375D14(a1, a2, a3);
  v9 = *a4;
  v10 = **a4;
  v11 = *a3;
  v12 = **a3;
  v13 = v10 < v12;
  if (v10 == v12)
  {
    v14 = v9[1];
    v15 = v11[1];
    v13 = v14 < v15;
    if (v14 == v15)
    {
      v13 = v9[2] < v11[2];
    }
  }

  if (v13)
  {
    *a3 = v9;
    *a4 = v11;
    v16 = a3[1];
    a3[1] = *(a4 + 8);
    *(a4 + 8) = v16;
    v17 = a3[2];
    a3[2] = *(a4 + 16);
    *(a4 + 16) = v17;
    v18 = *a3;
    v19 = **a3;
    v20 = *a2;
    v21 = **a2;
    v22 = v19 < v21;
    if (v19 == v21)
    {
      v23 = v18[1];
      v24 = v20[1];
      v22 = v23 < v24;
      if (v23 == v24)
      {
        v22 = v18[2] < v20[2];
      }
    }

    if (v22)
    {
      *a2 = v18;
      *a3 = v20;
      v25 = *(a2 + 8);
      *(a2 + 8) = a3[1];
      a3[1] = v25;
      v26 = *(a2 + 16);
      *(a2 + 16) = a3[2];
      a3[2] = v26;
      v27 = *a2;
      v28 = **a2;
      v29 = *a1;
      v30 = **a1;
      v31 = v28 < v30;
      if (v28 == v30)
      {
        v32 = v27[1];
        v33 = v29[1];
        v31 = v32 < v33;
        if (v32 == v33)
        {
          v31 = v27[2] < v29[2];
        }
      }

      if (v31)
      {
        *a1 = v27;
        *a2 = v29;
        v34 = a1[1];
        a1[1] = *(a2 + 8);
        *(a2 + 8) = v34;
        v35 = a1[2];
        a1[2] = *(a2 + 16);
        *(a2 + 16) = v35;
      }
    }
  }

  return result;
}

float **sub_26237603C(float **a1, uint64_t a2, float **a3, uint64_t a4, uint64_t a5)
{
  result = sub_262375EE4(a1, a2, a3, a4);
  v11 = *a5;
  v12 = **a5;
  v13 = *a4;
  v14 = **a4;
  v15 = v12 < v14;
  if (v12 == v14)
  {
    v16 = v11[1];
    v17 = v13[1];
    v15 = v16 < v17;
    if (v16 == v17)
    {
      v15 = v11[2] < v13[2];
    }
  }

  if (v15)
  {
    *a4 = v11;
    *a5 = v13;
    v18 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v18;
    v19 = *(a4 + 16);
    *(a4 + 16) = *(a5 + 16);
    *(a5 + 16) = v19;
    v20 = *a4;
    v21 = **a4;
    v22 = *a3;
    v23 = **a3;
    v24 = v21 < v23;
    if (v21 == v23)
    {
      v25 = v20[1];
      v26 = v22[1];
      v24 = v25 < v26;
      if (v25 == v26)
      {
        v24 = v20[2] < v22[2];
      }
    }

    if (v24)
    {
      *a3 = v20;
      *a4 = v22;
      v27 = a3[1];
      a3[1] = *(a4 + 8);
      *(a4 + 8) = v27;
      v28 = a3[2];
      a3[2] = *(a4 + 16);
      *(a4 + 16) = v28;
      v29 = *a3;
      v30 = **a3;
      v31 = *a2;
      v32 = **a2;
      v33 = v30 < v32;
      if (v30 == v32)
      {
        v34 = v29[1];
        v35 = v31[1];
        v33 = v34 < v35;
        if (v34 == v35)
        {
          v33 = v29[2] < v31[2];
        }
      }

      if (v33)
      {
        *a2 = v29;
        *a3 = v31;
        v36 = *(a2 + 8);
        *(a2 + 8) = a3[1];
        a3[1] = v36;
        v37 = *(a2 + 16);
        *(a2 + 16) = a3[2];
        a3[2] = v37;
        v38 = *a2;
        v39 = **a2;
        v40 = *a1;
        v41 = **a1;
        v42 = v39 < v41;
        if (v39 == v41)
        {
          v43 = v38[1];
          v44 = v40[1];
          v42 = v43 < v44;
          if (v43 == v44)
          {
            v42 = v38[2] < v40[2];
          }
        }

        if (v42)
        {
          *a1 = v38;
          *a2 = v40;
          v45 = a1[1];
          a1[1] = *(a2 + 8);
          *(a2 + 8) = v45;
          v46 = a1[2];
          a1[2] = *(a2 + 16);
          *(a2 + 16) = v46;
        }
      }
    }
  }

  return result;
}

BOOL sub_262376200(float **a1, float **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 3);
        v6 = *a1;
        v7 = **a1;
        v8 = *v5 < v7;
        if (*v5 == v7)
        {
          v9 = v5[1];
          v10 = v6[1];
          v8 = v9 < v10;
          if (v9 == v10)
          {
            v8 = v5[2] < v6[2];
          }
        }

        if (v8)
        {
          *a1 = v5;
          *(a2 - 3) = v6;
          v11 = a1[1];
          a1[1] = *(a2 - 2);
          *(a2 - 2) = v11;
          v12 = a1[2];
          a1[2] = *(a2 - 1);
          *(a2 - 1) = v12;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_262375D14(a1, (a1 + 3), a2 - 3);
      return 1;
    case 4:
      sub_262375EE4(a1, (a1 + 3), a1 + 6, (a2 - 3));
      return 1;
    case 5:
      sub_26237603C(a1, (a1 + 3), a1 + 6, (a1 + 9), (a2 - 3));
      return 1;
  }

LABEL_15:
  v13 = a1 + 6;
  sub_262375D14(a1, (a1 + 3), a1 + 6);
  v14 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v14;
    v18 = **v14;
    v19 = *v13;
    v20 = **v13;
    v21 = v18 < v20;
    if (v18 == v20)
    {
      v22 = v17[1];
      v23 = v19[1];
      v21 = v22 < v23;
      if (v22 == v23)
      {
        v21 = v17[2] < v19[2];
      }
    }

    if (v21)
    {
      v24 = *(v14 + 1);
      *v14 = 0;
      v14[1] = 0;
      v25 = v15;
      v14[2] = 0;
      while (1)
      {
        v26 = a1 + v25;
        *(v26 + 72) = *(a1 + v25 + 48);
        *(v26 + 11) = *(a1 + v25 + 64);
        *(v26 + 7) = 0;
        *(v26 + 8) = 0;
        *(v26 + 6) = 0;
        if (v25 == -48)
        {
          break;
        }

        v27 = *(v26 + 3);
        v28 = *v17 < *v27;
        if (*v17 == *v27)
        {
          v29 = v17[1];
          v30 = v27[1];
          v28 = v29 < v30;
          if (v29 == v30)
          {
            v28 = v17[2] < v27[2];
          }
        }

        if (!v28)
        {
          v31 = a1 + v25 + 48;
          goto LABEL_31;
        }

        v25 -= 24;
      }

      v31 = a1;
LABEL_31:
      v32 = *v31;
      if (*v31)
      {
        *(v31 + 8) = v32;
        v34 = v24;
        operator delete(v32);
        v24 = v34;
      }

      *v31 = v17;
      *(v31 + 8) = v24;
      if (++v16 == 8)
      {
        return v14 + 3 == a2;
      }
    }

    v13 = v14;
    v15 += 24;
    v14 += 3;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_262376468(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t **a5)
{
  v5 = **a5;
  v6 = *a2;
  v7 = *a5[1];
  v8 = vmul_f32(vsub_f32(**a2, v5), v7);
  v9 = *result;
  v10 = vmul_f32(v7, vsub_f32(**result, v5));
  v11 = vadd_f32(vzip1_s32(v8, v10), vzip2_s32(v8, v10));
  v12 = v11.f32[0] < v11.f32[1];
  if (v11.f32[0] == v11.f32[1])
  {
    v12 = v6[1].f32[0] < v9[1].f32[0];
  }

  if (v12)
  {
    v13 = *a3;
    v14 = vmul_f32(v7, vsub_f32(**a3, v5));
    v15 = vadd_f32(v14, vdup_lane_s32(v14, 1));
    if (vceq_f32(v15, v11).u8[0])
    {
      if (v13[1].f32[0] >= v6[1].f32[0])
      {
LABEL_7:
        *result = v6;
        *a2 = v9;
        v16 = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v16;
        v17 = (a2 + 16);
        v18 = *(result + 16);
        *(result + 16) = *(a2 + 16);
        *(a2 + 16) = v18;
        v5 = **a5;
        v19 = *a3;
        v7 = *a5[1];
        v20 = vmul_f32(vsub_f32(**a3, v5), v7);
        v21 = *a2;
        v22 = vmul_f32(v7, vsub_f32(**a2, v5));
        v23 = vadd_f32(vzip1_s32(v20, v22), vzip2_s32(v20, v22));
        v24 = v23.f32[0] < v23.f32[1];
        if (v23.f32[0] == v23.f32[1])
        {
          v24 = v19[1].f32[0] < v21[1].f32[0];
        }

        if (!v24)
        {
          goto LABEL_25;
        }

        *a2 = v19;
        *a3 = v21;
        v25 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v25;
        goto LABEL_17;
      }
    }

    else if ((vcgt_f32(v11, v15).u8[0] & 1) == 0)
    {
      goto LABEL_7;
    }

    *result = v13;
    *a3 = v9;
    v29 = *(result + 8);
    *(result + 8) = *(a3 + 8);
    *(a3 + 8) = v29;
    v17 = (result + 16);
LABEL_17:
    v30 = (a3 + 16);
LABEL_24:
    v40 = *v17;
    *v17 = *v30;
    *v30 = v40;
    v5 = **a5;
    v7 = *a5[1];
    goto LABEL_25;
  }

  v26 = *a3;
  v27 = vmul_f32(v7, vsub_f32(**a3, v5));
  v28 = vadd_f32(v27, vdup_lane_s32(v27, 1));
  if (vceq_f32(v28, v11).u8[0])
  {
    if (v26[1].f32[0] >= v6[1].f32[0])
    {
      goto LABEL_25;
    }
  }

  else if ((vcgt_f32(v11, v28).u8[0] & 1) == 0)
  {
    goto LABEL_25;
  }

  *a2 = v26;
  *a3 = v6;
  v31 = *(a2 + 8);
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = v31;
  v30 = (a2 + 16);
  v32 = *(a2 + 16);
  *(a2 + 16) = *(a3 + 16);
  *(a3 + 16) = v32;
  v5 = **a5;
  v33 = *a2;
  v7 = *a5[1];
  v34 = vmul_f32(vsub_f32(**a2, v5), v7);
  v35 = *result;
  v36 = vmul_f32(v7, vsub_f32(**result, v5));
  v37 = vadd_f32(vzip1_s32(v34, v36), vzip2_s32(v34, v36));
  v38 = v37.f32[0] < v37.f32[1];
  if (v37.f32[0] == v37.f32[1])
  {
    v38 = v33[1].f32[0] < v35[1].f32[0];
  }

  if (v38)
  {
    *result = v33;
    *a2 = v35;
    v39 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(a2 + 8) = v39;
    v17 = (result + 16);
    goto LABEL_24;
  }

LABEL_25:
  v41 = *a4;
  v42 = vmul_f32(vsub_f32(**a4, v5), v7);
  v43 = *a3;
  v44 = vmul_f32(v7, vsub_f32(**a3, v5));
  v45 = vadd_f32(vzip1_s32(v42, v44), vzip2_s32(v42, v44));
  v46 = v45.f32[0] < v45.f32[1];
  if (v45.f32[0] == v45.f32[1])
  {
    v46 = v41[1].f32[0] < v43[1].f32[0];
  }

  if (v46)
  {
    *a3 = v41;
    *a4 = v43;
    v47 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v47;
    v48 = *(a3 + 16);
    *(a3 + 16) = *(a4 + 16);
    *(a4 + 16) = v48;
    v49 = *a3;
    v50 = a5[1];
    v51 = **a5;
    v52 = vmul_f32(vsub_f32(**a3, v51), *v50);
    v53 = *a2;
    v54 = vmul_f32(*v50, vsub_f32(**a2, v51));
    v55 = vadd_f32(vzip1_s32(v52, v54), vzip2_s32(v52, v54));
    v56 = v55.f32[0] < v55.f32[1];
    if (v55.f32[0] == v55.f32[1])
    {
      v56 = v49[1].f32[0] < v53[1].f32[0];
    }

    if (v56)
    {
      *a2 = v49;
      *a3 = v53;
      v57 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v57;
      v58 = *(a2 + 16);
      *(a2 + 16) = *(a3 + 16);
      *(a3 + 16) = v58;
      v59 = *a2;
      v60 = a5[1];
      v61 = **a5;
      v62 = vmul_f32(vsub_f32(**a2, v61), *v60);
      v63 = *result;
      v64 = vmul_f32(*v60, vsub_f32(**result, v61));
      v65 = vadd_f32(vzip1_s32(v62, v64), vzip2_s32(v62, v64));
      v66 = v65.f32[0] < v65.f32[1];
      if (v65.f32[0] == v65.f32[1])
      {
        v66 = v59[1].f32[0] < v63[1].f32[0];
      }

      if (v66)
      {
        *result = v59;
        *a2 = v63;
        v67 = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v67;
        v68 = *(result + 16);
        *(result + 16) = *(a2 + 16);
        *(a2 + 16) = v68;
      }
    }
  }

  return result;
}

BOOL sub_262376824(float32x2_t **a1, char *a2, float32x2_t **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          sub_262376468(a1, (a1 + 3), (a1 + 6), (a1 + 9), a3);
          v15 = **a3;
          v16 = *(a2 - 3);
          v17 = *a3[1];
          v18 = vmul_f32(vsub_f32(*v16, v15), v17);
          v19 = a1[9];
          v20 = vmul_f32(v17, vsub_f32(*v19, v15));
          v21 = vadd_f32(vzip1_s32(v18, v20), vzip2_s32(v18, v20));
          v22 = v21.f32[0] < v21.f32[1];
          if (v21.f32[0] == v21.f32[1])
          {
            v22 = v16[1].f32[0] < v19[1].f32[0];
          }

          if (v22)
          {
            a1[9] = v16;
            *(a2 - 3) = v19;
            v23 = a1[10];
            a1[10] = *(a2 - 2);
            *(a2 - 2) = v23;
            v24 = a1[11];
            a1[11] = *(a2 - 1);
            *(a2 - 1) = v24;
            v25 = a1[9];
            v26 = *v25;
            v27 = a3[1];
            v28 = **a3;
            v29 = vmul_f32(vsub_f32(*v25, v28), *v27);
            v30 = a1[6];
            v31 = vmul_f32(*v27, vsub_f32(*v30, v28));
            v32 = vadd_f32(vzip1_s32(v29, v31), vzip2_s32(v29, v31));
            v33 = v32.f32[0] < v32.f32[1];
            if (v32.f32[0] == v32.f32[1])
            {
              v33 = v25[1].f32[0] < v30[1].f32[0];
            }

            if (v33)
            {
              v35 = a1[10];
              v34 = a1[11];
              v36 = *(a1 + 7);
              a1[6] = v25;
              a1[7] = v35;
              a1[8] = v34;
              a1[9] = v30;
              *(a1 + 5) = v36;
              v37 = a3[1];
              *&v36 = **a3;
              v38 = vmul_f32(vsub_f32(v26, *&v36), *v37);
              v39 = a1[3];
              *&v36 = vmul_f32(*v37, vsub_f32(*v39, *&v36));
              v40 = vadd_f32(vzip1_s32(v38, *&v36), vzip2_s32(v38, *&v36));
              v41 = v40.f32[0] < v40.f32[1];
              if (v40.f32[0] == v40.f32[1])
              {
                v41 = v25[1].f32[0] < v39[1].f32[0];
              }

              if (v41)
              {
                v42 = *(a1 + 2);
                a1[3] = v25;
                a1[4] = v35;
                a1[5] = v34;
                a1[6] = v39;
                *(a1 + 7) = v42;
                if (sub_262377010(v25, *a1, **a3, *a3[1]))
                {
                  v43 = *a1;
                  *a1 = v25;
                  a1[1] = v35;
                  *(a1 + 3) = v43;
                  v44 = a1[2];
                  a1[2] = v34;
                  a1[5] = v44;
                }
              }
            }
          }

          return 1;
        }

        goto LABEL_37;
      }

      sub_262376468(a1, (a1 + 3), (a1 + 6), (a2 - 24), a3);
      return 1;
    }

    v45 = **a3;
    v46 = a1[3];
    v47 = *a3[1];
    v48 = vmul_f32(vsub_f32(*v46, v45), v47);
    v49 = *a1;
    v50 = **a1;
    v51 = vmul_f32(v47, vsub_f32(v50, v45));
    v52 = vadd_f32(vzip1_s32(v48, v51), vzip2_s32(v48, v51));
    v53 = v52.f32[0] < v52.f32[1];
    if (v52.f32[0] == v52.f32[1])
    {
      v53 = v46[1].f32[0] < v49[1].f32[0];
    }

    if (!v53)
    {
      v89 = *(a2 - 3);
      v90 = vmul_f32(v47, vsub_f32(*v89, v45));
      v91 = vadd_f32(v90, vdup_lane_s32(v90, 1));
      if (vceq_f32(v91, v52).u8[0])
      {
        if (v89[1].f32[0] >= v46[1].f32[0])
        {
          return 1;
        }
      }

      else if ((vcgt_f32(v52, v91).u32[0] & 1) == 0)
      {
        return 1;
      }

      a1[3] = v89;
      *(a2 - 3) = v46;
      v97 = a1[4];
      a1[4] = *(a2 - 2);
      *(a2 - 2) = v97;
      v98 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v98;
      v99 = a1[3];
      v100 = a3[1];
      v101 = **a3;
      v102 = vmul_f32(vsub_f32(*v99, v101), *v100);
      v103 = *a1;
      v104 = vmul_f32(*v100, vsub_f32(**a1, v101));
      v105 = vadd_f32(vzip1_s32(v102, v104), vzip2_s32(v102, v104));
      v106 = v105.f32[0] < v105.f32[1];
      if (v105.f32[0] == v105.f32[1])
      {
        v106 = v99[1].f32[0] < v103[1].f32[0];
      }

      if (v106)
      {
        *a1 = v99;
        a1[3] = v103;
        v107 = *(a1 + 1);
        *(a1 + 1) = *(a1 + 2);
        *(a1 + 2) = v107;
      }

      return 1;
    }

    v54 = *(a2 - 3);
    v55 = vmul_f32(v47, vsub_f32(*v54, v45));
    v56 = vadd_f32(v55, vdup_lane_s32(v55, 1));
    if (vceq_f32(v56, v52).u8[0])
    {
      if (v54[1].f32[0] >= v46[1].f32[0])
      {
LABEL_32:
        *a1 = v46;
        a1[3] = v49;
        v57 = *(a1 + 1);
        *(a1 + 1) = *(a1 + 2);
        *(a1 + 2) = v57;
        v58 = *(a2 - 3);
        *&v57 = **a3;
        v59 = *a3[1];
        v60 = vmul_f32(vsub_f32(*v58, *&v57), v59);
        v61 = vmul_f32(vsub_f32(v50, *&v57), v59);
        v62 = vadd_f32(vzip1_s32(v60, v61), vzip2_s32(v60, v61));
        v63 = v62.f32[0] < v62.f32[1];
        if (v62.f32[0] == v62.f32[1])
        {
          v63 = v58[1].f32[0] < v49[1].f32[0];
        }

        if (!v63)
        {
          return 1;
        }

        a1[3] = v58;
        *(a2 - 3) = v49;
        v64 = a1[4];
        a1[4] = *(a2 - 2);
        *(a2 - 2) = v64;
        v65 = a1[5];
        a1[5] = *(a2 - 1);
        goto LABEL_58;
      }
    }

    else if ((vcgt_f32(v52, v56).u8[0] & 1) == 0)
    {
      goto LABEL_32;
    }

    *a1 = v54;
    *(a2 - 3) = v49;
LABEL_57:
    v96 = a1[1];
    a1[1] = *(a2 - 2);
    *(a2 - 2) = v96;
    v65 = a1[2];
    a1[2] = *(a2 - 1);
LABEL_58:
    *(a2 - 1) = v65;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 3);
    v8 = a3[1];
    v9 = **a3;
    v10 = vmul_f32(vsub_f32(*v7, v9), *v8);
    v11 = *a1;
    v12 = vmul_f32(*v8, vsub_f32(**a1, v9));
    v13 = vadd_f32(vzip1_s32(v10, v12), vzip2_s32(v10, v12));
    v14 = v13.f32[0] < v13.f32[1];
    if (v13.f32[0] == v13.f32[1])
    {
      v14 = v7[1].f32[0] < v11[1].f32[0];
    }

    if (!v14)
    {
      return 1;
    }

    *a1 = v7;
    *(a2 - 3) = v11;
    goto LABEL_57;
  }

LABEL_37:
  v66 = a1 + 6;
  v67 = **a3;
  v68 = a1[3];
  v69 = *a3[1];
  v70 = vmul_f32(vsub_f32(*v68, v67), v69);
  v71 = *a1;
  v72 = **a1;
  v73 = vmul_f32(v69, vsub_f32(v72, v67));
  v74 = vadd_f32(vzip1_s32(v70, v73), vzip2_s32(v70, v73));
  v75 = v74.f32[0] < v74.f32[1];
  if (v74.f32[0] == v74.f32[1])
  {
    v75 = v68[1].f32[0] < v71[1].f32[0];
  }

  if (v75)
  {
    v76 = *v66;
    v77 = **v66;
    v78 = vmul_f32(v69, vsub_f32(v77, v67));
    v79 = vadd_f32(v78, vdup_lane_s32(v78, 1));
    if (vceq_f32(v79, v74).u8[0])
    {
      if (v76[1].f32[0] >= v68[1].f32[0])
      {
LABEL_43:
        *a1 = v68;
        v81 = a1[1];
        v80 = a1[2];
        v82 = *(a1 + 2);
        a1[3] = v71;
        a1[4] = v81;
        *(a1 + 1) = v82;
        a1[5] = v80;
        *&v82 = **a3;
        v83 = *a3[1];
        v84 = vmul_f32(vsub_f32(v77, *&v82), v83);
        v85 = vmul_f32(vsub_f32(v72, *&v82), v83);
        v86 = vadd_f32(vzip1_s32(v84, v85), vzip2_s32(v84, v85));
        v87 = v86.f32[0] < v86.f32[1];
        if (v86.f32[0] == v86.f32[1])
        {
          v87 = v76[1].f32[0] < v71[1].f32[0];
        }

        if (v87)
        {
          a1[3] = v76;
          v88 = *(a1 + 7);
          a1[6] = v71;
          a1[7] = v81;
          *(a1 + 2) = v88;
          a1[8] = v80;
        }

        goto LABEL_73;
      }
    }

    else if ((vcgt_f32(v74, v79).u8[0] & 1) == 0)
    {
      goto LABEL_43;
    }

    *a1 = v76;
    a1[6] = v71;
    v108 = *(a1 + 1);
    *(a1 + 1) = *(a1 + 7);
    *(a1 + 7) = v108;
    goto LABEL_73;
  }

  v92 = *v66;
  v93 = **v66;
  v94 = vmul_f32(v69, vsub_f32(v93, v67));
  v95 = vadd_f32(v94, vdup_lane_s32(v94, 1));
  if (vceq_f32(v95, v74).u8[0])
  {
    if (v92[1].f32[0] >= v68[1].f32[0])
    {
      goto LABEL_73;
    }
  }

  else if ((vcgt_f32(v74, v95).u8[0] & 1) == 0)
  {
    goto LABEL_73;
  }

  v110 = a1[7];
  v109 = a1[8];
  v111 = *(a1 + 2);
  a1[3] = v92;
  a1[4] = v110;
  a1[5] = v109;
  a1[6] = v68;
  *(a1 + 7) = v111;
  *&v111 = **a3;
  v112 = *a3[1];
  v113 = vmul_f32(vsub_f32(v93, *&v111), v112);
  v114 = vmul_f32(vsub_f32(v72, *&v111), v112);
  v115 = vadd_f32(vzip1_s32(v113, v114), vzip2_s32(v113, v114));
  v116 = v115.f32[0] < v115.f32[1];
  if (v115.f32[0] == v115.f32[1])
  {
    v116 = v92[1].f32[0] < v71[1].f32[0];
  }

  if (v116)
  {
    v117 = *(a1 + 1);
    *a1 = v92;
    a1[1] = v110;
    a1[2] = v109;
    a1[3] = v71;
    *(a1 + 2) = v117;
  }

LABEL_73:
  v118 = (a1 + 9);
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v119 = 0;
  v120 = 0;
  while (1)
  {
    v121 = a3[1];
    v122 = **a3;
    v123 = *v118;
    v124 = vmul_f32(vsub_f32(**v118, v122), *v121);
    v125 = *v66;
    v126 = vmul_f32(*v121, vsub_f32(*v125, v122));
    v127 = vadd_f32(vzip1_s32(v124, v126), vzip2_s32(v124, v126));
    v128 = v127.f32[0] < v127.f32[1];
    if (v127.f32[0] == v127.f32[1])
    {
      v128 = v123[1].f32[0] < v125[1].f32[0];
    }

    if (v128)
    {
      v129 = *(v118 + 8);
      *v118 = 0;
      *(v118 + 1) = 0;
      v130 = v119;
      *(v118 + 2) = 0;
      while (1)
      {
        v131 = a1 + v130;
        *(v131 + 72) = *(a1 + v130 + 48);
        *(v131 + 11) = *(a1 + v130 + 64);
        *(v131 + 7) = 0;
        *(v131 + 8) = 0;
        *(v131 + 6) = 0;
        if (v130 == -48)
        {
          break;
        }

        v132 = a3[1];
        v133 = **a3;
        v134 = vmul_f32(vsub_f32(*v123, v133), *v132);
        v135 = *(v131 + 3);
        v136 = vmul_f32(*v132, vsub_f32(*v135, v133));
        v137 = vadd_f32(vzip1_s32(v134, v136), vzip2_s32(v134, v136));
        v138 = v137.f32[0] < v137.f32[1];
        if (v137.f32[0] == v137.f32[1])
        {
          v138 = v123[1].f32[0] < v135[1].f32[0];
        }

        if (!v138)
        {
          v139 = a1 + v130 + 48;
          goto LABEL_87;
        }

        v130 -= 24;
      }

      v139 = a1;
LABEL_87:
      v140 = *v139;
      if (*v139)
      {
        *(v139 + 8) = v140;
        v142 = v129;
        operator delete(v140);
        v129 = v142;
      }

      *v139 = v123;
      *(v139 + 8) = v129;
      if (++v120 == 8)
      {
        return v118 + 24 == a2;
      }
    }

    v66 = v118;
    v119 += 24;
    v118 += 24;
    if (v118 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_262377010(float32x2_t *a1, float32x2_t *a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vmul_f32(vsub_f32(*a1, a3), a4);
  v5 = vmul_f32(vsub_f32(*a2, a3), a4);
  v6 = vadd_f32(vzip1_s32(v4, v5), vzip2_s32(v4, v5));
  v7 = v6.f32[0] < v6.f32[1];
  if (v6.f32[0] == v6.f32[1])
  {
    return a1[1].f32[0] < a2[1].f32[0];
  }

  return v7;
}

uint64_t *sub_262377054(void *a1, int a2)
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

void sub_262377468(void **a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = v3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v43, v48, 16);
  if (v6)
  {
    v7 = 0;
    v8 = *v44;
    v9 = v4;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        v42 = sub_26223FCEC(v11).n128_u64[0];
        v13 = v12;
        objc_msgSend_quad(v11, v14, v15);
        v41 = v16;
        objc_msgSend_quad(v11, v17, v18);
        v40 = v20;
        v21 = vsub_f32(vext_s8(v13, v42, 4uLL), vext_s8(v42, v13, 4uLL));
        v22 = vmul_f32(v21, v21);
        v22.i32[0] = vadd_f32(v22, vdup_lane_s32(v22, 1)).u32[0];
        v23 = vrsqrte_f32(v22.u32[0]);
        v24 = vmul_f32(v23, vrsqrts_f32(v22.u32[0], vmul_f32(v23, v23)));
        *&v25 = vmul_n_f32(v21, vmul_f32(v24, vrsqrts_f32(v22.u32[0], vmul_f32(v24, v24))).f32[0]);
        v39 = v25;
        v26 = *&v25 < 0.0;
        if (v11)
        {
          objc_copyStruct(&dest, (v11 + 208), 16, 1, 0);
          v27 = dest;
        }

        else
        {
          v27 = 0;
        }

        HIDWORD(v28) = HIDWORD(v39);
        *&v28 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v26), 0x1FuLL)), vneg_f32(*&v39), *&v39);
        *(&v28 + 2) = -(COERCE_FLOAT(vmul_f32(v42, *&v28).i32[1]) + (*&v28 * v42.f32[0]));
        v29 = a1[2];
        if (v7 >= v29)
        {
          v30 = *a1;
          v31 = v7 - *a1;
          v32 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 4) + 1;
          if (v32 > 0x555555555555555)
          {
            sub_2621CBEB0();
          }

          v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 4);
          if (2 * v33 > v32)
          {
            v32 = 2 * v33;
          }

          if (v33 >= 0x2AAAAAAAAAAAAAALL)
          {
            v34 = 0x555555555555555;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            sub_2623780D4(v34);
          }

          v35 = 16 * (v31 >> 4);
          *v35 = v42;
          *(v35 + 8) = v13;
          *(v35 + 16) = v40;
          *(v35 + 20) = v41;
          *(v35 + 24) = v27;
          *(v35 + 32) = v28;
          v7 = v35 + 48;
          v36 = v35 - v31;
          memcpy((v35 - v31), v30, v31);
          *a1 = v36;
          a1[1] = v7;
          a1[2] = 0;
          if (v30)
          {
            operator delete(v30);
          }

          v4 = v9;
        }

        else
        {
          *v7 = v42;
          *(v7 + 8) = v13;
          *(v7 + 16) = v40;
          *(v7 + 20) = v41;
          *(v7 + 24) = v27;
          *(v7 + 32) = v28;
          v7 += 48;
        }

        a1[1] = v7;
        ++v10;
      }

      while (v6 != v10);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v19, &v43, v48, 16);
      v6 = v37;
    }

    while (v37);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2623777AC(void *a1, int a2, int a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = a3 ^ a2;
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a3 ^ a2;
      if (*&v3 <= v4)
      {
        v6 = v4 % *&v3;
      }
    }

    else
    {
      v6 = (*&v3 - 1) & v4;
    }

    v7 = *(*a1 + 8 * v6);
    if (v7)
    {
      v8 = *v7;
      if (v8)
      {
        result = 1;
        do
        {
          v10 = v8[1];
          if (v10 == v4)
          {
            if (*(v8 + 4) == a2 && *(v8 + 5) == a3)
            {
              return result;
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v10 >= *&v3)
              {
                v10 %= *&v3;
              }
            }

            else
            {
              v10 &= *&v3 - 1;
            }

            if (v10 != v6)
            {
              return 0;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }

  return 0;
}

uint64_t *sub_262377868(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ v2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 3;
}

uint64_t *sub_262377A9C(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ v2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 3;
}

void sub_262377EB0(uint64_t a1, const char *a2, int a3, double a4)
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 256), a2, a2);
  v8 = 0;
  v32 = v5;
  do
  {
    objc_msgSend_quad(v5, v6, v7);
    DWORD2(src) = v9;
    DWORD2(v35) = v10;
    DWORD2(v36) = v11;
    *&src = v12;
    *&v35 = v13;
    DWORD2(v37) = v14;
    *&v36 = v15;
    *&v37 = v16;
    v33[v8] = *(&src + v8 * 16);
    ++v8;
    v5 = v32;
  }

  while (v8 != 4);
  objc_msgSend_quad(v32, v6, v7);
  if (a3)
  {
    v29 = v20;
    objc_msgSend_quad(v32, v17, v18);
    *&v21 = a4;
    *(&v21 + 1) = vextq_s8(v29, v29, 8uLL).u64[0];
    v23 = vextq_s8(v22, v22, 8uLL).u64[0];
    *&v24 = a4;
    *(&v24 + 1) = v23;
    v25 = v33[0];
    v26 = v33[3];
  }

  else
  {
    v30 = v19;
    objc_msgSend_quad(v32, v17, v18);
    *&v26 = a4;
    *&v25 = a4;
    *(&v25 + 1) = vextq_s8(v30, v30, 8uLL).u64[0];
    *(&v26 + 1) = vextq_s8(v27, v27, 8uLL).u64[0];
    v21 = v33[1];
    v24 = v33[2];
  }

  src = v25;
  v35 = v21;
  v36 = v24;
  v37 = v26;
  v28 = v32;
  if (v32)
  {
    objc_copyStruct(v32 + 272, &src, 64, 1, 0);
    v28 = v32;
  }
}