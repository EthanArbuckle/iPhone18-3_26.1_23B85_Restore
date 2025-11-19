void sub_26224B6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a60)
  {
    operator delete(a60);
  }

  if (a63)
  {
    operator delete(a63);
  }

  a63 = (v63 - 248);
  sub_2621C5004(&a63);
  *(v63 - 248) = v63 - 224;
  sub_2621C5004((v63 - 248));

  _Unwind_Resume(a1);
}

void sub_26224B9B0(uint64_t *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        sub_2621C5224(v13);
        sub_2622464F4(v13, v9);
        sub_26224663C(a1, v13, v10);
        sub_2621C50C4(v13);
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v11, &v14, v18, 16);
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_26224BAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2621C5004(&a9);

  _Unwind_Resume(a1);
}

void *sub_26224BB18(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x71C71C71C71C71DLL)
    {
      sub_262247B0C(a2);
    }

    sub_2621CBEB0();
  }

  return result;
}

void sub_26224BBD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26224BBEC(void **a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v27, v31, 16);
  if (v8)
  {
    v9 = 0;
    v10 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        objc_msgSend_quad(v12, v6, v7, *&v26, v27);
        v26 = v13;
        objc_msgSend_quad(v12, v14, v15);
        v17 = vzip2q_s32(v26, v16);
        v18 = a1[2];
        if (v9 >= v18)
        {
          v26 = v17;
          v19 = *a1;
          v20 = v9 - *a1;
          v21 = (v20 >> 3) + 1;
          if (v21 >> 61)
          {
            sub_2621CBEB0();
          }

          v22 = v18 - v19;
          if (v22 >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            sub_2621CBEC8(v23);
          }

          v24 = (8 * (v20 >> 3));
          *v24 = v17.i64[0];
          v9 = (v24 + 1);
          memcpy(0, v19, v20);
          *a1 = 0;
          a1[2] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v9 = v17.i64[0];
          v9 += 8;
        }

        a1[1] = v9;
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v27, v31, 16);
    }

    while (v8);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_26224BDBC(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_26224BDFC(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_count(*(a1 + 32), a2, a3);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, i);
      if (v7)
      {
        v7[105] = 2;
      }

      result = objc_msgSend_count(*(a1 + 32), v8, v9);
    }
  }

  return result;
}

void sub_26224BE68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a3;
  sub_262217160(v4);
}

void sub_26224C3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  v51 = *v46;
  if (*v46)
  {
    *(v46 + 8) = v51;
    operator delete(v51);
  }

  if (v47)
  {
    *(v49 - 184) = v47;
    operator delete(v47);
  }

  sub_26224C4F4(&a22);
  sub_262216FC4(&a46);

  _Unwind_Resume(a1);
}

void **sub_26224C4F4(void **a1)
{
  sub_262217048(a1[21]);
  sub_2622170A4(a1[16]);
  sub_2622170A4(a1[12]);
  sub_262217048(a1[6]);
  return a1;
}

void sub_26224C550(uint64_t a1)
{
  sub_26224C588(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_26224C588(uint64_t a1)
{
  *a1 = &unk_2874EE580;
  v4 = (a1 + 912);
  sub_2621C5004(&v4);
  v4 = (a1 + 792);
  sub_2621C512C(&v4);
  v4 = (a1 + 768);
  sub_26224C618(&v4);
  sub_2621C4F2C(a1 + 48);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_26224C618(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 40;
      v7 = v4 - 40;
      do
      {
        (**v7)(v7);
        v6 -= 40;
        v8 = v7 == v2;
        v7 -= 40;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_26224C6DC(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v13 = a4;
  v365 = a5;
  v366 = a7;
  v14 = 0;
  memset(v392, 0, sizeof(v392));
  v15 = 48;
  if (v13)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = 0; ; i = v13[14])
  {
    v17 = i;
    v20 = objc_msgSend_count(v17, v18, v19);

    if (v14 >= v20)
    {
      break;
    }

    *v402 = *(v13[10] + v15);
    sub_2621D9F60(v392, v402);
    ++v14;
    v15 += 64;
    if (!v13)
    {
      goto LABEL_4;
    }

LABEL_5:
    ;
  }

  if (v13)
  {
    v21 = v13[4];
    v22 = (v13[5] - v21) >> 4;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  memset(v391, 0, sizeof(v391));
  sub_2621DDA38(v391, v21, v21 + 16 * v22, v22);
  sub_26224EE08(a1, a2, a3, v365, v392, a6, v366);
  v23 = *(a1 + 56);
  v385 = (a1 + 56);
  v24 = *(a1 + 64);
  p_src = 0;
  v413 = 0;
  v414 = 0;
  v25 = a2[1];
  LODWORD(v399[0]) = 0;
  v367 = a2 + 1;
  v26 = a2[2];
  v376 = v13;
  v387 = a1;
  if (v26 == v25)
  {
    goto LABEL_115;
  }

  v27 = 0;
  v378 = 0x2E8BA2E8BA2E8BA3 * ((v24 - v23) >> 4);
  v28 = 20.0;
  v377 = a2;
  do
  {
    v29 = v25 + 176 * v27;
    if (*(v29 + 112) != 1)
    {
      goto LABEL_110;
    }

    v30 = *(v29 + 16);
    *__p = v30;
    if (v378 >= 1)
    {
      v31 = 0;
      v32 = __p[0];
      v33 = __p[1];
      *&v30 = vsub_f32(__p[0], __p[1]);
      *&v30 = vmul_f32(*&v30, *&v30);
      v370 = v30;
      v34 = -1;
      v373 = sqrtf(vaddv_f32(*&v30));
      v35 = fmaxf(v373, 0.000001);
      v36 = 16;
      v37 = -1;
      v38 = 0xFFFFFFFFLL;
      v39 = -1;
      do
      {
        *v402 = *(*v385 + v36);
        *&v40 = sub_2621C92AC(__p, v402, 0);
        if (*&v40 > v28 && *&v40 < 160.0)
        {
          if (v39 == -1)
          {
            if (sub_2621DC76C(v32, v402[0], v402[1], 0.00001) >= 0.1)
            {
              v39 = -1;
            }

            else
            {
              v39 = v31;
            }
          }

          if (v34 == -1)
          {
            if (sub_2621DC76C(v33, v402[0], v402[1], 0.00001) >= 0.1)
            {
              v34 = -1;
            }

            else
            {
              v34 = v31;
            }
          }
        }

        else
        {
          v42 = v402[0];
          v43 = v402[1];
          sub_2621DC2A8();
          *&v40 = vsub_f32(*&v40, v44);
          *&v40 = sqrtf(vaddv_f32(vmul_f32(*&v40, *&v40))) / v35;
          v45 = vsub_f32(v43, v42);
          v46 = vaddv_f32(vmul_f32(vsub_f32(v32, v42), v45));
          v47 = vaddv_f32(vmul_f32(v45, v45));
          if (v47 < 0.000001)
          {
            v47 = 0.000001;
          }

          v48 = vsub_f32(vmla_n_f32(v42, v45, v46 / v47), v32);
          v49 = sqrtf(vaddv_f32(vmul_f32(v48, v48)));
          v50 = vsub_f32(vmla_n_f32(v42, v45, vaddv_f32(vmul_f32(vsub_f32(v33, v42), v45)) / v47), v33);
          v51 = sqrtf(vaddv_f32(vmul_f32(v50, v50)));
          if (v49 < v51)
          {
            v49 = v51;
          }

          if (v38 == 0xFFFFFFFFLL && *&v40 > 0.9 && v49 < 0.3)
          {
            v38 = v31;
          }

          else
          {
            v52 = *&v40 > 0.8 && v37 == -1;
            v53 = v52;
            v55 = v49 > 0.3 && v49 < 0.9;
            if ((v53 & v55) != 0)
            {
              v37 = v31;
            }
          }
        }

        ++v31;
        v36 += 176;
      }

      while ((v378 & 0x7FFFFFFF) != v31);
      v13 = v376;
      if (v37 != -1)
      {
        if (v39 != -1 && v34 != -1)
        {
          v56 = *v385 + 176 * v39;
          v57 = *(v56 + 16);
          v58 = *(v56 + 24);
          v59 = *v385 + 176 * v34;
          v60 = *(v59 + 16);
          v61 = *(v59 + 24);
          sub_2621DC2A8();
          v64 = vsub_f32(v62, v63);
          v65 = vmul_f32(v64, v64);
          v66 = vadd_f32(v65, vdup_lane_s32(v65, 1));
          v67 = vsub_f32(v57, v58);
          v68 = vmul_f32(v67, v67);
          v368 = vadd_f32(v68, vdup_lane_s32(v68, 1));
          v369 = v66;
          sub_2621DC2A8();
          v71 = vsub_f32(v69, v70);
          v72 = vmul_f32(v71, v71);
          v73 = vsub_f32(v60, v61);
          v28 = 20.0;
          v74 = vmul_f32(v73, v73);
          v75 = vdiv_f32(vsqrt_f32(vzip1_s32(v369, vadd_f32(v72, vdup_lane_s32(v72, 1)))), vmaxnm_f32(vsqrt_f32(vzip1_s32(v368, vadd_f32(v74, vdup_lane_s32(v74, 1)))), vdup_n_s32(0x358637BDu)));
          if (v75.f32[0] < v75.f32[1])
          {
            v75.f32[0] = v75.f32[1];
          }

          if (v75.f32[0] < 0.8 && v373 < 0.9)
          {
            goto LABEL_109;
          }

          sub_2621C7CD0(&p_src, v399);
          sub_262246794(v402, *v385 + 176 * v37, v76);
          *&v79 = *(&v403 + 1);
          *&v78 = v403;
          *&v81 = vsub_f32(*&v403, *(&v403 + 8));
          *&v81 = vmul_f32(*&v81, *&v81);
          *(&v80 + 1) = *(&v370 + 1);
          *&v81 = vsqrt_f32(vadd_f32(vzip1_s32(*&v81, *&v370), vzip2_s32(*&v81, *&v370)));
          if ((vcgt_f32(*&v81, vdup_lane_s32(*&v81, 1)).u8[0] & 1) == 0)
          {
            goto LABEL_108;
          }

          v82 = vsub_f32(*(&v403 + 8), *&v403);
          v83 = vaddv_f32(vmul_f32(vsub_f32(v32, *&v403), v82));
          v84 = vaddv_f32(vmul_f32(v82, v82));
          if (v84 < 0.000001)
          {
            v84 = 0.000001;
          }

          *&v81 = vmla_n_f32(*&v403, v82, v83 / v84);
          *&v77 = vmla_n_f32(*&v403, v82, vaddv_f32(vmul_f32(vsub_f32(v33, *&v403), v82)) / v84);
          v85 = vsub_f32(*&v81, *&v403);
          v86 = vmul_f32(v85, v85);
          v87 = vsub_f32(*&v77, *&v403);
          v88 = vmul_f32(v87, v87);
          v89 = vsqrt_f32(vadd_f32(vzip1_s32(v86, v88), vzip2_s32(v86, v88)));
          if (v89.f32[0] >= v89.f32[1])
          {
            if (v89.f32[1] < 0.2)
            {
              v127 = *v385 + 176 * v37;
              v78 = v81;
              DWORD2(v78) = *(v127 + 64);
              v128 = v79;
              DWORD2(v128) = *(v127 + 68);
              *(v127 + 16) = v81;
              *(v127 + 24) = v79;
              DWORD2(v81) = DWORD2(v128);
              DWORD2(v79) = DWORD2(v78);
              *(v127 + 32) = v78;
              *(v127 + 48) = v128;
              v92 = *(v127 + 8);
              src = v81;
              v394 = v128;
              v395 = v79;
              v396 = v78;
              if (!v92)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            }

            v134 = vsub_f32(*&v81, *(&v403 + 8));
            if (sqrtf(vaddv_f32(vmul_f32(v134, v134))) < 0.2)
            {
              v135 = *v385 + 176 * v37;
              v79 = v77;
              DWORD2(v79) = *(v135 + 64);
              v136 = v78;
              DWORD2(v136) = *(v135 + 68);
              *(v135 + 16) = v77;
              *(v135 + 24) = v78;
              DWORD2(v77) = DWORD2(v136);
              DWORD2(v78) = DWORD2(v79);
              *(v135 + 32) = v79;
              *(v135 + 48) = v136;
              v92 = *(v135 + 8);
              src = v77;
              v394 = v136;
              v395 = v78;
              v396 = v79;
              if (!v92)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            }
          }

          else
          {
            if (v89.f32[0] < 0.2)
            {
              v90 = *v385 + 176 * v37;
              v78 = v77;
              DWORD2(v78) = *(v90 + 64);
              v91 = v79;
              DWORD2(v91) = *(v90 + 68);
              *(v90 + 16) = v77;
              *(v90 + 24) = v79;
              DWORD2(v77) = DWORD2(v91);
              DWORD2(v79) = DWORD2(v78);
              *(v90 + 32) = v78;
              *(v90 + 48) = v91;
              v92 = *(v90 + 8);
              src = v77;
              v394 = v91;
              v395 = v79;
              v396 = v78;
              if (!v92)
              {
                goto LABEL_95;
              }

LABEL_94:
              objc_copyStruct((v92 + 272), &src, 64, 1, 0);
LABEL_95:
              v137 = vsub_f32(v33, v32);
              *&v79 = -*&v137.i32[1];
              v138 = vzip1_s32(*&v79, v137);
              v139 = 1;
              do
              {
                v140 = v139;
                v141 = *v385 + 176 * v39;
                *&v78 = *(v141 + 16);
                v142 = *(v141 + 24);
                v143 = vsub_f32(v142, *&v78);
                v144 = vmul_f32(v143, v138);
                if (vaddv_f32(v144) != 0.0)
                {
                  v145 = vsub_f32(*&v78, *&v403);
                  v146 = vsub_f32(*&v78, *(&v403 + 8));
                  v147 = fminf(sqrtf(vaddv_f32(vmul_f32(v145, v145))), sqrtf(vaddv_f32(vmul_f32(v146, v146))));
                  if (v147 < 0.2 || (v148 = vsub_f32(v142, *&v403), sqrtf(vaddv_f32(vmul_f32(v148, v148))) < 0.2) || (v149 = vsub_f32(v142, *(&v403 + 8)), sqrtf(vaddv_f32(vmul_f32(v149, v149))) < 0.2))
                  {
                    v150 = vmul_f32(vsub_f32(v32, *&v78), v138);
                    LODWORD(v151) = vdiv_f32(vadd_f32(v150, vdup_lane_s32(v150, 1)), vadd_f32(v144, vdup_lane_s32(v144, 1))).u32[0];
                    v152 = v147 >= 0.2 ? 0 : -1;
                    *&v80 = vmla_n_f32(*&v78, v143, v151);
                    *&v78 = vbsl_s8(vdup_n_s32(v152), v142, *&v78);
                    v153 = *v385 + 176 * v39;
                    v154 = v80;
                    DWORD2(v154) = *(v153 + 64);
                    v155 = v78;
                    DWORD2(v155) = *(v153 + 68);
                    *(v153 + 16) = v80;
                    *(v153 + 24) = v78;
                    DWORD2(v80) = DWORD2(v155);
                    DWORD2(v78) = DWORD2(v154);
                    *(v153 + 32) = v154;
                    *(v153 + 48) = v155;
                    v156 = *(v153 + 8);
                    src = v80;
                    v394 = v155;
                    v395 = v78;
                    v396 = v154;
                    if (v156)
                    {
                      objc_copyStruct((v156 + 272), &src, 64, 1, 0);
                    }
                  }
                }

                v139 = 0;
                v39 = v34;
              }

              while ((v140 & 1) != 0);
              v157 = vsub_f32(*&v403, *(&v403 + 8));
              if (sqrtf(vaddv_f32(vmul_f32(v157, v157))) < 0.2)
              {
                LODWORD(v408) = 2;
              }

              goto LABEL_108;
            }

            v131 = vsub_f32(*&v77, *(&v403 + 8));
            if (sqrtf(vaddv_f32(vmul_f32(v131, v131))) < 0.2)
            {
              v132 = *v385 + 176 * v37;
              v79 = v81;
              DWORD2(v79) = *(v132 + 64);
              v133 = v78;
              DWORD2(v133) = *(v132 + 68);
              *(v132 + 16) = v81;
              *(v132 + 24) = v78;
              DWORD2(v81) = DWORD2(v133);
              DWORD2(v78) = DWORD2(v79);
              *(v132 + 32) = v79;
              *(v132 + 48) = v133;
              v92 = *(v132 + 8);
              src = v81;
              v394 = v133;
              v395 = v78;
              v396 = v79;
              if (!v92)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            }
          }

LABEL_108:
          sub_2621C50C4(v402);
          goto LABEL_109;
        }

        v93 = *v385;
        v94 = *v385 + 176 * v37;
        v96 = *(v94 + 16);
        v97 = *(v94 + 24);
        v95 = (v94 + 16);
        v98 = *(*v367 + 176 * v27 + 16);
        v99 = vsub_f32(v97, v96);
        v100 = vaddv_f32(vmul_f32(vsub_f32(v98, v96), v99));
        v101 = vaddv_f32(vmul_f32(v99, v99));
        if (v101 < 0.000001)
        {
          v101 = 0.000001;
        }

        v102 = vsub_f32(vmla_n_f32(v96, v99, v100 / v101), v98);
        v103 = sqrtf(vaddv_f32(vmul_f32(v102, v102)));
        v104 = v39;
        if (v39 < 0 && (v104 = v34, v34 < 0))
        {
          v106 = v103 + 0.4;
        }

        else
        {
          v105 = vsub_f32(*(v93 + 176 * v104 + 16), *(v93 + 176 * v104 + 24));
          v106 = sqrtf(vaddv_f32(vmul_f32(v105, v105)));
        }

        if (v106 < (v103 + 0.2))
        {
          goto LABEL_109;
        }

        v107 = *v367 + 176 * v27;
        *(v107 + 88) = 2;
        if ((v38 & 0x80000000) == 0)
        {
          *(v93 + 176 * v38 + 88) = 2;
        }

        if (v39 <= v34)
        {
          v39 = v34;
        }

        if (v39 < 0)
        {
          goto LABEL_88;
        }

        v108 = v93 + 176 * v39;
        *&v40 = *(v108 + 16);
        v109 = *(v107 + 16);
        v110 = *(v107 + 24);
        v374 = v40;
        v111 = sub_2621DC76C(*&v40, v109, v110, 0.00001);
        *&v112 = *(v108 + 24);
        a1 = v387;
        v371 = v112;
        *&v113 = sub_2621DC76C(*&v112, v109, v110, 0.00001);
        if (*&v113 >= v111)
        {
          *&v113 = v111;
        }

        if (*&v113 >= 0.1)
        {
          goto LABEL_88;
        }

        v116 = v371;
        v115 = v374;
        v117 = vsub_f32(*&v371, *&v374);
        v118 = *v95;
        v119 = vsub_f32(v95[1], *v95);
        *v114.i32 = -*&v117.i32[1];
        v120 = vzip1_s32(v114, v117);
        v121 = vmul_f32(v119, v120);
        if (vaddv_f32(v121) == 0.0)
        {
          sub_2622386B8();
        }

        v122 = vmul_f32(vsub_f32(*&v374, v118), v120);
        *&v113 = vmla_n_f32(v118, v119, vdiv_f32(vadd_f32(v122, vdup_lane_s32(v122, 1)), vadd_f32(v121, vdup_lane_s32(v121, 1))).f32[0]);
        v123 = v93 + 176 * v39;
        *(v123 + 16) = v113;
        if (v111 >= 0.1)
        {
          v129 = v113;
          DWORD2(v129) = *(v123 + 64);
          v130 = v374;
          DWORD2(v130) = *(v123 + 68);
          *(v123 + 24) = v374;
          DWORD2(v113) = DWORD2(v130);
          DWORD2(v115) = DWORD2(v129);
          *(v123 + 32) = v129;
          *(v123 + 48) = v130;
          v126 = *(v123 + 8);
          *v402 = v113;
          v403 = v130;
          v404 = v115;
          *v405 = v129;
          if (v126)
          {
LABEL_87:
            objc_copyStruct((v126 + 272), v402, 64, 1, 0);
          }
        }

        else
        {
          v124 = v113;
          DWORD2(v124) = *(v123 + 64);
          v125 = v371;
          DWORD2(v125) = *(v123 + 68);
          DWORD2(v113) = DWORD2(v125);
          DWORD2(v116) = DWORD2(v124);
          *(v123 + 32) = v124;
          *(v123 + 48) = v125;
          v126 = *(v123 + 8);
          *v402 = v113;
          v403 = v125;
          v404 = v116;
          *v405 = v124;
          if (v126)
          {
            goto LABEL_87;
          }
        }

LABEL_88:
        sub_2621C7CD0(&p_src, v399);
      }
    }

LABEL_109:
    v25 = v377[1];
    v26 = v377[2];
LABEL_110:
    LODWORD(v399[0]) = ++v27;
  }

  while (0x2E8BA2E8BA2E8BA3 * ((v26 - v25) >> 4) > v27);
  v158 = p_src;
  if (v413 != p_src)
  {
    sub_262251928(v385);
    sub_262251928(v367);
  }

  if (v158)
  {
    operator delete(v158);
  }

LABEL_115:
  v159 = v366;
  v372 = v13;
  v382 = *v159[7];
  v160 = v159[1];
  v161 = v159[2];
  v375 = v159;
  memset(v399, 0, sizeof(v399));
  sub_26225172C(v399, v160, v161, (v161 - v160) >> 4);
  v162 = 0;
  v163 = 48;
  if (v13)
  {
    goto LABEL_119;
  }

LABEL_118:
  for (j = 0; ; j = v13[14])
  {
    v165 = j;
    v168 = objc_msgSend_count(v165, v166, v167);

    if (v162 >= v168)
    {
      break;
    }

    *v402 = *(v13[10] + v163);
    sub_2621D9F60(a1 + 8, v402);
    ++v162;
    v163 += 64;
    if (!v13)
    {
      goto LABEL_118;
    }

LABEL_119:
    ;
  }

  src = 0uLL;
  *&v394 = 0;
  p_src = 0;
  v413 = 0;
  v414 = 0;
  v398[0] = 0;
  v398[1] = 0;
  v397 = v398;
  v171 = *(a1 + 56);
  v170 = *(a1 + 64);
  if (v170 != v171)
  {
    v172 = 0;
    do
    {
      v173 = &v171[176 * v172];
      if (*(v173 + 76) == 1)
      {
        operator new();
      }

      sub_262246794(v402, v173, v169);
      sub_26224663C(&p_src, v402, v174);
      sub_2621C50C4(v402);
      ++v172;
      v171 = *(a1 + 56);
      v170 = *(a1 + 64);
    }

    while (v172 < 0x2E8BA2E8BA2E8BA3 * ((v170 - v171) >> 4));
  }

  v175 = src;
  if (*(&src + 1) != src)
  {
    v176 = 0;
    v177 = vdup_n_s32(0x3E4CCCCDu);
    while (1)
    {
      v178 = v175 + 24 * v176;
      v179 = *v178;
      if ((**v178 != 1 || v179[1] != 3) && (v179[2] != 1 || v179[3] != 3))
      {
LABEL_185:
        sub_262246794(v402, *v385 + 176 * *(4 * v176), v169);
        sub_26224663C(&p_src, v402, v233);
        sub_2621C50C4(v402);
        goto LABEL_186;
      }

      v180 = *(4 * v176);
      __p[0] = 0;
      __p[1] = 0;
      v401 = 0;
      sub_2622FF14C(__p, v179, *(v178 + 8), (*(v178 + 8) - v179) >> 3);
      v402[0] = 0;
      v402[1] = 0;
      *&v403 = 0;
      v181 = *(a1 + 56);
      if (*(a1 + 64) == v181)
      {
        v200 = 0;
      }

      else
      {
        v182 = 0;
        v183 = 0;
        v184 = &v181[22 * v180];
        v185 = v184 + 2;
        do
        {
          if (v180 != v183)
          {
            v186 = sub_2621C92AC(v184 + 2, &v181[v182 + 2], 0);
            if (v186 >= 30.0 && v186 <= 150.0)
            {
              v190 = v184[2];
              v189 = v184[3];
              v191 = vsub_f32(v189, v190);
              v192 = v181[v182 + 3];
              v193 = v181[v182 + 2];
              v194 = vsub_f32(v192, v193);
              *v187.i32 = -*&v191.i32[1];
              v195 = vzip1_s32(v187, v191);
              v196 = vmul_f32(v194, v195);
              if (vaddv_f32(v196) != 0.0)
              {
                v197 = vmul_f32(vsub_f32(v190, v193), v195);
                v198 = vmla_n_f32(v193, v194, vdiv_f32(vadd_f32(v197, vdup_lane_s32(v197, 1)), vadd_f32(v196, vdup_lane_s32(v196, 1))).f32[0]);
                v410 = v198;
                v411 = 1;
                if (vaddv_f32(vmul_f32(vsub_f32(v198, v193), vsub_f32(v198, v192))) <= 0.2 && vaddv_f32(vmul_f32(vsub_f32(v198, v190), vsub_f32(v198, v189))) <= 0.00001)
                {
                  sub_2621CBA84(v402, &v410);
                }
              }
            }
          }

          ++v183;
          v181 = *(a1 + 56);
          v199 = *(a1 + 64);
          v182 += 22;
        }

        while (0x2E8BA2E8BA2E8BA3 * ((v199 - v181) >> 4) > v183);
        v200 = v402[0];
        if (v402[1] != v402[0])
        {
          v201 = 0;
          v202 = v184[2];
          v409 = v184[3];
          v410 = v202;
          v203 = (v402[1] - v402[0]) >> 3;
          v204 = __p[0];
          v205 = &v410;
          v206 = 1;
          v207 = v199;
          do
          {
            v208 = v206;
            v209 = &v204[8 * v201];
            if (*v209 == 1 && *(v209 + 1) == 3)
            {
              v210 = v185[v201];
              v211 = *v200;
              v212 = vsub_f32(v210, *v200);
              v213 = vmul_f32(v212, v212);
              v213.f32[0] = sqrtf(vaddv_f32(v213));
              v214 = v200 + 1;
              v215 = v203 - 1;
              if (v203 >= 2)
              {
                do
                {
                  v216 = *v214++;
                  v217 = vsub_f32(v210, v216);
                  v218 = vmul_f32(v217, v217);
                  v218.f32[0] = sqrtf(vaddv_f32(v218));
                  v211 = vbsl_s8(vdup_lane_s32(vcgt_f32(v213, v218), 0), v216, v211);
                  if (v213.f32[0] > v218.f32[0])
                  {
                    v213.f32[0] = v218.f32[0];
                  }

                  --v215;
                }

                while (v215);
                v212 = vsub_f32(v210, v211);
                v213 = vmul_f32(v212, v212);
                v213.f32[0] = sqrtf(vaddv_f32(v213));
              }

              if (v213.f32[0] <= 0.2)
              {
                v219 = vmul_f32(vadd_f32(v210, v211), 0x3F0000003F000000);
              }

              else
              {
                v219 = vmla_f32(v211, v177, vdiv_f32(v212, vdup_lane_s32(v213, 0)));
              }

              v220 = v181;
              if (v207 != v181)
              {
                v221 = 0;
                v222 = vsub_f32(v219, *&v382);
                v212.f32[0] = -*&v222.i32[1];
                v223 = vzip1_s32(v212, v222);
                v224 = v181 + 3;
                v169 = v207;
                do
                {
                  if (v180 == v221)
                  {
                    v225 = 0x2E8BA2E8BA2E8BA3 * ((v169 - v181) >> 4);
                    v220 = v207;
                  }

                  else
                  {
                    v226 = v224[-1];
                    v227 = vsub_f32(*v224, v226);
                    v228 = vmul_f32(v227, v223);
                    v225 = 0x2E8BA2E8BA2E8BA3 * ((v199 - v181) >> 4);
                    v220 = v199;
                    v169 = v199;
                    if (vaddv_f32(v228) != 0.0)
                    {
                      v229 = vmul_f32(vsub_f32(*&v382, v226), v223);
                      v230 = vmla_n_f32(v226, v227, vdiv_f32(vadd_f32(v229, vdup_lane_s32(v229, 1)), vadd_f32(v228, vdup_lane_s32(v228, 1))).f32[0]);
                      v225 = 0x2E8BA2E8BA2E8BA3 * ((v199 - v181) >> 4);
                      v220 = v199;
                      v169 = v199;
                      if (vaddv_f32(vmul_f32(vsub_f32(v230, v226), vsub_f32(v230, *v224))) <= -0.001)
                      {
                        v225 = 0x2E8BA2E8BA2E8BA3 * ((v199 - v181) >> 4);
                        v220 = v199;
                        v169 = v199;
                        if (vaddv_f32(vmul_f32(vsub_f32(v230, *&v382), vsub_f32(v230, v219))) <= -0.001)
                        {
                          *v205 = v211;
                          goto LABEL_167;
                        }
                      }
                    }
                  }

                  ++v221;
                  v224 += 22;
                  v207 = v220;
                }

                while (v225 > v221);
              }
            }

            else
            {
LABEL_167:
              v220 = v207;
            }

            v206 = 0;
            v205 = &v409;
            v207 = v220;
            v201 = 1;
          }

          while ((v208 & 1) != 0);
          v231 = vsub_f32(v410, v409);
          v231.f32[0] = sqrtf(vaddv_f32(vmul_f32(v231, v231)));
          v232 = v231.f32[0] <= 0.2;
          if (v231.f32[0] > 0.2)
          {
            sub_2621CBF10(1uLL);
          }

          if (v200)
          {
            goto LABEL_180;
          }

          goto LABEL_181;
        }
      }

      v204 = __p[0];
      if (*__p[0] != 1 || *(__p[0] + 1) != 3 || *(__p[0] + 2) != 1)
      {
        v232 = 0;
        if (!v200)
        {
          goto LABEL_181;
        }

LABEL_180:
        v402[1] = v200;
        operator delete(v200);
        v204 = __p[0];
        goto LABEL_181;
      }

      v232 = *(__p[0] + 3) == 3;
      if (v200)
      {
        goto LABEL_180;
      }

LABEL_181:
      if (v204)
      {
        __p[1] = v204;
        operator delete(v204);
      }

      if (!v232)
      {
        goto LABEL_185;
      }

      v402[0] = (*v385 + 176 * *(4 * v176) + 128);
      *(sub_26226C7A4(&v397, v402[0]) + 14) = 0;
LABEL_186:
      ++v176;
      v175 = src;
      if (v176 >= 0xAAAAAAAAAAAAAAABLL * ((*(&src + 1) - src) >> 3))
      {
        v171 = *(a1 + 56);
        v170 = *(a1 + 64);
        break;
      }
    }
  }

  if (v170 != v171)
  {
    v234 = v170 - 176;
    v235 = v170 - 176;
    v236 = v170 - 176;
    do
    {
      v237 = *v236;
      v236 -= 176;
      (*v237)(v235);
      v234 -= 176;
      v52 = v235 == v171;
      v235 = v236;
    }

    while (!v52);
  }

  v238 = v387;
  *(v387 + 64) = v171;
  v239 = p_src;
  v240 = v413;
  while (v239 != v240)
  {
    sub_262246794(v402, v239, v169);
    sub_26224663C(v385, v402, v241);
    sub_2621C50C4(v402);
    v239 += 22;
  }

  v402[0] = &p_src;
  sub_2621C5004(v402);
  v402[0] = &src;
  sub_2621E1CB0(v402);
  v242 = 0x2E8BA2E8BA2E8BA3 * ((*(v387 + 88) - *(v387 + 80)) >> 4);
  LODWORD(src) = 1;
  sub_2621DE86C(v402, v242);
  v244 = v402[0];
  v386 = *(v387 + 80);
  v245 = *(v387 + 88) - v386;
  if (v245)
  {
    v383 = (v387 + 80);
    v246 = 0;
    v247 = 0;
    v248 = 0x2E8BA2E8BA2E8BA3 * (v245 >> 4);
    v249 = v397;
    if (v248 <= 1)
    {
      v250 = 1;
    }

    else
    {
      v250 = v248;
    }

    do
    {
      while (v249 != v398)
      {
        v251 = v386 + 176 * v246;
        v252 = (v251 + 152);
        v253 = *(v251 + 175);
        v254 = v253;
        v255 = *(v251 + 160);
        if ((v253 & 0x80u) == 0)
        {
          v256 = v253;
        }

        else
        {
          v256 = v255;
        }

        v257 = v249;
        while (1)
        {
          v258 = *(v257 + 55);
          v259 = v258;
          if (v258 < 0)
          {
            v258 = v257[5];
          }

          if (v256 == v258)
          {
            v260 = v254 >= 0 ? v252 : *v252;
            v261 = v259 >= 0 ? v257 + 4 : v257[4];
            if (!memcmp(v260, v261, v256))
            {
              break;
            }
          }

          v262 = v257[1];
          if (v262)
          {
            do
            {
              v263 = v262;
              v262 = *v262;
            }

            while (v262);
          }

          else
          {
            do
            {
              v263 = v257[2];
              v52 = *v263 == v257;
              v257 = v263;
            }

            while (!v52);
          }

          v257 = v263;
          if (v263 == v398)
          {
            goto LABEL_220;
          }
        }

        v244[v246++] = 0;
        v247 = 1;
        if (v246 == v250)
        {
          goto LABEL_225;
        }
      }

LABEL_220:
      ++v246;
    }

    while (v246 != v250);
    if ((v247 & 1) == 0)
    {
      goto LABEL_245;
    }

LABEL_225:
    src = 0uLL;
    *&v394 = 0;
    v264 = v402[1];
    if (v402[1] != v244)
    {
      v265 = 0;
      v266 = 0;
      do
      {
        if (v244[v266])
        {
          sub_26224663C(&src, *v383 + v265, v243);
          v244 = v402[0];
          v264 = v402[1];
        }

        ++v266;
        v265 += 176;
      }

      while (v266 < (v264 - v244) >> 2);
    }

    if (v383 != &src)
    {
      v267 = *(&src + 1);
      v268 = *(&src + 1) - src;
      v269 = *(v387 + 80);
      if ((*(v387 + 96) - v269) < *(&src + 1) - src)
      {
        v270 = 0x2E8BA2E8BA2E8BA3 * (v268 >> 4);
        sub_26224789C(v383);
        if (v270 <= 0x1745D1745D1745DLL)
        {
          v271 = 0x5D1745D1745D1746 * ((*(v387 + 96) - *(v387 + 80)) >> 4);
          if (v271 <= v270)
          {
            v271 = v270;
          }

          if ((0x2E8BA2E8BA2E8BA3 * ((*(v387 + 96) - *(v387 + 80)) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
          {
            v272 = 0x1745D1745D1745DLL;
          }

          else
          {
            v272 = v271;
          }

          if (v272 <= 0x1745D1745D1745DLL)
          {
            sub_2622469FC(v272);
          }
        }

        sub_2621CBEB0();
      }

      v273 = *(v387 + 88) - v269;
      if (v273 >= v268)
      {
        sub_2622517A0(src, *(&src + 1), v269);
        v275 = v359;
        v360 = *(v387 + 88);
        if (v360 != v359)
        {
          v361 = v360 - 176;
          v362 = (v360 - 176);
          v363 = (v360 - 176);
          do
          {
            v364 = *v363;
            v363 -= 22;
            (*v364)(v362);
            v361 -= 176;
            v52 = v362 == v275;
            v362 = v363;
          }

          while (!v52);
          v238 = v387;
        }
      }

      else
      {
        v274 = sub_2622517A0(src, src + v273, v269);
        v275 = sub_26225185C(v274, v267, *(v387 + 88));
      }

      *(v238 + 88) = v275;
    }

    p_src = &src;
    sub_2621C5004(&p_src);
    v244 = v402[0];
  }

LABEL_245:
  if (v244)
  {
    v402[1] = v244;
    operator delete(v244);
  }

  sub_2621CC7B4(v398[0]);
  if (v399[0])
  {
    operator delete(v399[0]);
  }

  v276 = *(v238 + 800);
  v277 = *(v238 + 792);
  while (v276 != v277)
  {
    v278 = *(v276 - 8);
    v276 -= 8;
  }

  *(v238 + 800) = v277;
  if ((*(v238 + 32) & 1) == 0)
  {
    v279 = *(v238 + 768);
    for (k = *(v238 + 776); v279 != k; v279 += 320)
    {
      if (*(v238 + 876))
      {
        v280 = *(v238 + 880);
        v281 = *(v279 + 224);
      }

      else
      {
        v281 = *(v279 + 224);
        v280 = (*(v238 + 884) * 360.0) / (v281 * 6.2832);
      }

      v282 = *(v279 + 228);
      v283 = __sincosf_stret((v282 / 180.0) * 3.1416);
      *&v284 = v281 * v283.__cosval;
      *(&v284 + 1) = v281 * v283.__sinval;
      v285 = *(v279 + 208);
      v285.i32[2] = 0;
      v388 = v285;
      v384 = vaddq_f32(v285, v284);
      v286 = *(v279 + 232);
      v287 = __sincosf_stret((v286 / 180.0) * 3.1416);
      *&v288 = v281 * v287.__cosval;
      *(&v288 + 1) = v281 * v287.__sinval;
      v381 = vaddq_f32(v388, v288);
      if (*(v279 + 240) == 1 && ((v289 = vsubq_f32(v384, *(v279 + 256)), v290 = sqrtf(vaddv_f32(*&vmulq_f32(v289, v289))), v291 = *(v279 + 312), v292 = *(v238 + 888), v291 != 1) || v290 >= v292))
      {
        v295 = vsubq_f32(v381, *(v279 + 272));
        v296 = sqrtf(vaddv_f32(*&vmulq_f32(v295, v295)));
        v298 = v296 >= v292 || v291 != -1;
        v293 = v298 && v290 < v296;
        if (v293)
        {
          v294 = 1;
        }

        else
        {
          v294 = -1;
        }
      }

      else
      {
        LOBYTE(v293) = 1;
        v294 = 1;
      }

      v380 = v294;
      src = 0uLL;
      *&v394 = 0;
      v402[0] = 0;
      v402[1] = 0;
      *&v403 = 0;
      v299 = v280 * 0.5;
      v300 = (v280 * 10.0);
      if (v293)
      {
        v301 = (v282 * 10.0);
        v302 = ((v286 - v299) * 10.0);
        while (v301 < v302)
        {
          *&p_src = v301 / 10.0;
          sub_2621C8F2C(v402, &p_src);
          v301 += v300;
        }

        sub_2621C8F2C(v402, (v279 + 232));
      }

      else
      {
        v303 = (v286 * 10.0);
        v304 = ((v299 + v282) * 10.0);
        while (v303 > v304)
        {
          *&p_src = v303 / 10.0;
          sub_2621C8F2C(v402, &p_src);
          v303 -= v300;
        }

        sub_2621C8F2C(v402, (v279 + 228));
      }

      v305 = v402[0];
      v238 = v387;
      if (v402[1] != v402[0])
      {
        v306 = 0;
        v307 = 0;
        if (((v402[1] - v402[0]) >> 2) <= 1)
        {
          v308 = 1;
        }

        else
        {
          v308 = (v402[1] - v402[0]) >> 2;
        }

        do
        {
          v309 = *(v279 + 224);
          v310 = __sincosf_stret((*(v402[0] + v307) / 180.0) * 3.1416);
          *&v311 = v309 * v310.__cosval;
          *(&v311 + 1) = v309 * v310.__sinval;
          v312 = *(v279 + 208);
          v312.i32[2] = 0;
          v313 = vaddq_f32(v312, v311);
          v314 = v306;
          v315 = v306 >> 4;
          if (((v306 >> 4) + 1) >> 60)
          {
            sub_2621CBEB0();
          }

          if (v306 >> 4 != -1)
          {
            sub_2621CBF10((v306 >> 4) + 1);
          }

          *(16 * v315) = v313;
          v306 = 16 * v315 + 16;
          memcpy(0, 0, v314);
          ++v307;
        }

        while (v308 != v307);
        if (v306 >= 0x11)
        {
          operator new();
        }

        v305 = v402[0];
      }

      if (v305)
      {
        operator delete(v305);
      }

      v316 = *(v279 + 288);
      v317 = *(v279 + 296);
      if (v317 != v316 && *(&src + 1) != src)
      {
        do
        {
          v320 = *v316;
          p_src = 0;
          v413 = 0;
          v414 = 0;
          v322 = *(&src + 1);
          v321 = src;
          if (src == *(&src + 1))
          {
            v346 = 0;
            v339 = 0;
            v342 = 0;
          }

          else
          {
            do
            {
              v323 = *v321;
              objc_msgSend_quad(v323, v324, v325);
              v389 = v326;
              objc_msgSend_quad(v323, v327, v328);
              *&v329 = v389;
              *(&v329 + 1) = v330;
              *__p = v329;
              objc_msgSend_quad(v320, v331, v332);
              v390 = v333;
              objc_msgSend_quad(v320, v334, v335);
              *&v336 = v390;
              *(&v336 + 1) = v337;
              *v399 = v336;
              sub_26229DAC8(v402, __p, v399, (v238 + 464));
              if (*(&v404 + 1) <= *(v238 + 896) && ((v338 = *(v238 + 900), *(&v404 + 2) <= v338) || *(&v404 + 2) >= (180.0 - v338)))
              {
                sub_2621C8F2C(&p_src, &v403 + 2);
              }

              else
              {
                LODWORD(v397) = 0;
                sub_2621C8F2C(&p_src, &v397);
              }

              if (v407)
              {
                v408 = v407;
                operator delete(v407);
              }

              if (v405[1])
              {
                v406 = v405[1];
                operator delete(v405[1]);
              }

              ++v321;
            }

            while (v321 != v322);
            v339 = p_src;
            if (p_src == v413 || (v340 = p_src + 1, (p_src + 4) == v413))
            {
              v346 = p_src;
              v342 = p_src;
            }

            else
            {
              v341 = *p_src;
              v342 = p_src;
              v343 = p_src + 1;
              do
              {
                v344 = *v343++;
                v345 = v344;
                if (v341 < v344)
                {
                  v341 = v345;
                  v342 = v340;
                }

                v340 = v343;
              }

              while (v343 != v413);
              v346 = p_src;
            }
          }

          v347 = v342 - v346;
          if (*(v339 + v342 - v346) >= *(v387 + 892))
          {
            v348 = objc_msgSend_identifier(v320, v318, v319);
            v349 = v347 >> 2;
            sub_2622C533C(*(src + 8 * v349), v348);

            v352 = objc_msgSend_parentIdentifier(v320, v350, v351);
            sub_2622C534C(*(src + 8 * v349), v352);
          }

          operator delete(v339);

          ++v316;
          v238 = v387;
        }

        while (v316 != v317);
        v316 = *(v279 + 288);
        v317 = *(v279 + 296);
      }

      while (v317 != v316)
      {
        v353 = *--v317;
      }

      *(v279 + 296) = v316;
      v355 = *(&src + 1);
      for (m = src; m != v355; ++m)
      {
        sub_262251650((v279 + 288), m);
      }

      *(v279 + 256) = v384;
      *(v279 + 272) = v381;
      *(v279 + 240) = 1;
      *(v279 + 312) = v380;
      v402[0] = &src;
      sub_2621C512C(v402);
      v356 = *(v279 + 288);
      v357 = *(v279 + 296);
      while (v356 != v357)
      {
        v358 = *v356;
        v402[0] = v358;
        sub_262251650((v238 + 792), v402);

        ++v356;
      }
    }
  }

  if (v391[0])
  {
    operator delete(v391[0]);
  }

  if (v392[0])
  {
    operator delete(v392[0]);
  }
}

void sub_26224EAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char *a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60)
{
  *(v61 + 88) = v60;
  *(v62 - 176) = &a41;
  sub_2621C5004((v62 - 176));
  if (__p)
  {
    a60 = __p;
    operator delete(__p);
  }

  sub_2621CC7B4(a50);
  if (a52)
  {
    operator delete(a52);
  }

  if (a35)
  {
    operator delete(a35);
  }

  if (a38)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void sub_26224EE08(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v424[2] = *MEMORY[0x277D85DE8];
  v361 = a4;
  v10 = a7;
  v360 = a6;
  if (*(a6 + 137))
  {
    goto LABEL_515;
  }

  v353 = v10;
  if (v10)
  {
    v13 = v10[1];
    v14 = (v10[2] - v13) >> 4;
    v392 = v13;
    v393 = v14;
    v15 = v10[4];
    v16 = (v10[5] - v15) >> 4;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v392 = 0;
    v393 = 0;
  }

  v391[0] = v15;
  v391[1] = v16;
  v17 = a2[4];
  v18 = a2[5];
  v373 = v14;
  if (v17 != v18)
  {
    do
    {
      v19 = sub_2621C5224(v412);
      v20 = *(v17 + 64);
      v21 = *(v17 + 68);
      objc_msgSend_confidence(*(v17 + 8), v22, v23, v19);
      v25 = v24;
      v26 = objc_opt_new();
      sub_26225C650(v412, (v17 + 16), v26, 0, v20, v21, v25);

      sub_26224663C(a2 + 1, v412, v27);
      sub_2621C50C4(v412);
      v17 += 176;
    }

    while (v17 != v18);
    v17 = a2[4];
    v18 = a2[5];
  }

  for (; v17 != v18; v17 += 176)
  {
    v29 = a2[1];
    v28 = a2[2];
    if (v29 != v28)
    {
      v30 = (v17 + 16);
      do
      {
        v31 = vsub_f32(v29[2], v29[3]);
        if (sqrtf(vaddv_f32(vmul_f32(v31, v31))) < 0.5)
        {
          sub_2621DCD34(__p, (v17 + 16), v29 + 2);
          v32 = 0;
          v33 = __p[0];
          v34 = *__p[0];
          for (i = 1; i != 4; ++i)
          {
            if (*(__p[0] + i) < v34)
            {
              v32 = i;
              v34 = *(__p[0] + i);
            }
          }

          if (v34 <= *(a1 + 492))
          {
            sub_26223FEB8(v412, (v17 + 16), v29 + 2);
            if (*&v412[24] < *(a1 + 484) && *&v412[8] >= *(a1 + 476) && *&v412[20] < *(a1 + 472))
            {
              v36 = *(v17 + 16);
              v37 = *(v17 + 24);
              v38 = vsub_f32(v37, v36);
              v39 = vaddv_f32(vmul_f32(vsub_f32(v29[((v32 & 1) == 0) + 2], v36), v38));
              v40 = vaddv_f32(vmul_f32(v38, v38));
              if (v40 < 0.000001)
              {
                v40 = 0.000001;
              }

              v41 = vmla_n_f32(v36, v38, v39 / v40);
              if (vaddv_f32(vmul_f32(vsub_f32(v41, v36), vsub_f32(v41, v37))) <= 0.00001)
              {
                v42 = vsub_f32(v41, *(v30 + 8 * (1 - (v32 >> 1))));
                if (sqrtf(vaddv_f32(vmul_f32(v42, v42))) >= 0.5)
                {
                  *__b = *v30;
                  *(&v43 + 1) = *&__b[8];
                  *&__b[8 * (v32 >> 1)] = v41;
                  *(&v44 + 1) = *&__b[8];
                  *v30 = *__b;
                  *&v44 = *(v17 + 16);
                  *&v43 = *(v17 + 24);
                  v45 = v44;
                  DWORD2(v45) = *(v17 + 64);
                  v46 = v43;
                  DWORD2(v46) = *(v17 + 68);
                  DWORD2(v44) = DWORD2(v46);
                  DWORD2(v43) = DWORD2(v45);
                  *(v17 + 32) = v45;
                  *(v17 + 48) = v46;
                  v47 = *(v17 + 8);
                  src[0] = v44;
                  src[1] = v46;
                  src[2] = v43;
                  src[3] = v45;
                  if (v47)
                  {
                    objc_copyStruct((v47 + 272), src, 64, 1, 0);
                  }
                }
              }
            }
          }

          operator delete(v33);
        }

        v29 += 22;
      }

      while (v29 != v28);
    }
  }

  *(a1 + 904) = 0;
  if (*(a1 + 768) != *(a1 + 776) || (v82 = a2[1], v83 = a2[2], v82 == v83))
  {
LABEL_29:
    *(a1 + 904) = 1;
  }

  else
  {
    v84 = v82 + 16;
    while (1)
    {
      objc_msgSend_confidence(*(v84 - 8), v11, v12);
      if (v85 >= *(a1 + 572) && (sub_262247B68(v13, v373, v84) & 1) != 0)
      {
        break;
      }

      v86 = v84 + 160;
      v84 += 176;
      if (v86 == v83)
      {
        goto LABEL_29;
      }
    }
  }

  v48 = &v412[16];
  for (j = 8; j != 32; j += 8)
  {
    v50 = *(v360 + j);
    *(v48 - 2) = 0;
    *(v48 - 1) = v50;
    *v48 = 1;
    v48 += 3;
  }

  sub_262202A58(v360 + 8, v412, 0, 1u, *(v360 + 8), 1);
  sub_262224D0C(__p, v360, v412);
  v410[1] = 0;
  v410[0] = 0;
  v411 = 0;
  *__b = 0;
  sub_2621C9004(v410, __b);
  v51 = v410[0];
  v52 = MEMORY[0x277D82670];
  if (v410[1] != v410[0])
  {
    v53 = 0;
    v54 = (v410[1] - v410[0]) >> 3;
    v55 = MEMORY[0x277D82680];
    do
    {
      if (v51[v53] >= 3uLL)
      {
        sub_2621D552C(v52, "runtime_err in ", 15);
        sub_2621D552C(v52, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v52, " ", 1);
        v56 = MEMORY[0x266727260](v52, 28);
        sub_2621D552C(v56, " ", 1);
        sub_2621D552C(v56, "format_reduce_axes", 18);
        std::ios_base::getloc((v56 + *(*v56 - 24)));
        v57 = std::locale::use_facet(__b, v55);
        (v57->__vftable[2].~facet_0)(v57, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "reduce axis larger than dim-1");
        std::ios_base::getloc((v52 + *(*v52 - 24)));
        v58 = std::locale::use_facet(__b, v55);
        (v58->__vftable[2].~facet_0)(v58, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v53;
    }

    while (v53 < v54);
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v59 = v410[1];
  v60 = v410[0];
  v374 = (v410[1] - v410[0]) >> 3;
  v378 = v410[1] - v410[0];
  if ((v410[1] - v410[0]) != 8)
  {
    v61 = 0;
    v62 = MEMORY[0x277D82680];
    do
    {
      if (v60[v61] == v60[v61 + 1])
      {
        sub_2621D552C(v52, "runtime_err in ", 15);
        sub_2621D552C(v52, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v52, " ", 1);
        v63 = MEMORY[0x266727260](v52, 33);
        sub_2621D552C(v63, " ", 1);
        sub_2621D552C(v63, "format_reduce_axes", 18);
        std::ios_base::getloc((v63 + *(*v63 - 24)));
        v64 = std::locale::use_facet(__b, v62);
        (v64->__vftable[2].~facet_0)(v64, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "duplicate axis in reduce axis");
        std::ios_base::getloc((v52 + *(*v52 - 24)));
        v65 = std::locale::use_facet(__b, v62);
        (v65->__vftable[2].~facet_0)(v65, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v61;
    }

    while (v61 < v374 - 1);
  }

  v66 = 0;
  v423 = 0uLL;
  v424[0] = 0;
  v67 = v374;
  if (v374 <= 1)
  {
    v67 = 1;
  }

  v68 = v67 - 1;
  do
  {
    if (v59 != v60)
    {
      if (*v60 == v66)
      {
LABEL_47:
        *__b = 1;
        sub_2621C9004(&v423, __b);
        goto LABEL_53;
      }

      v69 = 0;
      while (v68 != v69)
      {
        v70 = v60[++v69];
        if (v70 == v66)
        {
          if (v69 < v374)
          {
            goto LABEL_47;
          }

          break;
        }
      }
    }

    sub_2621C9004(&v423, &__p[v66 + 1]);
LABEL_53:
    ++v66;
  }

  while (v66 != 3);
  sub_2622042C8(__b, &v423);
  v71 = 0;
  v405 = 0u;
  v406 = 0u;
  *v404 = 0u;
  do
  {
    v404[v71] = 1;
    if (v71 <= 1)
    {
      v72 = v71;
      v73 = 1;
      do
      {
        v73 *= *&__b[8 * v72++ + 8];
      }

      while (v72 != 2);
      v404[v71] = v73;
    }

    ++v71;
  }

  while (v71 != 3);
  sub_262226244(v412, __b);
  v74 = *(v60 + v378 - 8);
  v75 = v74;
  v367 = v74;
  if (v74 != 2)
  {
    goto LABEL_66;
  }

  if (v374 == 1 || (v76 = *(v60 + v378 - 16), v60[v374 - 1] - v76 != 1))
  {
    v402 = 0;
    v401 = 0;
    v403 = 0;
    v399 = 0;
    v398 = 0;
    v75 = 2;
    v400 = 0;
  }

  else
  {
    v77 = &v60[v374 - 3];
    v78 = v374 - 2;
    do
    {
      v75 = v76;
      if (!v78)
      {
        break;
      }

      v76 = *v77;
      v79 = v77[1];
      --v77;
      --v78;
    }

    while (v79 - v76 == 1);
LABEL_66:
    v402 = 0;
    v401 = 0;
    v403 = 0;
    v399 = 0;
    v398 = 0;
    v400 = 0;
    if (!v75)
    {
      v379 = 0;
      v80 = 1;
      v81 = 1;
      __src = 1;
LABEL_86:
      v92 = 8 * v80 + 8;
      v93 = 1;
      do
      {
        v93 *= *(__p + v92);
        v92 += 8;
      }

      while (v92 != 32);
      goto LABEL_90;
    }
  }

  v379 = v75;
  v87 = 0;
  v81 = 1;
  while (2)
  {
    v88 = &__p[v87 + 1];
    v89 = *v88;
    sub_2621C9004(&v401, v88);
    if (v59 != v60)
    {
      if (*v60 == v87)
      {
LABEL_78:
        *&v422[0] = 0;
        sub_2621C9004(&v398, v422);
        goto LABEL_84;
      }

      v90 = 0;
      while (v68 != v90)
      {
        v91 = v60[++v90];
        if (v91 == v87)
        {
          if (v90 < v374)
          {
            goto LABEL_78;
          }

          break;
        }
      }
    }

    sub_2621C9004(&v398, &v404[v87]);
LABEL_84:
    v81 *= v89;
    if (++v87 != v379)
    {
      continue;
    }

    break;
  }

  __src = 0;
  v80 = v379 + 1;
  v74 = v367;
  if (v379 + 1 <= 2)
  {
    goto LABEL_86;
  }

  v93 = 1;
LABEL_90:
  if (v74 == 2)
  {
    v94 = __p[v379 + 1];
  }

  else
  {
    v94 = 1;
  }

  v95 = v419;
  if (v74 == 2)
  {
    v96 = v81;
  }

  else
  {
    v96 = __p[v379 + 1];
  }

  memset(&v422[1], 0, 32);
  if (v74 == 2)
  {
    v97 = 1;
  }

  else
  {
    v97 = v81;
  }

  v365 = v97;
  v422[0] = 0uLL;
  memset(v421, 0, sizeof(v421));
  *__dst = 0uLL;
  if (__src)
  {
    v395 = 0;
    sub_2621C9004(&v401, &v395);
    v98 = 0;
    v396 = 0;
    v395 = 0;
    v397 = 0;
    v99 = v379;
    v100 = __src;
    goto LABEL_113;
  }

  v364 = v94;
  v101 = 0;
  v396 = 0;
  v395 = 0;
  v397 = 0;
  v394 = 0;
  if (v379 <= 1)
  {
    v102 = 1;
  }

  else
  {
    v102 = v379;
  }

  while (2)
  {
    if (v59 == v60)
    {
LABEL_110:
      sub_2621C9004(&v395, &v394);
    }

    else if (*v60 != v101)
    {
      v103 = 0;
      while (v68 != v103)
      {
        v104 = v60[++v103];
        if (v104 == v101)
        {
          if (v103 < v374)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        }
      }

      goto LABEL_110;
    }

LABEL_111:
    v394 = ++v101;
    if (v101 != v102)
    {
      continue;
    }

    break;
  }

  v99 = v379;
  v98 = v379 - 1;
  v100 = __src;
  v74 = v367;
  v94 = v364;
LABEL_113:
  v105 = v93 * v94;
  if (v74 == 2)
  {
    if (v387)
    {
      if (v96)
      {
        v106 = 0;
        v107 = 0;
        v108 = 0;
        v109 = v388;
        v110 = v401;
        v111 = (v388 + 4);
        if (v105 <= 1)
        {
          v112 = 1;
        }

        else
        {
          v112 = v93 * v94;
        }

        v113 = v398;
        v114 = 4 * v112;
        v115 = 1;
        v116 = v95;
        while (1)
        {
          v117 = *(v109 + 4 * v107);
          if (v105 >= 2)
          {
            break;
          }

          ++v107;
          if (!v115)
          {
            goto LABEL_128;
          }

LABEL_130:
          *v116 = v117;
          v122 = v98;
          do
          {
            v123 = *(v422 + v122) + 1;
            *(v422 + v122) = v123;
            if (v123 != v110[v122])
            {
              break;
            }

            *(v422 + v122) = 0;
            v223 = v122-- <= 0;
          }

          while (!v223);
          if (v100)
          {
            v115 = 0;
            v124 = 0;
          }

          else
          {
            v124 = 0;
            v125 = v422;
            v126 = v113;
            v127 = v99;
            do
            {
              v129 = *v125++;
              v128 = v129;
              v130 = *v126++;
              v124 += v130 * v128;
              --v127;
            }

            while (v127);
            v115 = v124 > v108;
            if (v124 > v108)
            {
              v108 = v124;
            }
          }

          v116 = &v95[v124];
          ++v106;
          v111 = (v111 + v114);
          if (v106 == v96)
          {
            goto LABEL_250;
          }
        }

        v118 = v105 - 1;
        v119 = v111;
        do
        {
          v120 = *v119++;
          v121 = v120;
          if (v117 < v120)
          {
            v117 = v121;
          }

          --v118;
        }

        while (v118);
        v107 += v105;
        if (v115)
        {
          goto LABEL_130;
        }

LABEL_128:
        if (*v116 >= v117)
        {
          v117 = *v116;
        }

        goto LABEL_130;
      }
    }

    else if (v96)
    {
      v158 = 0;
      v159 = 0;
      v160 = v388;
      v161 = v401;
      v162 = v398;
      v163 = 1;
      v164 = v95;
      do
      {
        v165 = 0;
        v166 = 0;
        do
        {
          v166 += *(v384 + v165 * 8 + 8) * __dst[v165];
          ++v165;
        }

        while (v165 != 3);
        v167 = 0;
        v168 = *(v160 + 4 * v166);
        do
        {
          v169 = *(v421 + v167) + 1;
          *(v421 + v167) = v169;
          if (v169 != *(v383 + v167 + 8))
          {
            break;
          }

          *(v421 + v167) = 0;
          v167 -= 8;
        }

        while (v167 != -24);
        if (v105 >= 2)
        {
          for (k = 1; k != v105; ++k)
          {
            v171 = 0;
            v172 = 0;
            do
            {
              v172 += *(v384 + v171 * 8 + 8) * __dst[v171];
              ++v171;
            }

            while (v171 != 3);
            v173 = 0;
            if (v168 < *(v160 + 4 * v172))
            {
              v168 = *(v160 + 4 * v172);
            }

            do
            {
              v174 = *(v421 + v173) + 1;
              *(v421 + v173) = v174;
              if (v174 != *(v383 + v173 + 8))
              {
                break;
              }

              *(v421 + v173) = 0;
              v173 -= 8;
            }

            while (v173 != -24);
          }
        }

        if (!v163 && *v164 >= v168)
        {
          v168 = *v164;
        }

        *v164 = v168;
        v175 = v98;
        do
        {
          v176 = *(v422 + v175) + 1;
          *(v422 + v175) = v176;
          if (v176 != v161[v175])
          {
            break;
          }

          *(v422 + v175) = 0;
          v223 = v175-- <= 0;
        }

        while (!v223);
        if (v100)
        {
          v163 = 0;
          v177 = 0;
        }

        else
        {
          v177 = 0;
          v178 = v422;
          v179 = v162;
          v180 = v99;
          do
          {
            v182 = *v178++;
            v181 = v182;
            v183 = *v179++;
            v177 += v183 * v181;
            --v180;
          }

          while (v180);
          v163 = v177 > v159;
          if (v177 > v159)
          {
            v159 = v177;
          }
        }

        v164 = &v95[v177];
        ++v158;
      }

      while (v158 != v96);
    }
  }

  else if (v387)
  {
    if (v365)
    {
      v131 = 0;
      v132 = 0;
      v133 = 0;
      v134 = v401;
      v135 = v398;
      v136 = 1;
      v137 = v388;
      v138 = v95;
      do
      {
        if (v136)
        {
          if (v105)
          {
            v139 = v138;
            v140 = v93 * v94;
            do
            {
              *v139++ = *(v137 + 4 * v132++);
              --v140;
            }

            while (v140);
          }
        }

        else
        {
          v141 = v138;
          v142 = v93 * v94;
          if (v105)
          {
            do
            {
              v143 = *(v137 + 4 * v132);
              if (*v141 >= v143)
              {
                v143 = *v141;
              }

              *v141++ = v143;
              ++v132;
              --v142;
            }

            while (v142);
          }
        }

        if (v96 >= 2)
        {
          v144 = v388;
          for (m = 1; m != v96; ++m)
          {
            v146 = v138;
            v147 = v93 * v94;
            if (v105)
            {
              do
              {
                v148 = *(v144 + 4 * v132);
                if (*v146 >= v148)
                {
                  v148 = *v146;
                }

                *v146++ = v148;
                ++v132;
                --v147;
              }

              while (v147);
            }
          }
        }

        v149 = v98;
        do
        {
          v150 = *(v422 + v149) + 1;
          *(v422 + v149) = v150;
          if (v150 != v134[v149])
          {
            break;
          }

          *(v422 + v149) = 0;
          v223 = v149-- <= 0;
        }

        while (!v223);
        if (v100)
        {
          v136 = 0;
          v151 = 0;
        }

        else
        {
          v151 = 0;
          v152 = v422;
          v153 = v135;
          v154 = v99;
          do
          {
            v156 = *v152++;
            v155 = v156;
            v157 = *v153++;
            v151 += v157 * v155;
            --v154;
          }

          while (v154);
          v136 = v151 > v133;
          if (v151 > v133)
          {
            v133 = v151;
          }
        }

        v138 = &v95[v151];
        ++v131;
      }

      while (v131 != v365);
    }
  }

  else if (v365)
  {
    v184 = 0;
    v185 = 0;
    v186 = v401;
    v187 = v398;
    v188 = v388;
    v189 = 1;
    v190 = v95;
    do
    {
      if (v189)
      {
        if (v105)
        {
          for (n = 0; n != v105; ++n)
          {
            v192 = 0;
            v193 = 0;
            do
            {
              v193 += *(v384 + v192 * 8 + 8) * __dst[v192];
              ++v192;
            }

            while (v192 != 3);
            v194 = 0;
            v190[n] = *(v188 + 4 * v193);
            do
            {
              v195 = *(v421 + v194) + 1;
              *(v421 + v194) = v195;
              if (v195 != *(v383 + v194 + 8))
              {
                break;
              }

              *(v421 + v194) = 0;
              v194 -= 8;
            }

            while (v194 != -24);
          }
        }
      }

      else if (v105)
      {
        for (ii = 0; ii != v105; ++ii)
        {
          v197 = 0;
          v198 = 0;
          do
          {
            v198 += *(v384 + v197 * 8 + 8) * __dst[v197];
            ++v197;
          }

          while (v197 != 3);
          v199 = 0;
          v200 = *(v188 + 4 * v198);
          if (v190[ii] >= v200)
          {
            v200 = v190[ii];
          }

          v190[ii] = v200;
          do
          {
            v201 = *(v421 + v199) + 1;
            *(v421 + v199) = v201;
            if (v201 != *(v383 + v199 + 8))
            {
              break;
            }

            *(v421 + v199) = 0;
            v199 -= 8;
          }

          while (v199 != -24);
        }
      }

      v202 = v98;
      if (v96 > 1)
      {
        v203 = v388;
        for (jj = 1; jj != v96; ++jj)
        {
          if (v105)
          {
            for (kk = 0; kk != v105; ++kk)
            {
              v206 = 0;
              v207 = 0;
              do
              {
                v207 += *(v384 + v206 * 8 + 8) * __dst[v206];
                ++v206;
              }

              while (v206 != 3);
              v208 = 0;
              v209 = *(v203 + 4 * v207);
              if (v190[kk] >= v209)
              {
                v209 = v190[kk];
              }

              v190[kk] = v209;
              do
              {
                v210 = *(v421 + v208) + 1;
                *(v421 + v208) = v210;
                if (v210 != *(v383 + v208 + 8))
                {
                  break;
                }

                *(v421 + v208) = 0;
                v208 -= 8;
              }

              while (v208 != -24);
            }
          }
        }

        v202 = v98;
      }

      do
      {
        v211 = *(v422 + v202) + 1;
        *(v422 + v202) = v211;
        if (v211 != v186[v202])
        {
          break;
        }

        *(v422 + v202) = 0;
        v223 = v202-- <= 0;
      }

      while (!v223);
      if (v100)
      {
        v189 = 0;
        v212 = 0;
      }

      else
      {
        v212 = 0;
        v213 = v422;
        v214 = v187;
        v215 = v99;
        do
        {
          v217 = *v213++;
          v216 = v217;
          v218 = *v214++;
          v212 += v218 * v216;
          --v215;
        }

        while (v215);
        v189 = v212 > v185;
        if (v212 > v185)
        {
          v185 = v212;
        }
      }

      v190 = &v95[v212];
      ++v184;
    }

    while (v184 != v365);
  }

LABEL_250:
  if (v395)
  {
    operator delete(v395);
  }

  if (v398)
  {
    operator delete(v398);
  }

  if (v401)
  {
    operator delete(v401);
  }

  if (v423)
  {
    operator delete(v423);
  }

  if (v410[0])
  {
    operator delete(v410[0]);
  }

  sub_262224E88(src, v412, 0);
  *v412 = &unk_2874EF0D8;
  if (v418)
  {
    sub_2621D1B78(v418);
  }

  __p[0] = &unk_2874EF0D8;
  if (v386)
  {
    sub_2621D1B78(v386);
  }

  kdebug_trace();
  v368 = a2 + 1;
  sub_262251A98(a1, a2 + 1, v361, src);
  v380 = (a1 + 464);
  sub_26229E9CC(a2 + 1, a1 + 464);
  sub_262353488(a2 + 22);
  a2[24] = a2[23];
  v219 = a2[1];
  v220 = a2[2];
  if (v219 != v220)
  {
    v362 = a2[2];
    while (1)
    {
      if (v219[18].i8[7] < 0)
      {
        if (!*&v219[17])
        {
          goto LABEL_331;
        }
      }

      else if (!v219[18].i8[7])
      {
        goto LABEL_331;
      }

      v221 = vsub_f32(v219[2], v219[3]);
      v222 = sqrtf(vaddv_f32(vmul_f32(v221, v221)));
      v223 = v222 >= *(a1 + 584) && v222 <= *(a1 + 588);
      if (v223)
      {
        break;
      }

LABEL_331:
      v219 += 22;
      if (v219 == v220)
      {
        goto LABEL_332;
      }
    }

    memset(v412, 0, 24);
    v224 = a2[1];
    v225 = a2[2];
    if (v224 == v225)
    {
      v259 = 0;
      goto LABEL_325;
    }

    v366 = 0;
    v375 = v219 + 16;
    while (2)
    {
      v226 = v224[18].i8[7];
      if (v226 < 0)
      {
        v227 = v224[17];
        if (v227)
        {
LABEL_281:
          if (v226 >= 0)
          {
            v228 = v224[18].i8[7];
          }

          else
          {
            v228 = v227;
          }

          v229 = v219[18].u8[7];
          v230 = v229.i8[0];
          if (v229.i8[0] < 0)
          {
            v229 = v219[17];
          }

          if (v228 != *&v229 || (v226 >= 0 ? (v231 = v224 + 16) : (v231 = v224[16]), (v232 = *v375, v230 >= 0) ? (v233 = v219 + 16) : (v233 = *v375), memcmp(v231, v233, v228)))
          {
            v234 = vsub_f32(v224[2], v224[3]);
            if (sqrtf(vaddv_f32(vmul_f32(v234, v234))) > v222)
            {
              sub_2621DCD34(__p, v219 + 2, v224 + 2);
              v235 = __p[0];
              v236 = __p[1];
              v237 = (__p[0] + 4);
              v238 = __p[0] == __p[1] || v237 == __p[1];
              v239 = v238;
              v240 = __p[0];
              if (!v238)
              {
                v241 = *__p[0];
                v242 = (__p[0] + 4);
                v240 = __p[0];
                v243 = (__p[0] + 4);
                do
                {
                  v244 = *v243++;
                  v245 = v244;
                  if (v244 < v241)
                  {
                    v241 = v245;
                    v240 = v242;
                  }

                  v242 = v243;
                }

                while (v243 != __p[1]);
              }

              if (*v240 <= *(a1 + 492))
              {
                v246 = sub_2621C92AC(v219 + 2, v224 + 2, 0);
                v247 = *(a1 + 484);
                v248 = 90.0 - v247;
                v249 = v247 + 135.0;
                if (v246 >= v248 && v246 <= v249)
                {
                  v251 = v235;
                  if ((v239 & 1) == 0)
                  {
                    v252 = *v235;
                    v251 = v235;
                    v253 = v237;
                    do
                    {
                      v254 = *v253++;
                      v255 = v254;
                      if (v254 < v252)
                      {
                        v252 = v255;
                        v251 = v237;
                      }

                      v237 = v253;
                    }

                    while (v253 != v236);
                  }

                  v256 = v366;
                  v257 = v366 >> 2;
                  if (((v366 >> 2) + 1) >> 62)
                  {
                    sub_2621CBEB0();
                  }

                  if (v366 >> 2 != -1)
                  {
                    sub_2621C7F54((v366 >> 2) + 1);
                  }

                  *(4 * v257) = ((v251 - v235) >> 2) / 2;
                  v366 = 4 * v257 + 4;
                  memcpy(0, 0, v256);
                  sub_26224663C(v412, v224, v258);
                  v235 = __p[0];
                }
              }

              if (v235)
              {
                operator delete(v235);
              }
            }
          }
        }
      }

      else if (v224[18].i8[7])
      {
        v227 = v224[17];
        goto LABEL_281;
      }

      v224 += 22;
      if (v224 == v225)
      {
        v259 = v366;
LABEL_325:
        v220 = v362;
        if (v259 == 8)
        {
          if (MEMORY[4] + MEMORY[0] == 1 && sub_2621C92AC((*v412 + 16), (*v412 + 192), 0) >= (180.0 - *(a1 + 480)))
          {
            operator new();
          }

          __p[0] = v412;
          sub_2621C5004(__p);
          operator delete(0);
        }

        else
        {
          __p[0] = v412;
          sub_2621C5004(__p);
        }

        goto LABEL_331;
      }

      continue;
    }
  }

LABEL_332:
  v352 = a3;
  sub_262252358(a1, a2, &v392, v391, v361, a5, v360, src);
  kdebug_trace();
  kdebug_trace();
  v354 = v361;
  v260 = *(a1 + 544);
  v384[1] = *(a1 + 528);
  v384[2] = v260;
  v384[3] = *(a1 + 560);
  v385 = *(a1 + 576);
  v261 = *(a1 + 480);
  *__p = *v380;
  v383[0] = v261;
  v262 = *(a1 + 512);
  v383[1] = *(a1 + 496);
  v384[0] = v262;
  HIDWORD(__p[1]) = *(a1 + 524);
  v263 = (a1 + 80);
  sub_26229F2FC(v422, *(a1 + 80), *(a1 + 88), a2 + 4, __p);
  v264 = a2[4];
  for (mm = a2[5]; v264 != mm; v264 += 22)
  {
    sub_26229EFDC(v412, v264, (a1 + 56), v380);
    if (v412[0])
    {
      if ((v412[31] & 0x80000000) != 0)
      {
        sub_2621CC810(__b, *&v412[8], *&v412[16]);
      }

      else
      {
        *__b = *&v412[8];
        *&__b[16] = *&v412[24];
      }

      if ((sub_26225A7AC(*(a1 + 56), *(a1 + 64), __b) & 1) != 0 && *(sub_262259864(a1 + 48, __b) + 76) == 1)
      {
        if ((__b[23] & 0x80000000) != 0)
        {
          operator delete(*__b);
        }

        sub_262258CCC(__b, &v264[16], v422);
        if (!v408)
        {
          sub_26225A86C(v264, v413);
          v264[11].i32[0] = 4;
          v267 = *(sub_262259864(a1 + 48, &v412[8]) + 8);
          if (v267)
          {
            LODWORD(v267) = *(v267 + 116);
          }

          v268 = v264[1];
          if (v268)
          {
            *(*&v268 + 120) = v267;
          }

          sub_26224663C((a1 + 80), v264, v266);
        }

        sub_262259168(__b);
      }

      else
      {
        v264[11].i32[0] = 5;
        if ((__b[23] & 0x80000000) != 0)
        {
          operator delete(*__b);
        }
      }
    }

    else
    {
      v264[11].i32[0] = 5;
    }

    if ((v412[31] & 0x80000000) != 0)
    {
      operator delete(*&v412[8]);
    }
  }

  v355 = v354;
  v269 = *(a1 + 80);
  for (nn = *(a1 + 88); v269 != nn; v269 += 176)
  {
    sub_26229EFDC(__b, v269, (a1 + 56), v380);
    if (__b[0])
    {
      sub_26225A86C(v269, v409);
      v271 = *(sub_262259864(a1 + 48, &__b[8]) + 8);
      if (v271)
      {
        LODWORD(v271) = *(v271 + 116);
      }

      v272 = *(v269 + 8);
      if (v272)
      {
        *(v272 + 120) = v271;
      }

      if (SHIBYTE(v408) < 0)
      {
        sub_2621CC810(__dst, *&__b[8], *&__b[16]);
      }

      else
      {
        *__dst = *&__b[8];
        *&v421[0] = v408;
      }

      if (sub_26225A7AC(*(a1 + 56), *(a1 + 64), __dst) & 1) != 0 && (*(sub_262259864(a1 + 48, __dst) + 76))
      {
        sub_262258CCC(v404, (v269 + 128), v422);
        if (!*(&v405 + 1))
        {
          LODWORD(v410[0]) = 2;
          sub_26222296C(v412, v360, v410);
          v423 = *(v269 + 16);
          v411 = 0;
          v410[0] = 0;
          v410[1] = 0;
          sub_2621DC054(v410, &v423, v424, 1uLL);
        }

        if (*(&v405 + 1) == 1)
        {
          if (*(v405 + 39) < 0)
          {
            sub_2621CC810(v412, *(v405 + 16), *(v405 + 24));
          }

          else
          {
            *v412 = *(v405 + 16);
            *&v412[16] = *(v405 + 32);
          }

          if (sub_26225A7AC(a2[4], a2[5], v412))
          {
            v273 = sub_26225A954(a2, v412);
            sub_26225AA00(v269, (v273 + 32));
            objc_msgSend_confidence(*(v273 + 8), v274, v275, v352);
            v277 = *(v269 + 8);
            if (v277)
            {
              *(v277 + 108) = v276;
            }

            *(v269 + 88) = 1;
          }

          if ((v412[23] & 0x80000000) != 0)
          {
            operator delete(*v412);
          }
        }

        else
        {
          *(v269 + 88) = 1;
        }

        sub_262259168(v404);
      }

      else
      {
        *(v269 + 88) = 0;
      }

      if (SBYTE7(v421[0]) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    else
    {
      *(v269 + 88) = 2;
    }

    if (SHIBYTE(v408) < 0)
    {
      operator delete(*&__b[8]);
    }
  }

  v278 = *(a1 + 80);
  v279 = *(a1 + 88);
  if (v278 != v279)
  {
    do
    {
      if (*(v278 + 88) != 2)
      {
        if (!sub_26225A7AC(*(a1 + 56), *(a1 + 64), (v278 + 152)))
        {
          goto LABEL_392;
        }

        v280 = sub_262259864(a1 + 48, (v278 + 152));
        *&v283 = sub_2621DCC54(*(v278 + 16), *(v278 + 24), v280[2], v280[3]);
        v284 = v283;
        DWORD2(v284) = *(v278 + 64);
        v286 = v285;
        DWORD2(v286) = *(v278 + 68);
        *(v278 + 16) = v283;
        *(v278 + 24) = v285;
        DWORD2(v283) = DWORD2(v286);
        DWORD2(v285) = DWORD2(v284);
        *(v278 + 32) = v284;
        *(v278 + 48) = v286;
        v287 = *(v278 + 8);
        *v412 = v283;
        *&v412[16] = v286;
        v413 = v285;
        *v414 = v284;
        if (v287)
        {
          objc_copyStruct((v287 + 272), v412, 64, 1, 0);
        }

        v288 = objc_msgSend_identifier(*&v280[1], *&v281, *&v282, v352);
        sub_26225A86C(v278, v288);

        v289 = vsub_f32(*(v278 + 16), *(v278 + 24));
        if (sqrtf(vaddv_f32(vmul_f32(v289, v289))) < 0.3)
        {
LABEL_392:
          *(v278 + 88) = 2;
        }
      }

      v278 += 176;
    }

    while (v278 != v279);
    v279 = *(a1 + 88);
  }

  v290 = *v263;
  if (v279 != *v263)
  {
    v291 = 0;
    __srca = 0;
    v376 = 0;
    v292 = 0;
    do
    {
      if (v291)
      {
        goto LABEL_417;
      }

      if (v279 == v290)
      {
        goto LABEL_418;
      }

      v291 = 0;
      v293 = 0;
      v294 = 2;
      do
      {
        if (v292 < v293)
        {
          sub_26229DAC8(v412, &v290[22 * v292 + 2], &v290[v294], v380);
          v295 = *(&v413 + 2) >= 5.0 && *(&v413 + 2) <= 175.0;
          if (v295 || *(&v413 + 1) >= 0.05 || *&v412[24] <= 0.05)
          {
            v296 = 1;
          }

          else
          {
            v296 = 0;
            v291 = 1;
            __srca = v292;
            v376 = v293;
          }

          if (v416)
          {
            v417 = v416;
            operator delete(v416);
          }

          if (v414[1])
          {
            v415 = v414[1];
            operator delete(v414[1]);
          }

          v290 = *(a1 + 80);
          v279 = *(a1 + 88);
          if (!v296)
          {
            break;
          }
        }

        ++v293;
        v294 += 22;
      }

      while (v293 < 0x2E8BA2E8BA2E8BA3 * ((v279 - v290) >> 4));
      ++v292;
      v263 = (a1 + 80);
    }

    while (v292 < 0x2E8BA2E8BA2E8BA3 * ((v279 - v290) >> 4));
    if (v291)
    {
LABEL_417:
      sub_2621DBF40(*&v290[22 * __srca + 2], *&v290[22 * __srca + 3], *&v290[22 * v376 + 2], *&v290[22 * v376 + 3]);
    }
  }

LABEL_418:
  if (v290 == v279)
  {
    goto LABEL_449;
  }

  while (2)
  {
    if (v290[11].i32[0] != 2)
    {
      if (v290[21].i8[7] < 0)
      {
        if (!*&v290[20])
        {
          goto LABEL_447;
        }
      }

      else if (!v290[21].i8[7])
      {
        goto LABEL_447;
      }

      if (sub_26225A7AC(*(a1 + 56), *(a1 + 64), &v290[19]))
      {
        if (*(sub_262259864(a1 + 48, &v290[19]) + 76))
        {
          v297 = a2[16];
          v298 = a2[17];
          if (v297 != v298)
          {
            v299 = 0;
            v300 = v297 + 176;
            do
            {
              sub_26229DAC8(v412, v290 + 2, (v300 - 160), v380);
              v302 = *(&v413 + 2) >= 30.0 || *&v412[24] <= 0.5;
              if (v302 || *(&v413 + 1) >= 0.2 || (v301.n128_u64[0] = v290[2], sub_26229E5CC(__b, v301, v290[3], *(v300 - 160), *(v300 - 152)), (__b[0] & 1) != 0) && (v303 = vsub_f32(*&__b[8], *&__b[16]), sqrtf(vaddv_f32(vmul_f32(v303, v303))) >= 0.5))
              {
                v304 = 0;
              }

              else
              {
                v299 = 1;
                v304 = 1;
              }

              if (v416)
              {
                v417 = v416;
                operator delete(v416);
              }

              if (v414[1])
              {
                v415 = v414[1];
                operator delete(v414[1]);
              }

              if (v300 == v298)
              {
                v305 = 1;
              }

              else
              {
                v305 = v304;
              }

              v300 += 176;
            }

            while (v305 != 1);
            if (v299)
            {
              v290[11].i32[0] = 2;
            }
          }
        }
      }
    }

LABEL_447:
    v290 += 22;
    if (v290 != v279)
    {
      continue;
    }

    break;
  }

  v290 = *(a1 + 80);
  v279 = *(a1 + 88);
LABEL_449:
  if (v290 != v279)
  {
    v306 = v392;
    v307 = v393;
    v357 = v393;
    v359 = v392;
    do
    {
      v363 = v290 + 2;
      if (sub_262247B68(v306, v307, &v290[2]))
      {
        v308 = sub_262259864(a1 + 48, &v290[19]);
        if (v290[11].i32[0] != 2 && *&v308[1] != 0)
        {
          v310 = v308;
          v311 = v308 + 2;
          sub_2621DCD34(__b, v363, v308 + 2);
          sub_2621CD160(v404, (*&__b[8] - *__b) >> 2);
          v312 = v404[0];
          v313 = v404[1];
          if (v404[0] != v404[1])
          {
            v314 = 0;
            v315 = (v404[1] - v404[0] - 8) >> 3;
            v316 = vdupq_n_s64(v315);
            v317 = xmmword_2623A7620;
            do
            {
              v318 = vmovn_s64(vcgeq_u64(v316, v317));
              if (v318.i8[0])
              {
                v312[v314] = v314;
              }

              if (v318.i8[4])
              {
                v312[v314 + 1] = v314 + 1;
              }

              v314 += 2;
              v317 = vaddq_s64(v317, vdupq_n_s64(2uLL));
            }

            while (((v315 + 2) & 0x3FFFFFFFFFFFFFFELL) != v314);
          }

          v319 = 126 - 2 * __clz(v313 - v312);
          *v412 = __b;
          if (v313 == v312)
          {
            v320 = 0;
          }

          else
          {
            v320 = v319;
          }

          sub_262259910(v312, v313, v412, v320, 1);
          v322 = v404[0];
          v323 = v404[1];
          if (v404[0] != v404[1])
          {
            v324 = v310 + 16;
            __srcb = v404[1];
            while (*(*__b + 4 * *v322) > 0.1)
            {
LABEL_495:
              if (++v322 == v323)
              {
                goto LABEL_496;
              }
            }

            v325 = 0;
            v326 = v311[*v322 & 1];
            v377 = *v322 >> 1;
            v381 = *v322 & 1;
            __dst[0] = (a1 + 56);
            __dst[1] = a2 + 1;
            do
            {
              v327 = __dst[v325];
              v328 = v327[1];
              if (*v327 != v328)
              {
                v329 = *v327 + 128;
                while (1)
                {
                  v330 = *(v329 + 23);
                  if (v330 >= 0)
                  {
                    v331 = *(v329 + 23);
                  }

                  else
                  {
                    v331 = *(v329 + 8);
                  }

                  v332 = v310[18].u8[7];
                  v333 = v332.i8[0];
                  if (v332.i8[0] < 0)
                  {
                    v332 = v310[17];
                  }

                  if (v331 != *&v332 || (v330 >= 0 ? (v334 = v329) : (v334 = *v329), (v335 = *v324, v333 >= 0) ? (v336 = v310 + 16) : (v336 = *v324), memcmp(v334, v336, v331)))
                  {
                    sub_26223FEB8(v412, v311, (v329 - 112));
                    if ((*&v412[20] >= *(a1 + 472) || *&v412[8] < *(a1 + 476) || *&v412[24] >= *(a1 + 480)) && sub_2621DC76C(v326, *(v329 - 112), *(v329 - 104), 0.00001) < 0.2)
                    {
                      break;
                    }
                  }

                  v337 = v329 + 48;
                  v329 += 176;
                  if (v337 == v328)
                  {
                    goto LABEL_490;
                  }
                }

                v323 = __srcb;
                goto LABEL_495;
              }

LABEL_490:
              ++v325;
            }

            while (v325 != 2);
            v338 = vsub_f32(v363[1 - v377], v311[v381 ^ 1]);
            v339 = sqrtf(vaddv_f32(vmul_f32(v338, v338)));
            v323 = __srcb;
            if (v339 >= 0.3)
            {
              v340 = v290[14].i32[1];
              v290[14].i32[1] = v340 + 1;
              if (v340 < *(a1 + 528))
              {
                goto LABEL_495;
              }
            }

            v290[11].i32[0] = 2;
            if (v339 >= 0.15)
            {
              *__dst = *v311->f32;
              *(__dst | (8 * v381)) = v363[1 - v377];
              *v311->f32 = *__dst;
              v341 = *v310[2].f32;
              v342 = v341;
              DWORD2(v342) = v310[8].i32[0];
              *&v321 = v310[3];
              v343 = v321;
              DWORD2(v343) = v310[8].i32[1];
              DWORD2(v341) = DWORD2(v343);
              DWORD2(v321) = DWORD2(v342);
              *v310[4].f32 = v342;
              *v310[6].f32 = v343;
              v344 = v310[1];
              *v412 = v341;
              *&v412[16] = v343;
              v413 = v321;
              *v414 = v342;
              if (v344)
              {
                objc_copyStruct((*&v344 + 272), v412, 64, 1, 0);
              }
            }

            else
            {
              v310[11].i32[0] = 2;
            }

LABEL_496:
            v322 = v404[0];
            v263 = (a1 + 80);
          }

          if (v322)
          {
            v404[1] = v322;
            operator delete(v322);
          }

          if (*__b)
          {
            *&__b[8] = *__b;
            operator delete(*__b);
          }

          v307 = v357;
          v306 = v359;
        }
      }

      v290 += 22;
    }

    while (v290 != v279);
  }

  sub_262251928((a1 + 56));
  sub_262251928(v263);
  sub_2622593AC(v422);

  kdebug_trace();
  kdebug_trace();
  sub_262254B98(a1, &v392, v355, v360);
  kdebug_trace();
  if (a2[2] != a2[1])
  {
    v349 = *(a1 + 56);
    v350 = *(a1 + 64);
    while (v349 != v350)
    {
      v347.i32[0] = *(*v368 + 64);
      v348.i32[0] = *(*v368 + 68);
      sub_262257E68(v349, v345, v346, v347, v348);
      v349 += 22;
    }
  }

  *&src[0] = &unk_2874EF0B8;
  if (v390)
  {
    sub_2621D1B78(v390);
  }

  v10 = v353;
LABEL_515:

  v351 = *MEMORY[0x277D85DE8];
}

void sub_2622512E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v67;
    operator delete(v67);
  }

  v68 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v68;
    operator delete(v68);
  }

  sub_2622593AC(v65 - 224);

  if (a65)
  {
    sub_2621D1B78(a65);
  }

  _Unwind_Resume(a1);
}

id sub_262251650(void *a1, id *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2621CBEB0();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v12[4] = a1;
    if (v10)
    {
      sub_2622317F8(v10);
    }

    v11 = (8 * v7);
    v12[0] = 0;
    v12[1] = v11;
    v12[3] = 0;
    *v11 = *a2;
    v12[2] = v11 + 1;
    sub_262246690(a1, v12);
    v6 = a1[1];
    result = sub_262246740(v12);
  }

  else
  {
    result = *a2;
    *v4 = result;
    v6 = v4 + 1;
  }

  a1[1] = v6;
  return result;
}

uint64_t sub_26225172C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621DC0C4(result, a4);
  }

  return result;
}

void sub_262251784(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622517A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v7 = (a3 + v6);
    objc_storeStrong((a3 + v6 + 8), *(a1 + v6 + 8));
    v8 = *(a1 + v6 + 16);
    v9 = *(a1 + v6 + 48);
    v7[2] = *(a1 + v6 + 32);
    v7[3] = v9;
    v7[1] = v8;
    v10 = *(a1 + v6 + 64);
    v11 = *(a1 + v6 + 80);
    v12 = *(a1 + v6 + 96);
    *(v7 + 105) = *(a1 + v6 + 105);
    v7[5] = v11;
    v7[6] = v12;
    v7[4] = v10;
    std::string::operator=((a3 + v6 + 128), (a1 + v6 + 128));
    std::string::operator=((a3 + v6 + 152), (a1 + v6 + 152));
    v6 += 176;
  }

  while (a1 + v6 != v5);
  return v5;
}

uint64_t sub_26225185C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  v6 = a3 - 176;
  v7 = a3;
  do
  {
    sub_262246794(v7, v4, a3);
    v4 += 176;
    v7 += 176;
    v5 -= 176;
    v6 += 176;
  }

  while (v4 != a2);
  return v7;
}

uint64_t *sub_262251928(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v3 = result;
    do
    {
      if (*(v1 + 88) == 2)
      {
        result = sub_2622519E8(v1 + 176, v2, v1);
        v2 = result;
        v4 = v3[1];
        if (v4 != result)
        {
          v5 = v4 - 22;
          v6 = v4 - 22;
          v7 = v4 - 22;
          do
          {
            v8 = *v7;
            v7 -= 22;
            result = (*v8)(v6);
            v5 -= 22;
            v9 = v6 == v2;
            v6 = v7;
          }

          while (!v9);
        }

        v3[1] = v2;
      }

      else
      {
        v1 += 176;
      }
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_2622519E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      objc_storeStrong((a3 + v6 + 8), *(a1 + v6 + 8));
      v8 = *(a1 + v6 + 16);
      v9 = *(a1 + v6 + 48);
      v7[2] = *(a1 + v6 + 32);
      v7[3] = v9;
      v7[1] = v8;
      v10 = *(a1 + v6 + 64);
      v11 = *(a1 + v6 + 80);
      v12 = *(a1 + v6 + 96);
      *(v7 + 105) = *(a1 + v6 + 105);
      v7[5] = v11;
      v7[6] = v12;
      v7[4] = v10;
      std::string::operator=((a3 + v6 + 128), (a1 + v6 + 128));
      std::string::operator=((a3 + v6 + 152), (a1 + v6 + 152));
      v6 += 176;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_262251A98(float *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v98 = *MEMORY[0x277D85DE8];
  v78 = a3;
  v76 = a4;
  if (*(a4 + 137))
  {
    goto LABEL_69;
  }

LABEL_2:
  while (2)
  {
    v7 = v78;
    v8 = *a2;
    v9 = a2[1];
    if (v9 == *a2)
    {
LABEL_68:

      break;
    }

    v10 = 0;
    do
    {
      if (v9 == v8)
      {
        goto LABEL_68;
      }

      LOBYTE(v11) = 0;
      v12 = 0;
      v13 = (v8 + 176 * v10);
      do
      {
        if (v10 >= v12)
        {
          goto LABEL_45;
        }

        if (v11)
        {

          goto LABEL_2;
        }

        v14 = (v8 + 176 * v12);
        v15 = sub_2621C92AC(v13 + 2, v14 + 2, 0);
        v17 = a1[120];
        if (v15 < v17 || v15 > (180.0 - v17))
        {
          goto LABEL_44;
        }

        *&v16 = 90.0 - v17;
        v19 = v17 + 90.0;
        if (*&v16 < v15 && v15 < v19)
        {
          goto LABEL_44;
        }

        v21 = v13[2];
        v22 = vsub_f32(v13[3], v21);
        v23 = *&v14[2];
        v25 = v14[3];
        v24 = vsub_f32(v25, *&v23);
        v25.f32[0] = -*&v22.i32[1];
        v26 = vzip1_s32(v25, v22);
        v27 = vmul_f32(v24, v26);
        v81 = v27;
        v83 = *&v23;
        v27.f32[0] = vaddv_f32(v27);
        if (v27.f32[0] == 0.0)
        {
LABEL_44:
          LOBYTE(v11) = 0;
          goto LABEL_45;
        }

        sub_2621DC4A4(&v90, v13 + 2, v14 + 2, *&v27, *&v25, v23, v16);
        sub_2621DC654(&v89, v14 + 2, v13[2], v13[3], v28, v29, v30);
        v31 = (v90 + 8);
        v32 = (v90 + 4);
        v33 = v90;
        if (v90 + 4 != v90 + 8)
        {
          v34 = *v90;
          v33 = v90;
          v35 = (v90 + 4);
          do
          {
            v36 = *v35++;
            v37 = v36;
            if (v36 < v34)
            {
              v34 = v37;
              v33 = v32;
            }

            v32 = v35;
          }

          while (v35 != v31);
        }

        v38 = (v90 + 12);
        v39 = v31 == v91 || v38 == v91;
        if (!v39)
        {
          v40 = *v31;
          v41 = (v90 + 12);
          do
          {
            v42 = *v41++;
            v43 = v42;
            if (v42 < v40)
            {
              v40 = v43;
              v31 = v38;
            }

            v38 = v41;
          }

          while (v41 != v91);
        }

        v11 = *v31 >= 0.3 && *v33 >= 0.3;
        if (!v11)
        {
          goto LABEL_60;
        }

        v44 = v89;
        if ((~*v89 & 3) == 0)
        {
          v77 = v89;
          v45 = v13[2];
          v46 = v13[3];
          v47 = v14[2];
          v48 = v14[3];
          v79 = sub_2621DC388(v45, v46, v47, v48);
          v51 = sub_2621DC388(v47, v48, v45, v46);
          v52 = vsub_f32(v45, v46);
          v53 = vsub_f32(v47, v48);
          v53.f32[0] = sqrtf(vaddv_f32(vmul_f32(v53, v53)));
          if (sqrtf(vaddv_f32(vmul_f32(v52, v52))) >= (v53.f32[0] + v53.f32[0]) && (objc_msgSend_confidence(*(*a2 + 176 * v10 + 8), v49, v50, v76, v77), v54 > a1[144]) && v51 >= a1[119])
          {
            v85 = v7;
            v64 = sub_2622519E8(*a2 + 176 * v12 + 176, a2[1], *a2 + 176 * v12);
            v65 = a2[1];
            if (v65 != v64)
            {
              v66 = v65 - 176;
              v67 = (v65 - 176);
              v68 = (v65 - 176);
              do
              {
                v69 = *v68;
                v68 -= 22;
                (*v69)(v67);
                v66 -= 176;
                v39 = v67 == v64;
                v67 = v68;
              }

              while (!v39);
            }
          }

          else
          {
            v55 = vsub_f32(v13[2], v13[3]);
            v55.f32[0] = sqrtf(vaddv_f32(vmul_f32(v55, v55)));
            v56 = vsub_f32(v14[2], v14[3]);
            if ((v55.f32[0] + v55.f32[0]) > sqrtf(vaddv_f32(vmul_f32(v56, v56))) || (objc_msgSend_confidence(*(*a2 + 176 * v12 + 8), v49, v50), v57 <= a1[144]) || v79 < a1[119])
            {
              v58 = vmul_f32(vsub_f32(v21, v83), v26);
              v59 = v13[2];
              v80 = v13[3];
              *&v88 = vmla_n_f32(v83, v24, vdiv_f32(vadd_f32(v58, vdup_lane_s32(v58, 1)), vadd_f32(v81, vdup_lane_s32(v81, 1))).f32[0]);
              *(&v88 + 1) = v59;
              *&v87 = v88;
              v82 = v14[2];
              v84 = v88;
              *(&v87 + 1) = v82;
              v60 = v14[3];
              if (sub_2621C92AC(&v88, &v87, 0) <= 90.0)
              {
                v62 = v60;
                v61 = v84;
              }

              else
              {
                v62 = v82;
                v61 = v84;
                *&v87 = v84;
                *(&v87 + 1) = v60;
              }

              src = v88;
              v93 = v61;
              v94 = v80;
              v95 = v87;
              v96 = v61;
              v97 = v62;
              memset(v86, 0, sizeof(v86));
              sub_2621DC054(v86, &src, &v98, 4uLL);
            }

            v85 = v7;
            v64 = sub_2622519E8(*a2 + 176 * v10 + 176, a2[1], *a2 + 176 * v10);
            v70 = a2[1];
            if (v70 != v64)
            {
              v71 = v70 - 176;
              v72 = (v70 - 176);
              v73 = (v70 - 176);
              do
              {
                v74 = *v73;
                v73 -= 22;
                (*v74)(v72);
                v71 -= 176;
                v39 = v72 == v64;
                v72 = v73;
              }

              while (!v39);
            }
          }

          a2[1] = v64;
          v7 = v85;
LABEL_60:
          v44 = v89;
          if (!v89)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        LOBYTE(v11) = 0;
LABEL_61:
        operator delete(v44);
LABEL_62:
        if (v90)
        {
          operator delete(v90);
        }

LABEL_45:
        ++v12;
        v8 = *a2;
        v9 = a2[1];
        v63 = 0x2E8BA2E8BA2E8BA3 * ((v9 - *a2) >> 4);
      }

      while (v12 < v63);
      ++v10;
    }

    while (v10 < v63 && !v11);

    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_69:
  v75 = *MEMORY[0x277D85DE8];
}

void sub_2622522B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  operator delete(__p);
  if (v34)
  {
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_262252358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v470 = a5;
  v12 = *(a2 + 8);
  v472 = (a2 + 8);
  v13 = *(a2 + 16);
  if (v13 != v12)
  {
    v14 = 0;
    if ((0x2E8BA2E8BA2E8BA3 * ((v13 - v12) >> 4)) <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0x2E8BA2E8BA2E8BA3 * ((v13 - v12) >> 4);
    }

    v16 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = vdupq_n_s64(v15 - 1);
    v18 = xmmword_2623A7630;
    v19 = xmmword_2623A7620;
    v20 = vdupq_n_s64(4uLL);
    v21 = *(a2 + 8);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v17, v19));
      if (vuzp1_s16(v22, *v17.i8).u8[0])
      {
        v21[27] = v14;
      }

      if (vuzp1_s16(v22, *&v17).i8[2])
      {
        v21[71] = v14 + 1;
      }

      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v18))).i32[1])
      {
        v21[115] = v14 + 2;
        v21[159] = v14 + 3;
      }

      v14 += 4;
      v18 = vaddq_s64(v18, v20);
      v19 = vaddq_s64(v19, v20);
      v21 += 176;
    }

    while (v16 != v14);
  }

  v476 = a2;
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = (a1 + 56);
  if (v24 != v23)
  {
    v26 = 0;
    if ((0x2E8BA2E8BA2E8BA3 * ((v24 - v23) >> 4)) <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = 0x2E8BA2E8BA2E8BA3 * ((v24 - v23) >> 4);
    }

    v28 = vdupq_n_s64(v27 - 1);
    v29 = xmmword_2623A7630;
    v30 = xmmword_2623A7620;
    v31 = vdupq_n_s64(4uLL);
    v32 = *(a1 + 56);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v28, v30));
      if (vuzp1_s16(v33, *v28.i8).u8[0])
      {
        v32[27] = v26;
      }

      if (vuzp1_s16(v33, *&v28).i8[2])
      {
        v32[71] = v26 + 1;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v29))).i32[1])
      {
        v32[115] = v26 + 2;
        v32[159] = v26 + 3;
      }

      v26 += 4;
      v29 = vaddq_s64(v29, v31);
      v30 = vaddq_s64(v30, v31);
      v32 += 176;
    }

    while (((v27 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v26);
  }

  if (v13 != v12)
  {
    do
    {
      *(v12 + 76) = sub_262247B68(*a3, a3[1], v12 + 16);
      *(v12 + 77) = sub_262247B68(*a4, a4[1], v12 + 16);
      v12 += 176;
    }

    while (v12 != v13);
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
  }

  while (v23 != v24)
  {
    *(v23 + 76) = sub_262247B68(*a3, a3[1], v23 + 16);
    *(v23 + 77) = sub_262247B68(*a4, a4[1], v23 + 16);
    v23 += 176;
  }

  v34 = *(a2 + 8);
  v35 = *(a2 + 16);
  if (v34 != v35)
  {
    do
    {
      v36 = v34[1];
      if (v36)
      {
        *(*&v36 + 116) = 3;
      }

      v34 += 22;
    }

    while (v34 != v35);
    v34 = *(a2 + 8);
    v35 = *(a2 + 16);
  }

  for (; v34 != v35; v34 += 22)
  {
    if (v34[9].i8[4] == 1)
    {
      v37 = v34[1];
      if (v37)
      {
        *(*&v37 + 116) = 0;
      }
    }

    else if (v34[9].i8[5] == 1 && sub_26225C370(a1, v34, *(a2 + 8), *(a2 + 16)))
    {
      v38 = v34[1];
      if (v38)
      {
        *(*&v38 + 116) = 0;
      }

      v34[9].i8[4] = 1;
    }
  }

  v39 = *(a1 + 56);
  v40 = *(a1 + 64);
  if (v39 != v40)
  {
    do
    {
      if ((*(v39 + 76) & 1) == 0)
      {
        v41 = *(v39 + 8);
        if (v41)
        {
          if (!*(v41 + 116))
          {
            *(v41 + 116) = 1;
          }
        }
      }

      v39 += 176;
    }

    while (v39 != v40);
    v39 = *(a1 + 56);
    v40 = *(a1 + 64);
  }

  if (v39 != v40)
  {
    do
    {
      if (*(v39 + 76) == 1)
      {
        v42 = *(v39 + 8);
        if (v42)
        {
          *(v42 + 116) = 0;
        }
      }

      v39 += 176;
    }

    while (v39 != v40);
    v39 = *(a1 + 56);
    v40 = *(a1 + 64);
  }

  if (v39 != v40)
  {
    v43 = v39;
    do
    {
      if (*(v43 + 76) == 1)
      {
        *(v43 + 88) = -1;
      }

      v43 += 176;
    }

    while (v43 != v40);
  }

  sub_26229F2FC(v489, v39, v40, v472, (a1 + 464));
  v45 = *(a1 + 56);
  v44 = *(a1 + 64);
  v478 = a1;
  v475 = (a1 + 56);
  if (v45 == v44)
  {
    v69 = 0;
  }

  else
  {
    v473 = 0;
    do
    {
      v47 = *(v476 + 184);
      v46 = *(v476 + 192);
      while (1)
      {
        if (v47 == v46)
        {
          v25 = v475;
          goto LABEL_99;
        }

        v48 = *v47;
        v491[0] = 0;
        v491[1] = 0;
        *&v492 = 0;
        sub_2621DCD34(v495, (*(v48 + 32) + 16), (*(v48 + 32) + 192));
        v49 = v495[0];
        v50 = (v495[0] + 4);
        v51 = v495[0] == v495[1] || v50 == v495[1];
        v52 = v495[0];
        if (!v51)
        {
          v53 = *v495[0];
          v52 = v495[0];
          v54 = (v495[0] + 4);
          do
          {
            v55 = *v54++;
            v56 = v55;
            if (v55 < v53)
            {
              v53 = v56;
              v52 = v50;
            }

            v50 = v54;
          }

          while (v54 != v495[1]);
        }

        v57 = (v52 - v495[0]) >> 2;
        v58 = *(v48 + 32);
        LODWORD(src[1]) = 0;
        src[0] = *(v58 + 32);
        DWORD2(v511) = 0;
        *&v511 = *(v58 + 48);
        sub_2621D9F60(v491, &v511 + v57 / -2);
        v60 = *(v48 + 32);
        v59 = *(v48 + 40);
        while (v60 != v59)
        {
          v61 = v60[2];
          v62 = v60[3];
          LODWORD(src[1]) = 0;
          src[0] = v61.i64[0];
          DWORD2(v511) = 0;
          *&v511 = v62.i64[0];
          v63 = *(v491[1] - 1);
          v64 = vsubq_f32(v63, v61);
          v65 = vsubq_f32(v63, v62);
          if (sqrtf(vaddv_f32(*&vmulq_f32(v64, v64))) >= sqrtf(vaddv_f32(*&vmulq_f32(v65, v65))))
          {
            v66 = src;
          }

          else
          {
            v66 = &v511;
          }

          sub_2621D9F60(v491, v66);
          v60 += 11;
        }

        if (v49)
        {
          operator delete(v49);
        }

        v480 = *(v491[1] - 1);
        v483 = *v491[0];
        operator delete(v491[0]);
        *&v67 = v483;
        *(&v67 + 1) = v480;
        *v495 = v67;
        a1 = v478;
        sub_26229DAC8(src, v45 + 2, v495, (v478 + 464));
        if (*(&v512 + 1) < 0.1 && *(&v512 + 2) < 5.0)
        {
          v68 = *(&v511 + 1);
          if (*(&v511 + 1) >= *&v511)
          {
            v68 = *&v511;
          }

          if (v68 >= 0.95)
          {
            break;
          }
        }

        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (v513[1])
        {
          *&v514 = v513[1];
          operator delete(v513[1]);
        }

        ++v47;
      }

      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      v25 = v475;
      if (v513[1])
      {
        *&v514 = v513[1];
        operator delete(v513[1]);
      }

      v45[11].i32[0] = 2;
      v473 = v48;
LABEL_99:
      v45 += 22;
    }

    while (v45 != v44);
    v45 = *(a1 + 56);
    v44 = *(a1 + 64);
    a2 = v476;
    v69 = v473;
  }

  while (v45 != v44)
  {
    if (v45[11].i32[0] == 2)
    {
      v44 = sub_2622519E8(&v45[22], v44, v45);
      v70 = *(a1 + 64);
      if (v70 != v44)
      {
        v71 = v70 - 176;
        v72 = (v70 - 176);
        v73 = (v70 - 176);
        do
        {
          v74 = *v73;
          v73 -= 22;
          (*v74)(v72);
          v71 -= 176;
          v51 = v72 == v44;
          v72 = v73;
        }

        while (!v51);
      }

      a1 = v478;
      *(v478 + 64) = v44;
    }

    else
    {
      v45 += 22;
    }
  }

  if (v69)
  {
    v75 = *(v69 + 32);
    v76 = *(v69 + 40);
    if (v75 != v76)
    {
      do
      {
        v77 = sub_2621C5224(src);
        objc_msgSend_confidence(*(v75 + 8), v78, v79, v77);
        v81 = v80;
        v82 = objc_opt_new();
        sub_26225C4FC(src, (v75 + 32), 1, v82, v81);

        sub_26224663C(v25, src, v83);
        sub_2621C50C4(src);
        v75 += 176;
      }

      while (v75 != v76);
      v44 = *(a1 + 64);
    }
  }

  sub_26229F2FC(v488, *v25, v44, v472, (a1 + 464));
  v84 = *(a2 + 8);
  v85 = *(a2 + 16);
  if (v84 != v85)
  {
    while ((v84[9].i8[4] & 1) == 0)
    {
      v84[11].i32[0] = 5;
LABEL_157:
      v84 += 22;
      if (v84 == v85)
      {
        goto LABEL_158;
      }
    }

    sub_262258CCC(v495, &v84[16], v488);
    if (obj[1])
    {
LABEL_156:
      sub_262259168(v495);
      goto LABEL_157;
    }

    objc_msgSend_confidence(*&v84[1], v86, v87);
    if (v89 < *(a1 + 532) || (v90 = vsub_f32(v84[2], v84[3]), sqrtf(vaddv_f32(vmul_f32(v90, v90))) < *(a1 + 536)))
    {
      if ((sub_26225C370(a1, v84, *(v476 + 8), *(v476 + 16)) & 1) != 0 || sub_26225AC9C(a1, v84, *(v476 + 8), *(v476 + 16)))
      {
        objc_msgSend_confidence(*&v84[1], v91, v92);
        if (v93 >= *(a1 + 576))
        {
          goto LABEL_153;
        }

        v94 = sub_2621E26D8(v488, &v84[16]);
        if (v94)
        {
          v95 = v94 + 7;
          while (1)
          {
            v95 = *v95;
            if (!v95)
            {
              break;
            }

            if (*(v95 + 10) == 2)
            {
              v96 = 0;
            }

            else
            {
              v96 = *(v95 + 52) ^ 1;
            }

            v97 = sub_262259864(a1 + 48, v95 + 2);
            objc_msgSend_confidence(*(v97 + 8), v98, v99);
            v102 = v101;
            if (v101 <= *(a1 + 576))
            {
              objc_msgSend_confidence(*&v84[1], v100, v88);
              v103 = (v102 - v104) <= 0.2;
            }

            else
            {
              v103 = 0;
            }

            if (((v96 | v103) & 1) == 0)
            {
              goto LABEL_155;
            }
          }
        }

        v105 = *(a1 + 912);
        v106 = *(a1 + 920);
        if (v105 != v106)
        {
          v107 = 0;
          do
          {
            sub_26229DAC8(src, v84 + 2, v105 + 2, (a1 + 464));
            if (LOBYTE(v513[0]) != 1)
            {
              goto LABEL_143;
            }

            v108 = *(&v511 + 1);
            if (*(&v511 + 1) >= *&v511)
            {
              v108 = *&v511;
            }

            if (v108 > 0.5)
            {
              sub_26225AA00(v105, &v84[4]);
              objc_msgSend_confidence(*&v84[1], v109, v110);
              v112 = v105[1];
              if (v112)
              {
                *(*&v112 + 108) = v111;
              }

              v113 = 1;
              v107 = 2;
            }

            else
            {
LABEL_143:
              v113 = 0;
            }

            if (__p)
            {
              *(&__p + 1) = __p;
              operator delete(__p);
            }

            if (v513[1])
            {
              *&v514 = v513[1];
              operator delete(v513[1]);
            }

            v105 += 22;
            if (v105 == v106)
            {
              v114 = 1;
            }

            else
            {
              v114 = v113;
            }
          }

          while ((v114 & 1) == 0);
          if (v107)
          {
            goto LABEL_153;
          }
        }

        sub_26224663C((a1 + 912), v84, v88);
      }

LABEL_155:
      v84[11].i32[0] = 5;
      goto LABEL_156;
    }

LABEL_153:
    v84[11].i32[0] = 4;
    sub_26224663C(v25, v84, v88);
    goto LABEL_156;
  }

LABEL_158:
  v481 = v470;
  v116 = *(a1 + 56);
  v115 = *(a1 + 64);
  if (v116 != v115)
  {
    do
    {
      sub_262258CCC(src, &v116[16], v488);
      v117 = v511;
      if (v511)
      {
        v118 = 0;
        v119 = *(v476 + 8);
        v120 = *(v476 + 16);
        do
        {
          if (sub_26225A7AC(v119, v120, v117 + 2))
          {
            v118 += *(sub_262259864(v476, v117 + 2) + 76);
          }

          v117 = *v117;
        }

        while (v117);
        if (v118)
        {
          v116[9].i16[2] = 257;
          v121 = v116[1];
          if (v121)
          {
            *(*&v121 + 116) = 0;
          }
        }
      }

      sub_262259168(src);
      v116 += 22;
    }

    while (v116 != v115);
    v116 = *(a1 + 56);
    v115 = *(a1 + 64);
  }

  v523 = 0uLL;
  v524 = 0;
  v122 = v476;
  while (v116 != v115)
  {
    sub_262258CCC(&v520, &v116[16], v488);
    if (v116[9].i8[5] == 1)
    {
      v125 = v522;
      if ((v116[9].i8[4] & 1) != 0 || !v522)
      {
        v126 = v116[1];
        if (v126 && v126[29] == 3)
        {
          v116[11].i32[0] = 2;
        }

        switch(v125)
        {
          case 0:
            v129 = v116[11].i32[0];
            v130 = v116[12].i32[1];
            if (v129 != 4)
            {
              v116[12].i32[1] = ++v130;
            }

            if (v130 < *(a1 + 580))
            {
LABEL_191:
              if (v129 == 4)
              {
                goto LABEL_202;
              }

              v132 = sub_2621E26D8(v488, &v116[16]);
              if (!v132)
              {
                goto LABEL_202;
              }

              v133 = v132[7];
              if (!v133)
              {
                goto LABEL_202;
              }

              v134 = 0;
              do
              {
                if (*(v133 + 52) == 1)
                {
                  v135 = sub_262259864(v122, v133 + 2);
                  sub_262246794(src, v135, v136);
                  if (DWORD2(__p) == 4)
                  {
                    v137 = vsub_f32(*&v511, *(&v511 + 8));
                    if (sqrtf(vaddv_f32(vmul_f32(v137, v137))) > 0.3)
                    {
                      ++v134;
                    }
                  }

                  sub_2621C50C4(src);
                }

                v133 = *v133;
              }

              while (v133);
              if (!v134)
              {
LABEL_202:
                sub_26225B888(a1, v116, v481);
              }
            }

            else
            {
              objc_msgSend_confidence(v126, v123, v124);
              if (v131 >= *(a1 + 576))
              {
                v129 = v116[11].i32[0];
                goto LABEL_191;
              }
            }

            v116[11].i32[0] = 2;
            goto LABEL_174;
          case 2:
            v128 = v521;
            if (*(v521 + 39) < 0)
            {
              sub_2621CC810(__dst, *(v521 + 16), *(v521 + 24));
            }

            else
            {
              *__dst = *(v521 + 16);
              v509 = *(v521 + 32);
            }

            v138 = *v128;
            if (*(*v128 + 39) < 0)
            {
              sub_2621CC810(v506, *(v138 + 16), *(v138 + 24));
            }

            else
            {
              *v506 = *(v138 + 16);
              v507 = *(v138 + 32);
            }

            v154 = sub_262259864(v122, __dst);
            v155 = sub_262259864(v122, v506);
            sub_2621DCD34(&v505, v154 + 2, v155 + 2);
            v157 = v505;
            if (v128[14] < v128[15])
            {
              v158 = v505[3];
              if (v158 >= v505[2])
              {
                v158 = v505[2];
              }

              v159 = v505[1];
              if (v159 >= *v505)
              {
                v159 = *v505;
              }

              if (v158 >= v159)
              {
                v158 = v159;
              }

              if (*(v138 + 56) < *(v138 + 60) && v158 >= 0.3)
              {
                v156.n128_u64[0] = v154[2];
                sub_26225B780(src, v116, v156, v154[3]);
                if (src[0])
                {
                  v160.n128_u64[0] = v155[2];
                  sub_26225B780(v495, &v511, v160, v155[3]);
                  if (LOBYTE(v495[0]) == 1)
                  {
                    objc_storeStrong(&v511 + 1, obj[1]);
                    v516 = v501;
                    v517[0] = v502[0];
                    *(v517 + 9) = *(v502 + 9);
                    v512 = v497;
                    *v513 = v498;
                    v514 = v499;
                    __p = v500;
                    std::string::operator=(&v518, &v503);
                    std::string::operator=(&v519, &v504);
                    v161 = vsub_f32(*&v512, *(&v512 + 8));
                    if (sqrtf(vaddv_f32(vmul_f32(v161, v161))) >= *(a1 + 516))
                    {
                      sub_26225B888(a1, &v511, v481);
                    }

                    v116[11].i32[0] = 0;
                    sub_2621C50C4(obj);
                    sub_2621C50C4(&v511);
LABEL_246:
                    operator delete(v157);
LABEL_247:
                    if (SHIBYTE(v507) < 0)
                    {
                      operator delete(v506[0]);
                    }

                    v122 = v476;
                    if ((SHIBYTE(v509) & 0x80000000) == 0)
                    {
                      goto LABEL_174;
                    }

                    v153 = __dst[0];
LABEL_251:
                    operator delete(v153);
                    goto LABEL_174;
                  }

                  sub_2621C50C4(obj);
                }

                sub_2621C50C4(&v511);
              }
            }

            v116[12].i32[1] = 0;
            v116[11].i32[0] = 0;
            if (v157)
            {
              goto LABEL_246;
            }

            goto LABEL_247;
          case 1:
            v116[12].i32[1] = 0;
            v127 = v521;
            if (*(v521 + 39) < 0)
            {
              sub_2621CC810(v495, *(v521 + 16), *(v521 + 24));
              v127 = v521;
            }

            else
            {
              *v495 = *(v521 + 16);
              obj[0] = *(v521 + 32);
            }

            if (sub_26225A7AC(v122[1], v122[2], v495))
            {
              v139 = sub_262259864(v122, v495);
              objc_msgSend_confidence(*&v116[1], v140, v141);
              if ((v144 <= *(a1 + 532) || (objc_msgSend_confidence(*(v139 + 8), v142, v143), v145 >= 0.5)) && (objc_msgSend_confidence(*&v116[1], v142, v143), v147 = v146, objc_msgSend_confidence(*(v139 + 8), v148, v149), (v147 - v150.n128_f32[0]) < 0.3) && (v151 = *(v127 + 56), v152 = *(v127 + 60), vabds_f32(v151, v152) >= 0.001))
              {
                if (v151 >= v152)
                {
                  v116[11].i32[0] = 1;
                  sub_26225AA00(v116, (v139 + 32));
                  objc_msgSend_confidence(*(v139 + 8), v162, v163);
                  v164 = v116[1];
                  if (v164)
                  {
                    *(*&v164 + 108) = v150.n128_u32[0];
                  }

                  v151 = *(v127 + 56);
                  v152 = *(v127 + 60);
                }

                if (v151 < v152)
                {
                  v165 = v116[2];
                  v166 = v116[3];
                  v167 = *(v139 + 16);
                  v168 = *(v139 + 24);
                  v150.n128_u64[0] = v167;
                  sub_26225B780(src, v116, v150, v168);
                  if (LOBYTE(src[0]) == 1)
                  {
                    v169 = vsub_f32(v165, v166);
                    v170 = vsub_f32(v167, v168);
                    if (vabds_f32(sqrtf(vaddv_f32(vmul_f32(v169, v169))), sqrtf(vaddv_f32(vmul_f32(v170, v170)))) >= *(a1 + 512))
                    {
                      sub_26225B888(a1, &v511, v481);
                    }

                    v116[11].i32[0] = 1;
                    sub_26225AA00(v116, (v139 + 32));
                    objc_msgSend_confidence(*(v139 + 8), v171, v172);
                    v174 = v116[1];
                    if (v174)
                    {
                      *(*&v174 + 108) = v173;
                    }

                    v116[13].i32[0] = 0;
                  }

                  else
                  {
                    v116[11].i32[0] = 0;
                  }

                  sub_2621C50C4(&v511);
                }
              }

              else
              {
                v116[11].i32[0] = 0;
              }
            }

            if ((SHIBYTE(obj[0]) & 0x80000000) == 0)
            {
              goto LABEL_174;
            }

            v153 = v495[0];
            goto LABEL_251;
        }

        v116[12].i32[1] = 0;
      }
    }

    v116[11].i32[0] = 0;
LABEL_174:
    sub_262259168(&v520);
    v116 += 22;
  }

  sub_262251928(v475);
  sub_26225B42C(v475, *(a1 + 64), v523, *(&v523 + 1), 0x2E8BA2E8BA2E8BA3 * ((*(&v523 + 1) - v523) >> 4));
  src[0] = &v523;
  sub_2621C5004(src);

  v495[0] = 0;
  v495[1] = 0;
  obj[0] = 0;
  v175 = *(a1 + 80);
  v176 = *(a1 + 88);
  src[0] = v495;
  LOBYTE(src[1]) = 0;
  if (v176 != v175)
  {
    v177 = 0x2E8BA2E8BA2E8BA3 * ((v176 - v175) >> 4);
    if (v177 < 0x1745D1745D1745ELL)
    {
      sub_2622469FC(v177);
    }

    sub_2621CBEB0();
  }

  sub_26225B42C(v495, 0, v122[4], v122[5], 0x2E8BA2E8BA2E8BA3 * ((v122[5] - v122[4]) >> 4));
  v178 = *(a1 + 56);
  for (i = *(a1 + 64); v178 != i; v178 += 22)
  {
    v180 = *(a1 + 56);
    v181 = *(a1 + 64);
    if (v180 != v181)
    {
      v182 = v178 + 16;
      v183 = v180 + 16;
      while (1)
      {
        v184 = *(v183 + 23);
        if (v184 >= 0)
        {
          v185 = *(v183 + 23);
        }

        else
        {
          v185 = v183[1];
        }

        v186 = v178[18].u8[7];
        v187 = v186.i8[0];
        if (v186.i8[0] < 0)
        {
          v186 = v178[17];
        }

        if (v185 != *&v186 || (v184 >= 0 ? (v188 = v183) : (v188 = *v183), (v189 = *v182, v187 >= 0) ? (v190 = v178 + 16) : (v190 = *v182), memcmp(v188, v190, v185)))
        {
          sub_26223FEB8(src, v178 + 2, v183 - 14);
          if (*(&v511 + 2) <= 20.0)
          {
            v191 = *src >= 0.7 && *(&src[1] + 1) <= 1.0;
            if (v191 && *(&src[1] + 1) >= 0.2)
            {
              break;
            }
          }
        }

        v192 = v183 + 6;
        v183 += 22;
        if (v192 == v181)
        {
          goto LABEL_282;
        }
      }

      v193 = v495[0];
      v194 = v495[1];
      while (v193 != v194)
      {
        sub_26223FEB8(src, v178 + 2, v193 + 2);
        if (*(&v511 + 2) <= 20.0 && *src >= 0.5 && *(&src[1] + 1) <= 1.0)
        {
          sub_26223FEB8(src, v193 + 2, v183 - 14);
          if (*(&v511 + 2) <= 10.0 && *src >= 0.9 && *(&src[1] + 1) <= 0.2)
          {
            if (v193)
            {
              v197 = *(a1 + 56);
              v198 = *(a1 + 64);
              if (v197 != v198)
              {
                v484 = 0;
                v199 = 0;
                v200 = v197 + 16;
                do
                {
                  v201 = *(v200 + 23);
                  if (v201 >= 0)
                  {
                    v202 = *(v200 + 23);
                  }

                  else
                  {
                    v202 = v200[1];
                  }

                  v203 = v178[18].u8[7];
                  v204 = v203.i8[0];
                  if (v203.i8[0] < 0)
                  {
                    v203 = v178[17];
                  }

                  if (v202 != *&v203 || (v201 >= 0 ? (v205 = v200) : (v205 = *v200), (v206 = *v182, v204 >= 0) ? (v207 = v178 + 16) : (v207 = *v182), memcmp(v205, v207, v202)))
                  {
                    sub_2621DCD34(src, v200 - 14, v178 + 2);
                    v208 = src[0];
                    v209 = *(src[0] + 2);
                    if (v209 >= *src[0])
                    {
                      v210 = *src[0];
                    }

                    else
                    {
                      v210 = *(src[0] + 2);
                    }

                    if (v210 >= 0.2)
                    {
                      v211 = *(src[0] + 3);
                      v212 = *(src[0] + 1);
                      if (v211 >= v212)
                      {
                        v213 = *(src[0] + 1);
                      }

                      else
                      {
                        v213 = *(src[0] + 3);
                      }

                      if (v213 < 0.2)
                      {
                        v214 = sub_2621DC76C(v200[(v212 < v211) - 14], *(v183 - 14), *(v183 - 13), 0.00001);
                        v215 = v484;
                        if (v214 <= 0.2)
                        {
                          v215 = v200 - 16;
                        }

                        v484 = v215;
                      }
                    }

                    else if (sub_2621DC76C(v200[(*src[0] < v209) - 14], *(v183 - 14), *(v183 - 13), 0.00001) <= 0.2)
                    {
                      v199 = v200 - 16;
                    }

                    operator delete(v208);
                  }

                  v216 = v200 + 6;
                  v200 += 22;
                }

                while (v216 != v198);
                if (v199 && v484)
                {
                  *(v183 - 8) = 1;
                  *(v199 + 120) = 1;
                  *(v484 + 120) = 1;
                }
              }
            }

            break;
          }
        }

        v193 += 22;
      }
    }

LABEL_282:
    ;
  }

  src[0] = v495;
  sub_2621C5004(src);
  v217 = v475;
  v474 = v481;
  sub_262251A98(a1, v475, v474, a8);
  sub_26229E9CC(v475, a1 + 464);
  v218 = *(a1 + 56);
  v219 = *(a1 + 64);
  while (v218 != v219)
  {
    v220 = *(a1 + 56);
    v221 = *(a1 + 64);
    if (v220 != v221)
    {
      v222 = vsub_f32(v218[2], v218[3]);
      v223 = sqrtf(vaddv_f32(vmul_f32(v222, v222)));
      v224 = v218 + 16;
      v225 = v220 + 16;
      while (1)
      {
        v226 = *(v225 + 23);
        if (v226 >= 0)
        {
          v227 = *(v225 + 23);
        }

        else
        {
          v227 = v225[1];
        }

        v228 = v218[18].u8[7];
        v229 = v228.i8[0];
        if (v228.i8[0] < 0)
        {
          v228 = v218[17];
        }

        if (v227 != *&v228 || (v226 >= 0 ? (v230 = v225) : (v230 = *v225), (v231 = *v224, v229 >= 0) ? (v232 = v218 + 16) : (v232 = *v224), memcmp(v230, v232, v227)))
        {
          v233 = vsub_f32(*(v225 - 14), *(v225 - 13));
          if (sqrtf(vaddv_f32(vmul_f32(v233, v233))) >= (v223 + 0.3))
          {
            v234 = sub_2621C92AC(v218 + 2, v225 - 14, 0);
            v235 = *(a1 + 508);
            if (v223 > *(a1 + 488))
            {
              v235 = v235 * 0.5;
            }

            if (v234 <= v235)
            {
              v236 = *(v225 - 14);
              v237 = v218[2];
              v238 = vsub_f32(*(v225 - 13), v236);
              v239 = vaddv_f32(vmul_f32(vsub_f32(v237, v236), v238));
              v240 = vaddv_f32(vmul_f32(v238, v238));
              if (v240 < 0.000001)
              {
                v240 = 0.000001;
              }

              v241 = vsub_f32(vmla_n_f32(v236, v238, v239 / v240), v237);
              v242 = sqrtf(vaddv_f32(vmul_f32(v241, v241)));
              v243 = vsub_f32(vmla_n_f32(v236, v238, vaddv_f32(vmul_f32(vsub_f32(v218[3], v236), v238)) / v240), v218[3]);
              v244 = sqrtf(vaddv_f32(vmul_f32(v243, v243)));
              if (v244 < v242)
              {
                v242 = v244;
              }

              if (v242 <= 0.15)
              {
                sub_2621DC2A8();
                v247 = vsub_f32(v245, v246);
                if ((sqrtf(vaddv_f32(vmul_f32(v247, v247))) / (v223 * cosf((v234 / 180.0) * 3.1416))) > 0.5)
                {
                  break;
                }
              }
            }
          }
        }

        v248 = v225 + 6;
        v225 += 22;
        if (v248 == v221)
        {
          goto LABEL_360;
        }
      }

LABEL_419:
      if ((v218[15].i8[0] & 1) == 0)
      {
        v218[11].i32[0] = 2;
      }

      goto LABEL_421;
    }

LABEL_360:
    if (v218[18].i8[7] < 0)
    {
      if (v218[17])
      {
LABEL_364:
        v249 = v218[2];
        v250 = v218[3];
        v251 = *(a1 + 56);
        v252 = *(a1 + 64);
        if (v251 == v252)
        {
          v277 = 0;
LABEL_406:
          v278 = vsub_f32(v249, v250);
          v279 = sqrtf(vaddv_f32(vmul_f32(v278, v278)));
          v280 = *(a1 + 552);
          if (v279 >= v280 || v277 >= 2)
          {
            v282 = v279 >= v280 && v279 < (v280 + v280);
            if (!v282 || v277 != 0)
            {
              goto LABEL_421;
            }
          }

          goto LABEL_419;
        }

        v253 = 0;
        v254 = 0;
        v255 = v218 + 16;
        while (2)
        {
          v256 = v251[18].i8[7];
          if ((v256 & 0x8000000000000000) == 0)
          {
            if (v251[18].i8[7])
            {
              v257 = v251[17];
              goto LABEL_370;
            }

            goto LABEL_403;
          }

          v257 = v251[17];
          if (!v257)
          {
            goto LABEL_403;
          }

LABEL_370:
          if (v256 >= 0)
          {
            v258 = v251[18].i8[7];
          }

          else
          {
            v258 = v257;
          }

          v259 = v218[18].u8[7];
          v260 = v259.i8[0];
          if (v259.i8[0] < 0)
          {
            v259 = v218[17];
          }

          if (v258 == *&v259)
          {
            v261 = v256 >= 0 ? &v251[16] : *&v251[16];
            v262 = *v255;
            v263 = v260 >= 0 ? &v218[16] : *v255;
            if (!memcmp(v261, v263, v258))
            {
LABEL_403:
              v251 += 22;
              if (v251 == v252)
              {
                v277 = v253 + v254;
                v217 = v475;
                goto LABEL_406;
              }

              continue;
            }
          }

          break;
        }

        sub_2621DCD34(src, v218 + 2, v251 + 2);
        if (v253)
        {
          v253 = 1;
          if (!v254)
          {
LABEL_385:
            v264 = (src[0] + 8);
            v265 = (src[0] + 12);
            if (src[0] + 8 != src[1] && v265 != src[1])
            {
              v267 = *v264;
              v268 = (src[0] + 12);
              do
              {
                v269 = *v268++;
                v270 = v269;
                if (v269 < v267)
                {
                  v267 = v270;
                  v264 = v265;
                }

                v265 = v268;
              }

              while (v268 != src[1]);
            }

            v254 = *v264 <= *(a1 + 492);
            if (!src[0])
            {
              goto LABEL_403;
            }

LABEL_402:
            operator delete(src[0]);
            goto LABEL_403;
          }
        }

        else
        {
          v271 = (src[0] + 4);
          v272 = src[0];
          if (src[0] + 4 != src[0] + 8)
          {
            v273 = *src[0];
            v272 = src[0];
            v274 = (src[0] + 4);
            do
            {
              v275 = *v274++;
              v276 = v275;
              if (v275 < v273)
              {
                v273 = v276;
                v272 = v271;
              }

              v271 = v274;
            }

            while (v274 != (src[0] + 8));
          }

          v253 = *v272 <= *(a1 + 492);
          if (!v254)
          {
            goto LABEL_385;
          }
        }

        v254 = 1;
        if (!src[0])
        {
          goto LABEL_403;
        }

        goto LABEL_402;
      }
    }

    else if (v218[18].i8[7])
    {
      goto LABEL_364;
    }

LABEL_421:
    v218 += 22;
  }

  sub_262251928(v217);
  v284 = *(a1 + 56);
  for (j = *(a1 + 64); v284 != j; v284 += 22)
  {
    v286 = vsub_f32(v284[2], v284[3]);
    if (sqrtf(vaddv_f32(vmul_f32(v286, v286))) <= 1.0)
    {
      v288 = *(a1 + 56);
      v287 = *(a1 + 64);
      if (v288 != v287)
      {
        v289 = v284 + 16;
        do
        {
          v290 = v288[2];
          v291 = v288[3];
          v292 = v288[18].i8[7];
          if (v292 >= 0)
          {
            v293 = v288[18].u8[7];
          }

          else
          {
            v293 = v288[17];
          }

          v294 = v284[18].u8[7];
          v295 = v294.i8[0];
          if (v294.i8[0] < 0)
          {
            v294 = v284[17];
          }

          if (v293 != *&v294 || (v292 >= 0 ? (v296 = v288 + 16) : (v296 = v288[16]), (v297 = *v289, v295 >= 0) ? (v298 = v284 + 16) : (v298 = *v289), memcmp(v296, v298, v293)))
          {
            if (v288[11].i32[0] != 2)
            {
              v299 = vsub_f32(v290, v291);
              if (sqrtf(vaddv_f32(vmul_f32(v299, v299))) <= 1.0 && sub_2621C92AC(v284 + 2, v288 + 2, 0) < *(a1 + 508))
              {
                v300 = 0;
                src[1] = 0;
                src[0] = 0;
                *&v511 = 0;
                v495[0] = 0;
                v495[1] = 0;
                v301 = 1;
                obj[0] = 0;
                do
                {
                  v302 = v301;
                  *v490 = sub_2621DC76C(v284[v300 + 2], v288[2], v288[3], 0.00001);
                  sub_26225B14C(src, v490);
                  *v490 = sub_2621DC76C(v288[v300 + 2], v284[2], v284[3], 0.00001);
                  sub_26225B14C(v495, v490);
                  v301 = 0;
                  v300 = 1;
                }

                while ((v302 & 1) != 0);
                *v490 = sub_2621DC76C(vmul_f32(vadd_f32(v284[2], v284[3]), 0x3F0000003F000000), v288[2], v288[3], 0.00001);
                sub_26225B14C(src, v490);
                *v490 = sub_2621DC76C(vmul_f32(vadd_f32(v288[2], v288[3]), 0x3F0000003F000000), v284[2], v284[3], 0.00001);
                sub_26225B14C(v495, v490);
                a1 = v478;
                v303 = sub_2621C92AC(v284 + 2, v288 + 2, 0);
                if (v303 >= 5.0 && v303 <= 175.0)
                {
                  v305 = v284[2];
                  v306 = vsub_f32(v284[3], v305);
                  v307 = v288[2];
                  v308 = v288[3];
                  v309 = vsub_f32(v308, v307);
                  *v304.i32 = -*&v306.i32[1];
                  v310 = vzip1_s32(v304, v306);
                  v311 = vmul_f32(v309, v310);
                  if (vaddv_f32(v311) != 0.0)
                  {
                    v312 = vmul_f32(vsub_f32(v305, v307), v310);
                    v313 = vmla_n_f32(v307, v309, vdiv_f32(vadd_f32(v312, vdup_lane_s32(v312, 1)), vadd_f32(v311, vdup_lane_s32(v311, 1))).f32[0]);
                    *v490 = sub_2621DC76C(v313, v307, v308, 0.00001);
                    sub_26225B14C(src, v490);
                    *v490 = sub_2621DC76C(v313, v284[2], v284[3], 0.00001);
                    sub_26225B14C(v495, v490);
                  }
                }

                v491[0] = 0;
                v491[1] = 0;
                *&v492 = 0;
                sub_26225B224(v491, src);
                sub_26225B224(v491, v495);
                if (v495[0])
                {
                  operator delete(v495[0]);
                }

                if (src[0])
                {
                  operator delete(src[0]);
                }

                v316 = *v491[0];
                v317 = **v491[0];
                while (v316 != *(v491[0] + 1))
                {
                  v318 = *v316++;
                  v319 = v318;
                  if (v318 < v317)
                  {
                    v317 = v319;
                  }
                }

                if (v317 <= 0.1)
                {
                  objc_msgSend_confidence(*&v284[1], v314, v315);
                  if (v322 < *(v478 + 532))
                  {
                    objc_msgSend_confidence(*&v288[1], v320, v321);
                    if (v323 >= *(v478 + 532))
                    {
                      goto LABEL_462;
                    }
                  }

                  objc_msgSend_confidence(*&v288[1], v320, v321);
                  v325 = v324;
                  objc_msgSend_confidence(*&v284[1], v326, v327);
                  if ((v325 - v328) > 0.2 || (v329 = sub_26225AADC(v478, v284, *(v478 + 56), *(v478 + 64)), v330 = sub_26225AADC(v478, v288, *(v478 + 56), *(v478 + 64)), v329 < v330) || v329 == v330 && ((v331 = sub_26225AC9C(v478, v284, *(v478 + 56), *(v478 + 64)), !(v331 | !sub_26225AC9C(v478, v288, *(v478 + 56), *(v478 + 64)))) || (objc_msgSend_confidence(*&v284[1], v332, v333), v335 = v334, objc_msgSend_confidence(*&v288[1], v336, v337), v335 < v338)))
                  {
LABEL_462:
                    v284[11].i32[0] = 2;
                  }
                }

                src[0] = v491;
                sub_2621E1CB0(src);
              }
            }
          }

          v288 += 22;
        }

        while (v288 != v287);
      }
    }
  }

  sub_262251928(v475);
  v340 = *(a1 + 56);
  v341 = *(a1 + 64);
  if (v340 != v341)
  {
    do
    {
      v342 = *(a1 + 480);
      v520 = *(v340 + 16);
      v343 = *(a1 + 56);
      v344 = *(a1 + 64);
      if (v343 != v344)
      {
        v345 = (v340 + 128);
        v346 = v520;
        v347 = vsub_f32(*(&v520 + 8), *&v520);
        *&v339 = -*&v347.i32[1];
        v348 = vzip1_s32(*&v339, v347);
        do
        {
          v349 = v343[18].i8[7];
          if (v349 >= 0)
          {
            v350 = v343[18].u8[7];
          }

          else
          {
            v350 = v343[17];
          }

          v351 = *(v340 + 151);
          v352 = v351;
          if ((v351 & 0x80u) != 0)
          {
            v351 = *(v340 + 136);
          }

          if (v350 != v351 || (v349 >= 0 ? (v353 = v343 + 16) : (v353 = v343[16]), (v354 = *v345, v352 >= 0) ? (v355 = (v340 + 128)) : (v355 = *v345), memcmp(v353, v355, v350)))
          {
            v356 = sub_2621C92AC(&v520, v343 + 2, 0);
            if (v356 >= v342 && v356 <= (180.0 - v342))
            {
              v360 = v343[2];
              v361 = vsub_f32(v343[3], v360);
              v362 = COERCE_DOUBLE(vmul_f32(v361, v348));
              v485 = *&v362;
              *&v362 = vaddv_f32(*&v362);
              if (*&v362 != 0.0)
              {
                sub_2621DC4A4(v495, &v520, v343 + 2, v362, v339, v357, v358);
                sub_2621DC654(v491, v343 + 2, *&v346, *(&v346 + 8), v363, v364, v365);
                v367 = v495[0];
                v368 = (v495[0] + 8);
                v369 = (v495[0] + 4);
                v370 = *v495[0];
                if (v495[0] + 4 == v495[0] + 8)
                {
                  v378 = v495[0];
                }

                else
                {
                  v371 = *v495[0];
                  v372 = (v495[0] + 4);
                  v373 = v495[0];
                  v374 = (v495[0] + 4);
                  do
                  {
                    v375 = *v374++;
                    v376 = v375;
                    if (v375 < v371)
                    {
                      v371 = v376;
                      v373 = v372;
                    }

                    v372 = v374;
                  }

                  while (v374 != v368);
                  v377 = *v373;
                  v378 = v495[0];
                  v379 = (v495[0] + 4);
                  do
                  {
                    v380 = *v379++;
                    v381 = v380;
                    if (v380 < v370)
                    {
                      v370 = v381;
                      v378 = v369;
                    }

                    v369 = v379;
                  }

                  while (v379 != v368);
                  v370 = v377;
                }

                v382 = (v495[0] + 12);
                if (v368 != v495[1] && v382 != v495[1])
                {
                  v384 = *v368;
                  v385 = (v495[0] + 12);
                  do
                  {
                    v386 = *v385++;
                    v387 = v386;
                    if (v386 < v384)
                    {
                      v384 = v387;
                      v368 = v382;
                    }

                    v382 = v385;
                  }

                  while (v385 != v495[1]);
                }

                v388 = vmul_f32(vsub_f32(*&v346, v360), v348);
                v389 = vmla_n_f32(v360, v361, vdiv_f32(vadd_f32(v388, vdup_lane_s32(v388, 1)), vadd_f32(v485, vdup_lane_s32(v485, 1))).f32[0]);
                v390 = (v378 - v495[0]) >> 2;
                v391 = *v368;
                if (v370 < 0.3 && v391 >= 0.3 && (*v491[0] & 2) != 0)
                {
                  *v490 = *(v340 + 16);
                  v490[v390] = v389;
                  *(v340 + 16) = *v490;
                  v392 = *(v340 + 16);
                  v393 = v392;
                  DWORD2(v393) = *(v340 + 64);
                  *&v366 = *(v340 + 24);
                  v394 = v366;
                  DWORD2(v394) = *(v340 + 68);
                  DWORD2(v392) = DWORD2(v394);
                  DWORD2(v366) = DWORD2(v393);
                  *(v340 + 32) = v393;
                  *(v340 + 48) = v394;
                  v395 = *(v340 + 8);
                  *src = v392;
                  v511 = v394;
                  v512 = v366;
                  *v513 = v393;
                  if (v395)
                  {
                    objc_copyStruct((v395 + 272), src, 64, 1, 0);
                  }
                }

                if (v370 < 0.3 && v391 < 0.3)
                {
                  *v490 = *(v340 + 16);
                  v490[v390] = v389;
                  *(v340 + 16) = *v490;
                  v396 = *(v340 + 16);
                  v397 = v396;
                  DWORD2(v397) = *(v340 + 64);
                  *&v366 = *(v340 + 24);
                  v398 = v366;
                  DWORD2(v398) = *(v340 + 68);
                  DWORD2(v396) = DWORD2(v398);
                  DWORD2(v366) = DWORD2(v397);
                  *(v340 + 32) = v397;
                  *(v340 + 48) = v398;
                  v399 = *(v340 + 8);
                  *src = v396;
                  v511 = v398;
                  v512 = v366;
                  *v513 = v397;
                  if (v399)
                  {
                    objc_copyStruct((v399 + 272), src, 64, 1, 0);
                  }
                }

                if (v491[0])
                {
                  operator delete(v491[0]);
                }

                operator delete(v367);
              }
            }
          }

          v343 += 22;
        }

        while (v343 != v344);
      }

      v340 += 176;
    }

    while (v340 != v341);
    v340 = *(a1 + 56);
    v341 = *(a1 + 64);
  }

  if (v340 != v341)
  {
    v400 = *(a1 + 492);
    v482 = v341;
    while (1)
    {
      v401 = *(a1 + 56);
      v402 = *(a1 + 64);
      if (v401 != v402)
      {
        break;
      }

LABEL_591:
      v340 += 176;
      if (v340 == v482)
      {
        goto LABEL_592;
      }
    }

    v403 = (v340 + 16);
    v404 = (v340 + 128);
    while (1)
    {
      v405 = v401[18].i8[7];
      if (v405 >= 0)
      {
        v406 = v401[18].u8[7];
      }

      else
      {
        v406 = v401[17];
      }

      v407 = *(v340 + 151);
      v408 = v407;
      if ((v407 & 0x80u) != 0)
      {
        v407 = *(v340 + 136);
      }

      if (v406 == v407)
      {
        v409 = v405 >= 0 ? &v401[16] : *&v401[16];
        v410 = *v404;
        v411 = v408 >= 0 ? (v340 + 128) : *v404;
        if (!memcmp(v409, v411, v406))
        {
          goto LABEL_590;
        }
      }

      v412 = sub_2621C92AC((v340 + 16), v401 + 2, 0);
      v414 = *(a1 + 480);
      if (v412 < v414)
      {
        goto LABEL_590;
      }

      v415 = 180.0 - v414;
      if (v415 < v412)
      {
        goto LABEL_590;
      }

      LODWORD(v415) = *(a1 + 508);
      if (v412 > *&v415 && 180.0 - *&v415 > v412)
      {
        goto LABEL_590;
      }

      v416 = *(v340 + 16);
      v417 = vsub_f32(*(v340 + 24), v416);
      v418 = v401[2];
      v420 = v401[3];
      v419 = vsub_f32(v420, v418);
      v420.f32[0] = -*&v417.i32[1];
      v421 = vzip1_s32(v420, v417);
      v422 = vmul_f32(v419, v421);
      v486 = v422;
      v422.f32[0] = vaddv_f32(v422);
      if (v422.f32[0] == 0.0)
      {
        goto LABEL_590;
      }

      sub_2621DC4A4(v490, (v340 + 16), v401 + 2, *&v422, *&v420, v415, v413);
      sub_2621DC654(&v520, v401 + 2, *(v340 + 16), *(v340 + 24), v423, v424, v425);
      v427 = v490[0];
      v428 = *(v490[0] + 1);
      if (v428 >= *v490[0])
      {
        v428 = *v490[0];
      }

      if (v428 < v400)
      {
        break;
      }

      v430 = *(v490[0] + 3);
      if (v430 >= *(v490[0] + 2))
      {
        v430 = *(v490[0] + 2);
      }

      v429 = v520;
      if (v430 >= v400)
      {
        goto LABEL_586;
      }

      if (*v520)
      {
        v479 = v520;
        sub_262246794(src, v340, v426);
        sub_262246794(v495, v340, v431);
        v432 = vmul_f32(vsub_f32(v416, v418), v421);
        v433 = vmla_n_f32(v418, v419, vdiv_f32(vadd_f32(v432, vdup_lane_s32(v432, 1)), vadd_f32(v486, vdup_lane_s32(v486, 1))).f32[0]);
        v434 = *v427;
        v435 = v427[1];
        v436 = *v427 > v435;
        v523 = v511;
        v487 = (&v523 | (8 * v436));
        *v487 = v433;
        v511 = v523;
        v437 = v523;
        v438 = v523;
        DWORD2(v438) = v514;
        *&v440 = *(&v523 + 1);
        v439 = v440;
        DWORD2(v439) = DWORD1(v514);
        DWORD2(v437) = DWORD1(v514);
        DWORD2(v440) = v514;
        v512 = v438;
        *v513 = v439;
        *v491 = v437;
        v492 = v439;
        v493 = v440;
        v494 = v438;
        if (src[1])
        {
          objc_copyStruct(src[1] + 272, v491, 64, 1, 0);
        }

        v523 = *obj;
        *(&v523 | (8 * (v434 <= v435))) = v433;
        *obj = v523;
        v441 = v523;
        v442 = v523;
        DWORD2(v442) = v499;
        *&v440 = *(&v523 + 1);
        v443 = v440;
        DWORD2(v443) = DWORD1(v499);
        DWORD2(v441) = DWORD1(v499);
        DWORD2(v440) = v499;
        v497 = v442;
        v498 = v443;
        *v491 = v441;
        v492 = v443;
        v493 = v440;
        v494 = v442;
        if (v495[1])
        {
          objc_copyStruct(v495[1] + 272, v491, 64, 1, 0);
        }

        if (sub_2621C92AC(obj, v401 + 2, 0) < *(a1 + 508))
        {
          v445 = vsub_f32(obj[0], obj[1]);
          v446 = sqrtf(vaddv_f32(vmul_f32(v445, v445)));
          if (v446 < *(a1 + 488))
          {
            v447 = vsub_f32(v401[2], v401[3]);
            if (v446 < sqrtf(vaddv_f32(vmul_f32(v447, v447))))
            {
              v448 = *(a1 + 56);
              v449 = *(a1 + 64);
              if (v448 == v449)
              {
LABEL_583:
                v523 = *v403;
                *v487 = v433;
                *(&v466 + 1) = *(&v523 + 1);
                *v403 = v523;
                *&v466 = *(v340 + 16);
                *&v444 = *(v340 + 24);
                v467 = v466;
                DWORD2(v467) = *(v340 + 64);
                v468 = v444;
                DWORD2(v468) = *(v340 + 68);
                DWORD2(v466) = DWORD2(v468);
                DWORD2(v444) = DWORD2(v467);
                *(v340 + 32) = v467;
                *(v340 + 48) = v468;
                v469 = *(v340 + 8);
                *v491 = v466;
                v492 = v468;
                v493 = v444;
                v494 = v467;
                if (v469)
                {
                  objc_copyStruct((v469 + 272), v491, 64, 1, 0);
                }
              }

              else
              {
                v450 = *(v403 + 8 * v436);
                v477 = *(v340 + 151);
                if (v477 >= 0)
                {
                  v451 = *(v340 + 151);
                }

                else
                {
                  v451 = *(v340 + 136);
                }

                v452 = v448 + 16;
                while (1)
                {
                  v453 = *(v452 + 23);
                  v454 = v453;
                  if (v453 < 0)
                  {
                    v453 = v452[1];
                  }

                  if (v453 != v451 || (v454 >= 0 ? (v455 = v452) : (v455 = *v452), (v456 = *v404, v477 >= 0) ? (v457 = (v340 + 128)) : (v457 = *v404), v458 = v449, v459 = memcmp(v455, v457, v451), v449 = v458, v459))
                  {
                    v460 = vsub_f32(v450, *(v452 - 14));
                    v461 = vmul_f32(v460, v460);
                    v462 = vsub_f32(v450, *(v452 - 13));
                    v463 = vmul_f32(v462, v462);
                    v464 = vsqrt_f32(vadd_f32(vzip1_s32(v463, v461), vzip2_s32(v463, v461)));
                    if (v464.f32[0] >= v464.f32[1])
                    {
                      v464.f32[0] = v464.f32[1];
                    }

                    if (v464.f32[0] < v400)
                    {
                      break;
                    }
                  }

                  v465 = v452 + 6;
                  v452 += 22;
                  if (v465 == v449)
                  {
                    goto LABEL_583;
                  }
                }
              }
            }
          }
        }

        sub_2621C50C4(v495);
        sub_2621C50C4(src);
        v429 = v479;
LABEL_586:
        if (!v429)
        {
          goto LABEL_588;
        }
      }

      operator delete(v429);
      v427 = v490[0];
LABEL_588:
      if (v427)
      {
        operator delete(v427);
      }

LABEL_590:
      v401 += 22;
      if (v401 == v402)
      {
        goto LABEL_591;
      }
    }

    v429 = v520;
    goto LABEL_586;
  }

LABEL_592:
  sub_2622B5BA8((a1 + 608), a1 + 48);

  sub_2622593AC(v488);
  sub_2622593AC(v489);
}

void sub_262254880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2621C50C4(&a67);
  sub_2621C50C4(&STACK[0x2F0]);
  operator delete(v67);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  sub_262259168(v68 - 224);
  STACK[0x2E0] = v68 - 176;
  sub_2621C5004(&STACK[0x2E0]);

  sub_2622593AC(&a23);
  sub_2622593AC(&a28);

  _Unwind_Resume(a1);
}

void sub_262254B98(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v293 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (*(a1 + 904) != 1)
  {
    goto LABEL_257;
  }

  v237 = (a1 + 816);
  v221 = v6;
  v222 = a4;
  v223 = v6;
  memset(v251, 0, sizeof(v251));
  v244 = a1;
  if (*(a4 + 137) != 1)
  {
    LODWORD(v245[0]) = 1;
    sub_26222296C(&v253, a4, v245);
    v273 = 0u;
    v272 = 0u;
    v271 = 0u;
    sub_262223F30(&v274, &v253);
    v280 = 0u;
    v279 = 0u;
    v278 = 0u;
    LODWORD(v281) = 1132396544;
    v271 = v275;
    v272 = v276;
    v273 = v277;
    *__p = 0u;
    v257 = 0u;
    v260 = v276;
    v261 = v277;
    v258 = 0u;
    v259 = v275;
    sub_262223F30(v262, &v274);
    v264 = v279;
    v265 = v280;
    v263 = v278;
    v266 = v281;
    *__p = v259;
    v257 = v260;
    *src = 0u;
    *v283 = 0u;
    v284 = 0u;
    *v285 = v259;
    v258 = v261;
    *&v285[16] = v260;
    *&v285[32] = v261;
    v287 = v261;
    v286 = v260;
    *&v285[48] = v259;
    sub_262223F30(v288, v262);
    v289 = v263;
    v290 = v264;
    v291 = v265;
    v292 = v266;
    *src = *v285;
    *v283 = *&v285[16];
    v284 = *&v285[32];
    sub_2622B8150(v267, src);
  }

  v248 = 0;
  v249 = 0;
  v250 = 0;
  src[0] = v251;
  sub_26224C618(src);

  v9 = *(a1 + 768);
  v10 = *(a1 + 776);
  while (v9 != v10)
  {
    src[1] = 0;
    src[0] = 0;
    v283[0] = 0;
    sub_2621D9F60(src, (v9 + 32));
    sub_2621D9F60(src, (v9 + 48));
    v11 = src[0];
    v12 = sub_262257F0C(*a2, a2[1], src[0], (src[1] - src[0]) >> 4);
    *(v9 + 76) = v12;
    v13 = *(v9 + 8);
    if (v12)
    {
      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = 0;
    }

    else
    {
      if (!v13 || *(v13 + 116))
      {
        goto LABEL_13;
      }

      v14 = 1;
    }

    *(v13 + 116) = v14;
LABEL_13:
    if (v11)
    {
      operator delete(v11);
    }

    v9 += 320;
  }

  *v245 = 0u;
  v246 = 0u;
  v247 = 1065353216;
  v16 = v248;
  v15 = v249;
  if (v248 == v249)
  {
    v19 = v244;
  }

  else
  {
    v231 = v249;
    v17.i64[0] = 0;
    v18 = vdup_n_s32(0x49742400u);
    v19 = v244;
    do
    {
      v20 = *(v244 + 768);
      for (i = *(v244 + 776); v20 != i; v20 += 20)
      {
        sub_2623A3C7C(__p, v16 + 12, *v17.i64);
        sub_2623A3C7C(&v271, v20 + 12, v22);
        *v283 = xmmword_2623A7900;
        *v284.i8 = v18;
        v284.i64[1] = -3175874560;
        *v285 = 0;
        memset(&v285[8], 0, 48);
        v23 = __p[0];
        v24 = v271;
        v285[0] = sub_262257F0C(__p[0], (__p[1] - __p[0]) >> 4, v271, (*(&v271 + 1) - v271) >> 4);
        v267[0] = &v16[8];
        v25 = sub_26225836C(v245, v16[8].i64);
        v267[0] = &v20[8];
        v26 = sub_262258800(v25 + 5, v20[8].i64);
        v27 = v26;
        v28 = *v285;
        v29 = v284;
        v30 = *v283;
        *(v26 + 5) = *src;
        *(v26 + 7) = v30;
        *(v26 + 9) = v29;
        *(v26 + 44) = v28;
        if (v26 + 5 != src)
        {
          sub_2621CA9DC(v26 + 12, *&v285[8], *&v285[16], (*&v285[16] - *&v285[8]) >> 2);
          sub_2621CA9DC(v27 + 15, *&v285[32], *&v285[40], (*&v285[40] - *&v285[32]) >> 2);
        }

        v267[0] = &v20[8];
        v31 = sub_26225836C(v245, v20[8].i64);
        v267[0] = &v16[8];
        v32 = sub_262258800(v31 + 5, v16[8].i64);
        v33 = v32;
        v34 = *v285;
        v17 = v284;
        v35 = *v283;
        *(v32 + 5) = *src;
        *(v32 + 7) = v35;
        *(v32 + 9) = v17;
        *(v32 + 44) = v34;
        if (v32 + 5 != src)
        {
          sub_2621CA9DC(v32 + 12, *&v285[8], *&v285[16], (*&v285[16] - *&v285[8]) >> 2);
          sub_2621CA9DC(v33 + 15, *&v285[32], *&v285[40], (*&v285[40] - *&v285[32]) >> 2);
        }

        if (*&v285[32])
        {
          *&v285[40] = *&v285[32];
          operator delete(*&v285[32]);
        }

        if (*&v285[8])
        {
          *&v285[16] = *&v285[8];
          operator delete(*&v285[8]);
        }

        if (v24)
        {
          operator delete(v24);
        }

        if (v23)
        {
          operator delete(v23);
        }
      }

      v16 += 20;
    }

    while (v16 != v231);
    v16 = v248;
    v15 = v249;
  }

  v36 = (v19 + 768);
  if (v16 != v15)
  {
    v37 = v16 + 8;
    do
    {
      if (v37[-4].i8[12])
      {
        sub_262258CCC(src, v37, v245);
        if (!v283[1])
        {
          v38 = &v37[-8];
          v37[-3].i32[2] = 4;
          v39 = *(v244 + 776);
          if (v39 >= *(v244 + 784))
          {
            v40 = sub_262258F3C(v36, v38);
            v41 = v244;
          }

          else
          {
            sub_262258DB0(*(v244 + 776), v38);
            v40 = v39 + 320;
            v41 = v244;
            *(v244 + 776) = v39 + 320;
          }

          *(v41 + 776) = v40;
        }

        sub_262259168(src);
      }

      else
      {
        v37[-3].i32[2] = 5;
      }

      v42 = v37 + 12;
      v37 += 20;
    }

    while (v42 != v15);
  }

  v43 = v244;
  v44 = *(v244 + 768);
  v45 = *(v244 + 776);
  if (v44 != v45)
  {
    v220 = v36;
    do
    {
      sub_262258CCC(v268, (v44 + 128), v245);
      v46 = v269;
      if (v269)
      {
        v47 = v248;
        v48 = v249;
        v49 = v269;
        while (1)
        {
          v50 = sub_2622591F0(v49 + 2, v47, v48);
          if (v50 != -1 && (*(v47 + 320 * v50 + 76) & 1) != 0)
          {
            break;
          }

          v49 = *v49;
          if (!v49)
          {
            goto LABEL_56;
          }
        }

        *(v44 + 76) = 1;
        v51 = *(v44 + 8);
        if (v51)
        {
          *(v51 + 116) = 0;
        }
      }

LABEL_56:
      v52 = *(v44 + 76) == 1 && v270 == 1;
      if (v52)
      {
        v53 = sub_2622591F0(v46 + 2, v248, v249);
        v43 = v244;
        if (v53 != -1)
        {
          v223;
          LODWORD(v252) = 1;
          sub_26222296C(&v253, v222, &v252);
          v273 = 0u;
          v272 = 0u;
          v271 = 0u;
          sub_262223F30(&v274, &v253);
          v280 = 0u;
          v279 = 0u;
          v278 = 0u;
          LODWORD(v281) = 1132396544;
          v271 = v275;
          v272 = v276;
          v273 = v277;
          *__p = 0u;
          v257 = 0u;
          v258 = 0u;
          v260 = v276;
          v261 = v277;
          v259 = v275;
          sub_262223F30(v262, &v274);
          v263 = v278;
          v264 = v279;
          v265 = v280;
          v266 = v281;
          *__p = v259;
          v257 = v260;
          v258 = v261;
          *src = 0u;
          *v283 = 0u;
          v284 = 0u;
          *v285 = v259;
          *&v285[16] = v260;
          v286 = v260;
          v287 = v261;
          *&v285[32] = v261;
          *&v285[48] = v259;
          sub_262223F30(v288, v262);
          v289 = v263;
          v290 = v264;
          v291 = v265;
          v292 = v266;
          *src = *v285;
          *v283 = *&v285[16];
          v284 = *&v285[32];
          sub_2622B8150(v267, src);
        }
      }

      else
      {
        *(v44 + 88) = 0;
        v43 = v244;
      }

      sub_262259168(v268);
      v44 += 320;
    }

    while (v44 != v45);
    v44 = v43[96];
    v45 = v43[97];
    v36 = v220;
  }

  if (v44 != v45)
  {
    do
    {
      if (*(v44 + 88) == 2)
      {
        v45 = sub_2622592AC(v44 + 320, v45, v44);
        v54 = v43[97];
        if (v54 != v45)
        {
          v55 = v54 - 320;
          v56 = (v54 - 320);
          do
          {
            (**v56)(v56);
            v55 -= 320;
            v52 = v56 == v45;
            v56 -= 40;
          }

          while (!v52);
        }

        v43[97] = v45;
      }

      else
      {
        v44 += 320;
      }
    }

    while (v44 != v45);
    v44 = *v36;
  }

  *__p = 0u;
  v257 = 0u;
  LODWORD(v258) = 1065353216;
  if (v44 == v45)
  {
    v272 = 0uLL;
    v271 = 0uLL;
    LODWORD(v273) = 1065353216;
  }

  else
  {
    do
    {
      v58 = v43[7];
      for (j = v43[8]; v58 != j; v58 = v61 + 6)
      {
        v59 = sub_2622BB4B0(v58, v44, v237);
        src[0] = (v44 + 128);
        v60 = sub_2622BBF0C(__p, (v44 + 128));
        v61 = v58 + 16;
        src[0] = v61;
        *(sub_2622BC3A0(v60 + 5, v61) + 10) = v59;
        src[0] = v61;
        v62 = sub_2622BBF0C(__p, v61);
        src[0] = (v44 + 128);
        *(sub_2622BC3A0(v62 + 5, (v44 + 128)) + 10) = v59;
      }

      v44 += 320;
      v43 = v244;
    }

    while (v44 != v45);
    v63 = v257;
    v272 = 0u;
    v271 = 0u;
    for (LODWORD(v273) = 1065353216; v63; v63 = *v63)
    {
      for (k = v63[7]; k; k = *k)
      {
        v65 = *(k + 10);
        src[0] = v63 + 2;
        v66 = sub_2622BBF0C(&v271, v63 + 2);
        src[0] = k + 2;
        *(sub_2622BC3A0(v66 + 5, k + 2) + 10) = v65;
        v67 = *(k + 10);
        src[0] = k + 2;
        v68 = sub_2622BBF0C(&v271, k + 2);
        src[0] = v63 + 2;
        *(sub_2622BC3A0(v68 + 5, v63 + 2) + 10) = v67;
      }
    }
  }

  v69 = v244;
  v70 = *(v244 + 768);
  for (__src = *(v244 + 776); v70 != __src; v70 += 40)
  {
    v72 = *(v69 + 56);
    for (m = *(v69 + 64); v72 != m; v72 += 22)
    {
      objc_msgSend_confidence(*&v72[1], v7, v8, v220);
      if (v73 >= *(v69 + 576))
      {
        src[0] = &v70[16];
        v74 = sub_2622BBF0C(__p, &v70[16]);
        src[0] = &v72[16];
        v75 = *(sub_2622BC3A0(v74 + 5, &v72[16]) + 10);
        if (!v75)
        {
          v238 = v70[28].f32[0];
          v76 = __sincosf_stret((v70[28].f32[1] / 180.0) * 3.1416);
          v78 = __sincosf_stret((v70[29].f32[0] / 180.0) * 3.1416);
          v77.f32[0] = v78.__cosval;
          v79 = v72[2];
          v80 = v72[3];
          v81 = v70[26];
          v82 = vadd_f32(v81, vmul_n_f32(__PAIR64__(LODWORD(v76.__sinval), LODWORD(v76.__cosval)), v238));
          v83 = vsub_f32(v82, v79);
          if (vaddv_f32(vmul_f32(v83, vsub_f32(v82, v80))) <= 0.00001)
          {
            v86 = vsub_f32(v80, v79);
            v87 = vaddv_f32(vmul_f32(v83, v86));
            v88 = vaddv_f32(vmul_f32(v86, v86));
            if (v88 < 0.000001)
            {
              v88 = 0.000001;
            }

            v89 = vsub_f32(vmla_n_f32(v79, v86, v87 / v88), v82);
            v85 = v244;
            v84 = sqrtf(vaddv_f32(vmul_f32(v89, v89))) < *(v244 + 860);
          }

          else
          {
            v84 = 0;
            v85 = v244;
          }

          v77.i32[1] = LODWORD(v78.__sinval);
          v90 = vadd_f32(v81, vmul_n_f32(v77, v238));
          v91 = vsub_f32(v90, v79);
          if (vaddv_f32(vmul_f32(v91, vsub_f32(v90, v80))) <= 0.00001)
          {
            v93 = vsub_f32(v80, v79);
            v94 = vaddv_f32(vmul_f32(v91, v93));
            v95 = vaddv_f32(vmul_f32(v93, v93));
            if (v95 < 0.000001)
            {
              v95 = 0.000001;
            }

            v96 = vsub_f32(vmla_n_f32(v79, v93, v94 / v95), v90);
            v92 = sqrtf(vaddv_f32(vmul_f32(v96, v96))) < *(v85 + 860);
          }

          else
          {
            v92 = 0;
          }

          if (!v84 && !v92 || (v97 = *(v85 + 56), v98 = *(v85 + 64), v97 == v98))
          {
            v75 = 0;
          }

          else
          {
            v75 = 0;
            v99 = v97 + 16;
            do
            {
              v100 = v72[18].i8[7];
              if (v100 >= 0)
              {
                v101 = v72[18].u8[7];
              }

              else
              {
                v101 = v72[17];
              }

              v102 = v99[2].u8[7];
              v103 = v102.i8[0];
              if (v102.i8[0] < 0)
              {
                v102 = v99[1];
              }

              if (v101 != *&v102 || (v100 >= 0 ? (v104 = v72 + 16) : (v104 = v72[16]), (v105 = *v99, v103 >= 0) ? (v106 = v99) : (v106 = *v99), memcmp(v104, v106, v101)))
              {
                sub_26229DAC8(src, v72 + 2, v99 - 14, (v244 + 464));
                if (BYTE6(src[1]) == 1)
                {
                  v267[0] = v99;
                  v107 = sub_2622BBF0C(__p, v99);
                  v267[0] = &v70[16];
                  if (*(sub_2622BC3A0(v107 + 5, &v70[16]) + 10) == -1)
                  {
                    v75 = 1;
                  }
                }

                if (*&v285[32])
                {
                  *&v285[40] = *&v285[32];
                  operator delete(*&v285[32]);
                }

                if (*&v285[8])
                {
                  *&v285[16] = *&v285[8];
                  operator delete(*&v285[8]);
                }
              }

              v108 = v99 + 6;
              v99 += 22;
            }

            while (v108 != v98);
          }
        }

        src[0] = &v72[16];
        v109 = sub_2622BBF0C(&v271, &v72[16]);
        src[0] = &v70[16];
        *(sub_2622BC3A0(v109 + 5, &v70[16]) + 10) = v75;
        src[0] = &v70[16];
        v110 = sub_2622BBF0C(&v271, &v70[16]);
        src[0] = &v72[16];
        *(sub_2622BC3A0(v110 + 5, &v72[16]) + 10) = v75;
        v69 = v244;
      }
    }
  }

  v111 = *(v69 + 56);
  v112 = *(v69 + 64);
  if (v111 != v112)
  {
    do
    {
      v113 = *(v244 + 768);
      v114 = *(v244 + 776);
      if (v113 != v114)
      {
        v115 = v113 + 128;
        while (1)
        {
          if ((*(v115 - 52) & 1) != 0 || *(v111 + 76) == 1)
          {
            src[0] = (v111 + 128);
            v116 = sub_2622BBF0C(&v271, (v111 + 128));
            src[0] = v115;
            if (!*(sub_2622BC3A0(v116 + 5, v115) + 10))
            {
              break;
            }
          }

          v117 = v115 + 192;
          v115 += 320;
          if (v117 == v114)
          {
            goto LABEL_137;
          }
        }

        *(v111 + 88) = 2;
      }

LABEL_137:
      v111 += 176;
    }

    while (v111 != v112);
    v69 = v244;
    v111 = *(v244 + 56);
    v112 = *(v244 + 64);
  }

  if (v111 != v112)
  {
    do
    {
      if (*(v111 + 88) == 2)
      {
        v112 = sub_2622519E8(v111 + 176, v112, v111);
        v118 = *(v69 + 64);
        if (v118 != v112)
        {
          v119 = v118 - 176;
          v120 = (v118 - 176);
          v121 = (v118 - 176);
          do
          {
            v122 = *v121;
            v121 -= 22;
            (*v122)(v120);
            v119 -= 176;
            v52 = v120 == v112;
            v120 = v121;
          }

          while (!v52);
        }

        v69 = v244;
        *(v244 + 64) = v112;
      }

      else
      {
        v111 += 176;
      }
    }

    while (v111 != v112);
    v111 = *(v69 + 56);
  }

  if (v111 != v112)
  {
    v224 = v112;
    while (1)
    {
      v123 = *(v69 + 768);
      v124 = *(v69 + 776);
      if (v123 != v124)
      {
        break;
      }

LABEL_223:
      v111 += 176;
      if (v111 == v224)
      {
        if (*(v69 + 64) != *(v69 + 56))
        {
          v198 = *(v69 + 768);
          v199 = *(v69 + 776);
          if (v198 != v199)
          {
            do
            {
              v200 = *(v198 + 228);
              v201 = *(v198 + 232);
              v202 = v201 - v200;
              if (v201 >= v200)
              {
                v203 = 0;
                do
                {
                  v243 = *(v198 + 224);
                  v204 = __sincosf_stret((v200 / 180.0) * 3.1416);
                  v205 = *(v198 + 208);
                  src[1] = 0;
                  src[0] = 0;
                  v283[0] = 0;
                  v206 = *(v244 + 56);
                  v207 = *(v244 + 64);
                  v208 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v204.__sinval), LODWORD(v204.__cosval)), v243), *&v205);
                  do
                  {
                    LODWORD(v267[0]) = sub_2621DC76C(v208, v206[2], v206[3], 0.00001);
                    sub_2621C8F2C(src, v267);
                    v206 += 22;
                  }

                  while (v206 != v207);
                  v209 = (src[0] + 4);
                  v210 = src[0] == src[1] || v209 == src[1];
                  v211 = src[0];
                  if (!v210)
                  {
                    v212 = *src[0];
                    v211 = src[0];
                    v213 = (src[0] + 4);
                    do
                    {
                      v214 = *v213++;
                      v215 = v214;
                      if (v214 < v212)
                      {
                        v212 = v215;
                        v211 = v209;
                      }

                      v209 = v213;
                    }

                    while (v213 != src[1]);
                  }

                  if (*v211 < *(v244 + 860))
                  {
                    ++v203;
                  }

                  if (src[0])
                  {
                    operator delete(src[0]);
                  }

                  v52 = v200++ == v201;
                }

                while (!v52);
                if ((v203 / (v202 + 1)) >= *(v244 + 852))
                {
                  *(v198 + 88) = 2;
                }
              }

              v198 += 320;
            }

            while (v198 != v199);
            v69 = v244;
            v198 = *(v244 + 768);
            v199 = *(v244 + 776);
          }

          while (v198 != v199)
          {
            if (*(v198 + 88) == 2)
            {
              v199 = sub_2622592AC(v198 + 320, v199, v198);
              v216 = *(v69 + 776);
              if (v216 != v199)
              {
                v217 = v216 - 320;
                v218 = (v216 - 320);
                do
                {
                  (**v218)(v218);
                  v217 -= 320;
                  v52 = v218 == v199;
                  v218 -= 40;
                }

                while (!v52);
              }

              v69 = v244;
              *(v244 + 776) = v199;
            }

            else
            {
              v198 += 320;
            }
          }
        }

        goto LABEL_256;
      }
    }

    v225 = *(v69 + 776);
    while (2)
    {
      if ((v123[4].i8[12] & 1) == 0 && *(v111 + 76) != 1)
      {
        goto LABEL_222;
      }

      src[0] = (v111 + 128);
      v125 = sub_2622BBF0C(&v271, (v111 + 128));
      src[0] = &v123[8];
      if (*(sub_2622BC3A0(v125 + 5, v123[8].i64) + 10) != 1)
      {
        goto LABEL_222;
      }

      v126 = *(v111 + 48);
      v127 = *(v111 + 32);
      DWORD2(v127) = 0;
      v239 = v127;
      src[0] = *(v111 + 32);
      v253 = v126;
      DWORD2(v126) = 0;
      *v229 = v126;
      memset(v267, 0, 24);
      LODWORD(src[1]) = 0;
      LODWORD(v254) = 0;
      v128 = src;
      v129 = 1;
      do
      {
        v130 = v129;
        v131 = v123[13];
        v132 = vsubq_f32(*v128, v131);
        v133 = vmulq_f32(v132, v132);
        v133.f32[0] = sqrtf(v133.f32[2] + vaddv_f32(*v133.f32));
        if (v133.f32[0] < 0.000001)
        {
          v133.f32[0] = 0.000001;
        }

        v134 = vdivq_f32(v132, vdupq_lane_s32(*v133.f32, 0));
        v135 = vmlaq_f32(vmlaq_n_f32(v131, v134, v123[14].f32[0]), 0, v134);
        v136 = vsubq_f32(*v128, v135);
        v137 = vmulq_f32(v136, v136);
        if (sqrtf(v137.f32[2] + vaddv_f32(*v137.f32)) < *(v69 + 860) && sub_2623A3EA4(v123 + 12, v135, 0.0))
        {
          LODWORD(v268[0]) = 1;
          sub_2621C7CD0(v267, v268);
        }

        else
        {
          LODWORD(v268[0]) = 0;
          sub_2621C7CD0(v267, v268);
        }

        v129 = 0;
        v128 = &v253;
      }

      while ((v130 & 1) != 0);
      v140 = v267[0];
      v142 = *v267[0];
      v141 = *(v267[0] + 1);
      if (!(*v267[0] + v141))
      {
        *(&v143 + 1) = *(&v239 + 1);
        v230 = v239;
        goto LABEL_166;
      }

      if (v142 != 1)
      {
        if (!v142)
        {
          *(&v143 + 1) = *(&v239 + 1);
          v230 = v239;
          if (v141 == 1)
          {
            goto LABEL_166;
          }
        }

LABEL_181:
        *(v111 + 88) = 2;
LABEL_221:
        operator delete(v140);
        v124 = v225;
LABEL_222:
        v123 += 20;
        if (v123 == v124)
        {
          goto LABEL_223;
        }

        continue;
      }

      break;
    }

    v138 = *v229;
    *(&v143 + 1) = *(&v239 + 1);
    *v229 = v239;
    v230 = v138;
    if (v141)
    {
      goto LABEL_181;
    }

LABEL_166:
    v145 = *(v111 + 32);
    v144 = *(v111 + 48);
    v146 = *(v69 + 872);
    v283[0] = 0;
    src[0] = 0;
    src[1] = 0;
    v147 = *v123[13].f32;
    v232 = v144;
    __srca = v145;
    v148 = vsub_f32(*&v144, *&v145);
    v149 = vaddv_f32(vmul_f32(vsub_f32(v147, *&v145), v148));
    *&v139 = vmul_f32(v148, v148);
    *&v139 = vaddv_f32(*&v139);
    if (*&v139 >= 0.000001)
    {
      v150 = *&v139;
    }

    else
    {
      v150 = 0.000001;
    }

    *&v143 = vmla_n_f32(*&v145, v148, v149 / v150);
    v151 = vsub_f32(*&v143, v147);
    v152 = sqrtf(vaddv_f32(vmul_f32(v151, v151)));
    v153 = v123[14].f32[0];
    if (v152 >= v153)
    {
      if (v152 <= (v153 + v146))
      {
        *v268 = v143;
        sub_2621D9F60(src, v268);
      }
    }

    else
    {
      *&v138 = sqrtf((v153 * v153) - (v152 * v152));
      *&v139 = sqrtf(*&v139);
      if (*&v139 < 0.000001)
      {
        *&v139 = 0.000001;
      }

      v154 = vdiv_f32(v148, vdup_lane_s32(*&v139, 0));
      *&v139 = vmla_n_f32(*&v143, v154, *&v138);
      *&v143 = vmls_lane_f32(*&v143, v154, *&v138, 0);
      *v268 = v139;
      v252 = v143;
      v155 = vsub_f32(*&v139, *&v143);
      if (sqrtf(vaddv_f32(vmul_f32(v155, v155))) >= 0.01)
      {
        sub_2621D9F60(src, v268);
        v156 = &v252;
      }

      else
      {
        v156 = v268;
      }

      sub_2621D9F60(src, v156);
    }

    *&v157 = __srca;
    DWORD2(v157) = 0;
    v158.i32[1] = DWORD1(v228);
    HIDWORD(v157) = v227;
    *__srcb = v157;
    *&v157 = v232;
    DWORD2(v157) = 0;
    HIDWORD(v157) = HIDWORD(v228);
    v233 = v157;
    v253 = 0;
    v254 = 0;
    v255 = 0;
    v159 = src[0];
    v160 = src[1];
    for (n = src[0]; n != v160; ++n)
    {
      v162 = *(v244 + 864);
      *v158.i32 = (v123[14].f32[0] * 6.2832) / (*(v244 + 868) * 360.0);
      v240 = *n;
      v163 = sub_2623A3EA4(v123 + 12, *n, *&v158);
      v164 = vsub_f32(*v240.f32, __srcb[0]);
      v165 = vsub_f32(*v240.f32, *&v233);
      v166 = vaddv_f32(vmul_f32(v164, v165));
      v167 = vmul_f32(v164, v164);
      v158 = vmul_f32(v165, v165);
      v168 = vsqrt_f32(vadd_f32(vzip1_s32(v167, v158), vzip2_s32(v167, v158)));
      if (v168.f32[0] < v168.f32[1])
      {
        v168.f32[0] = v168.f32[1];
      }

      if ((v166 / v168.f32[0]) <= v162 && v163)
      {
        sub_2621D9F60(&v253, n);
      }
    }

    if (v159)
    {
      operator delete(v159);
    }

    v169 = v253;
    v170 = (v254 - v253) >> 4;
    v69 = v244;
    switch(v170)
    {
      case 2:
        v172 = *(v253 + 16);
        v173 = vsub_f32(*v172.i8, *&v230);
        v174 = vmul_f32(v173, v173);
        v175 = vsub_f32(*v253, *&v230);
        v176 = vmul_f32(v175, v175);
        v177 = vsqrt_f32(vadd_f32(vzip1_s32(v176, v174), vzip2_s32(v176, v174)));
        v171 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(v177, vdup_lane_s32(v177, 1)), 0)), 0x1FuLL)), *v253, v172);
        break;
      case 1:
        v171 = *v253;
        break;
      case 0:
        v171 = *v229;
        break;
      default:
LABEL_218:
        if (v169)
        {
          operator delete(v169);
        }

        v227 = HIDWORD(__srcb[1]);
        v228 = v233;
        goto LABEL_221;
    }

    v241 = v171;
    *&v178 = v230;
    *(&v178 + 1) = v171.i64[0];
    v179 = v230;
    DWORD2(v179) = *(v111 + 64);
    v180 = v171;
    v180.i32[2] = *(v111 + 68);
    *(v111 + 16) = v178;
    *(v111 + 32) = v179;
    v181 = v230;
    DWORD2(v181) = v180.i32[2];
    v171.i32[2] = DWORD2(v179);
    *(v111 + 48) = v180;
    v182 = *(v111 + 8);
    *src = v181;
    *v283 = v180;
    v284 = v171;
    *v285 = v179;
    if (v182)
    {
      objc_copyStruct((v182 + 272), src, 64, 1, 0);
    }

    LODWORD(v179) = v123[14].i32[0];
    v183 = sub_2623A3DE4(v123[13], *&v179, v241);
    v268[0] = 0xFFFFFFFFLL;
    LODWORD(v268[1]) = 1;
    v283[0] = 0;
    src[0] = 0;
    src[1] = 0;
    sub_2621DD5D0(src, v268, &v268[1] + 4, 3uLL);
    if (src[0] == src[1])
    {
      v188 = 0;
      if (src[0])
      {
        goto LABEL_210;
      }
    }

    else
    {
      v184 = 0;
      v185 = 0.0;
      v186 = src[0];
      do
      {
        v187 = v183 + (360 * *v186);
        if (v123[14].f32[1] <= v187 && v123[14].f32[2] > v187)
        {
          ++v184;
          v185 = v183 + (360 * *v186);
        }

        ++v186;
      }

      while (v186 != src[1]);
      if (v184 == 1)
      {
        v188 = LODWORD(v185) | 0x100000000;
      }

      else
      {
        v188 = 0;
      }

      if (src[0])
      {
LABEL_210:
        operator delete(src[0]);
      }
    }

    if (HIDWORD(v188))
    {
      v242 = v123[14].f32[0];
      v189 = __sincosf_stret((v123[14].f32[1] / 180.0) * 3.1416);
      v190 = __sincosf_stret((v123[14].f32[2] / 180.0) * 3.1416);
      v191 = v123[13];
      *&v192 = v123[13].i64[0];
      *&v193 = v192;
      *(&v193 + 1) = vadd_f32(*v191.f32, vmul_n_f32(__PAIR64__(LODWORD(v189.__sinval), LODWORD(v189.__cosval)), v242));
      *src = v193;
      *(&v192 + 1) = vadd_f32(*v191.f32, vmul_n_f32(__PAIR64__(LODWORD(v190.__sinval), LODWORD(v190.__cosval)), v242));
      *v268 = v192;
      *&v252 = v191.i64[0];
      *(&v252 + 1) = v230;
      v194 = sub_2621C92AC(&v252, src, 0);
      v195 = sub_2621C92AC(&v252, v268, 0);
      v196.n128_u32[0] = v188;
      if (v194 >= v195)
      {
        v197 = v123[14].f32[1];
      }

      else
      {
        v197 = *&v188;
        v196.n128_u32[0] = v123[14].u32[2];
      }

      sub_2622BBD94(v123, v197, v196);
    }

    goto LABEL_218;
  }

LABEL_256:
  sub_2622BC7FC(&v271);
  sub_2622BC7FC(__p);
  sub_2622593AC(v245);
  src[0] = &v248;
  sub_26224C618(src);
  v6 = v221;
LABEL_257:

  v219 = *MEMORY[0x277D85DE8];
}

void sub_26225792C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46)
{
  STACK[0x420] = &a43;
  sub_2622B85B0(&STACK[0x420]);
  STACK[0x358] = &unk_2874EF0B8;
  if (STACK[0x3D8])
  {
    sub_2621D1B78(STACK[0x3D8]);
  }

  STACK[0x420] = &a46;
  sub_26224C618(&STACK[0x420]);

  _Unwind_Resume(a1);
}

float sub_262257E68(int32x2_t *a1, const char *a2, uint64_t a3, int32x2_t a4, int32x2_t a5)
{
  v6 = vdup_lane_s32(a4, 0);
  a4.i32[1] = a5.i32[0];
  v7 = vbsl_s8(vcgt_f32(vrev64_s32(a4), a4), vdup_lane_s32(a5, 0), v6);
  *&v8 = a1[2];
  *&v9 = a1[3];
  *&v10 = v8;
  *&v11 = v9;
  *(&v9 + 1) = vdup_lane_s32(v7, 1);
  *(&v8 + 1) = *(&v9 + 1);
  *(&v10 + 1) = v7;
  *(&v11 + 1) = v7;
  a1[8] = vrev64_s32(v7);
  v12 = a1[1];
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v9;
  v14[3] = v8;
  if (v12)
  {
    objc_copyStruct((*&v12 + 272), v14, 64, 1, 0);
  }

  return sub_262246BD0(a1, a2, a3);
}

uint64_t sub_262257F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 && a1 && a2 && a4)
  {
    operator new[]();
  }

  return 0;
}

void *sub_26225836C(void *a1, void *a2)
{
  v4 = sub_2621D1580(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2622587E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_262259818(va);
  _Unwind_Resume(a1);
}

void *sub_262258800(void *a1, void *a2)
{
  v4 = sub_2621D1580(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_2621D19D0(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_262258C88(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_262258CCC(uint64_t a1, void *a2, void *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  result = sub_2621E26D8(a3, a2);
  if (result)
  {
    for (i = result[7]; i; i = *i)
    {
      if (*(i + 88) == 1)
      {
        result = sub_262258800(a1, i + 2);
        v6 = result;
        v7 = *(i + 5);
        v8 = *(i + 7);
        v9 = *(i + 9);
        *(result + 44) = *(i + 44);
        *(result + 9) = v9;
        *(result + 7) = v8;
        *(result + 5) = v7;
        if (i != result)
        {
          sub_2621CA9DC(result + 12, i[12], i[13], (i[13] - i[12]) >> 2);
          result = sub_2621CA9DC(v6 + 15, i[15], i[16], (i[16] - i[15]) >> 2);
        }
      }
    }
  }

  return result;
}

uint64_t sub_262258DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2621C5224(a1);
  *v5 = off_2874EE620;
  v5[22] = 0;
  v5[24] = &off_2874EE600;
  v6 = (v5 + 36);
  v5[37] = 0;
  v5[38] = 0;
  v5[36] = 0;
  v9 = objc_msgSend_copy(*(a2 + 8), v7, v8, v4);
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v13 = objc_msgSend_copy(*(a2 + 176), v11, v12);
  v14 = *(a1 + 176);
  *(a1 + 176) = v13;

  *(a1 + 16) = *(a2 + 16);
  v15 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v15;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  std::string::operator=((a1 + 128), (a2 + 128));
  std::string::operator=((a1 + 152), (a2 + 152));
  v16 = *(a2 + 208);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 208) = v16;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  if (a1 != a2)
  {
    sub_26225945C(v6, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 3);
  }

  *(a1 + 312) = *(a2 + 312);
  return a1;
}

void sub_262258F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2621C512C(va);

  sub_2621C50C4(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_262258F3C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCLL)
  {
    sub_2621CBEB0();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 6);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 6) >= 0x66666666666666)
  {
    v5 = 0xCCCCCCCCCCCCCCLL;
  }

  else
  {
    v5 = v3;
  }

  v21 = a1;
  if (v5)
  {
    if (v5 <= 0xCCCCCCCCCCCCCCLL)
    {
      operator new();
    }

    sub_2621C6A34();
  }

  v18 = 0;
  v19 = 320 * v2;
  v20 = 320 * v2;
  sub_262258DB0(320 * v2, a2);
  v6 = *a1;
  v7 = a1[1];
  v8 = 320 * v2 - &v7[-*a1];
  *&v20 = 320 * v2 + 320;
  if (v7 != v6)
  {
    v9 = 0;
    v10 = v19 - ((v7 - v6) >> 6 << 6) - 320;
    v11 = v6;
    v12 = v8;
    do
    {
      sub_262258DB0(v12, v11);
      v11 += 320;
      v12 += 320;
      v9 -= 320;
      v10 += 320;
    }

    while (v11 != v7);
    v13 = v6;
    do
    {
      (**v6)(v6);
      v6 += 320;
      v13 += 320;
    }

    while (v6 != v7);
  }

  v14 = *a1;
  *a1 = v8;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_262259620(&v18);
  return v17;
}

void sub_262259108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_262259620(va);
  _Unwind_Resume(a1);
}

uint64_t sub_262259168(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 15);
      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 12);
      if (v5)
      {
        *(v2 + 13) = v5;
        operator delete(v5);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_2622591F0(const void **a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (v4 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 6) <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 6);
  }

  for (i = a2 + 128; ; i += 320)
  {
    v9 = *(i + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(i + 8);
    }

    if (v9 == v5)
    {
      v11 = v10 >= 0 ? i : *i;
      if (!memcmp(v11, v6, v5))
      {
        break;
      }
    }

    if (v7 == ++v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t sub_2622592AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      objc_storeStrong((a3 + v6 + 8), *(a1 + v6 + 8));
      v9 = *(a1 + v6 + 16);
      v10 = *(a1 + v6 + 48);
      *(v7 + 32) = *(a1 + v6 + 32);
      *(v7 + 48) = v10;
      *(v7 + 16) = v9;
      v11 = *(a1 + v6 + 64);
      v12 = *(a1 + v6 + 80);
      v13 = *(a1 + v6 + 96);
      *(v7 + 105) = *(a1 + v6 + 105);
      *(v7 + 80) = v12;
      *(v7 + 96) = v13;
      *(v7 + 64) = v11;
      std::string::operator=((a3 + v6 + 128), (a1 + v6 + 128));
      std::string::operator=((a3 + v6 + 152), (a1 + v6 + 152));
      objc_storeStrong((a3 + v6 + 176), *(a1 + v6 + 176));
      v14 = *(a1 + v6 + 208);
      *(v7 + 220) = *(a1 + v6 + 220);
      *(v7 + 208) = v14;
      v15 = *(a1 + v6 + 240);
      v16 = *(a1 + v6 + 272);
      *(v7 + 256) = *(a1 + v6 + 256);
      *(v7 + 272) = v16;
      *(v7 + 240) = v15;
      if (a1 != a3)
      {
        sub_26225945C(v7 + 288, *(v8 + 288), *(v8 + 296), (*(v8 + 296) - *(v8 + 288)) >> 3);
      }

      *(v7 + 312) = *(v8 + 312);
      v6 += 320;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

uint64_t sub_2622593AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_26225940C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_26225940C(uint64_t a1)
{
  sub_262259168(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_26225945C(uint64_t a1, void **a2, void **a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 3)
  {
    if (v8)
    {
      v9 = *(a1 + 8);
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *--v9;
        }

        while (v9 != v8);
        v10 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 61))
    {
      v12 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v12 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        sub_2622317F8(v13);
      }
    }

    sub_2621CBEB0();
  }

  v14 = *(a1 + 8) - v8;
  if (a4 <= v14 >> 3)
  {
    sub_2622595C4(a2, a3, v8);
    v20 = v19;
    v21 = *(a1 + 8);
    if (v21 != v19)
    {
      do
      {
        v22 = *(v21 - 8);
        v21 -= 8;
      }

      while (v21 != v20);
    }

    *(a1 + 8) = v20;
  }

  else
  {
    v15 = sub_2622595C4(a2, (a2 + v14), v8);
    v16 = *(a1 + 8);
    if (v15 != a3)
    {
      v17 = v15;
      do
      {
        v18 = *v17++;
        *v16++ = v18;
      }

      while (v17 != a3);
    }

    *(a1 + 8) = v16;
  }
}

void **sub_2622595C4(void **a1, void **a2, id *location)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4++;
      objc_storeStrong(location++, v6);
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t sub_262259620(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 320;
    (**(i - 320))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2622596A8(uint64_t a1)
{
  *a1 = off_2874EE620;
  v2 = (a1 + 288);
  sub_2621C512C(&v2);

  sub_2621C50C4(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_26225972C(uint64_t a1)
{
  *a1 = off_2874EE620;
  v3 = (a1 + 288);
  sub_2621C512C(&v3);

  return sub_2621C50C4(a1);
}

void sub_26225979C(char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 15);
    if (v3)
    {
      *(__p + 16) = v3;
      operator delete(v3);
    }

    v4 = *(__p + 12);
    if (v4)
    {
      *(__p + 13) = v4;
      operator delete(v4);
    }

    if (__p[39] < 0)
    {
      operator delete(*(__p + 2));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_262259818(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_26225940C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_262259864(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    return a1 + 208;
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  for (i = v3 + 128; ; i += 176)
  {
    v9 = *(i + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(i + 8);
    }

    if (v9 == v6)
    {
      v11 = v10 >= 0 ? i : *i;
      if (!memcmp(v11, v7, v6))
      {
        break;
      }
    }

    v12 = i + 48;
    if (v12 == v4)
    {
      return a1 + 208;
    }
  }

  return i - 128;
}

uint64_t sub_262259910(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v79 = *v11;
        if (*(**a3 + 4 * *v10) > *(**a3 + 4 * *v11))
        {
          *v11 = *v10;
          *v10 = v79;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v87 = v11 + 1;
      v88 = v11[1];
      v89 = v11 + 2;
      v90 = v11[2];
      v91 = **a3;
      v92 = *(v91 + 4 * v88);
      v93 = *v11;
      v94 = *(v91 + 4 * *v11);
      v95 = *(v91 + 4 * v90);
      if (v92 <= v94)
      {
        if (v95 <= v92)
        {
          goto LABEL_169;
        }

        *v87 = v90;
        *v89 = v88;
        v96 = v11;
        v97 = (v11 + 1);
        result = v88;
        if (v95 > v94)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v96 = v11;
        v97 = (v11 + 2);
        result = *v11;
        if (v95 <= v92)
        {
          *v11 = v88;
          v11[1] = v93;
          v96 = v11 + 1;
          v97 = (v11 + 2);
          result = v93;
          if (v95 <= v94)
          {
LABEL_169:
            v88 = v90;
            goto LABEL_170;
          }
        }

LABEL_160:
        *v96 = v90;
        *v97 = v93;
        v88 = result;
      }

LABEL_170:
      if (*(v91 + 4 * *v10) > *(v91 + 4 * v88))
      {
        *v89 = *v10;
        *v10 = v88;
        v149 = *v89;
        v150 = *v87;
        v151 = *(v91 + 4 * v149);
        if (v151 > *(v91 + 4 * v150))
        {
          v11[1] = v149;
          v11[2] = v150;
          v152 = *v11;
          if (v151 > *(v91 + 4 * *v11))
          {
            *v11 = v149;
            v11[1] = v152;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v78 = **a3;

      return sub_26225A334(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v78);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v98 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v99 = **a3;
            v100 = 8;
            v101 = v11;
            do
            {
              v103 = *v101;
              v102 = v101[1];
              v101 = v98;
              v104 = *(v99 + 4 * v102);
              if (v104 > *(v99 + 4 * v103))
              {
                v105 = v100;
                while (1)
                {
                  *(v11 + v105) = v103;
                  v106 = v105 - 8;
                  if (v105 == 8)
                  {
                    break;
                  }

                  v103 = *(v11 + v105 - 16);
                  v105 -= 8;
                  if (v104 <= *(v99 + 4 * v103))
                  {
                    v107 = (v11 + v106);
                    goto LABEL_123;
                  }
                }

                v107 = v11;
LABEL_123:
                *v107 = v102;
              }

              v98 = v101 + 1;
              v100 += 8;
            }

            while (v101 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v144 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v145 = **a3;
          do
          {
            v147 = *v9;
            v146 = v9[1];
            v9 = v144;
            v148 = *(v145 + 4 * v146);
            if (v148 > *(v145 + 4 * v147))
            {
              do
              {
                *v144 = v147;
                v147 = *(v144 - 2);
                --v144;
              }

              while (v148 > *(v145 + 4 * v147));
              *v144 = v146;
            }

            v144 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v108 = (v12 - 2) >> 1;
        v109 = *a3;
        v110 = v108;
        do
        {
          v111 = v110;
          if (v108 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = &v11[v112];
            v114 = 2 * v110 + 2;
            v115 = *v109;
            if (v114 < v12 && *(v115 + 4 * *v113) > *(v115 + 4 * v113[1]))
            {
              ++v113;
              v112 = 2 * v111 + 2;
            }

            result = &v11[v111];
            v116 = *v113;
            v117 = *result;
            v118 = *(v115 + 4 * *result);
            if (*(v115 + 4 * *v113) <= v118)
            {
              do
              {
                v119 = v113;
                *result = v116;
                if (v108 < v112)
                {
                  break;
                }

                v120 = 2 * v112;
                v112 = (2 * v112) | 1;
                v113 = &v11[v112];
                v121 = v120 + 2;
                if (v121 < v12 && *(v115 + 4 * *v113) > *(v115 + 4 * v113[1]))
                {
                  ++v113;
                  v112 = v121;
                }

                v116 = *v113;
                result = v119;
              }

              while (*(v115 + 4 * *v113) <= v118);
              *v119 = v117;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        do
        {
          v122 = 0;
          v123 = *v11;
          v124 = *a3;
          v125 = v11;
          do
          {
            v126 = v125;
            v127 = &v125[v122];
            v125 = v127 + 1;
            v128 = 2 * v122;
            v122 = (2 * v122) | 1;
            v129 = v128 + 2;
            if (v129 < v12)
            {
              v131 = v127[2];
              v130 = v127 + 2;
              result = *(v130 - 1);
              if (*(*v124 + 4 * result) > *(*v124 + 4 * v131))
              {
                v125 = v130;
                v122 = v129;
              }
            }

            *v126 = *v125;
          }

          while (v122 <= ((v12 - 2) >> 1));
          if (v125 == --a2)
          {
            *v125 = v123;
          }

          else
          {
            *v125 = *a2;
            *a2 = v123;
            v132 = (v125 - v11 + 8) >> 3;
            v133 = v132 < 2;
            v134 = v132 - 2;
            if (!v133)
            {
              v135 = v134 >> 1;
              v136 = &v11[v135];
              v137 = *v136;
              v138 = *v125;
              v139 = *v124;
              v140 = *(v139 + 4 * *v125);
              if (*(v139 + 4 * *v136) > v140)
              {
                do
                {
                  v141 = v136;
                  *v125 = v137;
                  if (!v135)
                  {
                    break;
                  }

                  v135 = (v135 - 1) >> 1;
                  v136 = &v11[v135];
                  v137 = *v136;
                  v125 = v141;
                }

                while (*(v139 + 4 * *v136) > v140);
                *v141 = v138;
              }
            }
          }

          v133 = v12-- <= 2;
        }

        while (!v133);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + 4 * *v10);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * *v11);
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v11;
          if (*(v15 + 4 * *v13) > *(v15 + 4 * *v11))
          {
            *v11 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        if (*(v15 + 4 * *v10) > v21)
        {
          *v13 = *v10;
LABEL_27:
          *v10 = v19;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v11[1];
      v31 = *(v15 + 4 * v29);
      v32 = *(v15 + 4 * v30);
      v33 = *(a2 - 2);
      v34 = *(v15 + 4 * v33);
      if (v31 <= v32)
      {
        if (v34 > v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v11[1];
          if (*(v15 + 4 * *v28) > *(v15 + 4 * v35))
          {
            v11[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 > v31)
        {
          v11[1] = v33;
          goto LABEL_39;
        }

        v11[1] = v29;
        *v28 = v30;
        v36 = *(a2 - 2);
        if (*(v15 + 4 * v36) > v32)
        {
          *v28 = v36;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v39 = v13[1];
      v37 = v13 + 1;
      v38 = v39;
      v40 = v11[2];
      v41 = *(v15 + 4 * v39);
      v42 = *(v15 + 4 * v40);
      v43 = *(a2 - 3);
      v44 = *(v15 + 4 * v43);
      if (v41 <= v42)
      {
        if (v44 > v41)
        {
          *v37 = v43;
          *(a2 - 3) = v38;
          v45 = v11[2];
          if (*(v15 + 4 * *v37) > *(v15 + 4 * v45))
          {
            v11[2] = *v37;
            *v37 = v45;
          }
        }
      }

      else
      {
        if (v44 > v41)
        {
          v11[2] = v43;
          goto LABEL_48;
        }

        v11[2] = v38;
        *v37 = v40;
        v46 = *(a2 - 3);
        if (*(v15 + 4 * v46) > v42)
        {
          *v37 = v46;
LABEL_48:
          *(a2 - 3) = v40;
        }
      }

      v47 = *v14;
      v48 = *v28;
      v49 = *(v15 + 4 * *v14);
      v50 = *(v15 + 4 * *v28);
      v51 = *v37;
      v52 = *(v15 + 4 * *v37);
      if (v49 <= v50)
      {
        if (v52 <= v49)
        {
          goto LABEL_56;
        }

        *v14 = v51;
        *v37 = v47;
        v37 = v14;
        v47 = v48;
        if (v52 <= v50)
        {
          v47 = v51;
          goto LABEL_56;
        }
      }

      else if (v52 <= v49)
      {
        *v28 = v47;
        *v14 = v48;
        v28 = v14;
        v47 = v51;
        if (v52 <= v50)
        {
          v47 = v48;
LABEL_56:
          v53 = *v11;
          *v11 = v47;
          *v14 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v37 = v48;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 4 * *v11);
    v25 = *(v15 + 4 * *v14);
    if (v24 <= v25)
    {
      if (v17 > v24)
      {
        *v11 = v16;
        *v10 = v22;
        v27 = *v14;
        if (*(v15 + 4 * *v11) > *(v15 + 4 * *v14))
        {
          *v14 = *v11;
          *v11 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 > v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    if (*(v15 + 4 * *v10) > v25)
    {
      *v11 = *v10;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v11;
    if (a5)
    {
      v55 = *(v15 + 4 * v54);
LABEL_60:
      v56 = v11;
      do
      {
        v57 = v56;
        v59 = v56[1];
        ++v56;
        v58 = v59;
      }

      while (*(v15 + 4 * v59) > v55);
      v60 = a2;
      if (v57 == v11)
      {
        v60 = a2;
        do
        {
          if (v56 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (*(v15 + 4 * v62) <= v55);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v15 + 4 * v61) <= v55);
      }

      if (v56 < v60)
      {
        v63 = *v60;
        v64 = v56;
        v65 = v60;
        do
        {
          *v64 = v63;
          *v65 = v58;
          do
          {
            v57 = v64;
            v66 = v64[1];
            ++v64;
            v58 = v66;
          }

          while (*(v15 + 4 * v66) > v55);
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (*(v15 + 4 * v67) <= v55);
        }

        while (v64 < v65);
      }

      if (v57 != v11)
      {
        *v11 = *v57;
      }

      *v57 = v54;
      if (v56 < v60)
      {
        goto LABEL_79;
      }

      v68 = sub_26225A4A8(v11, v57, *a3);
      v11 = v57 + 1;
      result = sub_26225A4A8(v57 + 1, a2, *a3);
      if (result)
      {
        a2 = v57;
        if (!v68)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v68)
      {
LABEL_79:
        result = sub_262259910(v9, v57, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v57 + 1;
      }
    }

    else
    {
      v55 = *(v15 + 4 * v54);
      if (*(v15 + 4 * *(v11 - 1)) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(v15 + 4 * *v10))
      {
        v70 = v11 + 1;
        do
        {
          v11 = v70;
          if (v70 >= a2)
          {
            break;
          }

          ++v70;
        }

        while (v55 <= *(v15 + 4 * *v11));
      }

      else
      {
        do
        {
          v69 = v11[1];
          ++v11;
        }

        while (v55 <= *(v15 + 4 * v69));
      }

      v71 = a2;
      if (v11 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *--v71;
        }

        while (v55 > *(v15 + 4 * v72));
      }

      if (v11 < v71)
      {
        v73 = *v11;
        v74 = *v71;
        do
        {
          *v11 = v74;
          *v71 = v73;
          do
          {
            v75 = v11[1];
            ++v11;
            v73 = v75;
          }

          while (v55 <= *(v15 + 4 * v75));
          do
          {
            v76 = *--v71;
            v74 = v76;
          }

          while (v55 > *(v15 + 4 * v76));
        }

        while (v11 < v71);
      }

      v77 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v77;
      }

      a5 = 0;
      *v77 = v54;
    }
  }

  v80 = *v11;
  v81 = v11[1];
  v82 = **a3;
  v83 = *(v82 + 4 * v81);
  v84 = *(v82 + 4 * *v11);
  v85 = *v10;
  v86 = *(v82 + 4 * *v10);
  if (v83 <= v84)
  {
    if (v86 > v83)
    {
      v11[1] = v85;
      *v10 = v81;
      v143 = *v11;
      v142 = v11[1];
      if (*(v82 + 4 * v142) > *(v82 + 4 * *v11))
      {
        *v11 = v142;
        v11[1] = v143;
      }
    }
  }

  else
  {
    if (v86 <= v83)
    {
      *v11 = v81;
      v11[1] = v80;
      if (*(v82 + 4 * *v10) <= v84)
      {
        return result;
      }

      v11[1] = *v10;
    }

    else
    {
      *v11 = v85;
    }

    *v10 = v80;
  }

  return result;
}

uint64_t *sub_26225A334(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 4 * *a2);
  v9 = *(a6 + 4 * *result);
  v10 = *a3;
  v11 = *(a6 + 4 * *a3);
  if (v8 <= v9)
  {
    if (v11 <= v8)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *result;
      if (*(a6 + 4 * *a2) > *(a6 + 4 * *result))
      {
        *result = *a2;
        *a2 = v12;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v11 > v8)
    {
      *result = v10;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(a6 + 4 * *a3) > v9)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 4 * *a4) > *(a6 + 4 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v13 = *a2;
    if (*(a6 + 4 * *a3) > *(a6 + 4 * *a2))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a6 + 4 * *a2) > *(a6 + 4 * *result))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  v15 = *a4;
  if (*(a6 + 4 * *a5) > *(a6 + 4 * *a4))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 4 * *a4) > *(a6 + 4 * *a3))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 4 * *a3) > *(a6 + 4 * *a2))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 4 * *a2) > *(a6 + 4 * *result))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL sub_26225A4A8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 4 * v7);
      v10 = *(*a3 + 4 * *a1);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v9 <= v10)
      {
        if (v12 > v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 4 * v35) > *(v8 + 4 * *a1))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v12 <= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v8 + 4 * v51) <= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_26225A334(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a3;
    v28 = *(*a3 + 4 * v24);
    v29 = *a1;
    v30 = *(*a3 + 4 * *a1);
    v31 = *(*a3 + 4 * v26);
    if (v28 <= v30)
    {
      if (v31 <= v28)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v24;
      if (v31 <= v30)
      {
LABEL_42:
        v46 = *(a2 - 1);
        if (*(v27 + 4 * v46) > *(v27 + 4 * v24))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          v49 = *(v27 + 4 * v47);
          if (v49 > *(v27 + 4 * v48))
          {
            a1[1] = v47;
            a1[2] = v48;
            v50 = *a1;
            if (v49 > *(v27 + 4 * *a1))
            {
              *a1 = v47;
              a1[1] = v50;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v31 <= v28)
      {
        *a1 = v24;
        a1[1] = v29;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v29;
        if (v31 <= v30)
        {
          goto LABEL_41;
        }
      }
    }

    *v32 = v26;
    *v33 = v29;
    v24 = v34;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) > *(*a3 + 4 * *a1))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a3;
  v17 = *(*a3 + 4 * v15);
  v18 = *a1;
  v19 = *(*a3 + 4 * *a1);
  v20 = *(*a3 + 4 * v13);
  if (v17 > v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 <= v17)
    {
      *a1 = v15;
      a1[1] = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 <= v19)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v21 = v13;
    *v22 = v18;
    goto LABEL_27;
  }

  if (v20 > v17)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 > v19)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v14;
    v42 = *(v16 + 4 * *v37);
    if (v42 > *(v16 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v43 -= 8;
        if (v42 <= *(v16 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_35;
        }
      }

      v45 = a1;
LABEL_35:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}