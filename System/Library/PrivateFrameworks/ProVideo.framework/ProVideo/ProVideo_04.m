void sub_25F9DDE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (v39)
  {
    (*(*v39 + 24))(v39);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OMUtil::angle2PI(OMUtil *this, const Vec2f *a2, const Vec2f *a3)
{
  v3 = ((*this * a2->var0[0]) + (*(this + 1) * a2->var0[1])) / (sqrtf((*this * *this) + (*(this + 1) * *(this + 1))) * sqrtf((a2->var0[0] * a2->var0[0]) + (a2->var0[1] * a2->var0[1])));
  v4 = 1.0;
  if (v3 <= 1.0)
  {
    v4 = v3;
  }

  if (v3 >= -1.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  acosf(v5);
}

uint64_t std::vector<Vec2f>::__init_with_size[abi:ne200100]<Vec2f*,Vec2f*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25F9DE228(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 8 * v2 + 8;
  v14 = 0;
  std::vector<Vec2f>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_25F9DE334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<Vec2f>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t HBlackHole::setPixelTransform(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 416;
  if (a1 + 416 != a2)
  {
    v5 = 0;
    v6 = a2;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v4 + i) = *(v6 + i);
      }

      ++v5;
      v4 += 32;
      v6 += 32;
    }

    while (v5 != 4);
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  (*(*a1 + 96))(a1, 5, v8, v9, v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  (*(*a1 + 96))(a1, 6, v12, v13, v14, v15);
  v16.n128_u64[0] = *(a2 + 96);
  v17.n128_u64[0] = *(a2 + 104);
  v16.n128_f32[0] = v16.n128_f64[0];
  v17.n128_f32[0] = v17.n128_f64[0];
  v18.n128_u64[0] = *(a2 + 112);
  v19.n128_u64[0] = *(a2 + 120);
  v18.n128_f32[0] = v18.n128_f64[0];
  v19.n128_f32[0] = v19.n128_f64[0];
  v20 = *(*a1 + 96);

  return v20(a1, 7, v16, v17, v18, v19);
}

uint64_t HBlackHole::setInversePixelTransform(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 544;
  if (a1 + 544 != a2)
  {
    v5 = 0;
    v6 = a2;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v4 + i) = *(v6 + i);
      }

      ++v5;
      v4 += 32;
      v6 += 32;
    }

    while (v5 != 4);
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  (*(*a1 + 96))(a1, 2, v8, v9, v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  (*(*a1 + 96))(a1, 3, v12, v13, v14, v15);
  v16.n128_u64[0] = *(a2 + 96);
  v17.n128_u64[0] = *(a2 + 104);
  v16.n128_f32[0] = v16.n128_f64[0];
  v17.n128_f32[0] = v17.n128_f64[0];
  v18.n128_u64[0] = *(a2 + 112);
  v19.n128_u64[0] = *(a2 + 120);
  v18.n128_f32[0] = v18.n128_f64[0];
  v19.n128_f32[0] = v19.n128_f64[0];
  v20 = *(*a1 + 96);

  return v20(a1, 4, v16, v17, v18, v19);
}

uint64_t HBlackHole::RenderTile(HBlackHole *this, HGTile *a2)
{
  if (*(a2 + 10))
  {

    return HgcBlackHole::RenderTile(this, a2);
  }

  else
  {
    v4 = *(a2 + 3) - *(a2 + 1);
    if (v4 >= 1)
    {
      v5 = *(a2 + 2);
      v6 = 16 * (*(a2 + 2) - *a2);
      v7 = 16 * *(a2 + 6);
      do
      {
        bzero(v5, v6);
        v5 += v7;
        --v4;
      }

      while (v4);
    }

    return 0;
  }
}

unint64_t HBlackHole::GetDOD(float64x2_t *this, HGRenderer *a2, int a3, HGRect a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *&a4.var2;
    v7 = *&a4.var0;
    (*(*&this->f64[0] + 104))(this, 0, v22);
    v17 = *(v22[0].f64 + 1);
    v18 = *v22[0].f64;
    (*(*&this->f64[0] + 104))(this, 1, v22);
    v9 = *v22[0].f64;
    v10 = *&v22[0].f64[1];
    v22[0] = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v22[1] = _Q0;
    v21.f64[0] = v18;
    v21.f64[1] = v17;
    v20.f64[0] = v7;
    v20.f64[1] = SHIDWORD(v7);
    unionBlackHolePoint(v22, this[26].f64, this[34].f64, &v21, &v20, v10, v9);
    v21.f64[0] = v18;
    v21.f64[1] = v17;
    v20.f64[0] = v6;
    v20.f64[1] = SHIDWORD(v7);
    unionBlackHolePoint(v22, this[26].f64, this[34].f64, &v21, &v20, v10, v9);
    v21.f64[0] = v18;
    v21.f64[1] = v17;
    v20.f64[0] = v6;
    v20.f64[1] = SHIDWORD(v6);
    unionBlackHolePoint(v22, this[26].f64, this[34].f64, &v21, &v20, v10, v9);
    v21.f64[0] = v18;
    v21.f64[1] = v17;
    v20.f64[0] = v7;
    v20.f64[1] = SHIDWORD(v6);
    unionBlackHolePoint(v22, this[26].f64, this[34].f64, &v21, &v20, v10, v9);
    v19 = __PAIR64__(LODWORD(v17), LODWORD(v18));
    PCMatrix44Tmpl<double>::transform<float>(this + 26, &v19, &v19);
    v21.f64[0] = v18;
    v21.f64[1] = v17;
    v20.f64[0] = *&v19;
    v20.f64[1] = SHIDWORD(v6);
    unionBlackHolePoint(v22, this[26].f64, this[34].f64, &v21, &v20, v10, v9);
    v21.f64[0] = v18;
    v21.f64[1] = v17;
    v20.f64[0] = *&v19;
    v20.f64[1] = SHIDWORD(v7);
    unionBlackHolePoint(v22, this[26].f64, this[34].f64, &v21, &v20, v10, v9);
    v21.f64[0] = v18;
    v21.f64[1] = v17;
    v20.f64[0] = v7;
    v20.f64[1] = *(&v19 + 1);
    unionBlackHolePoint(v22, this[26].f64, this[34].f64, &v21, &v20, v10, v9);
    v21.f64[0] = v18;
    v21.f64[1] = v17;
    v20.f64[0] = v6;
    v20.f64[1] = *(&v19 + 1);
    unionBlackHolePoint(v22, this[26].f64, this[34].f64, &v21, &v20, v10, v9);
    v4 = vcvtmd_s64_f64(v22[0].f64[0] + 0.5);
    LODWORD(v5) = vcvtmd_s64_f64(v22[0].f64[1] + 0.5);
  }

  return v4 | (v5 << 32);
}

void unionBlackHolePoint(float64x2_t *a1, double *a2, double *a3, float64x2_t *a4, float64x2_t *a5, float a6, float a7)
{
  *a5 = vdivq_f64(*a5, vdupq_lane_s64(COERCE__INT64(a6), 0));
  PCMatrix44Tmpl<double>::transform<double>(a3, a5->f64, a5->f64);
  v12 = vsubq_f64(*a5, *a4);
  v13 = sqrt(vaddvq_f64(vmulq_f64(v12, v12)));
  if (v13 <= a7)
  {
    v14 = *a4;
  }

  else
  {
    v14 = vsubq_f64(*a5, vdivq_f64(vmulq_n_f64(v12, a7), vdupq_lane_s64(*&v13, 0)));
  }

  *a5 = v14;
  v15 = 0uLL;
  PCMatrix44Tmpl<double>::transform<double>(a2, a5->f64, v15.f64);
  PCRect<double>::operator|=(a1, &v15);
}

int8x16_t HBlackHole::TransformPoint@<Q0>(uint64_t a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X3>, float64x2_t *a5@<X4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>, float a9@<S2>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  PCMatrix44Tmpl<double>::transform<double>((a1 + 544), a2, a6);
  v17 = vsubq_f64(*a6, *a3);
  v18 = sqrt(vaddvq_f64(vmulq_f64(v17, v17)));
  if (fabs(v18) >= 0.000000100000001)
  {
    v17 = vdivq_f64(v17, vdupq_lane_s64(*&v18, 0));
  }

  v19 = v18 / a8;
  v20 = 1.0;
  if (v19 <= 1.0)
  {
    v20 = v18 / a8;
  }

  v21 = v19 < 0.0;
  v22 = 0.0;
  if (!v21)
  {
    v22 = v20;
  }

  v23 = v22 * a7;
  *a6 = vaddq_f64(*a3, vmulq_n_f64(v17, v18 + v23));
  v27 = 0uLL;
  PCMatrix44Tmpl<double>::transform<double>((a1 + 416), a6, &v27);
  *a6 = v27;
  v24 = vmulq_n_f64(*a6, a9);
  v25 = vbslq_s8(vcgtq_f64(v24, *a4), v24, *a4);
  result = vbslq_s8(vcgtq_f64(*a5, v25), v25, *a5);
  *a6 = result;
  return result;
}

unint64_t HBlackHole::GetROI(HBlackHole *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v45 = *MEMORY[0x277D85DE8];
  var1 = a4.var1;
  var3 = a4.var3;
  if (a3)
  {
    if (a3 == 1)
    {
      (*(*this + 104))(this, 1, &v44);
      LODWORD(v9) = v5 - 1;
      v10 = (var1 - 1);
    }

    else
    {
      LODWORD(v9) = 0;
      v10 = 0;
    }
  }

  else
  {
    (*(*this + 104))(this, 0, &v44);
    v11 = v44.f64[0];
    (*(*this + 104))(this, 1, &v44);
    v12 = v44.f64[0];
    v13 = *&v44.f64[1];
    (*(*this + 104))(this, 8, &v44);
    v14 = v44.f64[0];
    (*(*this + 104))(this, 9, &v44);
    v15 = *(v44.f64 + 1);
    v16 = *v44.f64;
    if (v5 - 2 <= v4 + 2)
    {
      v20 = var3 + 2;
      v17 = var1 - 2;
      v21 = v4 - v5 + 5;
      v26 = v44.f64[0];
      v27 = *(v44.f64 + 1);
      v29 = *v44.f64;
      v18 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
      v19 = vdupq_n_s64(0xC7EFFFFFE0000000);
      v22 = v5 - 2;
      do
      {
        v31 = v19;
        v35 = v18;
        v44.f64[0] = v22;
        v44.f64[1] = (var3 + 2);
        v43.f64[0] = v22;
        v43.f64[1] = v17;
        v41.f64[0] = *&v11;
        v41.f64[1] = *(&v11 + 1);
        v40.f64[0] = *&v14;
        v40.f64[1] = *(&v14 + 1);
        v39.f64[0] = v29;
        v39.f64[1] = v27;
        HBlackHole::TransformPoint(this, v44.f64, &v41, &v40, &v39, &v42, *&v12, *(&v12 + 1), v13);
        v44 = v42;
        v41.f64[0] = *&v11;
        v41.f64[1] = *(&v11 + 1);
        v40.f64[0] = *&v14;
        v40.f64[1] = *(&v14 + 1);
        v39.f64[0] = v29;
        v39.f64[1] = v27;
        v32 = vbslq_s8(vcgtq_f64(v42, v31), v42, v31);
        v36 = vbslq_s8(vcgtq_f64(v35, v42), v42, v35);
        HBlackHole::TransformPoint(this, v43.f64, &v41, &v40, &v39, &v42, *&v12, *(&v12 + 1), v13);
        v43 = v42;
        v18 = vbslq_s8(vcgtq_f64(v36, v42), v42, v36);
        v19 = vbslq_s8(vcgtq_f64(v42, v32), v42, v32);
        ++v22;
        --v21;
      }

      while (v21);
      v15 = *(&v26 + 1);
      v16 = *&v26;
    }

    else
    {
      v17 = var1 - 2;
      v18 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
      v19 = vdupq_n_s64(0xC7EFFFFFE0000000);
      v20 = var3 + 2;
    }

    if (v17 <= v20)
    {
      v23 = var3 + 3;
      v28 = v15;
      v30 = v16;
      do
      {
        v33 = v19;
        v37 = v18;
        v44.f64[0] = (v5 - 2);
        v44.f64[1] = v17;
        v43.f64[0] = (v4 + 2);
        v43.f64[1] = v17;
        v41.f64[0] = *&v11;
        v41.f64[1] = *(&v11 + 1);
        v40.f64[0] = *&v14;
        v40.f64[1] = *(&v14 + 1);
        v39.f64[0] = v30;
        v39.f64[1] = v28;
        HBlackHole::TransformPoint(this, v44.f64, &v41, &v40, &v39, &v42, *&v12, *(&v12 + 1), v13);
        v44 = v42;
        v41.f64[0] = *&v11;
        v41.f64[1] = *(&v11 + 1);
        v40.f64[0] = *&v14;
        v40.f64[1] = *(&v14 + 1);
        v39.f64[0] = v30;
        v39.f64[1] = v28;
        v34 = vbslq_s8(vcgtq_f64(v42, v33), v42, v33);
        v38 = vbslq_s8(vcgtq_f64(v37, v42), v42, v37);
        HBlackHole::TransformPoint(this, v43.f64, &v41, &v40, &v39, &v42, *&v12, *(&v12 + 1), v13);
        v43 = v42;
        v18 = vbslq_s8(vcgtq_f64(v38, v42), v42, v38);
        v19 = vbslq_s8(vcgtq_f64(v42, v34), v42, v34);
        ++v17;
      }

      while (v23 != v17);
    }

    v24 = vsliq_n_s64(vcvtq_s64_f64(vaddq_f64(vzip1q_s64(v18, v19), xmmword_260343A40)), vcvtq_s64_f64(vaddq_f64(vzip2q_s64(v18, v19), xmmword_260343A40)), 0x20uLL);
    v9 = HGRectUnion(v24.i64[0], v24.i64[1], v5, v4);
    v10 = HIDWORD(v9);
  }

  return v9 | (v10 << 32);
}

uint64_t HBlackHole::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v7 = v6;
  (*(*this + 96))(this, 8, DOD, SHIDWORD(DOD), 0.0, 0.0);
  (*(*this + 96))(this, 9, v7, SHIDWORD(v7), 0.0, 0.0);
  if ((*(*a2 + 304))(a2))
  {
    (*(*this + 136))(this, 0, 2);
  }

  return HgcBlackHole::GetOutput(this, a2);
}

void HBlackHole::~HBlackHole(HGNode *this)
{
  HgcBlackHole::~HgcBlackHole(this);

  HGObject::operator delete(v1);
}

int32x2_t *PCMatrix44Tmpl<double>::transform<float>(float64x2_t *a1, float32x2_t *a2, int32x2_t *a3)
{
  v3.f64[0] = a1->f64[0];
  v4.f64[0] = a1[2].f64[0];
  v5.f64[0] = a1[3].f64[1];
  v6 = vcvtq_f64_f32(*a2);
  v7 = a1[7].f64[1] + vaddvq_f64(vmulq_f64(a1[6], v6));
  v4.f64[1] = a1->f64[1];
  v3.f64[1] = a1[2].f64[1];
  v8 = vmulq_f64(v3, v6);
  v5.f64[1] = a1[1].f64[1];
  *a3 = vrev64_s32(vcvt_f32_f64(vdivq_f64(vaddq_f64(v5, vaddq_f64(vmulq_f64(v4, v6), vextq_s8(v8, v8, 8uLL))), vdupq_lane_s64(COERCE__INT64(v7), 0))));
  return a3;
}

uint64_t HBulge::RenderTile(HBulge *this, float32x4_t **a2)
{
  if (a2[10])
  {

    return HgcBulge::RenderTile(this, a2);
  }

  else
  {
    v4 = *(a2 + 3) - *(a2 + 1);
    if (v4 >= 1)
    {
      v5 = a2[2];
      v6 = 16 * (*(a2 + 2) - *a2);
      v7 = 16 * *(a2 + 6);
      do
      {
        bzero(v5, v6);
        v5 = (v5 + v7);
        --v4;
      }

      while (v4);
    }

    return 0;
  }
}

uint64_t HBulge::GetDOD(HBulge *this, HGRenderer *a2, int a3, HGRect a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    (*(*this + 104))(this, 0, &v9, *&a4.var0, *&a4.var2);
    v6 = v9;
    v5 = v10;
    (*(*this + 104))(this, 1, &v9);
    v7 = v9;
    (*(*this + 104))(this, 2, &v9);
    *&a4.var0 = HGRectMake4i(vcvtmd_s64_f64((v6 - (v9 / v7)) + 0.0000001), vcvtmd_s64_f64((v5 - (v10 / v7)) + 0.0000001), vcvtpd_s64_f64((v6 - (v9 / v7)) + ((v9 / v7) + (v9 / v7))), vcvtpd_s64_f64((v5 - (v10 / v7)) + ((v10 / v7) + (v10 / v7))));
  }

  return *&a4.var0;
}

unint64_t HBulge::GetROI(HBulge *this, HGRenderer *a2, int a3, HGRect a4)
{
  v95[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    var2 = a4.var2;
    var0 = a4.var0;
    v9.i64[0] = *&a4.var2;
    v9.i64[1] = *&a4.var0;
    v93 = vshrn_n_s64(v9, 0x20uLL);
    (*(*this + 104))(this, 0, v95);
    v92 = v95[0];
    (*(*this + 104))(this, 1, v95);
    v10 = v95[0].f32[1];
    v94 = v95[0].f32[0];
    (*(*this + 104))(this, 2, v95);
    v13 = vcvtq_f64_f32(v92);
    v14 = vcvtq_f64_f32(v95[0]);
    v15 = var0;
    v17 = v92.f32[0] <= var2 && v92.f32[0] >= v15;
    v18 = v93.i32[1];
    v19 = v93.i32[0];
    v21 = v92.f32[1] <= v93.i32[0] && v92.f32[1] >= v18;
    __asm { FMOV            V4.2S, #1.0 }

    if (!_ZF & _CF)
    {
      v32 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
      v33 = vdupq_n_s64(0xC7EFFFFFE0000000);
      v34 = v94;
    }

    else
    {
      v26.i64[0] = v93.i32[0];
      v26.i64[1] = v93.i32[1];
      v27 = vdivq_f64(vsubq_f64(vcvtq_f64_s64(v26), vdupq_laneq_s64(v13, 1)), vdupq_laneq_s64(v14, 1));
      v28 = vcvt_f32_f64(v27);
      v29 = vmul_f32(v28, v28);
      v30 = vdivq_f64(vsubq_f64(v13, v13), v14);
      v31 = v30.f64[1];
      v32 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
      v33 = vdupq_n_s64(0xC7EFFFFFE0000000);
      v34 = v94;
      do
      {
        v35 = (v15 - v13.f64[0]) / v14.f64[0];
        *v11.i32 = v35 * v35;
        v36 = vsub_f32(_D4, vmul_n_f32(vand_s8(vsqrt_f32(vadd_f32(v29, vdup_lane_s32(*v11.i8, 0))), vcgez_s32(vshl_n_s32(vand_s8(vdup_n_s32(v35 == 0.0), vceqz_f32(v28)), 0x1FuLL))), v94));
        v37 = vbsl_s8(vcgt_f32(_D4, v36), vmaxnm_f32(v36, 0), _D4);
        v38 = fmaxf(v37.f32[1], 0.0);
        v39 = vcgt_f32(_D4, v37);
        if ((v39.i8[4] & 1) == 0)
        {
          v38 = 1.0;
        }

        v40 = (3.0 - (v38 + v38)) * (v38 * v38);
        v41 = ((v10 * v40) + 1.0);
        v42 = fmaxf(v37.f32[0], 0.0);
        if ((v39.i8[0] & 1) == 0)
        {
          v42 = 1.0;
        }

        v43 = (3.0 - (v42 + v42)) * (v42 * v42);
        v44 = ((v10 * v43) + 1.0);
        v45.f64[1] = v27.f64[1];
        v45.f64[0] = (v15 - v13.f64[0]) / v14.f64[0];
        v46 = vaddq_f64(vmulq_f64(vmulq_n_f64(v45, v41), v14), v13);
        v47 = vbslq_s8(vcgtq_f64(v32, v46), v46, v32);
        v48 = vbslq_s8(vcgtq_f64(v46, v33), v46, v33);
        v49 = vzip1q_s64(v45, v27);
        v12 = vaddq_f64(vmulq_f64(vmulq_n_f64(v49, v44), v14), v13);
        v32 = vbslq_s8(vcgtq_f64(v47, v12), v12, v47);
        v33 = vbslq_s8(vcgtq_f64(v12, v48), v12, v48);
        if (v21)
        {
          _ZF = v31 == 0.0 && v35 == 0.0;
          v51 = sqrtf((v31 * v31) + *v11.i32);
          if (_ZF)
          {
            v51 = 0.0;
          }

          v52 = 1.0 - (v94 * v51);
          v53 = fmaxf(v52, 0.0);
          if (v52 >= 1.0)
          {
            v54 = 1.0;
          }

          else
          {
            v54 = v53;
          }

          v55 = fmaxf(v54, 0.0);
          if (v54 >= 1.0)
          {
            v56 = 1.0;
          }

          else
          {
            v56 = v55;
          }

          v57 = (3.0 - (v56 + v56)) * (v56 * v56);
          v49.f64[1] = v30.f64[1];
          v58 = vaddq_f64(vmulq_f64(vmulq_n_f64(v49, ((v10 * v57) + 1.0)), v14), v13);
          v11 = vcgtq_f64(v58, v33);
          v32 = vbslq_s8(vcgtq_f64(v32, v58), v58, v32);
          v33 = vbslq_s8(v11, v58, v33);
        }

        v15 = v15 + 1.0;
      }

      while (v15 <= var2);
    }

    if (v18 <= v19)
    {
      v59.i64[0] = var2;
      v59.i64[1] = var0;
      v60 = vdivq_f64(vsubq_f64(vcvtq_f64_s64(v59), vdupq_lane_s64(*&v13.f64[0], 0)), vdupq_lane_s64(*&v14.f64[0], 0));
      v61 = vcvt_f32_f64(v60);
      v62 = vmul_f32(v61, v61);
      v63 = vdivq_f64(vsubq_f64(v13, v13), v14).f64[0];
      v64 = v63;
      v65 = vdupq_laneq_s64(v60, 1).u64[0];
      v66 = vceqz_f32(v61);
      do
      {
        v67 = (v18 - v13.f64[1]) / v14.f64[1];
        *v12.f64 = v67 * v67;
        v68 = vsub_f32(_D4, vmul_n_f32(vand_s8(vsqrt_f32(vadd_f32(v62, vdup_lane_s32(*&v12.f64[0], 0))), vcgez_s32(vshl_n_s32(vand_s8(v66, vdup_n_s32(v67 == 0.0)), 0x1FuLL))), v34));
        v69 = vbsl_s8(vcgt_f32(_D4, v68), vmaxnm_f32(v68, 0), _D4);
        v70 = fmaxf(v69.f32[1], 0.0);
        v71 = vcgt_f32(_D4, v69);
        if ((v71.i8[4] & 1) == 0)
        {
          v70 = 1.0;
        }

        v72 = (3.0 - (v70 + v70)) * (v70 * v70);
        v73 = ((v10 * v72) + 1.0);
        v74 = fmaxf(v69.f32[0], 0.0);
        if ((v71.i8[0] & 1) == 0)
        {
          v74 = 1.0;
        }

        v75 = (3.0 - (v74 + v74)) * (v74 * v74);
        *&v76.f64[0] = v65;
        v76.f64[1] = (v18 - v13.f64[1]) / v14.f64[1];
        v77 = vaddq_f64(vmulq_f64(vmulq_n_f64(v76, v73), v14), v13);
        v78 = vbslq_s8(vcgtq_f64(v32, v77), v77, v32);
        v79 = vbslq_s8(vcgtq_f64(v77, v33), v77, v33);
        v77.f64[0] = v60.f64[0];
        v77.f64[1] = v76.f64[1];
        v80 = vaddq_f64(vmulq_f64(vmulq_n_f64(v77, ((v10 * v75) + 1.0)), v14), v13);
        v32 = vbslq_s8(vcgtq_f64(v78, v80), v80, v78);
        v33 = vbslq_s8(vcgtq_f64(v80, v79), v80, v79);
        if (v17)
        {
          v81 = v67 == 0.0 && v64 == 0.0;
          v82 = sqrtf((v64 * v64) + *v12.f64);
          if (v81)
          {
            v82 = 0.0;
          }

          v83 = 1.0 - (v34 * v82);
          v84 = fmaxf(v83, 0.0);
          if (v83 >= 1.0)
          {
            v85 = 1.0;
          }

          else
          {
            v85 = v84;
          }

          v86 = fmaxf(v85, 0.0);
          if (v85 >= 1.0)
          {
            v87 = 1.0;
          }

          else
          {
            v87 = v86;
          }

          v88 = (3.0 - (v87 + v87)) * (v87 * v87);
          v89.f64[0] = v63;
          v89.f64[1] = (v18 - v13.f64[1]) / v14.f64[1];
          v90 = vaddq_f64(vmulq_f64(vmulq_n_f64(v89, ((v10 * v88) + 1.0)), v14), v13);
          v12 = vcgtq_f64(v32, v90);
          v32 = vbslq_s8(v12, v90, v32);
          v33 = vbslq_s8(vcgtq_f64(v90, v33), v90, v33);
        }

        v18 = v18 + 1.0;
      }

      while (v18 <= v19);
    }

    v4 = (v32.f64[0] + -2.0);
    v5 = (v32.f64[1] + -2.0);
  }

  return v4 | (v5 << 32);
}

uint64_t HBulge::GetOutput(HBulge *this, HGRenderer *a2)
{
  if ((*(*a2 + 304))(a2))
  {
    (*(*this + 136))(this, 0, 2);
  }

  return HgcBulge::GetOutput(this, a2);
}

void HBulge::~HBulge(HGNode *this)
{
  HgcBulge::~HgcBulge(this);

  HGObject::operator delete(v1);
}

uint64_t HBumpMap::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

unint64_t HBumpMap::GetROI(HBumpMap *this, HGRenderer *a2, int a3, HGRect a4)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *&a4.var2;
  }

  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *&a4.var0;
  }

  if (a3 == 1)
  {
    v7 = *&a4.var2;
    v8 = *&a4.var0;
    (*(*this + 104))(this, 5, v59);
    v9 = *v59;
    (*(*this + 104))(this, 0, v59);
    if (v9 <= 1.0)
    {
      v26 = vmuls_lane_f32(255.0, *v59, 1);
      v27 = vcvtms_s32_f32((255.0 * *v59) + v8);
      v28 = vcvtms_s32_f32(v26 + SHIDWORD(v8));
      if (v27 >= v8)
      {
        LODWORD(v6) = v8;
      }

      else
      {
        LODWORD(v6) = v27;
      }

      if (v28 >= SHIDWORD(v8))
      {
        LODWORD(v25) = HIDWORD(v8);
      }

      else
      {
        LODWORD(v25) = v28;
      }

      v29 = vcvtps_s32_f32((255.0 * *v59) + v7);
      LODWORD(v10) = vcvtps_s32_f32(v26 + SHIDWORD(v7));
      if (v29 <= v7)
      {
        v29 = v7;
      }

      if (v10 <= SHIDWORD(v7))
      {
        v30 = v7 & 0xFFFFFFFF00000000;
      }

      else
      {
        v30 = v10 << 32;
      }

      v5 = v30 & 0xFFFFFFFF00000000 | v29;
    }

    else
    {
      v41 = *v59;
      (*(*this + 104))(this, 1, v59);
      v11 = *v59;
      v44 = *&v59[4];
      v42 = *&v59[12];
      (*(*this + 104))(this, 2, v59);
      v12 = *&v59[12];
      *&v13 = v44;
      *(&v13 + 1) = __PAIR64__(*v59, v42);
      v45 = v13;
      v14 = *&v59[4];
      (*(*this + 104))(this, 3, v59);
      v15 = *v59;
      v43 = *&v59[4];
      v40 = *&v59[12];
      (*(*this + 104))(this, 4, v59);
      v39 = *v59;
      v16 = *&v59[4];
      v17 = *&v59[12];
      v66 = 1065353216;
      v63 = 1065353216;
      v62 = 0;
      v65 = 0;
      v64 = 0;
      *&v59[4] = v45;
      v60 = v14;
      *v59 = v11;
      v61 = v12;
      v58.f32[0] = v8;
      v58.f32[1] = SHIDWORD(v8);
      v58.i64[1] = 0x3F80000000000000;
      v57.f32[0] = v7;
      v57.f32[1] = SHIDWORD(v7);
      v57.i64[1] = 0x3F80000000000000;
      PCMatrix44Tmpl<float>::transform<float>(v59, v58.f32, v58.f32);
      PCMatrix44Tmpl<float>::transform<float>(v59, v57.f32, v57.f32);
      v18 = 0;
      v20 = v57;
      v19 = v58;
      v21 = vcvtq_f64_f32(v41);
      do
      {
        v22 = vmulq_n_f64(v21, v18 * 255.0);
        *v23.f32 = vcvt_f32_f64(vaddq_f64(v22, vcvtq_f64_f32(*v19.f32)));
        *&v22.f64[0] = vcvt_f32_f64(vaddq_f64(v22, vcvtq_f64_f32(*v20.f32)));
        v23.i64[1] = 0x3F80000000000000;
        v19 = vbslq_s8(vcgtq_f32(v19, v23), v23, v19);
        v22.f64[1] = 0.0078125;
        v20 = vbslq_s8(vcgtq_f32(v22, v20), v22, v20);
        ++v18;
      }

      while (v18 != 2);
      v55 = v20;
      v56 = v19;
      v54 = 1065353216;
      v51 = 1065353216;
      v50 = 0;
      v53 = 0;
      v52 = 0;
      *&v24 = v43;
      *(&v24 + 1) = __PAIR64__(v39, v40);
      v46 = v15;
      v47 = v24;
      v48 = v16;
      v49 = v17;
      PCMatrix44Tmpl<float>::transform<float>(&v46, v56.f32, v56.f32);
      PCMatrix44Tmpl<float>::transform<float>(&v46, v55.f32, v55.f32);
      v6 = HGRectMake4i(vcvtms_s32_f32(v56.f32[0]), vcvtms_s32_f32(v56.f32[1]), vcvtps_s32_f32(v55.f32[0]), vcvtps_s32_f32(v55.f32[1]));
      v25 = HIDWORD(v6);
    }
  }

  else
  {
    v25 = HIDWORD(v6);
  }

  v31 = (v25 - 1);
  v32 = (v5 & 0xFFFFFFFF00000000) + 0x100000000;
  if (v6 < -2147483645 || v25 < -2147483645 || (v5 - 2147483646) < 3 || v32 == 0x7FFFFFFF00000000 || SHIDWORD(v32) < -2147483646)
  {
    return 0;
  }

  else
  {
    return (v6 - 1) | (v31 << 32);
  }
}

uint64_t HBumpMap::GetOutput(HBumpMap *this, HGRenderer *a2)
{
  if ((*(*a2 + 304))(a2))
  {
    (*(*this + 136))(this, 1, 2);
    (*(*this + 136))(this, 0, 2);
  }

  return HgcBumpMap::GetOutput(this, a2);
}

void HBumpMap::~HBumpMap(HGNode *this)
{
  HgcBumpMap::~HgcBumpMap(this);

  HGObject::operator delete(v1);
}

uint64_t HDisplace::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

int32x2_t TransformPoint@<D0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, float32x2_t *a3@<X2>, uint64_t a4@<X3>, __int32 *a5@<X4>, float32x2_t *a6@<X5>, int32x2_t *a7@<X8>)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = *(a4 + 4);
  v10.i32[0] = *(a4 + 12);
  v11 = *a2;
  v12 = *a3;
  v13 = a3[1];
  v7.i32[1] = *a5;
  v14 = vmul_n_f32(v7, COERCE_FLOAT(*a1));
  v7.i32[0] = a3[1].i32[1];
  v9.i32[1] = a5[1];
  v8.i32[1] = a5[2];
  v10.i32[1] = a5[3];
  v15 = vadd_f32(vadd_f32(vadd_f32(vadd_f32(v14, vmul_n_f32(v9, COERCE_FLOAT(*(a1 + 4)))), vmul_n_f32(v8, COERCE_FLOAT(*(a1 + 8)))), vmul_n_f32(v10, *(a1 + 12))), vmul_f32(*a6, vdup_n_s32(0x437F0000u)));
  v12.i32[1] = a2->i32[1];
  v11.i32[1] = a3->i32[1];
  v13.i32[1] = a2[1].i32[0];
  v7.i32[1] = a2[1].i32[1];
  result = vrev64_s32(vadd_f32(vadd_f32(vadd_f32(vmul_f32(v15, v12), vrev64_s32(vmul_f32(v15, v11))), vmul_n_f32(v13, (a6[1].f32[0] * 255.0) + 0.0)), vmul_n_f32(v7, (a6[1].f32[1] * 255.0) + 1.0)));
  *a7 = result;
  a7[1] = 0x3F80000000000000;
  return result;
}

unint64_t HDisplace::GetROI(HDisplace *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v26 = *MEMORY[0x277D85DE8];
  var1 = a4.var1;
  if (a3 == 1)
  {
    var3 = a4.var3;
    (*(*this + 104))(this, 0, &v25);
    v24 = v25;
    (*(*this + 104))(this, 1, &v25);
    v23 = v25;
    (*(*this + 104))(this, 2, &v25);
    v22 = v25;
    (*(*this + 104))(this, 3, &v25);
    v21 = v25;
    (*(*this + 104))(this, 4, &v25);
    v20 = v25;
    *&v19 = v5;
    *(&v19 + 1) = var1;
    *(&v19 + 1) = 0x3F80000000000000;
    *&v18 = v4;
    *(&v18 + 1) = var3;
    *(&v18 + 1) = 0x3F80000000000000;
    TransformPoint(&v19, &v24, &v23, &v22, &v21, &v20, &v17);
    v19 = v17;
    TransformPoint(&v18, &v24, &v23, &v22, &v21, &v20, &v17);
    v18 = v17;
    LODWORD(v9) = vcvtms_s32_f32(*&v19);
    LODWORD(v10) = vcvtms_s32_f32(*(&v19 + 1));
    LODWORD(v11) = vcvtps_s32_f32(*&v17);
    LODWORD(v12) = vcvtps_s32_f32(*(&v17 + 1));
    v13 = HGRectUnion(v9 | (v10 << 32), v11 | (v12 << 32), v5, v4);
    v14 = v13 - 1;
    v15 = HIDWORD(v13) + 0xFFFFFFFF;
  }

  else
  {
    if (a3)
    {
      v14 = 0;
    }

    else
    {
      v14 = a4.var0 - 1;
    }

    if (a3)
    {
      LODWORD(v15) = 0;
    }

    else
    {
      LODWORD(v15) = a4.var1 - 1;
    }
  }

  return v14 | (v15 << 32);
}

void HDisplace::~HDisplace(HGNode *this)
{
  HgcDisplace::~HgcDisplace(this);

  HGObject::operator delete(v1);
}

unint64_t HFisheye::GetROI(float32x4_t *this, HGRenderer *a2, int a3, HGRect a4, double a5, double a6, __n128 a7)
{
  if (a3)
  {
    LODWORD(v7) = 0;
    LODWORD(v8) = 0;
  }

  else
  {
    *v10.i32 = a4.var2;
    a7.n128_f32[0] = a4.var1;
    var3 = a4.var3;
    v91 = a4.var3;
    var2 = a4.var2;
    var0 = a4.var0;
    if (a4.var0 <= a4.var2)
    {
      v87 = this[30];
      v89 = this[29];
      v93 = this[33];
      v85 = this[32];
      v14 = this[31].f32[0];
      v13 = xmmword_260343A90;
      v12 = xmmword_260343A80;
      v15 = this[27];
      v81 = this[28];
      v83 = v15;
      v15.f32[0] = a4.var0;
      v95 = a7;
      do
      {
        v97 = v12;
        v101 = v13;
        v78 = v15;
        v16.i64[0] = __PAIR64__(a7.n128_u32[0], v15.u32[0]);
        v15.f32[1] = var3;
        v74 = v15.i64[0];
        v16.i64[1] = 0x3F80000000000000;
        v17 = vmulq_f32(v16, v89);
        *v17.i8 = vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
        v18 = vmulq_f32(v16, v87);
        *v18.f32 = vadd_f32(*v18.f32, *&vextq_s8(v18, v18, 8uLL));
        *v18.f32 = vadd_f32(vzip1_s32(*v17.i8, *v18.f32), vzip2_s32(*v17.i8, *v18.f32));
        v70 = vsubq_f32(v18, v93);
        v71 = vmulq_f32(v85, vmulq_f32(v70, v70));
        v19 = sqrtf(vaddv_f32(*v71.i8));
        *v20.i32 = powf(v19, v14) / v19;
        *v21.f32 = vmul_f32(*v70.f32, *&vdupq_lane_s32(v20, 0));
        v21.i64[1] = 0x3F80000000000000;
        v22 = vaddq_f32(v93, v21);
        v23 = vmulq_f32(v83, v22);
        *v23.f32 = vadd_f32(*v23.f32, *&vextq_s8(v23, v23, 8uLL));
        v24 = vmulq_f32(v81, v22);
        *v24.f32 = vadd_f32(*v24.f32, *&vextq_s8(v24, v24, 8uLL));
        *v24.f32 = vadd_f32(vzip1_s32(*v23.f32, *v24.f32), vzip2_s32(*v23.f32, *v24.f32));
        v24.i64[1] = vextq_s8(v71, v71, 8uLL).u64[0];
        v98 = vminnmq_f32(v24, v97);
        v102 = vmaxnmq_f32(v24, v101);
        v23.i64[0] = v74;
        v23.i64[1] = 0x3F80000000000000;
        v25 = vmulq_f32(v23, v89);
        *v25.f32 = vadd_f32(*v25.f32, *&vextq_s8(v25, v25, 8uLL));
        v26 = vmulq_f32(v23, v87);
        *v26.i8 = vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
        *v25.f32 = vadd_f32(vzip1_s32(*v25.f32, *v26.i8), vzip2_s32(*v25.f32, *v26.i8));
        v72 = vsubq_f32(v25, v93);
        v75 = vmulq_f32(v85, vmulq_f32(v72, v72));
        v27 = sqrtf(vaddv_f32(*v75.i8));
        v28 = powf(v27, v14);
        var3 = v91;
        *v29.i32 = v28 / v27;
        *v30.f32 = vmul_f32(*v72.f32, *&vdupq_lane_s32(v29, 0));
        v15 = v78;
        v30.i64[1] = 0x3F80000000000000;
        v31 = vaddq_f32(v93, v30);
        v32 = vmulq_f32(v83, v31);
        v33 = vmulq_f32(v81, v31);
        v10 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
        *v33.f32 = vadd_f32(*v33.f32, *&vextq_s8(v33, v33, 8uLL));
        *v33.f32 = vadd_f32(vzip1_s32(v10, *v33.f32), vzip2_s32(v10, *v33.f32));
        a7 = v95;
        v33.i64[1] = vextq_s8(v75, v75, 8uLL).u64[0];
        *v10.i32 = var2;
        v12 = vminnmq_f32(v33, v98);
        v15.f32[0] = v78.f32[0] + 1.0;
        v13 = vmaxnmq_f32(v33, v102);
      }

      while ((v78.f32[0] + 1.0) <= var2);
    }

    else
    {
      v12 = xmmword_260343A80;
      v13 = xmmword_260343A90;
    }

    if (a7.n128_f32[0] <= var3)
    {
      v88 = this[30];
      v90 = this[29];
      v94 = this[33];
      v34 = this[31].f32[0];
      v84 = this[27];
      v86 = this[32];
      v82 = this[28];
      do
      {
        v99 = v12;
        v103 = v13;
        v96 = a7;
        v35.i64[0] = __PAIR64__(a7.n128_u32[0], LODWORD(var0));
        v10.i32[1] = a7.n128_u32[0];
        v79 = v10;
        v35.i64[1] = 0x3F80000000000000;
        v36 = vmulq_f32(v35, v90);
        *v36.i8 = vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
        v37 = vmulq_f32(v35, v88);
        *v37.f32 = vadd_f32(*v37.f32, *&vextq_s8(v37, v37, 8uLL));
        *v37.f32 = vadd_f32(vzip1_s32(*v36.i8, *v37.f32), vzip2_s32(*v36.i8, *v37.f32));
        v73 = vsubq_f32(v37, v94);
        v76 = vmulq_f32(v86, vmulq_f32(v73, v73));
        v38 = sqrtf(vaddv_f32(*v76.i8));
        *v39.i32 = powf(v38, v34) / v38;
        *v40.f32 = vmul_f32(*v73.f32, *&vdupq_lane_s32(v39, 0));
        v40.i64[1] = 0x3F80000000000000;
        v41 = vaddq_f32(v94, v40);
        v42 = vmulq_f32(v84, v41);
        *v42.f32 = vadd_f32(*v42.f32, *&vextq_s8(v42, v42, 8uLL));
        v43 = vmulq_f32(v82, v41);
        *v43.f32 = vadd_f32(*v43.f32, *&vextq_s8(v43, v43, 8uLL));
        *v43.f32 = vadd_f32(vzip1_s32(*v42.f32, *v43.f32), vzip2_s32(*v42.f32, *v43.f32));
        v43.i64[1] = vextq_s8(v76, v76, 8uLL).u64[0];
        v100 = vminnmq_f32(v43, v99);
        v104 = vmaxnmq_f32(v43, v103);
        *v42.f32 = v79;
        v42.i64[1] = 0x3F80000000000000;
        v44 = vmulq_f32(v42, v90);
        *v44.f32 = vadd_f32(*v44.f32, *&vextq_s8(v44, v44, 8uLL));
        v45 = vmulq_f32(v42, v88);
        *v45.i8 = vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
        *v44.f32 = vadd_f32(vzip1_s32(*v44.f32, *v45.i8), vzip2_s32(*v44.f32, *v45.i8));
        v77 = vsubq_f32(v44, v94);
        v80 = vmulq_f32(v86, vmulq_f32(v77, v77));
        v46 = sqrtf(vaddv_f32(*v80.i8));
        *v47.i32 = powf(v46, v34) / v46;
        *v48.f32 = vmul_f32(*v77.f32, *&vdupq_lane_s32(v47, 0));
        v48.i64[1] = 0x3F80000000000000;
        v49 = vaddq_f32(v94, v48);
        v50 = vmulq_f32(v84, v49);
        v51 = vmulq_f32(v82, v49);
        v10 = vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
        *v51.f32 = vadd_f32(*v51.f32, *&vextq_s8(v51, v51, 8uLL));
        *v51.f32 = vadd_f32(vzip1_s32(v10, *v51.f32), vzip2_s32(v10, *v51.f32));
        a7 = v96;
        v51.i64[1] = vextq_s8(v80, v80, 8uLL).u64[0];
        v12 = vminnmq_f32(v51, v100);
        a7.n128_f32[0] = v96.n128_f32[0] + 1.0;
        *v10.i32 = var2;
        v13 = vmaxnmq_f32(v51, v104);
      }

      while ((v96.n128_f32[0] + 1.0) <= v91);
    }

    v52 = vcvtq_s32_f32(vzip1q_s32(v12, v13));
    v53.i64[0] = 0x100000001;
    v53.i64[1] = 0x100000001;
    v54.i64[0] = 0x300000003;
    v54.i64[1] = 0x300000003;
    if (vmaxv_u16(vmovn_s32(vcgtq_u32(v54, vaddq_s32(v52, vnegq_f32(v53))))))
    {
      LODWORD(v7) = 0;
      LODWORD(v8) = 0;
    }

    else
    {
      v55 = v52.u32[1] | (v52.u32[3] << 32);
      LODWORD(v56) = v52.i32[0];
      v57 = v52.u32[2];
      if (v52.i32[1] == v52.i32[0])
      {
        v58 = v52.u32[0] | (v52.u32[2] << 32);
        v59 = HGRectMake4f(v52.u32[2], 0.0, 0.0, 1.0, 0.0);
        v56 = HGRectGrow(v58, v55, v59);
        v55 = v60;
        v57 = HIDWORD(v56);
      }

      if (v57 == HIDWORD(v55))
      {
        v61 = v56 | (v57 << 32);
        v62 = HGRectMake4f(v57, 0.0, 0.0, 0.0, 1.0);
        v56 = HGRectGrow(v61, v55, v62);
        v55 = v63;
        v57 = HIDWORD(v56);
      }

      v7 = HGRectIntersection(v56 | (v57 << 32), v55, this[26].i64[0], this[26].i64[1]);
      v65 = v64;
      v8 = HIDWORD(v7);
      if ((HIDWORD(v64) - HIDWORD(v7)) * (v64 - v7))
      {
        v66 = HGRectMake4f(v8, -2.0, -2.0, 2.0, 2.0);
        v67 = HGRectGrow(v7, v65, v66);
        LODWORD(v7) = v67;
        v8 = HIDWORD(v67);
      }
    }
  }

  return v7 | (v8 << 32);
}

uint64_t HFisheye::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = &HGRectNull;
  }

  else
  {
    *(a1 + 416) = a4;
    *(a1 + 424) = a5;
    v5 = &HGRectInfinite;
  }

  return *v5;
}

uint64_t HFisheye::RenderTile(float32x4_t *this, HGTile *a2)
{
  v59 = *(a2 + 13);
  if (HGRect::IsNull(&v59))
  {
    v5 = *(a2 + 3);
    v6 = *(a2 + 1);
    if (v5 != v6)
    {
      v7 = *(a2 + 6);
      v8 = *(a2 + 2);
      v9 = 16 * (*(a2 + 2) - *a2);
      v10 = 16 * v7;
      v11 = v6 - v5;
      do
      {
        bzero(v8, v9);
        v8 += v10;
      }

      while (!__CFADD__(v11++, 1));
    }
  }

  else
  {
    v13 = HGTile::Renderer(a2);
    v14 = (*(this->i64[0] + 312))(this, v13);
    v15 = *a2;
    v16 = *(a2 + 3) - HIDWORD(*a2);
    if (v16 >= 1)
    {
      v17 = v14;
      v18 = 0;
      *v19.f32 = vadd_f32(vcvt_f32_s32(v15), 0x3F0000003F000000);
      v19.i64[1] = 0x3F80000000000000;
      v20 = *(a2 + 2) - v15.i32[0];
      v21 = *(a2 + 2);
      v22 = 16 * *(a2 + 6);
      v23.i64[1] = 0x3F80000000000000;
      v2.i32[0] = v14;
      v23.i64[0] = v14 | 0x3F80000000000000;
      v54 = v23;
      v52 = v19;
      v53 = v19;
      do
      {
        if (v20 >= 1)
        {
          v24 = 0;
          v25 = v52;
          do
          {
            v23.i32[0] = 0;
            v26 = vdup_lane_s32(vceq_s32(v2, *v23.f32), 0);
            v58 = v25;
            v27.i64[0] = v25.i64[0];
            v27.i64[1] = 0x3F80000000000000;
            v28 = vmulq_f32(v27, this[29]);
            *v28.i8 = vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
            v29 = vmulq_f32(v27, this[30]);
            *v29.f32 = vadd_f32(*v29.f32, *&vextq_s8(v29, v29, 8uLL));
            *v29.f32 = vadd_f32(vzip1_s32(*v28.i8, *v29.f32), vzip2_s32(*v28.i8, *v29.f32));
            v56 = vsubq_f32(v29, this[33]);
            v57 = this[33];
            v55 = vmulq_f32(this[32], vmulq_f32(v56, v56));
            v30 = sqrtf(vaddv_f32(*v55.i8));
            v31 = powf(v30, this[31].f32[0]);
            v32.i32[0] = 0;
            *v33.i32 = v31 / v30;
            *v34.f32 = vmul_f32(*v56.f32, *&vdupq_lane_s32(v33, 0));
            v34.i64[1] = 0x3F80000000000000;
            v35 = vaddq_f32(v57, v34);
            v36 = vmulq_f32(this[27], v35);
            *v36.i8 = vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
            v37 = vmulq_f32(this[28], v35);
            *v37.f32 = vadd_f32(*v37.f32, *&vextq_s8(v37, v37, 8uLL));
            *v37.f32 = vadd_f32(vzip1_s32(*v36.i8, *v37.f32), vzip2_s32(*v36.i8, *v37.f32));
            *v36.i8 = vadd_f32(*v37.f32, 0xBF000000BF000000);
            *v36.i8 = vbsl_s8(v26, vadd_f32(*v36.i8, 0x3F0000003F000000), *v36.i8);
            v38 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v54, v32), 0), *(a2 + 13), vaddq_s32(*(a2 + 13), xmmword_260343AA0));
            *v36.i8 = vadd_s32(vcltz_f32(*v36.i8), vcvt_s32_f32(*v36.i8));
            *v39.i8 = vcgt_s32(*v38.i8, *v36.i8);
            v39.u64[1] = vcge_s32(*v36.i8, *&vextq_s8(v38, v38, 8uLL));
            if ((vmaxvq_u32(v39) & 0x80000000) != 0)
            {
              v23 = 0uLL;
            }

            else
            {
              v37.i64[1] = vextq_s8(v55, v55, 8uLL).u64[0];
              v40 = *(a2 + 22);
              v41 = vsubq_f32(v37, v53);
              v42 = *(a2 + 10);
              if (v17)
              {
                v43 = vaddq_s32(vcvtq_s32_f32(v41), vcltzq_f32(v41));
                v44 = vsubq_f32(v41, vcvtq_f32_s32(v43)).u64[0];
                v45 = (v42 + 16 * (v43.i32[0] + v43.i32[1] * v40));
                v46 = vaddq_f32(*v45, vmulq_n_f32(vsubq_f32(v45[1], *v45), v44.f32[0]));
                v23 = vaddq_f32(v46, vmulq_lane_f32(vsubq_f32(vaddq_f32(v45[v40], vmulq_n_f32(vsubq_f32(v45[v40 + 1], v45[v40]), v44.f32[0])), v46), v44, 1));
              }

              else
              {
                v47.i64[0] = 0x3F0000003F000000;
                v47.i64[1] = 0x3F0000003F000000;
                v48 = vaddq_f32(v41, v47);
                v49 = vcvtq_s32_f32(v48);
                v48.i64[0] = vaddq_s32(v49, vcgtq_f32(vcvtq_f32_s32(v49), v48)).u64[0];
                v23 = *(v42 + 16 * (v48.i32[0] + v48.i32[1] * v40));
              }
            }

            *(v21 + v24) = v23;
            v25 = v58;
            v25.f32[0] = v58.f32[0] + 1.0;
            v24 += 16;
          }

          while (16 * v20 != v24);
        }

        v50 = v52;
        v50.f32[1] = v52.f32[1] + 1.0;
        v52 = v50;
        ++v18;
        v21 += v22;
      }

      while (v18 != v16);
    }
  }

  return 0;
}

uint64_t HFisheye::SetParameter(HgcFisheye *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 <= 6)
  {
    *&v7 = __PAIR64__(LODWORD(a4), a3.n128_u32[0]);
    *(&v7 + 1) = __PAIR64__(LODWORD(a6), LODWORD(a5));
    *(this + (16 * a2) + 432) = v7;
  }

  return HgcFisheye::SetParameter(this, a2, a3, a4, a5, a6, a7);
}

void HFisheye::~HFisheye(HGNode *this)
{
  HgcFisheye::~HgcFisheye(this);

  HGObject::operator delete(v1);
}

void sub_25F9E1640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v11 + 24))(v11);
  (*(*v10 + 24))(v10);
  (*(*v9 + 24))(v9);
  _Unwind_Resume(a1);
}

uint64_t HFunHouse::GetDOD(HFunHouse *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v4 = HGRectMake4i(vcvtms_s32_f32(*(this + 104)), vcvtms_s32_f32(*(this + 105)), vcvtps_s32_f32(*(this + 106)), vcvtps_s32_f32(*(this + 107)));
  v8 = v7;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v9 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v4, v8, v9);
  }

  return v4;
}

int32x2_t HFunHouse::GetROI(HFunHouse *this, HGRenderer *a2, int a3, HGRect a4)
{
  v88 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return 0x8000000080000000;
  }

  else
  {
    var2 = a4.var2;
    var0 = a4.var0;
    var1 = a4.var1;
    var3 = a4.var3;
    (*(*this + 104))(this, 5, &v85);
    v10 = v85;
    (*(*this + 104))(this, 0, &v85);
    v81 = v85;
    (*(*this + 104))(this, 1, &v85);
    v11 = v85;
    v13 = v86;
    v12 = v87;
    (*(*this + 104))(this, 2, &v85);
    v82 = v85.i32[1];
    v83 = v85.i32[0];
    v80 = v86;
    v84 = v87;
    (*(*this + 104))(this, 3, &v85);
    v14 = v85.f32[0];
    (*(*this + 104))(this, 4, &v85);
    v15 = vmul_f32(v10, 0x3F0000003F000000);
    v16 = var2;
    v17 = vneg_f32(v15);
    v79 = v14;
    if (var0 <= var2)
    {
      v19 = v81;
      v23 = (var1 - v81.f32[1]) / v85.f32[1];
      v24 = v11.f32[1] * v23;
      v25 = v12 * v23;
      v26 = v14 + -1.0;
      v22 = var3;
      v27 = (var3 - v81.f32[1]) / v85.f32[1];
      v28 = v11.f32[1] * v27;
      v29 = v12 * v27;
      v18 = v80;
      v20 = 0x80000000800000;
      v21 = vneg_f32(0x80000000800000);
      v30 = var0;
      do
      {
        v31 = (v30 - v81.f32[0]) / v85.f32[0];
        v32 = v24 + (v11.f32[0] * v31);
        v33 = 1.0 - fabsf(v32);
        v34 = 0.0;
        v35 = 0.0;
        if (v33 >= 0.0)
        {
          v35 = v33;
          if (v33 > 1.0)
          {
            v35 = 1.0;
          }
        }

        v36 = v28 + (v11.f32[0] * v31);
        v37 = 1.0 - fabsf(v36);
        if (v37 >= 0.0)
        {
          v34 = v37;
          if (v37 > 1.0)
          {
            v34 = 1.0;
          }
        }

        v38 = v13 * v31;
        v39 = (3.0 - (v35 + v35)) * (v35 * v35);
        v40 = v26 * v39 + 1.0;
        v41 = vadd_f32(v81, vmul_f32(v85, vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v84), v82), v25 + v38), vmul_n_f32(__PAIR64__(LODWORD(v80), v83), v32 * v40))));
        v42 = vbsl_s8(vcgt_f32(v41, v17), v41, v17);
        v43 = vbsl_s8(vcgt_f32(v15, v42), v42, v15);
        v44 = vbsl_s8(vcgt_f32(v43, v21), v21, v43);
        v45 = vbsl_s8(vcgt_f32(v20, v43), v20, v43);
        v46 = (3.0 - (v34 + v34)) * (v34 * v34);
        v47 = v26 * v46 + 1.0;
        v48 = vadd_f32(v81, vmul_f32(v85, vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v84), v82), v29 + v38), vmul_n_f32(__PAIR64__(LODWORD(v80), v83), v36 * v47))));
        v49 = vbsl_s8(vcgt_f32(v48, v17), v48, v17);
        v50 = vbsl_s8(vcgt_f32(v15, v49), v49, v15);
        v21 = vbsl_s8(vcgt_f32(v50, v44), v44, v50);
        v20 = vbsl_s8(vcgt_f32(v45, v50), v45, v50);
        v30 = v30 + 1.0;
      }

      while (v30 <= v16);
    }

    else
    {
      v18 = v80;
      v19 = v81;
      v20 = 0x80000000800000;
      v21 = vneg_f32(0x80000000800000);
      v22 = var3;
    }

    v51 = (var1 + 1);
    if (v22 > v51)
    {
      v52 = (var0 - v19.f32[0]) / v85.f32[0];
      v53 = v11.f32[0] * v52;
      v54 = v13 * v52;
      v55 = v79 + -1.0;
      v56 = (v16 - v19.f32[0]) / v85.f32[0];
      v57 = v11.f32[0] * v56;
      v58 = v13 * v56;
      do
      {
        v59 = (v51 - v19.f32[1]) / v85.f32[1];
        v60 = v53 + (v11.f32[1] * v59);
        v61 = 1.0 - fabsf(v60);
        v62 = 0.0;
        v63 = 0.0;
        if (v61 >= 0.0)
        {
          v63 = v61;
          if (v61 > 1.0)
          {
            v63 = 1.0;
          }
        }

        v64 = v57 + (v11.f32[1] * v59);
        v65 = 1.0 - fabsf(v64);
        if (v65 >= 0.0)
        {
          v62 = v65;
          if (v65 > 1.0)
          {
            v62 = 1.0;
          }
        }

        v66 = v12 * v59;
        v67 = (3.0 - (v63 + v63)) * (v63 * v63);
        v68 = v55 * v67 + 1.0;
        v69 = vadd_f32(v19, vmul_f32(v85, vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v84), v82), v54 + v66), vmul_n_f32(__PAIR64__(LODWORD(v18), v83), v60 * v68))));
        v70 = vbsl_s8(vcgt_f32(v69, v17), v69, v17);
        v71 = vbsl_s8(vcgt_f32(v15, v70), v70, v15);
        v72 = vbsl_s8(vcgt_f32(v71, v21), v21, v71);
        v73 = vbsl_s8(vcgt_f32(v20, v71), v20, v71);
        v74 = (3.0 - (v62 + v62)) * (v62 * v62);
        v75 = v55 * v74 + 1.0;
        v76 = vadd_f32(v19, vmul_f32(v85, vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v84), v82), v58 + v66), vmul_n_f32(__PAIR64__(LODWORD(v18), v83), v64 * v75))));
        v77 = vbsl_s8(vcgt_f32(v76, v17), v76, v17);
        v78 = vbsl_s8(vcgt_f32(v15, v77), v77, v15);
        v21 = vbsl_s8(vcgt_f32(v78, v72), v72, v78);
        v20 = vbsl_s8(vcgt_f32(v73, v78), v73, v78);
        v51 = v51 + 1.0;
      }

      while (v51 < v22);
    }

    return vadd_s32(vcvt_s32_f32(v21), 0x200000002);
  }
}

__n128 HFunHouse::SetRect(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[26] = *a2;
  return result;
}

void HFunHouse::~HFunHouse(HGNode *this)
{
  HgcFunHouse::~HgcFunHouse(this);

  HGObject::operator delete(v1);
}

void HGradientLinear::~HGradientLinear(HGNode *this)
{
  HgcGradientLinear::~HgcGradientLinear(this);

  HGObject::operator delete(v1);
}

uint64_t HGradientLinear::GetROI(HGradientLinear *this, HGRenderer *a2, int a3, HGRect a4)
{
  v7 = *MEMORY[0x277D85DE8];
  (*(*this + 104))(this, 2, v6, *&a4.var0, *&a4.var2);
  result = HGRectMake4i(0, 0, v6[0], 1u);
  if (a3)
  {
    return 0;
  }

  return result;
}

uint64_t HPageCurlBackground::GetDOD(float64_t *this, HGRenderer *a2, int a3, HGRect a4)
{
  v53 = a4;
  if (a3)
  {
    return 0;
  }

  Effect_toPCRecti(&v53, &v40);
  v6.i64[0] = SLODWORD(v40);
  v6.i64[1] = SHIDWORD(v40);
  v7 = vcvtq_f64_s64(v6);
  v6.i64[0] = SLODWORD(v41);
  v6.i64[1] = SHIDWORD(v41);
  v52[0] = v7;
  v52[1] = vcvtq_f64_s64(v6);
  v51 = 0x3FF0000000000000;
  v48 = 0x3FF0000000000000;
  v42 = 0;
  v43 = 0;
  v46 = 0u;
  v47 = 0u;
  v49 = 0u;
  v50 = 0u;
  v39 = 0x3FF0000000000000;
  v36 = 0x3FF0000000000000;
  v34 = 0u;
  v35 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7.f64[0] = this[86];
  v32 = this[87];
  v33 = v7.f64[0];
  v40 = v7.f64[0];
  v41 = v32;
  v29.f64[0] = v7.f64[0];
  v29.f64[1] = -v32;
  v44 = -v32;
  v45 = v7.f64[0];
  v7.f64[0] = -this[84];
  v8 = -this[85];
  v30 = 0;
  v31 = 0;
  PCMatrix44Tmpl<double>::rightTranslate(&v40, v7.f64[0], v8, 0.0);
  v9.f64[0] = this[84];
  PCMatrix44Tmpl<double>::leftTranslate(&v29, v9, this[85], 0.0);
  PCMatrix44Tmpl<double>::rightMult(&v40, this + 68);
  PCMatrix44Tmpl<double>::leftMult(&v29, this + 52);
  v27 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v19 = _Q0;
  v28 = _Q0;
  PCMatrix44Tmpl<double>::transformRect<double>(&v40, v52, &v27);
  if (v27.f64[0] >= 0.0)
  {
    return *&v53.var0;
  }

  v15 = this[88];
  v16 = -v15;
  if (v27.f64[0] + *&v28 < -v15)
  {
    return 0;
  }

  v25 = 0uLL;
  v26 = v19;
  v23 = 0uLL;
  v24 = v19;
  if (v27.f64[0] + *&v28 >= 0.0)
  {
    v25 = v27;
    v26 = v28;
    if (v27.f64[0] < 0.0)
    {
      *&v26 = *&v26 - (0.0 - v27.f64[0]);
      v25.f64[0] = 0.0;
    }
  }

  if (v27.f64[0] <= 0.0)
  {
    v23 = v27;
    v24 = v28;
    v17 = v27.f64[0];
    if (v27.f64[0] + *&v28 <= 0.0)
    {
      v18 = *&v28;
    }

    else
    {
      v18 = 0.0 - v27.f64[0];
    }

    if (v27.f64[0] >= v16)
    {
      v16 = v15 * sin(v27.f64[0] / v15);
    }

    *&v24 = v18 - (v16 - v17);
    v23.f64[0] = v16;
  }

  PCMatrix44Tmpl<double>::transformRect<double>(v29.f64, v25.f64, &v25);
  PCMatrix44Tmpl<double>::transformRect<double>(v29.f64, v23.f64, &v23);
  operator|<double>(&v25, &v23, &v20);
  return HGRectMake4i(v20.f64[0], v20.f64[1], v21 + v20.f64[0], v22 + v20.f64[1]);
}

float64x2_t *operator|<double>@<X0>(float64x2_t *result@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = result[1];
  if (v3.f64[0] < 0.0 || v3.f64[1] < 0.0)
  {
    v8 = *a2;
    v9 = a2[1];
  }

  else
  {
    v4 = a2[1];
    if (v4.f64[0] >= 0.0 && v4.f64[1] >= 0.0)
    {
      v5 = vbslq_s8(vcgtq_f64(*result, *a2), *a2, *result);
      v6 = vaddq_f64(*result, v3);
      v7 = vaddq_f64(*a2, v4);
      *a3 = v5;
      a3[1] = vsubq_f64(vbslq_s8(vcgtq_f64(v7, v6), v7, v6), v5);
      return result;
    }

    v8 = *result;
    v9 = result[1];
  }

  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t HPageCurlBackground::GetROI(float64_t *this, HGRenderer *a2, int a3, HGRect a4)
{
  v77 = a4;
  if (a3)
  {
    return 0;
  }

  Effect_toPCRecti(&v77, &v63);
  v6.i64[0] = SLODWORD(v63);
  v6.i64[1] = SHIDWORD(v63);
  v7 = vcvtq_f64_s64(v6);
  v6.i64[0] = SLODWORD(v64);
  v6.i64[1] = SHIDWORD(v64);
  v75 = v7;
  v76 = vcvtq_f64_s64(v6);
  v74 = 0x3FF0000000000000;
  v71 = 0x3FF0000000000000;
  v65 = 0;
  v66 = 0;
  v69 = 0u;
  v70 = 0u;
  v72 = 0u;
  v73 = 0u;
  v62 = 0x3FF0000000000000;
  v59 = 0x3FF0000000000000;
  v57 = 0u;
  v58 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7.f64[0] = this[86];
  v55 = this[87];
  v56 = v7.f64[0];
  v63 = v7.f64[0];
  v64 = v55;
  v52.f64[0] = v7.f64[0];
  v52.f64[1] = -v55;
  v67 = -v55;
  v68 = v7.f64[0];
  v7.f64[0] = -this[84];
  v8 = -this[85];
  v53 = 0;
  v54 = 0;
  PCMatrix44Tmpl<double>::rightTranslate(&v63, v7.f64[0], v8, 0.0);
  v9.f64[0] = this[84];
  PCMatrix44Tmpl<double>::leftTranslate(&v52, v9, this[85], 0.0);
  PCMatrix44Tmpl<double>::rightMult(&v63, this + 68);
  PCMatrix44Tmpl<double>::leftMult(&v52, this + 52);
  v50 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v42 = _Q0;
  v51 = _Q0;
  PCMatrix44Tmpl<double>::transformRect<double>(&v63, v75.f64, &v50);
  v15 = v50.f64[0];
  if (v50.f64[0] < 0.0)
  {
    v48 = 0uLL;
    v49 = v42;
    v46 = 0uLL;
    v47 = v42;
    v16 = v50.f64[0] + *&v51;
    if (v50.f64[0] + *&v51 >= 0.0)
    {
      v48 = v50;
      v49 = v51;
      if (v50.f64[0] < 0.0)
      {
        *&v49 = *&v49 - (0.0 - v50.f64[0]);
        v48.f64[0] = 0.0;
      }
    }

    if (v50.f64[0] > 0.0)
    {
      goto LABEL_34;
    }

    v46 = v50;
    v47 = v51;
    if (v50.f64[0] > v16)
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    if (v16 <= 0.0)
    {
      v17 = -v16;
    }

    else
    {
      v17 = -0.0;
    }

    if (this[88] == 0.0)
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    v23 = fegetround();
    fesetround(0x400000);
    v24 = this[88];
    if (v24 >= 0.0)
    {
      v27 = -v15;
      v43.f64[0] = v17 / -v24;
      v25 = -v43.f64[0];
      v26 = v27 / v24;
    }

    else
    {
      v43.f64[0] = v15 / v24;
      v25 = -(v15 / v24);
      v26 = v17 / v24;
    }

    v28 = v26;
    fesetround(v23);
    v29 = fegetround();
    fesetround(0x400000);
    v30 = v28 + -1.0;
    v43.f64[0] = 1.0 - v25;
    v31 = 1.0 - v25;
    fesetround(v29);
    if (v28 + -1.0 <= 0.0)
    {
      v32 = -v30;
    }

    else if (v31 <= 0.0)
    {
      v32 = -v31;
      v31 = v30;
    }

    else
    {
      if (v31 <= v30)
      {
        v31 = v28 + -1.0;
      }

      v32 = 0.0;
    }

    v33 = fegetround();
    fesetround(0x400000);
    v43.f64[0] = 1.0 - v32;
    fesetround(v33);
    v34 = asin(fmax(fmin(-(v31 + -1.0), 0.999), -0.999));
    v35 = asin(fmax(fmin(1.0 - v32, 0.999), -0.999));
    if (v34 > v35)
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    v36 = v35;
    v37 = fegetround();
    fesetround(0x400000);
    v38 = this[88];
    if (v38 >= 0.0)
    {
      v41 = 0.0;
      v39 = 0.0;
      if (v38 == 0.0)
      {
LABEL_33:
        fesetround(v37);
        v46.f64[0] = v39;
        *&v47 = v41 - v39;
LABEL_34:
        PCMatrix44Tmpl<double>::transformRect<double>(v52.f64, v48.f64, &v48);
        PCMatrix44Tmpl<double>::transformRect<double>(v52.f64, v46.f64, &v46);
        operator|<double>(&v48, &v46, &v43);
        v18 = v43.f64[0] + -2.0;
        v19 = v43.f64[1] + -2.0;
        v20 = 4.0;
        v21 = v44;
        v22 = v45;
        return HGRectMake4i(v18, v19, (v21 + v20) + v18, (v22 + v20) + v19);
      }

      v43.f64[0] = v36 * v38;
      v39 = -(v36 * v38);
      v40 = v38 * -v34;
    }

    else
    {
      v43.f64[0] = v34 * v38;
      v39 = -(v34 * v38);
      v40 = -(v36 * v38);
    }

    v43.f64[0] = v40;
    v41 = v40;
    goto LABEL_33;
  }

  v18 = v75.f64[0] + -1.0;
  v19 = v75.f64[1] + -1.0;
  v20 = 2.0;
  v22 = v76.f64[1];
  v21 = v76.f64[0];
  return HGRectMake4i(v18, v19, (v21 + v20) + v18, (v22 + v20) + v19);
}

uint64_t HPageCurlBackground::setPixelTransform(double *a1, double *a2)
{
  v3 = a1 + 52;
  if (a1 + 52 != a2)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v3[i] = v5[i];
      }

      ++v4;
      v3 += 4;
      v5 += 4;
    }

    while (v4 != 4);
  }

  PCMatrix44Tmpl<double>::planarInverseZ((a1 + 68), a2, 0.0);
  v7 = a1[67];
  v8 = a1[83];
  v9 = v7;
  v10 = a1[52] / v7;
  v11 = a1[57] / v9;
  v12 = a1[55] / v9;
  *&v9 = a1[59] / v9;
  (*(*a1 + 96))(a1, 0, v10, v11, v12, *&v9);
  v13.n128_f64[0] = a1[68] / v8;
  v13.n128_f32[0] = v13.n128_f64[0];
  v14.n128_f64[0] = a1[73] / v8;
  v14.n128_f32[0] = v14.n128_f64[0];
  v15.n128_f64[0] = a1[71] / v8;
  v15.n128_f32[0] = v15.n128_f64[0];
  v16.n128_f64[0] = a1[75] / v8;
  v16.n128_f32[0] = v16.n128_f64[0];
  v17 = *(*a1 + 96);

  return v17(a1, 1, v13, v14, v15, v16);
}

uint64_t HPageCurlBackground::setAxisPoint(_OWORD *a1, uint64_t a2)
{
  a1[42] = *a2;
  v2 = *a2;
  v3 = *(a2 + 8);
  return (*(*a1 + 96))(a1, 2, v2, v3, 0.0, 0.0);
}

uint64_t HPageCurlBackground::setAxisDir(double *a1, double *a2)
{
  v2 = a2[1];
  v3 = sqrt(*a2 * *a2 + v2 * v2);
  v4 = *a2 / v3;
  v5 = v2 / v3;
  a1[86] = v4;
  a1[87] = v5;
  *&v4 = v4;
  *&v5 = v5;
  return (*(*a1 + 96))(a1, 3, *&v4, *&v5, 0.0, 0.0);
}

uint64_t HPageCurlBackground::setHighlight(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  return (*(*a1 + 96))(a1, 5, v2, v3, v4, 0.0);
}

uint64_t HPageCurlBackground::setBackColor(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return (*(*a1 + 96))(a1, 6, v2, v3, v4, v5);
}

uint64_t HPageCurlBackground::setRadius(HPageCurlBackground *this, double a2)
{
  *(this + 88) = a2;
  v2 = a2;
  return (*(*this + 96))(this, 4, v2, 0.0, 0.0, 0.0);
}

uint64_t HPageCurlForeground::GetDOD(float64_t *this, HGRenderer *a2, int a3, HGRect a4)
{
  v52 = a4;
  if (a3)
  {
    return 0;
  }

  Effect_toPCRecti(&v52, &v40);
  v6.i64[0] = v40;
  v6.i64[1] = SDWORD1(v40);
  v7 = vcvtq_f64_s64(v6);
  v6.i64[0] = SDWORD2(v40);
  v6.i64[1] = SHIDWORD(v40);
  v51[0] = v7;
  v51[1] = vcvtq_f64_s64(v6);
  v50 = 0x3FF0000000000000;
  v47 = 0x3FF0000000000000;
  v41 = 0;
  v42 = 0;
  v45 = 0u;
  v46 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = 0x3FF0000000000000;
  v36 = 0x3FF0000000000000;
  v34 = 0u;
  v35 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7.f64[0] = this[86];
  v32 = this[87];
  v33 = v7.f64[0];
  *&v40 = v7.f64[0];
  *(&v40 + 1) = v32;
  v29.f64[0] = v7.f64[0];
  v29.f64[1] = -v32;
  v43 = -v32;
  v44 = v7.f64[0];
  v7.f64[0] = -this[84];
  v8 = -this[85];
  v30 = 0;
  v31 = 0;
  PCMatrix44Tmpl<double>::rightTranslate(&v40, v7.f64[0], v8, 0.0);
  v9.f64[0] = this[84];
  PCMatrix44Tmpl<double>::leftTranslate(&v29, v9, this[85], 0.0);
  PCMatrix44Tmpl<double>::rightMult(&v40, this + 68);
  PCMatrix44Tmpl<double>::leftMult(&v29, this + 52);
  v24[0] = 0.0;
  v23 = 0x3FF0000000000000uLL;
  v27.f64[0] = this[88] * -3.14159265 * 0.5;
  v27.f64[1] = 0.0;
  *&v28 = 0;
  PCMatrix44Tmpl<double>::leftReflect(&v40, v23.f64, v27.f64);
  v27 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v19 = _Q0;
  v28 = _Q0;
  PCMatrix44Tmpl<double>::transformRect<double>(&v40, v51, &v27);
  if (v27.f64[0] >= 0.0)
  {
    v25 = 0uLL;
    v26 = v19;
    PCMatrix44Tmpl<double>::operator*(&v29, &v40, &v23);
    PCMatrix44Tmpl<double>::transformRect<double>(v23.f64, v51, &v25);
    return HGRectMake4i(v25.f64[0], v25.f64[1], *&v26 + v25.f64[0], *(&v26 + 1) + v25.f64[1]);
  }

  else
  {
    v15 = this[88];
    if (v27.f64[0] + *&v28 < v15 * -3.14159265 * 0.5)
    {
      return 0;
    }

    v23 = 0uLL;
    *v24 = v19;
    v25 = 0uLL;
    v26 = v19;
    if (v27.f64[0] + *&v28 >= 0.0)
    {
      v23 = v27;
      *v24 = v28;
      if (v27.f64[0] < 0.0)
      {
        v24[0] = v24[0] - (0.0 - v27.f64[0]);
        v23.f64[0] = 0.0;
      }
    }

    if (v27.f64[0] <= 0.0)
    {
      v25 = v27;
      v26 = v28;
      v16 = v27.f64[0];
      if (v27.f64[0] + *&v28 <= 0.0)
      {
        v17 = *&v28;
      }

      else
      {
        v17 = 0.0 - v27.f64[0];
      }

      v18 = -v15;
      if (v27.f64[0] >= -v15)
      {
        v18 = v15 * sin(v27.f64[0] / v15);
      }

      *&v26 = v17 - (v18 - v16);
      v25.f64[0] = v18;
    }

    PCMatrix44Tmpl<double>::transformRect<double>(v29.f64, v23.f64, &v23);
    PCMatrix44Tmpl<double>::transformRect<double>(v29.f64, v25.f64, &v25);
    operator|<double>(&v23, &v25, &v20);
    return HGRectMake4i((v20.f64[0] + -2.0), (v20.f64[1] + -2.0), (v21 + 4.0) + (v20.f64[0] + -2.0), (v22 + 4.0) + (v20.f64[1] + -2.0));
  }
}

double PCMatrix44Tmpl<double>::leftReflect(uint64_t a1, double *a2, double *a3)
{
  v14 = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v8 = 0x3FF0000000000000;
  v5 = 0x3FF0000000000000;
  v6 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v13 = 0u;
  PCMatrix44Tmpl<double>::setReflect(&v5, a2, a3);
  return PCMatrix44Tmpl<double>::leftMult(a1, &v5);
}

uint64_t HPageCurlForeground::GetROI(float64_t *this, HGRenderer *a2, int a3, HGRect a4)
{
  v71 = a4;
  if (a3)
  {
    return 0;
  }

  Effect_toPCRecti(&v71, &v59);
  v6.i64[0] = v59;
  v6.i64[1] = SDWORD1(v59);
  v7 = vcvtq_f64_s64(v6);
  v6.i64[0] = SDWORD2(v59);
  v6.i64[1] = SHIDWORD(v59);
  v70[0] = v7;
  v70[1] = vcvtq_f64_s64(v6);
  v69 = 0x3FF0000000000000;
  v66 = 0x3FF0000000000000;
  v60 = 0;
  v61 = 0;
  v64 = 0u;
  v65 = 0u;
  v67 = 0u;
  v68 = 0u;
  v58 = 0x3FF0000000000000;
  v55 = 0x3FF0000000000000;
  v53 = 0u;
  v54 = 0u;
  v56 = 0u;
  v57 = 0u;
  v7.f64[0] = this[86];
  v51 = this[87];
  v52 = v7.f64[0];
  *&v59 = v7.f64[0];
  *(&v59 + 1) = v51;
  v48.f64[0] = v7.f64[0];
  v48.f64[1] = -v51;
  v62 = -v51;
  v63 = v7.f64[0];
  v7.f64[0] = -this[84];
  v8 = -this[85];
  v49 = 0;
  v50 = 0;
  PCMatrix44Tmpl<double>::rightTranslate(&v59, v7.f64[0], v8, 0.0);
  v9.f64[0] = this[84];
  PCMatrix44Tmpl<double>::leftTranslate(&v48, v9, this[85], 0.0);
  PCMatrix44Tmpl<double>::rightMult(&v59, this + 68);
  PCMatrix44Tmpl<double>::leftMult(&v48, this + 52);
  v43[0] = 0.0;
  v42 = 0x3FF0000000000000uLL;
  v46.f64[0] = this[88] * -3.14159265 * 0.5;
  v46.f64[1] = 0.0;
  *&v47 = 0;
  PCMatrix44Tmpl<double>::rightReflect(&v48, v42.f64, v46.f64);
  v46 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v38 = _Q0;
  v47 = _Q0;
  PCMatrix44Tmpl<double>::transformRect<double>(&v59, v70, &v46);
  v15 = v46.f64[0];
  if (v46.f64[0] >= 0.0)
  {
    v44 = 0uLL;
    v45 = v38;
    PCMatrix44Tmpl<double>::operator*(&v48, &v59, &v42);
    PCMatrix44Tmpl<double>::transformRect<double>(v42.f64, v70, &v44);
    return HGRectMake4i((v44.f64[0] + -2.0), (v44.f64[1] + -2.0), (*&v45 + 4.0) + (v44.f64[0] + -2.0), (*(&v45 + 1) + 4.0) + (v44.f64[1] + -2.0));
  }

  v42 = 0uLL;
  *v43 = v38;
  v44 = 0uLL;
  v45 = v38;
  v16 = v46.f64[0] + *&v47;
  if (v46.f64[0] + *&v47 >= 0.0)
  {
    v42 = v46;
    *v43 = v47;
    if (v46.f64[0] < 0.0)
    {
      v43[0] = v43[0] - (0.0 - v46.f64[0]);
      v42.f64[0] = 0.0;
    }
  }

  if (v46.f64[0] <= 0.0)
  {
    v44 = v46;
    v45 = v47;
    if (v46.f64[0] > v16)
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    if (v16 <= 0.0)
    {
      v17 = -v16;
    }

    else
    {
      v17 = -0.0;
    }

    if (this[88] == 0.0)
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    v18 = fegetround();
    fesetround(0x400000);
    v19 = this[88];
    if (v19 >= 0.0)
    {
      v22 = -v15;
      v39.f64[0] = v17 / -v19;
      v20 = -v39.f64[0];
      v21 = v22 / v19;
    }

    else
    {
      v39.f64[0] = v15 / v19;
      v20 = -(v15 / v19);
      v21 = v17 / v19;
    }

    v23 = v21;
    fesetround(v18);
    v24 = fegetround();
    fesetround(0x400000);
    v25 = v23 + -1.0;
    v39.f64[0] = 1.0 - v20;
    v26 = 1.0 - v20;
    fesetround(v24);
    if (v23 + -1.0 <= 0.0)
    {
      v27 = -v25;
    }

    else if (v26 <= 0.0)
    {
      v27 = -v26;
      v26 = v25;
    }

    else
    {
      if (v26 <= v25)
      {
        v26 = v23 + -1.0;
      }

      v27 = 0.0;
    }

    v28 = fegetround();
    fesetround(0x400000);
    v39.f64[0] = 1.0 - v27;
    fesetround(v28);
    v29 = asin(fmax(fmin(-(v26 + -1.0), 0.999), 0.0));
    v30 = asin(fmax(fmin(1.0 - v27, 0.999), 0.0));
    if (v29 > v30)
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    v31 = v30;
    v32 = fegetround();
    fesetround(0x400000);
    v33 = this[88];
    if (v33 >= 0.0)
    {
      v36 = 0.0;
      v37 = 0.0;
      if (v33 == 0.0)
      {
LABEL_33:
        fesetround(v32);
        v44.f64[0] = v37;
        *&v45 = v36 - v37;
        goto LABEL_34;
      }

      v34 = -v29;
      v35 = v31 * v33;
    }

    else
    {
      v34 = -v31;
      v35 = v29 * v33;
    }

    v37 = -v35;
    v39.f64[0] = v33 * v34;
    v36 = v33 * v34;
    goto LABEL_33;
  }

LABEL_34:
  PCMatrix44Tmpl<double>::transformRect<double>(v48.f64, v42.f64, &v42);
  PCMatrix44Tmpl<double>::transformRect<double>(v48.f64, v44.f64, &v44);
  operator|<double>(&v42, &v44, &v39);
  return HGRectMake4i((v39.f64[0] + -2.0), (v39.f64[1] + -2.0), (v40 + 4.0) + (v39.f64[0] + -2.0), (v41 + 4.0) + (v39.f64[1] + -2.0));
}

double PCMatrix44Tmpl<double>::rightReflect(uint64_t a1, double *a2, double *a3)
{
  v14 = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v8 = 0x3FF0000000000000;
  v5 = 0x3FF0000000000000;
  v6 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v13 = 0u;
  PCMatrix44Tmpl<double>::setReflect(&v5, a2, a3);
  return PCMatrix44Tmpl<double>::rightMult(a1, &v5);
}

uint64_t HPageCurlForeground::setPixelTransform(double *a1, double *a2)
{
  v3 = a1 + 52;
  if (a1 + 52 != a2)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v3[i] = v5[i];
      }

      ++v4;
      v3 += 4;
      v5 += 4;
    }

    while (v4 != 4);
  }

  PCMatrix44Tmpl<double>::planarInverseZ((a1 + 68), a2, 0.0);
  v7 = a1[67];
  v8 = a1[83];
  v9 = v7;
  v10 = a1[52] / v7;
  v11 = a1[57] / v9;
  v12 = a1[55] / v9;
  *&v9 = a1[59] / v9;
  (*(*a1 + 96))(a1, 0, v10, v11, v12, *&v9);
  v13.n128_f64[0] = a1[68] / v8;
  v13.n128_f32[0] = v13.n128_f64[0];
  v14.n128_f64[0] = a1[73] / v8;
  v14.n128_f32[0] = v14.n128_f64[0];
  v15.n128_f64[0] = a1[71] / v8;
  v15.n128_f32[0] = v15.n128_f64[0];
  v16.n128_f64[0] = a1[75] / v8;
  v16.n128_f32[0] = v16.n128_f64[0];
  v17 = *(*a1 + 96);

  return v17(a1, 1, v13, v14, v15, v16);
}

uint64_t HPageCurlForeground::setAxisPoint(_OWORD *a1, uint64_t a2)
{
  a1[42] = *a2;
  v2 = *a2;
  v3 = *(a2 + 8);
  return (*(*a1 + 96))(a1, 2, v2, v3, 0.0, 0.0);
}

uint64_t HPageCurlForeground::setAxisDir(double *a1, double *a2)
{
  v2 = a2[1];
  v3 = sqrt(*a2 * *a2 + v2 * v2);
  v4 = *a2 / v3;
  v5 = v2 / v3;
  a1[86] = v4;
  a1[87] = v5;
  *&v4 = v4;
  *&v5 = v5;
  return (*(*a1 + 96))(a1, 3, *&v4, *&v5, 0.0, 0.0);
}

uint64_t HPageCurlForeground::setHighlight(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  return (*(*a1 + 96))(a1, 5, v2, v3, v4, 0.0);
}

uint64_t HPageCurlForeground::setBackColor(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return (*(*a1 + 96))(a1, 6, v2, v3, v4, v5);
}

uint64_t HPageCurlForeground::setRadius(HPageCurlForeground *this, double a2)
{
  *(this + 88) = a2;
  v2 = a2;
  return (*(*this + 96))(this, 4, v2, 0.0, 0.0, 0.0);
}

void HPageCurlBackground::~HPageCurlBackground(HGNode *this)
{
  HgcPageCurlBackground::~HgcPageCurlBackground(this);

  HGObject::operator delete(v1);
}

void HPageCurlForeground::~HPageCurlForeground(HGNode *this)
{
  HgcPageCurlForeground::~HgcPageCurlForeground(this);

  HGObject::operator delete(v1);
}

double PCMatrix44Tmpl<double>::setReflect(uint64_t a1, double *a2, double *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = sqrt(v4 * v4 + v3 * v3 + v5 * v5);
  if (fabs(v6) >= 0.000000100000001)
  {
    v4 = v4 / v6;
    v3 = v3 / v6;
    v5 = v5 / v6;
  }

  v7 = v4 * *a3 + v3 * a3[1] + v5 * a3[2];
  *a1 = v4 * (v4 * -2.0) + 1.0;
  *(a1 + 8) = v3 * (v4 * -2.0);
  *(a1 + 32) = v3 * -2.0 * v4;
  *(a1 + 40) = v3 * (v3 * -2.0) + 1.0;
  *(a1 + 64) = v5 * -2.0 * v4;
  *(a1 + 72) = v5 * -2.0 * v3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 16) = v5 * (v4 * -2.0);
  *(a1 + 24) = -(v7 * (v4 * -2.0));
  *(a1 + 48) = v5 * (v3 * -2.0);
  *(a1 + 56) = -(v7 * (v3 * -2.0));
  *(a1 + 80) = v5 * (v5 * -2.0) + 1.0;
  *(a1 + 88) = -(v7 * (v5 * -2.0));
  result = 0.0;
  *(a1 + 112) = xmmword_260342700;
  return result;
}

uint64_t HStyleTransfer_ANEImpl::HStyleTransfer_ANEImpl(uint64_t a1, void *a2, uint64_t *a3)
{
  HGNode::HGNode(a1);
  *v6 = &unk_2871D44A0;
  v6[51] = 0;
  v6[52] = 0;
  v7 = a2;

  *(a1 + 408) = a2;
  v8 = *(a1 + 416);
  v9 = *a3;
  if (v8 != *a3)
  {
    if (v8)
    {
      (*(*v8 + 24))(*(a1 + 416));
      v9 = *a3;
    }

    *(a1 + 416) = v9;
    if (v9)
    {
      (*(*v9 + 16))(v9);
    }
  }

  *(a1 + 16) = *(a1 + 16) & 0xFFFFF9FF | 0x400;
  (*(*a1 + 136))(a1, 0, 2);
  (*(*a1 + 136))(a1, 0xFFFFFFFFLL, 2);
  (*(*a1 + 136))(a1, 0, 0x2000);
  return a1;
}

void sub_25F9E3828(_Unwind_Exception *a1)
{
  v3 = *(v1 + 416);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HStyleTransfer_ANEImpl::~HStyleTransfer_ANEImpl(id *this)
{
  *this = &unk_2871D44A0;

  v2 = this[52];
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);
}

{
  HStyleTransfer_ANEImpl::~HStyleTransfer_ANEImpl(this);

  HGObject::operator delete(v1);
}

uint64_t HStyleTransfer_ANEImpl::ScaleInputTextureToOutputBuffer(int a1, uint64_t a2, uint64_t a3, HGGPURenderer *this, int a5, void *a6)
{
  v10 = *(a2 + 144);
  MetalContext = HGGPURenderer::GetMetalContext(this);
  v12 = *(a3 + 16);
  v13 = *(*(MetalContext + 24) + 168);
  {
    std::string::basic_string[abi:ne200100]<0>( &ShaderString(void)::sShaderString,  "          \n //Metal1.0                                  \n #include <metal_common>                     \n #include <metal_graphics>                   \n #include <metal_matrix>                     \n #include <metal_geometric>                  \n #include <metal_math>                       \n #include <metal_texture>                    \n \n using namespace metal;                      \n"
      "                                                \n"
      "    struct RasterData                           \n"
      "    {                                           \n"
      "        float4 position  [[ position ]];        \n"
      "        float2 texCoord0 [[ user(texcoord0) ]]; \n"
      "    };                                          \n"
      "                                                \n"
      "    typedef struct                              \n"
      "    {                                           \n"
      "        vector_float2 position;                 \n"
      "        vector_float2 texCoords;                \n"
      "    } HSFANEVertexPos2Tex2;                     \n"
      "                                                \n"
      "    typedef struct                              \n"
      "    {                                           \n"
      "        HSFANEVertexPos2Tex2 vertices[4];       \n"
      "    } HSFANEQuad;                               \n"
      "                                                \n"
      "    vertex RasterData vertexFunc(uint vertexId [[vertex_id]], \n"
      "                                 constant HSFANEQuad &quad [[buffer(0)]], \n"
      "                                 constant float4x4 &mvp [[buffer(1)]]) \n"
      "    {                                           \n"
      "        RasterData out;                         \n"
      "                                                \n"
      "        float2 modelPosition = quad.vertices[vertexId].position; \n"
      "        out.position = mvp * float4(modelPosition, 0, 1);  \n"
      "                                                \n"
      "        out.texCoord0 = quad.vertices[vertexId].texCoords; \n"
      "                                                \n"
      "        return out;                             \n"
      "    }                                           \n"
      "                                                \n"
      "    fragment half4 fragmentFunc(RasterData frag [[ stage_in ]], \n"
      "                                texture2d< half > texture0 [[ texture(0) ]]) \n"
      "    {                                                                       \n"
      "        constexpr sampler textureSampler (mag_filter::linear,               \n"
      "                                          min_filter::linear,               \n"
      "                                          address::mirrored_repeat);        \n"
      "                                                \n"
      "        half4 out;                             \n"
      "        out = texture0.sample(textureSampler, frag.texCoord0.xy);           \n"
      "                                                \n"
      "        // unpremul: This form is used to comply with HGC's DIVA optimization. \n"
      "        const half alphaThreshold = 1e-6;                 \n"
      "        out.rgb = out.rgb / max(out.a, alphaThreshold);   \n"
      "                                                \n"
      "        return out;                             \n"
      "    }                                           \n"
      "    \n");
    __cxa_atexit(MEMORY[0x277D82640], &ShaderString(void)::sShaderString, &dword_25F8F0000);
  }

  if (byte_27FE4A6AF < 0)
  {
    std::string::__init_copy_ctor_external(v35, ShaderString(void)::sShaderString, *(&ShaderString(void)::sShaderString + 1));
  }

  else
  {
    *v35 = ShaderString(void)::sShaderString;
    *&v36 = unk_27FE4A6A8;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "HStyleTransfer_ANE");
  v14 = std::__string_hash<char>::operator()[abi:ne200100](&v54, __p);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v54, "vertexFunc");
  FunctionWithSource = HGMetalFunctionCache::getFunctionWithSource(v13, &v54, v14, v35);
  std::string::basic_string[abi:ne200100]<0>(&v53, "fragmentFunc");
  v16 = HGMetalFunctionCache::getFunctionWithSource(v13, &v53, v14, v35);
  v17 = 0;
  v18 = *(*(MetalContext + 24) + 144);
  do
  {
    v19 = &__p[v17];
    *v19 = 0;
    v19[1] = 0;
    v19[2] = 1;
    *(v19 + 6) = 1;
    *(v19 + 28) = 0;
    v17 += 6;
    *(v19 + 33) = 0;
  }

  while (v17 != 48);
  v47 = 0;
  v51 = 0;
  v52 = 0;
  v49 = v16;
  v50 = 0;
  v48 = FunctionWithSource;
  v46 = 1;
  LODWORD(__p[0]) = v12;
  RenderPipelineState = HGMetalRenderPipelineStateCache::getRenderPipelineState(v18, __p);
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35[0]);
  }

  v21 = HGGPURenderer::ConvertToMetalTexture(this, a3);
  v22 = *(v21 + 18);
  v23 = objc_alloc_init(MEMORY[0x277CD6F38]);
  [v23 setTexture:v22];
  [v23 setLoadAction:0];
  v24 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  [objc_msgSend(v24 "colorAttachments")];
  v25 = [a6 renderCommandEncoderWithDescriptor:v24];
  [v25 setLabel:@"ScaleInputTextureToOutputBuffer"];
  [v25 setRenderPipelineState:RenderPipelineState];
  __asm { FMOV            V1.2S, #-1.0 }

  v32 = vadd_f32(vdiv_f32(vcvt_f32_u32(vsub_s32(*(a3 + 28), *(a3 + 20))), vcvt_f32_u32(vadd_s32(vsub_s32(vdup_n_s32(-2 * a5), *(a3 + 20)), *(a3 + 28)))), *&_D1);
  if (*v32.i32 <= *&v32.i32[1])
  {
    v32.i32[0] = v32.i32[1];
  }

  *v32.i32 = *v32.i32 * 0.5;
  __asm { FMOV            V2.2S, #1.0 }

  *v26.i32 = *v32.i32 + 1.0;
  *v32.i32 = 0.0 - *v32.i32;
  *__p = -_D2;
  __p[1] = vdup_lane_s32(v26, 0);
  v40 = _D1;
  v41 = __PAIR64__(v26.u32[0], v32.u32[0]);
  v26.i32[1] = v32.i32[0];
  v42 = _D2;
  v43 = v26;
  v44 = -_D1;
  v45 = vdup_lane_s32(v32, 0);
  [v25 setVertexBytes:__p length:64 atIndex:{0, v35[0], v35[1], v36}];
  *v35 = xmmword_2603429B0;
  v36 = xmmword_2603429C0;
  v37 = xmmword_260343B40;
  v38 = xmmword_260343B50;
  [v25 setVertexBytes:v35 length:64 atIndex:1];
  [v25 setFragmentTexture:v10 atIndex:0];
  [v25 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v25 endEncoding];

  return (*(*v21 + 24))(v21);
}

HGBitmap *HStyleTransfer_ANEImpl::_renderPage(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 408);
  if (v5)
  {
    v7 = *a2;
    v8 = *(a2 + 36);
    v9 = *(a2 + 44);
    v38 = *(a2 + 60);
    contexta = *(a2 + 52);
    v10 = [v5 widthBig];
    v11 = [*(a1 + 408) heightBig];
    v13 = HGRectMake4f(v12, 0.0, 0.0, v10, v11);
    v41 = v14;
    v42 = v13;
    v15 = [*(a1 + 408) widthSmall];
    v16 = [*(a1 + 408) heightSmall];
    v18 = HGRectMake4f(v17, 0.0, 0.0, v15, v16);
    v20 = v19;
    Input = HGRenderer::GetInput(v7, a1, 0);
    v22 = HGRenderer::GetInput(v7, a1, 1u);
    v37 = v8;
    *&v49.var0 = v8;
    *&v49.var2 = v9;
    NodeMetalTexture = HGGPURenderer::GetNodeMetalTexture(v7, Input, v49, 0, 0);
    *&v50.var2 = v38;
    *&v50.var0 = contexta;
    v24 = HGGPURenderer::GetNodeMetalTexture(v7, v22, v50, 0, 0);
    (*(*v7 + 144))(v7, 0);
    HGGPURenderer::FlushMetalCommandBuffer(v7);
    *&v47.var2 = v41;
    *&v47.var0 = v42;
    Buffer = HGGPURenderer::CreateBuffer(v7, v47, 24, a3, 1, 0);
    *&v48.var0 = v18;
    *&v48.var2 = v20;
    v26 = HGGPURenderer::CreateBuffer(v7, v48, 24, a3, 1, 0);
    v27 = [*(HGGPURenderer::GetMetalContext(v7) + 32) commandBuffer];
    v28 = HStyleTransfer_ANEImpl::ScaleInputTextureToOutputBuffer(v27, NodeMetalTexture, Buffer, v7, 18, v27);
    HStyleTransfer_ANEImpl::ScaleInputTextureToOutputBuffer(v28, v24, v26, v7, 0, v27);
    [v27 commit];
    [v27 waitUntilCompleted];
    v29 = objc_autoreleasePoolPush();
    CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(Buffer, v30);
    v33 = [*(a1 + 408) executeSyncWithImage:*(CVBitmapStorage[16] + 24) smallImage:{*(*(HGCVBitmap::getCVBitmapStorage(v26, v32) + 16) + 24)}];
    context = v29;
    if (v33)
    {
      v34 = v33;
      IOSurfaceLock(v33, 1u, 0);
      [*(a1 + 408) widthBig];
      [*(a1 + 408) heightBig];
      HStyleTransfer_ANEImpl::InterleavePlanarSurface(a1, v34, Buffer);
    }

    std::string::basic_string[abi:ne200100]<0>(v45, "[HStyleTransfer_ANEImpl::_renderPage] NULL reultSurface from ANE Network");
    v35 = HStyleTransfer_ANEImpl::_renderInputOnError(a1, a2, v45);
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    (*(*Buffer + 24))(Buffer);
    (*(*v26 + 24))(v26);
    objc_autoreleasePoolPop(context);
    (*(*NodeMetalTexture + 24))(NodeMetalTexture);
    (*(*v24 + 24))(v24);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "[HStyleTransfer_ANEImpl::_renderPage] NULL ane network.");
    v35 = HStyleTransfer_ANEImpl::_renderInputOnError(a1, a2, __p);
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v35;
}

void sub_25F9E44F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HStyleTransfer_ANEImpl::InterleavePlanarSurface(id *this, __IOSurface *a2, HGBitmap *a3)
{
  v6 = [this[51] widthBig];
  v7 = [this[51] heightBig];
  BytesPerRow = IOSurfaceGetBytesPerRow(a2);
  BaseAddress = IOSurfaceGetBaseAddress(a2);
  v11 = HGRectMake4f(v10, 0.0, 0.0, v6, v7);
  v13 = v12;
  v14 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v14, v11, v13, 5, BaseAddress, BytesPerRow);
  v15 = HGObject::operator new(0x80uLL);
  v16 = BytesPerRow * v7;
  HGBitmap::HGBitmap(v15, v11, v13, 5, &BaseAddress[(BytesPerRow * v7) & 0xFFFFFFFFFFFFFFFELL], BytesPerRow);
  v17 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v17, v11, v13, 5, &BaseAddress[2 * v16], BytesPerRow);
  v18 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v18, v14);
  v19 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v19, v15);
  v20 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v20, v17);
  v21 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v21, a3);
  v22 = HGObject::operator new(0x1A0uLL);
  *(v22 + 24) = 0u;
  *(v22 + 25) = 0u;
  *(v22 + 22) = 0u;
  *(v22 + 23) = 0u;
  *(v22 + 20) = 0u;
  *(v22 + 21) = 0u;
  *(v22 + 18) = 0u;
  *(v22 + 19) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 17) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  HgcStyleTransferANEPost::HgcStyleTransferANEPost(v22);
}

void sub_25F9E4A34(_Unwind_Exception *a1)
{
  HGObject::operator delete(v7);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t HStyleTransfer_ANE::RenderContext::Renderer(HStyleTransfer_ANE::RenderContext *this, HGGPURenderer *a2)
{
  result = *(this + 2);
  if (!result)
  {
    v4 = HGObject::operator new(0x5C8uLL);
    HGGPURenderer::GetCurrentContext(a2, &v5);
    HGGPURenderer::HGGPURenderer(v4, &v5.var0);
  }

  return result;
}

void sub_25F9E4D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::PCSharedCount(&a10);
  HGObject::operator delete(v10);
  _Unwind_Resume(a1);
}

HGBitmap *HStyleTransfer_ANEImpl::_renderInputOnError(HGNode *a1, uint64_t a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  HGLogger::warning("%s", a2, a3, a3);
  v5 = *a2;
  Input = HGRenderer::GetInput(*a2, a1, 0);
  v7 = *(a2 + 36);

  return HGGPURenderer::GetNodeMetalTexture(v5, Input, v7, 0, 1u);
}

HGSynchronizable *HStyleTransfer_ANE::RenderContext::GetRetainedRenderContext@<X0>(HGObject **a1@<X8>)
{
  if (HStyleTransfer_ANE::RenderContext::ContextLock(void)::onceToken != -1)
  {
    HStyleTransfer_ANE::RenderContext::GetRetainedRenderContext();
  }

  v3 = _sContextLock;
  HGSynchronizable::Lock(_sContextLock);
  v4 = _sContextRefCount++;
  v5 = _sContext;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = _sContext == 0;
  }

  if (v6)
  {
    v5 = HGObject::operator new(0x28uLL);
    HGObject::HGObject(v5);
    v7 = &unk_2871D4710;
    *v5 = &unk_2871D4710;
    *(v5 + 3) = 0;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    _sContext = v5;
    goto LABEL_10;
  }

  if (_sContext)
  {
    v7 = *_sContext;
LABEL_10:
    (v7)[2](v5);
  }

  *a1 = v5;
  return HGSynchronizable::Unlock(v3);
}

void sub_25F9E4EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, HGSynchronizable *a9)
{
  HGObject::operator delete(v9);
  HGSynchronizer::~HGSynchronizer(&a9);
  _Unwind_Resume(a1);
}

HGSynchronizable *HStyleTransfer_ANE::RenderContext::ReleaseRenderContext(void *a1)
{
  if (HStyleTransfer_ANE::RenderContext::ContextLock(void)::onceToken != -1)
  {
    HStyleTransfer_ANE::RenderContext::GetRetainedRenderContext();
  }

  v2 = _sContextLock;
  HGSynchronizable::Lock(_sContextLock);
  if (*a1)
  {
    (*(**a1 + 24))(*a1);
    *a1 = 0;
    if (!--_sContextRefCount)
    {
      v4 = *(_sContext + 16);
      if (v4)
      {
        OZChannelBase::setRangeName(v4, v3);
      }
    }
  }

  return HGSynchronizable::Unlock(v2);
}

void HStyleTransfer_ANE::RenderContext::~RenderContext(HStyleTransfer_ANE::RenderContext *this)
{
  *this = &unk_2871D4710;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGObject::~HGObject(this);
}

{
  HStyleTransfer_ANE::RenderContext::~RenderContext(this);

  HGObject::operator delete(v1);
}

uint64_t HStyleTransfer_ANE::HStyleTransfer_ANE(uint64_t a1, void *a2, uint64_t *a3)
{
  HGNode::HGNode(a1);
  *v6 = &unk_2871D4748;
  v6[51] = 0;
  v6[52] = 0;
  v7 = HGObject::operator new(0x1B0uLL);
  v8 = *a3;
  v11 = v8;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  HStyleTransfer_ANEImpl::HStyleTransfer_ANEImpl(v7, a2, &v11);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(a1 + 408);
  if (v9 == v7)
  {
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }

    *(a1 + 408) = v7;
  }

  return a1;
}

void sub_25F9E5220(_Unwind_Exception *a1)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v4 = *(v1 + 416);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v1 + 408);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

HGXForm *HStyleTransfer_ANE::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  v5 = [*(*(this + 51) + 408) widthBig] * 2.5;
  DOD = HGRenderer::GetDOD(a2, Input);
  v8 = v6;
  v9 = v6 - DOD;
  v10 = HIDWORD(v6) - HIDWORD(DOD);
  if (v6 - DOD >= (HIDWORD(v6) - HIDWORD(DOD)))
  {
    v11 = HIDWORD(v6) - HIDWORD(DOD);
  }

  else
  {
    v11 = v6 - DOD;
  }

  if (v11 <= v5)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = v5 / v11;
  }

  HGTransform::HGTransform(v30);
  HGTransform::Scale(v13, v12, v12, 1.0);
  HGTransform::HGTransform(v29);
  HGTransform::Scale(v29, (1.0 / v12), (1.0 / v12), 1.0);
  v14 = [*(*(this + 51) + 408) widthSmall];
  v15 = [*(*(this + 51) + 408) heightSmall];
  HGTransform::HGTransform(v28);
  v16 = v14 / v9;
  v17 = v15 / v10;
  HGTransform::Scale(v28, v16, v17, 1.0);
  HGTransform::Translate(v28, (v16 * -DOD), (v17 * -HIDWORD(DOD)), 1.0);
  v18 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v18);
  (*(*v18 + 120))(v18, 0, Input);
  (*(*v18 + 576))(v18, v30);
  (*(*v18 + 592))(v18, 6, 1.0);
  v19.i64[0] = DOD;
  v19.i64[1] = v8;
  v20.i64[0] = 0xFFFFFFFF00000000;
  v20.i64[1] = 0xFFFFFFFF00000000;
  v27 = vaddq_s64(vbslq_s8(v20, v19, vaddq_s64(v19, xmmword_260343B60)), xmmword_260343B70);
  v21 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v21);
  (*(*v21 + 120))(v21, 0, v18);
  HGTextureWrap::SetCropRect(v21, &v27);
  HGTextureWrap::SetTextureWrapMode(v21, 1, v22);
  v23 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v23);
  (*(*v23 + 120))(v23, 0, Input);
  (*(*v23 + 576))(v23, v28);
  (*(*v23 + 592))(v23, 6, 1.0);
  (*(**(this + 51) + 120))(*(this + 51), 0, v21);
  (*(**(this + 51) + 120))(*(this + 51), 1, v23);
  v24 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v24);
  (*(*v24 + 120))(v24, 0, *(this + 51));
  (*(*v24 + 576))(v24, v29);
  v25 = *(this + 52);
  if (v25 != v24)
  {
    if (v25)
    {
      (*(*v25 + 24))(*(this + 52));
    }

    *(this + 52) = v24;
    (*(*v24 + 16))(v24);
    v25 = *(this + 52);
  }

  (*(*v24 + 24))(v24);
  (*(*v23 + 24))(v23);
  (*(*v21 + 24))(v21);
  (*(*v18 + 24))(v18);
  HGTransform::~HGTransform(v28);
  HGTransform::~HGTransform(v29);
  HGTransform::~HGTransform(v30);
  return v25;
}

void sub_25F9E5880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  HGObject::operator delete(v31);
  (*(*v32 + 24))(v32);
  (*(*v30 + 24))(v30);
  (*(*v29 + 24))(v29);
  HGTransform::~HGTransform(&a11);
  HGTransform::~HGTransform(&a29);
  HGTransform::~HGTransform((v33 - 240));
  _Unwind_Resume(a1);
}

void HStyleTransfer_ANE::~HStyleTransfer_ANE(HGNode *this)
{
  *this = &unk_2871D4748;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2871D4748;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void HStyleTransferANEPost::~HStyleTransferANEPost(HGNode *this)
{
  HgcStyleTransferANEPost::~HgcStyleTransferANEPost(this);

  HGObject::operator delete(v1);
}

const char *HStyleTransferANEPost::GetProgram(HStyleTransferANEPost *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) == 396048)
  {
    return "//Metal1.0     \n//LEN=00000004a3\nfragment half4 fragmentFunc(VertexInOut frag [[ stage_in ]],\n    const constant float4* hg_Params [[ buffer(0) ]],\n    texture2d< half > hg_Texture0 [[ texture(0) ]],\n    sampler hg_Sampler0 [[ sampler(0) ]],\n    texture2d< half > hg_Texture1 [[ texture(1) ]],\n    sampler hg_Sampler1 [[ sampler(1) ]],\n    texture2d< half > hg_Texture2 [[ texture(2) ]],\n    sampler hg_Sampler2 [[ sampler(2) ]],\n    texture2d< half > hg_Texture3 [[ texture(3) ]],\n    sampler hg_Sampler3 [[ sampler(3) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    half4 output;\n\n    r0.x = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r1.x = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    r0.w = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy).w;\n    r2.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r2.z = r1.x;\n    r2.y = r0.x;\n    r0.xyz = r2.xyz*c0.xxx + c0.xxx;\n    r0.xyz = r0.xyz*r0.www;\n    output = r0;\n    return output;\n}\n//MD5=f54e0f3a:1c54dc8f:c23c4713:e89311f7\n//SIG=00000000:00000000:00000000:0000000f:0004:0001:0000:0000:0000:0000:001e:0000:0004:04:0:0:0\n";
  }

  return HgcStyleTransferANEPost::GetProgram(this, a2);
}

uint64_t HGlassBlock::RenderTile(HGlassBlock *this, HGTile *a2)
{
  if (*(a2 + 10))
  {

    return HgcGlassBlock::RenderTile(this, a2);
  }

  else
  {
    v4 = *(a2 + 3) - *(a2 + 1);
    if (v4 >= 1)
    {
      v5 = *(a2 + 2);
      v6 = 16 * (*(a2 + 2) - *a2);
      v7 = 16 * *(a2 + 6);
      do
      {
        bzero(v5, v6);
        v5 += v7;
        --v4;
      }

      while (v4);
    }

    return 0;
  }
}

uint64_t HGlassBlock::GetDOD(HGlassBlock *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v4 = HGRectMake4i(vcvtms_s32_f32(*(this + 104)), vcvtms_s32_f32(*(this + 105)), vcvtps_s32_f32(*(this + 106)), vcvtps_s32_f32(*(this + 107)));
  v8 = v7;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v9 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v4, v8, v9);
  }

  return v4;
}

unint64_t HGlassBlock::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  v79 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = 0x80000000;
    v7 = 0x80000000;
    v8 = 0x7FFFFFFF7FFFFFFFLL;
  }

  else
  {
    var2 = a4.var2;
    var0 = a4.var0;
    var1 = a4.var1;
    var3 = a4.var3;
    (*(*this + 104))(this, 0, v78);
    v13 = *v78;
    v14 = *&v78[1];
    (*(*this + 104))(this, 1, &v70);
    (*(*this + 104))(this, 2, &v74);
    v15 = var0;
    v16 = var2;
    if (var0 <= var2)
    {
      v22 = var1 - v14;
      v23 = v73 * floorf(v22 * v71);
      v24 = v22 - v23;
      v25 = v23 * v75;
      v26 = v23 * v77;
      v17 = var3;
      v27 = var3 - v14;
      v28 = v73 * floorf(v27 * v71);
      v29 = v27 - v28;
      v30 = v28 * v75;
      v31 = v28 * v77;
      v20 = -3.4028e38;
      v21 = 3.4028e38;
      v32 = var0;
      v18 = 3.4028e38;
      v19 = -3.4028e38;
      do
      {
        v33 = v72 * floorf((v32 - v13) * v70);
        v34 = (v32 - v13) - v33;
        v35 = v33 * v74;
        v36 = (v33 * v74) + v25;
        v37 = v33 * v76;
        v38 = v13 + (v34 + v36);
        v39 = v14 + (v24 + (v37 + v26));
        if (v38 < v21)
        {
          v21 = v38;
        }

        if (v20 < v38)
        {
          v20 = v38;
        }

        if (v39 < v18)
        {
          v18 = v14 + (v24 + (v37 + v26));
        }

        if (v19 < v39)
        {
          v19 = v14 + (v24 + (v37 + v26));
        }

        v40 = v13 + (v34 + (v35 + v30));
        v41 = v14 + (v29 + (v37 + v31));
        if (v40 < v21)
        {
          v21 = v40;
        }

        if (v20 < v40)
        {
          v20 = v40;
        }

        if (v41 < v18)
        {
          v18 = v41;
        }

        if (v19 < v41)
        {
          v19 = v41;
        }

        v32 = v32 + 1.0;
      }

      while (v32 <= v16);
    }

    else
    {
      v17 = var3;
      v18 = 3.4028e38;
      v19 = -3.4028e38;
      v20 = -3.4028e38;
      v21 = 3.4028e38;
    }

    v42 = (var1 + 1);
    if (v17 > v42)
    {
      v43 = v72 * floorf((v15 - v13) * v70);
      v44 = (v15 - v13) - v43;
      v45 = v43 * v74;
      v46 = v43 * v76;
      v47 = v16 - v13;
      v48 = v72 * floorf(v47 * v70);
      v49 = v47 - v48;
      v50 = v48 * v74;
      v51 = v48 * v76;
      do
      {
        v52 = v73 * floorf((v42 - v14) * v71);
        v53 = (v42 - v14) - v52;
        v54 = v52 * v75;
        v55 = v45 + (v52 * v75);
        v56 = v52 * v77;
        v57 = v13 + (v44 + v55);
        v58 = v14 + (v53 + (v46 + v56));
        if (v57 < v21)
        {
          v21 = v57;
        }

        if (v20 < v57)
        {
          v20 = v57;
        }

        if (v58 < v18)
        {
          v18 = v14 + (v53 + (v46 + v56));
        }

        if (v19 < v58)
        {
          v19 = v14 + (v53 + (v46 + v56));
        }

        v59 = v13 + (v49 + (v50 + v54));
        v60 = v14 + (v53 + (v51 + v56));
        if (v59 < v21)
        {
          v21 = v59;
        }

        if (v20 < v59)
        {
          v20 = v59;
        }

        if (v60 < v18)
        {
          v18 = v60;
        }

        if (v19 < v60)
        {
          v19 = v60;
        }

        v42 = v42 + 1.0;
      }

      while (v42 < v17);
    }

    v6 = v21;
    v7 = v18;
    v8 = v20 | (v19 << 32);
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v64 = HGRectIntersection(v6 | (v7 << 32), v8, DOD, v63);
  IsNull = HGRectIsNull(v64, v65);
  v67 = HIDWORD(v64) - 2;
  if (IsNull)
  {
    v67 = HIDWORD(v64);
    v68 = v64;
  }

  else
  {
    v68 = v64 - 2;
  }

  return v68 | (v67 << 32);
}

uint64_t HGlassBlock::GetOutput(HGNode *this, HGRenderer *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v7 = v6;
  HgcGlassBlock::SetParameter(this, 3, DOD, SHIDWORD(DOD), 0.0, 0.0, v8);
  HgcGlassBlock::SetParameter(this, 4, v7, SHIDWORD(v7), 0.0, 0.0, v9);
  v10 = (*(*a2 + 128))(a2, 1);
  (*(*this + 104))(this, 1, v15);
  v11 = v17;
  (*(*this + 104))(this, 2, v15);
  v12 = v16;
  if ((*(*a2 + 304))(a2))
  {
    v13 = -v12;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    if (v13 > 0.16 || (v11 / v10) > 2.15)
    {
      (*(*this + 136))(this, 0, 2);
    }
  }

  return HgcGlassBlock::GetOutput(this, a2);
}

void HGlassBlock::~HGlassBlock(HGNode *this)
{
  HgcGlassBlock::~HgcGlassBlock(this);

  HGObject::operator delete(v1);
}

void sub_25F9E7550(_Unwind_Exception *a1)
{
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  (*(*v3 + 24))(v3);
  (*(*v2 + 24))(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

void sub_25F9E8120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object)
{
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  (*(*v16 + 24))(v16);
  (*(*v18 + 24))(v18);
  (*(*v17 + 24))(v17);
  (*(*v15 + 24))(v15);
  (*(*v14 + 24))(v14);
  (*(*v13 + 24))(v13);
  _Unwind_Resume(a1);
}

void sub_25F9E8E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  (*(*v36 + 24))(v36);
  (*(*v35 + 24))(v35);
  HGTransform::~HGTransform(&a11);
  if (a30)
  {
    (*(*a30 + 24))(a30);
  }

  (*(*v34 + 24))(v34);
  (*(*v34 + 24))(v34);
  if (a32)
  {
    (*(*a32 + 24))(a32);
  }

  (*(*v33 + 24))(v33);
  HGTransform::~HGTransform(&a33);
  v39 = *(v37 - 160);
  if (v39)
  {
    (*(*v39 + 24))(v39);
  }

  _Unwind_Resume(a1);
}

void sub_25F9E9594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void sub_25F9E9A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HAlphaKeyer::~HAlphaKeyer(HGNode *this)
{
  HgcAlphaKeyer::~HgcAlphaKeyer(this);

  HGObject::operator delete(v1);
}

uint64_t HAlphaKeyer::GetROI(HAlphaKeyer *this, HGRenderer *a2, int a3, __int128 a4)
{
  if (a3 == 2)
  {
    if (*(this + 416))
    {
      v9 = 2816;
    }

    else
    {
      v9 = 256;
    }

    *&v15 = HGRectMake4i(0, 0, v9, 1u);
    *(&v15 + 1) = v10;
    v11 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v13 = v12;
    *&v16.var0 = v11;
    *&v16.var2 = v13;
    HGRect::Grow(&v15, v16);
  }

  else if (a3 == 1)
  {
    v4 = HGRectMake4i(-*(this + 105), -*(this + 105), *(this + 105), *(this + 105));
    v6 = v5;
    v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    *&v15 = HGRectGrow(v4, v6, v7);
    *(&v15 + 1) = v8;
  }

  else if (a3)
  {
    return HGRectNull;
  }

  else
  {
    return a4;
  }

  return v15;
}

uint64_t HSinusoidalToEquirect::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HSinusoidalToEquirect::GetROI(HSinusoidalToEquirect *this, HGRenderer *a2, int a3, HGRect a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return 0;
  }

  var2 = a4.var2;
  var0 = a4.var0;
  var3 = a4.var3;
  var1 = a4.var1;
  (*(*this + 104))(this, 0, &v34);
  v33 = v34;
  (*(*this + 104))(this, 1, &v34);
  v32 = v34;
  (*(*this + 104))(this, 2, &v34);
  v31 = v34;
  (*(*this + 104))(this, 3, &v34);
  v30 = v34;
  (*(*this + 104))(this, 4, &v34);
  v29 = v34;
  (*(*this + 104))(this, 5, &v34);
  v10 = var0;
  v28 = v34;
  v11 = var1;
  v12 = var3;
  if (var0 <= var2)
  {
    v15 = -3.4028e38;
    v16 = 3.4028e38;
    v13 = 3.4028e38;
    v14 = -3.4028e38;
    do
    {
      v27.f32[0] = v10;
      v27.f32[1] = var1;
      processPoint(&v27, &v33, &v32, &v31, &v30, &v29, &v28, &v34);
      v25 = v10;
      v26 = var3;
      processPoint(&v25, &v33, &v32, &v31, &v30, &v29, &v28, &v27);
      v18 = *(&v34 + 1);
      v17 = *&v34;
      if (v13 >= *&v34)
      {
        v19 = *&v34;
      }

      else
      {
        v19 = v13;
      }

      if (v16 >= *(&v34 + 1))
      {
        v20 = *(&v34 + 1);
      }

      else
      {
        v20 = v16;
      }

      if (v14 > *&v34)
      {
        v17 = v14;
      }

      if (v15 > *(&v34 + 1))
      {
        v18 = v15;
      }

      if (v19 >= v27.f32[0])
      {
        v13 = v27.f32[0];
      }

      else
      {
        v13 = v19;
      }

      if (v20 >= v27.f32[1])
      {
        v16 = v27.f32[1];
      }

      else
      {
        v16 = v20;
      }

      if (v17 <= v27.f32[0])
      {
        v14 = v27.f32[0];
      }

      else
      {
        v14 = v17;
      }

      if (v18 <= v27.f32[1])
      {
        v15 = v27.f32[1];
      }

      else
      {
        v15 = v18;
      }

      v10 = v10 + 1.0;
    }

    while (v10 <= var2);
  }

  else
  {
    v13 = 3.4028e38;
    v14 = -3.4028e38;
    v15 = -3.4028e38;
    v16 = 3.4028e38;
  }

  for (; v11 <= v12; v11 = v11 + 1.0)
  {
    v27.f32[0] = var0;
    v27.f32[1] = v11;
    processPoint(&v27, &v33, &v32, &v31, &v30, &v29, &v28, &v34);
    v25 = var2;
    v26 = v11;
    processPoint(&v25, &v33, &v32, &v31, &v30, &v29, &v28, &v27);
    v22 = *(&v34 + 1);
    v21 = *&v34;
    if (v13 >= *&v34)
    {
      v23 = *&v34;
    }

    else
    {
      v23 = v13;
    }

    if (v16 >= *(&v34 + 1))
    {
      v24 = *(&v34 + 1);
    }

    else
    {
      v24 = v16;
    }

    if (v14 > *&v34)
    {
      v21 = v14;
    }

    if (v15 > *(&v34 + 1))
    {
      v22 = v15;
    }

    if (v23 >= v27.f32[0])
    {
      v13 = v27.f32[0];
    }

    else
    {
      v13 = v23;
    }

    if (v24 >= v27.f32[1])
    {
      v16 = v27.f32[1];
    }

    else
    {
      v16 = v24;
    }

    if (v21 <= v27.f32[0])
    {
      v14 = v27.f32[0];
    }

    else
    {
      v14 = v21;
    }

    if (v22 <= v27.f32[1])
    {
      v15 = v27.f32[1];
    }

    else
    {
      v15 = v22;
    }
  }

  return HGRectMake4i((floorf(v13) + -1.0), (floorf(v16) + -1.0), (ceilf(v14) + 1.0), (ceilf(v15) + 1.0));
}

float32x2_t processPoint@<D0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, float *a3@<X2>, float *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int32 *a7@<X6>, float32x2_t *a8@<X8>)
{
  v9 = vmul_f32(*(a5 + 4), *(a1 + 4));
  v10 = *a3;
  v11 = (a6 + 4);
  v27 = *a6;
  v28 = *(a6 + 8);
  v29 = *(a6 + 12);
  v26 = *a7;
  v12 = a7 + 1;
  v13 = a7 + 2;
  v14 = a7 + 3;
  v25 = vmul_f32(*a2, 0x3F0000003F000000);
  v24 = (*(a5 + 12) + (((*a1 * *a5) + v9.f32[0]) + v9.f32[1])) + v25.f32[1];
  v15 = (a3[1] * v24) + -1.57079633;
  v16 = (((a4[3] + (((*a1 * *a4) + (*(a1 + 4) * a4[1])) + (a4[2] * 0.0))) + v25.f32[0]) * *a3) + -3.14159265;
  v17 = (cosf(v15) * v16) + 3.14159265;
  v18.f32[0] = v17 / v10;
  v18.f32[1] = v24;
  v19 = vsub_f32(v18, v25);
  v20.i32[0] = v26;
  v21.i32[0] = v27;
  v20.i32[1] = *v11;
  v21.i32[1] = *v12;
  v22 = vadd_f32(vmul_f32(v21, v19), vrev64_s32(vmul_f32(v19, v20)));
  v21.i32[0] = v28;
  v21.i32[1] = *v13;
  v20.i32[0] = v29;
  v20.i32[1] = *v14;
  result = vadd_f32(v20, vadd_f32(vmul_f32(v21, 0), v22));
  *a8 = result;
  return result;
}

void HSinusoidalToEquirect::~HSinusoidalToEquirect(HGNode *this)
{
  HgcSinusoidalToEquirect::~HgcSinusoidalToEquirect(this);

  HGObject::operator delete(v1);
}

void sub_25F9EC770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  HGObject::operator delete(v62);
  (*(*v61 + 24))(v61);
  (*(*v60 + 24))(v60);
  (*(*v59 + 24))(v59);
  HGTransform::~HGTransform(&a17);
  if (a59)
  {
    (*(*a59 + 24))(a59);
  }

  _Unwind_Resume(a1);
}

void HInsectEye_Base::~HInsectEye_Base(HGNode *this)
{
  HgcInsectEye::~HgcInsectEye(this);

  HGObject::operator delete(v1);
}

uint64_t HInsectEye_Base::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

double HInsectEye_Base::GetROI(HInsectEye_Base *this, HGRenderer *a2, int a3, HGRect a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (a3 > 0)
  {
    return *&HGRectNull;
  }

  v4 = *&a4.var2;
  v5 = *&a4.var0;
  (*(*this + 104))(this, 0, v17);
  v8 = v17[0];
  (*(*this + 104))(this, 2, v17);
  v9 = *v17;
  (*(*this + 104))(this, 6, v17);
  if (a3)
  {
    return *&HGRectNull;
  }

  v11 = 1.0 - v9;
  if (v9 > 1.0)
  {
    v11 = v9 + -1.0;
  }

  v12 = v11;
  v13 = (*(&v8 + 1) * v12);
  v14 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vcvt_f32_s32(__PAIR64__((*&v8 * v12) + v4, v5 - (*&v8 * v12))), *v17), COERCE_FLOAT32X2_T(--2.00000143)));
  v15.i32[0] = HIDWORD(v5) - v13;
  v15.i32[1] = v13 + HIDWORD(v4);
  v16.i64[0] = v14.u32[0];
  v16.i64[1] = v14.u32[1];
  *&result = vorrq_s8(vshll_n_s32(vcvt_s32_f32(vadd_f32(vmul_n_f32(vcvt_f32_s32(v15), *(v17 + 1)), COERCE_FLOAT32X2_T(--2.00000143))), 0x20uLL), v16).u64[0];
  return result;
}

uint64_t HInsectEye_Base::GetOutput(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 304))(a2))
  {
    (*(*a1 + 136))(a1, 0, 2);
  }

  return a1;
}

void sub_25F9EE490(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

float *hsvtorgb(float a1, float a2, float a3, float *result, float *a5, float *a6)
{
  if (a2 < 0.00001)
  {
    *a6 = a3;
    *a5 = a3;
    *result = a3;
    return result;
  }

    ;
  }

    ;
  }

  if (a2 <= 1.0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = a1;
  v8 = a1 - a1;
  v9 = (1.0 - v6) * a3;
  v10 = (1.0 - (v6 * v8)) * a3;
  v11 = (1.0 - (v6 * (1.0 - v8))) * a3;
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        if (v7 == 2)
        {
          *result = v9;
          *a5 = a3;
          *a6 = v11;
        }

        return result;
      }

      *result = v10;
      *a5 = a3;
    }

    else
    {
      *result = a3;
      *a5 = v11;
    }

    *a6 = v9;
    return result;
  }

  switch(v7)
  {
    case 3:
      *result = v9;
      *a5 = v10;
LABEL_24:
      *a6 = a3;
      return result;
    case 4:
      *result = v11;
      *a5 = v9;
      goto LABEL_24;
    case 5:
      *result = a3;
      *a5 = v9;
      *a6 = v10;
      break;
  }

  return result;
}

uint64_t std::vector<Vec3f>::push_back[abi:ne200100](void *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<Vec3f>::__emplace_back_slow_path<Vec3f const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    result = (v3 + 3);
  }

  a1[1] = result;
  return result;
}

void OMSamples::OMSamples(OMSamples *this)
{
  *this = &unk_2871D5608;
  *(this + 4) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  operator new();
}

void sub_25F9EEAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 120);
  std::vector<OMEdge>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 96);
  std::vector<std::vector<Vec3f>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v13 = *(v10 + 72);
  if (v13)
  {
    *(v10 + 80) = v13;
    operator delete(v13);
  }

  OMSamples::OMSamples((v10 + 48), v11, v10);
  _Unwind_Resume(a1);
}

void OMSamples::~OMSamples(OMSamples *this)
{
  OMSamples::~OMSamples(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2871D5608;
  v2 = *(this + 2);
  v3 = *v2;
  if (*(v2 + 8) != *v2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v3[v4];
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v2 = *(this + 2);
        v3 = *v2;
      }

      v4 = v5++;
    }

    while (v4 < (*(v2 + 8) - v3) >> 3);
  }

  if (v3)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
  }

  MEMORY[0x2666E9F00](v2, 0x80C40D6874129);
  v10 = (this + 120);
  std::vector<OMEdge>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 96);
  std::vector<std::vector<Vec3f>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }
}

void std::vector<OMEdge>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 88;
      v7 = v4 - 88;
      v8 = v4 - 88;
      do
      {
        v9 = *v8;
        v8 -= 88;
        (*v9)(v7);
        v6 -= 88;
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

void std::vector<std::vector<Vec3f>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<Vec3f>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<Vec3f>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<Vec3f>::__emplace_back_slow_path<Vec3f const&>(void *a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Vec3f>>(a1, v6);
  }

  v7 = 12 * v2;
  __p = 0;
  v11 = v7;
  *v7 = *a2;
  *(v7 + 4) = a2[1];
  *(v7 + 8) = a2[2];
  v12 = 12 * v2 + 12;
  v13 = 0;
  std::vector<Vec3f>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 12) % 0xCuLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25F9EEFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<Vec3f>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Vec3f>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void OMSamples::OMSamples(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 56) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 32) = v6;
    operator delete(v6);
  }
}

uint64_t HiOSKaleidoscope::GetDOD(HiOSKaleidoscope *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v40 = *MEMORY[0x277D85DE8];
  v7 = *(this + 52);
  v8 = cos(v7);
  v9 = 6.28318531 / *(this + 106);
  v10 = v7 + v9;
  v11 = sin(v10);
  if (!HGRectIsInfinite(v5, v4))
  {
    v12 = v8;
    v13 = v11;
    v33 = v13;
    v34 = v12;
    v14 = cos(v10);
    v15 = sin(v7);
    (*(*this + 104))(this, 0, &v38);
    v17 = v38;
    v16 = v39;
    v18 = -v15;
    v19 = -v14;
    v20 = SHIDWORD(v5) + (HIDWORD(v4) - HIDWORD(v5));
    v37 = v20;
    v38 = v5;
    v21 = v5 + (v4 - v5);
    v35 = v20;
    v36 = v21;
    v32 = v18;
    v22 = 0.0;
    if (ClipSegmentToHalfplane(v5, v20, v21, v20, v17, v39, v18, v34, &v38, &v37, &v36, &v35) && ClipSegmentToHalfplane(v38, v37, v36, v35, v17, v16, v33, v19, &v38, &v37, &v36, &v35))
    {
      v22 = fmaxf(sqrtf(((v38 - v17) * (v38 - v17)) + ((v37 - v16) * (v37 - v16))), 0.0);
      v23 = sqrtf(((v36 - v17) * (v36 - v17)) + ((v35 - v16) * (v35 - v16)));
      if (v23 > v22)
      {
        v22 = v23;
      }
    }

    v37 = SHIDWORD(v5) + (HIDWORD(v4) - HIDWORD(v5));
    v38 = v5 + (v4 - v5);
    v35 = SHIDWORD(v5);
    v36 = v38;
    if (ClipSegmentToHalfplane(v21, v20, v21, SHIDWORD(v5), v17, v16, v32, v34, &v38, &v37, &v36, &v35) && ClipSegmentToHalfplane(v38, v37, v36, v35, v17, v16, v33, v19, &v38, &v37, &v36, &v35))
    {
      v24 = sqrtf(((v38 - v17) * (v38 - v17)) + ((v37 - v16) * (v37 - v16)));
      if (v24 > v22)
      {
        v22 = v24;
      }

      v25 = sqrtf(((v36 - v17) * (v36 - v17)) + ((v35 - v16) * (v35 - v16)));
      if (v25 > v22)
      {
        v22 = v25;
      }
    }

    v37 = SHIDWORD(v5);
    v38 = v5 + (v4 - v5);
    v35 = SHIDWORD(v5);
    v36 = v5;
    if (ClipSegmentToHalfplane(v21, SHIDWORD(v5), v5, SHIDWORD(v5), v17, v16, v32, v34, &v38, &v37, &v36, &v35))
    {
      v26 = v33;
      if (ClipSegmentToHalfplane(v38, v37, v36, v35, v17, v16, v33, v19, &v38, &v37, &v36, &v35))
      {
        v27 = sqrtf(((v38 - v17) * (v38 - v17)) + ((v37 - v16) * (v37 - v16)));
        if (v27 > v22)
        {
          v22 = v27;
        }

        v28 = sqrtf(((v36 - v17) * (v36 - v17)) + ((v35 - v16) * (v35 - v16)));
        if (v28 > v22)
        {
          v22 = v28;
        }
      }
    }

    else
    {
      v26 = v33;
    }

    v37 = SHIDWORD(v5);
    v38 = v5;
    v35 = SHIDWORD(v5) + (HIDWORD(v4) - HIDWORD(v5));
    v36 = v5;
    if (ClipSegmentToHalfplane(v5, SHIDWORD(v5), v5, v20, v17, v16, v32, v34, &v38, &v37, &v36, &v35) && ClipSegmentToHalfplane(v38, v37, v36, v35, v17, v16, v26, v19, &v38, &v37, &v36, &v35))
    {
      v29 = sqrtf(((v38 - v17) * (v38 - v17)) + ((v37 - v16) * (v37 - v16)));
      if (v29 > v22)
      {
        v22 = v29;
      }

      v30 = sqrtf(((v36 - v17) * (v36 - v17)) + ((v35 - v16) * (v35 - v16)));
      if (v30 > v22)
      {
        v22 = v30;
      }
    }

    return HGRectMake4i(vcvtms_s32_f32(v17 - v22), vcvtms_s32_f32(v16 - v22), vcvtpd_s64_f64(v22 + v22 + floorf(v17 - v22)), vcvtpd_s64_f64(v22 + v22 + floorf(v16 - v22)));
  }

  return v5;
}

BOOL ClipSegmentToHalfplane(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float *a9, float *a10, float *a11, float *a12)
{
  v12 = ((a1 - a5) * a7) + ((a2 - a6) * a8);
  v13 = ((a3 - a5) * a7) + ((a4 - a6) * a8);
  v14 = v13 > 0.0 || v12 > 0.0;
  if (v14)
  {
    if (v12 <= 0.0 || v13 <= 0.0)
    {
      if (v12 <= 0.0)
      {
        v16 = v13 / (v13 - v12);
        a1 = ((a1 - a3) * v16) + a3;
        a2 = ((a2 - a4) * v16) + a4;
      }

      else
      {
        v15 = v12 / (v12 - v13);
        a3 = ((a3 - a1) * v15) + a1;
        a4 = ((a4 - a2) * v15) + a2;
      }
    }

    *a9 = a1;
    *a10 = a2;
    *a11 = a3;
    *a12 = a4;
  }

  return v14;
}

uint64_t HiOSKaleidoscope::GetROI(HiOSKaleidoscope *this, HGRenderer *a2, int a3, HGRect a4)
{
  var2 = a4.var2;
  var0 = a4.var0;
  v56 = *MEMORY[0x277D85DE8];
  var1 = a4.var1;
  var3 = a4.var3;
  v9 = *(this + 52);
  v10 = __sincos_stret(v9);
  cosval = v10.__cosval;
  sinval = v10.__sinval;
  v13 = 6.28318531 / *(this + 106);
  v14 = v13;
  v15 = __sincos_stret(v9 + v13);
  (*(*this + 104))(this, 0, &v54);
  v16 = var0 - v54;
  v17 = var1 + (var3 - var1) - v55;
  v18 = v16 * v16;
  v19 = v17 * v17;
  v20 = sqrtf(v18 + v19);
  v21 = var0 + (var2 - var0) - v54;
  v22 = v21 * v21;
  v23 = sqrtf(v22 + v19);
  if (v23 <= v20)
  {
    v23 = v20;
  }

  v24 = var1 - v55;
  v25 = v24 * v24;
  v26 = sqrtf(v18 + v25);
  if (v26 <= v23)
  {
    v26 = v23;
  }

  v27 = sqrtf(v22 + v25);
  if (v27 <= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = v54 + (v28 * cosval);
  v30 = v55 + (v28 * sinval);
  v31 = v54;
  if (v29 >= v54)
  {
    v32 = v54;
    if (v29 > v54)
    {
      v31 = v54 + (v28 * cosval);
      v32 = v54;
    }
  }

  else
  {
    v32 = v54 + (v28 * cosval);
  }

  v34 = v15.__sinval;
  v35 = v55;
  if (v30 >= v55)
  {
    v36 = v55;
    if (v30 > v55)
    {
      v35 = v55 + (v28 * sinval);
      v36 = v55;
    }
  }

  else
  {
    v36 = v55 + (v28 * sinval);
  }

  v33 = v15.__cosval;
  v37 = v54 + (v28 * v33);
  v38 = v55 + (v28 * v34);
  if (v37 >= v32)
  {
    if (v37 > v31)
    {
      v31 = v37;
    }
  }

  else
  {
    v32 = v37;
  }

  if (v38 >= v36)
  {
    if (v38 > v35)
    {
      v35 = v55 + (v28 * v34);
    }
  }

  else
  {
    v36 = v55 + (v28 * v34);
  }

  v39 = *(this + 52);
  v40 = vcvtmd_s64_f64(v39 / 1.57079633);
  v41 = vcvtmd_s64_f64((v39 + v14) / 1.57079633);
  v42 = __OFSUB__(v41, v40);
  v43 = v41 - v40;
  if (!((v43 < 0) ^ v42 | (v43 == 0)))
  {
    v44 = v55 - v28;
    v45 = v54 - v28;
    v46 = v55 + v28;
    v47 = v40 + 1;
    v48 = v54 + v28;
    do
    {
      if (v45 < v32)
      {
        v49 = v45;
      }

      else
      {
        v49 = v32;
      }

      if (v44 < v36)
      {
        v50 = v44;
      }

      else
      {
        v50 = v36;
      }

      if ((v47 & 3) == 2)
      {
        v50 = v36;
      }

      else
      {
        v49 = v32;
      }

      if (v48 > v31)
      {
        v51 = v48;
      }

      else
      {
        v51 = v31;
      }

      if (v46 > v35)
      {
        v52 = v46;
      }

      else
      {
        v52 = v35;
      }

      if ((v47 & 3) != 0)
      {
        v51 = v31;
      }

      else
      {
        v52 = v35;
      }

      if ((v47 & 3u) > 1)
      {
        v36 = v50;
        v32 = v49;
      }

      else
      {
        v31 = v51;
        v35 = v52;
      }

      ++v47;
      --v43;
    }

    while (v43);
  }

  return HGRectMake4i(vcvtmd_s64_f64(v32 + -1.0), vcvtmd_s64_f64(v36 + -1.0), vcvtpd_s64_f64(floor(v32 + -1.0) + (v31 - v32) + 2.0), vcvtpd_s64_f64(floor(v36 + -1.0) + (v35 - v36) + 2.0));
}

void HiOSKaleidoscope::~HiOSKaleidoscope(HGNode *this)
{
  HgciOSKaleidoscope::~HgciOSKaleidoscope(this);

  HGObject::operator delete(v1);
}

void HMirror::~HMirror(HGNode *this)
{
  HgcMirror::~HgcMirror(this);

  HGObject::operator delete(v1);
}

uint64_t HMirror::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

uint64_t HMirror::GetROI(HMirror *this, HGRenderer *a2, int a3, HGRect a4)
{
  v55[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return 0;
  }

  var2 = a4.var2;
  var0 = a4.var0;
  var1 = a4.var1;
  var3 = a4.var3;
  (*(*this + 104))(this, 0, v55);
  v47 = v55[0];
  (*(*this + 104))(this, 1, &v51);
  (*(*this + 104))(this, 2, &v48);
  if (var0 <= var2)
  {
    v12 = v47;
    v13 = var1 - v47.f32[1];
    v14 = v13 * v52;
    v15 = v13 * v54;
    v16 = var3 - v47.f32[1];
    v17 = v16 * v52;
    v18 = v16 * v54;
    v10 = 0x80000000800000;
    v11 = vneg_f32(0x80000000800000);
    v19 = var0;
    do
    {
      v20 = v19 - v47.f32[0];
      v21 = v20 * v51;
      v22 = (v20 * v51) + v14;
      v23 = v20 * v53;
      v24.f32[0] = v23 + v15;
      v25.f32[0] = v23 + v18;
      v24.i32[1] = fabsf(v22);
      v26 = vadd_f32(v47, vadd_f32(vmul_f32(v24, v49), vrev64_s32(vmul_f32(v24, __PAIR64__(v48, v50)))));
      v27 = vbsl_s8(vcgt_f32(v26, v11), v11, v26);
      v25.i32[1] = fabsf(v21 + v17);
      v28 = vadd_f32(v47, vadd_f32(vmul_f32(v25, v49), vmul_f32(vrev64_s32(v25), __PAIR64__(v50, v48))));
      v11 = vbsl_s8(vcgt_f32(v28, v27), v27, v28);
      v29 = vbsl_s8(vcgt_f32(v10, v26), v10, v26);
      v10 = vbsl_s8(vcgt_f32(v29, v28), v29, v28);
      ++v19;
    }

    while (var2 + 1 != v19);
  }

  else
  {
    v10 = 0x80000000800000;
    v11 = vneg_f32(0x80000000800000);
    v12 = v47;
  }

  if (var1 <= var3)
  {
    v30 = var0 - v12.f32[0];
    v31 = v30 * v51;
    v32 = v30 * v53;
    v33 = var2 - v12.f32[0];
    v34 = v33 * v51;
    v35 = v33 * v53;
    do
    {
      v36 = var1 - v12.f32[1];
      v37 = v36 * v52;
      v38 = v31 + (v36 * v52);
      v39 = v36 * v54;
      v40.f32[0] = v32 + v39;
      v41.f32[0] = v35 + v39;
      v40.i32[1] = fabsf(v38);
      v42 = vadd_f32(v12, vadd_f32(vmul_f32(v40, v49), vrev64_s32(vmul_f32(v40, __PAIR64__(v48, v50)))));
      v43 = vbsl_s8(vcgt_f32(v42, v11), v11, v42);
      v41.i32[1] = fabsf(v34 + v37);
      v44 = vadd_f32(v12, vadd_f32(vmul_f32(v41, v49), vmul_f32(vrev64_s32(v41), __PAIR64__(v50, v48))));
      v11 = vbsl_s8(vcgt_f32(v44, v43), v43, v44);
      v45 = vbsl_s8(vcgt_f32(v10, v42), v10, v42);
      v10 = vbsl_s8(vcgt_f32(v45, v44), v45, v44);
      ++var1;
    }

    while (var3 + 1 != var1);
  }

  return vcvt_s32_f32(vadd_f32(v11, 0xC0000000C0000000));
}

uint64_t HMirror::SetParameter(HgcMirror *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  v7 = (this + 16 * a2);
  v7[104] = a3;
  v7[105] = a4;
  v7[106] = a5;
  v7[107] = a6;
  return HgcMirror::SetParameter(this, a2, a3, a4, a5, a6, a7);
}

uint64_t HBadTV::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 1)
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

uint64_t HBadTV::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v25 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    (*(*this + 104))(this, 10, v24);
    v7 = *v24;
    (*(*this + 104))(this, 8, v24);
    v8 = *v24;
    (*(*this + 104))(this, 13, v24);
    v9 = *v24;
    (*(*this + 104))(this, 0, v23);
    v24[0] = vcvtq_f64_f32(*&v23[0]);
    v24[1] = vcvtq_f64_f32(*(v23 + 8));
    (*(*this + 104))(this, 1, v23);
    v24[2] = vcvtq_f64_f32(*&v23[0]);
    v24[3] = vcvtq_f64_f32(*(v23 + 8));
    (*(*this + 104))(this, 2, v23);
    v24[4] = vcvtq_f64_f32(*&v23[0]);
    v24[5] = vcvtq_f64_f32(*(v23 + 8));
    (*(*this + 104))(this, 3, v23);
    v24[6] = vcvtq_f64_f32(*&v23[0]);
    v24[7] = vcvtq_f64_f32(*(v23 + 8));
    (*(*this + 104))(this, 4, &v19);
    v23[0] = vcvtq_f64_f32(*&v19);
    v23[1] = vcvtq_f64_f32(*&v20);
    (*(*this + 104))(this, 5, &v19);
    v23[2] = vcvtq_f64_f32(*&v19);
    v23[3] = vcvtq_f64_f32(*&v20);
    (*(*this + 104))(this, 6, &v19);
    v23[4] = vcvtq_f64_f32(*&v19);
    v23[5] = vcvtq_f64_f32(*&v20);
    (*(*this + 104))(this, 7, &v19);
    v23[6] = vcvtq_f64_f32(*&v19);
    v23[7] = vcvtq_f64_f32(*&v20);
    v19 = v5;
    v20 = SHIDWORD(v5);
    v21 = (v4 - v5);
    v22 = (HIDWORD(v4) - HIDWORD(v5));
    PCMatrix44Tmpl<double>::transformRect<double>(v23, &v19, &v19);
    v10 = v19 + v21 + v7 + v9;
    v11 = v20 + v22 + v8 + 1.9;
    v19 = v19 - v7 - v9 + -1.0;
    v20 = v20 + v8 + -1.0;
    v21 = v10 - v19;
    v22 = v11 - v20;
    PCMatrix44Tmpl<double>::transformRect<double>(v24, &v19, &v19);
    v12 = v19;
    v13 = v20;
    v14 = (v19 + v21) | ((v20 + v22) << 32);
  }

  else if (a3)
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    ROI = HgcBadTV::GetROI(this, a2, 0, a4);
    v12 = ROI;
    v14 = v16;
    v13 = HIDWORD(ROI);
  }

  v17 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(v12 | (v13 << 32), v14, v17);
}

void HBadTV::~HBadTV(HGNode *this)
{
  HgcBadTV::~HgcBadTV(this);

  HGObject::operator delete(v1);
}

void sub_25F9F0C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a19)
  {
    (*(*a19 + 24))(a19);
  }

  PCArray<HGRef<HGNode>,PCArray_Traits<HGRef<HGNode>>>::~PCArray(&a36);
  if (a39)
  {
    (*(*a39 + 24))(a39);
  }

  _Unwind_Resume(a1);
}

void PCArray<HGRef<HGNode>,PCArray_Traits<HGRef<HGNode>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871D5D70;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<HGRef<HGNode>,PCArray_Traits<HGRef<HGNode>>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<HGRef<HGNode>,PCArray_Traits<HGRef<HGNode>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871D5D70;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<HGRef<HGNode>,PCArray_Traits<HGRef<HGNode>>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void PCArray<HGRef<HGNode>,PCArray_Traits<HGRef<HGNode>>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v18, "PCArray::resize");
    PCException::PCException(exception, &v18);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (v6 <= a2)
    {
      if (v6 < a2)
      {
        bzero((*(a1 + 16) + 8 * v6), 8 * (~v6 + a2) + 8);
      }
    }

    else
    {
      v7 = 8 * a2;
      v8 = a2;
      do
      {
        v9 = *(*(a1 + 16) + v7);
        if (v9)
        {
          (*(*v9 + 24))(v9);
          v6 = *(a1 + 12);
        }

        v7 += 8;
        ++v8;
      }

      while (v6 > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v10 = *(a1 + 12);
    if (a2 >= v10)
    {
      LODWORD(v11) = *(a1 + 12);
    }

    else
    {
      LODWORD(v11) = a2;
    }

    if (v11 < 1)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = *(v12 + *(a1 + 16));
        *v12 = v13;
        if (v13)
        {
          (*(*v13 + 16))(v13);
          v14 = *(v12 + *(a1 + 16));
          if (v14)
          {
            (*(*v14 + 24))(v14);
          }
        }

        ++v12;
      }

      while ((8 * v11) != v12);
      v10 = *(a1 + 12);
    }

    if (v11 < v10)
    {
      v11 = v11;
      do
      {
        v15 = *(*(a1 + 16) + 8 * v11);
        if (v15)
        {
          (*(*v15 + 24))(v15);
          v10 = *(a1 + 12);
        }

        ++v11;
      }

      while (v10 > v11);
    }

    if (v11 < a2)
    {
      bzero((8 * v11), 8 * (~v11 + a2) + 8);
    }

    v16 = *(a1 + 16);
    if (v16)
    {
      MEMORY[0x2666E9ED0](v16, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

void sub_25F9F1C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9F2944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9F3A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  (*(*v11 + 24))(v11);
  _Unwind_Resume(a1);
}

void sub_25F9F4660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  (*(*v4 + 24))(v4);
  HGTransform::~HGTransform(va);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  _Unwind_Resume(a1);
}

void sub_25F9F4E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9F5614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_25F9F6684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (a25)
  {
    (*(*a25 + 24))(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9F7AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9F7D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void std::vector<RGBA8Pixel>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 2;
    if ((v7 + 1) >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v10);
    }

    v11 = (4 * v7);
    *v11 = *a2;
    v6 = 4 * v7 + 4;
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

void sub_25F9F85BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9F87D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9F94B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_25F9F9EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v35 + 24))(v35);
  if (a35)
  {
    (*(*a35 + 24))(a35);
  }

  _Unwind_Resume(a1);
}

void sub_25F9FAE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  (*(*v36 + 24))(v36);
  if (a36)
  {
    (*(*a36 + 24))(a36);
  }

  _Unwind_Resume(a1);
}

void sub_25F9FB888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9FC49C()
{
  if (*v0)
  {
    (*(**v0 + 24))(*v0);
  }

  JUMPOUT(0x25F9FC494);
}

void sub_25F9FCD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HGObject::operator delete(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25F9FD390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(*v12 + 24))(v12);
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  _Unwind_Resume(a1);
}

void sub_25F9FDDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F9FE614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v10 + 24))(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25F9FE8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HGObject::operator delete(v10);
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  _Unwind_Resume(a1);
}

void sub_25F9FF0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v35 + 24))(v35);
  if (a35)
  {
    (*(*a35 + 24))(a35);
  }

  _Unwind_Resume(a1);
}

void sub_25F9FFAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  (*(*v34 + 24))(v34);
  HGTransform::~HGTransform(&a12);
  (*(*v33 + 24))(v33);
  (*(*v32 + 24))(v32);
  (*(*v31 + 24))(v31);
  HGTransform::~HGTransform(&a30);
  (*(*v30 + 24))(v30);
  v37 = *(v35 - 216);
  if (v37)
  {
    (*(*v37 + 24))(v37);
  }

  _Unwind_Resume(a1);
}

void sub_25FA0093C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::UploadCurveAndSetParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0.0;
  PAEUpload1DCurve<double,1024u>(a1 + 32, a2, a3, 0, 0, 0.0, 1.0);
  if ((a4 & 0x80000000) == 0)
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    (*(*a2 + 96))(a2, a4, v10, v11, v12, 0.0);
  }

  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[4] - v15;
  if (v17 != 0.0)
  {
    v9 = (v13[5] - v16) / v17;
  }

  v18 = v15;
  v19 = v16;
  v20 = 0.0;
  (*(*a2 + 96))(a2, a5, v18, v19, v9, 0.0);
  v22.n128_u64[0] = *(v14 - 16);
  v23.n128_u64[0] = *(v14 - 8);
  v24.n128_f64[0] = v22.n128_f64[0] - *(v14 - 40);
  if (v24.n128_f64[0] != 0.0)
  {
    v24.n128_f64[0] = (v23.n128_f64[0] - *(v14 - 32)) / v24.n128_f64[0];
    v20 = v24.n128_f64[0];
  }

  v22.n128_f32[0] = v22.n128_f64[0];
  v23.n128_f32[0] = v23.n128_f64[0];
  v25 = *(*a2 + 96);
  v21.n128_u64[0] = 0;
  v24.n128_f32[0] = v20;

  return v25(a2, (a5 + 1), v22, v23, v24, v21);
}

void anonymous namespace::HgColorCurves::~HgColorCurves(HGNode *this)
{
  HgcColorCurves::~HgcColorCurves(this);

  HGObject::operator delete(v1);
}

uint64_t anonymous namespace::HgColorCurves::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t anonymous namespace::HgColorCurves::GetROI(_anonymous_namespace_::HgColorCurves *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (!a3)
  {
    return *&a4.var0;
  }

  if (a3 > 4)
  {
    return 0;
  }

  return HGRectMake4i(0, 0, 0x400u, 1u);
}

uint64_t ___ZN12_GLOBAL__N_113PAEUseACEScctEv_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  return result;
}

uint64_t PAEUpload1DCurve<double,1024u>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7)
{
  v14 = HGRectMake4i(0, 0, 0x400u, 1u);
  v16 = v15;
  v17 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v17, v14, v16, 3);
  (*(*a1 + 24))(a1, v17[10], 1024, a4, a5, a6, a7);
  PAEUploadBitmap(v17, a2, a3);
  v18 = *(*v17 + 24);

  return v18(v17);
}

void sub_25FA01BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v12 + 24))(v12);
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t PAEKeyerOMKeyer2D::PAEKeyerOMKeyer2D(uint64_t a1, int a2)
{
  *a1 = &unk_287259CB8;
  *(a1 + 56) = 0;
  std::vector<float>::vector[abi:ne200100]((a1 + 72), 0x100uLL);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 232) = a2;
  *a1 = &unk_2871D6078;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1065353216;
  *(a1 + 264) = 0;
  OMUtilErf::setSigma((a1 + 96), 1.0, 0.0, 256);
  (*(*a1 + 152))(a1, 1.0, 0.0);
  return a1;
}

void PAEKeyerOMKeyer2D::~PAEKeyerOMKeyer2D(id *this)
{
  PAEKeyerOMKeyer2D::~PAEKeyerOMKeyer2D(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2871D6078;

  OMKeyer2D::~OMKeyer2D(this);
}

void PAEKeyerOMKeyer2D::setSoftSigmaLuma(PAEKeyerOMKeyer2D *this, float a2, float a3)
{
  *(this + 64) = a2;
  *(this + 66) = a3;
  OMUtilErf::setSigma((this + 96), a2, a3, 256);
}

void PAEKeyerOMKeyer2D::setSoftSigmaChroma(PAEKeyerOMKeyer2D *this, float a2, float a3)
{
  *(this + 65) = a2;
  *(this + 67) = a3;
  OMUtilErf::setSigma((this + 120), a2, a3, 256);
}

void sub_25FA02328(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA02D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  JUMPOUT(0x25FA02D58);
}

void sub_25FA03AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_25FA04388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA04FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  if (a22)
  {
    (*(*a22 + 24))(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA08690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  (*(*v13 + 24))(v13);
  _Unwind_Resume(a1);
}

void sub_25FA096A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  _Unwind_Resume(a1);
}

void sub_25FA0A51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  if (a18)
  {
    (*(*a18 + 24))(a18);
  }

  if (a20)
  {
    (*(*a20 + 24))(a20);
  }

  if (a23)
  {
    (*(*a23 + 24))(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HRingLens::GetDOD(HRingLens *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v22 = 1.0;
  v19 = 0x3FF0000000000000;
  v16 = 1.0;
  v13 = 1.0;
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0u;
  v20 = 0u;
  v21 = 0u;
  PCMatrix44Tmpl<double>::planarInverseZ(&v13, this + 53, 0.0);
  v7 = *(this + 104);
  v8 = -v7;
  v4 = HGRectMake4i(vcvtmd_s64_f64((*&v15 + v13 * v8 + *&v14 * v8) / (v22 + *(&v20 + 1) * v8 + *&v21 * v8)), vcvtmd_s64_f64((*(&v17 + 1) + *(&v15 + 1) * v8 + v16 * v8) / (v22 + *(&v20 + 1) * v8 + *&v21 * v8)), vcvtpd_s64_f64((*&v15 + v13 * v7 + *&v14 * v7) / (v22 + *(&v20 + 1) * v7 + *&v21 * v7)), vcvtpd_s64_f64((*(&v17 + 1) + *(&v15 + 1) * v7 + v16 * v7) / (v22 + *(&v20 + 1) * v7 + *&v21 * v7)));
  v10 = v9;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v11 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v4, v10, v11);
  }

  return v4;
}

unint64_t HRingLens::GetROI(HRingLens *this, HGRenderer *a2, int a3, HGRect a4)
{
  var2 = a4.var2;
  var0 = a4.var0;
  v73 = *MEMORY[0x277D85DE8];
  var1 = a4.var1;
  var3 = a4.var3;
  if (a3 == 1)
  {
    (*(*this + 104))(this, 0, &v71);
    v9 = v71;
    v10 = v72;
    (*(*this + 104))(this, 1, &v71);
    v11 = v71;
    v12 = v72.f32[0];
    (*(*this + 104))(this, 3, &v71);
    v13 = v71;
    (*(*this + 104))(this, 4, &v71);
    v66 = v71.f32[1];
    v68 = v72.f32[0];
    v69 = v71.f32[0];
    v70 = v72.f32[1];
    (*(*this + 104))(this, 5, &v71);
    v14 = var1;
    v15 = var0;
    v16 = var2;
    v17 = vneg_f32(v13);
    v67 = var3;
    if (var0 <= var2)
    {
      v20 = v66;
      v22 = v69;
      v23 = (v66 * v14) + v70;
      v24 = v23 * v23;
      v25 = v23;
      v26 = (v66 * var3) + v70;
      v27 = v26 * v26;
      v28 = v26;
      v18 = 0x80000000800000;
      v19 = vneg_f32(0x80000000800000);
      v21 = v68;
      do
      {
        v29 = v68 + (v69 * v15);
        v30 = v29 * v29;
        v31 = (v24 + (v29 * v29));
        *&v32 = sqrt(v31 + 0.000001);
        v33.f64[0] = v29;
        *&v31 = v31 / *&v32;
        *&v31 = fmaxf(fminf(v9.f32[1] + (v9.f32[0] * *&v31), 1.0), 0.0);
        v34.f64[0] = v33.f64[0];
        v34.f64[1] = v25;
        v35 = vcvt_f32_f64(vdivq_f64(v34, vdupq_lane_s64(v32, 0)));
        v36 = (v27 + v30);
        v34.f64[0] = sqrt(v36 + 0.000001);
        v33.f64[1] = v28;
        *&v36 = v36 / v34.f64[0];
        *&v36 = v10.f32[1] + (v10.f32[0] * fmaxf(fminf(v9.f32[1] + (v9.f32[0] * *&v36), 1.0), 0.0));
        v37 = vadd_f32(v72, vmul_f32(v71, vmul_n_f32(v35, v12 * fmaxf(fminf(v11.f32[1] + (v11.f32[0] * ((v10.f32[1] + (v10.f32[0] * *&v31)) * (1.0 / (((v10.f32[1] + (v10.f32[0] * *&v31)) + 1.0) * (1.0 - (v10.f32[1] + (v10.f32[0] * *&v31))))))), 1.0), 0.0))));
        v38 = vbsl_s8(vcgt_f32(v37, v17), v37, v17);
        v39 = vbsl_s8(vcgt_f32(v13, v38), v38, v13);
        *&v33.f64[0] = vadd_f32(v72, vmul_f32(v71, vmul_n_f32(vcvt_f32_f64(vdivq_f64(v33, vdupq_lane_s64(*&v34.f64[0], 0))), v12 * fmaxf(fminf(v11.f32[1] + (v11.f32[0] * (*&v36 * (1.0 / ((*&v36 + 1.0) * (1.0 - *&v36))))), 1.0), 0.0))));
        v40 = vbsl_s8(vcgt_f32(v18, v39), v18, v39);
        *&v33.f64[0] = vbsl_s8(vcgt_f32(*&v33.f64[0], v17), *&v33.f64[0], v17);
        *&v33.f64[0] = vbsl_s8(vcgt_f32(v13, *&v33.f64[0]), *&v33.f64[0], v13);
        v41 = vbsl_s8(vcgt_f32(v39, v19), v19, v39);
        v19 = vbsl_s8(vcgt_f32(*&v33.f64[0], v41), v41, *&v33.f64[0]);
        v15 = v15 + 1.0;
        v18 = vbsl_s8(vcgt_f32(v40, *&v33.f64[0]), v40, *&v33.f64[0]);
      }

      while (v15 <= v16);
    }

    else
    {
      v18 = 0x80000000800000;
      v19 = vneg_f32(0x80000000800000);
      v20 = v66;
      v21 = v68;
      v22 = v69;
    }

    if (v14 <= v67)
    {
      v43 = v22;
      v44 = (v22 * var0) + v21;
      v45 = v44 * v44;
      v46 = v44;
      v47 = (v43 * v16) + v21;
      v48 = v47 * v47;
      v49 = v47;
      do
      {
        v50 = v70 + (v20 * v14);
        v51 = (v45 + (v50 * v50));
        *&v52 = sqrt(v51 + 0.000001);
        v53.f64[0] = v46;
        v53.f64[1] = v50;
        *&v53.f64[0] = vcvt_f32_f64(vdivq_f64(v53, vdupq_lane_s64(v52, 0)));
        *&v51 = v51 / *&v52;
        *&v51 = fmaxf(fminf(v9.f32[1] + (v9.f32[0] * *&v51), 1.0), 0.0);
        v54 = (v48 + (v50 * v50));
        *&v55 = sqrt(v54 + 0.000001);
        v56.f64[0] = v49;
        v56.f64[1] = v50;
        *&v54 = v54 / *&v55;
        *&v54 = v10.f32[1] + (v10.f32[0] * fmaxf(fminf(v9.f32[1] + (v9.f32[0] * *&v54), 1.0), 0.0));
        v57 = vadd_f32(v72, vmul_f32(v71, vmul_n_f32(*&v53.f64[0], v12 * fmaxf(fminf(v11.f32[1] + (v11.f32[0] * ((v10.f32[1] + (v10.f32[0] * *&v51)) * (1.0 / (((v10.f32[1] + (v10.f32[0] * *&v51)) + 1.0) * (1.0 - (v10.f32[1] + (v10.f32[0] * *&v51))))))), 1.0), 0.0))));
        v58 = vbsl_s8(vcgt_f32(v57, v17), v57, v17);
        v59 = vbsl_s8(vcgt_f32(v13, v58), v58, v13);
        v60 = vadd_f32(v72, vmul_f32(v71, vmul_n_f32(vcvt_f32_f64(vdivq_f64(v56, vdupq_lane_s64(v55, 0))), v12 * fmaxf(fminf(v11.f32[1] + (v11.f32[0] * (*&v54 * (1.0 / ((*&v54 + 1.0) * (1.0 - *&v54))))), 1.0), 0.0))));
        v61 = vbsl_s8(vcgt_f32(v18, v59), v18, v59);
        v62 = vbsl_s8(vcgt_f32(v60, v17), v60, v17);
        v63 = vbsl_s8(vcgt_f32(v13, v62), v62, v13);
        v64 = vbsl_s8(vcgt_f32(v59, v19), v19, v59);
        v19 = vbsl_s8(vcgt_f32(v63, v64), v64, v63);
        v14 = v14 + 1.0;
        v18 = vbsl_s8(vcgt_f32(v61, v63), v61, v63);
      }

      while (v14 <= v67);
      v42 = v19.f32[1];
    }

    else
    {
      v42 = v19.f32[1];
    }

    var0 = v19.f32[0] - 2;
    var1 = (v42 - 2);
  }

  return var0 | (var1 << 32);
}

uint64_t HRingLens::SetRadius(HRingLens *this, float a2, float a3)
{
  *(this + 104) = a2;
  *(this + 105) = a3;
  return (*(*this + 96))(this, 2);
}

uint64_t HRingLens::SetOutputToImage(double *a1, double *a2)
{
  v2 = a1 + 53;
  if (a1 + 53 != a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v2[i] = v4[i];
      }

      ++v3;
      v2 += 4;
      v4 += 4;
    }

    while (v3 != 4);
  }

  v6 = *a2;
  v7 = a2[5];
  v8 = a2[3];
  v9 = a2[7];
  return (*(*a1 + 96))(a1, 4, v6, v7, v8, v9);
}

uint64_t HRingLens::SetImageToInput(double *a1, double *a2)
{
  v2 = a1 + 69;
  if (a1 + 69 != a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v2[i] = v4[i];
      }

      ++v3;
      v2 += 4;
      v4 += 4;
    }

    while (v3 != 4);
  }

  v6 = *a2;
  v7 = a2[5];
  v8 = a2[3];
  v9 = a2[7];
  return (*(*a1 + 96))(a1, 5, v6, v7, v8, v9);
}

void HRingLens::~HRingLens(HGNode *this)
{
  HgcRingLens::~HgcRingLens(this);

  HGObject::operator delete(v1);
}

uint64_t HRectToPolar::GetDOD(HRectToPolar *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return HGRectMake4i(vcvtms_s32_f32(*(this + 104)), vcvtms_s32_f32(*(this + 105)), vcvtps_s32_f32(*(this + 106)), vcvtps_s32_f32(*(this + 107)));
  }
}

unint64_t HRectToPolar::GetROI(HRectToPolar *this, HGRenderer *a2, int a3, HGRect a4)
{
  v84 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    var2 = a4.var2;
    var0 = a4.var0;
    var3 = a4.var3;
    var1 = a4.var1;
    (*(*this + 104))(this, 0, &v82);
    v78 = v82;
    (*(*this + 104))(this, 1, &v82);
    v11 = v82;
    v70 = v83;
    (*(*this + 104))(this, 2, &v82);
    v12 = v82;
    (*(*this + 104))(this, 4, &v82);
    v13 = v82;
    v68 = v83;
    (*(*this + 104))(this, 5, &v82);
    v74 = v83;
    v75 = v82;
    (*(*this + 104))(this, 6, &v82);
    v14 = v82;
    v76 = v83;
    (*(*this + 104))(this, 3, &v82);
    v15 = v82;
    v16 = var1;
    v17 = var3;
    v77 = v12;
    v73 = v82;
    v65 = var3;
    v71 = v11;
    v69 = v13;
    v60 = var1;
    if (var1 <= var3)
    {
      v63 = ((v13 * var0) + v14) - v11;
      v66 = var2;
      v61 = ((v13 * var2) + v14) - v11;
      v20 = -3.4028e38;
      v21 = 3.4028e38;
      v19 = 3.4028e38;
      v79 = -3.4028e38;
      do
      {
        v22 = v15 != -1.0;
        v23 = (v76 + (v68 * v16)) - v70;
        v24 = atan2f(v63, v23);
        if (v24 < 0.0)
        {
          v25 = v24 + 6.28318531;
          v24 = v25;
        }

        v26 = v78 * v24;
        if (v22 && v26 < v14)
        {
          v26 = v77;
        }

        v27 = v75 * (v26 - v14);
        v28 = v74 * (sqrtf((v63 * v63) + (v23 * v23)) - v76);
        if (v19 >= v27)
        {
          v19 = v27;
        }

        if (v21 >= v28)
        {
          v21 = v28;
        }

        if (v79 > v27)
        {
          v27 = v79;
        }

        v80 = v27;
        if (v20 <= v28)
        {
          v20 = v28;
        }

        v29 = atan2f(v61, (v76 + (v68 * v16)) - v70);
        v17 = var3;
        v15 = v73;
        if (v29 < 0.0)
        {
          v30 = v29 + 6.28318531;
          v29 = v30;
        }

        v31 = v78 * v29;
        if (v22 && v31 < v14)
        {
          v31 = v77;
        }

        v32 = v75 * (v31 - v14);
        v33 = v74 * (sqrtf((v61 * v61) + (v23 * v23)) - v76);
        if (v19 >= v32)
        {
          v19 = v32;
        }

        if (v21 >= v33)
        {
          v21 = v33;
        }

        if (v80 > v32)
        {
          v32 = v80;
        }

        v79 = v32;
        if (v20 <= v33)
        {
          v20 = v33;
        }

        v16 = v16 + 1.0;
      }

      while (v16 <= v65);
      v18 = v66;
    }

    else
    {
      v18 = var2;
      v19 = 3.4028e38;
      v20 = -3.4028e38;
      v79 = -3.4028e38;
      v21 = 3.4028e38;
    }

    v34 = (var0 + 1);
    if (v18 > v34)
    {
      v64 = ((v68 * v60) + v76) - v70;
      v62 = ((v68 * v17) + v76) - v70;
      v67 = v18;
      do
      {
        v35 = v15 != -1.0;
        v36 = (v14 + (v69 * v34)) - v11;
        v37 = atan2f(v36, v64);
        if (v37 < 0.0)
        {
          v38 = v37 + 6.28318531;
          v37 = v38;
        }

        v39 = v78 * v37;
        if (v35 && v39 < v14)
        {
          v39 = v77;
        }

        v40 = v75 * (v39 - v14);
        v41 = v74 * (sqrtf((v64 * v64) + (v36 * v36)) - v76);
        if (v19 >= v40)
        {
          v19 = v40;
        }

        if (v21 >= v41)
        {
          v21 = v41;
        }

        if (v79 > v40)
        {
          v40 = v79;
        }

        v81 = v40;
        if (v20 <= v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = v20;
        }

        v72 = v42;
        v43 = atan2f((v14 + (v69 * v34)) - v11, v62);
        v18 = v67;
        v15 = v73;
        if (v43 < 0.0)
        {
          v44 = v43 + 6.28318531;
          v43 = v44;
        }

        v45 = v78 * v43;
        if (v35 && v45 < v14)
        {
          v45 = v77;
        }

        v46 = v75 * (v45 - v14);
        v47 = v74 * (sqrtf((v62 * v62) + (v36 * v36)) - v76);
        if (v19 >= v46)
        {
          v19 = v46;
        }

        if (v21 >= v47)
        {
          v21 = v47;
        }

        if (v81 > v46)
        {
          v46 = v81;
        }

        v79 = v46;
        if (v72 <= v47)
        {
          v20 = v47;
        }

        else
        {
          v20 = v72;
        }

        v34 = v34 + 1.0;
      }

      while (v34 < v67);
    }

    v48 = (v11 - v14) / v69;
    if (v48 >= var0 && v48 <= v18)
    {
      v49 = (v70 - v76) / v68;
      if (v49 >= v60 && v49 <= v65)
      {
        v50 = (v14 + (v69 * v48)) - v11;
        v51 = (v76 + (v68 * v49)) - v70;
        v52 = v15;
        v53 = atan2f((v14 + (v69 * v48)) - v71, v51);
        if (v53 < 0.0)
        {
          v54 = v53 + 6.28318531;
          v53 = v54;
        }

        v55 = v78 * v53;
        if (v55 < v14 && v52 != -1.0)
        {
          v55 = v77;
        }

        v57 = v75 * (v55 - v14);
        v58 = v74 * (sqrtf((v50 * v50) + (v51 * v51)) - v76);
        if (v19 >= v57)
        {
          v19 = v57;
        }

        if (v21 >= v58)
        {
          v21 = v58;
        }
      }
    }

    v4 = ((v19 + -2.0) + -18.0);
    v5 = (v21 + -2.0);
  }

  return v4 | (v5 << 32);
}

void HRectToPolar::~HRectToPolar(HGNode *this)
{
  HgcRectToPolar::~HgcRectToPolar(this);

  HGObject::operator delete(v1);
}

uint64_t HScrape::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

float32x2_t HScrape::_TransformPoint@<D0>(float32x2_t *a1@<X1>, float32x2_t *a2@<X2>, float32x2_t *a3@<X3>, float32x2_t *a4@<X4>, float32x2_t *a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  v7 = vdiv_f32(vsub_f32(*a1, *a3), *a2);
  v8 = vaddv_f32(vmul_f32(v7, *a4));
  v9 = 0.0;
  if (v8 >= 0.0)
  {
    v10 = -v8;
    if ((v8 - a6) >= 0.0)
    {
      v9 = a6 * 0.5 + v10;
    }

    else
    {
      v11 = v8 * 0.5 * a7;
      v9 = v10 * v11;
    }
  }

  result = vadd_f32(*a3, vmul_f32(*a2, vadd_f32(v7, vmul_n_f32(*a4, v9))));
  *a5 = result;
  return result;
}

unint64_t HScrape::GetROI(HScrape *this, HGRenderer *a2, int a3, HGRect a4)
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    var2 = a4.var2;
    var0 = a4.var0;
    var3 = a4.var3;
    var1 = a4.var1;
    (*(*this + 104))(this, 0, v26);
    v25 = v26[0];
    (*(*this + 104))(this, 1, v26);
    v24 = v26[0];
    (*(*this + 104))(this, 2, v26);
    v11 = v26[0].f32[0];
    (*(*this + 104))(this, 3, v26);
    v12 = v26[0].f32[0];
    (*(*this + 104))(this, 4, v26);
    v23 = v26[0];
    v26[0].f32[0] = var0;
    v26[0].f32[1] = var1;
    HScrape::_TransformPoint(v26, &v23, &v25, &v24, &v22, v11, v12);
    if (v22.f32[0] <= 3.4028e38)
    {
      v13 = v22.f32[0];
    }

    else
    {
      v13 = 3.4028e38;
    }

    if (v22.f32[1] <= 3.4028e38)
    {
      v14 = v22.f32[1];
    }

    else
    {
      v14 = 3.4028e38;
    }

    v26[0].f32[0] = var0;
    v26[0].f32[1] = var3;
    HScrape::_TransformPoint(v26, &v23, &v25, &v24, &v22, v11, v12);
    if (v13 >= v22.f32[0])
    {
      v15 = v22.f32[0];
    }

    else
    {
      v15 = v13;
    }

    if (v14 >= v22.f32[1])
    {
      v16 = v22.f32[1];
    }

    else
    {
      v16 = v14;
    }

    v26[0].f32[0] = var2;
    v26[0].f32[1] = var3;
    HScrape::_TransformPoint(v26, &v23, &v25, &v24, &v22, v11, v12);
    if (v15 >= v22.f32[0])
    {
      v17 = v22.f32[0];
    }

    else
    {
      v17 = v15;
    }

    if (v16 >= v22.f32[1])
    {
      v18 = v22.f32[1];
    }

    else
    {
      v18 = v16;
    }

    v26[0].f32[0] = var2;
    v26[0].f32[1] = var1;
    HScrape::_TransformPoint(v26, &v23, &v25, &v24, &v22, v11, v12);
    if (v17 >= v22.f32[0])
    {
      v19 = v22.f32[0];
    }

    else
    {
      v19 = v17;
    }

    if (v18 >= v22.f32[1])
    {
      v20 = v22.f32[1];
    }

    else
    {
      v20 = v18;
    }

    v4 = (v19 + -2.0);
    v5 = (v20 + -2.0);
  }

  return v4 | (v5 << 32);
}

void HScrape::~HScrape(HGNode *this)
{
  HgcScrape::~HgcScrape(this);

  HGObject::operator delete(v1);
}

uint64_t HSphere::GetDOD(HSphere *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0x8000000080000000;
  }

  v20 = v4;
  v21 = v5;
  v19 = 1.0;
  v16 = 0x3FF0000000000000;
  v13 = 1.0;
  v10 = 1.0;
  v11 = 0u;
  v12 = 0u;
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0u;
  PCMatrix44Tmpl<double>::planarInverseZ(&v10, this + 53, 0.0);
  v8 = *(this + 104);
  v9 = -v8;
  return HGRectMake4i((floor((*&v12 + v10 * v9 + *&v11 * v9) / (v19 + *(&v17 + 1) * v9 + *&v18 * v9)) + -1.0), (floor((*(&v14 + 1) + *(&v12 + 1) * v9 + v13 * v9) / (v19 + *(&v17 + 1) * v9 + *&v18 * v9)) + -1.0), (ceil((*&v12 + v10 * v8 + *&v11 * v8) / (v19 + *(&v17 + 1) * v8 + *&v18 * v8)) + 1.0), (ceil((*(&v14 + 1) + *(&v12 + 1) * v8 + v13 * v8) / (v19 + *(&v17 + 1) * v8 + *&v18 * v8)) + 1.0));
}

unint64_t HSphere::GetROI(HSphere *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    var2 = a4.var2;
    var0 = a4.var0;
    var1 = a4.var1;
    var3 = a4.var3;
    if (a4.var2 - a4.var0 < 1)
    {
      v14 = -1.79769313e308;
      v15 = 1.79769313e308;
      v11 = 1.79769313e308;
      v12 = -1.79769313e308;
    }

    else
    {
      v11 = 1.79769313e308;
      v12 = -1.79769313e308;
      v13 = a4.var0;
      v14 = -1.79769313e308;
      v15 = 1.79769313e308;
      do
      {
        v29.x = v13;
        v29.y = var1;
        v16 = HSphere::ConvertPoint(this, v29);
        if (v16 < v15)
        {
          v15 = v16;
        }

        if (v14 < v16)
        {
          v14 = v16;
        }

        if (v17 < v11)
        {
          v11 = v17;
        }

        if (v12 < v17)
        {
          v12 = v17;
        }

        v30.x = v13;
        v30.y = var3;
        v18 = HSphere::ConvertPoint(this, v30);
        if (v18 < v15)
        {
          v15 = v18;
        }

        if (v14 < v18)
        {
          v14 = v18;
        }

        if (v19 < v11)
        {
          v11 = v19;
        }

        if (v12 < v19)
        {
          v12 = v19;
        }

        ++v13;
      }

      while (var2 != v13);
    }

    if (~var1 + var3 > 1)
    {
      v20 = var0;
      v21 = var2;
      v22 = var3 - var1 - 2;
      v23 = var1 + 1;
      do
      {
        v31.x = v20;
        v31.y = v23;
        v24 = HSphere::ConvertPoint(this, v31);
        if (v24 < v15)
        {
          v15 = v24;
        }

        if (v14 < v24)
        {
          v14 = v24;
        }

        if (v25 < v11)
        {
          v11 = v25;
        }

        if (v12 < v25)
        {
          v12 = v25;
        }

        v32.x = v21;
        v32.y = v23;
        v26 = HSphere::ConvertPoint(this, v32);
        if (v26 < v15)
        {
          v15 = v26;
        }

        if (v14 < v26)
        {
          v14 = v26;
        }

        if (v27 < v11)
        {
          v11 = v27;
        }

        if (v12 < v27)
        {
          v12 = v27;
        }

        ++v23;
        --v22;
      }

      while (v22);
    }

    v4 = (v15 + -1.0);
    v5 = (v11 + -2.0);
  }

  return v4 | (v5 << 32);
}

double HSphere::ConvertPoint(HSphere *this, CGPoint a2)
{
  v2 = a2.x * *(this + 53) + *(this + 56);
  v3 = a2.y * *(this + 58) + *(this + 60);
  v4 = sqrt(v2 * v2 + v3 * v3);
  v5 = *(this + 104);
  v6 = 1.0 - v4 / v5;
  v7 = sqrt(v6);
  if (v6 > 0.0)
  {
    v5 = (1.0 - v7) * v5;
  }

  return *(this + 72) + *(this + 69) * (v2 / v4 * v5);
}

uint64_t HSphere::SetOutputToImage(double *a1, double *a2)
{
  v2 = a1 + 53;
  if (a1 + 53 != a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v2[i] = v4[i];
      }

      ++v3;
      v2 += 4;
      v4 += 4;
    }

    while (v3 != 4);
  }

  v6 = *a2;
  v7 = a2[5];
  v8 = a2[3];
  v9 = a2[7];
  return (*(*a1 + 96))(a1, 1, v6, v7, v8, v9);
}

uint64_t HSphere::SetImageToInput(double *a1, double *a2)
{
  v2 = a1 + 69;
  if (a1 + 69 != a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v2[i] = v4[i];
      }

      ++v3;
      v2 += 4;
      v4 += 4;
    }

    while (v3 != 4);
  }

  v6 = *a2;
  v7 = a2[5];
  v8 = a2[3];
  v9 = a2[7];
  return (*(*a1 + 96))(a1, 2, v6, v7, v8, v9);
}

void HSphere::~HSphere(HGNode *this)
{
  HgcSphere::~HgcSphere(this);

  HGObject::operator delete(v1);
}

uint64_t HStarburst::GetDOD(HStarburst *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 > 1)
  {
    return 0;
  }

  else
  {
    return HGRectMake4i(vcvtms_s32_f32(*(this + 104)), vcvtms_s32_f32(*(this + 105)), vcvtps_s32_f32(*(this + 106)), vcvtps_s32_f32(*(this + 107)));
  }
}

unint64_t HStarburst::GetROI(HStarburst *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 > 1)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    (*(*this + 104))(this, 0, &v11, *&a4.var0, *&a4.var2);
    v5 = v11;
    v6 = v12;
    (*(*this + 104))(this, 1, &v11);
    v7 = v11;
    (*(*this + 104))(this, 2, &v11);
    v8 = vcvtms_s32_f32((v5 - ((1.0 / v7) / v11)) + -1.0);
    LODWORD(v9) = vcvtms_s32_f32((v6 - ((1.0 / v7) / v12)) + -1.0);
  }

  return v8 | (v9 << 32);
}

uint64_t HStarburst::GetOutput(HStarburst *this, HGRenderer *a2)
{
  if ((*(*a2 + 304))(a2))
  {
    (*(*this + 136))(this, 0, 2);
  }

  return HgcStarburst::GetOutput(this, a2);
}

void HStarburst::~HStarburst(HGNode *this)
{
  HgcStarburst::~HgcStarburst(this);

  HGObject::operator delete(v1);
}

void sub_25FA0D628(_Unwind_Exception *a1)
{
  v4 = *(v2 - 160);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  (*(*v1 + 24))(v1);
  v5 = *(v2 - 144);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t HTarget::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (a1 + 424);
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

unint64_t HTarget::GetROI(HTarget *this, HGRenderer *a2, int a3, HGRect a4)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    var2 = a4.var2;
    var0 = a4.var0;
    var3 = a4.var3;
    var1 = a4.var1;
    (*(*this + 104))(this, 0, &v50);
    v12 = v50;
    v11 = v51;
    (*(*this + 104))(this, 1, &v50);
    v13 = v50;
    v14 = v51;
    (*(*this + 104))(this, 2, &v50);
    v15 = v50;
    v16 = v51;
    v17 = v52;
    v18 = v53;
    (*(*this + 104))(this, 3, &v50);
    v19 = var0 + 0.5 - v12;
    v20 = var1 + 0.5 - v11;
    v21 = var2 + -0.5 - v12;
    v22 = var3 + -0.5 - v11;
    v23 = v15 * v19;
    v24 = v15 * v21;
    v25 = v16 * v20;
    v26 = v16 * v22;
    if (v23 <= v24)
    {
      v27 = v23;
    }

    else
    {
      v27 = v24;
    }

    if (v23 <= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v23;
    }

    if (v25 <= v26)
    {
      v29 = v25;
    }

    else
    {
      v29 = v26;
    }

    if (v25 <= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v25;
    }

    v31 = v27 * v27;
    v32 = v29 * v29;
    v33 = (v27 * v27) + (v29 * v29);
    if (v27 > 0.0 || v28 < 0.0 || v29 > 0.0 || (v34 = 0.0, v30 < 0.0))
    {
      v34 = 3.4028e38;
      if (v33 < 3.4028e38)
      {
        v34 = v33;
      }
    }

    v35 = fmaxf(v33, 0.0);
    v36 = v28 * v28;
    if (v34 > (v36 + v32))
    {
      v34 = v36 + v32;
    }

    if (v35 < (v36 + v32))
    {
      v35 = v36 + v32;
    }

    v37 = v30 * v30;
    if (v34 > (v37 + v31))
    {
      v34 = v37 + v31;
    }

    if (v35 < (v37 + v31))
    {
      v35 = v37 + v31;
    }

    if (v34 > (v36 + v37))
    {
      v34 = v36 + v37;
    }

    if (v35 < (v36 + v37))
    {
      v35 = v36 + v37;
    }

    if (v34 > v32)
    {
      v34 = v32;
    }

    if (v35 >= v32)
    {
      v32 = v35;
    }

    if (v34 <= v37)
    {
      v38 = v34;
    }

    else
    {
      v38 = v37;
    }

    if (v32 < v37)
    {
      v32 = v37;
    }

    if (v38 <= v31)
    {
      v39 = v38;
    }

    else
    {
      v39 = v27 * v27;
    }

    if (v32 >= v31)
    {
      v31 = v32;
    }

    if (v39 <= v36)
    {
      v40 = v39;
    }

    else
    {
      v40 = v36;
    }

    if (v31 < v36)
    {
      v31 = v36;
    }

    v41 = sqrtf(v40);
    v42 = sqrtf(v31);
    v43 = (v13 * v17) * v41;
    v44 = (v14 * v18) * v41;
    v45 = (v13 * v17) * v42;
    v46 = (v14 * v18) * v42;
    if (v43 <= v45)
    {
      v47 = v43;
    }

    else
    {
      v47 = v45;
    }

    if (v44 <= v46)
    {
      v48 = v44;
    }

    else
    {
      v48 = v46;
    }

    v4 = vcvtmd_s64_f64(((v12 * v50) + v47) + -0.5);
    LODWORD(v5) = vcvtmd_s64_f64(((v11 * v51) + v48) + -0.5);
  }

  return v4 | (v5 << 32);
}

uint64_t HTarget::GetOutput(int32x2_t *this, HGRenderer *a2)
{
  if ((*(*a2 + 304))(a2))
  {
    if (!HGRectIsInfinite(*&this[53], *&this[54]))
    {
      v4 = vsub_s32(this[54], this[53]);
      v5 = vmul_lane_s32(v4, v4, 1).i32[0];
      v6 = (*(*a2 + 128))(a2, 1);
      if (((v6 * 16.0) * v6) <= v5)
      {
        (*(*this + 136))(this, 0, 2);
      }
    }
  }

  return HgcTarget::GetOutput(this, a2);
}

uint64_t HTarget::SetFrameSize(uint64_t this, int a2, int a3)
{
  *(this + 416) = a2;
  *(this + 420) = a3;
  return this;
}

__n128 HTarget::SetCropRect(HTarget *this, __n128 *a2)
{
  result = *a2;
  *(this + 424) = *a2;
  return result;
}

void HTarget::~HTarget(HGNode *this)
{
  HgcTarget::~HgcTarget(this);

  HGObject::operator delete(v1);
}

void HTwirl::~HTwirl(HGNode *this)
{
  HgcTwirl::~HgcTwirl(this);

  HGObject::operator delete(v1);
}

uint64_t HTwirl::init(HTwirl *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  *(this + 104) = a2;
  *(this + 105) = a3;
  *(this + 106) = a4;
  *(this + 107) = a5;
  *(this + 108) = a6;
  *(this + 109) = a7;
  (*(*this + 96))(this, 0);
  (*(*this + 96))(this, 1, a4, a5, 0.0, 0.0);
  v14 = *(*this + 96);
  v15.n128_f32[0] = a6;
  v16.n128_f32[0] = a7;

  v12.n128_f32[0] = 1.0 / a6;
  v13.n128_f32[0] = 1.0 / a7;
  return v14(this, 2, v15, v16, v12, v13);
}

uint64_t HTwirl::GetDOD(HTwirl *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *(this + 106);
  return HGRectMake4i((*(this + 104) - (v5 / *(this + 108))), (*(this + 105) - (v5 / *(this + 109))), (*(this + 104) + (v5 / *(this + 108))), (*(this + 105) + (v5 / *(this + 109))));
}

unint64_t HTwirl::GetROI(HTwirl *this, HGRenderer *a2, int a3, HGRect a4, double a5, int32x2_t a6)
{
  if (a3)
  {
    return 0;
  }

  v7 = *&a4.var2;
  v6 = *&a4.var0;
  v8 = *(this + 104);
  v9 = *(this + 105);
  v62 = __PAIR64__(LODWORD(v9), LODWORD(v8));
  a6.i32[0] = *(this + 106);
  v59 = *(this + 107);
  v60 = a6;
  v10 = *(this + 108);
  v11 = *(this + 109);
  v63 = a4;
  v12 = HGRectMake4i(((v8 - *a6.i32) / v10), ((v9 - *a6.i32) / v11), ((v8 + *a6.i32) / v10), ((v9 + *a6.i32) / v11));
  v14 = HGRectUnion(v12, v13, v6, v7);
  if (!HGRectIsNull(v14, v15))
  {
    v16 = ((v6 - v8) * v10) * ((v6 - v8) * v10);
    v17 = ((SHIDWORD(v6) - v9) * v11) * ((SHIDWORD(v6) - v9) * v11);
    v18 = v16 + v17;
    v19 = ((SHIDWORD(v7) - v9) * v11) * ((SHIDWORD(v7) - v9) * v11);
    v20 = ((v7 - v8) * v10) * ((v7 - v8) * v10);
    v21 = v20 + v17;
    v22 = v20 + v19;
    if ((v16 + v17) >= (v16 + v19))
    {
      v23 = v16 + v17;
    }

    else
    {
      v23 = v16 + v19;
    }

    if (v21 >= v22)
    {
      v24 = v20 + v17;
    }

    else
    {
      v24 = v20 + v19;
    }

    if (v23 < v24)
    {
      v23 = v24;
    }

    if (v22 < v21)
    {
      v21 = v20 + v19;
    }

    if ((v16 + v19) < v18)
    {
      v18 = v16 + v19;
    }

    if (v21 < v18)
    {
      v18 = v21;
    }

    if (v8 > v6)
    {
      v25 = ((v8 - v8) * v10) * ((v8 - v8) * v10);
      v26 = v25 + v17;
      v27 = v25 + v19;
      if (v27 < v26)
      {
        v26 = v27;
      }

      if (v26 >= v18)
      {
        v26 = v18;
      }

      if (v8 < v7)
      {
        v18 = v26;
      }
    }

    if (v9 > SHIDWORD(v6))
    {
      v28 = ((v9 - v9) * v11) * ((v9 - v9) * v11);
      v29 = v16 + v28;
      v30 = v20 + v28;
      if (v30 < v29)
      {
        v29 = v30;
      }

      if (v29 >= v18)
      {
        v29 = v18;
      }

      if (v9 < SHIDWORD(v7))
      {
        v18 = v29;
      }
    }

    v31 = 0;
    if (*v60.i32 > 0.0)
    {
      v32 = sqrtf(v23);
      v33.f32[0] = sqrtf(v18);
      v33.f32[1] = v32;
      v34 = vdiv_f32(v33, vdup_lane_s32(v60, 0));
      __asm { FMOV            V1.2S, #1.0 }

      v40 = vbsl_s8(vcgt_f32(v34, _D1), _D1, v34);
      v41 = vmul_f32(v40, v40);
      v42 = vmul_f32(v40, v41);
      __asm { FMOV            V3.2S, #-3.0 }

      v31 = vmul_n_f32(vadd_f32(vadd_f32(vmul_f32(v41, _D3), _D1), vadd_f32(v42, v42)), v59);
    }

    v61 = v31;
    v46 = v45;
    v49 = HGRectUnion(v44, v46, v47, v48);
    v51 = v50;
    if (*&v61.i32[1] >= *v61.i32)
    {
      v52 = *v61.i32;
    }

    else
    {
      v52 = *&v61.i32[1];
    }

    if (*v61.i32 >= *&v61.i32[1])
    {
      v53 = *v61.i32;
    }

    else
    {
      v53 = *&v61.i32[1];
    }

    for (i = v52 + 0.1; i < v53; i = i + 0.1)
    {
      v49 = HGRectUnion(v49, v51, v55, v56);
      v51 = v57;
    }

    return (v49 & 0xFFFFFFFF00000000 | (v49 - 3)) - 0x300000000;
  }

  return v6;
}

uint64_t anonymous namespace::rotateRectROI(int *a1, float *a2, float a3, float a4, float a5)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = (*a1 - *a2) * a4;
  v10 = (a1[1] - v7) * a5;
  v11 = (a1[3] - v7) * a5;
  v12 = (a1[2] - *a2) * a4;
  v13 = __sincosf_stret(a3);
  v14 = (v13.__cosval * v9) + (v13.__sinval * v10);
  v15 = (v13.__cosval * v10) - (v13.__sinval * v9);
  v16 = (v13.__cosval * v9) + (v13.__sinval * v11);
  v17 = (v13.__cosval * v11) - (v13.__sinval * v9);
  v18 = (v13.__sinval * v10) + (v13.__cosval * v12);
  v19 = (v13.__cosval * v10) - (v13.__sinval * v12);
  v20 = (v13.__sinval * v11) + (v13.__cosval * v12);
  v21 = (v13.__cosval * v11) - (v13.__sinval * v12);
  if (v20 >= v18)
  {
    v22 = (v13.__sinval * v10) + (v13.__cosval * v12);
  }

  else
  {
    v22 = (v13.__sinval * v11) + (v13.__cosval * v12);
  }

  if (v16 >= v14)
  {
    v23 = (v13.__cosval * v9) + (v13.__sinval * v10);
  }

  else
  {
    v23 = (v13.__cosval * v9) + (v13.__sinval * v11);
  }

  if (v22 >= v23)
  {
    v22 = v23;
  }

  if (v14 >= v16)
  {
    v16 = (v13.__cosval * v9) + (v13.__sinval * v10);
  }

  if (v18 >= v20)
  {
    v20 = (v13.__sinval * v10) + (v13.__cosval * v12);
  }

  if (v16 >= v20)
  {
    v20 = v16;
  }

  if (v21 >= v19)
  {
    v24 = (v13.__cosval * v10) - (v13.__sinval * v12);
  }

  else
  {
    v24 = (v13.__cosval * v11) - (v13.__sinval * v12);
  }

  if (v17 >= v15)
  {
    v25 = (v13.__cosval * v10) - (v13.__sinval * v9);
  }

  else
  {
    v25 = (v13.__cosval * v11) - (v13.__sinval * v9);
  }

  if (v24 >= v25)
  {
    v24 = v25;
  }

  if (v15 >= v17)
  {
    v26 = (v13.__cosval * v10) - (v13.__sinval * v9);
  }

  else
  {
    v26 = (v13.__cosval * v11) - (v13.__sinval * v9);
  }

  if (v19 >= v21)
  {
    v21 = (v13.__cosval * v10) - (v13.__sinval * v12);
  }

  if (v26 >= v21)
  {
    v21 = v26;
  }

  return HGRectMake4i((v8 + (v22 / a4)), (v7 + (v24 / a5)), (v8 + (v20 / a4)), (v7 + (v21 / a5)));
}

void sub_25FA0F548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  HGObject::operator delete(v12);
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  _Unwind_Resume(a1);
}

void HUnderwaterRefractV2::~HUnderwaterRefractV2(HGNode *this)
{
  HgcUnderwaterRefractV2::~HgcUnderwaterRefractV2(this);

  HGObject::operator delete(v1);
}

uint64_t HUnderwaterRefractV2::GetOutput(HUnderwaterRefractV2 *this, HGRenderer *a2)
{
  if ((*(*a2 + 304))(a2))
  {
    (*(*this + 136))(this, 0, 2);
  }

  return HgcUnderwaterRefractV2::GetOutput(this, a2);
}

uint64_t HUnderwaterRefractV2::SetMaxOffsets(uint64_t this, float a2, float a3)
{
  *(this + 416) = a2;
  *(this + 420) = a3;
  return this;
}

uint64_t HUnderwaterRefractV2::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = &HGRectInfinite;
  if (a3 >= 2)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

unint64_t HUnderwaterRefractV2::GetROI(float32x2_t *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  var0 = a4.var0;
  v33 = *MEMORY[0x277D85DE8];
  var1 = a4.var1;
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = a4.var0;
    }

    else
    {
      v7 = 0;
    }

    if (a3 == 1)
    {
      v8 = a4.var1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    (*(*this + 104))(this, 8, &v32);
    v10 = v32;
    v28 = 0;
    v29 = 1065353216;
    v30 = 0;
    v23 = 0;
    v24 = 1065353216;
    v25 = 0;
    (*(*this + 104))(this, 3, &v32);
    v27[0] = v32;
    (*(*this + 104))(this, 4, &v32);
    v27[1] = v32;
    (*(*this + 104))(this, 5, &v32);
    v31 = v32;
    (*(*this + 104))(this, 0, &v32);
    v22[0] = v32;
    (*(*this + 104))(this, 1, &v32);
    v22[1] = v32;
    (*(*this + 104))(this, 2, &v32);
    v26 = v32;
    *&v32 = var0;
    *(&v32 + 1) = var1;
    *(&v32 + 1) = 0x3F80000000000000;
    *&v21 = v4;
    *(&v21 + 1) = SHIDWORD(v4);
    *(&v21 + 1) = 0x3F80000000000000;
    v20[0] = 0;
    v20[1] = 0;
    PCMatrix44Tmpl<float>::transform<float>(v22, &v32, v20);
    v19 = 0uLL;
    PCMatrix44Tmpl<float>::transform<float>(v22, &v21, v19.f32);
    __asm { FMOV            V1.2S, #1.0 }

    *v16.f32 = vmul_f32(v10, vbsl_s8(vcgt_f32(_D1, this[52]), _D1, this[52]));
    v20[0] = vsub_f32(v20[0], *v16.f32);
    v19 = vaddq_f32(v16, v19);
    v18 = 0uLL;
    PCMatrix44Tmpl<float>::transform<float>(v27, v20, &v18);
    v32 = v18;
    v18 = 0uLL;
    PCMatrix44Tmpl<float>::transform<float>(v27, v19.f32, &v18);
    v21 = v18;
    v7 = (floorf(*&v32) + -1.0);
    v8 = (floorf(*(&v32 + 1)) + -1.0);
  }

  return v7 | (v8 << 32);
}

void sub_25FA103C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(*v11 + 24))(v11);
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(a1);
}

void sub_25FA110BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a35)
  {
    (*(*a35 + 24))(a35);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  v37 = *(v35 - 144);
  if (v37)
  {
    (*(*v37 + 24))(v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HWave::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

unint64_t HWave::GetROI(HWave *this, HGRenderer *a2, int a3, HGRect a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    var0 = a4.var0;
    var1 = a4.var1;
    (*(*this + 104))(this, 0, &v13);
    v9 = v13;
    (*(*this + 104))(this, 3, &v13);
    if (v14 == 0.0)
    {
      v10 = (var0 - v9);
    }

    else
    {
      v10 = var0;
    }

    if (v14 == 0.0)
    {
      v11 = var1;
    }

    else
    {
      v11 = (var1 - v9);
    }

    v4 = v10 - 1;
    v5 = (v11 - 1);
  }

  return v4 | (v5 << 32);
}

uint64_t HWave::GetOutput(HWave *this, HGRenderer *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 304))(a2))
  {
    (*(*this + 104))(this, 0, v6);
    v4 = v6[0];
    if ((v4 / (*(*a2 + 128))(a2, 1)) >= 0.5)
    {
      (*(*this + 136))(this, 0, 2);
    }
  }

  return HgcWave::GetOutput(this, a2);
}

void HWave::~HWave(HGNode *this)
{
  HgcWave::~HgcWave(this);

  HGObject::operator delete(v1);
}

uint64_t HCheckerboard::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HCheckerboard::~HCheckerboard(HGNode *this)
{
  HgcCheckerboard::~HgcCheckerboard(this);

  HGObject::operator delete(v1);
}

uint64_t HStripes::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HStripes::~HStripes(HGNode *this)
{
  HgcStripes::~HgcStripes(this);

  HGObject::operator delete(v1);
}

uint64_t HiOSStretch::GetDOD(HiOSStretch *this, HGRenderer *a2, int a3, HGRect a4)
{
  v11 = *MEMORY[0x277D85DE8];
  var0 = a4.var0;
  var1 = a4.var1;
  v6 = (a4.var2 - a4.var0);
  v7 = (a4.var3 - a4.var1);
  (*(*this + 104))(this, 1, v9);
  v12.origin.x = var0;
  v12.origin.y = var1;
  v12.size.width = v6;
  v12.size.height = v7;
  v13 = CGRectInset(v12, -v10, -v10);
  return HGRectFromCGRect(v13);
}

uint64_t HiOSStretch::GetROI(HiOSStretch *this, HGRenderer *a2, int a3, HGRect a4)
{
  var0 = a4.var0;
  v47 = *MEMORY[0x277D85DE8];
  var1 = a4.var1;
  v27 = *(MEMORY[0x277CBF398] + 8);
  v30 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v9 = a4.var1;
  v34 = (a4.var2 - a4.var0);
  r1 = a4.var0;
  v33 = (a4.var3 - a4.var1);
  (*(*this + 104))(this, 0, &v43);
  v10 = v43;
  v11 = v44;
  v37 = v43;
  (*(*this + 104))(this, 1, &v43);
  v38 = v44;
  v39 = v10;
  *&v41 = var0;
  *(&v41 + 1) = var1;
  v40 = v11;
  v12 = v43;
  v24 = v43;
  v25 = v46;
  v13 = v45;
  v26 = v45;
  v14 = v46;
  stretch(&v41, &v39, &v43, &v42);
  v56.origin.x = v42.f32[0];
  v56.origin.y = v42.f32[1];
  v56.size.width = 0.0;
  v56.size.height = 0.0;
  v48.origin.y = v27;
  v48.origin.x = v30;
  v48.size.width = v7;
  v48.size.height = v8;
  v49 = CGRectUnion(v48, v56);
  y = v49.origin.y;
  x = v49.origin.x;
  width = v49.size.width;
  height = v49.size.height;
  *&v49.origin.x = v9 + v33;
  LODWORD(v33) = LODWORD(v49.origin.x);
  *&v41 = var0;
  HIDWORD(v41) = LODWORD(v49.origin.x);
  v39 = v37;
  v40 = v11;
  v43 = v12;
  v44 = v38;
  v45 = v13;
  v46 = v14;
  stretch(&v41, &v39, &v43, &v42);
  v57.origin.x = v42.f32[0];
  v57.origin.y = v42.f32[1];
  v57.size.width = 0.0;
  v57.size.height = 0.0;
  v50.origin.y = y;
  v50.origin.x = x;
  v50.size.width = width;
  v50.size.height = height;
  v51 = CGRectUnion(v50, v57);
  v29 = v51.origin.y;
  v32 = v51.origin.x;
  v17 = v51.size.width;
  v18 = v51.size.height;
  *&v19 = r1 + v34;
  LODWORD(v41) = v19;
  *(&v41 + 1) = var1;
  v39 = v37;
  v40 = v11;
  v43 = v24;
  v44 = v38;
  v45 = v26;
  v46 = v25;
  stretch(&v41, &v39, &v43, &v42);
  v58.origin.x = v42.f32[0];
  v58.origin.y = v42.f32[1];
  v58.size.width = 0.0;
  v58.size.height = 0.0;
  v52.origin.y = v29;
  v52.origin.x = v32;
  v52.size.width = v17;
  v52.size.height = v18;
  v53 = CGRectUnion(v52, v58);
  v20 = v53.origin.x;
  r1a = v53.origin.y;
  v21 = v53.size.width;
  v22 = v53.size.height;
  v41 = __PAIR64__(LODWORD(v33), v19);
  v39 = v37;
  v40 = v11;
  v43 = v24;
  v44 = v38;
  v45 = v26;
  v46 = v25;
  stretch(&v41, &v39, &v43, &v42);
  v59.origin.x = v42.f32[0];
  v59.origin.y = v42.f32[1];
  v59.size.width = 0.0;
  v59.size.height = 0.0;
  v54.origin.x = v20;
  v54.origin.y = r1a;
  v54.size.width = v21;
  v54.size.height = v22;
  v55 = CGRectUnion(v54, v59);
  return HGRectFromCGRect(v55);
}

float32x2_t stretch@<D0>(float32x2_t *a1@<X0>, float *a2@<X1>, float *a3@<X2>, float32x2_t *a4@<X8>)
{
  v5 = a2 + 1;
  v22 = *a1;
  v23 = a3[1];
  v6 = vld1_dup_f32(v5);
  v7 = vsub_f32(*a1, v6);
  v8 = vmul_n_f32(v7, a3[2]);
  v20 = v8.f32[0];
  v7.f32[0] = COERCE_FLOAT(*a1) - *a2;
  v9 = vmul_n_f32(vabs_f32(v7), *a3);
  __asm { FMOV            V2.2S, #1.0 }

  v15 = vbsl_s8(vcltz_f32(v9), _D2, vsub_f32(_D2, vbsl_s8(vcgt_f32(v9, _D2), _D2, v9)));
  __asm { FMOV            V2.2S, #3.0 }

  v17 = vmul_f32(v15, vmul_f32(v15, vsub_f32(_D2, vadd_f32(v15, v15))));
  v21 = sinf(v8.f32[1]);
  v18.f32[0] = sinf(v20);
  v18.f32[1] = v21;
  result = vsub_f32(v22, vmul_f32(vmul_n_f32(v18, v23), v17));
  *a4 = result;
  return result;
}

void HiOSStretch::~HiOSStretch(HGNode *this)
{
  HgciOSStretch::~HgciOSStretch(this);

  HGObject::operator delete(v1);
}

void sub_25FA127D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA13200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA139C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(*v11 + 24))(v11);
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(a1);
}

void sub_25FA14B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA158A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HLevels::~HLevels(HGNode *this)
{
  HgcLevels::~HgcLevels(this);

  HGObject::operator delete(v1);
}

void sub_25FA15FB8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HLumaKeyer::~HLumaKeyer(HGNode *this)
{
  HgcLumaKeyer::~HgcLumaKeyer(this);

  HGObject::operator delete(v1);
}

uint64_t HLumaKeyer::GetROI(HLumaKeyer *this, HGRenderer *a2, int a3, __int128 a4)
{
  if (a3 == 1)
  {
    if (*(this + 416))
    {
      v4 = 2816;
    }

    else
    {
      v4 = 256;
    }

    *&v10 = HGRectMake4i(0, 0, v4, 1u);
    *(&v10 + 1) = v5;
    v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v8 = v7;
    *&v11.var0 = v6;
    *&v11.var2 = v8;
    HGRect::Grow(&v10, v11);
  }

  else if (a3)
  {
    return HGRectNull;
  }

  else
  {
    return a4;
  }

  return v10;
}

FxMatrix44 *PAEInitSampling(_anonymous_namespace_::_Local *a1)
{
  if (!atomic_fetch_add(&result->_mat[0][2], 1uLL))
  {
    v2 = result;

    result = objc_alloc_init(FxMatrix44);
    *&v2->_mat[0][1] = result;
  }

  return result;
}

uint64_t anonymous namespace::_Local::Get(_anonymous_namespace_::_Local *this)
{
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
  }
}

void PAEDisposeSampling(_anonymous_namespace_::_Local *a1)
{
  if (atomic_fetch_add((v1 + 24), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v2 = v1;

    *(v2 + 16) = 0;
  }
}

void sub_25FA165CC(_Unwind_Exception *a1, const PCString *a2)
{
  v6 = v5;
  OZChannelBase::setRangeName(v6, a2);
  v9 = v3[16];
  if (v9)
  {
    v3[17] = v9;
    operator delete(v9);
  }

  OZChannelBase::setRangeName(v4, v8);
  v10 = v3[4];
  if (v10)
  {
    v3[5] = v10;
    operator delete(v10);
  }

  MEMORY[0x2666E9F00](v3, v2);
  _Unwind_Resume(a1);
}

void PCRecursiveMutex::~PCRecursiveMutex(PCRecursiveMutex *this)
{
  PCMutex::~PCMutex(this);

  JUMPOUT(0x2666E9F00);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_25FA18230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  HGObject::operator delete(v30);
  v33 = *(v31 - 248);
  if (v33)
  {
    (*(*v33 + 24))(v33);
  }

  v34 = *(v31 - 240);
  if (v34)
  {
    (*(*v34 + 24))(v34);
  }

  (*(*v29 + 24))(v29);
  v35 = *(v31 - 208);
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  v36 = *(v31 - 200);
  if (v36)
  {
    (*(*v36 + 24))(v36);
  }

  _Unwind_Resume(a1);
}

void sub_25FA199F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  _Unwind_Resume(exception_object);
}

void HChannelMixer::~HChannelMixer(HGNode *this)
{
  HgcChannelMixer::~HgcChannelMixer(this);

  HGObject::operator delete(v1);
}

void sub_25FA1AC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void OMPie::OMPie(OMPie *this)
{
  *(this + 5) = 0;
  v2 = (this + 40);
  *(this + 8) = 1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v9 = 0;
  v3 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(this + 5, &v9);
  v4 = *(this + 7);
  *(this + 6) = v3;
  v9 = 0;
  if (v3 >= v4)
  {
    v5 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v2, &v9);
    v4 = *(this + 7);
  }

  else
  {
    *v3 = 0;
    v5 = v3 + 1;
  }

  *(this + 6) = v5;
  v9 = 0;
  if (v5 >= v4)
  {
    v6 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v2, &v9);
    v4 = *(this + 7);
  }

  else
  {
    *v5 = 0;
    v6 = v5 + 1;
  }

  *(this + 6) = v6;
  v9 = 0;
  if (v6 >= v4)
  {
    v7 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v2, &v9);
    v4 = *(this + 7);
  }

  else
  {
    *v6 = 0;
    v7 = v6 + 1;
  }

  *(this + 6) = v7;
  v9 = 0;
  if (v7 >= v4)
  {
    v8 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v2, &v9);
  }

  else
  {
    *v7 = 0;
    v8 = (v7 + 1);
  }

  *(this + 6) = v8;
}

void sub_25FA1CD3C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void PAEKeyerPie::~PAEKeyerPie(PAEKeyerPie *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2666E9F00);
}

void OMPie::OMPie(OMPie *this, int a2)
{
  *(this + 5) = 0;
  v3 = (this + 40);
  *(this + 8) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v10 = 0;
  v4 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(this + 5, &v10);
  v5 = *(this + 7);
  *(this + 6) = v4;
  v10 = 0;
  if (v4 >= v5)
  {
    v6 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v3, &v10);
    v5 = *(this + 7);
  }

  else
  {
    *v4 = 0;
    v6 = v4 + 1;
  }

  *(this + 6) = v6;
  v10 = 0;
  if (v6 >= v5)
  {
    v7 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v3, &v10);
    v5 = *(this + 7);
  }

  else
  {
    *v6 = 0;
    v7 = v6 + 1;
  }

  *(this + 6) = v7;
  v10 = 0;
  if (v7 >= v5)
  {
    v8 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v3, &v10);
    v5 = *(this + 7);
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 1;
  }

  *(this + 6) = v8;
  v10 = 0;
  if (v8 >= v5)
  {
    v9 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v3, &v10);
  }

  else
  {
    *v8 = 0;
    v9 = (v8 + 1);
  }

  *(this + 6) = v9;
}

void sub_25FA1CEE8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

float OMColorUtil::getCbCrFromRGB@<S0>(float *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, float *a9@<X8>)
{
  OMColorUtil::getRGBToYCbCrMatrix(a2, a2, a3, a4, a5, a6, a7, a8, v14);
  v11 = a1[1];
  v12 = a1[2];
  result = ((*a1 * v14[8]) + (v11 * v14[9])) + (v12 * v14[10]);
  *a9 = ((*a1 * v14[4]) + (v11 * v14[5])) + (v12 * v14[6]);
  a9[1] = result;
  return result;
}

void sub_25FA20A00(_Unwind_Exception *a1)
{
  (*(*v2 + 24))(v2);
  (*(*v1 + 24))(v1);
  v5 = *(v3 - 176);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(v3 - 168);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(v3 - 160);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(v3 - 152);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(v3 - 144);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  _Unwind_Resume(a1);
}

void HCopyAlpha::~HCopyAlpha(HGNode *this)
{
  HgcCopyAlpha::~HgcCopyAlpha(this);

  HGObject::operator delete(v1);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25FA21D9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA22908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(*v21 + 24))(v21);
  (*(*v20 + 24))(v20);
  (*(*v19 + 24))(v19);
  if (v18)
  {
    (*(*v18 + 24))(v18);
  }

  (*(*a17 + 24))(a17);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_25FA22D94(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::properties(_anonymous_namespace_ *this, objc_object *a2)
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", v5, @"SDRWorkingSpace", v6, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", 3), @"PixelTransformSupport", 0}];
}

uint64_t anonymous namespace::addParameters(_anonymous_namespace_ *this, objc_object *a2, objc_object *a3, int a4)
{
  v5 = a3;
  v7 = [(objc_object *)a2 apiForProtocol:&unk_28735B348];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 addAngleSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"PageCurl::Angle" parameterMin:0 parameterMax:0) parmFlags:{2, 0, -18.0, -62.8318531, 62.8318531}];
  v11 = [v8 addAngleSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"PageCurl::Rotation" parameterMin:0 parameterMax:0) parmFlags:{3, 0, -24.0, -12.5663706, 12.5663706}];
  v12 = [v8 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"PageCurl::Radius" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:20.0 parmFlags:{1.0, 100.0, 1.0, 100.0, 1.0}];
  v13 = [v9 localizedStringForKey:@"PageCurl::Fade Out" value:0 table:0];
  if (v5)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  v15 = v10 & v11;
  v16 = 0.0;
  if (v5)
  {
    v16 = 20.0;
  }

  v17 = v15 & v12 & [v8 addFloatSliderWithName:v13 parmId:8 defaultValue:v14 parameterMin:v16 parameterMax:0.0 sliderMin:100.0 sliderMax:0.0 delta:100.0 parmFlags:1.0];
  v18 = [v8 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"PageCurl::Shadow" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:v14 delta:50.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
  v19 = v18 & [v8 addColorParameterWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultRed:@"PageCurl::Highlight Color" defaultGreen:0 defaultBlue:0) parmFlags:{5, v14, 0.23, 0.23, 0.23}];
  v20 = v17 & v19 & [v8 addColorParameterWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultRed:@"PageCurl::Back Color" defaultGreen:0 defaultBlue:0) defaultAlpha:7 parmFlags:{0, 0.8, 0.8, 0.8, 0.05}];
  if (v5)
  {
    v21 = [v8 addToggleButtonWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"PageCurl::Animate" parmFlags:{0, 0), 10, 1, 1}];
    v20 = v20 & v21 & [v8 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"PageCurl::Percent" parameterMin:0 parameterMax:0) sliderMin:11 sliderMax:4 delta:50.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
  }

  if (a4)
  {
    return v20 & [(_anonymous_namespace_ *)this addHDRWhiteLevelParameter];
  }

  return v20;
}

void sub_25FA2373C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a21)
  {
    (*(*a21 + 24))(a21);
  }

  (*(*v21 + 24))(v21);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::renderOutput@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, int a7@<W6>, void *a8@<X8>, float a9@<S0>)
{
  *a8 = 0;
  result = [a2 apiForProtocol:&unk_28735B780];
  if (result)
  {
    v17 = result;
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v43 = 0;
    }

    v31 = a6;
    v32 = a7;
    v30 = a1;
    FxMatrixToPCMatrix([a3 pixelTransform], v42);
    v40 = 0.0;
    v41 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    memset(v33, 0, sizeof(v33));
    v18 = [v17 getFloatValue:&v41 fromParm:4 atFxTime:*a5];
    v19 = [v17 getFloatValue:&v40 fromParm:8 atFxTime:*a5];
    v20 = [v17 getFloatValue:&v39 fromParm:2 atFxTime:*a5];
    v21 = [v17 getFloatValue:&v38 fromParm:3 atFxTime:*a5];
    v22 = [v17 getFloatValue:&v37 fromParm:6 atFxTime:*a5];
    v23 = [v17 getRedValue:&v34 greenValue:&v35 blueValue:&v36 fromParm:5 atFxTime:*a5];
    [a3 bounds];
    v40 = v40 / 100.0;
    v41 = v24 / 100.0 * v41;
    v25 = v18 & v19 & v20 & v21 & v22 & v23 & [v17 getRedValue:v33 greenValue:v33 + 8 blueValue:&v33[1] alphaValue:&v33[1] + 8 fromParm:7 atFxTime:*a5];
    if (v32)
    {
      v25 &= [v30 applyHDRWhiteLevelForRed:v33 green:v33 + 8 blue:&v33[1] inColorSpace:{objc_msgSend(a4, "colorSpace")}];
    }

    v26.f64[0] = *(v33 + 1);
    *&v33[0] = vmuld_lane_f64(*v33, v33[1], 1);
    v26.f64[1] = *(&v33[1] + 1);
    *(v33 + 8) = vmulq_f64(v26, vextq_s8(v33[1], v33[1], 8uLL));
    if (v25)
    {
      v27 = v38;
      v28 = v39;
      if (v31)
      {
        v28 = v39 + 3.14159265 + v38;
        v27 = -v38;
        v38 = -v38;
      }

      v39 = v28 + v27 * a9;
      v29 = HGObject::operator new(0x2D0uLL);
      HPageCurlBackground::HPageCurlBackground(v29);
    }

    result = v43;
    if (v43)
    {
      return (*(*v43 + 24))(v43);
    }
  }

  return result;
}

void sub_25FA24158(_Unwind_Exception *a1)
{
  HGObject::operator delete(v4);
  (*(*v5 + 24))(v5);
  (*(*v3 + 24))(v3);
  (*(*v2 + 24))(v2);
  (*(*v1 + 24))(v1);
  v8 = *(v6 - 160);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  _Unwind_Resume(a1);
}

void sub_25FA26D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

_anonymous_namespace_::_Private *anonymous namespace::_Private::_Private(_anonymous_namespace_::_Private *this, double a2, double a3, double a4)
{
  return this;
}

{
  return this;
}

void sub_25FA26F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *v10 = &unk_2871D8940;
  *(v10 + 32) = &unk_2871D8980;
  a10 = (v10 + 72);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_25FA2889C(_Unwind_Exception *a1)
{
  *(v3 - 136) = v2;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100]((v3 - 136));
  *(v3 - 136) = v1;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100]((v3 - 136));
  _Unwind_Resume(a1);
}

uint64_t cc::curve::aspline::color_t<double>::~color_t(uint64_t a1)
{
  *a1 = &unk_2871D8940;
  *(a1 + 32) = &unk_2871D8980;
  v3 = (a1 + 72);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

{
  *a1 = &unk_2871D8940;
  *(a1 + 32) = &unk_2871D8980;
  v3 = (a1 + 72);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x2666E9F00](a1, 0x10A1C40D66B6438);
}

void *anonymous namespace::NewCurve@<X0>(_anonymous_namespace_ *this@<X0>, double a2@<D0>, double a3@<D1>, double a4@<D2>, uint64_t a5@<X8>)
{
  *(a5 + 8) = 0;
  v6 = (a5 + 8);
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *a5 = &unk_2871D8940;
  *(a5 + 32) = &unk_2871D8980;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 72) = 0;
  v7 = (a5 + 72);
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 64) = &unk_2871D89F0;
  *(a5 + 96) = &unk_2871D8A18;
  *(a5 + 104) = cc::curve::aspline::bezier_t<double,false>::evalNonPeriodic;
  *(a5 + 112) = 0;
  v79 = 0uLL;
  v78 = &unk_2871D0EF8;
  std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100]((a5 + 8), &v78);
  v78 = &unk_2871D0EF8;
  __asm { FMOV            V0.2D, #1.0 }

  v79 = _Q0;
  result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](v6, &v78);
  v13 = *(a5 + 8);
  v14 = *(a5 + 16);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3);
  if (v15 <= 1)
  {
    return std::vector<cc::point_t<double,false,false>>::resize((a5 + 72), 4uLL);
  }

  if (v15 <= 0x5555555555555554)
  {
    v16 = v14 - 24;
    if (v14 - 24 == v13)
    {
      v17 = v14 - 24;
    }

    else
    {
      v17 = v14 - 48;
    }

    v79 = 0uLL;
    v78 = &unk_2871D0EF8;
    result = std::vector<cc::point_t<double,false,false>>::resize((a5 + 72), ((v14 - v13) >> 3) - 2);
    v18 = *v6;
    if (*v6 != v16)
    {
      v19 = 0;
      v20 = 0;
      v21 = *v7 + 2;
      while (1)
      {
        v22 = v18 + v20;
        v77 = *(v18 + v20 + 32);
        v23 = *(v18 + v20 + 8);
        v24 = vsubq_f64(v77, v23);
        v25 = vbslq_s8(vcgtq_f64(v23, v77), vnegq_f64(v24), v24);
        v79 = v25;
        if (v25.f64[0] < 0.0)
        {
          v25.f64[0] = -v25.f64[0];
        }

        v25.f64[0] = v25.f64[0] * 0.3334;
        *(v21 - 24) = *(v22 + 8);
        if (!v19)
        {
          break;
        }

        v26 = vsubq_f64(v77, *(v22 - 16));
        v27 = -v26.f64[0];
        if (v26.f64[0] >= 0.0)
        {
          v27 = v26.f64[0];
        }

        *&v28 = *&vdivq_f64(vdupq_laneq_s64(v26, 1), v26);
        if (v27 < 0.00000011920929)
        {
          v28 = 0.0;
        }

        v79.f64[1] = v28;
        v79.f64[0] = 1.0;
        v29.f64[0] = v25.f64[0];
        v29.f64[1] = v25.f64[0] * v28;
        *v21 = vaddq_f64(v29, *(v22 + 8));
        if (v22 < v17)
        {
          goto LABEL_19;
        }

        v30 = v77;
        v31 = *v21;
LABEL_22:
        v32 = vsubq_f64(v30, v31);
        v33 = -v32.f64[0];
        if (v32.f64[0] >= 0.0)
        {
          v33 = v32.f64[0];
        }

        *&v34 = *&vdivq_f64(vdupq_laneq_s64(v32, 1), v32);
        if (v33 < 0.00000011920929)
        {
          v34 = 0.0;
        }

        v79.f64[1] = v34;
        v79.f64[0] = 1.0;
        v35 = v77.f64[1] - v25.f64[0] * v34;
        v21[1].f64[1] = v77.f64[0] - v25.f64[0];
        v21[2].f64[0] = v35;
        if (!v20)
        {
          v36 = v21[1].f64[1] - *(v22 + 8);
          v37 = v35 - *(v22 + 16);
          v38 = -v36;
          if (v36 >= 0.0)
          {
            v38 = v21[1].f64[1] - *(v22 + 8);
          }

          v39 = v37 / v36;
          if (v38 < 0.00000011920929)
          {
            v39 = 0.0;
          }

          v79.f64[1] = v39;
          v79.f64[0] = 1.0;
          v25.f64[1] = v25.f64[0] * v39;
          *v21 = vaddq_f64(v25, *(v21 - 24));
        }

        v20 += 24;
        v21 = (v21 + 72);
        --v19;
        if (v18 + v20 == v16)
        {
          goto LABEL_33;
        }
      }

      if (v22 >= v17)
      {
        v30 = v77;
      }

      else
      {
LABEL_19:
        v30 = *(v18 + v20 + 56);
      }

      v31 = *(v22 + 8);
      goto LABEL_22;
    }

LABEL_33:
    *(*(a5 + 80) - 16) = *(v14 - 16);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a5 + 16) - v18) >> 3) >= 3 && v18 != v16)
    {
      v41 = 0;
      f64 = (*v7)[4].f64;
      do
      {
        v43 = *(v18 + 24 + v41 + 8);
        v44 = *(v18 + v41 + 8);
        v45 = vcgtq_f64(v44, v43);
        v46 = vsubq_f64(v43, v44);
        v47 = vbslq_s8(v45, vnegq_f64(v46), v46);
        v79 = v47;
        v48 = 1.0;
        if (*&v47.i64[1] > 0.00000011920929)
        {
          v48 = 0.0;
          if (*v47.i64 > 0.00000011920929)
          {
            v49 = *&v47.i64[1] / *v47.i64 * -3.0 + 1.0;
            if (v49 >= 0.0)
            {
              v48 = 1.0;
              if (v49 <= 1.0)
              {
                v48 = v49;
              }
            }
          }
        }

        v50 = v48 * *(f64 - 6);
        v51 = 1.0 - v48;
        *(f64 - 3) = v50 + (1.0 - v48) * *(f64 - 3);
        v52 = v48 * f64[3];
        *f64 = v52 + v51 * *f64;
        if (v18 + v41 != v17)
        {
          f64[6] = v52 + v51 * f64[6];
        }

        if (v41)
        {
          *(f64 - 9) = v50 + v51 * *(f64 - 9);
        }

        v41 += 24;
        f64 += 9;
      }

      while (v18 + v41 != v16);
      v53 = 0;
      v54 = v18 + 24;
      v55 = &(*v7)[3].f64[1];
      do
      {
        v56 = v18 + v53;
        v57 = *(v54 + v53 + 8);
        v58 = *(v18 + v53 + 8);
        v59 = vcgtq_f64(v58, v57);
        v60 = vsubq_f64(v57, v58);
        v61 = vbslq_s8(v59, vnegq_f64(v60), v60);
        v79 = v61;
        v62 = 0.25;
        if (*v61.i64 > 0.00000011920929)
        {
          v62 = 0.0;
          if (*&v61.i64[1] > 0.00000011920929)
          {
            v62 = (*v61.i64 / *&v61.i64[1] * -3.0 + 1.0) * 0.25;
          }
        }

        if (v62 <= 1.0)
        {
          v63 = v62;
        }

        else
        {
          v63 = 1.0;
        }

        if (v62 < 0.0)
        {
          v63 = 0.0;
        }

        v64 = *(v55 - 6) * v63;
        v65 = 1.0 - v63;
        *(v55 - 3) = v64 + *(v55 - 3) * (1.0 - v63);
        v66 = v63 * v55[3];
        *v55 = v66 + (1.0 - v63) * *v55;
        if (v56 < v17)
        {
          v55[6] = v66 + v65 * v55[6];
        }

        if (v53)
        {
          *(v55 - 9) = v64 + v65 * *(v55 - 9);
        }

        if (*(v54 + v53 + 16) < *(v56 + 16))
        {
          if (v56 < v17)
          {
            v67 = v55[4];
            v68 = v55[1];
            v69 = v67 - v68;
            if (v67 - v68 < 0.0)
            {
              v69 = -(v67 - v68);
            }

            v55[1] = v65 * v68 + v63 * (v67 + v69);
            v70 = v55[7];
            v71 = v67 - v70;
            if (v67 - v70 > 0.0)
            {
              v71 = -(v67 - v70);
            }

            v55[7] = v65 * v70 + v63 * (v67 + v71);
          }

          if (v53)
          {
            v72 = *(v55 - 5);
            v73 = *(v55 - 8);
            v74 = v72 - v73;
            if (v72 - v73 < 0.0)
            {
              v74 = -(v72 - v73);
            }

            *(v55 - 8) = v65 * v73 + v63 * (v72 + v74);
            v75 = *(v55 - 2);
            v76 = v72 - v75;
            if (v72 - v75 > 0.0)
            {
              v76 = -(v72 - v75);
            }

            *(v55 - 2) = v65 * v75 + v63 * (v72 + v76);
          }
        }

        v53 += 24;
        v55 += 9;
      }

      while (v18 + v53 != v16);
    }
  }

  return result;
}

void sub_25FA29090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *v8 = v9;
  v8[4] = v10;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *cc::curve::aspline::color_t<double>::insertPointIsolation(void *result, uint64_t *a2, double a3, double a4, double a5)
{
  v6 = result;
  v7 = 1.0;
  if (a3 <= 1.0)
  {
    v7 = a3;
  }

  if (a3 < 0.0)
  {
    v7 = 0.0;
  }

  v84[0] = v7;
  v8 = result[1];
  v9 = result[2];
  v10 = result + 1;
  if (v8 == v9)
  {
LABEL_12:
    v15 = (*(*result + 24))(result, v84);
    v88 = &unk_2871D0EF8;
    v89.f64[0] = v84[0];
    v89.f64[1] = v15;
    result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](a2, &v88);
  }

  else
  {
    v11 = v7 - a5;
    v12 = v7 + a5;
    while (1)
    {
      v13 = *(v8 + 8);
      if (v13 > v11 && v13 < v12)
      {
        break;
      }

      v8 += 24;
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }
  }

  for (i = *a2; i != a2[1]; i += 24)
  {
    v17 = v6[1];
    v18 = v6[2];
    if (v17 == v18)
    {
LABEL_19:
      result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](v10, i);
    }

    else
    {
      v19 = v6[1];
      while (*(v19 + 8) < *(i + 8))
      {
        v19 += 24;
        v17 += 24;
        if (v19 == v18)
        {
          goto LABEL_19;
        }
      }

      result = std::vector<cc::point_t<double,false,false>>::insert(v10, v17, i);
    }
  }

  v20 = v6[1];
  v21 = v6[2];
  v22 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
  if (v22 <= 1)
  {
    return std::vector<cc::point_t<double,false,false>>::resize(v6 + 9, 4uLL);
  }

  if (v22 <= 0x5555555555555554)
  {
    v23 = v21 - 24;
    if (v21 - 24 == v20)
    {
      v24 = v21 - 24;
    }

    else
    {
      v24 = v21 - 48;
    }

    v89 = 0uLL;
    v88 = &unk_2871D0EF8;
    result = std::vector<cc::point_t<double,false,false>>::resize(v6 + 9, ((v21 - v20) >> 3) - 2);
    v25 = v6[1];
    if (v25 != v23)
    {
      v26 = 0;
      v27 = 0;
      v28 = (v6[9] + 32);
      while (1)
      {
        v29 = v25 + v27;
        v86 = &unk_2871D0EF8;
        v87 = *(v25 + v27 + 32);
        v30 = *(v25 + v27 + 8);
        v31 = vsubq_f64(v87, v30);
        v32 = vbslq_s8(vcgtq_f64(v30, v87), vnegq_f64(v31), v31);
        v89 = v32;
        if (v32.f64[0] < 0.0)
        {
          v32.f64[0] = -v32.f64[0];
        }

        v32.f64[0] = v32.f64[0] * 0.3334;
        *(v28 - 24) = *(v29 + 8);
        if (!v26)
        {
          break;
        }

        v33 = vsubq_f64(v87, *(v29 - 16));
        v34 = -v33.f64[0];
        if (v33.f64[0] >= 0.0)
        {
          v34 = v33.f64[0];
        }

        *&v35 = *&vdivq_f64(vdupq_laneq_s64(v33, 1), v33);
        if (v34 < 0.00000011920929)
        {
          v35 = 0.0;
        }

        v89.f64[1] = v35;
        v89.f64[0] = 1.0;
        v36.f64[0] = v32.f64[0];
        v36.f64[1] = v32.f64[0] * v35;
        *v28 = vaddq_f64(v36, *(v29 + 8));
        if (v29 < v24)
        {
          goto LABEL_40;
        }

        v37 = v87;
        v85 = v87;
        v38 = *v28;
LABEL_43:
        v39 = vsubq_f64(v37, v38);
        v40 = -v39.f64[0];
        if (v39.f64[0] >= 0.0)
        {
          v40 = v39.f64[0];
        }

        *&v41 = *&vdivq_f64(vdupq_laneq_s64(v39, 1), v39);
        if (v40 < 0.00000011920929)
        {
          v41 = 0.0;
        }

        v89.f64[1] = v41;
        v89.f64[0] = 1.0;
        v42 = v87.f64[1] - v32.f64[0] * v41;
        v28[1].f64[1] = v87.f64[0] - v32.f64[0];
        v28[2].f64[0] = v42;
        if (!v27)
        {
          v43 = v28[1].f64[1] - *(v29 + 8);
          v44 = v42 - *(v29 + 16);
          v45 = -v43;
          if (v43 >= 0.0)
          {
            v45 = v28[1].f64[1] - *(v29 + 8);
          }

          v46 = v44 / v43;
          if (v45 < 0.00000011920929)
          {
            v46 = 0.0;
          }

          v89.f64[1] = v46;
          v89.f64[0] = 1.0;
          v85.f64[0] = v32.f64[0];
          v85.f64[1] = v32.f64[0] * v46;
          v32.f64[1] = v32.f64[0] * v46;
          *v28 = vaddq_f64(v32, *(v28 - 24));
        }

        v27 += 24;
        v28 = (v28 + 72);
        --v26;
        if (v25 + v27 == v23)
        {
          goto LABEL_54;
        }
      }

      if (v29 >= v24)
      {
        v37 = v87;
      }

      else
      {
LABEL_40:
        v37 = *(v25 + v27 + 56);
      }

      v38 = *(v29 + 8);
      goto LABEL_43;
    }

LABEL_54:
    *(v6[10] - 16) = *(v21 - 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v6[2] - v25) >> 3) >= 3 && v25 != v23)
    {
      v48 = 0;
      v49 = (v6[9] + 64);
      do
      {
        v50 = *(v25 + 24 + v48 + 8);
        v51 = *(v25 + v48 + 8);
        v52 = vcgtq_f64(v51, v50);
        v53 = vsubq_f64(v50, v51);
        v54 = vbslq_s8(v52, vnegq_f64(v53), v53);
        v89 = v54;
        v55 = 1.0;
        if (*&v54.i64[1] > 0.00000011920929)
        {
          v55 = 0.0;
          if (*v54.i64 > 0.00000011920929)
          {
            v56 = *&v54.i64[1] / *v54.i64 * -3.0 + 1.0;
            if (v56 >= 0.0)
            {
              v55 = 1.0;
              if (v56 <= 1.0)
              {
                v55 = v56;
              }
            }
          }
        }

        v57 = v55 * *(v49 - 6);
        v58 = 1.0 - v55;
        *(v49 - 3) = v57 + (1.0 - v55) * *(v49 - 3);
        v59 = v55 * v49[3];
        *v49 = v59 + v58 * *v49;
        if (v25 + v48 != v24)
        {
          v49[6] = v59 + v58 * v49[6];
        }

        if (v48)
        {
          *(v49 - 9) = v57 + v58 * *(v49 - 9);
        }

        v48 += 24;
        v49 += 9;
      }

      while (v25 + v48 != v23);
      v60 = 0;
      v61 = v25 + 24;
      v62 = (v6[9] + 56);
      do
      {
        v63 = v25 + v60;
        v64 = *(v61 + v60 + 8);
        v65 = *(v25 + v60 + 8);
        v66 = vcgtq_f64(v65, v64);
        v67 = vsubq_f64(v64, v65);
        v68 = vbslq_s8(v66, vnegq_f64(v67), v67);
        v89 = v68;
        v69 = 0.25;
        if (*v68.i64 > 0.00000011920929)
        {
          v69 = 0.0;
          if (*&v68.i64[1] > 0.00000011920929)
          {
            v69 = (*v68.i64 / *&v68.i64[1] * -3.0 + 1.0) * 0.25;
          }
        }

        if (v69 <= 1.0)
        {
          v70 = v69;
        }

        else
        {
          v70 = 1.0;
        }

        if (v69 < 0.0)
        {
          v70 = 0.0;
        }

        v71 = *(v62 - 6) * v70;
        v72 = 1.0 - v70;
        *(v62 - 3) = v71 + *(v62 - 3) * (1.0 - v70);
        v73 = v70 * v62[3];
        *v62 = v73 + (1.0 - v70) * *v62;
        if (v63 < v24)
        {
          v62[6] = v73 + v72 * v62[6];
        }

        if (v60)
        {
          *(v62 - 9) = v71 + v72 * *(v62 - 9);
        }

        if (*(v61 + v60 + 16) < *(v63 + 16))
        {
          if (v63 < v24)
          {
            v74 = v62[4];
            v75 = v62[1];
            v76 = v74 - v75;
            if (v74 - v75 < 0.0)
            {
              v76 = -(v74 - v75);
            }

            v62[1] = v72 * v75 + v70 * (v74 + v76);
            v77 = v62[7];
            v78 = v74 - v77;
            if (v74 - v77 > 0.0)
            {
              v78 = -(v74 - v77);
            }

            v62[7] = v72 * v77 + v70 * (v74 + v78);
          }

          if (v60)
          {
            v79 = *(v62 - 5);
            v80 = *(v62 - 8);
            v81 = v79 - v80;
            if (v79 - v80 < 0.0)
            {
              v81 = -(v79 - v80);
            }

            *(v62 - 8) = v72 * v80 + v70 * (v79 + v81);
            v82 = *(v62 - 2);
            v83 = v79 - v82;
            if (v79 - v82 > 0.0)
            {
              v83 = -(v79 - v82);
            }

            *(v62 - 2) = v72 * v82 + v70 * (v79 + v83);
          }
        }

        v60 += 24;
        v62 += 9;
      }

      while (v25 + v60 != v23);
    }
  }

  return result;
}

uint64_t cc::curve::aspline::color_t<double>::evaluate(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = *(a1 + 112);
  v3 = a1 + (v2 >> 1);
  if (v2)
  {
    v1 = *(*(v3 + 64) + v1);
  }

  return v1(v3 + 64);
}

BOOL cc::curve::aspline::color_t<double>::evaluateAsBytes(uint64_t a1, _WORD *a2, int a3, int a4, void (*a5)(double *), float a6, float a7)
{
  if (a3)
  {
    v10 = a2;
    v11 = a1 + 96;
    v12 = &a2[a3];
    v13 = a7 - a6;
    v14 = v13;
    v15 = a6;
    v16 = (1.0 / v13);
    v17 = (-a6 / v13);
    v18 = 0.0;
    v19 = 1.0 / (~a4 + a3);
    do
    {
      v27 = v18 * v14 + v15;
      v20 = (*(*v11 + 16))(v11, &v27);
      v27 = v20;
      if (a5)
      {
        a5(&v27);
        v20 = v27;
      }

      v21 = v20 * v16 + v17;
      if (v21 <= 1.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1.0;
      }

      v23 = v22 * 65535.0;
      v24 = v21 < 0.0;
      v25 = 0.0;
      if (!v24)
      {
        v25 = v23;
      }

      *v10++ = v25;
      v18 = v19 + v18;
    }

    while (v10 < v12);
    if (a4)
    {
      *v10 = *(v10 - 1);
    }
  }

  return a3 != 0;
}

uint64_t cc::curve::aspline::color_t<double>::evaluateAsLUT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (*(a2 + 24) <= 0x3FFuLL)
  {
    if (*(a2 + 16))
    {
      operator new[]();
    }

    v7 = *(a2 + 8);
    if (v7)
    {
      memmove(0, *(a2 + 8), 0);
      *(a2 + 24) = 1024;
      MEMORY[0x2666E9ED0](v7, 0x1000C80BDFB0063);
    }

    else
    {
      *(a2 + 24) = 1024;
    }

    operator new[]();
  }

  *(a2 + 16) = 1024;
  v8 = *(a2 + 8);
  v9 = *(*(a1 + 96) + 24);
  v10 = a1 + 96;

  return v9(v10, v8, 1024, a3, a4, a5, a6);
}