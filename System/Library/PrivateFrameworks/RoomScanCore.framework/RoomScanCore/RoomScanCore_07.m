void sub_262238540(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, float32x4_t a5, float32x4_t a6, int32x2_t a7, float a8)
{
  v10 = *(a2 + 16 * a3);
  v11 = *(a2 + 16 * a4);
  v12 = a5;
  v12.i32[2] = 1.0;
  v13 = a6;
  v13.i32[2] = 1.0;
  v14 = v10;
  v14.i32[2] = 1.0;
  v15 = v11;
  v15.i32[2] = 1.0;
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vnegq_f32(v12)), v13, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v14)), v15, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL));
  v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
  v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v17)), v19, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
  if (fabsf(v20.f32[1]) >= 1.0e-10)
  {
    v22.f32[0] = v20.f32[2] / v20.f32[1];
    __asm { FMOV            V6.4S, #1.0 }

    *&_Q6 = v20.f32[2] / v20.f32[1];
    *(&_Q6 + 1) = v20.f32[0] / v20.f32[1];
    v22.f32[1] = v20.f32[0] / v20.f32[1];
    v28 = vsub_f32(v22, *v10.f32);
    v29 = vmul_f32(v28, v28);
    v30 = vsub_f32(v22, *v11.f32);
    v31 = vmul_f32(v30, v30);
    v32 = vcgt_f32(vdup_lane_s32(a7, 0), vsqrt_f32(vadd_f32(vzip1_s32(v31, v29), vzip2_s32(v31, v29))));
    if ((v32.i32[1] | v32.i32[0]))
    {
      v33 = _Q6;
      v21 = sub_262238E10(*a5.f32, *a6.f32, *&_Q6) <= a8;
      *a1 = v33;
    }

    else
    {
      v21 = 0;
      *a1 = _Q6;
    }

    *(a1 + 16) = 1;
  }

  else
  {
    v21 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 32) = v21;
}

void sub_2622386B8()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, &unk_2874EF5D8, MEMORY[0x277D82618]);
}

uint64_t sub_262238704(unsigned int a1, unsigned int a2, int a3, uint64_t a4, __n128 a5, float32x4_t a6, float32x2_t a7, float32x2_t a8, float a9, float a10)
{
  v18 = *(a4 + 16 * a1);
  v19 = vsub_f32(a5.n128_u64[0], *&v18);
  v20 = vmul_f32(v19, v19);
  v21 = (a4 + 16 * a2);
  v22 = vsub_f32(a5.n128_u64[0], *v21);
  v23 = vmul_f32(v22, v22);
  v24 = vsqrt_f32(vadd_f32(vzip1_s32(v20, v23), vzip2_s32(v20, v23)));
  v102 = v24.f32[0];
  *&v18 = vsub_f32(*&v18, *v21);
  v25 = v24.f32[1];
  v26 = vabds_f32(vaddv_f32(v24), sqrtf(vaddv_f32(vmul_f32(*&v18, *&v18))));
  v27 = (a2 + 1) & 3;
  v28 = (a4 + 16 * ((a2 + 1) & 3));
  v29 = vsubq_f32(*v21->f32, *v28);
  v30 = sqrtf(vaddv_f32(*&vmulq_f32(v29, v29)));
  v99 = a5;
  v31 = sub_262238E10(a7, a8, a5.n128_u64[0]);
  v32 = sub_262238E10(a7, a8, *a6.f32);
  if (v31 >= v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  if (v25 >= v102)
  {
    v34 = v102;
  }

  else
  {
    v34 = v25;
  }

  if (a3)
  {
    v35 = v25 < a9;
    if (v26 <= 0.0001)
    {
      v35 = 1;
    }

    if (v33 < (v30 * 0.5) && v35)
    {
      v37 = (a2 - 1) & 3;
      v38 = a2 & 3 ^ 2;
      if (fabsf(a10) > 0.000001)
      {
        v39 = *(a4 + 16 * v38);
        v40 = vsub_f32(*a6.f32, *v39.f32);
        v41 = vmul_f32(v40, v40);
        *v41.i32 = sqrtf(*&v41.i32[1] + (v40.f32[0] * v40.f32[0]));
        if (*v41.i32 <= 0.0 || (*v41.i32 + a10) <= 0.0)
        {
          if (qword_27FF0C060 != -1)
          {
            dispatch_once(&qword_27FF0C060, &unk_2874EE100);
          }

          v55 = qword_27FF0C058;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2621C3000, v55, OS_LOG_TYPE_ERROR, "[WallAlign] The wall thickness is more than the object thickness. Keep the original object box.", buf, 2u);
          }
        }

        else
        {
          *v39.f32 = vmla_n_f32(*v39.f32, vdiv_f32(v40, vdup_lane_s32(v41, 0)), *v41.i32 + a10);
          a6 = v39;
        }

        v56 = *(a4 + 16 * ((a2 - 1) & 3));
        v57 = vsub_f32(v99.n128_u64[0], *v56.f32);
        v58 = vmul_f32(v57, v57);
        *v58.i32 = sqrtf(*&v58.i32[1] + (v57.f32[0] * v57.f32[0]));
        if (*v58.i32 > 0.0 && (*v58.i32 + a10) > 0.0)
        {
          *v56.f32 = vmla_n_f32(*v56.f32, vdiv_f32(v57, vdup_lane_s32(v58, 0)), *v58.i32 + a10);
          v59 = v56;
LABEL_68:
          *v21 = *v59.f32;
          v66 = (a4 + 16 * (a2 + 4));
          *v66 = *v59.f32;
          v67 = v28->i32[2];
          v28->i64[0] = a6.i64[0];
          v68 = a4 + 16 * (v27 | 4u);
          v69 = *(v68 + 8);
          *v68 = a6.i64[0];
          v70 = vsubq_f32(*(a4 + 16 * v37), *v21->f32);
          v71 = (a4 + 16 * v38);
          v72 = vsub_f32(*v71, *a6.f32);
          if (sqrtf(vaddv_f32(*&vmulq_f32(v70, v70))) >= sqrtf(vaddv_f32(vmul_f32(v72, v72))))
          {
            v77 = vsubq_f32(v59, a6);
            v78 = vsubq_f32(*(a4 + 16 * v37), v59);
            v79 = vcvtq_f64_f32(*v78.f32);
            v77.f32[0] = -(COERCE_FLOAT(vmulq_f32(v77, v78).i32[1]) + (v77.f32[0] * v78.f32[0])) / vaddvq_f64(vmulq_f64(v79, v79));
            v21[1].i32[0] = DWORD2(*v21[1].f32);
            v80 = vmla_n_f32(*v59.f32, *v78.f32, v77.f32[0]);
            *v21 = v80;
            *v66 = v80;
          }

          else
          {
            v73 = vsubq_f32(a6, v59);
            v74 = vsubq_f32(*v71->f32, a6);
            v75 = vcvtq_f64_f32(*v74.f32);
            v73.f32[0] = -(COERCE_FLOAT(vmulq_f32(v73, v74).i32[1]) + (v73.f32[0] * v74.f32[0])) / vaddvq_f64(vmulq_f64(v75, v75));
            v28->i32[2] = v67;
            v76 = vmla_n_f32(*a6.f32, *v74.f32, v73.f32[0]);
            *v28->f32 = v76;
            *(v68 + 8) = v69;
            *v68 = v76;
          }

          return 0xFFFFFFFFLL;
        }

        if (qword_27FF0C060 != -1)
        {
          dispatch_once(&qword_27FF0C060, &unk_2874EE100);
        }

        v65 = qword_27FF0C058;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *v106 = 0;
          _os_log_error_impl(&dword_2621C3000, v65, OS_LOG_TYPE_ERROR, "[WallAlign] The wall thickness is more than the object thickness. Keep the original object box.", v106, 2u);
        }
      }

      v59 = v99;
      goto LABEL_68;
    }

    goto LABEL_33;
  }

  v42 = a2 - 1;
  if (v25 >= v102)
  {
    v43 = a1;
  }

  else
  {
    v43 = a2;
  }

  if (v25 >= v102)
  {
    v44 = (a1 - 1) & 3;
  }

  else
  {
    v44 = v27;
  }

  if (v25 >= v102)
  {
    v42 = a1 + 1;
  }

  if (v26 > 0.0001 && v34 >= a9 || v33 >= (v30 * 0.5))
  {
LABEL_33:
    v48 = v34 > 0.3 && v34 > a9;
    if (v48 && v26 <= 0.0001)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  v50 = v43 & 3 ^ 2;
  v51 = v42 & 3;
  if (fabsf(a10) <= 0.000001)
  {
    goto LABEL_77;
  }

  v52 = *(a4 + 16 * v50);
  v53 = vsub_f32(*a6.f32, *v52.f32);
  v54 = vmul_f32(v53, v53);
  *v54.i32 = sqrtf(*&v54.i32[1] + (v53.f32[0] * v53.f32[0]));
  if (*v54.i32 <= 0.0 || (*v54.i32 + a10) <= 0.0)
  {
    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v60 = qword_27FF0C058;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *v105 = 0;
      _os_log_error_impl(&dword_2621C3000, v60, OS_LOG_TYPE_ERROR, "[WallAlign] The wall thickness is more than the object thickness. Keep the original object box.", v105, 2u);
    }
  }

  else
  {
    *v52.f32 = vmla_n_f32(*v52.f32, vdiv_f32(v53, vdup_lane_s32(v54, 0)), *v54.i32 + a10);
    a6 = v52;
  }

  v61 = *(a4 + 16 * v51);
  v62 = vsub_f32(v99.n128_u64[0], *v61.f32);
  v63 = vmul_f32(v62, v62);
  *v63.i32 = sqrtf(*&v63.i32[1] + (v62.f32[0] * v62.f32[0]));
  if (*v63.i32 <= 0.0 || (*v63.i32 + a10) <= 0.0)
  {
    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v81 = qword_27FF0C058;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      *v104 = 0;
      _os_log_error_impl(&dword_2621C3000, v81, OS_LOG_TYPE_ERROR, "[WallAlign] The wall thickness is more than the object thickness. Keep the original object box.", v104, 2u);
    }

LABEL_77:
    v64 = v99;
    goto LABEL_78;
  }

  *v61.f32 = vmla_n_f32(*v61.f32, vdiv_f32(v62, vdup_lane_s32(v63, 0)), *v63.i32 + a10);
  v64 = v61;
LABEL_78:
  v82 = (a4 + 16 * v43);
  v82->i64[0] = v64.i64[0];
  v83 = (a4 + 16 * (v43 + 4));
  *v83 = *v64.f32;
  v84 = a4 + 16 * v44;
  v85 = *(v84 + 8);
  *v84 = a6.i64[0];
  v86 = a4 + 16 * (v44 | 4);
  v87 = *(v86 + 8);
  *v86 = a6.i64[0];
  v88 = vsubq_f32(*(a4 + 16 * v51), *v82);
  v89 = (a4 + 16 * v50);
  v90 = vsub_f32(*v89, *a6.f32);
  if (sqrtf(vaddv_f32(*&vmulq_f32(v88, v88))) >= sqrtf(vaddv_f32(vmul_f32(v90, v90))))
  {
    v95 = vsubq_f32(v64, a6);
    v96 = vsubq_f32(*(a4 + 16 * v51), v64);
    v97 = vcvtq_f64_f32(*v96.f32);
    v95.f32[0] = -(COERCE_FLOAT(vmulq_f32(v95, v96).i32[1]) + (v95.f32[0] * v96.f32[0])) / vaddvq_f64(vmulq_f64(v97, v97));
    v82->i32[2] = DWORD2(*(v82 + 8));
    v98 = vmla_n_f32(*v64.f32, *v96.f32, v95.f32[0]);
    *v82->f32 = v98;
    *v83 = v98;
  }

  else
  {
    v91 = vsubq_f32(a6, v64);
    v92 = vsubq_f32(*v89->f32, a6);
    v93 = vcvtq_f64_f32(*v92.f32);
    v91.f32[0] = -(COERCE_FLOAT(vmulq_f32(v91, v92).i32[1]) + (v91.f32[0] * v92.f32[0])) / vaddvq_f64(vmulq_f64(v93, v93));
    *(v84 + 8) = v85;
    v94 = vmla_n_f32(*a6.f32, *v92.f32, v91.f32[0]);
    *v84 = v94;
    *(v86 + 8) = v87;
    *v86 = v94;
  }

  return 4294967294;
}

float sub_262238E10(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vsub_f32(a1, a3);
  v4 = 0.0;
  if (sqrtf(vaddv_f32(vmul_f32(v3, v3))) < 0.000001)
  {
    return v4;
  }

  v5 = vsub_f32(a2, a3);
  if (sqrtf(vaddv_f32(vmul_f32(v5, v5))) < 0.000001)
  {
    return v4;
  }

  v7 = vsub_f32(a1, a2);
  v8 = vsub_f32(a3, a1);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) >= 0.000001 && (v9 = vsub_f32(a2, a1), vaddv_f32(vmul_f32(v9, v8)) >= 0.0))
  {
    v11 = vsub_f32(a3, a2);
    if (vaddv_f32(vmul_f32(v7, v11)) >= 0.0)
    {
      return fabsf((-v7.f32[1] * v3.f32[0]) + (v7.f32[0] * v3.f32[1])) / sqrtf(vaddv_f32(vmul_f32(v9, v9)));
    }

    v10 = vmul_f32(v11, v11);
  }

  else
  {
    v10 = vmul_f32(v8, v8);
  }

  return sqrtf(vaddv_f32(v10));
}

void sub_262239250(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622395E8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621EAE34(result, a4);
  }

  return result;
}

void sub_262239650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2621EAAB0(&a9);
  _Unwind_Resume(a1);
}

void sub_26223AF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(v73);
  if (__p)
  {
    operator delete(__p);
  }

  sub_26223B250(&a71);
  if (v72)
  {
    operator delete(v72);
  }

  if (a50)
  {
    operator delete(a50);
  }

  a61 = &a38;
  sub_2621E1D40(&a61);
  a61 = &a41;
  sub_2621E1CB0(&a61);

  _Unwind_Resume(a1);
}

uint64_t sub_26223B250(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 128;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_26223B31C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 16 * (v5 - v6) - 1;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40) + v9;
  if (v8 == v10)
  {
    if (v9 < 0x80)
    {
      v11 = *(a1 + 24);
      v12 = &v11[-*a1];
      if (v7 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      v18 = a1;
      sub_26223B6E4(v13);
    }

    *(a1 + 32) = v9 - 128;
    *&v17 = *v6;
    *(a1 + 8) = v6 + 8;
    sub_26223B72C(a1, &v17);
    v6 = *(a1 + 8);
    v10 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = (*&v6[(v10 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v10 & 0x7F));
  result = *a2;
  v16 = *(a2 + 16);
  *v14 = *a2;
  v14[1] = v16;
  ++*(a1 + 40);
  return result;
}

void sub_26223B5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_26223B5DC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_26223B6E4(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_26223B6E4(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2621C6A34();
}

void *sub_26223B72C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_26223B6E4(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_26223B830(void *a1, int a2)
{
  v3 = sub_2621C719C(a1, a2);
  if (v3)
  {
    sub_26223C55C(&__p, a1, v3);
    if (__p)
    {
      operator delete(__p);
    }
  }
}

uint64_t sub_26223B87C(float32x4_t *a1, void *a2, uint64_t a3, void *a4, void *a5, double a6, double a7)
{
  v197 = 0;
  v198 = 0;
  v199 = 0;
  v12 = a5;
  v13 = a4[2];
  if (v13)
  {
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(v12, v11, *(v13 + 4));
      objc_msgSend_quad(v14, v15, v16);
      v177 = v17;
      objc_msgSend_quad(v14, v18, v19);
      v176 = v20;
      objc_msgSend_quad(v14, v21, v22);
      v169 = v23;
      objc_msgSend_quad(v14, v24, v25);
      if (sqrtf(((v176 - *(&a6 + 1)) * (v176 - *(&a6 + 1))) + ((v177 - *&a6) * (v177 - *&a6))) >= 0.01)
      {
        if (sqrtf(((v26 - *(&a6 + 1)) * (v26 - *(&a6 + 1))) + ((v169 - *&a6) * (v169 - *&a6))) < 0.01)
        {
          v28 = *(v13 + 4);
          LODWORD(v189) = 1;
          HIDWORD(v189) = v28;
          sub_26223C48C(&v197, &v189);
        }
      }

      else
      {
        v27 = *(v13 + 4);
        LODWORD(v189) = 0;
        HIDWORD(v189) = v27;
        sub_26223C48C(&v197, &v189);
      }

      v13 = *v13;
    }

    while (v13);
    v29 = v197;
    v30 = v198;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v32 = (v30 - v29) >> 3;
  if (v32 >= 4)
  {
    printf("WARNING: it looks something wrong! One wall seems to connect with more than 3 other walls");
    goto LABEL_11;
  }

  if (v32 < 2)
  {
    if (v30 - v29 == 8)
    {
      v79 = a1;
      v80 = a2;
      v81 = v29[1];
      v82 = *v29;
      v171 = v29;
      if (v82 >= -1)
      {
        v83 = (v82 + 1) & 1;
      }

      else
      {
        v83 = -((v82 + 1) & 1);
      }

      v84 = objc_msgSend_objectAtIndexedSubscript_(v12, v31, v81);
      objc_msgSend_quad(v84, v85, v86);
      v190 = v87;
      v192 = v88;
      v189 = v89;
      v191 = v90;
      v194 = v91;
      v196 = v92;
      v193 = v93;
      v195 = v94;
      v173 = *(&v189 + v82);
      objc_msgSend_quad(v84, v95, v96);
      v182 = v97;
      v184 = v98;
      v181 = v99;
      v183 = v100;
      v186 = v101;
      v188 = v102;
      v185 = v103;
      v187 = v104;
      v105 = *(&v181 + 4 * v82 + 1);
      objc_msgSend_quad(v84, v106, v107);
      v190 = v108;
      v192 = v109;
      v189 = v110;
      v191 = v111;
      v179 = *(&v189 + v83);
      objc_msgSend_quad(v84, v112, v113);
      v114 = v83;
      v182 = v115;
      v184 = v116;
      v181 = v117;
      v183 = v118;
      v119.n128_f32[0] = v179.n128_f32[0] - *&v173;
      v163 = *(&v181 + 4 * v83 + 1);
      v120 = vmuls_lane_f32(v163 - v105, *&a7, 1) + (*&a7 * (v179.n128_f32[0] - *&v173));
      v168 = v119;
      v121 = sqrtf(vmuls_lane_f32(*(&a7 + 1), *&a7, 1) + (*&a7 * *&a7)) * sqrtf(((v163 - v105) * (v163 - v105)) + (v119.n128_f32[0] * v119.n128_f32[0]));
      v123 = v120 < (v121 + 0.001) && (v121 + -0.001) < v120;
      sub_26223B830(a4, v81);
      if (a3)
      {
        if (!v123)
        {
          operator new();
        }

        v126 = v80;
        v127 = *v80;
      }

      else
      {
        if (!v123)
        {
          operator new();
        }

        v126 = v80;
        v127 = v80[1];
      }

      *(v127 + 16) = v81;
      objc_msgSend_quad(v84, v124, v125);
      v190 = v147;
      v192 = v149;
      v189 = v146;
      v191 = v148;
      if (a3)
      {
        if (!v123)
        {
          operator new();
        }

        v150 = v79->i64[0];
      }

      else
      {
        if (!v123)
        {
          operator new();
        }

        v150 = v79->i64[1];
      }

      *(v150 + 16) = *(&v189 + v114);
      objc_msgSend_quad(v84, v144, v145);
      v190 = v151;
      v192 = v152;
      v189 = v153;
      v191 = v154;
      v155 = sub_26223C36C(v79, a3, *(&v189 + 2 * v114));
      if (v155)
      {
        v33 = 1;
      }

      else
      {
        v156 = v179;
        v156.n128_f32[1] = v163;
        v157 = v168;
        v157.n128_f32[1] = v163 - v105;
        v33 = sub_26223B87C(v79, v126, a3, a4, v12, v156, v157);
      }

      v29 = v171;
LABEL_64:
      operator delete(v29);
      goto LABEL_65;
    }

LABEL_11:
    v33 = 0;
    if (!v29)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (v29 == v30)
  {
    goto LABEL_11;
  }

  v161 = a1;
  v162 = a2;
  v167 = a4;
  v34 = sqrtf(vmuls_lane_f32(*(&a7 + 1), *&a7, 1) + (*&a7 * *&a7));
  v170 = v29;
  while (1)
  {
    v35 = v29[1];
    v36 = *v29;
    v37 = v36 >= -1 ? (v36 + 1) & 1 : -((v36 + 1) & 1);
    v38 = objc_msgSend_objectAtIndexedSubscript_(v12, v31, v35);
    objc_msgSend_quad(v38, v39, v40);
    v190 = v41;
    v192 = v42;
    v189 = v43;
    v191 = v44;
    v194 = v45;
    v196 = v46;
    v193 = v47;
    v195 = v48;
    v172 = *(&v189 + v36);
    objc_msgSend_quad(v38, v49, v50);
    v182 = v51;
    v184 = v52;
    v186 = v53;
    v188 = v54;
    v181 = v55;
    v183 = v56;
    v185 = v57;
    v187 = v58;
    v59 = *(&v181 + 4 * v36 + 1);
    objc_msgSend_quad(v38, v60, v61);
    v190 = v62;
    v192 = v63;
    v189 = v64;
    v191 = v65;
    v178 = *(&v189 + v37);
    objc_msgSend_quad(v38, v66, v67);
    v182 = v68;
    v184 = v69;
    v181 = v70;
    v183 = v71;
    v72 = *(&v181 + v37);
    v73.n128_f32[0] = v178.n128_f32[0] - *&v172;
    v74 = COERCE_FLOAT(HIDWORD(*(&v181 + 2 * v37))) - v59;
    v75 = (*(&a7 + 1) * v74) + (*&a7 * (v178.n128_f32[0] - *&v172));
    *&v71 = v34 * sqrtf((v74 * v74) + (v73.n128_f32[0] * v73.n128_f32[0]));
    v76 = *&v71 + -0.001;
    v77 = *&v71 + 0.001;
    if (v76 < v75 && v75 < v77)
    {
      break;
    }

    v29 += 2;
    if (v29 == v30)
    {
      v33 = 0;
      goto LABEL_48;
    }
  }

  v159 = *(&v181 + v37);
  v165 = COERCE_FLOAT(HIDWORD(*(&v181 + 2 * v37))) - v59;
  v174 = v73;
  sub_26223B830(v167, v35);
  if (a3)
  {
    v130 = 0;
  }

  else
  {
    v130 = 1;
  }

  *(v162[v130] + 16) = v35;
  objc_msgSend_quad(v38, v128, v129, v159);
  v131 = v178;
  v131.n128_u32[1] = v160;
  v132 = v174;
  v132.n128_f32[1] = v165;
  v190 = v133;
  v192 = v134.n128_u32[2];
  v189 = v135;
  v191 = v136;
  v137 = *(&v189 + v37);
  *(v161->i64[v130] + 16) = v137;
  v175 = v132;
  v180 = v131;
  v137.n128_u64[0] = v131.n128_u64[0];
  v134.n128_u64[0] = v132.n128_u64[0];
  sub_26223B87C(v161, v162, a3, v167, v12, v137, v134);
  objc_msgSend_quad(v38, v138, v139);
  v190 = v140;
  v192 = v141;
  v189 = v142;
  v191 = v143;
  if (sub_26223C36C(v161, a3, *(&v189 + 2 * v37)))
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_26223B87C(v161, v162, a3, v167, v12, v180, v175);
  }

LABEL_48:
  v29 = v170;
  if (v170)
  {
    goto LABEL_64;
  }

LABEL_65:

  return v33;
}

void sub_26223C04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_26223C0EC(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void *sub_26223C190(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void *sub_26223C234(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_26223C298(void ***a1)
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
        v4 -= 3;
        sub_26223C234(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_26223C31C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_26223C234((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_26223C36C(float32x4_t *a1, char a2, double a3)
{
  if (a1[1].i64[0] >= 3uLL)
  {
    v4 = a1->i64[1];
    if (a2)
    {
      while (v4 != a1)
      {
        v5 = *(v4 + 8);
        if (v5->i64[1] == a1)
        {
          break;
        }

        v6 = *(v4 + 16);
        v7 = vsubq_f32(v5[1], v6).u64[0];
        v6.f32[0] = *&a3 - v6.f32[0];
        v8 = *(&a3 + 1) - COERCE_FLOAT(HIDWORD(*(v4 + 16)));
        v9 = vmuls_lane_f32(v8, v7, 1) + (v7.f32[0] * v6.f32[0]);
        v10 = sqrtf(vmuls_lane_f32(v7.f32[1], v7, 1) + (v7.f32[0] * v7.f32[0]));
        v11 = sqrtf((v8 * v8) + (v6.f32[0] * v6.f32[0]));
        v13 = v11 < v10 && ((v11 * v10) + -0.001) < v9 && v9 < ((v11 * v10) + 0.001);
        v4 = *(v4 + 8);
        if (v13)
        {
          return 1;
        }
      }
    }

    else
    {
      while (a1 != v4)
      {
        a1 = a1->i64[0];
        if (a1->i64[0] == v4)
        {
          break;
        }

        v14 = a1[1];
        v15 = vsubq_f32(*(a1->i64[0] + 16), v14).u64[0];
        v14.f32[0] = *&a3 - v14.f32[0];
        v16 = *(&a3 + 1) - COERCE_FLOAT(HIDWORD(a1[1].i64[0]));
        v17 = vmuls_lane_f32(v16, v15, 1) + (v15.f32[0] * v14.f32[0]);
        v18 = sqrtf(vmuls_lane_f32(v15.f32[1], v15, 1) + (v15.f32[0] * v15.f32[0]));
        v19 = sqrtf((v16 * v16) + (v14.f32[0] * v14.f32[0]));
        if (v19 < v18 && ((v19 * v18) + -0.001) < v17 && v17 < ((v19 * v18) + 0.001))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void sub_26223C48C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_2621CBEB0();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_2621CBEC8(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_26223C55C(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

_DWORD *sub_26223C878(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v131 = *MEMORY[0x277D85DE8];
  v106 = a2;
  v109 = a3;
  v111 = a4;
  v107 = a5;
  v13 = a6;
  v108 = a7;
  if (a1)
  {
    v126 = 8210;
    v127 = 0;
    v112 = v13;
    kdebug_trace();
    v113 = objc_opt_new();
    v14 = objc_opt_new();
    v110 = objc_opt_new();
    v17 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16);
    v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19);
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v23 = objc_msgSend_walls(v13, v21, v22);
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v122, v130, 16);
    if (v25)
    {
      v26 = *v123;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v123 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v122 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_addObject_(v20, v29, v28);
          }

          else
          {
            objc_msgSend_addObject_(v17, v29, v28);
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v30, &v122, v130, 16);
      }

      while (v25);
    }

    sub_2622AE900(v112, v17);
    v31 = v111;
    if (v111)
    {
      v31 = v111[14];
    }

    v32 = v31;
    v35 = objc_msgSend_count(v32, v33, v34) == 0;

    if (v35)
    {
      sub_26224BDFC(a1 + 440, v36, v37);
      sub_26224BDFC(a1 + 504, v75, v76);
    }

    else
    {
      v38 = objc_msgSend_walls(v112, v36, v37);
      v105 = objc_msgSend_copy(v38, v39, v40);

      if (v112)
      {
        v44 = v112[3];
        v43 = v112[4];
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      v45 = objc_msgSend_copy(v108, v41, v42);
      v46.n128_u32[0] = v44;
      v47.n128_u32[0] = v43;
      sub_2622CB354(v45, v46, v47);
      kdebug_trace();
      if (v111)
      {
        v48 = v111[4];
        v49 = (v111[5] - v48) >> 4;
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      sub_2622499A4(a1 + 8, v105, v109, v48, v49);
      if (v111)
      {
        v50 = v111[4];
        v51 = (v111[5] - v50) >> 4;
      }

      else
      {
        v50 = 0;
        v51 = 0;
      }

      sub_2622499A4(a1 + 224, v45, v109, v50, v51);
      kdebug_trace();
      kdebug_trace();
      v52 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v53 = sub_26220AAF4(*(a1 + 568), v106, *(a1 + 48), *(a1 + 264), v107, 1);

      kdebug_trace();
      kdebug_trace();
      v54 = objc_opt_new();
      v56 = objc_msgSend_objectForKeyedSubscript_(v53, v55, @"windows");
      objc_msgSend_addObjectsFromArray_(v54, v57, v56);

      v59 = objc_msgSend_objectForKeyedSubscript_(v53, v58, @"doors");
      objc_msgSend_addObjectsFromArray_(v54, v60, v59);

      v61 = *(a1 + 48);
      v64 = objc_msgSend_walls(v112, v62, v63);
      sub_26224A580((a1 + 440), v54, v61, v64);

      v65 = objc_opt_new();
      v67 = objc_msgSend_objectForKeyedSubscript_(v53, v66, @"opendoors");
      objc_msgSend_addObjectsFromArray_(v65, v68, v67);

      v69 = *(a1 + 264);
      v72 = objc_msgSend_openings(v112, v70, v71);
      sub_26224A580((a1 + 504), v65, v69, v72);

      kdebug_trace();
    }

    for (j = 0; objc_msgSend_count(*(a1 + 472), v73, v74) > j; ++j)
    {
      v79 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 472), v78, j);
      v82 = objc_msgSend_type(v79, v80, v81) == 1;

      v85 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 472), v83, j);
      if (v82)
      {
        objc_msgSend_addObject_(v113, v84, v85);
      }

      else
      {
        objc_msgSend_addObject_(v14, v84, v85);
      }
    }

    objc_msgSend_addObjectsFromArray_(v110, v78, *(a1 + 536));
    sub_2622AE910(v112, v113);
    sub_26223FCDC(v112, v14);
    sub_26223FCBC(v112, v110);
    v88 = objc_msgSend_array(MEMORY[0x277CBEB18], v86, v87);
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v91 = objc_msgSend_walls(v112, v89, v90);
    v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v118, v129, 16);
    if (v94)
    {
      v95 = *v119;
      do
      {
        for (k = 0; k != v94; ++k)
        {
          if (*v119 != v95)
          {
            objc_enumerationMutation(v91);
          }

          objc_msgSend_addObject_(v88, v93, *(*(&v118 + 1) + 8 * k));
        }

        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v93, &v118, v129, 16);
      }

      while (v94);
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v97 = v20;
    v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, &v114, v128, 16);
    if (v100)
    {
      v101 = *v115;
      do
      {
        for (m = 0; m != v100; ++m)
        {
          if (*v115 != v101)
          {
            objc_enumerationMutation(v97);
          }

          objc_msgSend_addObject_(v88, v99, *(*(&v114 + 1) + 8 * m));
        }

        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v99, &v114, v128, 16);
      }

      while (v100);
    }

    sub_2622AE900(v112, v88);
    sub_2621CD534(&v126);
    v13 = 0;
  }

  else
  {
    v112 = 0;
  }

  v103 = *MEMORY[0x277D85DE8];

  return v112;
}

void sub_26223CFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43)
{
  sub_2621CD534(&a43);

  _Unwind_Resume(a1);
}

uint64_t sub_26223D51C(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_msgSend_count(v3, v4, v5) == 8)
  {
    for (i = 0; i != 8; ++i)
    {
      v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, i);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v11 = objc_msgSend_objectAtIndexedSubscript_(v3, v10, i);
      if (objc_msgSend_count(v11, v12, v13) != 3)
      {

        goto LABEL_8;
      }

      v15 = objc_msgSend_objectAtIndexedSubscript_(v11, v14, 0);
      objc_msgSend_floatValue(v15, v16, v17);
      v32 = v18;
      v20 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, 1);
      objc_msgSend_floatValue(v20, v21, v22);
      v31 = v23;
      v25 = objc_msgSend_objectAtIndexedSubscript_(v11, v24, 2);
      objc_msgSend_floatValue(v25, v26, v27);
      v28 = v32;
      DWORD1(v28) = v31;
      DWORD2(v28) = v29;
      *(a2 + 16 * i) = v28;
    }
  }

  else
  {
LABEL_8:
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t sub_26223E290(void *a1)
{
  v2 = a1;
  if ((atomic_load_explicit(&qword_27FF0C120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C120))
  {
    qword_27FF0C118 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v1, @"Cabinet", @"Refrigerator", @"Shelf", @"Stove", @"Bed", @"Sink", @"Washer", @"Toilet", @"Bathtub", @"Oven", @"Dishwasher", @"Table", @"Sofa", @"Chair", @"Fireplace", @"Stool", @"Screen", @"Door", @"Window", @"Cuboid", @"Stairs", @"BuildInCabinet", @"Storage", 0);
    __cxa_guard_release(&qword_27FF0C120);
  }

  v3 = objc_msgSend_containsObject_(qword_27FF0C118, v1, v2);

  return v3;
}

void sub_26223E404(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27FF0C120);

  _Unwind_Resume(a1);
}

uint64_t sub_26223E428(void *a1)
{
  v2 = a1;
  if ((atomic_load_explicit(&qword_27FF0C130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C130))
  {
    qword_27FF0C128 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v1, @"unknown", @"online", @"offline", 0);
    __cxa_guard_release(&qword_27FF0C130);
  }

  v3 = objc_msgSend_containsObject_(qword_27FF0C128, v1, v2);

  return v3;
}

void sub_26223E4D4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27FF0C130);

  _Unwind_Resume(a1);
}

void sub_26223E4F8(void *a1, _OWORD *a2)
{
  v29 = a1;
  if (objc_msgSend_count(v29, v3, v4) == 4)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v29, v5, 0);
    objc_msgSend_floatValue(v6, v7, v8);
    v28 = v9;
    v11 = objc_msgSend_objectAtIndexedSubscript_(v29, v10, 1);
    objc_msgSend_floatValue(v11, v12, v13);
    v27 = v14;
    v16 = objc_msgSend_objectAtIndexedSubscript_(v29, v15, 2);
    objc_msgSend_floatValue(v16, v17, v18);
    v26 = v19;
    v21 = objc_msgSend_objectAtIndexedSubscript_(v29, v20, 3);
    objc_msgSend_floatValue(v21, v22, v23);
    *&v24 = __PAIR64__(v27, v28);
    *(&v24 + 1) = __PAIR64__(v25, v26);
    *a2 = v24;
  }
}

void sub_26223FAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (a1 && sub_26223FB54(v8))
  {
    v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, a2);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 8), v7, v6, v8);
  }
}

uint64_t sub_26223FB54(void *a1)
{
  v2 = a1;
  if ((atomic_load_explicit(&qword_27FF0C140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C140))
  {
    qword_27FF0C138 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v1, @"ChairGroup", @"LShapeGroup", @"UShapeGroup", @"FloorPlan", 0);
    __cxa_guard_release(&qword_27FF0C140);
  }

  v3 = objc_msgSend_containsObject_(qword_27FF0C138, v1, v2);

  return v3;
}

void sub_26223FC08(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27FF0C140);

  _Unwind_Resume(a1);
}

void sub_26223FC2C(uint64_t a1, __n128 *a2, void *a3)
{
  v9 = a3;
  if (a1)
  {
    v7 = sub_2622113C0(a2, v5, v6);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 16), v8, v7, v9);
  }
}

void sub_26223FCBC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_26223FCCC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_26223FCDC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

__n128 sub_26223FCEC(void *a1)
{
  v1 = a1;
  objc_msgSend_quad(v1, v2, v3);
  v8 = v4;
  objc_msgSend_quad(v1, v5, v6);

  return v8;
}

void sub_26223FD48(uint64_t a1, void *a2)
{
  v3 = a2;
  *&v4 = *a1;
  DWORD2(v4) = *(a1 + 8);
  v28 = v4;
  v29 = v3;
  objc_msgSend_quad(v3, v5, v6);
  v27 = v7;
  v26 = *(a1 + 8);
  objc_msgSend_quad(v29, v8, v9);
  v25 = v10;
  v24 = *(a1 + 8);
  objc_msgSend_quad(v29, v11, v12);
  v23 = v13;
  *&v14 = *a1;
  DWORD2(v14) = *(a1 + 8);
  v22 = v14;
  objc_msgSend_quad(v29, v15, v16);
  v17 = v28;
  DWORD2(v17) = v27;
  *&v18 = v26;
  *(&v18 + 1) = vextq_s8(v25, v25, 8uLL).u64[0];
  *&v19 = v24;
  *(&v19 + 1) = vextq_s8(v23, v23, 8uLL).u64[0];
  v20 = v22;
  DWORD2(v20) = v21;
  src[0] = v17;
  src[1] = v18;
  src[2] = v19;
  src[3] = v20;
  if (v29)
  {
    objc_copyStruct(v29 + 272, src, 64, 1, 0);
  }
}

void sub_26223FE5C(unint64_t *a1, uint64_t a2, float a3, float a4, __n128 a5, __n128 a6)
{
  a5.n128_u64[0] = *a1;
  a6.n128_u64[0] = a1[1];
  v6 = a5;
  v6.n128_f32[2] = a4;
  v7 = a6;
  v7.n128_f32[2] = a4;
  a6.n128_f32[2] = a3;
  a5.n128_f32[2] = a3;
  v8[0] = v6;
  v8[1] = v7;
  v8[2] = a6;
  v8[3] = a5;
  if (a2)
  {
    objc_copyStruct((a2 + 272), v8, 64, 1, 0);
  }
}

void sub_26223FEB8(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  sub_2621DC2A8();
  v12 = vsub_f32(v10, v11);
  v13 = vmul_f32(v12, v12);
  v14 = vadd_f32(v13, vdup_lane_s32(v13, 1));
  v15 = vsub_f32(v6, v7);
  v16 = vmul_f32(v15, v15);
  v17 = vadd_f32(v16, vdup_lane_s32(v16, 1));
  sub_2621DC2A8();
  v20 = vsub_f32(v18, v19);
  v21 = vmul_f32(v20, v20);
  v22 = vadd_f32(v21, vdup_lane_s32(v21, 1));
  v23 = vsub_f32(v8, v9);
  v24 = vmul_f32(v23, v23);
  v25 = vadd_f32(v24, vdup_lane_s32(v24, 1));
  v26 = vmul_f32(vadd_f32(v6, v7), 0x3F0000003F000000);
  v27 = vsub_f32(v9, v8);
  v28 = vaddv_f32(vmul_f32(vsub_f32(v26, v8), v27));
  v29 = vaddv_f32(vmul_f32(v27, v27));
  if (v29 < 0.000001)
  {
    v29 = 0.000001;
  }

  v30 = v28 / v29;
  v31 = vadd_f32(v8, v9);
  v32 = vsub_f32(vmla_n_f32(v8, v27, v30), v26);
  v33 = sqrtf(vaddv_f32(vmul_f32(v32, v32)));
  v34 = vmul_f32(v31, 0x3F0000003F000000);
  v35 = vsub_f32(v7, v6);
  v36 = vaddv_f32(vmul_f32(vsub_f32(v34, v6), v35));
  v37 = vaddv_f32(vmul_f32(v35, v35));
  if (v37 < 0.000001)
  {
    v37 = 0.000001;
  }

  v38 = vsub_f32(vmla_n_f32(v6, v35, v36 / v37), v34);
  v39 = sqrtf(vaddv_f32(vmul_f32(v38, v38)));
  if (v39 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v40 = v39;
  }

  v41 = sub_2621C92AC(a2, a3, 0);
  v42 = vdiv_f32(vsqrt_f32(vzip1_s32(v14, v22)), vmaxnm_f32(vsqrt_f32(vzip1_s32(v17, v25)), vdup_n_s32(0x358637BDu)));
  *a1 = v42;
  v43 = *&v42.i32[1];
  if (*v42.i32 >= *&v42.i32[1])
  {
    v43 = *v42.i32;
  }

  *(a1 + 8) = v43;
  *(a1 + 12) = v33;
  *(a1 + 16) = v39;
  *(a1 + 20) = v40;
  *(a1 + 24) = v41;
  *(a1 + 28) = -1;
  *(a1 + 32) = 0;
  *(a1 + 36) = vrev64_s32(v42);
  *(a1 + 44) = v43;
  *(a1 + 48) = v39;
  *(a1 + 52) = v33;
  *(a1 + 56) = v40;
  *(a1 + 60) = v41;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0;
}

void sub_262240084(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  sub_2621DC2A8();
  v12 = vsub_f32(v10, v11);
  v13 = vmul_f32(v12, v12);
  v14 = vadd_f32(v13, vdup_lane_s32(v13, 1));
  v15 = vsub_f32(v6, v7);
  v16 = vmul_f32(v15, v15);
  v17 = vadd_f32(v16, vdup_lane_s32(v16, 1));
  sub_2621DC2A8();
  v20 = vsub_f32(v18, v19);
  v21 = vmul_f32(v20, v20);
  v22 = vadd_f32(v21, vdup_lane_s32(v21, 1));
  v23 = vsub_f32(v8, v9);
  v24 = vmul_f32(v23, v23);
  v25 = vadd_f32(v24, vdup_lane_s32(v24, 1));
  v26 = vmul_f32(vadd_f32(v6, v7), 0x3F0000003F000000);
  v27 = vsub_f32(v9, v8);
  v28 = vaddv_f32(vmul_f32(vsub_f32(v26, v8), v27));
  v29 = vaddv_f32(vmul_f32(v27, v27));
  if (v29 < 0.000001)
  {
    v29 = 0.000001;
  }

  v30 = v28 / v29;
  v31 = vadd_f32(v8, v9);
  v32 = vsub_f32(vmla_n_f32(v8, v27, v30), v26);
  v33 = sqrtf(vaddv_f32(vmul_f32(v32, v32)));
  v34 = vmul_f32(v31, 0x3F0000003F000000);
  v35 = vsub_f32(v7, v6);
  v36 = vaddv_f32(vmul_f32(vsub_f32(v34, v6), v35));
  v37 = vaddv_f32(vmul_f32(v35, v35));
  if (v37 < 0.000001)
  {
    v37 = 0.000001;
  }

  v38 = vsub_f32(vmla_n_f32(v6, v35, v36 / v37), v34);
  v39 = sqrtf(vaddv_f32(vmul_f32(v38, v38)));
  if (v39 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v40 = v39;
  }

  v41 = sub_2621C92AC(a2, a3, 0);
  if ((180.0 - v41) < v41)
  {
    v41 = 180.0 - v41;
  }

  v42 = vdiv_f32(vsqrt_f32(vzip1_s32(v14, v22)), vmaxnm_f32(vsqrt_f32(vzip1_s32(v17, v25)), vdup_n_s32(0x358637BDu)));
  *a1 = v42;
  v43 = *&v42.i32[1];
  if (*v42.i32 >= *&v42.i32[1])
  {
    v43 = *v42.i32;
  }

  *(a1 + 8) = v43;
  *(a1 + 12) = v33;
  *(a1 + 16) = v39;
  *(a1 + 20) = v40;
  *(a1 + 24) = v41;
  *(a1 + 28) = -1;
  *(a1 + 32) = 0;
  *(a1 + 36) = vrev64_s32(v42);
  *(a1 + 44) = v43;
  *(a1 + 48) = v39;
  *(a1 + 52) = v33;
  *(a1 + 56) = v40;
  *(a1 + 60) = v41;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0;
}

double sub_262240264(float32x4_t *a1, uint64_t a2, int a3, int a4, double a5, double a6, double a7, double a8, double a9, __n128 a10)
{
  v41.columns[0] = *a2;
  v41.columns[1] = *(a2 + 16);
  v41.columns[0].i32[3] = 0;
  v41.columns[1].i32[3] = 0;
  v41.columns[2] = *(a2 + 32);
  v41.columns[2].i32[3] = 0;
  a10.n128_f32[0] = (a3 - 1);
  a10.n128_u32[2] = 0;
  a10.n128_u32[3] = 1.0;
  v11 = a10;
  v11.n128_u32[1] = 0;
  v31 = v11;
  a10.n128_f32[1] = (a4 - 1);
  v32 = a10;
  a10.n128_u32[0] = 0;
  a10.n128_u32[2] = 0;
  v30 = a10;
  v41.columns[3] = xmmword_2623A7810;
  v42 = __invert_f4(v41);
  v12 = 0;
  v33 = xmmword_2623A7810;
  v34 = v31;
  v35 = v32;
  v36 = v30;
  do
  {
    *(&v37 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42.columns[0], COERCE_FLOAT(*(&v33 + v12))), v42.columns[1], *(&v33 + v12), 1), v42.columns[2], *(&v33 + v12), 2), v42.columns[3], *(&v33 + v12), 3);
    v12 += 16;
  }

  while (v12 != 64);
  v13 = 0;
  v14 = v37;
  v15 = v38;
  v16 = v39;
  v17 = v40;
  v14.i32[3] = 1.0;
  v15.i32[3] = 1.0;
  v16.i32[3] = 1.0;
  v17.n128_u32[3] = 1.0;
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  do
  {
    *(&v37 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v33 + v13))), v19, *(&v33 + v13), 1), v20, *(&v33 + v13), 2), v21, *(&v33 + v13), 3);
    v13 += 16;
  }

  while (v13 != 64);
  v22 = vsubq_f32(v39, v37);
  v23 = vsubq_f32(v38, v37);
  v24.i32[0] = vextq_s8(v22, v22, 8uLL).u32[0];
  v24.i32[1] = v22.i32[0];
  v25 = vextq_s8(v23, v23, 8uLL);
  v25.i32[1] = v23.i32[0];
  v26 = vdup_laneq_s32(v22, 2);
  v26.i32[0] = v22.i32[1];
  *v25.f32 = vmla_f32(vmul_f32(v26, vneg_f32(*v25.f32)), v24, *&vextq_s8(v23, v23, 4uLL));
  v25.f32[2] = (-*&v23.i32[1] * *v22.i32) + (*v23.i32 * *&v22.i32[1]);
  v27 = vmulq_f32(v25, v25);
  *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  *&result = vmulq_n_f32(v25, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]).u64[0];
  return result;
}

void sub_26224041C(float32x4_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, __n128 a7, double a8, double a9, double a10, double a11, __n128 a12)
{
  if (a2)
  {
    v16 = a2;
    do
    {
      a7.n128_f64[0] = sub_262240264(a1, a3, a4, a5, a7.n128_f64[0], a8, a9, a10, a11, a12);
      v19 = *(a6 + 8);
      v18 = *(a6 + 16);
      if (v19 >= v18)
      {
        v21 = (v19 - *a6) >> 4;
        if ((v21 + 1) >> 60)
        {
          sub_2621CBEB0();
        }

        v22 = v18 - *a6;
        v23 = v22 >> 3;
        if (v22 >> 3 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        if (v24)
        {
          sub_2621CBF10(v24);
        }

        *(16 * v21) = a7;
        v20 = 16 * v21 + 16;
        v25 = *(a6 + 8) - *a6;
        v26 = (16 * v21 - v25);
        memcpy(v26, *a6, v25);
        v27 = *a6;
        *a6 = v26;
        *(a6 + 8) = v20;
        *(a6 + 16) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v19 = a7;
        v20 = &v19[1];
      }

      *(a6 + 8) = v20;
      a1 += 4;
      --v16;
    }

    while (v16);
  }
}

dispatch_queue_t sub_262240540(const char *a1, void *a2)
{
  v3 = a2;
  v4 = strlen(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2621CC980();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memcpy(&__dst, a1, v4);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  v6 = std::string::append(&__dst, ".workloop", 9uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v16 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  inactive = dispatch_workloop_create_inactive(v8);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  dispatch_workloop_set_qos_class_floor();
  v10 = v3;
  if (v10)
  {
    dispatch_workloop_set_os_workgroup(inactive, v10);
  }

  dispatch_activate(inactive);
  v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v12 = dispatch_queue_create_with_target_V2(a1, v11, inactive);

  return v12;
}

void sub_2622406F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_262240718()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = os_workgroup_attr_set_flags();
  if (v0)
  {
    printf("ERROR [createWorkGroup]: Failed to set workgroup flags with error (%d)\n", v0);
  }

  v1 = os_workgroup_create();
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_2622407C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v61 = a1;
  v62 = a2;
  v77 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v63 = a4;
  if (objc_msgSend_count(v63, v6, v7) && objc_msgSend_count(v5, v8, v9))
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v63;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v69, v76, 16);
    if (v11)
    {
      v65 = *v70;
      do
      {
        v66 = v11;
        for (i = 0; i != v66; ++i)
        {
          if (*v70 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v69 + 1) + 8 * i);
          v16 = 0;
          v17 = 0;
          v68 = 0.0;
          v18 = -1;
          v67 = 0xFFFFFFFFLL;
          while (objc_msgSend_count(v5, v13, v14, v61, v62) > v16)
          {
            v21 = objc_msgSend_parentIdentifier(v15, v19, v20);
            v23 = objc_msgSend_objectAtIndexedSubscript_(v5, v22, v16);
            v26 = objc_msgSend_identifier(v23, v24, v25);
            isEqual = objc_msgSend_isEqual_(v21, v27, v26);

            if (isEqual)
            {
              v29 = objc_msgSend_objectAtIndexedSubscript_(v5, v13, v16);

              v17 = v29;
              v18 = v16;
            }

            ++v16;
          }

          if (v17)
          {
            LODWORD(v67) = v18;
            objc_msgSend_endOrientation(v17, v19, v20);
            v31 = v30;
            objc_msgSend_startOrientation(v17, v32, v33);
            v35 = v34;
            objc_msgSend_startOrientation(v15, v36, v37);
            v39 = v38;
            objc_msgSend_startOrientation(v17, v40, v41);
            v44 = v31 - v35;
            v46 = (v39 - v45) / v44;
            if (v46 <= 1.0)
            {
              v47 = v46;
            }

            else
            {
              v47 = 1.0;
            }

            if (v46 >= 0.0)
            {
              v48 = v47;
            }

            else
            {
              v48 = 0.0;
            }

            *(&v67 + 1) = v48;
            objc_msgSend_endOrientation(v15, v42, v43);
            v50 = v49;
            objc_msgSend_startOrientation(v17, v51, v52);
            v54 = (v50 - v53) / v44;
            if (v54 <= 1.0)
            {
              v55 = v54;
            }

            else
            {
              v55 = 1.0;
            }

            if (v54 >= 0.0)
            {
              v56 = v55;
            }

            else
            {
              v56 = 0.0;
            }

            v68 = v56;
            sub_262240B6C(&v73, &v67);
          }

          else
          {
            sub_262240B6C(&v73, &v67);
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v69, v76, 16);
      }

      while (v11);
    }

    v67 = v62;
    v58 = sub_262240C70((v61 + 720), v62);
    v59 = v73;
    sub_2622410F8(v58 + 5, v73, v74, 0xAAAAAAAAAAAAAAABLL * ((v74 - v73) >> 2));
    if (v59)
    {
      operator delete(v59);
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

void sub_262240ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_262240B6C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_2621CBEB0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_262241270(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
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
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

void *sub_262240C70(void *a1, void *a2)
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

void sub_2622410E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2622412C8(va);
  _Unwind_Resume(a1);
}

void *sub_2622410F8(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xAAAAAAAAAAAAAAALL)
      {
        v12 = 0x1555555555555555;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1555555555555555)
      {
        sub_262241270(v12);
      }
    }

    sub_2621CBEB0();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 2) >= a4)
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
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void sub_262241270(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_2622412C8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_262241314(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_262241314(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_26224136C(int8x8_t *a1, void *a2, void *a3, void *a4)
{
  v51 = a3;
  v7 = a4;
  if (!sub_2621E26D8(&a1[90], a2) || !objc_msgSend_count(v51, v8, v9) || !objc_msgSend_count(v7, v10, v11))
  {
    goto LABEL_35;
  }

  v12 = sub_2621D1580(a2);
  v13 = a1[91];
  if (!*&v13)
  {
    goto LABEL_20;
  }

  v14 = v12;
  v15 = vcnt_s8(v13);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = v12;
    if (v12 >= *&v13)
    {
      v17 = v12 % *&v13;
    }
  }

  else
  {
    v17 = (*&v13 - 1) & v12;
  }

  v18 = *(*&a1[90] + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_20:
    sub_2621C84A8("unordered_map::at: key not found");
  }

  while (1)
  {
    v20 = v19[1];
    if (v20 == v14)
    {
      break;
    }

    if (v16 > 1)
    {
      if (v20 >= *&v13)
      {
        v20 %= *&v13;
      }
    }

    else
    {
      v20 &= *&v13 - 1;
    }

    if (v20 != v17)
    {
      goto LABEL_20;
    }

LABEL_19:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_20;
    }
  }

  if (!sub_2621D19D0(v19 + 2, a2))
  {
    goto LABEL_19;
  }

  v23 = v19[5];
  if (v19[6] != v23)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(v23 + v24);
      if ((v26 & 0x80000000) == 0 && objc_msgSend_count(v51, v21, v22) > v26)
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(v7, v21, v25);
        v29 = objc_msgSend_objectAtIndexedSubscript_(v51, v28, *(v23 + v24));
        objc_msgSend_circleCenter(v29, v30, v31);
        if (v27)
        {
          v27[45] = v34;
        }

        objc_msgSend_radius(v29, v32, v33);
        if (v27)
        {
          v27[42].i32[0] = v37;
        }

        objc_msgSend_endOrientation(v29, v35, v36);
        v39 = v38;
        objc_msgSend_startOrientation(v29, v40, v41);
        v43 = v42;
        objc_msgSend_startOrientation(v29, v44, v45);
        v49 = v39 - v43;
        if (v27)
        {
          v27[42].f32[1] = v48 + (v49 * *(v23 + v24 + 4));
        }

        objc_msgSend_startOrientation(v29, v46, v47);
        if (v27)
        {
          v27[43].f32[0] = v50 + (v49 * *(v23 + v24 + 8));
        }

        sub_2622F85D0(v27);
      }

      ++v25;
      v23 = v19[5];
      v24 += 12;
    }

    while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v19[6] - v23) >> 2));
  }

LABEL_35:
}

unint64_t sub_262241638(float32x2_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] == *a2)
  {
    return 0xBF800000FFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0;
  v7 = -1;
  v8 = -1.0;
  do
  {
    v9 = (v2 + v5);
    v10 = sub_2621C92AC(a1, (v2 + v5), 0);
    if ((180.0 - v10) < v10)
    {
      v10 = 180.0 - v10;
    }

    if (v10 <= 20.0)
    {
      v11 = *v9;
      v12 = *a1;
      v13 = a1[1];
      v14 = vsub_f32(v9[1], *v9);
      v15 = vaddv_f32(vmul_f32(vsub_f32(*a1, *v9), v14));
      v16 = vaddv_f32(vmul_f32(v14, v14));
      if (v16 < 0.000001)
      {
        v16 = 0.000001;
      }

      v17 = vsub_f32(vmla_n_f32(v11, v14, v15 / v16), v12);
      v18 = vmul_f32(v17, v17);
      v19 = vsub_f32(vmla_n_f32(v11, v14, vaddv_f32(vmul_f32(v14, vsub_f32(v13, v11))) / v16), v13);
      v20 = vmul_f32(v19, v19);
      if ((vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v18, v20), vzip2_s32(v18, v20)))) * 0.5) < 0.4)
      {
        v21 = *a1;
        v22 = a1[1];
        sub_2621DC2A8();
        v25 = vsub_f32(v23, v24);
        v26 = vsub_f32(v12, v13);
        v27 = sqrtf(vaddv_f32(vmul_f32(v25, v25))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v26, v26))), 0.000001);
        if (v27 > v8)
        {
          v7 = v6;
          v8 = v27;
        }
      }
    }

    ++v6;
    v2 = *a2;
    v5 += 16;
  }

  while (v6 < (a2[1] - *a2) >> 4);
  return v7 | (LODWORD(v8) << 32);
}

uint64_t sub_2622417E4(uint64_t a1)
{
  sub_262241820(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_262241820(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_262241314((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_262241864(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v734[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v654 = a3;
  v667 = a1;
  sub_262245570(a1 + 720);
  __src[0] = 0;
  __src[1] = 0;
  v704 = 0;
  v655 = v6;
  v9 = objc_msgSend_walls(v6, v7, v8);
  sub_2622455CC(v9, __src);

  memset(v702, 0, sizeof(v702));
  v12 = objc_msgSend_openings(v6, v10, v11);
  sub_2622455CC(v12, v702);

  memset(v701, 0, sizeof(v701));
  v15 = objc_msgSend_windows(v6, v13, v14);
  sub_2622455CC(v15, v701);

  memset(v700, 0, sizeof(v700));
  v18 = objc_msgSend_doors(v6, v16, v17);
  sub_2622455CC(v18, v700);

  memset(v699, 0, sizeof(v699));
  v21 = objc_msgSend_opendoors(v6, v19, v20);
  sub_2622455CC(v21, v699);

  sub_2621D0F64(__p, "opening");
  sub_2622457C0(a1, __p, __src, v702);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "window");
  sub_2622457C0(a1, __p, __src, v701);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "door");
  sub_2622457C0(a1, __p, __src, v700);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "opendoor");
  sub_2622457C0(a1, __p, __src, v699);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(&v717, "polygon");
  v671 = objc_msgSend_walls(v6, v22, v23);
  if (objc_msgSend_count(v671, v24, v25))
  {
    for (i = 0; ; ++i)
    {
      if (i >= objc_msgSend_count(v671, v26, v27))
      {
        goto LABEL_55;
      }

      v29 = objc_msgSend_objectAtIndexedSubscript_(v671, v28, i);
      objc_msgSend_quad(v29, v30, v31);
      v681 = v32;
      objc_msgSend_quad(v29, v33, v34);
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v42 = vsubq_f32(v681, v41);
      v43 = fmaxf(sqrtf(vaddv_f32(*&vmulq_f32(v42, v42))), 0.00000001);
      while (objc_msgSend_polygonSize(v29, v35, v36) > v40)
      {
        v682 = *(objc_msgSend_polygon(v29, v44, v45) + v37);
        objc_msgSend_quad(v29, v46, v47);
        v49 = vsubq_f32(v682, v48);
        v50 = sqrtf(vaddv_f32(*&vmulq_f32(v49, v49))) / v43;
        if (v50 <= 1.0)
        {
          v51 = v50;
        }

        else
        {
          v51 = 1.0;
        }

        v52 = &v39[-v38];
        v53 = 0xAAAAAAAAAAAAAAABLL * (&v39[-v38] >> 2);
        v54 = v53 + 1;
        if (v53 + 1 > 0x1555555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * (-v38 >> 2) > v54)
        {
          v54 = 0x5555555555555556 * (-v38 >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v38 >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v55 = 0x1555555555555555;
        }

        else
        {
          v55 = v54;
        }

        if (v55)
        {
          sub_262241270(v55);
        }

        v56 = 12 * v53;
        *v56 = -1;
        *(v56 + 4) = v51;
        *(v56 + 8) = v51;
        v39 = (12 * v53 + 12);
        v57 = (v56 + 12 * (v52 / -12));
        memcpy(v57, v38, v52);
        if (v38)
        {
          operator delete(v38);
        }

        v38 = v57;
        ++v40;
        v37 += 16;
      }

      if ((v717.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v717.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v717.__r_.__value_.__l.__size_;
      }

      sub_262245A54(v728, size + 1);
      if (v728[23] >= 0)
      {
        v61 = v728;
      }

      else
      {
        v61 = *v728;
      }

      if (size)
      {
        if ((v717.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v717;
        }

        else
        {
          v62 = v717.__r_.__value_.__r.__words[0];
        }

        memmove(v61, v62, size);
      }

      *&v61[size] = 58;
      v63 = objc_msgSend_identifier(v29, v59, v60);
      v66 = objc_msgSend_UUIDString(v63, v64, v65);
      v67 = v66;
      v70 = objc_msgSend_UTF8String(v66, v68, v69);
      sub_2621D0F64(&v733, v70);
      if (v734[0] >= 0)
      {
        v71 = &v733;
      }

      else
      {
        v71 = v733;
      }

      if (v734[0] >= 0)
      {
        v72 = HIBYTE(v734[0]);
      }

      else
      {
        v72 = *(&v733 + 1);
      }

      v73 = std::string::append(v728, v71, v72);
      v74 = *&v73->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v73->__r_.__value_.__l + 2);
      *__p = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v734[0]) < 0)
      {
        operator delete(v733);
      }

      if ((v728[23] & 0x80000000) != 0)
      {
        operator delete(*v728);
      }

      *v728 = __p;
      v75 = sub_262240C70((v667 + 720), __p);
      sub_2622410F8(v75 + 5, v38, v39, 0xAAAAAAAAAAAAAAABLL * (&v39[-v38] >> 2));
      if ((__p[23] & 0x80000000) == 0)
      {
        break;
      }

      operator delete(*__p);
      if (v38)
      {
        goto LABEL_51;
      }

LABEL_52:
    }

    if (!v38)
    {
      goto LABEL_52;
    }

LABEL_51:
    operator delete(v38);
    goto LABEL_52;
  }

LABEL_55:

  if (SHIBYTE(v717.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v717.__r_.__value_.__l.__data_);
  }

  v696 = 0;
  v697 = 0;
  v698 = 0;
  v78 = objc_msgSend_curvedWalls(v655, v76, v77);
  sub_2622455CC(v78, &v696);

  v79 = v696;
  v80 = v697 - v696;
  v81 = (v697 - v696) >> 4;
  v82 = __src[0];
  v83 = __src[1];
  if (v81 < 1)
  {
    v86 = __src[1];
  }

  else if ((v704 - __src[1]) >= v80)
  {
    if (v696 != v697)
    {
      memmove(__src[1], v696, v697 - v696);
    }

    v86 = &v83[v80];
    __src[1] = &v83[v80];
  }

  else
  {
    v84 = v81 + ((__src[1] - __src[0]) >> 4);
    if (v84 >> 60)
    {
      sub_2621CBEB0();
    }

    if ((v704 - __src[0]) >> 3 > v84)
    {
      v84 = (v704 - __src[0]) >> 3;
    }

    if (v704 - __src[0] >= 0x7FFFFFFFFFFFFFF0)
    {
      v85 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v85 = v84;
    }

    if (v85)
    {
      sub_2621CBF10(v85);
    }

    v87 = 16 * ((__src[1] - __src[0]) >> 4);
    v86 = (v87 + v80);
    v88 = v87;
    do
    {
      v89 = *v79++;
      *v88++ = v89;
      v80 -= 16;
    }

    while (v80);
    v90 = __src[0];
    v82 = (v87 - (v83 - __src[0]));
    memcpy(v82, __src[0], v83 - __src[0]);
    __src[0] = v82;
    __src[1] = v86;
    v704 = 0;
    if (v90)
    {
      operator delete(v90);
    }
  }

  v694[0] = 0;
  v694[1] = 0;
  v695 = 0;
  v91 = v654;
  if (v91)
  {
    v672 = *(v91 + 5);
    v675 = *(v91 + 8);
    v662 = *(v91 + 4);
    v665 = *(v91 + 6);
    v683 = *(v91 + 7);
    v92 = *(v91 + 6);
    v93 = v91[8];
    v659 = *(v91 + 12);
    v94 = *(v91 + 7);
    v95 = *(v91 + 8);
    v96 = *(v91 + 36);
  }

  else
  {
    v94 = 0;
    v95 = 0;
    v93 = 0;
    v675 = 0u;
    v683 = 0u;
    v92 = 0;
    v672 = 0u;
    v662 = 0u;
    v665 = 0u;
    v659 = 0u;
    v96 = 0;
  }

  v652 = v91;

  v97 = (v86 - v82);
  if ((v86 - v82) > 0x10)
  {
    *(v667 + 400) = v93;
    *(v667 + 404) = v659;
    *(v667 + 432) = v662;
    *(v667 + 448) = v672;
    *(v667 + 464) = v665;
    *(v667 + 480) = v683;
    *(v667 + 496) = v675;
    *(v667 + 512) = v94;
    *(v667 + 520) = v92;
    *(v667 + 528) = v95;
    *(v667 + 532) = vrev64_s32(v96);
    v98 = *(a4 + 8);
    v99 = *(a4 + 40);
    *(v667 + 568) = *(a4 + 24);
    *(v667 + 584) = v99;
    *(v667 + 552) = v98;
    v100 = *(a4 + 56);
    v101 = *(a4 + 72);
    v102 = *(a4 + 104);
    *(v667 + 632) = *(a4 + 88);
    *(v667 + 648) = v102;
    *(v667 + 600) = v100;
    *(v667 + 616) = v101;
    v104 = *(a4 + 120);
    v103 = *(a4 + 128);
    if (v103)
    {
      atomic_fetch_add_explicit((v103 + 8), 1uLL, memory_order_relaxed);
    }

    *(v667 + 664) = v104;
    v105 = *(v667 + 672);
    *(v667 + 672) = v103;
    if (v105)
    {
      sub_2621D1B78(v105);
    }

    *(v667 + 688) = *(a4 + 144);
    *(v667 + 680) = *(a4 + 136);
    *(v667 + 704) = *(v667 + 696);
    sub_2623537A4(v667, __src);
    v106 = sub_262354078(v667);
    if ((*(v667 + 681) & 1) == 0)
    {
      sub_26235574C();
    }

    if (!v106)
    {
      v160 = 0;
      v161 = 0uLL;
      goto LABEL_390;
    }

    v708 = 0;
    v709 = 0;
    v710 = 0;
    v108 = *(v667 + 136);
    v107 = *(v667 + 144);
    if (v107 == v108)
    {
      goto LABEL_233;
    }

    v109 = 0;
    v110 = 0;
    do
    {
      v111 = v110++;
      v112 = v107 - v108;
      if (v110 < (v107 - v108) >> 4)
      {
        v113 = v109;
        v114 = v110;
        v115 = v667;
        do
        {
          v116 = sub_262354364(v115, v111);
          v117 = sub_262354364(v115, v114);
          v118 = *(v115 + 136);
          v119 = (v118 + 16 * v111);
          v120 = vsub_f32(*v119, v119[1]);
          v121 = sqrtf(vaddv_f32(vmul_f32(v120, v120)));
          v122 = *(v115 + 40);
          if (v121 >= v122)
          {
            v123 = (v118 + v113);
            v124 = vsub_f32(*(v118 + v113 + 16), *(v118 + v113 + 24));
            if (sqrtf(vaddv_f32(vmul_f32(v124, v124))) >= v122 && v117 && v116)
            {
              v125 = *(v667 + 36);
              if (vabdd_f64(90.0, sub_2621C92AC(v119, (v118 + v113 + 16), 0)) < *(v667 + 32))
              {
                v127 = *v119;
                v128 = v119[1];
                v129 = vsub_f32(v128, *v119);
                v131 = v123[2];
                v130 = v123[3];
                v132 = vsub_f32(v130, v131);
                *v126.i32 = -*&v129.i32[1];
                v133 = vzip1_s32(v126, v129);
                v134 = vmul_f32(v132, v133);
                if (vaddv_f32(v134) != 0.0)
                {
                  v135 = vmul_f32(vsub_f32(v127, v131), v133);
                  v136 = vmla_n_f32(v131, v132, vdiv_f32(vadd_f32(v135, vdup_lane_s32(v135, 1)), vadd_f32(v134, vdup_lane_s32(v134, 1))).f32[0]);
                  v137 = sub_2621DC76C(v136, v127, v128, 0.00001);
                  v138 = sub_2621DC76C(v136, v131, v130, 0.00001);
                  if (v137 >= v138)
                  {
                    v138 = v137;
                  }

                  if (v138 < v125)
                  {
                    *v728 = v111;
                    *&v728[8] = v114;
                    memset(__p, 0, 24);
                    sub_2622AB9E8(__p, v728, &v728[16], 2uLL);
                    sub_2623489A8(&v708, __p);
                    if (*__p)
                    {
                      operator delete(*__p);
                    }
                  }
                }
              }
            }
          }

          ++v114;
          v115 = v667;
          v108 = *(v667 + 136);
          v107 = *(v667 + 144);
          v112 = v107 - v108;
          v113 += 16;
        }

        while (v114 < (v107 - v108) >> 4);
      }

      v109 += 16;
    }

    while (v110 < v112 >> 4);
    if (v708 == v709)
    {
LABEL_233:
      *__p = &v708;
      sub_2621E1D40(__p);
      v245 = sub_262354078(v667);
      v246 = *(v667 + 136);
      v247 = *(v667 + 144);
      v248 = (v247 - v246) >> 4;
      if (v245)
      {
        v714 = 0;
        v715 = 0;
        v716 = 0;
        if (v247 != v246)
        {
          v249 = 0;
          v250 = 0;
          v251 = 0;
          if (v248 <= 1)
          {
            v248 = 1;
          }

          v252 = vdup_n_s32(0x43340000u);
          v253 = vdup_n_s32(0xC2B40000);
          do
          {
            v254 = *(v667 + 136);
            v255 = *(v667 + 72);
            v256 = *(v667 + 76);
            v257 = *(v667 + 80);
            v258 = sub_262354364(v667, v251);
            v259 = *(v667 + 136);
            v260 = sub_2621C92AC((v259 + v249), (v667 + 376), 1);
            if ((180.0 - v260) < v260)
            {
              v260 = 180.0 - v260;
            }

            v261 = fabsf(v260 + -90.0);
            v262 = fabsf(v260);
            if (v262 >= v261)
            {
              v262 = v261;
            }

            if ((v262 <= v256 || (v263 = vsub_f32(*(v259 + v249), *(v259 + v249 + 8)), sqrtf(vaddv_f32(vmul_f32(v263, v263))) <= v255)) && (v262 <= v257 ? (v267 = v262 >= 0.00001) : ((v264 = vsub_f32(*(v259 + v249), *(v259 + v249 + 8)), v265 = sqrtf(vaddv_f32(vmul_f32(v264, v264))), v262 >= 0.00001) ? (v266 = v265 > v255) : (v266 = 0), !v266 ? (v267 = 0) : (v267 = 1)), v267 && v258))
            {
              v268 = sub_2621C92AC((v254 + v249), (v667 + 376), 1);
              if ((180.0 - v268) < v268)
              {
                v268 = 180.0 - v268;
              }

              v270 = fabsf(v268 + -90.0);
              v271 = fabsf(v268);
              if (v271 >= v270)
              {
                v271 = v270;
              }

              v272 = *(*(v667 + 208) + v250);
              v273 = *(v667 + 232);
              v274 = (*(v273 + 24 * *v272 + 8) - *(v273 + 24 * *v272)) >> 3;
              v276 = (v273 + 24 * v272[1]);
              v275 = v276[1];
              v277 = v274 > (v275 - *v276) >> 3;
              if (v274 < (v275 - *v276) >> 3)
              {
                v278 = 1;
              }

              else
              {
                v278 = 2;
              }

              if (v277)
              {
                v279 = 0;
              }

              else
              {
                v279 = v278;
              }

              v280 = (v271 * 3.1416) / 180.0;
              v281 = sub_26235564C(v279, *(v254 + v249), *(v254 + v249 + 8), v280, v269);
              v283 = v282;
              *__p = v281;
              *&__p[8] = v282;
              v684 = sub_2621C92AC(__p, (v667 + 376), 1);
              v285 = sub_26235564C(v279, *(v254 + v249), *(v254 + v249 + 8), -v280, v284);
              v287 = v286;
              *v728 = v285;
              *&v728[8] = v286;
              v288.f32[0] = sub_2621C92AC(v728, (v667 + 376), 1);
              v288.f32[1] = v684;
              v289 = vsub_f32(v252, v288);
              v290 = vbsl_s8(vcgt_f32(v288, v289), v289, v288);
              v291 = vadd_f32(v290, v253);
              v292 = vbsl_s8(vcagt_f32(v291, v290), vabs_f32(v290), vabs_f32(v291));
              if (vcgt_f32(vdup_lane_s32(v292, 1), v292).u8[0])
              {
                v293 = -1;
              }

              else
              {
                v293 = 0;
              }

              v294 = vdup_n_s32(v293);
              *&v733 = vbsl_s8(v294, v285, v281);
              *(&v733 + 1) = vbsl_s8(v294, v287, v283);
              if ((*(v667 + 681) & 1) == 0)
              {
                memset(__p, 0, 24);
                sub_2621DE070(__p, &v733);
                sub_26235574C();
              }

              sub_2621DE070(&v714, &v733);
            }

            else
            {
              sub_2621DE070(&v714, (v254 + v249));
            }

            ++v251;
            v250 += 24;
            v249 += 16;
          }

          while (v248 != v251);
        }

        v295 = *(v667 + 240) - *(v667 + 232);
        if (v295)
        {
          v296 = 0;
          v297 = 0;
          v298 = *(v667 + 64);
          v300 = 0xAAAAAAAAAAAAAAABLL * (v295 >> 3);
          if (v300 <= 1)
          {
            v301 = 1;
          }

          else
          {
            v301 = v300;
          }

          v299 = (v667 + 68);
          v302 = vld1_dup_f32(v299);
          v303 = v714;
          while (1)
          {
            v304 = (*(v667 + 232) + v296);
            memset(__p, 0, 24);
            sub_262234B80(__p, *v304, v304[1], (v304[1] - *v304) >> 3);
            v305 = *__p;
            if (*&__p[8] - *__p != 16)
            {
              if (!*__p)
              {
                goto LABEL_296;
              }

              goto LABEL_295;
            }

            v306 = (*(v667 + 208) + 24 * **__p);
            memset(v728, 0, 24);
            sub_262234B80(v728, *v306, v306[1], (v306[1] - *v306) >> 3);
            v307 = (*(v667 + 208) + 24 * v305[1]);
            v734[0] = 0;
            v733 = 0uLL;
            sub_262234B80(&v733, *v307, v307[1], (v307[1] - *v307) >> 3);
            *&v717.__r_.__value_.__l.__data_ = v303[*v305];
            v731 = v303[v305[1]];
            v308 = sub_2621C92AC(&v717, &v731, 0);
            if ((180.0 - v308) < v308)
            {
              v308 = 180.0 - v308;
            }

            if (v308 <= v298)
            {
              break;
            }

            v310 = vsub_f32(v717.__r_.__value_.__r.__words[1], v717.__r_.__value_.__l.__data_);
            v311 = v731;
            v312 = vsub_f32(*(&v731 + 8), *&v731);
            *v309.i32 = -*&v310.i32[1];
            v313 = vzip1_s32(v309, v310);
            v314 = vmul_f32(v312, v313);
            v315 = v733;
            if (vaddv_f32(v314) == 0.0)
            {
              goto LABEL_291;
            }

            v316 = vmul_f32(vsub_f32(v717.__r_.__value_.__l.__data_, *&v731), v313);
            v317 = vmla_n_f32(*&v731, v312, vdiv_f32(vadd_f32(v316, vdup_lane_s32(v316, 1)), vadd_f32(v314, vdup_lane_s32(v314, 1))).f32[0]);
            v318 = **v728;
            v319 = vsub_f32(vbsl_s8(vceqd_s64(v297, **v728), v717.__r_.__value_.__l.__data_, v717.__r_.__value_.__r.__words[1]), v317);
            v320 = vmul_f32(v319, v319);
            v321 = vsub_f32(vbsl_s8(vceqd_s64(v297, *v733), *&v731, *(&v731 + 8)), v317);
            v322 = vmul_f32(v321, v321);
            v323 = vcgt_f32(v302, vsqrt_f32(vadd_f32(vzip1_s32(v322, v320), vzip2_s32(v322, v320))));
            if (v323.i32[1] & v323.i32[0])
            {
              v324 = v717.__r_.__value_.__l.__size_;
              v325 = &v303[*v305];
              v326 = v297 == v318;
              if (v297 == v318)
              {
                v327 = v317;
              }

              else
              {
                v327 = v717.__r_.__value_.__r.__words[0];
              }

              if (!v326)
              {
                v324 = v317;
              }

              *v325 = v327;
              v325[1] = v324;
              v328 = vceqd_s64(v297, *v315);
              v329 = &v303[v305[1]];
              *v329 = vbsl_s8(v328, v317, *&v311);
              v329[1] = vbsl_s8(v328, *(&v311 + 8), v317);
            }

LABEL_292:
            operator delete(v315);
LABEL_293:
            if (*v728)
            {
              operator delete(*v728);
            }

LABEL_295:
            operator delete(v305);
LABEL_296:
            ++v297;
            v296 += 24;
            if (v301 == v297)
            {
              v330 = 0;
              v331 = *(v667 + 12);
              do
              {
                v332 = (*(v667 + 232) + 24 * v330);
                v333 = v332[1] - *v332;
                if (v333 >= 9)
                {
                  v685 = v330;
                  *__p = 0;
                  sub_2621DE86C(v728, v333 >> 3);
                  v334 = *v332;
                  v335 = v332[1];
                  if (v335 != *v332)
                  {
                    v336 = 0;
                    v337 = v714;
                    do
                    {
                      if (*(*v728 + 4 * v336) == 1)
                      {
                        v338 = v336 + 1;
                        v339 = v335 - v334;
                      }

                      else
                      {
                        v338 = v336 + 1;
                        v339 = v335 - v334;
                        if (v336 + 1 < (v335 - v334) >> 3)
                        {
                          v340 = &v337[16 * *(v334 + 8 * v336)];
                          v341 = v336 + 1;
                          do
                          {
                            v342 = &v337[16 * *(v334 + 8 * v341)];
                            v343 = *v340;
                            v344 = *v342;
                            v345 = vsub_f32(*v340, *v342);
                            LODWORD(v733) = sqrtf(vaddv_f32(vmul_f32(v345, v345)));
                            v346 = v342[1];
                            v347 = vsub_f32(v343, v346);
                            DWORD1(v733) = sqrtf(vaddv_f32(vmul_f32(v347, v347)));
                            v348 = v340[1];
                            v349 = vsub_f32(v348, v344);
                            v350 = vmul_f32(v349, v349);
                            v351 = vsub_f32(v348, v346);
                            v352 = vmul_f32(v351, v351);
                            *(&v733 + 1) = vsqrt_f32(vadd_f32(vzip1_s32(v350, v352), vzip2_s32(v350, v352)));
                            memset(__p, 0, 24);
                            sub_2621DC430(__p, &v733, v734, 4uLL);
                            v353 = *__p;
                            if (*__p != *&__p[8])
                            {
                              v354 = *__p + 4;
                              v353 = *__p;
                              if (*__p + 4 != *&__p[8])
                              {
                                v355 = **__p;
                                v353 = *__p;
                                v356 = (*__p + 4);
                                do
                                {
                                  v357 = *v356++;
                                  v358 = v357;
                                  if (v357 < v355)
                                  {
                                    v355 = v358;
                                    v353 = v354;
                                  }

                                  v354 = v356;
                                }

                                while (v356 != *&__p[8]);
                              }
                            }

                            v359 = *v353;
                            if (*__p)
                            {
                              operator delete(*__p);
                            }

                            if (v359 < v331)
                            {
                              v360 = *v728;
                              *(*v728 + 4 * v336) = 1;
                              *(v360 + 4 * v341) = 1;
                            }

                            ++v341;
                            v334 = *v332;
                            v335 = v332[1];
                            v339 = v335 - *v332;
                          }

                          while (v341 < v339 >> 3);
                        }
                      }

                      v336 = v338;
                    }

                    while (v338 < v339 >> 3);
                  }

                  v733 = 0uLL;
                  v734[0] = 0;
                  memset(&v717, 0, sizeof(v717));
                  v361 = *v728;
                  if (*&v728[8] == *v728)
                  {
                    v366 = 0;
                    v365 = 0;
                  }

                  else
                  {
                    v362 = 0;
                    v363 = 0;
                    do
                    {
                      if (*(v361 + 4 * v363) <= 0)
                      {
                        v364 = &v717;
                      }

                      else
                      {
                        v364 = &v733;
                      }

                      sub_2621C9004(v364, (*v332 + v362));
                      ++v363;
                      v361 = *v728;
                      v362 += 8;
                    }

                    while (v363 < (*&v728[8] - *v728) >> 2);
                    v365 = *(&v733 + 1);
                    v366 = v733;
                  }

                  if ((v365 - v366) <= 8)
                  {
                    if (v717.__r_.__value_.__r.__words[0] != v717.__r_.__value_.__l.__size_)
                    {
                      v388 = *(*(v667 + 208) + 24 * *v717.__r_.__value_.__l.__data_);
                      v389 = *v388;
                      if (*v388 == v685)
                      {
                        v389 = v388[1];
                      }

                      v390 = (*(*(v667 + 232) + 24 * v389 + 8) - *(*(v667 + 232) + 24 * v389)) >> 3;
                      v391 = vsub_f32(*(v714 + 16 * *v717.__r_.__value_.__l.__data_), *(v714 + 16 * *v717.__r_.__value_.__l.__data_ + 8));
                      operator new();
                    }

                    sub_262354454(0, 0, 0, 1);
                    operator delete(0);
                    v377 = v717.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    v367 = v714;
                    v368 = v366[1];
                    v369 = (v714 + 16 * *v366);
                    v370 = (v714 + 16 * v368);
                    v371 = *v369;
                    v372 = vsub_f32(*v369, *v370);
                    v373 = vmul_f32(v372, v372);
                    v374 = vsub_f32(*v369, v370[1]);
                    v375 = vmul_f32(v374, v374);
                    v376 = vsqrt_f32(vadd_f32(vzip1_s32(v375, v373), vzip2_s32(v375, v373)));
                    if (v376.f32[0] >= v376.f32[1])
                    {
                      v376.f32[0] = v376.f32[1];
                    }

                    if (v376.f32[0] >= v331)
                    {
                      v371 = v369[1];
                    }

                    v378 = v717.__r_.__value_.__l.__size_;
                    v377 = v717.__r_.__value_.__r.__words[0];
                    if (v717.__r_.__value_.__r.__words[0] != v717.__r_.__value_.__l.__size_)
                    {
                      v379 = v717.__r_.__value_.__r.__words[0];
                      do
                      {
                        v380 = *v379++;
                        v381 = &v367[16 * v380];
                        v382 = vsub_f32(*v381, v371);
                        v383 = vmul_f32(v382, v382);
                        v384 = vsub_f32(v381[1], v371);
                        v385 = vmul_f32(v384, v384);
                        v386 = vsqrt_f32(vadd_f32(vzip1_s32(v383, v385), vzip2_s32(v383, v385)));
                        v387 = (vmvn_s8(vcge_f32(vdup_lane_s32(v386, 1), v386)).u8[0] & 1) != 0;
                        v381[v387] = v371;
                      }

                      while (v379 != v378);
                    }
                  }

                  if (v377)
                  {
                    v717.__r_.__value_.__l.__size_ = v377;
                    operator delete(v377);
                  }

                  if (v733)
                  {
                    operator delete(v733);
                  }

                  if (*v728)
                  {
                    *&v728[8] = *v728;
                    operator delete(*v728);
                  }

                  v330 = v685;
                }

                ++v330;
              }

              while (v330 != v301);
              goto LABEL_350;
            }
          }

          v315 = v733;
LABEL_291:
          if (!v315)
          {
            goto LABEL_293;
          }

          goto LABEL_292;
        }

LABEL_350:
        sub_2623537A4(v667, &v714);
        if (v714)
        {
          operator delete(v714);
        }

        v392 = v667;
        v246 = *(v667 + 136);
        v247 = *(v667 + 144);
        v248 = (v247 - v246) >> 4;
      }

      else
      {
        v392 = v667;
      }

      v393 = v392[22];
      v394 = v392[23];
      v395 = v392[24];
      memset(__p, 0, 24);
      sub_2621DE214(__p, v246, v247, v248);
      if (v248 != 1)
      {
        v396 = 0;
        v686 = *__p;
        v397 = 16;
        while (1)
        {
          v398 = v396++;
          if (v396 < v248)
          {
            break;
          }

LABEL_386:
          v397 += 16;
          if (v396 == v248 - 1)
          {
            goto LABEL_387;
          }
        }

        v399 = (*(v667 + 136) + 16 * v398);
        v400 = v397;
        v401 = v396;
        v676 = v397;
        while (1)
        {
          v402 = *(v667 + 136);
          v403 = sub_2621C92AC(v399, (v402 + v400), 0);
          if ((180.0 - v403) < v403)
          {
            v403 = 180.0 - v403;
          }

          if (v403 < v394)
          {
            goto LABEL_385;
          }

          v405 = vsub_f32(v399[1], *v399);
          v406 = *(v402 + v400);
          v407 = vsub_f32(*(v402 + v400 + 8), v406);
          *v404.i32 = -*&v405.i32[1];
          v408 = vzip1_s32(v404, v405);
          v409 = vmul_f32(v407, v408);
          if (vaddv_f32(v409) == 0.0)
          {
            goto LABEL_385;
          }

          v410 = vmul_f32(vsub_f32(*v399, v406), v408);
          v411 = vmla_n_f32(v406, v407, vdiv_f32(vadd_f32(v410, vdup_lane_s32(v410, 1)), vadd_f32(v409, vdup_lane_s32(v409, 1))).f32[0]);
          v717.__r_.__value_.__l.__data_ = v411;
          *v728 = 0;
          *&v728[4] = 0;
          *&v728[8] = 0;
          LODWORD(v733) = 0;
          WORD2(v733) = 0;
          DWORD2(v733) = 0;
          sub_262353F30(v667, &v717, v398, v728, v393);
          sub_262353F30(v667, &v717, v401, &v733, v393);
          v412 = *v728;
          v413 = *&v733;
          if (*v728 >= v393 || *&v733 >= v393)
          {
            v414 = BYTE4(v733);
          }

          else
          {
            v414 = BYTE4(v733);
            if (v728[4] == 1 && (BYTE4(v733) & 1) != 0)
            {
              v415 = v396;
              v416 = SDWORD2(v733);
              v417 = *(v667 + 136);
              v418 = *(v667 + 144);
              if (v398 == sub_262353E7C(v417, v418, v401, *(&v417[DWORD2(v733) != 0] + v400)))
              {
                v419 = *&v728[8];
                if (v401 == sub_262353E7C(v417, v418, v398, v417[2 * v398 + (*&v728[8] != 0)]))
                {
                  *(v686 + 16 * v398 + 8 * v419) = v411;
                  v420 = (v686 + v400 + 8 * v416);
                  v396 = v415;
                  v397 = v676;
                  goto LABEL_384;
                }
              }

              v414 = 1;
              v396 = v415;
              v397 = v676;
            }
          }

          if ((v728[5] & 1) == 0 && v412 > v395 && (v414 & 1) != 0 && v413 < v393 && (v421 = SDWORD2(v733), v398 == sub_262353E7C(*(v667 + 136), *(v667 + 144), v401, *(*(v667 + 136) + 8 * (DWORD2(v733) != 0) + v400))))
          {
            v422 = v686 + 16 * v401;
          }

          else
          {
            if (BYTE5(v733))
            {
              goto LABEL_385;
            }

            if (v413 <= v395)
            {
              goto LABEL_385;
            }

            if (v412 >= v393)
            {
              goto LABEL_385;
            }

            if ((v728[4] & 1) == 0)
            {
              goto LABEL_385;
            }

            v421 = *&v728[8];
            if (v401 != sub_262353E7C(*(v667 + 136), *(v667 + 144), v398, *(*(v667 + 136) + 16 * v398 + 8 * (*&v728[8] != 0))))
            {
              goto LABEL_385;
            }

            v422 = v686 + 16 * v398;
          }

          v420 = (v422 + 8 * v421);
LABEL_384:
          *v420 = v411;
LABEL_385:
          ++v401;
          v400 += 16;
          if (v248 == v401)
          {
            goto LABEL_386;
          }
        }
      }

LABEL_387:
      sub_2623537A4(v667, __p);
      if (*__p)
      {
        operator delete(*__p);
      }

      v161 = *v694;
      v160 = v695;
LABEL_390:
      v163 = *(v667 + 136);
      v97 = *(v667 + 144);
      *(v667 + 136) = v161;
      v694[0] = v163;
      v694[1] = v97;
      v162 = *(v667 + 152);
      *(v667 + 152) = v160;
      v695 = v162;
      goto LABEL_391;
    }

    v705 = 0;
    v706 = 0;
    v707 = 0;
    v139 = v667;
    v140 = (*(v667 + 192) - *(v667 + 184)) >> 2;
    *__p = 0;
    sub_262355D5C(&v733, v140);
    v141 = (*(v139 + 192) - *(v139 + 184)) >> 2;
    *__p = 0;
    sub_262355D5C(&v717, v141);
    v142 = (*(v139 + 192) - *(v139 + 184)) >> 2;
    *__p = 0;
    sub_262355D5C(&v714, v142);
    v143 = *(v667 + 184);
    v144 = *(v667 + 192) - v143;
    if (v144)
    {
      v145 = v144 >> 2;
      v146 = v733;
      v147 = *(v667 + 44);
      v148 = v717.__r_.__value_.__r.__words[0];
      v149 = v714;
      if (v145 <= 1)
      {
        v145 = 1;
      }

      do
      {
        v150 = *v143++;
        *v146 = v150;
        *v148++ = v150 - v147;
        v151 = *v146++;
        *v149++ = v151 + v147;
        --v145;
      }

      while (v145);
    }

    v731 = 0uLL;
    v732 = 0;
    v152 = v708;
    for (j = v709; v152 != j; v152 += 3)
    {
      v154 = *v152;
      v155 = *(v667 + 208);
      *__p = **(v155 + 24 * **v152);
      *&__p[8] = *(*(v155 + 24 * *v154) + 8);
      *&__p[16] = **(v155 + 24 * v154[1]);
      *&__p[24] = *(*(v155 + 24 * v154[1]) + 8);
      memset(v728, 0, 24);
      sub_2622AB9E8(v728, __p, &__p[32], 4uLL);
      sub_2623489A8(&v731, v728);
      if (*v728)
      {
        operator delete(*v728);
      }
    }

    v156 = v717.__r_.__value_.__r.__words[0];
    *&__p[8] = 0;
    *__p = (v717.__r_.__value_.__l.__size_ - v717.__r_.__value_.__r.__words[0]) >> 3;
    *&__p[4] = 1;
    if (*__p)
    {
      v157 = ((v717.__r_.__value_.__l.__size_ - v717.__r_.__value_.__r.__words[0]) << 29) >> 29;
      v158 = malloc_type_malloc(v157 & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
      v159 = v158;
      *&__p[8] = v158;
      if (v156 && v158)
      {
        memcpy(v158, v156, v157 & 0xFFFFFFFFFFFFFFF8);
      }
    }

    else
    {
      v159 = 0;
    }

    v164 = v714;
    v713 = 0;
    LODWORD(v712) = (v715 - v714) >> 3;
    HIDWORD(v712) = 1;
    if (v712)
    {
      v165 = (v715 - v714) << 29 >> 29;
      v166 = malloc_type_malloc(v165 & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
      v167 = v166;
      v713 = v166;
      if (v164 && v166)
      {
        memcpy(v166, v164, v165 & 0xFFFFFFFFFFFFFFF8);
      }
    }

    else
    {
      v167 = 0;
    }

    *v728 = &unk_2874EEEC0;
    sub_26235BA28(&v728[8], __p);
    sub_26235BA28(&v728[24], &v712);
    if (v167)
    {
      free(v167);
    }

    if (v159)
    {
      free(v159);
    }

    memset(&v728[40], 0, 32);
    *v728 = &unk_2874EEE88;
    __dst = 0;
    v730 = (*(&v733 + 1) - v733) >> 3;
    if (*(&v731 + 1) != v731)
    {
      v168 = 0xAAAAAAAAAAAAAAABLL * ((*(&v731 + 1) - v731) >> 3);
      if (v168 <= 0xAAAAAAAAAAAAAAALL)
      {
        sub_2621E1E3C(v168);
      }

      sub_2621CBEB0();
    }

    sub_26235DF8C(v731, *(&v731 + 1), 0);
    v170 = v169;
    v171 = *&v728[48];
    if (*&v728[48] != v169)
    {
      v172 = *&v728[48];
      do
      {
        v174 = *(v172 - 24);
        v172 -= 24;
        v173 = v174;
        if (v174)
        {
          *(v171 - 16) = v173;
          operator delete(v173);
        }

        v171 = v172;
      }

      while (v172 != v170);
    }

    *&v728[48] = v170;
    v175 = v733;
    v176 = *(&v733 + 1) - v733;
    v177 = (*(&v733 + 1) - v733) >> 3;
    if (v177)
    {
      v178 = v176 << 29 >> 29;
      v179 = malloc_type_malloc(v178 & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
      v180 = v179;
      if (v175 && v179)
      {
        memcpy(v179, v175, v178 & 0xFFFFFFFFFFFFFFF8);
      }

      if (v177 >= 1)
      {
        if (*&v728[68] * *&v728[64] != v177)
        {
          if (__dst)
          {
            free(__dst);
            __dst = 0;
          }

          *&v728[64] = v177 | 0x100000000;
          v205 = malloc_type_malloc(v176 & 0x3FFFFFFF8, 0x100004000313F17uLL);
          __dst = v205;
          if (v205)
          {
            if (!v180)
            {
LABEL_150:
              *&__p[88] = -1;
              memset(&__p[48], 0, 40);
              memset(&__p[96], 0, 32);
              *&v719 = 0x500000000;
              *__p = &unk_2874EEEF8;
              *&__p[8] = 100;
              *&__p[16] = xmmword_2623A78E0;
              *&__p[32] = xmmword_2623A78F0;
              v713 = 0;
              LODWORD(v712) = (*(&v733 + 1) - v733) >> 3;
              HIDWORD(v712) = 1;
              if (v712)
              {
                v181 = malloc_type_malloc((((*(&v733 + 1) - v733) << 29) >> 29) & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
                v713 = v181;
                LODWORD(v182) = v712;
                if (v181)
                {
                  bzero(v181, 8 * HIDWORD(v712) * v712);
                  LODWORD(v182) = v712;
                }

                if (v182 >= 1)
                {
                  v183 = v733;
                  v184 = v713;
                  v182 = v182;
                  do
                  {
                    v185 = *v183++;
                    *v184++ = v185;
                    --v182;
                  }

                  while (v182);
                }
              }

              v186 = sub_262355E30(__p, v728, &v712);
              v187 = (*(v667 + 192) - *(v667 + 184)) >> 2;
              v711 = 0;
              sub_26220A3AC(&v705, v187, &v711, v188);
              v189 = v712;
              v190 = v713;
              if (v712 < 1)
              {
                if (!v713)
                {
LABEL_162:
                  *__p = &unk_2874EEEF8;
                  if (*&__p[120])
                  {
                    free(*&__p[120]);
                    *&__p[120] = 0;
                  }

                  *&__p[112] = 0;
                  if (*&__p[104])
                  {
                    free(*&__p[104]);
                  }

                  *v728 = &unk_2874EEE88;
                  if (__dst)
                  {
                    free(__dst);
                    __dst = 0;
                  }

                  *&v728[64] = 0;
                  *__p = &v728[40];
                  sub_2621E1D40(__p);
                  *v728 = &unk_2874EEEC0;
                  if (*&v728[32])
                  {
                    free(*&v728[32]);
                    *&v728[32] = 0;
                  }

                  *&v728[24] = 0;
                  if (*&v728[16])
                  {
                    free(*&v728[16]);
                  }

                  *__p = &v731;
                  sub_2621E1D40(__p);
                  if (v714)
                  {
                    v715 = v714;
                    operator delete(v714);
                  }

                  if (v717.__r_.__value_.__r.__words[0])
                  {
                    v717.__r_.__value_.__l.__size_ = v717.__r_.__value_.__r.__words[0];
                    operator delete(v717.__r_.__value_.__l.__data_);
                  }

                  if (v733)
                  {
                    *(&v733 + 1) = v733;
                    operator delete(v733);
                  }

                  v195 = v705;
                  if (v186)
                  {
                    memset(__p, 0, 24);
                    sub_2621C8E70(__p, v705, v706, (v706 - v705) >> 2);
                    v196 = *(v667 + 304);
                    v197 = *(v667 + 312);
                    if (v196 != v197)
                    {
                      v198 = *(v667 + 184);
                      v199 = *__p;
                      do
                      {
                        v200 = *v196++;
                        *(v199 + 8 * v200) = *(v198 + 8 * v200);
                        *(v199 + ((8 * v200) | 4)) = *(v198 + ((8 * v200) | 4));
                      }

                      while (v196 != v197);
                    }

                    v201 = *(v667 + 208);
                    v202 = *(v667 + 216);
                    memset(v728, 0, 24);
                    v203 = v202 - v201;
                    if (v202 != v201)
                    {
                      v204 = 0xAAAAAAAAAAAAAAABLL * (v203 >> 3);
                      if (!(v204 >> 60))
                      {
                        sub_2621CBF10(v204);
                      }

                      sub_2621CBEB0();
                    }

                    v206 = v201;
                    if (v203)
                    {
                      v207 = 0;
                      v208 = *__p;
                      if ((v203 >> 4) <= 1)
                      {
                        v209 = 1;
                      }

                      else
                      {
                        v209 = v203 >> 4;
                      }

                      do
                      {
                        v210 = *(v667 + 208);
                        v211 = sub_2621C92AC((*(v667 + 136) + 16 * v207), (16 * v207), 0);
                        if ((180.0 - v211) < v211)
                        {
                          v211 = 180.0 - v211;
                        }

                        v212 = *(v210 + 24 * v207);
                        if (v211 <= *(v667 + 32))
                        {
                          v216 = 0;
                          v217 = *(v667 + 184);
                          v218 = (*(v667 + 136) + 16 * v207);
                          v219 = 1;
                          do
                          {
                            v220 = v219;
                            v221 = v212[v216];
                            v222 = *(v217 + 8 * v221);
                            v223 = vsub_f32(*v218, v218[1]);
                            v224 = *(v667 + 48) * sqrtf(vaddv_f32(vmul_f32(v223, v223)));
                            v225 = vsub_f32(v222, *(v208 + 8 * v221));
                            v226 = sqrtf(vaddv_f32(vmul_f32(v225, v225)));
                            if (v224 > *(v667 + 44))
                            {
                              v224 = *(v667 + 44);
                            }

                            if (v226 > v224)
                            {
                              v227 = 2 * v221;
                              *(v208 + 4 * v227) = v222.i32[0];
                              *(v208 + ((4 * v227) | 4)) = *(v217 + ((4 * v227) | 4));
                            }

                            v219 = 0;
                            v216 = 1;
                          }

                          while ((v220 & 1) != 0);
                        }

                        else
                        {
                          v213 = *v212;
                          v214 = *(v667 + 184);
                          *(v208 + 8 * *v212) = *(v214 + 8 * *v212);
                          *(v208 + ((8 * v213) | 4)) = *(v214 + ((8 * v213) | 4));
                          v215 = v212[1];
                          *(v208 + 8 * v215) = *(v214 + 8 * v215);
                          *(v208 + ((8 * v215) | 4)) = *(v214 + ((8 * v215) | 4));
                        }

                        ++v207;
                      }

                      while (v207 != v209);
                      v201 = *(v667 + 208);
                      v206 = *(v667 + 216);
                    }

                    if ((*(v667 + 681) & 1) == 0)
                    {
                      v733 = 0uLL;
                      v734[0] = 0;
                      if (v206 != v201)
                      {
                        v228 = 0;
                        v229 = 0;
                        v230 = 0;
                        do
                        {
                          v231 = *(v201 + v228);
                          v232 = *(*__p + 8 * *v231);
                          v233 = *(*__p + 8 * v231[1]);
                          if (v229 >= v734[0])
                          {
                            v234 = v733;
                            v235 = v229 - v733;
                            v236 = (v229 - v733) >> 4;
                            v237 = v236 + 1;
                            if ((v236 + 1) >> 60)
                            {
                              sub_2621CBEB0();
                            }

                            v238 = v734[0] - v733;
                            if ((v734[0] - v733) >> 3 > v237)
                            {
                              v237 = v238 >> 3;
                            }

                            if (v238 >= 0x7FFFFFFFFFFFFFF0)
                            {
                              v239 = 0xFFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v239 = v237;
                            }

                            if (v239)
                            {
                              sub_2621CBF10(v239);
                            }

                            v240 = (16 * v236);
                            *v240 = v232;
                            v240[1] = v233;
                            v229 = (16 * v236 + 16);
                            memcpy(0, v234, v235);
                            *&v733 = 0;
                            v734[0] = 0;
                            if (v234)
                            {
                              operator delete(v234);
                            }
                          }

                          else
                          {
                            *v229 = v232;
                            v229[1] = v233;
                            v229 += 2;
                          }

                          *(&v733 + 1) = v229;
                          ++v230;
                          v201 = *(v667 + 208);
                          v228 += 24;
                        }

                        while (0xAAAAAAAAAAAAAAABLL * ((*(v667 + 216) - v201) >> 3) > v230);
                      }

                      sub_26235574C();
                    }

                    if (v206 != v201)
                    {
                      v241 = 0;
                      v242 = 0;
                      v243 = *__p;
                      v244 = 8;
                      do
                      {
                        *(v244 - 8) = *(v243 + 8 * **(v201 + v241));
                        *(v244 - 4) = *(v243 + 8 * **(v201 + v241) + 4);
                        *v244 = *(v243 + 8 * *(*(v201 + v241) + 8));
                        *(v244 + 4) = *(v243 + 8 * *(*(v201 + v241) + 8) + 4);
                        ++v242;
                        v201 = *(v667 + 208);
                        v244 += 16;
                        v241 += 24;
                      }

                      while (0xAAAAAAAAAAAAAAABLL * ((*(v667 + 216) - v201) >> 3) > v242);
                    }

                    sub_2623537A4(v667, v728);
                    if (*v728)
                    {
                      operator delete(*v728);
                    }

                    if (*__p)
                    {
                      operator delete(*__p);
                    }

                    v195 = v705;
                  }

                  if (v195)
                  {
                    operator delete(v195);
                  }

                  goto LABEL_233;
                }
              }

              else
              {
                v191 = v705;
                v192 = v713;
                do
                {
                  v193 = *v192++;
                  v194 = v193;
                  *v191++ = v194;
                  --v189;
                }

                while (v189);
              }

              free(v190);
              goto LABEL_162;
            }

            memcpy(v205, v180, 8 * *&v728[64] * *&v728[68]);
LABEL_149:
            free(v180);
            goto LABEL_150;
          }

LABEL_148:
          if (!v180)
          {
            goto LABEL_150;
          }

          goto LABEL_149;
        }

        if (__dst && v180)
        {
          memcpy(__dst, v180, 8 * *&v728[64] * *&v728[68]);
        }

LABEL_147:
        *&v728[64] = v177 | 0x100000000;
        goto LABEL_148;
      }
    }

    else
    {
      v180 = 0;
    }

    if (__dst)
    {
      free(__dst);
      __dst = 0;
    }

    goto LABEL_147;
  }

  if (v86 != v82)
  {
    sub_2621CBF10(1uLL);
  }

  v162 = 0;
  v163 = 0;
  v694[1] = v97;
LABEL_391:
  v423 = objc_alloc(MEMORY[0x277CBEB18]);
  v426 = objc_msgSend_walls(v655, v424, v425);
  v666 = objc_msgSend_initWithArray_copyItems_(v423, v427, v426, 1);

  v692 = 0u;
  v693 = 0u;
  v690 = 0u;
  v691 = 0u;
  v430 = objc_msgSend_curvedWalls(v655, v428, v429);
  v434 = objc_msgSend_countByEnumeratingWithState_objects_count_(v430, v431, &v690, v727, 16);
  if (v434)
  {
    v435 = *v691;
    do
    {
      for (k = 0; k != v434; ++k)
      {
        if (*v691 != v435)
        {
          objc_enumerationMutation(v430);
        }

        v437 = objc_msgSend_copy(*(*(&v690 + 1) + 8 * k), v432, v433, v652);
        objc_msgSend_addObject_(v666, v438, v437);
      }

      v434 = objc_msgSend_countByEnumeratingWithState_objects_count_(v430, v432, &v690, v727, 16);
    }

    while (v434);
  }

  if (objc_msgSend_count(v666, v439, v440) == (v97 - v163) >> 4)
  {
    v441 = objc_alloc_init(RSFloorPlan);
    sub_2622AE900(v441, v666);
    v677 = v441;
    v444 = objc_msgSend_walls(v441, v442, v443);
    sub_262245AE0(v694, v444);

    memset(&__p[8], 0, 128);
    v719 = 0u;
    v720 = 0u;
    *__p = &unk_2874EED80;
    v721 = 0;
    v722 = &unk_2874EEE20;
    v723 = 0;
    v725 = 0;
    v724 = 0;
    sub_2621C5224(v726);
    memset(&v726[176], 0, 24);
    sub_262245CF8(__p, v677);
    sub_2622B5BA8((v667 + 760), __p);
    v687 = objc_alloc_init(RSFloorPlan);
    v449 = objc_msgSend_array(MEMORY[0x277CBEB18], v445, v446);
    v450 = *&__p[8];
    v451 = *&__p[16];
    while (v450 != v451)
    {
      v453 = sub_26224644C(v450, v447, v448);
      if (v453)
      {
        objc_msgSend_addObject_(v449, v452, v453);
      }

      v450 += 176;
    }

    sub_2622AE900(v687, v449);
    v458 = objc_msgSend_array(MEMORY[0x277CBEB18], v454, v455);
    v460 = *&__p[40];
    for (m = *&__p[32]; m != v460; m += 176)
    {
      v462 = sub_26224644C(m, v456, v457);
      if (v462)
      {
        objc_msgSend_addObject_(v458, v461, v462);
      }
    }

    sub_2622AE920(v687, v458);
    v467 = objc_msgSend_array(MEMORY[0x277CBEB18], v463, v464);
    v468 = *&__p[56];
    v469 = *&__p[64];
    while (v468 != v469)
    {
      v471 = sub_26224644C(v468, v465, v466);
      if (v471)
      {
        objc_msgSend_addObject_(v467, v470, v471);
      }

      v468 += 176;
    }

    sub_2622AE910(v687, v467);
    v476 = objc_msgSend_array(MEMORY[0x277CBEB18], v472, v473);
    v477 = *&__p[80];
    v478 = *&__p[88];
    while (v477 != v478)
    {
      v480 = sub_26224644C(v477, v474, v475);
      if (v480)
      {
        objc_msgSend_addObject_(v476, v479, v480);
      }

      v477 += 176;
    }

    sub_26223FCDC(v687, v476);
    v485 = objc_msgSend_array(MEMORY[0x277CBEB18], v481, v482);
    v486 = *&__p[104];
    v487 = *&__p[112];
    while (v486 != v487)
    {
      v489 = sub_26224644C(v486, v483, v484);
      if (v489)
      {
        objc_msgSend_addObject_(v485, v488, v489);
      }

      v486 += 176;
    }

    sub_26223FCBC(v687, v485);
    v492 = objc_msgSend_array(MEMORY[0x277CBEB18], v490, v491);
    v494 = *(&v720 + 1);
    for (n = v720; n != v494; ++n)
    {
      v495 = *n;
      objc_msgSend_addObject_(v492, v496, v495);
    }

    sub_2622AE930(v687, v492);

    memset(v728, 0, 24);
    v499 = objc_msgSend_walls(v687, v497, v498);
    sub_2622455CC(v499, v728);

    v500 = *v728;
    *v728 = v163;
    v678 = v500;
    *v694 = v500;
    v162 = *&v728[16];
    v695 = *&v728[16];
    if (v163)
    {
      operator delete(v163);
    }

    sub_2621C4F2C(__p);

    v97 = *(&v678 + 1);
    v163 = v678;
  }

  v656 = v655;
  v503 = objc_msgSend_curvedWalls(v656, v501, v502);
  v506 = objc_msgSend_count(v503, v504, v505) == 0;

  if (!v506)
  {
    memset(v728, 0, 32);
    *&v728[32] = 1065353216;
    sub_2621D0F64(__p, "curved_window");
    v509 = objc_msgSend_curvedWalls(v656, v507, v508);
    v512 = objc_msgSend_curvedWindows(v656, v510, v511);
    sub_2622407C8(v667, __p, v509, v512);

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_2621D0F64(__p, "curved_door");
    v515 = objc_msgSend_curvedWalls(v656, v513, v514);
    v518 = objc_msgSend_curvedDoors(v656, v516, v517);
    sub_2622407C8(v667, __p, v515, v518);

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v519 = v696;
    if (v697 != v696)
    {
      v520 = 0;
      if (((v697 - v696) >> 4) <= 1)
      {
        v521 = 1;
      }

      else
      {
        v521 = (v697 - v696) >> 4;
      }

      do
      {
        v522 = sub_262241638(v519, v694);
        if ((v522 & 0x80000000) == 0)
        {
          v525 = v522 & 0x7FFFFFFF;
          if (v525 < (v97 - v163) >> 4 && *(&v522 + 1) > 0.000001)
          {
            v526 = objc_msgSend_curvedWalls(v656, v523, v524, *(&v522 + 1));
            v528 = objc_msgSend_objectAtIndexedSubscript_(v526, v527, v520);
            v529 = *v519;
            v530 = v519[1];
            objc_msgSend_circleCenter(v528, v531, v532);
            v536 = &v163[16 * v525];
            v537 = *v519;
            v538 = v519[1];
            v539 = *v536;
            v540 = v536[1];
            v541 = vsub_f32(*v536, *v519);
            v542 = vmul_f32(v541, v541);
            v543 = vsub_f32(*v536, v538);
            v544 = vmul_f32(v543, v543);
            v545 = vsqrt_f32(vadd_f32(vzip1_s32(v542, v544), vzip2_s32(v542, v544)));
            v546 = vcgt_f32(v545, vdup_lane_s32(v545, 1)).u8[0];
            v547 = v540;
            v548 = *v536;
            if (v546)
            {
              *v536 = v540;
              v536[1] = v539;
              v537 = *v519;
              v538 = v519[1];
              v547 = v539;
              v548 = v540;
            }

            if (v528)
            {
              v549 = vsub_f32(vmul_f32(vadd_f32(v529, v530), 0x3F0000003F000000), v535);
              v550 = vsub_f32(v548, v547);
              v551.i32[0] = vdup_lane_s32(v550, 1).u32[0];
              v551.f32[1] = -v550.f32[0];
              v552 = vmul_f32(v551, v551);
              v552.i32[0] = vadd_f32(v552, vdup_lane_s32(v552, 1)).u32[0];
              v553 = vrsqrte_f32(v552.u32[0]);
              v554 = vmul_f32(v553, vrsqrts_f32(v552.u32[0], vmul_f32(v553, v553)));
              v555 = vsub_f32(v537, v538);
              v556 = vmla_n_f32(vmul_f32(vadd_f32(v539, v540), 0x3F0000003F000000), vmul_n_f32(vmul_n_f32(v551, vmul_f32(v554, vrsqrts_f32(v552.u32[0], vmul_f32(v554, v554))).f32[0]), sqrtf(vaddv_f32(vmul_f32(v549, v549)))), sqrtf(vaddv_f32(vmul_f32(v550, v550))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v555, v555))), 0.000001));
              v688 = vsub_f32(v547, v556);
              v557 = sqrtf(vaddv_f32(vmul_f32(v688, v688)));
              v558 = vsub_f32(v548, v556);
              v559 = sqrtf(vaddv_f32(vmul_f32(v558, v558)));
              v528[45] = v556;
              v560 = atan2f(v558.f32[1], v558.f32[0]) * 57.296;
              v528[42].f32[1] = v560;
              v561 = atan2f(v688.f32[1], v688.f32[0]) * 57.296;
              if (v561 < v560)
              {
                v561 = v561 + 360.0;
              }

              v528[43].f32[0] = v561;
              v528[42].f32[0] = (v559 + v557) * 0.5;
            }

            objc_msgSend_quad(v528, v533, v534, v652);
            *&v562 = *v536;
            DWORD2(v562) = v536[1].i32[0];
            v689 = v562;
            objc_msgSend_quad(v528, v563, v564);
            v680 = v565;
            v673 = v536[1];
            objc_msgSend_quad(v528, v566, v567);
            v669 = v568;
            v663 = v536[1];
            objc_msgSend_quad(v528, v569, v570);
            v660 = v571;
            *&v572 = *v536;
            DWORD2(v572) = v536[1].i32[0];
            *obja = v572;
            objc_msgSend_quad(v528, v573, v574);
            v575 = v689;
            DWORD2(v575) = v680;
            *&v576 = v673;
            *(&v576 + 1) = vextq_s8(v669, v669, 8uLL).u64[0];
            *&v577 = v663;
            *(&v577 + 1) = vextq_s8(v660, v660, 8uLL).u64[0];
            v578 = *obja;
            DWORD2(v578) = v579;
            *__p = v575;
            *&__p[16] = v576;
            *&__p[32] = v577;
            *&__p[48] = v578;
            if (v528)
            {
              objc_copyStruct(&v528[34], __p, 64, 1, 0);
            }

            v580 = v97 - &v536[2];
            if (v97 != &v536[2])
            {
              memmove(v536, &v536[2], v97 - &v536[2]);
            }

            v97 -= 2;
            v694[1] = v536 + v580;
          }
        }

        ++v520;
        v519 += 2;
      }

      while (v521 != v520);
    }

    sub_2621D0F64(__p, "curved_window");
    v583 = objc_msgSend_curvedWalls(v656, v581, v582);
    v586 = objc_msgSend_curvedWindows(v656, v584, v585);
    sub_26224136C(v667, __p, v583, v586);

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_2621D0F64(__p, "curved_door");
    v589 = objc_msgSend_curvedWalls(v656, v587, v588);
    v592 = objc_msgSend_curvedDoors(v656, v590, v591);
    sub_26224136C(v667, __p, v589, v592);

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_262241820(*&v728[16]);
    if (*v728)
    {
      operator delete(*v728);
    }

    v162 = v695;
  }

  v593 = *__src;
  *__src = *v694;
  *v694 = v593;
  v594 = v704;
  v704 = v162;
  v695 = v594;
  sub_2621D0F64(__p, "opening");
  sub_262246344(v667, __p, __src, v702);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "window");
  sub_262246344(v667, __p, __src, v701);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "door");
  sub_262246344(v667, __p, __src, v700);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_2621D0F64(__p, "opendoor");
  sub_262246344(v667, __p, __src, v699);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v597 = objc_msgSend_walls(v656, v595, v596, v652);
  sub_262245AE0(__src, v597);

  v600 = objc_msgSend_openings(v656, v598, v599);
  sub_262245AE0(v702, v600);

  v603 = objc_msgSend_windows(v656, v601, v602);
  sub_262245AE0(v701, v603);

  v606 = objc_msgSend_doors(v656, v604, v605);
  sub_262245AE0(v700, v606);

  v609 = objc_msgSend_opendoors(v656, v607, v608);
  sub_262245AE0(v699, v609);

  sub_2621D0F64(&v731, "polygon");
  v612 = objc_msgSend_walls(v656, v610, v611);
  memset(v728, 0, 64);
  obj = v612;
  v614 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v613, v728, __p, 16);
  if (v614)
  {
    v661 = **&v728[16];
    do
    {
      v670 = 0;
      v664 = v614;
      do
      {
        if (**&v728[16] != v661)
        {
          objc_enumerationMutation(obj);
        }

        v615 = *(*&v728[8] + 8 * v670);
        if (v732 >= 0)
        {
          v616 = HIBYTE(v732);
        }

        else
        {
          v616 = *(&v731 + 1);
        }

        sub_262245A54(&v717, v616 + 1);
        if ((v717.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v619 = &v717;
        }

        else
        {
          v619 = v717.__r_.__value_.__r.__words[0];
        }

        if (v616)
        {
          if (v732 >= 0)
          {
            v620 = &v731;
          }

          else
          {
            v620 = v731;
          }

          memmove(v619, v620, v616);
        }

        *(&v619->__r_.__value_.__l.__data_ + v616) = 58;
        v621 = objc_msgSend_identifier(v615, v617, v618);
        v624 = objc_msgSend_UUIDString(v621, v622, v623);
        v625 = v624;
        v628 = objc_msgSend_UTF8String(v624, v626, v627);
        sub_2621D0F64(&v714, v628);
        if (v716 >= 0)
        {
          v629 = &v714;
        }

        else
        {
          v629 = v714;
        }

        if (v716 >= 0)
        {
          v630 = HIBYTE(v716);
        }

        else
        {
          v630 = v715;
        }

        v631 = std::string::append(&v717, v629, v630);
        v733 = *&v631->__r_.__value_.__l.__data_;
        v734[0] = *(&v631->__r_.__value_.__l + 2);
        v631->__r_.__value_.__l.__size_ = 0;
        v631->__r_.__value_.__r.__words[2] = 0;
        v631->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v716) < 0)
        {
          operator delete(v714);
        }

        if (SHIBYTE(v717.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v717.__r_.__value_.__l.__data_);
        }

        v632 = sub_2621E26D8((v667 + 720), &v733);
        if (v632)
        {
          v635 = v632;
          objc_msgSend_quad(v615, v633, v634);
          objc_msgSend_quad(v615, v636, v637);
          v640 = v635[5];
          if (v635[6] != v640)
          {
            objc_msgSend_quad(v615, v638, v639);
            v679 = *(v640 + 4);
            v643 = *(objc_msgSend_polygon(v615, v641, v642) + 8);
            sub_2621CBF10(1uLL);
          }

          v644 = objc_msgSend_polygonEdgeStates(v615, v638, v639);
          v647 = objc_msgSend_polygonEdgeConfidence(v615, v645, v646);
          v650 = objc_msgSend_polygonSize(v615, v648, v649);
          sub_2622C51B4(v615, 0, v644, v647, v650);
        }

        if (SHIBYTE(v734[0]) < 0)
        {
          operator delete(v733);
        }

        ++v670;
      }

      while (v670 != v664);
      v614 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v633, v728, __p, 16);
    }

    while (v614);
  }

  if (SHIBYTE(v732) < 0)
  {
    operator delete(v731);
  }

  sub_262245570(v667 + 720);

  if (v694[0])
  {
    operator delete(v694[0]);
  }

  if (v696)
  {
    operator delete(v696);
  }

  if (v699[0])
  {
    operator delete(v699[0]);
  }

  if (v700[0])
  {
    operator delete(v700[0]);
  }

  if (v701[0])
  {
    operator delete(v701[0]);
  }

  if (v702[0])
  {
    operator delete(v702[0]);
  }

  if (__src[0])
  {
    operator delete(__src[0]);
  }

  v651 = *MEMORY[0x277D85DE8];
}

void sub_262244D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (v71)
  {
    free(v71);
  }

  if (STACK[0x488])
  {
    free(STACK[0x488]);
    STACK[0x488] = 0;
  }

  STACK[0x480] = 0;
  STACK[0x220] = v72;
  sub_2621E1D40(&STACK[0x220]);
  sub_26235DF24(&STACK[0x440]);
  STACK[0x440] = v73 - 224;
  sub_2621E1D40(&STACK[0x440]);
  if (__p)
  {
    a71 = __p;
    operator delete(__p);
  }

  v75 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v75;
    operator delete(v75);
  }

  v76 = *(v73 - 192);
  if (v76)
  {
    *(v73 - 184) = v76;
    operator delete(v76);
  }

  if (a61)
  {
    operator delete(a61);
  }

  STACK[0x440] = &a64;
  sub_2621E1D40(&STACK[0x440]);
  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  if (a54)
  {
    operator delete(a54);
  }

  if (a57)
  {
    operator delete(a57);
  }

  _Unwind_Resume(a1);
}

void sub_262245570(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_262241820(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_2622455CC(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v29, v33, 16);
  if (v7)
  {
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        objc_msgSend_quad(v10, v5, v6, v27);
        v28 = v11;
        objc_msgSend_quad(v10, v12, v13);
        v27 = v14;
        v16 = *(a2 + 8);
        v15 = *(a2 + 16);
        if (v16 >= v15)
        {
          v18 = (v16 - *a2) >> 4;
          v19 = v18 + 1;
          if ((v18 + 1) >> 60)
          {
            sub_2621CBEB0();
          }

          v20 = v15 - *a2;
          if (v20 >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            sub_2621CBF10(v21);
          }

          v22 = (16 * v18);
          *v22 = v28;
          v22[1] = v14;
          v17 = 16 * v18 + 16;
          v23 = *(a2 + 8) - *a2;
          v24 = 16 * v18 - v23;
          memcpy(v22 - v23, *a2, v23);
          v25 = *a2;
          *a2 = v24;
          *(a2 + 8) = v17;
          *(a2 + 16) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v16 = v28;
          v16[1] = v14;
          v17 = (v16 + 2);
        }

        *(a2 + 8) = v17;
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v29, v33, 16);
    }

    while (v7);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2622457C0(uint64_t a1, uint64_t a2, uint64_t *a3, float32x2_t **a4)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    if (*a3 != a3[1] && *a4 != a4[1])
    {
      v9 = sub_262240C70((a1 + 720), a2);
      v9[6] = v9[5];
      if (a3[1] != *a3)
      {
        v10 = *a4;
        v11 = a4[1];
        v12 = *a4;
        if (v11 != v12)
        {
          while (1)
          {
            v13 = sub_262240C70((a1 + 720), a2);
            v14 = sub_262241638(v12, a3);
            v15 = 0;
            v16 = 0;
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_22;
            }

            v17 = 0xFFFFFFFFLL;
            if (*(&v14 + 1) > 0.000001)
            {
              break;
            }

LABEL_23:
            v28 = v16 | v17;
            v30 = v13[6];
            v29 = v13[7];
            if (v30 >= v29)
            {
              v32 = v13[5];
              v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v32) >> 2);
              v34 = v33 + 1;
              if (v33 + 1 > 0x1555555555555555)
              {
                sub_2621CBEB0();
              }

              v35 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v32) >> 2);
              if (2 * v35 > v34)
              {
                v34 = 2 * v35;
              }

              if (v35 >= 0xAAAAAAAAAAAAAAALL)
              {
                v36 = 0x1555555555555555;
              }

              else
              {
                v36 = v34;
              }

              if (v36)
              {
                sub_262241270(v36);
              }

              v37 = 12 * v33;
              *v37 = v28;
              *(v37 + 8) = v15;
              v31 = 12 * v33 + 12;
              v38 = v13[5];
              v39 = v13[6] - v38;
              v40 = (12 * v33 - v39);
              memcpy(v40, v38, v39);
              v41 = v13[5];
              v13[5] = v40;
              v13[6] = v31;
              v13[7] = 0;
              if (v41)
              {
                operator delete(v41);
              }
            }

            else
            {
              *v30 = v28;
              *(v30 + 8) = v15;
              v31 = v30 + 12;
            }

            v13[6] = v31;
            v12 += 2;
            if (v12 == v11)
            {
              return;
            }
          }

          v17 = v14 & 0x7FFFFFFF;
          if (v17 < (a3[1] - *a3) >> 4)
          {
            v18 = (*a3 + 16 * v17);
            v19 = vsub_f32(*v18, v18[1]);
            v20 = vmul_f32(v19, v19);
            v20.f32[0] = sqrtf(vaddv_f32(v20));
            v21 = vsub_f32(*v12, *v18);
            v22 = vmul_f32(v21, v21);
            v23 = vsub_f32(v12[1], *v18);
            v24 = vmul_f32(v23, v23);
            v25 = vdiv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v24, v22), vzip2_s32(v24, v22))), vdup_lane_s32(v20, 0));
            v26 = v25.f32[1];
            if (v25.f32[1] > 1.0)
            {
              v26 = 1.0;
            }

            v27 = vcltz_f32(v25);
            if (v25.f32[0] > 1.0)
            {
              v25.f32[0] = 1.0;
            }

            if (v27.i8[4])
            {
              v16 = 0;
            }

            else
            {
              v16 = LODWORD(v26) << 32;
            }

            if (v27.i8[0])
            {
              v15 = 0;
            }

            else
            {
              v15 = v25.i32[0];
            }

            goto LABEL_23;
          }

          v16 = 0;
          v15 = 0;
LABEL_22:
          v17 = 0xFFFFFFFFLL;
          goto LABEL_23;
        }
      }
    }
  }
}

uint64_t sub_262245A54(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2621CC980();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void sub_262245AE0(uint64_t *a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = *a1;
  v4 = a1[1];
  if (objc_msgSend_count(v3, v6, v7) == (v4 - v5) >> 4)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = v3;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v45, v50, 16);
    if (v12)
    {
      v13 = 0;
      v14 = *v46;
      do
      {
        v15 = 0;
        v16 = 16 * v13;
        v34 = v38;
        v36 = v39;
        v30 = v43;
        v32 = v41;
        do
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v17 = *(*(&v45 + 1) + 8 * v15);
          v18 = (*a1 + v16);
          v44 = *v18;
          v42 = v18[1];
          objc_msgSend_quad(v17, v10, v11, v30, v32, v34, v36);
          v40 = v19;
          objc_msgSend_quad(v17, v20, v21);
          *&v22 = v42;
          v23 = vextq_s8(v40, v40, 8uLL).u32[0];
          *&v24 = v44;
          *&v25 = v44;
          *(&v25 + 1) = __PAIR64__(v37, v23);
          *&v26 = v42;
          *(&v26 + 1) = __PAIR64__(v35, v23);
          v28 = vextq_s8(v27, v27, 8uLL).u32[0];
          *(&v22 + 1) = __PAIR64__(v33, v28);
          *(&v24 + 1) = __PAIR64__(v31, v28);
          v38 = v26;
          v39 = v25;
          src[0] = v25;
          src[1] = v26;
          v41 = v22;
          v43 = v24;
          src[2] = v22;
          src[3] = v24;
          if (v17)
          {
            objc_copyStruct((v17 + 272), src, 64, 1, 0);
          }

          ++v13;
          ++v15;
          v16 += 16;
          v34 = v38;
          v36 = v39;
          v30 = v43;
          v32 = v41;
        }

        while (v12 != v15);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v45, v50, 16, v43, v41, v38, v39);
      }

      while (v12);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_262245CF8(uint64_t *a1, void *a2)
{
  v109 = *MEMORY[0x277D85DE8];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v73 = a2;
  v5 = objc_msgSend_walls(v73, v3, v4);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v99, v108, 16);
  if (v7)
  {
    v8 = *v100;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v100 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v99 + 1) + 8 * i);
        sub_2621C5224(&v94);
        sub_2622464F4(&v94, v10);
        sub_26224663C(a1 + 1, &v94, v11);
        sub_2621C50C4(&v94);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v99, v108, 16);
    }

    while (v7);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v15 = objc_msgSend_openings(v73, v13, v14);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v90, v107, 16);
  if (v17)
  {
    v18 = *v91;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v91 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v90 + 1) + 8 * j);
        sub_2621C5224(&v94);
        sub_2622464F4(&v94, v20);
        sub_26224663C(a1 + 4, &v94, v21);
        sub_2621C50C4(&v94);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v22, &v90, v107, 16);
    }

    while (v17);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v25 = objc_msgSend_windows(v73, v23, v24);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v86, v106, 16);
  if (v27)
  {
    v28 = *v87;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v87 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v86 + 1) + 8 * k);
        sub_2621C5224(&v94);
        sub_2622464F4(&v94, v30);
        sub_26224663C(a1 + 7, &v94, v31);
        sub_2621C50C4(&v94);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v32, &v86, v106, 16);
    }

    while (v27);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v35 = objc_msgSend_doors(v73, v33, v34);
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v82, v105, 16);
  if (v37)
  {
    v38 = *v83;
    do
    {
      for (m = 0; m != v37; ++m)
      {
        if (*v83 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v82 + 1) + 8 * m);
        sub_2621C5224(&v94);
        sub_2622464F4(&v94, v40);
        sub_26224663C(a1 + 10, &v94, v41);
        sub_2621C50C4(&v94);
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v42, &v82, v105, 16);
    }

    while (v37);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v45 = objc_msgSend_opendoors(v73, v43, v44);
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v78, v104, 16);
  if (v47)
  {
    v48 = *v79;
    do
    {
      for (n = 0; n != v47; ++n)
      {
        if (*v79 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v78 + 1) + 8 * n);
        sub_2621C5224(&v94);
        sub_2622464F4(&v94, v50);
        sub_26224663C(a1 + 13, &v94, v51);
        sub_2621C50C4(&v94);
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v52, &v78, v104, 16);
    }

    while (v47);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v55 = objc_msgSend_curvedWalls(v73, v53, v54);
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v74, v103, 16);
  if (v59)
  {
    v60 = *v75;
    v61 = a1 + 19;
    do
    {
      for (ii = 0; ii != v59; ++ii)
      {
        if (*v75 != v60)
        {
          objc_enumerationMutation(v55);
        }

        v63 = objc_msgSend_copy(*(*(&v74 + 1) + 8 * ii), v57, v58);
        v64 = v63;
        v66 = a1[20];
        v65 = a1[21];
        if (v66 >= v65)
        {
          v68 = (v66 - *v61) >> 3;
          if ((v68 + 1) >> 61)
          {
            sub_2621CBEB0();
          }

          v69 = v65 - *v61;
          v70 = v69 >> 2;
          if (v69 >> 2 <= (v68 + 1))
          {
            v70 = v68 + 1;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFF8)
          {
            v71 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v71 = v70;
          }

          v98 = a1 + 19;
          if (v71)
          {
            sub_2622317F8(v71);
          }

          v94 = 0;
          v95 = (8 * v68);
          v97 = 0;
          *v95 = v64;
          v96 = 8 * v68 + 8;
          sub_262246690((a1 + 19), &v94);
          v67 = a1[20];
          sub_262246740(&v94);
        }

        else
        {
          *v66 = v63;
          v67 = v66 + 1;
          a1[20] = v67;
        }

        a1[20] = v67;
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v74, v103, 16);
    }

    while (v59);
  }

  v72 = *MEMORY[0x277D85DE8];
}

void *sub_262246344(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = sub_2621E26D8((a1 + 720), a2);
  if (result)
  {
    if (*a3 != a3[1] && *a4 != a4[1])
    {
      result = sub_262240C70((a1 + 720), a2);
      v9 = result[5];
      v10 = result[6];
      if (v10 != v9)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(v9 + v11);
          if ((v14 & 0x80000000) == 0 && v14 < (a3[1] - *a3) >> 4)
          {
            v15 = (*a3 + 16 * v14);
            v16 = vsub_f32(v15[1], *v15);
            v17 = v9 + v11;
            *(*a4 + v12) = vmla_n_f32(*v15, v16, *(v17 + 4));
            *(*a4 + v12 + 8) = vmla_n_f32(*v15, v16, *(v17 + 8));
            v9 = result[5];
            v10 = result[6];
          }

          ++v13;
          v12 += 16;
          v11 += 12;
        }

        while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 2));
      }
    }
  }

  return result;
}

id sub_26224644C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = objc_msgSend_copy(v4, a2, a3);
    v6 = v5;
    *&v7 = *(a1 + 16);
    *&v8 = *(a1 + 24);
    v9 = v7;
    DWORD2(v9) = *(a1 + 68);
    v10 = v8;
    DWORD2(v10) = DWORD2(v9);
    DWORD2(v8) = *(a1 + 64);
    DWORD2(v7) = DWORD2(v8);
    v12[0] = v9;
    v12[1] = v10;
    v12[2] = v8;
    v12[3] = v7;
    if (v5)
    {
      objc_copyStruct((v5 + 272), v12, 64, 1, 0);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_2622464F4(uint64_t a1, void *a2)
{
  v32 = a2;
  objc_storeStrong((a1 + 8), a2);
  *&v6 = sub_262246BD0(a1, v4, v5);
  v9 = objc_msgSend_identifier(*(a1 + 8), v7, v8, v6);
  v12 = objc_msgSend_UUIDString(v9, v10, v11);
  v13 = v12;
  v16 = objc_msgSend_UTF8String(v13, v14, v15);
  sub_2621DA094((a1 + 128), v16);

  v19 = objc_msgSend_parentIdentifier(*(a1 + 8), v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_parentIdentifier(*(a1 + 8), v20, v21);
    v25 = objc_msgSend_UUIDString(v22, v23, v24);
    v26 = v25;
    v29 = objc_msgSend_UTF8String(v26, v27, v28);
    sub_2621DA094((a1 + 152), v29);

    v30 = v32;
  }

  else
  {
    if (*(a1 + 175) < 0)
    {
      *(a1 + 160) = 0;
      v31 = *(a1 + 152);
    }

    else
    {
      v31 = (a1 + 152);
      *(a1 + 175) = 0;
    }

    v30 = v32;
    *v31 = 0;
  }
}

uint64_t sub_26224663C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_2622468BC(a1, a2, a3);
  }

  else
  {
    sub_262246794(a1[1], a2, a3);
    result = v4 + 176;
    a1[1] = v4 + 176;
  }

  a1[1] = result;
  return result;
}

void sub_262246690(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t sub_262246740(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_262246794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2874EEE40;
  *(a1 + 8) = 0u;
  *(a1 + 128) = 0u;
  v5 = (a1 + 128);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v6 = objc_msgSend_copy(*(a2 + 8), a2, a3);
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v8 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  std::string::operator=(v5, (a2 + 128));
  std::string::operator=((a1 + 152), (a2 + 152));
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void sub_262246888(_Unwind_Exception *a1)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622468BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x1745D1745D1745DLL)
  {
    sub_2621CBEB0();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v4;
  }

  v16 = a1;
  if (v6)
  {
    sub_2622469FC(v6);
  }

  v13 = 0;
  v14 = 176 * v3;
  sub_262246794(176 * v3, a2, a3);
  v15 = (176 * v3 + 176);
  v7 = a1[1];
  v8 = 176 * v3 + *a1 - v7;
  sub_262246A58(*a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_262246B64(&v13);
  return v12;
}

void sub_2622469E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_262246B64(va);
  _Unwind_Resume(a1);
}

void sub_2622469FC(unint64_t a1)
{
  if (a1 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262246A58(uint64_t result, uint64_t (***a2)(void), uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = a3 - 176;
    v7 = result;
    v8 = a3;
    do
    {
      sub_262246794(v8, v7, a3);
      v7 += 176;
      v8 += 176;
      v5 -= 176;
      v6 += 176;
    }

    while (v7 != a2);
    v9 = v4;
    v10 = v4;
    do
    {
      v11 = *v10;
      v10 += 22;
      result = (*v11)(v4);
      v9 += 22;
      v4 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t sub_262246B64(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 176);
    *(a1 + 16) = i - 176;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

float sub_262246BD0(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_quad(*(a1 + 8), a2, a3);
  v32 = v4;
  objc_msgSend_quad(*(a1 + 8), v5, v6);
  *(a1 + 16) = vzip1q_s64(v32, v7);
  objc_msgSend_quad(*(a1 + 8), v8, v9);
  *(a1 + 64) = v10;
  objc_msgSend_quad(*(a1 + 8), v11, v12);
  *(a1 + 68) = v15;
  for (i = 24; i != 72; i += 16)
  {
    objc_msgSend_quad(*(a1 + 8), v13, v14);
    v35 = v19;
    v37 = v20;
    v34 = v21;
    v36 = v22;
    v39 = v23;
    v38 = v24;
    v25 = *&v33[i];
    if (v25 >= *(a1 + 64))
    {
      v25 = *(a1 + 64);
    }

    *(a1 + 64) = v25;
    objc_msgSend_quad(*(a1 + 8), v17, v18);
    v35 = v28;
    v37 = DWORD2(v26);
    v34 = v29;
    v36 = v26;
    v39 = DWORD2(v27);
    v38 = v27;
    v30 = *&v33[i];
    if (*(a1 + 68) >= v30)
    {
      v30 = *(a1 + 68);
    }

    *(a1 + 68) = v30;
  }

  *&v26 = *(a1 + 16);
  *&v27 = *(a1 + 24);
  DWORD2(v26) = *(a1 + 64);
  *(&v27 + 2) = v30;
  *(a1 + 32) = v26;
  *(a1 + 48) = v27;
  result = v30 - *(&v26 + 2);
  *(a1 + 72) = result;
  return result;
}

void sub_262246CEC(float32x2_t *a1, int32x2_t *a2, int8x16_t *a3, simd_float4x4 *a4, uint64_t a5, int a6)
{
  sub_262247100(a3, a4, a5);
  v15.i32[0] = v12.i32[2];
  if (v12.f32[2] >= v13.f32[2])
  {
    v16 = v12.f32[2];
  }

  else
  {
    v16 = v13.f32[2];
  }

  v14.f64[0] = 0.001;
  if (v16 < 0.001)
  {
    goto LABEL_5;
  }

  if (v13.f32[2] < v12.f32[2])
  {
    v15.f32[0] = v13.f32[2];
  }

  if (v15.f32[0] >= 0.001)
  {
LABEL_14:
    v23 = vdivq_f32(v12, vdupq_laneq_s32(v12, 2)).u64[0];
    v25 = vdupq_laneq_s32(v13, 2);
    v24 = vdivq_f32(v13, v25);
    v25.i32[0] = a2[2].i32[0];
    if (fabsf(v25.f32[0]) > 0.000001)
    {
      v46 = v24;
      v49 = v23;
      v26 = __sincosf_stret((v25.f32[0] / 180.0) * 3.1416);
      v27.f32[0] = -v26.__sinval;
      v27.i32[1] = LODWORD(v26.__cosval);
      v15.i64[1] = v46.i64[1];
      v15.i32[0] = 0;
      v15.f32[1] = a2[1].i32[1];
      v23 = vadd_f32(vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v26.__sinval), LODWORD(v26.__cosval)), v49.f32[0]), v27, v49, 1), *v15.f32);
      *v24.f32 = vadd_f32(*v15.f32, vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v26.__sinval), LODWORD(v26.__cosval)), v46.f32[0]), v27, *v46.f32, 1));
    }

    if (!a6)
    {
      goto LABEL_29;
    }

    *v28.f32 = v23;
    *&v28.u32[2] = v23;
    *v25.f32 = vadd_s32(a2[1], -1);
    *v15.f32 = vcvt_f32_s32(*v25.f32);
    v29.i32[0] = vmovn_s32(vcgeq_f32(v15, v28)).u32[0];
    v29.i32[1] = vmovn_s32(vcgeq_f32(v28, v15)).i32[1];
    v30.i64[0] = v24.i64[0];
    v30.i64[1] = v24.i64[0];
    v31.i32[0] = vmovn_s32(vcgeq_f32(v15, v30)).u32[0];
    v31.i32[1] = vmovn_s32(vcgeq_f32(v30, v15)).i32[1];
    v32 = vandq_s8(vmovl_s16(v31), xmmword_2623A77C0);
    v32.i32[0] = vaddvq_s32(v32);
    if ((vminv_u16(v29) & 1) != 0 && (~v32.i32[0] & 0xF) == 0)
    {
      goto LABEL_29;
    }

    v33 = vandq_s8(vmovl_s16(v29), xmmword_2623A77C0);
    v33.i32[0] = vaddvq_s32(v33);
    if ((~v33.i32[0] & 0xF) == 0 || (~v32.i32[0] & 0xF) == 0)
    {
      v44 = v32;
      v47 = *v24.f32;
      v54 = v23;
      v55 = v24.i64[0];
      v50 = v23;
      sub_2621DDBC8(v53, &v54, v25.i32[0], v25.i32[1], v25, *v33.i64, xmmword_2623A77C0);
      v36 = *&v53[0];
      if (*(&v53[0] + 1) - *&v53[0] == 8)
      {
        v35.i32[0] = 15;
        v37.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v37.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v37.i64[0] = vceqq_s8(vandq_s8(v44, v37), vandq_s8(v35, v37)).u64[0];
        v38 = vdupq_lane_s8(*v37.i8, 0);
        v39 = vbsl_s8((v37.i8[0] & 0xF | (16 * (v38.i8[1] & 0xF)) | ((v38.i8[2] & 0xF) << 8) & 0xFFF | ((v38.i8[3] & 0xFu) << 12) | ((v38.i8[4] & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((v38.i8[5] & 0xF) << 20) | ((v38.i8[6] & 0xF) << 24) | ((v38.i8[7] & 0xF) << 28) | ((v38.i8[8] & 0xF) << 32) | ((v38.i8[9] & 0xF) << 36) | ((v38.i8[10] & 0xF) << 40) | ((v38.i8[11] & 0xF) << 44) | ((v38.i8[12] & 0xF) << 48) | ((v38.i8[13] & 0xF) << 52) | ((v38.i8[14] & 0xF) << 56) | (v38.u8[15] << 60)), v47, v50);
        v48 = **&v53[0];
        v51 = v39;
LABEL_28:
        operator delete(v36);
        v24.i64[0] = v48;
        v23 = v51;
LABEL_29:
        v40 = &a2[2] + 1;
        v41 = vld1_dup_f32(v40);
        *a1 = vdiv_f32(v23, v41);
        a1[1] = vdiv_f32(*v24.f32, v41);
        v17 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v54 = v23;
      v55 = v24.i64[0];
      sub_2621DDBC8(v53, &v54, v25.i32[0], v25.i32[1], v25, *v33.i64, xmmword_2623A77C0);
      v36 = *&v53[0];
      if (*(&v53[0] + 1) - *&v53[0] == 16)
      {
        v51 = **&v53[0];
        v48 = *(*&v53[0] + 8);
        goto LABEL_28;
      }
    }

    if (v36)
    {
      operator delete(v36);
    }

    goto LABEL_5;
  }

  *v12.i64 = v13.f32[2];
  v18 = vdupq_lane_s64(vcgtq_f64(v14, v12).i64[0], 0);
  v19 = a3[1];
  v43 = vbslq_s8(v18, *a3, v19);
  v45 = vbslq_s8(v18, v19, *a3);
  v42 = vsubq_f32(v43, v45);
  v12 = vmulq_f32(v42, v42);
  v20 = ((sqrtf(v12.f32[2] + vaddv_f32(*v12.f32)) + -0.001) / 0.0299999993);
  if ((v20 & 0x80000000) == 0)
  {
    v21 = 0;
    v22 = v20 + 1;
    do
    {
      v52 = v12.i64[1];
      v53[0] = vmlaq_n_f32(v45, v42, v21 / v22);
      v53[1] = v43;
      sub_262247100(v53, a4, a5);
      v15.i64[1] = v52;
      v12.i32[3] = HIDWORD(v52);
      if (v12.f32[2] > 0.001)
      {
        goto LABEL_14;
      }
    }

    while (v22 != ++v21);
  }

LABEL_5:
  v17 = 0;
  a1->i8[0] = 0;
LABEL_30:
  a1[2].i8[0] = v17;
}

void sub_262247100(_OWORD *a1, simd_float4x4 *a2, uint64_t a3)
{
  memset(v8, 0, sizeof(v8));
  sub_2621D9F60(v8, a1);
  sub_2621D9F60(v8, a1 + 1);
  v9 = __invert_f4(*a2);
  v6 = v9.columns[1];
  v7 = v9.columns[0];
  v9.columns[0] = *a3;
  v9.columns[1] = *(a3 + 16);
  v9.columns[0] = *(a3 + 32);
  v9.columns[0] = vaddq_f32(v9.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*v8[0])), v6, *v8[0], 1), v9.columns[2], *v8[0], 2));
  sub_2621CBF10(1uLL);
}

void sub_2622472CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622472FC(uint64_t a1)
{
  sub_262247334(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_262247334(uint64_t a1)
{
  *a1 = &unk_2874EE418;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 168) = v3;
    operator delete(v3);
  }

  v7 = (a1 + 136);
  sub_2621C5004(&v7);
  v7 = (a1 + 112);
  sub_2621C5004(&v7);

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_262247400(id *a1)
{
  sub_262247438(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_262247498(uint64_t a1)
{
  *a1 = &unk_2874EE418;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  *(a1 + 112) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  v3 = objc_opt_new();
  v4 = *v2;
  *v2 = v3;

  v5 = objc_opt_new();
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;

  return a1;
}

void sub_262247550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *(v2 + 184);
  if (v5)
  {
    *(v2 + 192) = v5;
    operator delete(v5);
  }

  v6 = *(v2 + 160);
  if (v6)
  {
    *(v2 + 168) = v6;
    operator delete(v6);
  }

  sub_2621C5004(va);
  sub_2621C5004(va);

  v7 = *(v2 + 48);
  if (v7)
  {
    *(v2 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(v2 + 16);
  if (v8)
  {
    *(v2 + 24) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

void sub_2622475D4(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2) + 1;
    if (v9 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_2621CBEB0();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 4);
    v6 = v12 + 20;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 4);
    *v4 = v5;
    v6 = v4 + 20;
  }

  *(a1 + 8) = v6;
}

void sub_262247708(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
  if (v10)
  {
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        sub_2621C5224(v17);
        sub_2622464F4(v17, v13);
        v18[60] = sub_262247B68(a3, a4, v18);
        sub_26224663C(a1, v17, v14);
        sub_2621C50C4(v17);
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v19, v23, 16);
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_26224785C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2621C5004(&a9);

  _Unwind_Resume(a1);
}

void sub_26224789C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 176;
      v6 = v3 - 176;
      v7 = v3 - 176;
      do
      {
        v8 = *v7;
        v7 -= 176;
        (*v8)(v6);
        v5 -= 176;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_26224793C(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = v2 - *result;
  v5 = 0x8E38E38E38E38E39 * (v4 >> 2);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return result;
    }

    v10 = v3 + 36 * a2;
  }

  else
  {
    v7 = result[2];
    if (0x8E38E38E38E38E39 * ((v7 - v2) >> 2) < v6)
    {
      if (a2 <= 0x71C71C71C71C71CLL)
      {
        v8 = 0x1C71C71C71C71C72 * ((v7 - v3) >> 2);
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (0x8E38E38E38E38E39 * ((v7 - v3) >> 2) >= 0x38E38E38E38E38ELL)
        {
          v9 = 0x71C71C71C71C71CLL;
        }

        else
        {
          v9 = v8;
        }

        sub_262247B0C(v9);
      }

      sub_2621CBEB0();
    }

    v10 = v2 + 36 * v6;
    v11 = 36 * a2 - 4 * (v4 >> 2);
    v12 = v2 + 33;
    v13 = vdup_n_s32(0x49742400u);
    do
    {
      *(v12 - 33) = xmmword_2623A7900;
      *(v12 - 17) = v13;
      *(v12 - 9) = -3175874560;
      *(v12 - 1) = 0;
      v12 += 36;
      v11 -= 36;
    }

    while (v11);
  }

  result[1] = v10;
  return result;
}

void sub_262247B0C(unint64_t a1)
{
  if (a1 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262247B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && a1 && a2)
  {
    operator new[]();
  }

  return 0;
}

uint64_t *sub_262247F68(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return result;
    }

    v11 = v4 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = result[2];
    if (v6 > (v7 - v3) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v4;
        v9 = (v7 - v4) >> 2;
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_2621CBEC8(v10);
      }

      sub_2621CBEB0();
    }

    v12 = 0;
    v13 = *a3;
    v14 = (v6 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = vdupq_n_s64(v14);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_2623A7620)));
      if (v16.i8[0])
      {
        *(v3 + 8 * v12) = v13;
      }

      if (v16.i8[4])
      {
        *(v3 + 8 * v12 + 8) = v13;
      }

      v12 += 2;
    }

    while (v14 - ((v6 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    v11 = v3 + 8 * v6;
  }

  result[1] = v11;
  return result;
}

uint64_t sub_262248128(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 > 2)
    {
      if (v12 != 3)
      {
        if (v12 == 4)
        {
          v158 = *(*a3 + 16);

          return sub_262249288(v11, v11 + 1, v11 + 2, a2 - 1, v158);
        }

        if (v12 == 5)
        {
          result = sub_262249288(v11, v11 + 1, v11 + 2, v11 + 3, *(*a3 + 16));
          v140 = v11[3];
          v141 = *(*a3 + 16);
          v142 = (v141 + 20 * *v10);
          v143 = *v142;
          v144 = (v141 + 20 * v140);
          if (v143 == *v144)
          {
            if (v142[1] <= v144[1])
            {
              return result;
            }
          }

          else if ((v143 & 1) == 0)
          {
            return result;
          }

          v11[3] = *v10;
          *v10 = v140;
          v223 = v11[2];
          v222 = v11[3];
          v224 = (v141 + 20 * v222);
          v225 = *v224;
          v226 = (v141 + 20 * v223);
          if (v225 == *v226)
          {
            if (v224[1] <= v226[1])
            {
              return result;
            }
          }

          else if ((v225 & 1) == 0)
          {
            return result;
          }

          v11[2] = v222;
          v11[3] = v223;
          v243 = v11[1];
          v244 = (v141 + 20 * v243);
          if (v225 == *v244)
          {
            if (v224[1] <= v244[1])
            {
              return result;
            }
          }

          else if ((v225 & 1) == 0)
          {
            return result;
          }

          v11[1] = v222;
          v11[2] = v243;
          v250 = *v11;
          v251 = (v141 + 20 * *v11);
          if (v225 == *v251)
          {
            if (v224[1] <= v251[1])
            {
              return result;
            }
          }

          else if ((v225 & 1) == 0)
          {
            return result;
          }

          *v11 = v222;
          v11[1] = v250;
          return result;
        }

        goto LABEL_10;
      }

      v145 = *v11;
      v150 = v11[1];
      v151 = *(*a3 + 16);
      v152 = (v151 + 20 * v150);
      v153 = *v152;
      v154 = (v151 + 20 * *v11);
      v155 = *v154;
      if (v153 == v155)
      {
        if (v152[1] <= v154[1])
        {
          goto LABEL_220;
        }
      }

      else if ((v153 & 1) == 0)
      {
LABEL_220:
        v156 = (v151 + 20 * *v10);
        v157 = *v156;
        if (v157 == v153)
        {
          if (v156[1] <= v152[1])
          {
            return result;
          }
        }

        else if ((v157 & 1) == 0)
        {
          return result;
        }

        v11[1] = *v10;
        *v10 = v150;
        v246 = *v11;
        v245 = v11[1];
        v247 = (v151 + 20 * v245);
        v248 = *v247;
        v249 = (v151 + 20 * *v11);
        if (v248 == *v249)
        {
          if (v247[1] <= v249[1])
          {
            return result;
          }
        }

        else if ((v248 & 1) == 0)
        {
          return result;
        }

        *v11 = v245;
        v11[1] = v246;
        return result;
      }

      v227 = (v151 + 20 * *v10);
      v228 = *v227;
      if (v228 == v153)
      {
        if (v227[1] <= v152[1])
        {
LABEL_310:
          *v11 = v150;
          v11[1] = v145;
          v229 = (v151 + 20 * *v10);
          v230 = *v229;
          if (v230 == v155)
          {
            if (v229[1] <= v154[1])
            {
              return result;
            }
          }

          else if ((v230 & 1) == 0)
          {
            return result;
          }

          v11[1] = *v10;
          goto LABEL_344;
        }
      }

      else if ((v228 & 1) == 0)
      {
        goto LABEL_310;
      }

      *v11 = *v10;
LABEL_344:
      *v10 = v145;
      return result;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v145 = *v11;
      v146 = *(*a3 + 16);
      v147 = (v146 + 20 * *v10);
      v148 = *v147;
      v149 = (v146 + 20 * *v11);
      if (v148 == *v149)
      {
        if (v147[1] <= v149[1])
        {
          return result;
        }
      }

      else if ((v148 & 1) == 0)
      {
        return result;
      }

      *v11 = *v10;
      goto LABEL_344;
    }

LABEL_10:
    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v11 == a2)
      {
        return result;
      }

      v171 = (v12 - 2) >> 1;
      v172 = *a3;
      v173 = v171;
      while (2)
      {
        v174 = v173;
        if (v171 < v173)
        {
          goto LABEL_274;
        }

        v175 = (2 * v173) | 1;
        v176 = &v11[v175];
        if (2 * v174 + 2 >= v12)
        {
          v177 = *(v172 + 16);
          goto LABEL_256;
        }

        v177 = *(v172 + 16);
        v178 = (v177 + 20 * *v176);
        v179 = *v178;
        v180 = (v177 + 20 * v176[1]);
        if (v179 == *v180)
        {
          if (v178[1] <= v180[1])
          {
LABEL_256:
            v181 = v11[v174];
            v182 = (v177 + 20 * *v176);
            v183 = *v182;
            v184 = (v177 + 20 * v181);
            v185 = *v184;
            if (v183 == v185)
            {
              if (v182[1] > v184[1])
              {
                goto LABEL_274;
              }
            }

            else if (v183)
            {
              goto LABEL_274;
            }

            v11[v174] = *v176;
            if (v171 < v175)
            {
LABEL_261:
              v186 = v176;
LABEL_273:
              *v186 = v181;
LABEL_274:
              v173 = v174 - 1;
              if (v174)
              {
                continue;
              }

              while (2)
              {
                v194 = 0;
                v195 = *v11;
                v196 = *a3;
                v197 = v11;
LABEL_276:
                v198 = v197;
                v199 = &v197[v194];
                v197 = v199 + 1;
                v200 = 2 * v194;
                result = (2 * v194) | 1;
                v194 = result;
                v201 = v200 + 2;
                if (v201 < v12)
                {
                  v203 = v199[2];
                  v202 = v199 + 2;
                  v204 = *(v196 + 16);
                  v205 = (v204 + 20 * *(v202 - 1));
                  result = *v205;
                  v206 = (v204 + 20 * v203);
                  if (result == *v206)
                  {
                    if (v205[1] <= v206[1])
                    {
                      goto LABEL_282;
                    }
                  }

                  else if ((result & 1) == 0)
                  {
                    goto LABEL_282;
                  }

                  v197 = v202;
                  v194 = v201;
                }

LABEL_282:
                *v198 = *v197;
                if (v194 > ((v12 - 2) >> 1))
                {
                  if (v197 == --a2)
                  {
                    *v197 = v195;
                    goto LABEL_298;
                  }

                  *v197 = *a2;
                  *a2 = v195;
                  v207 = (v197 - v11 + 4) >> 2;
                  v208 = v207 - 2;
                  if (v207 < 2)
                  {
                    goto LABEL_298;
                  }

                  v209 = v208 >> 1;
                  v210 = &v11[v208 >> 1];
                  result = *v210;
                  v211 = *v197;
                  v212 = *(v196 + 16);
                  v213 = (v212 + 20 * result);
                  v214 = *v213;
                  v215 = (v212 + 20 * *v197);
                  v216 = *v215;
                  if (v214 == v216)
                  {
                    if (v213[1] <= v215[1])
                    {
                      goto LABEL_298;
                    }
                  }

                  else if ((v214 & 1) == 0)
                  {
                    goto LABEL_298;
                  }

                  *v197 = result;
                  if (v208 >= 2)
                  {
                    do
                    {
                      v218 = v209 - 1;
                      v209 = (v209 - 1) >> 1;
                      v217 = &v11[v209];
                      result = *v217;
                      v219 = (v212 + 20 * result);
                      v220 = *v219;
                      if (v220 == v216)
                      {
                        if (v219[1] <= v215[1])
                        {
                          goto LABEL_291;
                        }
                      }

                      else if ((v220 & 1) == 0)
                      {
                        goto LABEL_291;
                      }

                      *v210 = result;
                      v210 = &v11[v209];
                    }

                    while (v218 > 1);
                  }

                  else
                  {
LABEL_291:
                    v217 = v210;
                  }

                  *v217 = v211;
LABEL_298:
                  if (v12-- <= 2)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_276;
              }
            }

            while (2)
            {
              v187 = 2 * v175;
              v175 = (2 * v175) | 1;
              v186 = &v11[v175];
              v188 = v187 + 2;
              if (v188 < v12)
              {
                v189 = (v177 + 20 * *v186);
                v190 = *v189;
                v191 = (v177 + 20 * v186[1]);
                if (v190 == *v191)
                {
                  if (v189[1] <= v191[1])
                  {
                    goto LABEL_268;
                  }
                }

                else if ((v190 & 1) == 0)
                {
                  goto LABEL_268;
                }

                ++v186;
                v175 = v188;
              }

LABEL_268:
              v192 = (v177 + 20 * *v186);
              v193 = *v192;
              if (v193 == v185)
              {
                if (v192[1] > v184[1])
                {
                  goto LABEL_261;
                }
              }

              else if (v193)
              {
                goto LABEL_261;
              }

              *v176 = *v186;
              v176 = v186;
              if (v171 < v175)
              {
                goto LABEL_273;
              }

              continue;
            }
          }
        }

        else if ((v179 & 1) == 0)
        {
          goto LABEL_256;
        }

        break;
      }

      ++v176;
      v175 = 2 * v174 + 2;
      goto LABEL_256;
    }

    v13 = v12 >> 1;
    v14 = &v11[v12 >> 1];
    v15 = v14;
    v16 = *(*a3 + 16);
    if (v12 >= 0x81)
    {
      v17 = *v14;
      v18 = *v11;
      v19 = (v16 + 20 * *v14);
      v20 = *v19;
      v21 = (v16 + 20 * *v11);
      v22 = *v21;
      if (v20 != v22)
      {
        if (v20)
        {
          goto LABEL_24;
        }

LABEL_15:
        v23 = (v16 + 20 * *v10);
        v24 = *v23;
        if (v24 == v20)
        {
          if (v23[1] <= v19[1])
          {
            goto LABEL_55;
          }
        }

        else if ((v24 & 1) == 0)
        {
          goto LABEL_55;
        }

        *v14 = *v10;
        *v10 = v17;
        v40 = *v11;
        v41 = (v16 + 20 * *v14);
        v42 = *v41;
        v43 = (v16 + 20 * *v11);
        if (v42 == *v43)
        {
          if (v41[1] <= v43[1])
          {
            goto LABEL_55;
          }
        }

        else if ((v42 & 1) == 0)
        {
          goto LABEL_55;
        }

        *v11 = *v14;
        *v14 = v40;
        goto LABEL_55;
      }

      if (v19[1] <= v21[1])
      {
        goto LABEL_15;
      }

LABEL_24:
      v33 = (v16 + 20 * *v10);
      v34 = *v33;
      if (v34 != v20)
      {
        if (v34)
        {
          goto LABEL_44;
        }

LABEL_26:
        *v11 = v17;
        *v14 = v18;
        v35 = (v16 + 20 * *v10);
        v36 = *v35;
        if (v36 == v22)
        {
          if (v35[1] <= v21[1])
          {
            goto LABEL_55;
          }
        }

        else if ((v36 & 1) == 0)
        {
          goto LABEL_55;
        }

        *v14 = *v10;
        goto LABEL_49;
      }

      if (v33[1] <= v19[1])
      {
        goto LABEL_26;
      }

LABEL_44:
      *v11 = *v10;
LABEL_49:
      *v10 = v18;
LABEL_55:
      v48 = v13 - 1;
      v49 = v11[v13 - 1];
      v50 = v11[1];
      v51 = (v16 + 20 * v49);
      v52 = *v51;
      v53 = (v16 + 20 * v50);
      v54 = *v53;
      if (v52 != v54)
      {
        if (v52)
        {
          goto LABEL_61;
        }

LABEL_57:
        v55 = *(a2 - 2);
        v56 = (v16 + 20 * v55);
        v57 = *v56;
        if (v57 == v52)
        {
          if (v56[1] <= v51[1])
          {
            goto LABEL_79;
          }
        }

        else if ((v57 & 1) == 0)
        {
          goto LABEL_79;
        }

        v11[v48] = v55;
        *(a2 - 2) = v49;
        v64 = v11[v48];
        v65 = v11[1];
        v66 = (v16 + 20 * v64);
        v67 = *v66;
        v68 = (v16 + 20 * v65);
        if (v67 == *v68)
        {
          if (v66[1] <= v68[1])
          {
            goto LABEL_79;
          }
        }

        else if ((v67 & 1) == 0)
        {
          goto LABEL_79;
        }

        v11[1] = v64;
        v11[v48] = v65;
        goto LABEL_79;
      }

      if (v51[1] <= v53[1])
      {
        goto LABEL_57;
      }

LABEL_61:
      v58 = *(a2 - 2);
      v59 = (v16 + 20 * v58);
      v60 = *v59;
      if (v60 != v52)
      {
        if (v60)
        {
          goto LABEL_71;
        }

LABEL_63:
        v11[1] = v49;
        v11[v48] = v50;
        v61 = *(a2 - 2);
        v62 = (v16 + 20 * v61);
        v63 = *v62;
        if (v63 == v54)
        {
          if (v62[1] <= v53[1])
          {
            goto LABEL_79;
          }
        }

        else if ((v63 & 1) == 0)
        {
          goto LABEL_79;
        }

        v11[v48] = v61;
        goto LABEL_76;
      }

      if (v59[1] <= v51[1])
      {
        goto LABEL_63;
      }

LABEL_71:
      v11[1] = v58;
LABEL_76:
      *(a2 - 2) = v50;
LABEL_79:
      v71 = v14[1];
      v69 = v14 + 1;
      v70 = v71;
      v72 = v11[2];
      v73 = (v16 + 20 * v71);
      v74 = *v73;
      v75 = (v16 + 20 * v72);
      v76 = *v75;
      if (v74 != v76)
      {
        if (v74)
        {
          goto LABEL_85;
        }

LABEL_81:
        v77 = *(a2 - 3);
        v78 = (v16 + 20 * v77);
        v79 = *v78;
        if (v79 == v74)
        {
          if (v78[1] <= v73[1])
          {
            goto LABEL_101;
          }
        }

        else if ((v79 & 1) == 0)
        {
          goto LABEL_101;
        }

        *v69 = v77;
        *(a2 - 3) = v70;
        v86 = v11[2];
        v87 = (v16 + 20 * *v69);
        v88 = *v87;
        v89 = (v16 + 20 * v86);
        if (v88 == *v89)
        {
          if (v87[1] <= v89[1])
          {
            goto LABEL_101;
          }
        }

        else if ((v88 & 1) == 0)
        {
          goto LABEL_101;
        }

        v11[2] = *v69;
        *v69 = v86;
        goto LABEL_101;
      }

      if (v73[1] <= v75[1])
      {
        goto LABEL_81;
      }

LABEL_85:
      v80 = *(a2 - 3);
      v81 = (v16 + 20 * v80);
      v82 = *v81;
      if (v82 != v74)
      {
        if (v82)
        {
          goto LABEL_95;
        }

LABEL_87:
        v11[2] = v70;
        *v69 = v72;
        v83 = *(a2 - 3);
        v84 = (v16 + 20 * v83);
        v85 = *v84;
        if (v85 == v76)
        {
          if (v84[1] <= v75[1])
          {
            goto LABEL_101;
          }
        }

        else if ((v85 & 1) == 0)
        {
          goto LABEL_101;
        }

        *v69 = v83;
        goto LABEL_98;
      }

      if (v81[1] <= v73[1])
      {
        goto LABEL_87;
      }

LABEL_95:
      v11[2] = v80;
LABEL_98:
      *(a2 - 3) = v72;
LABEL_101:
      v90 = v11[v48];
      v91 = *v15;
      v92 = (v16 + 20 * *v15);
      result = *v92;
      v93 = (v16 + 20 * v90);
      v94 = *v93;
      if (result == v94)
      {
        if (v92[1] <= v93[1])
        {
          goto LABEL_103;
        }

LABEL_107:
        v98 = *v69;
        v99 = (v16 + 20 * *v69);
        v100 = *v99;
        if (v100 == result)
        {
          if (v99[1] <= v92[1])
          {
            goto LABEL_109;
          }

LABEL_117:
          v11[v48] = v98;
LABEL_122:
          *v69 = v90;
LABEL_123:
          v101 = *v11;
          *v11 = v91;
          *v15 = v101;
          goto LABEL_124;
        }

        if (v100)
        {
          goto LABEL_117;
        }

LABEL_109:
        v11[v48] = v91;
        *v15 = v90;
        if (v100 == v94)
        {
          if (v99[1] <= v93[1])
          {
LABEL_111:
            v91 = v90;
            goto LABEL_123;
          }
        }

        else if ((v100 & 1) == 0)
        {
          goto LABEL_111;
        }

        *v15 = v98;
        v91 = v98;
        goto LABEL_122;
      }

      if (result)
      {
        goto LABEL_107;
      }

LABEL_103:
      v95 = *v69;
      v96 = (v16 + 20 * *v69);
      v97 = *v96;
      if (v97 == result)
      {
        if (v96[1] <= v92[1])
        {
          goto LABEL_123;
        }
      }

      else if ((v97 & 1) == 0)
      {
        goto LABEL_123;
      }

      *v15 = v95;
      *v69 = v91;
      if (v97 == v94)
      {
        if (v96[1] <= v93[1])
        {
LABEL_115:
          v91 = v95;
          goto LABEL_123;
        }
      }

      else if ((v97 & 1) == 0)
      {
        goto LABEL_115;
      }

      v11[v48] = v95;
      v69 = v15;
      v91 = v90;
      goto LABEL_122;
    }

    v25 = *v11;
    v26 = *v14;
    v27 = (v16 + 20 * *v11);
    v28 = *v27;
    v29 = (v16 + 20 * *v15);
    v30 = *v29;
    if (v28 == v30)
    {
      if (v27[1] > v29[1])
      {
        goto LABEL_30;
      }
    }

    else if (v28)
    {
LABEL_30:
      v37 = (v16 + 20 * *v10);
      result = *v37;
      if (result == v28)
      {
        if (v37[1] > v27[1])
        {
          goto LABEL_46;
        }
      }

      else if (result)
      {
LABEL_46:
        *v15 = *v10;
        goto LABEL_52;
      }

      *v15 = v25;
      *v11 = v26;
      v38 = (v16 + 20 * *v10);
      v39 = *v38;
      if (v39 != v30)
      {
        if ((v39 & 1) == 0)
        {
          goto LABEL_124;
        }

LABEL_51:
        *v11 = *v10;
LABEL_52:
        *v10 = v26;
        goto LABEL_124;
      }

      if (v38[1] > v29[1])
      {
        goto LABEL_51;
      }

      goto LABEL_124;
    }

    v31 = (v16 + 20 * *v10);
    v32 = *v31;
    if (v32 == v28)
    {
      if (v31[1] <= v27[1])
      {
        goto LABEL_124;
      }
    }

    else if ((v32 & 1) == 0)
    {
      goto LABEL_124;
    }

    *v11 = *v10;
    *v10 = v25;
    v44 = *v15;
    v45 = (v16 + 20 * *v11);
    v46 = *v45;
    v47 = (v16 + 20 * *v15);
    if (v46 != *v47)
    {
      if ((v46 & 1) == 0)
      {
        goto LABEL_124;
      }

LABEL_73:
      *v15 = *v11;
      *v11 = v44;
      goto LABEL_124;
    }

    if (v45[1] > v47[1])
    {
      goto LABEL_73;
    }

LABEL_124:
    --a4;
    v102 = *v11;
    v103 = *v11;
    if (a5)
    {
      v104 = *(v16 + 20 * v103);
LABEL_132:
      v112 = (v16 + 20 * v103 + 4);
      for (i = v11 + 1; ; ++i)
      {
        v114 = (v16 + 20 * *i);
        v115 = *v114;
        if (v115 != v104)
        {
          break;
        }

        if (v114[1] <= *v112)
        {
          goto LABEL_138;
        }

LABEL_137:
        ;
      }

      if (v115)
      {
        goto LABEL_137;
      }

LABEL_138:
      v116 = i - 1;
      j = a2 - 1;
      if (i - 1 != v11)
      {
        while (1)
        {
          v118 = (v16 + 20 * *j);
          v119 = *v118;
          if (v119 == v104)
          {
            if (v118[1] > *v112)
            {
              goto LABEL_153;
            }
          }

          else if (v119)
          {
            goto LABEL_153;
          }

          --j;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          v120 = (v16 + 20 * *j);
          v121 = *v120;
          if (v121 == v104)
          {
            if (i >= j || v120[1] > *v112)
            {
              break;
            }
          }

          else if (i >= j || (v121 & 1) != 0)
          {
            break;
          }
        }
      }

LABEL_153:
      if (i >= j)
      {
        goto LABEL_167;
      }

      v122 = *j;
      v123 = *i;
      v124 = i;
      v125 = j;
      while (2)
      {
        *v124++ = v122;
        *v125 = v123;
        while (2)
        {
          v123 = *v124;
          v126 = (v16 + 20 * *v124);
          v127 = *v126;
          if (v127 == v104)
          {
            if (v126[1] <= *v112)
            {
              break;
            }

            goto LABEL_160;
          }

          if (v127)
          {
LABEL_160:
            ++v124;
            continue;
          }

          break;
        }

        v116 = v124 - 1;
        do
        {
          while (1)
          {
            v122 = *--v125;
            v128 = (v16 + 20 * *v125);
            v129 = *v128;
            if (v129 != v104)
            {
              break;
            }

            if (v128[1] > *v112)
            {
              goto LABEL_166;
            }
          }
        }

        while ((v129 & 1) == 0);
LABEL_166:
        if (v124 < v125)
        {
          continue;
        }

        break;
      }

LABEL_167:
      if (v116 != v11)
      {
        *v11 = *v116;
      }

      *v116 = v102;
      if (i < j)
      {
LABEL_172:
        result = sub_262248128(v9, v116, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v116 + 1;
      }

      else
      {
        v130 = sub_2622494A0(v11, v116, a3);
        v11 = v116 + 1;
        result = sub_2622494A0(v116 + 1, a2, a3);
        if (result)
        {
          a2 = v116;
          if (v130)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v130)
        {
          goto LABEL_172;
        }
      }
    }

    else
    {
      v105 = (v16 + 20 * *(v11 - 1));
      v106 = *v105;
      v107 = (v16 + 20 * v103);
      v104 = *v107;
      if (v106 == v104)
      {
        v104 = *v105;
        if (v105[1] > v107[1])
        {
          goto LABEL_132;
        }
      }

      else if (v106)
      {
        goto LABEL_132;
      }

      v108 = *v10;
      v109 = (v16 + 20 * *v10);
      v110 = *v109;
      if (v104 == v110)
      {
        if (v107[1] > v109[1])
        {
          v111 = v104;
LABEL_175:
          for (++v11; ; ++v11)
          {
            v131 = (v16 + 20 * *v11);
            if (v104 == *v131)
            {
              if (v107[1] > v131[1])
              {
                goto LABEL_188;
              }
            }

            else if (v111)
            {
              goto LABEL_188;
            }
          }
        }
      }

      else if (v104)
      {
        v111 = 1;
        goto LABEL_175;
      }

      for (++v11; v11 < a2; ++v11)
      {
        v132 = (v16 + 20 * *v11);
        if (v104 == *v132)
        {
          if (v107[1] > v132[1])
          {
            break;
          }
        }

        else if (v104)
        {
          break;
        }
      }

LABEL_188:
      k = a2;
      if (v11 < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          if (v104 == v110)
          {
            if (v107[1] <= *(v16 + 20 * v108 + 4))
            {
              break;
            }
          }

          else if ((v104 & 1) == 0)
          {
            break;
          }

          v134 = *(k - 1);
          v108 = v134;
          LOBYTE(v110) = *(v16 + 20 * v134);
        }
      }

      if (v11 >= k)
      {
        goto LABEL_207;
      }

      v135 = *v11;
      v136 = *k;
      do
      {
        *v11++ = v136;
        *k = v135;
        while (1)
        {
          v135 = *v11;
          v137 = (v16 + 20 * *v11);
          if (v104 == *v137)
          {
            break;
          }

          if (v104)
          {
            goto LABEL_204;
          }

LABEL_202:
          ++v11;
        }

        if (v107[1] <= v137[1])
        {
          goto LABEL_202;
        }

        do
        {
LABEL_204:
          while (1)
          {
            v136 = *--k;
            v138 = (v16 + 20 * *k);
            if (v104 == *v138)
            {
              break;
            }

            if ((v104 & 1) == 0)
            {
              goto LABEL_206;
            }
          }
        }

        while (v107[1] > v138[1]);
LABEL_206:
        ;
      }

      while (v11 < k);
LABEL_207:
      v139 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v139;
      }

      a5 = 0;
      *v139 = v102;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (v11 == a2)
    {
      return result;
    }

    v231 = v11 + 1;
    if (v11 + 1 == a2)
    {
      return result;
    }

    v232 = *(*a3 + 16);
    while (1)
    {
      v233 = v9;
      v9 = v231;
      v235 = *v233;
      v234 = v233[1];
      v236 = (v232 + 20 * v234);
      v237 = *v236;
      v238 = (v232 + 20 * *v233);
      if (v237 == *v238)
      {
        if (*(v236 + 1) > v238[1])
        {
          v239 = *v236;
          goto LABEL_321;
        }
      }

      else if (v237)
      {
        v239 = 1;
        do
        {
LABEL_321:
          while (1)
          {
            v240 = v233;
            v241 = *--v233;
            v233[2] = v235;
            v235 = v241;
            v242 = (v232 + 20 * v241);
            result = *v242;
            if (v237 != result)
            {
              break;
            }

            if (*(v236 + 1) <= v242[1])
            {
              goto LABEL_325;
            }
          }
        }

        while ((v239 & 1) != 0);
LABEL_325:
        *v240 = v234;
      }

      v231 = v9 + 1;
      if (v9 + 1 == a2)
      {
        return result;
      }
    }
  }

  if (v11 == a2)
  {
    return result;
  }

  v159 = v11 + 1;
  if (v11 + 1 == a2)
  {
    return result;
  }

  v160 = 0;
  v161 = *(*a3 + 16);
  v162 = v11;
  while (2)
  {
    v163 = v162;
    v162 = v159;
    v164 = v163[1];
    v165 = (v161 + 20 * v164);
    v166 = *v165;
    v167 = (v161 + 20 * *v163);
    result = *v167;
    if (v166 == result)
    {
      if (v165[1] <= v167[1])
      {
        goto LABEL_244;
      }
    }

    else if ((v166 & 1) == 0)
    {
      goto LABEL_244;
    }

    v163[1] = *v163;
    v168 = v11;
    if (v163 == v11)
    {
      goto LABEL_243;
    }

    v169 = v160;
    while (2)
    {
      result = *(v11 + v169 - 4);
      v170 = (v161 + 20 * result);
      if (v166 == *v170)
      {
        if (v165[1] <= v170[1])
        {
          v168 = v163;
          goto LABEL_243;
        }

LABEL_240:
        --v163;
        *(v11 + v169) = result;
        v169 -= 4;
        if (!v169)
        {
          v168 = v11;
          goto LABEL_243;
        }

        continue;
      }

      break;
    }

    if (v166)
    {
      goto LABEL_240;
    }

    v168 = (v11 + v169);
LABEL_243:
    *v168 = v164;
LABEL_244:
    v159 = v162 + 1;
    v160 += 4;
    if (v162 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

int *sub_262249288(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = (a5 + 20 * *a2);
  v8 = *v7;
  v9 = (a5 + 20 * *result);
  v10 = *v9;
  if (v8 == v10)
  {
    if (v7[1] <= v9[1])
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = *result;
    v14 = (a5 + 20 * *a3);
    v15 = *v14;
    if (v15 == v8)
    {
      if (v14[1] <= v7[1])
      {
LABEL_9:
        *result = v5;
        *a2 = v6;
        v5 = *a3;
        v16 = (a5 + 20 * *a3);
        v17 = *v16;
        if (v17 == v10)
        {
          if (v16[1] <= v9[1])
          {
LABEL_11:
            v11 = *a3;
            goto LABEL_22;
          }
        }

        else if ((v17 & 1) == 0)
        {
          goto LABEL_11;
        }

        *a2 = v5;
LABEL_20:
        *a3 = v6;
        goto LABEL_21;
      }
    }

    else if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }

    *result = *a3;
    goto LABEL_20;
  }

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = *a3;
  v11 = *a3;
  v12 = (a5 + 20 * *a3);
  v13 = *v12;
  if (v13 != v8)
  {
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_21:
    v5 = v6;
    goto LABEL_22;
  }

  if (v12[1] <= v7[1])
  {
    goto LABEL_21;
  }

LABEL_13:
  v11 = *a2;
  *a2 = v6;
  *a3 = v5;
  v18 = *result;
  v19 = (a5 + 20 * *a2);
  v20 = *v19;
  v21 = (a5 + 20 * *result);
  if (v20 == *v21)
  {
    if (v19[1] <= v21[1])
    {
      goto LABEL_22;
    }
  }

  else if ((v20 & 1) == 0)
  {
    goto LABEL_22;
  }

  *result = *a2;
  *a2 = v18;
  v5 = *a3;
  v11 = *a3;
LABEL_22:
  v22 = (a5 + 20 * *a4);
  v23 = *v22;
  v24 = (a5 + 20 * v11);
  if (v23 == *v24)
  {
    if (v22[1] <= v24[1])
    {
      return result;
    }
  }

  else if ((v23 & 1) == 0)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v5;
  v25 = *a2;
  v26 = (a5 + 20 * *a3);
  v27 = *v26;
  v28 = (a5 + 20 * *a2);
  if (v27 == *v28)
  {
    if (v26[1] <= v28[1])
    {
      return result;
    }
  }

  else if ((v27 & 1) == 0)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v25;
  v29 = *result;
  v30 = (a5 + 20 * *a2);
  v31 = *v30;
  v32 = (a5 + 20 * *result);
  if (v31 == *v32)
  {
    if (v30[1] > v32[1])
    {
      goto LABEL_36;
    }
  }

  else if (v31)
  {
LABEL_36:
    *result = *a2;
    *a2 = v29;
  }

  return result;
}

BOOL sub_2622494A0(int *a1, int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 4)
      {
        sub_262249288(a1, a1 + 1, a1 + 2, a2 - 1, *(*a3 + 16));
        return 1;
      }

      if (v6 != 5)
      {
        goto LABEL_18;
      }

      sub_262249288(a1, a1 + 1, a1 + 2, a1 + 3, *(*a3 + 16));
      v13 = *(a2 - 1);
      v14 = a1[3];
      v15 = *(*a3 + 16);
      v16 = (v15 + 20 * v13);
      v17 = *v16;
      v18 = (v15 + 20 * v14);
      if (v17 == *v18)
      {
        if (v16[1] <= v18[1])
        {
          return 1;
        }
      }

      else if ((v17 & 1) == 0)
      {
        return 1;
      }

      a1[3] = v13;
      *(a2 - 1) = v14;
      v50 = a1[2];
      v49 = a1[3];
      v51 = (v15 + 20 * v49);
      v52 = *v51;
      v53 = (v15 + 20 * v50);
      if (v52 == *v53)
      {
        if (v51[1] <= v53[1])
        {
          return 1;
        }
      }

      else if ((v52 & 1) == 0)
      {
        return 1;
      }

      a1[2] = v49;
      a1[3] = v50;
      v59 = a1[1];
      v60 = (v15 + 20 * v59);
      if (v52 == *v60)
      {
        if (v51[1] <= v60[1])
        {
          return 1;
        }
      }

      else if ((v52 & 1) == 0)
      {
        return 1;
      }

      a1[1] = v49;
      a1[2] = v59;
      v73 = *a1;
      v74 = (v15 + 20 * *a1);
      if (v52 == *v74)
      {
        if (v51[1] > v74[1])
        {
          goto LABEL_93;
        }
      }

      else if (v52)
      {
LABEL_93:
        *a1 = v49;
        a1[1] = v73;
      }

      return 1;
    }

    v8 = *a1;
    v19 = a1[1];
    v20 = *(*a3 + 16);
    v21 = (v20 + 20 * v19);
    v22 = *v21;
    v23 = (v20 + 20 * *a1);
    v24 = *v23;
    if (v22 == v24)
    {
      if (v21[1] <= v23[1])
      {
        goto LABEL_15;
      }
    }

    else if ((v22 & 1) == 0)
    {
LABEL_15:
      v25 = *(a2 - 1);
      v26 = (v20 + 20 * v25);
      v27 = *v26;
      if (v27 == v22)
      {
        if (v26[1] <= v21[1])
        {
          return 1;
        }
      }

      else if ((v27 & 1) == 0)
      {
        return 1;
      }

      a1[1] = v25;
      *(a2 - 1) = v19;
      v55 = *a1;
      v54 = a1[1];
      v56 = (v20 + 20 * v54);
      v57 = *v56;
      v58 = (v20 + 20 * *a1);
      if (v57 == *v58)
      {
        if (v56[1] <= v58[1])
        {
          return 1;
        }
      }

      else if ((v57 & 1) == 0)
      {
        return 1;
      }

      *a1 = v54;
      a1[1] = v55;
      return 1;
    }

    v40 = *(a2 - 1);
    v41 = (v20 + 20 * v40);
    v42 = *v41;
    if (v42 == v22)
    {
      if (v41[1] <= v21[1])
      {
LABEL_27:
        *a1 = v19;
        a1[1] = v8;
        v43 = *(a2 - 1);
        v44 = (v20 + 20 * v43);
        v45 = *v44;
        if (v45 == v24)
        {
          if (v44[1] <= v23[1])
          {
            return 1;
          }
        }

        else if ((v45 & 1) == 0)
        {
          return 1;
        }

        a1[1] = v43;
        goto LABEL_60;
      }
    }

    else if ((v42 & 1) == 0)
    {
      goto LABEL_27;
    }

    *a1 = v40;
    goto LABEL_60;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    v9 = *(*a3 + 16);
    v10 = (v9 + 20 * v7);
    v11 = *v10;
    v12 = (v9 + 20 * *a1);
    if (v11 == *v12)
    {
      if (v10[1] <= v12[1])
      {
        return 1;
      }
    }

    else if ((v11 & 1) == 0)
    {
      return 1;
    }

    *a1 = v7;
LABEL_60:
    *(a2 - 1) = v8;
    return 1;
  }

LABEL_18:
  v28 = a1 + 2;
  v29 = *a1;
  v30 = a1 + 1;
  v31 = a1[1];
  v32 = *(*a3 + 16);
  v33 = (v32 + 20 * v31);
  v34 = *v33;
  v35 = (v32 + 20 * *a1);
  v36 = *v35;
  if (v34 == v36)
  {
    if (v33[1] <= v35[1])
    {
      goto LABEL_20;
    }

LABEL_31:
    v46 = *v28;
    v47 = (v32 + 20 * *v28);
    v48 = *v47;
    if (v48 == v34)
    {
      if (v47[1] <= v33[1])
      {
LABEL_33:
        *a1 = v31;
        a1[1] = v29;
        if (v48 == v36)
        {
          if (v47[1] <= v35[1])
          {
            goto LABEL_69;
          }
        }

        else if ((v48 & 1) == 0)
        {
          goto LABEL_69;
        }

        *v30 = v46;
        goto LABEL_65;
      }
    }

    else if ((v48 & 1) == 0)
    {
      goto LABEL_33;
    }

    *a1 = v46;
LABEL_65:
    v30 = a1 + 2;
LABEL_68:
    *v30 = v29;
    goto LABEL_69;
  }

  if (v34)
  {
    goto LABEL_31;
  }

LABEL_20:
  v37 = *v28;
  v38 = (v32 + 20 * *v28);
  v39 = *v38;
  if (v39 == v34)
  {
    if (v38[1] <= v33[1])
    {
      goto LABEL_69;
    }
  }

  else if ((v39 & 1) == 0)
  {
    goto LABEL_69;
  }

  *v30 = v37;
  *v28 = v31;
  if (v39 != v36)
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  if (v38[1] > v35[1])
  {
LABEL_67:
    *a1 = v37;
    goto LABEL_68;
  }

LABEL_69:
  v61 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v62 = 0;
  v63 = 0;
  while (2)
  {
    v64 = *v61;
    v65 = (v32 + 20 * *v61);
    v66 = *v65;
    v67 = (v32 + 20 * *v28);
    if (v66 == *v67)
    {
      if (v65[1] <= v67[1])
      {
        goto LABEL_85;
      }

      v68 = *v65;
    }

    else
    {
      if ((v66 & 1) == 0)
      {
        goto LABEL_85;
      }

      v68 = 1;
    }

    *v61 = *v28;
    v69 = v62;
    while (1)
    {
      v70 = *(a1 + v69 + 4);
      v71 = (v32 + 20 * v70);
      if (v66 == *v71)
      {
        if (v65[1] <= v71[1])
        {
          goto LABEL_84;
        }

        goto LABEL_81;
      }

      if ((v68 & 1) == 0)
      {
        break;
      }

LABEL_81:
      --v28;
      *(a1 + v69 + 8) = v70;
      v69 -= 4;
      if (v69 == -8)
      {
        v28 = a1;
        goto LABEL_84;
      }
    }

    v28 = (a1 + v69 + 8);
LABEL_84:
    *v28 = v64;
    if (++v63 != 8)
    {
LABEL_85:
      v28 = v61;
      v62 += 4;
      if (++v61 == a2)
      {
        return 1;
      }

      continue;
    }

    return v61 + 1 == a2;
  }
}

void sub_2622499A4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v132 = a2;
  v10 = a3;
  objc_storeStrong((a1 + 72), a2);
  objc_storeStrong((a1 + 80), a3);
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  v133 = v10;
  if (*(a1 + 208) == 1)
  {
    v13 = *(a1 + 80);
    __p[0] = 0;
    *&v142 = 0;
    v16 = objc_msgSend_semanticLabels(v13, v14, v15);
    v19 = objc_msgSend_semanticVotes(v13, v17, v18);
    v22 = objc_msgSend_count(v13, v20, v21);
    __p[1] = 0;
    *&v147 = 0;
    sub_262247F68(__p, 0x21uLL, &v147);
    v25 = __p[0];
    do
    {
      v26 = *v19;
      if (v19->u16[0])
      {
        v26.i32[0] = *v16;
        v26.i16[0] = vmovl_u8(v26).u16[0];
        if (v26.u16[0] <= 0x20u)
        {
          ++v25[v26.u8[0]];
        }
      }

      ++v16;
      ++v19;
      --v22;
    }

    while (v22);
    v27 = v25[6];
    v28 = v25[31];
    v29 = objc_msgSend_count(v13, v23, v24);
    v30 = v25[7];
    v31 = v25[8];
    v34 = objc_msgSend_count(v13, v32, v33);
    operator delete(v25);
    v130 = fmaxf((v28 + v27) / v29, (v31 + v30) / v34) > 0.1;
  }

  else
  {
    v130 = 0;
  }

  objc_msgSend_cameraPose(*(a1 + 80), v11, v12);
  v134 = v35;
  v135 = v36;
  v137 = v38;
  v139 = v37;
  sub_262247708(__p, *(a1 + 8), *(a1 + 96), *(a1 + 104));
  sub_26224789C((a1 + 112));
  *(a1 + 112) = *__p;
  *(a1 + 128) = v142;
  __p[1] = 0;
  *&v142 = 0;
  __p[0] = 0;
  *&v147 = __p;
  sub_2621C5004(&v147);
  sub_262247708(__p, *(a1 + 72), *(a1 + 96), *(a1 + 104));
  sub_26224789C((a1 + 136));
  *(a1 + 136) = *__p;
  *(a1 + 152) = v142;
  __p[1] = 0;
  *&v142 = 0;
  __p[0] = 0;
  *&v147 = __p;
  sub_2621C5004(&v147);
  v39 = (a1 + 160);
  *(a1 + 168) = *(a1 + 160);
  sub_26224793C((a1 + 160), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 120) - *(a1 + 112)) >> 4));
  v40 = (a1 + 184);
  *(a1 + 192) = *(a1 + 184);
  sub_26224793C((a1 + 184), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 144) - *(a1 + 136)) >> 4));
  location = (a1 + 8);
  v42 = *(a1 + 112);
  v41 = *(a1 + 120);
  if (v41 != v42)
  {
    v43 = 0;
    v44 = *(a1 + 136);
    v45 = *(a1 + 144);
    do
    {
      if (v45 == v44)
      {
        v45 = v44;
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 16;
        do
        {
          sub_26223FEB8(__p, (*(a1 + 112) + 176 * v43 + 16), (v44 + v48));
          if (((*(&__p[1] + 1) + *(&v144 + 3)) * 0.5) < 0.2 && *(&v142 + 2) < 10.0)
          {
            v50 = *v39 + 36 * v43;
            if (*__p > *v50)
            {
              *v50 = *__p;
              *(v50 + 16) = v142;
              *(v50 + 32) = v143;
              *(*v39 + 36 * v43 + 28) = v47;
            }

            v51 = *v40 + v46;
            if (*&v144 > *v51)
            {
              *v51 = v144;
              *(v51 + 16) = v145;
              *(v51 + 32) = v146;
              *(*v40 + v46 + 28) = v43;
            }
          }

          ++v47;
          v44 = *(a1 + 136);
          v45 = *(a1 + 144);
          v46 += 36;
          v48 += 176;
        }

        while (v47 < 0x2E8BA2E8BA2E8BA3 * ((v45 - v44) >> 4));
        v42 = *(a1 + 112);
        v41 = *(a1 + 120);
      }

      ++v43;
    }

    while (v43 < 0x2E8BA2E8BA2E8BA3 * ((v41 - v42) >> 4));
  }

  v53 = objc_opt_new();
  __p[0] = 0;
  __p[1] = 0;
  *&v142 = 0;
  if (*(a1 + 144) != *(a1 + 136))
  {
    v54 = 0;
    v55 = 0;
    v56 = vmlaq_f32(vmulq_f32(v134, 0), 0, v135);
    __asm { FMOV            V2.4S, #-1.0 }

    v61 = vsubq_f32(vaddq_f32(v137, vmlaq_f32(v56, _Q2, v139)), vaddq_f32(v137, vmlaq_f32(v56, 0, v139)));
    v62 = vmulq_f32(v61, v61);
    _Q2.f32[0] = v62.f32[2] + vaddv_f32(*v62.f32);
    *v62.f32 = vrsqrte_f32(_Q2.u32[0]);
    *v62.f32 = vmul_f32(*v62.f32, vrsqrts_f32(_Q2.u32[0], vmul_f32(*v62.f32, *v62.f32)));
    v136 = vmulq_n_f32(v61, vmul_f32(*v62.f32, vrsqrts_f32(_Q2.u32[0], vmul_f32(*v62.f32, *v62.f32))).f32[0]);
    v63 = 76;
    do
    {
      v64 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v52, v55);
      objc_msgSend_dimensions(v64, v65, v66);
      v140 = v67;

      v69 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v68, v55);
      objc_msgSend_quad(v69, v70, v71);
      v138 = v72;
      objc_msgSend_quad(v69, v73, v74);
      v76 = vsubq_f32(v138, v75);
      v77 = vmulq_f32(v76, v76);
      v78 = COERCE_UNSIGNED_INT(vaddv_f32(*v77.f32));
      *v77.f32 = vrsqrte_f32(v78);
      *v77.f32 = vmul_f32(*v77.f32, vrsqrts_f32(v78.u32[0], vmul_f32(*v77.f32, *v77.f32)));
      *v77.f32 = vdup_lane_s32(vmul_f32(*v77.f32, vrsqrts_f32(v78.u32[0], vmul_f32(*v77.f32, *v77.f32))), 0);
      v79 = vmulq_f32(v76, v77);
      v79.i32[2] = 0;
      v80.i64[1] = 1065353216;
      v81 = vmlaq_f32(vmulq_f32(v79, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL));
      v82 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
      v83 = vmulq_f32(v81, v81);
      v78.f32[0] = v83.f32[1] + (v83.f32[2] + v83.f32[0]);
      *v83.f32 = vrsqrte_f32(v78.u32[0]);
      *v83.f32 = vmul_f32(*v83.f32, vrsqrts_f32(v78.u32[0], vmul_f32(*v83.f32, *v83.f32)));
      v84 = vmulq_n_f32(v82, vmul_f32(*v83.f32, vrsqrts_f32(v78.u32[0], vmul_f32(*v83.f32, *v83.f32))).f32[0]);
      v85 = vmulq_f32(v84, v136);
      v85.f32[0] = v85.f32[2] + vaddv_f32(*v85.f32);
      v80.i64[0] = 0;
      v86 = vmulq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v80, v85), 0), vnegq_f32(v84), v84), v136);
      v87 = acosf(v86.f32[2] + vaddv_f32(*v86.f32));

      v88 = *v40;
      v89 = *(*(a1 + 136) + v63);
      v91 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v90, v55);
      objc_msgSend_addObject_(v53, v92, v91);

      v94 = v140;
      *&v93 = (v87 * 180.0) / 3.14159265;
      *(&v147 + 1) = __PAIR64__(LODWORD(v140), v93);
      LOBYTE(v147) = v89;
      v95 = *(v88 + v54 + 28);
      if (v95 == -1)
      {
        v99 = (v140 / 0.75) & ~((v140 / 0.75) >> 31);
      }

      else
      {
        v96 = *(a1 + 16) + 20 * v95;
        v97 = v140 - ((v140 * *(v88 + v54)) / *(v88 + v54 + 4));
        v98 = *(v96 + 4);
        if (v98 < 0.0)
        {
          v98 = 0.0;
        }

        v94 = v97 + v98;
        v99 = ((v97 / 0.75) & ~((v97 / 0.75) >> 31)) + *(v96 + 16);
      }

      *(&v147 + 1) = v94;
      LODWORD(v148) = v99;
      sub_2622475D4(__p, &v147);
      ++v55;
      v63 += 176;
      v54 += 36;
    }

    while (v55 < 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 144) - *(a1 + 136)) >> 4));
  }

  objc_storeStrong(location, v53);
  v101 = (a1 + 16);
  v100 = *(a1 + 16);
  if (v100)
  {
    *(a1 + 24) = v100;
    operator delete(v100);
    *v101 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 16) = *__p;
  *(a1 + 32) = v142;

  sub_2622101A8(__p, 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 24) - *(a1 + 16)) >> 2));
  v102 = __p[0];
  v103 = __p[1];
  if (__p[0] != __p[1])
  {
    v104 = 0;
    v105 = (__p[1] - __p[0] - 4) >> 2;
    v106 = vdupq_n_s64(v105);
    v107 = (v105 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v108 = __p[0] + 8;
    do
    {
      v109 = vdupq_n_s64(v104);
      v110 = vmovn_s64(vcgeq_u64(v106, vorrq_s8(v109, xmmword_2623A7620)));
      if (vuzp1_s16(v110, *v106.i8).u8[0])
      {
        *(v108 - 2) = v104;
      }

      if (vuzp1_s16(v110, *&v106).i8[2])
      {
        *(v108 - 1) = v104 + 1;
      }

      if (vuzp1_s16(*&v106, vmovn_s64(vcgeq_u64(v106, vorrq_s8(v109, xmmword_2623A7630)))).i32[1])
      {
        *v108 = v104 + 2;
        v108[1] = v104 + 3;
      }

      v104 += 4;
      v108 += 4;
    }

    while (v107 != v104);
  }

  v111 = 126 - 2 * __clz(v103 - v102);
  *&v147 = a1;
  if (v103 == v102)
  {
    v112 = 0;
  }

  else
  {
    v112 = v111;
  }

  sub_262248128(v102, v103, &v147, v112, 1);
  v114 = objc_opt_new();
  v147 = 0uLL;
  v148 = 0;
  v115 = __p[0];
  if (__p[1] != __p[0])
  {
    v116 = 0;
    do
    {
      v117 = objc_msgSend_objectAtIndexedSubscript_(*location, v113, v115[v116]);
      objc_msgSend_addObject_(v114, v118, v117);

      sub_2622475D4(&v147, (*v101 + 20 * *(__p[0] + v116++)));
      v115 = __p[0];
    }

    while (v116 < (__p[1] - __p[0]) >> 2);
  }

  objc_storeStrong(location, v114);
  v119 = *v101;
  if (*v101)
  {
    *(a1 + 24) = v119;
    operator delete(v119);
    *v101 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 16) = v147;
  *(a1 + 32) = v148;

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v120 = objc_opt_new();
  v121 = *(a1 + 40);
  *(a1 + 40) = v120;

  *(a1 + 56) = *(a1 + 48);
  if (objc_msgSend_count(*(a1 + 8), v122, v123))
  {
    v126 = objc_msgSend_objectAtIndexedSubscript_(*location, v124, 0);
    v127 = *v101;
    v128 = *(*v101 + 1) >= 0.75 || v130;
    if (v128 == 1)
    {
      objc_msgSend_addObject_(*(a1 + 40), v125, v126);
      sub_2622475D4(a1 + 48, v127);
      v129 = *(v127 + 4);
      if (v129)
      {
        *(v127 + 4) = v129 - 1;
      }

      else
      {
        *(v127 + 1) = 0;
      }
    }

    else if (*v127 == 1)
    {
      objc_msgSend_addObject_(*(a1 + 40), v125, v126);
      sub_2622475D4(a1 + 48, v127);
    }
  }
}

void sub_26224A36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  operator delete(v25);

  _Unwind_Resume(a1);
}

uint64_t sub_26224A450(uint64_t a1)
{
  *a1 = &unk_2874EE438;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  v4 = objc_opt_new();
  v5 = *(a1 + 48);
  *(a1 + 48) = v4;

  v6 = objc_opt_new();
  v7 = *(a1 + 56);
  *(a1 + 56) = v6;

  return a1;
}

void sub_26224A528(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  v4 = objc_opt_new();
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
}

void sub_26224A580(id *a1, void *a2, void *a3, void *a4)
{
  v290 = a2;
  v289 = a3;
  v288 = a4;
  objc_storeStrong(a1 + 1, a2);
  objc_storeStrong(a1 + 2, a3);
  objc_storeStrong(a1 + 3, a4);
  v8 = a1 + 4;
  objc_storeStrong(a1 + 5, a1[4]);
  v9 = 0x277CBE000uLL;
  v10 = objc_opt_new();
  v11 = a1[4];
  a1[4] = v10;

  v292 = a1 + 4;
  if (objc_msgSend_count(a1[5], v12, v13))
  {
    objc_msgSend_removeAllObjects(a1[6], v14, v15);
    objc_msgSend_removeAllObjects(a1[7], v16, v17);
    sub_26224B9B0(v334, a1[5]);
    sub_26224B9B0(&v332, a1[2]);
    sub_26224BB18(&v330, 0x2E8BA2E8BA2E8BA3 * ((*(&v334[0] + 1) - *&v334[0]) >> 4));
    sub_26224BB18(&__p, 0x2E8BA2E8BA2E8BA3 * ((v333 - v332) >> 4));
    v19 = *(&v334[0] + 1);
    v20 = *&v334[0];
    if (*(&v334[0] + 1) != *&v334[0])
    {
      v21 = 0;
      v22 = v332;
      v23 = v333;
      do
      {
        if (v23 == v22)
        {
          v23 = v22;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 16;
          do
          {
            sub_26223FEB8(&src, (*&v334[0] + 176 * v21 + 16), (v22 + v26));
            if (((src.f32[3] + *&v324[16]) * 0.5) < 0.2 && v323.f32[2] < 10.0)
            {
              v28 = (v330 + 36 * v21);
              if (src.f32[0] > v28->f32[0])
              {
                v28[1] = v323;
                *v28 = src;
                v28[2].i16[0] = *v324;
                v28[1].i32[3] = v25;
              }

              v29 = __p + v24;
              if (*&v324[4] > *(__p + v24))
              {
                *(v29 + 1) = *&v324[20];
                *(v29 + 16) = v325;
                *v29 = *&v324[4];
                *(v29 + 7) = v21;
              }
            }

            ++v25;
            v22 = v332;
            v23 = v333;
            v24 += 36;
            v26 += 176;
          }

          while (v25 < 0x2E8BA2E8BA2E8BA3 * ((v333 - v332) >> 4));
          v19 = *(&v334[0] + 1);
          v20 = *&v334[0];
        }

        ++v21;
      }

      while (v21 < 0x2E8BA2E8BA2E8BA3 * ((v19 - v20) >> 4));
    }

    v30 = v330;
    if (v331 != v330)
    {
      v31 = 0;
      v32 = 28;
      do
      {
        v33 = objc_msgSend_objectAtIndexedSubscript_(a1[5], v18, v31);
        if (v33)
        {
          v33[105] = 2;
        }

        if (*(v330 + v32) == -1)
        {
          v35 = a1[7];
        }

        else
        {
          v35 = a1[6];
        }

        v36 = objc_msgSend_objectAtIndexedSubscript_(a1[5], v34, v31);
        objc_msgSend_addObject_(v35, v37, v36);

        ++v31;
        v30 = v330;
        v32 += 36;
      }

      while (v31 < 0x8E38E38E38E38E39 * ((v331 - v330) >> 2));
    }

    v9 = 0x277CBE000uLL;
    if (__p)
    {
      v329 = __p;
      operator delete(__p);
      v30 = v330;
    }

    if (v30)
    {
      v331 = v30;
      operator delete(v30);
    }

    src.i64[0] = &v332;
    sub_2621C5004(&src);
    src.i64[0] = v334;
    sub_2621C5004(&src);
    if (objc_msgSend_count(a1[1], v38, v39))
    {
      if (objc_msgSend_count(a1[6], v40, v41))
      {
        objc_msgSend_removeAllObjects(*v8, v42, v43);
        sub_26224B9B0(v334, a1[6]);
        sub_26224B9B0(&v332, a1[1]);
        sub_26224BBEC(&v330, a1[6]);
        sub_26224BBEC(&__p, a1[1]);
        sub_26224BB18(&v326, 0x2E8BA2E8BA2E8BA3 * ((*(&v334[0] + 1) - *&v334[0]) >> 4));
        v297 = a1;
        sub_26224BB18(&v320, 0x2E8BA2E8BA2E8BA3 * ((v333 - v332) >> 4));
        v46 = *(&v334[0] + 1);
        v47 = *&v334[0];
        if (*(&v334[0] + 1) != *&v334[0])
        {
          v48 = 0;
          v49 = v332;
          v50 = v333;
          v51 = v330;
          v52 = __p;
          do
          {
            if (v50 == v49)
            {
              v50 = v49;
            }

            else
            {
              v53 = 0;
              v54 = 0;
              v55 = 16;
              do
              {
                sub_26223FEB8(&src, (*&v334[0] + 176 * v48 + 16), (v49 + v55));
                v56 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(*&v51[8 * v48], vdup_lane_s32(*&v51[8 * v48], 1))), 0), vrev64_s32(*&v51[8 * v48]), *&v51[8 * v48]);
                v57 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(*&v52[8 * v54], vdup_lane_s32(*&v52[8 * v54], 1))), 0), vrev64_s32(*&v52[8 * v54]), *&v52[8 * v54]);
                if (vcgt_f32(v56, v57).u32[0])
                {
                  v58 = v57.f32[0];
                }

                else
                {
                  v58 = v56.f32[0];
                }

                v59 = v56.f32[1];
                if (v56.f32[1] >= v57.f32[1])
                {
                  v60 = v56.f32[1];
                }

                else
                {
                  v60 = v57.f32[1];
                }

                if (v58 > v60)
                {
                  if (v57.f32[1] < v56.f32[1])
                  {
                    v59 = v57.f32[1];
                  }

                  if (vcgt_f32(v57, v56).u32[0])
                  {
                    v56.f32[0] = v57.f32[0];
                  }

                  v61 = v56.f32[0] - v59;
                  if (v61 < 0.000001)
                  {
                    v61 = 0.000001;
                  }

                  v62 = ((src.f32[3] + *&v324[16]) * 0.5) < 0.2 && v323.f32[2] < 10.0;
                  if (v62 && ((v58 - v60) / v61) >= 0.3)
                  {
                    v63 = (v326 + 36 * v48);
                    if (src.f32[0] > v63->f32[0])
                    {
                      v63[1] = v323;
                      *v63 = src;
                      v63[2].i16[0] = *v324;
                      v63[1].i32[3] = v54;
                    }

                    v64 = &v320[v53];
                    if (*&v324[4] > *&v320[v53])
                    {
                      *(v64 + 1) = *&v324[20];
                      *(v64 + 16) = v325;
                      *v64 = *&v324[4];
                      *(v64 + 7) = v48;
                    }
                  }
                }

                ++v54;
                v49 = v332;
                v50 = v333;
                v53 += 36;
                v55 += 176;
              }

              while (v54 < 0x2E8BA2E8BA2E8BA3 * ((v333 - v332) >> 4));
              v46 = *(&v334[0] + 1);
              v47 = *&v334[0];
              v8 = v292;
            }

            ++v48;
          }

          while (v48 < 0x2E8BA2E8BA2E8BA3 * ((v46 - v47) >> 4));
        }

        v65 = v320;
        if (v321 != v320)
        {
          v66 = 0;
          v67 = 0;
          v68 = 8;
          a1 = v297;
          while (1)
          {
            v69 = &v65[v66];
            v70 = *&v65[v66 + 28];
            if (v70 == -1)
            {
              v84 = *v8;
              v82 = objc_msgSend_objectAtIndexedSubscript_(a1[1], v44, v67);
              objc_msgSend_addObject_(v84, v85, v82);
            }

            else
            {
              v71 = *(v332 + v68);
              if (v69[1] >= 0.8)
              {
                objc_msgSend_confidence(v71, v44, v45);
                v87 = v86;
                objc_msgSend_confidence(*(*&v334[0] + 176 * v70 + 8), v88, v89);
                v92 = a1[6];
                if (v87 >= (v91 + -0.15))
                {
                  v176 = objc_msgSend_objectAtIndexedSubscript_(v92, v90, v70);
                  v179 = objc_msgSend_identifier(v176, v177, v178);
                  objc_msgSend_objectAtIndexedSubscript_(a1[1], v180, v67);
                  v182 = v181 = a1;
                  sub_2622C533C(v182, v179);

                  v184 = objc_msgSend_objectAtIndexedSubscript_(v181[1], v183, v67);
                  a1 = v181;
                  if (v184)
                  {
                    v184[105] = 1;
                  }

                  v185 = *v8;
                  v82 = objc_msgSend_objectAtIndexedSubscript_(v181[1], v186, v67);
                  objc_msgSend_addObject_(v185, v187, v82);
                  goto LABEL_111;
                }

                v79 = objc_msgSend_objectAtIndexedSubscript_(v92, v90, v70);
                if (v79)
                {
                  v79[105] = 2;
                }
              }

              else
              {
                objc_msgSend_confidence(v71, v44, v45);
                v73 = v72;
                objc_msgSend_confidence(*(*&v334[0] + 176 * v70 + 8), v74, v75);
                v78 = a1[6];
                if (v73 >= (v77 + -0.15))
                {
                  v93 = objc_msgSend_objectAtIndexedSubscript_(v78, v76, v70);
                  v95 = objc_msgSend_objectAtIndexedSubscript_(a1[1], v94, v67);
                  v96 = v320;
                  v97 = v93;
                  v98 = v95;
                  v82 = objc_msgSend_copy(v98, v99, v100);
                  objc_msgSend_quad(v98, v101, v102);
                  v311 = v103;
                  objc_msgSend_quad(v98, v104, v105);
                  v308 = v106;
                  objc_msgSend_quad(v98, v107, v108);
                  v316 = v109;
                  objc_msgSend_quad(v98, v110, v111);
                  if (v114 >= v316)
                  {
                    v115 = v316;
                  }

                  else
                  {
                    v115 = v114;
                  }

                  objc_msgSend_quad(v98, v112, v113);
                  v317 = v116;
                  objc_msgSend_quad(v98, v117, v118);
                  if (v317 >= v121)
                  {
                    v122 = v317;
                  }

                  else
                  {
                    v122 = v121;
                  }

                  objc_msgSend_quad(v97, v119, v120);
                  v318 = v123;
                  objc_msgSend_quad(v97, v124, v125);
                  if (v128 >= v318)
                  {
                    v129 = v318;
                  }

                  else
                  {
                    v129 = v128;
                  }

                  objc_msgSend_quad(v97, v126, v127);
                  v319 = v130;
                  objc_msgSend_quad(v97, v131, v132);
                  if (v319 >= v135)
                  {
                    v136 = v319;
                  }

                  else
                  {
                    v136 = v135;
                  }

                  objc_msgSend_dimensions(v98, v133, v134);
                  v312 = v137;
                  objc_msgSend_dimensions(v97, v138, v139);
                  v305 = v142;
                  v143 = *&v96[v66 + 4];
                  if (v122 < v136)
                  {
                    v122 = v136;
                  }

                  if (v129 < v115)
                  {
                    v115 = v129;
                  }

                  objc_msgSend_quad(v98, v140, v141);
                  v302 = v144;
                  objc_msgSend_quad(v98, v145, v146);
                  v299 = v147;
                  objc_msgSend_dimensions(v98, v148, v149);
                  v152 = vsubq_f32(v311, v308);
                  v153 = vmulq_f32(v152, v152);
                  *&v154 = v153.f32[2] + vaddv_f32(*v153.f32);
                  *v153.f32 = vrsqrte_f32(v154);
                  *v153.f32 = vmul_f32(*v153.f32, vrsqrts_f32(v154, vmul_f32(*v153.f32, *v153.f32)));
                  v155 = vmulq_n_f32(v152, vmul_f32(*v153.f32, vrsqrts_f32(v154, vmul_f32(*v153.f32, *v153.f32))).f32[0]);
                  v153.f32[0] = v312 + (v305 * (1.0 - v143));
                  v156.i64[0] = 0x3F0000003F000000;
                  v156.i64[1] = 0x3F0000003F000000;
                  v158.f32[0] = 0.5 * v157;
                  v159 = vmlaq_n_f32(vmlsq_lane_f32(vmulq_f32(vaddq_f32(v302, v299), v156), v155, v158, 0), v155, v153.f32[0] * 0.5);
                  v160 = vmulq_f32(vmulq_n_f32(v155, v153.f32[0]), v156);
                  v161 = vmulq_f32(vmulq_n_f32(xmmword_2623A7700, v122 - v115), v156);
                  v162 = vaddq_f32(v161, vsubq_f32(v159, v160));
                  v163 = vsubq_f32(vaddq_f32(v160, v159), v161);
                  v164 = v163;
                  v164.i32[2] = v162.i32[2];
                  src = v162;
                  v323 = v164;
                  v162.i32[2] = v163.i32[2];
                  *v324 = v163;
                  *&v324[16] = v162;
                  if (v82)
                  {
                    objc_copyStruct((v82 + 272), &src, 64, 1, 0);
                  }

                  objc_msgSend_confidence(v98, v150, v151);
                  v166 = v165;
                  objc_msgSend_confidence(v97, v167, v168);
                  if (v82)
                  {
                    *(v82 + 108) = (v166 + v171) * 0.5;
                  }

                  v172 = objc_msgSend_identifier(v97, v169, v170);
                  sub_2622C533C(v82, v172);

                  if (v82)
                  {
                    *(v82 + 105) = 1;
                  }

                  v173 = 0.0;
                  v174 = 0.0;
                  v8 = v292;
                  if (v97)
                  {
                    v174 = v97[32];
                  }

                  if (v98)
                  {
                    v173 = v98[32];
                  }

                  if (v82)
                  {
                    if (v174 >= v173)
                    {
                      v173 = v174;
                    }

                    *(v82 + 128) = v173;
                  }

                  objc_msgSend_addObject_(*v292, v175, v82);
                  a1 = v297;
                  goto LABEL_111;
                }

                v79 = objc_msgSend_objectAtIndexedSubscript_(v78, v76, v70);
                if (v79)
                {
                  v79[105] = 2;
                }
              }

              v80 = a1[4];
              v82 = objc_msgSend_objectAtIndexedSubscript_(a1[6], v81, v70);
              objc_msgSend_addObject_(v80, v83, v82);
            }

LABEL_111:

            ++v67;
            v65 = v320;
            v66 += 36;
            v68 += 176;
            if (v67 >= 0x8E38E38E38E38E39 * ((v321 - v320) >> 2))
            {
              if (v320)
              {
                goto LABEL_113;
              }

              goto LABEL_114;
            }
          }
        }

        a1 = v297;
        if (v320)
        {
LABEL_113:
          v321 = v65;
          operator delete(v65);
        }

LABEL_114:
        v9 = 0x277CBE000;
        if (v326)
        {
          v327 = v326;
          operator delete(v326);
        }

        if (__p)
        {
          operator delete(__p);
        }

        if (v330)
        {
          operator delete(v330);
        }

        src.i64[0] = &v332;
        sub_2621C5004(&src);
        src.i64[0] = v334;
        sub_2621C5004(&src);
      }

      else
      {
        objc_storeStrong(a1 + 4, a1[1]);
      }
    }

    if (objc_msgSend_count(a1[7], v40, v41))
    {
      objc_msgSend_addObjectsFromArray_(a1[4], v188, a1[7]);
    }
  }

  else
  {
    objc_storeStrong(a1 + 4, a1[1]);
  }

  v189 = *(v9 + 2840);
  obj = objc_opt_new();
  if (objc_msgSend_count(*v8, v190, v191))
  {
    sub_26224B9B0(&v332, *v8);
    sub_26224B9B0(&v330, a1[3]);
    sub_26224BB18(&__p, 0x2E8BA2E8BA2E8BA3 * ((v333 - v332) >> 4));
    sub_26224BB18(&v326, 0x2E8BA2E8BA2E8BA3 * ((v331 - v330) >> 4));
    v194 = v332;
    v193 = v333;
    if (v333 != v332)
    {
      v195 = 0;
      v196 = v330;
      v197 = v331;
      do
      {
        if (v197 == v196)
        {
          v197 = v196;
        }

        else
        {
          v198 = 0;
          v199 = 0;
          v200 = 16;
          do
          {
            sub_26223FEB8(&src, (v332 + 176 * v195 + 16), &v196[v200]);
            if (((src.f32[3] + *&v324[16]) * 0.5) < 0.2 && v323.f32[2] < 10.0)
            {
              v202 = (__p + 36 * v195);
              if (src.f32[0] > v202->f32[0])
              {
                v202[1] = v323;
                *v202 = src;
                v202[2].i16[0] = *v324;
                v202[1].i32[3] = v199;
              }

              v203 = v326 + v198;
              if (*&v324[4] > *(v326 + v198))
              {
                *(v203 + 1) = *&v324[20];
                *(v203 + 16) = v325;
                *v203 = *&v324[4];
                *(v203 + 7) = v195;
              }
            }

            ++v199;
            v196 = v330;
            v197 = v331;
            v198 += 36;
            v200 += 176;
          }

          while (v199 < 0x2E8BA2E8BA2E8BA3 * ((v331 - v330) >> 4));
          v194 = v332;
          v193 = v333;
        }

        ++v195;
      }

      while (v195 < 0x2E8BA2E8BA2E8BA3 * ((v193 - v194) >> 4));
    }

    v205 = __p;
    v204 = v329;
    if (v329 != __p)
    {
      v206 = a1;
      v207 = 0;
      do
      {
        v208 = v205[9 * v207 + 7];
        if (v208 != -1)
        {
          v209 = objc_msgSend_objectAtIndexedSubscript_(*v8, v192, v207);
          v211 = objc_msgSend_objectAtIndexedSubscript_(v206[3], v210, v208);
          v212 = v209;
          v213 = v211;
          v216 = objc_msgSend_copy(v212, v214, v215);
          objc_msgSend_quad(v213, v217, v218);
          v313 = v219;
          objc_msgSend_quad(v213, v220, v221);
          v309 = v222;
          objc_msgSend_quad(v213, v223, v224);
          v306 = v225;
          objc_msgSend_quad(v213, v226, v227);
          v303 = v228;
          objc_msgSend_quad(v212, v229, v230);
          v300 = v231;
          objc_msgSend_quad(v212, v232, v233);
          v298 = v234;
          objc_msgSend_dimensions(v212, v235, v236);
          v296 = v237;
          objc_msgSend_dimensions(v212, v238, v239);
          v293 = v240;
          objc_msgSend_dimensions(v212, v241, v242);
          v295 = v243;
          objc_msgSend_dimensions(v212, v244, v245);
          v294 = v246;
          v249 = objc_msgSend_type(v212, v247, v248);
          v252 = vsubq_f32(v313, v309);
          v253 = vmulq_f32(v252, v252);
          *&v254 = v253.f32[2] + vaddv_f32(*v253.f32);
          *v253.f32 = vrsqrte_f32(v254);
          *v253.f32 = vmul_f32(*v253.f32, vrsqrts_f32(v254, vmul_f32(*v253.f32, *v253.f32)));
          v255 = vmulq_n_f32(v252, vmul_f32(*v253.f32, vrsqrts_f32(v254, vmul_f32(*v253.f32, *v253.f32))).f32[0]);
          v256 = vmlaq_f32(vmulq_f32(v255, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v255, v255), v255, 0xCuLL));
          v257 = vextq_s8(vuzp1q_s32(v256, v256), v256, 0xCuLL);
          v258 = vmulq_f32(v256, v256);
          *&v259 = v258.f32[1] + (v258.f32[2] + v258.f32[0]);
          *v258.f32 = vrsqrte_f32(v259);
          *v258.f32 = vmul_f32(*v258.f32, vrsqrts_f32(v259, vmul_f32(*v258.f32, *v258.f32)));
          v260 = vmulq_n_f32(v257, vmul_f32(*v258.f32, vrsqrts_f32(v259, vmul_f32(*v258.f32, *v258.f32))).f32[0]);
          v261.i64[0] = 0x3F0000003F000000;
          v261.i64[1] = 0x3F0000003F000000;
          v262 = vmulq_f32(vaddq_f32(v306, v303), v261);
          v263 = vmulq_f32(vaddq_f32(v300, v298), v261);
          v264 = vmulq_f32(v260, vsubq_f32(v263, v262));
          v264.f32[0] = v264.f32[2] + vaddv_f32(*v264.f32);
          v310 = v255;
          v304 = v262;
          v307 = vmlsq_lane_f32(v263, v260, *v264.f32, 0);
          v314 = vaddq_f32(vaddq_f32(v307, vmulq_f32(vmulq_n_f32(v255, v295), v261)), vmulq_f32(vmulq_laneq_f32(xmmword_2623A7920, v294, 2), v261));
          if (v249 == 2 || objc_msgSend_type(v212, v250, v251) == 4)
          {
            objc_msgSend_quad(v213, v250, v251);
            v301 = v265;
            objc_msgSend_quad(v213, v266, v267);
            v269.i64[0] = v314.i64[0];
            v269.i64[1] = __PAIR64__(v314.u32[3], vmlaq_n_f32(v304, xmmword_2623A7930, fabsf(COERCE_FLOAT(*(vsubq_f32(v301, v268).f32 + 8)))).u32[2]);
            v314 = v269;
          }

          v270.i64[0] = 0x3F0000003F000000;
          v270.i64[1] = 0x3F0000003F000000;
          v271 = vaddq_f32(vsubq_f32(v307, vmulq_f32(vmulq_n_f32(v310, v296), v270)), vmulq_f32(vmulq_laneq_f32(xmmword_2623A7700, v293, 2), v270));
          v272 = v314;
          v272.i32[2] = v271.i32[2];
          v334[0] = v271;
          v334[1] = v272;
          v273 = v271;
          v273.i32[2] = v314.i32[2];
          v334[2] = v314;
          v334[3] = v273;
          src = v271;
          v323 = v272;
          *v324 = v314;
          *&v324[16] = v273;
          if (v216)
          {
            objc_copyStruct(v216 + 272, &src, 64, 1, 0);
          }

          if (objc_msgSend_individualUpdate(v212, v250, v251) == 2)
          {
            v276 = 0;
            while (1)
            {
              v315 = v334[v276];
              objc_msgSend_quad(v212, v274, v275);
              src.i32[2] = v277;
              v323.i32[2] = v278;
              *&v324[8] = v279;
              *&v324[24] = v280;
              src.i64[0] = v281;
              v323.i64[0] = v282;
              *v324 = v283;
              *&v324[16] = v284;
              v285 = vsubq_f32(v315, *(&src + v276 * 16));
              v286 = vmulq_f32(v285, v285);
              if (sqrtf(v286.f32[2] + vaddv_f32(*v286.f32)) > 0.001)
              {
                break;
              }

              if (++v276 == 4)
              {
                goto LABEL_158;
              }
            }

            if (v216)
            {
              v216[105] = 1;
            }
          }

LABEL_158:

          objc_msgSend_addObject_(obj, v287, v216);
          v205 = __p;
          v204 = v329;
          v8 = v292;
        }

        ++v207;
      }

      while (v207 < 0x8E38E38E38E38E39 * ((v204 - v205) >> 2));
    }

    objc_storeStrong(v8, obj);
    if (v326)
    {
      v327 = v326;
      operator delete(v326);
    }

    if (__p)
    {
      v329 = __p;
      operator delete(__p);
    }

    src.i64[0] = &v330;
    sub_2621C5004(&src);
    src.i64[0] = &v332;
    sub_2621C5004(&src);
  }
}