void sub_2991A7508(int a1, float32x4_t *a2, float32x4_t *a3)
{
  if ((atomic_load_explicit(&qword_2A145FCA0, memory_order_acquire) & 1) == 0)
  {
    v38 = a3;
    v39 = a2;
    v40 = a1;
    sub_2991A7E04();
    a1 = v40;
    a2 = v39;
    a3 = v38;
  }

  if ((atomic_load_explicit(&qword_2A145FCA8, memory_order_acquire) & 1) == 0)
  {
    v41 = a3;
    v42 = a2;
    v43 = a1;
    sub_2991A7E5C();
    a1 = v43;
    a2 = v42;
    a3 = v41;
  }

  v3 = a1 + 3;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  if (a1 < 4)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = (v3 >> 2);
    v5 = vdupq_n_s32(0x42B0C0A5u);
    v6 = vdupq_n_s32(0xC2B0C0A5);
    v8 = xmmword_2A145FCC0;
    v7 = *algn_2A145FCD0;
    v9 = vdupq_n_s32(0x3FB8AA3Bu);
    v10.i64[0] = 0x3F0000003F000000;
    v10.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V6.4S, #1.0 }

    v16 = vdupq_n_s32(0xBF318000);
    v17 = vdupq_n_s32(0x395E8083u);
    v18 = vdupq_n_s32(0x39506967u);
    v19 = vdupq_n_s32(0x3AB743CEu);
    v20 = vdupq_n_s32(0x3C088908u);
    v21 = vdupq_n_s32(0x3D2AA9C1u);
    v22 = vdupq_n_s32(0x3E2AAAAAu);
    v23 = v4;
    v24 = a2;
    v25 = a3;
    do
    {
      v26 = *v24++;
      v27 = vmaxq_f32(vminq_f32(vmulq_f32(v7, vnegq_f32(v26)), v5), v6);
      v28.i64[0] = 0x3F0000003F000000;
      v28.i64[1] = 0x3F0000003F000000;
      v29 = vmlaq_f32(v28, v9, v27);
      v30 = vcvtq_f32_s32(vcvtq_s32_f32(v29));
      v31 = vsubq_f32(v30, vandq_s8(_Q6, vcgtq_f32(v30, v29)));
      v32 = vaddq_f32(vmulq_f32(v31, v17), vaddq_f32(v27, vmulq_f32(v31, v16)));
      *v25 = vmulq_f32(*v25, vsubq_f32(vdivq_f32(v7, vaddq_f32(v8, vmulq_f32(vaddq_f32(vaddq_f32(v32, vmulq_f32(vmulq_f32(v32, v32), vaddq_f32(vmulq_f32(v32, vaddq_f32(vmulq_f32(v32, vaddq_f32(vmulq_f32(v32, vaddq_f32(vmulq_f32(v32, vaddq_f32(vmulq_f32(v32, v18), v19)), v20)), v21)), v22)), v10))), _Q6), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v31), 0x17uLL), _Q6)))), v8));
      ++v25;
      --v23;
    }

    while (v23);
  }

  if (a1 > 4 * v4)
  {
    f32 = a2[v4].f32;
    v34 = a3[v4].f32;
    v35 = a1 - 4 * v4;
    do
    {
      v36 = *v34;
      v37 = *f32++;
      *v34++ = v36 * tanhf(v37);
      --v35;
    }

    while (v35);
  }
}

void sub_2991A7728(int a1, float32x4_t *a2)
{
  if ((atomic_load_explicit(qword_2A145FCB0, memory_order_acquire) & 1) == 0)
  {
    v31 = a2;
    v32 = a1;
    sub_2991A7EB4();
    a1 = v32;
    a2 = v31;
  }

  v2 = a1 + 3;
  if (a1 >= 0)
  {
    v2 = a1;
  }

  if (a1 < 4)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = (v2 >> 2);
    v4 = xmmword_2A145FCE0;
    v5 = vdupq_n_s32(0x42B0C0A5u);
    v6 = vdupq_n_s32(0xC2B0C0A5);
    v7 = vdupq_n_s32(0x3FB8AA3Bu);
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9 = vdupq_n_s32(0xBF318000);
    v10 = vdupq_n_s32(0x395E8083u);
    v11 = vdupq_n_s32(0x39506967u);
    v12 = vdupq_n_s32(0x3AB743CEu);
    v13 = vdupq_n_s32(0x3C088908u);
    v14 = vdupq_n_s32(0x3D2AA9C1u);
    __asm { FMOV            V19.4S, #1.0 }

    v20 = vdupq_n_s32(0x3E2AAAAAu);
    v21 = v3;
    v22 = a2;
    do
    {
      v23 = vmaxq_f32(vminq_f32(vnegq_f32(*v22), v5), v6);
      v24.i64[0] = 0x3F0000003F000000;
      v24.i64[1] = 0x3F0000003F000000;
      v25 = vmlaq_f32(v24, v7, v23);
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
      v27 = vsubq_f32(v26, vandq_s8(_Q19, vcgtq_f32(v26, v25)));
      v28 = vaddq_f32(vmulq_f32(v27, v10), vaddq_f32(v23, vmulq_f32(v27, v9)));
      *v22++ = vdivq_f32(v4, vaddq_f32(v4, vmulq_f32(vaddq_f32(vaddq_f32(v28, vmulq_f32(vmulq_f32(v28, v28), vaddq_f32(vmulq_f32(v28, vaddq_f32(vmulq_f32(v28, vaddq_f32(vmulq_f32(v28, vaddq_f32(vmulq_f32(v28, vaddq_f32(vmulq_f32(v28, v11), v12)), v13)), v14)), v20)), v8))), _Q19), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v27), 0x17uLL), _Q19))));
      --v21;
    }

    while (v21);
  }

  if (a1 > 4 * v3)
  {
    f32 = a2[v3].f32;
    v30 = a1 - 4 * v3;
    do
    {
      *f32 = 1.0 / (expf(-*f32) + 1.0);
      ++f32;
      --v30;
    }

    while (v30);
  }
}

uint64_t sub_2991A79EC@<X0>(uint64_t result@<X0>, int a2@<W1>, float32x4_t *a3@<X2>, int a4@<W8>)
{
  if (result >= 1)
  {
    v5 = 0;
    v6 = (a2 / 4);
    v47 = a4 & 0xFFFFFFFC;
    v7 = vdupq_n_s32(0x42B0C0A5u);
    v8 = vdupq_n_s32(0xC2B0C0A5);
    v9 = vdupq_n_s32(0x3FB8AA3Bu);
    v10.i64[0] = 0x3F0000003F000000;
    v10.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V18.4S, #1.0 }

    v16 = result;
    v17 = vdupq_n_s32(0xBF318000);
    v18 = a2;
    v19 = vdupq_n_s32(0x395E8083u);
    v20 = vdupq_n_s32(0x39506967u);
    v21 = vdupq_n_s32(0x3AB743CEu);
    v22 = vdupq_n_s32(0x3C088908u);
    v23 = vdupq_n_s32(0x3D2AA9C1u);
    v24 = vdupq_n_s32(0x3E2AAAAAu);
    v57 = v8;
    v58 = v7;
    v55 = _Q18;
    v56 = v9;
    v53 = v19;
    v54 = v17;
    v51 = v21;
    v52 = v20;
    v49 = v23;
    v50 = v22;
    v48 = v24;
    do
    {
      if (a2 < 4)
      {
        LODWORD(v30) = 0;
        v26.i64[0] = 0x80000000800000;
        v26.i64[1] = 0x80000000800000;
      }

      else
      {
        v26.i64[0] = 0x80000000800000;
        v26.i64[1] = 0x80000000800000;
        v27 = v6;
        v28 = a3;
        do
        {
          v29 = *v28++;
          v26 = vmaxq_f32(v29, v26);
          --v27;
        }

        while (v27);
        LODWORD(v30) = v47;
      }

      v31 = 0;
      v59[0] = v26;
      v32 = -3.4028e38;
      do
      {
        if (*(v59 + v31) >= v32)
        {
          v32 = *(v59 + v31);
        }

        v31 += 4;
      }

      while (v31 != 16);
      if (v30 < a2)
      {
        v30 = v30;
        do
        {
          if (a3->f32[v30] >= v32)
          {
            v32 = a3->f32[v30];
          }

          ++v30;
        }

        while (a2 != v30);
      }

      if (a2 < 4)
      {
        v43 = 0;
        v35 = 0uLL;
      }

      else
      {
        v33 = 0;
        v26.f32[0] = -v32;
        v34 = vdupq_lane_s32(*v26.f32, 0);
        v35 = 0uLL;
        do
        {
          v36 = vmaxq_f32(vminq_f32(vaddq_f32(v34, a3[v33]), v7), v8);
          v37.i64[0] = 0x3F0000003F000000;
          v37.i64[1] = 0x3F0000003F000000;
          v38 = vmlaq_f32(v37, v9, v36);
          v39 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
          v40 = vsubq_f32(v39, vandq_s8(_Q18, vcgtq_f32(v39, v38)));
          v41 = vaddq_f32(vmulq_f32(v40, v19), vaddq_f32(v36, vmulq_f32(v40, v17)));
          v42 = vmulq_f32(vaddq_f32(vaddq_f32(v41, vmulq_f32(vmulq_f32(v41, v41), vaddq_f32(vmulq_f32(v41, vaddq_f32(vmulq_f32(v41, vaddq_f32(vmulq_f32(v41, vaddq_f32(vmulq_f32(v41, vaddq_f32(vmulq_f32(v41, v20), v21)), v22)), v23)), v24)), v10))), _Q18), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v40), 0x17uLL), _Q18));
          a3[v33] = v42;
          v35 = vaddq_f32(v35, v42);
          ++v33;
        }

        while (v6 != v33);
        v43 = v6;
      }

      v44 = (((v35.f32[0] + 0.0) + v35.f32[1]) + v35.f32[2]) + v35.f32[3];
      if (a2 > (4 * v43))
      {
        v45 = 4 * v43;
        do
        {
          v46 = expf(a3->f32[v45] - v32);
          a3->f32[v45] = v46;
          v44 = v44 + v46;
          ++v45;
        }

        while (v18 != v45);
      }

      result = cblas_sscal_NEWLAPACK();
      ++v5;
      a3 = (a3 + 4 * a2);
      v8 = v57;
      v7 = v58;
      _Q18 = v55;
      v9 = v56;
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v19 = v53;
      v17 = v54;
      v21 = v51;
      v20 = v52;
      v23 = v49;
      v22 = v50;
      v24 = v48;
    }

    while (v5 != v16);
  }

  return result;
}

uint64_t sub_2991A7CF8(uint64_t result, int a2, uint64_t a3)
{
  if (result >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = result;
    v8 = a2;
    do
    {
      if (a2 >= 1)
      {
        v9 = (a3 + 4 * v5);
        v10 = v8;
        v11 = 0.000001;
        do
        {
          v12 = *v9++;
          v11 = v11 + v12;
          --v10;
        }

        while (v10);
      }

      result = cblas_sscal_NEWLAPACK();
      ++v6;
      v5 += a2;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t sub_2991A7DB8(unsigned int a1, float *a2)
{
  v2 = a2;
  if (a1 >= 2)
  {
    v3 = a2 + 1;
    v4 = *a2;
    v5 = 4 * a1 - 4;
    v2 = a2;
    v6 = a2 + 1;
    do
    {
      v7 = *v6++;
      v8 = v7;
      if (v4 < v7)
      {
        v4 = v8;
        v2 = v3;
      }

      v3 = v6;
      v5 -= 4;
    }

    while (v5);
  }

  return v2 - a2;
}

void sub_2991A7E04()
{
  if (__cxa_guard_acquire(&qword_2A145FCA0))
  {
    __asm { FMOV            V0.4S, #1.0 }

    xmmword_2A145FCC0 = _Q0;

    __cxa_guard_release(&qword_2A145FCA0);
  }
}

void sub_2991A7E5C()
{
  if (__cxa_guard_acquire(&qword_2A145FCA8))
  {
    *&v0 = 0x4000000040000000;
    *(&v0 + 1) = 0x4000000040000000;
    *algn_2A145FCD0 = v0;

    __cxa_guard_release(&qword_2A145FCA8);
  }
}

void sub_2991A7EB4()
{
  if (__cxa_guard_acquire(qword_2A145FCB0))
  {
    __asm { FMOV            V0.4S, #1.0 }

    xmmword_2A145FCE0 = _Q0;

    __cxa_guard_release(qword_2A145FCB0);
  }
}

uint64_t sub_2991A7F10(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      operator new();
    }

    if (a1 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!a1)
    {
      operator new();
    }

    if (a1 == 1)
    {
      operator new();
    }
  }

  return v1;
}

void sub_2991A8054(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_2A1F623B0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  operator new();
}

void sub_2991A80F4(uint64_t a1)
{
  sub_2991A8574(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991A812C(uint64_t a1, const char *a2)
{
  v3 = sub_2991A89A8(*(a1 + 40), a2);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = *v4;
    v6 = v4[1];

    sub_2991A8A40(a1, v5);
  }

  sub_2991A84D8(v4);
  return 0;
}

void sub_2991A818C(uint64_t a1, int a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_2991A926C(v2, a2);
  }
}

void sub_2991A819C(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 144);
  if (!v4)
  {
    v5 = (*a2)[1] - **a2;
    sub_2991A95D8();
  }

  v6 = *(v4 + 8);

  sub_2991A97F0(a1, a2, v6, a3);
}

void sub_2991A8214(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v7 = sub_2991A8310(a1, a2, a3);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v7)
  {
    sub_2991B6CFC(a4, (a2[1] - *a2) >> 2);
    if (a2[1] != *a2)
    {
      v8 = 0;
      do
      {
        v9 = (*(*a3 + 40))(a3, v8);
        if (v10)
        {
          v11 = sub_2991A7DB8(v10, v9);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        sub_2992141C0(a4, &v12);
        ++v8;
      }

      while (v8 < (a2[1] - *a2) >> 2);
    }
  }
}

void sub_2991A82EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991A8310(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2[1] == *a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    sub_2991AACD0(a1, a2, a3, &v6);
    sub_2991A74A8(v7, v6);
  }

  return v4;
}

void sub_2991A83D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_2991A8478(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991A83F8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991A8438(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F62470))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2991A8478(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2991A84D8(a2);

    JUMPOUT(0x29C29BFB0);
  }
}

uint64_t sub_2991A84D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 16) = -1;
  }

  if (*a1)
  {
    munmap(*a1, *(a1 + 8));
  }

  return 1;
}

BOOL sub_2991A8520(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_2991A8574(uint64_t a1)
{
  sub_2991A8688((a1 + 144), 0);
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x1050C40A1200FABLL);
  }

  v3 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v3)
  {
    MEMORY[0x29C29BFB0](v3, 0x1050C403E01F869);
  }

  v4 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v4)
  {
    MEMORY[0x29C29BFB0](v4, 0x1050C4004BAC841);
  }

  v5 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v5)
  {
    MEMORY[0x29C29BFB0](v5, 0x10C0C40AE133BEFLL);
  }

  v6 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v6)
  {
    MEMORY[0x29C29BFB0](v6, 0x10C0C404270A891);
  }

  v7 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v7)
  {
    MEMORY[0x29C29BFB0](v7, 0x10C0C404270A891);
  }

  v8 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v8)
  {
    MEMORY[0x29C29BFB0](v8, 0x10C0C40F6595248);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sub_2991A893C(v9);
  }

  return a1;
}

unsigned __int8 *sub_2991A8688(unsigned __int8 **a1, unsigned __int8 *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2991A86D4(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

unsigned __int8 *sub_2991A86D4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  if (v2 == 1)
  {
    if (v3)
    {
      v4 = sub_2991A55D4(v3);
      v5 = 0x10B1C40EE74E478;
LABEL_6:
      MEMORY[0x29C29BFB0](v4, v5);
    }
  }

  else if (v3)
  {
    v4 = sub_2991A8744(v3);
    v5 = 0x10A1C4035FF2A5ELL;
    goto LABEL_6;
  }

  return a1;
}

uint64_t sub_2991A8744(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  sub_2991A8794((a1 + 16), 0);
  sub_2991A8868((a1 + 8), 0);
  return a1;
}

void *sub_2991A8794(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2991A87E0(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void *sub_2991A87E0(void *a1)
{
  v3 = a1 + 31;
  v2 = a1[31];
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v4 = a1[21];
  if (v4)
  {
    free(v4);
  }

  a1[21] = 0;
  a1[22] = 0;
  v5 = a1[14];
  if (v5)
  {
    free(v5);
  }

  a1[14] = 0;
  a1[15] = 0;
  v6 = a1[8];
  if (v6)
  {
    free(v6);
  }

  a1[8] = 0;
  a1[9] = 0;
  v7 = a1[2];
  if (v7)
  {
    free(v7);
  }

  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void *sub_2991A8868(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2991A88B4(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void *sub_2991A88B4(void *a1)
{
  v3 = a1 + 22;
  v2 = a1[22];
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v4 = a1[20];
  if (v4)
  {
    free(v4);
  }

  a1[20] = 0;
  a1[21] = 0;
  v5 = a1[14];
  if (v5)
  {
    free(v5);
  }

  a1[14] = 0;
  a1[15] = 0;
  v6 = a1[8];
  if (v6)
  {
    free(v6);
  }

  a1[8] = 0;
  a1[9] = 0;
  v7 = a1[2];
  if (v7)
  {
    free(v7);
  }

  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void sub_2991A893C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_2991A89A8(uint64_t a1, const char *a2)
{
  sub_2991A84D8(a1);
  v4 = open(a2, 0);
  *(a1 + 16) = v4;
  if (v4 < 0)
  {
    return 0;
  }

  if (fstat(v4, &v8) < 0)
  {
    return 0;
  }

  st_size = v8.st_size;
  v6 = mmap(0, v8.st_size, 1, 1, *(a1 + 16), 0);
  if (v6 == -1)
  {
    return 0;
  }

  *a1 = v6;
  *(a1 + 8) = st_size;
  close(*(a1 + 16));
  *(a1 + 16) = -1;
  return 1;
}

void sub_2991A8A40(uint64_t a1, unsigned __int8 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *(a1 + 20) = v4 & 1;
  *(a1 + 24) = (v4 >> 2) & 1;
  *(a1 + 28) = (v4 & 2) != 0;
  *(a1 + 30) = v6;
  *(a1 + 29) = v6 != 0;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5;
  }

  sub_2991A9078(&v23, v7);
  v8 = 0;
  if (v7 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  do
  {
    *(v23 + v8) = *&a2[v8 + 4];
    *(v23 + v8 + 2) = *&a2[v8 + 6];
    v8 += 4;
  }

  while (4 * v9 != v8);
  if (*(a1 + 28))
  {
    for (i = 0; i != 16; i += 2)
    {
      v11 = &__p[i];
      *v11 = 0;
      v11[1] = 0;
    }

    v12 = 0;
    v13 = &__p[1];
    do
    {
      v14 = &a2[v12 + v8];
      *(v13 - 2) = *(v14 + 1);
      *v13 = *(v14 + 1);
      v13 += 2;
      v12 += 12;
    }

    while (v12 != 96);
    v15 = *v23;
    v16 = *(v23 + 1);
    operator new();
  }

  sub_2991A91B8(__p, v7);
  v17 = 0;
  v18 = &a2[v8 + 4];
  v19 = 2;
  do
  {
    *(__p[0] + v17) = v18;
    v18 += 4 * *(v23 + v19 - 2) * *(v23 + v19);
    v17 += 8;
    v19 += 4;
  }

  while (8 * v9 != v17);
  v20 = *__p[0];
  v21 = *v23;
  v22 = *(v23 + 1);
  operator new();
}

void sub_2991A9004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991A9078(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2992F8674(result, a2);
  }

  return result;
}

void sub_2991A90D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991A90F0(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, _OWORD *a6, _OWORD *a7)
{
  v11 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 48) = v12;
  *(a1 + 64) = *a4;
  *(a1 + 80) = *a5;
  *(a1 + 96) = *a6;
  *(a1 + 112) = *a7;
  v13 = sub_2991A6BB8(a4, a6, a7);
  *__e = 0;
  sub_2991BB0FC(&__e[1], __e, v13);
  v14 = sub_2991A6BB0();
  v15 = -*a4;
  *(a1 + 128) = -*a6;
  *(a1 + 132) = v15;
  v16 = __e[1];
  *(a1 + 136) = *a7;
  *(a1 + 140) = v16;
  *(a1 + 144) = __e[0];
  *(a1 + 148) = v14;
  return a1;
}

void *sub_2991A91B8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2991A9230(result, a2);
  }

  return result;
}

void sub_2991A9214(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991A9230(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2993EF648(a1, a2);
  }

  sub_299212A8C();
}

void sub_2991A926C(unsigned __int8 *a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  if (v2 == 1)
  {
    sub_2991A57D4(v3, a2);
  }

  else
  {
    sub_2991A9284(v3, a2);
  }
}

void sub_2991A9284(uint64_t a1, int a2)
{
  sub_2991A931C(*(a1 + 8), a2);
  if (*(a1 + 64) < a2)
  {
    v4 = *(a1 + 68);
    sub_2991A637C(a1 + 32, v4 * a2);
    *(a1 + 48) = *(a1 + 32);
    *(a1 + 56) = v4 * a2;
    *(a1 + 64) = a2;
    *(a1 + 68) = v4;
    *(a1 + 72) = 2;
  }

  v5 = *(a1 + 16);
  if (v5)
  {

    sub_2991A9440(v5, a2);
  }
}

void sub_2991A931C(int *a1, int a2)
{
  a1[3] = a2;
  v4 = *a1;
  v5 = *a1;
  if (a1[2] != 1)
  {
    v5 = a1[1] + v4;
  }

  v6 = 4 * v4;
  sub_2991A637C((a1 + 4), v5 * a2);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  *(a1 + 4) = v7;
  *(a1 + 5) = v5 * a2;
  a1[12] = v5;
  a1[13] = a2;
  a1[14] = 2;
  if (v8 >= 1)
  {
    bzero(v7, 4 * v8);
  }

  v9 = *a1;
  sub_2991A637C((a1 + 16), *a1 * a2);
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  *(a1 + 10) = v10;
  *(a1 + 11) = v9 * a2;
  a1[24] = v9;
  a1[25] = a2;
  a1[26] = 2;
  if (v11 >= 1)
  {
    bzero(v10, 4 * v11);
  }

  sub_2991A637C((a1 + 28), v6 * a2);
  v12 = *(a1 + 14);
  v13 = *(a1 + 15);
  *(a1 + 16) = v12;
  *(a1 + 17) = a2 * v6;
  a1[36] = v6;
  a1[37] = a2;
  a1[38] = 2;
  if (v13 >= 1)
  {

    bzero(v12, 4 * v13);
  }
}

void sub_2991A9440(uint64_t a1, int a2)
{
  *a1 = a2;
  v4 = *(a1 + 8) * *(a1 + 4);
  sub_2991A637C(a1 + 64, v4 * a2);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  *(a1 + 80) = v5;
  *(a1 + 88) = v4 * a2;
  *(a1 + 96) = a2;
  *(a1 + 100) = v4;
  *(a1 + 104) = 2;
  if (v6 >= 1)
  {
    bzero(v5, 4 * v6);
  }

  v7 = 2 * *(a1 + 8);
  sub_2991A637C(a1 + 112, v7 * a2);
  v8 = *(a1 + 112);
  v9 = *(a1 + 120);
  *(a1 + 128) = v8;
  *(a1 + 136) = a2 * v7;
  *(a1 + 144) = a2;
  *(a1 + 148) = v7;
  *(a1 + 152) = 2;
  if (v9 >= 1)
  {
    bzero(v8, 4 * v9);
  }

  v10 = *(a1 + 4);
  sub_2991A637C(a1 + 168, *(a1 + 4) * a2);
  v11 = *(a1 + 168);
  v12 = *(a1 + 176);
  *(a1 + 184) = v11;
  *(a1 + 192) = v10 * a2;
  *(a1 + 200) = a2;
  *(a1 + 204) = v10;
  *(a1 + 208) = 2;
  if (v12 >= 1)
  {
    bzero(v11, 4 * v12);
  }

  v13 = *(a1 + 8);
  sub_2991A637C(a1 + 16, v13 * a2);
  *(a1 + 32) = *(a1 + 16);
  *(a1 + 40) = v13 * a2;
  *(a1 + 48) = a2;
  *(a1 + 52) = v13;
  *(a1 + 56) = 2;
  v14 = *(a1 + 176);
  if (v14 >= 1)
  {
    bzero(*(a1 + 168), 4 * v14);
  }

  *(a1 + 160) = 0;
  *(a1 + 296) = 1;
  v15 = *(a1 + 4);
  sub_2991A637C(a1 + 248, v15);
  v16 = *(a1 + 248);
  v17 = *(a1 + 256);
  *(a1 + 264) = v16;
  *(a1 + 272) = v15;
  *(a1 + 280) = 1;
  *(a1 + 284) = v15;
  *(a1 + 288) = 2;
  if (v17 >= 1)
  {

    bzero(v16, 4 * v17);
  }
}

void sub_2991A97B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  sub_2991A8794(&a9, 0);
  sub_2991A8868(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_2991A97F0(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 20) == 1)
  {
    sub_2991AAB7C(a1, a2, a3, a4);
  }

  else
  {
    sub_2991AA9B4(a1, a2, a3, a4);
  }
}

void **sub_2991A9890(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2991A62D4(v2);
    MEMORY[0x29C29BFB0](v3, 0x1010C401DB35655);
  }

  return a1;
}

void sub_2991A99CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991A9D38(va);
  _Unwind_Resume(a1);
}

void sub_2991A99E0(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v3 = (*(a1 + 20) - (*(a1 + 16) >> 2));
  }

  operator new();
}

void sub_2991A9BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991A9D38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991A9C04(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  sub_2991A588C(a1, a4);
  return a1;
}

void sub_2991A9CBC(_Unwind_Exception *exception_object)
{
  if (*v7)
  {
    free(*v7);
  }

  *v7 = 0;
  *(v7 + 8) = 0;
  if (*v6)
  {
    free(*v6);
  }

  *v6 = 0;
  *(v6 + 8) = 0;
  if (*v5)
  {
    free(*v5);
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  if (*v4)
  {
    free(*v4);
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  if (*v3)
  {
    free(*v3);
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  if (*v2)
  {
    free(*v2);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  if (*v1)
  {
    free(*v1);
  }

  *v1 = 0;
  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991A9D38(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2991A8744(v2);
    MEMORY[0x29C29BFB0](v3, 0x10A1C4035FF2A5ELL);
  }

  return a1;
}

void sub_2991A9D80(uint64_t a1)
{
  sub_2991A8744(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991A9DB8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    v30 = v1[3];
    if (v30 && v2 != 0)
    {
      if (v1[2] == 1)
      {
        v6 = *(v1 + 4);
        v5 = *(v1 + 5);
      }

      else
      {
        v7 = v1[1];
        v8 = v1[13];
        v6 = (*(v1 + 4) + 4 * v8 * v7);
        v5 = ((v7 + v2) - v7) * v8;
      }

      v9 = *(a1 + 16);
      if (v9)
      {
        v10 = *(v9 + 4);
        v11 = (v10 + 2) * v2;
        sub_2991AA424(&__dst, (v11 * v30));
        v12 = __dst;
        if (v5)
        {
          memmove(__dst, v6, 4 * v5);
        }

        v13 = *(v1 + 11);
        if (v13)
        {
          memmove(&v12[4 * v5], *(v1 + 10), 4 * v13);
        }

        sub_2991AA398(__dst, v30, v30, (v10 + 2) * v2, &v32);
        v14 = 0;
        v15 = *(a1 + 16);
        v29 = *(v15 + 80);
        v28 = *(v15 + 160);
        v27 = *(v15 + 100);
        while (1)
        {
          if (v10)
          {
            v16 = 0;
            v17 = v32 + 4 * v14 * v11 + 4 * (2 * v2);
            v18 = v10;
            v19 = v28;
            do
            {
              memmove(&v17[4 * v16], (v29 + 4 * v14 * v27 + 4 * v19 % v10 * v2), 4 * v2);
              v16 += v2;
              ++v19;
              --v18;
            }

            while (v18);
          }

          if (++v14 == v30)
          {
            v20 = v32;
            v21 = v33 - v32;
            sub_2991A5494(&__p, v33 - v32);
            memcpy(__p, v20, v21);
            sub_2991BB1E0();
          }
        }
      }

      sub_2991AA424(&__dst, (2 * v30 * v2));
      v22 = __dst;
      if (v5)
      {
        memmove(__dst, v6, 4 * v5);
      }

      v23 = *(v1 + 11);
      if (v23)
      {
        memmove(&v22[4 * v5], *(v1 + 10), 4 * v23);
      }

      sub_2991AA398(__dst, v30, v30, 2 * v2, &v32);
      v24 = v32;
      v25 = v33 - v32;
      sub_2991A5494(&__p, v33 - v32);
      memcpy(__p, v24, v25);
      sub_2991BB1E0();
    }
  }

  return 0;
}

void sub_2991AA088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991AA0E0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = sub_2991BB3C4(v3);
  v5 = sub_2991BB3D0(v3);
  v6 = sub_2991BB3DC(v3);
  sub_2991AA424(v29, v6 >> 2);
  memcpy(v29[0], v5, v6);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v7 + 4) + 2;
    v9 = v6 / (4 * (v8 * v4));
    v10 = v8 * v9;
    sub_2991AA398(v29[0], v8 * v9, 2 * v9, v4, v18);
    v24 = v18[0];
    v25 = v9 * v4;
    v26 = v9;
    v27 = v4;
    v28 = 2;
    v19 = (v18[0] + 4 * v25);
    v20 = (2 * v9 - v9) * v4;
    v21 = v9;
    v22 = v4;
    v23 = 2;
    sub_2991AA49C(*(a1 + 8), &v24, &v19);
    __p = v29[0];
    v14 = v4 * v10;
    v15 = v4;
    v16 = v10;
    v17 = 2;
    sub_2991AA5B0(*(a1 + 16), &__p, 2 * v9);
    v11 = v18[0];
    if (!v18[0])
    {
      goto LABEL_7;
    }

    v18[1] = v18[0];
  }

  else
  {
    v12 = v6 / (4 * (2 * v4));
    sub_2991AA398(v29[0], 2 * v12, 2 * v12, v4, &__p);
    v24 = __p;
    v25 = v12 * v4;
    v26 = v12;
    v27 = v4;
    v28 = 2;
    v19 = __p + 4 * v25;
    v20 = (2 * v12 - v12) * v4;
    v21 = v12;
    v22 = v4;
    v23 = 2;
    sub_2991AA49C(*(a1 + 8), &v24, &v19);
    v11 = __p;
    if (!__p)
    {
      goto LABEL_7;
    }

    v14 = __p;
  }

  operator delete(v11);
LABEL_7:
  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void sub_2991AA2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 88);
  if (v17)
  {
    *(v15 - 80) = v17;
    operator delete(v17);
  }

  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2991AA398@<X0>(uint64_t a1@<X0>, int a2@<W3>, unsigned int a3@<W4>, int a4@<W5>, void *a5@<X8>)
{
  result = sub_2991AA424(a5, a4 * a3);
  if (a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = *result;
    do
    {
      v13 = a3;
      v14 = v10;
      v15 = v11;
      if (a3)
      {
        do
        {
          *(v12 + 4 * v15) = *(a1 + 4 * v14);
          v15 += a4;
          ++v14;
          --v13;
        }

        while (v13);
      }

      ++v11;
      v10 += a2;
    }

    while (v11 != a4);
  }

  return result;
}

void *sub_2991AA424(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2992F8674(result, a2);
  }

  return result;
}

void sub_2991AA480(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991AA49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 20);
  *(a1 + 12) = v6;
  v7 = *a1;
  v8 = *a1;
  if (*(a1 + 8) != 1)
  {
    v8 = *(a1 + 4) + v7;
  }

  sub_2991A5A1C(a1 + 16, v8, v6, 0.0);
  if (*(a1 + 8) == 1)
  {
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = (*(a1 + 32) + 4 * *(a1 + 52) * *(a1 + 4));
  }

  v10 = 4 * v7;
  v11 = *(a2 + 8);
  if (v11)
  {
    memmove(v9, *a2, 4 * v11);
  }

  sub_2991A5A1C(a1 + 64, *a1, *(a1 + 12), 0.0);
  v12 = *(a3 + 8);
  if (v12)
  {
    memmove(*(a1 + 80), *a3, 4 * v12);
  }

  sub_2991A5A1C(a1 + 112, v10, *(a1 + 12), 0.0);
  v13 = *(a1 + 120);
  if (v13 >= 1)
  {
    v14 = *(a1 + 112);

    bzero(v14, 4 * v13);
  }
}

void sub_2991AA5B0(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = a1[25];
  *a1 = v6;
  *(a1 + 160) = 0;
  sub_2991A5A1C((a1 + 16), v6, v8, 0.0);
  sub_2991A5A1C((a1 + 28), *a1, 2 * a1[2], 0.0);
  sub_2991A5A1C((a1 + 42), *a1, *(a1 + 4), 0.0);
  sub_2991A5A1C((a1 + 4), *a1, a1[2], 0.0);
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v8)
      {
        memmove((*(a1 + 10) + 4 * v9), (*a2 + 4 * v10 + 4 * a3), 4 * v8);
      }

      v10 += v7;
      v9 += v8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 4);
  v12 = *a1;
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(a1 + 4);
    do
    {
      v16 = 0;
      if (*(a1 + 4))
      {
        v17 = (*(a1 + 10) + v13 * a1[25]);
        v18 = *(a1 + 4);
        do
        {
          if (*v17 == 0.0)
          {
            ++v16;
          }

          v17 += a1[2];
          --v18;
        }

        while (v18);
      }

      if (v16 < v15)
      {
        v15 = v16;
      }

      ++v14;
      v13 += 4;
    }

    while (v14 != v12);
    v19 = v11 > v15;
    v20 = v11 - v15;
    if (v19)
    {
      memset_pattern16((*(a1 + 33) + 4 * v15), &unk_2993FDED0, 4 * v20);
    }
  }

  else
  {
    v15 = *(a1 + 4);
  }

  *(a1 + 296) = v15 != 0;
}

uint64_t sub_2991AA73C(uint64_t a1, int a2, int a3, int a4, int a5)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a5;
  *(a1 + 12) = a4;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 128) = 0u;
  if (a5 == 1)
  {
    v7 = (a3 << 6);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 140) = 0uLL;
  sub_2991AA84C((a1 + 160), v7);
  sub_2991AA84C((a1 + 176), v7);
  sub_2991A931C(a1, a4);
  return a1;
}

void sub_2991AA7E0(_Unwind_Exception *exception_object)
{
  v6 = v1[22];
  if (v6)
  {
    free(v6);
  }

  v1[22] = 0;
  v1[23] = 0;
  v7 = v1[20];
  if (v7)
  {
    free(v7);
  }

  v1[20] = 0;
  v1[21] = 0;
  if (*v4)
  {
    free(*v4);
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  if (*v3)
  {
    free(*v3);
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  if (*v2)
  {
    free(*v2);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  _Unwind_Resume(exception_object);
}

void *sub_2991AA84C(void *a1, uint64_t a2)
{
  if (4 * a2)
  {
    memptr = 0;
    v4 = malloc_type_posix_memalign(&memptr, 0x20uLL, 4 * a2, 0x45BC7E3BuLL);
    v5 = memptr;
    if (v4)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = a2;
  return a1;
}

uint64_t sub_2991AA8B4(uint64_t a1, int a2, char a3, int a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 264) = 0u;
  sub_2991A9440(a1, a2);
  return a1;
}

void sub_2991AA958(_Unwind_Exception *exception_object)
{
  if (*v5)
  {
    free(*v5);
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  if (*v4)
  {
    free(*v4);
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  if (*v3)
  {
    free(*v3);
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  if (*v2)
  {
    free(*v2);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  if (*v1)
  {
    free(*v1);
  }

  *v1 = 0;
  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

void sub_2991AA9B4(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v7 = a2[1];
  v10 = **a2;
  v9 = (*a2)[1];
  sub_2991AAFC8(a4, (v9 - v10) >> 2);
  LODWORD(v26) = 0;
  sub_2991AAFC8(&__p, (v9 - v10) >> 2);
  v11 = 0xAAAAAAAAAAAAAAABLL * (v7 - v8);
  if (v11 >= 2)
  {
    v12 = 0;
    v13 = v11 - 1;
    if (((v9 - v10) >> 2) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = (v9 - v10) >> 2;
    }

    v15 = v13;
    while (1)
    {
      v16 = &(*a2)[3 * v12];
      sub_2991AACD0(a1, v16, a3, &v26);
      if (v9 != v10)
      {
        break;
      }

LABEL_14:
      ++v12;
      sub_2991A74A8((v29 - __p) >> 2, __p);
      v24 = a4[1] - *a4;
      sub_2991A72E4();
      if (v12 == v15)
      {
        goto LABEL_15;
      }
    }

    v17 = 0;
    v18 = *(a1 + 16);
    v19 = __p;
    v20 = v26;
    v21 = 4 * v27;
    while (1)
    {
      if (v18 == 0xFFFFFFFFLL)
      {
        v22 = *(v16[3] + 4 * v17);
      }

      else
      {
        v23 = 1.0;
        if (*(*v16 + 4 * v17) == v18)
        {
          goto LABEL_13;
        }

        v22 = *(v16[3] + 4 * v17);
        if (v22 == v18)
        {
          goto LABEL_13;
        }
      }

      v23 = *(v20 + 4 * v22);
LABEL_13:
      v19[v17++] = v23;
      v20 += v21;
      if (v14 == v17)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_2991AAB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991AAB7C@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  v10 = **a2;
  v9 = (*a2)[1];
  LODWORD(v21[0]) = 0;
  sub_2991AAFC8(a4, (v9 - v10) >> 2);
  if (v8 >= 2)
  {
    v11 = 0;
    v12 = (v8 - 1);
    if (((v9 - v10) >> 2) <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v9 - v10) >> 2;
    }

    do
    {
      v14 = &(*a2)[3 * v11];
      sub_2991B67FC(a1, v14, v14 + 3, a3, v21);
      v15 = v21[0];
      if (v9 != v10)
      {
        v16 = 0;
        v17 = *(a1 + 16);
        do
        {
          if (v17 != -1 && *(*v14 + 4 * v16) == v17)
          {
            *(v15 + 4 * v16) = 0;
          }

          ++v16;
        }

        while (v13 != v16);
      }

      ++v11;
      v18 = a4[1] - *a4;
      sub_2991A72E4();
    }

    while (v11 != v12);
  }

  v19 = (a4[1] - *a4) >> 2;
  return sub_2991A72C4();
}

void sub_2991AACB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991AACD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 28) == 1)
  {
    sub_2991AB0DC(*(a1 + 88), a2, &__p);
    v8 = *(a1 + 96);
    v9 = sub_2991A5E8C(a3);
    sub_2991AB24C(v8, &__p, v9, v32);
    sub_2991A5EC4(a3, (*(a2 + 8) - *a2) >> 2);
    v10 = *(a1 + 104);
    v11 = sub_2991A5EB4(a3);
    sub_2991AB644(v10, v32, v11, v31);
    v12 = sub_2991A5EAC(a3);
    v13 = *&v31[16];
    v14 = *&v31[20];
    v15 = *&v31[20] * *&v31[16];
    v16 = *v12;
    if (v15)
    {
      v17 = *v31;
      v18 = *(a1 + 104);
      v19 = *(v18 + 120);
      v20 = *(v18 + 112);
      v21 = *v12;
      v22 = *&v31[20] * *&v31[16];
      do
      {
        v23 = *v17++;
        v24 = v19 * (v23 - v20);
        *v21++ = v24;
        --v22;
      }

      while (v22);
    }

    *a4 = v16;
    *(a4 + 8) = v15;
    *(a4 + 16) = v13;
    *(a4 + 20) = v14;
    *(a4 + 24) = 2;
    sub_2991A79EC((*(a2 + 8) - *a2) >> 2, *(*(a1 + 88) + 32), v16, *(a1 + 88));
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (*(a1 + 24) == 1)
    {
      v25 = *(a3 + 8);
      sub_2991AA84C(&__p, ((*(a2 + 8) - *a2) >> 2) * *(*(a1 + 56) + 34));
      v26 = *(a1 + 56);
      v27 = *a2;
      if (*(a2 + 8) == *a2)
      {
        v30 = 0;
      }

      else
      {
        v28 = 0;
        do
        {
          memcpy(__p + 4 * v28 * *(v26 + 20), (*v26 + 4 * *(v26 + 20) * v27[v28]), 4 * *(v26 + 20));
          ++v28;
          v27 = *a2;
          v29 = *(a2 + 8) - *a2;
        }

        while (v28 < v29 >> 2);
        v26 = *(a1 + 56);
        v30 = (v29 >> 2);
      }

      sub_2991AB9A0(a1, v25, &__p, v30, *(v26 + 34));
      sub_2991ABAEC(*(a1 + 64), v25, v31);
      *v32[0].i8 = *v31;
      *&v32[1].u8[4] = *&v31[12];
      if (__p)
      {
        free(__p);
      }
    }

    else
    {
      sub_2991ABB5C(*(a1 + 56), a2, &__p);
      sub_2991ABCD0(*(a1 + 64), &__p, *(a3 + 8), v31);
      *v32[0].i8 = *v31;
      *&v32[1].u8[4] = *&v31[12];
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }
    }

    if (*(a1 + 29) == 1)
    {
      sub_2991ABD54(*(a1 + 80), v32, *(a3 + 16), v31);
      *v32[0].i8 = *v31;
      *&v32[1].u8[4] = *&v31[12];
    }

    sub_2991ABEF0(*(a1 + 72), v32, a3 + 48, *(a1 + 20), a4);
    sub_2991A79EC((*(a2 + 8) - *a2) >> 2, *(*(a1 + 56) + 32), *a4, *(a1 + 56));
  }
}

void sub_2991AAF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    free(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991AAFC8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2992F8674(result, a2);
  }

  return result;
}

void sub_2991AB0C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991AB0DC(uint64_t a1@<X0>, unsigned int **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2991ABFB4(a3, a2[1] - *a2);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = a3[1];
    do
    {
      v9 = *(a1 + 20);
      v10 = *a1 + *v6 * v9;
      v11 = a3[2];
      if (v8 >= v11)
      {
        v12 = (v8 - *a3) >> 5;
        if ((v12 + 1) >> 59)
        {
          sub_299212A8C();
        }

        v13 = v11 - *a3;
        v14 = v13 >> 4;
        if (v13 >> 4 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          sub_2991AC054(a3, v15);
        }

        v16 = 32 * v12;
        *v16 = v10;
        *(v16 + 8) = v9;
        *(v16 + 16) = 1;
        *(v16 + 20) = v9;
        *(v16 + 24) = 1;
        v8 = 32 * v12 + 32;
        v17 = a3[1] - *a3;
        v18 = v16 - v17;
        memcpy((v16 - v17), *a3, v17);
        v19 = *a3;
        *a3 = v18;
        a3[1] = v8;
        a3[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = v10;
        *(v8 + 8) = v9;
        *(v8 + 16) = 1;
        *(v8 + 20) = v9;
        *(v8 + 24) = 1;
        v8 += 32;
      }

      a3[1] = v8;
      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_2991AB228(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991AB24C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = *MEMORY[0x29EDCA608];
  v8 = *a3;
  v9 = *(a3 + 4);
  v10 = (a2[1] - *a2) >> 5;
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  v47[0] = v10;
  v47[1] = v9;
  sub_2991AC09C(&v49, v47, 2);
  v45[0] = v10;
  v45[1] = v8;
  sub_2991AC09C(v47, v45, 2);
  v43[0] = v11;
  v43[1] = v12;
  sub_2991AC09C(v45, v43, 2);
  v41 = *(a1 + 40);
  sub_2991AC09C(v43, &v41, 1);
  v39[0] = v10;
  v39[1] = v8;
  sub_2991AC09C(&v41, v39, 2);
  sub_2991AD064(v39, &v41);
  sub_2991AD064(&v37, v47);
  v34.i64[0] = __PAIR64__(v12, v10);
  sub_2991AC09C(&v35, v34.i32, 2);
  v33[0] = v10;
  v33[1] = v11;
  sub_2991AC09C(&v34, v33, 2);
  v13 = *a2;
  if (a2[1] != *a2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      memmove((*(a3 + 128) + v15), *(v13 + v14), v9);
      ++v16;
      v13 = *a2;
      v15 += v9;
      v14 += 32;
    }

    while (v16 < (a2[1] - *a2) >> 5);
  }

  v17 = sub_2991BB630();
  std::mutex::lock(v17);
  sub_2991AC128((a1 + 128), &v49, *(a3 + 128), v47, *(a3 + 32), v45, *a1, v43, *(a1 + 32), &v41, *(a3 + 80), v39, *(a3 + 320), &v37, *(a3 + 272), &v35, v18, *(a3 + 176), &v34, *(a3 + 224));
  std::mutex::unlock(v17);
  v19 = v39[0];
  if (v39[0] < 5)
  {
    if (v39[0] < 1)
    {
      v23 = 2;
      goto LABEL_11;
    }

    v20 = &v40;
  }

  else
  {
    v20 = v40;
  }

  v21 = 1;
  do
  {
    v22 = *v20++;
    v21 *= v22;
    --v19;
  }

  while (v19);
  v23 = 2 * v21;
LABEL_11:
  memmove(*(a3 + 80), *(a3 + 320), v23);
  v24 = v37;
  if (v37 >= 5)
  {
    v25 = v38;
    goto LABEL_15;
  }

  if (v37 >= 1)
  {
    v25 = &v38;
LABEL_15:
    LODWORD(v26) = 1;
    do
    {
      v27 = *v25++;
      v26 = v27 * v26;
      --v24;
    }

    while (v24);
    goto LABEL_17;
  }

  v26 = 1;
LABEL_17:
  result = memmove(*(a3 + 32), *(a3 + 272), v26);
  if (v47[0] < 5)
  {
    v29 = v48;
    v30 = &v48 + 1;
  }

  else
  {
    v30 = v48 + 1;
    v29 = *v48;
  }

  v31 = *v30;
  *a4 = *(a3 + 32);
  *(a4 + 8) = v31 * v29;
  *(a4 + 16) = v29;
  *(a4 + 20) = v31;
  *(a4 + 24) = 2;
  if (v34.i32[0] >= 5)
  {
    result = v34.i64[1];
    if (v34.i64[1])
    {
      result = MEMORY[0x29C29BF70](v34.i64[1], 0x1000C8052888210);
    }
  }

  if (v35 >= 5)
  {
    result = v36;
    if (v36)
    {
      result = MEMORY[0x29C29BF70](v36, 0x1000C8052888210);
    }
  }

  if (v37 >= 5)
  {
    result = v38;
    if (v38)
    {
      result = MEMORY[0x29C29BF70](v38, 0x1000C8052888210);
    }
  }

  if (v39[0] >= 5)
  {
    result = v40;
    if (v40)
    {
      result = MEMORY[0x29C29BF70](v40, 0x1000C8052888210);
    }
  }

  if (v41 >= 5)
  {
    result = v42;
    if (v42)
    {
      result = MEMORY[0x29C29BF70](v42, 0x1000C8052888210);
    }
  }

  if (v43[0] >= 5)
  {
    result = v44;
    if (v44)
    {
      result = MEMORY[0x29C29BF70](v44, 0x1000C8052888210);
    }
  }

  if (v45[0] >= 5)
  {
    result = v46;
    if (v46)
    {
      result = MEMORY[0x29C29BF70](v46, 0x1000C8052888210);
    }
  }

  if (v47[0] >= 5)
  {
    result = v48;
    if (v48)
    {
      result = MEMORY[0x29C29BF70](v48, 0x1000C8052888210);
    }
  }

  if (v49 >= 5)
  {
    result = v50;
    if (v50)
    {
      result = MEMORY[0x29C29BF70](v50, 0x1000C8052888210);
    }
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2991AB638(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2991EDA10(a1);
}

void sub_2991AB644(uint64_t a1@<X0>, int32x2_t *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v56 = *MEMORY[0x29EDCA608];
  v51 = a2[2];
  sub_2991AC09C(&v49, &v51, 2);
  v51 = *(a1 + 16);
  sub_2991AC09C(&v47, &v51, 2);
  v51.i32[0] = *(a1 + 40);
  sub_2991AC09C(&v45, &v51, 1);
  v51 = a3[2];
  sub_2991AC09C(&v43, &v51, 2);
  v8 = sub_2991BB630();
  std::mutex::lock(v8);
  v9 = *a2;
  v10 = *(a1 + 32);
  v11 = *a3;
  v12 = *(a1 + 128);
  v13 = *(a1 + 132);
  v14 = *(a1 + 136);
  v15 = *(a1 + 140);
  v16 = *(a1 + 148);
  if (v43 <= 4)
  {
    v17 = v44;
  }

  else
  {
    v17 = v44[0];
  }

  v18 = 1;
  v19 = (v43 - 1);
  if (v43 >= 1)
  {
    v20 = (v43 - 1);
    v21 = v43;
    do
    {
      if (v20)
      {
        v22 = *v17;
      }

      else
      {
        v22 = 1;
      }

      v18 *= v22;
      ++v17;
      --v20;
      --v21;
    }

    while (v21);
  }

  if (v47 <= 4)
  {
    v23 = v48 + v47 - 1;
  }

  else
  {
    v23 = (v48[0] + 4 * v47 - 4);
  }

  v24 = *v23;
  if (v43 <= 4)
  {
    v25 = v44 + v19;
  }

  else
  {
    v25 = (v44[0] + 4 * v19);
  }

  v26 = *v25;
  v37 = *a1;
  v38 = v26;
  v39 = v24;
  v40 = v24;
  v33 = v9;
  v34 = v24;
  v35 = v18;
  v36 = v24;
  v29 = v11;
  v30 = v26;
  v31 = v18;
  v32 = v26;
  v51 = v10;
  v52 = v26;
  v53 = v15;
  v54 = v14;
  v55 = v16;
  v42[0] = v13;
  v42[1] = v26;
  v41[0] = v12;
  v41[1] = v18;
  sub_2991B29AC(&v8[1], &v37, &v33, &v29, v42, v41, &v51);
  std::mutex::unlock(v8);
  v27 = *(a3 + 1);
  *a4 = *a3;
  a4[1] = v27;
  if (v43 >= 5 && v44[0])
  {
    MEMORY[0x29C29BF70](v44[0], 0x1000C8052888210);
  }

  if (v45 >= 5 && v46)
  {
    MEMORY[0x29C29BF70](v46, 0x1000C8052888210);
  }

  if (v47 >= 5 && v48[0])
  {
    MEMORY[0x29C29BF70](v48[0], 0x1000C8052888210);
  }

  if (v49 >= 5 && v50)
  {
    MEMORY[0x29C29BF70](v50, 0x1000C8052888210);
  }

  v28 = *MEMORY[0x29EDCA608];
}

void sub_2991AB8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, int a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28)
{
  std::mutex::unlock(v28);
  if (a21 >= 5 && a22)
  {
    MEMORY[0x29C29BF70](a22, 0x1000C8052888210);
  }

  if (a24 >= 5 && a25)
  {
    MEMORY[0x29C29BF70](a25, 0x1000C8052888210);
  }

  if (a27 >= 5 && a28)
  {
    MEMORY[0x29C29BF70](a28, 0x1000C8052888210);
  }

  if (*(v29 - 120) >= 5)
  {
    v31 = *(v29 - 112);
    if (v31)
    {
      MEMORY[0x29C29BF70](v31, 0x1000C8052888210);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_2991AB9A0(int a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  LODWORD(v5) = a5;
  v6 = a4;
  v8 = *(a2 + 128);
  if ((a4 <= 1 || ((a4 + 2147483646) & (a4 - 1)) != 0) && (a4 < 1 || ((a4 + 0x7FFFFFFF) & a4) != 0) && ((a4 & 0x80000000) != 0 || ((a4 ^ 0x80000000) & (a4 + 1)) != 0) && a5 >= 1 && ((a5 + 0x7FFFFFFF) & a5) == 0 && (v13 = a4 | (a4 >> 1) | ((a4 | (a4 >> 1)) >> 2), v14 = v13 | (v13 >> 4) | ((v13 | (v13 >> 4)) >> 8), v15 = ((v14 | HIWORD(v14)) + 1), *(a2 + 168) >= (v15 * a5)))
  {
    memcpy(*(a2 + 160), *a3, 4 * *(a3 + 8));
    sub_2991A6B2C(v15, v5, *(a2 + 160), *(a2 + 176));
    v16 = 0;
    v17 = 4 * v6;
    v18 = 4 * v15;
    v5 = v5;
    do
    {
      result = memcpy(v8, (*(a2 + 176) + v16), v17);
      v16 += v18;
      v8 += v17;
      --v5;
    }

    while (v5);
  }

  else
  {
    v9 = *a3;
    v11 = *(a2 + 128);

    return sub_2991A6B2C(a4, a5, v9, v8);
  }

  return result;
}

uint64_t sub_2991ABAEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a2 + 52);
  v9 = *a1;
  v10 = *(a2 + 32);
  v11 = *(a2 + 128);
  sub_2991A78F4();

  return sub_2991B6214(a2, a3);
}

void sub_2991ABB5C(uint64_t a1@<X0>, unsigned int **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2991B636C(a3, a2[1] - *a2);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = a3[1];
    do
    {
      v9 = *(a1 + 20);
      v10 = *a1 + 4 * *v6 * v9;
      v11 = a3[2];
      if (v8 >= v11)
      {
        v12 = (v8 - *a3) >> 5;
        if ((v12 + 1) >> 59)
        {
          sub_299212A8C();
        }

        v13 = v11 - *a3;
        v14 = v13 >> 4;
        if (v13 >> 4 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          sub_2991B640C(a3, v15);
        }

        v16 = 32 * v12;
        *v16 = v10;
        *(v16 + 8) = v9;
        *(v16 + 16) = 1;
        *(v16 + 20) = v9;
        *(v16 + 24) = 1;
        v8 = 32 * v12 + 32;
        v17 = a3[1] - *a3;
        v18 = v16 - v17;
        memcpy((v16 - v17), *a3, v17);
        v19 = *a3;
        *a3 = v18;
        a3[1] = v8;
        a3[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = v10;
        *(v8 + 8) = v9;
        *(v8 + 16) = 1;
        *(v8 + 20) = v9;
        *(v8 + 24) = 1;
        v8 += 32;
      }

      a3[1] = v8;
      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_2991ABCAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991ABCD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2991B6454(a1, a2, (a3 + 32));
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a3 + 52);
  v10 = *a1;
  v11 = *(a3 + 32);
  v12 = *(a3 + 128);
  sub_2991A7970();
  sub_2991A7310(*(a3 + 144), *(a3 + 148), *(a1 + 32), *(a3 + 128));

  return sub_2991B6214(a3, a4);
}

void sub_2991ABD54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 + 16);
  v8 = *(a2 + 20);
  v10 = a3 + 32;
  sub_2991A6B2C(v9, *(a2 + 20), *a2, *(a3 + 32));
  v11 = *(v10 + 16);
  v12 = *(v10 + 20);
  v28 = *v10;
  v29 = v12 * v11;
  v30 = v11;
  v31 = v12;
  v32 = 2;
  sub_2991B64D0(a1, &v28, v10 + 152, (v10 + 48), v33);
  if (*(v10 + 264) == 1)
  {
    sub_2991B65D8(v33, (a3 + 264), &v28);
  }

  v27 = v8;
  if (v8)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *v10 + 4 * v13;
      v16 = *(v10 + 96);
      sub_2991A744C();
      v14 += 2 * v9;
      v13 += v9;
      --v8;
    }

    while (v8);
  }

  v17 = *(a3 + 96);
  v18 = *(a3 + 100);
  v28 = *(a3 + 80);
  v29 = v18 * v17;
  v30 = v17;
  v31 = v18;
  v32 = 2;
  sub_2991B6674(a1, v33, &v28, (v10 + 96));
  sub_2991B672C(a1, v10, a3);
  v19 = *(a3 + 128);
  v20 = *(a3 + 144);
  v21 = *(a1 + 24);
  v22 = *(a1 + 28);
  v23 = *(a1 + 8);
  v24 = *(a3 + 32);
  sub_2991A7970();
  sub_2991A74D8(*(a1 + 24) * v27, *(a3 + 32));
  v25 = *(a1 + 24);
  v26 = *(a2 + 20);
  *a4 = *(a3 + 32);
  *(a4 + 8) = v26 * v25;
  *(a4 + 16) = v25;
  *(a4 + 20) = v26;
  *(a4 + 24) = 2;
}

uint64_t sub_2991ABEF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 20);
  v11 = a2 + 2;
  v10 = *(a2 + 4);
  v9 = *(v11 + 1);
  *a5 = *a3;
  *(a5 + 8) = v8 * v9;
  *(a5 + 16) = v9;
  *(a5 + 20) = v8;
  *(a5 + 24) = 2;
  v12 = *a2;
  v13 = *a1;
  if (a4 == 1)
  {
    v14 = *(a1 + 4);
  }

  else
  {
    v15 = *(a1 + 5);
  }

  result = sub_2991A7970();
  if (*(a2 + 5))
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = a1[4];
      result = sub_2991A72E4();
      ++v18;
      v17 += v8;
    }

    while (v18 < *(a2 + 5));
  }

  return result;
}

void *sub_2991ABFB4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      sub_2991AC054(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

void sub_2991AC054(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

_DWORD *sub_2991AC09C(_DWORD *result, int *a2, uint64_t a3)
{
  *result = a3;
  if (a3 >= 5)
  {
    operator new[]();
  }

  if (a3)
  {
    v4 = result + 2;
    v5 = 4 * a3;
    do
    {
      v6 = *a2++;
      *v4++ = v6;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

void sub_2991AC128(int *a1, int *a2, uint64_t a3, int *a4, uint64_t a5, int *a6, uint64_t a7, int *a8, int32x4_t *a9, int *a10, int16x8_t *a11, int *a12, int16x8_t *a13, int *a14, int8x8_t *a15, int *a16, int32x2_t a17, int *a18, int16x8_t *a19, uint64_t a20)
{
  *&v255[4] = *MEMORY[0x29EDCA608];
  v26 = *a1;
  v212.i64[0] = *(a1 + 1);
  sub_2991AD2E8(&v253, 4, a2, 1);
  sub_2991AD2E8(&v250, 4, a4, 1);
  sub_2991AD2E8(&v248, 4, a8, 1);
  sub_2991AD2E8(&v246, 4, a10, 1);
  sub_2991AD2E8(&v244, 4, a12, 1);
  sub_2991AD2E8(&v242, 4, a14, 1);
  sub_2991AD2E8(v240, 4, a16, 1);
  sub_2991AD2E8(&v238, 4, a18, 1);
  v27 = *a6;
  v28 = &v254;
  if (v253 > 4)
  {
    v28 = v254;
  }

  if (v253 < 1)
  {
    v30 = 1;
  }

  else
  {
    v29 = 0;
    v30 = 1;
    do
    {
      if (v29 == 12)
      {
        v31 = 1;
      }

      else
      {
        v31 = *(v28 + v29);
      }

      v30 *= v31;
      v29 += 4;
    }

    while (4 * v253 != v29);
    if (v253 >= 5)
    {
      v32 = a6;
      v33 = (v254 + 12);
      goto LABEL_13;
    }
  }

  v32 = a6;
  v33 = v255;
LABEL_13:
  v34 = *v33;
  if (v250 <= 4)
  {
    v35 = &v252;
  }

  else
  {
    v35 = (v251 + 12);
  }

  v36 = *v35;
  if (v27 <= 4)
  {
    v37 = v27 - 2;
  }

  else
  {
    v37 = (v27 - 2);
  }

  sub_2991AD064(&v236, &v244);
  sub_2991AD064(&v234, &v242);
  v38 = sub_2991AD0E8(&v246, 3, &v250, 3, &v236, 3, &v234);
  if (v234 >= 5 && v235)
  {
    MEMORY[0x29C29BF70](v235, 0x1000C8052888210);
  }

  v191 = v26;
  if (v236 >= 5 && v237)
  {
    MEMORY[0x29C29BF70](v237, 0x1000C8052888210);
  }

  v199 = a7;
  v196 = v36 + v34;
  v40 = &v239;
  if (v238 > 4)
  {
    v40 = v239;
  }

  if (v238 < 1)
  {
    v42 = 1;
  }

  else
  {
    v41 = 0;
    v42 = 1;
    do
    {
      if (v41 == 12)
      {
        v43 = 1;
      }

      else
      {
        v43 = *(v40 + v41);
      }

      v42 *= v43;
      v41 += 4;
    }

    while (4 * v238 != v41);
  }

  v192 = v38;
  v193 = v30;
  v44 = 0;
  if (*v32 <= 4)
  {
    v45 = v32 + 2;
  }

  else
  {
    v45 = *(v32 + 1);
  }

  v46 = v45[v37];
  v233[0] = a3;
  v233[1] = a5;
  v232[0] = &v253;
  v232[1] = &v250;
  v47 = 1;
  do
  {
    v48 = (v241 + v44 * 4);
    if (v240[0] <= 4)
    {
      v48 = &v240[v44 + 2];
    }

    v47 *= *v48;
    ++v44;
  }

  while (v44 != 3);
  v194 = v46;
  v189 = v32 + 2;
  v190 = v32;
  if (v240[0] < 5)
  {
    v51 = 1;
  }

  else
  {
    v49 = v240[0] - 4;
    v50 = (v241 + 16);
    v51 = 1;
    do
    {
      v52 = *v50++;
      v51 *= v52;
      --v49;
    }

    while (v49);
  }

  if (v47 >= 1)
  {
    v53 = 0;
    v54 = a17;
    do
    {
      for (i = 0; i != 2; ++i)
      {
        v56 = v232[i];
        if (*v56 < 5)
        {
          v57 = (v56 + 20);
        }

        else
        {
          v57 = (*(v56 + 8) + 12);
        }

        v58 = *v57 * v51;
        memcpy(v54, (v233[i] + v58 * v53), v58);
        v54 += v58;
      }

      ++v53;
    }

    while (v53 != v47);
  }

  if (v42 != 1 || (v194 & 3) != 0 || (v196 & 7) != 0)
  {
    v226 = v199;
    v227 = v194;
    v228 = v196;
    v229 = v196;
    v222 = a17;
    v223 = v196;
    v224 = v42;
    v225 = v196;
    v63 = a19;
    v218 = a19;
    v219 = v194;
    v220 = v42;
    v221 = v194;
    v214 = a9;
    v215 = v194;
    v216 = *v212.i8;
    v217 = 0;
    v231[0] = -v191;
    v231[1] = v194;
    v230[0] = -128;
    v230[1] = v42;
    sub_2991AD3C4(a20, &v226, &v222, &v218, v231, v230, &v214);
    v61 = v193;
    v62 = v38;
    v64 = a13;
    v65 = a11;
  }

  else
  {
    v59 = *v190;
    v60 = v241;
    if (v240[0] <= 4)
    {
      v60 = &v241;
    }

    v61 = v193;
    v62 = v38;
    v63 = a19;
    v64 = a13;
    v65 = a11;
    v66 = a9;
    if (v240[0] < 1)
    {
      v68 = 1;
      v69 = v199;
    }

    else
    {
      v67 = 0;
      v68 = 1;
      v69 = v199;
      do
      {
        if (v67)
        {
          v70 = *(v60 + v67);
        }

        else
        {
          v70 = 1;
        }

        v68 *= v70;
        v67 += 4;
      }

      while (4 * v240[0] != v67);
    }

    v71 = *v189;
    if (v59 <= 4)
    {
      v71 = v189;
    }

    v72 = *(v71 + v59 - 2);
    if (v72 >= 1)
    {
      v73 = 0;
      v74 = vdupq_n_s16(-v191);
      v75 = vdupq_n_s32(v212.i32[1] & ~(v212.i32[1] >> 31));
      v76 = vdupq_n_s32(v212.i32[1] & (v212.i32[1] >> 31));
      v77 = *&v69 + 3 * v68;
      v78 = 4 * v68;
      v79 = *&v69 + 2 * v68;
      v80.i64[0] = 0x7F007F007F007FLL;
      v80.i64[1] = 0x7F007F007F007FLL;
      v81 = a19;
      v82 = *&v69 + v68;
      do
      {
        if (v68 >= 16)
        {
          v88 = 0;
          v87 = 0uLL;
          v86 = 0uLL;
          v85 = 0uLL;
          v84 = 0uLL;
          do
          {
            v89 = *(*&a17 + v88);
            v90 = *(*&v69 + v88);
            v91 = *(v82 + v88);
            v92 = *(v79 + v88);
            v93 = *(v77 + v88);
            v94 = vaddw_u8(v80, *v89.i8);
            v95 = vaddw_high_u8(v80, v89);
            v96 = vaddw_u8(v74, *v90.i8);
            v97 = vaddw_high_u8(v74, v90);
            v98 = vaddw_u8(v74, *v91.i8);
            v99 = vaddw_high_u8(v74, v91);
            v100 = vaddw_u8(v74, *v92.i8);
            v101 = vaddw_high_u8(v74, v92);
            v102 = vaddw_u8(v74, *v93.i8);
            v103 = vaddw_high_u8(v74, v93);
            v87 = vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(v87, *v96.i8, *v94.i8), v96, v94), *v97.i8, *v95.i8), v97, v95);
            v86 = vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(v86, *v98.i8, *v94.i8), v98, v94), *v99.i8, *v95.i8), v99, v95);
            v85 = vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(v85, *v100.i8, *v94.i8), v100, v94), *v101.i8, *v95.i8), v101, v95);
            v84 = vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(v84, *v102.i8, *v94.i8), v102, v94), *v103.i8, *v95.i8), v103, v95);
            v88 += 16;
          }

          while (v88 <= v68 - 16);
          v83 = ((v68 - 16) & 0xFFFFFFF0) + 16;
        }

        else
        {
          v83 = 0;
          v84 = 0uLL;
          v85 = 0uLL;
          v86 = 0uLL;
          v87 = 0uLL;
        }

        if (v83 < v68)
        {
          v104 = 0;
          v105 = a17;
          v106 = v69;
          v107 = v82;
          v108 = v79;
          v109 = v77;
          do
          {
            v110 = vaddw_u8(v80, *(*&v105 + v83));
            v111 = vaddw_u8(v74, *(*&v106 + v83));
            v112 = vaddw_u8(v74, *(v107 + v83));
            v113 = vaddw_u8(v74, *(v108 + v83));
            v114 = vaddw_u8(v74, *(v109 + v83));
            v87 = vmlal_high_s16(vmlal_s16(v87, *v111.i8, *v110.i8), v111, v110);
            v86 = vmlal_high_s16(vmlal_s16(v86, *v112.i8, *v110.i8), v112, v110);
            v85 = vmlal_high_s16(vmlal_s16(v85, *v113.i8, *v110.i8), v113, v110);
            v104 += 8;
            v109 += 8;
            v108 += 8;
            v84 = vmlal_high_s16(vmlal_s16(v84, *v114.i8, *v110.i8), v114, v110);
            v107 += 8;
            *&v106 += 8;
            *&v105 += 8;
          }

          while (v68 > (v83 + v104));
        }

        *v115.i8 = vpadd_s32(*&vpaddq_s32(v87, v87), *&vpaddq_s32(v86, v86));
        v115.u64[1] = vpadd_s32(*&vpaddq_s32(v85, v85), *&vpaddq_s32(v84, v84));
        v116 = *v66++;
        v117 = vqrdmulhq_lane_s32(vshlq_s32(vaddq_s32(v115, v116), v75), *v212.i8, 0);
        *v81++ = vqmovn_s32(vrshlq_s32(vqaddq_s32(v117, vcltzq_s32(vandq_s8(v117, v76))), v76));
        v73 += 4;
        v77 += v78;
        v79 += v78;
        v82 += v78;
        *&v69 += v78;
      }

      while (v73 < v72);
    }
  }

  if (v61 >= 1)
  {
    v198 = v62 - 8;
    v213 = vdupq_n_s16(0xC3C4u);
    v118 = 3 * v62;
    v119 = v63;
    v120 = (v63 + 4 * v62);
    v121 = (v63 + 2 * v62);
    v122 = 0;
    v195 = v118;
    do
    {
      v197 = v122;
      v119 = (v119 + 2 * v118);
      if (v62 >= 8)
      {
        v123 = 0;
        do
        {
          v124 = *v63++;
          v208 = v124;
          *v125.i64 = sub_2991B21FC(vsubq_s16(vminq_s16(v124, 0), vmaxq_s16(v124, 0)));
          v126.i64[0] = 0x8000800080008000;
          v126.i64[1] = 0x8000800080008000;
          v127 = vrhaddq_s16(v125, v126);
          v128.i64[0] = 0x5A5A5A5A5A5A5A5ALL;
          v128.i64[1] = 0x5A5A5A5A5A5A5A5ALL;
          v129 = vaddq_s16(vqrdmulhq_s16(v127, v213), v128);
          v130 = 3;
          v131.i64[0] = 0x2000200020002000;
          v131.i64[1] = 0x2000200020002000;
          do
          {
            v129 = vaddq_s16(vqshlq_n_s16(vqrdmulhq_s16(v129, vsubq_s16(v131, vqrdmulhq_s16(v127, v129))), 2uLL), v129);
            --v130;
          }

          while (v130);
          v204 = v129;
          v132 = *v121++;
          *v133.i64 = sub_2991AD194(v132);
          v202 = v133;
          v134 = *v120++;
          *__dst = v134;
          *v135.i64 = sub_2991B21FC(vsubq_s16(vminq_s16(v134, 0), vmaxq_s16(v134, 0)));
          v136 = vqshlq_n_s16(v204, 1uLL);
          v137.i64[0] = 0x8000800080008000;
          v137.i64[1] = 0x8000800080008000;
          v138 = vbslq_s8(vclezq_s16(v208), veorq_s8(v136, v137), v136);
          v136.i64[0] = 0x4000400040004000;
          v136.i64[1] = 0x4000400040004000;
          v209 = vbslq_s8(vceqzq_s16(v208), v136, v138);
          v139 = vrhaddq_s16(v135, v137);
          v140.i64[0] = 0x5A5A5A5A5A5A5A5ALL;
          v140.i64[1] = 0x5A5A5A5A5A5A5A5ALL;
          v141 = vaddq_s16(vqrdmulhq_s16(v139, v213), v140);
          v142 = 3;
          v143.i64[0] = 0x2000200020002000;
          v143.i64[1] = 0x2000200020002000;
          do
          {
            v141 = vaddq_s16(vqshlq_n_s16(vqrdmulhq_s16(v141, vsubq_s16(v143, vqrdmulhq_s16(v139, v141))), 2uLL), v141);
            --v142;
          }

          while (v142);
          v205 = v141;
          v144 = *v119++;
          v200 = v144;
          *v145.i64 = sub_2991B21FC(vsubq_s16(vminq_s16(v144, 0), vmaxq_s16(v144, 0)));
          v146 = vqshlq_n_s16(v205, 1uLL);
          v147.i64[0] = 0x8000800080008000;
          v147.i64[1] = 0x8000800080008000;
          v148 = vbslq_s8(vclezq_s16(*__dst), veorq_s8(v146, v147), v146);
          v146.i64[0] = 0x4000400040004000;
          v146.i64[1] = 0x4000400040004000;
          v149 = vbslq_s8(vceqzq_s16(*__dst), v146, v148);
          v150 = vrhaddq_s16(v145, v147);
          v146.i64[0] = 0x5A5A5A5A5A5A5A5ALL;
          v146.i64[1] = 0x5A5A5A5A5A5A5A5ALL;
          v151 = vaddq_s16(vqrdmulhq_s16(v150, v213), v146);
          v152 = 3;
          v153.i64[0] = 0x2000200020002000;
          v153.i64[1] = 0x2000200020002000;
          do
          {
            v151 = vaddq_s16(vqshlq_n_s16(vqrdmulhq_s16(v151, vsubq_s16(v153, vqrdmulhq_s16(v150, v151))), 2uLL), v151);
            --v152;
          }

          while (v152);
          v154 = vqrdmulhq_s16(v209, v202);
          v206 = v151;
          v210 = vqaddq_s16(vrshrq_n_s16(vqaddq_s16(v154, vcltzq_s16(v154)), 4uLL), vqrdmulhq_s16(v149, *v65));
          *v155.i64 = sub_2991AD194(vqshlq_n_s16(v210, 1uLL));
          ++v65;
          v156 = vqshlq_n_s16(v206, 1uLL);
          v157.i64[0] = 0x8000800080008000;
          v157.i64[1] = 0x8000800080008000;
          v158 = vbslq_s8(vclezq_s16(v200), veorq_s8(v156, v157), v156);
          v156.i64[0] = 0x4000400040004000;
          v156.i64[1] = 0x4000400040004000;
          v159 = vqrdmulhq_s16(vbslq_s8(vceqzq_s16(v200), v156, v158), v155);
          *v64++ = v210;
          *a15++ = veor_s8(vqmovn_s16(vrshrq_n_s16(vqaddq_s16(v159, vcltzq_s16(v159)), 8uLL)), 0x8080808080808080);
          v123 += 8;
        }

        while (v123 <= v198);
      }

      else
      {
        v123 = 0;
      }

      v211 = v65;
      v160 = v62 - v123;
      if (v62 <= v123)
      {
        v65 = v211;
      }

      else
      {
        v203 = v64;
        v207 = v63;
        v161 = 0;
        do
        {
          v162 = sub_2991AD230(v207->i16[v161]);
          v163 = sub_2991AD288(v121->u16[v161]);
          v164 = sub_2991AD230(v120->i16[v161]);
          v165 = sub_2991AD230(v119->i16[v161]);
          if (v162 == 0x8000 && v163 == 0x8000)
          {
            v166 = 0x7FFF;
          }

          else
          {
            v167 = v163 * v162;
            if (v167 < 0)
            {
              v168 = -16383;
            }

            else
            {
              v168 = 0x4000;
            }

            v169 = __OFADD__(v168, v167);
            v170 = v168 + v167;
            if (v170 < 0 != v169)
            {
              v170 += 0x7FFF;
            }

            v166 = v170 >> 15;
          }

          v171 = v211->u16[v161];
          if (v164 == 0x8000 && v171 == 0x8000)
          {
            LOWORD(v172) = 0x7FFF;
          }

          else
          {
            v173 = v171 * v164;
            if (v173 < 0)
            {
              v174 = -16383;
            }

            else
            {
              v174 = 0x4000;
            }

            v169 = __OFADD__(v174, v173);
            v175 = v174 + v173;
            if (v175 < 0 != v169)
            {
              v175 += 0x7FFF;
            }

            v172 = v175 >> 15;
          }

          if ((v166 & 0xF) <= ((v166 >> 15) & 1) + 7)
          {
            v176 = v166 >> 4;
          }

          else
          {
            v176 = (v166 >> 4) + 1;
          }

          v177 = v176 + v172;
          if (v177 >= 0x7FFF)
          {
            v177 = 0x7FFF;
          }

          if (v177 <= -32768)
          {
            v178 = -32768;
          }

          else
          {
            v178 = v177;
          }

          v179 = 2 * v178;
          if (v179 >= 0x7FFF)
          {
            v179 = 0x7FFFLL;
          }

          if (v179 <= -32768)
          {
            LOWORD(v179) = 0x8000;
          }

          LODWORD(v179) = v179;
          if (v178 >= 0x4000)
          {
            LODWORD(v179) = 0x7FFF;
          }

          if (v178 <= -16384)
          {
            v180 = 0x8000;
          }

          else
          {
            v180 = v179;
          }

          v181 = sub_2991AD288(v180);
          if (v165 == 0x8000 && v181 == 0x8000)
          {
            v182 = 0x7FFF;
          }

          else
          {
            v183 = v181 * v165;
            if (v183 < 0)
            {
              v184 = -16383;
            }

            else
            {
              v184 = 0x4000;
            }

            v169 = __OFADD__(v184, v183);
            v185 = v184 + v183;
            if (v185 < 0 != v169)
            {
              v185 += 0x7FFF;
            }

            v182 = v185 >> 15;
          }

          v203->i16[v161] = v178;
          v186 = ((v182 >> 15) & 1) + 127 >= v182;
          v187 = v182 >> 8;
          if (!v186)
          {
            ++v187;
          }

          if (v187 >= 127)
          {
            v187 = 127;
          }

          if (v187 <= -128)
          {
            LOBYTE(v187) = 0x80;
          }

          a15->i8[0] = v187 ^ 0x80;
          a15 = (a15 + 1);
          ++v161;
          --v160;
        }

        while (v160);
        v63 = (v207 + v161 * 2);
        v121 = (v121 + v161 * 2);
        v120 = (v120 + v161 * 2);
        v119 = (v119 + v161 * 2);
        v65 = (v211 + v161 * 2);
        v64 = (v203 + v161 * 2);
        v61 = v193;
        v62 = v192;
      }

      v118 = v195;
      v63 = (v63 + 2 * v195);
      v121 = (v121 + 2 * v195);
      v122 = v197 + 1;
      v120 = (v120 + 2 * v195);
    }

    while (v197 + 1 != v61);
  }

  if (v238 >= 5 && v239)
  {
    MEMORY[0x29C29BF70](v239, 0x1000C8052888210);
  }

  if (v240[0] >= 5 && v241)
  {
    MEMORY[0x29C29BF70](v241, 0x1000C8052888210);
  }

  if (v242 >= 5 && v243)
  {
    MEMORY[0x29C29BF70](v243, 0x1000C8052888210);
  }

  if (v244 >= 5 && v245)
  {
    MEMORY[0x29C29BF70](v245, 0x1000C8052888210);
  }

  if (v246 >= 5 && v247)
  {
    MEMORY[0x29C29BF70](v247, 0x1000C8052888210);
  }

  if (v248 >= 5 && v249)
  {
    MEMORY[0x29C29BF70](v249, 0x1000C8052888210);
  }

  if (v250 >= 5 && v251)
  {
    MEMORY[0x29C29BF70](v251, 0x1000C8052888210);
  }

  if (v253 >= 5 && v254)
  {
    MEMORY[0x29C29BF70](v254, 0x1000C8052888210);
  }

  v188 = *MEMORY[0x29EDCA608];
}

void sub_2991ACE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, uint64_t a52, uint64_t a53, int a54, uint64_t a55, uint64_t a56, int a57, uint64_t a58, uint64_t a59, int a60, uint64_t a61)
{
  if (a57 >= 5 && a58)
  {
    MEMORY[0x29C29BF70](a58, 0x1000C8052888210);
  }

  if (a60 >= 5 && a61)
  {
    MEMORY[0x29C29BF70](a61, 0x1000C8052888210);
  }

  if (*(v61 - 256) >= 5)
  {
    v63 = *(v61 - 248);
    if (v63)
    {
      MEMORY[0x29C29BF70](v63, 0x1000C8052888210);
    }
  }

  if (*(v61 - 232) >= 5)
  {
    v64 = *(v61 - 224);
    if (v64)
    {
      MEMORY[0x29C29BF70](v64, 0x1000C8052888210);
    }
  }

  if (*(v61 - 208) >= 5)
  {
    v65 = *(v61 - 200);
    if (v65)
    {
      MEMORY[0x29C29BF70](v65, 0x1000C8052888210);
    }
  }

  if (*(v61 - 184) >= 5)
  {
    v66 = *(v61 - 176);
    if (v66)
    {
      MEMORY[0x29C29BF70](v66, 0x1000C8052888210);
    }
  }

  if (*(v61 - 160) >= 5)
  {
    v67 = *(v61 - 152);
    if (v67)
    {
      MEMORY[0x29C29BF70](v67, 0x1000C8052888210);
    }
  }

  if (*(v61 - 136) >= 5)
  {
    v68 = *(v61 - 128);
    if (v68)
    {
      MEMORY[0x29C29BF70](v68, 0x1000C8052888210);
    }
  }

  _Unwind_Resume(exception_object);
}

int *sub_2991AD064(int *a1, int *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3 > 4)
  {
    operator new[]();
  }

  v4 = a1 + 2;
  if (*a2 <= 4)
  {
    v5 = a2 + 2;
  }

  else
  {
    v5 = *(a2 + 1);
  }

  memcpy(v4, v5, 4 * v3);
  return a1;
}

uint64_t sub_2991AD0E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v15 = *MEMORY[0x29EDCA608];
  sub_2991AD064(&v13, a7);
  v9 = a1 + 8;
  if (*a1 > 4)
  {
    v9 = *(a1 + 8);
  }

  v10 = *(v9 + 4 * a2);
  if (v13 >= 5 && v14)
  {
    MEMORY[0x29C29BF70](v14, 0x1000C8052888210);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

double sub_2991AD194(int16x8_t a1)
{
  v11 = vcltzq_s16(a1);
  *v1.i64 = sub_2991B22F4(vbslq_s8(v11, a1, vnegq_s16(a1)));
  v2.i64[0] = 0x8000800080008000;
  v2.i64[1] = 0x8000800080008000;
  v3 = vrhaddq_s16(v1, v2);
  v4.i64[0] = 0x5A5A5A5A5A5A5A5ALL;
  v4.i64[1] = 0x5A5A5A5A5A5A5A5ALL;
  v5 = vaddq_s16(vqrdmulhq_s16(v3, vdupq_n_s16(0xC3C4u)), v4);
  v6 = 3;
  v7.i64[0] = 0x2000200020002000;
  v7.i64[1] = 0x2000200020002000;
  do
  {
    v5 = vaddq_s16(vqshlq_n_s16(vqrdmulhq_s16(v5, vsubq_s16(v7, vqrdmulhq_s16(v3, v5))), 2uLL), v5);
    --v6;
  }

  while (v6);
  v8.i64[0] = 0xE000E000E000E000;
  v8.i64[1] = 0xE000E000E000E000;
  v9 = vqshlq_n_s16(vaddq_s16(v5, v8), 2uLL);
  *&result = vbicq_s8(vorrq_s8(vandq_s8(vcgezq_s16(a1), v9), vandq_s8(v11, vnegq_s16(v9))), vceqzq_s16(a1)).u64[0];
  return result;
}

uint64_t sub_2991AD230(__int16 a1)
{
  v2 = a1;
  v3 = sub_2991B252C((a1 & (a1 >> 15)) - (a1 & ~(a1 >> 15)));
  v4 = sub_2991B2404(v3);
  v5 = v4 ^ 0x7FFF;
  if (v2 >= 1)
  {
    v5 = v4;
  }

  if (a1)
  {
    return v5;
  }

  else
  {
    return 0x4000;
  }
}

uint64_t sub_2991AD288(int a1)
{
  v1 = a1;
  v2 = a1;
  v3 = -a1;
  if ((a1 >> 15))
  {
    LOWORD(v3) = a1;
  }

  v4 = sub_2991B2860(v3);
  v5 = sub_2991B2734(v4);
  if (v2 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v1)
  {
    return v6 | -v5 & (v2 >> 15);
  }

  else
  {
    return 0;
  }
}

int *sub_2991AD2E8(int *a1, int a2, int *a3, int a4)
{
  *a1 = a2;
  if (a2 >= 5)
  {
    operator new[]();
  }

  v5 = a2 - *a3;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = (a2 - *a3);
    v8 = a1 + 2;
    do
    {
      v9 = v8;
      if (*a1 >= 5)
      {
        v9 = (*(a1 + 1) + 4 * v6);
      }

      *v9 = a4;
      ++v6;
      ++v8;
      --v7;
    }

    while (v7);
  }

  v10 = a1 + 2;
  if (*a1 >= 5)
  {
    v10 = *v10;
  }

  v11 = v10 + 4 * v5;
  v12 = *a3;
  if (v12 <= 4)
  {
    v13 = a3 + 2;
  }

  else
  {
    v13 = *(a3 + 1);
  }

  memcpy(v11, v13, 4 * v12);
  return a1;
}

void sub_2991AD3C4(uint64_t a1, int32x2_t *a2, int32x2_t *a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v9 = *(a4 + 8);
  v10 = *(a4 + 12);
  v11 = a2[1].i32[1];
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v11 != 0)
  {
    v38 = v7;
    v39 = v8;
    if (v9 >= v10)
    {
      v22 = &unk_2A1F62580;
      sub_2991AD5EC(a1, &v22, a2, a3, a4, a5, a6, a7);
    }

    else
    {
      v14 = *(a4 + 16);
      v34 = *a4;
      v35 = v10;
      v36 = v9;
      v37 = v14;
      v15 = a3[2].i32[0];
      v32[0] = *a3;
      v32[1] = vrev64_s32(a3[1]);
      v33 = v15;
      v16 = a2[1].i32[0];
      v17 = a2[2].i32[0];
      v28 = *a2;
      v29 = v11;
      v30 = v16;
      v31 = v17;
      v18 = *a6;
      v26 = *a5;
      v27 = v18;
      v19 = *(a7 + 8);
      v20 = *(a7 + 16);
      v21 = *(a7 + 24);
      v22 = *a7;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      sub_2991AD4D8(a1, v32, &v28, &v34, &v27, &v26, &v22);
    }
  }
}

void sub_2991AD4D8(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v9 = *(a4 + 8);
  v10 = *(a4 + 12);
  v11 = *(a2 + 12);
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v11 != 0)
  {
    v38 = v7;
    v39 = v8;
    if (v9 >= v10)
    {
      v22 = &unk_2A1F62580;
      sub_2991AD9A0(a1, &v22, a2, a3, a4, a5, a6, a7);
    }

    else
    {
      v14 = *(a4 + 16);
      v34 = *a4;
      v35 = v10;
      v36 = v9;
      v37 = v14;
      v15 = a3[2].i32[0];
      v32[0] = *a3;
      v32[1] = vrev64_s32(a3[1]);
      v33 = v15;
      v16 = *(a2 + 8);
      v17 = *(a2 + 16);
      v28 = *a2;
      v29 = v11;
      v30 = v16;
      v31 = v17;
      v18 = *a6;
      v26 = *a5;
      v27 = v18;
      v19 = *(a7 + 8);
      v20 = *(a7 + 16);
      v21 = *(a7 + 24);
      v22 = *a7;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      sub_2991AD3C4(a1, v32, &v28, &v34, &v27, &v26, &v22);
    }
  }
}

void sub_2991AD5EC(uint64_t a1, unint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *(a1 + 100);
  if (v10 == 1)
  {
    goto LABEL_17;
  }

  v11 = *(a5 + 8);
  v12 = *(a5 + 12);
  v29 = *(a3 + 12);
  if (!v10)
  {
    if ((atomic_load_explicit(&qword_2A145E160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E160))
    {
      dword_2A145E158 = sysconf(57);
      __cxa_guard_release(&qword_2A145E160);
    }

    v10 = dword_2A145E158;
  }

  v13 = v11 + 15;
  if (v11 + 15 < 0)
  {
    v13 = v11 + 30;
  }

  v14 = v13 >> 4;
  if (v14 >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 2)
  {
    v16 = (v12 * v11 * v29) >> 16;
    if (v15 < v16)
    {
      LODWORD(v16) = v15;
    }

    if (v16 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v16;
    }
  }

  if (v15 == 1)
  {
LABEL_17:

    sub_2991B0D2C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    sub_2991AE028(v32, v11, v12, v29, v15, *(a1 + 88), *(a1 + 92), *(a1 + 96));
    sub_2991B0380(&v31, 1, a1, v32);
    sub_2991AE0F4(a1);
    if (v12 >= 1)
    {
      v17 = 0;
      v18 = v33;
      v23 = v12;
      do
      {
        v19 = a4[2].i32[0];
        v20 = (*a4 + v19 * v17);
        if (v12 - v17 < v18)
        {
          v18 = v12 - v17;
        }

        v36 = __PAIR64__(v29, v18);
        LODWORD(v37) = v19;
        v34[0] = &v31;
        v34[1] = &v35;
        v35 = v20;
        sub_2991AEA68(v34);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        if (v15 >= 1)
        {
          v21 = *a3;
          v22 = *(a3 + 16);
          operator new();
        }

        sub_2991AE19C((a1 + 104), &v35);
        v12 = v23;
        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }

        v18 = v33;
        v17 += v33;
      }

      while (v17 < v23);
    }

    *a1 = 0;
    ++*(a1 + 80);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_2991AD9A0(uint64_t a1, unint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *(a1 + 100);
  if (v10 == 1)
  {
    goto LABEL_17;
  }

  v11 = *(a5 + 8);
  v12 = *(a5 + 12);
  v29 = *(a3 + 12);
  if (!v10)
  {
    if ((atomic_load_explicit(&qword_2A145E160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E160))
    {
      dword_2A145E158 = sysconf(57);
      __cxa_guard_release(&qword_2A145E160);
    }

    v10 = dword_2A145E158;
  }

  v13 = v11 + 15;
  if (v11 + 15 < 0)
  {
    v13 = v11 + 30;
  }

  v14 = v13 >> 4;
  if (v14 >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 2)
  {
    v16 = (v12 * v11 * v29) >> 16;
    if (v15 < v16)
    {
      LODWORD(v16) = v15;
    }

    if (v16 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v16;
    }
  }

  if (v15 == 1)
  {
LABEL_17:

    sub_2991ADD50(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    sub_2991AE028(v32, v11, v12, v29, v15, *(a1 + 88), *(a1 + 92), *(a1 + 96));
    sub_2991B0380(&v31, 1, a1, v32);
    sub_2991AE0F4(a1);
    if (v12 >= 1)
    {
      v17 = 0;
      v18 = v33;
      v23 = v12;
      do
      {
        v19 = a4[2].i32[0];
        v20 = (*a4 + v19 * v17);
        if (v12 - v17 < v18)
        {
          v18 = v12 - v17;
        }

        v36 = __PAIR64__(v29, v18);
        LODWORD(v37) = v19;
        v34[0] = &v31;
        v34[1] = &v35;
        v35 = v20;
        sub_2991AEA68(v34);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        if (v15 >= 1)
        {
          v21 = *a3;
          v22 = *(a3 + 16);
          operator new();
        }

        sub_2991AE19C((a1 + 104), &v35);
        v12 = v23;
        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }

        v18 = v33;
        v17 += v33;
      }

      while (v17 < v23);
    }

    *a1 = 0;
    ++*(a1 + 80);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_2991ADD50(uint64_t a1, unint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *(a5 + 8);
  v11 = *(a5 + 12);
  v13 = *(a3 + 12);
  sub_2991AE028(v55, v10, v11, v13, 1, *(a1 + 88), *(a1 + 92), *(a1 + 96));
  sub_2991B0380(v52, 0, a1, v55);
  sub_2991B0380(v49, 1, a1, v55);
  v44 = a1;
  v48 = v55;
  v14 = (4 * v57 * v56 + 63) & 0xFFFFFFFFFFFFFFC0;
  v15 = *(a1 + 32);
  v16 = *(a1 + 24);
  *(a1 + 8 * v16 + 40) = v15;
  v17 = *(a1 + 80);
  v35 = (a1 + 24);
  v36 = a1;
  ++*(a1 + 24);
  *(a1 + 32) = v14 + v15;
  v45 = v16;
  v46 = v17;
  v47 = 5;
  sub_2991AE0F4(a1);
  v18 = v57;
  if (v57 >= v11)
  {
    v19 = *a4;
    v20 = a4[2].i32[0];
    v61 = vrev64_s32(a4[1]);
    LODWORD(v62) = v20;
    v58 = v49;
    v59 = &v60;
    v60 = v19;
    sub_2991AEA68(&v58);
  }

  if (v10 >= 1)
  {
    v21 = 0;
    v22 = v56;
    v37 = v10;
    do
    {
      v23 = *(a3 + 16);
      v24 = *a3 + v23 * v21;
      if (v10 - v21 >= v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = v10 - v21;
      }

      v61 = __PAIR64__(v13, v25);
      LODWORD(v62) = v23;
      v58 = v52;
      v59 = &v60;
      v60 = v24;
      sub_2991AEA68(&v58);
      if (v11 >= 1)
      {
        v26 = 0;
        v27 = v57;
        do
        {
          if (v11 - v26 >= v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = v11 - v26;
          }

          if (v18 < v11)
          {
            v29 = a4[2].i32[0];
            v30 = *a4 + v29 * v26;
            v61 = __PAIR64__(v13, v28);
            LODWORD(v62) = v29;
            v58 = v49;
            v59 = &v60;
            v60 = v30;
            sub_2991AEA68(&v58);
          }

          v60 = a2;
          v61 = v55;
          v62 = &v44;
          v63 = v52;
          v64 = v49;
          sub_2991AEFE8(&v60, v13);
          v60 = __PAIR64__(v26, v21);
          v61 = __PAIR64__(v28, v25);
          v31 = *(v53 + 8 * v54 + 40);
          v32 = *(v53 + 16);
          v33 = *(v50 + 8 * v51 + 40);
          v34 = *(v50 + 16);
          LODWORD(v58) = *a6;
          HIDWORD(v58) = v25;
          v43[0] = *a7;
          v43[1] = v28;
          sub_2991AE288(a5, &v60, &v44, v13, v31 + v32, v33 + v34, &v58, v43, a8);
          v27 = v57;
          v26 += v57;
        }

        while (v26 < v11);
      }

      v22 = v56;
      v21 += v56;
      v10 = v37;
    }

    while (v21 < v37);
  }

  *v36 = 0;
  ++*(v36 + 80);
  *v35 = 0;
  v35[1] = 0;
}

uint64_t sub_2991AE028(unsigned int *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, float a8)
{
  result = sub_2991B02D0(a2, a3, a4, a5, a7, a1 + 3, a1 + 4, a1 + 5, a8);
  v11 = a1[4];
  v12 = a6 - 64;
  if (a6 < 64)
  {
    v12 = a6 - 57;
  }

  v13 = v12 >> 3;
  if (v13 <= 1)
  {
    v13 = 1;
  }

  v14 = a1[5] - 1;
  v15 = (v14 + v13) / v13;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v16 = ((v15 + v14) / v15 + 15) & 0xFFFFFFF0;
  v17 = a6 / (v16 + 4 * v11);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = a1[3] - 1;
  v19 = (v17 + v18) / v17;
  if (v19 <= 1)
  {
    v19 = 1;
  }

  *a1 = ((v19 + v18) / v19 + 3) & 0xFFFFFFFC;
  a1[1] = v11;
  a1[2] = v16;
  return result;
}

uint64_t sub_2991AE0F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (*(result + 32) > v2)
  {
    free(*(result + 16));
    v3 = (*(v1 + 32) - 1) | ((*(v1 + 32) - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = (v4 | (v4 >> 8) | ((v4 | (v4 >> 8)) >> 16)) + 1;
    *(v1 + 8) = v5;
    memptr = 0;
    result = malloc_type_posix_memalign(&memptr, 0x40uLL, v5, 0xA4DE5FC5uLL);
    v6 = memptr;
    if (result)
    {
      v6 = 0;
    }

    *(v1 + 16) = v6;
    v2 = *(v1 + 8);
  }

  if (v2 && !*(v1 + 16))
  {
    sub_2991BB0C4();
  }

  *v1 = 1;
  return result;
}

void sub_2991AE19C(void *a1, uint64_t **a2)
{
  v4 = a2[1] - *a2 - 1;
  sub_2991B065C(a1, v4);
  v5 = a1[3];
  atomic_store(v4, a1 + 3);
  v9 = 0;
  sub_2991B07E4(*a2, a2[1] - 1, a1, &v9);
  v6 = *(a2[1] - 1);
  v6[1] = a1 + 4;
  (*(*v6 + 16))(v6);
  sub_2991B0850(a1 + 3);
  v8 = *a2;
  v7 = a2[1];
  while (v8 != v7)
  {
    if (*v8)
    {
      (*(**v8 + 8))(*v8);
    }

    ++v8;
  }
}

void sub_2991AE288(uint64_t a1, int *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int *a7, _DWORD *a8, uint64_t a9)
{
  v9 = a8;
  v13 = a1;
  v116 = *MEMORY[0x29EDCA608];
  v14 = *(a3 + 32);
  v104 = *(*a3 + 8 * *(a3 + 8) + 40) + *(*a3 + 16);
  v105 = *(v14 + 12);
  v106 = v105;
  v102 = a5;
  v15 = a2[3];
  v103 = a2[2];
  v100 = a6;
  v101 = v15;
  v113 = a9;
  v114 = a9 + 16;
  v16 = *(a9 + 20);
  LODWORD(v115) = v16 & ~(v16 >> 31);
  HIDWORD(v115) = -v16 & ~(-v16 >> 31);
  v112[0] = a9;
  v112[1] = a9 + 16;
  v112[2] = v115;
  v111[0] = a9;
  v111[1] = (a9 + 16);
  v111[2] = v115;
  v110[0] = a9;
  v110[1] = a9 + 16;
  v110[2] = v115;
  v109[0] = a9;
  v109[1] = (a9 + 16);
  v109[2] = v115;
  v108[0] = a9;
  v108[1] = (a9 + 16);
  v108[2] = v115;
  LODWORD(v17) = 0;
  if (v15 >= 8)
  {
    do
    {
      _X10 = v102;
      __asm { PRFM            #0, [X10] }

      _X10 = v102 + 16;
      __asm { PRFM            #0, [X10] }

      _X8 = v104 + 4 * v106 * v17;
      v27 = 8;
      do
      {
        __asm { PRFM            #0, [X8] }

        _X11 = _X8 + 16;
        __asm { PRFM            #0, [X11] }

        _X8 += 4 * v106;
        --v27;
      }

      while (v27);
      LODWORD(v31) = a2[2];
      if (v31 >= 8)
      {
        v33 = 0;
        v34 = 0;
        do
        {
          v35 = *a2;
          v32 = v34 + 8;
          _X11 = v102 + 4 * (v34 + 8);
          __asm { PRFM            #0, [X11] }

          _X11 += 16;
          __asm { PRFM            #0, [X11] }

          v39 = v104 + v33 + 4 * v17 * v106;
          v40 = 8;
          do
          {
            _X12 = v39 + 32;
            __asm { PRFM            #0, [X12] }

            _X12 = v39 + 48;
            __asm { PRFM            #0, [X12] }

            v39 += 4 * v106;
            --v40;
          }

          while (v40);
          v45 = v35 + v34;
          v98[0] = v107;
          v98[1] = 0x800000008;
          v99 = 8;
          sub_2991AF1CC(&v104, v108, v98, &v102, &v100, a7, a8, a4, v34, v17, v35 + v34, a2[1] + v17, 0, 0);
          sub_2991AF1CC(&v104, v108, v98, &v102, &v100, a7, a8, a4, v34, v17 | 4, v45, a2[1] + (v17 | 4), 0, 4);
          v97[4] = v107[4];
          v97[5] = v107[5];
          v97[6] = v107[6];
          v97[7] = v107[7];
          v97[0] = v107[0];
          v97[1] = v107[1];
          v97[2] = v107[2];
          v97[3] = v107[3];
          v13 = a1;
          sub_2991AFD1C(v97, a1, *a2 + v34, a2[1] + v17);
          v31 = a2[2];
          v33 += 32;
          v34 += 8;
        }

        while (v32 <= v31 - 8);
        v9 = a8;
      }

      else
      {
        LODWORD(v32) = 0;
      }

      for (; v32 <= v31 - 4; LODWORD(v31) = a2[2])
      {
        v46 = v32 + *a2;
        sub_2991AF3A4(&v104, v109, v13, &v102, &v100, a7, v9, a4, v32, v17, v46, a2[1] + v17, v46, a2[1] + v17);
        sub_2991AF3A4(&v104, v109, v13, &v102, &v100, a7, v9, a4, v32, v17 | 4, v46, a2[1] + (v17 | 4), v46, a2[1] + (v17 | 4));
        LODWORD(v32) = v32 + 4;
      }

      if (v32 < v31)
      {
        do
        {
          v47 = v32 + *a2;
          sub_2991AF564(&v104, v110, v13, &v102, &v100, a7, v9, a4, v32, v17, v47, a2[1] + v17, v47, a2[1] + v17);
          sub_2991AF564(&v104, v110, v13, &v102, &v100, a7, v9, a4, v32, v17 | 4, v47, a2[1] + (v17 | 4), v47, a2[1] + (v17 | 4));
          LODWORD(v32) = v32 + 1;
        }

        while (v32 < a2[2]);
      }

      LODWORD(v17) = v17 + 8;
      v15 = a2[3];
    }

    while (v17 <= v15 - 8);
  }

  while (v17 <= v15 - 4)
  {
    _X11 = v102;
    __asm { PRFM            #0, [X11] }

    _X11 = v102 + 16;
    __asm { PRFM            #0, [X11] }

    _X9 = v104 + 4 * v106 * v17;
    v53 = 4;
    do
    {
      __asm { PRFM            #0, [X9] }

      _X12 = _X9 + 16;
      __asm { PRFM            #0, [X12] }

      _X9 += 4 * v106;
      --v53;
    }

    while (v53);
    v57 = a2[1] + v17;
    LODWORD(v58) = a2[2];
    if (v58 >= 8)
    {
      v60 = 0;
      v61 = 0;
      do
      {
        v59 = v61 + 8;
        _X12 = v102 + 4 * (v61 + 8);
        __asm { PRFM            #0, [X12] }

        _X12 += 16;
        __asm { PRFM            #0, [X12] }

        v65 = v104 + v60 + 4 * v17 * v106;
        v66 = 4;
        do
        {
          _X13 = v65 + 32;
          __asm { PRFM            #0, [X13] }

          _X13 = v65 + 48;
          __asm { PRFM            #0, [X13] }

          v65 += 4 * v106;
          --v66;
        }

        while (v66);
        sub_2991AF6A8(&v104, v108, v13, &v102, &v100, a7, a8, a4, v61, v17, *a2 + v61, v57, *a2 + v61, v57);
        v58 = a2[2];
        v60 += 32;
        v61 = v59;
      }

      while (v59 <= v58 - 8);
      v9 = a8;
    }

    else
    {
      LODWORD(v59) = 0;
    }

    while (v59 <= v58 - 4)
    {
      sub_2991AF3A4(&v104, v109, v13, &v102, &v100, a7, v9, a4, v59, v17, v59 + *a2, v57, v59 + *a2, v57);
      LODWORD(v59) = v59 + 4;
      LODWORD(v58) = a2[2];
    }

    if (v59 < v58)
    {
      do
      {
        sub_2991AF564(&v104, v110, v13, &v102, &v100, a7, v9, a4, v59, v17, v59 + *a2, v57, v59 + *a2, v57);
        LODWORD(v59) = v59 + 1;
      }

      while (v59 < a2[2]);
    }

    LODWORD(v17) = v17 + 4;
    v15 = a2[3];
  }

  if (v17 < v15)
  {
    v17 = v17;
    do
    {
      v71 = a2[1] + v17;
      _X10 = v102;
      __asm { PRFM            #0, [X10] }

      _X10 = v102 + 16;
      __asm { PRFM            #0, [X10] }

      _X8 = v104 + 4 * v106 * v17;
      __asm { PRFM            #0, [X8] }

      _X8 = _X8 + 16;
      __asm { PRFM            #0, [X8] }

      LODWORD(_X8) = a2[2];
      if (_X8 >= 8)
      {
        v80 = 0;
        v81 = 48;
        do
        {
          v82 = v80;
          v80 += 8;
          _X12 = v102 + v81;
          _X13 = v102 + v81 - 16;
          __asm
          {
            PRFM            #0, [X13]
            PRFM            #0, [X12]
          }

          _X10 = v104 + 4 * v17 * v106 + v81;
          _X11 = _X10 - 16;
          __asm
          {
            PRFM            #0, [X11]
            PRFM            #0, [X10]
          }

          sub_2991AF89C(&v104, v111, v13, &v102, &v100, a7, a8, a4, v82, v17, v82 + *a2, v71, v82 + *a2, v71);
          _X8 = a2[2];
          v81 += 32;
        }

        while (v80 <= _X8 - 8);
      }

      else
      {
        LODWORD(v80) = 0;
      }

      for (; v80 <= _X8 - 4; LODWORD(_X8) = a2[2])
      {
        sub_2991AF968(&v104, v112, v13, &v102, &v100, a7, a8, a4, v80, v17, v80 + *a2, v71, v80 + *a2, v71);
        LODWORD(v80) = v80 + 4;
      }

      if (v80 < _X8)
      {
        v80 = v80;
        do
        {
          v91 = v80 + *a2;
          v92 = sub_2991B022C(&v114, *(v104 + 4 * v17 * v106 + 4 * v80) + (*a8 + 128) * *(v102 + 4 * v80) + *(*v113 + 4 * v71) + (*(v100 + 4 * v17) + (*a8 + 128) * a4) * (*a7 + 128));
          if (v92 <= -32768)
          {
            v93 = -32768;
          }

          else
          {
            v93 = v92;
          }

          if (v93 >= 0x7FFF)
          {
            LOWORD(v93) = 0x7FFF;
          }

          *(*v13 + 2 * *(v13 + 16) * v91 + 2 * v71) = v93;
          ++v80;
        }

        while (a2[2] > v80);
      }

      ++v17;
    }

    while (a2[3] > v17);
  }

  v94 = *MEMORY[0x29EDCA608];
}

void sub_2991AEA68(uint64_t *a1)
{
  bzero((*(*(*a1 + 16) + 8 * *(*a1 + 48) + 40) + *(*(*a1 + 16) + 16)), 4 * *(*a1 + 8));
  v2 = a1[1];
  v3 = *(v2 + 12);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *a1;
    v6 = *(*a1 + 4);
    do
    {
      v7 = v3 - v4;
      if (v7 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      v9 = *(v2 + 8);
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = *v5;
        do
        {
          if (v9 - v10 >= v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = v9 - v10;
          }

          if (v8 >= 1)
          {
            for (i = 0; i < v8; i += 64)
            {
              v14 = v10;
              v15 = v12;
              if (v12 >= 1)
              {
                do
                {
                  _X11 = *a1[1] + *(a1[1] + 16) * v14 + i + v4;
                  __asm { PRFM            #0, [X11] }

                  ++v14;
                  --v15;
                }

                while (v15);
              }
            }
          }

          sub_2991AEB9C(a1, v10, v12, v4, v8);
          v5 = *a1;
          v2 = a1[1];
          v11 = **a1;
          v10 += v11;
          v9 = *(v2 + 8);
        }

        while (v10 < v9);
        v6 = v5[1];
      }

      v4 += v6;
      v3 = *(v2 + 12);
    }

    while (v4 < v3);
  }
}

void sub_2991AEB9C(uint64_t *a1, int a2, int a3, int a4, int a5)
{
  if (a3 >= 1)
  {
    v10 = 0;
    v11 = a3;
    do
    {
      v12 = v11 - 4;
      if (v11 >= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = v11;
      }

      v14 = a2 + v10;
      v15 = *(*a1 + 12) - a4;
      if (v15 >= *(*a1 + 4))
      {
        v15 = *(*a1 + 4);
      }

      *(*a1 + 72) = v15 * v14 + *(*a1 + 8) * a4;
      sub_2991AEC4C(a1, v14, v13, a4, a5);
      v10 += 4;
      v11 = v12;
    }

    while (v10 < a3);
  }
}

void sub_2991AEC4C(uint64_t *a1, int a2, int a3, int a4, int a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  if (a3 == 4)
  {
    v9 = a5 & 0xFFFFFFFFFFFFFFF0;
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = a4;
      do
      {
        v12 = *a1;
        v13 = a1[1];
        v14 = *v13;
        LODWORD(v13) = *(v13 + 16);
        v37 = (v14 + v13 * a2 + v11);
        v38 = 0x1000000004;
        v39 = v13;
        sub_2991AEEC0(&v37, v12, a2);
        v10 += 16;
        v11 += 16;
      }

      while (v10 < v9);
    }

    if (v9 != a5)
    {
      v15 = 0;
      v16 = a1[1];
      v17 = v9 + a4;
      v18 = *(v16 + 16);
      v19 = *v16 + v18 * a2 + v17;
      *&v20 = 0x8080808080808080;
      *(&v20 + 1) = 0x8080808080808080;
      v40 = v20;
      v41 = v20;
      v42 = v20;
      v43 = v20;
      for (i = 24; i != 88; i += 16)
      {
        memcpy(&v37 + i, (v19 + v15), a5 & 0xF);
        v15 += v18;
      }

      v37 = &v40;
      v38 = 0x1000000004;
      v39 = 16;
      sub_2991AEEC0(&v37, *a1, a2);
    }
  }

  else if (a5 >= 1)
  {
    v22 = 0;
    v34 = a4;
    do
    {
      v23 = a1[1];
      v24 = *v23;
      v25 = *(v23 + 16);
      *&v26 = 0x8080808080808080;
      *(&v26 + 1) = 0x8080808080808080;
      v40 = v26;
      v41 = v26;
      v42 = v26;
      v43 = v26;
      if (a3 >= 1)
      {
        v27 = 0;
        v28 = a3;
        v29 = v24 + v25 * a2 + v22 + v34;
        v30 = a5 - v22;
        if (a5 - v22 >= 16)
        {
          v30 = 16;
        }

        v31 = v30;
        v32 = &v40;
        do
        {
          memcpy(v32, (v29 + v27), v31);
          v27 += v25;
          ++v32;
          --v28;
        }

        while (v28);
      }

      v37 = &v40;
      v38 = 0x1000000004;
      v39 = 16;
      sub_2991AEEC0(&v37, *a1, a2);
      v22 += 16;
    }

    while (v22 < a5);
  }

  v33 = *MEMORY[0x29EDCA608];
}

int16x8_t sub_2991AEEC0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v22 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 16);
  v5 = *(v4 + 40 + 8 * *(a2 + 48));
  v6 = *(v4 + 40 + 8 * *(a2 + 24));
  v7 = *(v4 + 16);
  v8 = v6 + v7;
  v9 = *(a2 + 72);
  v10 = *a1;
  v11 = *(a1 + 16);
  do
  {
    v21[v3] = *v10;
    v10 = (v10 + v11);
    ++v3;
  }

  while (v3 != 4);
  v12 = 0;
  v13.i64[0] = 0x8080808080808080;
  v13.i64[1] = 0x8080808080808080;
  do
  {
    v21[v12] = veorq_s8(v21[v12], v13);
    ++v12;
  }

  while (v12 != 4);
  v14 = 0;
  v15 = (v8 + v9);
  v16 = v21[1];
  *v15 = v21[0];
  v15[1] = v16;
  v17 = v21[3];
  v15[2] = v21[2];
  v15[3] = v17;
  do
  {
    v20[v14] = vaddw_high_s8(vmovl_s8(*&v21[v14]), v21[v14]);
    ++v14;
  }

  while (v14 != 4);
  result = vpaddq_s16(vpaddq_s16(v20[0], v20[1]), vpaddq_s16(v20[2], v20[3]));
  *(v5 + v7 + 4 * a3) = vpadalq_s16(*(v5 + v7 + 4 * a3), result);
  *(a2 + 72) += 64;
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2991AEFE8(uint64_t result, int a2)
{
  v2 = (a2 + 15) & 0xFFFFFFF0;
  if (v2 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = *(result + 8);
    v6 = v5[2];
    do
    {
      if (v2 - v4 >= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v2 - v4;
      }

      v8 = v5[3];
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = *v5;
        do
        {
          v11 = v8 - v9;
          if (v11 >= v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = v11;
          }

          v13 = v5[4];
          if (v13 >= 1)
          {
            for (i = 0; i < v13; i += 4)
            {
              if (v12 >= 1)
              {
                for (j = 0; j < v12; j += 4)
                {
                  result = sub_2991AF0E4(v3, v9 + j, i, v4, v7);
                }
              }
            }

            v5 = v3[1];
          }

          v10 = *v5;
          v9 += *v5;
          v8 = v5[3];
        }

        while (v9 < v8);
        v6 = v5[2];
      }

      v4 += v6;
    }

    while (v4 < v2);
  }

  return result;
}

uint64_t sub_2991AF0E4(void *a1, int a2, int a3, int a4, int a5)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(v6 + 12) - a4;
  if (v7 >= *(v6 + 4))
  {
    v7 = *(v6 + 4);
  }

  *(v6 + 72) = v7 * a2 + *(v6 + 8) * a4;
  v8 = a1[4];
  v9 = *(v8 + 12) - a4;
  if (v9 >= *(v8 + 4))
  {
    v9 = *(v8 + 4);
  }

  v10 = v9 * a3 + *(v8 + 8) * a4;
  *(v8 + 72) = v10;
  v11 = *(*v5 + 8 * *(v5 + 8) + 40) + *(*v5 + 16);
  v12 = *(*(v5 + 32) + 12);
  return (*(**a1 + 8))(*a1, v11 + 4 * a2 + 4 * v12 * a3, 1, v12, *(*(v6 + 16) + 8 * *(v6 + 24) + 40) + *(*(v6 + 16) + 16) + *(v6 + 72), *(*(v8 + 16) + 8 * *(v8 + 24) + 40) + *(*(v8 + 16) + 16) + v10, a4, a5);
}

void sub_2991AF1CC(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, int *a6, _DWORD *a7, int a8, int a9, int a10, unsigned int a11, int a12, int a13, int a14)
{
  v15 = 0;
  v57 = *MEMORY[0x29EDCA608];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = *(a1 + 16);
  v17 = (4 * v16 * a10 + 4 * a9 + *a1 + 16);
  v18 = 4 * v16;
  do
  {
    v19 = &v41.i8[v15];
    v20 = *v17;
    *v19 = *(v17 - 1);
    *(v19 + 1) = v20;
    v15 += 32;
    v17 = (v17 + v18);
  }

  while (v15 != 128);
  v21 = 0;
  v22 = (*a4 + 4 * a9);
  v24 = *v22;
  v23 = v22[1];
  v25 = *(*a5 + 4 * a10);
  v26 = *a6;
  v27 = *a7 + 128;
  v28 = vdupq_n_s32(v27);
  v29 = 1;
  do
  {
    v30 = 0;
    v31 = v29;
    v32 = vmulq_s32(v24, v28);
    v33 = &v41.i8[16 * v21];
    do
    {
      *&v33[v30] = vaddq_s32(*&v33[v30], v32);
      v30 += 32;
    }

    while (v30 != 128);
    v29 = 0;
    v24 = v23;
    v21 = 1;
  }

  while ((v31 & 1) != 0);
  v34 = 0;
  v35 = vmulq_s32(vaddq_s32(vdupq_n_s32(v27 * a8), v25), vdupq_n_s32(v26 + 128));
  v49 = vdupq_lane_s32(*v35.i8, 0);
  v50 = vdupq_lane_s32(*v35.i8, 1);
  v51 = vdupq_laneq_s32(v35, 2);
  v52 = vdupq_laneq_s32(v35, 3);
  v36 = 1;
  do
  {
    v37 = 0;
    v38 = v36;
    v39 = 16 * v34;
    do
    {
      *(&v41 + v39) = vaddq_s32(*(&v41 + v39), *(&v49 + v37));
      v37 += 16;
      v39 += 32;
    }

    while (v37 != 64);
    v36 = 0;
    v34 = 1;
  }

  while ((v38 & 1) != 0);
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v56 = v48;
  v49 = v41;
  v50 = v42;
  v51 = v43;
  v52 = v44;
  sub_2991AFA80(a2, &v49, a3, a11, a12, a13, a14);
  v40 = *MEMORY[0x29EDCA608];
}

void sub_2991AF3A4(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, int *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v15 = 0;
  v41 = *MEMORY[0x29EDCA608];
  v16 = *(a1 + 16);
  v17 = (*a1 + 4 * v16 * a10 + 4 * a9);
  v18 = 4 * v16;
  do
  {
    *(&v37 + v15) = *v17;
    v15 += 16;
    v17 = (v17 + v18);
  }

  while (v15 != 64);
  v19 = 0;
  v20 = *(*a4 + 4 * a9);
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v21 = *(*a5 + 4 * a10);
  v22 = *a6;
  v23 = *a7 + 128;
  v24 = vmulq_s32(vdupq_n_s32(v23), v20);
  do
  {
    *(&v33 + v19) = vaddq_s32(*(&v33 + v19), v24);
    v19 += 16;
  }

  while (v19 != 64);
  v25 = 0;
  v26 = vmulq_s32(vaddq_s32(vdupq_n_s32(v23 * a8), v21), vdupq_n_s32(v22 + 128));
  v37 = vdupq_lane_s32(*v26.i8, 0);
  v38 = vdupq_lane_s32(*v26.i8, 1);
  v39 = vdupq_laneq_s32(v26, 2);
  v40 = vdupq_laneq_s32(v26, 3);
  do
  {
    *(&v33 + v25) = vaddq_s32(*(&v33 + v25), *(&v37 + v25));
    v25 += 16;
  }

  while (v25 != 64);
  v27 = *(**a2 + 4 * a12);
  *v28.i64 = sub_2991AFEF4((a2 + 1), *vaddq_s32(vdupq_lane_s32(*v27.i8, 0), v33).i64, *vaddq_s32(vdupq_lane_s32(*v27.i8, 1), v34).i64, vaddq_s32(vdupq_laneq_s32(v27, 2), v35), vaddq_s32(vdupq_laneq_s32(v27, 3), v36));
  v37 = vqmovn_high_s32(vqmovn_s32(v28), v29);
  v38 = vqmovn_high_s32(vqmovn_s32(v30), v31);
  sub_2991AFF6C(&v37, a3, a13, a14);
  v32 = *MEMORY[0x29EDCA608];
}

int16x4_t sub_2991AF564(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v14 = 0;
  v27 = *MEMORY[0x29EDCA608];
  v15 = *(a1 + 16);
  v16 = (*a1 + 4 * v15 * a10 + 4 * a9);
  v17 = 4 * v15;
  do
  {
    v26.i32[v14++] = *v16;
    v16 = (v16 + v17);
  }

  while (v14 != 4);
  v18 = *(a2 + 8);
  v19 = v18 + 2;
  v20 = vld1q_dup_f32(v19);
  v21 = vld1q_dup_f32(v18);
  v22 = vqrdmulhq_s32(vshlq_s32(vmlaq_s32(vaddq_s32(vaddq_s32(*(**a2 + 4 * a12), v26), vdupq_n_s32((*a7 + 128) * *(*a4 + 4 * a9))), vaddq_s32(vdupq_n_s32((*a7 + 128) * a8), *(*a5 + 4 * a10)), vdupq_n_s32(*a6 + 128)), vdupq_lane_s32(*(a2 + 16), 0)), v21);
  v23 = vdupq_n_s32(-HIDWORD(*(a2 + 16)));
  result = vqmovn_s32(vaddq_s32(vrshlq_s32(vqaddq_s32(v22, vcltzq_s32(vandq_s8(v23, v22))), v23), v20));
  *(*a3 + 2 * *(a3 + 16) * a13 + 2 * a14) = result;
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2991AF6A8(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, int *a6, _DWORD *a7, int a8, int a9, int a10, unsigned int a11, int a12, int a13, int a14)
{
  v15 = 0;
  v61 = *MEMORY[0x29EDCA608];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v16 = *(a1 + 16);
  v17 = (4 * v16 * a10 + 4 * a9 + *a1 + 16);
  v18 = 4 * v16;
  do
  {
    v19 = &v45.i8[v15];
    v20 = *v17;
    *v19 = *(v17 - 1);
    *(v19 + 1) = v20;
    v15 += 32;
    v17 = (v17 + v18);
  }

  while (v15 != 128);
  v21 = 0;
  v22 = (*a4 + 4 * a9);
  v24 = *v22;
  v23 = v22[1];
  v25 = *(*a5 + 4 * a10);
  v26 = *a6;
  v27 = *a7 + 128;
  v28 = vdupq_n_s32(v27);
  v29 = 1;
  do
  {
    v30 = 0;
    v31 = v29;
    v32 = vmulq_s32(v24, v28);
    v33 = &v45.i8[16 * v21];
    do
    {
      *&v33[v30] = vaddq_s32(*&v33[v30], v32);
      v30 += 32;
    }

    while (v30 != 128);
    v29 = 0;
    v24 = v23;
    v21 = 1;
  }

  while ((v31 & 1) != 0);
  v34 = 0;
  v35 = vmulq_s32(vaddq_s32(vdupq_n_s32(v27 * a8), v25), vdupq_n_s32(v26 + 128));
  v53 = vdupq_lane_s32(*v35.i8, 0);
  v54 = vdupq_lane_s32(*v35.i8, 1);
  v55 = vdupq_laneq_s32(v35, 2);
  v56 = vdupq_laneq_s32(v35, 3);
  v36 = 1;
  do
  {
    v37 = 0;
    v38 = v36;
    v39 = 16 * v34;
    do
    {
      *(&v45 + v39) = vaddq_s32(*(&v45 + v39), *(&v53 + v37));
      v37 += 16;
      v39 += 32;
    }

    while (v37 != 64);
    v36 = 0;
    v34 = 1;
  }

  while ((v38 & 1) != 0);
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = v52;
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v56 = v48;
  *v40.i64 = sub_2991AFB50(a2, &v53, a11, a12);
  v53 = v40;
  v54 = v41;
  v55 = v42;
  v56 = v43;
  sub_2991AFFF0(&v53, a3, a13, a14);
  v44 = *MEMORY[0x29EDCA608];
}

double sub_2991AF89C(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v15 = *a1 + 4 * a9 + 4 * *(a1 + 16) * a10;
  v16 = *(v15 + 16);
  v17 = *a4 + 4 * a9;
  v18 = *(v17 + 16);
  v19 = sub_2991B00E8((a2 + 1), vmlaq_s32(vaddq_s32(vdupq_n_s32(*(**a2 + 4 * a12) + (*(*a5 + 4 * a10) + (*a7 + 128) * a8) * (*a6 + 128)), *v15), vdupq_n_s32(*a7 + 128), *v17));
  v22 = vqmovn_high_s32(vqmovn_s32(v19), v20);
  *&result = sub_2991B0150(&v22, a3, a13, a14).n128_u64[0];
  return result;
}

int16x4_t sub_2991AF968(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v14 = *(a2 + 8);
  v15 = v14 + 2;
  v16 = vld1q_dup_f32(v15);
  v17 = vld1q_dup_f32(v14);
  v18 = vqrdmulhq_s32(vshlq_s32(vaddq_s32(vmlaq_s32(*(*a1 + 4 * a9 + 4 * *(a1 + 16) * a10), vdupq_n_s32(*a7 + 128), *(*a4 + 4 * a9)), vdupq_n_s32(*(**a2 + 4 * a12) + (*(*a5 + 4 * a10) + (*a7 + 128) * a8) * (*a6 + 128))), vdupq_lane_s32(*(a2 + 16), 0)), v17);
  v19 = vdupq_n_s32(-HIDWORD(*(a2 + 16)));
  result = vqmovn_s32(vaddq_s32(vrshlq_s32(vqaddq_s32(v18, vcltzq_s32(vandq_s8(v19, v18))), v19), v16));
  *(*a3 + 2 * *(a3 + 16) * a13 + 2 * a14) = result.i16[0];
  *(*a3 + 2 * (*(a3 + 16) + *(a3 + 16) * a13) + 2 * a14) = result.i16[1];
  *(*a3 + 2 * *(a3 + 16) * (a13 + 2) + 2 * a14) = result.i16[2];
  *(*a3 + 2 * *(a3 + 16) * (a13 + 3) + 2 * a14) = result.i16[3];
  return result;
}

void sub_2991AFA80(void **a1, int32x4_t *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v10 = a2[5];
  v18[4] = a2[4];
  v18[5] = v10;
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[1];
  v18[0] = *a2;
  v18[1] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  *&v14 = sub_2991AFB50(a1, v18, a4, a5);
  *(*a3 + 2 * a6 + 2 * *(a3 + 16) * a7) = v14;
  *(*a3 + 2 * a6 + 2 * (*(a3 + 16) + *(a3 + 16) * a7)) = v15;
  *(*a3 + 2 * a6 + 2 * *(a3 + 16) * (a7 + 2)) = v16;
  *(*a3 + 2 * a6 + 2 * *(a3 + 16) * (a7 + 3)) = v17;
}

double sub_2991AFB50(void **a1, int32x4_t *a2, uint64_t a3, int a4)
{
  v4 = *(**a1 + 4 * a4);
  v5 = vdupq_lane_s32(*v4.i8, 0);
  v6 = vaddq_s32(v5, *a2);
  v7 = vaddq_s32(v5, a2[1]);
  v8 = vdupq_lane_s32(*v4.i8, 1);
  v9 = vaddq_s32(v8, a2[2]);
  v10 = vaddq_s32(v8, a2[3]);
  v11 = vdupq_laneq_s32(v4, 2);
  v12 = vaddq_s32(v11, a2[4]);
  v13 = vaddq_s32(v11, a2[5]);
  v14 = vdupq_laneq_s32(v4, 3);
  v15 = vaddq_s32(v14, a2[6]);
  v16 = vaddq_s32(v14, a2[7]);
  v18[0] = v6;
  v18[1] = v7;
  v18[2] = v9;
  v18[3] = v10;
  v18[4] = v12;
  v18[5] = v13;
  v18[6] = v15;
  v18[7] = v16;
  return sub_2991AFBD4((a1 + 1), v18);
}

double sub_2991AFBD4(uint64_t a1, _OWORD *a2)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = a2[5];
  v7[4] = a2[4];
  v7[5] = v2;
  v3 = a2[7];
  v7[6] = a2[6];
  v7[7] = v3;
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  sub_2991AFC68(a1, v7, &v8);
  *&result = vqmovn_high_s32(vqmovn_s32(v8), v9).u64[0];
  return result;
}

double sub_2991AFC68@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = 0;
  v4 = a2[5];
  v21[4] = a2[4];
  v21[5] = v4;
  v5 = a2[7];
  v21[6] = a2[6];
  v21[7] = v5;
  v6 = a2[1];
  v21[0] = *a2;
  v21[1] = v6;
  v13 = a2[2];
  v7 = a2[3];
  v8 = *a1;
  v9 = (*a1 + 8);
  v10 = vld1q_dup_f32(v9);
  v11 = (a1 + 8);
  v12 = vld1q_dup_f32(v11);
  v21[2] = v13;
  v21[3] = v7;
  LODWORD(v13) = *v8;
  v14 = vdupq_n_s32(-*(a1 + 12));
  do
  {
    v15 = vqrdmulhq_lane_s32(vshlq_s32(v21[v3], v12), *&v13, 0);
    v22[v3++] = vaddq_s32(vrshlq_s32(vqaddq_s32(v15, vcltzq_s32(vandq_s8(v15, v14))), v14), v10);
  }

  while (v3 != 8);
  v16 = v26;
  a3[4] = v25;
  a3[5] = v16;
  v17 = v28;
  a3[6] = v27;
  a3[7] = v17;
  v18 = v22[1];
  *a3 = v22[0];
  a3[1] = v18;
  result = *&v23;
  v20 = v24;
  a3[2] = v23;
  a3[3] = v20;
  return result;
}

double sub_2991AFD1C(int16x8_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = a1[1];
  v5 = vtrn1q_s16(*a1, v4);
  v6 = vtrn2q_s16(*a1, v4);
  v7 = a1[2];
  v8 = a1[3];
  v9 = vtrn1q_s16(v7, v8);
  v10 = vtrn2q_s16(v7, v8);
  v11 = a1[4];
  v12 = a1[5];
  v13 = vtrn1q_s16(v11, v12);
  v14 = vtrn2q_s16(v11, v12);
  v15 = a1[6];
  v16 = a1[7];
  v17 = vtrn1q_s16(v15, v16);
  v18 = vtrn2q_s16(v15, v16);
  v19 = vtrn1q_s32(v5, v9);
  v20 = vtrn2q_s32(v5, v9);
  v21 = vtrn1q_s32(v6, v10);
  v22 = vtrn2q_s32(v6, v10);
  v23 = vtrn1q_s32(v13, v17);
  v24 = vtrn2q_s32(v13, v17);
  v25 = vtrn1q_s32(v14, v18);
  v26 = vtrn2q_s32(v14, v18);
  v27 = 2 * a4;
  *(*a2 + 2 * *(a2 + 16) * a3 + v27) = v19.i64[0];
  v28 = v27 + 8;
  *(*a2 + 2 * *(a2 + 16) * a3 + v28) = v23.i64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 1) + v27) = v21.i64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 1) + v28) = v25.i64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 2) + v27) = v20.i64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 2) + v28) = v24.i64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 3) + v27) = v22.i64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 3) + v28) = v26.i64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 4) + v27) = vextq_s8(v19, v19, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 4) + v28) = vextq_s8(v23, v23, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 5) + v27) = vextq_s8(v21, v21, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 5) + v28) = vextq_s8(v25, v25, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 6) + v27) = vextq_s8(v20, v20, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 6) + v28) = vextq_s8(v24, v24, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 7) + v27) = vextq_s8(v22, v22, 8uLL).u64[0];
  *&result = vextq_s8(v26, v26, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 7) + v28) = result;
  return result;
}

double sub_2991AFEF4(uint64_t a1, double a2, double a3, __n128 a4, __n128 a5)
{
  v5 = 0;
  v6 = *a1;
  v7 = (*a1 + 8);
  v8 = vld1q_dup_f32(v7);
  v9 = (a1 + 8);
  v10 = vld1q_dup_f32(v9);
  v14[2] = a4;
  v14[3] = a5;
  a4.n128_u32[0] = *v6;
  v11 = vdupq_n_s32(-*(a1 + 12));
  do
  {
    v12 = vqrdmulhq_lane_s32(vshlq_s32(v14[v5], v10), a4.n128_u64[0], 0);
    *(&v15 + v5 * 16) = vaddq_s32(vrshlq_s32(vqaddq_s32(v12, vcltzq_s32(vandq_s8(v11, v12))), v11), v8);
    ++v5;
  }

  while (v5 != 4);
  return *&v15;
}

double sub_2991AFF6C(int8x16_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = vqtbl1q_s8(*a1, xmmword_2993FDEC0);
  v5 = vqtbl1q_s8(a1[1], xmmword_2993FDEC0);
  v6 = vtrn1q_s32(v4, v5);
  v7 = vtrn2q_s32(v4, v5);
  v8 = 2 * a4;
  *(*a2 + 2 * *(a2 + 16) * a3 + v8) = v6.i64[0];
  *(*a2 + 2 * (*(a2 + 16) + *(a2 + 16) * a3) + v8) = vextq_s8(v6, v6, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 2) + v8) = v7.i64[0];
  *&result = vextq_s8(v7, v7, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 3) + v8) = result;
  return result;
}

double sub_2991AFFF0(int16x8_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = a1[1];
  v5 = vtrn1q_s16(*a1, v4);
  v6 = vtrn2q_s16(*a1, v4);
  v7 = a1[2];
  v8 = a1[3];
  v9 = vtrn1q_s16(v7, v8);
  v10 = vtrn2q_s16(v7, v8);
  v11 = vtrn1q_s32(v5, v9);
  v12 = vtrn2q_s32(v5, v9);
  v13 = vtrn1q_s32(v6, v10);
  v14 = vtrn2q_s32(v6, v10);
  v15 = 2 * a4;
  *(*a2 + 2 * *(a2 + 16) * a3 + v15) = v11.i64[0];
  *(*a2 + 2 * (*(a2 + 16) + *(a2 + 16) * a3) + v15) = v13.i64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 2) + v15) = v12.i64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 3) + v15) = v14.i64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 4) + v15) = vextq_s8(v11, v11, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 5) + v15) = vextq_s8(v13, v13, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 6) + v15) = vextq_s8(v12, v12, 8uLL).u64[0];
  *&result = vextq_s8(v14, v14, 8uLL).u64[0];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 7) + v15) = result;
  return result;
}

int32x4_t sub_2991B00E8(uint64_t a1, int32x4_t a2)
{
  v2 = *a1;
  v3 = (*a1 + 8);
  v4 = vld1q_dup_f32(v3);
  v5 = (a1 + 8);
  v6 = vld1q_dup_f32(v5);
  v7 = vld1q_dup_f32(v2);
  v8 = vdupq_n_s32(-*(a1 + 12));
  v9 = vqrdmulhq_s32(vshlq_s32(a2, v6), v7);
  return vaddq_s32(vrshlq_s32(vqaddq_s32(v9, vcltzq_s32(vandq_s8(v8, v9))), v8), v4);
}

__n128 sub_2991B0150(__n128 *a1, uint64_t a2, int a3, int a4)
{
  result = *a1;
  *(*a2 + 2 * *(a2 + 16) * a3 + 2 * a4) = *a1;
  *(*a2 + 2 * (*(a2 + 16) + *(a2 + 16) * a3) + 2 * a4) = a1->n128_u16[1];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 2) + 2 * a4) = a1->n128_u16[2];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 3) + 2 * a4) = a1->n128_u16[3];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 4) + 2 * a4) = a1->n128_u16[4];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 5) + 2 * a4) = a1->n128_u16[5];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 6) + 2 * a4) = a1->n128_u16[6];
  *(*a2 + 2 * *(a2 + 16) * (a3 + 7) + 2 * a4) = a1->n128_u16[7];
  return result;
}

uint64_t sub_2991B022C(_DWORD *a1, int a2)
{
  v2 = a2 * (1 << a1[2]);
  v3 = **a1;
  if (v3 == 0x80000000 && v2 < -2147483647)
  {
    LODWORD(v9) = 0x7FFFFFFF;
  }

  else
  {
    if (v2 >= 0x7FFFFFFF)
    {
      v2 = 0x7FFFFFFFLL;
    }

    if (v2 <= 0xFFFFFFFF80000000)
    {
      v2 = 0xFFFFFFFF80000000;
    }

    v5 = v2 * v3;
    v6 = 0x40000000;
    if (v5 < 0)
    {
      v6 = -1073741823;
    }

    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (v8 < 0 != v7)
    {
      v8 += 0x7FFFFFFFLL;
    }

    v9 = v8 >> 31;
  }

  v10 = a1[3];
  v11 = (v9 >> v10) + *(*a1 + 8);
  if ((v9 & ~(-1 << v10)) <= ((~(-1 << v10) >> 1) + (v9 >> 31)))
  {
    return v11;
  }

  else
  {
    return v11 + 1;
  }
}

uint64_t sub_2991B02D0(uint64_t result, int a2, int a3, int a4, int a5, unsigned int *a6, unsigned int *a7, signed int *a8, float a9)
{
  if (((result + 3) & 0xFFFFFFFC) / a4 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = ((result + 3) & 0xFFFFFFFC) / a4;
  }

  v10 = (a3 + 15) & 0xFFFFFFF0;
  v11 = ((a5 / v10) * a9);
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v12 = (v11 + a2 - 1) / v11;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = ((v12 + a2 - 1) / v12 + 3) & 0xFFFFFFFC;
  if (a9 != 1.0)
  {
    v14 = (a5 - v13 * v10) / ((v10 + 4 * v13) * a4);
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = v9 - 1;
    v16 = (v14 + v15) / v14;
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v9 = (v16 + v15) / v16;
  }

  *a6 = (v9 + 3) & 0xFFFFFFFC;
  *a7 = v13;
  *a8 = v10;
  return result;
}

uint64_t sub_2991B0380(uint64_t result, int a2, void *a3, uint64_t a4)
{
  *(result + 72) = 0;
  *result = *(a4 + 4 * (a2 != 0));
  v4 = 16;
  if (!a2)
  {
    v4 = 12;
  }

  v5 = *(a4 + v4);
  *(result + 16) = a3;
  *(result + 4) = *(a4 + 8);
  *(result + 8) = v5;
  v6 = *(a4 + 20);
  *(result + 12) = v6;
  v8 = a3[3];
  v7 = a3[4];
  a3[v8 + 5] = v7;
  v9 = a3[10];
  ++a3[3];
  a3[4] = v7 + ((v6 * v5 + 63) & 0xFFFFFFFFFFFFFFC0);
  *(result + 24) = v8;
  *(result + 32) = v9;
  *(result + 40) = 0;
  v11 = a3[3];
  v10 = a3[4];
  a3[v11 + 5] = v10;
  v12 = a3[10];
  ++a3[3];
  a3[4] = v10 + ((4 * v5 + 63) & 0xFFFFFFFFFFFFFFC0);
  *(result + 48) = v11;
  *(result + 56) = v12;
  *(result + 64) = 5;
  return result;
}

void sub_2991B0448(uint64_t a1)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 172);
  v4 = *(a1 + 44);
  sub_2991B0380(v35, 0, *(a1 + 8), *(a1 + 192));
  v5 = *(a1 + 8);
  v6 = *(a1 + 192);
  v30 = v5;
  v34 = v6;
  v7 = (4 * *(v6 + 16) * *(v6 + 12) + 63) & 0xFFFFFFFFFFFFFFC0;
  v9 = v5[3];
  v8 = v5[4];
  v5[v9 + 5] = v8;
  v10 = v5[10];
  ++v5[3];
  v5[4] = v7 + v8;
  v31 = v9;
  v32 = v10;
  v33 = 5;
  sub_2991AE0F4(v5);
  if (v3 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 192);
    v13 = *(v12 + 16);
    v28 = v3;
    do
    {
      if (v3 - v11 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v3 - v11;
      }

      if (v2 >= 1)
      {
        v15 = 0;
        v16 = *(v12 + 12);
        do
        {
          v17 = *(a1 + 48);
          v39 = *(a1 + 32) + v17 * v15;
          if (v2 - v15 >= v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v2 - v15;
          }

          v40 = __PAIR64__(v4, v18);
          LODWORD(v41) = v17;
          v38[0] = v35;
          v38[1] = &v39;
          sub_2991AEA68(v38);
          v19 = *(a1 + 192);
          v39 = *(a1 + 24);
          v40 = v19;
          v41 = &v30;
          v42 = v35;
          v43 = a1 + 56;
          sub_2991AEFE8(&v39, v4);
          v20 = *(a1 + 164) + v11;
          LODWORD(v39) = *(a1 + 160) + v15;
          HIDWORD(v39) = v20;
          v40 = __PAIR64__(v14, v18);
          v21 = *(v36 + 8 * v37 + 40);
          v22 = *(v36 + 16);
          v23 = *(a1 + 72);
          v24 = *(v23 + 8 * *(a1 + 104) + 40);
          v25 = *(v23 + 16);
          v26 = *(a1 + 184);
          LODWORD(v38[0]) = **(a1 + 176);
          HIDWORD(v38[0]) = v18;
          v29[0] = *v26;
          v29[1] = v14;
          sub_2991AE288(a1 + 136, &v39, &v30, v4, v21 + v22, v24 + v25, v38, v29, *(a1 + 200));
          v12 = *(a1 + 192);
          v16 = *(v12 + 12);
          v15 += v16;
        }

        while (v15 < v2);
        v13 = *(v12 + 16);
        v3 = v28;
      }

      v11 += v13;
    }

    while (v11 < v3);
  }

  v27 = *(a1 + 8);
  *v27 = 0;
  ++*(v27 + 80);
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
}

void *sub_2991B065C(void *result, unint64_t a2)
{
  v2 = result[1] - *result;
  if (a2 > v2 >> 3)
  {
    v3 = result[3];
    atomic_store(a2 - (v2 >> 3), result + 3);
    operator new();
  }

  return result;
}

void *sub_2991B07E4(uint64_t *a1, uint64_t *a2, void *a3, int *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      v8 = *v7++;
      v9 = *a4;
      *a4 = v9 + 1;
      sub_2991B0ACC(*(*a3 + 8 * v9), 2, v8);
    }

    while (v7 != a2);
  }

  return a3;
}

void sub_2991B0850(atomic_ullong *a1)
{
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    v2 = 0;
    do
    {
      if (v2 >= 3999937)
      {
        __ns.__rep_ = 1000000;
        std::this_thread::sleep_for (&__ns);
        v2 = 0;
      }

      else
      {
        v2 += 64;
      }
    }

    while (atomic_load_explicit(a1, memory_order_acquire));
  }
}

uint64_t sub_2991B09C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = a2;
  pthread_cond_init((a1 + 16), 0);
  pthread_mutex_init((a1 + 64), 0);
  pthread_create(a1, 0, sub_2991B0A54, a1);
  return a1;
}

void sub_2991B0A3C(_Unwind_Exception *a1)
{
  free(*(v1 + 152));
  *(v1 + 144) = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_2991B0A70(uint64_t a1)
{
  for (i = a1; ; a1 = i)
  {
    sub_2991B0ACC(a1, 1, 0);
    result = sub_2991B0B8C((i + 128), 1, (i + 16), (i + 64));
    if (result != 2)
    {
      break;
    }
  }

  if (result != 3)
  {
    abort();
  }

  return result;
}

uint64_t sub_2991B0ACC(uint64_t a1, int a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 64));
  if (*(a1 + 128) >= 3u)
  {
    abort();
  }

  if (a2 == 2)
  {
    *(a3 + 8) = a1 + 136;
    *(a1 + 8) = a3;
  }

  else if (a2 == 1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      (*(*v6 + 16))(v6);
      *(a1 + 8) = 0;
    }
  }

  *(a1 + 128) = a2;
  pthread_cond_broadcast((a1 + 16));
  result = pthread_mutex_unlock((a1 + 64));
  if (a2 == 1)
  {
    atomic_fetch_add(*(a1 + 224), 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_2991B0B8C(atomic_uint *a1, int a2, pthread_cond_t *a3, pthread_mutex_t *a4)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit == a2)
  {
    v9 = -64;
    while (1)
    {
      v9 += 64;
      if (v9 > 0x3D08FF)
      {
        break;
      }

      explicit = atomic_load_explicit(a1, memory_order_acquire);
      if (explicit != a2)
      {
        return explicit;
      }
    }

    pthread_mutex_lock(a4);
    while (1)
    {
      explicit = atomic_load_explicit(a1, memory_order_acquire);
      if (explicit != a2)
      {
        break;
      }

      pthread_cond_wait(a3, a4);
    }

    pthread_mutex_unlock(a4);
  }

  return explicit;
}

void sub_2991B0D2C(uint64_t a1, unint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *(a5 + 8);
  v11 = *(a5 + 12);
  v13 = *(a3 + 12);
  sub_2991AE028(v55, v10, v11, v13, 1, *(a1 + 88), *(a1 + 92), *(a1 + 96));
  sub_2991B0380(v52, 0, a1, v55);
  sub_2991B0380(v49, 1, a1, v55);
  v44 = a1;
  v48 = v55;
  v14 = (4 * v57 * v56 + 63) & 0xFFFFFFFFFFFFFFC0;
  v15 = *(a1 + 32);
  v16 = *(a1 + 24);
  *(a1 + 8 * v16 + 40) = v15;
  v17 = *(a1 + 80);
  v35 = (a1 + 24);
  v36 = a1;
  ++*(a1 + 24);
  *(a1 + 32) = v14 + v15;
  v45 = v16;
  v46 = v17;
  v47 = 5;
  sub_2991AE0F4(a1);
  v18 = v57;
  if (v57 >= v11)
  {
    v19 = *a4;
    v20 = a4[2].i32[0];
    v61 = vrev64_s32(a4[1]);
    LODWORD(v62) = v20;
    v58 = v49;
    v59 = &v60;
    v60 = v19;
    sub_2991AEA68(&v58);
  }

  if (v10 >= 1)
  {
    v21 = 0;
    v22 = v56;
    v37 = v10;
    do
    {
      v23 = *(a3 + 16);
      v24 = *a3 + v23 * v21;
      if (v10 - v21 >= v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = v10 - v21;
      }

      v61 = __PAIR64__(v13, v25);
      LODWORD(v62) = v23;
      v58 = v52;
      v59 = &v60;
      v60 = v24;
      sub_2991AEA68(&v58);
      if (v11 >= 1)
      {
        v26 = 0;
        v27 = v57;
        do
        {
          if (v11 - v26 >= v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = v11 - v26;
          }

          if (v18 < v11)
          {
            v29 = a4[2].i32[0];
            v30 = *a4 + v29 * v26;
            v61 = __PAIR64__(v13, v28);
            LODWORD(v62) = v29;
            v58 = v49;
            v59 = &v60;
            v60 = v30;
            sub_2991AEA68(&v58);
          }

          v60 = a2;
          v61 = v55;
          v62 = &v44;
          v63 = v52;
          v64 = v49;
          sub_2991AEFE8(&v60, v13);
          v60 = __PAIR64__(v26, v21);
          v61 = __PAIR64__(v28, v25);
          v31 = *(v53 + 8 * v54 + 40);
          v32 = *(v53 + 16);
          v33 = *(v50 + 8 * v51 + 40);
          v34 = *(v50 + 16);
          LODWORD(v58) = *a6;
          HIDWORD(v58) = v25;
          v43[0] = *a7;
          v43[1] = v28;
          sub_2991B1004(a5, &v60, &v44, v13, v31 + v32, v33 + v34, &v58, v43, a8);
          v27 = v57;
          v26 += v57;
        }

        while (v26 < v11);
      }

      v22 = v56;
      v21 += v56;
      v10 = v37;
    }

    while (v21 < v37);
  }

  *v36 = 0;
  ++*(v36 + 80);
  *v35 = 0;
  v35[1] = 0;
}

void sub_2991B1004(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int *a7, _DWORD *a8, uint64_t a9)
{
  v84 = *MEMORY[0x29EDCA608];
  v14 = *(a3 + 32);
  v73 = *(*a3 + 8 * *(a3 + 8) + 40) + *(*a3 + 16);
  v74 = *(v14 + 12);
  v75 = v74;
  v71 = a5;
  v15 = a2[3];
  v72 = a2[2];
  v69 = a6;
  v70 = v15;
  v81 = a9;
  v82 = a9 + 16;
  v16 = *(a9 + 20);
  LODWORD(v83) = v16 & ~(v16 >> 31);
  HIDWORD(v83) = -v16 & ~(-v16 >> 31);
  v80[0] = a9;
  v80[1] = a9 + 16;
  v80[2] = v83;
  v79[0] = a9;
  v79[1] = (a9 + 16);
  v79[2] = v83;
  v78[0] = a9;
  v78[1] = a9 + 16;
  v78[2] = v83;
  v77[0] = a9;
  v77[1] = (a9 + 16);
  v77[2] = v83;
  v76[0] = a9;
  v76[1] = (a9 + 16);
  v76[2] = v83;
  if (v15 >= 4)
  {
    LODWORD(v17) = 0;
    do
    {
      _X11 = v71;
      __asm { PRFM            #0, [X11] }

      _X11 = v71 + 16;
      __asm { PRFM            #0, [X11] }

      _X9 = v73 + 4 * v75 * v17;
      v27 = 4;
      do
      {
        __asm { PRFM            #0, [X9] }

        _X12 = _X9 + 16;
        __asm { PRFM            #0, [X12] }

        _X9 += 4 * v75;
        --v27;
      }

      while (v27);
      v31 = a2[1] + v17;
      LODWORD(v32) = a2[2];
      if (v32 >= 8)
      {
        v34 = 0;
        v35 = 0;
        do
        {
          v33 = v35 + 8;
          _X12 = v71 + 4 * (v35 + 8);
          __asm { PRFM            #0, [X12] }

          _X12 += 16;
          __asm { PRFM            #0, [X12] }

          v39 = v73 + v34 + 4 * v17 * v75;
          v40 = 4;
          do
          {
            _X13 = v39 + 32;
            __asm { PRFM            #0, [X13] }

            _X13 = v39 + 48;
            __asm { PRFM            #0, [X13] }

            v39 += 4 * v75;
            --v40;
          }

          while (v40);
          sub_2991B14D0(&v73, v76, a1, &v71, &v69, a7, a8, a4, v35, v17, *a2 + v35, v31, *a2 + v35, v31);
          v32 = a2[2];
          v34 += 32;
          v35 = v33;
        }

        while (v33 <= v32 - 8);
      }

      else
      {
        LODWORD(v33) = 0;
      }

      while (v33 <= v32 - 4)
      {
        sub_2991B16A8(&v73, v77, a1, &v71, &v69, a7, a8, a4, v33, v17, v33 + *a2, v31, v33 + *a2, v31);
        LODWORD(v33) = v33 + 4;
        LODWORD(v32) = a2[2];
      }

      if (v33 < v32)
      {
        do
        {
          sub_2991B18AC(&v73, v78, a1, &v71, &v69, a7, a8, a4, v33, v17, v33 + *a2, v31, v33 + *a2, v31);
          LODWORD(v33) = v33 + 1;
        }

        while (v33 < a2[2]);
      }

      LODWORD(v17) = v17 + 4;
      v15 = a2[3];
    }

    while (v17 <= v15 - 4);
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 < v15)
  {
    v17 = v17;
    do
    {
      v45 = a2[1] + v17;
      _X10 = v71;
      __asm { PRFM            #0, [X10] }

      _X10 = v71 + 16;
      __asm { PRFM            #0, [X10] }

      _X8 = v73 + 4 * v75 * v17;
      __asm { PRFM            #0, [X8] }

      _X8 = _X8 + 16;
      __asm { PRFM            #0, [X8] }

      LODWORD(_X8) = a2[2];
      if (_X8 >= 8)
      {
        v54 = 0;
        v55 = 48;
        do
        {
          v56 = v54;
          v54 += 8;
          _X12 = v71 + v55;
          _X13 = v71 + v55 - 16;
          __asm
          {
            PRFM            #0, [X13]
            PRFM            #0, [X12]
          }

          _X10 = v73 + 4 * v17 * v75 + v55;
          _X11 = _X10 - 16;
          __asm
          {
            PRFM            #0, [X11]
            PRFM            #0, [X10]
          }

          sub_2991B1A08(&v73, v79, a1, &v71, &v69, a7, a8, a4, v56, v17, v56 + *a2, v45, v56 + *a2, v45);
          _X8 = a2[2];
          v55 += 32;
        }

        while (v54 <= _X8 - 8);
      }

      else
      {
        LODWORD(v54) = 0;
      }

      while (v54 <= _X8 - 4)
      {
        sub_2991B1ADC(&v73, v80, a1, &v71, &v69, a7, a8, a4, v54, v17, v54 + *a2, v45, v54 + *a2, v45);
        LODWORD(v54) = v54 + 4;
        LODWORD(_X8) = a2[2];
      }

      if (v54 < _X8)
      {
        v54 = v54;
        do
        {
          v65 = v54 + *a2;
          v66 = sub_2991B022C(&v82, *(v73 + 4 * v17 * v75 + 4 * v54) + (*a8 + 128) * *(v71 + 4 * v54) + *(*v81 + 4 * v65) + (*(v69 + 4 * v17) + (*a8 + 128) * a4) * (*a7 + 128));
          if (v66 <= -32768)
          {
            v67 = -32768;
          }

          else
          {
            v67 = v66;
          }

          if (v67 >= 0x7FFF)
          {
            LOWORD(v67) = 0x7FFF;
          }

          *(*a1 + 2 * v65 + 2 * *(a1 + 16) * v45) = v67;
          ++v54;
        }

        while (a2[2] > v54);
      }

      ++v17;
    }

    while (a2[3] > v17);
  }

  v68 = *MEMORY[0x29EDCA608];
}

void sub_2991B14D0(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, int *a6, _DWORD *a7, int a8, int a9, int a10, int a11, unsigned int a12, int a13, int a14)
{
  v15 = 0;
  v57 = *MEMORY[0x29EDCA608];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = *(a1 + 16);
  v17 = (4 * v16 * a10 + 4 * a9 + *a1 + 16);
  v18 = 4 * v16;
  do
  {
    v19 = &v41.i8[v15];
    v20 = *v17;
    *v19 = *(v17 - 1);
    *(v19 + 1) = v20;
    v15 += 32;
    v17 = (v17 + v18);
  }

  while (v15 != 128);
  v21 = 0;
  v22 = (*a4 + 4 * a9);
  v24 = *v22;
  v23 = v22[1];
  v25 = *(*a5 + 4 * a10);
  v26 = *a6;
  v27 = *a7 + 128;
  v28 = vdupq_n_s32(v27);
  v29 = 1;
  do
  {
    v30 = 0;
    v31 = v29;
    v32 = vmulq_s32(v24, v28);
    v33 = &v41.i8[16 * v21];
    do
    {
      *&v33[v30] = vaddq_s32(*&v33[v30], v32);
      v30 += 32;
    }

    while (v30 != 128);
    v29 = 0;
    v24 = v23;
    v21 = 1;
  }

  while ((v31 & 1) != 0);
  v34 = 0;
  v35 = vmulq_s32(vaddq_s32(vdupq_n_s32(v27 * a8), v25), vdupq_n_s32(v26 + 128));
  v49 = vdupq_lane_s32(*v35.i8, 0);
  v50 = vdupq_lane_s32(*v35.i8, 1);
  v51 = vdupq_laneq_s32(v35, 2);
  v52 = vdupq_laneq_s32(v35, 3);
  v36 = 1;
  do
  {
    v37 = 0;
    v38 = v36;
    v39 = 16 * v34;
    do
    {
      *(&v41 + v39) = vaddq_s32(*(&v41 + v39), *(&v49 + v37));
      v37 += 16;
      v39 += 32;
    }

    while (v37 != 64);
    v36 = 0;
    v34 = 1;
  }

  while ((v38 & 1) != 0);
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v56 = v48;
  v49 = v41;
  v50 = v42;
  v51 = v43;
  v52 = v44;
  sub_2991B1BB0(a2, &v49, a3, a11, a12, a13, a14);
  v40 = *MEMORY[0x29EDCA608];
}

int16x4_t sub_2991B16A8(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, int *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v15 = 0;
  v42 = *MEMORY[0x29EDCA608];
  v16 = *(a1 + 16);
  v17 = (*a1 + 4 * v16 * a10 + 4 * a9);
  v18 = 4 * v16;
  do
  {
    *(&v38 + v15) = *v17;
    v15 += 16;
    v17 = (v17 + v18);
  }

  while (v15 != 64);
  v19 = 0;
  v20 = *(*a4 + 4 * a9);
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v21 = *(*a5 + 4 * a10);
  v22 = *a6;
  v23 = *a7 + 128;
  v24 = vmulq_s32(vdupq_n_s32(v23), v20);
  do
  {
    *(&v34 + v19) = vaddq_s32(*(&v34 + v19), v24);
    v19 += 16;
  }

  while (v19 != 64);
  v25 = 0;
  v26 = vmulq_s32(vaddq_s32(vdupq_n_s32(v23 * a8), v21), vdupq_n_s32(v22 + 128));
  v38 = vdupq_lane_s32(*v26.i8, 0);
  v39 = vdupq_lane_s32(*v26.i8, 1);
  v40 = vdupq_laneq_s32(v26, 2);
  v41 = vdupq_laneq_s32(v26, 3);
  do
  {
    *(&v34 + v25) = vaddq_s32(*(&v34 + v25), *(&v38 + v25));
    v25 += 16;
  }

  while (v25 != 64);
  v27 = *(**a2 + 4 * a11);
  *v28.i64 = sub_2991AFEF4((a2 + 1), *vaddq_s32(v27, v34).i64, *vaddq_s32(v27, v35).i64, vaddq_s32(v27, v36), vaddq_s32(v27, v37));
  *(*a3 + 2 * a13 + 2 * *(a3 + 16) * a14) = vqmovn_s32(v28);
  *(*a3 + 2 * a13 + 2 * (*(a3 + 16) + *(a3 + 16) * a14)) = vqmovn_s32(v29);
  *(*a3 + 2 * a13 + 2 * *(a3 + 16) * (a14 + 2)) = vqmovn_s32(v30);
  result = vqmovn_s32(v31);
  *(*a3 + 2 * a13 + 2 * *(a3 + 16) * (a14 + 3)) = result;
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

int16x4_t sub_2991B18AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v14 = 0;
  v29 = *MEMORY[0x29EDCA608];
  v15 = *(a1 + 16);
  v16 = (*a1 + 4 * v15 * a10 + 4 * a9);
  v17 = 4 * v15;
  do
  {
    v28.i32[v14++] = *v16;
    v16 = (v16 + v17);
  }

  while (v14 != 4);
  v18 = *(a2 + 8);
  v19 = v18 + 2;
  v20 = vld1q_dup_f32(v19);
  v21 = vld1q_dup_f32(v18);
  v22 = vqrdmulhq_s32(vshlq_s32(vmlaq_s32(vaddq_s32(vdupq_n_s32(*(**a2 + 4 * a11) + (*a7 + 128) * *(*a4 + 4 * a9)), v28), vaddq_s32(vdupq_n_s32((*a7 + 128) * a8), *(*a5 + 4 * a10)), vdupq_n_s32(*a6 + 128)), vdupq_lane_s32(*(a2 + 16), 0)), v21);
  v23 = vdupq_n_s32(-HIDWORD(*(a2 + 16)));
  result = vqmovn_s32(vaddq_s32(vrshlq_s32(vqaddq_s32(v22, vcltzq_s32(vandq_s8(v23, v22))), v23), v20));
  v25 = *(a3 + 16);
  v26 = (*a3 + 2 * a13 + 2 * v25 * a14);
  *v26 = result.i16[0];
  v26[v25] = result.i16[1];
  v26[2 * v25] = result.i16[2];
  v26[3 * v25] = result.i16[3];
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

int16x8_t sub_2991B1A08(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v15 = (*a1 + 4 * a9 + 4 * *(a1 + 16) * a10);
  v16 = *v15;
  v17 = v15[1];
  v18 = (*a4 + 4 * a9);
  LODWORD(v15) = *a7 + 128;
  v19 = vdupq_n_s32(v15);
  v20 = vmlaq_s32(v17, v19, v18[1]);
  v21 = **a2 + 4 * a11;
  v22 = *(v21 + 16);
  v23 = sub_2991B00E8((a2 + 1), vaddq_s32(vmlaq_s32(vaddq_s32(*v21, v16), v19, *v18), vdupq_n_s32((*(*a5 + 4 * a10) + v15 * a8) * (*a6 + 128))));
  result = vqmovn_high_s32(vqmovn_s32(v23), v24);
  *(*a3 + 2 * a13 + 2 * *(a3 + 16) * a14) = result;
  return result;
}

int16x4_t sub_2991B1ADC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v14 = *(a2 + 8);
  v15 = v14 + 2;
  v16 = vld1q_dup_f32(v15);
  v17 = vld1q_dup_f32(v14);
  v18 = vqrdmulhq_s32(vshlq_s32(vaddq_s32(vmlaq_s32(vaddq_s32(*(**a2 + 4 * a11), *(*a1 + 4 * a9 + 4 * *(a1 + 16) * a10)), vdupq_n_s32(*a7 + 128), *(*a4 + 4 * a9)), vdupq_n_s32((*(*a5 + 4 * a10) + (*a7 + 128) * a8) * (*a6 + 128))), vdupq_lane_s32(*(a2 + 16), 0)), v17);
  v19 = vdupq_n_s32(-HIDWORD(*(a2 + 16)));
  result = vqmovn_s32(vaddq_s32(vrshlq_s32(vqaddq_s32(v18, vcltzq_s32(vandq_s8(v19, v18))), v19), v16));
  *(*a3 + 2 * a13 + 2 * *(a3 + 16) * a14) = result;
  return result;
}

void sub_2991B1BB0(void **a1, int32x4_t *a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v10 = a2[5];
  v18[4] = a2[4];
  v18[5] = v10;
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[1];
  v18[0] = *a2;
  v18[1] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  *&v14 = sub_2991B1C80(a1, v18, a4);
  *(*a3 + 2 * a6 + 2 * *(a3 + 16) * a7) = v14;
  *(*a3 + 2 * a6 + 2 * (*(a3 + 16) + *(a3 + 16) * a7)) = v15;
  *(*a3 + 2 * a6 + 2 * *(a3 + 16) * (a7 + 2)) = v16;
  *(*a3 + 2 * a6 + 2 * *(a3 + 16) * (a7 + 3)) = v17;
}

double sub_2991B1C80(void **a1, int32x4_t *a2, int a3)
{
  v3 = **a1 + 4 * a3;
  v4 = *(v3 + 16);
  v5 = vaddq_s32(v4, a2[1]);
  v6 = vaddq_s32(*v3, a2[2]);
  v7 = vaddq_s32(v4, a2[3]);
  v8 = vaddq_s32(*v3, a2[4]);
  v9 = vaddq_s32(v4, a2[5]);
  v10 = vaddq_s32(*v3, a2[6]);
  v11 = vaddq_s32(v4, a2[7]);
  v13[0] = vaddq_s32(*v3, *a2);
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v13[6] = v10;
  v13[7] = v11;
  return sub_2991AFBD4((a1 + 1), v13);
}

void sub_2991B1D0C(uint64_t a1)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 172);
  v4 = *(a1 + 44);
  sub_2991B0380(v35, 0, *(a1 + 8), *(a1 + 192));
  v5 = *(a1 + 8);
  v6 = *(a1 + 192);
  v30 = v5;
  v34 = v6;
  v7 = (4 * *(v6 + 16) * *(v6 + 12) + 63) & 0xFFFFFFFFFFFFFFC0;
  v9 = v5[3];
  v8 = v5[4];
  v5[v9 + 5] = v8;
  v10 = v5[10];
  ++v5[3];
  v5[4] = v7 + v8;
  v31 = v9;
  v32 = v10;
  v33 = 5;
  sub_2991AE0F4(v5);
  if (v3 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 192);
    v13 = *(v12 + 16);
    v28 = v3;
    do
    {
      if (v3 - v11 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v3 - v11;
      }

      if (v2 >= 1)
      {
        v15 = 0;
        v16 = *(v12 + 12);
        do
        {
          v17 = *(a1 + 48);
          v39 = *(a1 + 32) + v17 * v15;
          if (v2 - v15 >= v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v2 - v15;
          }

          v40 = __PAIR64__(v4, v18);
          LODWORD(v41) = v17;
          v38[0] = v35;
          v38[1] = &v39;
          sub_2991AEA68(v38);
          v19 = *(a1 + 192);
          v39 = *(a1 + 24);
          v40 = v19;
          v41 = &v30;
          v42 = v35;
          v43 = a1 + 56;
          sub_2991AEFE8(&v39, v4);
          v20 = *(a1 + 164) + v11;
          LODWORD(v39) = *(a1 + 160) + v15;
          HIDWORD(v39) = v20;
          v40 = __PAIR64__(v14, v18);
          v21 = *(v36 + 8 * v37 + 40);
          v22 = *(v36 + 16);
          v23 = *(a1 + 72);
          v24 = *(v23 + 8 * *(a1 + 104) + 40);
          v25 = *(v23 + 16);
          v26 = *(a1 + 184);
          LODWORD(v38[0]) = **(a1 + 176);
          HIDWORD(v38[0]) = v18;
          v29[0] = *v26;
          v29[1] = v14;
          sub_2991B1004(a1 + 136, &v39, &v30, v4, v21 + v22, v24 + v25, v38, v29, *(a1 + 200));
          v12 = *(a1 + 192);
          v16 = *(v12 + 12);
          v15 += v16;
        }

        while (v15 < v2);
        v13 = *(v12 + 16);
        v3 = v28;
      }

      v11 += v13;
    }

    while (v11 < v3);
  }

  v27 = *(a1 + 8);
  *v27 = 0;
  ++*(v27 + 80);
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
}

int32x4_t *sub_2991B1F2C(uint64_t a1, int32x4_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, int8x16_t *a6, uint64_t a7, uint64_t a8)
{
  v9 = *a6;
  v8 = a6 + 1;
  v10 = vdupq_n_s32(0);
  v12 = *a5;
  v11 = a5 + 1;
  v13 = v10;
  v14 = *v8++;
  v15 = v10;
  v16 = *v11++;
  v17 = v10;
  v18 = *v8++;
  v19 = v10;
  v21 = *v8;
  v20 = v8 + 1;
  v22 = v10;
  v23 = *v11++;
  v24 = v10;
  v26 = *v11;
  v25 = v11 + 1;
  v27 = v10;
  v28 = v10;
  v29 = v10;
  v30 = v10;
  v31 = v10;
  v32 = v10;
  v33 = v10;
  v34 = v10;
  v35 = v10;
  v36 = 4 * a4;
  v37 = vmlal_high_s8(vmull_s8(*v9.i8, *v12.i8), v9, v12);
  v38 = vmlal_high_s8(vmull_s8(*v14.i8, *v12.i8), v14, v12);
  v39 = vmlal_high_s8(vmull_s8(*v18.i8, *v12.i8), v18, v12);
  v40 = vmlal_high_s8(vmull_s8(*v21.i8, *v12.i8), v21, v12);
  v41 = vmlal_high_s8(vmull_s8(*v9.i8, *v16.i8), v9, v16);
  v42 = vmlal_high_s8(vmull_s8(*v14.i8, *v16.i8), v14, v16);
  v43 = vmlal_high_s8(vmull_s8(*v18.i8, *v16.i8), v18, v16);
  v44 = vmlal_high_s8(vmull_s8(*v21.i8, *v16.i8), v21, v16);
  for (i = a8 - 16; i; v44 = vmlal_high_s8(vmull_s8(*v21.i8, *v48.i8), v21, v48))
  {
    v10 = vpadalq_s16(v10, v37);
    v47 = *v25;
    v46 = v25 + 1;
    v13 = vpadalq_s16(v13, v38);
    v48 = *v46++;
    v15 = vpadalq_s16(v15, v39);
    v17 = vpadalq_s16(v17, v40);
    v19 = vpadalq_s16(v19, v41);
    v22 = vpadalq_s16(v22, v42);
    v24 = vpadalq_s16(v24, v43);
    v27 = vpadalq_s16(v27, v44);
    v49 = vmlal_high_s8(vmull_s8(*v9.i8, *v23.i8), v9, v23);
    v50 = vmlal_high_s8(vmull_s8(*v14.i8, *v23.i8), v14, v23);
    v51 = vmlal_high_s8(vmull_s8(*v18.i8, *v23.i8), v18, v23);
    v52 = vmlal_high_s8(vmull_s8(*v21.i8, *v23.i8), v21, v23);
    v23 = *v46++;
    v53 = vmlal_high_s8(vmull_s8(*v9.i8, *v26.i8), v9, v26);
    v9 = *v20;
    v54 = v20 + 1;
    v55 = vmlal_high_s8(vmull_s8(*v14.i8, *v26.i8), v14, v26);
    v14 = *v54++;
    v56 = vmlal_high_s8(vmull_s8(*v18.i8, *v26.i8), v18, v26);
    v18 = *v54++;
    v57 = vmlal_high_s8(vmull_s8(*v21.i8, *v26.i8), v21, v26);
    v21 = *v54;
    v20 = v54 + 1;
    v28 = vpadalq_s16(v28, v49);
    v29 = vpadalq_s16(v29, v50);
    v26 = *v46;
    v25 = v46 + 1;
    v30 = vpadalq_s16(v30, v51);
    v31 = vpadalq_s16(v31, v52);
    v32 = vpadalq_s16(v32, v53);
    v33 = vpadalq_s16(v33, v55);
    v34 = vpadalq_s16(v34, v56);
    v35 = vpadalq_s16(v35, v57);
    v37 = vmlal_high_s8(vmull_s8(*v9.i8, *v47.i8), v9, v47);
    v38 = vmlal_high_s8(vmull_s8(*v14.i8, *v47.i8), v14, v47);
    v39 = vmlal_high_s8(vmull_s8(*v18.i8, *v47.i8), v18, v47);
    v40 = vmlal_high_s8(vmull_s8(*v21.i8, *v47.i8), v21, v47);
    i -= 16;
    v41 = vmlal_high_s8(vmull_s8(*v9.i8, *v48.i8), v9, v48);
    v42 = vmlal_high_s8(vmull_s8(*v14.i8, *v48.i8), v14, v48);
    v43 = vmlal_high_s8(vmull_s8(*v18.i8, *v48.i8), v18, v48);
  }

  v58 = vpadalq_s16(v10, v37);
  v59 = vpadalq_s16(v13, v38);
  v60 = vpadalq_s16(v15, v39);
  v61 = vpadalq_s16(v17, v40);
  v62 = vmlal_high_s8(vmull_s8(*v9.i8, *v23.i8), v9, v23);
  v63 = vmlal_high_s8(vmull_s8(*v14.i8, *v23.i8), v14, v23);
  v64 = vmlal_high_s8(vmull_s8(*v18.i8, *v23.i8), v18, v23);
  v65 = vmlal_high_s8(vmull_s8(*v21.i8, *v23.i8), v21, v23);
  v66 = vpadalq_s16(v32, vmlal_high_s8(vmull_s8(*v9.i8, *v26.i8), v9, v26));
  v67 = vpadalq_s16(v33, vmlal_high_s8(vmull_s8(*v14.i8, *v26.i8), v14, v26));
  v68 = vpadalq_s16(v34, vmlal_high_s8(vmull_s8(*v18.i8, *v26.i8), v18, v26));
  v69 = vpadalq_s16(v35, vmlal_high_s8(vmull_s8(*v21.i8, *v26.i8), v21, v26));
  v70 = vpaddq_s32(v58, vpadalq_s16(v19, v41));
  v71 = vpaddq_s32(v59, vpadalq_s16(v22, v42));
  v72 = vpaddq_s32(v60, vpadalq_s16(v24, v43));
  v73 = vpaddq_s32(v61, vpadalq_s16(v27, v44));
  v74 = vpaddq_s32(vpadalq_s16(v28, v62), v66);
  v75 = vpaddq_s32(vpadalq_s16(v29, v63), v67);
  v76 = vpaddq_s32(vpadalq_s16(v30, v64), v68);
  v77 = vpaddq_s32(vpadalq_s16(v31, v65), v69);
  if (a7)
  {
    v82 = (a2 + v36 + v36);
    v78 = vaddq_s32(*a2, vpaddq_s32(v70, v74));
    v79 = vaddq_s32(*(a2 + v36), vpaddq_s32(v71, v75));
    v80 = vaddq_s32(*v82, vpaddq_s32(v72, v76));
    v81 = vaddq_s32(*(v82 + v36), vpaddq_s32(v73, v77));
  }

  else
  {
    v78 = vpaddq_s32(v70, v74);
    v79 = vpaddq_s32(v71, v75);
    v80 = vpaddq_s32(v72, v76);
    v81 = vpaddq_s32(v73, v77);
  }

  *a2 = v78;
  *(a2 + v36) = v79;
  v83 = (a2 + v36 + v36);
  *v83 = v80;
  result = (v83 + v36);
  *result = v81;
  return result;
}

double sub_2991B21FC(int16x8_t a1)
{
  v1.i64[0] = 0x1000100010001000;
  v1.i64[1] = 0x1000100010001000;
  v2 = vaddq_s16(vqshlq_n_s16((*&a1 | __PAIR128__(0xFC00FC00FC00FC00, 0xFC00FC00FC00FC00)), 3uLL), v1);
  v3 = vqrdmulhq_s16(v2, v2);
  v4 = vqrdmulhq_s16(v3, v3);
  v5 = vaddq_s16(vqrdmulhq_s16(vrsraq_n_s16(vqrdmulhq_s16(v3, v2), vqaddq_s16(v4, vcltzq_s16(v4)), 2uLL), vdupq_n_s16(0x2AABu)), v3);
  v6 = vdupq_n_s16(0x70F6u);
  v7 = vqaddq_s16(v6, vqrdmulhq_s16(v6, vrsraq_n_s16(v2, vqaddq_s16(v5, vcltzq_s16(v5)), 1uLL)));
  v8 = vsubq_s16((*&a1 | __PAIR128__(0xFC00FC00FC00FC00, 0xFC00FC00FC00FC00)), a1);
  v5.i64[0] = 0x400040004000400;
  v5.i64[1] = 0x400040004000400;
  v9 = vbslq_s8(vceqzq_s16(vandq_s8(v8, v5)), v7, vqrdmulhq_s16(v7, vdupq_n_s16(0x63B0u)));
  v5.i64[0] = 0x800080008000800;
  v5.i64[1] = 0x800080008000800;
  v10 = vbslq_s8(vceqzq_s16(vandq_s8(v8, v5)), v9, vqrdmulhq_s16(v9, vdupq_n_s16(0x4DA3u)));
  v11 = vbslq_s8(vceqzq_s16(vandq_s8(v8, v1)), v10, vqrdmulhq_s16(v10, vdupq_n_s16(0x2F17u)));
  v1.i64[0] = 0x2000200020002000;
  v1.i64[1] = 0x2000200020002000;
  v12 = vbslq_s8(vceqzq_s16(vandq_s8(v8, v1)), v11, vqrdmulhq_s16(v11, vdupq_n_s16(0x1153u)));
  v1.i64[0] = 0x4000400040004000;
  v1.i64[1] = 0x4000400040004000;
  v13 = vceqzq_s16(a1);
  *&result = vorrq_s8((*&v13 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vbicq_s8(vbslq_s8(vceqzq_s16(vandq_s8(v8, v1)), v12, vqrdmulhq_s16(v12, vdupq_n_s16(0x258u))), v13)).u64[0];
  return result;
}

double sub_2991B22F4(int16x8_t a1)
{
  v1.i64[0] = 0x1000100010001000;
  v1.i64[1] = 0x1000100010001000;
  v2 = vaddq_s16(vqshlq_n_s16((*&a1 | __PAIR128__(0xFE00FE00FE00FE00, 0xFE00FE00FE00FE00)), 4uLL), v1);
  v3 = vqrdmulhq_s16(v2, v2);
  v4 = vqrdmulhq_s16(v3, v3);
  v5 = vaddq_s16(vqrdmulhq_s16(vrsraq_n_s16(vqrdmulhq_s16(v3, v2), vqaddq_s16(v4, vcltzq_s16(v4)), 2uLL), vdupq_n_s16(0x2AABu)), v3);
  v6 = vdupq_n_s16(0x70F6u);
  v7 = vqaddq_s16(v6, vqrdmulhq_s16(v6, vrsraq_n_s16(v2, vqaddq_s16(v5, vcltzq_s16(v5)), 1uLL)));
  v8 = vsubq_s16((*&a1 | __PAIR128__(0xFE00FE00FE00FE00, 0xFE00FE00FE00FE00)), a1);
  v5.i64[0] = 0x200020002000200;
  v5.i64[1] = 0x200020002000200;
  v9 = vbslq_s8(vceqzq_s16(vandq_s8(v8, v5)), v7, vqrdmulhq_s16(v7, vdupq_n_s16(0x63B0u)));
  v5.i64[0] = 0x400040004000400;
  v5.i64[1] = 0x400040004000400;
  v10 = vbslq_s8(vceqzq_s16(vandq_s8(v8, v5)), v9, vqrdmulhq_s16(v9, vdupq_n_s16(0x4DA3u)));
  v5.i64[0] = 0x800080008000800;
  v5.i64[1] = 0x800080008000800;
  v11 = vbslq_s8(vceqzq_s16(vandq_s8(v8, v5)), v10, vqrdmulhq_s16(v10, vdupq_n_s16(0x2F17u)));
  v12 = vbslq_s8(vceqzq_s16(vandq_s8(v8, v1)), v11, vqrdmulhq_s16(v11, vdupq_n_s16(0x1153u)));
  v1.i64[0] = 0x2000200020002000;
  v1.i64[1] = 0x2000200020002000;
  v13 = vbslq_s8(vceqzq_s16(vandq_s8(v8, v1)), v12, vqrdmulhq_s16(v12, vdupq_n_s16(0x258u)));
  v1.i64[0] = 0x4000400040004000;
  v1.i64[1] = 0x4000400040004000;
  v14 = vceqzq_s16(vandq_s8(v8, v1));
  v1.i64[0] = 0xB000B000B000BLL;
  v1.i64[1] = 0xB000B000B000BLL;
  v15 = vceqzq_s16(a1);
  *&result = vorrq_s8((*&v15 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vbicq_s8(vbslq_s8(v14, v13, vqrdmulhq_s16(v13, v1)), v15)).u64[0];
  return result;
}

uint64_t sub_2991B2404(__int16 a1)
{
  v1 = a1 - 1;
  if (a1 != -32768)
  {
    v1 = a1 + 1;
  }

  v2 = v1 + 0x7FFF;
  v3 = (v1 + 0x7FFF) / 2;
  if (v2 >= 2)
  {
    v4 = -16383;
  }

  else
  {
    v4 = 0x4000;
  }

  v5 = ((v4 - 15420 * v3 + (v4 - 15420 * v3 < 0 ? 0x7FFF : 0)) >> 15) + 23130;
  v6 = 3;
  do
  {
    v7 = v3 * v5;
    if (v7 < 0)
    {
      v8 = -16383;
    }

    else
    {
      v8 = 0x4000;
    }

    v9 = __OFADD__(v8, v7);
    v10 = v8 + v7;
    if (v10 < 0 != v9)
    {
      v10 += 0x7FFF;
    }

    v11 = 0x2000 - (v10 >> 15);
    if (v5 == 0x8000 && v11 == 0x8000)
    {
      v12 = 0x7FFF;
    }

    else
    {
      v13 = v11 * v5;
      if (v13 < 0)
      {
        v14 = -16383;
      }

      else
      {
        v14 = 0x4000;
      }

      v9 = __OFADD__(v14, v13);
      LODWORD(v15) = v14 + v13;
      if (((v15 & 0x80000000) != 0) != v9)
      {
        v15 = (v15 + 0x7FFF);
      }

      else
      {
        v15 = v15;
      }

      v12 = v15 >> 15;
    }

    v16 = v12;
    v17 = 4 * v12;
    if (v17 >= 0x7FFF)
    {
      v17 = 0x7FFFLL;
    }

    if (v17 <= -32768)
    {
      LOWORD(v17) = 0x8000;
    }

    if (v16 >= 0x2000)
    {
      LOWORD(v17) = 0x7FFF;
    }

    if (v16 <= -8192)
    {
      LOWORD(v17) = 0x8000;
    }

    v5 = (v17 + v5);
    --v6;
  }

  while (v6);
  v18 = 2 * v5;
  if (v18 >= 0x7FFF)
  {
    v18 = 0x7FFFLL;
  }

  if (v18 <= -32768)
  {
    LODWORD(v18) = -32768;
  }

  if (v5 >= 0x4000)
  {
    LODWORD(v18) = 0x7FFF;
  }

  if (v5 <= -16384)
  {
    return 4294934528;
  }

  else
  {
    return v18;
  }
}

uint64_t sub_2991B252C(__int16 a1)
{
  v2 = a1 | 0xFC00;
  v3 = sub_2991B264C(8 * (a1 & 0x3FF | 0x1C00u));
  if ((v3 & 0x8000u) != 0)
  {
    v4 = -16383;
  }

  else
  {
    v4 = 0x4000;
  }

  v5 = (v4 + 25520 * v3 + (v4 + 25520 * v3 < 0 ? 0x7FFF : 0)) >> 15;
  if (((v2 - a1) & 0x400) == 0)
  {
    v5 = v3;
  }

  if ((v5 & 0x8000u) != 0)
  {
    v6 = -16383;
  }

  else
  {
    v6 = 0x4000;
  }

  if (((v2 - a1) & 0x800) != 0)
  {
    v5 = (v6 + 19875 * v5 + (v6 + 19875 * v5 < 0 ? 0x7FFF : 0)) >> 15;
  }

  if ((v5 & 0x8000u) != 0)
  {
    v7 = -16383;
  }

  else
  {
    v7 = 0x4000;
  }

  if (((v2 - a1) & 0x1000) != 0)
  {
    v5 = (v7 + 12055 * v5 + (v7 + 12055 * v5 < 0 ? 0x7FFF : 0)) >> 15;
  }

  if ((v5 & 0x8000u) != 0)
  {
    v8 = -16383;
  }

  else
  {
    v8 = 0x4000;
  }

  if (((v2 - a1) & 0x2000) != 0)
  {
    v5 = (v8 + 4435 * v5 + (v8 + 4435 * v5 < 0 ? 0x7FFF : 0)) >> 15;
  }

  if ((v5 & 0x8000u) != 0)
  {
    v9 = -16383;
  }

  else
  {
    v9 = 0x4000;
  }

  v10 = (v9 + 600 * v5 + (v9 + 600 * v5 < 0 ? 0x7FFF : 0)) >> 15;
  if (((v2 - a1) & 0x4000) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (a1)
  {
    return v11;
  }

  else
  {
    return 0x7FFFLL;
  }
}

uint64_t sub_2991B264C(int a1)
{
  v1 = (a1 + 4096);
  v2 = (v1 * v1 + 0x4000) >> 15;
  if ((a1 + 4096) == 0x8000)
  {
    LOWORD(v2) = 0x7FFF;
  }

  v3 = v2 * v1;
  if (v3 < 0)
  {
    v4 = -16383;
  }

  else
  {
    v4 = 0x4000;
  }

  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v6 < 0 != v5)
  {
    v6 += 0x7FFF;
  }

  v7 = v2 * v2 + 0x4000;
  v8 = ((v7 >> 15) >> 2) + (v6 >> 15);
  if (((v7 >> 15) & 3) > (v7 >> 30) + 1)
  {
    LOWORD(v8) = v8 + 1;
  }

  if ((v8 & 0x8000u) != 0)
  {
    v9 = -16383;
  }

  else
  {
    v9 = 0x4000;
  }

  v10 = v2 + (v9 + 10923 * v8) / 0x8000;
  v11 = a1 + 4096 + (v10 >> 1);
  if ((v10 & 1u) > (v10 & 0x8000) >> 15)
  {
    LOWORD(v11) = v11 + 1;
  }

  if ((v11 & 0x8000u) != 0)
  {
    v12 = -16383;
  }

  else
  {
    v12 = 0x4000;
  }

  v13 = ((v12 + 28918 * v11) / 0x8000) + 28918;
  if (v13 >= 0x7FFF)
  {
    v13 = 0x7FFF;
  }

  if (v13 <= -32768)
  {
    return 4294934528;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_2991B2734(__int16 a1)
{
  v1 = a1 - 1;
  if (a1 != -32768)
  {
    v1 = a1 + 1;
  }

  v2 = v1 + 0x7FFF;
  v3 = (v1 + 0x7FFF) / 2;
  if (v2 >= 2)
  {
    v4 = -16383;
  }

  else
  {
    v4 = 0x4000;
  }

  v5 = ((v4 - 15420 * v3 + (v4 - 15420 * v3 < 0 ? 0x7FFF : 0)) >> 15) + 23130;
  v6 = 3;
  do
  {
    v7 = v3 * v5;
    if (v7 < 0)
    {
      v8 = -16383;
    }

    else
    {
      v8 = 0x4000;
    }

    v9 = __OFADD__(v8, v7);
    v10 = v8 + v7;
    if (v10 < 0 != v9)
    {
      v10 += 0x7FFF;
    }

    v11 = 0x2000 - (v10 >> 15);
    if (v5 == 0x8000 && v11 == 0x8000)
    {
      v12 = 0x7FFF;
    }

    else
    {
      v13 = v11 * v5;
      if (v13 < 0)
      {
        v14 = -16383;
      }

      else
      {
        v14 = 0x4000;
      }

      v9 = __OFADD__(v14, v13);
      LODWORD(v15) = v14 + v13;
      if (((v15 & 0x80000000) != 0) != v9)
      {
        v15 = (v15 + 0x7FFF);
      }

      else
      {
        v15 = v15;
      }

      v12 = v15 >> 15;
    }

    v16 = v12;
    v17 = 4 * v12;
    if (v17 >= 0x7FFF)
    {
      v17 = 0x7FFFLL;
    }

    if (v17 <= -32768)
    {
      LODWORD(v17) = -32768;
    }

    if (v16 >= 0x2000)
    {
      LODWORD(v17) = 0x7FFF;
    }

    if (v16 <= -8192)
    {
      LODWORD(v17) = -32768;
    }

    v5 = v17 + v5;
    --v6;
  }

  while (v6);
  v18 = (v5 - 0x2000);
  v19 = ((v5 - 0x2000) << 48) >> 46;
  if (v19 >= 0x7FFF)
  {
    v19 = 0x7FFFLL;
  }

  if (v19 <= -32768)
  {
    LODWORD(v19) = -32768;
  }

  if (v18 >= 0x2000)
  {
    LODWORD(v19) = 0x7FFF;
  }

  if (v18 <= -8192)
  {
    return 4294934528;
  }

  else
  {
    return v19;
  }
}

uint64_t sub_2991B2860(__int16 a1)
{
  v2 = a1 | 0xFE00;
  v3 = sub_2991B264C(16 * (a1 & 0x1FF | 0xE00u));
  if ((v3 & 0x8000u) != 0)
  {
    v4 = -16383;
  }

  else
  {
    v4 = 0x4000;
  }

  v5 = (v4 + 25520 * v3 + (v4 + 25520 * v3 < 0 ? 0x7FFF : 0)) >> 15;
  if (((v2 - a1) & 0x200) == 0)
  {
    v5 = v3;
  }

  if ((v5 & 0x8000u) != 0)
  {
    v6 = -16383;
  }

  else
  {
    v6 = 0x4000;
  }

  if (((v2 - a1) & 0x400) != 0)
  {
    v5 = (v6 + 19875 * v5 + (v6 + 19875 * v5 < 0 ? 0x7FFF : 0)) >> 15;
  }

  if ((v5 & 0x8000u) != 0)
  {
    v7 = -16383;
  }

  else
  {
    v7 = 0x4000;
  }

  if (((v2 - a1) & 0x800) != 0)
  {
    v5 = (v7 + 12055 * v5 + (v7 + 12055 * v5 < 0 ? 0x7FFF : 0)) >> 15;
  }

  if ((v5 & 0x8000u) != 0)
  {
    v8 = -16383;
  }

  else
  {
    v8 = 0x4000;
  }

  if (((v2 - a1) & 0x1000) != 0)
  {
    v5 = (v8 + 4435 * v5 + (v8 + 4435 * v5 < 0 ? 0x7FFF : 0)) >> 15;
  }

  if ((v5 & 0x8000u) != 0)
  {
    v9 = -16383;
  }

  else
  {
    v9 = 0x4000;
  }

  if (((v2 - a1) & 0x2000) != 0)
  {
    v5 = (v9 + 600 * v5 + (v9 + 600 * v5 < 0 ? 0x7FFF : 0)) >> 15;
  }

  if ((v5 & 0x8000u) != 0)
  {
    v10 = -16383;
  }

  else
  {
    v10 = 0x4000;
  }

  v11 = (v10 + 11 * v5 + (v10 + 11 * v5 < 0 ? 0x7FFF : 0)) >> 15;
  if (((v2 - a1) & 0x4000) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

  if (a1)
  {
    return v12;
  }

  else
  {
    return 0x7FFFLL;
  }
}

void sub_2991B29AC(uint64_t a1, int32x2_t *a2, int32x2_t *a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v9 = *(a4 + 8);
  v10 = *(a4 + 12);
  v11 = a2[1].i32[1];
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v11 != 0)
  {
    v40 = v7;
    v41 = v8;
    if (v9 >= v10)
    {
      v23 = &unk_2A1F62580;
      sub_2991B2BE4(a1, &v23, a2, a3, a4, a5, a6, a7);
    }

    else
    {
      v14 = *(a4 + 16);
      v36 = *a4;
      v37 = v10;
      v38 = v9;
      v39 = v14;
      v15 = a3[2].i32[0];
      v34[0] = *a3;
      v34[1] = vrev64_s32(a3[1]);
      v35 = v15;
      v16 = a2[1].i32[0];
      v17 = a2[2].i32[0];
      v30 = *a2;
      v31 = v11;
      v32 = v16;
      v33 = v17;
      v18 = *a6;
      v28 = *a5;
      v29 = v18;
      v19 = *(a7 + 8);
      v20 = *(a7 + 16);
      v21 = *(a7 + 24);
      v22 = *(a7 + 28);
      v23 = *a7;
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v27 = v22;
      sub_2991B2AC8(a1, v34, &v30, &v36, &v29, &v28, &v23);
    }
  }
}

void sub_2991B2AC8(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v9 = *(a4 + 8);
  v10 = *(a4 + 12);
  v11 = *(a2 + 12);
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v11 != 0)
  {
    v40 = v7;
    v41 = v8;
    if (v9 >= v10)
    {
      v23 = &unk_2A1F62580;
      sub_2991B2F94(a1, &v23, a2, a3, a4, a5, a6, a7);
    }

    else
    {
      v14 = *(a4 + 16);
      v36 = *a4;
      v37 = v10;
      v38 = v9;
      v39 = v14;
      v15 = a3[2].i32[0];
      v34[0] = *a3;
      v34[1] = vrev64_s32(a3[1]);
      v35 = v15;
      v16 = *(a2 + 8);
      v17 = *(a2 + 16);
      v30 = *a2;
      v31 = v11;
      v32 = v16;
      v33 = v17;
      v18 = *a6;
      v28 = *a5;
      v29 = v18;
      v19 = *(a7 + 8);
      v20 = *(a7 + 16);
      v21 = *(a7 + 24);
      v22 = *(a7 + 28);
      v23 = *a7;
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v27 = v22;
      sub_2991B29AC(a1, v34, &v30, &v36, &v29, &v28, &v23);
    }
  }
}

void sub_2991B2BE4(uint64_t a1, unint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *(a1 + 100);
  if (v10 == 1)
  {
    goto LABEL_17;
  }

  v11 = *(a5 + 8);
  v12 = *(a5 + 12);
  v29 = *(a3 + 12);
  if (!v10)
  {
    if ((atomic_load_explicit(&qword_2A145E160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E160))
    {
      dword_2A145E158 = sysconf(57);
      __cxa_guard_release(&qword_2A145E160);
    }

    v10 = dword_2A145E158;
  }

  v13 = v11 + 15;
  if (v11 + 15 < 0)
  {
    v13 = v11 + 30;
  }

  v14 = v13 >> 4;
  if (v14 >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 2)
  {
    v16 = (v12 * v11 * v29) >> 16;
    if (v15 < v16)
    {
      LODWORD(v16) = v15;
    }

    if (v16 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v16;
    }
  }

  if (v15 == 1)
  {
LABEL_17:

    sub_2991B4F0C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    sub_2991AE028(v32, v11, v12, v29, v15, *(a1 + 88), *(a1 + 92), *(a1 + 96));
    sub_2991B0380(&v31, 1, a1, v32);
    sub_2991AE0F4(a1);
    if (v12 >= 1)
    {
      v17 = 0;
      v18 = v33;
      v23 = v12;
      do
      {
        v19 = a4[2].i32[0];
        v20 = (*a4 + v19 * v17);
        if (v12 - v17 < v18)
        {
          v18 = v12 - v17;
        }

        v36 = __PAIR64__(v29, v18);
        LODWORD(v37) = v19;
        v34[0] = &v31;
        v34[1] = &v35;
        v35 = v20;
        sub_2991AEA68(v34);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        if (v15 >= 1)
        {
          v21 = *a3;
          v22 = *(a3 + 16);
          operator new();
        }

        sub_2991AE19C((a1 + 104), &v35);
        v12 = v23;
        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }

        v18 = v33;
        v17 += v33;
      }

      while (v17 < v23);
    }

    *a1 = 0;
    ++*(a1 + 80);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_2991B2F94(uint64_t a1, unint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *(a1 + 100);
  if (v10 == 1)
  {
    goto LABEL_17;
  }

  v11 = *(a5 + 8);
  v12 = *(a5 + 12);
  v29 = *(a3 + 12);
  if (!v10)
  {
    if ((atomic_load_explicit(&qword_2A145E160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E160))
    {
      dword_2A145E158 = sysconf(57);
      __cxa_guard_release(&qword_2A145E160);
    }

    v10 = dword_2A145E158;
  }

  v13 = v11 + 15;
  if (v11 + 15 < 0)
  {
    v13 = v11 + 30;
  }

  v14 = v13 >> 4;
  if (v14 >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 2)
  {
    v16 = (v12 * v11 * v29) >> 16;
    if (v15 < v16)
    {
      LODWORD(v16) = v15;
    }

    if (v16 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v16;
    }
  }

  if (v15 == 1)
  {
LABEL_17:

    sub_2991B3344(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    sub_2991AE028(v32, v11, v12, v29, v15, *(a1 + 88), *(a1 + 92), *(a1 + 96));
    sub_2991B0380(&v31, 1, a1, v32);
    sub_2991AE0F4(a1);
    if (v12 >= 1)
    {
      v17 = 0;
      v18 = v33;
      v23 = v12;
      do
      {
        v19 = a4[2].i32[0];
        v20 = (*a4 + v19 * v17);
        if (v12 - v17 < v18)
        {
          v18 = v12 - v17;
        }

        v36 = __PAIR64__(v29, v18);
        LODWORD(v37) = v19;
        v34[0] = &v31;
        v34[1] = &v35;
        v35 = v20;
        sub_2991AEA68(v34);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        if (v15 >= 1)
        {
          v21 = *a3;
          v22 = *(a3 + 16);
          operator new();
        }

        sub_2991AE19C((a1 + 104), &v35);
        v12 = v23;
        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }

        v18 = v33;
        v17 += v33;
      }

      while (v17 < v23);
    }

    *a1 = 0;
    ++*(a1 + 80);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_2991B3344(uint64_t a1, unint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *(a5 + 8);
  v11 = *(a5 + 12);
  v13 = *(a3 + 12);
  sub_2991AE028(v55, v10, v11, v13, 1, *(a1 + 88), *(a1 + 92), *(a1 + 96));
  sub_2991B0380(v52, 0, a1, v55);
  sub_2991B0380(v49, 1, a1, v55);
  v44 = a1;
  v48 = v55;
  v14 = (4 * v57 * v56 + 63) & 0xFFFFFFFFFFFFFFC0;
  v15 = *(a1 + 32);
  v16 = *(a1 + 24);
  *(a1 + 8 * v16 + 40) = v15;
  v17 = *(a1 + 80);
  v35 = (a1 + 24);
  v36 = a1;
  ++*(a1 + 24);
  *(a1 + 32) = v14 + v15;
  v45 = v16;
  v46 = v17;
  v47 = 5;
  sub_2991AE0F4(a1);
  v18 = v57;
  if (v57 >= v11)
  {
    v19 = *a4;
    v20 = a4[2].i32[0];
    v61 = vrev64_s32(a4[1]);
    LODWORD(v62) = v20;
    v58 = v49;
    v59 = &v60;
    v60 = v19;
    sub_2991AEA68(&v58);
  }

  if (v10 >= 1)
  {
    v21 = 0;
    v22 = v56;
    v37 = v10;
    do
    {
      v23 = *(a3 + 16);
      v24 = *a3 + v23 * v21;
      if (v10 - v21 >= v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = v10 - v21;
      }

      v61 = __PAIR64__(v13, v25);
      LODWORD(v62) = v23;
      v58 = v52;
      v59 = &v60;
      v60 = v24;
      sub_2991AEA68(&v58);
      if (v11 >= 1)
      {
        v26 = 0;
        v27 = v57;
        do
        {
          if (v11 - v26 >= v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = v11 - v26;
          }

          if (v18 < v11)
          {
            v29 = a4[2].i32[0];
            v30 = *a4 + v29 * v26;
            v61 = __PAIR64__(v13, v28);
            LODWORD(v62) = v29;
            v58 = v49;
            v59 = &v60;
            v60 = v30;
            sub_2991AEA68(&v58);
          }

          v60 = a2;
          v61 = v55;
          v62 = &v44;
          v63 = v52;
          v64 = v49;
          sub_2991AEFE8(&v60, v13);
          v60 = __PAIR64__(v26, v21);
          v61 = __PAIR64__(v28, v25);
          v31 = *(v53 + 8 * v54 + 40);
          v32 = *(v53 + 16);
          v33 = *(v50 + 8 * v51 + 40);
          v34 = *(v50 + 16);
          LODWORD(v58) = *a6;
          HIDWORD(v58) = v25;
          v43[0] = *a7;
          v43[1] = v28;
          sub_2991B361C(a5, &v60, &v44, v13, v31 + v32, v33 + v34, &v58, v43, a8);
          v27 = v57;
          v26 += v57;
        }

        while (v26 < v11);
      }

      v22 = v56;
      v21 += v56;
      v10 = v37;
    }

    while (v21 < v37);
  }

  *v36 = 0;
  ++*(v36 + 80);
  *v35 = 0;
  v35[1] = 0;
}

void sub_2991B361C(uint64_t a1, int *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int *a7, _DWORD *a8, uint64_t a9)
{
  v9 = a8;
  v13 = a1;
  v117 = *MEMORY[0x29EDCA608];
  v14 = *(a3 + 32);
  v105 = *(*a3 + 8 * *(a3 + 8) + 40) + *(*a3 + 16);
  v106 = *(v14 + 12);
  v107 = v106;
  v103 = a5;
  v15 = a2[3];
  v104 = a2[2];
  v101 = a6;
  v102 = v15;
  v114[0] = a9;
  v114[1] = a9 + 16;
  v16 = *(a9 + 20);
  LODWORD(v115) = v16 & ~(v16 >> 31);
  HIDWORD(v115) = -v16 & ~(-v16 >> 31);
  v116 = a9 + 28;
  v113[0] = a9;
  v113[1] = a9 + 16;
  v113[2] = v115;
  v113[3] = a9 + 28;
  v112[0] = a9;
  v112[1] = a9 + 16;
  v112[2] = v115;
  v112[3] = a9 + 28;
  v111[0] = a9;
  v111[1] = a9 + 16;
  v111[2] = v115;
  v111[3] = a9 + 28;
  v110[0] = a9;
  v110[1] = (a9 + 16);
  v110[2] = v115;
  v110[3] = (a9 + 28);
  v109[0] = a9;
  v109[1] = (a9 + 16);
  v109[2] = v115;
  v109[3] = (a9 + 28);
  if (v15 >= 8)
  {
    v17 = 0;
    do
    {
      _X10 = v103;
      __asm { PRFM            #0, [X10] }

      _X10 = v103 + 16;
      __asm { PRFM            #0, [X10] }

      _X8 = v105 + 4 * v107 * v17;
      v27 = 8;
      do
      {
        __asm { PRFM            #0, [X8] }

        _X11 = _X8 + 16;
        __asm { PRFM            #0, [X11] }

        _X8 += 4 * v107;
        --v27;
      }

      while (v27);
      LODWORD(v31) = a2[2];
      if (v31 >= 8)
      {
        v33 = 0;
        v34 = 0;
        do
        {
          v35 = *a2;
          v32 = v34 + 8;
          _X11 = v103 + 4 * (v34 + 8);
          __asm { PRFM            #0, [X11] }

          _X11 += 16;
          __asm { PRFM            #0, [X11] }

          v39 = v105 + v33 + 4 * v17 * v107;
          v40 = 8;
          do
          {
            _X12 = v39 + 32;
            __asm { PRFM            #0, [X12] }

            _X12 = v39 + 48;
            __asm { PRFM            #0, [X12] }

            v39 += 4 * v107;
            --v40;
          }

          while (v40);
          v45 = v35 + v34;
          v99[0] = v108;
          v99[1] = 0x800000008;
          v100 = 8;
          sub_2991B3DF0(&v105, v109, v99, &v103, &v101, a7, a8, a4, v34, v17, v35 + v34, a2[1] + v17, 0, 0);
          sub_2991B3DF0(&v105, v109, v99, &v103, &v101, a7, a8, a4, v34, v17 | 4, v45, a2[1] + (v17 | 4), 0, 4);
          v98[0] = v108[0];
          v98[1] = v108[1];
          v98[2] = v108[2];
          v98[3] = v108[3];
          sub_2991B4934(v98, a1, *a2 + v34, a2[1] + v17);
          v31 = a2[2];
          v33 += 32;
          v34 += 8;
        }

        while (v32 <= v31 - 8);
        v9 = a8;
      }

      else
      {
        LODWORD(v32) = 0;
      }

      for (; v32 <= v31 - 4; LODWORD(v31) = a2[2])
      {
        v46 = v32 + *a2;
        sub_2991B4008(&v105, v110, a1, &v103, &v101, a7, v9, a4, v32, v17, v46, a2[1] + v17, v46, a2[1] + v17);
        sub_2991B4008(&v105, v110, a1, &v103, &v101, a7, v9, a4, v32, v17 | 4, v46, a2[1] + (v17 | 4), v46, a2[1] + (v17 | 4));
        LODWORD(v32) = v32 + 4;
      }

      if (v32 < v31)
      {
        do
        {
          v47 = v32 + *a2;
          sub_2991B418C(&v105, v111, a1, &v103, &v101, a7, v9, a4, v32, v17, v47, a2[1] + v17, v47, a2[1] + v17);
          sub_2991B418C(&v105, v111, a1, &v103, &v101, a7, v9, a4, v32, v17 | 4, v47, a2[1] + (v17 | 4), v47, a2[1] + (v17 | 4));
          LODWORD(v32) = v32 + 1;
        }

        while (v32 < a2[2]);
      }

      v17 += 8;
      v15 = a2[3];
    }

    while (v17 <= v15 - 8);
    v13 = a1;
  }

  else
  {
    v17 = 0;
  }

  while (v17 <= v15 - 4)
  {
    _X11 = v103;
    __asm { PRFM            #0, [X11] }

    _X11 = v103 + 16;
    __asm { PRFM            #0, [X11] }

    _X9 = v105 + 4 * v107 * v17;
    v53 = 4;
    do
    {
      __asm { PRFM            #0, [X9] }

      _X12 = _X9 + 16;
      __asm { PRFM            #0, [X12] }

      _X9 += 4 * v107;
      --v53;
    }

    while (v53);
    v57 = a2[1] + v17;
    LODWORD(v58) = a2[2];
    if (v58 >= 8)
    {
      v60 = 0;
      v61 = 0;
      do
      {
        v59 = v61 + 8;
        _X12 = v103 + 4 * (v61 + 8);
        __asm { PRFM            #0, [X12] }

        _X12 += 16;
        __asm { PRFM            #0, [X12] }

        v65 = v105 + v60 + 4 * v17 * v107;
        v66 = 4;
        do
        {
          _X13 = v65 + 32;
          __asm { PRFM            #0, [X13] }

          _X13 = v65 + 48;
          __asm { PRFM            #0, [X13] }

          v65 += 4 * v107;
          --v66;
        }

        while (v66);
        sub_2991B4300(&v105, v109, v13, &v103, &v101, a7, v9, a4, v61, v17, *a2 + v61, v57, *a2 + v61, v57);
        v58 = a2[2];
        v60 += 32;
        v61 = v59;
      }

      while (v59 <= v58 - 8);
    }

    else
    {
      LODWORD(v59) = 0;
    }

    while (v59 <= v58 - 4)
    {
      sub_2991B4008(&v105, v110, v13, &v103, &v101, a7, v9, a4, v59, v17, v59 + *a2, v57, v59 + *a2, v57);
      LODWORD(v59) = v59 + 4;
      LODWORD(v58) = a2[2];
    }

    if (v59 < v58)
    {
      do
      {
        sub_2991B418C(&v105, v111, v13, &v103, &v101, a7, v9, a4, v59, v17, v59 + *a2, v57, v59 + *a2, v57);
        LODWORD(v59) = v59 + 1;
      }

      while (v59 < a2[2]);
    }

    v17 += 4;
    v15 = a2[3];
  }

  if (v17 < v15)
  {
    v71 = v17;
    do
    {
      v72 = a2[1] + v71;
      _X10 = v103;
      __asm { PRFM            #0, [X10] }

      _X10 = v103 + 16;
      __asm { PRFM            #0, [X10] }

      _X8 = v105 + 4 * v107 * v71;
      __asm { PRFM            #0, [X8] }

      _X8 = _X8 + 16;
      __asm { PRFM            #0, [X8] }

      LODWORD(_X8) = a2[2];
      if (_X8 >= 8)
      {
        v82 = 0;
        v81 = 0;
        do
        {
          v83 = v81;
          _X13 = v103 + v82 + 32;
          __asm { PRFM            #0, [X13] }

          _X12 = v103 + v82 + 48;
          __asm { PRFM            #0, [X12] }

          _X10 = v105 + 4 * v71 * v107 + v82;
          _X11 = _X10 + 32;
          _X10 += 48;
          __asm
          {
            PRFM            #0, [X11]
            PRFM            #0, [X10]
          }

          v92 = (v105 + 4 * v71 * v107 + v82);
          v93 = vdupq_n_s32(*v9 + 128);
          v94 = vmlaq_s32(v92[1], v93, *(v103 + v82 + 16));
          v81 += 8;
          sub_2991B4BD4(v112, v13, vaddq_s32(vmlaq_s32(*v92, v93, *(v103 + v82)), vdupq_n_s32((*(v101 + 4 * v71) + (*v9 + 128) * a4) * (*a7 + 128))), (v83 + *a2), v72, v83 + *a2, v72);
          _X8 = a2[2];
          v82 += 32;
        }

        while (v81 <= _X8 - 8);
      }

      else
      {
        LODWORD(v81) = 0;
      }

      while (v81 <= _X8 - 4)
      {
        sub_2991B44F4(&v105, v113, v13, &v103, &v101, a7, v9, a4, v81, v71, v81 + *a2, v72, v81 + *a2, v72);
        LODWORD(v81) = v81 + 4;
        LODWORD(_X8) = a2[2];
      }

      if (v81 < _X8)
      {
        do
        {
          sub_2991B45EC(&v105, v114, v13, &v103, &v101, a7, v9, a4, v81, v71, v81 + *a2, v72, v81 + *a2, v72);
          LODWORD(v81) = v81 + 1;
        }

        while (v81 < a2[2]);
      }

      ++v71;
    }

    while (a2[3] > v71);
  }

  v95 = *MEMORY[0x29EDCA608];
}

void sub_2991B3DF0(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, int *a6, _DWORD *a7, int a8, int a9, int a10, unsigned int a11, int a12, int a13, int a14)
{
  v15 = 0;
  v64 = *MEMORY[0x29EDCA608];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v16 = *(a1 + 16);
  v17 = (4 * v16 * a10 + 4 * a9 + *a1 + 16);
  v18 = 4 * v16;
  do
  {
    v19 = &v48.i8[v15];
    v20 = *v17;
    *v19 = *(v17 - 1);
    *(v19 + 1) = v20;
    v15 += 32;
    v17 = (v17 + v18);
  }

  while (v15 != 128);
  v21 = 0;
  v22 = (*a4 + 4 * a9);
  v24 = *v22;
  v23 = v22[1];
  v25 = *(*a5 + 4 * a10);
  v26 = *a6;
  v27 = *a7 + 128;
  v28 = vdupq_n_s32(v27);
  v29 = 1;
  do
  {
    v30 = 0;
    v31 = v29;
    v32 = vmulq_s32(v24, v28);
    v33 = &v48.i8[16 * v21];
    do
    {
      *&v33[v30] = vaddq_s32(*&v33[v30], v32);
      v30 += 32;
    }

    while (v30 != 128);
    v29 = 0;
    v24 = v23;
    v21 = 1;
  }

  while ((v31 & 1) != 0);
  v34 = 0;
  v35 = vmulq_s32(vaddq_s32(vdupq_n_s32(v27 * a8), v25), vdupq_n_s32(v26 + 128));
  v56 = vdupq_lane_s32(*v35.i8, 0);
  v57 = vdupq_lane_s32(*v35.i8, 1);
  v58 = vdupq_laneq_s32(v35, 2);
  v59 = vdupq_laneq_s32(v35, 3);
  v36 = 1;
  do
  {
    v37 = 0;
    v38 = v36;
    v39 = 16 * v34;
    do
    {
      *(&v48 + v39) = vaddq_s32(*(&v48 + v39), *(&v56 + v37));
      v37 += 16;
      v39 += 32;
    }

    while (v37 != 64);
    v36 = 0;
    v34 = 1;
  }

  while ((v38 & 1) != 0);
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  sub_2991B46B4(a2, &v56, a11, a12);
  v40 = 0;
  v56.i64[0] = v41;
  v56.i64[1] = v42;
  v57.i64[0] = v43;
  v57.i64[1] = v44;
  v45 = *(a3 + 16);
  v46 = (*a3 + a13 + v45 * a14);
  do
  {
    *v46 = v56.i64[v40++];
    v46 = (v46 + v45);
  }

  while (v40 != 4);
  v47 = *MEMORY[0x29EDCA608];
}

void sub_2991B4008(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, int *a6, _DWORD *a7, int a8, int a9, int a10, unsigned int a11, int a12, int a13, int a14)
{
  v15 = 0;
  v37 = *MEMORY[0x29EDCA608];
  v16 = *(a1 + 16);
  v17 = (*a1 + 4 * v16 * a10 + 4 * a9);
  v18 = 4 * v16;
  do
  {
    *(&v33 + v15) = *v17;
    v15 += 16;
    v17 = (v17 + v18);
  }

  while (v15 != 64);
  v19 = 0;
  v20 = *(*a4 + 4 * a9);
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v21 = *(*a5 + 4 * a10);
  v22 = *a6;
  v23 = *a7 + 128;
  v24 = vmulq_s32(vdupq_n_s32(v23), v20);
  do
  {
    *(&v29 + v19) = vaddq_s32(*(&v29 + v19), v24);
    v19 += 16;
  }

  while (v19 != 64);
  v25 = 0;
  v26 = vmulq_s32(vaddq_s32(vdupq_n_s32(v23 * a8), v21), vdupq_n_s32(v22 + 128));
  v33 = vdupq_lane_s32(*v26.i8, 0);
  v34 = vdupq_lane_s32(*v26.i8, 1);
  v35 = vdupq_laneq_s32(v26, 2);
  v36 = vdupq_laneq_s32(v26, 3);
  do
  {
    *(&v29 + v25) = vaddq_s32(*(&v29 + v25), *(&v33 + v25));
    v25 += 16;
  }

  while (v25 != 64);
  *v33.i8 = sub_2991B49EC(a2, v29, v30, v31, v32, a11, a12);
  v33.i64[1] = v27;
  sub_2991B4AB0(&v33, a3, a13, a14);
  v28 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2991B418C(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v14 = 0;
  v34 = *MEMORY[0x29EDCA608];
  v15 = *(result + 16);
  v16 = (*result + 4 * v15 * a10 + 4 * a9);
  v17 = 4 * v15;
  do
  {
    v33.i32[v14++] = *v16;
    v16 = (v16 + v17);
  }

  while (v14 != 4);
  v18 = 0;
  v19 = *(a2 + 8);
  v20 = v19 + 2;
  v21 = vld1q_dup_f32(v20);
  v22 = vld1q_dup_f32(v19);
  v23 = vqrdmulhq_s32(vshlq_s32(vmlaq_s32(vaddq_s32(vaddq_s32(*(**a2 + 4 * a12), v33), vdupq_n_s32((*a7 + 128) * *(*a4 + 4 * a9))), vaddq_s32(vdupq_n_s32((*a7 + 128) * a8), *(*a5 + 4 * a10)), vdupq_n_s32(*a6 + 128)), vdupq_lane_s32(*(a2 + 16), 0)), v22);
  v24 = vdupq_n_s32(-HIDWORD(*(a2 + 16)));
  v25 = *(a2 + 24);
  v26 = vaddq_s32(vrshlq_s32(vqaddq_s32(v23, vcltzq_s32(vandq_s8(v24, v23))), v24), v21);
  v27 = vld1q_dup_f32(v25++);
  v28 = vld1q_dup_f32(v25);
  v29 = vminq_s32(vmaxq_s32(v26, v27), v28);
  *v29.i8 = vqmovn_s32(v29);
  v30 = vqmovun_s16(v29).u32[0];
  v31 = a14;
  do
  {
    *(*a3 + *(a3 + 16) * a13 + v31) = v30 >> v18;
    v18 += 8;
    ++v31;
  }

  while (v18 != 32);
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2991B4300(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, int *a6, _DWORD *a7, int a8, int a9, int a10, unsigned int a11, int a12, int a13, int a14)
{
  v15 = 0;
  v61 = *MEMORY[0x29EDCA608];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v16 = *(a1 + 16);
  v17 = (4 * v16 * a10 + 4 * a9 + *a1 + 16);
  v18 = 4 * v16;
  do
  {
    v19 = &v45.i8[v15];
    v20 = *v17;
    *v19 = *(v17 - 1);
    *(v19 + 1) = v20;
    v15 += 32;
    v17 = (v17 + v18);
  }

  while (v15 != 128);
  v21 = 0;
  v22 = (*a4 + 4 * a9);
  v24 = *v22;
  v23 = v22[1];
  v25 = *(*a5 + 4 * a10);
  v26 = *a6;
  v27 = *a7 + 128;
  v28 = vdupq_n_s32(v27);
  v29 = 1;
  do
  {
    v30 = 0;
    v31 = v29;
    v32 = vmulq_s32(v24, v28);
    v33 = &v45.i8[16 * v21];
    do
    {
      *&v33[v30] = vaddq_s32(*&v33[v30], v32);
      v30 += 32;
    }

    while (v30 != 128);
    v29 = 0;
    v24 = v23;
    v21 = 1;
  }

  while ((v31 & 1) != 0);
  v34 = 0;
  v35 = vmulq_s32(vaddq_s32(vdupq_n_s32(v27 * a8), v25), vdupq_n_s32(v26 + 128));
  v53 = vdupq_lane_s32(*v35.i8, 0);
  v54 = vdupq_lane_s32(*v35.i8, 1);
  v55 = vdupq_laneq_s32(v35, 2);
  v56 = vdupq_laneq_s32(v35, 3);
  v36 = 1;
  do
  {
    v37 = 0;
    v38 = v36;
    v39 = 16 * v34;
    do
    {
      *(&v45 + v39) = vaddq_s32(*(&v45 + v39), *(&v53 + v37));
      v37 += 16;
      v39 += 32;
    }

    while (v37 != 64);
    v36 = 0;
    v34 = 1;
  }

  while ((v38 & 1) != 0);
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = v52;
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v56 = v48;
  sub_2991B46B4(a2, &v53, a11, a12);
  v53.i64[0] = v40;
  v53.i64[1] = v41;
  v54.i64[0] = v42;
  v54.i64[1] = v43;
  sub_2991B4B40(&v53, a3, a13, a14);
  v44 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2991B44F4(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v14 = 0;
  v16 = *(a2 + 8);
  v17 = v16 + 2;
  v18 = vld1q_dup_f32(v17);
  v19 = vld1q_dup_f32(v16);
  v20 = vdupq_n_s32(-HIDWORD(*(a2 + 16)));
  v21 = vqrdmulhq_s32(vshlq_s32(vaddq_s32(vmlaq_s32(*(*result + 4 * a9 + 4 * *(result + 16) * a10), vdupq_n_s32(*a7 + 128), *(*a4 + 4 * a9)), vdupq_n_s32(*(**a2 + 4 * a12) + (*(*a5 + 4 * a10) + (*a7 + 128) * a8) * (*a6 + 128))), vdupq_lane_s32(*(a2 + 16), 0)), v19);
  v22 = *(a2 + 24);
  v23 = vrshlq_s32(vqaddq_s32(v21, vcltzq_s32(vandq_s8(v20, v21))), v20);
  v24 = vld1q_dup_f32(v22++);
  v25 = vld1q_dup_f32(v22);
  v26 = vminq_s32(vmaxq_s32(vaddq_s32(v23, v18), v24), v25);
  *v26.i8 = vqmovn_s32(v26);
  v27 = vqmovun_s16(v26).u32[0];
  do
  {
    *(*a3 + *(a3 + 16) * a13 + a14) = v27 >> v14;
    v14 += 8;
    ++a13;
  }

  while (v14 != 32);
  return result;
}

uint64_t sub_2991B45EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  result = sub_2991B022C((a2 + 8), *(*a1 + 4 * a9 + 4 * *(a1 + 16) * a10) + (*a7 + 128) * *(*a4 + 4 * a9) + *(**a2 + 4 * a12) + (*(*a5 + 4 * a10) + (*a7 + 128) * a8) * (*a6 + 128));
  v17 = *(a2 + 24);
  v19 = *v17;
  v18 = v17[1];
  if (result > v19)
  {
    v19 = result;
  }

  if (v18 >= v19)
  {
    v18 = v19;
  }

  v20 = v18 & ~(v18 >> 31);
  if (v20 >= 255)
  {
    LOBYTE(v20) = -1;
  }

  *(*a3 + *(a3 + 16) * a13 + a14) = v20;
  return result;
}

void sub_2991B46B4(void **a1, int32x4_t *a2, uint64_t a3, int a4)
{
  v4 = (a1 + 3);
  v5 = *(**a1 + 4 * a4);
  v6 = vdupq_lane_s32(*v5.i8, 0);
  v7 = vaddq_s32(v6, *a2);
  v8 = vdupq_lane_s32(*v5.i8, 1);
  v9 = vaddq_s32(v6, a2[1]);
  v10 = vaddq_s32(v8, a2[2]);
  v11 = vaddq_s32(v8, a2[3]);
  v12 = vdupq_laneq_s32(v5, 2);
  v13 = vaddq_s32(v12, a2[4]);
  v14 = vaddq_s32(v12, a2[5]);
  v15 = vdupq_laneq_s32(v5, 3);
  v16 = vaddq_s32(v15, a2[6]);
  v17 = vaddq_s32(v15, a2[7]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v7;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v13;
  v23 = v14;
  v24 = v16;
  v25 = v17;
  sub_2991AFC68((a1 + 1), &v18, &v26);
  v22 = v30;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  sub_2991B47A4(v4, &v18);
}

void sub_2991B47A4(const float **a1, _OWORD *a2)
{
  v2 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v3 = a2[5];
  v11[4] = a2[4];
  v11[5] = v3;
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = *a1;
  v8 = vld1q_dup_f32(v7++);
  v9 = vld1q_dup_f32(v7);
  do
  {
    v12[v2] = vminq_s32(vmaxq_s32(v11[v2], v8), v9);
    ++v2;
  }

  while (v2 != 8);
  v12[12] = v12[4];
  v12[13] = v12[5];
  v12[14] = v12[6];
  v12[15] = v12[7];
  v12[8] = v12[0];
  v12[9] = v12[1];
  v12[10] = v12[2];
  v12[11] = v12[3];
  sub_2991B4894((a1 + 1), v12);
  v10 = *MEMORY[0x29EDCA608];
}

double sub_2991B4894(uint64_t a1, int32x4_t *a2)
{
  v2 = 0;
  v7[13] = *MEMORY[0x29EDCA608];
  v3 = a2 + 1;
  do
  {
    *&v7[v2 + 4] = vqmovn_high_s32(vqmovn_s32(v3[-1]), *v3);
    v3 += 2;
    v2 += 2;
  }

  while (v2 != 8);
  for (i = 0; i != 4; ++i)
  {
    v7[i] = vqmovun_s16(*&v7[2 * i + 4]);
  }

  result = *v7;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

double sub_2991B4934(int8x8_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = a1[1];
  v6 = vtrn1_s8(*a1, v5);
  v7 = vtrn2_s8(*a1, v5);
  v8 = a1[2];
  v9 = a1[3];
  v10 = vtrn1_s8(v8, v9);
  v11 = vtrn2_s8(v8, v9);
  v12 = a1[4];
  v13 = a1[5];
  v14 = vtrn1_s8(v12, v13);
  v15 = vtrn2_s8(v12, v13);
  v16 = a1[6];
  v17 = a1[7];
  v18 = vtrn1_s8(v16, v17);
  v19 = vtrn2_s8(v16, v17);
  v20 = vtrn1_s16(v6, v10);
  v21 = vtrn2_s16(v6, v10);
  v22 = vtrn1_s16(v7, v11);
  v23 = vtrn2_s16(v7, v11);
  v24 = vtrn1_s16(v14, v18);
  v25 = vtrn2_s16(v14, v18);
  v26 = vtrn1_s16(v15, v19);
  v27 = *(a2 + 16);
  v28 = *a2 + v27 * a3;
  v29 = vtrn2_s16(v15, v19);
  v32[2] = vzip1_s32(v21, v25);
  v32[3] = vzip1_s32(v23, v29);
  v32[4] = vzip2_s32(v20, v24);
  v32[5] = vzip2_s32(v22, v26);
  v32[6] = vzip2_s32(v21, v25);
  v32[7] = vzip2_s32(v23, v29);
  v30 = (v28 + a4);
  do
  {
    result = *&v32[v4];
    *v30 = result;
    v30 = (v30 + v27);
    ++v4;
  }

  while (v4 != 8);
  return result;
}

int8x8_t sub_2991B49EC(void **a1, int32x4_t a2, int32x4_t a3, int32x4_t a4, int32x4_t a5, uint64_t a6, int a7)
{
  v7 = (a1 + 3);
  v8 = *(**a1 + 4 * a7);
  v9 = sub_2991AFEF4((a1 + 1), *vaddq_s32(vdupq_lane_s32(*v8.i8, 0), a2).i64, *vaddq_s32(vdupq_lane_s32(*v8.i8, 1), a3).i64, vaddq_s32(vdupq_laneq_s32(v8, 2), a4), vaddq_s32(vdupq_laneq_s32(v8, 3), a5));
  *v13.i64 = sub_2991B4A64(v7, v9, v10, v11, v12);
  return vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v13), v14));
}

double sub_2991B4A64(const float **a1, double a2, double a3, __n128 a4, __n128 a5)
{
  v5 = 0;
  v10[2] = a4;
  v10[3] = a5;
  v6 = *a1;
  v7 = vld1q_dup_f32(v6++);
  v8 = vld1q_dup_f32(v6);
  do
  {
    *(&v11 + v5 * 16) = vminq_s32(vmaxq_s32(v10[v5], v7), v8);
    ++v5;
  }

  while (v5 != 4);
  return *&v11;
}

double sub_2991B4AB0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(a2 + 16);
  v6 = *a2 + v5 * a3 + a4;
  v7 = v6 + v5;
  v8 = v6 + 2 * v5;
  v9 = v6 + 3 * v5;
  v10 = 1;
  do
  {
    v11 = a1 + 8 * v4;
    result = *v11;
    v13 = 2 * v4;
    *(v6 + 2 * v4) = *v11;
    *(v7 + v13) = *(v11 + 1);
    *(v8 + v13) = *(v11 + 2);
    *(v9 + v13) = *(v11 + 3);
    v14 = (2 * (v4 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    *(v6 + v14) = *(v11 + 4);
    *(v7 + v14) = *(v11 + 5);
    *(v8 + v14) = *(v11 + 6);
    v15 = v10;
    *(v9 + v14) = *(v11 + 7);
    v4 = 1;
    v10 = 0;
  }

  while ((v15 & 1) != 0);
  return result;
}

double sub_2991B4B40(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *a2 + *(a2 + 16) * a3 + a4;
  v6 = (a1 + 3);
  do
  {
    v7 = *(a2 + 16);
    v8 = (v5 + v4);
    result = *(a1 + 8 * v4);
    *v8 = LOBYTE(result);
    v8[v7] = *(v6 - 2);
    v8[2 * v7] = *(v6 - 1);
    v8[3 * v7] = *v6;
    v8[4 * v7] = v6[1];
    v8[5 * v7] = v6[2];
    v8[6 * v7] = v6[3];
    *(v5 + v4++ - v7 + 8 * v7) = v6[4];
    v6 += 8;
  }

  while (v4 != 4);
  return result;
}

double sub_2991B4BD4(uint64_t a1, uint64_t a2, int32x4_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v11 = (**a1 + 4 * a5);
  v12 = vld1q_dup_f32(v11);
  v13 = sub_2991B00E8(a1 + 8, vaddq_s32(v12, a3));
  v14 = *(a1 + 24);
  v15 = vld1q_dup_f32(v14++);
  v16 = vld1q_dup_f32(v14);
  v19 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vminq_s32(vmaxq_s32(v13, v15), v16)), vminq_s32(vmaxq_s32(v17, v15), v16)));
  return sub_2991B4C6C(&v19, a2, a6, a7);
}

double sub_2991B4C6C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 16);
  v5 = (*a2 + v4 * a3 + a4);
  result = *a1;
  *v5 = *a1;
  v5[v4] = *(a1 + 1);
  v5[2 * v4] = *(a1 + 2);
  v5[3 * v4] = *(a1 + 3);
  v5[4 * v4] = *(a1 + 4);
  v5[5 * v4] = *(a1 + 5);
  v5[6 * v4] = *(a1 + 6);
  v5[8 * v4 - v4] = *(a1 + 7);
  return result;
}

void sub_2991B4CF8(uint64_t a1)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 172);
  v4 = *(a1 + 44);
  sub_2991B0380(v35, 0, *(a1 + 8), *(a1 + 192));
  v5 = *(a1 + 8);
  v6 = *(a1 + 192);
  v30 = v5;
  v34 = v6;
  v7 = (4 * *(v6 + 16) * *(v6 + 12) + 63) & 0xFFFFFFFFFFFFFFC0;
  v9 = v5[3];
  v8 = v5[4];
  v5[v9 + 5] = v8;
  v10 = v5[10];
  ++v5[3];
  v5[4] = v7 + v8;
  v31 = v9;
  v32 = v10;
  v33 = 5;
  sub_2991AE0F4(v5);
  if (v3 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 192);
    v13 = *(v12 + 16);
    v28 = v3;
    do
    {
      if (v3 - v11 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v3 - v11;
      }

      if (v2 >= 1)
      {
        v15 = 0;
        v16 = *(v12 + 12);
        do
        {
          v17 = *(a1 + 48);
          v39 = *(a1 + 32) + v17 * v15;
          if (v2 - v15 >= v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v2 - v15;
          }

          v40 = __PAIR64__(v4, v18);
          LODWORD(v41) = v17;
          v38[0] = v35;
          v38[1] = &v39;
          sub_2991AEA68(v38);
          v19 = *(a1 + 192);
          v39 = *(a1 + 24);
          v40 = v19;
          v41 = &v30;
          v42 = v35;
          v43 = a1 + 56;
          sub_2991AEFE8(&v39, v4);
          v20 = *(a1 + 164) + v11;
          LODWORD(v39) = *(a1 + 160) + v15;
          HIDWORD(v39) = v20;
          v40 = __PAIR64__(v14, v18);
          v21 = *(v36 + 8 * v37 + 40);
          v22 = *(v36 + 16);
          v23 = *(a1 + 72);
          v24 = *(v23 + 8 * *(a1 + 104) + 40);
          v25 = *(v23 + 16);
          v26 = *(a1 + 184);
          LODWORD(v38[0]) = **(a1 + 176);
          HIDWORD(v38[0]) = v18;
          v29[0] = *v26;
          v29[1] = v14;
          sub_2991B361C(a1 + 136, &v39, &v30, v4, v21 + v22, v24 + v25, v38, v29, *(a1 + 200));
          v12 = *(a1 + 192);
          v16 = *(v12 + 12);
          v15 += v16;
        }

        while (v15 < v2);
        v13 = *(v12 + 16);
        v3 = v28;
      }

      v11 += v13;
    }

    while (v11 < v3);
  }

  v27 = *(a1 + 8);
  *v27 = 0;
  ++*(v27 + 80);
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
}

void sub_2991B4F0C(uint64_t a1, unint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *(a5 + 8);
  v11 = *(a5 + 12);
  v13 = *(a3 + 12);
  sub_2991AE028(v55, v10, v11, v13, 1, *(a1 + 88), *(a1 + 92), *(a1 + 96));
  sub_2991B0380(v52, 0, a1, v55);
  sub_2991B0380(v49, 1, a1, v55);
  v44 = a1;
  v48 = v55;
  v14 = (4 * v57 * v56 + 63) & 0xFFFFFFFFFFFFFFC0;
  v15 = *(a1 + 32);
  v16 = *(a1 + 24);
  *(a1 + 8 * v16 + 40) = v15;
  v17 = *(a1 + 80);
  v35 = (a1 + 24);
  v36 = a1;
  ++*(a1 + 24);
  *(a1 + 32) = v14 + v15;
  v45 = v16;
  v46 = v17;
  v47 = 5;
  sub_2991AE0F4(a1);
  v18 = v57;
  if (v57 >= v11)
  {
    v19 = *a4;
    v20 = a4[2].i32[0];
    v61 = vrev64_s32(a4[1]);
    LODWORD(v62) = v20;
    v58 = v49;
    v59 = &v60;
    v60 = v19;
    sub_2991AEA68(&v58);
  }

  if (v10 >= 1)
  {
    v21 = 0;
    v22 = v56;
    v37 = v10;
    do
    {
      v23 = *(a3 + 16);
      v24 = *a3 + v23 * v21;
      if (v10 - v21 >= v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = v10 - v21;
      }

      v61 = __PAIR64__(v13, v25);
      LODWORD(v62) = v23;
      v58 = v52;
      v59 = &v60;
      v60 = v24;
      sub_2991AEA68(&v58);
      if (v11 >= 1)
      {
        v26 = 0;
        v27 = v57;
        do
        {
          if (v11 - v26 >= v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = v11 - v26;
          }

          if (v18 < v11)
          {
            v29 = a4[2].i32[0];
            v30 = *a4 + v29 * v26;
            v61 = __PAIR64__(v13, v28);
            LODWORD(v62) = v29;
            v58 = v49;
            v59 = &v60;
            v60 = v30;
            sub_2991AEA68(&v58);
          }

          v60 = a2;
          v61 = v55;
          v62 = &v44;
          v63 = v52;
          v64 = v49;
          sub_2991AEFE8(&v60, v13);
          v60 = __PAIR64__(v26, v21);
          v61 = __PAIR64__(v28, v25);
          v31 = *(v53 + 8 * v54 + 40);
          v32 = *(v53 + 16);
          v33 = *(v50 + 8 * v51 + 40);
          v34 = *(v50 + 16);
          LODWORD(v58) = *a6;
          HIDWORD(v58) = v25;
          v43[0] = *a7;
          v43[1] = v28;
          sub_2991B51E4(a5, &v60, &v44, v13, v31 + v32, v33 + v34, &v58, v43, a8);
          v27 = v57;
          v26 += v57;
        }

        while (v26 < v11);
      }

      v22 = v56;
      v21 += v56;
      v10 = v37;
    }

    while (v21 < v37);
  }

  *v36 = 0;
  ++*(v36 + 80);
  *v35 = 0;
  v35[1] = 0;
}

void sub_2991B51E4(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int *a7, _DWORD *a8, uint64_t a9)
{
  v81 = *MEMORY[0x29EDCA608];
  v14 = *(a3 + 32);
  v70 = *(*a3 + 8 * *(a3 + 8) + 40) + *(*a3 + 16);
  v71 = *(v14 + 12);
  v72 = v71;
  v68 = a5;
  v15 = a2[3];
  v69 = a2[2];
  v66 = a6;
  v67 = v15;
  v78[0] = a9;
  v78[1] = a9 + 16;
  v16 = *(a9 + 20);
  LODWORD(v79) = v16 & ~(v16 >> 31);
  HIDWORD(v79) = -v16 & ~(-v16 >> 31);
  v80 = a9 + 28;
  v77[0] = a9;
  v77[1] = a9 + 16;
  v77[2] = v79;
  v77[3] = a9 + 28;
  v76[0] = a9;
  v76[1] = a9 + 16;
  v76[2] = v79;
  v76[3] = a9 + 28;
  v75[0] = a9;
  v75[1] = a9 + 16;
  v75[2] = v79;
  v75[3] = a9 + 28;
  v74[0] = a9;
  v74[1] = (a9 + 16);
  v74[2] = v79;
  v74[3] = (a9 + 28);
  v73[0] = a9;
  v73[1] = (a9 + 16);
  v73[2] = v79;
  v73[3] = (a9 + 28);
  if (v15 >= 4)
  {
    v17 = 0;
    do
    {
      _X11 = v68;
      __asm { PRFM            #0, [X11] }

      _X11 = v68 + 16;
      __asm { PRFM            #0, [X11] }

      _X9 = v70 + 4 * v72 * v17;
      v27 = 4;
      do
      {
        __asm { PRFM            #0, [X9] }

        _X12 = _X9 + 16;
        __asm { PRFM            #0, [X12] }

        _X9 += 4 * v72;
        --v27;
      }

      while (v27);
      v31 = a2[1] + v17;
      LODWORD(v32) = a2[2];
      if (v32 >= 8)
      {
        v34 = 0;
        v35 = 0;
        do
        {
          v33 = v35 + 8;
          _X12 = v68 + 4 * (v35 + 8);
          __asm { PRFM            #0, [X12] }

          _X12 += 16;
          __asm { PRFM            #0, [X12] }

          v39 = v70 + v34 + 4 * v17 * v72;
          v40 = 4;
          do
          {
            _X13 = v39 + 32;
            __asm { PRFM            #0, [X13] }

            _X13 = v39 + 48;
            __asm { PRFM            #0, [X13] }

            v39 += 4 * v72;
            --v40;
          }

          while (v40);
          sub_2991B5664(&v70, v73, a1, &v68, &v66, a7, a8, a4, v35, v17, *a2 + v35, v31, *a2 + v35, v31);
          v32 = a2[2];
          v34 += 32;
          v35 = v33;
        }

        while (v33 <= v32 - 8);
      }

      else
      {
        LODWORD(v33) = 0;
      }

      while (v33 <= v32 - 4)
      {
        sub_2991B587C(&v70, v74, a1, &v68, &v66, a7, a8, a4, v33, v17, v33 + *a2, v31, v33 + *a2, v31);
        LODWORD(v33) = v33 + 4;
        LODWORD(v32) = a2[2];
      }

      if (v33 < v32)
      {
        do
        {
          sub_2991B5A44(&v70, v75, a1, &v68, &v66, a7, a8, a4, v33, v17, v33 + *a2, v31, v33 + *a2, v31);
          LODWORD(v33) = v33 + 1;
        }

        while (v33 < a2[2]);
      }

      v17 += 4;
      v15 = a2[3];
    }

    while (v17 <= v15 - 4);
  }

  else
  {
    v17 = 0;
  }

  while (v17 < v15)
  {
    v45 = a2[1] + v17;
    _X10 = v68;
    __asm { PRFM            #0, [X10] }

    _X10 = v68 + 16;
    __asm { PRFM            #0, [X10] }

    _X8 = v70 + 4 * v72 * v17;
    __asm { PRFM            #0, [X8] }

    _X8 = _X8 + 16;
    __asm { PRFM            #0, [X8] }

    LODWORD(_X8) = a2[2];
    if (_X8 >= 8)
    {
      v54 = 0;
      v55 = 48;
      do
      {
        v56 = v54;
        v54 += 8;
        _X12 = v68 + v55;
        _X13 = v68 + v55 - 16;
        __asm
        {
          PRFM            #0, [X13]
          PRFM            #0, [X12]
        }

        _X10 = v70 + 4 * v17 * v72 + v55;
        _X11 = _X10 - 16;
        __asm
        {
          PRFM            #0, [X11]
          PRFM            #0, [X10]
        }

        sub_2991B5BB8(&v70, v76, a1, &v68, &v66, a7, a8, a4, v56, v17, v56 + *a2, v45, v56 + *a2, v45);
        _X8 = a2[2];
        v55 += 32;
      }

      while (v54 <= _X8 - 8);
    }

    else
    {
      LODWORD(v54) = 0;
    }

    while (v54 <= _X8 - 4)
    {
      sub_2991B5CA8(&v70, v77, a1, &v68, &v66, a7, a8, a4, v54, v17, v54 + *a2, v45, v54 + *a2, v45);
      LODWORD(v54) = v54 + 4;
      LODWORD(_X8) = a2[2];
    }

    if (v54 < _X8)
    {
      do
      {
        sub_2991B5DA8(&v70, v78, a1, &v68, &v66, a7, a8, a4, v54, v17, v54 + *a2, v45, v54 + *a2, v45);
        LODWORD(v54) = v54 + 1;
      }

      while (v54 < a2[2]);
    }

    ++v17;
    v15 = a2[3];
  }

  v65 = *MEMORY[0x29EDCA608];
}

void sub_2991B5664(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, int *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v15 = 0;
  v64 = *MEMORY[0x29EDCA608];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v16 = *(a1 + 16);
  v17 = (4 * v16 * a10 + 4 * a9 + *a1 + 16);
  v18 = 4 * v16;
  do
  {
    v19 = &v48.i8[v15];
    v20 = *v17;
    *v19 = *(v17 - 1);
    *(v19 + 1) = v20;
    v15 += 32;
    v17 = (v17 + v18);
  }

  while (v15 != 128);
  v21 = 0;
  v22 = (*a4 + 4 * a9);
  v24 = *v22;
  v23 = v22[1];
  v25 = *(*a5 + 4 * a10);
  v26 = *a6;
  v27 = *a7 + 128;
  v28 = vdupq_n_s32(v27);
  v29 = 1;
  do
  {
    v30 = 0;
    v31 = v29;
    v32 = vmulq_s32(v24, v28);
    v33 = &v48.i8[16 * v21];
    do
    {
      *&v33[v30] = vaddq_s32(*&v33[v30], v32);
      v30 += 32;
    }

    while (v30 != 128);
    v29 = 0;
    v24 = v23;
    v21 = 1;
  }

  while ((v31 & 1) != 0);
  v34 = 0;
  v35 = vmulq_s32(vaddq_s32(vdupq_n_s32(v27 * a8), v25), vdupq_n_s32(v26 + 128));
  v56 = vdupq_lane_s32(*v35.i8, 0);
  v57 = vdupq_lane_s32(*v35.i8, 1);
  v58 = vdupq_laneq_s32(v35, 2);
  v59 = vdupq_laneq_s32(v35, 3);
  v36 = 1;
  do
  {
    v37 = 0;
    v38 = v36;
    v39 = 16 * v34;
    do
    {
      *(&v48 + v39) = vaddq_s32(*(&v48 + v39), *(&v56 + v37));
      v37 += 16;
      v39 += 32;
    }

    while (v37 != 64);
    v36 = 0;
    v34 = 1;
  }

  while ((v38 & 1) != 0);
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  sub_2991B5E74(a2, &v56, a11);
  v40 = 0;
  v56.i64[0] = v41;
  v56.i64[1] = v42;
  v57.i64[0] = v43;
  v57.i64[1] = v44;
  v45 = *(a3 + 16);
  v46 = (*a3 + a13 + v45 * a14);
  do
  {
    *v46 = v56.i64[v40++];
    v46 = (v46 + v45);
  }

  while (v40 != 4);
  v47 = *MEMORY[0x29EDCA608];
}

void sub_2991B587C(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, int *a6, _DWORD *a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v15 = 0;
  v46 = *MEMORY[0x29EDCA608];
  v16 = *(a1 + 16);
  v17 = (*a1 + 4 * v16 * a10 + 4 * a9);
  v18 = 4 * v16;
  do
  {
    *(&v42 + v15) = *v17;
    v15 += 16;
    v17 = (v17 + v18);
  }

  while (v15 != 64);
  v19 = 0;
  v20 = *(*a4 + 4 * a9);
  v38 = v42;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v21 = *(*a5 + 4 * a10);
  v22 = *a6;
  v23 = *a7 + 128;
  v24 = vmulq_s32(vdupq_n_s32(v23), v20);
  do
  {
    *(&v38 + v19) = vaddq_s32(*(&v38 + v19), v24);
    v19 += 16;
  }

  while (v19 != 64);
  v25 = 0;
  v26 = vmulq_s32(vaddq_s32(vdupq_n_s32(v23 * a8), v21), vdupq_n_s32(v22 + 128));
  v42 = vdupq_lane_s32(*v26.i8, 0);
  v43 = vdupq_lane_s32(*v26.i8, 1);
  v44 = vdupq_laneq_s32(v26, 2);
  v45 = vdupq_laneq_s32(v26, 3);
  do
  {
    *(&v38 + v25) = vaddq_s32(*(&v38 + v25), *(&v42 + v25));
    v25 += 16;
  }

  while (v25 != 64);
  v27 = (a2 + 3);
  v28 = *(**a2 + 4 * a11);
  v29 = sub_2991AFEF4((a2 + 1), *vaddq_s32(v28, v38).i64, *vaddq_s32(v28, v39).i64, vaddq_s32(v28, v40), vaddq_s32(v28, v41));
  *v33.i64 = sub_2991B4A64(v27, v29, v30, v31, v32);
  *v42.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v33), v34));
  v42.u64[1] = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v35), v36));
  sub_2991B5F54(&v42, a3, a13, a14);
  v37 = *MEMORY[0x29EDCA608];
}