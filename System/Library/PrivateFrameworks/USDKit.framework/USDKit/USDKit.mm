uint64_t sub_27030BDA8(float32x2_t *a1, float32x2_t *a2)
{
  v2 = vcgt_f32(*a2, *a1);
  if (v2.i8[0])
  {
    v3 = 1;
  }

  else
  {
    if ((vcgt_f32(*a1, *a2).u8[0] & 1) == 0)
    {
      v4 = a1[1];
      v5 = a2[1];
      if (v4 != v5)
      {
        v6 = v4[1];
        v7 = *v5;
        v8 = v5[1];
        if (COERCE_FLOAT(*v4) == *&v6 && *&v7 != *&v8)
        {
          v3 = a1[2].i8[0];
          return v3 & 1;
        }

        if (COERCE_FLOAT(*v4) != *&v6 && *&v7 == *&v8)
        {
          v3 = a2[2].i8[0] ^ 1;
          return v3 & 1;
        }
      }

      v3 = v2.i8[4];
      return v3 & 1;
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_27030BE28(float32x2_t *a1, float32x2_t *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *a1;
    v4 = a2[1];
    if (vcgt_f32(*a1, v4).u8[0] & 1) != 0 || (v5 = *a2, v6 = a1[1], (vcgt_f32(*a2, v6).u8[0]))
    {
LABEL_5:
      v2 = 0;
      return v2 & 1;
    }

    _D4 = vsub_f32(v3, v6);
    v9 = vsub_f32(v5, v4);
    v10 = (-*&_D4.i32[1] * *v9.i32) + (*_D4.i32 * *&v9.i32[1]);
    if (v10 == 0.0 || (v10 * v10) < 0.000001)
    {
      _D5 = vsub_f32(v5, v6);
      __asm { FMLA            S6, S4, V5.S[1] }

      if (_S6 != 0.0 && (_S6 * _S6) >= 0.000001)
      {
        goto LABEL_5;
      }

      v43 = vmul_f32(vsub_f32(v5, v3), _D5);
      v44 = vmul_f32(vsub_f32(v4, v3), vsub_f32(v4, v6));
      v45 = vmvn_s8(vcltz_f32(vadd_f32(vzip1_s32(v44, v43), vzip2_s32(v44, v43))));
      if (v45.i32[1] & v45.i32[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = vsub_f32(v5, v3);
      v12 = vsub_f32(v6, v3);
      v13 = vsub_f32(v4, v3);
      v14 = vsub_f32(v3, v5);
      v15 = vsub_f32(v4, v5);
      v16 = vsub_f32(v6, v5);
      v17 = vzip1_s32(v12, v15);
      v18 = vzip2_s32(v12, v15);
      v19 = vmla_f32(vmul_f32(v17, vneg_f32(vzip2_s32(v11, v14))), v18, vzip1_s32(v11, v14));
      v20 = vdup_n_s32(0x358637BDu);
      v21 = vmla_f32(vmul_f32(v17, vneg_f32(vzip2_s32(v13, v16))), v18, vzip1_s32(v13, v16));
      v22 = vmul_f32(vbic_s8(v19, vcgt_f32(v20, vmul_f32(v19, v19))), vbic_s8(v21, vcgt_f32(v20, vmul_f32(v21, v21))));
      if (*v22.i32 >= 0.0 || *&v22.i32[1] >= 0.0)
      {
        v23 = vsub_f32(v5, v6);
        v24 = vsub_f32(v4, v6);
        v25 = vsub_f32(v3, v4);
        v26 = vsub_f32(v6, v4);
        v27 = vzip1_s32(v9, _D4);
        v28 = vmul_f32(v27, vneg_f32(vzip2_s32(v25, v23)));
        v29 = vzip1_s32(v25, v23);
        v30 = vzip2_s32(v9, _D4);
        v31 = vmla_f32(v28, v30, v29);
        v32 = vbic_s8(v31, vcgt_f32(v20, vmul_f32(v31, v31)));
        v33 = vmla_f32(vmul_f32(v27, vneg_f32(vzip2_s32(v26, v24))), v30, vzip1_s32(v26, v24));
        v34 = vmul_f32(v32, vbic_s8(v33, vcgt_f32(v20, vmul_f32(v33, v33))));
        v35.i64[0] = __PAIR64__(v34.u32[1], v22.u32[0]);
        *&v35.u32[2] = vext_s8(v22, v34, 4uLL);
        if (vmaxv_u16(vmovn_s32(vceqzq_f32(v35))))
        {
          v36 = vcltz_f32(v34);
          v2 = (*v22.i32 < 0.0 || *&v22.i32[1] < 0.0) | v36.i8[4] | v36.i8[0];
          return v2 & 1;
        }

        goto LABEL_5;
      }
    }

    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_27030C034(uint64_t *a1)
{
  v27 = 0;
  v1 = 0uLL;
  *__p = 0u;
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(v2 + v4);
      v7 = *(v2 + v4 + 8);
      v8 = vcgt_f32(v6, v7);
      if (v8.i8[0] & 1) != 0 || (vceq_f32(v6, v7).u8[0] & 1) != 0 && (v8.i8[4])
      {
        *(v2 + v4) = v7;
        *(*a1 + v4 + 8) = v6;
        v2 = *a1;
      }

      v24 = 0uLL;
      v25 = 0;
      v9 = (v2 + v4);
      *&v24 = *v9;
      *(&v24 + 1) = v9;
      LOBYTE(v25) = 1;
      v22 = 0uLL;
      v23 = 0;
      *&v22 = v9[1];
      *(&v22 + 1) = v9;
      sub_27030C2C4(__p, &v24);
      sub_27030C2C4(__p, &v22);
      ++v5;
      v2 = *a1;
      v4 += 16;
    }

    while (v5 < (a1[1] - *a1) >> 4);
    v1 = *__p;
  }

  v10 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v1.n128_u64[1] - v1.n128_u64[0]) >> 3));
  *&v24 = sub_27030BDA8;
  if (v1.n128_u64[1] == v1.n128_u64[0])
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_27030E9C8(v1.n128_i64[0], v1.n128_u64[1], &v24, v11, 1, v1);
  v24 = 0uLL;
  v25 = 0;
  sub_270349248(&v24, v12);
  v13 = __p[0];
  if (__p[1] == __p[0])
  {
LABEL_18:
    v20 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = &v13[v14];
      v17 = *(v16 + 1);
      if (v16[16])
      {
        sub_270349418();
      }

      v18 = sub_270349DB4(&v24, v17);
      v19 = sub_270349EA0(&v24, v17);
      if (sub_27030BE28(v19, v18))
      {
        break;
      }

      sub_2703499EC(&v24, v17);
      ++v15;
      v13 = __p[0];
      v14 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) <= v15)
      {
        goto LABEL_18;
      }
    }

    v20 = 1;
  }

  sub_270349414(&v24);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v20;
}

void sub_27030C280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27030C2C4(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_27030E894();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_27030E93C(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t sub_27030C3CC(__n128 a1, float a2)
{
  v2 = vcvtms_u32_f32(a1.n128_f32[0] / a2);
  v3 = vcvtms_u32_f32(a1.n128_f32[1] / a2);
  v4 = vcvtms_u32_f32(a1.n128_f32[2] / a2);
  v5 = (((v2 & 0x1FFFFF) << 16) | ((v2 & 0x1FFFFF) << 32)) & 0x1F0000FF0000FFLL | v2;
  v6 = (v5 | (v5 << 8)) & 0x1003003003003003 | (16 * ((v5 | (v5 << 8)) & 0x100F00F00F00F00FLL)) & 0x10C30C30C30C30C3;
  v7 = (((v3 & 0x1FFFFF) << 16) | ((v3 & 0x1FFFFF) << 32)) & 0x1F0000FF0000FFLL | v3;
  v8 = (v7 | (v7 << 8)) & 0x1003003003003003 | (16 * ((v7 | (v7 << 8)) & 0x100F00F00F00F00FLL)) & 0x10C30C30C30C30C3;
  v9 = ((8 * v8) | (2 * v8)) & 0x2492492492492492 | (v6 | (4 * v6)) & 0x1249249249249249;
  v10 = (((v4 & 0x1FFFFF) << 16) | ((v4 & 0x1FFFFF) << 32)) & 0x1F0000FF0000FFLL | v4;
  v11 = (v10 | (v10 << 8)) & 0x1003003003003003 | (16 * ((v10 | (v10 << 8)) & 0x100F00F00F00F00FLL)) & 0x10C30C30C30C30C3;
  return v9 | ((16 * v11) | (4 * v11)) & 0x4924924924924924;
}

uint64_t sub_27030C4E0(float32x4_t **a1, int32x4_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = **a1;
  v51 = 1065353216;
  __p = 0;
  v53 = 0;
  v54 = 0;
  memset(v50, 0, sizeof(v50));
  if (v3 == v2)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v6 = 0;
    v7 = vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL);
    v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vnegq_f32(a2)), v4, v7);
    v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
    v10 = vmulq_f32(v8, v8);
    *&v11 = v10.f32[1] + (v10.f32[2] + v10.f32[0]);
    v12 = vrsqrte_f32(v11);
    v13 = vmul_f32(v12, vrsqrts_f32(v11, vmul_f32(v12, v12)));
    v45 = vmulq_n_f32(v9, vmul_f32(v13, vrsqrts_f32(v11, vmul_f32(v13, v13))).f32[0]);
    v14 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(v45)), a2, vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL));
    v15 = vmulq_f32(v14, v14);
    v10.f32[0] = v15.f32[1] + (v15.f32[2] + v15.f32[0]);
    *v15.f32 = vrsqrte_f32(v10.u32[0]);
    *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v15.f32, *v15.f32)));
    v44 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vmul_f32(*v15.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v15.f32, *v15.f32))).f32[0]);
    do
    {
      v16 = v2[v6];
      v17 = vmulq_f32(v45, v16);
      v18 = vmulq_f32(v44, v16);
      v19 = vadd_f32(vzip1_s32(*v17.i8, *v18.i8), vzip2_s32(*v17.i8, *v18.i8));
      v20 = vextq_s8(v18, v18, 8uLL);
      v20.n128_u64[0] = vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), v20.n128_u64[0]), v19);
      v49 = v20.n128_u64[0];
      v21 = v53;
      if (v53 >= v54)
      {
        v23 = (v53 - __p) >> 3;
        if ((v23 + 1) >> 61)
        {
          sub_27030E894();
        }

        v24 = (v54 - __p) >> 2;
        if (v24 <= v23 + 1)
        {
          v24 = v23 + 1;
        }

        if (v54 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          sub_2703106C4(&__p, v25);
        }

        *(8 * v23) = v20.n128_u64[0];
        v22 = 8 * v23 + 8;
        v26 = (8 * v23 - (v53 - __p));
        memcpy(v26, __p, v53 - __p);
        v27 = __p;
        __p = v26;
        v53 = v22;
        v54 = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v53 = v20.n128_u64[0];
        v22 = (v21 + 8);
      }

      v53 = v22;
      v46 = &v49;
      if (sub_27031070C(v50, &v49, v20))
      {
        v29 = sub_270310818(v50, &v49, v28);
        ++v29[3].i32[0];
      }

      else
      {
        sub_270310818(v50, &v49, v28)[3].i32[0] = 0;
      }

      v46 = &v49;
      if (sub_270310818(v50, &v49, v30)[3].i32[0] >= 3)
      {
        v42 = 0;
        goto LABEL_40;
      }

      ++v6;
      v2 = *a1;
    }

    while (v6 < a1[1] - *a1);
    v31 = __p;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    if (v53 != __p)
    {
      v32 = 0;
      v33 = 0;
      v34 = (v53 - __p) >> 3;
      do
      {
        v35 = v31[v33++];
        v36 = v31[v33 % v34];
        if (v32 >= v48)
        {
          v37 = (v32 - v46) >> 4;
          if ((v37 + 1) >> 60)
          {
            sub_27030E894();
          }

          v38 = (v48 - v46) >> 3;
          if (v38 <= v37 + 1)
          {
            v38 = v37 + 1;
          }

          if (v48 - v46 >= 0x7FFFFFFFFFFFFFF0)
          {
            v39 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_270310CE0(&v46, v39);
          }

          v40 = (16 * v37);
          *v40 = v35;
          v40[1] = v36;
          v32 = (16 * v37 + 16);
          memcpy((16 * v37 - (v47 - v46)), v46, v47 - v46);
          v41 = v46;
          v46 = (16 * v37 - (v47 - v46));
          v47 = v32;
          v48 = 0;
          if (v41)
          {
            operator delete(v41);
          }
        }

        else
        {
          *v32 = v35;
          *(v32 + 1) = v36;
          v32 += 16;
        }

        v47 = v32;
        v31 = __p;
        v34 = (v53 - __p) >> 3;
      }

      while (v34 > v33);
    }
  }

  v42 = sub_27030C034(&v46) ^ 1;
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

LABEL_40:
  sub_270310678(v50);
  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  return v42;
}

void sub_27030C8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_270310678(&a17);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27030C920(float32x4_t **a1, float32x2_t a2)
{
  v2 = (*a1)[2];
  v3 = vsubq_f32((*a1)[1], v2).u64[0];
  v4 = vsubq_f32(**a1, v2);
  v5 = vnegq_f32(v4).u64[0];
  v6 = vneg_f32(vzip2_s32(v5, v3));
  *v2.f32 = vsub_f32(a2, *v2.f32);
  v7 = vmla_lane_f32(vmul_n_f32(v6, v2.f32[0]), vzip1_s32(v5, v3), *v2.f32, 1);
  *v2.f32 = vcgt_f32(vdup_n_s32(0x358637BDu), vabs_f32(v7));
  if ((v2.i32[1] | v2.i32[0]))
  {
    return 0;
  }

  v8 = vmuls_lane_f32(v4.f32[0], v6, 1) + (*v3.i32 * v4.f32[1]);
  v9 = vaddv_f32(v7);
  if (vabds_f32(v9, v8) < 0.000001)
  {
    return 0;
  }

  if (v8 >= 0.0)
  {
    v12 = v7.f32[0] >= 0.0 && v7.f32[1] >= 0.0;
    v13 = v9 <= v8;
  }

  else
  {
    v12 = v7.f32[0] <= 0.0 && v7.f32[1] <= 0.0;
    v13 = v9 >= v8;
  }

  return v12 & v13;
}

BOOL sub_27030C9E8(uint64_t *a1, uint64_t a2, void *a3, float32x4_t a4)
{
  if (*(a2 + 8) == *a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *(*v4 + 16);
  v6 = *(*a1 + 8);
  if (v6 == a2)
  {
    v6 = *(a2 + 8);
  }

  v7 = *(*a3 + 16 * *(*a1 + 16));
  v8 = vsubq_f32(v7, *(*a3 + 16 * v5));
  v9 = vsubq_f32(*(*a3 + 16 * *(v6 + 16)), v7);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vnegq_f32(v8)), v9, vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL));
  v11 = vmulq_f32(v10, v10);
  if ((v11.f32[1] + (v11.f32[2] + v11.f32[0])) < 1.0e-12)
  {
    return 1;
  }

  v13 = vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), a4);
  return (v13.f32[2] + vaddv_f32(*v13.f32)) < 0.0;
}

uint64_t sub_27030CA98(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = *(*a4 + 16);
  v9 = a2 + 1;
  v8 = a2[1];
  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = a2 + 1;
  do
  {
    if (*(v8 + 28) >= v7)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 28) < v7));
  }

  while (v8);
  if (v10 != v9 && v7 >= *(v10 + 7))
  {
    return 0;
  }

LABEL_8:
  if (*(a1 + 8) == v6)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a4;
  }

  v12 = *(*v11 + 16);
  v13 = *(v6 + 8);
  if (v13 == a1)
  {
    v13 = *(a1 + 8);
  }

  v14 = *(v13 + 16);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_27030CC5C(&v27, (*a3 + 16 * v12));
  sub_27030CC5C(&v27, (*a3 + 16 * v7));
  sub_27030CC5C(&v27, (*a3 + 16 * v14));
  v15 = *a2;
  if (*a2 == v9)
  {
LABEL_27:
    v21 = 1;
  }

  else
  {
    while (1)
    {
      v16 = *(v15 + 7);
      v17 = v16 == v12 || v16 == v14;
      if (!v17)
      {
        v23 = *(*a3 + 16 * v16);
        v25 = 0;
        v26 = 0;
        __p = 0;
        sub_270310D28(&__p, v27, v28, (v28 - v27) >> 4);
        v18 = sub_27030C920(&__p, *&v23);
        if (__p)
        {
          v25 = __p;
          operator delete(__p);
        }

        if (v18)
        {
          break;
        }
      }

      v19 = v15[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v15[2];
          v17 = *v20 == v15;
          v15 = v20;
        }

        while (!v17);
      }

      v15 = v20;
      if (v20 == v9)
      {
        goto LABEL_27;
      }
    }

    v21 = 0;
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return v21;
}

void sub_27030CC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27030CC5C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_27030E894();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_270310CE0(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_27030CD30(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12)
{
  if (a2 < 3)
  {
    return;
  }

  if (a2 == 4)
  {
    v24 = (*(a3 + 32) + 4 * a4);
    v25 = *(a1 + 32);
    v26 = v25 + 12 * *v24;
    a9.i64[0] = *v26;
    a9.i32[2] = *(v26 + 8);
    v27 = a4 + 1;
    v28 = v25 + 12 * v24[1];
    a12.i64[0] = *v28;
    a12.i32[2] = *(v28 + 8);
    v29 = a4 + 2;
    v30 = v25 + 12 * v24[2];
    a10.i64[0] = *v30;
    a10.i32[2] = *(v30 + 8);
    v31 = a4 + 3;
    v32 = v25 + 12 * v24[3];
    a11.i64[0] = *v32;
    a11.i32[2] = *(v32 + 8);
    v33 = vsubq_f32(a12, a9);
    v34 = vsubq_f32(a11, a10);
    v35 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
    v36 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
    v37 = vnegq_f32(v33);
    v38 = vsubq_f32(a11, a12);
    v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), v37), v38, v35);
    v40 = vsubq_f32(a10, a12);
    v41 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
    v42 = vmlaq_f32(vmulq_f32(v36, vnegq_f32(v40)), v34, v41);
    v43 = vmulq_f32(v39, v42);
    if ((v43.f32[1] + (v43.f32[2] + v43.f32[0])) < 0.0)
    {
      v44 = (*a6)++;
      sub_270310DE0(a5);
      *(*(a5 + 32) + 4 * v44) = a4;
      v45 = (*a6)++;
      sub_270310DE0(a5);
      *(*(a5 + 32) + 4 * v45) = v27;
      v46 = (*a6)++;
      sub_270310DE0(a5);
      v47 = *(a5 + 32);
LABEL_7:
      *(v47 + 4 * v46) = v29;
      v48 = a8;
      v49 = (*a8)++;
      sub_270310DE0(a7);
      *(*(a7 + 32) + 4 * v49) = 3;
      v50 = (*a6)++;
      sub_270310DE0(a5);
      *(*(a5 + 32) + 4 * v50) = a4;
LABEL_25:
      v77 = (*a6)++;
      sub_270310DE0(a5);
      *(*(a5 + 32) + 4 * v77) = v29;
      v78 = (*a6)++;
      sub_270310DE0(a5);
      *(*(a5 + 32) + 4 * v78) = v31;
      v79 = (*v48)++;
      sub_270310DE0(a7);
      *(*(a7 + 32) + 4 * v79) = 3;
      return;
    }

    v61 = vsubq_f32(a10, a9);
    v62 = vmlaq_f32(vmulq_f32(v36, vnegq_f32(v61)), v34, vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL));
    v63 = vmlaq_f32(vmulq_f32(v41, v37), v40, v35);
    v64 = vmulq_f32(v63, v62);
    if ((v64.f32[1] + (v64.f32[2] + v64.f32[0])) >= 0.0)
    {
      v67 = vmulq_f32(v39, v39);
      v68 = vmulq_f32(v42, v42);
      v69 = vabds_f32(fabsf(v67.f32[1] + (v67.f32[2] + v67.f32[0])), fabsf(v68.f32[1] + (v68.f32[2] + v68.f32[0])));
      v70 = vmulq_f32(v63, v63);
      v71 = vmulq_f32(v62, v62);
      v72 = vabds_f32(fabsf(v70.f32[1] + (v70.f32[2] + v70.f32[0])), fabsf(v71.f32[1] + (v71.f32[2] + v71.f32[0])));
      v73 = (*a6)++;
      sub_270310DE0(a5);
      *(*(a5 + 32) + 4 * v73) = a4;
      v74 = (*a6)++;
      sub_270310DE0(a5);
      *(*(a5 + 32) + 4 * v74) = v27;
      v46 = (*a6)++;
      sub_270310DE0(a5);
      v47 = *(a5 + 32);
      if (v69 >= v72)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v65 = (*a6)++;
      sub_270310DE0(a5);
      *(*(a5 + 32) + 4 * v65) = a4;
      v66 = (*a6)++;
      sub_270310DE0(a5);
      *(*(a5 + 32) + 4 * v66) = v27;
      v46 = (*a6)++;
      sub_270310DE0(a5);
      v47 = *(a5 + 32);
    }

    *(v47 + 4 * v46) = v31;
    v48 = a8;
    v75 = (*a8)++;
    sub_270310DE0(a7);
    *(*(a7 + 32) + 4 * v75) = 3;
    v76 = (*a6)++;
    sub_270310DE0(a5);
    *(*(a5 + 32) + 4 * v76) = v27;
    goto LABEL_25;
  }

  if (a2 != 3)
  {
    __p = 0;
    v83 = 0;
    v84 = 0;
    sub_27030DB5C(&__p, a2);
    v81[0] = v81;
    v81[1] = v81;
    v81[2] = 0;
    v51 = *(a1 + 32) + 12 * *(*(a3 + 32) + 4 * a4);
    *&v52 = *v51;
    DWORD2(v52) = *(v51 + 8);
    v53 = v83;
    if (v83 >= v84)
    {
      v55 = (v83 - __p) >> 4;
      if ((v55 + 1) >> 60)
      {
        sub_27030E894();
      }

      v56 = (v84 - __p) >> 3;
      if (v56 <= v55 + 1)
      {
        v56 = v55 + 1;
      }

      if (v84 - __p >= 0x7FFFFFFFFFFFFFF0)
      {
        v57 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v57 = v56;
      }

      if (v57)
      {
        sub_270310CE0(&__p, v57);
      }

      v58 = (16 * v55);
      *v58 = v52;
      v54 = 16 * v55 + 16;
      v59 = v58 - (v83 - __p);
      memcpy(v59, __p, v83 - __p);
      v60 = __p;
      __p = v59;
      v83 = v54;
      v84 = 0;
      if (v60)
      {
        operator delete(v60);
      }
    }

    else
    {
      *v83 = v52;
      v54 = (v53 + 16);
    }

    v83 = v54;
    operator new();
  }

  v18 = a4 + 1;
  v19 = a4 + 2;
  v20 = (*a6)++;
  sub_270310DE0(a5);
  *(*(a5 + 32) + 4 * v20) = a4;
  v21 = (*a6)++;
  sub_270310DE0(a5);
  *(*(a5 + 32) + 4 * v21) = v18;
  v22 = (*a6)++;
  sub_270310DE0(a5);
  *(*(a5 + 32) + 4 * v22) = v19;
  v23 = (*a8)++;
  sub_270310DE0(a7);
  *(*(a7 + 32) + 4 * v23) = 3;
}

void sub_27030DA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  sub_270310FD8(&a19, a20);
  sub_27030E81C(&a22);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27030DA9C(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, int a6, int a7)
{
  v14 = (*a2)++;
  sub_270310DE0(a1);
  *(*(a1 + 32) + 4 * v14) = a5;
  v15 = (*a2)++;
  sub_270310DE0(a1);
  *(*(a1 + 32) + 4 * v15) = a6;
  v16 = (*a2)++;
  sub_270310DE0(a1);
  *(*(a1 + 32) + 4 * v16) = a7;
  v17 = (*a4)++;
  sub_270310DE0(a3);
  *(*(a3 + 32) + 4 * v17) = 3;
}

void *sub_27030DB5C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      sub_270310CE0(result, a2);
    }

    sub_27030E894();
  }

  return result;
}

void sub_27030DBFC(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  for (i = a1[2]; v2 != i; v2 += 11)
  {
    MEMORY[0x27439E610](&v41, "vertex");
    v7 = (v2 + 9);
    v6 = v2[9];
    v8 = v41;
    if ((v41 & 7) != 0)
    {
      atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 ^ v6) >= 8)
    {
      MEMORY[0x27439E610](&v41, "uniform");
      v9 = *v7;
      v10 = v41;
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v10 ^ v9) > 7)
      {
        MEMORY[0x27439E610](&v41, "faceVarying");
        v23 = *v7;
        v24 = v41;
        if ((v41 & 7) != 0)
        {
          atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v24 ^ v23) > 7)
        {
          MEMORY[0x27439E610](&v41, "constant");
          v32 = *v7;
          v33 = v41;
          if ((v41 & 7) != 0)
          {
            atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v33 ^ v32) >= 8)
          {
            v34 = *a1 & 0xFFFFFFFFFFFFFFF8;
            if (v34)
            {
              v35 = (v34 + 16);
              if (*(v34 + 39) < 0)
              {
                v35 = *v35;
              }
            }

            else
            {
              v35 = "";
            }

            v36 = v2[7] & 0xFFFFFFFFFFFFFFF8;
            if (v36)
            {
              v37 = (v36 + 16);
              if (*(v36 + 39) < 0)
              {
                v37 = *v37;
              }
            }

            else
            {
              v37 = "";
            }

            NSLog(&cfstr_WarningMeshSHa.isa, v35, v37);
          }
        }

        else
        {
          v25 = (v2 + 2);
          if (v2[2])
          {
            v43 = 0;
            v41 = 0u;
            v42 = 0u;
            sub_27030E054(&v41, *a2);
            if (*a2)
            {
              v26 = 0;
              do
              {
                sub_270310DE0(a2);
                v27 = *(a2[4] + 4 * v26);
                sub_270310DE0((v2 + 2));
                LODWORD(v27) = *(v2[6] + 4 * v27);
                sub_270310DE0(&v41);
                *(v43 + 4 * v26++) = v27;
              }

              while (*a2 > v26);
            }

            v28 = v43;
            v29 = v2[5];
            v43 = v2[6];
            v30 = v2[4];
            v2[4] = v42;
            v31 = *v25;
            *v25 = v41;
            v41 = v31;
            v2[5] = *(&v42 + 1);
            v2[6] = v28;
            *&v42 = v30;
            *(&v42 + 1) = v29;
            sub_270310E24(&v41);
          }

          else
          {
            sub_27030E0C8((v2 + 2), a2);
          }
        }
      }

      else
      {
        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        sub_27030E054(&v41, *a2 / 3);
        if (a1[4])
        {
          v11 = 0;
          v12 = 0;
          do
          {
            sub_270310DE0((a1 + 4));
            v13 = *(a1[8] + 4 * v11);
            if (v13 >= 3)
            {
              v14 = 4 * v12;
              v15 = v13 - 2;
              do
              {
                sub_270310DE0(&v41);
                *(v43 + v14) = v11;
                v14 += 4;
                ++v12;
                --v15;
              }

              while (v15);
            }

            ++v11;
          }

          while (a1[4] > v11);
        }

        v16 = (v2 + 2);
        if (v2[2])
        {
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          sub_27030E054(&v38, v41);
          if (v41)
          {
            v17 = 0;
            do
            {
              sub_270310DE0(&v41);
              v18 = *(v43 + 4 * v17);
              sub_270310DE0((v2 + 2));
              LODWORD(v18) = *(v2[6] + 4 * v18);
              sub_270310DE0(&v38);
              *(v40 + 4 * v17++) = v18;
            }

            while (v41 > v17);
          }

          v19 = v40;
          v20 = v2[5];
          v40 = v2[6];
          v21 = v2[4];
          v2[4] = v39;
          v22 = *v16;
          *v16 = v38;
          v38 = v22;
          v2[5] = *(&v39 + 1);
          v2[6] = v19;
          *&v39 = v21;
          *(&v39 + 1) = v20;
          sub_270310E24(&v38);
        }

        else
        {
          sub_27030E0C8((v2 + 2), &v41);
        }

        MEMORY[0x27439E610](&v38, "uniform");
        if (&v38 == v7)
        {
          if ((v38 & 7) != 0)
          {
            atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v7 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v7 = v38;
        }

        sub_270310E24(&v41);
      }
    }
  }
}

void sub_27030DFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_270310E24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27030E054(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_2703118DC(a1);
  v6 = &v5;
  sub_27031192C(a1, a2, &v6);
  return a1;
}

uint64_t sub_27030E0C8(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

uint64_t sub_27030E17C(uint64_t a1)
{
  v2 = sub_27030E654(*(a1 + 8));
  v3 = sub_27030E788(v2);
  sub_270310DE0(a1 + 32);
  v4 = *(a1 + 64);
  sub_270310DE0(a1 + 32);
  while (v4 != (*(a1 + 64) + 4 * *(a1 + 32)))
  {
    if (*v4 <= 2)
    {
      v10 = *a1 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        v11 = (v10 + 16);
        if (*(v10 + 39) < 0)
        {
          v11 = *v11;
        }
      }

      else
      {
        v11 = "";
      }

      NSLog(&cfstr_WarningMeshHas.isa, v11);
      return 0;
    }

    ++v4;
  }

  sub_270310DE0(a1 + 32);
  v5 = *(a1 + 64);
  sub_270310DE0(a1 + 32);
  v6 = *(a1 + 64) + 4 * *(a1 + 32);
  if (v5 == v6)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *v5++;
      v7 += 3 * (v9 - 2);
      v8 += v9 - 2;
    }

    while (v5 != v6);
  }

  v58 = 0;
  memset(v57, 0, sizeof(v57));
  LODWORD(v52[0]) = 0;
  *&v56[0] = v52;
  sub_27031192C(v57, v7, v56);
  memset(v56, 0, 40);
  LODWORD(v51[0]) = 0;
  *&v52[0] = v51;
  sub_27031192C(v56, v8, v52);
  v54 = 0;
  v55 = 0;
  v12 = *(a1 + 32);
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  sub_27030E054(v52, v12 + 1);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      sub_270310DE0(a1 + 32);
      v15 = *(*(a1 + 64) + 4 * v13);
      v16 = v54;
      sub_270310DE0(v52);
      *(v53 + 4 * v13) = v16;
      sub_27030CD30(v3, v15, a1 + 72, v14, v57, &v55, v56, &v54, v17, v18, v19, v20);
      v14 += v15;
      ++v13;
    }

    while (v12 != v13);
  }

  v21 = v54;
  sub_270310DE0(v52);
  *(v53 + 4 * v12) = v21;
  v22 = v55 == v7 && v54 == v8;
  v23 = v22;
  if (v22)
  {
    sub_27030DBFC(a1, v57);
    v24 = *(a1 + 48);
    v25 = *(a1 + 32);
    *(a1 + 32) = v56[0];
    *(a1 + 48) = *&v56[1];
    v56[0] = v25;
    *&v56[1] = v24;
    v26 = *(a1 + 56);
    *(a1 + 56) = *(&v56[1] + 8);
    *(&v56[1] + 8) = v26;
    memset(v51, 0, 40);
    sub_27030E054(v51, v57[0]);
    if (v57[0])
    {
      v27 = 0;
      do
      {
        sub_270310DE0(v57);
        v28 = *(v58 + 4 * v27);
        sub_270310DE0(a1 + 72);
        LODWORD(v28) = *(*(a1 + 104) + 4 * v28);
        sub_270310DE0(v51);
        v29 = *&v51[2];
        *(*&v51[2] + 4 * v27++) = v28;
      }

      while (v57[0] > v27);
    }

    else
    {
      v29 = *&v51[2];
    }

    v32 = v51[1];
    *&v51[1] = *(a1 + 88);
    v33 = *(a1 + 72);
    *(a1 + 72) = v51[0];
    v51[0] = v33;
    v34 = *(a1 + 96);
    *(a1 + 96) = *(&v32 + 1);
    *(a1 + 104) = v29;
    *(a1 + 88) = v32;
    *(&v51[1] + 8) = v34;
    v36 = *(a1 + 112);
    v35 = *(a1 + 120);
    while (v36 != v35)
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      if (*v36)
      {
        sub_270310DE0(v36);
        v37 = v36[4];
        sub_270310DE0(v36);
        v38 = v36[4];
        v39 = (v38 + 4 * *v36);
        if (v37 != v39)
        {
          do
          {
            v40 = *v37;
            sub_270310DE0(v52);
            for (i = *(v53 + 4 * v40); ; i = v47 + 1)
            {
              v47 = i;
              sub_270310DE0(v52);
              if (i >= *(v53 + 4 * v40 + 4))
              {
                break;
              }

              sub_270311E40(&v48, &v47);
            }

            ++v37;
          }

          while (v37 != v39);
          v38 = v36[4];
        }

        v42 = v49;
        v36[4] = v50;
        v50 = v38;
        v43 = *v36;
        *v36 = v48;
        v44 = v36[2];
        v45 = v36[3];
        *(v36 + 1) = __PAIR128__(*(&v49 + 1), v42);
        v48 = v43;
        *&v49 = v44;
        *(&v49 + 1) = v45;
      }

      sub_270310E24(&v48);
      v36 += 5;
    }

    sub_270310E24(v51);
  }

  else
  {
    v30 = *a1 & 0xFFFFFFFFFFFFFFF8;
    if (v30)
    {
      v31 = (v30 + 16);
      if (*(v30 + 39) < 0)
      {
        v31 = *v31;
      }
    }

    else
    {
      v31 = "";
    }

    NSLog(&cfstr_WarningTriangu.isa, v31);
  }

  sub_270310E24(v52);
  sub_270310E24(v56);
  sub_270310E24(v57);
  return v23;
}

void sub_27030E5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_270310E24(&a23);
  sub_270310E24(&a31);
  sub_270310E24(&a37);
  _Unwind_Resume(a1);
}

std::type_info *sub_27030E654(std::type_info *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((sub_270311C98(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&v8, &stru_28803FBC0, a1, v2);
    if (&v8 != a1)
    {
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        sub_270311CD0(&v10, a1);
        v3 = v9;
        v4 = ~v9;
        a1->__type_name = v9;
        if ((v4 & 3) != 0)
        {
          (*((v3 & 0xFFFFFFFFFFFFFFF8) + 40))(&v8, a1);
        }

        else
        {
          a1->__vftable = v8;
        }

        v9 = 0;
        if (v11)
        {
          (*(v11 + 32))(&v10);
        }
      }

      else
      {
        type_name = a1->__type_name;
        if (type_name && (a1->__type_name & 3) != 3)
        {
          (*((type_name & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
        }

        a1->__type_name = 0;
      }
    }

    sub_270311D34(&v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27030E76C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_27030E880(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27030E788(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270311C98(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

void *sub_27030E81C(void *result)
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

void sub_27030E8AC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_27030E908(exception, a1);
  __cxa_throw(exception, off_279E01260, MEMORY[0x277D825F0]);
}

std::logic_error *sub_27030E908(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_27030E93C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_27030E994();
}

void sub_27030E994()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

__n128 sub_27030E9C8(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v79 = a2 - 3;
  v10 = &a2[-5].n128_i8[8];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      break;
    }

    switch(v15)
    {
      case 3uLL:
        v59 = (*a3)((v11 + 24), v11);
        v60 = (*a3)(v9, (v11 + 24));
        if (v59)
        {
          if (v60)
          {
            goto LABEL_76;
          }

          v129 = *(v11 + 2);
          v102 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v102;
          *(v11 + 5) = v129;
          if (!(*a3)(v9, (v11 + 24)))
          {
            return result;
          }

          v61 = *(v11 + 5);
          result = *(v11 + 24);
          v62 = v9[1].n128_u64[0];
          *(v11 + 24) = *v9;
          *(v11 + 5) = v62;
          *v9 = result;
LABEL_77:
          v9[1].n128_u64[0] = v61;
          return result;
        }

        if (!v60)
        {
          return result;
        }

        v68 = *(v11 + 5);
        v69 = *(v11 + 24);
        v70 = v9[1].n128_u64[0];
        *(v11 + 24) = *v9;
        *(v11 + 5) = v70;
        *v9 = v69;
        v9[1].n128_u64[0] = v68;
        goto LABEL_103;
      case 4uLL:
        v65 = (*a3)((v11 + 24), v11);
        v66 = (*a3)(v11 + 3, (v11 + 24));
        if (v65)
        {
          if (v66)
          {
            v131 = *(v11 + 2);
            v104 = *v11;
            *v11 = v11[3];
            *(v11 + 2) = *(v11 + 8);
            v11[3] = v104;
            v67 = v131;
            goto LABEL_99;
          }

          v133 = *(v11 + 2);
          v106 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v106;
          *(v11 + 5) = v133;
          if ((*a3)(v11 + 3, (v11 + 24)))
          {
            v67 = *(v11 + 5);
            v73 = *(v11 + 24);
            *(v11 + 24) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v73;
LABEL_99:
            *(v11 + 8) = v67;
          }
        }

        else if (v66)
        {
          v71 = *(v11 + 5);
          v72 = *(v11 + 24);
          *(v11 + 24) = v11[3];
          *(v11 + 5) = *(v11 + 8);
          v11[3] = v72;
          *(v11 + 8) = v71;
          if ((*a3)((v11 + 24), v11))
          {
            v132 = *(v11 + 2);
            v105 = *v11;
            *v11 = *(v11 + 24);
            *(v11 + 2) = *(v11 + 5);
            *(v11 + 24) = v105;
            *(v11 + 5) = v132;
          }
        }

        if (!(*a3)(v9, v11 + 3))
        {
          return result;
        }

        v74 = *(v11 + 8);
        v75 = v11[3];
        v76 = v9[1].n128_u64[0];
        v11[3] = *v9;
        *(v11 + 8) = v76;
        *v9 = v75;
        v9[1].n128_u64[0] = v74;
        if (!(*a3)(v11 + 3, (v11 + 24)))
        {
          return result;
        }

        v77 = *(v11 + 5);
        v78 = *(v11 + 24);
        *(v11 + 24) = v11[3];
        *(v11 + 5) = *(v11 + 8);
        v11[3] = v78;
        *(v11 + 8) = v77;
LABEL_103:
        if ((*a3)((v11 + 24), v11))
        {
          v134 = *(v11 + 2);
          v107 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          result = v107;
          *(v11 + 24) = v107;
          *(v11 + 5) = v134;
        }

        return result;
      case 5uLL:

        result.n128_u64[0] = sub_27030F5B8(v11, (v11 + 24), v11 + 3, (v11 + 72), (a2 - 24), a3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v14 <= 575)
    {
      if (a5)
      {

        sub_27030F870(v11, a2, a3);
      }

      else
      {

        sub_27030F95C(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        sub_2703101FC(v11, a2, a2, a3, result);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = (v11 + 24 * (v15 >> 1));
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = v18(v17, v11);
      v20 = (*a3)((a2 - 24), v17);
      if (v19)
      {
        if (v20)
        {
          v108 = *(a1 + 16);
          v81 = *a1;
          v21 = *v9;
          *(a1 + 16) = a2[-1].n128_u64[1];
          *a1 = v21;
          goto LABEL_27;
        }

        v114 = *(a1 + 16);
        v87 = *a1;
        v29 = *v17;
        *(a1 + 16) = v17[1].n128_u64[0];
        *a1 = v29;
        v17[1].n128_u64[0] = v114;
        *v17 = v87;
        if ((*a3)((a2 - 24), v17))
        {
          v108 = v17[1].n128_u64[0];
          v81 = *v17;
          v30 = *v9;
          v17[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v17 = v30;
LABEL_27:
          *v9 = v81;
          a2[-1].n128_u64[1] = v108;
        }
      }

      else if (v20)
      {
        v110 = v17[1].n128_u64[0];
        v83 = *v17;
        v25 = *v9;
        v17[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v17 = v25;
        *v9 = v83;
        a2[-1].n128_u64[1] = v110;
        if ((*a3)(v17, a1))
        {
          v111 = *(a1 + 16);
          v84 = *a1;
          v26 = *v17;
          *(a1 + 16) = v17[1].n128_u64[0];
          *a1 = v26;
          v17[1].n128_u64[0] = v111;
          *v17 = v84;
        }
      }

      v31 = a1 + 24 * v16 - 24;
      v32 = (*a3)(v31, (a1 + 24));
      v33 = (*a3)(v79, v31);
      if (v32)
      {
        if (v33)
        {
          v34 = *(a1 + 40);
          v35 = *(a1 + 24);
          v36 = a2[-2].n128_u64[0];
          *(a1 + 24) = *v79;
          *(a1 + 40) = v36;
          *v79 = v35;
          a2[-2].n128_u64[0] = v34;
        }

        else
        {
          v91 = *(a1 + 24);
          v118 = *(a1 + 40);
          v41 = *(a1 + 24 * v16 - 8);
          *(a1 + 24) = *v31;
          *(a1 + 40) = v41;
          *(a1 + 24 * v16 - 8) = v118;
          *v31 = v91;
          if ((*a3)(v79, (a1 + 24 * v16 - 24)))
          {
            v119 = *(a1 + 24 * v16 - 8);
            v92 = *v31;
            v42 = *v79;
            *(a1 + 24 * v16 - 8) = a2[-2].n128_u64[0];
            *v31 = v42;
            *v79 = v92;
            a2[-2].n128_u64[0] = v119;
          }
        }
      }

      else if (v33)
      {
        v115 = *(a1 + 24 * v16 - 8);
        v88 = *v31;
        v37 = *v79;
        *(a1 + 24 * v16 - 8) = a2[-2].n128_u64[0];
        *v31 = v37;
        *v79 = v88;
        a2[-2].n128_u64[0] = v115;
        if ((*a3)((a1 + 24 * v16 - 24), (a1 + 24)))
        {
          v89 = *(a1 + 24);
          v116 = *(a1 + 40);
          v38 = *(a1 + 24 * v16 - 8);
          *(a1 + 24) = *v31;
          *(a1 + 40) = v38;
          *(a1 + 24 * v16 - 8) = v116;
          *v31 = v89;
        }
      }

      v43 = a1 + 24 * v16;
      v44 = (*a3)((v43 + 24), (a1 + 48));
      v45 = (*a3)((a2 - 72), (v43 + 24));
      if (v44)
      {
        if (v45)
        {
          v46 = *(a1 + 64);
          v47 = *(a1 + 48);
          v48 = a2[-4].n128_u64[1];
          *(a1 + 48) = *v10;
          *(a1 + 64) = v48;
          *v10 = v47;
          goto LABEL_47;
        }

        v95 = *(a1 + 48);
        v122 = *(a1 + 64);
        v51 = *(v43 + 40);
        *(a1 + 48) = *(v43 + 24);
        *(a1 + 64) = v51;
        *(v43 + 40) = v122;
        *(v43 + 24) = v95;
        if ((*a3)((a2 - 72), (v43 + 24)))
        {
          v123 = *(v43 + 40);
          v96 = *(v43 + 24);
          v52 = *v10;
          *(v43 + 40) = a2[-4].n128_u64[1];
          *(v43 + 24) = v52;
          *v10 = v96;
          v46 = v123;
LABEL_47:
          a2[-4].n128_u64[1] = v46;
        }
      }

      else if (v45)
      {
        v120 = *(v43 + 40);
        v93 = *(v43 + 24);
        v49 = *v10;
        *(v43 + 40) = a2[-4].n128_u64[1];
        *(v43 + 24) = v49;
        *v10 = v93;
        a2[-4].n128_u64[1] = v120;
        if ((*a3)((v43 + 24), (a1 + 48)))
        {
          v94 = *(a1 + 48);
          v121 = *(a1 + 64);
          v50 = *(v43 + 40);
          *(a1 + 48) = *(v43 + 24);
          *(a1 + 64) = v50;
          *(v43 + 40) = v121;
          *(v43 + 24) = v94;
        }
      }

      v53 = (*a3)(v17, v31);
      v54 = (*a3)((v43 + 24), v17);
      if (v53)
      {
        if (v54)
        {
          v124 = *(v31 + 16);
          v97 = *v31;
          *v31 = *(v43 + 24);
          *(v31 + 16) = *(v43 + 40);
          goto LABEL_56;
        }

        v127 = *(v31 + 16);
        v100 = *v31;
        *v31 = *v17;
        *(v31 + 16) = v17[1].n128_u64[0];
        v17[1].n128_u64[0] = v127;
        *v17 = v100;
        if ((*a3)((v43 + 24), v17))
        {
          v124 = v17[1].n128_u64[0];
          v97 = *v17;
          *v17 = *(v43 + 24);
          v17[1].n128_u64[0] = *(v43 + 40);
LABEL_56:
          *(v43 + 40) = v124;
          *(v43 + 24) = v97;
        }
      }

      else if (v54)
      {
        v125 = v17[1].n128_u64[0];
        v98 = *v17;
        *v17 = *(v43 + 24);
        v17[1].n128_u64[0] = *(v43 + 40);
        *(v43 + 40) = v125;
        *(v43 + 24) = v98;
        if ((*a3)(v17, v31))
        {
          v126 = *(v31 + 16);
          v99 = *v31;
          *v31 = *v17;
          *(v31 + 16) = v17[1].n128_u64[0];
          v17[1].n128_u64[0] = v126;
          *v17 = v99;
        }
      }

      v128 = *(a1 + 16);
      v101 = *a1;
      v55 = *v17;
      *(a1 + 16) = v17[1].n128_u64[0];
      *a1 = v55;
      v17[1].n128_u64[0] = v128;
      *v17 = v101;
      goto LABEL_58;
    }

    v22 = v18(v11, v17);
    v23 = (*a3)((a2 - 24), a1);
    if (v22)
    {
      if (v23)
      {
        v109 = v17[1].n128_u64[0];
        v82 = *v17;
        v24 = *v9;
        v17[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v17 = v24;
LABEL_36:
        *v9 = v82;
        a2[-1].n128_u64[1] = v109;
        goto LABEL_58;
      }

      v117 = v17[1].n128_u64[0];
      v90 = *v17;
      v39 = *a1;
      v17[1].n128_u64[0] = *(a1 + 16);
      *v17 = v39;
      *(a1 + 16) = v117;
      *a1 = v90;
      if ((*a3)((a2 - 24), a1))
      {
        v109 = *(a1 + 16);
        v82 = *a1;
        v40 = *v9;
        *(a1 + 16) = a2[-1].n128_u64[1];
        *a1 = v40;
        goto LABEL_36;
      }
    }

    else if (v23)
    {
      v112 = *(a1 + 16);
      v85 = *a1;
      v27 = *v9;
      *(a1 + 16) = a2[-1].n128_u64[1];
      *a1 = v27;
      *v9 = v85;
      a2[-1].n128_u64[1] = v112;
      if ((*a3)(a1, v17))
      {
        v113 = v17[1].n128_u64[0];
        v86 = *v17;
        v28 = *a1;
        v17[1].n128_u64[0] = *(a1 + 16);
        *v17 = v28;
        *(a1 + 16) = v113;
        *a1 = v86;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 24), a1) & 1) == 0)
    {
      v11 = sub_27030FA2C(a1, a2, a3);
      goto LABEL_65;
    }

    v56 = sub_27030FB8C(a1, a2, a3);
    if ((v57 & 1) == 0)
    {
      goto LABEL_63;
    }

    v58 = sub_27030FCEC(a1, v56, a3);
    v11 = &v56[1].n128_i8[8];
    if (sub_27030FCEC(&v56[1].n128_i64[1], a2, a3))
    {
      a4 = -v13;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v58)
    {
LABEL_63:
      sub_27030E9C8(a1, v56, a3, -v13, a5 & 1);
      v11 = &v56[1].n128_i8[8];
LABEL_65:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 < 2)
  {
    return result;
  }

  if (v15 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)((a2 - 24), v11))
  {
LABEL_76:
    v130 = *(v11 + 2);
    v103 = *v11;
    v64 = *v9;
    *(v11 + 2) = v9[1].n128_u64[0];
    *v11 = v64;
    result = v103;
    *v9 = v103;
    v61 = v130;
    goto LABEL_77;
  }

  return result;
}

__n128 sub_27030F5B8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_i64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_i64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_i64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

uint64_t sub_27030F870(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t sub_27030F95C(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = (*a3)(&v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

__int128 *sub_27030FA2C(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v16 = *a1;
  v17 = *(a1 + 2);
  if ((*a3)(&v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 24);
    }

    while (((*a3)(&v16, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 24);
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v16, v7);
      v7 = (v6 + 24);
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 2);
    v18 = v9;
    v10 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v10;
    v11 = v18;
    *(v4 + 2) = v19;
    *v4 = v11;
    do
    {
      v6 = (v6 + 24);
    }

    while (!(*a3)(&v16, v6));
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  v12 = (v6 - 24);
  if ((v6 - 24) != a1)
  {
    v13 = *v12;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

uint64_t sub_27030FB8C(__int128 *a1, unint64_t a2, uint64_t (**a3)(char *, __int128 *))
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (((*a3)(a1 + v6, &v17) & 1) != 0);
  v7 = a1 + v6;
  v8 = a1 + v6 - 24;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (((*a3)(a2, &v17) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!(*a3)(a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = (a1 + v6);
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 2);
      v12 = v20;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v9 = (v9 + 24);
      }

      while (((*a3)(v9, &v17) & 1) != 0);
      do
      {
        v10 -= 24;
      }

      while (!(*a3)(v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 16);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 16) = v18;
  *v8 = v15;
  return v8;
}

BOOL sub_27030FCEC(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_27030F5B8(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_i64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_2703101FC(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(uint64_t, __int8 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 24 * v11);
      do
      {
        a5 = sub_270310438(v8, a4, v10, v13);
        v13 = (v13 - 24);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if ((*a4)(v14, v8, a5))
        {
          v15 = v14[1].n128_u64[0];
          v16 = *v14;
          v17 = v8[1].n128_u64[0];
          *v14 = *v8;
          v14[1].n128_u64[0] = v17;
          *v8 = v16;
          v8[1].n128_u64[0] = v15;
          a5 = sub_270310438(v8, a4, v10, v8);
        }

        v14 = (v14 + 24);
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v30 = v8;
      do
      {
        v31 = v7;
        v19 = 0;
        v32 = *v8;
        v33 = v8[1].n128_u64[0];
        v20 = v8;
        do
        {
          v21 = v20 + 24 * v19;
          v22 = (v21 + 24);
          v23 = (2 * v19) | 1;
          v24 = 2 * v19 + 2;
          if (v24 < v18)
          {
            v25 = (v21 + 48);
            if ((*a4)((v21 + 24), v21 + 48))
            {
              v22 = v25;
              v23 = v24;
            }
          }

          v26 = *v22;
          v20[1].n128_u64[0] = v22[1].n128_u64[0];
          *v20 = v26;
          v20 = v22;
          v19 = v23;
        }

        while (v23 <= ((v18 - 2) >> 1));
        v7 = (v31 - 24);
        if (v22 == &v31[-2].n128_i8[8])
        {
          v22[1].n128_u64[0] = v33;
          *v22 = v32;
          v8 = v30;
        }

        else
        {
          v27 = *v7;
          v22[1].n128_u64[0] = v31[-1].n128_u64[1];
          *v22 = v27;
          *v7 = v32;
          v31[-1].n128_u64[1] = v33;
          v8 = v30;
          sub_2703105A4(v30, &v22[1].n128_i64[1], a4, 0xAAAAAAAAAAAAAAABLL * ((&v22[1].n128_i64[1] - v30) >> 3));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 sub_270310438(uint64_t a1, unsigned int (**a2)(uint64_t, __int8 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = (a1 + 24 * v12);
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && (*a2)(a1 + 24 * v12, &v13[1].n128_i8[8]))
      {
        v13 = (v13 + 24);
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        do
        {
          v16 = v13;
          v17 = *v13;
          v7[1].n128_u64[0] = v13[1].n128_u64[0];
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = (a1 + 24 * v18);
          v19 = 2 * v12 + 2;
          if (v19 < a3)
          {
            if ((*a2)(a1 + 24 * v18, &v13[1].n128_i8[8]))
            {
              v13 = (v13 + 24);
              v18 = v19;
            }
          }

          v7 = v16;
          v12 = v18;
        }

        while (!(*a2)(v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

double sub_2703105A4(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v17 = v4;
    v18 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 24 * (v6 >> 1));
    v11 = (a2 - 24);
    if ((*a3)(v10, (a2 - 24)))
    {
      v15 = *v11;
      v16 = *(v11 + 2);
      do
      {
        v13 = v10;
        v14 = *v10;
        *(v11 + 2) = *(v10 + 2);
        *v11 = v14;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 24 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, &v15) & 1) != 0);
      result = *&v15;
      *v13 = v15;
      *(v13 + 2) = v16;
    }
  }

  return result;
}

uint64_t sub_270310678(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void sub_2703106C4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_27030E994();
}

float32x2_t *sub_27031070C(void *a1, unint64_t *a2, __n128 a3)
{
  a3.n128_u64[0] = *a2;
  v13 = *a2;
  a3.n128_u32[2] = 0;
  v4 = sub_27030C3CC(a3, 0.000001);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    v8 = v13;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
    v8 = v13;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v10 = i[1];
      if (*&v10 == v4)
      {
        v11 = vsub_f32(i[2], v8);
        if (vaddv_f32(vmul_f32(v11, v11)) < 1.0e-12)
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (*&v10 >= *&v5)
          {
            *&v10 %= *&v5;
          }
        }

        else
        {
          *&v10 &= *&v5 - 1;
        }

        if (*&v10 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

float32x2_t *sub_270310818(void *a1, unint64_t *a2, __n128 a3)
{
  a3.n128_u64[0] = *a2;
  v14 = *a2;
  a3.n128_u32[2] = 0;
  v4 = sub_27030C3CC(a3, 0.000001);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    v8 = v14;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
    v8 = v14;
  }

  v9 = *(*a1 + 8 * v7);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (*&v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (*&v11 >= *&v5)
      {
        *&v11 %= *&v5;
      }
    }

    else
    {
      *&v11 &= *&v5 - 1;
    }

    if (*&v11 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  v12 = vsub_f32(v10[2], v8);
  if (vaddv_f32(vmul_f32(v12, v12)) >= 1.0e-12)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_270310A8C(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      sub_270310B7C(a1, prime);
    }
  }
}

void sub_270310B7C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_27030E994();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_270310CE0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_27030E994();
}

uint64_t sub_270310D28(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_270310DA4(result, a4);
  }

  return result;
}

void sub_270310D88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_270310DA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_270310CE0(a1, a2);
  }

  sub_27030E894();
}

void sub_270310DE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036BE40(a1, (a1 + 32));
    }
  }
}

void sub_270310E24(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = a1 + 24;
    if (*(a1 + 24))
    {
      sub_27036BEC0(*(a1 + 24), v2);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete((*(a1 + 32) - 16));
    }

    *v2 = 0;
    *(v2 + 8) = 0;
  }
}

void *sub_270310E90(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_270310F28(uint64_t a1)
{
  v2 = atomic_load(MEMORY[0x277D86538]);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    *a1 = v3;
    *(a1 + 8) = 2 * (v3 != 0);
    if (v3)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t sub_270310F9C(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 8);
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
    *a1 = 0;
  }

  return a1;
}

void sub_270310FD8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_270310FD8(a1, *a2);
    sub_270310FD8(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_27031102C(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_2703110C8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_2703110C8(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_270311270(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2703112C8(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_2703112C8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_270311464(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_2703114E8(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_2703114E8(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_27031155C(v6, a2);
  return v3;
}

uint64_t *sub_27031155C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void sub_2703118DC(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_270310E24(a1);
    }

    *a1 = 0;
  }
}

void sub_27031192C(unint64_t *a1, unint64_t a2, int **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = a1[4];
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_270310E90(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(v10 + v11) = *(v9 + v11);
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v12 = 0;
            v13 = v7;
            v14 = **a3;
            v15 = (4 * a2 - 4 * v3 - 4) >> 2;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v18 = v7 + v3 + 2;
            do
            {
              v19 = vdupq_n_s64(v12);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_270370ED0)));
              if (vuzp1_s16(v20, *v16.i8).u8[0])
              {
                *(v18 - 2) = v14;
              }

              if (vuzp1_s16(v20, *&v16).i8[2])
              {
                *(v18 - 1) = v14;
              }

              if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_270370EC0)))).i32[1])
              {
                *v18 = v14;
                v18[1] = v14;
              }

              v12 += 4;
              v18 += 4;
            }

            while (v17 != v12);
          }

LABEL_51:
          if (v13 != a1[4])
          {
            sub_270310E24(a1);
            a1[4] = v13;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a1;
      }

      v30 = sub_270310E90(a1, a2);
      v13 = v30;
      if (v3)
      {
        v31 = 4 * v29;
        v32 = v30;
        do
        {
          v33 = *v7;
          v7 = (v7 + 4);
          *v32 = v33;
          v32 = (v32 + 4);
          v31 -= 4;
        }

        while (v31);
      }

      if (v3 < a2)
      {
        v34 = 0;
        v35 = **a3;
        v36 = (4 * a2 - 4 * v3 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = v30 + v3 + 2;
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_270370ED0)));
          if (vuzp1_s16(v41, 2).u8[0])
          {
            *(v39 - 2) = v35;
          }

          if (vuzp1_s16(v41, 2).i8[2])
          {
            *(v39 - 1) = v35;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_270370EC0)))).i32[1])
          {
            *v39 = v35;
            v39[1] = v35;
          }

          v34 += 4;
          v39 += 4;
        }

        while (v38 != v34);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      v13 = sub_270310E90(a1, a2);
      v21 = 0;
      v22 = **a3;
      v23 = (4 * a2 - 4) >> 2;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v26 = v13 + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_270370ED0)));
        if (vuzp1_s16(v28, *v24.i8).u8[0])
        {
          *(v26 - 2) = v22;
        }

        if (vuzp1_s16(v28, *&v24).i8[2])
        {
          *(v26 - 1) = v22;
        }

        if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_270370EC0)))).i32[1])
        {
          *v26 = v22;
          v26[1] = v22;
        }

        v21 += 4;
        v26 += 4;
      }

      while (v25 != v21);
      goto LABEL_51;
    }
  }

  sub_2703118DC(a1);
}

uint64_t sub_270311C98(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 21)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_28803FBC0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270311CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = (~v3 & 3) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 8) = v5;
    if (v5)
    {
      (*(v5 + 40))(a2, a1);
    }
  }

  return a1;
}

uint64_t sub_270311D34(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (*(a1 + 8) & 3) == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_270311DE4(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void sub_270311E40(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (!*(a1 + 24))
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        if (*(a1 + 24))
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        *(v5 + 4 * v4) = *a2;
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_27036BF64(a1, v4, a2);
    goto LABEL_13;
  }

  sub_27036BEE8(a1);
}

void sub_270312068(void *a1, char *a2)
{
  v3 = a1;
  pxrInternal__aapl__pxrReserved__::ArGetResolver(v3);
  v9 = 0;
  v10 = 0;
  if (a2[23] < 0)
  {
    sub_2703129A8(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 2);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v9;
  if (v9)
  {
    v5 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v3[2];
    v3[1] = v4;
    v3[2] = v5;
    if (v6)
    {
      sub_270312A4C(v6);
      v4 = v9;
    }

    v3[5] = (*(*v4 + 16))(v4);
  }

  else
  {
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    NSLog(&cfstr_WarningUnableT.isa, a2);
  }

  if (v10)
  {
    sub_270312A4C(v10);
  }
}

void sub_270312290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_2703122D4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_270312990();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_2703124D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (*(v20 - 33) < 0)
  {
    operator delete(*(v20 - 56));
  }

  _Unwind_Resume(a1);
}

id sub_270312588(id *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_v6ugBY-l5sUVfK5EJf9R7tbqpF46xGwO4Ng7I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    sub_270312AE8("/AppleInternal/Library/BuildRoots/4~B_v6ugBY-l5sUVfK5EJf9R7tbqpF46xGwO4Ng7I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2Fu);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return [(USKResource *)v3 resourceWithPath:v4, v5];
  }

  return result;
}

void sub_2703126B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2703127B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_2703129A8(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_270312990();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_270312A4C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

unint64_t sub_270312AE8(unint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a2)
  {
    if (a2 != result)
    {
      v3 = (a2 - 1);
      if (a2 - 1 > result)
      {
        while (*v3 != a3)
        {
          if (--v3 == result)
          {
            goto LABEL_8;
          }
        }

        result = v3;
      }
    }

LABEL_8:
    ++result;
  }

  return result;
}

uint64_t sub_270312BD4(uint64_t a1, uint64_t a2, double a3)
{
  v5[0] = a2;
  *&v5[1] = a3;
  v3 = *(a1 + 120);
  if (v3 == -1)
  {
    sub_270314688();
  }

  v6 = v5;
  return (*(&off_28803FBE8 + v3))(&v6, a1);
}

void *sub_270312D2C(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    if (a2[1])
    {
      v10 = 0;
      v11 = 0;
      sub_270311CD0(&v10, a1);
      v4 = a2[1];
      v5 = ~*(a2 + 2);
      a1[1] = v4;
      if ((v5 & 3) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, a1);
      }

      else
      {
        *a1 = *a2;
      }

      a2[1] = 0;
      if (v11)
      {
        (*(v11 + 32))(&v10);
      }
    }

    else
    {
      v6 = a1[1];
      if (v6)
      {
        v7 = (a1[1] & 3) == 3;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
      }

      a1[1] = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_270312E20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_27030E880(a1);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_2703139B4(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 10)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827B0]))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

void sub_270313AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_270313B0C(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (sub_2703159A0(a1))
  {
    v4 = sub_2703159D8(a1);
    v5 = *(v4 + 8);
    *a2 = *v4;
    *(a2 + 8) = v5;
    v6 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FCB0, v8))
    {
      v14 = 0;
      v15 = 0;
      v9 = sub_270315A6C(a1);
      sub_270313C14(&v14, v9);
      v6 = v15 != 0;
      if (v15)
      {
        v10 = sub_2703159D8(&v14);
        v11 = *v10;
        *(a2 + 8) = *(v10 + 8);
        *a2 = v11;
      }

      sub_270311D34(&v14);
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270313BF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void *sub_270313C14(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  if (a2[1])
  {
    v8 = 0;
    v9 = 0;
    sub_270311CD0(&v8, a1);
    v4 = a2[1];
    v5 = ~*(a2 + 2);
    a1[1] = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, a1);
    }

    else
    {
      *a1 = *a2;
    }

    if (v9)
    {
      (*(v9 + 32))(&v8);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_270313CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_270313DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_270313DC0(pxrInternal__aapl__pxrReserved__::VtValue *a1, _OWORD *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (sub_270315AF8(a1))
  {
    v4 = sub_270315B7C(a1);
    v5 = v4[1];
    *a2 = *v4;
    a2[1] = v5;
    v6 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FF08, v8))
    {
      v14 = 0;
      v15 = 0;
      v9 = sub_270315C10(a1);
      sub_270313C14(&v14, v9);
      v6 = v15 != 0;
      if (v15)
      {
        v10 = sub_270315B7C(&v14);
        v11 = v10[1];
        *a2 = *v10;
        a2[1] = v11;
      }

      sub_270311D34(&v14);
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_270313E9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_270313F58(pxrInternal__aapl__pxrReserved__::VtValue *a1, _OWORD *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (sub_270315D0C(a1))
  {
    v4 = sub_270315D44(a1);
    v5 = v4[3];
    v7 = *v4;
    v6 = v4[1];
    a2[2] = v4[2];
    a2[3] = v5;
    *a2 = v7;
    a2[1] = v6;
    v8 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FF18, v10))
    {
      v18 = 0;
      v19 = 0;
      v11 = sub_270315DD8(a1);
      sub_270313C14(&v18, v11);
      v8 = v19 != 0;
      if (v19)
      {
        v12 = sub_270315D44(&v18);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[3];
        a2[2] = v12[2];
        a2[3] = v15;
        *a2 = v13;
        a2[1] = v14;
      }

      sub_270311D34(&v18);
    }

    else
    {
      v8 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_270314044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_270314128(pxrInternal__aapl__pxrReserved__::UsdGeomXformOp *a1)
{
  if (*(a1 + 132) == 1)
  {
    v4[1] = "usdGeom/xformOp.h";
    v4[2] = "Set";
    v4[3] = 406;
    v4[4] = "BOOL pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::Set(const T &, UsdTimeCode) const [T = pxrInternal__aapl__pxrReserved__::VtValue]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::GetOpName(v4, a1);
    v1 = v4[0] & 0xFFFFFFFFFFFFFFF8;
    if ((v4[0] & 0xFFFFFFFFFFFFFFF8) != 0 && *(v1 + 39) < 0)
    {
      v2 = *(v1 + 16);
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
    if ((v4[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v4[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    return 0;
  }

  else
  {
    sub_270315E64(a1);

    return pxrInternal__aapl__pxrReserved__::UsdAttribute::Set();
  }
}

uint64_t sub_270314308(uint64_t result)
{
  v1 = result;
  v2 = *(result + 120);
  if (v2 != -1)
  {
    result = (off_28803FBD8[v2])(&v3, result);
  }

  *(v1 + 120) = -1;
  return result;
}

uint64_t sub_270314360(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a2 + 16);
  result = *(a2 + 8);
  if (result)
  {

    return sub_270314574(result);
  }

  return result;
}

uint64_t sub_2703143D8(uint64_t a1)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr();
    if ((atomic_fetch_add((Ptr + 8), 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
    {
      sub_270314430(Ptr);
    }
  }

  return a1;
}

unsigned __int8 *sub_270314430(unsigned __int8 *result)
{
  v1 = result[14];
  if (v1 > 3)
  {
    if (result[14] <= 5u)
    {
      if (v1 == 4)
      {
        v2 = MEMORY[0x27439E310]();
      }

      else
      {
        if (v1 != 5)
        {
          return result;
        }

        v2 = MEMORY[0x27439E300]();
      }
    }

    else
    {
      switch(v1)
      {
        case 6u:
          v2 = MEMORY[0x27439E4E0]();
          break;
        case 7u:
          v2 = MEMORY[0x27439E380]();
          break;
        case 8u:
          v2 = MEMORY[0x27439E3B0]();
          break;
        default:
          return result;
      }
    }

    goto LABEL_24;
  }

  if (result[14] > 1u)
  {
    if (v1 != 2)
    {
      if (v1 != 3)
      {
        return result;
      }

      v2 = MEMORY[0x27439E400]();
LABEL_24:

      return MEMORY[0x282206558](v2);
    }

    v3 = MEMORY[0x27439E4A0]();
  }

  else if (result[14])
  {
    v3 = MEMORY[0x27439E220]();
  }

  else
  {
    v3 = sub_270314514(result);
  }

  return MEMORY[0x282206550](v3);
}

pxrInternal__aapl__pxrReserved__::Sdf_PathNode *sub_270314514(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  if ((*(this + 2) & 0x80000000) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_RemovePathTokenFromTable(this);
  }

  if (*this && (atomic_fetch_add((*this + 8), 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
  {
    sub_270314430();
  }

  return this;
}

uint64_t sub_270314574(uint64_t result)
{
  add_explicit = atomic_fetch_add_explicit((result + 48), 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  if (result && add_explicit == 1)
  {
    MEMORY[0x27439E080](result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void *sub_2703145C8(void *a1)
{
  v4 = a1[14];
  v2 = a1 + 14;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_270314630(v2, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_27036C158(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8((a1 + 2));
  v5 = a1[1];
  if (v5)
  {
    sub_270314574(v5);
  }

  return a1;
}

void sub_270314630(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_270312A4C(v2);
    }

    JUMPOUT(0x27439F3D0);
  }
}

void sub_270314688()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::exception::~exception);
}

uint64_t sub_2703146D8(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  return pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
}

void sub_2703146F0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  JUMPOUT(0x27439ED60);
}

uint64_t *sub_270314708(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 12), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_270314724(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 12), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void *sub_27031475C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_270314774(float **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_27031497C(v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_2703147CC(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2];
}

void sub_27031490C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_28803FBF8 + 2;
  operator new();
}

uint64_t sub_27031497C(uint64_t a1, float *a2, float *a3, float *a4)
{
  v4 = *a2;
  if (*a2 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = LODWORD(v4);
  if (*(a1 + 8))
  {
    v5 = ((*a1 + LODWORD(v4) + (*a1 + LODWORD(v4)) * (*a1 + LODWORD(v4))) >> 1) + LODWORD(v4);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_2703149C8(a1, a3, a4);
}

uint64_t sub_2703149C8(uint64_t result, float *a2, float *a3)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = LODWORD(v3);
  if (*(result + 8))
  {
    v4 = ((*result + LODWORD(v3) + (*result + LODWORD(v3)) * (*result + LODWORD(v3))) >> 1) + LODWORD(v3);
  }

  else
  {
    *(result + 8) = 1;
  }

  v5 = *a3;
  if (*a3 == 0.0)
  {
    v5 = 0.0;
  }

  *result = LODWORD(v5) + ((v4 + LODWORD(v5) + (v4 + LODWORD(v5)) * (v4 + LODWORD(v5))) >> 1);
  return result;
}

uint64_t sub_270314A28(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 12));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

float sub_270314AE0(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_270314AF0(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_270314B04(float *a1)
{
  v1 = *a1;
  if (*a1 == 0.0)
  {
    v1 = 0.0;
  }

  return bswap64(0x9E3779B97F4A7C55 * LODWORD(v1));
}

float sub_270314C0C@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_28803FCC3;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t *sub_270314C28(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_270314C44(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void *sub_270314C7C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_270314C94(float **a1)
{
  v1 = *a1;
  v3 = *(*a1 + 3);
  v4[0] = 0;
  v4[1] = 0;
  sub_270314EB4(v4, &v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4[0]));
}

BOOL sub_270314CF0(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return (*a1)[3] == (*a2)[3] && *v2 == *v3 && v2[1] == v3[1] && v2[2] == v3[2];
}

void sub_270314E50(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_28803FD78;
  operator new();
}

uint64_t sub_270314EB4(uint64_t a1, float *a2, float *a3)
{
  v4 = *a2;
  if (*a2 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = LODWORD(v4);
  if (*(a1 + 8))
  {
    v5 = ((*a1 + LODWORD(v4) + (*a1 + LODWORD(v4)) * (*a1 + LODWORD(v4))) >> 1) + LODWORD(v4);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  v8[0] = 0;
  v8[1] = 0;
  result = sub_27031497C(v8, a3, a3 + 1, a3 + 2);
  v7 = bswap64(0x9E3779B97F4A7C55 * v8[0]);
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_270314F7C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 16));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *sub_27031502C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 128), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_270315048(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 128), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void *sub_270315080(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_270315098(double **a1)
{
  v1 = *a1;
  v2 = *a1 + 7;
  v3 = *a1 + 8;
  v4 = *a1 + 9;
  v5 = *a1 + 10;
  v6 = *a1 + 11;
  v7 = *a1 + 12;
  v8 = *a1 + 13;
  v9 = *a1 + 14;
  v10 = *a1 + 15;
  v12[0] = 0;
  v12[1] = 0;
  sub_270315288(v12, v1, v1 + 1, v1 + 2, v1 + 3, v1 + 4, v1 + 5, v1 + 6, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12[0]));
}

uint64_t sub_270315138(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==();
}

void sub_270315208(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_28803FE40 + 2;
  operator new();
}

uint64_t sub_270315288(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14, double *a15, double *a16, double *a17)
{
  v17 = *a2;
  if (*a2 == 0.0)
  {
    v17 = 0.0;
  }

  v18 = v17;
  if (*(a1 + 8))
  {
    *&v18 = *&v17 + ((*a1 + *&v17 + (*a1 + *&v17) * (*a1 + *&v17)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v18;
  return sub_270315308(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_270315308(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14, double *a15, double *a16)
{
  v16 = *a2;
  if (*a2 == 0.0)
  {
    v16 = 0.0;
  }

  v17 = v16;
  if (*(a1 + 8))
  {
    *&v17 = *&v16 + ((*a1 + *&v16 + (*a1 + *&v16) * (*a1 + *&v16)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v17;
  return sub_270315384(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_270315384(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14, double *a15)
{
  v15 = *a2;
  if (*a2 == 0.0)
  {
    v15 = 0.0;
  }

  v16 = v15;
  if (*(a1 + 8))
  {
    *&v16 = *&v15 + ((*a1 + *&v15 + (*a1 + *&v15) * (*a1 + *&v15)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v16;
  return sub_2703153FC(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_2703153FC(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14)
{
  v14 = *a2;
  if (*a2 == 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14;
  if (*(a1 + 8))
  {
    *&v15 = *&v14 + ((*a1 + *&v14 + (*a1 + *&v14) * (*a1 + *&v14)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v15;
  return sub_270315470(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_270315470(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13)
{
  v13 = *a2;
  if (*a2 == 0.0)
  {
    v13 = 0.0;
  }

  v14 = v13;
  if (*(a1 + 8))
  {
    *&v14 = *&v13 + ((*a1 + *&v13 + (*a1 + *&v13) * (*a1 + *&v13)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v14;
  return sub_2703154E0(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_2703154E0(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12)
{
  v12 = *a2;
  if (*a2 == 0.0)
  {
    v12 = 0.0;
  }

  v13 = v12;
  if (*(a1 + 8))
  {
    *&v13 = *&v12 + ((*a1 + *&v12 + (*a1 + *&v12) * (*a1 + *&v12)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return sub_27031554C(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_27031554C(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11)
{
  v11 = *a2;
  if (*a2 == 0.0)
  {
    v11 = 0.0;
  }

  v12 = v11;
  if (*(a1 + 8))
  {
    *&v12 = *&v11 + ((*a1 + *&v11 + (*a1 + *&v11) * (*a1 + *&v11)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return sub_2703155B4(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_2703155B4(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10)
{
  v10 = *a2;
  if (*a2 == 0.0)
  {
    v10 = 0.0;
  }

  v11 = v10;
  if (*(a1 + 8))
  {
    *&v11 = *&v10 + ((*a1 + *&v10 + (*a1 + *&v10) * (*a1 + *&v10)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return sub_270315618(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_270315618(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9)
{
  v9 = *a2;
  if (*a2 == 0.0)
  {
    v9 = 0.0;
  }

  v10 = v9;
  if (*(a1 + 8))
  {
    *&v10 = *&v9 + ((*a1 + *&v9 + (*a1 + *&v9) * (*a1 + *&v9)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return sub_270315678(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_270315678(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8)
{
  v8 = *a2;
  if (*a2 == 0.0)
  {
    v8 = 0.0;
  }

  v9 = v8;
  if (*(a1 + 8))
  {
    *&v9 = *&v8 + ((*a1 + *&v8 + (*a1 + *&v8) * (*a1 + *&v8)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_2703156D0(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_2703156D0(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7)
{
  v7 = *a2;
  if (*a2 == 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  if (*(a1 + 8))
  {
    *&v8 = *&v7 + ((*a1 + *&v7 + (*a1 + *&v7) * (*a1 + *&v7)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_270315724(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_270315724(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  v6 = *a2;
  if (*a2 == 0.0)
  {
    v6 = 0.0;
  }

  v7 = v6;
  if (*(a1 + 8))
  {
    *&v7 = *&v6 + ((*a1 + *&v6 + (*a1 + *&v6) * (*a1 + *&v6)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_270315774(a1, a3, a4, a5, a6);
}

uint64_t sub_270315774(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = *a2;
  if (*a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = v5;
  if (*(a1 + 8))
  {
    *&v6 = *&v5 + ((*a1 + *&v5 + (*a1 + *&v5) * (*a1 + *&v5)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_2703157C0(a1, a3, a4, a5);
}

uint64_t sub_2703157C0(uint64_t a1, double *a2, double *a3, double *a4)
{
  v4 = *a2;
  if (*a2 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = v4;
  if (*(a1 + 8))
  {
    *&v5 = *&v4 + ((*a1 + *&v4 + (*a1 + *&v4) * (*a1 + *&v4)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_270315808(a1, a3, a4);
}

uint64_t sub_270315808(uint64_t result, double *a2, double *a3)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = v3;
  if (*(result + 8))
  {
    *&v4 = *&v3 + ((*result + *&v3 + (*result + *&v3) * (*result + *&v3)) >> 1);
  }

  else
  {
    *(result + 8) = 1;
  }

  v5 = *a3;
  if (*a3 == 0.0)
  {
    v5 = 0.0;
  }

  *result = *&v5 + ((*&v4 + *&v5 + (*&v4 + *&v5) * (*&v4 + *&v5)) >> 1);
  return result;
}

uint64_t sub_270315864(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 128));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t sub_270315984(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_2703159A0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 68)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_28803FCB0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2703159D8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_2703159A0(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_270315A6C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_2703159A0(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_28803FCB0, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270315AF8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__10GfRotationE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_28803FF08);
}

uint64_t sub_270315B7C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270315AF8(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_270315C10(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270315AF8(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_28803FF08, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270315CF0(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270315D0C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 73)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_28803FF18);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270315D44(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270315D0C(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_270315DD8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270315D0C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_28803FF18, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270315E64(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 == -1)
  {
    sub_270314688();
  }

  v4 = &v3;
  return (off_28803FF28[v1])(&v4, a1);
}

uint64_t sub_270315ED4(uint64_t a1)
{
  v2 = *(a1 + 72);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 56);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270310E24(a1 + 16);

  return sub_270311D34(a1);
}

uint64_t sub_270315F44(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v23 = (a1 + 8);
  if (*(a1 + 16) == v3)
  {
    goto LABEL_9;
  }

  v21 = a2;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 1;
  do
  {
    MEMORY[0x27439E610](v24, "normals");
    v9 = *(v3 + 88 * v5 + 56);
    v10 = v24[0];
    if ((v24[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v24[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v8 &= (v10 ^ v9) > 7;
    if ((v10 ^ v9) <= 7)
    {
      v6 = v7 - 1;
    }

    v5 = v7;
    v3 = *(a1 + 8);
  }

  while (0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - v3) >> 3) > v7++);
  a2 = v21;
  if (v8)
  {
LABEL_9:
    v31[0] = 0;
    v31[1] = 0;
    sub_270316334(v31, a2);
    sub_270313C14(v24, v31);
    v12 = *(a3 + 16);
    v25 = *a3;
    v26 = v12;
    v13 = *(a3 + 32);
    v27 = v13;
    if (v13)
    {
      v14 = (v13 - 16);
      if (*(&v26 + 1))
      {
        v14 = *(&v26 + 1);
      }

      atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
    }

    MEMORY[0x27439E610](v28, "normals");
    v15 = atomic_load(MEMORY[0x277D86578]);
    if (!v15)
    {
      v15 = sub_270318AF4(MEMORY[0x277D86578]);
    }

    v28[1] = *(v15 + 77);
    MEMORY[0x27439E610](&v29, "faceVarying");
    v30 = 1;
    sub_2703163EC(v23, v24);
    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v28[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v28[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270310E24(&v25);
    sub_270311D34(v24);
    result = sub_270311D34(v31);
  }

  else
  {
    sub_270316334((v3 + 88 * v6), v21);
    sub_27030E0C8(*v23 + 88 * v6 + 16, a3);
    MEMORY[0x27439E610](v24, "normals");
    v17 = (*v23 + 88 * v6 + 56);
    if (v24 == v17)
    {
      if ((v24[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v24[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v17 = v24[0];
    }

    v18 = atomic_load(MEMORY[0x277D86578]);
    if (!v18)
    {
      v18 = sub_270318AF4(MEMORY[0x277D86578]);
    }

    *(*v23 + 88 * v6 + 64) = *(v18 + 77);
    result = MEMORY[0x27439E610](v24, "faceVarying");
    v19 = (*v23 + 88 * v6 + 72);
    if (v24 == v19)
    {
      if ((v24[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v24[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v19 = v24[0];
    }

    *(*v23 + 88 * v6 + 80) = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2703162B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_270316334(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_270311C98(a1) & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_270318444(a1);
  }

  v4 = sub_270318AB8(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_2703163EC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_270318C7C(a1, a2);
  }

  else
  {
    sub_270318B4C(a1, a2);
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

void sub_27031642C(uint64_t a1, int a2)
{
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_27030E054(v58, *(a1 + 72));
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v4 = sub_27030E788(*(a1 + 8));
  v5 = 1.0;
  if (a2)
  {
    v5 = -1.0;
  }

  v53 = v5;
  v6 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_43;
  }

  if (!atomic_load(v6))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_43:
    if (*(a1 + 32))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = *(*(a1 + 64) + 4 * v11);
        if (v14)
        {
          v15 = v14 - 1;
          v16 = *(a1 + 104);
          v17 = *(v4 + 32);
          v18.i64[0] = 0;
          v18.i32[2] = 0;
          v19 = 1.0;
          v20 = 1;
          v21 = v14;
          v22 = v13;
          do
          {
            if (v21 == 1)
            {
              v23 = 0;
            }

            else
            {
              v23 = v20;
            }

            v24 = v17 + 12 * *(v16 + 4 * v22);
            v9.i64[0] = *v24;
            v9.i32[2] = *(v24 + 8);
            v25 = v17 + 12 * *(v16 + 4 * (v15 % v14 + v13));
            v8.i64[0] = *v25;
            v8.i32[2] = *(v25 + 8);
            v26 = vsubq_f32(v8, v9);
            v27 = vmulq_f32(v26, v26);
            v28 = v27.f32[2] + vaddv_f32(*v27.f32);
            v8 = 0uLL;
            if (v28 > COERCE_FLOAT(512))
            {
              v29 = v28;
              v30 = vrsqrte_f32(LODWORD(v28));
              v31 = vmul_f32(v30, vrsqrts_f32(LODWORD(v29), vmul_f32(v30, v30)));
              v8 = vmulq_n_f32(v26, vmul_f32(v31, vrsqrts_f32(LODWORD(v29), vmul_f32(v31, v31))).f32[0]);
            }

            v32 = v17 + 12 * *(v16 + 4 * (v23 + v13));
            v26.i64[0] = *v32;
            v26.i32[2] = *(v32 + 8);
            v33 = vsubq_f32(v26, v9);
            v34 = vmulq_f32(v33, v33);
            v35 = v34.f32[2] + vaddv_f32(*v34.f32);
            v36 = 0uLL;
            if (v35 > COERCE_FLOAT(512))
            {
              v37 = v35;
              v38 = vrsqrte_f32(LODWORD(v35));
              v39 = vmul_f32(v38, vrsqrts_f32(LODWORD(v37), vmul_f32(v38, v38)));
              v36 = vmulq_n_f32(v33, vmul_f32(v39, vrsqrts_f32(LODWORD(v37), vmul_f32(v39, v39))).f32[0]);
            }

            v9 = vmulq_f32(v8, v8);
            if (sqrtf(v9.f32[2] + vaddv_f32(*v9.f32)) != 0.0)
            {
              v40 = vmulq_f32(v36, v36);
              v41 = sqrtf(v40.f32[2] + vaddv_f32(*v40.f32)) == 0.0;
              v9 = vmulq_f32(v8, v36);
              v9.f32[0] = fabsf(v9.f32[2] + vaddv_f32(*v9.f32));
              if (!v41 && v9.f32[0] < v19)
              {
                v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vnegq_f32(v36)), v8, vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL));
                v44 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), v53);
                v18 = vmulq_f32(v44, v44);
                v45 = v18.f32[2] + vaddv_f32(*v18.f32);
                v18.i64[0] = 0;
                v18.i32[2] = 0;
                if (v45 > COERCE_FLOAT(512))
                {
                  v46 = v45;
                  v47 = vrsqrte_f32(LODWORD(v45));
                  v48 = vmul_f32(v47, vrsqrts_f32(LODWORD(v46), vmul_f32(v47, v47)));
                  v18 = vmulq_n_f32(v44, vmul_f32(v48, vrsqrts_f32(LODWORD(v46), vmul_f32(v48, v48))).f32[0]);
                }

                v19 = v9.f32[0];
              }
            }

            ++v15;
            ++v22;
            ++v20;
            --v21;
          }

          while (v21);
        }

        else
        {
          v18.i64[0] = 0;
          v18.i32[2] = 0;
        }

        v54 = v18.i64[0];
        v55 = v18.i32[2];
        sub_270319230(v56, &v54);
        v49 = v14;
        v50 = v13;
        if (v14)
        {
          do
          {
            sub_270310DE0(v58);
            *(v59 + 4 * v50++) = v12;
            --v49;
          }

          while (v49);
        }

        v13 += v14;
        v11 = ++v12;
      }

      while (*(a1 + 32) > v12);
    }

    sub_270315F44(a1, v56, v58);
  }

  else
  {
    v51 = *a1 & 0xFFFFFFFFFFFFFFF8;
    if (v51)
    {
      v52 = (v51 + 16);
      if (*(v51 + 39) < 0)
      {
        v52 = *v52;
      }
    }

    else
    {
      v52 = "";
    }

    printf("Mesh %s does contain valid position data. Skipping normal computation.\n", v52);
  }

  sub_270310E24(v56);
  sub_270310E24(v58);
}

void sub_2703167F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_270310E24(va);
  sub_270310E24(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_270316834(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 8);
  if (*(v2 + 32) <= a2)
  {
    sub_27036C200();
  }

  return *(*(v2 + 64) + 4 * a2);
}

float sub_270316864(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = *(*(a1 + 8) + 8);
  v6 = *(sub_27030E788(*(v5 + 8)) + 32) + 12 * *(*(v5 + 104) + 4 * (3 * a3 + a4));
  *a2 = *v6;
  *(a2 + 4) = *(v6 + 4);
  result = *(v6 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2703168D8(uint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = *(result + 8);
  v6 = *(v5 + 4);
  if (v6 == -1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    return result;
  }

  v9 = *(v5 + 8);
  v10 = sub_27030E788((*(v9 + 8) + 88 * v6));
  v11 = (*(v9 + 8) + 88 * v6);
  v12 = v11[9];
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v12 &= 0xFFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x27439E610](&v21, "faceVarying");
  v13 = v12 ^ v21;
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = (3 * a3 + a4);
  if (v13 <= 7)
  {
    if (!v11[2])
    {
      v18 = (*(v10 + 32) + 12 * v14);
      goto LABEL_29;
    }

    LODWORD(v15) = *(v11[6] + 4 * v14);
    goto LABEL_21;
  }

  result = MEMORY[0x27439E610](&v21, "vertex");
  v16 = v12 ^ v21;
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v16 <= 7)
  {
    v15 = *(*(v9 + 104) + 4 * v14);
    if (!v11[2])
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  result = MEMORY[0x27439E610](&v21, "uniform");
  v17 = v12 ^ v21;
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v17 <= 7)
  {
    v15 = v14 / 3uLL;
    if (!v11[2])
    {
      v18 = (*(v10 + 32) + 12 * v15);
      goto LABEL_29;
    }

LABEL_20:
    LODWORD(v15) = *(v11[6] + 4 * v15);
LABEL_21:
    v18 = (*(v10 + 32) + 12 * v15);
    goto LABEL_29;
  }

  result = MEMORY[0x27439E610](&v21, "constant");
  v19 = v12 ^ v21;
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v19 > 7)
  {
    *a2 = 0;
    v20 = 0;
    goto LABEL_30;
  }

  v18 = *(v10 + 32);
LABEL_29:
  *a2 = *v18;
  *(a2 + 4) = v18[1];
  v20 = v18[2];
LABEL_30:
  *(a2 + 8) = v20;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_270316B08(_Unwind_Exception *a1)
{
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_270316B2C(uint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = *(result + 8);
  v6 = *v5;
  if (*v5 == -1)
  {
    *a2 = 0;
    return result;
  }

  v9 = *(v5 + 1);
  v10 = sub_270316D54((*(v9 + 8) + 88 * v6));
  v11 = (*(v9 + 8) + 88 * v6);
  v12 = v11[9];
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v12 &= 0xFFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x27439E610](&v21, "faceVarying");
  v13 = v12 ^ v21;
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = (3 * a3 + a4);
  if (v13 <= 7)
  {
    if (!v11[2])
    {
      v18 = (*(v10 + 32) + 8 * v14);
      goto LABEL_27;
    }

    v15 = *(v11[6] + 4 * v14);
LABEL_21:
    v18 = (*(v10 + 32) + 8 * v15);
LABEL_27:
    *a2 = *v18;
    v20 = v18[1];
    goto LABEL_28;
  }

  result = MEMORY[0x27439E610](&v21, "vertex");
  v16 = v12 ^ v21;
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v16 <= 7)
  {
    v15 = *(*(v9 + 104) + 4 * v14);
    goto LABEL_19;
  }

  result = MEMORY[0x27439E610](&v21, "uniform");
  v17 = v12 ^ v21;
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v17 <= 7)
  {
    v15 = v14 / 3uLL;
LABEL_19:
    if (v11[2])
    {
      v15 = *(v11[6] + 4 * v15);
    }

    goto LABEL_21;
  }

  result = MEMORY[0x27439E610](&v21, "constant");
  v19 = v12 ^ v21;
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v19 <= 7)
  {
    v18 = *(v10 + 32);
    goto LABEL_27;
  }

  *a2 = 0;
  v20 = 0;
LABEL_28:
  *(a2 + 4) = v20;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_270316D30(_Unwind_Exception *a1)
{
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_270316D54(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_28803FFF0))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

void sub_270316E10(uint64_t a1, int *a2, int a3, int a4, float a5)
{
  v7 = *(a1 + 8);
  v8 = 3 * a3 + a4;
  v9 = *a2;
  sub_270319444((v7 + 16));
  *(*(v7 + 48) + 16 * v8) = v9;
  v10 = a2[1];
  sub_270319444((v7 + 16));
  *(*(v7 + 48) + 16 * v8 + 4) = v10;
  v11 = a2[2];
  sub_270319444((v7 + 16));
  *(*(v7 + 48) + 16 * v8 + 8) = v11;
  sub_270319444((v7 + 16));
  *(*(v7 + 48) + 16 * v8 + 12) = a5;
}

void sub_270316EAC(uint64_t a1, int *a2, int *a3, int a4, int a5, int a6)
{
  v9 = *(a1 + 8);
  v10 = (3 * a5 + a6);
  v11 = *a2;
  sub_270319444((v9 + 2));
  *(v9[6] + 16 * v10) = v11;
  v12 = a2[1];
  sub_270319444((v9 + 2));
  *(v9[6] + 16 * v10 + 4) = v12;
  v13 = a2[2];
  sub_270319444((v9 + 2));
  *(v9[6] + 16 * v10 + 8) = v13;
  if (a4)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = -1.0;
  }

  sub_270319444((v9 + 2));
  *(v9[6] + 16 * v10 + 12) = v14;
  v15 = *a3;
  sub_27031951C((v9 + 7));
  v16 = v10 + 2 * v10;
  *(v9[11] + 4 * v16) = v15;
  v17 = a3[1];
  sub_27031951C((v9 + 7));
  *(v9[11] + 4 * v16 + 4) = v17;
  v18 = a3[2];
  sub_27031951C((v9 + 7));
  *(v9[11] + 4 * v16 + 8) = v18;
}

uint64_t sub_270316FAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = -1;
  v5 = *(a2 + 8);
  if (*(a2 + 16) == v5)
  {
    if (*(a1 + 4) != -1)
    {
LABEL_51:
      v26 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v26)
      {
        v27 = (v26 + 16);
        if (*(v26 + 39) < 0)
        {
          v27 = *v27;
        }
      }

      else
      {
        v27 = "";
      }

      NSLog(&cfstr_MeshSDoesNotCo_0.isa, v27);
      return 0;
    }

LABEL_54:
    v28 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v28)
    {
      v29 = (v28 + 16);
      if (*(v28 + 39) < 0)
      {
        v29 = *v29;
      }
    }

    else
    {
      v29 = "";
    }

    NSLog(&cfstr_MeshSDoesNotCo.isa, v29);
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = -1;
  do
  {
    v10 = v5 + 88 * v7;
    MEMORY[0x27439E610](&v30, "normals");
    v11 = v30;
    if ((v30 ^ *(v10 + 56)) >= 8)
    {
      v13 = *(a2 + 8);
      MEMORY[0x27439E610](&v33, "primvars:normals");
      v12 = (v33 ^ *(v13 + 88 * v7 + 56)) < 8;
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v30;
    }

    else
    {
      v12 = 1;
    }

    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v12)
    {
      *(a1 + 4) = v8;
      goto LABEL_32;
    }

    v14 = *(a2 + 8);
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_270318AF4(MEMORY[0x277D86578]);
    }

    if ((pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) == 0)
    {
      v16 = *(a2 + 8);
      if (!atomic_load(MEMORY[0x277D86578]))
      {
        sub_270318AF4(MEMORY[0x277D86578]);
      }

      if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        goto LABEL_32;
      }
    }

    if (v9 == -1)
    {
      v9 = v8;
    }

    v18 = *(a2 + 8) + 88 * v7;
    MEMORY[0x27439E620](&v30, a3);
    if ((v30 ^ *(v18 + 56)) < 8)
    {
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_31:
      *a1 = v8;
      goto LABEL_32;
    }

    if (*(a3 + 23) < 0)
    {
      if (a3[1])
      {
LABEL_25:
        v19 = 0;
        goto LABEL_28;
      }
    }

    else if (*(a3 + 23))
    {
      goto LABEL_25;
    }

    v19 = 1;
LABEL_28:
    if ((v30 & 7) != 0)
    {
      atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v19)
    {
      goto LABEL_31;
    }

LABEL_32:
    v5 = *(a2 + 8);
    v7 = ++v8;
  }

  while (0x2E8BA2E8BA2E8BA3 * ((*(a2 + 16) - v5) >> 3) > v8);
  v20 = *a1;
  if (*a1 == -1 && v9 != -1)
  {
    v21 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v21)
    {
      v22 = (v21 + 16);
      if (*(v21 + 39) < 0)
      {
        v22 = *v22;
      }
    }

    else
    {
      v22 = "";
    }

    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    NSLog(&cfstr_WarningMeshSUn.isa, v22, a3);
    *a1 = v9;
    v20 = v9;
  }

  if (*(a1 + 4) == -1)
  {
    goto LABEL_54;
  }

  if (v20 == -1)
  {
    goto LABEL_51;
  }

  sub_2703173C4(&v30, *(a2 + 72));
  if ((a1 + 16) != &v30)
  {
    sub_270310E24(a1 + 16);
    v23 = v31;
    *(a1 + 16) = v30;
    *(a1 + 32) = v23;
    v30 = 0u;
    v31 = 0u;
    *(a1 + 48) = v32;
    v32 = 0;
  }

  sub_270310E24(&v30);
  sub_270317438(&v30, *(a2 + 72));
  if ((a1 + 56) != &v30)
  {
    sub_270310E24(a1 + 56);
    v24 = v31;
    *(a1 + 56) = v30;
    *(a1 + 72) = v24;
    v30 = 0u;
    v31 = 0u;
    *(a1 + 88) = v32;
    v32 = 0;
  }

  sub_270310E24(&v30);
  *(a1 + 8) = a2;
  return 1;
}

void sub_270317370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_270310E24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2703173C4(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5[0] = 0;
  v5[1] = 0;
  sub_2703118DC(a1);
  v6 = v5;
  sub_270319560(a1, a2, &v6);
  return a1;
}

uint64_t sub_270317438(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  sub_2703118DC(a1);
  v7 = &v5;
  sub_270319728(a1, a2, &v7);
  return a1;
}

void sub_2703174B0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v46 = a4;
  v10 = *(a2 + 8);
  v9 = (a2 + 8);
  if (*(a2 + 16) == v10)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
  }

  else
  {
    v11 = 0;
    v12 = -1;
    v13 = 1;
    do
    {
      v14 = v8;
      v18 = objc_msgSend_UTF8String(v8, v15, v16, v17);
      MEMORY[0x27439E610](v50, v18);
      v19 = *(v10 + 88 * v11 + 56);
      v20 = v50[0];
      if ((v50[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v50[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v20 ^ v19) < 8)
      {
        v12 = v13 - 1;
      }

      v11 = v13;
      v10 = *(a2 + 8);
    }

    while (0x2E8BA2E8BA2E8BA3 * ((*(a2 + 16) - v10) >> 3) > v13++);
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    if (v12 != -1)
    {
      sub_2703178C8((v10 + 88 * v12), a1);
      sub_27030E0C8(*v9 + 88 * v12 + 16, &v47);
      v22 = v8;
      v26 = objc_msgSend_UTF8String(v8, v23, v24, v25);
      MEMORY[0x27439E610](v50, v26);
      v27 = (*v9 + 88 * v12 + 56);
      if (v50 == v27)
      {
        if ((v50[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v50[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v27 = v50[0];
      }

      *(*v9 + 88 * v12 + 64) = a5;
      v38 = v46;
      v42 = objc_msgSend_UTF8String(v46, v39, v40, v41);
      MEMORY[0x27439E610](v50, v42);
      v43 = (*v9 + 88 * v12 + 72);
      if (v50 == v43)
      {
        if ((v50[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v50[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v43 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v43 = v50[0];
      }

      *(*v9 + 88 * v12 + 80) = 1;
      goto LABEL_28;
    }
  }

  sub_270313C14(v50, a1);
  v51[0] = v47;
  v51[1] = v48;
  v52 = v49;
  v28 = v8;
  v32 = objc_msgSend_UTF8String(v8, v29, v30, v31);
  MEMORY[0x27439E610](v53, v32);
  v53[1] = a5;
  v33 = v46;
  v37 = objc_msgSend_UTF8String(v46, v34, v35, v36);
  MEMORY[0x27439E610](&v54, v37);
  v55 = 1;
  sub_2703163EC(v9, v50);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v53[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v53[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270310E24(v51);
  sub_270311D34(v50);
LABEL_28:
  sub_270310E24(&v47);

  v44 = *MEMORY[0x277D85DE8];
}

void sub_270317828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, ...)
{
  va_start(va, a5);
  sub_270310E24(va);

  _Unwind_Resume(a1);
}

void *sub_2703178C8(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_270311CD0(&v16, &v14);
    v4 = a1[1];
    v5 = ~*(a1 + 2);
    v15 = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a1, &v14);
    }

    else
    {
      v14 = *a1;
    }

    a1[1] = 0;
    if (v17)
    {
      (*(v17 + 32))(&v16);
    }

    v6 = a2 + 1;
    if (!a2[1])
    {
      v9 = a1[1];
      if (v9 && (a1[1] & 3) != 3)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
      }

      a1[1] = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v6 = a2 + 1;
    if (!a2[1])
    {
      goto LABEL_30;
    }

    v14 = 0;
    v15 = 0;
  }

  v16 = 0;
  v17 = 0;
  sub_270311CD0(&v16, a1);
  v7 = *v6;
  v8 = ~*v6;
  a1[1] = *v6;
  if ((v8 & 3) != 0)
  {
    (*((v7 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, a1);
  }

  else
  {
    *a1 = *a2;
  }

  *v6 = 0;
  if (v17)
  {
    (*(v17 + 32))(&v16);
  }

LABEL_19:
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    sub_270311CD0(&v16, a2);
    v10 = v15;
    v11 = ~v15;
    *v6 = v15;
    if ((v11 & 3) != 0)
    {
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(&v14, a2);
    }

    else
    {
      *a2 = v14;
    }

    v15 = 0;
    if (v17)
    {
      (*(v17 + 32))(&v16);
    }
  }

  else
  {
    if (*v6 && (*v6 & 3) != 3)
    {
      (*((*v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
    }

    *v6 = 0;
  }

  sub_270311D34(&v14);
LABEL_30:
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_270317AD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_27030E880(a1);
  }

  _Unwind_Resume(a1);
}

void sub_270317B1C(void *a1, int a2, uint64_t a3, float a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  if (*(a3 + 23) < 0)
  {
    sub_2703129A8(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v25 = *(a3 + 16);
  }

  v7 = sub_270316FAC(&v26, a1, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    *&v28 = sub_270316824;
    *(&v28 + 1) = sub_270316834;
    *&v29 = sub_270316864;
    *(&v29 + 1) = sub_2703168D8;
    *&v30 = sub_270316B2C;
    if (a2)
    {
      v8 = sub_270316E10;
    }

    else
    {
      v8 = 0;
    }

    if (a2)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_270316EAC;
    }

    *(&v30 + 1) = v8;
    v31 = v9;
    v23[0] = &v28;
    v23[1] = &v26;
    v10 = 3.1416;
    if (a4 <= 3.1416)
    {
      v10 = a4;
    }

    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    if (sub_270359344(v23, v10) == 1)
    {
      if (a2)
      {
        v33 = &off_288040008;
        sub_270318A3C();
      }

      v22 = 0;
      memset(v21, 0, sizeof(v21));
      sub_270317438(v21, *&v27[0]);
      if (*&v27[0])
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        do
        {
          sub_270319444(v27);
          v16 = *(*&v27[2] + v14);
          sub_270319444(v27);
          v17 = *(*&v27[2] + v14 + 4);
          sub_270319444(v27);
          v18 = *(*&v27[2] + v14 + 8);
          sub_27031951C(v21);
          v19 = (v22 + v13);
          *v19 = v16;
          v19[1] = v17;
          v19[2] = v18;
          ++v15;
          v14 += 16;
          v13 += 12;
        }

        while (*&v27[0] > v15);
      }

      v32 = &off_28803FF38;
      sub_270318A3C();
    }

    v11 = *a1 & 0xFFFFFFFFFFFFFFF8;
    if (v11)
    {
      v12 = (v11 + 16);
      if (*(v11 + 39) < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "";
    }

    NSLog(&cfstr_FailedToGenera.isa, v12);
  }

  sub_270310E24(&v27[2] + 8);
  sub_270310E24(v27);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_270317EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_270317F54(uint64_t result, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(result + 8))
  {
    v3 = result;
    v9 = 0;
    v10 = 0;
    result = sub_270311CD0(&v9, a2);
    v4 = v3[1];
    v5 = ~*(v3 + 2);
    a2[1] = v4;
    if ((v5 & 3) != 0)
    {
      result = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(v3, a2);
    }

    else
    {
      *a2 = *v3;
    }

    v3[1] = 0;
    if (v10)
    {
      result = (*(v10 + 32))(&v9);
    }
  }

  else
  {
    v6 = a2[1];
    if (v6)
    {
      v7 = (a2[1] & 3) == 3;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      result = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
    }

    a2[1] = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27031803C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_27030E880(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_270318054(uint64_t a1)
{
  sub_270310E24(a1 + 56);
  sub_270310E24(a1 + 16);
  return a1;
}

void sub_270318090(void *a1)
{
  v1 = **a1;
  *a1 += 4;
  JUMPOUT(0x27439F2E0);
}

void *sub_2703180A8(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x27439F2B0](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_270318254(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x27439F2C0](v13);
  return a1;
}

void sub_2703181EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x27439F2C0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2703181CCLL);
}

uint64_t sub_270318254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_270312990();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_270318428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_270318444(uint64_t a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_270311CD0(v2, a1);
  *(a1 + 8) = &off_28803FF38;
  sub_270318A3C();
}

void sub_2703184DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_270318518(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_270318538(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27031871C(result);
}

unint64_t sub_270318550(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_27031497C(v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_270318610(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_270318704(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_28803FF38;
  sub_270318A3C();
}

uint64_t *sub_27031871C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_270310E24(v1);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

BOOL sub_270318794(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_27031885C(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_27031885C(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_27031885C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    if (*(a1 + 12))
    {
      v7 = *(a1 + 16) ? 4 : 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = (a2 + 8);
  if (*(a2 + 8))
  {
    if (*(a2 + 12))
    {
      v9 = *(a2 + 16) ? 4 : 3;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (v5)
  {
    if (*(a1 + 12))
    {
      v10 = *(a1 + 16) == 0;
      v11 = 3;
      if (!v10)
      {
        v11 = 4;
      }
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 1;
  }

  return memcmp(v4, v8, 4 * v11 - 4) == 0;
}

uint64_t sub_270318940(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_270318A24(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 12;
  return MEMORY[0x282206CE8](a2, v3);
}

uint64_t sub_270318AB8(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_27036C22C(v2, a1);
  }

  return sub_270318940(a1);
}

pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType *sub_270318AF4(atomic_ullong *a1)
{
  result = MEMORY[0x27439E3C0]();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::~Sdf_ValueTypeNamesType(result);
      MEMORY[0x27439F3D0]();
    }

    return atomic_load(a1);
  }

  return result;
}

double sub_270318B4C(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  *(v4 + 8) = 0;
  if (*(a2 + 8))
  {
    v10 = 0;
    v11 = 0;
    sub_270311CD0(&v10, v4);
    v5 = *(a2 + 8);
    v6 = ~*(a2 + 8);
    *(v4 + 8) = v5;
    if ((v6 & 3) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, v4);
    }

    else
    {
      *v4 = *a2;
    }

    *(a2 + 8) = 0;
    if (v11)
    {
      (*(v11 + 32))(&v10);
    }
  }

  v7 = *(a2 + 32);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 32) = v7;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(v4 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(v4 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(v4 + 80) = *(a2 + 80);
  *(a1 + 8) = v4 + 88;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_270318C64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_27030E880(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_270318C7C(uint64_t *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_27030E894();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    sub_270318EB0(a1, v6);
  }

  v7 = 88 * v2;
  v20 = 0;
  v21 = v7;
  v22 = v7;
  *(v7 + 8) = 0;
  v8 = v7;
  v9 = v7;
  if (*(a2 + 8))
  {
    v24 = 0;
    v25 = 0;
    sub_270311CD0(&v24, v7);
    v10 = *(a2 + 8);
    v11 = ~*(a2 + 8);
    *(v7 + 8) = v10;
    if ((v11 & 3) != 0)
    {
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, v7);
    }

    else
    {
      *v7 = *a2;
    }

    *(a2 + 8) = 0;
    if (v25)
    {
      (*(v25 + 32))(&v24);
    }

    v8 = v21;
    v9 = v22;
  }

  v12 = *(a2 + 32);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 32) = v12;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(v7 + 80) = *(a2 + 80);
  *&v22 = v9 + 88;
  v13 = a1[1];
  v14 = v8 + *a1 - v13;
  sub_270318F0C(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v15;
  *(&v22 + 1) = v16;
  v20 = v15;
  v21 = v15;
  sub_270319174(&v20);
  v17 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_270318E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_270318EB0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_27030E994();
}

uint64_t sub_270318F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 == a3)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_270313C14(v4, v8);
      v9 = *(v8 + 32);
      *(v4 + 16) = *(v8 + 16);
      *(v4 + 32) = v9;
      v10 = *(v8 + 48);
      *(v4 + 48) = v10;
      if (v10)
      {
        v11 = (v10 - 16);
        if (*(v4 + 40))
        {
          v11 = *(v4 + 40);
        }

        atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
      }

      v12 = *(v8 + 56);
      *(v4 + 56) = v12;
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(v4 + 56) &= 0xFFFFFFFFFFFFFFF8;
      }

      *(v4 + 64) = *(v8 + 64);
      v13 = *(v8 + 72);
      *(v4 + 72) = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(v4 + 72) &= 0xFFFFFFFFFFFFFFF8;
      }

      *(v4 + 80) = *(v8 + 80);
      v8 += 88;
      v4 = v18 + 88;
      v18 += 88;
    }

    while (v8 != a3);
    LOBYTE(v16) = 1;
    while (v6 != a3)
    {
      sub_270319078(a1, v6);
      v6 += 88;
    }
  }

  return sub_2703190E8(v15);
}

uint64_t sub_270319078(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a2 + 56);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270310E24(a2 + 16);

  return sub_270311D34(a2);
}

uint64_t sub_2703190E8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_270319120(a1);
  }

  return a1;
}

uint64_t *sub_270319120(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 88;
      result = sub_270319078(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_270319174(uint64_t a1)
{
  sub_2703191AC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2703191AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 88;
    result = sub_270319078(v5, v4 - 88);
  }

  return result;
}

uint64_t sub_2703191F4(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 8);
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
    *a1 = 0;
  }

  return a1;
}

void sub_270319230(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (!*(a1 + 24))
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        if (*(a1 + 24))
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        v9 = *a2;
        v10 = v5 + 12 * v4;
        *(v10 + 8) = *(a2 + 8);
        *v10 = v9;
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_27036C334(a1, v4, a2);
    goto LABEL_13;
  }

  sub_27036C2B8(a1);
}

void *sub_2703192E8(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0xAAAAAAAAAAAAAA9)
  {
    v3 = -1;
  }

  else
  {
    v3 = 12 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_2703193E8(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void sub_270319444(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    if (*(a1 + 3) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C3D0(a1, a1 + 4);
    }
  }
}

void *sub_270319488(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void sub_27031951C(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    if (*(a1 + 3) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C444(a1, a1 + 4);
    }
  }
}

void sub_270319560(unint64_t *a1, unint64_t a2, _OWORD **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_270319488(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *&v10[v11] = *(v9 + v11 * 8);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = *a3;
            v13 = 2 * v3;
            do
            {
              *&v7[v13] = *v12;
              v13 += 2;
            }

            while (2 * a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_270319488(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 16 * v19;
        v22 = v20;
        do
        {
          v23 = *v7;
          v7 += 2;
          *v22 = v23;
          v22 += 2;
          v21 -= 16;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = 2 * v3;
        do
        {
          *&v20[v25] = *v24;
          v25 += 2;
        }

        while (2 * a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      v16 = sub_270319488(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        *&v16[v17 / 8] = *v18;
        v17 += 16;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_270310E24(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_2703118DC(a1);
}

void sub_270319728(unint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_2703192E8(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = v10 + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 8);
                  *v12 = v13;
                  v11 += 12;
                }

                while (12 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 12 * v3;
            do
            {
              v16 = v7 + v15;
              v17 = *v14;
              *(v16 + 2) = *(v14 + 2);
              *v16 = v17;
              v15 += 12;
            }

            while (12 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = sub_2703192E8(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 12 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          *(v27 + 2) = *(v7 + 2);
          *v27 = v28;
          v27 = (v27 + 12);
          v7 = (v7 + 12);
          v26 -= 12;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 12 * v3;
        do
        {
          v31 = v25 + v30;
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          v30 += 12;
        }

        while (12 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0x1555555555555556)
    {
      v19 = sub_2703192E8(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = v19 + v20;
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v20 += 12;
      }

      while (12 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_270310E24(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_2703118DC(a1);
}

uint64_t *sub_270319954(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_270319974(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_270319B5C(result);
}

unint64_t sub_27031998C(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_270319BD4(v7, v2, v2 + 1, v2 + 2, v2 + 3);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 4;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_270319A50(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_270319B44(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288040008;
  sub_270318A3C();
}

uint64_t *sub_270319B5C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_270310E24(v1);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270319BD4(uint64_t a1, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *a2;
  if (*a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = LODWORD(v5);
  if (*(a1 + 8))
  {
    v6 = ((*a1 + LODWORD(v5) + (*a1 + LODWORD(v5)) * (*a1 + LODWORD(v5))) >> 1) + LODWORD(v5);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_27031497C(a1, a3, a4, a5);
}

BOOL sub_270319C24(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_27031885C(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_27031885C(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[4 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2] && v5[3] == i[3]; i += 4)
  {
    v5 += 4;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_270319CF8(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t *sub_270319D78()
{
  v2 = *v0;
  v3 = *v1;
  return v1;
}

void sub_270319D8C()
{
  v2 = *v1;
  *(v0 + 8) = *(v1 + 2);
  *v0 = v2;
}

void sub_27031A190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *sub_27031A1C0(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    if (a2[1])
    {
      v8 = 0;
      v9 = 0;
      sub_270311CD0(&v8, a1);
      v4 = a2[1];
      v5 = ~*(a2 + 2);
      a1[1] = v4;
      if ((v5 & 3) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, a1);
      }

      else
      {
        *a1 = *a2;
      }

      if (v9)
      {
        (*(v9 + 32))(&v8);
      }
    }

    else
    {
      sub_27036C4B4(a1);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27031A290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_27031A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_27031A518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_27031A658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_27031A838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_27031A88C(pxrInternal__aapl__pxrReserved__::VtValue *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_270325BE0(a1))
  {
    v4 = sub_270325C18(a1);
    sub_270325CAC(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2880400E8, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_270325D00(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_270325C18(&v12);
        sub_270325CAC(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031A970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031ACE0(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  *(v24 - 56) = &__p;
  sub_270325B58((v24 - 56));
  sub_27032558C(&a9, MEMORY[0x277D82818]);
  MEMORY[0x27439F390](va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27031AD44(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_270325E18((a1 + 3), 24);
  return a1;
}

void sub_27031AFC0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x27439F390](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27031AFE8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270325FDC(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

uint64_t sub_27031B07C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16vectorIN32pxrInternal__aapl__pxrReserved__7SdfPathENS_9allocatorIS2_EEEE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040108))
    {
      v2 = *(a1 + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *a1;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

void sub_27031B1F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031B214(pxrInternal__aapl__pxrReserved__::VtValue *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (sub_270326248(a1))
  {
    *a2 = *sub_2703262CC(a1);
    v4 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040118, v6))
    {
      v10 = 0;
      v11 = 0;
      v7 = sub_270326360(a1);
      sub_270313C14(&v10, v7);
      v4 = v11 != 0;
      if (v11)
      {
        *a2 = *sub_2703262CC(&v10);
      }

      sub_270311D34(&v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27031B2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031B390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031B3AC(pxrInternal__aapl__pxrReserved__::VtValue *a1, _BYTE *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (sub_270326460(a1))
  {
    *a2 = *sub_270326494(a1);
    v4 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D82798], v6))
    {
      v10 = 0;
      v11 = 0;
      v7 = sub_270326528(a1);
      sub_270313C14(&v10, v7);
      v4 = v11 != 0;
      if (v11)
      {
        *a2 = *sub_270326494(&v10);
      }

      sub_270311D34(&v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27031B488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031B52C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031B548(pxrInternal__aapl__pxrReserved__::VtValue *a1, _DWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (sub_270326628(a1))
  {
    *a2 = *sub_270326660(a1);
    v4 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C0], v6))
    {
      v10 = 0;
      v11 = 0;
      v7 = sub_2703266F4(a1);
      sub_270313C14(&v10, v7);
      v4 = v11 != 0;
      if (v11)
      {
        *a2 = *sub_270326660(&v10);
      }

      sub_270311D34(&v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27031B624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031B6C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031B6E4(pxrInternal__aapl__pxrReserved__::VtValue *a1, _DWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (sub_2703267F4(a1))
  {
    *a2 = *sub_27032682C(a1);
    v4 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C8], v6))
    {
      v10 = 0;
      v11 = 0;
      v7 = sub_2703268C0(a1);
      sub_270313C14(&v10, v7);
      v4 = v11 != 0;
      if (v11)
      {
        *a2 = *sub_27032682C(&v10);
      }

      sub_270311D34(&v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27031B7C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031B868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031B884(pxrInternal__aapl__pxrReserved__::VtValue *a1, _DWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (sub_2703269C0(a1))
  {
    *a2 = *sub_2703139B4(a1);
    v4 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827B0], v6))
    {
      v10 = 0;
      v11 = 0;
      v7 = sub_2703269F8(a1);
      sub_270313C14(&v10, v7);
      v4 = v11 != 0;
      if (v11)
      {
        *a2 = *sub_2703139B4(&v10);
      }

      sub_270311D34(&v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27031B960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031BA0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031BA28(pxrInternal__aapl__pxrReserved__::VtValue *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (sub_270326A84(a1))
  {
    *a2 = *sub_270326ABC(a1);
    v4 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040128, v6))
    {
      v10 = 0;
      v11 = 0;
      v7 = sub_270326B50(a1);
      sub_270313C14(&v10, v7);
      v4 = v11 != 0;
      if (v11)
      {
        *a2 = *sub_270326ABC(&v10);
      }

      sub_270311D34(&v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27031BB04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031BBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031BC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031BC80(pxrInternal__aapl__pxrReserved__::VtValue *a1, _OWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (sub_270326BDC(a1))
  {
    *a2 = *sub_270326C14(a1);
    v4 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2880400D8, v6))
    {
      v10 = 0;
      v11 = 0;
      v7 = sub_270326CA8(a1);
      sub_270313C14(&v10, v7);
      v4 = v11 != 0;
      if (v11)
      {
        *a2 = *sub_270326C14(&v10);
      }

      sub_270311D34(&v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27031BD5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031BE90(pxrInternal__aapl__pxrReserved__::VtValue *a1, _OWORD *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (sub_270326D34(a1))
  {
    v4 = sub_270326D6C(a1);
    v5 = v4[3];
    v7 = *v4;
    v6 = v4[1];
    a2[2] = v4[2];
    a2[3] = v5;
    *a2 = v7;
    a2[1] = v6;
    v8 = v4[7];
    v10 = v4[4];
    v9 = v4[5];
    a2[6] = v4[6];
    a2[7] = v8;
    a2[4] = v10;
    a2[5] = v9;
    v11 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FEF8, v13))
    {
      v24 = 0;
      v25 = 0;
      v14 = sub_270326E00(a1);
      sub_270313C14(&v24, v14);
      v11 = v25 != 0;
      if (v25)
      {
        v15 = sub_270326D6C(&v24);
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[3];
        a2[2] = v15[2];
        a2[3] = v18;
        *a2 = v16;
        a2[1] = v17;
        v19 = v15[4];
        v20 = v15[5];
        v21 = v15[7];
        a2[6] = v15[6];
        a2[7] = v21;
        a2[4] = v19;
        a2[5] = v20;
      }

      sub_270311D34(&v24);
    }

    else
    {
      v11 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}