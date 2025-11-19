void sub_2614ED464(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    sub_2614705CC(v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  sub_2614705CC(v3);
  if (!v2)
  {
LABEL_4:
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  sub_2614705CC(v2);
  if (!v1)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  sub_2614705CC(v1);
  goto LABEL_6;
}

BOOL sub_2614ED4BC(void *a1, float a2, float a3)
{
  if (a2 < 0.0)
  {
    return 0;
  }

  result = 0;
  if (a3 >= 0.0)
  {
    v5 = a1[7];
    v6 = -v5;
    v7 = a1[2];
    v8 = v5 - 1;
    v9 = a1[4];
    if ((v7 & v8 | v9 & v6) > a2)
    {
      return (v9 & v8 | v7 & v6) > a3;
    }
  }

  return result;
}

void sub_2614ED528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**a3 + 16))();
  (*(**a3 + 24))();
  operator new();
}

atomic_uint **sub_2614ED628(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      if (*v4)
      {
        atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
      }

      if (*a3)
      {
        sub_2614705CC(*a3);
      }

      *a3++ = v6;
      ++v4;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void sub_2614ED6A4(void *a1, uint64_t a2, uint64_t *a3, int a4, float a5)
{
  v6 = a3;
  v149 = a5;
  v148 = a4;
  *a1 = 0;
  v99 = *(a2 + 112);
  v100 = *(a2 + 128);
  v102 = *(a2 + 96);
  v145 = 0;
  v146 = 0;
  v147 = 0;
  sub_261472A04(&v145, *a3, a3[1], (a3[1] - *a3) >> 3);
  v10 = v145;
  v9 = v146;
  if (v145 != v146)
  {
    v11 = vzip1q_s32(v102, v99);
    v11.i32[2] = v100.i32[0];
    v12 = vzip2q_s32(vzip1q_s32(v102, v100), vdupq_lane_s32(*v99.i8, 1));
    v13 = vzip2q_s32(v102, v99);
    v13.i32[2] = v100.i32[2];
    v14 = v145;
    do
    {
      v15 = vaddq_f32(v13, vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(*v14)), v12, *v14, 1));
      *v14++ = vdiv_f32(*v15.i8, vdup_laneq_s32(v15, 2));
    }

    while (v14 != v9);
  }

  if (a4)
  {
    v16 = 7;
  }

  else
  {
    v16 = 11;
  }

  if (!sub_261472840(v10, v9, v16))
  {
    goto LABEL_115;
  }

  *v17.f32 = *v10;
  *v19.i8 = v10[1];
  v21 = v17;
  v21.i32[2] = 1.0;
  *v18.f32 = v10[2];
  *v20.i8 = v10[3];
  v22 = v18;
  v22.i32[2] = 1.0;
  v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vnegq_f32(v21)), v22, vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL));
  v17.i64[1] = v19.i64[0];
  v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
  v19.i32[2] = 1.0;
  v18.i64[1] = v20.i64[0];
  v20.i32[2] = 1.0;
  v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
  v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v24)), v26, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
  v26.i32[0] = vextq_s8(v27, v27, 8uLL).u32[0];
  v26.i32[1] = v27.i32[0];
  v28 = vdiv_f32(*v26.i8, vdup_lane_s32(*v27.i8, 1));
  *v25.i8 = v28;
  v25.u64[1] = v28;
  if (vmaxv_u16(vmovn_s32(vcgezq_f32(vmulq_f32(vsubq_f32(v25, v17), vsubq_f32(v25, v18))))))
  {
LABEL_116:
    v146 = v10;
    operator delete(v10);
    return;
  }

  v144 = v16;
  v29 = COERCE_DOUBLE(vcvt_s32_f32(v28));
  v121 = a2;
  v122 = v29;
  v124 = 1;
  v123 = 0;
  if (sub_261470F94(&v121, v29))
  {
    if (!sub_261470FF8(&v121, a5))
    {
      goto LABEL_75;
    }
  }

  else
  {
    v31 = 0;
    v32 = a5;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    do
    {
      if (v32 >= 1)
      {
        v33 = 0;
        v34 = qword_261570210[v31];
        *&v30 = v29;
        while (1)
        {
          *&v30 = vadd_s32(*&v30, v34);
          v103 = v30;
          if (sub_261518AF8(a2, *&v30))
          {
            break;
          }

          ++v33;
          v30 = v103;
          if (v32 == v33)
          {
            goto LABEL_19;
          }
        }

        v35 = v103;
        DWORD2(v35) = v33;
        v153 = v35;
        sub_261471160(&v107, &v153);
      }

LABEL_19:
      ++v31;
    }

    while (v31 != 8);
    v36 = v107;
    v37 = v108;
    v38 = 126 - 2 * __clz(v108 - v107);
    if (v108 == v107)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    sub_261471230(v107, v108, v39, 1);
    v153 = 0uLL;
    v154 = 0;
    if (v37 != v36)
    {
      v40 = v36;
      do
      {
        v155[0] = v40->i64[0];
        sub_261471F5C(&v153, v155);
        ++v40;
      }

      while (v40 != v37);
    }

    if (v36)
    {
      operator delete(v36);
    }

    v41 = v153;
    if (v153 == *(&v153 + 1))
    {
      v43 = 0;
    }

    else
    {
      v42 = v153 + 8;
      do
      {
        v122 = *(v42 - 8);
        v43 = sub_261470FF8(&v121, a5);
        if (v43)
        {
          break;
        }

        v44 = v42 == *(&v41 + 1);
        v42 += 8;
      }

      while (!v44);
    }

    if (v41)
    {
      operator delete(v41);
    }

    if (!v43)
    {
LABEL_75:
      v71 = 0;
      v150 = 0;
      v151 = 0;
      v152 = 0;
      goto LABEL_80;
    }
  }

  v45 = v16 * a5;
  v46 = *&v122;
  v123 = 0x100000000;
  v47 = v45;
  if (sub_261471CBC(&v121, (v16 + 1) >> 1, v45, (a5 / 5.0), (a5 * 0.5)) == -1)
  {
    goto LABEL_75;
  }

  v50 = v6;
  v51 = *&v122;
  v49.i32[0] = -v123.i32[1];
  *&v48 = vzip1_s32(v49, v123);
  v104 = v48;
  v123 = v48;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  sub_261471EB8(&v107, vcvts_n_u32_f32(v45, 2uLL));
  v52 = 0;
  v53 = v45 * 8.0;
  v54 = v121;
  *&v55 = v51;
  do
  {
    v101 = v55;
    *&v153 = vadd_f32(vcvt_f32_s32(*&v55), 0x3F0000003F000000);
    sub_261471F5C(&v107, &v153);
    v56 = vsub_s32(*&v101, v46);
    v57 = v56.i32[1];
    v58 = v56.i32[0];
    if (v56.i32[0] >= 0)
    {
      v59 = v56.i32[0];
    }

    else
    {
      v59 = -v56.i32[0];
    }

    if (v56.i32[1] >= 0)
    {
      v60 = v56.u32[1];
    }

    else
    {
      v60 = -v56.i32[1];
    }

    if (v59 <= v60)
    {
      v61 = v60;
    }

    else
    {
      v61 = v59;
    }

    v56.i32[0] = -DWORD1(v104);
    v62 = vzip1_s32(v56, *&v104);
    v63 = vneg_s32(v62);
    if (sub_261472CB8(&v121, v63) == -1)
    {
      v123 = v63;
      *&v64 = v63;
LABEL_57:
      v55 = v101;
      goto LABEL_58;
    }

    if (sub_261472CB8(&v121, *&v104) == -1)
    {
      v55 = v101;
      v64 = v104;
      goto LABEL_58;
    }

    v123 = v62;
    if (sub_261472CB8(&v121, v62) == -1)
    {
      *&v64 = v62;
      goto LABEL_57;
    }

    v65 = v104;
    LODWORD(v65) = -v104;
    *&v65 = vzip1_s32(*&v65, v62);
    v105 = v65;
    v123 = v65;
    v66 = sub_261472CB8(&v121, *&v65);
    v55 = v101;
    v64 = v105;
    if (v66 != -1)
    {
      goto LABEL_76;
    }

LABEL_58:
    *&v55 = vadd_s32(*&v64, *&v55);
    v122 = *&v55;
    if ((v55 & 0x80000000) != 0 || *(v54 + 1) <= v55 || (DWORD1(v55) & 0x80000000) != 0 || *(v54 + 2) <= DWORD1(v55))
    {
      goto LABEL_76;
    }

    v67 = vsub_s32(*&v55, v46);
    v68 = v67.i32[1];
    v69 = v67.i32[0];
    if (v67.i32[0] < 0)
    {
      v69 = -v67.i32[0];
    }

    if (v67.i32[1] < 0)
    {
      v68 = -v67.i32[1];
    }

    if (v69 > v68)
    {
      v68 = v69;
    }

    if (v68 > v47 || (v70 = vceq_s32(*&v55, v46), (vpmin_u32(v70, v70).u32[0] & 0x80000000) != 0) || (v71 = v107, v53 < ((v108 - v107) >> 3)))
    {
LABEL_76:
      v71 = v107;
      goto LABEL_77;
    }

    v104 = v64;
    v52 |= 1 << (v58 / v61 + 3 * (v57 / v61) + 4);
    v72 = vceq_s32(*&v55, v51);
  }

  while ((vpmin_u32(v72, v72).u32[0] & 0x80000000) == 0);
  if (v52 != 495)
  {
LABEL_77:
    v6 = v50;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    if (v71)
    {
      operator delete(v71);
    }

    v71 = 0;
    goto LABEL_80;
  }

  v150 = v107;
  v151 = v108;
  v152 = v109;
  v6 = v50;
  if (v107 != v108)
  {
    sub_26147202C(vadd_f32(vcvt_f32_s32(v46), 0x3F0000003F000000), &v121, &v150);
  }

LABEL_80:
  __p[0] = 0;
  __p[1] = 0;
  v143 = 0;
  if (v71)
  {
    v151 = v71;
    operator delete(v71);
  }

  v141 = __p[0] != __p[1];
  if (__p[0] == __p[1] || (v73 = __p[0] + 8, __p[0] + 8 == __p[1]))
  {
    v76 = __p[0];
  }

  else
  {
    v74 = *v145;
    v75 = *__p[0];
    v76 = __p[0];
    v77 = (__p[0] + 8);
    do
    {
      v78 = *v77++;
      v79 = v78;
      v80 = vsub_f32(v74, v78);
      v81 = vmul_f32(v80, v80);
      v82 = vsub_f32(v74, v75);
      v83 = vmul_f32(v82, v82);
      v84 = vsqrt_f32(vadd_f32(vzip1_s32(v81, v83), vzip2_s32(v81, v83)));
      v85 = vcgt_f32(vdup_lane_s32(v84, 1), v84).u8[0];
      if (v85)
      {
        v86 = -1;
      }

      else
      {
        v86 = 0;
      }

      v75 = vbsl_s8(vdup_n_s32(v86), v79, v75);
      if (v85)
      {
        v76 = v73;
      }

      v73 = v77;
    }

    while (v77 != __p[1]);
  }

  sub_2614728C8(__p[0], v76, __p[1]);
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v155[0] = a2;
  v136 = 0;
  v153 = 0uLL;
  v154 = 0;
  sub_261472A04(&v153, __p[0], __p[1], (__p[1] - __p[0]) >> 3);
  if (v141)
  {
    v90 = *(&v153 + 1);
    v89 = v153;
    if (v153 != *(&v153 + 1))
    {
      v91 = *(a2 + 240);
      v92 = *(a2 + 256);
      v93 = vzip1q_s32(v91, v92);
      v93.i32[2] = *(a2 + 272);
      v94 = vzip2q_s32(vzip1q_s32(v91, *(a2 + 272)), vdupq_lane_s32(*v92.i8, 1));
      v95 = vzip2q_s32(v91, v92);
      v95.i32[2] = *(a2 + 280);
      do
      {
        v96 = vaddq_f32(v95, vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*v89)), v94, *v89, 1));
        *v89++ = vdiv_f32(*v96.i8, vdup_laneq_s32(v96, 2));
      }

      while (v89 != v90);
    }

    sub_2615186D8();
  }

  v150 = 0;
  v151 = 0;
  v152 = 0;
  v121 = &v136;
  v122 = COERCE_DOUBLE(&v137);
  v123 = a2;
  v124 = v6;
  v125 = v155;
  v126 = &v148;
  v127 = &v140;
  v128 = &v139;
  v129 = &v138 + 4;
  v130 = &v138;
  v131 = &v149;
  v132 = &v141;
  v133 = __p;
  v134 = &v144;
  v135 = &v150;
  if (v136)
  {
    v97 = 1;
  }

  else
  {
    v97 = sub_2614EE644(&v121, v87);
    v136 = v97;
  }

  v107 = &v136;
  v108 = &v137;
  v109 = &v150;
  v110 = &v141;
  v111 = v6;
  v112 = &v144;
  v113 = &v153;
  v114 = a2;
  v115 = v155;
  v116 = &v148;
  v117 = &v140;
  v118 = &v139;
  v119 = &v138 + 4;
  v120 = &v138;
  if ((v97 & 1) != 0 || (v98 = sub_2614EEA18(&v107, v87, v88), v136 = v98, v98))
  {
    if (v139)
    {
      operator new();
    }

    if (v140 == 1)
    {
      operator new();
    }

    sub_2614EED5C(&v106, a2, v148, v137, v138, HIDWORD(v138), 0);
  }

  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  if (v153)
  {
    *(&v153 + 1) = v153;
    operator delete(v153);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v10 = v145;
LABEL_115:
  if (v10)
  {
    goto LABEL_116;
  }
}

void sub_2614EE2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  if (v52)
  {
    operator delete(v52);
  }

  v55 = *(v53 - 232);
  if (v55)
  {
    operator delete(v55);
  }

  if (*a10)
  {
    sub_2614705CC(*a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614EE3F4(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 5;
  }

  else
  {
    v2 = 7;
  }

  if (a2)
  {
    v3 = -5.0;
  }

  else
  {
    v3 = -7.0;
  }

  sub_2614F077C(v3, v3, 1.0, 0.0, v4, a1, (2 * v2) | 1);
}

void sub_2614EE5C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2614EE54CLL);
}

void sub_2614EE5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a13)
  {
    sub_2614705CC(a13);
  }

  v18 = 24;
  while (1)
  {
    v19 = *(&a17 + v18);
    if (v19)
    {
      sub_2614705CC(v19);
    }

    v18 -= 8;
    if (v18 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_2614EE644(uint64_t a1, double a2)
{
  if (**a1 == 1 && **(a1 + 8))
  {
    sub_2615186D8();
  }

  v4 = **(a1 + 24);
  v5 = v4[1];
  v7 = v4[2];
  v6 = v4[3];
  LODWORD(a2) = **(a1 + 80);
  v8 = vsub_f32(*v4, v6);
  v9 = vmul_f32(v8, v8);
  v10 = vsub_f32(*v4, v5);
  v11 = vsub_f32(v5, v7);
  v12 = vmul_f32(v11, v11);
  v13 = vmul_f32(v10, v10);
  v14 = vsub_f32(v7, v6);
  v15 = vmul_f32(v14, v14);
  v16 = vmul_f32(vadd_f32(vsqrt_f32(vadd_f32(vzip1_s32(v13, v9), vzip2_s32(v13, v9))), vsqrt_f32(vadd_f32(vzip1_s32(v15, v12), vzip2_s32(v15, v12)))), 0x3F0000003F000000);
  v17 = vdup_lane_s32(*&a2, 0);
  if (**(a1 + 88) == 1)
  {
    v18 = **(a1 + 96);
    v19 = v18[1];
    v21 = v18[2];
    v20 = v18[3];
    v22 = vsub_f32(*v18, v20);
    v23 = vmul_f32(v22, v22);
    v24 = vsub_f32(v19, v21);
    v25 = vmul_f32(v24, v24);
    *v2.i32 = (2 * **(a1 + 104));
    v26 = vsub_f32(*v18, v19);
    v27 = vmul_f32(v26, v26);
    v28 = vsub_f32(v21, v20);
    v29 = vmul_f32(v28, v28);
    v30 = vdiv_f32(vadd_f32(vsqrt_f32(vadd_f32(vzip1_s32(v27, v23), vzip2_s32(v27, v23))), vsqrt_f32(vadd_f32(vzip1_s32(v29, v25), vzip2_s32(v29, v25)))), vdup_lane_s32(v2, 0));
    v31 = vabds_f32(*&v30.i32[1], *&a2);
    if (vabds_f32(*v30.i32, *&a2) < (*&a2 * 0.5) && v31 < (*&a2 * 0.5))
    {
      v33 = -1;
    }

    else
    {
      v33 = 0;
    }

    v17 = vbsl_s8(vdup_n_s32(v33), v30, v17);
  }

  v34 = vdiv_f32(v16, v17);
  v35 = *(a1 + 40);
  v36 = &unk_2615705EC;
  v37 = *v35;
  if (*v35)
  {
    v38 = &unk_26157066C;
  }

  else
  {
    v38 = &unk_2615705EC;
  }

  v39 = 4;
  if (!*v35)
  {
    v39 = 32;
  }

  v40 = *v38;
  v41 = &v38[v39];
  v42 = v38[v39 - 1];
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v43 = v40;
  if (v34.f32[1] >= v34.f32[0])
  {
    v44 = v34.f32[0];
  }

  else
  {
    v44 = v34.f32[1];
  }

  if (v44 <= (v43 - (v40 * 0.4)))
  {
    goto LABEL_34;
  }

  v45 = v42;
  v46 = v42 * 0.4;
  v47 = v34.f32[0] >= v34.f32[1] ? v34.f32[0] : v34.f32[1];
  if (v47 >= (v46 + v45))
  {
    goto LABEL_34;
  }

  v48 = (v34.f32[0] + v34.f32[1]) * 0.5;
  if (v37)
  {
    v36 = &unk_26157066C;
  }

  v49 = (v36 + 4);
  v50 = v38;
  if (v49 != v41)
  {
    v51 = v49;
    do
    {
      v53 = *v51++;
      v52 = v53;
      if (vabds_f32(v53, v48) < vabds_f32(v40, v48))
      {
        v40 = v52;
        v50 = v49;
      }

      v49 = v51;
    }

    while (v51 != v41);
    v40 = *v50;
    v43 = *v50;
  }

  v66 = v40;
  if (vabds_f32(v43, v48) <= v46)
  {
    sub_261498B78(&v62, &v66);
    if (v50 > v38)
    {
      v65 = *(v50 - 1);
      sub_261498B78(&v62, &v65);
    }

    if (v41 > (v50 + 1))
    {
      v65 = v50[1];
      sub_261498B78(&v62, &v65);
    }

    v54 = v62;
    v55 = v63;
    if (v63 - v62 == 12)
    {
      v61 = *(v62 + 4);
      v60 = *(v62 + 8);
      if (vabds_f32(v60, v48) < vabds_f32(v61, v48))
      {
        *(v62 + 4) = v60;
        *(v54 + 8) = v61;
      }
    }
  }

  else
  {
LABEL_34:
    v54 = 0;
    v55 = 0;
  }

  v56 = *(a1 + 112);
  v57 = *v56;
  v58 = v56;
  if (*v56)
  {
    v56[1] = v57;
    operator delete(v57);
    *v56 = 0;
    v56[1] = 0;
    v56[2] = 0;
    v58 = *(a1 + 112);
  }

  *v56 = v54;
  v56[1] = v55;
  v56[2] = v64;
  if (*v58 != v58[1])
  {
    sub_2615186D8();
  }

  return 0;
}

void sub_2614EE9F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614EEA18(uint64_t a1, double a2, double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (**a1 != 1 || (v3 = **(a1 + 8)) == 0)
  {
    v4 = *(a1 + 16);
    if (*v4 == *(v4 + 8))
    {
      return 0;
    }

    v3 = **v4;
  }

  if (**(a1 + 24) == 1)
  {
    *&a3 = vcvts_n_f32_s32(v3, 1uLL);
    v7[0] = -(v3 * 0.5);
    v7[1] = v7[0];
    v7[2] = v7[0];
    v8 = vdupq_lane_s32(*&a3, 0);
    v9 = v7[0];
    memset(v6, 0, sizeof(v6));
    sub_261472A80(v6, v7, &v10, 8uLL);
  }

  return 0;
}

void sub_2614EED04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15)
{
  operator delete(v15);
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_2614EED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    atomic_fetch_add_explicit((a7 + 8), 1u, memory_order_relaxed);
    sub_2614C632C();
  }

  sub_2614F02A0();
}

void sub_2614F0014(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, atomic_uint *a23)
{
  if (a2)
  {
    sub_2614705CC(a23);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2614EF1A0);
  }

  _Unwind_Resume(a1);
}

void *sub_2614F047C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_261472B30(a2);
    }

    sub_2614709BC();
  }

  return result;
}

float sub_2614F0520(void *a1, int a2, int a3, _DWORD *a4)
{
  if (a3 - 4 <= -a2)
  {
    v4 = -a2;
  }

  else
  {
    v4 = a3 - 4;
  }

  v5 = a3 + 4;
  if (a3 + 4 >= a2)
  {
    v5 = a2;
  }

  *a4 = 2 * (a3 - v4);
  v6 = v5 - v4;
  v7 = sub_26148F908(a1, (2 * (v5 - v4)) | 1);
  if ((v6 & 0x80000000) == 0)
  {
    result = v4;
    v9 = *v7;
    v10 = ~(2 * v6);
    do
    {
      *v9++ = result;
      result = result + 0.5;
    }

    while (!__CFADD__(v10++, 1));
  }

  return result;
}

uint64_t sub_2614F05A0(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v6 = a6 - 1;
  if (a6 == 1 || (a3 & 0x80000000) != 0)
  {
    return 0;
  }

  v9 = 0;
  if ((a2 & 0x80000000) != 0)
  {
    return v9;
  }

  v11 = *(a1 + 56);
  v12 = -v11;
  v13 = *(a1 + 16);
  v14 = v13 & -v11--;
  v15 = *(a1 + 32);
  v16 = v15 & v11 | v14;
  v17 = v13 & v11 | v15 & v12;
  if (v16 <= a3 || v17 <= a2)
  {
    return v9;
  }

  v20 = a3 + v6 * a5;
  if ((v20 & 0x80000000) != 0)
  {
    return 0;
  }

  v9 = 0;
  if (v20 < v16)
  {
    v22 = a2 + v6 * a4;
    if ((v22 & 0x80000000) == 0 && v22 < v17 && a6 >= 2)
    {
      v23 = sub_261470964(a1, a2, a3);
      LODWORD(v9) = 0;
      v24 = a4 + a2;
      v25 = a5 + a3;
      do
      {
        v26 = sub_261470964(a1, v24, v25);
        v9 = v9 + ((v23 ^ v26) & 1);
        if ((v23 ^ v26))
        {
          v23 = v26;
        }

        v24 += a4;
        v25 += a5;
        --v6;
      }

      while (v6);
    }
  }

  return v9;
}

float32x2_t sub_2614F06C4(int32x4_t *a1, float32x2_t a2, float32x2_t a3)
{
  v4 = vmul_f32(a3, a3);
  v4.i32[0] = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
  v5 = vrsqrte_f32(v4.u32[0]);
  v6 = vmul_f32(v5, vrsqrts_f32(v4.u32[0], vmul_f32(v5, v5)));
  v7 = vmul_n_f32(a3, vmul_f32(v6, vrsqrts_f32(v4.u32[0], vmul_f32(v6, v6))).f32[0]);
  v8 = COERCE_DOUBLE(vcvt_s32_f32(a2));
  for (i = LODWORD(v8); (LODWORD(v8) & 0x80000000) == 0; i = LODWORD(v8))
  {
    if (a1->i64[1] <= i)
    {
      break;
    }

    if ((HIDWORD(v8) & 0x80000000) != 0)
    {
      break;
    }

    if (a1[1].i64[0] <= HIDWORD(v8))
    {
      break;
    }

    if (!sub_261518AF8(a1, v8))
    {
      break;
    }

    a2 = vadd_f32(v7, a2);
    v8 = COERCE_DOUBLE(vcvt_s32_f32(a2));
  }

  return vcvt_f32_s32(vsub_s32(vcvt_s32_f32(vsub_f32(a2, v7)), vcgtz_f32(v7)));
}

void sub_2614F077C(float a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  sub_26148F908(&v16, 2 * a7);
  v13 = (v16 + 4);
  v14 = a7;
  do
  {
    *(v13 - 1) = a1;
    *v13 = a2;
    a1 = a1 + a3;
    a2 = a2 + a4;
    v13 += 2;
    --v14;
  }

  while (v14);
  sub_261518788(&__p, a6, &v16);
  operator new();
}

void sub_2614F08A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  MEMORY[0x2667045D0](v13, 0x1091C40C7871EBFLL);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2614F106C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 12);
  v4 = *(a3 + 8);
  *v4 = v3;
  v5 = *(a1 + 16);
  if (v3 + 1 >= v5)
  {
    v4[1] = v5;
    *a3 = 2;
    *a2 = 0;
    return 12;
  }

  v6 = 0;
  v7 = v3 + 1;
  v8 = (*a1 + 4 * v3 + 8);
  v9 = 1;
  do
  {
    v11 = *(v8 - 2);
    v10 = *(v8 - 1);
    if (v11 < v10 && v10 >= *v8)
    {
      v13 = v9++;
      v12 = v4;
      goto LABEL_9;
    }

    if (v11 > v10 && v10 <= *v8)
    {
      v12 = *(a2 + 8);
      v13 = v6++;
LABEL_9:
      v12[v13] = v7;
      v5 = *(a1 + 16);
    }

    ++v7;
    ++v8;
  }

  while (v7 < v5);
  v4[v9] = v5;
  *a3 = v9 + 1;
  *a2 = v6;
  if (v6)
  {
    return 0;
  }

  return 12;
}

uint64_t sub_2614F1134(uint64_t *a1, unsigned int *a2, unsigned int *a3, int a4, float a5, float a6)
{
  v6 = *a2;
  v7 = *a3;
  v8 = v6 < 2 || v7 < 2;
  if (v8)
  {
    return 9;
  }

  v13 = *(a2 + 1);
  v96 = *(a3 + 1);
  v14 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
  v15 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  v16 = malloc_type_malloc(4 * *(a1 + 2), 0x100004052888210uLL);
  v17 = malloc_type_malloc(4 * *(a1 + 2), 0x100004052888210uLL);
  v18 = *(a1 + 2);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = a4 / 2;
    if (a4 / 2 <= 1)
    {
      v20 = 1;
    }

    v21 = *(a1 + 4);
    v22 = *(a1 + 3);
    v23 = -v20;
    v24 = -1;
    v25 = -INFINITY;
    v26 = INFINITY;
    v27 = -1;
    do
    {
      if (v23 <= v22)
      {
        v28 = v22;
      }

      else
      {
        v28 = v23;
      }

      if (v22 <= v19 - v20)
      {
        v29 = v19 - v20;
      }

      else
      {
        v29 = v22;
      }

      v30 = v20 + v19;
      if (v21 < v20 + v19)
      {
        v30 = v21;
      }

      if (v27 < v29 && v24 < v29)
      {
        if (v29 <= v30)
        {
          v25 = -INFINITY;
          v26 = INFINITY;
          do
          {
            v32 = *a1;
            v33 = *(*a1 + 4 * v28);
            if (v33 > v25)
            {
              v27 = v28;
              v25 = *(v32 + 4 * v28);
            }

            if (v33 < v26)
            {
              v24 = v28;
              v26 = *(v32 + 4 * v28);
            }

            v8 = v28++ < v30;
          }

          while (v8);
        }

        else
        {
          v26 = INFINITY;
          v25 = -INFINITY;
        }
      }

      else
      {
        if (v27 >= v29)
        {
          if (*(*a1 + 4 * v30) > v25)
          {
            v27 = v30;
            v25 = *(*a1 + 4 * v30);
          }
        }

        else if (v29 <= v30)
        {
          v34 = *a1;
          v25 = -INFINITY;
          v35 = v28;
          do
          {
            if (*(v34 + 4 * v35) > v25)
            {
              v27 = v35;
              v25 = *(v34 + 4 * v35);
            }

            v8 = v35++ < v30;
          }

          while (v8);
        }

        else
        {
          v25 = -INFINITY;
        }

        if (v24 >= v29)
        {
          if (*(*a1 + 4 * v30) < v26)
          {
            v24 = v30;
            v26 = *(*a1 + 4 * v30);
          }
        }

        else if (v29 <= v30)
        {
          v26 = INFINITY;
          do
          {
            if (*(*a1 + 4 * v28) < v26)
            {
              v24 = v28;
              v26 = *(*a1 + 4 * v28);
            }

            v8 = v28++ < v30;
          }

          while (v8);
        }

        else
        {
          v26 = INFINITY;
        }
      }

      v16[v19] = v26;
      v17[v19++] = v25;
      ++v23;
    }

    while (v19 != v18);
  }

  v36 = (v7 - 1);
  v37 = *a1;
  if (v7 < 3)
  {
    v38 = 0;
  }

  else
  {
    v38 = 0;
    v39 = v36 - 1;
    v40 = v96 + 1;
    do
    {
      v42 = *v40++;
      v41 = v42;
      if (*(v37 + 4 * v42) > ((1.0 - a5) * (v16[v42] + v17[v42])))
      {
        v14[v38++] = v41;
      }

      --v39;
    }

    while (v39);
  }

  v43 = 0;
  do
  {
    v45 = *v13++;
    v44 = v45;
    if (*(v37 + 4 * v45) < ((v16[v45] + v17[v45]) * a5))
    {
      v15[v43++] = v44;
    }

    --v6;
  }

  while (v6);
  free(v16);
  free(v17);
  if (v38 < 2 || v43 < 2)
  {
    free(v14);
    free(v15);
    return 9;
  }

  if (*v14 <= *v15)
  {
    v47 = a2;
  }

  else
  {
    v46 = v38;
    v47 = a2;
    do
    {
      v14[v46] = v14[v46 - 1];
      v8 = v46-- > 1;
    }

    while (v8);
    *v14 = *v96;
    ++v38;
  }

  v49 = &v14[v38];
  if (*(v49 - 1) < v15[v43 - 1])
  {
    ++v38;
    *v49 = v96[v36];
  }

  v50 = (v38 + v43);
  v51 = malloc_type_malloc(8 * v50, 0x100004000313F17uLL);
  if (v50 >= 1)
  {
    v52 = 0;
    v53 = 0;
    v54 = v51;
    v55 = (v38 + v43);
    while (1)
    {
      if (v52 >= v38 || v53 >= v43)
      {
        if (v53 == v43 && v52 < v38)
        {
          v56 = v14[v52++];
          v59 = 0x100000000;
          v53 = v43;
        }

        else
        {
          if (v52 != v38 || v53 >= v43)
          {
            goto LABEL_90;
          }

          v56 = v15[v53++];
          v59 = 0xFFFFFFFF00000000;
          v52 = v38;
        }
      }

      else
      {
        v56 = v14[v52];
        v57 = v15[v53];
        v58 = v56 < v57;
        if (v56 < v57)
        {
          v59 = 0x100000000;
        }

        else
        {
          v56 = v15[v53];
          v59 = 0xFFFFFFFF00000000;
        }

        if (v58)
        {
          ++v52;
        }

        else
        {
          ++v53;
        }
      }

      *v54 = v59 | v56;
LABEL_90:
      ++v54;
      if (!--v55)
      {
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v63 = *(v47 + 1);
        v64 = *(a3 + 1);
        v65 = -1;
        v66 = -1;
        while (1)
        {
          v67 = v60 + 1;
          if (HIDWORD(v51[v60]) == 1)
          {
            if (v67 < v50 && (v68 = &v51[v67], v68[1] == 1))
            {
              v69 = v67 + 1;
              v65 = v60;
              while (1)
              {
                if (*(*a1 + 4 * *v68) > *(*a1 + 4 * SLODWORD(v51[v65])))
                {
                  v65 = v60 + 1;
                }

                if (v69 >= v50)
                {
                  break;
                }

                v70 = v68[3];
                ++v69;
                ++v60;
                v68 += 2;
                if (v70 != 1)
                {
                  goto LABEL_109;
                }
              }

              v60 = v50 - 1;
              if (v66 < 0)
              {
                goto LABEL_122;
              }
            }

            else
            {
              v65 = v60;
LABEL_109:
              if (v66 < 0)
              {
LABEL_122:
                LODWORD(v73) = v51[v65];
LABEL_123:
                *(v64 + 4 * v62++) = v73;
                goto LABEL_124;
              }
            }

            if (v61 <= 0)
            {
              goto LABEL_122;
            }

            v73 = SLODWORD(v51[v65]);
            if (*(*a1 + 4 * v73) > (*(*a1 + 4 * *(v63 - 4 + 4 * v61)) + a6))
            {
              goto LABEL_123;
            }

            --v61;
          }

          else
          {
            if (v67 < v50 && (v71 = &v51[v67], v71[1] == -1))
            {
              v74 = v60 + 2;
              v66 = v60;
              while (1)
              {
                if (*(*a1 + 4 * *v71) < *(*a1 + 4 * SLODWORD(v51[v66])))
                {
                  v66 = v60 + 1;
                }

                if (v74 >= v50)
                {
                  break;
                }

                v75 = v71[3];
                ++v74;
                ++v60;
                v71 += 2;
                if (v75 != -1)
                {
                  goto LABEL_104;
                }
              }

              v60 = v50 - 1;
            }

            else
            {
              v66 = v60;
            }

LABEL_104:
            if (v65 < 0 || v62 <= 0)
            {
              LODWORD(v72) = v51[v66];
LABEL_114:
              *(v63 + 4 * v61++) = v72;
              goto LABEL_124;
            }

            v72 = SLODWORD(v51[v66]);
            if (*(*a1 + 4 * v72) < (*(*a1 + 4 * *(v64 - 4 + 4 * v62)) - a6))
            {
              goto LABEL_114;
            }

            --v62;
          }

LABEL_124:
          if (++v60 >= v50)
          {
            v76 = a3;
            *a3 = v62;
            *v47 = v61;
            goto LABEL_128;
          }
        }
      }
    }
  }

  v61 = 0;
  v62 = 0;
  v77 = 0;
  v78 = 0;
  v76 = a3;
  *a3 = 0;
  *v47 = 0;
  if (v51)
  {
LABEL_128:
    free(v51);
    v77 = v61;
    v78 = v62;
  }

  free(v14);
  free(v15);
  result = 9;
  if (v77 >= 1 && v78 == v77 + 1)
  {
    v79 = *(v76 + 1);
    if (*v47 < 2)
    {
      v80 = 0;
    }

    else
    {
      v80 = 0;
      v81 = (*v47 - 1);
      v82 = *(v47 + 1);
      v85 = *v82;
      v83 = v82 + 1;
      v84 = v85;
      v86 = v79 + 1;
      v87 = *v79;
      do
      {
        v89 = *v83++;
        v88 = v89;
        v8 = v84 < v89;
        v91 = *v86++;
        v90 = v91;
        if (!v8 || v87 >= v90 || v87 >= v84)
        {
          v80 = 9;
        }

        v87 = v90;
        v84 = v88;
        --v81;
      }

      while (v81);
    }

    if (v79[*v76 - 2] >= v79[*v76 - 1])
    {
      return 9;
    }

    else
    {
      return v80;
    }
  }

  return result;
}

uint64_t sub_2614F1878(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a5 + 8);
  v7 = *(a6 + 8);
  if (a2 >= 1)
  {
    v8 = 0;
    v9 = a1 - 4;
    while (1)
    {
      v10 = *(a4 + 4 * v8);
      v11 = *(a3 + 4 * v8);
      v12 = v11;
      v13 = v11;
      v14 = (*(a1 + 4 * v10) + *(a1 + 4 * v11)) * 0.5;
      if (v10 <= v11)
      {
        v15 = *(a3 + 4 * v8);
      }

      else
      {
        v15 = *(a4 + 4 * v8);
      }

      v16 = v10;
      do
      {
        if (v15 == v16)
        {
          goto LABEL_10;
        }

        v17 = v16++;
      }

      while (*(a1 + 4 + 4 * v17) >= v14);
      v15 = v17;
LABEL_10:
      if (v11 <= v10)
      {
        goto LABEL_15;
      }

      while (*(v9 + 4 * v13) <= v14)
      {
        if (--v13 <= v10)
        {
          v12 = *(a4 + 4 * v8);
          goto LABEL_15;
        }
      }

      v12 = v13;
LABEL_15:
      if (v15 == v12)
      {
        v18 = v15;
      }

      else
      {
        v19 = v15 + 1;
        if (v19 == v12)
        {
          v20 = v15;
          v21 = *(a1 + 4 * v15);
          v22 = v14 - v21;
          v23 = *(a1 + 4 * v12);
        }

        else
        {
          v24 = 0.0;
          v25 = 0.0;
          if (v19 < v12)
          {
            v26 = ~v15 + v12;
            v27 = (a1 + 4 * v19);
            do
            {
              v28 = *v27++;
              v25 = v25 + v28;
              --v26;
            }

            while (v26);
          }

          if (v10 <= v15)
          {
            v29 = v15 - v10 + 1;
            v30 = (a1 + 4 * v10);
            v24 = 0.0;
            do
            {
              v31 = *v30++;
              v24 = v24 + v31;
              --v29;
            }

            while (v29);
          }

          if (v12 <= v11)
          {
            v32 = v11 + 1;
            v34 = v32 - v12;
            v35 = (a1 + 4 * v12);
            v33 = 0.0;
            do
            {
              v36 = *v35++;
              v33 = v33 + v36;
              --v34;
            }

            while (v34);
          }

          else
          {
            v32 = v11 + 1;
            v33 = 0.0;
          }

          v37 = v25 / (v12 + ~v15);
          v38 = ((v24 / (v19 - v10)) + (v33 / (v32 - v12))) * 0.5;
          v39 = v37 <= v38;
          if (v37 >= v38)
          {
            v40 = v12;
            if (v39)
            {
              v18 = (v15 + v40) * 0.5;
            }

            else
            {
              v18 = (v40 + -1.0) + ((v14 - *(a1 + 4 * v12 - 4)) / (*(a1 + 4 * v12) - *(a1 + 4 * v12 - 4)));
            }

            goto LABEL_32;
          }

          v20 = v15;
          v21 = *(a1 + 4 * v15);
          v22 = v14 - v21;
          v23 = *(a1 + 4 * v19);
        }

        v18 = (v22 / (v23 - v21)) + v20;
      }

LABEL_32:
      v6[v8++] = v18;
      if (v8 == a2)
      {
        v41 = 0;
        while (1)
        {
          v42 = v41;
          v43 = *(a3 + 4 * v41++);
          v44 = *(a4 + 4 * v41);
          v45 = v44;
          v46 = v44;
          v47 = (*(a1 + 4 * v44) + *(a1 + 4 * v43)) * 0.5;
          if (v43 <= v44)
          {
            v48 = *(a4 + 4 * v41);
          }

          else
          {
            v48 = v43;
          }

          v49 = v43;
          while (v48 != v49)
          {
            v50 = v49++;
            if (*(a1 + 4 + 4 * v50) > v47)
            {
              v48 = v50;
              break;
            }
          }

          if (v44 > v43)
          {
            while (*(v9 + 4 * v46) >= v47)
            {
              if (--v46 <= v43)
              {
                v45 = v43;
                goto LABEL_49;
              }
            }

            v45 = v46;
          }

LABEL_49:
          if (v48 == v45)
          {
            v51 = v48;
          }

          else
          {
            v52 = v48 + 1;
            if (v52 == v45)
            {
              v53 = v48;
              v54 = *(a1 + 4 * v48);
              v55 = v47 - v54;
              v56 = *(a1 + 4 * v45);
            }

            else
            {
              v57 = 0.0;
              v58 = 0.0;
              if (v52 < v45)
              {
                v59 = ~v48 + v45;
                v60 = (a1 + 4 * v52);
                do
                {
                  v61 = *v60++;
                  v58 = v58 + v61;
                  --v59;
                }

                while (v59);
              }

              if (v43 <= v48)
              {
                v62 = v48 - v43 + 1;
                v63 = (a1 + 4 * v43);
                v57 = 0.0;
                do
                {
                  v64 = *v63++;
                  v57 = v57 + v64;
                  --v62;
                }

                while (v62);
              }

              if (v45 <= v44)
              {
                v65 = v44 + 1;
                v67 = v65 - v45;
                v68 = (a1 + 4 * v45);
                v66 = 0.0;
                do
                {
                  v69 = *v68++;
                  v66 = v66 + v69;
                  --v67;
                }

                while (v67);
              }

              else
              {
                v65 = v44 + 1;
                v66 = 0.0;
              }

              v70 = v58 / (v45 + ~v48);
              v71 = ((v57 / (v52 - v43)) + (v66 / (v65 - v45))) * 0.5;
              v72 = v70 < v71;
              if (v70 <= v71)
              {
                v73 = v45;
                if (v72)
                {
                  v51 = (v73 + -1.0) + ((v47 - *(a1 + 4 * v45 - 4)) / (*(a1 + 4 * v45) - *(a1 + 4 * v45 - 4)));
                }

                else
                {
                  v51 = (v48 + v73) * 0.5;
                }

                goto LABEL_66;
              }

              v53 = v48;
              v54 = *(a1 + 4 * v48);
              v55 = v47 - v54;
              v56 = *(a1 + 4 * v52);
            }

            v51 = (v55 / (v56 - v54)) + v53;
          }

LABEL_66:
          v7[v42] = v51;
          if (v41 == a2)
          {
            *a5 = a2;
            *a6 = a2;
            v74 = 0;
            v75 = a2 - 1;
            if (a2 != 1)
            {
              v76 = v6 + 1;
              v77 = *v6;
              v78 = v7 + 1;
              v79 = *v7;
              v80 = (a2 - 1);
              do
              {
                v81 = *v76++;
                v82 = v81;
                v83 = *v78++;
                v84 = v83;
                if (v79 < v77 || v77 > v82 || v79 > v84)
                {
                  v74 = 10;
                }

                v79 = v84;
                v77 = v82;
                --v80;
              }

              while (v80);
            }

LABEL_86:
            if (v7[v75] >= v6[v75])
            {
              return v74;
            }

            else
            {
              return 10;
            }
          }
        }
      }
    }
  }

  *a5 = 0;
  *a6 = 0;
  if (!a2)
  {
    v74 = 0;
    v75 = -1;
    goto LABEL_86;
  }

  return 10;
}

uint64_t sub_2614F1D0C(int a1, float *a2, int a3, float *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = **(a5 + 96);
  if (!v10)
  {
    operator new();
  }

  if (*(a5 + 88))
  {
    *(a5 + 88) = 0;
    v9 = a3;
    v8 = a4;
    v7 = a1 - 1;
    v6 = a2 + 1;
  }

  v11 = (v7 + v9 - 1);
  sub_26148F908(&__p, v11);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = __p;
    do
    {
      v16 = &v6[v13];
      if (v12)
      {
        v17 = v13;
      }

      else
      {
        v17 = v14;
      }

      if (v12)
      {
        v18 = v6;
      }

      else
      {
        v18 = v8;
      }

      if (v12)
      {
        v16 = &v8[v14];
      }

      else
      {
        ++v14;
      }

      if (v12)
      {
        ++v13;
      }

      v15[v12++] = *v16 - v18[v17];
    }

    while (v11 != v12);
  }

  v19 = __p;
  v20 = v114;
  v111 = __p;
  v112 = v114;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  *&v21 = 0xFFFFFFFFLL;
  *(&v21 + 1) = 0xFFFFFFFFLL;
  *v119 = v21;
  *&v120 = 0x100000000;
  v110 = 14;
  if (!__p || (v22 = __p + 4, v109 = (__p + 4), __p + 60 > v114))
  {
LABEL_21:
    v23 = 14;
    goto LABEL_22;
  }

  v25 = 0;
  do
  {
    while (1)
    {
      if (sub_2614F2934(v19 + 9, 5))
      {
        v26 = 0.0;
        for (i = 32; i != 52; i += 4)
        {
          v26 = v26 + *&v22[i];
        }

        v28 = 0;
        v29 = 0.0;
        do
        {
          v29 = (((v29 + COERCE_FLOAT(*&v22[v28])) + COERCE_FLOAT(HIDWORD(*&v22[v28]))) + COERCE_FLOAT(*&v22[v28 + 8])) + COERCE_FLOAT(HIDWORD(*&v22[v28]));
          v28 += 16;
        }

        while (v28 != 32);
        if (fabsf(((v29 / 17.0) / (v26 / 15.0)) + -1.0) < 0.1)
        {
          sub_2614F29F0(v119, &v109, 1);
          v25 = v120;
          if (v120)
          {
            if (v120 != 1)
            {
              goto LABEL_57;
            }

            v30 = v19[12];
            if (((v30 * 0.75) + -2.0) < *v19 && ((v30 * 1.25) + 2.0) > *v19)
            {
              goto LABEL_57;
            }
          }
        }
      }

      v109 = v19 + 2;
      if ((v19 + 16) > v20)
      {
        break;
      }

      sub_26148F908(&v118, 5uLL);
      v31 = 0;
      v32 = v118.__r_.__value_.__r.__words[0];
      v33 = (v22 + 52);
      do
      {
        v34 = *v33--;
        v32[v31++] = v34;
      }

      while (v31 != 5);
      if (!sub_2614F2934(v32, (v118.__r_.__value_.__l.__size_ - v32) >> 2))
      {
        goto LABEL_47;
      }

      v35 = 0.0;
      for (j = 10; j != 15; ++j)
      {
        v35 = v35 + v19[j];
      }

      v37 = 0.0;
      for (k = 2; k != 10; k += 4)
      {
        v37 = (((v37 + COERCE_FLOAT(*&v19[k])) + COERCE_FLOAT(HIDWORD(*&v19[k]))) + COERCE_FLOAT(*&v19[k + 2])) + COERCE_FLOAT(HIDWORD(*&v19[k]));
      }

      if (fabsf(((v37 / 17.0) / (v35 / 15.0)) + -1.0) >= 0.1)
      {
LABEL_47:
        v39 = 0;
        if (!v32)
        {
          goto LABEL_49;
        }

LABEL_48:
        v118.__r_.__value_.__l.__size_ = v32;
        operator delete(v32);
        goto LABEL_49;
      }

      v39 = 1;
      if (v32)
      {
        goto LABEL_48;
      }

LABEL_49:
      if (!v39)
      {
        break;
      }

      sub_2614F29F0(v119, &v109, 0);
      v25 = v120;
      if (v120)
      {
        v22 = (v19 + 2);
        goto LABEL_57;
      }

      v22 = (v19 + 3);
      v109 = v19 + 3;
      v40 = v19 + 17;
      v19 += 2;
      if (v40 > v20)
      {
        goto LABEL_21;
      }
    }

    v22 = (v19 + 3);
    v109 = v19 + 3;
    v41 = v19 + 17;
    v19 += 2;
  }

  while (v41 <= v20);
  if (!v25)
  {
    goto LABEL_21;
  }

LABEL_57:
  for (m = (v22 + 84); ; m += 84)
  {
    sub_2614F2D1C(&v115, v119);
    if (LODWORD(v119[1]) == -1)
    {
      break;
    }

    v109 = m;
    if (m + 56 > v20)
    {
      break;
    }

    sub_2614F29F0(v119, &v109, v25 >> 31);
    v25 = v120;
    if (!v120)
    {
      break;
    }

    if (LODWORD(v119[1]) == -1)
    {
      v43 = v120 >= 0 ? 44 : 36;
      v44 = *(m + v43);
      v45 = *(m + 52);
      v46 = (v45 * 0.75) + -2.0;
      v47 = (v45 * 1.25) + 2.0;
      if (v46 >= v44 || v47 <= v44)
      {
        break;
      }
    }
  }

  v108 = a5;
  v49 = v115;
  v50 = v116;
  v23 = 14;
  if (v115 == v116)
  {
LABEL_118:
    if (v49)
    {
      goto LABEL_119;
    }

    goto LABEL_22;
  }

  v51 = 0;
  v52 = 0x8E38E38E38E38E39 * ((v116 - v115) >> 2);
  if (v52 > 1)
  {
    LODWORD(v23) = 1;
  }

  else
  {
    LODWORD(v23) = 14;
  }

  v106 = v23;
  *(a5 + 24) = fminf(vcvts_n_f32_u64(v52, 1uLL), 1.0);
  v107 = v49;
  while (2)
  {
    v53 = *(v49 + 4);
    v54 = v10[1];
    if (!*&v54)
    {
      goto LABEL_91;
    }

    v55 = vcnt_s8(v54);
    v55.i16[0] = vaddlv_u8(v55);
    if (v55.u32[0] > 1uLL)
    {
      v56 = *(v49 + 4);
      if (*&v54 <= v53)
      {
        v56 = v53 % *&v54;
      }
    }

    else
    {
      v56 = (*&v54 - 1) & v53;
    }

    v57 = *(*v10 + 8 * v56);
    if (!v57 || (v58 = *v57) == 0)
    {
LABEL_91:
      operator new();
    }

    while (2)
    {
      v59 = v58[1];
      if (v59 != v53)
      {
        if (v55.u32[0] > 1uLL)
        {
          if (v59 >= *&v54)
          {
            v59 %= *&v54;
          }
        }

        else
        {
          v59 &= *&v54 - 1;
        }

        if (v59 != v56)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      if (*(v58 + 4) != v53)
      {
LABEL_90:
        v58 = *v58;
        if (!v58)
        {
          goto LABEL_91;
        }

        continue;
      }

      break;
    }

    v60 = v58[3];
    v61 = v58[4];
    v62 = v58 + 3;
    v63 = v60;
    if (v60 != v61)
    {
      while (!sub_2614F2E38(v63, v49))
      {
        v63 += 36;
        if (v63 == v61)
        {
          goto LABEL_102;
        }
      }
    }

    if (v63 == v61)
    {
LABEL_102:
      sub_2614F2D1C(v62, v49);
      goto LABEL_103;
    }

    v64 = *(v63 + 20);
    *(v63 + 20) = v64 + 1;
    if (v63 != v60 && v64 >= *(v63 - 16))
    {
      do
      {
        v65 = *(v63 - 36);
        v66 = *(v63 - 20);
        v121 = *(v63 - 4);
        *v119 = v65;
        v120 = v66;
        v67 = *(v63 + 16);
        *(v63 - 36) = *v63;
        *(v63 - 20) = v67;
        *(v63 - 4) = *(v63 + 32);
        v68 = *v119;
        v69 = v120;
        *(v63 + 32) = v121;
        *v63 = v68;
        *(v63 + 16) = v69;
        if (v63 - 36 == *v62)
        {
          break;
        }

        v70 = *(v63 - 16);
        v71 = *(v63 - 52);
        v63 -= 36;
      }

      while (v70 > v71);
LABEL_103:
      v51 = 1;
    }

    v49 = (v49 + 36);
    if (v49 != v50)
    {
      continue;
    }

    break;
  }

  if ((v51 & 1) == 0)
  {
    v49 = v107;
    v23 = v23;
    goto LABEL_118;
  }

  v49 = v107;
  v23 = v23;
  if (*(v107 + 4) == 1)
  {
    v72 = *(v108 + 64);
    if ((*(v72 + 31) & 1) == 0)
    {
      *(v72 + 31) = 1;
      v73 = *(v107 + 8);
      *(v108 + 72) = v73;
      v74 = *(v50 - 1);
      *(v108 + 76) = v74;
      *(v72 + 48) = (*v8 + *(v107 + 6)) - v73;
      *(v72 + 52) = v74 + (*v8 + *(v50 - 2));
    }
  }

  v75 = sub_2614F2E94(v10, 1);
  if (v75)
  {
    v119[0] = 0;
    v119[1] = 0;
    *&v120 = 0;
    v77 = v75[3];
    v76 = v75[4];
    if (v77 == v76)
    {
      goto LABEL_118;
    }

    while (1)
    {
      v78 = *v77 / 211 + 5;
      v79 = v78 + (v78 >> 31);
      if (v10[3] >= (v78 / 2))
      {
        break;
      }

LABEL_114:
      v77 = (v77 + 36);
      if (v77 == v76)
      {
        v80 = v119[0];
        v49 = v107;
        v23 = v23;
        if (!v119[0])
        {
          goto LABEL_118;
        }

LABEL_175:
        operator delete(v80);
        goto LABEL_118;
      }
    }

    sub_2614F2D1C(v119, v77);
    if ((sub_2614F2F48(v10, *(&off_279AD9078 + 2 * (v79 >> 1) - 4) + 1, *(&off_279AD9078 + 2 * (v79 >> 1) - 4) + *(&off_279AD9078 + 2 * (v79 >> 1) - 3), v119) & 1) == 0)
    {
      v119[1] = v119[1] - 36;
      goto LABEL_114;
    }

    v81 = v119[1];
    v82 = v119[0];
    if (v119[0] == v119[1])
    {
      v49 = v107;
      v23 = v23;
    }

    else
    {
      v119[0] = 0;
      v119[1] = 0;
      *&v120 = 0;
      v49 = v107;
      sub_2614F30C4(v119, v82[2]);
      for (n = v82 + 9; n != v81; n += 9)
      {
        sub_2614F30C4(v119, *n);
        v84 = n[2];
        if (v84 != -1)
        {
          sub_2614F30C4(v119, v84);
        }
      }

      sub_2614C2F14(&v118, v119);
      size = HIBYTE(v118.__r_.__value_.__r.__words[2]);
      v86 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v118.__r_.__value_.__l.__size_;
      }

      v23 = v106;
      if (size)
      {
        v87 = v82;
        while (1)
        {
          v88 = v10[1];
          if (!*&v88)
          {
            goto LABEL_146;
          }

          v89 = v87[4];
          v90 = vcnt_s8(v88);
          v90.i16[0] = vaddlv_u8(v90);
          if (v90.u32[0] > 1uLL)
          {
            v91 = v87[4];
            if (*&v88 <= v89)
            {
              v91 = v89 % *&v88;
            }
          }

          else
          {
            v91 = (*&v88 - 1) & v89;
          }

          v92 = *(*v10 + 8 * v91);
          if (!v92)
          {
            goto LABEL_146;
          }

          v93 = *v92;
          if (!*v92)
          {
            goto LABEL_146;
          }

          while (1)
          {
            v94 = v93[1];
            if (v94 == v89)
            {
              break;
            }

            if (v90.u32[0] > 1uLL)
            {
              if (v94 >= *&v88)
              {
                v94 %= *&v88;
              }
            }

            else
            {
              v94 &= *&v88 - 1;
            }

            if (v94 != v91)
            {
              goto LABEL_146;
            }

LABEL_145:
            v93 = *v93;
            if (!v93)
            {
              goto LABEL_146;
            }
          }

          if (*(v93 + 4) != v89)
          {
            goto LABEL_145;
          }

          v95 = v93[3];
          v96 = v93[4];
          if (v95 != v96)
          {
            while (!sub_2614F2E38(v95, v87))
            {
              v95 += 36;
              if (v95 == v96)
              {
                goto LABEL_146;
              }
            }
          }

          if (v95 != v96)
          {
            v97 = *(v95 + 5) - 1;
            *(v95 + 5) = v97;
            if (!v97)
            {
              v98 = v96 - (v95 + 36);
              if (v98)
              {
                memmove(v95, v95 + 36, v98);
              }

              v93[4] = &v95[v98];
            }
          }

LABEL_146:
          v87 += 9;
          if (v87 == v81)
          {
            if (v119[1] == v119[0])
            {
              sub_2614C3568();
            }

            v49 = v107;
            if (*v119[0])
            {
              *(v108 + 4) = 4;
            }

            v99 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
            if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v99 = v118.__r_.__value_.__l.__size_;
            }

            *(v108 + 8) = v99;
            v100 = malloc_type_malloc(v99 + 1, 0x100004077774924uLL);
            *(v108 + 16) = v100;
            v101 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
            if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v102 = &v118;
            }

            else
            {
              v102 = v118.__r_.__value_.__r.__words[0];
            }

            if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v101 = v118.__r_.__value_.__l.__size_;
            }

            strlcpy(v100, v102, v101 + 1);
            v23 = 0;
            *(v108 + 24) = 1065353216;
            v103 = *(v107 + 8);
            *(v108 + 72) = v103;
            v104 = *(v50 - 1);
            *(v108 + 76) = v104;
            v105 = *(v108 + 64);
            *(v105 + 48) = (*v8 + *(v107 + 6)) - v103;
            *(v105 + 52) = v104 + (*v8 + *(v50 - 2));
            v86 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
            break;
          }
        }
      }

      if (v86 < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }

      if (v119[0])
      {
        operator delete(v119[0]);
      }
    }

    if (!v82)
    {
      goto LABEL_118;
    }

    v80 = v82;
    goto LABEL_175;
  }

LABEL_119:
  operator delete(v49);
LABEL_22:
  if (__p)
  {
    v114 = __p;
    operator delete(__p);
  }

  return v23;
}

void sub_2614F2874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    if (!v29)
    {
      goto LABEL_7;
    }
  }

  else if (!v29)
  {
LABEL_7:
    if (a10)
    {
      operator delete(a10);
    }

    if (a16)
    {
      operator delete(a16);
    }

    _Unwind_Resume(exception_object);
  }

  operator delete(v29);
  goto LABEL_7;
}

BOOL sub_2614F2934(float *a1, int a2)
{
  v2 = 0.0;
  v3 = 0.0;
  if (a2)
  {
    v4 = 4 * a2;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v3 = v3 + v6;
      v4 -= 4;
    }

    while (v4);
  }

  v7 = 0;
  v8 = v3 / 15.0;
  if (v8 < 4.0)
  {
    v2 = 0.5;
  }

  v9 = v2 + (v8 * 0.5);
  v10 = &unk_2615706BC;
  do
  {
    v11 = a1[v7];
    if (((v8 * *(v10 - 1)) - v9) > v11 || (v9 + (v8 * *v10)) < v11)
    {
      return 0;
    }

    v10 += 2;
    ++v7;
  }

  while (v7 != 5);
  v13 = a1[1] + a1[2];
  return ((v8 * 12.0) + v9) >= v13 && ((v8 * 10.0) - v9) <= v13;
}

unint64_t sub_2614F29F0(uint64_t a1, unint64_t *a2, int a3)
{
  result = *a2;
  v6 = 0.0;
  for (i = 32; i != 52; i += 4)
  {
    v6 = v6 + *(result + i);
  }

  if (v6 >= 15.0)
  {
    v9 = 0;
    v10 = v6 / 15.0;
    v11 = v6 * 0.2;
    v12 = -1;
    v13 = v11;
    do
    {
      v14 = 0;
      v15 = 0.0;
      v16 = 4;
      while (1)
      {
        v17 = a3 ? v14 : v16;
        v18 = fabsf(*(*a2 + 32 + 4 * v14) - (dword_2615706E0[5 * v9 + v17] * v10));
        if (v18 > (v10 * 0.45))
        {
          break;
        }

        v15 = v15 + v18;
        ++v14;
        --v16;
        if (v14 == 5)
        {
          goto LABEL_14;
        }
      }

      v15 = v11;
LABEL_14:
      if (v15 < v13)
      {
        v13 = v15;
        v12 = v9;
      }

      ++v9;
    }

    while (v9 != 6);
    if (a3)
    {
      v8 = v12 + 1;
    }

    else
    {
      v8 = ~v12;
    }

    if (!v8)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v8 = -1;
  }

  result = sub_2614F3494(result, 8, v8, 0);
  v19 = result;
  if (result == -1 || v8 == 1 && (result < -421 || ((result / 211 + 5) / 2 - 2) > 9))
  {
LABEL_40:
    *&v29 = 0xFFFFFFFFLL;
    *(&v29 + 1) = 0xFFFFFFFFLL;
    *a1 = v29;
    *(a1 + 16) = 0x100000000;
    *(a1 + 24) = 0;
    v24 = 0.0;
    goto LABEL_41;
  }

  v20 = 0;
  v21 = *a2;
  v22 = 0.0;
  do
  {
    v22 = v22 + *(*a2 + 32 + v20);
    v20 += 4;
  }

  while (v20 != 20);
  LODWORD(v23) = 0;
  result = v21 + 52;
  v24 = v22 / 15.0;
  if (a2[2] > v21 + 52 || v21 + 84 > a2[3])
  {
LABEL_35:
    v28 = 0;
    while (dword_261570B5C[v28] != v8)
    {
      if (++v28 == 7)
      {
        goto LABEL_40;
      }
    }

    v27 = 0;
    LODWORD(result) = -1;
    goto LABEL_42;
  }

  v25 = 0;
  v26 = 0.0;
  do
  {
    v26 = (((v26 + COERCE_FLOAT(*(result + v25))) + COERCE_FLOAT(HIDWORD(*(result + v25)))) + COERCE_FLOAT(*(result + v25 + 8))) + COERCE_FLOAT(HIDWORD(*(result + v25)));
    v25 += 16;
  }

  while (v25 != 32);
  if (fabsf(((v26 / 17.0) / v24) + -1.0) >= 0.1)
  {
    LODWORD(v23) = 0;
    goto LABEL_35;
  }

  v27 = 1;
  result = sub_2614F3494(result, 8, v8, 1);
  v23 = HIDWORD(result);
  if (result == -1)
  {
    goto LABEL_35;
  }

LABEL_42:
  result = result | (v23 << 32);
  *a1 = v19;
  *(a1 + 8) = result;
  *(a1 + 16) = v8;
  *(a1 + 20) = 1;
  v30 = a2[2];
  v31 = *a2;
  v32 = 0.0;
  v33 = 0.0;
  if (v30 != *a2)
  {
    v34 = a2[2];
    do
    {
      v35 = *v34++;
      v33 = v33 + v35;
    }

    while (v34 != v31);
  }

  *(a1 + 24) = v33;
  v36 = 5;
  v37 = 8;
  if (v27)
  {
    v36 = 8;
    v37 = 13;
  }

  v38 = &v31[v37 + v36];
  if (v30 != v38)
  {
    v32 = 0.0;
    do
    {
      v39 = *v30++;
      v32 = v32 + v39;
    }

    while (v30 != v38);
  }

  *(a1 + 28) = v32;
LABEL_41:
  *(a1 + 32) = v24;
  return result;
}

void sub_2614F2D1C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x71C71C71C71C71CLL)
    {
      sub_2614709BC();
    }

    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x38E38E38E38E38ELL)
    {
      v11 = 0x71C71C71C71C71CLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2614F3438(v11);
    }

    v12 = 36 * v8;
    v13 = *a2;
    v14 = a2[1];
    *(v12 + 32) = *(a2 + 8);
    *v12 = v13;
    *(v12 + 16) = v14;
    v7 = 36 * v8 + 36;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 8);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 36;
  }

  *(a1 + 8) = v7;
}

uint64_t *sub_2614F2E94(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
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
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_2614F2F48(void *a1, int *a2, int *a3, void *a4)
{
  if (a2 == a3)
  {
    v5 = a4[1];
    if (*a4 == v5)
    {
      v8 = 0;
    }

    else
    {
      v6 = 0;
      v7 = *a4;
      do
      {
        v6 += v7[1] + v7[3];
        v7 += 9;
      }

      while (v7 != v5);
      v8 = v6 % 211;
    }

    return (**a4 == v8 + 211 * (1908874354 * ((v5 - *a4) >> 2) - (*(v5 - 7) == -1)) - 844);
  }

  else
  {
    result = sub_2614F2E94(a1, *a2);
    if (result)
    {
      v13 = result;
      v15 = result[3];
      v14 = result[4];
      if (v15 == v14)
      {
        return 0;
      }

      v16 = a2 + 1;
      v17 = 1;
      do
      {
        if (v16 == a3 || *(v15 + 8) != -1)
        {
          sub_2614F2D1C(a4, v15);
          if (sub_2614F2F48(a1, v16, a3, a4))
          {
            return 1;
          }

          a4[1] -= 36;
          v14 = v13[4];
        }

        result = 0;
        v15 += 36;
        v18 = (v15 != v14) & v17;
        v17 = 0;
      }

      while ((v18 & 1) != 0);
    }
  }

  return result;
}

void sub_2614F30C4(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  for (i = 11; i != -1; --i)
  {
    v6 = (a2 >> i) & 1;
    v7 = *(a1 + 16);
    if (v4 >= v7)
    {
      v8 = *a1;
      v9 = &v4[-*a1];
      v10 = (v9 + 1);
      if ((v9 + 1) < 0)
      {
        sub_2614709BC();
      }

      v11 = v7 - v8;
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        operator new();
      }

      v13 = &v4[-*a1];
      *v9 = v6;
      v4 = v9 + 1;
      memcpy(0, v8, v13);
      *a1 = 0;
      *(a1 + 8) = v9 + 1;
      *(a1 + 16) = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v4++ = v6;
    }

    *(a1 + 8) = v4;
  }
}

void sub_2614F31D8(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_2614709D4();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_2614F33DC(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_2614F3438(unint64_t a1)
{
  if (a1 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  sub_2614709D4();
}

uint64_t sub_2614F3494(float *a1, int a2, int a3, int a4)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v40[0] = &v39;
  v40[1] = &v38;
  if (a2)
  {
    v4 = 4 * a2;
    v5 = 0.0;
    v6 = a1;
    do
    {
      v7 = *v6++;
      v5 = v5 + v7;
      v4 -= 4;
    }

    while (v4);
  }

  else
  {
    v5 = 0.0;
  }

  v8 = 0;
  v9 = 7;
  if (!a4)
  {
    v9 = 0;
  }

  v10 = &a1[v9];
  v11 = -4;
  if (!a4)
  {
    v11 = 4;
  }

  v12 = v5 / 17.0;
  do
  {
    *(v40[v8 & 1] + 4 * (v8 >> 1)) = ((*v10 / v12) + 0.5);
    ++v8;
    v10 = (v10 + v11);
  }

  while (v8 != 8);
  v13 = vaddvq_s32(v39);
  v14 = vaddvq_s32(v38);
  v15 = vaddvq_s32(vaddq_s32(v38, v39));
  v16 = v13 - 4;
  if (v13 <= 13)
  {
    v17 = 13;
  }

  else
  {
    v17 = v13;
  }

  if (v14 >= 4)
  {
    v18 = 4;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18 - 4;
  v21 = v15 == 17 && (v16 & (v16 >> 31)) == 13 - v17 && v19 == -((v14 - 13) & ~((v14 - 13) >> 31));
  if (!v21 || (v13 & 1) != 0 || (v14 & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v22 = 0;
  v23 = 0;
  if (a3 >= 0)
  {
    v24 = a3;
  }

  else
  {
    v24 = -a3;
  }

  v25 = &unk_261570758 + 32 * (((__PAIR64__(v24, a3) >> 30) & 0xFFFFFFFE | a4) - 4);
  v26 = v25;
  do
  {
    v27 = *v26;
    v26 += 2;
    v23 += v27 * v39.i32[v22++];
  }

  while (v22 != 4);
  v28 = 0;
  v29 = 0;
  v30 = (v25 + 4);
  do
  {
    v31 = *v30;
    v30 += 2;
    v29 += v31 * v38.i32[v28++];
  }

  while (v28 != 4);
  result = 0xFFFFFFFFLL;
  if ((v13 & 1) == 0 && v16 <= 9)
  {
    v33 = (v29 + v23);
    v34 = (12 - v13) >> 1;
    v35 = dword_26157A69C[v34];
    v36 = 9 - v35;
    v37 = sub_26147DDB4(&v39, v35, 1);
    return (sub_26147DDB4(&v38, v36, 0) + dword_26157A6B0[v34] * v37 + dword_26157A6C4[v34]) | (v33 << 32);
  }

  return result;
}

void sub_2614F39C8(_Unwind_Exception *a1)
{
  v3 = sub_2614F3A28(v1);
  MEMORY[0x2667045D0](v3, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t sub_2614F3A28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_2614F3A90(uint64_t result)
{
  if (result)
  {
    sub_2614F3A28(result);

    JUMPOUT(0x2667045D0);
  }

  return result;
}

void *sub_2614F3AD0(uint64_t a1, void *__dst, uint64_t a3, void *a4)
{
  result = memcpy(__dst, *(a1 + 16), *(a1 + 8));
  *a4 = *(a1 + 8);
  return result;
}

uint64_t MRCSampleGetTypeID()
{
  if (qword_280CB34F0 != -1)
  {
    dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
  }

  return qword_280CB35E8;
}

unint64_t MRCSampleCreateWithCVPixelBufferAndPyramid(const void *a1, const void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v18);
  CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"MRCSampleAttributeRegionOfInterest", DictionaryRepresentation);
  CFRelease(DictionaryRepresentation);
  if (a2)
  {
    CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"MRCSampleAttributePyramid", a2);
  }

  v16[1] = atomic_load_explicit(&Mutable, memory_order_acquire);
  v17 = a1;
  v16[0] = sub_2614F3C98(&v17);
  v13 = atomic_exchange(v16, 0);
  sub_2614F3FDC(v16);
  sub_2614769A4(&Mutable);
  return v13;
}

uint64_t sub_2614F3C98(CFTypeRef *a1)
{
  if (qword_280CB34F0 != -1)
  {
    dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v3 = CFGetTypeID(Instance);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v3 != qword_280CB35E8)
    {
      _os_assumes_log();
    }

    if (*a1)
    {
      CFRetain(*a1);
    }

    operator new();
  }

  return 0;
}

void sub_2614F3F44(_Unwind_Exception *a1)
{
  sub_2614F4520((v1 + 72), 0);
  sub_261476A0C((v1 + 64));
  sub_26148D93C(v2);
  sub_2614F4590((v1 + 16));
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2614F3FDC(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_2614F4010(uint64_t a1, atomic_ullong *a2)
{
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  *a1 = explicit;
  v4 = atomic_load_explicit(a1, memory_order_acquire);
  if (!v4)
  {
    _os_assumes_log();
  }

  IsPlanar = CVPixelBufferIsPlanar(v4);
  v6 = atomic_load_explicit(a1, memory_order_acquire);
  if (IsPlanar)
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v6, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(atomic_load_explicit(a1, memory_order_acquire), 0);
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidth(v6);
    HeightOfPlane = CVPixelBufferGetHeight(atomic_load_explicit(a1, memory_order_acquire));
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = WidthOfPlane;
  *(a1 + 32) = HeightOfPlane;
  v9 = atomic_load_explicit(a1, memory_order_acquire);
  if (!v9)
  {
    _os_assumes_log();
  }

  v10 = CVPixelBufferIsPlanar(v9);
  v11 = atomic_load_explicit(a1, memory_order_acquire);
  if (v10)
  {
    if (!v11)
    {
      _os_assumes_log();
    }

    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v11, 0);
  }

  else
  {
    if (!v11)
    {
      _os_assumes_log();
    }

    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(v11);
  }

  *(a1 + 40) = BytesPerRowOfPlane;
  return a1;
}

uint64_t *sub_2614F410C(uint64_t *a1, atomic_ullong *a2, CGRect *a3, _OWORD *a4)
{
  v4 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    v7 = a2;
    Count = CFArrayGetCount(atomic_load_explicit(a2, memory_order_acquire));
    if (Count >= 1)
    {
      v9 = 0;
      v47 = v4;
      v44 = a4;
      v45 = v7;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(v7, memory_order_acquire), v9);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        v49 = ValueAtIndex;
        if (!atomic_load_explicit(&v49, memory_order_acquire) || (v11 = CFGetTypeID(atomic_load_explicit(&v49, memory_order_acquire)), v11 != CVPixelBufferGetTypeID()))
        {
          _os_assumes_log();
        }

        v13 = v4[1];
        v12 = v4[2];
        if (v13 >= v12)
        {
          v15 = 0x84BDA12F684BDA13 * ((v13 - *v4) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0x12F684BDA12F684)
          {
            sub_2614709BC();
          }

          v17 = 0x84BDA12F684BDA13 * ((v12 - *v4) >> 3);
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x97B425ED097B42)
          {
            v18 = 0x12F684BDA12F684;
          }

          else
          {
            v18 = v16;
          }

          *&v48.tx = v4;
          if (v18)
          {
            if (v18 <= 0x12F684BDA12F684)
            {
              operator new();
            }

            sub_2614709D4();
          }

          v19 = Count;
          v48.a = 0.0;
          *&v48.b = 216 * v15;
          *&v48.c = 216 * v15;
          v48.d = 0.0;
          v20 = a4;
          sub_2614F45D8(216 * v15, v9, &v49, a4);
          *&v48.c += 216;
          v21 = *v47;
          v22 = v47[1];
          v23 = *&v48.b + *v47 - v22;
          if (*v47 != v22)
          {
            v24 = 0;
            do
            {
              v25 = v21 + v24;
              v26 = v23 + v24;
              *(v23 + v24) = *(v21 + v24);
              explicit = atomic_load_explicit((v21 + v24 + 8), memory_order_acquire);
              if (explicit)
              {
                explicit = CFRetain(explicit);
              }

              *(v26 + 8) = explicit;
              v28 = *(v25 + 16);
              v29 = *(v25 + 32);
              *(v26 + 48) = *(v25 + 48);
              *(v26 + 16) = v28;
              *(v26 + 32) = v29;
              v30 = *(v25 + 104);
              v31 = *(v25 + 120);
              v32 = *(v25 + 136);
              *(v26 + 88) = *(v25 + 88);
              *(v26 + 136) = v32;
              *(v26 + 120) = v31;
              *(v26 + 104) = v30;
              v33 = *(v25 + 168);
              v34 = *(v25 + 184);
              v35 = *(v25 + 200);
              *(v26 + 152) = *(v25 + 152);
              *(v26 + 200) = v35;
              *(v26 + 184) = v34;
              *(v26 + 168) = v33;
              v36 = *(v25 + 56);
              *(v26 + 72) = *(v25 + 72);
              *(v26 + 56) = v36;
              v24 += 216;
            }

            while (v25 + 216 != v22);
            v20 = v44;
            do
            {
              sub_2614776F0((v21 + 8));
              v21 += 216;
            }

            while (v21 != v22);
          }

          v4 = v47;
          v37 = *v47;
          *v47 = v23;
          v38 = *(v47 + 2);
          c = v48.c;
          *(v47 + 1) = *&v48.c;
          v48.c = v37;
          v48.d = v38;
          v48.a = v37;
          v48.b = v37;
          sub_2614F47A4(&v48);
          v14 = c;
          Count = v19;
          a4 = v20;
          v7 = v45;
        }

        else
        {
          sub_2614F45D8(v4[1], v9, &v49, a4);
          *&v14 = v13 + 216;
          *(v4 + 1) = v14;
        }

        *(v4 + 1) = v14;
        if (CGRectIsNull(*a3))
        {
          v39 = MEMORY[0x277CBF398];
        }

        else
        {
          if (!CGRectIsInfinite(*a3))
          {
            v50 = *a3;
            v41 = *(*&v14 - 96);
            v42 = *(*&v14 - 64);
            *&v48.c = *(*&v14 - 80);
            *&v48.tx = v42;
            *&v48.a = v41;
            *(*&v14 - 160) = CGRectApplyAffineTransform(v50, &v48);
            goto LABEL_34;
          }

          v39 = MEMORY[0x277CBF390];
        }

        v40 = v39[1];
        *(*&v14 - 160) = *v39;
        *(*&v14 - 144) = v40;
LABEL_34:
        sub_2614776F0(&v49);
        ++v9;
      }

      while (v9 != Count);
    }
  }

  return v4;
}

void sub_2614F4498(_Unwind_Exception *a1)
{
  *(v2 - 88) = v1;
  sub_26147756C((v2 - 88));
  _Unwind_Resume(a1);
}

void ***sub_2614F4520(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    sub_26147756C(&v3);

    JUMPOUT(0x2667045D0);
  }

  return result;
}

atomic_ullong **sub_2614F4590(atomic_ullong **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2614776F0(v2);
    MEMORY[0x2667045D0](v3, 0x1020C40423EBB36);
  }

  return a1;
}

uint64_t sub_2614F45D8(uint64_t a1, uint64_t a2, atomic_ullong *a3, _OWORD *a4)
{
  *a1 = a2;
  sub_2614F4010(a1 + 8, a3);
  v6 = *(a1 + 32);
  *(a1 + 56) = *(a1 + 16);
  *(a1 + 72) = v6;
  v7 = a4[1];
  *(a1 + 88) = *a4;
  *(a1 + 104) = v7;
  v8 = MEMORY[0x277CBF2C0];
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  *(a1 + 120) = *MEMORY[0x277CBF2C0];
  v10 = *v8;
  v11 = v8[1];
  *(a1 + 136) = v9;
  *(a1 + 152) = v8[2];
  *&v34.a = v10;
  *&v34.c = v11;
  *&v34.tx = v8[2];
  *&v9 = *(a1 + 88);
  *&v10 = *(a1 + 96);
  *&v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  MinX = CGRectGetMinX(*&v9);
  MinY = CGRectGetMinY(*(a1 + 88));
  CGAffineTransformTranslate((a1 + 120), &v34, -MinX, -MinY);
  v15 = *(a1 + 136);
  *&v33.a = *(a1 + 120);
  *&v33.c = v15;
  *&v33.tx = *(a1 + 152);
  v16 = *(a1 + 16);
  *&v15 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  Width = CGRectGetWidth(*(&v15 - 8));
  v20 = CGRectGetWidth(*(a1 + 88));
  Height = CGRectGetHeight(*(a1 + 16));
  v22 = CGRectGetHeight(*(a1 + 88));
  CGAffineTransformScale(&v34, &v33, Width / v20, Height / v22);
  v23 = *&v34.c;
  *(a1 + 120) = *&v34.a;
  *(a1 + 136) = v23;
  *(a1 + 152) = *&v34.tx;
  v24 = *(a1 + 136);
  *&v33.a = *(a1 + 120);
  *&v33.c = v24;
  *&v33.tx = *(a1 + 152);
  v25 = *(a1 + 16);
  *&v24 = *(a1 + 24);
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v28 = CGRectGetMinX(*(&v24 - 8));
  v29 = CGRectGetMinY(*(a1 + 16));
  CGAffineTransformTranslate(&v34, &v33, v28, v29);
  v30 = *&v34.c;
  *(a1 + 120) = *&v34.a;
  *(a1 + 136) = v30;
  *(a1 + 152) = *&v34.tx;
  v31 = *(a1 + 136);
  *&v34.a = *(a1 + 120);
  *&v34.c = v31;
  *&v34.tx = *(a1 + 152);
  CGAffineTransformInvert((a1 + 168), &v34);
  return a1;
}

uint64_t sub_2614F47A4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    sub_2614776F0((i - 208));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t MRCSampleCreateWithCVPixelBufferAndAttributes(const void *a1, atomic_ullong a2)
{
  v4[1] = a2;
  v5 = a1;
  v4[0] = sub_2614F3C98(&v5);
  v2 = atomic_exchange(v4, 0);
  sub_2614F3FDC(v4);
  return v2;
}

unint64_t MRCSampleGetCVPixelBuffer(atomic_ullong *volatile *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v2 != qword_280CB35E8)
    {
      _os_assumes_log();
    }
  }

  return atomic_load_explicit(cf[2], memory_order_acquire);
}

double MRCSampleGetRegionOfInterest(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v2 != qword_280CB35E8)
    {
      _os_assumes_log();
    }
  }

  return *(cf + 4);
}

unint64_t MRCSampleGetPyramid(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v2 != qword_280CB35E8)
    {
      _os_assumes_log();
    }
  }

  return atomic_load_explicit(cf + 8, memory_order_acquire);
}

unint64_t MRCSampleCopyAttribute(CFTypeRef cf, CFTypeRef a2)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v4 != qword_280CB35E8)
    {
      _os_assumes_log();
      if (a2)
      {
        goto LABEL_6;
      }

LABEL_9:
      v5 = 0;
      goto LABEL_7;
    }
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_6:
  v5 = CFRetain(a2);
LABEL_7:
  v8 = v5;
  sub_2614F4AC8(&v9, cf + 16, &v8);
  v6 = atomic_exchange(&v9, 0);
  sub_26148D890(&v9);
  sub_26148E848(&v8);
  return v6;
}

const void *sub_2614F4AC8(void *a1, uint64_t a2, atomic_ullong *a3)
{
  if (atomic_load_explicit((a2 + 8), memory_order_acquire) && atomic_load_explicit(a3, memory_order_acquire))
  {
    result = CFDictionaryGetValue(atomic_load_explicit((a2 + 8), memory_order_acquire), atomic_load_explicit(a3, memory_order_acquire));
    if (result)
    {
      result = CFRetain(result);
    }
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

unint64_t MRCSampleCopyAttributes(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v2 != qword_280CB35E8)
    {
      _os_assumes_log();
    }
  }

  sub_2614F4BC8(&v5, cf + 16);
  v3 = atomic_exchange(&v5, 0);
  sub_26148D93C(&v5);
  return v3;
}

CFDictionaryRef sub_2614F4BC8(CFDictionaryRef *a1, uint64_t a2)
{
  explicit = atomic_load_explicit((a2 + 8), memory_order_acquire);
  v4 = *MEMORY[0x277CBECE8];
  if (explicit)
  {
    result = CFDictionaryCreateCopy(v4, atomic_load_explicit((a2 + 8), memory_order_acquire));
  }

  else
  {
    result = CFDictionaryCreate(v4, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  *a1 = result;
  return result;
}

void MRCSampleGeneratePyramidIfNotPresent(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v2 != qword_280CB35E8)
    {
      _os_assumes_log();
    }
  }

  if (!atomic_load_explicit(cf + 8, memory_order_acquire))
  {
    if (qword_27FEB4390 != -1)
    {
      dispatch_once_f(&qword_27FEB4390, 0, sub_261531AFC);
    }

    explicit = atomic_load_explicit(qword_27FEB4388, memory_order_acquire);
    if (explicit)
    {
      v4 = CFGetTypeID(explicit);
      if (qword_280CB34E0 != -1)
      {
        dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
      }

      if (v4 != qword_280CB35D8)
      {
        _os_assumes_log();
      }
    }

    sub_2614F4E24(&v6, (cf + 2));
    if (atomic_load_explicit(&v6, memory_order_acquire))
    {
      v5 = atomic_exchange(cf + 8, atomic_exchange(&v6, 0));
      if (v5)
      {
        CFRelease(v5);
      }

      operator new();
    }

    sub_261476A0C(&v6);
  }
}

void sub_2614F4DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261476A0C(va);
  _Unwind_Resume(a1);
}

CFTypeRef sub_2614F4E24(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!atomic_load_explicit((a2 + 48), memory_order_acquire))
  {
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v7 = 0;
    if (qword_280CB3ED0 != -1)
    {
      dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
    }

    v4 = os_signpost_id_generate(qword_280CB3EC8);
    v5 = 1;
    *a1 = 0;
    v10 = 0;
    operator new();
  }

  result = atomic_load_explicit((a2 + 48), memory_order_acquire);
  if (result)
  {
    result = CFRetain(result);
  }

  *a1 = result;
  return result;
}

void sub_2614F4F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, atomic_ullong a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_2614A5BB8(v30 - 72);
  sub_261476A0C(v29);
  if (a29 == 1)
  {
    sub_261501098(&a17);
  }

  _Unwind_Resume(a1);
}

unint64_t MRCSampleCreateByGeneratingPyramid(void *cf, CFTypeRef a2)
{
  v2 = a2;
  v12 = 0;
  if (a2)
  {
    goto LABEL_5;
  }

  v4 = atomic_exchange(&v12, MRCContextCreateWithOptions(0));
  if (v4)
  {
    CFRelease(v4);
  }

  v2 = atomic_load_explicit(&v12, memory_order_acquire);
  if (v2)
  {
LABEL_5:
    if (cf)
    {
      v5 = CFGetTypeID(cf);
      if (qword_280CB34F0 != -1)
      {
        dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
      }

      if (v5 != qword_280CB35E8)
      {
        _os_assumes_log();
      }
    }

    v6 = CFGetTypeID(v2);
    if (qword_280CB34E0 != -1)
    {
      dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
    }

    if (v6 != qword_280CB35D8)
    {
      _os_assumes_log();
    }

    sub_2614F4E24(&v11, cf + 16);
    if (atomic_load_explicit(&v11, memory_order_acquire))
    {
      sub_2614F4BC8(&v14, cf + 16);
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, atomic_load_explicit(&v14, memory_order_acquire));
      sub_26148D93C(&v14);
      CFDictionarySetValue(atomic_load_explicit(&MutableCopy, memory_order_acquire), @"MRCSampleAttributePyramid", atomic_load_explicit(&v11, memory_order_acquire));
      CVPixelBuffer = MRCSampleGetCVPixelBuffer(cf);
      v13[1] = atomic_load_explicit(&MutableCopy, memory_order_acquire);
      v14 = CVPixelBuffer;
      v13[0] = sub_2614F3C98(&v14);
      v8 = atomic_exchange(v13, 0);
      sub_2614F3FDC(v13);
      sub_2614769A4(&MutableCopy);
    }

    else
    {
      v8 = 0;
    }

    sub_261476A0C(&v11);
  }

  else
  {
    v8 = 0;
  }

  sub_2614CC260(&v12);
  return v8;
}

void sub_2614F5190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_26148D93C(va2);
  sub_261476A0C(va);
  sub_2614CC260(va1);
  _Unwind_Resume(a1);
}

const __CFDictionary *sub_2614F51D8(const __CFDictionary *result, uint64_t a2)
{
  v2 = result;
  if (atomic_load_explicit((a2 + 8), memory_order_acquire) && (result = CFDictionaryGetValue(atomic_load_explicit((a2 + 8), memory_order_acquire), @"MRCSampleAttributePresentationTimeStamp")) != 0 && (v3 = result, v4 = CFGetTypeID(result), result = CFDictionaryGetTypeID(), v4 == result))
  {
    memset(&v6, 0, sizeof(v6));
    result = CMTimeMakeFromDictionary(&v6, v3);
    if (v6.flags)
    {
      *v2 = v6;
      v5 = 1;
    }

    else
    {
      v5 = 0;
      *v2 = 0;
    }

    *(v2 + 24) = v5;
  }

  else
  {
    *v2 = 0;
    *(v2 + 24) = 0;
  }

  return result;
}

const __CFData *sub_2614F528C(const __CFData *result, uint64_t a2)
{
  v2 = result;
  if (atomic_load_explicit((a2 + 8), memory_order_acquire) && (result = CFDictionaryGetValue(atomic_load_explicit((a2 + 8), memory_order_acquire), @"MRCSampleAttributeCameraIntrinsicMatrix")) != 0 && (v3 = result, v4 = CFGetTypeID(result), result = CFDataGetTypeID(), v4 == result) && (result = CFDataGetLength(v3), result == 48))
  {
    result = CFDataGetBytePtr(v3);
    v5 = *(result + 1);
    *v2 = *result;
    *(v2 + 1) = v5;
    *(v2 + 2) = *(result + 2);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *v2 = 0;
  }

  *(v2 + 48) = v6;
  return result;
}

uint64_t sub_2614F5328(atomic_ullong *a1)
{
  LOBYTE(v3[0]) = 0;
  v4 = 0;
  v1 = sub_2614F54AC(a1, v3);
  if (v4 == 1)
  {
    sub_261501098(v3);
  }

  return v1;
}

void sub_2614F5378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_ullong a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1)
  {
    sub_261501098(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614F5398(atomic_ullong *a1)
{
  LOBYTE(v3[0]) = 0;
  v4 = 0;
  v1 = sub_2614F5408(a1, v3);
  if (v4 == 1)
  {
    sub_261501098(v3);
  }

  return v1;
}

void sub_2614F53E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_ullong a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1)
  {
    sub_261501098(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614F5408(atomic_ullong *a1, uint64_t a2)
{
  if (!atomic_load_explicit(a1, memory_order_acquire))
  {
    v7 = @"Invalid pixel buffer.";
    v8 = -2002;
    sub_261476754(a2, &v8, &v7);
    return 0;
  }

  v3 = 1;
  v4 = CVPixelBufferUnlockBaseAddress(atomic_load_explicit(a1, memory_order_acquire), 1uLL);
  if (v4)
  {
    v5 = v4;
    v7 = @"CVPixelBufferUnlockBaseAddress failed.";
    v8 = -2002;
    sub_261476754(a2, &v8, &v7);
    *(a2 + 24) = v5;
    *(a2 + 28) = 1;
    return 0;
  }

  return v3;
}

uint64_t sub_2614F54AC(atomic_ullong *a1, uint64_t a2)
{
  if (!atomic_load_explicit(a1, memory_order_acquire))
  {
    v7 = @"Invalid pixel buffer.";
    v8 = -2002;
    sub_261476754(a2, &v8, &v7);
    return 0;
  }

  v3 = 1;
  v4 = CVPixelBufferLockBaseAddress(atomic_load_explicit(a1, memory_order_acquire), 1uLL);
  if (v4)
  {
    v5 = v4;
    v7 = @"CVPixelBufferLockBaseAddress failed.";
    v8 = -2002;
    sub_261476754(a2, &v8, &v7);
    *(a2 + 24) = v5;
    *(a2 + 28) = 1;
    return 0;
  }

  return v3;
}

CFStringRef sub_2614F5550(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"<%s %p> {\n", "MRCSample", a1 - 16);
    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    pixelBuffer ");
    sub_26153B6C8(&Mutable, *a1);
    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"\n");
    if (atomic_load_explicit((a1 + 8), memory_order_acquire) && CFDictionaryContainsKey(atomic_load_explicit((a1 + 8), memory_order_acquire), @"MRCSampleAttributeRegionOfInterest"))
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    regionOfInterest ");
      if (atomic_load_explicit(&Mutable, memory_order_acquire))
      {
        if (CGRectIsNull(*(a1 + 16)))
        {
          explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
          v4 = @"<null>";
        }

        else
        {
          IsInfinite = CGRectIsInfinite(*(a1 + 16));
          explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
          if (IsInfinite)
          {
            v4 = @"<infinite>";
          }

          else
          {
            CFStringAppend(explicit, @"{origin=");
            sub_26153BACC(&Mutable, (a1 + 16));
            CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @", size=");
            if (atomic_load_explicit(&Mutable, memory_order_acquire))
            {
              CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"{width=");
              sub_26153BA20(&Mutable, *(a1 + 32));
              CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @", height=");
              sub_26153BA20(&Mutable, *(a1 + 40));
              CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"}");
            }

            explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
            v4 = @"}";
          }
        }

        CFStringAppend(explicit, v4);
      }

      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"\n");
    }

    if (*(a1 + 56))
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    pyramid {\n");
      v7 = *(*(a1 + 56) + 8) - **(a1 + 56);
      if (v7)
      {
        v8 = 0;
        v9 = 0x84BDA12F684BDA13 * (v7 >> 3);
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        v11 = 8;
        do
        {
          CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        level%zuPixelBuffer ", v8);
          sub_26153B6C8(&Mutable, (**(a1 + 56) + v11));
          CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"\n");
          ++v8;
          v11 += 216;
        }

        while (v10 != v8);
      }

      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    }

    sub_2614F51D8(&v20, a1);
    if (LOBYTE(v21) == 1)
    {
      v12 = atomic_load_explicit(&Mutable, memory_order_acquire);
      time = v20;
      v18 = CMTimeCopyDescription(v2, &time);
      CFStringAppendFormat(v12, 0, @"    presentationTimeStamp %@\n", atomic_load_explicit(&v18, memory_order_acquire));
      sub_26148E848(&v18);
    }

    sub_2614F528C(&v20, a1);
    if (v25 == 1)
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    cameraIntrinsicMatrix {\n");
      v13 = atomic_load_explicit(&Mutable, memory_order_acquire);
      CFStringAppendFormat(v13, 0, @"        {%f, %f, %f}\n", *&v20.value, *&v20.epoch, v22);
      v14 = atomic_load_explicit(&Mutable, memory_order_acquire);
      CFStringAppendFormat(v14, 0, @"        {%f, %f, %f}\n", *(&v20.value + 1), *(&v20.epoch + 1), v23);
      v15 = atomic_load_explicit(&Mutable, memory_order_acquire);
      CFStringAppendFormat(v15, 0, @"        {%f, %f, %f}\n", *&v20.timescale, v21, v24);
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    }

    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"}");
    Copy = CFStringCreateCopy(v2, atomic_load_explicit(&Mutable, memory_order_acquire));
  }

  else
  {
    Copy = 0;
  }

  sub_2614959D0(&Mutable);
  return Copy;
}

void sub_2614F59B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  sub_26148E848(va);
  sub_2614959D0(va1);
  _Unwind_Resume(a1);
}

void *sub_2614F59E4(atomic_ullong *a1)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (!explicit)
  {
    _os_assumes_log();
  }

  IsPlanar = CVPixelBufferIsPlanar(explicit);
  v4 = atomic_load_explicit(a1, memory_order_acquire);
  if (IsPlanar)
  {
    if (!v4)
    {
      _os_assumes_log();
    }

    return CVPixelBufferGetBaseAddressOfPlane(v4, 0);
  }

  else
  {
    if (!v4)
    {
      _os_assumes_log();
    }

    return CVPixelBufferGetBaseAddress(v4);
  }
}

void *sub_2614F5A80(void *a1, uint64_t a2)
{
  *a1 = &unk_2873D11E0;
  v3 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_261480F94(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3[2] = *(a2 + 24);
    *v3 = v4;
  }

  *a1 = &unk_2873D19D8;
  return a1;
}

atomic_uint *sub_2614F5B18@<X0>(void *a1@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  v5 = a1[2];
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

  v44 = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = 126 - 2 * __clz((v7 - *a2) >> 3);
  v9 = v7 == *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  sub_2614F6548(v6, v7, v10, 1);
  v57[0] = 0;
  v57[1] = 0;
  v56 = v57;
  sub_2614F6F28(&v54, 3uLL);
  if ((a2[1] - *a2) >> 3)
  {
    v11 = **a2;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
    }

    v12 = *(v11 + 16);
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
      v13 = v54;
      atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
    }

    else
    {
      v13 = v54;
    }

    if (*v13)
    {
      sub_2614705CC(*v13);
    }

    *v13 = v12;
    if (v12)
    {
      sub_2614705CC(v12);
    }

    v14 = *(v11 + 24);
    if (v14)
    {
      atomic_fetch_add_explicit(v14 + 2, 1u, memory_order_relaxed);
      v15 = v54;
      atomic_fetch_add_explicit(v14 + 2, 1u, memory_order_relaxed);
    }

    else
    {
      v15 = v54;
    }

    v16 = v15[1];
    if (v16)
    {
      sub_2614705CC(v16);
    }

    v15[1] = v14;
    if (v14)
    {
      sub_2614705CC(v14);
    }

    v17 = *(v11 + 32);
    if (v17)
    {
      atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
      v18 = v54;
      atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
    }

    else
    {
      v18 = v54;
    }

    v19 = v18[2];
    if (v19)
    {
      sub_2614705CC(v19);
    }

    v18[2] = v17;
    if (v17)
    {
      sub_2614705CC(v17);
    }

    v20 = v54;
    v21 = v55;
    if (v54 == v55)
    {
      v52 = -1;
      v53 = 0.0;
    }

    else
    {
      do
      {
        v22 = (*(**v20 + 16))();
        (*(**v20 + 24))();
        v24 = v57[0];
        if (v57[0])
        {
          v25 = v22;
          v26 = v57;
          do
          {
            v27 = v24;
            v28 = v26;
            v29 = *(v24 + 8);
            if (v29 >= v25)
            {
              v26 = v24;
            }

            v24 = v24[v29 < v25];
          }

          while (v24);
          if (v26 != v57)
          {
            if (v29 < v25)
            {
              v27 = v28;
            }

            if (*(v27 + 8) <= v25)
            {
              v32 = v26[6];
              v30 = v26 + 6;
              v31 = v32;
              if (v32)
              {
                v33 = v23;
                v34 = v30;
                do
                {
                  v35 = v31;
                  v36 = v34;
                  v37 = *(v31 + 7);
                  if (v37 >= v33)
                  {
                    v34 = v31;
                  }

                  v31 = v31[v37 < v33];
                }

                while (v31);
                if (v34 != v30)
                {
                  v38 = (v37 >= v33 ? v35 : v36);
                  if (*(v38 + 28) <= v33)
                  {
                    exception = __cxa_allocate_exception(0x20uLL);
                    sub_2614EB5DC(exception, "Candidate fiducial already assigned to a valid symbol");
                    *exception = &unk_2873D19D8;
                    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
                  }
                }
              }
            }
          }
        }

        ++v20;
      }

      while (v20 != v21);
      v52 = -1;
      v53 = 0.0;
      if (!v11)
      {
LABEL_55:
        v50 = v11;
        sub_261511D68(&v51, a1, &v50, &v53, &v52);
        if (v11)
        {
          sub_2614705CC(v11);
          v39 = v52;
          atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
        }

        else
        {
          v39 = v52;
        }

        v48 = v11;
        v40 = v53;
        v41 = v51;
        if (v51)
        {
          atomic_fetch_add_explicit(v51 + 2, 1u, memory_order_relaxed);
        }

        v47 = v41;
        sub_261512DE8(v40, &v49, a1, &v48, v39, &v47);
      }
    }

    atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
    goto LABEL_55;
  }

  v46.__vftable = &v54;
  sub_261470CC4(&v46);
  sub_2614F710C(v57[0]);
  result = v44;
  if (v44)
  {
    return sub_2614705CC(v44);
  }

  return result;
}

atomic_uint *sub_2614F6548(atomic_uint *result, atomic_uint **a2, uint64_t a3, char a4)
{
  v5 = result;
LABEL_2:
  v88 = a2 - 2;
  v89 = a2 - 1;
  v91 = a2;
  v87 = a2 - 3;
  v6 = v5;
  while (1)
  {
    v5 = v6;
    v7 = v91;
    v8 = (v91 - v6) >> 3;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          return sub_2614F719C(v5, v5 + 1, v89);
        case 4:
          result = sub_2614F719C(v5, v5 + 1, v5 + 2);
          if (*(*(v91 - 1) + 12) <= *(*(v5 + 2) + 48))
          {
            return result;
          }

          result = sub_2614DB518(v5 + 2, v91 - 1);
          if (*(*(v5 + 2) + 48) <= *(*(v5 + 1) + 48))
          {
            return result;
          }

          result = sub_2614DB518(v5 + 1, v5 + 2);
          if (*(*(v5 + 1) + 48) <= *(*v5 + 48))
          {
            return result;
          }

          v40 = (v5 + 2);
          v39 = v5;
          goto LABEL_98;
        case 5:

          return sub_2614F7278(v5, v5 + 1, v5 + 2, v5 + 3, v89);
      }
    }

    else
    {
      if (v8 < 2)
      {
        return result;
      }

      if (v8 == 2)
      {
        if (*(*(v91 - 1) + 12) <= *(*v5 + 48))
        {
          return result;
        }

        v39 = v5;
        v40 = v91 - 1;
LABEL_98:

        return sub_2614DB518(v39, v40);
      }
    }

    if (v8 <= 23)
    {
      v41 = (v5 + 2);
      v43 = v5 == v91 || v41 == v91;
      if ((a4 & 1) == 0)
      {
        if (!v43)
        {
          do
          {
            v83 = v41;
            v84 = *(v5 + 1);
            if (*(v84 + 48) > *(*v5 + 48))
            {
              atomic_fetch_add_explicit((v84 + 8), 1u, memory_order_relaxed);
              v85 = *v5;
              v86 = v41;
              do
              {
                if (v85)
                {
                  atomic_fetch_add_explicit((v85 + 8), 1u, memory_order_relaxed);
                }

                if (*v86)
                {
                  sub_2614705CC(*v86);
                }

                *v86 = v85;
                v85 = *(v86 - 2);
                --v86;
              }

              while (*(v84 + 48) > *(v85 + 48));
              atomic_fetch_add_explicit((v84 + 8), 1u, memory_order_relaxed);
              if (*v86)
              {
                sub_2614705CC(*v86);
              }

              *v86 = v84;
              result = sub_2614705CC(v84);
            }

            v41 = v83 + 1;
            v5 = v83;
          }

          while (v83 + 1 != v91);
        }

        return result;
      }

      if (v43)
      {
        return result;
      }

      v44 = 0;
      v45 = v5;
      while (1)
      {
        v46 = v41;
        v47 = *(v45 + 1);
        if (*(v47 + 48) > *(*v45 + 48))
        {
          atomic_fetch_add_explicit((v47 + 8), 1u, memory_order_relaxed);
          v48 = *v45;
          v49 = v44;
          while (1)
          {
            if (v48)
            {
              atomic_fetch_add_explicit((v48 + 8), 1u, memory_order_relaxed);
            }

            v50 = *(v5 + v49 + 8);
            if (v50)
            {
              sub_2614705CC(v50);
            }

            *(v5 + v49 + 8) = v48;
            if (!v49)
            {
              break;
            }

            v48 = *(v5 + v49 - 8);
            v49 -= 8;
            if (*(v47 + 48) <= *(v48 + 48))
            {
              v51 = (v5 + v49 + 8);
              goto LABEL_127;
            }
          }

          v51 = v5;
LABEL_127:
          atomic_fetch_add_explicit((v47 + 8), 1u, memory_order_relaxed);
          if (*v51)
          {
            sub_2614705CC(*v51);
          }

          *v51 = v47;
          result = sub_2614705CC(v47);
        }

        v41 = v46 + 1;
        v44 += 8;
        v45 = v46;
        if (v46 + 1 == v91)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v10 = &v5[2 * (v8 >> 1)];
    if (v8 < 0x81)
    {
      sub_2614F719C(&v5[2 * (v8 >> 1)], v5, v89);
    }

    else
    {
      sub_2614F719C(v5, &v5[2 * (v8 >> 1)], v89);
      sub_2614F719C(v5 + 2, v10 - 1, v88);
      sub_2614F719C(v5 + 4, v10 + 1, v87);
      sub_2614F719C(v10 - 2, &v5[2 * (v8 >> 1)], v10 + 1);
      v11 = *v5;
      if (*v5)
      {
        atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
      }

      v12 = *v10;
      if (*v10)
      {
        atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
      }

      if (*v5)
      {
        sub_2614705CC(*v5);
      }

      *v5 = v12;
      if (v11)
      {
        atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
      }

      if (*v10)
      {
        sub_2614705CC(*v10);
      }

      *v10 = v11;
      if (v11)
      {
        sub_2614705CC(v11);
      }
    }

    --a3;
    if (a4)
    {
      v13 = *v5;
      if (!*v5)
      {
        v14 = 1;
        goto LABEL_31;
      }

      v14 = 0;
LABEL_30:
      atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
LABEL_31:
      v16 = *(v13 + 12);
      v17 = v5;
      do
      {
        v18 = v17;
        v19 = *(v17 + 1);
        v17 += 2;
      }

      while (*(v19 + 48) > v16);
      v20 = v91;
      if (v18 == v5)
      {
        v20 = v91;
        do
        {
          if (v17 >= v20)
          {
            break;
          }

          v22 = *--v20;
        }

        while (*(v22 + 48) <= v16);
      }

      else
      {
        do
        {
          v21 = *--v20;
        }

        while (*(v21 + 48) <= v16);
      }

      v6 = v17;
      if (v17 < v20)
      {
        v23 = v20;
        do
        {
          sub_2614DB518(v6, v23);
          v24 = *(v13 + 12);
          do
          {
            v25 = *(v6 + 8);
            v6 += 8;
          }

          while (*(v25 + 48) > v24);
          do
          {
            v26 = *--v23;
          }

          while (*(v26 + 48) <= v24);
        }

        while (v6 < v23);
      }

      v27 = (v6 - 8);
      if ((v6 - 8) != v5)
      {
        v28 = *v27;
        if (*v27)
        {
          atomic_fetch_add_explicit(v28 + 2, 1u, memory_order_relaxed);
        }

        if (*v5)
        {
          sub_2614705CC(*v5);
        }

        *v5 = v28;
      }

      if (!v14)
      {
        atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
      }

      if (*v27)
      {
        sub_2614705CC(*v27);
      }

      *v27 = v13;
      if (!v14)
      {
        sub_2614705CC(v13);
      }

      if (v17 < v20)
      {
        goto LABEL_60;
      }

      v29 = sub_2614F73D8(v5, (v6 - 8));
      result = sub_2614F73D8(v6, v91);
      if (result)
      {
        a2 = (v6 - 8);
        if (v29)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v29)
      {
LABEL_60:
        result = sub_2614F6548(v5, v6 - 8, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v13 = *v5;
      v15 = *(*v5 + 48);
      v14 = *v5 == 0;
      if (*(*(v5 - 1) + 48) > v15)
      {
        goto LABEL_30;
      }

      if (v13)
      {
        atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
      }

      if (v15 <= *(*v89 + 12))
      {
        v31 = (v5 + 2);
        do
        {
          v6 = v31;
          if (v31 >= v91)
          {
            break;
          }

          v31 += 8;
        }

        while (v15 <= *(*v6 + 48));
      }

      else
      {
        v6 = v5;
        do
        {
          v30 = *(v6 + 8);
          v6 += 8;
        }

        while (v15 <= *(v30 + 48));
      }

      v32 = v91;
      if (v6 < v91)
      {
        v32 = v91;
        do
        {
          v33 = *--v32;
        }

        while (v15 > *(v33 + 48));
      }

      while (v6 < v32)
      {
        sub_2614DB518(v6, v32);
        v34 = *(v13 + 12);
        do
        {
          v35 = *(v6 + 8);
          v6 += 8;
        }

        while (v34 <= *(v35 + 48));
        do
        {
          v36 = *--v32;
        }

        while (v34 > *(v36 + 48));
      }

      v37 = (v6 - 8);
      if ((v6 - 8) != v5)
      {
        v38 = *v37;
        if (*v37)
        {
          atomic_fetch_add_explicit(v38 + 2, 1u, memory_order_relaxed);
        }

        if (*v5)
        {
          sub_2614705CC(*v5);
        }

        *v5 = v38;
      }

      if (v13)
      {
        atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
      }

      result = *v37;
      if (*v37)
      {
        result = sub_2614705CC(result);
      }

      a4 = 0;
      *v37 = v13;
      if (v13)
      {
        result = sub_2614705CC(v13);
        a4 = 0;
      }
    }
  }

  if (v5 == v91)
  {
    return result;
  }

  v52 = v9 >> 1;
  v53 = v9 >> 1;
  do
  {
    v54 = v53;
    if (v52 >= v53)
    {
      v55 = (2 * v53) | 1;
      v56 = &v5[2 * v55];
      if (2 * v54 + 2 < v8 && *(*v56 + 12) > *(v56[1] + 12))
      {
        ++v56;
        v55 = 2 * v54 + 2;
      }

      v57 = &v5[2 * v54];
      v58 = *v57;
      if (*(*v56 + 12) <= *(*v57 + 12))
      {
        atomic_fetch_add_explicit(v58 + 2, 1u, memory_order_relaxed);
        v59 = *v56;
        do
        {
          v60 = v56;
          if (v59)
          {
            atomic_fetch_add_explicit(v59 + 2, 1u, memory_order_relaxed);
          }

          if (*v57)
          {
            sub_2614705CC(*v57);
          }

          *v57 = v59;
          if (v52 < v55)
          {
            break;
          }

          v61 = 2 * v55;
          v55 = (2 * v55) | 1;
          v56 = &v5[2 * v55];
          v62 = v61 + 2;
          if (v62 < v8 && *(*v56 + 12) > *(v56[1] + 12))
          {
            ++v56;
            v55 = v62;
          }

          v59 = *v56;
          v57 = v60;
        }

        while (*(*v56 + 12) <= *(v58 + 12));
        atomic_fetch_add_explicit(v58 + 2, 1u, memory_order_relaxed);
        if (*v60)
        {
          sub_2614705CC(*v60);
        }

        *v60 = v58;
        sub_2614705CC(v58);
        v7 = v91;
      }
    }

    v53 = v54 - 1;
  }

  while (v54);
  while (2)
  {
    v63 = *v5;
    if (*v5)
    {
      atomic_fetch_add_explicit(v63 + 2, 1u, memory_order_relaxed);
    }

    v64 = 0;
    v65 = v5;
    while (2)
    {
      v66 = &v65[v64];
      v67 = v66 + 1;
      v68 = v66[1];
      v69 = 2 * v64;
      v64 = (2 * v64) | 1;
      v70 = v69 + 2;
      if (v70 >= v8)
      {
        if (v68)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v73 = v66[2];
        v71 = v66 + 2;
        v72 = v73;
        if (*(v68 + 12) > *(v73 + 12))
        {
          v64 = v70;
          v67 = v71;
          v68 = v72;
        }

LABEL_160:
        atomic_fetch_add_explicit(v68 + 2, 1u, memory_order_relaxed);
      }

      if (*v65)
      {
        sub_2614705CC(*v65);
      }

      *v65 = v68;
      v65 = v67;
      if (v64 <= ((v8 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    if (v67 == --v7)
    {
      if (v63)
      {
        atomic_fetch_add_explicit(v63 + 2, 1u, memory_order_relaxed);
      }

      result = *v67;
      if (*v67)
      {
        result = sub_2614705CC(result);
      }

      *v67 = v63;
    }

    else
    {
      v74 = *v7;
      if (*v7)
      {
        atomic_fetch_add_explicit(v74 + 2, 1u, memory_order_relaxed);
      }

      if (*v67)
      {
        sub_2614705CC(*v67);
      }

      *v67 = v74;
      if (v63)
      {
        atomic_fetch_add_explicit(v63 + 2, 1u, memory_order_relaxed);
      }

      result = *v7;
      if (*v7)
      {
        result = sub_2614705CC(result);
      }

      *v7 = v63;
      v75 = (v67 - v5 + 8) >> 3;
      v76 = v75 < 2;
      v77 = v75 - 2;
      if (!v76)
      {
        v78 = v77 >> 1;
        v79 = &v5[2 * (v77 >> 1)];
        v80 = *v67;
        if (*(*v79 + 12) > *(*v67 + 12))
        {
          atomic_fetch_add_explicit(v80 + 2, 1u, memory_order_relaxed);
          v81 = *v79;
          do
          {
            v82 = v79;
            if (v81)
            {
              atomic_fetch_add_explicit(v81 + 2, 1u, memory_order_relaxed);
            }

            if (*v67)
            {
              sub_2614705CC(*v67);
            }

            *v67 = v81;
            if (!v78)
            {
              break;
            }

            v78 = (v78 - 1) >> 1;
            v79 = &v5[2 * v78];
            v81 = *v79;
            v67 = v82;
          }

          while (*(*v79 + 12) > *(v80 + 12));
          atomic_fetch_add_explicit(v80 + 2, 1u, memory_order_relaxed);
          if (*v82)
          {
            sub_2614705CC(*v82);
          }

          *v82 = v80;
          result = sub_2614705CC(v80);
        }
      }
    }

    if (v63)
    {
      result = sub_2614705CC(v63);
    }

    v76 = v8-- <= 2;
    if (!v76)
    {
      continue;
    }

    return result;
  }
}

void *sub_2614F6F28(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_261470D9C(result, a2);
  }

  return result;
}

uint64_t sub_2614F6FA8(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
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
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *sub_2614F7074(void *a1, uint64_t a2)
{
  *a1 = &unk_2873D11E0;
  v3 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_261480F94(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3[2] = *(a2 + 24);
    *v3 = v4;
  }

  *a1 = &unk_2873D15C8;
  return a1;
}

void sub_2614F710C(void *a1)
{
  if (a1)
  {
    sub_2614F710C(*a1);
    sub_2614F710C(a1[1]);
    sub_2614802C0(a1[6]);

    operator delete(a1);
  }
}

void sub_2614F7164(std::exception *a1)
{
  sub_2614EB578(a1);

  JUMPOUT(0x2667045D0);
}

atomic_uint *sub_2614F719C(atomic_uint *result, atomic_uint **a2, atomic_uint **a3)
{
  v5 = result;
  v6 = *(*a2 + 12);
  v7 = *(*a3 + 12);
  if (v6 <= *(*result + 48))
  {
    if (v7 <= v6)
    {
      return result;
    }

    result = sub_2614DB518(a2, a3);
    if (*(*a2 + 12) <= *(*v5 + 48))
    {
      return result;
    }

    result = v5;
    v8 = a2;
  }

  else
  {
    if (v7 <= v6)
    {
      result = sub_2614DB518(result, a2);
      if (*(*a3 + 12) <= *(*a2 + 12))
      {
        return result;
      }

      result = a2;
    }

    v8 = a3;
  }

  return sub_2614DB518(result, v8);
}

atomic_uint *sub_2614F7278(atomic_uint *a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5)
{
  result = sub_2614F719C(a1, a2, a3);
  if (*(*a4 + 12) > *(*a3 + 12))
  {
    result = sub_2614DB518(a3, a4);
    if (*(*a3 + 12) > *(*a2 + 12))
    {
      result = sub_2614DB518(a2, a3);
      if (*(*a2 + 12) > *(*a1 + 48))
      {
        result = sub_2614DB518(a1, a2);
      }
    }
  }

  if (*(*a5 + 12) > *(*a4 + 12))
  {
    result = sub_2614DB518(a4, a5);
    if (*(*a4 + 12) > *(*a3 + 12))
    {
      result = sub_2614DB518(a3, a4);
      if (*(*a3 + 12) > *(*a2 + 12))
      {
        result = sub_2614DB518(a2, a3);
        if (*(*a2 + 12) > *(*a1 + 48))
        {

          return sub_2614DB518(a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL sub_2614F73D8(atomic_uint **a1, atomic_uint **a2)
{
  v3 = a1;
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2614F719C(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        sub_2614F719C(a1, a1 + 1, a1 + 2);
        v18 = *(a2 - 1);
        v17 = a2 - 1;
        if (*(v18 + 48) <= *(v3[2] + 12))
        {
          return 1;
        }

        sub_2614DB518(v3 + 2, v17);
        if (*(v3[2] + 12) <= *(v3[1] + 12))
        {
          return 1;
        }

        sub_2614DB518(v3 + 1, v3 + 2);
        if (*(v3[1] + 12) <= *(*v3 + 12))
        {
          return 1;
        }

        v5 = v3 + 1;
        a1 = v3;
        goto LABEL_6;
      case 5:
        sub_2614F7278(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(*(a2 - 1) + 12) > *(*a1 + 12))
      {
        v5 = a2 - 1;
LABEL_6:
        sub_2614DB518(a1, v5);
      }

      return 1;
    }
  }

  v6 = a1 + 2;
  sub_2614F719C(a1, a1 + 1, a1 + 2);
  v7 = v3 + 3;
  v8 = 1;
  if (v3 + 3 != a2)
  {
    v9 = 0;
    for (i = 24; ; i += 8)
    {
      v11 = *v7;
      if (*(*v7 + 12) > *(*v6 + 12))
      {
        atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
        v12 = *v6;
        v13 = i;
        while (1)
        {
          if (v12)
          {
            atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
          }

          v14 = *(v3 + v13);
          if (v14)
          {
            sub_2614705CC(v14);
          }

          *(v3 + v13) = v12;
          v15 = v13 - 8;
          if (v13 == 8)
          {
            break;
          }

          v12 = *(v3 + v13 - 16);
          v13 -= 8;
          if (*(v11 + 12) <= *(v12 + 12))
          {
            v16 = (v3 + v15);
            goto LABEL_24;
          }
        }

        v16 = v3;
LABEL_24:
        atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
        if (*v16)
        {
          sub_2614705CC(*v16);
        }

        *v16 = v11;
        ++v9;
        sub_2614705CC(v11);
        if (v9 == 8)
        {
          break;
        }
      }

      v6 = v7++;
      if (v7 == a2)
      {
        return 1;
      }
    }

    return v7 + 1 == a2;
  }

  return v8;
}

atomic_uint *sub_2614F761C(void *a1, __int128 *a2)
{
  v4 = a1[2];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  }

  v5 = *(a2 + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
    v16 = v5;
    sub_2614FEED8(v17, v4, &v16);
    sub_2614705CC(v5);
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = 0;
  sub_2614FEED8(v17, v4, &v16);
  if (v4)
  {
LABEL_5:
    sub_2614705CC(v4);
  }

LABEL_6:
  sub_2614F7FFC(v17, a2, v12, v6);
  v9 = *a2;
  v10 = *(a2 + 16);
  v7 = *(a2 + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
  }

  v11 = v7;
  (*(*a1 + 32))(a1, v12, &v9);
  if (v11)
  {
    sub_2614705CC(v11);
  }

  v18 = &v15;
  sub_261470CC4(&v18);
  v18 = &v14;
  sub_261470CC4(&v18);
  v18 = &v13;
  sub_261480A80(&v18);
  v18 = v12;
  sub_261480A80(&v18);
  result = sub_2614FEE14(v17);
  if (v4)
  {
    return sub_2614705CC(v4);
  }

  return result;
}

void sub_2614F7798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a12)
  {
    sub_2614705CC(a12);
  }

  sub_2614F77D4(&a14);
  sub_2614FEE14(&a27);
  if (v27)
  {
    sub_2614705CC(v27);
  }

  _Unwind_Resume(a1);
}

void **sub_2614F77D4(void **a1)
{
  v2 = a1 + 6;
  v4 = a1 + 9;
  sub_261470CC4(&v4);
  v4 = v2;
  sub_261470CC4(&v4);
  v4 = a1 + 3;
  sub_261480A80(&v4);
  v4 = a1;
  sub_261480A80(&v4);
  return a1;
}

void sub_2614F783C(void *a1)
{
  sub_2614F7874(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614F7874(void *a1)
{
  *a1 = &unk_2873D1350;
  v2 = a1[3];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  return a1;
}

uint64_t sub_2614F78D0(const void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = CFGetTypeID(a1);
  if (v2 == CFNumberGetTypeID() && !CFNumberIsFloatType(a1) && CFNumberGetValue(a1, kCFNumberSInt64Type, v7))
  {
    v5 = v7[0] & 0xFFFFFF00;
    v3 = LOBYTE(v7[0]);
    if (HIDWORD(v7[0]))
    {
      v3 = 0;
      v4 = 0;
    }

    else
    {
      v4 = 0x100000000;
    }

    if (HIDWORD(v7[0]))
    {
      v5 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  return v5 | v3 | v4;
}

unint64_t sub_2614F7994(const void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = CFGetTypeID(a1);
  if (v2 == CFNumberGetTypeID() && !CFNumberIsFloatType(a1))
  {
    Value = CFNumberGetValue(a1, kCFNumberSInt64Type, v7);
    v4 = v7[0] & 0xFFFFFFFFFFFFFF00;
    v3 = LOBYTE(v7[0]);
    if (!Value)
    {
      v4 = 0;
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

unint64_t sub_2614F7A48(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFNumberGetTypeID() && !CFNumberIsFloatType(a1))
  {
    v6 = CFNumberGetValue(a1, kCFNumberMaxType|kCFNumberSInt8Type, &v9) != 0;
    v7 = v9 == 0;
    v8 = !v6 || !v7;
    if (v6 && v7)
    {
      v4 = v10 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v4 = 0;
    }

    if (v8)
    {
      v3 = 0;
    }

    else
    {
      v3 = v10;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_2614F7ADC(uint64_t result)
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFNumberGetTypeID())
    {
      return 0;
    }

    if (*MEMORY[0x277CBF000] == v1 || CFNumberCompare(v1, *MEMORY[0x277CBF000], 0) == kCFCompareEqualTo)
    {
      return 0x7FF0000000000000;
    }

    if (*MEMORY[0x277CBEFF8] == v1 || CFNumberCompare(v1, *MEMORY[0x277CBEFF8], 0) == kCFCompareEqualTo)
    {
      return 0xFFF0000000000000;
    }

    if (*MEMORY[0x277CBEFF0] == v1 || CFNumberCompare(v1, *MEMORY[0x277CBEFF0], 0) == kCFCompareEqualTo)
    {
      return 0x7FF8000000000000;
    }

    if (CFNumberGetValue(v1, kCFNumberDoubleType, v4))
    {
      v3 = v4[0];
      if (fabs(v4[0]) > 1.79769313e308)
      {
        v3 = 0.0;
      }

      return *&v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFStringRef sub_2614F7C14(UInt8 *bytes, CFIndex numBytes)
{
  if (numBytes)
  {
    return CFStringCreateWithBytes(*MEMORY[0x277CBECE8], bytes, numBytes, 0x8000100u, 0);
  }

  else
  {
    return CFRetain(&stru_2873D7F70);
  }
}

CFStringRef sub_2614F7C48(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    return 0;
  }

  v3 = *MEMORY[0x277CBECE8];

  return CFStringCreateCopy(v3, a1);
}

CFDictionaryRef sub_2614F7CB0(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID() || !CFPropertyListIsValid(a1, kCFPropertyListBinaryFormat_v1_0))
  {
    return 0;
  }

  v3 = *MEMORY[0x277CBECE8];

  return CFDictionaryCreateCopy(v3, a1);
}

CFDictionaryRef sub_2614F7D28(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v3 = *MEMORY[0x277CBECE8];

  return CFDictionaryCreateCopy(v3, a1);
}

uint64_t sub_2614F7D8C(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    v3 = CFBooleanGetValue(a1) != 0;
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v3 | (v4 << 8);
}

const void **sub_2614F7DE4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_2614F7E18(CFDictionaryRef *a1, const __CFString *cf, const void *a3)
{
  if (!*a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFStringGetTypeID())
  {
    return 0;
  }

  result = CFStringGetLength(cf);
  if (!result)
  {
    return result;
  }

  if (CFDictionaryContainsKey(*a1, cf))
  {
    return 0;
  }

  result = CFPropertyListIsValid(a3, kCFPropertyListBinaryFormat_v1_0);
  if (result)
  {
    CFDictionarySetValue(*a1, cf, a3);
    return 1;
  }

  return result;
}

CFDictionaryRef *sub_2614F7EBC(CFDictionaryRef *a1, const __CFDictionary *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFDictionaryGetTypeID()))
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], cf);
  }

  else
  {
    Copy = 0;
  }

  *a1 = Copy;
  return a1;
}

const void **sub_2614F7F28(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFTypeRef sub_2614F7F5C(CFDictionaryRef *a1, const __CFString *cf)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  if (!CFStringGetLength(cf))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*a1, cf);
  if (!Value)
  {
    return 0;
  }

  v6 = Value;
  if (!CFPropertyListIsValid(Value, kCFPropertyListBinaryFormat_v1_0))
  {
    return 0;
  }

  return CFRetain(v6);
}

void sub_2614F7FFC(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>, __n128 a4@<Q0>)
{
  v97 = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v81 = a2;
  v7 = *(a1 + 8);
  v78 = a1 + 8;
  *(a1 + 176) = v6;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
  }

  v64 = &v64;
  memset(v90, 0, 24);
  memset(v89, 0, sizeof(v89));
  MEMORY[0x28223BE20](a4);
  v12 = v11 & v10 | v9 & v8;
  v14 = v13 < 0 || ((v12 / 228.0) * 3.0) < 3;
  v80 = v61;
  v62 = 0;
  *&v61[492] = 0;
  v63 = 0;
  if (v14)
  {
    v15 = 3;
  }

  else
  {
    v15 = ((v12 / 228.0) * 3.0);
  }

  v67 = a3;
  v68 = v7;
  if (v15 <= v12)
  {
    v71 = v9 & v10 | v11 & v8;
    v74 = v71;
    v16 = v15 - 1;
    v65 = v12;
    v66 = v15;
    v72 = xmmword_261561000;
    v73 = a1;
    while (1)
    {
      v17 = 0;
      v18 = *(v7 + 48);
      v19 = ((*(v7 + 16) + ~v16) & -*(v7 + 56)) + ((*(v7 + 32) - 1) & -*(v7 + 56) | (*(v7 + 56) - 1) & v16) * *(v7 + 24);
      v20 = v80;
      v80[2] = 0;
      LODWORD(v18) = *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL));
      *v20 = 0;
      v21 = ((1 << v19) & v18) == 0;
      v22 = 0;
      v23 = !v21;
      v77 = v23;
      v24 = v21 ? 3 : 2;
      v75 = v16;
      v76 = v16;
      while (v22 < v71)
      {
        v25 = v24;
        while (2)
        {
          v80[v25] = 0;
          v26 = v22;
          v27 = 1;
          v28 = v22;
          while (1)
          {
            v29 = v28;
            v30 = sub_261470964(v7, v28, v75);
            if ((v77 ^ v30))
            {
              break;
            }

            v80[v25] = v27++;
            v28 = v29 + 1;
            if (v29 + 1 >= v74)
            {
              if (v26 + 1 > v71)
              {
                v33 = (v26 + 1);
              }

              else
              {
                v33 = v71;
              }

              v70 = v33;
              v77 ^= 1u;
              v24 = v25 + 1;
              goto LABEL_33;
            }
          }

          v77 ^= 1u;
          v24 = v25 + 1;
          LODWORD(v22) = v29;
          if (v25 <= 0x79)
          {
            ++v25;
            if (v29 < v71)
            {
              continue;
            }
          }

          break;
        }

        v70 = v29;
        if (v29 >= v71)
        {
          goto LABEL_33;
        }

        v69 = 1;
        v32 = 114;
LABEL_37:
        v35 = v80;
        v82 = *v80 + v17;
        v79 = v32;
        v36 = 2;
        do
        {
          v37 = &v80[v36];
          v82 += *(v37 - 4);
          if ((*v81 & 0x802) != 0)
          {
            sub_261516ECC(v37, v31);
            if (v31.n128_f32[0] > -0.75)
            {
              v38 = 2;
              v39 = v82;
              do
              {
                v39 += v35[v38++];
              }

              while (v38 != 7);
              sub_261517DB8();
            }
          }

          if ((*(v81 + 1) & 4) != 0)
          {
            v31.n128_f32[0] = sub_2615170EC(v37);
            if (v31.n128_f32[0] > -0.9)
            {
              v40 = 0;
              v41 = v82;
              do
              {
                v42 = v35[v40 + 2];
                *&v96[v40 * 4] = v42;
                v41 += v42;
                ++v40;
              }

              while (v40 != 9);
              operator new();
            }
          }

          ++v36;
          ++v35;
        }

        while (v36 != v79);
        a3 = v67;
        v7 = v68;
        if ((v69 & 1) == 0)
        {
          goto LABEL_58;
        }

        v43 = 0;
        if (v77)
        {
          v44 = 12;
        }

        else
        {
          v44 = 11;
        }

        v24 = v44;
        v45 = 111;
        if ((v77 & 1) == 0)
        {
          v45 = 112;
        }

        v46 = v80;
        do
        {
          v47 = v46[v45];
          *v46++ = v47;
          v43 += v47;
          --v44;
        }

        while (v44);
        v22 = v70;
        v17 = v70 - v43;
      }

      v70 = v22;
LABEL_33:
      v34 = v24 + 4;
      if (__OFSUB__(v24, v24 + 4))
      {
        v34 = v24;
      }

      bzero(&v80[v24], 4 * (v34 - v24) + 4);
      if (v24 >= 7)
      {
        break;
      }

LABEL_58:
      v16 = v75 + v66;
      if (v75 + v66 >= v65)
      {
        goto LABEL_59;
      }
    }

    v69 = 0;
    v32 = v24 - 4;
    goto LABEL_37;
  }

LABEL_59:
  v48 = *v81;
  if ((*v81 & 0x802) != 0)
  {
    if (qword_280CB3620 != -1)
    {
      dispatch_once(&qword_280CB3620, &unk_2873D0660);
    }

    v49 = qword_280CB3618;
    if (os_log_type_enabled(qword_280CB3618, OS_LOG_TYPE_DEBUG))
    {
      v59 = (*(a1 + 24) - *(a1 + 16)) >> 3;
      v60 = (*(a1 + 136) - *(a1 + 128)) >> 3;
      LODWORD(v94[0]) = 134349824;
      *(v94 + 4) = v59;
      WORD2(v94[1]) = 2050;
      *(&v94[1] + 6) = v60;
      HIWORD(v94[2]) = 2050;
      v94[3] = 0xBFE0000000000000;
      LOWORD(v95) = 2050;
      *(&v95 + 2) = 0xBFE8000000000000;
      _os_log_debug_impl(&dword_26146F000, v49, OS_LOG_TYPE_DEBUG, "FPCentersNum=(%{public}lu, %{public}lu) for threshold=(%{public}.2f, %{public}.2f)", v94, 0x2Au);
    }

    sub_2614F9100(a1, a1 + 128, (a1 + 16), *(a1 + 176));
    sub_2614F9100(a1, a1 + 152, (a1 + 64), *(a1 + 176));
    v48 = *v81;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    if ((v48 & 2) != 0)
    {
      sub_2614F928C(a1, a1 + 16);
      sub_2614F928C(a1, a1 + 64);
      v48 = *v81;
    }
  }

  else
  {
    v86 = 0;
    v87 = 0;
    v88 = 0;
  }

  v95 = 0u;
  memset(v94, 0, sizeof(v94));
  if ((v48 & 0x800) != 0)
  {
    sub_2614FACB8(a1, *(a1 + 16), *(a1 + 24), v94, 0);
    sub_2614FACB8(a1, *(a1 + 64), *(a1 + 72), &v94[3], 1);
    v48 = *v81;
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  if ((v48 & 0x400) != 0)
  {
    v50 = *(a1 + 40);
    v51 = (*(a1 + 48) - v50) >> 3;
    v52 = *(a1 + 176);
    if (v51 >= v52)
    {
      v51 = *(a1 + 176);
    }

    if (v51)
    {
      v53 = &v50[v51];
      do
      {
        sub_26148030C(&v83, v50++);
      }

      while (v50 != v53);
      v52 = *(a1 + 176);
    }

    v54 = *(a1 + 88);
    if ((*(a1 + 96) - v54) >> 3 < v52)
    {
      v52 = (*(a1 + 96) - v54) >> 3;
    }

    if (v52)
    {
      v55 = &v54[v52];
      do
      {
        sub_26148030C(&v83, v54++);
      }

      while (v54 != v55);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v91 = a3;
  v92 = 0;
  v56 = v87 - v86;
  if (v87 != v86)
  {
    if (!((v56 >> 3) >> 61))
    {
      sub_261470E48(v56 >> 3);
    }

    sub_2614709BC();
  }

  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  v91 = a3 + 3;
  v92 = 0;
  v57 = v84 - v83;
  if (v84 != v83)
  {
    if (!((v57 >> 3) >> 61))
    {
      sub_261470E48(v57 >> 3);
    }

    sub_2614709BC();
  }

  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0;
  sub_2614FAEA0((a3 + 6), v94[0], v94[1], v94[1] - v94[0]);
  a3[9] = 0;
  a3[10] = 0;
  v58 = (a3 + 9);
  *(v58 + 16) = 0;
  sub_2614FAEA0(v58, v94[3], v95, (v95 - v94[3]) >> 3);
  v93[0] = &v83;
  sub_261480A80(v93);
  v93[0] = &v94[3];
  sub_261470CC4(v93);
  v93[0] = v94;
  sub_261470CC4(v93);
  v94[0] = &v86;
  sub_261480A80(v94);
  v94[0] = v89;
  sub_26147086C(v94);
  v94[0] = v90;
  sub_26147086C(v94);
  if (v7)
  {
    sub_2614705CC(v7);
  }
}

void sub_2614F9028(_Unwind_Exception *a1)
{
  *(v1 + 384) = v1 + 224;
  sub_26147086C((v1 + 384));
  *(v1 + 384) = v1 + 248;
  sub_26147086C((v1 + 384));
  if (*(v1 + 32))
  {
    sub_2614705CC(*(v1 + 32));
  }

  _Unwind_Resume(a1);
}

void sub_2614F9100(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = (v8 - *a3) >> 3;
  if (v9 > 7)
  {
    if (v9 > a4)
    {
      v18 = 126 - 2 * __clz(v9);
      if (v8 == v7)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      sub_2614FDE84(v7, v8, v19, 1);

      sub_2614FE820(a3, a4);
    }
  }

  else
  {
    v10 = *(a2 + 8);
    v11 = 126 - 2 * __clz((v10 - *a2) >> 3);
    if (v10 == *a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    sub_2614FDE84(*a2, v10, v12, 1);
    v13 = (*(a2 + 8) - *a2) >> 3;
    v14 = *(a1 + 176);
    if (v13 > v14)
    {
      sub_2614FE820(a2, v14);
      v13 = *(a1 + 176);
    }

    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        if ((a3[1] - *a3) > 0x3F)
        {
          break;
        }

        if (i >= (*(a2 + 8) - *a2) >> 3)
        {
          sub_2614C3568();
        }

        v16 = *(*a2 + 8 * i);
        if (v16)
        {
          atomic_fetch_add_explicit(v16 + 2, 1u, memory_order_relaxed);
        }

        v20 = v16;
        sub_261518104(a1 + 8, &v20, a3);
        if (v16)
        {
          sub_2614705CC(v16);
        }
      }
    }
  }
}

void sub_2614F9274(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_2614F928C(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  result = *a2;
  v5 = v3 - *a2;
  v6 = v5 >> 3;
  if ((v5 >> 3) >= 3 && ((v5 >> 3) & 0x7FFFFFFF) <= *(a1 + 176))
  {
    v38 = sub_2614FDE68;
    v7 = 126 - 2 * __clz(v6);
    if (v3 == result)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    sub_2614FB0E8(result, v3, &v38, v8, 1);
    v9 = 0;
    v27 = (v6 - 2);
    v10 = v6 - 1;
    __asm { FMOV            V0.4S, #7.0 }

    v16 = 1;
    v17 = 2;
    v35 = v6;
    v31 = v6 - 1;
    do
    {
      v18 = *(*a2 + 8 * v9);
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1u, memory_order_relaxed);
      }

      v29 = v16;
      v30 = v9 + 1;
      v28 = v17;
      v33 = v17;
      do
      {
        v19 = *(*a2 + 8 * v16);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1u, memory_order_relaxed);
        }

        v20 = *(v18 + 20);
        v21 = *(v19 + 20);
        if (v21 >= v20)
        {
          v22 = *(v18 + 20);
        }

        else
        {
          v22 = *(v19 + 20);
        }

        if (vabds_f32(v20, v21) > 0.5 && ((v20 - v21) / v22) >= 0.05)
        {
          sub_2614705CC(v19);
          goto LABEL_39;
        }

        v32 = v16 + 1;
        if (v16 + 1 >= v6)
        {
          goto LABEL_34;
        }

        v23 = *(*a2 + 8 * v33);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1u, memory_order_relaxed);
        }

        v24 = *(v19 + 20);
        v25 = *(v23 + 20);
        if (v25 >= v24)
        {
          v26 = *(v19 + 20);
        }

        else
        {
          v26 = *(v23 + 20);
        }

        if (vabds_f32(v24, v25) <= 0.5 || ((v24 - v25) / v26) < 0.05)
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v18 + 8), 1u, memory_order_relaxed);
          }

          v38 = v18;
          v39 = 0;
          atomic_fetch_add_explicit((v19 + 8), 1u, memory_order_relaxed);
          if (v39)
          {
            sub_2614705CC(v39);
          }

          v39 = v19;
          *&v40 = 0;
          atomic_fetch_add_explicit((v23 + 8), 1u, memory_order_relaxed);
          if (v40)
          {
            sub_2614705CC(v40);
          }

          *&v40 = v23;
          memset(v36, 0, 24);
          v36[13] = v36;
          v37 = 0;
          operator new();
        }

        result = sub_2614705CC(v23);
        LODWORD(v6) = v35;
        v10 = v31;
        if (v19)
        {
LABEL_34:
          result = sub_2614705CC(v19);
        }

        v16 = v32;
        ++v33;
      }

      while (v10 > v32);
      if (!v18)
      {
        goto LABEL_40;
      }

LABEL_39:
      result = sub_2614705CC(v18);
LABEL_40:
      v17 = v28 + 1;
      v16 = v29 + 1;
      v9 = v30;
    }

    while (v30 != v27);
  }

  return result;
}

atomic_uint *sub_2614FACB8(atomic_uint *result, atomic_uint **a2, atomic_uint **a3, uint64_t a4, int a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2 != a3)
  {
    v8 = a2;
    v9 = result;
    do
    {
      if (((*v8)[8] & 1) == 0)
      {
        v10 = (*(**v8 + 24))(*v8);
        v11.n128_f64[0] = (*(**v8 + 16))();
        v12 = v11.n128_f32[0];
        v11.n128_u32[0] = -0.75;
        v13 = sub_2615178B8((v9 + 2), v10, v12, ((*(*v8 + 5) * 2.0) + 0.5), v20, v19, 5, a5, v11, 0);
        if (v13 > -0.75)
        {
          *(*v8 + 6) = v13 + *(*v8 + 6);
          v14 = *(a4 + 8);
          if (v14 >= *(a4 + 16))
          {
            v15 = sub_2614FAFDC(a4, v8);
          }

          else
          {
            sub_2614FAF84(a4, v8);
            v15 = v14 + 8;
          }

          *(a4 + 8) = v15;
        }
      }

      ++v8;
    }

    while (v8 != a3);
    v16 = *(a4 + 8);
    v17 = 126 - 2 * __clz((v16 - *a4) >> 3);
    if (v16 == *a4)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    return sub_2614FDE84(*a4, v16, v18, 1);
  }

  return result;
}

void **sub_2614FAE58(void **a1)
{
  v3 = a1 + 3;
  sub_261470CC4(&v3);
  v3 = a1;
  sub_261470CC4(&v3);
  return a1;
}

uint64_t sub_2614FAEA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_261470D9C(result, a4);
  }

  return result;
}

atomic_uint *sub_2614FAF84(atomic_uint *result, atomic_uint **a2)
{
  v2 = result;
  v3 = *(result + 1);
  *v3 = 0;
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
    result = *v3;
    if (*v3)
    {
      result = sub_2614705CC(result);
    }
  }

  *v3 = v4;
  *(v2 + 1) = v3 + 1;
  return result;
}

uint64_t sub_2614FAFDC(uint64_t a1, atomic_uint **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_2614709BC();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 2 > v3)
  {
    v3 = v5 >> 2;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_261470E48(v6);
  }

  v7 = (8 * v2);
  *(&v16 + 1) = 0;
  *v7 = 0;
  v8 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
    if (*v7)
    {
      sub_2614705CC(*v7);
    }
  }

  *v7 = v8;
  *&v16 = v7 + 1;
  v9 = *(a1 + 8);
  v10 = (v7 + *a1 - v9);
  sub_26148F478(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v16;
  *(a1 + 8) = v16;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v15[0] = v11;
  v15[1] = v11;
  sub_26148F554(v15);
  return v14;
}

atomic_uint *sub_2614FB0E8(atomic_uint *result, atomic_uint **a2, uint64_t (**a3)(atomic_uint **, atomic_uint **), uint64_t a4, char a5)
{
  j = result;
LABEL_2:
  v9 = j;
  v168 = j;
  while (1)
  {
    v10 = a2 - v9;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          return sub_2614FD3C4(v9, v9 + 1, a2 - 1, a3);
        case 4:
          return sub_2614FD6A4(v9, v9 + 1, v9 + 2, a2 - 1, a3);
        case 5:
          return sub_2614FD894(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v71 = *a3;
        v172 = 0;
        v74 = *(a2 - 1);
        v73 = a2 - 1;
        v72 = v74;
        if (v74)
        {
          atomic_fetch_add_explicit(v72 + 2, 1u, memory_order_relaxed);
        }

        v171 = 0;
        v172 = v72;
        v75 = *v9;
        if (*v9)
        {
          atomic_fetch_add_explicit(v75 + 2, 1u, memory_order_relaxed);
        }

        v171 = v75;
        v76 = v71(&v172, &v171);
        if (v171)
        {
          sub_2614705CC(v171);
        }

        result = v172;
        if (v172)
        {
          result = sub_2614705CC(v172);
        }

        if (v76)
        {
          return sub_2614DB518(v9, v73);
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      v77 = v9 + 1;
      v79 = v9 == a2 || v77 == a2;
      if ((a5 & 1) == 0)
      {
        if (!v79)
        {
          do
          {
            v153 = v9;
            v9 = v77;
            v154 = *a3;
            v155 = v153[1];
            if (v155)
            {
              atomic_fetch_add_explicit(v155 + 2, 1u, memory_order_relaxed);
            }

            v181 = 0;
            v182 = v155;
            v156 = *v153;
            if (v156)
            {
              atomic_fetch_add_explicit(v156 + 2, 1u, memory_order_relaxed);
            }

            v181 = v156;
            v157 = v154(&v182, &v181);
            if (v181)
            {
              sub_2614705CC(v181);
            }

            result = v182;
            if (v182)
            {
              result = sub_2614705CC(v182);
            }

            if (v157)
            {
              v158 = *v9;
              if (*v9)
              {
                atomic_fetch_add_explicit(v158 + 2, 1u, memory_order_relaxed);
              }

              v159 = v9;
              do
              {
                v160 = *(v9 - 1);
                if (v160)
                {
                  atomic_fetch_add_explicit(v160 + 2, 1u, memory_order_relaxed);
                }

                if (*v9)
                {
                  sub_2614705CC(*v9);
                }

                *v9 = v160;
                v161 = *a3;
                if (v158)
                {
                  atomic_fetch_add_explicit(v158 + 2, 1u, memory_order_relaxed);
                }

                v180 = v158;
                v179 = 0;
                v162 = *(v9 - 2);
                if (v162)
                {
                  atomic_fetch_add_explicit(v162 + 2, 1u, memory_order_relaxed);
                }

                v179 = v162;
                v163 = v161(&v180, &v179);
                if (v179)
                {
                  sub_2614705CC(v179);
                }

                if (v180)
                {
                  sub_2614705CC(v180);
                }

                --v9;
              }

              while ((v163 & 1) != 0);
              if (v158)
              {
                atomic_fetch_add_explicit(v158 + 2, 1u, memory_order_relaxed);
              }

              result = *v9;
              if (*v9)
              {
                result = sub_2614705CC(result);
              }

              *v9 = v158;
              v9 = v159;
              if (v158)
              {
                result = sub_2614705CC(v158);
              }
            }

            v77 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }

        return result;
      }

      if (v79)
      {
        return result;
      }

      v80 = 0;
      v81 = v9;
LABEL_202:
      v82 = v81;
      v81 = v77;
      v83 = *a3;
      v84 = v82[1];
      if (v84)
      {
        atomic_fetch_add_explicit(v84 + 2, 1u, memory_order_relaxed);
      }

      v181 = 0;
      v182 = v84;
      v85 = *v82;
      if (v85)
      {
        atomic_fetch_add_explicit(v85 + 2, 1u, memory_order_relaxed);
      }

      v181 = v85;
      v86 = v83(&v182, &v181);
      if (v181)
      {
        sub_2614705CC(v181);
      }

      result = v182;
      if (v182)
      {
        result = sub_2614705CC(v182);
      }

      if (!v86)
      {
        goto LABEL_236;
      }

      v87 = *v81;
      if (*v81)
      {
        atomic_fetch_add_explicit(v87 + 2, 1u, memory_order_relaxed);
      }

      for (i = v80; ; i -= 8)
      {
        v89 = v168 + i;
        v90 = *(v168 + i);
        if (v90)
        {
          atomic_fetch_add_explicit((v90 + 8), 1u, memory_order_relaxed);
        }

        v91 = *(v89 + 1);
        if (v91)
        {
          sub_2614705CC(v91);
        }

        *(v89 + 1) = v90;
        if (!i)
        {
          break;
        }

        v92 = *a3;
        if (v87)
        {
          atomic_fetch_add_explicit(v87 + 2, 1u, memory_order_relaxed);
        }

        v180 = v87;
        v179 = 0;
        v93 = *(v168 + i - 8);
        if (v93)
        {
          atomic_fetch_add_explicit(v93 + 2, 1u, memory_order_relaxed);
        }

        v179 = v93;
        v94 = v92(&v180, &v179);
        if (v179)
        {
          sub_2614705CC(v179);
        }

        if (v180)
        {
          sub_2614705CC(v180);
          if ((v94 & 1) == 0)
          {
            goto LABEL_238;
          }
        }

        else if (!v94)
        {
LABEL_238:
          v95 = (v168 + i);
          if (!v87)
          {
LABEL_232:
            result = *v95;
            if (*v95)
            {
              result = sub_2614705CC(result);
            }

            *v95 = v87;
            if (v87)
            {
              result = sub_2614705CC(v87);
            }

LABEL_236:
            v77 = v81 + 1;
            v80 += 8;
            if (v81 + 1 == a2)
            {
              return result;
            }

            goto LABEL_202;
          }

LABEL_231:
          atomic_fetch_add_explicit(v87 + 2, 1u, memory_order_relaxed);
          goto LABEL_232;
        }
      }

      v95 = v168;
      if (!v87)
      {
        goto LABEL_232;
      }

      goto LABEL_231;
    }

    if (!a4)
    {
      break;
    }

    v11 = &v9[v10 >> 1];
    v12 = a2 - 1;
    if (v10 < 0x81)
    {
      sub_2614FD3C4(&v9[v10 >> 1], v9, a2 - 1, a3);
    }

    else
    {
      sub_2614FD3C4(v9, &v9[v10 >> 1], a2 - 1, a3);
      sub_2614FD3C4(v9 + 1, v11 - 1, a2 - 2, a3);
      sub_2614FD3C4(v9 + 2, v11 + 1, a2 - 3, a3);
      sub_2614FD3C4(v11 - 1, &v9[v10 >> 1], v11 + 1, a3);
      sub_2614DB518(v9, &v9[v10 >> 1]);
    }

    --a4;
    if ((a5 & 1) == 0)
    {
      v13 = *a3;
      v170 = 0;
      v14 = *(v9 - 1);
      if (v14)
      {
        atomic_fetch_add_explicit(v14 + 2, 1u, memory_order_relaxed);
      }

      v169 = 0;
      v170 = v14;
      v15 = *v9;
      if (*v9)
      {
        atomic_fetch_add_explicit(v15 + 2, 1u, memory_order_relaxed);
      }

      v169 = v15;
      v16 = v13(&v170, &v169);
      if (v169)
      {
        sub_2614705CC(v169);
      }

      if (v170)
      {
        sub_2614705CC(v170);
      }

      if ((v16 & 1) == 0)
      {
        v45 = *v9;
        if (*v9)
        {
          atomic_fetch_add_explicit(v45 + 2, 1u, memory_order_relaxed);
          v46 = *a3;
          atomic_fetch_add_explicit(v45 + 2, 1u, memory_order_relaxed);
        }

        else
        {
          v46 = *a3;
        }

        v182 = v45;
        v47 = *v12;
        if (*v12)
        {
          atomic_fetch_add_explicit(v47 + 2, 1u, memory_order_relaxed);
        }

        v181 = v47;
        v48 = v46(&v182, &v181);
        if (v181)
        {
          sub_2614705CC(v181);
        }

        if (v182)
        {
          sub_2614705CC(v182);
        }

        if (v48)
        {
          j = v9;
          do
          {
            v49 = *a3;
            if (v45)
            {
              atomic_fetch_add_explicit(v45 + 2, 1u, memory_order_relaxed);
            }

            v180 = v45;
            v51 = j[1];
            ++j;
            v50 = v51;
            if (v51)
            {
              atomic_fetch_add_explicit(v50 + 2, 1u, memory_order_relaxed);
            }

            v179 = v50;
            v52 = v49(&v180, &v179);
            if (v179)
            {
              sub_2614705CC(v179);
            }

            if (v180)
            {
              sub_2614705CC(v180);
            }
          }

          while ((v52 & 1) == 0);
        }

        else
        {
          for (j = v9 + 1; j < a2; ++j)
          {
            v68 = *a3;
            if (v45)
            {
              atomic_fetch_add_explicit(v45 + 2, 1u, memory_order_relaxed);
            }

            v180 = v45;
            v69 = *j;
            if (*j)
            {
              atomic_fetch_add_explicit(v69 + 2, 1u, memory_order_relaxed);
            }

            v179 = v69;
            v70 = v68(&v180, &v179);
            if (v179)
            {
              sub_2614705CC(v179);
            }

            if (v180)
            {
              sub_2614705CC(v180);
            }

            if (v70)
            {
              break;
            }
          }
        }

        v53 = a2;
        if (j < a2)
        {
          v53 = a2;
          do
          {
            v54 = *a3;
            if (v45)
            {
              atomic_fetch_add_explicit(v45 + 2, 1u, memory_order_relaxed);
            }

            v177 = 0;
            v178 = v45;
            v56 = *--v53;
            v55 = v56;
            if (v56)
            {
              atomic_fetch_add_explicit(v55 + 2, 1u, memory_order_relaxed);
            }

            v177 = v55;
            v57 = v54(&v178, &v177);
            if (v177)
            {
              sub_2614705CC(v177);
            }

            if (v178)
            {
              sub_2614705CC(v178);
            }
          }

          while ((v57 & 1) != 0);
        }

        while (j < v53)
        {
          sub_2614DB518(j, v53);
          do
          {
            v58 = *a3;
            if (v45)
            {
              atomic_fetch_add_explicit(v45 + 2, 1u, memory_order_relaxed);
            }

            v176 = v45;
            v60 = j[1];
            ++j;
            v59 = v60;
            if (v60)
            {
              atomic_fetch_add_explicit(v59 + 2, 1u, memory_order_relaxed);
            }

            v175 = v59;
            v61 = v58(&v176, &v175);
            if (v175)
            {
              sub_2614705CC(v175);
            }

            if (v176)
            {
              sub_2614705CC(v176);
            }
          }

          while (!v61);
          do
          {
            v62 = *a3;
            if (v45)
            {
              atomic_fetch_add_explicit(v45 + 2, 1u, memory_order_relaxed);
            }

            v173 = 0;
            v174 = v45;
            v64 = *--v53;
            v63 = v64;
            if (v64)
            {
              atomic_fetch_add_explicit(v63 + 2, 1u, memory_order_relaxed);
            }

            v173 = v63;
            v65 = v62(&v174, &v173);
            if (v173)
            {
              sub_2614705CC(v173);
            }

            if (v174)
            {
              sub_2614705CC(v174);
            }
          }

          while ((v65 & 1) != 0);
        }

        v66 = j - 1;
        if (j - 1 != v168)
        {
          v67 = *v66;
          if (*v66)
          {
            atomic_fetch_add_explicit(v67 + 2, 1u, memory_order_relaxed);
          }

          if (*v168)
          {
            sub_2614705CC(*v168);
          }

          *v168 = v67;
        }

        if (v45)
        {
          atomic_fetch_add_explicit(v45 + 2, 1u, memory_order_relaxed);
        }

        result = *v66;
        if (*v66)
        {
          result = sub_2614705CC(result);
        }

        *v66 = v45;
        if (v45)
        {
          result = sub_2614705CC(v45);
        }

        goto LABEL_167;
      }
    }

    v17 = *v9;
    if (*v9)
    {
      atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
    }

    v18 = v9;
    do
    {
      v20 = v18[1];
      ++v18;
      v19 = v20;
      v21 = *a3;
      if (v20)
      {
        atomic_fetch_add_explicit(v19 + 2, 1u, memory_order_relaxed);
      }

      v182 = v19;
      if (v17)
      {
        atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
      }

      v181 = v17;
      v22 = v21(&v182, &v181);
      if (v181)
      {
        sub_2614705CC(v181);
      }

      if (v182)
      {
        sub_2614705CC(v182);
      }
    }

    while ((v22 & 1) != 0);
    k = a2;
    if (v18 - 1 == v9)
    {
      k = a2;
      if (v18 < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          v28 = *a3;
          v180 = 0;
          v29 = *k;
          if (*k)
          {
            atomic_fetch_add_explicit(v29 + 2, 1u, memory_order_relaxed);
          }

          v180 = v29;
          if (v17)
          {
            atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
          }

          v179 = v17;
          v30 = v28(&v180, &v179);
          if (v179)
          {
            sub_2614705CC(v179);
          }

          if (v180)
          {
            sub_2614705CC(v180);
          }

          v31 = v18 >= k ? 1 : v30;
          if (v31)
          {
            break;
          }
        }
      }
    }

    else
    {
      do
      {
        v180 = 0;
        v25 = *--k;
        v24 = v25;
        v26 = *a3;
        if (v25)
        {
          atomic_fetch_add_explicit(v24 + 2, 1u, memory_order_relaxed);
        }

        v180 = v24;
        if (v17)
        {
          atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
        }

        v179 = v17;
        v27 = v26(&v180, &v179);
        if (v179)
        {
          sub_2614705CC(v179);
        }

        if (v180)
        {
          sub_2614705CC(v180);
        }
      }

      while ((v27 & 1) == 0);
    }

    v32 = a2;
    j = v18;
    if (v18 < k)
    {
      v33 = k;
      do
      {
        sub_2614DB518(j, v33);
        do
        {
          v35 = j[1];
          ++j;
          v34 = v35;
          v36 = *a3;
          if (v35)
          {
            atomic_fetch_add_explicit(v34 + 2, 1u, memory_order_relaxed);
          }

          v178 = v34;
          if (v17)
          {
            atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
          }

          v177 = v17;
          v37 = v36(&v178, &v177);
          if (v177)
          {
            sub_2614705CC(v177);
          }

          if (v178)
          {
            sub_2614705CC(v178);
          }
        }

        while ((v37 & 1) != 0);
        do
        {
          v176 = 0;
          v39 = *--v33;
          v38 = v39;
          v40 = *a3;
          if (v39)
          {
            atomic_fetch_add_explicit(v38 + 2, 1u, memory_order_relaxed);
          }

          v176 = v38;
          if (v17)
          {
            atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
          }

          v175 = v17;
          v41 = v40(&v176, &v175);
          if (v175)
          {
            sub_2614705CC(v175);
          }

          if (v176)
          {
            sub_2614705CC(v176);
          }
        }

        while (!v41);
      }

      while (j < v33);
    }

    v42 = j - 1;
    a2 = v32;
    if (j - 1 != v168)
    {
      v43 = *v42;
      if (*v42)
      {
        atomic_fetch_add_explicit(v43 + 2, 1u, memory_order_relaxed);
      }

      if (*v168)
      {
        sub_2614705CC(*v168);
      }

      *v168 = v43;
    }

    if (v17)
    {
      atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
    }

    v9 = v168;
    if (*v42)
    {
      sub_2614705CC(*v42);
    }

    *v42 = v17;
    if (v17)
    {
      sub_2614705CC(v17);
    }

    if (v18 < k)
    {
      goto LABEL_102;
    }

    v44 = sub_2614FDB18(v168, j - 1, a3);
    result = sub_2614FDB18(j, a2, a3);
    if (!result)
    {
      if (v44)
      {
        goto LABEL_2;
      }

LABEL_102:
      result = sub_2614FB0E8(v168, j - 1, a3, a4, a5 & 1);
LABEL_167:
      a5 = 0;
      goto LABEL_2;
    }

    a2 = j - 1;
    if (v44)
    {
      return result;
    }
  }

  if (v9 == a2)
  {
    return result;
  }

  v96 = (v10 - 2) >> 1;
  v164 = a2;
  v167 = v96;
  do
  {
    v97 = v96;
    if (v167 < v96)
    {
      goto LABEL_297;
    }

    v98 = (2 * v96) | 1;
    v99 = &v168[v98];
    if (2 * v96 + 2 < v10)
    {
      v100 = *a3;
      v101 = *v99;
      if (*v99)
      {
        atomic_fetch_add_explicit(v101 + 2, 1u, memory_order_relaxed);
      }

      v182 = v101;
      v102 = v99[1];
      if (v102)
      {
        atomic_fetch_add_explicit(v102 + 2, 1u, memory_order_relaxed);
      }

      v181 = v102;
      v103 = v100(&v182, &v181);
      if (v181)
      {
        sub_2614705CC(v181);
      }

      if (v182)
      {
        sub_2614705CC(v182);
        if ((v103 & 1) == 0)
        {
          goto LABEL_253;
        }

LABEL_252:
        ++v99;
        v98 = 2 * v97 + 2;
        goto LABEL_253;
      }

      if (v103)
      {
        goto LABEL_252;
      }
    }

LABEL_253:
    v104 = *a3;
    v105 = *v99;
    if (*v99)
    {
      atomic_fetch_add_explicit(v105 + 2, 1u, memory_order_relaxed);
    }

    v106 = &v168[v97];
    v180 = v105;
    v107 = *v106;
    if (*v106)
    {
      atomic_fetch_add_explicit(v107 + 2, 1u, memory_order_relaxed);
    }

    v179 = v107;
    v108 = v104(&v180, &v179);
    if (v179)
    {
      sub_2614705CC(v179);
    }

    result = v180;
    if (v180)
    {
      result = sub_2614705CC(v180);
    }

    if ((v108 & 1) == 0)
    {
      v109 = *v106;
      if (*v106)
      {
        atomic_fetch_add_explicit(v109 + 2, 1u, memory_order_relaxed);
      }

      while (1)
      {
        v110 = v99;
        v111 = *v99;
        if (v111)
        {
          atomic_fetch_add_explicit(v111 + 2, 1u, memory_order_relaxed);
        }

        if (*v106)
        {
          sub_2614705CC(*v106);
        }

        *v106 = v111;
        if (v167 < v98)
        {
LABEL_291:
          if (v109)
          {
            atomic_fetch_add_explicit(v109 + 2, 1u, memory_order_relaxed);
          }

          result = *v110;
          if (*v110)
          {
            result = sub_2614705CC(result);
          }

          *v110 = v109;
          if (v109)
          {
            result = sub_2614705CC(v109);
          }

          break;
        }

        v112 = 2 * v98;
        v98 = (2 * v98) | 1;
        v99 = &v168[v98];
        v113 = v112 + 2;
        if (v112 + 2 < v10)
        {
          v114 = *a3;
          v115 = *v99;
          if (*v99)
          {
            atomic_fetch_add_explicit(v115 + 2, 1u, memory_order_relaxed);
          }

          v178 = v115;
          v116 = v99[1];
          if (v116)
          {
            atomic_fetch_add_explicit(v116 + 2, 1u, memory_order_relaxed);
          }

          v177 = v116;
          v117 = v114(&v178, &v177);
          if (v177)
          {
            sub_2614705CC(v177);
          }

          if (!v178)
          {
            if (!v117)
            {
              goto LABEL_279;
            }

LABEL_278:
            ++v99;
            v98 = v113;
            goto LABEL_279;
          }

          sub_2614705CC(v178);
          if (v117)
          {
            goto LABEL_278;
          }
        }

LABEL_279:
        v118 = *a3;
        v119 = *v99;
        if (*v99)
        {
          atomic_fetch_add_explicit(v119 + 2, 1u, memory_order_relaxed);
        }

        v176 = v119;
        if (v109)
        {
          atomic_fetch_add_explicit(v109 + 2, 1u, memory_order_relaxed);
        }

        v175 = v109;
        v120 = v118(&v176, &v175);
        if (v175)
        {
          sub_2614705CC(v175);
        }

        if (v176)
        {
          sub_2614705CC(v176);
        }

        v106 = v110;
        if (v120)
        {
          goto LABEL_291;
        }
      }
    }

LABEL_297:
    v96 = v97 - 1;
  }

  while (v97);
  v121 = v164;
  v122 = v168;
  while (2)
  {
    if (v10 < 2)
    {
      goto LABEL_366;
    }

    v165 = v121;
    v123 = *v122;
    if (*v122)
    {
      atomic_fetch_add_explicit(v123 + 2, 1u, memory_order_relaxed);
    }

    v124 = 0;
    while (2)
    {
      v125 = &v122[v124];
      v126 = v125 + 1;
      v127 = 2 * v124;
      v124 = (2 * v124) | 1;
      v128 = v127 + 2;
      if (v127 + 2 < v10)
      {
        v129 = *a3;
        v182 = 0;
        v130 = *v126;
        if (*v126)
        {
          atomic_fetch_add_explicit(v130 + 2, 1u, memory_order_relaxed);
        }

        v181 = 0;
        v182 = v130;
        v133 = v125[2];
        v132 = v125 + 2;
        v131 = v133;
        if (v133)
        {
          atomic_fetch_add_explicit(v131 + 2, 1u, memory_order_relaxed);
        }

        v181 = v131;
        v134 = v129(&v182, &v181);
        if (v181)
        {
          sub_2614705CC(v181);
        }

        if (v182)
        {
          sub_2614705CC(v182);
          if (v134)
          {
            goto LABEL_314;
          }
        }

        else if (v134)
        {
LABEL_314:
          v126 = v132;
          v124 = v128;
        }
      }

      v135 = *v126;
      if (*v126)
      {
        atomic_fetch_add_explicit(v135 + 2, 1u, memory_order_relaxed);
      }

      if (*v122)
      {
        sub_2614705CC(*v122);
      }

      *v122 = v135;
      v122 = v126;
      if (v124 <= ((v10 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    v121 = v165;
    v136 = v165 - 1;
    if (v126 == v165 - 1)
    {
      if (v123)
      {
        atomic_fetch_add_explicit(v123 + 2, 1u, memory_order_relaxed);
      }

      result = *v126;
      v122 = v168;
      if (*v126)
      {
        result = sub_2614705CC(result);
      }

      *v126 = v123;
      if (v123)
      {
LABEL_365:
        result = sub_2614705CC(v123);
      }
    }

    else
    {
      v137 = *v136;
      if (*v136)
      {
        atomic_fetch_add_explicit(v137 + 2, 1u, memory_order_relaxed);
      }

      if (*v126)
      {
        sub_2614705CC(*v126);
      }

      *v126 = v137;
      if (v123)
      {
        atomic_fetch_add_explicit(v123 + 2, 1u, memory_order_relaxed);
      }

      result = *v136;
      if (*v136)
      {
        result = sub_2614705CC(result);
      }

      *v136 = v123;
      v138 = (v126 - v168 + 8) >> 3;
      v139 = v138 < 2;
      v140 = v138 - 2;
      if (!v139)
      {
        v141 = v140 >> 1;
        v142 = &v168[v140 >> 1];
        v143 = *a3;
        v144 = *v142;
        if (*v142)
        {
          atomic_fetch_add_explicit(v144 + 2, 1u, memory_order_relaxed);
        }

        v182 = v144;
        v145 = *v126;
        if (*v126)
        {
          atomic_fetch_add_explicit(v145 + 2, 1u, memory_order_relaxed);
        }

        v181 = v145;
        v146 = v143(&v182, &v181);
        if (v181)
        {
          sub_2614705CC(v181);
        }

        result = v182;
        if (v182)
        {
          result = sub_2614705CC(v182);
        }

        if (v146)
        {
          v147 = *v126;
          if (*v126)
          {
            atomic_fetch_add_explicit(v147 + 2, 1u, memory_order_relaxed);
          }

          do
          {
            v148 = v142;
            v149 = *v142;
            if (v149)
            {
              atomic_fetch_add_explicit(v149 + 2, 1u, memory_order_relaxed);
            }

            if (*v126)
            {
              sub_2614705CC(*v126);
            }

            *v126 = v149;
            if (!v141)
            {
              break;
            }

            v141 = (v141 - 1) >> 1;
            v142 = &v168[v141];
            v150 = *a3;
            v151 = *v142;
            if (*v142)
            {
              atomic_fetch_add_explicit(v151 + 2, 1u, memory_order_relaxed);
            }

            v180 = v151;
            if (v147)
            {
              atomic_fetch_add_explicit(v147 + 2, 1u, memory_order_relaxed);
            }

            v179 = v147;
            v152 = v150(&v180, &v179);
            if (v179)
            {
              sub_2614705CC(v179);
            }

            if (v180)
            {
              sub_2614705CC(v180);
            }

            v126 = v148;
          }

          while ((v152 & 1) != 0);
          if (v147)
          {
            atomic_fetch_add_explicit(v147 + 2, 1u, memory_order_relaxed);
          }

          result = *v148;
          if (*v148)
          {
            result = sub_2614705CC(result);
          }

          *v148 = v147;
          if (v147)
          {
            result = sub_2614705CC(v147);
          }
        }
      }

      v121 = v165;
      v122 = v168;
      if (v123)
      {
        goto LABEL_365;
      }
    }

LABEL_366:
    --v121;
    v139 = v10-- > 2;
    if (v139)
    {
      continue;
    }

    return result;
  }
}

void sub_2614FC11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = *(v24 - 96);
  if (v26)
  {
    sub_2614705CC(v26);
  }

  v27 = *(v24 - 88);
  if (v27)
  {
    sub_2614705CC(v27);
  }

  if (v23)
  {
    sub_2614705CC(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614FC290(uint64_t result, int *a2, uint64_t *a3, uint64_t a4, char a5)
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
        v86 = *v10;
        v87 = *v11;
        if (*(*a3 + 4 * v86) <= *(*a3 + 4 * v87))
        {
          return result;
        }

        *v11 = v86;
LABEL_170:
        *v10 = v87;
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
      v94 = v11 + 1;
      v95 = v11[1];
      v96 = v11 + 2;
      v97 = v11[2];
      v98 = *v11;
      v99 = *a3;
      v100 = *(*a3 + 4 * v95);
      v101 = *(*a3 + 4 * *v11);
      v102 = v97;
      v103 = *(*a3 + 4 * v97);
      if (v100 <= v101)
      {
        if (v103 > v100)
        {
          v104 = v95;
          *v94 = v97;
          *v96 = v95;
          v105 = v11;
          v106 = v11 + 1;
          v102 = v95;
          if (v103 > v101)
          {
            goto LABEL_172;
          }

LABEL_174:
          v157 = *v10;
          if (*(v99 + 4 * v157) > *(v99 + 4 * v102))
          {
            *v96 = v157;
            *v10 = v95;
            v158 = *v96;
            v159 = *v94;
            v160 = *(v99 + 4 * v158);
            if (v160 > *(v99 + 4 * v159))
            {
              v11[1] = v158;
              v11[2] = v159;
              v161 = *v11;
              if (v160 > *(v99 + 4 * v161))
              {
                *v11 = v158;
                v11[1] = v161;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v104 = v98;
        if (v103 > v100)
        {
          v105 = v11;
          v106 = v11 + 2;
          v95 = *v11;
          goto LABEL_172;
        }

        *v11 = v95;
        v11[1] = v98;
        v105 = v11 + 1;
        v106 = v11 + 2;
        v95 = v98;
        if (v103 > v101)
        {
LABEL_172:
          *v105 = v97;
          *v106 = v98;
          v102 = v104;
          goto LABEL_174;
        }
      }

      v95 = v97;
      goto LABEL_174;
    }

    if (v12 == 5)
    {
      v85 = *a3;

      return sub_2614FCF34(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v85);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v107 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v108 = *a3;
            v109 = 4;
            v110 = v11;
            do
            {
              v112 = *v110;
              v111 = v110[1];
              v110 = v107;
              v113 = *(v108 + 4 * v111);
              if (v113 > *(v108 + 4 * v112))
              {
                v114 = v109;
                while (1)
                {
                  *(v11 + v114) = v112;
                  v115 = v114 - 4;
                  if (v114 == 4)
                  {
                    break;
                  }

                  v112 = *(v11 + v114 - 8);
                  v114 -= 4;
                  if (v113 <= *(v108 + 4 * v112))
                  {
                    v116 = (v11 + v115);
                    goto LABEL_122;
                  }
                }

                v116 = v11;
LABEL_122:
                *v116 = v111;
              }

              v107 = v110 + 1;
              v109 += 4;
            }

            while (v110 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v151 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v152 = *a3;
          do
          {
            v154 = *v9;
            v153 = v9[1];
            v9 = v151;
            v155 = *(v152 + 4 * v153);
            if (v155 > *(v152 + 4 * v154))
            {
              do
              {
                *v151 = v154;
                v154 = *(v151 - 2);
                --v151;
              }

              while (v155 > *(v152 + 4 * v154));
              *v151 = v153;
            }

            v151 = v9 + 1;
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
        v117 = (v12 - 2) >> 1;
        v118 = *a3;
        v119 = v117;
        do
        {
          v120 = v119;
          if (v117 >= v119)
          {
            v121 = (2 * v119) | 1;
            v122 = &v11[v121];
            if (2 * v120 + 2 < v12 && *(v118 + 4 * *v122) > *(v118 + 4 * v122[1]))
            {
              ++v122;
              v121 = 2 * v120 + 2;
            }

            v123 = &v11[v120];
            v124 = *v122;
            v125 = *v123;
            v126 = *(v118 + 4 * v125);
            if (*(v118 + 4 * v124) <= v126)
            {
              do
              {
                v127 = v122;
                *v123 = v124;
                if (v117 < v121)
                {
                  break;
                }

                v128 = 2 * v121;
                v121 = (2 * v121) | 1;
                v122 = &v11[v121];
                v129 = v128 + 2;
                if (v129 < v12)
                {
                  result = v122[1];
                  if (*(v118 + 4 * *v122) > *(v118 + 4 * result))
                  {
                    ++v122;
                    v121 = v129;
                  }
                }

                v124 = *v122;
                v123 = v127;
              }

              while (*(v118 + 4 * v124) <= v126);
              *v127 = v125;
            }
          }

          v119 = v120 - 1;
        }

        while (v120);
        do
        {
          v130 = 0;
          v131 = *v11;
          v132 = *a3;
          v133 = v11;
          do
          {
            v134 = v133;
            v135 = &v133[v130];
            v133 = v135 + 1;
            v136 = 2 * v130;
            v130 = (2 * v130) | 1;
            v137 = v136 + 2;
            if (v137 < v12)
            {
              v139 = v135[2];
              v138 = v135 + 2;
              result = *(v138 - 1);
              if (*(v132 + 4 * result) > *(v132 + 4 * v139))
              {
                v133 = v138;
                v130 = v137;
              }
            }

            *v134 = *v133;
          }

          while (v130 <= ((v12 - 2) >> 1));
          if (v133 == --a2)
          {
            *v133 = v131;
          }

          else
          {
            *v133 = *a2;
            *a2 = v131;
            v140 = (v133 - v11 + 4) >> 2;
            v141 = v140 < 2;
            v142 = v140 - 2;
            if (!v141)
            {
              v143 = v142 >> 1;
              v144 = &v11[v143];
              v145 = *v144;
              v146 = *v133;
              v147 = *(v132 + 4 * v146);
              if (*(v132 + 4 * v145) > v147)
              {
                do
                {
                  v148 = v144;
                  *v133 = v145;
                  if (!v143)
                  {
                    break;
                  }

                  v143 = (v143 - 1) >> 1;
                  v144 = &v11[v143];
                  v145 = *v144;
                  v133 = v148;
                }

                while (*(v132 + 4 * v145) > v147);
                *v148 = v146;
              }
            }
          }

          v141 = v12-- <= 2;
        }

        while (!v141);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *v10;
    v17 = *(*a3 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 4 * v18);
      v21 = *(v15 + 4 * v19);
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v13;
          v27 = *v11;
          if (*(v15 + 4 * v26) > *(v15 + 4 * v27))
          {
            *v11 = v26;
            *v13 = v27;
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
        v30 = *v10;
        if (*(v15 + 4 * v30) > v21)
        {
          *v13 = v30;
LABEL_27:
          *v10 = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v11[1];
      v34 = *(v15 + 4 * v32);
      v35 = *(v15 + 4 * v33);
      v36 = *(a2 - 2);
      v37 = *(v15 + 4 * v36);
      if (v34 <= v35)
      {
        if (v37 > v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v11[1];
          if (*(v15 + 4 * v38) > *(v15 + 4 * v39))
          {
            v11[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 > v34)
        {
          v11[1] = v36;
          goto LABEL_39;
        }

        v11[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) > v35)
        {
          *v31 = v41;
LABEL_39:
          *(a2 - 2) = v33;
        }
      }

      v44 = v13[1];
      v42 = v13 + 1;
      v43 = v44;
      v45 = v11[2];
      v46 = *(v15 + 4 * v44);
      v47 = *(v15 + 4 * v45);
      v48 = *(a2 - 3);
      v49 = *(v15 + 4 * v48);
      if (v46 <= v47)
      {
        if (v49 > v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v11[2];
          if (*(v15 + 4 * v50) > *(v15 + 4 * v51))
          {
            v11[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 > v46)
        {
          v11[2] = v48;
          goto LABEL_48;
        }

        v11[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) > v47)
        {
          *v42 = v52;
LABEL_48:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + 4 * v53);
      v56 = *(v15 + 4 * v54);
      v57 = *v42;
      v58 = *(v15 + 4 * v57);
      if (v55 <= v56)
      {
        if (v58 <= v55)
        {
          goto LABEL_56;
        }

        *v14 = v57;
        *v42 = v53;
        v42 = v14;
        LODWORD(v53) = v54;
        if (v58 <= v56)
        {
          LODWORD(v53) = v57;
          goto LABEL_56;
        }
      }

      else if (v58 <= v55)
      {
        *v31 = v53;
        *v14 = v54;
        v31 = v14;
        LODWORD(v53) = v57;
        if (v58 <= v56)
        {
          LODWORD(v53) = v54;
LABEL_56:
          v59 = *v11;
          *v11 = v53;
          *v14 = v59;
          goto LABEL_57;
        }
      }

      *v31 = v57;
      *v42 = v54;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 4 * v22);
    v25 = *(v15 + 4 * v23);
    if (v24 <= v25)
    {
      if (v17 > v24)
      {
        *v11 = v16;
        *v10 = v22;
        v28 = *v11;
        v29 = *v14;
        if (*(v15 + 4 * v28) > *(v15 + 4 * v29))
        {
          *v14 = v28;
          *v11 = v29;
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
    v40 = *v10;
    if (*(v15 + 4 * v40) > v25)
    {
      *v11 = v40;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v60 = *v11;
    if (a5)
    {
      v61 = *(v15 + 4 * v60);
LABEL_60:
      v62 = v11;
      do
      {
        v63 = v62;
        v65 = v62[1];
        ++v62;
        v64 = v65;
      }

      while (*(v15 + 4 * v65) > v61);
      v66 = a2;
      if (v63 == v11)
      {
        v66 = a2;
        do
        {
          if (v62 >= v66)
          {
            break;
          }

          v68 = *--v66;
        }

        while (*(v15 + 4 * v68) <= v61);
      }

      else
      {
        do
        {
          v67 = *--v66;
        }

        while (*(v15 + 4 * v67) <= v61);
      }

      if (v62 < v66)
      {
        v69 = *v66;
        v70 = v64;
        v71 = v62;
        v72 = v66;
        do
        {
          *v71 = v69;
          *v72 = v70;
          do
          {
            v63 = v71;
            v73 = v71[1];
            ++v71;
            v70 = v73;
          }

          while (*(v15 + 4 * v73) > v61);
          do
          {
            v74 = *--v72;
            v69 = v74;
          }

          while (*(v15 + 4 * v74) <= v61);
        }

        while (v71 < v72);
      }

      if (v63 != v11)
      {
        *v11 = *v63;
      }

      *v63 = v60;
      if (v62 < v66)
      {
        goto LABEL_79;
      }

      v75 = sub_2614FD0C0(v11, v63, *a3);
      v11 = v63 + 1;
      result = sub_2614FD0C0(v63 + 1, a2, *a3);
      if (result)
      {
        a2 = v63;
        if (!v75)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v75)
      {
LABEL_79:
        result = sub_2614FC290(v9, v63, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v63 + 1;
      }
    }

    else
    {
      v61 = *(v15 + 4 * v60);
      if (*(v15 + 4 * *(v11 - 1)) > v61)
      {
        goto LABEL_60;
      }

      if (v61 <= *(v15 + 4 * *v10))
      {
        v77 = v11 + 1;
        do
        {
          v11 = v77;
          if (v77 >= a2)
          {
            break;
          }

          ++v77;
        }

        while (v61 <= *(v15 + 4 * *v11));
      }

      else
      {
        do
        {
          v76 = v11[1];
          ++v11;
        }

        while (v61 <= *(v15 + 4 * v76));
      }

      v78 = a2;
      if (v11 < a2)
      {
        v78 = a2;
        do
        {
          v79 = *--v78;
        }

        while (v61 > *(v15 + 4 * v79));
      }

      if (v11 < v78)
      {
        v80 = *v11;
        v81 = *v78;
        do
        {
          *v11 = v81;
          *v78 = v80;
          do
          {
            v82 = v11[1];
            ++v11;
            v80 = v82;
          }

          while (v61 <= *(v15 + 4 * v82));
          do
          {
            v83 = *--v78;
            v81 = v83;
          }

          while (v61 > *(v15 + 4 * v83));
        }

        while (v11 < v78);
      }

      v84 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v84;
      }

      a5 = 0;
      *v84 = v60;
    }
  }

  v87 = *v11;
  v88 = v11[1];
  v89 = *a3;
  v90 = *(*a3 + 4 * v88);
  v91 = *(*a3 + 4 * v87);
  v92 = *v10;
  v93 = *(*a3 + 4 * v92);
  if (v90 > v91)
  {
    if (v93 <= v90)
    {
      *v11 = v88;
      v11[1] = v87;
      v156 = *v10;
      if (*(v89 + 4 * v156) <= v91)
      {
        return result;
      }

      v11[1] = v156;
    }

    else
    {
      *v11 = v92;
    }

    goto LABEL_170;
  }

  if (v93 > v90)
  {
    v11[1] = v92;
    *v10 = v88;
    v150 = *v11;
    v149 = v11[1];
    if (*(v89 + 4 * v149) > *(v89 + 4 * v150))
    {
      *v11 = v149;
      v11[1] = v150;
    }
  }

  return result;
}

float sub_2614FCCA0(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v44[1] = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0)
  {
    return -3.4028e38;
  }

  v5 = a3;
  result = -3.4028e38;
  if ((a3 & 0x80000000) == 0)
  {
    v7 = a2;
    v8 = *(a1 + 8);
    v9 = v8[7];
    v10 = -v9;
    v11 = v8[4];
    v12 = v9 - 1;
    v13 = v8[2];
    v14 = v13 & (v9 - 1) | v11 & -v9;
    if (v14 > a2)
    {
      result = -3.4028e38;
      if ((a4 & 0x80000000) == 0)
      {
        v15 = v11 & v12 | v13 & v10;
        if (v15 > a3)
        {
          result = -3.4028e38;
          if ((a5 & 0x80000000) == 0 && v14 > a4 && v15 > a5)
          {
            v17 = a4 > a2 ? 1 : -1;
            v42 = v17;
            v18 = (a4 - a2) >= 0 ? a4 - a2 : a2 - a4;
            v19 = a5 > a3 ? 1 : -1;
            v41 = v19;
            v20 = (a5 - a3) >= 0 ? a5 - a3 : a3 - a5;
            v21 = v18 <= v20 ? -v20 : v18;
            v22 = v21 / 2;
            v44[0] = 0;
            v23 = sub_261470964(v8, a2, a3);
            v24 = 0;
            v25 = 0;
            v26 = -v18;
            while (1)
            {
              v27 = sub_261470964(v8, v7, v5);
              v28 = (v44 | (4 * v27));
              v29 = *v28 + 1;
              *v28 = v29;
              v30 = v25 <= v24 ? v24 : v25;
              if ((v23 ^ v27))
              {
                v24 = v30;
                v25 = 1;
              }

              else
              {
                ++v25;
              }

              if (v5 == a5 && v7 == a4)
              {
                break;
              }

              if ((v23 ^ v27))
              {
                v23 = v27;
              }

              if (v22 <= v26)
              {
                v31 = 0;
              }

              else
              {
                v31 = v20;
              }

              v32 = v42;
              if (v22 <= v26)
              {
                v32 = 0;
              }

              v33 = v22 - v31;
              v7 += v32;
              v34 = v22 < v20;
              if (v22 >= v20)
              {
                v35 = 0;
              }

              else
              {
                v35 = v18;
              }

              v22 = v33 + v35;
              v36 = v41;
              if (!v34)
              {
                v36 = 0;
              }

              v5 += v36;
            }

            *(v44 | (4 * v27)) = v29 - v25;
            v37 = fabsf((SLODWORD(v44[0]) / (HIDWORD(v44[0]) + LODWORD(v44[0]))) + -0.5);
            v38 = v24 / (HIDWORD(v44[0]) + LODWORD(v44[0]));
            v39 = v37 <= 0.3 && v38 <= 0.4;
            result = -(v37 - (v38 * -4.0));
            if (!v39)
            {
              return -3.4028e38;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2614FCEF4(uint64_t a1)
{
  if (*a1)
  {
    sub_261470D54(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

int *sub_2614FCF34(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
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
      v12 = v10;
      goto LABEL_13;
    }

    *a2 = v10;
    *a3 = v6;
    v13 = *a2;
    v14 = *result;
    if (*(a6 + 4 * v13) <= *(a6 + 4 * v14))
    {
      v12 = v6;
      v10 = v6;
      goto LABEL_13;
    }

    *result = v13;
    *a2 = v14;
    v10 = *a3;
    goto LABEL_11;
  }

  v12 = v7;
  if (v11 <= v8)
  {
    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(a6 + 4 * *a3) > v9)
    {
      *a2 = v10;
      goto LABEL_9;
    }

LABEL_11:
    v12 = v10;
    goto LABEL_13;
  }

  *result = v10;
LABEL_9:
  *a3 = v7;
  v10 = v7;
LABEL_13:
  v15 = *a4;
  if (*(a6 + 4 * v15) > *(a6 + 4 * v12))
  {
    *a3 = v15;
    *a4 = v10;
    v16 = *a3;
    v17 = *a2;
    if (*(a6 + 4 * v16) > *(a6 + 4 * v17))
    {
      *a2 = v16;
      *a3 = v17;
      v18 = *a2;
      v19 = *result;
      if (*(a6 + 4 * v18) > *(a6 + 4 * v19))
      {
        *result = v18;
        *a2 = v19;
      }
    }
  }

  v20 = *a5;
  v21 = *a4;
  if (*(a6 + 4 * v20) > *(a6 + 4 * v21))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(a6 + 4 * v22) > *(a6 + 4 * v23))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(a6 + 4 * v24) > *(a6 + 4 * v25))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(a6 + 4 * v26) > *(a6 + 4 * v27))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}