void std::__allocate_at_least[abi:ne200100]<std::allocator<LiMaterialTextureInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LiMaterialTextureInfo>,LiMaterialTextureInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v21 = a4;
  v20 = a4;
  v18[0] = a1;
  v18[1] = &v20;
  v18[2] = &v21;
  if (a2 == a3)
  {
    v19 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[2];
      *(a4 + 16) = v6[1];
      *(a4 + 32) = v8;
      *a4 = v7;
      v9 = v6[3];
      v10 = v6[4];
      v11 = v6[6];
      *(a4 + 80) = v6[5];
      *(a4 + 96) = v11;
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      v12 = v6[7];
      v13 = v6[8];
      v14 = v6[10];
      *(a4 + 144) = v6[9];
      *(a4 + 160) = v14;
      *(a4 + 112) = v12;
      *(a4 + 128) = v13;
      *(a4 + 176) = *(v6 + 44);
      *(a4 + 180) = *(v6 + 45);
      *(a4 + 184) = *(v6 + 46);
      *(a4 + 188) = *(v6 + 47);
      *(a4 + 192) = *(v6 + 192);
      v15 = *(v6 + 26);
      *(a4 + 200) = *(v6 + 25);
      *(a4 + 208) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v6 = (v6 + 216);
      a4 += 216;
    }

    while (v6 != a3);
    v21 = a4;
    v19 = 1;
    while (v5 != a3)
    {
      v16 = *(v5 + 26);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v5 = (v5 + 216);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LiMaterialTextureInfo>,LiMaterialTextureInfo*>>::~__exception_guard_exceptions[abi:ne200100](v18);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LiMaterialTextureInfo>,LiMaterialTextureInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<LiMaterialTextureInfo>,LiMaterialTextureInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<LiMaterialTextureInfo>,LiMaterialTextureInfo*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 216;
  }
}

void **std::__split_buffer<LiMaterialTextureInfo>::~__split_buffer(void **a1)
{
  std::__split_buffer<LiMaterialTextureInfo>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<LiMaterialTextureInfo>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 216;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 216;
    }
  }
}

uint64_t std::vector<LiHeSolidRendererNode::UniqueInputInfo>::__emplace_back_slow_path<LiHeSolidRendererNode::UniqueInputInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a1, v6);
  }

  v7 = 24 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 4) = *(a2 + 4);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 12) = *(a2 + 12);
  *(v7 + 16) = *(a2 + 16);
  v12 = 24 * v2 + 24;
  std::vector<LiHeSolidRendererNode::UniqueInputInfo>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 24) % 0x18uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_260039CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<LiHeSolidRendererNode::UniqueInputInfo>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 4) = *(v2 + 4);
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 12) = *(v2 + 12);
      *(v5 + 16) = *(v2 + 16);
      v2 += 24;
      v5 += 24;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void LiHeLightInitPass::~LiHeLightInitPass(HGNode *this)
{
  LiHeLightProgramInitPass::~LiHeLightProgramInitPass(this);

  HGObject::operator delete(v1);
}

const void *LiHeUtil::isLiHeLightSurfaceFinalPass(const void *this, HGNode *a2)
{
  if (this)
  {
  }

  return this;
}

uint64_t LiHeUtil::hasHGAnisotropicXForm(LiHeUtil *this, HGNode *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  if (this)
  {
    hasHGAnisotropicXForm = LiHeUtil::aux_hasHGAnisotropicXForm(this, &v5);
    v3 = v6[0];
  }

  else
  {
    v3 = 0;
    hasHGAnisotropicXForm = 0;
  }

  std::__tree<HGNode *>::destroy(&v5, v3);
  return hasHGAnisotropicXForm;
}

uint64_t LiHeUtil::aux_hasHGAnisotropicXForm(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  lpsrc = a1;
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(a2, &lpsrc);
  v3 = lpsrc;
  if (v4)
  {
    (*(*v4 + 104))(v4, 0, v13);
    if (v14 > 0.0)
    {
      return 1;
    }

    v3 = lpsrc;
  }

  v5 = (*(*v3 + 112))(v3);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    v8 = (*(*lpsrc + 128))(lpsrc, v7);
    if (v8)
    {
      for (i = *(a2 + 8); i; i = *i)
      {
        v10 = i[4];
        if (v8 >= v10)
        {
          if (v10 >= v8)
          {
            goto LABEL_13;
          }

          ++i;
        }
      }

      if (LiHeUtil::aux_hasHGAnisotropicXForm())
      {
        return 1;
      }
    }

LABEL_13:
    v7 = (v7 + 1);
    if (v7 == v6)
    {
      return 0;
    }
  }
}

uint64_t LiHeLightSurfaceFinalPass::GetDOD(LiHeLightSurfaceFinalPass *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeLightSurfaceFinalPass::GetROI(LiHeLightSurfaceFinalPass *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeLightSurfaceFinalPass::~LiHeLightSurfaceFinalPass(HGNode *this)
{
  LiHeLightProgramSurfaceFinalPass::~LiHeLightProgramSurfaceFinalPass(this);

  HGObject::operator delete(v1);
}

uint64_t LiCachingDelegateAddBitmap(uint64_t a1, uint64_t a2)
{
  result = sDelegate;
  if (sDelegate)
  {
    return (*(*sDelegate + 32))(sDelegate, a1, a2);
  }

  return result;
}

uint64_t LiCachingDelegateGetBitmap@<X0>(const PCHash128 *a1@<X0>, void *a2@<X8>)
{
  result = sDelegate;
  if (sDelegate)
  {
    return (*(*sDelegate + 40))(sDelegate, a1);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t LiHeMix::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  v10 = HGRenderer::GetInput(a2, this, 1u);
  v12 = HGRenderer::GetDOD(a2, v10);

  return HGRectUnion(DOD, v9, v12, v11);
}

uint64_t LiHeMix::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v12 = v11;
  v13 = HGRenderer::GetInput(a2, this, 1u);
  v14 = HGRenderer::GetDOD(a2, v13);
  v16 = HGRectUnion(DOD, v12, v14, v15);
  if (a3 != 2)
  {
    if (a3 > 1)
    {
      return 0;
    }

    else
    {
      return HGRectIntersection(v5, v4, v16, v17);
    }
  }

  return v5;
}

void LiHeMix::~LiHeMix(HGNode *this)
{
  LiHeMixShader::~LiHeMixShader(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeReflection::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, 0);
    *&a4.var0 = HGRenderer::GetDOD(a2, Input);
  }

  else if (a3)
  {
    *&a4.var0 = 0;
  }

  return *&a4.var0;
}

uint64_t LiHeReflection::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  DOD = HGRenderer::GetDOD(a2, this);
  return HGRectIntersection(v6, v5, DOD, v8);
}

void LiHeReflection::~LiHeReflection(HGNode *this)
{
  LiHeReflectionShader::~LiHeReflectionShader(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeRGBAdditionNode::GetDOD(LiHeRGBAdditionNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeRGBAdditionNode::GetROI(LiHeRGBAdditionNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeRGBAdditionNode::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

void LiHeRGBAdditionNode::~LiHeRGBAdditionNode(HGNode *this)
{
  LiHeProgramRGBAdditionNode::~LiHeProgramRGBAdditionNode(this);

  HGObject::operator delete(v1);
}

void LiGradientEnvGenerator::LiGradientEnvGenerator(LiGradientEnvGenerator *this)
{
  *this = 0;
  v2 = (this + 32);
  std::vector<float>::vector[abi:ne200100](this + 1, 0x400uLL);
  std::vector<float>::vector[abi:ne200100](v2, 0x400uLL);
  std::vector<float>::vector[abi:ne200100](this + 7, 0x400uLL);
  std::vector<float>::vector[abi:ne200100](this + 10, 0x100uLL);
}

void sub_26003A650(_Unwind_Exception *exception_object)
{
  v4 = v1[7];
  if (v4)
  {
    v1[8] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  v6 = v1[1];
  if (v6)
  {
    v1[2] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void LiGradientEnvGenerator::setGradientImage(void **this, float *a2)
{
  *this = 1;
  v3 = this + 1;
  memcpy(this[1], a2, 0x1000uLL);
  heliumBlurGradientEnvironment(v3, this + 4, 128.0);
  heliumBlurGradientEnvironment(this + 4, this + 7, 256.0);
  std::vector<float>::vector[abi:ne200100](&__dst, 0x100uLL);
  v4 = ((this[2] - *v3) >> 2) / 4;
  v5 = (v43 - __dst) >> 2;
  if ((v5 & 0x80000000) == 0)
  {
    v6 = (v43 - __dst) >> 2;
  }

  else
  {
    v6 = v5 + 3;
  }

  HGRect::Init(&v45, 0, 0, v4, 1);
  v7 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v7, *&v45.var0, *&v45.var2, 28, *v3, 16 * v4);
  v8 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v8, v7);
  v9 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v9);
  HGTextureWrap::SetTextureWrapMode(v9, 1, v10);
  (*(*v9 + 120))(v9, 0, v8);
  HGTransform::HGTransform(v44);
  v11 = (v6 >> 2);
  HGTransform::Scale(v44, (v11 / v4), 1.0, 1.0);
  v12 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v12);
  (*(*v12 + 120))(v12, 0, v9);
  (*(*v12 + 576))(v12, v44);
  v13 = HGObject::operator new(0x450uLL);
  HGRenderer::HGRenderer(v13);
  (*(*v13 + 120))(v13, 36, 0);
  v14 = (*(*v13 + 56))(v13, 0, v11 | 0x100000000, 28, v12, 1);
  (*(*v7 + 24))(v7);
  (*(*v8 + 24))(v8);
  (*(*v9 + 24))(v9);
  (*(*v12 + 24))(v12);
  (*(*v13 + 24))(v13);
  if (*(v14 + 16) == 28)
  {
    memcpy(__dst, *(v14 + 80), 16 * v11);
  }

  (*(*v14 + 24))(v14);
  HGTransform::~HGTransform(v44);
  v15 = this[10];
  v16 = (this[11] - v15) >> 2;
  v17 = __dst;
  if (v16 >= 4)
  {
    v18 = v16 >> 2;
    v19 = (v43 - __dst) >> 2;
    v20 = 2 * (v19 / 4);
    v21 = (v18 / (2 * v18 - 1));
    v22 = __sincos_stret((v21 + v21 + -1.0) * -3.14159265);
    v23 = 0;
    do
    {
      v24 = __sincos_stret((v23 / (v18 - 1)) * 3.14159265);
      if (v19 < 4)
      {
        v38 = 0;
        v40 = 0u;
      }

      else
      {
        v25 = 0.0;
        v38.i32[0] = 0;
        v40 = 0u;
        do
        {
          v35 = v17[v25];
          v34 = v25;
          v26 = __sincos_stret((v25 / (v19 / 4 - 1)) * 3.14159265);
          v27 = vcvt_hight_f64_f32(v35);
          v36 = vcvtq_f64_f32(*v35.f32);
          v37 = v27;
          v28 = 0.0;
          v30.i32[0] = v38.i32[0];
          v29 = v40;
          do
          {
            v39 = *v30.i32;
            v41 = v29;
            v31 = __sincos_stret(((v28 / (v20 - 1)) + (v28 / (v20 - 1)) + -1.0) * -3.14159265);
            v32 = fmax(v22.__cosval * v24.__sinval * (v26.__sinval * v31.__cosval) + v24.__cosval * v26.__cosval + v22.__sinval * v24.__sinval * (v26.__sinval * v31.__sinval), 0.0);
            if (v32 > 1.0)
            {
              v32 = 1.0;
            }

            v33 = v32 * v32;
            *v30.i32 = v33 + v39;
            v29 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(v36, v33), vcvtq_f64_f32(*v41.f32))), vaddq_f64(vmulq_n_f64(v37, v33), vcvt_hight_f64_f32(v41)));
            v28 = v28 + 1.0;
          }

          while (v28 < v20);
          v38 = v30;
          v40 = v29;
          v25 = v34 + 1.0;
        }

        while ((v34 + 1.0) < (v19 / 4));
      }

      v15[v23++] = vdivq_f32(v40, vdupq_lane_s32(v38, 0));
    }

    while (v23 != v18);
  }

  if (v17)
  {
    v43 = v17;
    operator delete(v17);
  }
}

void sub_26003ACA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, char a35)
{
  HGObject::operator delete(v35);
  HGTransform::~HGTransform(&a35);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t heliumBlurGradientEnvironment(void *a1, void **a2, float a3)
{
  HGRect::Init(&v14, 0, 0, ((a1[1] - *a1) >> 2) / 4, 1);
  v6 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v6, *&v14.var0, *&v14.var2, 28, *a1, 4096);
  v7 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v7, v6);
  v8 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v8);
  HGTextureWrap::SetTextureWrapMode(v8, 1, v9);
  (*(*v8 + 120))(v8, 0, v7);
  v10 = HGObject::operator new(0x220uLL);
  HGBlur::HGBlur(v10);
  (*(*v10 + 96))(v10, 0, a3, 0.0, 0.0, 0.0);
  (*(*v10 + 120))(v10, 0, v8);
  v11 = HGObject::operator new(0x450uLL);
  HGRenderer::HGRenderer(v11);
  (*(*v11 + 120))(v11, 36, 0);
  v12 = (*(*v11 + 56))(v11, *&v14.var0, *&v14.var2, 28, v10, 1);
  (*(*v6 + 24))(v6);
  (*(*v7 + 24))(v7);
  (*(*v8 + 24))(v8);
  (*(*v10 + 24))(v10);
  (*(*v11 + 24))(v11);
  if (*(v12 + 16) == 28)
  {
    memcpy(*a2, *(v12 + 80), 0x1000uLL);
  }

  return (*(*v12 + 24))(v12);
}

void sub_26003B0AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

uint64_t LiGradientEnvCache::instance(LiGradientEnvCache *this)
{
  {
    operator new();
  }

  return LiGradientEnvCache::instance(void)::instance;
}

void sub_26003B138(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0xA1C40BD48D6D6);
  _Unwind_Resume(a1);
}

uint64_t LiGradientEnvCache::get(uint64_t a1, const PCHash128 *a2, uint64_t a3)
{
  v17 = 0;
  PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::findValue(*(a1 + 8), a2, &v17, &v13);
  v4 = v13;
  v13 = 0uLL;
  v5 = *(a3 + 8);
  *a3 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v14;
  v14 = 0uLL;
  v7 = *(a3 + 24);
  *(a3 + 16) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = v15;
  v15 = 0uLL;
  v9 = *(a3 + 40);
  *(a3 + 32) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = v16;
  v16 = 0uLL;
  v11 = *(a3 + 56);
  *(a3 + 48) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }
  }

  if (*(&v15 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
  }

  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }

  if (*(&v13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
  }

  return v17;
}

void LiGradientEnvCache::add(uint64_t a1, uint64_t a2, float *a3)
{
  LiGradientEnvGenerator::LiGradientEnvGenerator(&v4);
  LiGradientEnvGenerator::setGradientImage(&v4, a3);
  LiGradientEnvGenerator::buildTexture();
}

void sub_26003B394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  LiGradientEnvGenerator::~LiGradientEnvGenerator(va);
  _Unwind_Resume(a1);
}

void LiGradientEnvCache::LiGradientEnvCache(LiGradientEnvCache *this)
{
  PCSingleton::PCSingleton(this, 0);
  *v1 = &unk_28726F6E8;
  operator new();
}

void LiGradientEnvCache::~LiGradientEnvCache(LiGradientEnvCache *this)
{
  *this = &unk_28726F6E8;
  PCCache<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::~PCCache(this + 1);

  PCSingleton::~PCSingleton(this);
}

{
  *this = &unk_28726F6E8;
  PCCache<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::~PCCache(this + 1);
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t *PCCache<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::~PCCache(uint64_t *a1)
{
  PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::clear(*a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::~PCCacheImpl(v2);
    MEMORY[0x2666E9F00](v3, 0x1020C40F9427E96);
  }

  return a1;
}

void PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::clear(uint64_t a1)
{
  PCSpinLock::lock((a1 + 16));
  std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>>::destroy(a1 + 24, *(a1 + 32));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = 0;
  PCSpinLock::unlock((a1 + 16));
}

void std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>>::destroy(a1, a2[1]);
    PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data::~Data(a2 + 6);

    operator delete(a2);
  }
}

void *PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data::~Data(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::~PCCacheImpl(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>>::destroy(a1 + 24, *(a1 + 32));
  PCSpinLock::~PCSpinLock((a1 + 16));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void LiGradientEnvGenerator::~LiGradientEnvGenerator(LiGradientEnvGenerator *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

void PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::findValue(uint64_t a1@<X0>, const PCHash128 *a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v8 = (a1 + 16);
  v15[1] = a1 + 16;
  PCSpinLock::lock((a1 + 16));
  v9 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(a1 + 24, a2);
  v15[0] = v9;
  if ((a1 + 32) == v9)
  {
    *a3 = 0;
    *a4 = 0u;
    *(a4 + 1) = 0u;
    *(a4 + 2) = 0u;
    *(a4 + 3) = 0u;
    PCWorkingColorVector::PCWorkingColorVector(a4);
    PCWorkingColorVector::PCWorkingColorVector((a4 + 2));
    PCWorkingColorVector::PCWorkingColorVector((a4 + 4));
    PCWorkingColorVector::PCWorkingColorVector((a4 + 6));
  }

  else
  {
    v10 = v9[7];
    *a4 = v9[6];
    a4[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = v9[9];
    a4[2] = v9[8];
    a4[3] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = v9[11];
    a4[4] = v9[10];
    a4[5] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v9[13];
    a4[6] = v9[12];
    a4[7] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a1 + 72) + 1;
    *(a1 + 72) = v14;
    v9[15] = v14;
    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::bubble((a1 + 48), v15);
    *a3 = 1;
  }

  PCSpinLock::unlock(v8);
}

void sub_26003B85C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v2[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v2[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v2[1];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::addValue(uint64_t a1, const PCHash128 *a2, uint64_t *a3, unint64_t a4)
{
  v8 = (a1 + 16);
  v51[1] = a1 + 16;
  PCSpinLock::lock((a1 + 16));
  if (*(a1 + 88) >= a4 || *(a1 + 104))
  {
    v9 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(a1 + 24, a2);
    v10 = v9;
    v51[0] = v9;
    if (a1 + 32 == v9)
    {
      v29 = *(a1 + 72) + 1;
      *(a1 + 72) = v29;
      v31 = *a3;
      v30 = a3[1];
      v48[0] = *a3;
      v48[1] = v30;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      v33 = a3[2];
      v32 = a3[3];
      v48[2] = v33;
      v48[3] = v32;
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
      }

      v35 = a3[4];
      v34 = a3[5];
      v48[4] = v35;
      v48[5] = v34;
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      v37 = a3[6];
      v36 = a3[7];
      v48[6] = v37;
      v48[7] = v36;
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      *&v49 = a4;
      *(&v49 + 1) = v29;
      v50 = 0;
      v42 = *a2;
      v43[0] = v31;
      v43[1] = v30;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      v43[2] = v33;
      v43[3] = v32;
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
      }

      v43[4] = v35;
      v43[5] = v34;
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      v43[6] = v37;
      v43[7] = v36;
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      v44 = v49;
      v45 = v50;
      v46 = std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>>::__emplace_unique_key_args<PCHash128,std::pair<PCHash128 const,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>(a1 + 24, &v42);
      v47 = v38;
      PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data::~Data(v43);
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::add(a1 + 48, &v46);
      v39 = *(a1 + 80) + a4;
      *(a1 + 80) = v39;
      if (!*(a1 + 104))
      {
        while (v39 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
        {
          v41 = *(a1 + 48);
          if (v41 == *(a1 + 56))
          {
            break;
          }

          *&v42 = *v41;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::remove((a1 + 48), &v42);
          v40 = v42;
          *(a1 + 80) -= *(v42 + 112);
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v40);
          PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data::~Data(v40 + 6);
          operator delete(v40);
          v39 = *(a1 + 80);
        }
      }

      PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data::~Data(v48);
    }

    else
    {
      v12 = *a3;
      v11 = a3[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(v9 + 56);
      v10[6] = v12;
      v10[7] = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = a3[2];
      v14 = a3[3];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = v10[9];
      v10[8] = v15;
      v10[9] = v14;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v18 = a3[4];
      v17 = a3[5];
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = v10[11];
      v10[10] = v18;
      v10[11] = v17;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v21 = a3[6];
      v20 = a3[7];
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = v10[13];
      v10[12] = v21;
      v10[13] = v20;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v23 = *(a1 + 72) + 1;
      *(a1 + 72) = v23;
      v10[15] = v23;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::bubble((a1 + 48), v51);
      v24 = v51[0];
      v25 = a4 - *(v51[0] + 112);
      if (v25)
      {
        v26 = v25 + *(a1 + 80);
        *(a1 + 80) = v26;
        *(v24 + 112) = a4;
        if (!*(a1 + 104))
        {
          while (v26 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
          {
            v28 = *(a1 + 48);
            if (v28 == *(a1 + 56))
            {
              break;
            }

            *&v42 = *v28;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCacheImpl<std::tuple<PCString const,double,BOOL,CGAffineTransform const>,PCCFRef<__CTFont const*>,PCNoLock,std::less<std::tuple<PCString const,double,BOOL,CGAffineTransform const>>>::Data>,void *> *,long>>>::remove((a1 + 48), &v42);
            v27 = v42;
            *(a1 + 80) -= *(v42 + 112);
            std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v27);
            PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data::~Data(v27 + 6);
            operator delete(v27);
            v26 = *(a1 + 80);
          }
        }
      }
    }
  }

  PCSpinLock::unlock(v8);
}

void sub_26003BC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data::~Data(va);
  PCLockSentry<PCSpinLock>::~PCLockSentry((v16 - 72));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>>::__emplace_unique_key_args<PCHash128,std::pair<PCHash128 const,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__find_equal<PCHash128>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>>::__construct_node<std::pair<PCHash128 const,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data::~Data(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 PCCacheImpl<PCHash128,LiGradientEnvCache::value_t,PCSpinLock,std::less<PCHash128>>::Data::Data(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  a1->n128_u64[0] = a2->n128_u64[0];
  a1->n128_u64[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[2].n128_u64[1];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a1[2].n128_u64[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[3].n128_u64[1];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[3].n128_u64[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[4];
  a1[5].n128_u64[0] = a2[5].n128_u64[0];
  a1[4] = result;
  return result;
}

void LiLight::LiLight(LiLight *this)
{
  *(this + 115) = &unk_2872DEA38;
  *(this + 116) = 0;
  *(this + 936) = 1;
  LiSceneObject::LiSceneObject(this, &off_28726F808);
  *this = &unk_28726F738;
  *(this + 115) = &unk_28726F7E8;
  *(this + 142) = -1;
  *(this + 72) = 0x3FF0000000000000;
  *(this + 73) = 0;
  *(this + 75) = 0;
  *(this + 74) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 608), 1.0, 1.0, 1.0, 1.0);
  *(this + 80) = 0;
  *(this + 39) = 0u;
  *(this + 81) = 0x3FF0000000000000;
  *(this + 164) = 100;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 87) = 0x3FF921FB54442D18;
  *(this + 44) = 0u;
  *(this + 360) = 257;
  PCWorkingColorVector::PCWorkingColorVector((this + 724), 0.0, 0.0, 0.0, 1.0);
  *(this + 93) = 0;
  *(this + 752) = 0;
  *(this + 110) = 0x3FF0000000000000;
  *(this + 105) = 0x3FF0000000000000;
  *(this + 100) = 0x3FF0000000000000;
  *(this + 95) = 0x3FF0000000000000;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  ShadowCubeMap::ShadowCubeMap((this + 888));
  *(this + 228) = -1;
}

void sub_26003BFAC(_Unwind_Exception *a1)
{
  LiSceneObject::~LiSceneObject(v1, &off_28726F808);
  *(v1 + 920) = v2;
  *(v1 + 936) = 0;
  PCWeakCount::~PCWeakCount((v1 + 928));
  _Unwind_Resume(a1);
}

uint64_t LiLight::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    LiSceneObject::operator=(a1, a2);
    v4 = 0;
    *(a1 + 568) = *(a2 + 568);
    v5 = *(a2 + 576);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 576) = v5;
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 608) = *(a2 + 608);
    v6 = *(a2 + 640);
    *(a1 + 624) = *(a2 + 624);
    *(a1 + 640) = v6;
    *(a1 + 648) = *(a2 + 648);
    *(a1 + 656) = *(a2 + 656);
    v7 = *(a2 + 664);
    *(a1 + 680) = *(a2 + 680);
    *(a1 + 664) = v7;
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 720) = *(a2 + 720);
    *(a1 + 721) = ((*(a2 + 656) - 1) < 3) & *(a2 + 721);
    *(a1 + 724) = *(a2 + 724);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    v8 = a2 + 760;
    v9 = a1 + 760;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v9 + i) = *(v8 + i);
      }

      ++v4;
      v9 += 32;
      v8 += 32;
    }

    while (v4 != 4);
    v11 = *(a2 + 900);
    if (*(a1 + 896) < v11)
    {
      v12 = 2 * v11 + 1;
    }

    else
    {
      v12 = *(a1 + 896);
    }

    PCArray<ShadowMapsLazy,PCArray_Traits<ShadowMapsLazy>>::resize(a1 + 888, v11, v12);
    if (*(a2 + 900) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(a2 + 904) + 24 * v13;
        v15 = *(a1 + 904) + 24 * v13;
        v16 = *(v14 + 12);
        if (*(v15 + 8) < v16)
        {
          v17 = 2 * v16 + 1;
        }

        else
        {
          v17 = *(v15 + 8);
        }

        PCArray<ShadowMap,PCArray_Traits<ShadowMap>>::resize(*(a1 + 904) + 24 * v13, v16, v17);
        if (*(v14 + 12) >= 1)
        {
          v18 = 0;
          v19 = 0;
          do
          {
            ShadowMap::operator=(*(v15 + 16) + v18, *(v14 + 16) + v18);
            ++v19;
            v18 += 600;
          }

          while (v19 < *(v14 + 12));
        }

        ++v13;
      }

      while (v13 < *(a2 + 900));
    }

    *(a1 + 912) = *(a2 + 912);
  }

  return a1;
}

void LiLight::LiLight(LiLight *this, const LiLight *a2)
{
  *(this + 115) = &unk_2872DEA38;
  *(this + 116) = 0;
  *(this + 936) = 1;
  LiSceneObject::LiSceneObject(this, &off_28726F808);
  *this = &unk_28726F738;
  *(this + 115) = &unk_28726F7E8;
  *(this + 72) = 0;
  *(this + 74) = 0;
  *(this + 73) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 608));
  *(this + 80) = 0;
  *(this + 39) = 0u;
  *(this + 83) = 0;
  *(this + 42) = 0u;
  PCWorkingColorVector::PCWorkingColorVector((this + 724));
  *(this + 110) = 0x3FF0000000000000;
  *(this + 105) = 0x3FF0000000000000;
  *(this + 100) = 0x3FF0000000000000;
  *(this + 95) = 0x3FF0000000000000;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  ShadowCubeMap::ShadowCubeMap((this + 888));
  LiLight::operator=(this, a2);
}

void sub_26003C2E0(_Unwind_Exception *a1)
{
  ShadowCubeMap::~ShadowCubeMap((v1 + 888));
  LiSceneObject::~LiSceneObject(v1, &off_28726F808);
  *(v1 + 920) = v2;
  *(v1 + 936) = 0;
  PCWeakCount::~PCWeakCount((v1 + 928));
  _Unwind_Resume(a1);
}

uint64_t LiSceneObject::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    goto LABEL_17;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = a2 + 8;
  do
  {
    for (i = 0; i != 32; i += 8)
    {
      *(v5 + i) = *(v6 + i);
    }

    ++v4;
    v5 += 32;
    v6 += 32;
  }

  while (v4 != 4);
  if (a2 == a1)
  {
LABEL_17:
    *(a1 + 264) = *(a2 + 264);
  }

  else
  {
    v8 = 0;
    v9 = a1 + 136;
    v10 = a2 + 136;
    do
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v9 + j) = *(v10 + j);
      }

      ++v8;
      v9 += 32;
      v10 += 32;
    }

    while (v8 != 4);
    *(a1 + 264) = *(a2 + 264);
    if (a2 != a1)
    {
      v12 = 0;
      v13 = a1 + 272;
      v14 = a2 + 272;
      do
      {
        for (k = 0; k != 32; k += 8)
        {
          *(v13 + k) = *(v14 + k);
        }

        ++v12;
        v13 += 32;
        v14 += 32;
      }

      while (v12 != 4);
    }
  }

  v16 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v16;
  v17 = *(a2 + 432);
  v18 = *(a2 + 448);
  v19 = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 448) = v18;
  *(a1 + 464) = v19;
  *(a1 + 432) = v17;
  *(a1 + 488) = *(a2 + 488);
  PCSharedCount::PCSharedCount(&v24, (a2 + 496));
  PCSharedCount::operator=((a1 + 496), &v24);
  PCSharedCount::~PCSharedCount(&v24);
  *(a1 + 504) = *(a2 + 504);
  if (a2 != a1)
  {
    LiString::dec((a1 + 512));
    v20 = *(a2 + 512);
    *(a1 + 512) = v20;
    if (v20)
    {
      atomic_fetch_add((v20 - 12), 1u);
    }
  }

  v21 = *(a2 + 520);
  v22 = *(a2 + 536);
  *(a1 + 549) = *(a2 + 549);
  *(a1 + 520) = v21;
  *(a1 + 536) = v22;
  return a1;
}

void LiLight::~LiLight(PCSharedCount *this)
{
  ShadowCubeMap::~ShadowCubeMap(&this[111]);
  LiSceneObject::~LiSceneObject(this, &off_28726F808);
  this[115].var0 = &unk_2872DEA38;
  LOBYTE(this[117].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[116].var0);
}

{
  LiLight::~LiLight(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiLight::~LiLight(LiLight *this)
{
  LiLight::~LiLight((this + *(*this - 24)));
}

{
  LiLight::~LiLight((this + *(*this - 24)));

  JUMPOUT(0x2666E9F00);
}

double LiLight::localBoundingBox(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 664);
  *a2 = v2;
  *(a2 + 8) = v2;
  v3 = *(a1 + 672);
  *(a2 + 16) = v3;
  *(a2 + 24) = v3;
  result = *(a1 + 680);
  *(a2 + 32) = result;
  *(a2 + 40) = result;
  return result;
}

double LiLight::plane@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void LiLight::cast(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  PCSharedCount::PCSharedCount((a1 + 72));
}

double *LiLight::transform(uint64_t a1, double *a2)
{
  PCMatrix44Tmpl<double>::transform<double>(a2, (a1 + 664), (a1 + 664));

  return PCMatrix44Tmpl<double>::transform_vector<double>(a2, (a1 + 624), (a1 + 624));
}

uint64_t LiLight::getHeliumNodeSurface@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[1];
  if (*(v4 + 98) != 1 || ((v5 = *(result + 656), (v5 - 1) > 2) || (*(result + 721) & 1) == 0) && (*(v4 + 103) & 1) != 0)
  {
    result = *a2;
    *a3 = *a2;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }

    return result;
  }

  *a3 = 0;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      result = LiLight::getPointNodeSurface(result, a2, &v7);
LABEL_18:
      if (v7)
      {
        *a3 = v7;
      }

      return result;
    }

    if (v5 == 3)
    {
      LiLight::getSpotNodeSurface(result, a2, &v7);
    }
  }

  else
  {
    if (!v5)
    {
      LiLight::getAmbientNode(result);
    }

    if (v5 == 1)
    {
      result = LiLight::getDirectionalNode(result, a2, &v7);
      goto LABEL_18;
    }
  }

  return result;
}

void LiLight::getAmbientNode(uint64_t a1)
{
  v1 = *(a1 + 648);
  v2 = v1 * *(a1 + 608);
  v3 = v1 * *(a1 + 612);
  *&v1 = v1 * *(a1 + 616);
  PCWorkingColorVector::PCWorkingColorVector(&v5, v2, v3, *&v1, *(a1 + 620));
  v4 = HGObject::operator new(0x1A0uLL);
  LiHeLightAmbient::LiHeLightAmbient(v4);
}

void sub_26003C8C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiLight::getDirectionalNode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = *(a1 + 624);
  v31 = *(a1 + 640);
  v6 = PCMatrix44Tmpl<double>::transform_vector<double>(*(a2 + 32), &v30, &v30);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = sqrt(v7 * v7 + v8 * v8 + v9 * v9);
  if (fabs(v10) < 0.000000100000001)
  {
    v10 = 1.0;
  }

  v29[0] = v7 / v10;
  v29[1] = v8 / v10;
  v29[2] = v9 / v10;
  v11 = *(a2 + 24);
  v12 = *v11 + v7 / v10;
  v13 = v8 / v10 + v11[1];
  v14 = v9 / v10 + v11[2];
  v15 = sqrt(v12 * v12 + v13 * v13 + v14 * v14);
  if (fabs(v15) < 0.000000100000001)
  {
    v15 = 1.0;
  }

  v28[0] = v12 / v15;
  v28[1] = v13 / v15;
  v28[2] = v14 / v15;
  v16 = *(a1 + 648);
  v17 = v16 * *(a1 + 608);
  v18 = v16 * *(a1 + 612);
  *&v16 = v16 * *(a1 + 616);
  PCWorkingColorVector::PCWorkingColorVector(v27, v17, v18, *&v16, *(a1 + 620));
  v19 = *(a2 + 8);
  if (*(v19 + 97) == 1)
  {
    v26 = *(v19 + 64);
  }

  else
  {
    PCWorkingColorVector::PCWorkingColorVector(&v26, 0.0, 0.0, 0.0, 0.0);
  }

  v20 = *a2;
  v25 = v20;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  v21 = *(a2 + 16);
  v22 = *(*(a2 + 8) + 88);
  v23 = HGObject::operator new(0x1A0uLL);
  LiHeLightDirectional::LiHeLightDirectional(v23, &v25, v29, v28, v27, &v26, v21, v22);
  *a3 = v23;
  result = v25;
  if (v25)
  {
    return (*(*v25 + 24))(v25);
  }

  return result;
}

void sub_26003CB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HGObject::operator delete(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t LiLight::getPointNodeSurface@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(*(a2 + 8) + 97);
  v7 = *(a1 + 648);
  v8 = v7 * *(a1 + 608);
  v9 = v7 * *(a1 + 612);
  *&v7 = v7 * *(a1 + 616);
  PCWorkingColorVector::PCWorkingColorVector(v26, v8, v9, *&v7, *(a1 + 620));
  v10 = *(a1 + 592);
  v24 = *(a1 + 576);
  v25 = v10;
  v22 = *(a1 + 664);
  v23 = *(a1 + 680);
  *a3 = 0;
  if (v6 == 1)
  {
    v11 = *a2;
    v21 = v11;
    if (v11)
    {
      (*(*v11 + 16))(v11);
    }

    PCMatrix44Tmpl<double>::transform<double>(*(a2 + 32), &v22, &v22);
    v12 = HGObject::operator new(0x1A0uLL);
    LiHeLightPointSurface::LiHeLightPointSurface(v12);
  }

  v13 = *a2;
  v21 = v13;
  if (v13)
  {
    (*(*v13 + 16))(v13);
  }

  v14 = PCMatrix44Tmpl<double>::transform<double>(*(a2 + 32), &v22, &v22);
  v15 = *(a2 + 16);
  v16 = *(a1 + 600);
  v17 = *(a2 + 40);
  v18 = HGObject::operator new(0x1A0uLL);
  v19 = v16;
  LiHeLightPointSurfaceDiffuse::LiHeLightPointSurfaceDiffuse(v18, &v21, v14, v26, v15, &v24, v17, v19);
  if (v18)
  {
    *a3 = v18;
  }

  result = v21;
  if (v21)
  {
    return (*(*v21 + 24))(v21);
  }

  return result;
}

void LiLight::getSpotNodeSurface(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2[1] + 97);
  v7 = *(a1 + 648);
  v8 = v7 * *(a1 + 608);
  v9 = v7 * *(a1 + 612);
  *&v7 = v7 * *(a1 + 616);
  PCWorkingColorVector::PCWorkingColorVector(v17, v8, v9, *&v7, *(a1 + 620));
  v15 = *(a1 + 664);
  v16 = *(a1 + 680);
  v10 = -*(a1 + 640);
  v13 = vnegq_f64(*(a1 + 624));
  v14 = v10;
  *a3 = 0;
  if (v6 == 1)
  {
    if (*a2)
    {
      (*(**a2 + 16))(*a2);
    }

    PCMatrix44Tmpl<double>::transform<double>(a2[4], &v15, &v15);
    PCMatrix44Tmpl<double>::transform_vector<double>(a2[4], v13.f64, v13.f64);
    v11 = HGObject::operator new(0x1A0uLL);
    LiHeLightSpotSurface::LiHeLightSpotSurface(v11);
  }

  if (*a2)
  {
    (*(**a2 + 16))(*a2);
  }

  PCMatrix44Tmpl<double>::transform<double>(a2[4], &v15, &v15);
  PCMatrix44Tmpl<double>::transform_vector<double>(a2[4], v13.f64, v13.f64);
  v12 = HGObject::operator new(0x1A0uLL);
  LiHeLightSpotSurfaceDiffuse::LiHeLightSpotSurfaceDiffuse(v12);
}

void LiLight::getHeliumNodeShadows(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 656) - 1) <= 2 && (*(a1 + 721))
  {
    *a3 = 0;
    LiLight::getPointNodeShadow(a1, a2, &v6);
    if (v6)
    {
      *a3 = v6;
    }
  }

  else
  {
    v4 = *a2;
    *a3 = *a2;
    if (v4)
    {
      v5 = *(*v4 + 16);

      v5();
    }
  }
}

void LiLight::getPointNodeShadow(uint64_t a1@<X0>, uint64_t a2@<X1>, LiHeLightInitPass **a3@<X8>)
{
  v107 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 656) - 1) > 2 || *(a1 + 721) != 1 || (v6 = (a2 + 8), (*(*(a2 + 8) + 102) & 1) == 0))
  {
    v46 = *a2;
    *a3 = *a2;
    if (v46 != 0.0)
    {
      v47 = *(**&v46 + 16);

      v47();
    }

    return;
  }

  v7 = *a2;
  v94 = v7;
  if (v7 != 0.0)
  {
    (*(**&v7 + 16))(COERCE_FLOAT64_T(*&v7));
  }

  v8 = *(a2 + 88);
  v99 = *(a2 + 72);
  v100 = v8;
  v101 = *(a2 + 104);
  v9 = *(a2 + 24);
  v95 = *v6;
  v96 = v9;
  v10 = *(a2 + 56);
  v97 = *(a2 + 40);
  v102 = *(a2 + 120);
  v98 = v10;
  v92 = 0.0;
  v93 = 0;
  if (*(a1 + 900) < 1)
  {
    goto LABEL_44;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v103.f64[0] = 0.0;
    v90[0] = 0.0;
    LiLight::getShadowFromFace(a1, &v94, *(a1 + 904) + v11, &v103, v90);
    if (!*&v103.f64[0])
    {
      goto LABEL_16;
    }

    if (v93)
    {
      v15 = HGObject::operator new(0x1A0uLL);
      LiHeMaxBlend::LiHeMaxBlend(v15);
    }

    v93 = *&v103.f64[0];
    (*(**&v103.f64[0] + 16))();
    v16 = v90[0];
    if (*&v92 != *&v90[0])
    {
      if (v92 != 0.0)
      {
        (*(**&v92 + 24))(COERCE_DOUBLE(*&v92));
        v16 = v90[0];
      }

      v92 = v16;
      if (v16 != 0.0)
      {
        (*(**&v16 + 16))(COERCE_DOUBLE(*&v16));
      }

LABEL_16:
      v16 = v90[0];
    }

    if (v16 != 0.0)
    {
      (*(**&v16 + 24))(COERCE_DOUBLE(*&v16));
    }

    if (*&v103.f64[0])
    {
      (*(**&v103.f64[0] + 24))(*&v103.f64[0]);
    }

    ++v12;
    v11 += 24;
  }

  while (v12 < *(a1 + 900));
  if (v93)
  {
    if (*(a1 + 744) != 0.0)
    {
      v17 = *(a1 + 752);
      v18 = *(a2 + 80);
      v103 = 0uLL;
      v104.f64[0] = 1.0;
      PCMatrix44Tmpl<double>::transform_normal<double>(v18, v103.f64, v91, v13, v14);
      v19 = sqrt(vaddvq_f64(vmulq_f64(*v91, *v91)) + *&v91[16] * *&v91[16]);
      if (fabs(v19) >= 0.000000100000001)
      {
        *v91 = vdivq_f64(*v91, vdupq_lane_s64(*&v19, 0));
        *&v91[16] = *&v91[16] / v19;
      }

      v20 = *(a2 + 80);
      v103 = 0uLL;
      v104.f64[0] = 0.0;
      v104.f64[1] = 1.0;
      memset(v90, 0, sizeof(v90));
      PCMatrix44Tmpl<double>::transform<double>(v20, v103.f64, v90);
      v21 = *(a1 + 664);
      v22 = *(a1 + 672);
      v23 = vmulq_f64(vsubq_f64(v22, *&v90[1]), *&v91[8]);
      v24 = (v21 - v90[0]) * *v91 + v23.f64[0] + v23.f64[1];
      v87 = v21 - *v91 * v24;
      v88 = vsubq_f64(v22, vmulq_n_f64(*&v91[8], v24));
      v89 = 0x3FF0000000000000;
      v25 = *(a2 + 72);
      v85 = 0u;
      v86 = 0u;
      PCMatrix44Tmpl<double>::transform<double>(v25, &v87, v85.f64);
      v26 = 1.0;
      v27 = vmulq_n_f64(v85, 1.0 / v86.f64[1]);
      v28 = vmulq_n_f64(v86, 1.0 / v86.f64[1]);
      v85 = v27;
      v86 = v28;
      if (v17)
      {
        v26 = *(a1 + 744);
      }

      v29 = *(a2 + 88);
      v83 = 0.0;
      v84 = 0.0;
      *__src = v27;
      v82 = *&v28.f64[0];
      approximateStretch(v29, __src, &v84, &v83, v26);
      __src[0] = *&v85.f64[0];
      __src[1] = 0;
      v82 = 0;
      approximateStretch(v29, __src, v103.f64, &v103.f64[1], v26);
      __src[0] = 0;
      __src[1] = *&v85.f64[1];
      v82 = 0;
      approximateStretch(v29, __src, v104.f64, &v104.f64[1], v26);
      __asm { FMOV            V1.2D, #0.5 }

      *__src = vmulq_f64(v85, _Q1);
      v82 = 0;
      approximateStretch(v29, __src, v105.f64, &v105.f64[1], v26);
      __src[0] = 0;
      __src[1] = 0;
      v82 = 0;
      approximateStretch(v29, __src, v106.f64, &v106.f64[1], v26);
      v35.f64[0] = v84;
      v35.f64[1] = v83;
      v36 = vbslq_s8(vcgtq_f64(v106, v35), v35, v106);
      v37 = vbslq_s8(vcgtq_f64(v105, v36), v36, v105);
      v38 = vbslq_s8(vcgtq_f64(v104, v37), v37, v104);
      v39 = vbslq_s8(vcgtq_f64(v103, v38), v38, v103);
      if (v17)
      {
        v40 = *(a1 + 744) * 15.0;
        if (v40 >= v39.f64[0])
        {
          v41 = v39.f64[0];
        }

        else
        {
          v41 = *(a1 + 744) * 15.0;
        }

        if (v40 >= v39.f64[1])
        {
          v42 = v39.f64[1];
        }

        else
        {
          v42 = *(a1 + 744) * 15.0;
        }

        v83 = v42;
        v84 = v41;
        v43 = HGObject::operator new(0x220uLL);
        HGBlur::HGBlur(v43);
        (*(*v43 + 120))(v43, 0, v93);
        v44 = v41;
        v45 = v42;
        (*(*v43 + 96))(v43, 0, v44, v45, 0.0, 0.0);
        if (v93 != v43)
        {
          if (v93)
          {
            (*(*v93 + 24))();
          }

          v93 = v43;
          (*(*v43 + 16))(v43);
        }

        (*(*v43 + 24))(v43);
      }

      else
      {
        __asm { FMOV            V2.2D, #15.0 }

        v51 = vmovn_s64(vcgtq_f64(v39, _Q2));
        if (v51.i8[0])
        {
          v39.f64[0] = 15.0;
        }

        v79 = v39.f64[0];
        if (v51.i8[4])
        {
          v52 = 15.0;
        }

        else
        {
          v52 = v39.f64[1];
        }

        v83 = v52;
        v84 = v39.f64[0];
        LODWORD(__y) = 0;
        std::vector<float>::vector[abi:ne200100](__src, 1uLL);
        v53 = *(a1 + 744);
        __y = 0.0;
        v54 = modf((v53 + -100.0) / 100.0, &__y);
        v55 = __y + 7.0;
        if (v53 < 2.0)
        {
          v55 = 0.0;
        }

        v56 = v55;
        if (v55 >= 1)
        {
          v57 = fmax(v54 + __y, 0.0) + 6.0;
          v58 = *__src[0];
          v59 = v56;
          v60 = 1;
          do
          {
            v61 = fmax(floor(v53 * pow(v60 / v59, v57) + 1.0 + 0.0000001), 2.0);
            if (v61 > v58 + 2.0)
            {
              v58 = v61;
              v62 = __src[1];
              if (__src[1] >= v82)
              {
                v64 = __src[0];
                v65 = __src[1] - __src[0];
                v66 = (__src[1] - __src[0]) >> 2;
                v67 = v66 + 1;
                if ((v66 + 1) >> 62)
                {
                  std::vector<double>::__throw_length_error[abi:ne200100]();
                }

                v68 = v82 - __src[0];
                if ((v82 - __src[0]) >> 1 > v67)
                {
                  v67 = v68 >> 1;
                }

                if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v69 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v69 = v67;
                }

                if (v69)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(__src, v69);
                }

                *(4 * v66) = v58;
                v63 = (4 * v66 + 4);
                memcpy(0, v64, v65);
                v70 = __src[0];
                __src[0] = 0;
                __src[1] = v63;
                v82 = 0;
                if (v70)
                {
                  operator delete(v70);
                }
              }

              else
              {
                *__src[1] = v58;
                v63 = v62 + 4;
              }

              __src[1] = v63;
            }

            ++v60;
            --v56;
          }

          while (v56);
        }

        v71 = HGObject::operator new(0x1D0uLL);
        HGModulatedBlur::HGModulatedBlur(v71);
        *v71 = &unk_287271888;
        off_287271900(v71, 0, v93);
        (*(*v71 + 120))(v71, 1, COERCE_DOUBLE(*&v92));
        HGModulatedBlur::setBlurValues(v71, __src[0], (__src[1] - __src[0]) >> 2);
        (*(*v71 + 96))(v71, 0, 1.0, 0.0, 0.0, 0.0);
        v72 = v79;
        v73 = v52;
        (*(*v71 + 96))(v71, 1, v72, v73, 0.0, 0.0);
        if (v93 != v71)
        {
          if (v93)
          {
            (*(*v93 + 24))();
          }

          v93 = v71;
          (*(*v71 + 16))(v71);
        }

        (*(*v71 + 24))(v71);
        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }
      }
    }

    v74 = *v6;
    if ((*(*v6 + 98) & 1) == 0)
    {
      LiLight::NodeParams::setInput(&v94, &v93);
      PCWorkingColorVector::PCWorkingColorVector(&v103, 1.0, 1.0, 1.0, 0.0);
      v75 = HGObject::operator new(0x1A0uLL);
      LiHeLightInitPass::LiHeLightInitPass(v75, &v103);
      *&v90[0] = v75;
      LiLight::stencilShadowByLight(a1, &v94, &v103);
      v76 = v103.f64[0];
      if (v93 != *&v103.f64[0])
      {
        if (v93)
        {
          (*(*v93 + 24))();
        }

        v93 = *&v76;
        if (v76 != 0.0)
        {
          (*(**&v76 + 16))(COERCE_FLOAT64_T(*&v76));
        }
      }

      LiLight::NodeParams::setInput(&v94, v90);
      if (v76 != 0.0)
      {
        (*(**&v76 + 24))(COERCE_FLOAT64_T(*&v76));
      }

      if (*&v90[0])
      {
        (*(**&v90[0] + 24))(*&v90[0]);
      }

      v74 = *v6;
    }

    if (*(v74 + 103))
    {
      v77 = 1;
    }

    else
    {
      v77 = *(v74 + 98) ^ 1;
    }

    v103.f64[0] = v94;
    if (v94 != 0.0)
    {
      (*(**&v94 + 16))(COERCE_FLOAT64_T(*&v94));
    }

    v78 = HGObject::operator new(0x1B0uLL);
    LiHeShadowSoft::LiHeShadowSoft(v78, &v103, &v93, a1 + 724, v77 & 1);
    *a3 = v78;
    if (*&v103.f64[0])
    {
      (*(**&v103.f64[0] + 24))(*&v103.f64[0]);
    }

    goto LABEL_96;
  }

LABEL_44:
  if (*(*v6 + 103) == 1)
  {
    PCWorkingColorVector::PCWorkingColorVector(&v103, 0.0, 0.0, 0.0, 0.0);
    v48 = HGObject::operator new(0x1A0uLL);
    LiHeLightInitPass::LiHeLightInitPass(v48, &v103);
    *a3 = v48;
  }

  else
  {
    v49 = *a2;
    *a3 = *a2;
    if (v49 != 0.0)
    {
      (*(**&v49 + 16))(COERCE_FLOAT64_T(*&v49));
    }
  }

LABEL_96:
  if (v92 != 0.0)
  {
    (*(**&v92 + 24))(COERCE_DOUBLE(*&v92));
  }

  if (v93)
  {
    (*(*v93 + 24))(v93);
  }

  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&v94);
}

void sub_26003E0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  (*(*v35 + 24))(v35);
  if (a25)
  {
    (*(*a25 + 24))(a25);
  }

  if (a33)
  {
    (*(*a33 + 24))(a33);
  }

  if (a34)
  {
    (*(*a34 + 24))(a34);
  }

  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&a35);
  _Unwind_Resume(a1);
}

uint64_t LiLight::getShadowFromFace(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if ((*(a1 + 656) - 1) <= 2 && *(a1 + 721) == 1 && *(a2[1] + 102) == 1)
  {
    v22 = 0;
    v23 = 0;
    if (*(a3 + 12) >= 1)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v20 = 0;
        v21 = 0;
        LiLight::getShadowFromMap(a1, a2, *(a3 + 16) + v10, &v21, &v20);
        if (v21)
        {
          if (v23)
          {
            v12 = HGObject::operator new(0x1C0uLL);
            LiHeShadowBlendAdd::LiHeShadowBlendAdd(v12);
          }

          v23 = v21;
          (*(*v21 + 16))();
          v13 = v20;
          if (v22 == v20)
          {
            goto LABEL_15;
          }

          if (v22)
          {
            (*(*v22 + 24))(v22);
            v13 = v20;
          }

          v22 = v13;
          if (v13)
          {
            (*(*v13 + 16))(v13);
          }
        }

        v13 = v20;
LABEL_15:
        if (v13)
        {
          (*(*v13 + 24))(v13);
        }

        if (v21)
        {
          (*(*v21 + 24))(v21);
        }

        ++v11;
        v10 += 600;
        if (v11 >= *(a3 + 12))
        {
          v14 = v23;
          goto LABEL_30;
        }
      }
    }

    v14 = 0;
LABEL_30:
    v17 = *a4;
    if (*a4 != v14)
    {
      if (v17)
      {
        (*(*v17 + 24))(*a4);
        v14 = v23;
      }

      *a4 = v14;
      if (v14)
      {
        (*(*v14 + 16))(v14);
      }
    }

    v18 = *a5;
    v19 = v22;
    if (*a5 != v22)
    {
      if (v18)
      {
        (*(*v18 + 24))(*a5);
        v19 = v22;
      }

      *a5 = v19;
      if (!v19)
      {
        goto LABEL_42;
      }

      (*(*v19 + 16))(v19);
      v19 = v22;
    }

    if (v19)
    {
      (*(*v19 + 24))(v19);
    }

LABEL_42:
    result = v23;
    if (v23)
    {
      return (*(*v23 + 24))(v23);
    }

    return result;
  }

  v15 = *a2;
  if (*a2)
  {
    (*(*v15 + 16))(v15);
    result = *a4;
    if (*a4 == v15)
    {
      return (*(*v15 + 24))(v15);
    }
  }

  else
  {
    result = *a4;
    if (!*a4)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *a4 = v15;
  return result;
}

void sub_26003E964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  _Unwind_Resume(exception_object);
}

double *LiLight::getShadowFromMap(double *result, uint64_t a2, uint64_t a3, void **a4, uint64_t *a5)
{
  v9 = result;
  v78 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 8);
  if (*(a3 + 8) != *(v10 + 264) || *(a3 + 12) != *(v10 + 268))
  {
    result = PCMath::equal((a3 + 472), (v10 + 176), 0.015);
    if ((result & 1) == 0)
    {
      PCMatrix44Tmpl<double>::operator*(a3 + 280, *(a2 + 80), v73);
      result = LiMaterialProperties::getZExtent(*(a2 + 8), v73, v72);
      if (*(a3 + 408) < v72[1])
      {
        if (*(v9 + 164) == 1)
        {
          v11 = -*(a3 + 304);
          v12 = -*(a3 + 336);
          v13 = -*(a3 + 368);
        }

        else
        {
          *&v77[40] = 0x3FF0000000000000;
          *v77 = 0x3FF0000000000000;
          *&v74[40] = 0x3FF0000000000000;
          *v74 = 0x3FF0000000000000;
          memset(&v74[8], 0, 32);
          v75 = 0u;
          v76 = 0u;
          memset(&v77[8], 0, 32);
          result = PCMatrix44Tmpl<double>::invert(v74, a3 + 280, 0.0);
          v11 = *&v74[24];
          v12 = *(&v75 + 1);
          v13 = *&v77[8];
        }

        v14 = *(v10 + 176);
        v15 = *(v10 + 184);
        v16 = *(v10 + 192);
        v17 = *(v10 + 200);
        v18 = *(v10 + 208);
        v19 = *(v10 + 216);
        v20 = (v11 - v14) * v17 + (v12 - v15) * v18 + (v13 - v16) * v19;
        v21 = v17 * (*(a3 + 472) - v14) + v18 * (*(a3 + 480) - v15) + v19 * (*(a3 + 488) - v16);
        if ((v20 * v21) >= 0.0)
        {
          goto LABEL_15;
        }

        v22 = *(a3 + 576);
        if (v22 >= 0.0)
        {
          v23 = *(a3 + 584);
          if (v23 >= 0.0)
          {
            v24 = 0;
            v25 = *(a3 + 568);
            *v74 = *(a3 + 560);
            *&v74[8] = v25;
            *&v74[16] = v22 + *v74;
            *&v74[24] = v25;
            *&v74[32] = v22 + *v74;
            *&v74[40] = v25 + v23;
            *&v75 = *v74;
            *(&v75 + 1) = v25 + v23;
            v26 = v20;
            do
            {
              *v60 = *&v74[16 * v24];
              *&v60[16] = 0x3FF0000000000000;
              v69 = 0.0;
              v70 = 0uLL;
              result = PCMatrix44Tmpl<double>::transform<double>((a3 + 24), v60, &v69);
              v27 = vmulq_f64(vsubq_f64(v70, *(v10 + 184)), *(v10 + 208));
              v28 = ((v69 - *(v10 + 176)) * *(v10 + 200) + v27.f64[0] + v27.f64[1]) * v26;
              if (v24 > 2)
              {
                break;
              }

              ++v24;
            }

            while (v28 <= 0.0);
            if (v28 > 0.0)
            {
LABEL_15:
              v29 = *(a3 + 16);
              v71 = v29;
              if (v29)
              {
                (*(*v29 + 16))(v29);
              }

              v30 = *(a3 + 232);
              v76 = *(a3 + 216);
              *v77 = v30;
              v31 = *(a3 + 248);
              v32 = *(a3 + 168);
              *v74 = *(a3 + 152);
              *&v74[16] = v32;
              v33 = *(a3 + 200);
              *&v74[32] = *(a3 + 184);
              v75 = v33;
              v34 = *(a3 + 264);
              *&v77[16] = v31;
              *&v77[32] = v34;
              PCMatrix44Tmpl<double>::operator*(v74, *(a2 + 56), &v69);
              v68 = 0x3FF0000000000000;
              v65 = 0x3FF0000000000000;
              v62 = 0x3FF0000000000000;
              *v60 = 0x3FF0000000000000;
              *&v60[8] = 0u;
              v61 = 0u;
              v63 = 0u;
              v64 = 0u;
              v66 = 0u;
              v67 = 0u;
              PCMatrix44Tmpl<double>::invert(v60, a3 + 24, 0.0);
              PCMatrix44Tmpl<double>::operator*(v60, *(a2 + 56), v59);
              PCMatrix44Tmpl<double>::operator*(a3 + 280, (a3 + 24), v58);
              v35 = *(a2 + 8);
              v36 = v35[22];
              v57[4] = v35[21];
              v57[5] = v36;
              v37 = v35[24];
              v57[6] = v35[23];
              v57[7] = v37;
              v38 = v35[18];
              v57[0] = v35[17];
              v57[1] = v38;
              v39 = v35[20];
              v57[2] = v35[19];
              v57[3] = v39;
              v56 = 0x3FF0000000000000;
              v53 = 0x3FF0000000000000;
              v50 = 0x3FF0000000000000;
              v47 = 0x3FF0000000000000;
              v48 = 0u;
              v49 = 0u;
              v51 = 0u;
              v52 = 0u;
              v54 = 0u;
              v55 = 0u;
              PCMatrix44Tmpl<double>::invert(&v47, v57, 0.0);
              PCMatrix44Tmpl<double>::operator*(&v47, *(a2 + 48), v46);
              LiSoftShadow::LiSoftShadow(&v44, &v71, *(v9 + 752), *(v9 + 164) == 1, v59, v58, &v69, (a3 + 424), v9[93], *(a3 + 592));
              v40 = v44;
              if (v44)
              {
                (*(*v44 + 16))(v44);
                v41 = *a4;
                if (*a4 == v40)
                {
                  (*(*v40 + 24))(v40);
                  goto LABEL_24;
                }
              }

              else
              {
                v41 = *a4;
                if (!*a4)
                {
                  goto LABEL_24;
                }
              }

              if (v41)
              {
                (*(*v41 + 24))(v41);
              }

              *a4 = v40;
LABEL_24:
              v42 = v45;
              if (v45)
              {
                (*(*v45 + 16))(v45);
                v43 = *a5;
                if (*a5 == v42)
                {
                  (*(*v42 + 24))(v42);
                  goto LABEL_31;
                }
              }

              else
              {
                v43 = *a5;
                if (!*a5)
                {
LABEL_31:
                  LiSoftShadow::~LiSoftShadow(&v44);
                  result = v71;
                  if (v71)
                  {
                    return (*(*v71 + 24))(v71);
                  }

                  return result;
                }
              }

              if (v43)
              {
                (*(*v43 + 24))(v43);
              }

              *a5 = v42;
              goto LABEL_31;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_26003F0B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

double approximateStretch(float64x2_t *a1, double *a2, double *a3, double *a4, double a5)
{
  memset(v32, 0, sizeof(v32));
  PCMatrix44Tmpl<double>::transform<double>(a1->f64, a2, v32);
  PCMatrix44Tmpl<double>::jacobianPost(a1, v32, &v23);
  v9 = v29;
  v10 = v30;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v16 = v28;
  v17 = v31;
  v18 = v31 + v29 * a5 + v30 * 0.0;
  v19 = (v25 + v23 * a5 + v24 * 0.0) / v18;
  *a3 = sqrt(v19 * v19 + (v28 + v26 * a5 + v27 * 0.0) / v18 * ((v28 + v26 * a5 + v27 * 0.0) / v18));
  v20 = v17 + v9 * 0.0 + v10 * a5;
  v21 = (v13 + v11 * 0.0 + v12 * a5) / v20;
  result = sqrt(v21 * v21 + (v16 + v14 * 0.0 + v15 * a5) / v20 * ((v16 + v14 * 0.0 + v15 * a5) / v20));
  *a4 = result;
  return result;
}

uint64_t LiLight::NodeParams::setInput(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  result = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
      result = *a2;
    }

    *a1 = result;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

uint64_t LiLight::stencilShadowByLight@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 656);
  if (v6 == 2)
  {
    v33 = *(a1 + 664);
    v34 = *(a1 + 680);
    v22 = *a2;
    *&v31.f64[0] = v22;
    if (v22)
    {
      (*(*v22 + 16))(v22);
    }

    v23 = PCMatrix44Tmpl<double>::transform<double>(*(a2 + 32), &v33, &v33);
    v24 = *(a2 + 16);
    v25 = *(a2 + 40);
    v26 = HGObject::operator new(0x1A0uLL);
    LiHePointLightStencil::LiHePointLightStencil(v26, &v31, v23, v24, v25);
    *a3 = v26;
    result = *&v31.f64[0];
    if (*&v31.f64[0])
    {
      return (*(**&v31.f64[0] + 24))(*&v31.f64[0]);
    }
  }

  else if (v6 == 3)
  {
    v33 = *(a1 + 664);
    v34 = *(a1 + 680);
    v7 = -*(a1 + 640);
    v31 = vnegq_f64(*(a1 + 624));
    v32 = v7;
    v8 = *a2;
    v30 = v8;
    if (v8)
    {
      (*(*v8 + 16))(v8);
    }

    v9 = PCMatrix44Tmpl<double>::transform<double>(*(a2 + 32), &v33, &v33);
    v10 = PCMatrix44Tmpl<double>::transform_vector<double>(*(a2 + 32), v31.f64, v31.f64);
    v11 = v10[2];
    v12 = *v10;
    v13 = sqrt(vaddvq_f64(vmulq_f64(v12, v12)) + v11 * v11);
    if (fabs(v13) < 0.000000100000001)
    {
      v13 = 1.0;
    }

    v28 = vdivq_f64(v12, vdupq_lane_s64(*&v13, 0));
    v29 = v11 / v13;
    v14 = *(a2 + 16);
    v15 = *(a1 + 696);
    v16 = *(a1 + 704);
    v17 = *(a2 + 40);
    v18 = HGObject::operator new(0x1A0uLL);
    v19 = v15;
    v20 = v15 + v16;
    LiHeSpotLightStencil::LiHeSpotLightStencil(v18, &v30, v9, &v28, v14, v17, v19, v20);
    *a3 = v18;
    result = v30;
    if (v30)
    {
      return (*(*v30 + 24))(v30);
    }
  }

  else
  {
    result = *a2;
    *a3 = *a2;
    if (result)
    {
      v27 = *(*result + 16);

      return v27();
    }
  }

  return result;
}

void sub_26003F61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  HGObject::operator delete(v13);
  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t LiLight::copyPCMatrixToVec4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 64);
  v6 = 4;
  do
  {
    v7 = *(v5 - 8);
    v8 = *(v5 - 4);
    v9 = *v5;
    v10 = v5[4];
    result = (*(*a2 + 96))(a2, a3, v7, v8, v9, v10);
    a3 = (a3 + 1);
    ++v5;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t LiLightSet::add(uint64_t this, const LiLight *a2)
{
  v2 = this;
  if (*(a2 + 720) == 1)
  {
    v4 = *(this + 12);
    if (*(this + 8) <= v4)
    {
      v5 = 2 * (v4 + 1) + 1;
    }

    else
    {
      v5 = *(this + 8);
    }

    PCArray<LiLight,PCArray_Traits<LiLight>>::resize(this, v4 + 1, v5);
    v6 = *(v2 + 16) + 944 * *(v2 + 12) - 944;

    return LiLight::operator=(v6, a2);
  }

  else
  {
    *(this + 24) = 1;
  }

  return this;
}

void LiLight::buildHeliumGraphSurface(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v11 = v6;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  v16 = *(a2 + 72);
  v17 = *(a2 + 88);
  v18 = *(a2 + 104);
  v19 = *(a2 + 120);
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v14 = *(a2 + 40);
  v15 = *(a2 + 56);
  PCWorkingColorVector::PCWorkingColorVector(v10, 0.0, 0.0, 0.0, 0.0);
  v7 = HGObject::operator new(0x1A0uLL);
  LiHeLightInitPass::LiHeLightInitPass(v7, v10);
  v9 = v7;
  LiLight::NodeParams::setInput(&v11, &v9);
  LiLight::getHeliumNodeSurface(a1, &v11, &v8);
  LiLight::NodeParams::setInput(&v11, &v8);
  LiLight::getHeliumNodeShadows(a1, &v11, a3);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&v11);
}

void sub_26003F960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    (*(*a3 + 24))(a3);
  }

  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(va);
  _Unwind_Resume(a1);
}

uint64_t LiLightSet::getHeliumGraphSurface@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, HGLegacyBlend **a3@<X8>)
{
  v4 = result;
  v5 = *a2;
  v6 = a2[1];
  *a3 = *a2;
  if (v5)
  {
    result = (*(*v5 + 16))(v5);
  }

  v7 = *(v4 + 12);
  if (!v7)
  {
    return result;
  }

  if (v6[98] == 1 && v6[103] != 1 || v6[102] != 1)
  {
    PCWorkingColorVector::PCWorkingColorVector(v32, 0.0, 0.0, 0.0, 0.0);
    v15 = HGObject::operator new(0x1A0uLL);
    LiHeLightInitPass::LiHeLightInitPass(v15, v32);
    v31 = v15;
    if (*(v4 + 12) >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LiLight::buildHeliumGraphSurface(*(v4 + 16) + v16, a2, &v30);
        if (!v30)
        {
          __cxa_bad_typeid();
        }

        v20 = HGObject::operator new(0x1A0uLL);
        LiHeRGBAdditionNode::LiHeRGBAdditionNode(v20, &v31, &v30);
        if (v31 != v20)
        {
          break;
        }

        if (v20)
        {
          goto LABEL_38;
        }

LABEL_39:
        if (v30)
        {
          (*(*v30 + 24))(v30);
        }

        v18 |= v19;
        ++v17;
        v16 += 944;
        if (v17 >= *(v4 + 12))
        {
          goto LABEL_44;
        }
      }

      if (v31)
      {
        (*(*v31 + 24))();
      }

      v31 = v20;
      if (!v20)
      {
        goto LABEL_39;
      }

      (*(*v20 + 16))(v20);
LABEL_38:
      (*(*v20 + 24))(v20);
      goto LABEL_39;
    }

    v18 = 0;
LABEL_44:
    v21 = *a2;
    v30 = v21;
    if (v21)
    {
      (*(*v21 + 16))(v21);
    }

    v22 = HGObject::operator new(0x1A0uLL);
    LiHeLightSurfaceFinalPass::LiHeLightSurfaceFinalPass(v22, &v30, &v31);
    if (v30)
    {
      (*(*v30 + 24))(v30);
    }

    if (v5 == v22)
    {
      if (!v5)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v5)
      {
        (*(*v5 + 24))(v5);
      }

      *a3 = v22;
      if (!v22)
      {
        v5 = 0;
LABEL_56:
        result = v31;
        if (v31)
        {
          result = (*(*v31 + 24))(v31);
        }

        if (v18)
        {
          return (*(*v5 + 136))(v5, 0xFFFFFFFFLL, 2);
        }

        return result;
      }

      (*(*v22 + 16))(v22);
      v5 = v22;
    }

    (*(*v22 + 24))(v22);
    goto LABEL_56;
  }

  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    LOBYTE(v10) = 0;
    v11 = 0;
    while (1)
    {
      LiLight::buildHeliumGraphSurface(*(v4 + 16) + v8, a2, v32);
      if (v9)
      {
        if (v11)
        {
        }

        else
        {
          v12 = 0;
        }

        v14 = HGObject::operator new(0x1C0uLL);
        HGLegacyBlend::HGLegacyBlend(v14);
        (*(*v14 + 120))(v14, 0, v11);
        (*(*v14 + 120))(v14, 1, v32[0]);
        (*(*v14 + 96))(v14, 0, 1.0, 0.0, 0.0, 0.0);
        if (v11 != v14)
        {
          if (v11)
          {
            (*(*v11 + 24))(v11);
          }

          v11 = v14;
          (*(*v14 + 16))(v14);
        }

        (*(*v14 + 24))(v14);
        v10 = v12 | v10 & 1;
        v13 = v32[0];
        if (!v32[0])
        {
          goto LABEL_24;
        }
      }

      else
      {
        v13 = v32[0];
        if (v11 == v32[0])
        {
          v10 = 1;
          if (!v32[0])
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v11)
          {
            (*(*v11 + 24))(v11);
            v13 = v32[0];
          }

          if (!v13)
          {
            v11 = 0;
            v10 = 1;
            goto LABEL_24;
          }

          (*(*v13 + 16))(v13);
          v10 = 1;
          v11 = v13;
        }
      }

      (*(*v13 + 24))(v13);
LABEL_24:
      ++v9;
      v8 += 944;
      if (v9 >= *(v4 + 12))
      {
        goto LABEL_61;
      }
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_61:
  v23 = HGObject::operator new(0x1C0uLL);
  HGStencil::HGStencil(v23);
  *(v23 + 109) = 0;
  (*(*v23 + 120))(v23, 0, v11);
  v24 = *a2;
  if (*a2)
  {
    (*(*v24 + 16))(*a2);
  }

  (*(*v23 + 120))(v23, 1, v24);
  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  if ((v6[98] & 1) != 0 || v6[103] == 1)
  {
    v25 = *a3;
    if (*a3 != v23)
    {
      if (v25)
      {
        (*(*v25 + 24))(v25);
      }

      *a3 = v23;
      (*(*v23 + 16))(v23);
    }
  }

  else
  {
    v26 = HGObject::operator new(0x1C0uLL);
    HGLegacyBlend::HGLegacyBlend(v26);
    v27 = *a2;
    if (*a2)
    {
      (*(*v27 + 16))(*a2);
    }

    (*(*v26 + 120))(v26, 0, v27);
    if (v27)
    {
      (*(*v27 + 24))(v27);
    }

    (*(*v26 + 120))(v26, 1, v23);
    (*(*v26 + 96))(v26, 0, 0.0, 0.0, 0.0, 0.0);
    v28 = *a3;
    if (*a3 != v26)
    {
      if (v28)
      {
        (*(*v28 + 24))(v28);
      }

      *a3 = v26;
      (*(*v26 + 16))(v26);
    }

    (*(*v26 + 24))(v26);
  }

  result = (*(*v23 + 24))(v23);
  if (v11)
  {
    result = (*(*v11 + 24))(v11);
  }

  if (v10)
  {
    v5 = *a3;
    return (*(*v5 + 136))(v5, 0xFFFFFFFFLL, 2);
  }

  return result;
}

void sub_2600403C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  (*(*v11 + 24))(v11);
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  if (*a10)
  {
    (*(**a10 + 24))(*a10);
  }

  _Unwind_Resume(a1);
}

void LiSoftShadow::~LiSoftShadow(LiSoftShadow *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*this)
  {
    (*(**this + 24))(*this);
  }
}

void LiHeShadowBlendAdd::~LiHeShadowBlendAdd(HGNode *this)
{
  HGLegacyBlend::~HGLegacyBlend(this);

  HGObject::operator delete(v1);
}

HGNode *LiHeShadowBlendAdd::GetOutput(HGNode *this, HGRenderer *a2)
{
  (*(*this + 136))(this, 0xFFFFFFFFLL, 2);

  return HGLegacyBlend::GetOutput(this, a2);
}

void LiHeMaxBlend::~LiHeMaxBlend(HGNode *this)
{
  LiHeProgramMaxBlend::~LiHeProgramMaxBlend(this);

  HGObject::operator delete(v1);
}

HGNode *LiHeMaxBlend::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v7 = v6;
  v8 = HGRenderer::GetInput(a2, this, 1u);
  v9 = HGRenderer::GetDOD(a2, v8);
  v11 = v10;
  if (HGRectIsNull(DOD, v7))
  {
    v12 = a2;
    v13 = this;
    v14 = 1;
LABEL_5:

    return HGRenderer::GetInput(v12, v13, v14);
  }

  if (HGRectIsNull(v9, v11))
  {
    v12 = a2;
    v13 = this;
    v14 = 0;
    goto LABEL_5;
  }

  return LiHeProgramMaxBlend::GetOutput(this, a2);
}

void PCArray<LiLight,PCArray_Traits<LiLight>>::append(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  v5 = *(a2 + 12) + v4;
  if (*(a1 + 8) < v5)
  {
    v6 = 2 * v5 + 1;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(a1, v5, v6);
  if (*(a2 + 12) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 944 * v4;
    do
    {
      LiLight::operator=(*(a1 + 16) + v9, *(a2 + 16) + v7);
      ++v8;
      v9 += 944;
      v7 += 944;
    }

    while (v8 < *(a2 + 12));
  }
}

void LiHe3DEngineNode::LiHe3DEngineNode(LiHe3DEngineNode *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_28726FE70;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  PCSharedCount::PCSharedCount((v2 + 448));
  *(this + 57) = 0;
  PCSharedCount::PCSharedCount(this + 58);
  *(this + 75) = 0x3FF0000000000000;
  *(this + 70) = 0x3FF0000000000000;
  *(this + 65) = 0x3FF0000000000000;
  *(this + 60) = 0x3FF0000000000000;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 38) = xmmword_260343AA0;
  *(this + 79) = 0;
  *(this + 81) = 0x3FF0000000000000;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  (*(*this + 136))(this, 0xFFFFFFFFLL, 1024);
  (*(*this + 144))(this, 0xFFFFFFFFLL, 512);
  *(this + 103) = -1082130432;
  *(this + 640) = 0;
  v3 = (*(*this + 136))(this, 0xFFFFFFFFLL, 4);
  v4 = PCColorSpaceCache::cgRec709Linear(v3);
  *(this + 86) = v4;
  *(this + 87) = PCColorSpaceCache::cgRec709Linear(v4);
}

void sub_260040CCC(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v1 + 448));
  v3 = *(v1 + 432);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(v1 + 424);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v1 + 416);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void LiHe3DEngineNode::~LiHe3DEngineNode(PCSharedCount *this)
{
  this->var0 = &unk_28726FE70;
  PCSharedCount::~PCSharedCount(this + 58);
  PCSharedCount::~PCSharedCount(this + 56);
  var0 = this[54].var0;
  if (var0)
  {
    (*(*var0 + 24))(var0);
  }

  v3 = this[53].var0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = this[52].var0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGNode::~HGNode(this);
}

{
  LiHe3DEngineNode::~LiHe3DEngineNode(this);

  HGObject::operator delete(v1);
}

void LiHe3DEngineNode::setScene(uint64_t a1, const PCSharedCount *a2)
{
  *(a1 + 440) = a2->var0;
  PCSharedCount::PCSharedCount(&v3, a2 + 1);
  PCSharedCount::operator=((a1 + 448), &v3);
  PCSharedCount::~PCSharedCount(&v3);
}

void LiHe3DEngineNode::setCamera(uint64_t a1, const PCSharedCount *a2, char a3)
{
  *(a1 + 456) = a2->var0;
  PCSharedCount::PCSharedCount(&v5, a2 + 1);
  PCSharedCount::operator=((a1 + 464), &v5);
  PCSharedCount::~PCSharedCount(&v5);
  *(a1 + 472) = a3;
}

uint64_t LiHe3DEngineNode::setPixelTransform(uint64_t result, uint64_t a2)
{
  v2 = result + 480;
  if (result + 480 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v2 + j) = *(a2 + j);
      }

      v2 += 32;
      a2 += 32;
    }
  }

  *(result + 560) = 0x3FF0000000000000;
  return result;
}

__n128 LiHe3DEngineNode::setROI(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[38] = *a2;
  return result;
}

__n128 LiHe3DEngineNode::setOrthoCameraShift(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[41] = *a2;
  return result;
}

uint64_t LiHe3DEngineNode::GetDOD(LiHe3DEngineNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *(this + 152);
  v5 = *(this + 60);
  v6 = v5 * v4;
  v7 = *(this + 154);
  v8 = (v7 + v4);
  v9 = *(this + 153);
  *&v8 = v5 * v8;
  v10 = *(this + 65);
  v11 = v10 * v9;
  v12 = *(this + 155);
  v13 = (v12 + v9);
  v14 = v10 * v13;
  return HGRectMake4f(v13, v6 - ((*&v8 - v6) - v7), v11 - ((v14 - v11) - v12), *&v8, v14);
}

uint64_t LiHe3DEngineNode::setupColorTexture@<X0>(HGGPURenderer **a1@<X1>, void *a2@<X8>)
{
  MetalContext = HGGPURenderer::GetMetalContext(*a1);
  v7 = *(*(MetalContext + 2) + 16);
  v8 = HGMetalContext::texturePool(MetalContext);
  v9 = HGRectMake4i(0, 0, *(a1 + 6) - *(a1 + 4), *(a1 + 7) - *(a1 + 5));
  return HGMetalTexture::create(v7, v8, v9, v10, 27, 0, 1, 0, a2, 1);
}

HGBitmap *LiHe3DEngineNode::setupOutputColorTexture(LiHe3DEngineNode *this, HGPage *a2)
{
  Buffer = *(a2 + 1);
  if (Buffer)
  {
    (*(*Buffer + 16))(*(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *&v8.var0 = *(a2 + 2);
    *&v8.var2 = *(a2 + 3);
    Buffer = HGGPURenderer::CreateBuffer(v4, v8, *(a2 + 8), 1, 1, 0);
    *(a2 + 1) = Buffer;
  }

  v5 = *a2;

  return HGGPURenderer::ConvertToMetalTexture(v5, Buffer);
}

uint64_t LiHe3DEngineNode::createTextureFromPool@<X0>(uint64_t a1@<X1>, int a2@<W2>, unsigned int a3@<W3>, void *a4@<X8>)
{
  MetalContext = HGGPURenderer::GetMetalContext(*a1);
  v9 = *(*(MetalContext + 2) + 16);
  v10 = HGMetalContext::texturePool(MetalContext);
  v11 = HGRectMake4i(0, 0, *(a1 + 24) - *(a1 + 16), *(a1 + 28) - *(a1 + 20));
  return HGMetalTexture::create(v9, v10, v11, v12, a2, 0, 1, 0, a4, 2, a3);
}

void *getRenderPassClearColorClearDepthResolve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
  [objc_msgSend(v8 "depthAttachment")];
  [objc_msgSend(v8 "depthAttachment")];
  [objc_msgSend(v8 "depthAttachment")];
  [objc_msgSend(v8 "depthAttachment")];
  [objc_msgSend(v8 "depthAttachment")];
  return v8;
}

void *getRenderPassClearColorLoadDepthResolve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
  [objc_msgSend(v6 "depthAttachment")];
  [objc_msgSend(v6 "depthAttachment")];
  [objc_msgSend(v6 "depthAttachment")];
  [objc_msgSend(v6 "depthAttachment")];
  return v6;
}

void *getRenderPassClearColorClearDepth(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  [objc_msgSend(objc_msgSend(v5 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v5 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v5 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v5 "colorAttachments")];
  [objc_msgSend(v5 "depthAttachment")];
  [objc_msgSend(v5 "depthAttachment")];
  [objc_msgSend(v5 "depthAttachment")];
  [objc_msgSend(v5 "depthAttachment")];
  return v5;
}

void *getRenderPassLoadColorLoadDepth(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
  [objc_msgSend(v4 "depthAttachment")];
  [objc_msgSend(v4 "depthAttachment")];
  [objc_msgSend(v4 "depthAttachment")];
  return v4;
}

void LiHe3DEngineNode::getHelium3DEngine(LiHe3DEngineNode *this, LiSceneObject *a2, LiAgent *a3)
{
  if (a2)
  {
    if (v6)
    {
      Li3DEngineObject::getSceneData(v6, &v13);
      (*(*v13 + 16))(v13, a3);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }

    else
    {
      if (v7)
      {
        v8 = v7;
        v9 = (*(*v7 + 136))(v7);
        if (v9 >= 1)
        {
          v10 = v9;
          v11 = 0;
          do
          {
            v12 = (*(*v8 + 144))(v8, v11);
            LiHe3DEngineNode::getHelium3DEngine(this, v12, a3);
            v11 = (v11 + 1);
          }

          while (v10 != v11);
        }
      }
    }
  }
}

void sub_260041794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void LiHe3DEngineNode::traverse(uint64_t a1, const void *a2, std::__shared_weak_count **a3)
{
  if (a2)
  {
    if (v6)
    {
      v7 = v6;
      Li3DEngineObject::getSceneData(v6, &v29);
      v8 = v29[1];
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      std::recursive_mutex::lock(v8);
      if (PCBitmap::getRepresentation(v8))
      {
        Li3DEngineObject::getSceneData(v7, &v28);
        v10 = a3[1];
        v9 = a3[2];
        if (v10 >= v9)
        {
          v17 = *a3;
          v18 = v10 - *a3;
          v19 = v18 >> 4;
          v20 = (v18 >> 4) + 1;
          if (v20 >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v21 = v9 - v17;
          if (v21 >> 3 > v20)
          {
            v20 = v21 >> 3;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
          v23 = 0xFFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          v33 = a3;
          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(a3, v23);
          }

          *(16 * v19) = v28;
          v24 = 16 * v19 + 16;
          v28 = 0;
          memcpy(0, v17, v18);
          v25 = *a3;
          *a3 = 0;
          a3[1] = v24;
          v26 = a3[2];
          a3[2] = 0;
          v31 = v25;
          v32 = v26;
          v29 = &v25->__vftable;
          v30 = v25;
          std::__split_buffer<std::shared_ptr<TXTextObject>>::~__split_buffer(&v29);
          shared_owners = v28.__shared_owners_;
          a3[1] = v24;
          if (shared_owners)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
          }
        }

        else
        {
          v10->std::__shared_count = v28;
          a3[1] = &v10->__shared_weak_owners_;
        }
      }

      std::recursive_mutex::unlock(v8);
    }

    else
    {
      if (v11)
      {
        v12 = v11;
        v13 = (*(*v11 + 136))(v11);
        if (v13 >= 1)
        {
          v14 = v13;
          v15 = 0;
          do
          {
            v16 = (*(*v12 + 144))(v12, v15);
            LiHe3DEngineNode::traverse(a1, v16, a3);
            v15 = (v15 + 1);
          }

          while (v14 != v15);
        }
      }
    }
  }
}

void sub_260041A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::recursive_mutex::unlock(v10);
  _Unwind_Resume(a1);
}

void LiHe3DEngineNode::render(uint64_t a1, const void ***a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, int32x2_t a11, int32x2_t a12, uint64_t a13, uint64_t a14, double *a15)
{
  {
    LiHe3DEngineNode::render();
  }

  std::mutex::lock(&LiHe3DEngineNode::render(std::vector<std::shared_ptr<Li3DEngineObjectDataBase>> const&,objc_object  {objcproto10MTLTexture}*,objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto15MTLCommandQueue}*,objc_object  {objcproto9MTLDevice}*,HGRect,objc_object,PCVector2<double>)::mtx);
  v18 = *a2;
  v17 = a2[1];
  if (v17 == *a2)
  {
    fwrite("LiHe3DEngineNode: no scenes to render were found.\n", 0x32uLL, 1uLL, *MEMORY[0x277D85DF8]);
    goto LABEL_125;
  }

  v166 = a2;
  v19 = 0;
  v157 = v17 - *a2;
  v152 = v157 >> 4;
  do
  {
    v20 = *v18;
    v18 += 2;
    v21 = v20[45];
    if (v19 <= v21)
    {
      v19 = v21;
    }
  }

  while (v18 != v17);
  v170 = v19;
  v206 = 0;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v186 = *(a1 + 456);
  v192 = 0u;
  v193 = 0u;
  PCSharedCount::PCSharedCount(&v187, (a1 + 464));
  v23 = *a15;
  v22 = a15[1];
  v24 = *(a1 + 656);
  v25 = *(a1 + 664);
  v26 = *(a1 + 472);
  v225 = v186;
  PCSharedCount::PCSharedCount(&v226, &v187);
  v167 = a1;
  if (!v225)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v225 + 232))(&v231);
  v27 = 0;
  v28 = (a14 - a13);
  v29 = (HIDWORD(a14) - HIDWORD(a13));
  do
  {
    *(&v210 + v27) = vcvt_hight_f32_f64(vcvt_f32_f64(*(&v231 + 2 * v27)), *(&v231 + 2 * v27 + 1));
    ++v27;
  }

  while (v27 != 4);
  trans(&v210, &v241);
  v188 = v241;
  v189 = v242;
  v190 = v243;
  v191 = v244;
  PCSharedCount::~PCSharedCount(&v226);
  v208.var0 = v186;
  PCSharedCount::PCSharedCount(&v209, &v187);
  v162 = v24;
  v171 = v25;
  v207.f64[0] = v23;
  v207.f64[1] = v22;
  v228[0] = a11;
  v228[1] = a12;
  v227[0] = a13;
  v227[1] = a14;
  if (!v208.var0)
  {
    throw_PCNullPointerException(1);
  }

  if (fabs((*(*v208.var0 + 504))(v208.var0)) >= 0.0000001 || v26 == 0)
  {
    v210 = (*v233 + *v233) / (*(&v231 + 1) - *&v231);
    *&v211 = 0;
    v218 = 0u;
    v213 = (*v233 + *v233) / (*(&v232 + 1) - *&v232);
    *(&v211 + 1) = -(*(&v231 + 1) + *&v231) / (*(&v231 + 1) - *&v231);
    v214 = -(*(&v232 + 1) + *&v232) / (*(&v232 + 1) - *&v232);
    v212 = 0u;
    memset(v215, 0, sizeof(v215));
    v216 = -*&v233[8] / (*&v233[8] - *v233);
    v217 = -(*&v233[8] * *v233) / (*&v233[8] - *v233);
    v219 = 0xBFF0000000000000;
  }

  else
  {
    if (!v208.var0)
    {
      throw_PCNullPointerException(1);
    }

    (*(*v208.var0 + 232))(&v241);
    v31 = *(&v242 + 1);
    v32 = *(&v244 + 1);
    v33 = v245;
    v34 = v246;
    v240 = 0x3FF0000000000000;
    v237 = 0x3FF0000000000000;
    v234 = 0x3FF0000000000000;
    *v233 = 0x3FF0000000000000;
    memset(&v233[8], 0, 32);
    v235 = 0u;
    v236 = 0u;
    v238 = 0u;
    v239 = 0u;
    if (!v208.var0)
    {
      throw_PCNullPointerException(1);
    }

    (*(*v208.var0 + 264))(v208.var0, &v231);
    if (!v208.var0)
    {
      throw_PCNullPointerException(1);
    }

    (*(*v208.var0 + 272))(&v229);
    v35 = sqrt(v31 * v31 + v32 * v32 + v33 * v33 + v34 * v34);
    v36 = vcvtd_n_f64_u32(a12.i32[0] - a11.i32[0], 1uLL) * (*&v232 / v229) / v23;
    v37 = vcvtd_n_f64_u32(a12.i32[1] - a11.i32[1], 1uLL) * (*(&v232 + 1) / v230) / v22;
    v38 = v162 * (*&v232 / v229) / v23;
    v39 = v171 * (*(&v232 + 1) / v230) / v22;
    v40 = v38;
    v41 = v40 - v36;
    v42 = v36 + v40;
    v43 = v39;
    v44 = v43 - v37;
    v45 = v37 + v43;
    v46 = v35;
    v47 = v46 + -100000.0;
    v48 = (v42 - v41) / (a12.i32[0] - a11.i32[0]);
    v49 = (v45 - v44) / (a12.i32[1] - a11.i32[1]);
    v50 = v41 + v48 * a13;
    v51 = v44 + v49 * (a12.i32[1] - a11.i32[1] - HIDWORD(a14));
    v52 = v48 * v28 + v50;
    v53 = v49 * v29 + v51;
    v54 = v46 + 100000.0 - (v46 + -100000.0);
    *(&v212 + 1) = 0;
    v213 = 2.0 / (v53 - v51);
    *&v215[1] = 0u;
    v211 = 0u;
    v214 = 0.0;
    v210 = 2.0 / (v52 - v50);
    *&v212 = -(v50 + v52) / (v52 - v50);
    v215[0] = -(v51 + v53) / (v53 - v51);
    v216 = -1.0 / v54;
    v217 = -v47 / v54;
    v218 = 0u;
    v219 = xmmword_260342700;
  }

  v55 = a10;
  v56 = a2;
  for (i = 0; i != 4; ++i)
  {
    v220[i] = vcvt_hight_f32_f64(vcvt_f32_f64(*(&v210 + 4 * i)), *(&v211 + 32 * i + 8));
  }

  trans(v220, __p);
  v192 = *__p;
  v193 = v222;
  v194 = v223;
  v195 = v224;
  PCSharedCount::~PCSharedCount(&v209);
  PCSharedCount::~PCSharedCount(&v187);
  v58 = *(a1 + 456);
  if (!v58)
  {
    throw_PCNullPointerException(1);
  }

  v59 = 0;
  v151 = 0;
  v156 = 0;
  v60 = (*(*v58 + 248))(v58, 0);
  do
  {
    v61 = 16 * v59;
    v62 = *((*v56)[2 * v59] + 1);
    std::recursive_mutex::lock(v62);
    v63 = *((*v56)[2 * v59] + 2);
    v153 = v62;
    SceneAndRenderer = Li3DEngineScene::getSceneAndRenderer(v62, v55);
    v155 = objc_alloc_init(MEMORY[0x277CDBAA8]);
    [v155 setCamera:objc_alloc_init(MEMORY[0x277CDBA48])];
    [v155 setName:@"RenderingCameraNode"];
    v231 = v188;
    v232 = v189;
    *v233 = v190;
    *&v233[16] = v191;
    [v155 setTransform:&v231];
    v65 = [v155 camera];
    v231 = v192;
    v232 = v193;
    *v233 = v194;
    *&v233[16] = v195;
    [v65 setProjectionTransform:&v231];
    [SceneAndRenderer setPointOfView:v155];
    [SceneAndRenderer setSceneTime:v63];
    [objc_msgSend(objc_msgSend(SceneAndRenderer "scene")];
    if (*(v167 + 640) == 1)
    {
      v66 = **v56;
      if (v66)
      {
      }

      else
      {
        v67 = 0;
      }

      LiPhysicsUtils::ConfigureScene(v67, v153, [SceneAndRenderer scene], (v63 == 0.0), v60);
      goto LABEL_54;
    }

    v68 = [objc_msgSend(objc_msgSend(SceneAndRenderer "scene")];
    if (v62[1].__m_.__opaque[32] == 1)
    {
      v69 = [objc_msgSend(SceneAndRenderer "scene")];
    }

    else
    {
      v69 = [v68 firstObject];
    }

    v70 = v69;
    v71 = *v56;
    v72 = (*v56)[2 * v59];
    if (*(v72 + 112) == 1)
    {
      v73 = *(v72 + 29);
      v74 = v73 == 8;
      if (v72[22])
      {
        v151 |= v74;
LABEL_44:
        v75 = [v69 setOpacity:v72[27]];
        v231 = *((*v56)[2 * v59] + 92);
        if (!v74)
        {
          v76 = Li3DEngineObjectDataBase::defaultPerInstanceColor(v75);
          if (!operator!=(&v231, v76))
          {
            goto LABEL_52;
          }
        }

        goto LABEL_51;
      }

      if (v73 == 8)
      {
        v231 = *Li3DEngineObjectDataBase::defaultPerInstanceColor(v69);
        v151 = 1;
        v74 = 1;
LABEL_51:
        v183[0] = MEMORY[0x277D85DD0];
        v183[1] = *"";
        v183[2] = ___ZN16LiHe3DEngineNode6renderERKNSt3__16vectorINS0_10shared_ptrI24Li3DEngineObjectDataBaseEENS0_9allocatorIS4_EEEEPU21objcproto10MTLTexture11objc_objectSB_SB_SB_SB_SB_PU26objcproto15MTLCommandQueue11objc_objectPU19objcproto9MTLDevice11objc_object6HGRectSG_9PCVector2IdE_block_invoke;
        v183[3] = &unk_279AA9C00;
        v184 = v231;
        v185 = v74;
        v183[4] = v70;
        [v70 enumerateChildNodesUsingBlock:v183];
LABEL_52:
        v71 = *v56;
      }
    }

    else if (v72[22])
    {
      v74 = 0;
      goto LABEL_44;
    }

    memset(v233, 0, 32);
    v232 = 0u;
    v231 = 0u;
    v77 = v71[2 * v59];
    v78 = *(v77 + 40);
    v79 = *(v77 + 24);
    v80 = *(v77 + 72);
    v243 = *(v77 + 56);
    v244 = v80;
    v241 = v79;
    v242 = v78;
    trans(&v241, &v231);
    v241 = v231;
    v242 = v232;
    v243 = *v233;
    v244 = *&v233[16];
    [v70 setTransform:&v241];
LABEL_54:
    v81 = [objc_msgSend(objc_msgSend(SceneAndRenderer "scene")];
    v82 = *(v167 + 79);
    if (v81 != v82)
    {
      [objc_msgSend(objc_msgSend(SceneAndRenderer "scene")];
    }

    [objc_msgSend(objc_msgSend(SceneAndRenderer "scene")];
    v154 = v59;
    v83 = (*v56)[2 * v59];
    v84 = *(v167 + 86);
    v85 = *(v167 + 87);
    v174 = 0u;
    v175 = 0u;
    v173 = 0x3FF0000000000000;
    v176 = 0x3FF0000000000000;
    v177 = 0u;
    v178 = 0u;
    v180 = 0u;
    v181 = 0u;
    v179 = 0x3FF0000000000000;
    v182 = 0x3FF0000000000000;
    buildSCNLights(v83 + 168, v84, v85, &v173, __p);
    LODWORD(v86) = 0;
    v87 = (__p[1] - __p[0]) >> 3;
    v88 = *(&v203 + 1);
    v160 = *(&v204 + 1);
    v89 = v206;
    v90 = *(&v205 + 1);
    v163 = v61;
    do
    {
      v172 = [a9 commandBuffer];
      [v172 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"light %d command buffer", v86)}];
      hasDepthMatte = LiHe3DEngineNode::hasDepthMatte(v167);
      if (v170 < 9)
      {
        if (v157 != 16)
        {
          if (!v156)
          {
            if (!hasDepthMatte)
            {
              RenderPassClearColorClearDepth = getRenderPassClearColorClearDepth(a3, v92, a7);
              goto LABEL_69;
            }

LABEL_67:
            RenderPassClearColorClearDepth = getRenderPassLoadColorLoadDepth(a3, a7);
            goto LABEL_69;
          }

          if (v152 - 1 != v154)
          {
            goto LABEL_67;
          }

LABEL_65:
          RenderPassClearColorClearDepth = getRenderPassLoadColorLoadDepthResolve(a3, a6, a7, a8);
          goto LABEL_69;
        }

        v93 = a6;
        if (hasDepthMatte)
        {
          goto LABEL_65;
        }

LABEL_62:
        RenderPassClearColorClearDepth = getRenderPassClearColorClearDepthResolve(a3, v93, a7, a8);
        goto LABEL_69;
      }

      v93 = a4;
      if (!v86)
      {
        goto LABEL_62;
      }

      RenderPassClearColorClearDepth = getRenderPassClearColorLoadDepthResolve(a3, a4, a7);
LABEL_69:
      v95 = RenderPassClearColorClearDepth;
      [MEMORY[0x277CDBB18] begin];
      v96 = *(*v166 + v61);
      (*(*v96 + 24))(v96, [SceneAndRenderer scene], v55, v60);
      v97 = 8;
      v98 = v86;
      do
      {
        if (v87 > v98)
        {
          v99 = [objc_msgSend(SceneAndRenderer "scene")];
          [v99 addChildNode:*(__p[0] + v98)];
        }

        ++v98;
        --v97;
      }

      while (v97);
      [MEMORY[0x277CDBB18] commit];
      [MEMORY[0x277CDBB18] flush];
      [SceneAndRenderer renderAtTime:v172 viewport:v95 commandBuffer:v63 passDescriptor:{0.0, 0.0, v28, v29}];
      v100 = 8;
      v101 = v86;
      do
      {
        if (v87 > v101)
        {
          [*(__p[0] + v101) removeFromParentNode];
        }

        ++v101;
        --v100;
      }

      while (v100);
      v55 = a10;
      (*(*v96 + 32))(v96, [SceneAndRenderer scene], a10);
      if (v170 >= 9)
      {
        if (v88 != a10)
        {
          v102 = [a4 width];
          v103 = [a4 height];
          if (v88)
          {
          }

          *(&v203 + 1) = a10;
          *&v231 = 0;
          v104 = [a10 newLibraryWithSource:objc_msgSend(MEMORY[0x277CCACA8] options:"stringWithUTF8String:" error:{"\n            #include <metal_stdlib>\n\n            using namespace metal;\n            //---------------------------------------\n            // clip space processing\n            //---------------------------------------\n\n            typedef struct\n            {\n                float3 position [[attribute(0)]];\n            } ClipVertex;\n\n            typedef struct\n            {\n                float4 position [[position]];\n            } ClipData;\n\n            vertex ClipData vertexShader(ClipVertex in [[stage_in]])\n            {\n                ClipData out;\n                out.position = float4(in.position, 1.0);\n                return out;\n            }\n\n            fragment float4 fragmentShader(ClipData frag [[stage_in]], \n                                           texture2d<half> colorMap0 [[ texture(0) ]], \n                                           texture2d<half> colorMap1 [[ texture(1) ]])\n            {\n                constexpr sampler colorSampler(mip_filter::none, \n                                               mag_filter::nearest, \n                                               min_filter::nearest);\n\n                const float2 texCoord0(frag.position.x / colorMap0.get_width(), \n                                       frag.position.y / colorMap0.get_height());\n                const half4 color0 = colorMap0.sample(colorSampler, texCoord0);\n\n                const float2 texCoord1(frag.position.x / colorMap1.get_width(), \n                                       frag.position.y / colorMap1.get_height());\n                const half4 color1 = colorMap1.sample(colorSampler, texCoord1);\n            \n                float3 rgb = float3( color0.rgb + color1.rgb);\n                float a = float( max(color0.a, color1.a));\n                return float4(rgb, a);\n            }"), 0, &v231}];
          *&v204 = v104;
          v105 = v231;
          if (v231)
          {
            NSLog(&stru_2872E15A0.isa, [v231 localizedDescription]);
            NSLog(&stru_2872E15A0.isa, [v231 localizedFailureReason]);
          }

          v107 = objc_alloc_init(MEMORY[0x277CD6F78]);
          [v107 setRasterSampleCount:1];
          [v107 setVertexFunction:{objc_msgSend(v104, "newFunctionWithName:", @"vertexShader"}];
          [v107 setFragmentFunction:{objc_msgSend(v104, "newFunctionWithName:", @"fragmentShader"}];
          [v107 setVertexDescriptor:VertexDescriptor];
          [objc_msgSend(objc_msgSend(v107 "colorAttachments")];
          [objc_msgSend(objc_msgSend(v107 "colorAttachments")];
          *&v231 = 0;
          v160 = [a10 newRenderPipelineStateWithDescriptor:v107 error:&v231];
          *(&v204 + 1) = v160;
          if (v231)
          {
            NSLog(&cfstr_FailedToCreate_5.isa, v231);
          }

          v206 = v89;
          v108 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:v102 height:v103 mipmapped:0];
          [v108 setResourceOptions:32];
          [v108 setTextureType:2];
          [v108 setUsage:1];
          v90 = [a10 newTextureWithDescriptor:v108];
          *(&v205 + 1) = v90;
          [v90 setLabel:@"TemporaryColorCopy"];
        }

        v109 = [v172 blitCommandEncoder];
        v110 = [a5 width];
        v111 = [a5 height];
        v231 = 0uLL;
        *&v232 = 0;
        *&v241 = v110;
        *(&v241 + 1) = v111;
        *&v242 = 1;
        v211 = 0uLL;
        v210 = 0.0;
        if (v86)
        {
          [v109 copyFromTexture:a5 sourceSlice:0 sourceLevel:0 sourceOrigin:&v231 sourceSize:&v241 toTexture:v90 destinationSlice:0 destinationLevel:0 destinationOrigin:&v210];
          [v109 endEncoding];
          v112 = [MEMORY[0x277CD6F50] renderPassDescriptor];
          [objc_msgSend(objc_msgSend(v112 "colorAttachments")];
          [objc_msgSend(objc_msgSend(v112 "colorAttachments")];
          [objc_msgSend(objc_msgSend(v112 "colorAttachments")];
          [objc_msgSend(v112 "depthAttachment")];
          v113 = [v172 renderCommandEncoderWithDescriptor:v112];
          [v113 setRenderPipelineState:v160];
          [v113 setFragmentTexture:a4 atIndex:0];
          [v113 setFragmentTexture:v90 atIndex:1];
          [v113 setFrontFacingWinding:1];
          [v113 setCullMode:2];
          [v113 setVertexBuffer:v89 offset:0 atIndex:0];
          [v113 drawPrimitives:3 vertexStart:0 vertexCount:6];
          [v113 endEncoding];
        }

        else
        {
          [v109 copyFromTexture:a4 sourceSlice:0 sourceLevel:0 sourceOrigin:&v231 sourceSize:&v241 toTexture:a5 destinationSlice:0 destinationLevel:0 destinationOrigin:&v210];
          [v109 endEncoding];
          [objc_msgSend(objc_msgSend(SceneAndRenderer "scene")];
        }

        v88 = a10;
      }

      [v172 commit];
      [v172 waitUntilCompleted];
      v86 = (v86 + 8);
      v61 = v163;
    }

    while (v87 > v86);
    v114 = __p[0];
    v115 = __p[1];
    v56 = v166;
    if (__p[0] != __p[1])
    {
      do
      {
        v116 = *v114;

        ++v114;
      }

      while (v114 != v115);
      v114 = __p[0];
    }

    if (v114)
    {
      __p[1] = v114;
      operator delete(v114);
    }

    if (v170 > 8)
    {
      v172 = [a9 commandBuffer];
      [v172 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"depth comp. command buffer"}];
      v117 = *(&v199 + 1);
      if (*(&v199 + 1) != a10)
      {
        v118 = [a7 width];
        v119 = [a7 height];
        if (v117)
        {
        }

        *(&v199 + 1) = a10;
        *&v231 = 0;
        v120 = [a10 newLibraryWithSource:objc_msgSend(MEMORY[0x277CCACA8] options:"stringWithUTF8String:" error:{"\n        #include <metal_stdlib>\n\n        using namespace metal;\n        //---------------------------------------\n        // clip space processing\n        //---------------------------------------\n\n        typedef struct {\n            float3 position [[attribute(0)]];\n        } ClipVertex;\n\n        typedef struct {\n            float4 position [[position]];\n        } ClipData;\n\n        typedef struct {\n            float4 fragColor [[color(0)]];\n            float fragDepth  [[color(1)]];\n        } FragData;\n\n        vertex ClipData vertexShader(ClipVertex in [[stage_in]])\n        {\n            ClipData out;\n            out.position = float4(in.position, 1.0);\n            return out;\n        }\n\n        fragment FragData fragmentShader( ClipData frag             [[stage_in]], \n                                          texture2d<half> colorMap1 [[ texture(0) ]], \n                                          depth2d_ms<float> depth1  [[ texture(1) ]], \n                                          texture2d<half> colorMap2 [[ texture(2) ]], \n                                          texture2d<float> depth2   [[ texture(3) ]], \n                                          constant float4 &flags    [[ buffer(0) ]])\n        {\n            FragData out;\n\n            constexpr sampler s(mip_filter::none, mag_filter::nearest, min_filter::nearest);\n\n            const float2 texCoordC(frag.position.x / colorMap1.get_width(), \n                                   frag.position.y / colorMap1.get_height());\n\n            const uint2 texCoordD(frag.position.x, frag.position.y);\n\n            const BOOL firstPass = (flags.x > 0.0);\n\n            float d1 = depth1.read(texCoordD, 0);\n            float d2 = depth2.read(texCoordD).r;\n            \n            if (firstPass || (d1 > d2)) {\n               out.fragColor = float4( colorMap1.sample(s, texCoordC));\n               out.fragDepth = d1;\n            } else {\n               out.fragColor = float4( colorMap2.sample(s, texCoordC));\n               out.fragDepth = d2;\n          }\n\n          return out;\n        }"), 0, &v231}];
        *&v200 = v120;
        v121 = v231;
        if (v231)
        {
          NSLog(&stru_2872E15A0.isa, [v231 localizedDescription]);
          NSLog(&stru_2872E15A0.isa, [v231 localizedFailureReason]);
        }

        v123 = objc_alloc_init(MEMORY[0x277CD6F78]);
        [v123 setRasterSampleCount:1];
        [v123 setVertexFunction:{objc_msgSend(v120, "newFunctionWithName:", @"vertexShader"}];
        [v123 setFragmentFunction:{objc_msgSend(v120, "newFunctionWithName:", @"fragmentShader"}];
        [v123 setVertexDescriptor:v122];
        [objc_msgSend(objc_msgSend(v123 "colorAttachments")];
        [objc_msgSend(objc_msgSend(v123 "colorAttachments")];
        [objc_msgSend(objc_msgSend(v123 "colorAttachments")];
        [objc_msgSend(objc_msgSend(v123 "colorAttachments")];
        *(&v200 + 1) = [a10 newRenderPipelineStateWithDescriptor:v123 error:&v231];
        if (v231)
        {
          NSLog(&cfstr_FailedToCreate_5.isa, v231);
        }

        v124 = 0;
        v125 = 1;
        do
        {
          v126 = v125;
          v127 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:v118 height:v119 mipmapped:0];
          [v127 setResourceOptions:32];
          [v127 setTextureType:2];
          [v127 setUsage:5];
          [v127 setSampleCount:1];
          v128 = [a10 newTextureWithDescriptor:v127];
          *(&v201 + v124) = v128;
          [v128 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"DepthTexPingPong(%d)", v124)}];
          v125 = 0;
          v124 = 1;
        }

        while ((v126 & 1) != 0);
        v56 = v166;
        v129 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:v118 height:v119 mipmapped:0];
        [v129 setResourceOptions:32];
        [v129 setTextureType:2];
        [v129 setUsage:1];
        *&v202 = [a10 newTextureWithDescriptor:v129];
        [v202 setLabel:@"TemporaryColorCopy"];
      }

      if (v156)
      {
        v130 = [v172 blitCommandEncoder];
        v131 = [a6 width];
        v132 = [a6 height];
        v231 = 0uLL;
        *&v232 = 0;
        *&v241 = v131;
        *(&v241 + 1) = v132;
        *&v242 = 1;
        v211 = 0uLL;
        v210 = 0.0;
        [v130 copyFromTexture:a6 sourceSlice:0 sourceLevel:0 sourceOrigin:&v231 sourceSize:&v241 toTexture:v202 destinationSlice:0 destinationLevel:0 destinationOrigin:&v210];
        v164 = 0.0;
        [v130 endEncoding];
      }

      else
      {
        v164 = 1.0;
      }

      v133 = [MEMORY[0x277CD6F50] renderPassDescriptor];
      [objc_msgSend(objc_msgSend(v133 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v133 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v133 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v133 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v133 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v133 "colorAttachments")];
      v134 = [v172 renderCommandEncoderWithDescriptor:v133];
      [v134 setLabel:@"Depth Comp. RenderEncoder"];
      [v134 setRenderPipelineState:*(&v200 + 1)];
      [v134 setFragmentTexture:a5 atIndex:0];
      [v134 setFragmentTexture:a7 atIndex:1];
      [v134 setFragmentTexture:v202 atIndex:2];
      [v134 setFragmentTexture:*(&v201 + (v156 & 1)) atIndex:3];
      v231 = LODWORD(v164);
      [v134 setFragmentBytes:&v231 length:16 atIndex:0];
      v135 = *(&v202 + 1);
      [v134 setFrontFacingWinding:1];
      [v134 setCullMode:2];
      [v134 setVertexBuffer:v135 offset:0 atIndex:0];
      [v134 drawPrimitives:3 vertexStart:0 vertexCount:6];
      [v134 endEncoding];
      [v172 commit];
      [v172 waitUntilCompleted];
    }

    [v155 removeFromParentNode];

    std::recursive_mutex::unlock(v153);
    v59 = ++v156;
  }

  while (v152 > v156);
  if (v151)
  {
    v172 = [a9 commandBuffer];
    [v172 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"alpha clamp. command buffer"}];
    v136 = *(&v196 + 1);
    if (*(&v196 + 1) != a10)
    {
      v137 = [a6 width];
      v138 = [a6 height];
      if (v136)
      {
      }

      *(&v196 + 1) = a10;
      *&v231 = 0;
      v139 = [a10 newLibraryWithSource:objc_msgSend(MEMORY[0x277CCACA8] options:"stringWithUTF8String:" error:{"\n        #include <metal_stdlib>\n\n        using namespace metal;\n        //---------------------------------------\n        // clip space processing\n        //---------------------------------------\n\n        typedef struct\n        {\n            float3 position [[attribute(0)]];\n        } ClipVertex;\n\n        typedef struct\n        {\n            float4 position [[position]];\n        } ClipData;\n\n        vertex ClipData vertexShader(ClipVertex in [[stage_in]])\n        {\n            ClipData out;\n            out.position = float4(in.position, 1.0);\n            return out;\n        }\n\n        fragment float4 fragmentShader(ClipData frag [[stage_in]], \n                                       texture2d<half> colorMap0 [[ texture(0) ]])\n        {\n            constexpr sampler colorSampler(mip_filter::none, \n                                           mag_filter::nearest, \n                                           min_filter::nearest);\n\n            const float2 texCoord0(frag.position.x / colorMap0.get_width(), \n                                   frag.position.y / colorMap0.get_height());\n            float4 color0 = float4(colorMap0.sample(colorSampler, texCoord0));\n            color0.a = min(1.0, color0.a);\n            return color0;\n        }"), 0, &v231}];
      *&v197 = v139;
      v140 = v231;
      if (v231)
      {
        NSLog(&stru_2872E15A0.isa, [v231 localizedDescription]);
        NSLog(&stru_2872E15A0.isa, [v231 localizedFailureReason]);
      }

      v142 = objc_alloc_init(MEMORY[0x277CD6F78]);
      [v142 setRasterSampleCount:1];
      [v142 setVertexFunction:{objc_msgSend(v139, "newFunctionWithName:", @"vertexShader"}];
      [v142 setFragmentFunction:{objc_msgSend(v139, "newFunctionWithName:", @"fragmentShader"}];
      [v142 setVertexDescriptor:v141];
      [objc_msgSend(objc_msgSend(v142 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v142 "colorAttachments")];
      *&v231 = 0;
      *(&v197 + 1) = [a10 newRenderPipelineStateWithDescriptor:v142 error:&v231];
      if (v231)
      {
        NSLog(&cfstr_FailedToCreate_5.isa, v231);
      }

      v143 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:v137 height:v138 mipmapped:0];
      [v143 setResourceOptions:32];
      [v143 setTextureType:2];
      [v143 setUsage:1];
      *&v198 = [a10 newTextureWithDescriptor:v143];
      [v198 setLabel:@"TemporaryCopy"];
    }

    v144 = [v172 blitCommandEncoder];
    v145 = [a6 width];
    v146 = [a6 height];
    v231 = 0uLL;
    *&v232 = 0;
    *&v241 = v145;
    *(&v241 + 1) = v146;
    *&v242 = 1;
    v147 = v198;
    v211 = 0uLL;
    v210 = 0.0;
    [v144 copyFromTexture:a6 sourceSlice:0 sourceLevel:0 sourceOrigin:&v231 sourceSize:&v241 toTexture:v198 destinationSlice:0 destinationLevel:0 destinationOrigin:&v210];
    [v144 endEncoding];
    v148 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    [objc_msgSend(objc_msgSend(v148 "colorAttachments")];
    [objc_msgSend(objc_msgSend(v148 "colorAttachments")];
    [objc_msgSend(objc_msgSend(v148 "colorAttachments")];
    [objc_msgSend(v148 "depthAttachment")];
    v149 = [v172 renderCommandEncoderWithDescriptor:v148];
    [v149 setRenderPipelineState:*(&v197 + 1)];
    [v149 setFragmentTexture:v147 atIndex:0];
    v150 = *(&v198 + 1);
    [v149 setFrontFacingWinding:1];
    [v149 setCullMode:2];
    [v149 setVertexBuffer:v150 offset:0 atIndex:0];
    [v149 drawPrimitives:3 vertexStart:0 vertexCount:6];
    [v149 endEncoding];
    [v172 commit];
  }

  if (v172)
  {
    [v172 waitUntilScheduled];
  }

LABEL_125:
  std::mutex::unlock(&LiHe3DEngineNode::render(std::vector<std::shared_ptr<Li3DEngineObjectDataBase>> const&,objc_object  {objcproto10MTLTexture}*,objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto15MTLCommandQueue}*,objc_object  {objcproto9MTLDevice}*,HGRect,objc_object,PCVector2<double>)::mtx);
}

void sub_26004347C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::recursive_mutex *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  PCSharedCount::~PCSharedCount(v64 + 1);
  PCSharedCount::~PCSharedCount(&a64);
  std::mutex::unlock(&LiHe3DEngineNode::render(std::vector<std::shared_ptr<Li3DEngineObjectDataBase>> const&,objc_object  {objcproto10MTLTexture}*,objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto15MTLCommandQueue}*,objc_object  {objcproto9MTLDevice}*,HGRect,objc_object,PCVector2<double>)::mtx);
  _Unwind_Resume(a1);
}

uint64_t ___ZN16LiHe3DEngineNode6renderERKNSt3__16vectorINS0_10shared_ptrI24Li3DEngineObjectDataBaseEENS0_9allocatorIS4_EEEEPU21objcproto10MTLTexture11objc_objectSB_SB_SB_SB_SB_PU26objcproto15MTLCommandQueue11objc_objectPU19objcproto9MTLDevice11objc_object6HGRectSG_9PCVector2IdE_block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  result = [a2 geometry];
  if (result)
  {
    v5 = [objc_msgSend(a2 "geometry")];
    [a2 setGeometry:v5];

    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "geometry"), "materials"), "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [objc_msgSend(a2 "geometry")];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      v16 = *MEMORY[0x277CDBC10];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) copy];
          [objc_msgSend(v12 "multiply")];
          v13 = *(a1 + 56);
          if (v13 == 1)
          {
            v21 = v16;
            v14 = MEMORY[0x277CCACA8];
            [*(a1 + 32) opacity];
            v22 = [v14 stringWithFormat:@"_output.color *= %.3f;", v15 * 0.5];
            [v12 setShaderModifiers:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}];
            [v12 setDoubleSided:1];
            v13 = *(a1 + 56);
          }

          [v12 setBlendMode:v13];
          [v12 setReadsFromDepthBuffer:(*(a1 + 56) & 1) == 0];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v9);
    }

    return [objc_msgSend(a2 "geometry")];
  }

  return result;
}

BOOL LiHe3DEngineNode::hasDepthMatte(LiHe3DEngineNode *this)
{
  if ([objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")])
  {
    v2 = 432;
    return *(this + v2) != 0;
  }

  if (*(this + 52))
  {
    v2 = 424;
    return *(this + v2) != 0;
  }

  return 0;
}

uint64_t LiHe3DEngineNode::RenderPageMetal(HGNode *this, HGPage *a2)
{
  HGPagePullMetalTexturesGuard::HGPagePullMetalTexturesGuard(&v40, this, a2);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  LiHe3DEngineNode::traverse(this, *(this + 55), &v37);
  v5 = v37;
  if (v38 == v37)
  {
    v11 = LiHe3DEngineNode::setupOutputColorTexture(v4, a2);
    HGGPURenderer::ClearMetal(*a2, *(a2 + 1), *(a2 + 1), v12);
    (*(*v11 + 24))(v11);
    v13 = *(a2 + 1);
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5;
      v5 += 2;
      v8 = v7[45];
      if (v6 <= v8)
      {
        v6 = v8;
      }
    }

    while (v5 != v38);
    v9 = LiHe3DEngineNode::setupOutputColorTexture(v4, a2);
    v10 = *(v9 + 18);
    if (v6 < 9)
    {
      v41 = 0;
      v36 = 0;
    }

    else
    {
      LiHe3DEngineNode::setupColorTexture(a2, &v41);
      LiHe3DEngineNode::setupColorTexture(a2, &v36);
    }

    v14 = *(*(HGGPURenderer::GetMetalContext(*a2) + 16) + 16);
    DeviceInfo = HGMetalDeviceInfo::getDeviceInfo(v14);
    if (DeviceInfo)
    {
      v16 = *(DeviceInfo + 52);
    }

    else
    {
      v16 = 4;
    }

    LiHe3DEngineNode::createTextureFromPool(a2, 27, v16, &v35);
    LiHe3DEngineNode::createTextureFromPool(a2, 9, v16, &v34);
    LiHe3DEngineNode::createTextureFromPool(a2, 9, 1u, &v33);
    v17 = HGRectMake4f((*(this + 155) + *(this + 153)), *(this + 152), *(this + 153), (*(this + 154) + *(this + 152)), (*(this + 155) + *(this + 153)));
    v19 = v18;
    v20 = *(a2 + 2);
    v21 = *(this + 60);
    v22 = *(this + 65);
    v23 = *(HGGPURenderer::GetMetalContext(*a2) + 32);
    LiHe3DEngineNode::doPeopleOcclusion(this, a2, v23, v14, v35[18], v34[18]);
    v24 = v35[18];
    if (v41)
    {
      v25 = v41[18];
    }

    else
    {
      v25 = 0;
    }

    v26 = fabs(v21);
    v27 = fabs(v22);
    if (v36)
    {
      v28 = v36[18];
    }

    else
    {
      v28 = 0;
    }

    v29 = v34[18];
    v30 = v33[18];
    v32[0] = *&v26;
    v32[1] = *&v27;
    LiHe3DEngineNode::render(this, &v37, v24, v25, v28, v10, v29, v30, v23, v14, *&v26, *&v27, v17, v19, v20);
    (*(*v9 + 24))(v9);
    v13 = *(a2 + 1);
    if (v33)
    {
      (*(*v33 + 24))(v33);
    }

    if (v34)
    {
      (*(*v34 + 24))(v34);
    }

    if (v35)
    {
      (*(*v35 + 3))(v35);
    }

    if (v36)
    {
      (*(*v36 + 24))(v36);
    }

    if (v41)
    {
      (*(*v41 + 24))(v41);
    }
  }

  v32[0] = &v37;
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](v32);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&v40);
  return v13;
}

void sub_260043BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v25 = *(v23 - 112);
  if (v25)
  {
    (*(*v25 + 24))(v25);
  }

  *(v23 - 112) = &a23;
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100]((v23 - 112));
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard((v23 - 120));
  _Unwind_Resume(a1);
}

void LiHe3DEngineNode::doPeopleOcclusion(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (LiHe3DEngineNode::hasDepthMatte(a1))
  {
    v12 = [a3 commandBuffer];
    if ([objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")])
    {
      v13 = 0;
      v14 = *(*(a1 + 432) + 144);
    }

    else
    {
      v15 = *a2;
      DOD = HGRenderer::GetDOD(*a2, *(a1 + 416));
      v18 = v17;
      Input = HGRenderer::GetInput(v15, *(a1 + 416), 0);
      *&v39.var0 = DOD;
      *&v39.var2 = v18;
      NodeMetalTexture = HGGPURenderer::GetNodeMetalTexture(v15, Input, v39, 0, 1u);
      v13 = *(NodeMetalTexture + 18);
      (*(*NodeMetalTexture + 24))(NodeMetalTexture);
      v21 = HGRenderer::GetInput(v15, *(a1 + 424), 0);
      *&v40.var0 = HGRectMake4i(0xFFFFD8F0, 0xFFFFD8F0, 0x2710u, 0x2710u);
      *&v40.var2 = v22;
      v23 = HGGPURenderer::GetNodeMetalTexture(v15, v21, v40, 0, 1u);
      v14 = *(v23 + 18);
      (*(*v23 + 24))(v23);
    }

    v38[0] = HGRectMake4f((*(a1 + 620) + *(a1 + 612)), *(a1 + 608), *(a1 + 612), (*(a1 + 616) + *(a1 + 608)), (*(a1 + 620) + *(a1 + 612)));
    v38[1] = v24;
    v37 = *(a2 + 16);
    v25 = fabs(*(a1 + 520));
    v36.f64[0] = fabs(*(a1 + 480));
    v36.f64[1] = v25;
    v27 = *(a1 + 456);
    if (!v27)
    {
      throw_PCNullPointerException(1);
    }

    *&v28 = (*(*v27 + 248))(v27, 0, PerspectiveFrustumLimits);
    *&v29 = v34;
    *&v30 = v35;
    v31 = *(a1 + 408);
    v32 = -[LiPersonDepthWriter initWithDevice:sampleCount:]([LiPersonDepthWriter alloc], "initWithDevice:sampleCount:", a4, [a5 sampleCount]);
    [(LiPersonDepthWriter *)v32 writeWithDepthMap:v14 matte:v13 depthTexture:a6 colorTexture:a5 uniforms:v28 | (v29 << 32) windowSize:v30 | (v31 << 32) commandBuffer:*(a1 + 616), *(a1 + 620), v12];
    [v12 commit];
    [v12 waitUntilCompleted];
  }
}

float64_t anonymous namespace::getPerspectiveFrustumLimits@<D0>(const PCSharedCount *a1@<X0>, int32x2_t *a2@<X1>, _DWORD *a3@<X2>, float64x2_t *a4@<X3>, uint64_t a5@<X8>)
{
  var0 = a1->var0;
  PCSharedCount::PCSharedCount(&v48, a1 + 1);
  if (!var0)
  {
    throw_PCNullPointerException(1);
  }

  (*(*var0 + 56))(v56);
  *&v51[32] = v56[4];
  v52 = v56[5];
  v53 = v56[6];
  *v54 = v56[7];
  v49 = v56[0];
  v50 = v56[1];
  *v51 = v56[2];
  *&v51[16] = v56[3];
  PCMatrix44Tmpl<double>::invert(&v49, &v49, 0.0);
  v57 = xmmword_26034C200;
  v58 = xmmword_260342EE0;
  v59 = 0u;
  v60 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(&v49, &v57, &v59);
  v42 = *(&v60 + 1);
  v44 = *&v59;
  v57 = xmmword_2603426F0;
  v58 = xmmword_260342EE0;
  v59 = 0u;
  v60 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(&v49, &v57, &v59);
  v39 = *(&v60 + 1);
  v40 = *&v59;
  v57 = xmmword_26034D970;
  v58 = xmmword_260342EE0;
  v59 = 0u;
  v60 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(&v49, &v57, &v59);
  v38 = *(&v59 + 1);
  v37 = *(&v60 + 1);
  v57 = xmmword_260342700;
  v58 = xmmword_260342EE0;
  v59 = 0u;
  v60 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(&v49, &v57, &v59);
  v36 = *(&v59 + 1);
  v35 = *(&v60 + 1);
  v57 = 0uLL;
  v58 = xmmword_260342EE0;
  v59 = 0u;
  v60 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(&v49, &v57, &v59);
  v9 = v60;
  v57 = 0uLL;
  __asm { FMOV            V1.2D, #1.0 }

  v46 = _Q1;
  v58 = _Q1;
  v59 = 0u;
  v60 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(&v49, &v57, &v59);
  v15 = v60;
  v55 = 0x3FF0000000000000;
  *v54 = 0x3FF0000000000000;
  *&v51[40] = 0x3FF0000000000000;
  *v51 = 0x3FF0000000000000;
  memset(&v51[8], 0, 32);
  v52 = 0u;
  v53 = 0u;
  memset(&v54[8], 0, 32);
  (*(*var0 + 264))(var0, &v49);
  v16.f64[0] = v42;
  v16.f64[1] = v37;
  v17.f64[0] = v39;
  v17.f64[1] = v35;
  v18.f64[0] = v44;
  v18.f64[1] = v38;
  v19 = vmulq_f64(v18, vdivq_f64(v46, v16));
  v16.f64[0] = v40;
  v16.f64[1] = v36;
  v41 = vmulq_f64(v16, vdivq_f64(v46, v17));
  v43 = v19;
  v45 = vcvtq_s64_f64(v50);
  PCSharedCount::~PCSharedCount(&v48);
  v20 = vsub_s32(a2[1], *a2);
  v21.i64[0] = v20.u32[0];
  v21.i64[1] = v20.u32[1];
  v22 = a3[1];
  v23 = a3[2];
  v24 = v23 - *a3;
  v25 = v20.i32[0] - v23;
  __asm { FMOV            V3.2D, #0.5 }

  v27 = vmulq_f64(vaddq_f64(v43, v41), _Q3);
  v28 = vcvtq_f64_u64(v21);
  v29 = vmulq_f64(vdivq_f64(v46, *a4), vmulq_f64(vdivq_f64(vsubq_f64(v41, v43), vcvtq_f64_s64(v45)), vmulq_f64(v28, _Q3)));
  v30 = vsubq_f64(v27, v29);
  v31 = vdivq_f64(vsubq_f64(vaddq_f64(v27, v29), v30), v28);
  v32.f64[0] = v24;
  v32.f64[1] = v22;
  v30.f64[0] = v30.f64[0] + v25 * v31.f64[0];
  v33 = vaddq_f64(vmulq_f64(v31, v32), v30);
  v31.f64[0] = vmuld_lane_f64((a3[3] - v22), v31, 1);
  *a5 = v30.f64[0];
  *(a5 + 8) = v33;
  result = v31.f64[0] + v33.f64[1];
  *(a5 + 24) = result;
  *(a5 + 32) = *&v9 * (-1.0 / *(&v9 + 1));
  *(a5 + 40) = *&v15 * (-1.0 / *(&v15 + 1));
  return result;
}

void *getRenderPassLoadColorLoadDepthResolve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
  [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
  [objc_msgSend(v8 "depthAttachment")];
  [objc_msgSend(v8 "depthAttachment")];
  [objc_msgSend(v8 "depthAttachment")];
  [objc_msgSend(v8 "depthAttachment")];
  return v8;
}

void anonymous namespace::ColorAccumulator::releaseResources(id *this)
{
  v2 = this[6];
}

void *anonymous namespace::QuadDraw::createVertexDescriptor(_anonymous_namespace_::QuadDraw *this)
{
  v1 = objc_opt_new();
  [objc_msgSend(objc_msgSend(v1 "attributes")];
  [objc_msgSend(objc_msgSend(v1 "attributes")];
  [objc_msgSend(objc_msgSend(v1 "attributes")];
  [objc_msgSend(objc_msgSend(v1 "layouts")];
  [objc_msgSend(objc_msgSend(v1 "layouts")];
  [objc_msgSend(objc_msgSend(v1 "layouts")];
  return v1;
}

void anonymous namespace::RGBDepthCompositor::releaseResources(id *this)
{
  v2 = this[7];
}

void anonymous namespace::AlphaClamper::releaseResources(id *this)
{
  v2 = this[5];
}

void LiHe3DEngineNode::render()
{
  {
    __cxa_atexit(MEMORY[0x277D82690], &LiHe3DEngineNode::render(std::vector<std::shared_ptr<Li3DEngineObjectDataBase>> const&,objc_object  {objcproto10MTLTexture}*,objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto10MTLTexture},objc_object  {objcproto15MTLCommandQueue}*,objc_object  {objcproto9MTLDevice}*,HGRect,objc_object,PCVector2<double>)::mtx, &dword_25F8F0000);
  }
}

void LiHeLightAmbient::~LiHeLightAmbient(HGNode *this)
{
  LiHeLightProgramAmbient::~LiHeLightProgramAmbient(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightAmbient::IntermediateFormat(uint64_t a1, unsigned int a2)
{
  if (a2 - 27 >= 3)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

void LiHeLightDirectional::~LiHeLightDirectional(LiHeLightDirectional *this)
{
  LiHeLightAmbient::~LiHeLightAmbient(this);

  HGObject::operator delete(v1);
}

void LiHeLightPointSurface::LiHeLightPointSurface(LiHeLightProgramPointSurface *a1)
{
  LiHeLightProgramPointSurface::LiHeLightProgramPointSurface(a1);
}

{
  LiHeLightPointSurface::LiHeLightPointSurface(a1);
}

uint64_t LiHeLightPointSurface::setScreenToLocal(uint64_t a1, double *a2)
{
  v4 = *a2;
  v5 = a2[4];
  v6 = a2[8];
  v7 = a2[12];
  v8 = (*(*a1 + 96))(a1, 8, v4, v5, v6, v7);
  v9 = a2[1];
  v10 = a2[5];
  v11 = a2[9];
  v12 = a2[13];
  (*(*a1 + 96))(a1, 9, v9, v10, v11, v12);
  v14 = v13 + v8;
  v15 = a2[2];
  v16 = a2[6];
  v17 = a2[10];
  v18 = a2[14];
  v19 = (*(*a1 + 96))(a1, 10, v15, v16, v17, v18);
  v20 = a2[3];
  v21 = a2[7];
  v22 = a2[11];
  v23 = a2[15];
  return v14 + v19 + (*(*a1 + 96))(a1, 11, v20, v21, v22, v23);
}

void LiHeLightPointSurface::~LiHeLightPointSurface(HGNode *this)
{
  LiHeLightProgramPointSurface::~LiHeLightProgramPointSurface(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightPointSurface::IntermediateFormat(uint64_t a1, unsigned int a2)
{
  if (a2 - 27 >= 3)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

uint64_t LiAsyncBitmapLoader::LiAsyncBitmapLoader(uint64_t a1, _DWORD *a2, PCURL *a3, int a4, CGColorSpace **a5, char a6)
{
  *a1 = *a2;
  *(a1 + 4) = a2[1];
  *(a1 + 8) = a2[2];
  *(a1 + 12) = a2[3];
  PCURL::PCURL((a1 + 16), a3);
  *(a1 + 24) = a4;
  v10 = *a5;
  *(a1 + 32) = *a5;
  if (v10)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v10);
  }

  *(a1 + 40) = a6;
  return a1;
}

LoadLockCache *LiAsyncBitmapLoader::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = LiCachingDelegateGetBitmap(a1, a2);
  if (!*a2)
  {
    v5 = LoadLockCache::instance(result);
    LiLockCache<PCHash128,PCMutex>::getLock(v5, a1, &v30.var5);
    LiCachingDelegateGetBitmap(a1, &v30);
    v6 = *&v30.var0;
    v30.var0 = 0;
    v30.var1 = 0;
    v7 = a2[1];
    *a2 = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (v30.var1)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30.var1);
      }

      if (*a2)
      {
        return LiLockCache<PCHash128,PCMutex>::LockSentry::~LockSentry(&v30.var5);
      }
    }

    else if (v6)
    {
      return LiLockCache<PCHash128,PCMutex>::LockSentry::~LockSentry(&v30.var5);
    }

    PCTimer::PCTimer(&v30);
    PCTimer::start(&v30);
    v8 = *(a1 + 16);
    CGColorSpace = PCColorSpaceHandle::getCGColorSpace((a1 + 32));
    v28 = *(a1 + 40);
    v10 = *(a1 + 24);
    PCLoadBitmap(v8, v29);
    v27 = PCImage::getCGColorSpace(v29[0]);
    v11 = (*(**(v29[0] + 8) + 48))(*(v29[0] + 8));
    hasGray = PCPixelFormat::hasGray(v10);
    hasAlpha = PCPixelFormat::hasAlpha(v10);
    v14 = PCPixelFormat::hasGray(v11);
    v15 = PCPixelFormat::hasAlpha(v11);
    isFloat = PCPixelFormat::isFloat(v11);
    BitsPerChannel = PCPixelFormat::getBitsPerChannel(v11);
    v25 = isFloat;
    if (CGColorSpace)
    {
      v18 = !PCColorSpaceHandle::isSameColorSpace(CGColorSpace, v27, v17);
    }

    else
    {
      v18 = 0;
    }

    if (((hasGray | v18) & 1) == 0 && ((v14 ^ 1) & 1) == 0)
    {
      v10 = PCPixelFormat::setGray(v10);
    }

    if (!(v15 & 1 | ((hasAlpha & 1) == 0)))
    {
      v10 = PCPixelFormat::removeAlpha(v10);
    }

    v19 = PCPixelFormat::isFloat(v11);
    v20 = PCPixelFormat::isFloat(v10);
    if (v19)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v20)
    {
      if (v18)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v21 = PCPixelFormat::getBitsPerChannel(v11);
    if (v21 >= PCPixelFormat::getBitsPerChannel(v10) || v18)
    {
LABEL_24:
      if (v10 != v11)
      {
        if (CGColorSpace)
        {
          getColorSpaceForConversion(CGColorSpace, v10, &v30.var11);
        }

        else
        {
          getColorSpaceForConversion(v27, v10, &v30.var11);
        }

        (*(*v29[0] + 16))(v29[0]);
        (*(*v29[0] + 24))(v29[0]);
        PCCreateBitmap();
      }

      if (((*(*v29[0] + 48))(v29[0]) & 1) == 0)
      {
        PCBitmap::premultiply(v29[0]);
      }

      if (v28)
      {
        PCBitmap::flip(v29[0]);
      }

      v22 = *v29;
      v29[0] = 0;
      v29[1] = 0;
      v23 = a2[1];
      *a2 = v22;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        if (v29[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29[1]);
        }
      }

      PCTimer::stop(&v30);
      PCTimer::getSeconds(&v30);
      LiCachingDelegateAddBitmap(a2, a1);
      OZChannelBase::setRangeName(&v30, v24);
      return LiLockCache<PCHash128,PCMutex>::LockSentry::~LockSentry(&v30.var5);
    }

LABEL_23:
    LODWORD(v10) = PCPixelFormat::setDepth(v10, BitsPerChannel, v25);
    goto LABEL_24;
  }

  return result;
}

void sub_2600451BC(_Unwind_Exception *a1, const PCString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, OZChannelBase *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  OZChannelBase::setRangeName(&a15, a2);
  LiLockCache<PCHash128,PCMutex>::LockSentry::~LockSentry(&a20);
  v22 = *(v20 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void LiLoadBitmapAsync(PCURL *a1@<X1>, __int128 *a2@<X0>, int a3@<W2>, CGColorSpace **a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v7 = *a2;
  LiAsyncBitmapLoader::LiAsyncBitmapLoader(&v8, &v7, a1, a3, a4, a5);
  std::async[abi:ne200100]<LiAsyncBitmapLoader>(3, &v8, a6);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v10);
  PCURL::~PCURL(&v9);
}

void sub_2600452C8(_Unwind_Exception *a1)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 32));
  PCURL::~PCURL((v1 + 16));
  _Unwind_Resume(a1);
}

void getColorSpaceForConversion(CGColorSpace *a1@<X0>, unsigned int a2@<W1>, CGColorSpace **a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  if (CGColorSpaceGetModel(a1) == kCGColorSpaceModelRGB)
  {
    if (!PCPixelFormat::hasRGB(a2))
    {
      PCICCProfile::PCICCProfile(v7, a1);
      PCMakeDisplayGrayProfileFromRGBProfile(v7, v6);
      PCMakeColorSpaceFromProfile(v6, a3);
LABEL_8:
      PCICCProfile::~PCICCProfile(v6);
      PCICCProfile::~PCICCProfile(v7);
      return;
    }
  }

  else
  {
    if (CGColorSpaceGetModel(a1))
    {
      *a3 = 0;
      return;
    }

    if (PCPixelFormat::hasRGB(a2))
    {
      PCICCProfile::PCICCProfile(v7, a1);
      PCMakeDisplayRGBProfileFromGrayProfile(v7, v6);
      PCMakeColorSpaceFromProfile(v6, a3);
      goto LABEL_8;
    }
  }

  PCColorSpaceHandle::PCColorSpaceHandle(a3, a1);
}

void sub_260045420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a2)
  {
    PCICCProfile::~PCICCProfile(&a10);
    PCICCProfile::~PCICCProfile(&a38);
    __cxa_begin_catch(exception_object);
    if (PCEstimateGamma(v39) == 1.0)
    {
      PCColorSpaceCache::rec709Linear(v38);
    }

    else
    {
      PCColorSpaceCache::sRGB(v38);
    }

    __cxa_end_catch();
    JUMPOUT(0x2600453ACLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::async[abi:ne200100]<LiAsyncBitmapLoader>@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    PCURL::PCURL(&v5, (a2 + 1));
    v6 = *(a2 + 6);
    v7 = *(a2 + 4);
    *(a2 + 4) = 0;
    v8 = *(a2 + 40);
    std::__tuple_leaf<0ul,LiAsyncBitmapLoader,false>::__tuple_leaf[abi:ne200100](v9, &v4);
    std::__make_async_assoc_state[abi:ne200100]<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBitmapLoader>>();
  }

  if ((result & 2) != 0)
  {
    v4 = *a2;
    PCURL::PCURL(&v5, (a2 + 1));
    v6 = *(a2 + 6);
    v7 = *(a2 + 4);
    *(a2 + 4) = 0;
    v8 = *(a2 + 40);
    std::__tuple_leaf<0ul,LiAsyncBitmapLoader,false>::__tuple_leaf[abi:ne200100](v9, &v4);
    std::__make_deferred_assoc_state[abi:ne200100]<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBitmapLoader>>();
  }

  *a3 = 0;
  return result;
}

void sub_260045820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::thread a12)
{
  if (!atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2600459A4(_Unwind_Exception *exception_object)
{
  if (!atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__assoc_state<std::shared_ptr<PCBitmap>>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBitmapLoader>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = &unk_287270810;
  v2 = (a1 + 24);
  PCCFRef<CGColorSpace *>::~PCCFRef((a1 + 192));
  PCURL::~PCURL((a1 + 176));
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_287270810;
  v2 = (a1 + 24);
  PCCFRef<CGColorSpace *>::~PCCFRef((a1 + 192));
  PCURL::~PCURL((a1 + 176));
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBitmapLoader>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return std::__assoc_state<std::shared_ptr<PCBitmap>>::__on_zero_shared(a1);
}

void std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBitmapLoader>>::__execute(uint64_t a1)
{
  LiAsyncBitmapLoader::operator()(a1 + 160, &v2);
  std::__assoc_state<std::shared_ptr<PCBitmap>>::set_value<std::shared_ptr<PCBitmap>>(a1, &v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_260045C4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x260045C3CLL);
}

void sub_260045C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t std::__tuple_leaf<0ul,LiAsyncBitmapLoader,false>::__tuple_leaf[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  PCURL::PCURL((a1 + 16), (a2 + 16));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void sub_260045E00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBitmapLoader>>::*)(void),std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBitmapLoader>>*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::*)(void),std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_260045ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::*)(void),std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__deferred_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBitmapLoader>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = &unk_287270858;
  v2 = (a1 + 24);
  PCCFRef<CGColorSpace *>::~PCCFRef((a1 + 192));
  PCURL::~PCURL((a1 + 176));
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_287270858;
  v2 = (a1 + 24);
  PCCFRef<CGColorSpace *>::~PCCFRef((a1 + 192));
  PCURL::~PCURL((a1 + 176));
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x2666E9F00);
}

void std::__deferred_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBitmapLoader>>::__execute(uint64_t a1)
{
  LiAsyncBitmapLoader::operator()(a1 + 160, &v2);
  std::__assoc_state<std::shared_ptr<PCBitmap>>::set_value<std::shared_ptr<PCBitmap>>(a1, &v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_26004608C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x26004607CLL);
}

void sub_2600460D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t LiHeLightPointSurfaceDiffuse::setScreenToLocal(uint64_t a1, double *a2)
{
  v4 = *a2;
  v5 = a2[4];
  v6 = a2[8];
  v7 = a2[12];
  v8 = (*(*a1 + 96))(a1, 5, v4, v5, v6, v7);
  v9 = a2[1];
  v10 = a2[5];
  v11 = a2[9];
  v12 = a2[13];
  (*(*a1 + 96))(a1, 6, v9, v10, v11, v12);
  v14 = v13 + v8;
  v15 = a2[2];
  v16 = a2[6];
  v17 = a2[10];
  v18 = a2[14];
  v19 = (*(*a1 + 96))(a1, 7, v15, v16, v17, v18);
  v20 = a2[3];
  v21 = a2[7];
  v22 = a2[11];
  v23 = a2[15];
  return v14 + v19 + (*(*a1 + 96))(a1, 8, v20, v21, v22, v23);
}

void LiHeLightPointSurfaceDiffuse::~LiHeLightPointSurfaceDiffuse(HGNode *this)
{
  LiHeLightProgramPointSurfaceDiffuse::~LiHeLightProgramPointSurfaceDiffuse(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightPointSurfaceDiffuse::IntermediateFormat(uint64_t a1, unsigned int a2)
{
  if (a2 - 27 >= 3)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

void LiHeLightSpotSurface::LiHeLightSpotSurface(LiHeLightProgramSpotSurface *a1)
{
  LiHeLightProgramSpotSurface::LiHeLightProgramSpotSurface(a1);
}

{
  LiHeLightSpotSurface::LiHeLightSpotSurface(a1);
}

void LiHeLightSpotSurface::~LiHeLightSpotSurface(HGNode *this)
{
  LiHeLightProgramSpotSurface::~LiHeLightProgramSpotSurface(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightSpotSurface::IntermediateFormat(uint64_t a1, unsigned int a2)
{
  if (a2 - 27 >= 3)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

void LiHeLightSpotSurfaceDiffuse::LiHeLightSpotSurfaceDiffuse(LiHeLightProgramSpotSurfaceDiffuse *a1)
{
  LiHeLightProgramSpotSurfaceDiffuse::LiHeLightProgramSpotSurfaceDiffuse(a1);
}

{
  LiHeLightSpotSurfaceDiffuse::LiHeLightSpotSurfaceDiffuse(a1);
}

uint64_t LiHeLightSpotSurfaceDiffuse::setScreenToLocal(uint64_t a1, double *a2)
{
  v4 = *a2;
  v5 = a2[4];
  v6 = a2[8];
  v7 = a2[12];
  v8 = (*(*a1 + 96))(a1, 6, v4, v5, v6, v7);
  v9 = a2[1];
  v10 = a2[5];
  v11 = a2[9];
  v12 = a2[13];
  (*(*a1 + 96))(a1, 7, v9, v10, v11, v12);
  v14 = v13 + v8;
  v15 = a2[2];
  v16 = a2[6];
  v17 = a2[10];
  v18 = a2[14];
  v19 = (*(*a1 + 96))(a1, 8, v15, v16, v17, v18);
  v20 = a2[3];
  v21 = a2[7];
  v22 = a2[11];
  v23 = a2[15];
  return v14 + v19 + (*(*a1 + 96))(a1, 9, v20, v21, v22, v23);
}

void LiHeLightSpotSurfaceDiffuse::~LiHeLightSpotSurfaceDiffuse(HGNode *this)
{
  LiHeLightProgramSpotSurfaceDiffuse::~LiHeLightProgramSpotSurfaceDiffuse(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightSpotSurfaceDiffuse::IntermediateFormat(uint64_t a1, unsigned int a2)
{
  if (a2 - 27 >= 3)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

uint64_t LiHePointLightStencil::GetDOD(LiHePointLightStencil *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHePointLightStencil::GetROI(LiHePointLightStencil *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHePointLightStencil::~LiHePointLightStencil(HGNode *this)
{
  LiHeProgramPointLightStencil::~LiHeProgramPointLightStencil(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeShadowPCSS::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

void LiHeShadowPCSS::~LiHeShadowPCSS(HGNode *this)
{
  LiHeShadowProgramPCSS::~LiHeShadowProgramPCSS(this);

  HGObject::operator delete(v1);
}

void LiImageReflection::LiImageReflection(LiImageReflection *this)
{
  *(this + 9) = &unk_2872DEA38;
  *(this + 10) = 0;
  *(this + 88) = 1;
  LiImageFilter::LiImageFilter(this, &off_2872715B8);
  *this = &unk_2872714B0;
  *(this + 9) = &unk_287271598;
  *(this + 5) = 0;
  PCSharedCount::PCSharedCount(this + 6);
  *(this + 7) = 0x3FE0000000000000;
  *(this + 16) = 0;
}

void sub_260047258(_Unwind_Exception *a1)
{
  LiImageFilter::~LiImageFilter(v1, &off_2872715B8);
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void sub_2600473C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

uint64_t LiImageReflection::getHelium@<X0>(LiImageSource **this@<X0>, LiAgent *a2@<X1>, LiHeLimit **a3@<X8>)
{
  LiAgent::passROI(a2);
  LiAgent::getHelium(a2, this[5], &v14);
  LiAgent::getHelium(a2, this[2], &v13);
  if (v14 && v13)
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v11 = HGObject::operator new(0x1A0uLL);
      *(v11 + 24) = 0u;
      *(v11 + 25) = 0u;
      *(v11 + 22) = 0u;
      *(v11 + 23) = 0u;
      *(v11 + 20) = 0u;
      *(v11 + 21) = 0u;
      *(v11 + 18) = 0u;
      *(v11 + 19) = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 17) = 0u;
      *(v11 + 14) = 0u;
      *(v11 + 15) = 0u;
      *(v11 + 12) = 0u;
      *(v11 + 13) = 0u;
      *(v11 + 10) = 0u;
      *(v11 + 11) = 0u;
      *(v11 + 8) = 0u;
      *(v11 + 9) = 0u;
      *(v11 + 6) = 0u;
      *(v11 + 7) = 0u;
      *(v11 + 4) = 0u;
      *(v11 + 5) = 0u;
      *(v11 + 2) = 0u;
      *(v11 + 3) = 0u;
      *v11 = 0u;
      *(v11 + 1) = 0u;
      LiHeReflectionShader::LiHeReflectionShader(v11);
    }

    v7 = LiHelium::convertMotionBlendMode(v6);
    v8 = HGObject::operator new(0x220uLL);
    HGHWBlendFlipped::HGHWBlendFlipped(v8);
    (*(*v8 + 96))(v8, 0, v7, 0.0, 0.0, 0.0);
    v9 = *(this + 7);
    (*(*v8 + 96))(v8, 1, v9, 0.0, 0.0, 0.0);
    (*(*v8 + 96))(v8, 2, 0.0, 0.0, 0.0, 0.0);
    (*(*v8 + 96))(v8, 5, *(*(a2 + 6) + 192), 0.0, 0.0, 0.0);
    (*(*v8 + 120))(v8, 0, v13);
    (*(*v8 + 120))(v8, 1, v14);
    v10 = HGObject::operator new(0x1A0uLL);
    LiHeLimit::LiHeLimit(v10);
    (*(*v10 + 120))(v10, 0, v13);
    (*(*v10 + 120))(v10, 1, v8);
    *a3 = v10;
    (*(*v8 + 24))(v8);
    if (v13)
    {
      (*(*v13 + 24))(v13);
    }
  }

  else
  {
    *a3 = v13;
  }

  result = v14;
  if (v14)
  {
    return (*(*v14 + 24))(v14);
  }

  return result;
}

void sub_260047800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HGObject::operator delete(v10);
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t LiImageReflection::estimateRenderMemory(uint64_t a1, uint64_t a2)
{
  v4 = LiImageFilter::estimateRenderMemory(a1);
  v5 = *(a1 + 40);
  if (v5)
  {
    v4 += (*(*v5 + 112))(v5, a2);
  }

  return v4;
}

void LiImageReflection::~LiImageReflection(PCSharedCount *this)
{
  this->var0 = &unk_2872714B0;
  this[9].var0 = &unk_287271598;
  PCSharedCount::~PCSharedCount(this + 6);
  this->var0 = off_287271608;
  this[9].var0 = off_2872716F0;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_2872715C0);
  this[9].var0 = &unk_2872DEA38;
  LOBYTE(this[11].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[10].var0);
}

{
  this->var0 = &unk_2872714B0;
  this[9].var0 = &unk_287271598;
  PCSharedCount::~PCSharedCount(this + 6);
  this->var0 = off_287271608;
  this[9].var0 = off_2872716F0;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_2872715C0);
  this[9].var0 = &unk_2872DEA38;
  LOBYTE(this[11].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[10].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiImageReflection::~LiImageReflection(LiImageReflection *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872714B0;
  v1[9].var0 = &unk_287271598;
  PCSharedCount::~PCSharedCount(v1 + 6);
  v1->var0 = off_287271608;
  v1[9].var0 = off_2872716F0;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_2872715C0);
  v1[9].var0 = &unk_2872DEA38;
  LOBYTE(v1[11].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[10].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872714B0;
  v1[9].var0 = &unk_287271598;
  PCSharedCount::~PCSharedCount(v1 + 6);
  v1->var0 = off_287271608;
  v1[9].var0 = off_2872716F0;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_2872715C0);
  v1[9].var0 = &unk_2872DEA38;
  LOBYTE(v1[11].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[10].var0);

  JUMPOUT(0x2666E9F00);
}

void **LiSoftShadow::LiSoftShadow(void **a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, double *a8, double a9, unsigned __int8 a10)
{
  *a1 = 0;
  a1[1] = 0;
  v18 = HGRectMake4i(*a8, a8[1], a8[2] + *a8, a8[3] + a8[1]);
  v20 = v19;
  if (a9 != 0.0 && (a3 & 1) == 0)
  {
    v21 = HGRectMake4i(-(a9 * 0.5), -(a9 * 0.5), (a9 * 0.5), (a9 * 0.5));
    v18 = HGRectGrow(v18, v20, v21);
    v20 = v22;
  }

  v41 = 0;
  HGRect::Init(&v53, v18 - 10, HIDWORD(v18) - 10, v20 + 10, HIDWORD(v20) + 10);
  v23 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v23);
  (*(*v23 + 96))(v23, 0, v53.var0, v53.var1, v53.var2, v53.var3);
  (*(*v23 + 120))(v23, 0, *a2);
  *&v52[32] = 0x3FF0000000000000;
  v51 = 0x3FF0000000000000;
  v48 = 0x3FF0000000000000;
  v45 = 0x3FF0000000000000;
  v46 = 0u;
  v47 = 0u;
  v49 = 0u;
  v50 = 0u;
  memset(v52, 0, 32);
  PCMatrix44Tmpl<double>::planarInverseZ(&v45, a7, 0.0);
  v24 = vmulq_f64(*&v52[8], *&v52[8]);
  v25 = vmulq_f64(*&v52[24], *&v52[24]);
  v26 = sqrt(vaddq_f64(vaddq_f64(vaddq_f64(v24, vdupq_laneq_s64(v24, 1)), v25), vdupq_laneq_s64(v25, 1)).f64[0]);
  if (v26 > 0.001)
  {
    v27 = 0;
    v28 = &v45;
    v29 = 1.0 / v26;
    do
    {
      for (i = 0; i != 4; i += 2)
      {
        *&v28[i] = vmulq_n_f64(*&v28[i], v29);
      }

      ++v27;
      v28 += 4;
    }

    while (v27 != 4);
  }

  v43 = v23;
  (*(*v23 + 16))(v23);
  __asm { FMOV            V0.2S, #1.0 }

  v42 = _D0;
  LiHelium::createTransformNode(&v45, &v43, a10, &v42, &v44);
  if (v43)
  {
    (*(*v43 + 24))(v43);
  }

  if (v44)
  {
    v41 = v44;
    (*(*v44 + 16))(v44);
    if (v44)
    {
      (*(*v44 + 24))(v44);
    }
  }

  (*(*v23 + 24))(v23);
  v36 = HGObject::operator new(0x1A0uLL);
  LiHeDepthCompare::LiHeDepthCompare(v36, &v41, a4, a6, a5);
  v37 = *a1;
  if (*a1 != v36)
  {
    if (v37)
    {
      (*(*v37 + 24))(v37);
    }

    *a1 = v36;
    if (v36)
    {
      (*(*v36 + 16))(v36);
    }
  }

  if (a9 > 0.0 && (a3 & 1) == 0)
  {
    v38 = HGObject::operator new(0x1A0uLL);
    LiHeShadowPCSS::LiHeShadowPCSS(v38, a4, a6, a5, a9);
    v39 = a1[1];
    if (v39 == v38)
    {
      if (!v38)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (v39)
    {
      (*(*v39 + 24))(v39);
    }

    a1[1] = v38;
    if (v38)
    {
      (*(*v38 + 16))(v38);
LABEL_27:
      (*(*v38 + 24))(v38);
    }
  }

LABEL_28:
  if (v36)
  {
    (*(*v36 + 24))(v36);
  }

  if (v41)
  {
    (*(*v41 + 24))(v41);
  }

  return a1;
}

{
  return LiSoftShadow::LiSoftShadow(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_260048290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v10 + 24))(v10);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  v13 = v9[1];
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  if (*v9)
  {
    (*(**v9 + 24))(*v9);
  }

  _Unwind_Resume(a1);
}

uint64_t LiHeModulatedBlurBuffered::GetOutput(HGNode *this, HGRenderer *a2)
{
  Output = HGModulatedBlur::GetOutput(this, a2);
  (*(*Output + 136))(Output, 0xFFFFFFFFLL, 2);
  return Output;
}

void LiHeModulatedBlurBuffered::~LiHeModulatedBlurBuffered(HGNode *this)
{
  HGModulatedBlur::~HGModulatedBlur(this);

  HGObject::operator delete(v1);
}

void sub_260048684(_Unwind_Exception *a1)
{
  v3 = *(v1 + 424);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  LiHeShadowProgramSoft::~LiHeShadowProgramSoft(v1);
  _Unwind_Resume(a1);
}

uint64_t LiHeShadowSoft::GetDOD(LiHeShadowSoft *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeShadowSoft::GetROI(LiHeShadowSoft *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeShadowSoft::IntermediateFormat(uint64_t a1, int a2)
{
  if (a2 <= 27)
  {
    return 27;
  }

  else
  {
    return a2;
  }
}

HGNode *LiHeShadowSoft::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 1u);
  DOD = HGRenderer::GetDOD(a2, Input);
  if (HGRectIsNull(DOD, v6))
  {
    if (*(this + 416) == 1)
    {
      result = *(this + 53);
      if (!result)
      {
        PCWorkingColorVector::PCWorkingColorVector(v9, 0.0, 0.0, 0.0, 0.0);
        v8 = HGObject::operator new(0x1A0uLL);
        LiHeLightInitPass::LiHeLightInitPass(v8, v9);
        result = *(this + 53);
        if (result == v8)
        {
          if (v8)
          {
            (*(*v8 + 24))(v8);
            return *(this + 53);
          }
        }

        else
        {
          if (result)
          {
            (*(*result + 24))(result);
          }

          *(this + 53) = v8;
          return v8;
        }
      }
    }

    else
    {

      return HGRenderer::GetInput(a2, this, 0);
    }
  }

  else
  {

    return LiHeShadowProgramSoft::GetOutput(this, a2);
  }

  return result;
}

void sub_26004886C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void LiHeShadowSoft::~LiHeShadowSoft(HGNode *this)
{
  LiHeShadowSoft::~LiHeShadowSoft(this);

  HGObject::operator delete(v1);
}

{
  *this = &unk_287271AF0;
  v2 = *(this + 53);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  LiHeShadowProgramSoft::~LiHeShadowProgramSoft(this);
}

void LiContext::LiContext(LiContext *this)
{
  *(this + 10) = 0x3FF0000000000000;
  *(this + 5) = 0x3FF0000000000000;
  *this = 0x3FF0000000000000;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 26) = 0x3FF0000000000000;
  *(this + 21) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 120) = _Q1;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 47) = 0x3FF0000000000000;
  *(this + 42) = 0x3FF0000000000000;
  *(this + 37) = 0x3FF0000000000000;
  *(this + 248) = _Q1;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 55) = &unk_2871F25A8;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 464) = 0;
  LiClipSet::LiClipSet((this + 472));
  *(this + 65) = &unk_28725F308;
  *(this + 139) = 0;
  *(this + 560) = 0;
  *(this + 564) = 0;
  *(this + 66) = 0;
  *(this + 68) = 0;
  *(this + 67) = 0;
  *(this + 552) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 568));
  *(this + 146) = 1065353216;
  *(this + 294) = 257;
  *(this + 590) = 0;
  PCSharedCount::PCSharedCount(this + 74);
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 600) = 0u;
}

void LiContext::~LiContext(LiContext *this)
{
  ProGL::ContextHandle::~ContextHandle((this + 600));
  OZChannelBase::setRangeName((this + 592), v2);
  *(this + 65) = &unk_28725F308;
  if (*(this + 132) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this + 132);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(this + 520, 0, v3);
  v4 = *(this + 67);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  *(this + 67) = 0;
  *(this + 132) = 0;
  LiClipSet::~LiClipSet((this + 472));
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(this + 440);
}

void LiContext::getHash(LiContext *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v20[520] = *MEMORY[0x277D85DE8];
  v4 = PCHashWriteStream::PCHashWriteStream(v20);
  v5 = *(v1 + 452);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 752;
    do
    {
      if (v6 >= *(v1 + 452))
      {
        PCArray_base::badIndex(v4);
      }

      v8 = *(v1 + 456);
      SolidSceneID = LiLight::getSolidSceneID((v8 + v7 - 752));
      PCHashWriteStream::writeValue(v20, SolidSceneID);
      PCHashWriteStream::writeValue(v20, *(v8 + v7 - 96));
      if ((*(v8 + v7 - 96) - 1) > 2)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(v8 + v7 - 31);
      }

      PCHashWriteStream::writeValue(v20, v10 & 1);
      PCHashWriteStream::writeValue(v20, *(v8 + v7));
      PCHashWriteStream::writeValue(v20, *(v8 + v7 - 8) > 0.0);
      v12 = LiLightInfo::get((v8 + v7 - 752), v11);
      v19[2] = &v12[200];
      PCSpinLock::lock(v12 + 200);
      v19[1] = 0;
      v19[0] = LiGLState::getCurrentContext(v13);
      v14 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::find<LiOpenGLContextGetter::C>(&v12[194], v19);
      if (&v12[196] == v14)
      {
        v19[4] = v19;
        v14 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,BOOL>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,BOOL>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,BOOL>>>::__emplace_unique_key_args<LiOpenGLContextGetter::C,std::piecewise_construct_t const&,std::tuple<LiOpenGLContextGetter::C const&>,std::tuple<>>(&v12[194], v19);
      }

      PCSpinLock::unlock(v12 + 200);
      v4 = PCHashWriteStream::writeValue(v20, *(v14 + 48));
      ++v6;
      v7 += 944;
    }

    while (v5 != v6);
  }

  PCHashWriteStream::writeValue(v20, *(v1 + 484));
  PCHashWriteStream::writeValue(v20, *(v1 + 548) > 0);
  PCHashWriteStream::writeValue(v20, *(v1 + 544));
  v15 = PCHashWriteStream::writeValue(v20, *(v1 + 560));
  v16 = *(v1 + 532);
  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if (i >= *(v1 + 532))
      {
        PCArray_base::badIndex(v15);
      }

      v18 = *(*(v1 + 536) + 16 * i);
      if (!v18)
      {
        throw_PCNullPointerException(1);
      }

      v15 = (*(*v18 + 16))(v18, v20);
    }
  }

  PCHashWriteStream::writeValue(v20, *(v1 + 564));
  *v3 = *PCHashWriteStream::getHash(v20)->i8;
  PCHashWriteStream::~PCHashWriteStream(v20);
}

uint64_t LiGLState::getCurrentContext(LiGLState *this)
{
  ProGL::getCurrentContext(v3);
  EAGLContext = ProGL::ContextHandle::getEAGLContext(v3);
  ProGL::ContextHandle::~ContextHandle(v3);
  return EAGLContext;
}

void *LiGLState::get(LiGLState *this)
{
  {
    pthread_key_create(&LiGLState::get(void)::state, PCThreadSpecific<LiGLState>::destroy);
  }

  v1 = pthread_getspecific(LiGLState::get(void)::state);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

uint64_t LiGLState::setCurrentProgram(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 8) = 1;
  return result;
}

uint64_t PCThreadSpecific<LiGLState>::destroy(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x2666E9F00);
  }

  return result;
}

void LiFBOCompositor::LiFBOCompositor(LiFBOCompositor *this, int a2)
{
  *this = a2;
  v3 = (this + 32);
  PCWorkingColorVector::PCWorkingColorVector((this + 16));
  PCWorkingColorVector::PCWorkingColorVector(v3);
  ProGL::Framebuffer::Framebuffer((this + 48));
  PCWorkingColorVector::PCWorkingColorVector((this + 96));
  PCWorkingColorVector::PCWorkingColorVector((this + 112));
  ProGL::Framebuffer::Framebuffer((this + 128));
  PCWorkingColorVector::PCWorkingColorVector((this + 176));
  PCWorkingColorVector::PCWorkingColorVector((this + 192));
  ProGL::Framebuffer::Framebuffer((this + 208));
  PCWorkingColorVector::PCWorkingColorVector((this + 256));
  PCWorkingColorVector::PCWorkingColorVector((this + 272));
  ProGL::Framebuffer::Framebuffer((this + 288));
  *(this + 42) = 0;
  *(this + 43) = 0;
  LiFBOCompositor::init(this);
}

void sub_2600499DC(_Unwind_Exception *a1)
{
  v3 = v1[43];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  ProGL::Framebuffer::~Framebuffer((v1 + 36));
  v4 = v1[35];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[33];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  ProGL::Framebuffer::~Framebuffer((v1 + 26));
  v6 = v1[25];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = v1[23];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  ProGL::Framebuffer::~Framebuffer((v1 + 16));
  v8 = v1[15];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = v1[13];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ProGL::Framebuffer::~Framebuffer((v1 + 6));
  v10 = v1[5];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = v1[3];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void LiFBOCompositor::init(LiFBOCompositor *this)
{
  v5 = *MEMORY[0x277D85DE8];
  ProGL::GL::GL(v2);
  ProGL::GL_Wrap::getIntegerv(v2, 0xBA2u, &params);
  *(this + 4) = v4;
  if (*this)
  {
    LiFBOCompositor::initMultisampleFBO((this + 48), this + 12, this + 14);
  }

  ProGL::Framebuffer::bind((this + 208), v2, 0x8D40u);
  glViewport(0, 0, *(this + 1), *(this + 2));
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4100u);
  ProGL::Framebuffer::unbind((this + 208), v2, 0x8D40u);
  ProGL::Framebuffer::bind((this + 288), v2, 0x8D40u);
  glViewport(0, 0, *(this + 1), *(this + 2));
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4100u);
  ProGL::Framebuffer::unbind((this + 288), v2, 0x8D40u);
  getShaderBlend();
  getShaderCopy();
  ProGL::GL::~GL(v2);
}

void LiFBOCompositor::~LiFBOCompositor(LiFBOCompositor *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ProGL::Framebuffer::~Framebuffer((this + 288));
  v3 = *(this + 35);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 33);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  ProGL::Framebuffer::~Framebuffer((this + 208));
  v5 = *(this + 25);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  ProGL::Framebuffer::~Framebuffer((this + 128));
  v7 = *(this + 15);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 13);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  ProGL::Framebuffer::~Framebuffer((this + 48));
  v9 = *(this + 5);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void getShaderBlend(void)
{
  {
    {
      ProGL::makeProgramHandle<CompShader>();
    }
  }
}

void getShaderCopy(void)
{
  {
    {
      ProGL::makeProgramHandle<CopyShader>();
    }
  }
}

void LiFBOCompositor::beginDrawToFBO(LiFBOCompositor *this)
{
  ProGL::GL::GL(v2);
  ProGL::Framebuffer::bind((this + 48), v2, 0x8D40u);
  glViewport(0, 0, *(this + 1), *(this + 2));
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4100u);
  ProGL::GL::~GL(v2);
}

void sub_260049E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void LiFBOCompositor::endDrawToFBO(LiFBOCompositor *this)
{
  ProGL::GL::GL(v5);
  if (*this)
  {
    params = 0;
    glGetBooleanv(0xC11u, &params);
    v2 = params;
    if (params)
    {
      glDisable(0xC11u);
    }

    ProGL::Framebuffer::bind((this + 128), v5, 0x8CA9u);
    ProGL::Framebuffer::bind((this + 48), v5, 0x8CA8u);
    if (v2)
    {
      glEnable(0xC11u);
    }
  }

  ProGL::Framebuffer::bind((this + 208), v5, 0x8D40u);
  glViewport(0, 0, *(this + 1), *(this + 2));
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4100u);
  ProGL::ObjectHandle::name((this + 336));
  getShaderBlend();
  ProGL::Framebuffer::unbind((this + 208), v5, 0x8D40u);
  glUseProgram(0);
  LiSolidUtils::getGLRenderer(v5, v3);
  ProGL::Framebuffer::bind((this + 288), v5, 0x8D40u);
  glViewport(0, 0, *(this + 1), *(this + 2));
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4100u);
  getShaderCopy();
  ProGL::Framebuffer::unbind((this + 288), v5, 0x8D40u);
  glUseProgram(0);
  LiSolidUtils::getGLRenderer(v5, v4);
  ProGL::GL::~GL(v5);
}

void LiFBOCompositor::renderResults(LiFBOCompositor *this)
{
  ProGL::GL::GL(v3);
  glBindFramebuffer(0x8D40u, *(this + 3));
  glViewport(0, 0, *(this + 1), *(this + 2));
  getShaderCopy();
  glUseProgram(0);
  LiSolidUtils::getGLRenderer(v3, v2);
  ProGL::GL::~GL(v3);
}

void sub_26004A080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void LiFBOCompositor::initMultisampleFBO(ProGL::Framebuffer *a1, HGGLBlendingInfo **a2, HGGLBlendingInfo **a3)
{
  ProGL::GL::GL(v7);
  ProGL::GL::getPGLContextHandle(v7, v6);
  ProGL::Framebuffer::bind(a1, v7, 0x8D40u);
  ProGL::Framebuffer::attach(a1, v7, 0x8D40u, 0x8CE0u, a2);
  ProGL::Framebuffer::attach(a1, v7, 0x8D40u, 0x8D00u, a3);
  ProGL::ContextHandle::~ContextHandle(v6);
  ProGL::GL::~GL(v7);
}

void sub_26004A130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void sub_26004A214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_26004A29C()
{

  std::shared_ptr<ProGL::Program>::shared_ptr[abi:ne200100]<CompShader,0>(v0, v1);
}

void CompShader::CompShader(CompShader *this)
{
  ProGL::Program::Program(this);
  *v2 = &unk_287271D98;
  ProGL::UniformSampler<35678u>::UniformSampler((v2 + 28), this, "colorTex");
  ProGL::UniformSampler<35678u>::UniformSampler((this + 280), this, "depthTex");
  ProGL::UniformSampler<35678u>::UniformSampler((this + 336), this, "currentColorTex");
  ProGL::UniformSampler<35678u>::UniformSampler((this + 392), this, "currentDepthTex");
  ProGL::Program::setFragmentSource( this,  "        void main()                                                                     \n {                                                                               \n \n /* incoming color and depth (premult) */                                    \n \n vec4 color  = texture2D(colorTex, gl_TexCoord[0].xy);                       \n"
    "            float depth = texture2D(depthTex, gl_TexCoord[0].xy).r;                     \n"
    "                                                                                        \n"
    "                                                                                        \n"
    "            /* current color and depth (premult) */                                     \n"
    "                                                                                        \n"
    "            vec4 currentColor  = texture2D(currentColorTex, gl_TexCoord[0].xy);         \n"
    "            float currentDepth = texture2D(currentDepthTex, gl_TexCoord[0].xy).r;       \n"
    "                                                                                        \n"
    "            /* blend */                                                                 \n"
    "                                                                                        \n"
    "            vec4 finalColor;                                                            \n"
    "            float finalDepth;                                                           \n"
    "                                                                                        \n"
    "            vec4 s; /* source */                                                        \n"
    "            vec4 b; /* background */                                                    \n"
    "                                                                                        \n"
    "            if (depth < currentDepth)                                                   \n"
    "            {                                                                           \n"
    "                s = color;                                                              \n"
    "                b = currentColor;                                                       \n"
    "                finalDepth = depth;                                                     \n"
    "            }                                                                           \n"
    "            else                                                                        \n"
    "            {                                                                           \n"
    "                s = currentColor;                                                       \n"
    "                b = color;                                                              \n"
    "                finalDepth = currentDepth;                                              \n"
    "            }                                                                           \n"
    "                                                                                        \n"
    "            /* premult over operator */                                                 \n"
    "                                                                                        \n"
    "            finalColor.rgb = s.rgb + b.rgb * (1. - s.a);                                \n"
    "            finalColor.a = s.a + b.a * (1. - s.a);                                      \n"
    "                                                                                        \n"
    "            /* output results */                                                        \n"
    "                                                                                        \n"
    "            gl_FragColor = finalColor;                                                  \n"
    "            gl_FragDepth = finalDepth;                                                  \n"
    "        }                                                                               \n"
    "        ");
}

void sub_26004A38C(_Unwind_Exception *a1)
{
  ProGL::UniformSampler<35678u>::~UniformSampler(v1 + 49);
  ProGL::UniformSampler<35678u>::~UniformSampler(v1 + 42);
  ProGL::UniformSampler<35678u>::~UniformSampler(v1 + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);
  ProGL::Program::~Program(v1);
  _Unwind_Resume(a1);
}

void CompShader::~CompShader(void **this)
{
  *this = &unk_287271D98;
  v2 = this + 28;
  ProGL::UniformSampler<35678u>::~UniformSampler(this + 49);
  ProGL::UniformSampler<35678u>::~UniformSampler(this + 42);
  ProGL::UniformSampler<35678u>::~UniformSampler(this + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);

  ProGL::Program::~Program(this);
}

{
  *this = &unk_287271D98;
  v2 = this + 28;
  ProGL::UniformSampler<35678u>::~UniformSampler(this + 49);
  ProGL::UniformSampler<35678u>::~UniformSampler(this + 42);
  ProGL::UniformSampler<35678u>::~UniformSampler(this + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);
  ProGL::Program::~Program(this);

  JUMPOUT(0x2666E9F00);
}

void sub_26004A544(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<ProGL::Program>::shared_ptr[abi:ne200100]<DepthFilterProgram,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<CompShader *,std::shared_ptr<ProGL::Program>::__shared_ptr_default_delete<ProGL::Program,CompShader>,std::allocator<CompShader>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CompShader *,std::shared_ptr<ProGL::Program>::__shared_ptr_default_delete<ProGL::Program,CompShader>,std::allocator<CompShader>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_26004A634(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::shared_ptr[abi:ne200100]<ProGL::Private::ProgramFactory0<DepthFilterProgram>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::ProgramFactory0<CompShader> *,std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::__shared_ptr_default_delete<ProGL::Private::ProgramHandleImpl::Factory,ProGL::Private::ProgramFactory0<CompShader>>,std::allocator<ProGL::Private::ProgramFactory0<CompShader>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::ProgramFactory0<CompShader> *,std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::__shared_ptr_default_delete<ProGL::Private::ProgramHandleImpl::Factory,ProGL::Private::ProgramFactory0<CompShader>>,std::allocator<ProGL::Private::ProgramFactory0<CompShader>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_26004A77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_26004A804()
{

  std::shared_ptr<ProGL::Program>::shared_ptr[abi:ne200100]<CopyShader,0>(v0, v1);
}

void CopyShader::CopyShader(CopyShader *this)
{
  ProGL::Program::Program(this);
  *v2 = &unk_287271F10;
  ProGL::UniformSampler<35678u>::UniformSampler((v2 + 28), this, "colorTex");
  ProGL::UniformSampler<35678u>::UniformSampler((this + 280), this, "depthTex");
  ProGL::Program::setFragmentSource(this, "        void main()                                                     \n        {                                                               \n            gl_FragColor = texture2D(colorTex, gl_TexCoord[0].xy);      \n            gl_FragDepth = texture2D(depthTex, gl_TexCoord[0].xy).r;    \n        }                                                               \n        ");
}

void sub_26004A8CC(_Unwind_Exception *a1)
{
  ProGL::UniformSampler<35678u>::~UniformSampler(v1 + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);
  ProGL::Program::~Program(v1);
  _Unwind_Resume(a1);
}

void CopyShader::~CopyShader(void **this)
{
  *this = &unk_287271F10;
  v2 = this + 28;
  ProGL::UniformSampler<35678u>::~UniformSampler(this + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);

  ProGL::Program::~Program(this);
}

{
  *this = &unk_287271F10;
  v2 = this + 28;
  ProGL::UniformSampler<35678u>::~UniformSampler(this + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);
  ProGL::Program::~Program(this);

  JUMPOUT(0x2666E9F00);
}

void sub_26004AA44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<ProGL::Program>::shared_ptr[abi:ne200100]<DepthFilterProgram,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<CopyShader *,std::shared_ptr<ProGL::Program>::__shared_ptr_default_delete<ProGL::Program,CopyShader>,std::allocator<CopyShader>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CopyShader *,std::shared_ptr<ProGL::Program>::__shared_ptr_default_delete<ProGL::Program,CopyShader>,std::allocator<CopyShader>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_26004AB34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::shared_ptr[abi:ne200100]<ProGL::Private::ProgramFactory0<DepthFilterProgram>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::ProgramFactory0<CopyShader> *,std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::__shared_ptr_default_delete<ProGL::Private::ProgramHandleImpl::Factory,ProGL::Private::ProgramFactory0<CopyShader>>,std::allocator<ProGL::Private::ProgramFactory0<CopyShader>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::ProgramFactory0<CopyShader> *,std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::__shared_ptr_default_delete<ProGL::Private::ProgramHandleImpl::Factory,ProGL::Private::ProgramFactory0<CopyShader>>,std::allocator<ProGL::Private::ProgramFactory0<CopyShader>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t LiHeSpotLightStencil::GetDOD(LiHeSpotLightStencil *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeSpotLightStencil::GetROI(LiHeSpotLightStencil *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeSpotLightStencil::~LiHeSpotLightStencil(HGNode *this)
{
  LiHeProgramSpotLightStencil::~LiHeProgramSpotLightStencil(this);

  HGObject::operator delete(v1);
}

ProShade::ProgramBase *ProShade::ProgramBase::ProgramBase(ProShade::ProgramBase *this, uint64_t *a2)
{
  v3 = a2[1];
  *this = v3;
  *(this + *(v3 - 24)) = a2[2];
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 4) = 0;
  PSShaderBase::PSShaderBase((this + 16));
  *(this + 2) = &unk_2872722C8;
  PSShaderBase::PSShaderBase((this + 80));
  *(this + 10) = &unk_287272308;
  PCWorkingColorVector::PCWorkingColorVector((this + 144));
  PCMutex::PCMutex((this + 160), 1);
  *(this + 20) = &unk_2871D83A0;
  *(this + 31) = 0;
  *(this + 30) = 0;
  *(this + 29) = this + 240;
  *(this + 64) = 0;
  *(this + 66) = 0;
  return this;
}

void ProShade::ProgramBase::~ProgramBase(ProShade::ProgramBase *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  v4 = *(this + 29);
  v5 = this + 240;
  if (v4 != this + 240)
  {
    do
    {
      LiPerContextObject_Traits<ProShade::ProgramBase::Exe>::destroy(*(v4 + 6));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  PCSpinLock::~PCSpinLock(this + 64);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 232, *(this + 30));
  PCMutex::~PCMutex((this + 160));
  PSShaderBase::~PSShaderBase(this + 10);
  PSShaderBase::~PSShaderBase(this + 2);
}

uint64_t ProShade::ProgramBase::id(os_unfair_lock_s *this)
{
  v2 = &this[40];
  v8 = this + 40;
  PCMutex::lock(&this[40]);
  v9 = 1;
  v7[0] = 0;
  v3 = *LiPerContext<ProShade::ProgramBase::Exe *,LiPerContextObject_Traits<ProShade::ProgramBase::Exe>,LiOpenGLContextGetter>::get(this + 58, v7);
  if (!ProGL::ObjectHandle::name(v3))
  {
    ProGL::GL::GL(v7);
    ProGL::createProgramObject(v7, v5);
  }

  if (*(v3 + 17) == 1)
  {
    v4 = ProGL::ObjectHandle::name(v3);
  }

  else
  {
    v4 = 0;
  }

  PCMutex::unlock(v2);
  return v4;
}

void sub_26004B374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProGL::GL::~GL(va);
  PCLockSentry<PCMutex>::~PCLockSentry(v4 - 32);
  _Unwind_Resume(a1);
}

void ProShade::ProgramBase::computeHash(ProShade::ProgramBase *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v3);
  PSShaderBase::source((v1 + 1), &v2);
  PCHashWriteStream::writeValue(v3, &v2);
  PCString::~PCString(&v2);
  PSShaderBase::source((v1 + 5), &v2);
  PCHashWriteStream::writeValue(v3, &v2);
  PCString::~PCString(&v2);
  v1[9] = *PCHashWriteStream::getHash(v3)->i8;
  PCHashWriteStream::~PCHashWriteStream(v3);
}

void sub_26004B470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCHashWriteStream::~PCHashWriteStream(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::ProgramBase::link(os_unfair_lock_s *this)
{
  v2 = &this[40];
  v16[1].var0 = &this[40];
  PCMutex::lock(&this[40]);
  v17 = 1;
  LOBYTE(v16[0].var0) = 0;
  v3 = LiPerContext<ProShade::ProgramBase::Exe *,LiPerContextObject_Traits<ProShade::ProgramBase::Exe>,LiOpenGLContextGetter>::get(this + 58, v16);
  v4 = *v3;
  if ((*(*v3 + 16) & 1) != 0 || (*(v4 + 17) & 1) == 0)
  {
    v12 = 0;
  }

  else
  {
    ProShade::ProgramBase::id(this);
    PCSharedCount::PCSharedCount(v16);
    (*(*&this->_os_unfair_lock_opaque + 32))(this);
    if (LOBYTE(this[2]._os_unfair_lock_opaque) == 1)
    {
      v5 = ProGL::ObjectHandle::name(v4);
      v6 = PSShaderBase::id(&this[4]);
      glAttachShader(v5, v6);
    }

    if (BYTE1(this[2]._os_unfair_lock_opaque) == 1)
    {
      v7 = ProGL::ObjectHandle::name(v4);
      v8 = PSShaderBase::id(&this[20]);
      glAttachShader(v7, v8);
    }

    v9 = ProGL::ObjectHandle::name(v4);
    glLinkProgram(v9);
    v10 = ProGL::ObjectHandle::name(v4);
    LODWORD(v15.var0) = 0;
    glGetProgramiv(v10, 0x8B82u, &v15);
    if (!LODWORD(v15.var0))
    {
      exception = __cxa_allocate_exception(0x48uLL);
      PCString::PCString(&v15, "link failed");
      PCGLSLException::PCGLSLException(exception, &v15);
    }

    ProShade::ProgramBase::computeHash(this);
    *(v4 + 16) = 257;
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(v4 + 24, *(v4 + 32));
    *(v4 + 24) = v4 + 32;
    *(v4 + 40) = 0;
    *(v4 + 32) = 0;
    (*(*&this->_os_unfair_lock_opaque + 40))(this, v4);
    OZChannelBase::setRangeName(v16, v11);
    v12 = 1;
    this[66]._os_unfair_lock_opaque = 1;
  }

  PCMutex::unlock(v2);
  return v12;
}

void sub_26004B778()
{
  __cxa_free_exception(v0);
  __cxa_end_catch();
  JUMPOUT(0x26004B790);
}

uint64_t ProShade::ProgramBase::compileShaders(ProShade::ProgramBase *this)
{
  if ((*(this + 8) & 1) == 0 && (*(this + 9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(_8, "no shader specified");
    PCException::PCException(exception, _8);
  }

  PCSharedCount::PCSharedCount(_8);
  if (*(this + 8) == 1)
  {
    PSShaderBase::compile((this + 16));
  }

  if (*(this + 9) == 1)
  {
    PSShaderBase::compile((this + 80));
  }

  return OZChannelBase::setRangeName(_8, v2);
}

uint64_t ProShade::ProgramBase::use(os_unfair_lock_s *this)
{
  (*(*&this->_os_unfair_lock_opaque + 16))(this);
  PCSharedCount::PCSharedCount(_8);
  v2 = ProShade::ProgramBase::id(this);
  glUseProgram(v2);
  LiGL::setCurrentProgram(&_8[0].var0, 0);
  return OZChannelBase::setRangeName(_8, v3);
}

uint64_t ProShade::ProgramBase::getUniformLocation(os_unfair_lock_s *this, char *a2)
{
  v4 = &this[40];
  _0.var4.var0 = &this[40];
  PCMutex::lock(&this[40]);
  LOBYTE(_0.var5) = 1;
  LOBYTE(_0.var1) = 0;
  v5 = *LiPerContext<ProShade::ProgramBase::Exe *,LiPerContextObject_Traits<ProShade::ProgramBase::Exe>,LiOpenGLContextGetter>::get(this + 58, &_0.var1);
  std::string::basic_string[abi:ne200100]<0>(&_0.var1, a2);
  v6 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(v5 + 24, &_0.var1);
  if (v5 + 32 == v6)
  {
    PCSharedCount::PCSharedCount(&_0);
    (*(*&this->_os_unfair_lock_opaque + 16))(this);
    v8 = ProShade::ProgramBase::id(this);
    if (*(&_0.var3 + 7) >= 0)
    {
      p_var1 = &_0.var1;
    }

    else
    {
      p_var1 = _0.var1;
    }

    UniformLocation = glGetUniformLocation(v8, p_var1);
    _0.var7 = &_0.var1;
    *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v5 + 24, &_0.var1) + 56) = UniformLocation;
    OZChannelBase::setRangeName(&_0, v10);
  }

  else
  {
    UniformLocation = *(v6 + 56);
  }

  if (*(&_0.var3 + 7) < 0)
  {
    operator delete(_0.var1);
  }

  PCMutex::unlock(v4);
  return UniformLocation;
}

void sub_26004BA58(_Unwind_Exception *a1, const PCString *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  OZChannelBase::setRangeName(&a9, a2);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(&a16);
  _Unwind_Resume(a1);
}

void PSShader<35633u>::~PSShader(PCString *a1)
{
  PSShaderBase::~PSShaderBase(a1);

  JUMPOUT(0x2666E9F00);
}

ProShade::ProgramBase::Exe *LiPerContextObject_Traits<ProShade::ProgramBase::Exe>::destroy(ProShade::ProgramBase::Exe *result)
{
  if (result)
  {
    ProShade::ProgramBase::Exe::~Exe(result);

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

void ProShade::ProgramBase::Exe::~Exe(ProShade::ProgramBase::Exe *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    ProShade::UniformWorkspace::~UniformWorkspace(v2);
    MEMORY[0x2666E9F00]();
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 48, *(this + 7));
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(this + 24, *(this + 4));
  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ProShade::UniformWorkspace::~UniformWorkspace(ProShade::UniformWorkspace *this)
{
  v3 = (this + 32);
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_26004BF94(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void LiHeDepthCompare::~LiHeDepthCompare(HGNode *this)
{
  LiHeDepthCompareProgram::~LiHeDepthCompareProgram(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeDepthCompare::GetDOD(LiHeDepthCompare *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeDepthCompare::GetROI(LiHeDepthCompare *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t ProShade::typeGetSize(unsigned int a1, const PCString *a2)
{
  if (a1 >= 4)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("unknown type", a2);
  }

  return dword_26084E490[a1];
}

void *ProShade::copyData(void *result, const PCString *a2, int a3, BOOL *__dst, int a5)
{
  if (!result || !a3)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("no type", a2);
  }

  if (result == 3)
  {
    if (a3 == 1)
    {
      if (a5 >= 1)
      {
        v14 = a5 + 1;
        do
        {
          v15 = *&a2->var0;
          ++a2;
          *__dst++ = v15 != 0.0;
          --v14;
        }

        while (v14 > 1);
      }

      return result;
    }

    if (a3 != 3)
    {
      if (a3 != 2)
      {
        goto LABEL_46;
      }

      if (a5 >= 1)
      {
        v9 = a5 + 1;
        do
        {
          v10 = *&a2->var0;
          ++a2;
          *__dst = v10;
          __dst += 4;
          --v9;
        }

        while (v9 > 1);
      }

      return result;
    }

    v11 = 8 * a5;
LABEL_42:

    return memcpy(__dst, a2, v11);
  }

  if (result == 2)
  {
    if (a3 == 1)
    {
      if (a5 >= 1)
      {
        v12 = a5 + 1;
        do
        {
          var0 = a2->var0;
          a2 = (a2 + 4);
          *__dst++ = var0 != 0;
          --v12;
        }

        while (v12 > 1);
      }

      return result;
    }

    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_46;
      }

      if (a5 >= 1)
      {
        v7 = a5 + 1;
        do
        {
          v8 = a2->var0;
          a2 = (a2 + 4);
          *__dst = v8;
          __dst += 8;
          --v7;
        }

        while (v7 > 1);
      }

      return result;
    }

    v11 = 4 * a5;
    goto LABEL_42;
  }

  if (result != 1)
  {
    goto LABEL_46;
  }

  if (a3 == 1)
  {
    v11 = a5;
    goto LABEL_42;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      if (a5 >= 1)
      {
        v5 = a5 + 1;
        do
        {
          var0_low = LOBYTE(a2->var0);
          a2 = (a2 + 1);
          *__dst = var0_low;
          __dst += 8;
          --v5;
        }

        while (v5 > 1);
      }

      return result;
    }

LABEL_46:
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("unknown type", a2);
  }

  if (a5 >= 1)
  {
    v16 = a5 + 1;
    do
    {
      v17 = LOBYTE(a2->var0);
      a2 = (a2 + 1);
      *__dst = v17;
      __dst += 4;
      --v16;
    }

    while (v16 > 1);
  }

  return result;
}

uint64_t ProShade::shapeGetWidth(unsigned int a1, const PCString *a2)
{
  if (a1 >= 0xE)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("unknown shape", a2);
  }

  return dword_26084E748[a1];
}

uint64_t ProShade::shapeGetSize(unsigned int a1, const PCString *a2)
{
  if (a1 >= 0xE)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("unknown shape", a2);
  }

  return dword_26084E780[a1];
}

uint64_t ProShade::shapeTexture(ProShade *this, const PCString *a2)
{
  if (a2)
  {
    if (this == 34067)
    {
      return 13;
    }

LABEL_9:
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("invalid target", a2);
  }

  if (this == 3553)
  {
    return 9;
  }

  if (this != 34067)
  {
    goto LABEL_9;
  }

  return 11;
}

void ProShade::shapeString(OZChannelBase *a1@<X0>, const PCString *a2@<X1>, LiString *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  if (a1 > 9)
  {
    if (a1 > 11)
    {
      if (a1 == 12)
      {
        v6 = "sampler2DRect";
        goto LABEL_21;
      }

      if (a1 == 13)
      {
        v6 = "samplerCubeShadow";
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    if (a1 == 10)
    {
      v6 = "sampler3D";
    }

    else
    {
      v6 = "samplerCube";
    }

LABEL_21:

    LiString::LiString(a3, v6);
    return;
  }

  if (a1 > 7)
  {
    if (a1 == 8)
    {
      v6 = "sampler1D";
    }

    else
    {
      v6 = "sampler2D";
    }

    goto LABEL_21;
  }

  if (!a1)
  {
    v6 = "void";
    goto LABEL_21;
  }

  if (a1 == 1)
  {
    if (a2 <= 1)
    {
      if (a2 == 1)
      {
        v6 = "BOOL";
        goto LABEL_21;
      }

      if (!a2)
      {
        ProShade::Error<PCIllegalArgumentException>::raise(a1, a2);
      }
    }

    else
    {
      if (a2 == 2)
      {
        v6 = "int";
        goto LABEL_21;
      }

      if (a2 == 3)
      {
        v6 = "float";
        goto LABEL_21;
      }
    }

    Width = ProShade::shapeGetWidth(1u, a2);
LABEL_32:
    LiString::format("vec%d", a3, Width);
    switch(v3)
    {
      case 1:
        v11 = "b";
        break;
      case 2:
        v11 = "i";
        break;
      case 0:
        ProShade::Error<PCIllegalArgumentException>::raise(v9, v10);
      default:
        return;
    }

    LiString::append(a3, v11, 1);
    return;
  }

LABEL_24:
  Width = ProShade::shapeGetWidth(a1, a2);
  if ((v4 - 5) > 2)
  {
    goto LABEL_32;
  }

  if (v3 != 3)
  {
    ProShade::Error<PCException>::raise<char [27]>("matrices must be float", v8);
  }

  LiString::format("mat%d", a3, Width);
}

void *ProShade::Value::Value(void *this)
{
  *this = 0;
  this[1] = -1;
  return this;
}

uint64_t ProShade::Value::operator=(uint64_t a1, const PCString *a2)
{
  v4.var0 = a2->var0;
  *a1 = a2->var0;
  Size = ProShade::typeGetSize(v4.var0, a2);
  v7 = ProShade::shapeGetSize(*(a1 + 4), v6);
  memcpy((a1 + 16), &a2[2], v7 * Size);
  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t ProShade::Value::Value(uint64_t this, const PCString *a2)
{
  *this = 0;
  *(this + 8) = -1;
  return ProShade::Value::operator=(this, a2);
}

void ProShade::Value::set(uint64_t a1, const PCString *a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  Size = ProShade::typeGetSize(a2, a2);
  v6 = ProShade::shapeGetSize(*(a1 + 4), v5);
  bzero((a1 + 16), v6 * Size);
  *(a1 + 8) = -1;
}

void *ProShade::Value::set(uint64_t a1, const PCString *a2, int a3, const void *a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  Size = ProShade::typeGetSize(a2, a2);
  v8 = ProShade::shapeGetSize(*(a1 + 4), v7);
  result = memcpy((a1 + 16), a4, v8 * Size);
  *(a1 + 8) = -1;
  return result;
}

void *ProShade::Value::get(const PCString *a1, const PCString *a2, BOOL *a3)
{
  v4 = a2;
  var0_low = LODWORD(a1->var0);
  Size = ProShade::shapeGetSize(HIDWORD(a1->var0), a2);

  return ProShade::copyData(var0_low, a1 + 2, v4, a3, Size);
}

void ProShade::Value::repr(ProShade::Value *this@<X0>, LiString *a2@<X8>)
{
  ProShade::shapeString(*(this + 1), *this, a2);
  LiString::append(a2, "(", 1);
  Size = ProShade::shapeGetSize(*(this + 1), v4);
  v6 = *this;
  if (*this > 1)
  {
    if (v6 == 2)
    {
      if (Size >= 1)
      {
        v15 = 0;
        v16 = Size;
        do
        {
          if (v15)
          {
            LiString::append(a2, ",", 1);
          }

          LiString::format(*(this + v15 + 4), &__src);
          if (__src)
          {
            v17 = *(__src - 2);
          }

          else
          {
            v17 = 0;
          }

          LiString::append(a2, __src, v17);
          if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
          {
            *__src = 0;
            if (__src)
            {
              v18 = __src - 12;
            }

            else
            {
              v18 = 0;
            }

            free(v18);
          }

          ++v15;
        }

        while (v16 != v15);
      }
    }

    else if (v6 == 3 && Size >= 1)
    {
      v11 = 0;
      v12 = Size;
      do
      {
        if (v11)
        {
          LiString::append(a2, ",", 1);
        }

        LiString::format(*(this + v11 + 2), &__src);
        if (__src)
        {
          v13 = *(__src - 2);
        }

        else
        {
          v13 = 0;
        }

        LiString::append(a2, __src, v13);
        if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
        {
          *__src = 0;
          if (__src)
          {
            v14 = __src - 12;
          }

          else
          {
            v14 = 0;
          }

          free(v14);
        }

        ++v11;
      }

      while (v12 != v11);
    }
  }

  else if (v6)
  {
    if (v6 == 1 && Size >= 1)
    {
      v7 = 0;
      v8 = Size;
      do
      {
        if (v7)
        {
          LiString::append(a2, ",", 1);
        }

        LiString::format(*(this + v7 + 16), &__src);
        if (__src)
        {
          v9 = *(__src - 2);
        }

        else
        {
          v9 = 0;
        }

        LiString::append(a2, __src, v9);
        if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
        {
          *__src = 0;
          if (__src)
          {
            v10 = __src - 12;
          }

          else
          {
            v10 = 0;
          }

          free(v10);
        }

        ++v7;
      }

      while (v8 != v7);
    }
  }

  else
  {
    LiString::append(a2, "NULL", 4);
  }

  LiString::append(a2, ")", 1);
}

uint64_t ProShade::Value::asBool(ProShade::Value *this, const PCString *a2)
{
  if (*(this + 1) != 1)
  {
    ProShade::Error<PCException>::raise<char [27]>("predicate not scalar", a2);
  }

  v2 = *this;
  if (*this <= 1)
  {
    if (v2 == 1)
    {
      v4 = *(this + 16);
      return v4 & 1;
    }

    if (!v2)
    {
      ProShade::Error<PCIllegalArgumentException>::raise(this, a2);
    }

    goto LABEL_16;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v3 = *(this + 2) == 0.0;
      goto LABEL_9;
    }

LABEL_16:
    ProShade::Error<PCException>::raise<char [27]>("unknown type", a2);
  }

  v3 = *(this + 4) == 0;
LABEL_9:
  v4 = !v3;
  return v4 & 1;
}

void ProShade::ValueVisitor::~ValueVisitor(ProShade::ValueVisitor *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    MEMORY[0x2666E9F00](v1, 0x20C40960023A9);
  }
}

uint64_t ProShade::ValueVisitor::alreadyComputed(uint64_t **this, const ProShade::Node *a2, ProShade::Value *a3)
{
  v3 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = *v3;
  v5 = v3[1];
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if (*v4 == a2)
    {
      break;
    }

    v4 += 152;
  }

  ProShade::Value::operator=(a3, (v4 + 8));
  return 1;
}

const ProShade::Node ****ProShade::ValueVisitor::addResult(const ProShade::Node ****this, __CFString *a2, const ProShade::Value *a3)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (!*this)
  {
    operator new();
  }

  for (i = *v4; i != v4[1]; i += 19)
  {
    if (*i == a2)
    {
      return this;
    }
  }

  v10.var0 = a2;
  v6 = *(a3 + 1);
  v11 = *a3;
  v12 = v6;
  Size = ProShade::typeGetSize(v11, a2);
  v9 = ProShade::shapeGetSize(v6, v8);
  memcpy(v14, a3 + 16, v9 * Size);
  v13 = *(a3 + 1);
  return std::vector<std::pair<ProShade::Node const*,ProShade::Value>>::push_back[abi:ne200100](v4, &v10);
}

uint64_t std::vector<std::pair<ProShade::Node const*,ProShade::Value>>::push_back[abi:ne200100](uint64_t a1, const PCString *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<ProShade::Node const*,ProShade::Value>>::__emplace_back_slow_path<std::pair<ProShade::Node const*,ProShade::Value>>(a1, a2);
  }

  else
  {
    std::vector<std::pair<ProShade::Node const*,ProShade::Value>>::__construct_one_at_end[abi:ne200100]<std::pair<ProShade::Node const*,ProShade::Value>>(a1, a2);
    result = v3 + 152;
  }

  *(a1 + 8) = result;
  return result;
}

ProShade::Node *ProShade::Node::Node(ProShade::Node *this, uint64_t *a2)
{
  v3 = a2[1];
  *this = v3;
  *(this + *(v3 - 24)) = a2[2];
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  PCWorkingColorVector::PCWorkingColorVector((this + 8));
  *(this + 6) = 3;
  *(this + 36) = 0;
  *(this + 28) = 0;
  *(this + 11) = 3;
  return this;
}

uint64_t ProShade::Node::po(ProShade::Node *this)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  v1 = *(this + 4);
  v14 = v1;
  v15 = &unk_28725EB98;
  if (v1)
  {
    atomic_fetch_add(v1 - 3, 1u);
  }

  ProShade::VarT<ProShade::Node>::VarT(v24, this);
  ProShade::Output::Output(v18, &v14, v24);
  if (v16 <= SHIDWORD(v16))
  {
    v2 = 2 * (HIDWORD(v16) + 1) + 1;
  }

  else
  {
    v2 = v16;
  }

  PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(&v15, HIDWORD(v16) + 1, v2);
  v3 = v17 + 40 * SHIDWORD(v16);
  ProShade::VarT<ProShade::Node>::operator=(v3 - 40, v18);
  if ((v3 - 40) != v18)
  {
    LiString::dec((v3 - 8));
    v4 = v20;
    *(v3 - 8) = v20;
    if (v4)
    {
      atomic_fetch_add(v4 - 3, 1u);
    }
  }

  v18[0].var0 = &unk_28725E088;
  if (v20 && atomic_fetch_add(v20 - 3, 0xFFFFFFFF) == 1)
  {
    *v20 = 0;
    if (v20)
    {
      v5 = v20 - 3;
    }

    else
    {
      v5 = 0;
    }

    free(v5);
    v20 = 0;
  }

  v18[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v19);
  v24[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v25);
  v24[0].var0 = 0;
  v13 = 0;
  ProShade::Program::Program(v18);
  ProShade::Program::shader(v18, &v15, v24, &v13);
  if (v24[0].var0)
  {
    var0 = v24[0].var0;
  }

  else
  {
    var0 = "";
  }

  v7 = strlen(var0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], var0, v7);
  v21 = &unk_2872DEA38;
  v23 = 0;
  PCWeakCount::~PCWeakCount(&v22);
  if (v13 && atomic_fetch_add(v13 - 3, 0xFFFFFFFF) == 1)
  {
    *v13 = 0;
    if (v13)
    {
      v8 = v13 - 3;
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v24[0].var0 && atomic_fetch_add(v24[0].var0 - 3, 0xFFFFFFFF) == 1)
  {
    *v24[0].var0 = 0;
    if (v24[0].var0)
    {
      v9 = v24[0].var0 - 12;
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (v14 && atomic_fetch_add(v14 - 3, 0xFFFFFFFF) == 1)
  {
    *v14 = 0;
    if (v14)
    {
      v10 = v14 - 3;
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  v15 = &unk_28725EB98;
  if (v16 < 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v16;
  }

  PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(&v15, 0, v11);
  result = v17;
  if (v17)
  {
    return MEMORY[0x2666E9ED0](v17, 0x1000C8077774924);
  }

  return result;
}

void sub_26004D2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProShade::Node::dump(unsigned int *a1, void *a2, int a3)
{
  if (a3 >= 1)
  {
    v6 = a3;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      --v6;
    }

    while (v6);
  }

  (*(*a1 + 24))(&v26, a1);
  v7 = "";
  if (v26.__locale_)
  {
    locale = v26.__locale_;
  }

  else
  {
    locale = "";
  }

  v9 = strlen(locale);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, locale, v9);
  if (v26.__locale_ && atomic_fetch_add(v26.__locale_ - 3, 0xFFFFFFFF) == 1)
  {
    *v26.__locale_ = 0;
    if (v26.__locale_)
    {
      v10 = v26.__locale_ - 12;
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " (", 2);
  (*(*a1 + 120))(&v26, a1);
  if (v26.__locale_)
  {
    v7 = v26.__locale_;
  }

  v12 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v7, v12);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
  v14 = a1[10];
  if (v14 > 3)
  {
    v15 = "?";
  }

  else
  {
    v15 = off_279AA9C48[v14];
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")", 1);
  if (v26.__locale_ && atomic_fetch_add(v26.__locale_ - 3, 0xFFFFFFFF) == 1)
  {
    *v26.__locale_ = 0;
    if (v26.__locale_)
    {
      v17 = v26.__locale_ - 12;
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v18 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  v27 = 0;
  v28 = 0;
  v26.__locale_ = &unk_28725EA68;
  v19 = (*(*a1 + 64))(a1, &v26);
  v20 = HIDWORD(v27);
  if (SHIDWORD(v27) >= 1)
  {
    v21 = 0;
    v22 = 16;
    do
    {
      if (v21 >= SHIDWORD(v27))
      {
        PCArray_base::badIndex(v19);
      }

      v23 = *(v28 + v22);
      if (!v23)
      {
        throw_PCNullPointerException(1);
      }

      v19 = (*(*v23 + 40))(v23, a2, (a3 + 4));
      ++v21;
      v22 += 32;
    }

    while (v20 != v21);
  }

  v26.__locale_ = &unk_28725EA68;
  if (v27 < 0)
  {
    v24 = 1;
  }

  else
  {
    v24 = v27;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v26, 0, v24);
  result = v28;
  if (v28)
  {
    return MEMORY[0x2666E9ED0](v28, 0x1000C8077774924);
  }

  return result;
}

uint64_t ProShade::Node::checkType(uint64_t result, const PCString *a2, int a3)
{
  if (*(result + 24) != a2 || *(result + 28) != a3)
  {
    ProShade::Error<PCException>::raise<char [27]>("type mismatch", a2);
  }

  return result;
}

int8x8_t *ProShade::Node::hash(int8x8_t *this, char a2)
{
  if ((a2 & 1) != 0 || !*&vorr_s8(this[1], *&vextq_s8(*this[1].i8, *this[1].i8, 8uLL)))
  {
    operator new();
  }

  return this + 1;
}

uint64_t ProShade::Node::setFrequency(ProShade::Node *this)
{
  v11 = 0;
  v12 = 0;
  v10 = &unk_28725EA68;
  v2 = (*(*this + 64))(this, &v10);
  v3 = HIDWORD(v11);
  if (SHIDWORD(v11) < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      if (v5 >= SHIDWORD(v11))
      {
        PCArray_base::badIndex(v2);
      }

      v2 = ProShade::VarT<ProShade::Node>::frequency(v12 + v4);
      if (v6 <= v2)
      {
        v6 = v2;
      }

      if (++v5 >= v3)
      {
        break;
      }

      v4 += 32;
    }

    while (v6 < 3);
  }

  v7 = *(this + 11);
  if (v6 < v7)
  {
    v7 = v6;
  }

  *(this + 10) = v7;
  v10 = &unk_28725EA68;
  if (v11 < 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = v11;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v10, 0, v8);
  result = v12;
  if (v12)
  {
    return MEMORY[0x2666E9ED0](v12, 0x1000C8077774924);
  }

  return result;
}

void sub_26004DA6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

double ProShade::Node::copyFrom(ProShade::Node *this, const ProShade::Node *a2)
{
  *(this + 8) = *(a2 + 8);
  *(this + 3) = *(a2 + 3);
  if (a2 != this)
  {
    LiString::dec((this + 32));
    v4 = *(a2 + 4);
    *(this + 4) = v4;
    if (v4)
    {
      atomic_fetch_add((v4 - 12), 1u);
    }
  }

  result = *(a2 + 5);
  *(this + 5) = result;
  return result;
}

uint64_t ProShade::Node::getValue(ProShade::Node *this, ProShade::Value *a2, uint64_t **a3)
{
  result = ProShade::ValueVisitor::alreadyComputed(a3, this, a2);
  if ((result & 1) == 0)
  {
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = &unk_287262D08;
    v17 = &unk_28725EA68;
    v18 = 0;
    (*(*this + 64))(this, &v17);
    if (SHIDWORD(v18) >= 1)
    {
      v7 = 0;
      v8 = 16;
      do
      {
        v9 = *(v19 + v8);
        if (!v9)
        {
          break;
        }

        v10 = v21 <= SHIDWORD(v21) ? 2 * (HIDWORD(v21) + 1) + 1 : v21;
        PCArray<ProShade::Value,PCArray_Traits<ProShade::Value>>::resize(&v20, HIDWORD(v21) + 1, v10);
        (*(*v9 + 104))(v9, v22 + 144 * SHIDWORD(v21) - 144, a3);
        ++v7;
        v8 += 32;
      }

      while (v7 < SHIDWORD(v18));
    }

    (*(*this + 112))(this, &v20, a2);
    ProShade::ValueVisitor::addResult(a3, this, a2);
    v17 = &unk_28725EA68;
    if (v18 < 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = v18;
    }

    PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v11);
    result = v19;
    if (v19)
    {
      result = MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
    }

    v20 = &unk_287262D08;
    if (v21 < 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = v21 & ~(v21 >> 31);
    }

    if (v12 == v21)
    {
      v13 = SHIDWORD(v21);
      v14 = v22;
      if (v21 < 0)
      {
        v15 = (v22 + 144 * SHIDWORD(v21) + 8);
        do
        {
          *(v15 - 1) = 0;
          *v15 = -1;
          v15 += 18;
        }

        while (!__CFADD__(v13++, 1));
        v21 = v12;
        return MEMORY[0x2666E9ED0](v14, 0x1000C8077774924);
      }
    }

    else
    {
      if (v12)
      {
        operator new[]();
      }

      v14 = 0;
      result = v22;
      if (v22)
      {
        result = MEMORY[0x2666E9ED0](v22, 0x1000C8077774924);
      }

      v22 = 0;
    }

    v21 = v12;
    if (!v14)
    {
      return result;
    }

    return MEMORY[0x2666E9ED0](v14, 0x1000C8077774924);
  }

  return result;
}

void sub_26004DD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(&a9);
  PCArray<ProShade::Value,PCArray_Traits<ProShade::Value>>::~PCArray(&a12);
  _Unwind_Resume(a1);
}

void ProShade::NodeOperator::operator()(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a1[2];
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = a1 + 2;
    do
    {
      v8 = v6[4];
      v9 = v8 >= v5;
      v10 = v8 < v5;
      if (v9)
      {
        v7 = v6;
      }

      v6 = v6[v10];
    }

    while (v6);
    if (v7 == a1 + 2 || v5 < v7[4])
    {
LABEL_10:
      v11 = (a1 + 1);
      (*(*a1 + 8))(a1, a2);
      v15[0] = *(a2 + 16);
      v15[2] = v15;
      v12 = std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::__emplace_unique_key_args<ProShade::Node const*,std::piecewise_construct_t const&,std::tuple<ProShade::Node const*&&>,std::tuple<>>(v11, v15);
      ProShade::VarT<ProShade::Node>::operator=((v12 + 5), a3);
      return;
    }

    *a3 = &unk_28725E328;
    *(a3 + 8) = *(v7 + 48);
    *(a3 + 16) = v7[7];
    v13 = (a3 + 24);
    v14 = (v7 + 8);
  }

  else
  {
    *a3 = &unk_28725E328;
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 16) = 0;
    v13 = (a3 + 24);
    v14 = (a2 + 24);
  }

  PCSharedCount::PCSharedCount(v13, v14);
}

void sub_26004DF1C(_Unwind_Exception *a1)
{
  v1->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::NodeOperator::apply(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v4 + 80))(a2);
  v5 = a2[2];
  v6 = *(a1 + 16);
  if (v5 != v6)
  {
    if (!v5)
    {
      throw_PCNullPointerException(1);
    }

    if (!v6)
    {
      throw_PCNullPointerException(1);
    }

    if (v5 != v6)
    {
      LiString::dec((v5 + 32));
      v7 = *(v6 + 32);
      *(v5 + 32) = v7;
      if (v7)
      {
        atomic_fetch_add((v7 - 12), 1u);
      }
    }
  }
}

void sub_26004E020(_Unwind_Exception *a1)
{
  v1->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Const::create()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_26004E1FC(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::ConstMatrix::ConstMatrix(uint64_t a1, uint64_t a2)
{
  *(a1 + 176) = &unk_2872DEA38;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  ProShade::Node::Node(a1, &off_287272860);
  *a1 = &unk_287272730;
  *(a1 + 48) = 0x3FF0000000000000;
  v4 = a1 + 48;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = &unk_287272838;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 88) = 0x3FF0000000000000;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 24) = 0x700000003;
  *(a1 + 40) = 0;
  if (a1 + 48 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v4 + j) = *(a2 + j);
      }

      v4 += 32;
      a2 += 32;
    }
  }

  return a1;
}

void sub_26004E480(_Unwind_Exception *a1)
{
  *(v1 + 176) = v2;
  *(v1 + 192) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Const::create(ProShade::Const *this, const ProShade::Value *a2)
{
  if ((*(this + 1) - 5) <= 2)
  {
    operator new();
  }

  operator new();
}

ProShade::ConstMatrix *ProShade::ConstMatrix::ConstMatrix(ProShade::ConstMatrix *this, const ProShade::Value *a2)
{
  *(this + 22) = &unk_2872DEA38;
  *(this + 23) = 0;
  *(this + 192) = 1;
  ProShade::Node::Node(this, &off_287272860);
  *this = &unk_287272730;
  *(this + 6) = 0x3FF0000000000000;
  *(this + 21) = 0x3FF0000000000000;
  *(this + 22) = &unk_287272838;
  *(this + 16) = 0x3FF0000000000000;
  *(this + 11) = 0x3FF0000000000000;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  v5 = *a2;
  v4 = *(a2 + 1);
  *(this + 6) = v5;
  *(this + 7) = v4;
  *(this + 10) = 0;
  Size = ProShade::shapeGetSize(v4, v6);
  ProShade::copyData(v5, a2 + 2, 3, this + 48, Size);
  return this;
}

void sub_26004E64C(_Unwind_Exception *a1)
{
  *(v1 + 176) = v2;
  *(v1 + 192) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

ProShade::ConstVector *ProShade::ConstVector::ConstVector(ProShade::ConstVector *this, const ProShade::Value *a2)
{
  *(this + 10) = &unk_2872DEA38;
  *(this + 11) = 0;
  *(this + 96) = 1;
  ProShade::Node::Node(this, &off_2872726E8);
  *this = &unk_2872725B8;
  *(this + 10) = &unk_2872726C0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v5 = *a2;
  v4 = *(a2 + 1);
  *(this + 6) = v5;
  *(this + 7) = v4;
  *(this + 10) = 0;
  Size = ProShade::shapeGetSize(v4, v6);
  ProShade::copyData(v5, a2 + 2, 3, this + 48, Size);
  return this;
}

void sub_26004E768(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void sub_26004E934(_Unwind_Exception *a1)
{
  ProShade::InputNode::~InputNode(v1, &off_2872726E0);
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void sub_26004EAF4(_Unwind_Exception *a1)
{
  ProShade::InputNode::~InputNode(v1, &off_2872726E0);
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void sub_26004ECB0(_Unwind_Exception *a1)
{
  ProShade::InputNode::~InputNode(v1, &off_2872726E0);
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

ProShade::ConstVector *ProShade::ConstVector::ConstVector(ProShade::ConstVector *this)
{
  *(this + 10) = &unk_2872DEA38;
  *(this + 11) = 0;
  *(this + 96) = 1;
  ProShade::Node::Node(this, &off_2872726E8);
  *this = &unk_2872725B8;
  *(this + 10) = &unk_2872726C0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

void sub_26004ED94(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::ConstVector::repr(ProShade::ConstVector *this@<X0>, const PCString *a2@<X1>, LiString *a3@<X8>)
{
  v44 = 0;
  v5 = *(this + 7);
  if ((v5 - 2) < 3)
  {
    Width = ProShade::shapeGetWidth(v5, a2);
    if (Width >= 1)
    {
      v7 = 0;
      v8 = this + 48;
      v9 = Width;
      do
      {
        if (v7)
        {
          LiString::append(&v44, ", ", 2);
        }

        if (*(this + 6) == 1)
        {
          if (*&v8[8 * v7] == 0.0)
          {
            v10 = "false";
          }

          else
          {
            v10 = "true";
          }

          if (*v10)
          {
            v11 = 0;
              ;
            }
          }

          else
          {
            LODWORD(v11) = 0;
          }

          LiString::append(&v44, v10, v11);
        }

        else
        {
          LiString::format(*&v8[8 * v7], &__src);
          if (__src)
          {
            v13 = *(__src - 2);
          }

          else
          {
            v13 = 0;
          }

          LiString::append(&v44, __src, v13);
          if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
          {
            *__src = 0;
            if (__src)
            {
              v14 = __src - 12;
            }

            else
            {
              v14 = 0;
            }

            free(v14);
          }
        }

        ++v7;
      }

      while (v7 != v9);
    }

    ProShade::shapeString(*(this + 7), *(this + 6), &__src);
    v15 = __src;
    if (__src)
    {
      v16 = *(__src - 2);
    }

    else
    {
      v16 = 0;
    }

    v19 = v16;
    v20 = malloc_type_malloc(v16 + 14, 0x10000403E1C8BA9uLL);
    v20[1] = v19 + 1;
    v20[2] = v19 + 2;
    atomic_store(1u, v20);
    v21 = v20 + 3;
    atomic_store(0, v20);
    memcpy(v20 + 3, v15, v19);
    v21[v19] = 40;
    v21[v19 + 1] = 0;
    atomic_fetch_add(v20, 1u);
    v22 = v20[1];
    v23 = v44;
    if (v44)
    {
      v24 = *(v44 - 2);
    }

    else
    {
      v24 = 0;
    }

    v25 = v22 + v24;
    v26 = malloc_type_malloc(v25 + 13, 0x10000403E1C8BA9uLL);
    v26[1] = v25;
    v26[2] = v25 + 1;
    atomic_store(1u, v26);
    atomic_store(0, v26);
    memcpy(v26 + 3, v21, v22);
    memcpy(v26 + v22 + 12, v23, v24);
    *(v26 + v25 + 12) = 0;
    atomic_fetch_add(v26, 1u);
    v27 = v26[1];
    v28 = malloc_type_malloc(v27 + 14, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v28);
    v29 = v28 + 3;
    atomic_store(0, v28);
    v28[1] = v27 + 1;
    v28[2] = v27 + 2;
    memcpy(v28 + 3, v26 + 3, v27);
    *(v29 + v27) = 41;
    *(v29 + v27 + 1) = 0;
    *a3 = v28 + 3;
    atomic_fetch_add(v28, 1u);
    if (atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
    {
      free(v26);
    }

    if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
    {
      free(v20);
    }

    goto LABEL_48;
  }

  if (v5 != 1)
  {
    ProShade::shapeString(v5, *(this + 6), &__src);
    v30 = __src;
    if (__src)
    {
      v31 = *(__src - 2);
    }

    else
    {
      v31 = 0;
    }

    v33 = v31;
    v34 = malloc_type_malloc(v31 + 18, 0x10000403E1C8BA9uLL);
    v34[1] = v33 + 5;
    v34[2] = v33 + 6;
    atomic_store(1u, v34);
    atomic_store(0, v34);
    memcpy(v34 + 3, v30, v33);
    v35 = v34 + v33 + 12;
    *v35 = 1497976360;
    v35[4] = 41;
    *(v34 + v33 + 17) = 0;
    *a3 = v34 + 3;
    atomic_fetch_add(v34, 1u);
LABEL_48:
    if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
    {
      *__src = 0;
      if (__src)
      {
        v36 = __src - 12;
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }

    goto LABEL_54;
  }

  v17 = *(this + 6);
  if (*(this + 6) == 1)
  {
    if (v17 == 0.0)
    {
      v18 = "false";
    }

    else
    {
      v18 = "true";
    }

    LiString::LiString(a3, v18);
  }

  else
  {
    LiString::format(v17, a3);
    LiString::LiString(&__src, ".");
    if (LiString::contains(a3, &__src))
    {
      v32 = 0;
    }

    else
    {
      LiString::LiString(&v42, "e");
      if (LiString::contains(a3, &v42))
      {
        v32 = 0;
      }

      else
      {
        LiString::LiString(&v41, "E");
        v32 = LiString::contains(a3, &v41) ^ 1;
        if (v41 && atomic_fetch_add(v41 - 3, 0xFFFFFFFF) == 1)
        {
          *v41 = 0;
          if (v41)
          {
            v38 = (v41 - 3);
          }

          else
          {
            v38 = 0;
          }

          free(v38);
        }
      }

      if (v42 && atomic_fetch_add(v42 - 3, 0xFFFFFFFF) == 1)
      {
        *v42 = 0;
        if (v42)
        {
          v39 = (v42 - 3);
        }

        else
        {
          v39 = 0;
        }

        free(v39);
      }
    }

    if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
    {
      *__src = 0;
      if (__src)
      {
        v40 = __src - 12;
      }

      else
      {
        v40 = 0;
      }

      free(v40);
    }

    if (v32)
    {
      LiString::append(a3, ".", 1);
    }
  }

LABEL_54:
  if (v44 && atomic_fetch_add(v44 - 3, 0xFFFFFFFF) == 1)
  {
    *v44 = 0;
    if (v44)
    {
      v37 = v44 - 12;
    }

    else
    {
      v37 = 0;
    }

    free(v37);
  }
}

void sub_26004F300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10, atomic_uint *a11, atomic_uint *a12)
{
  if (a9 && atomic_fetch_add(a9 - 3, 0xFFFFFFFF) == 1)
  {
    *a9 = 0;
    free(a9 - 3);
  }

  if (a10 && atomic_fetch_add(a10 - 3, 0xFFFFFFFF) == 1)
  {
    *a10 = 0;
    free(a10 - 3);
  }

  if (a11 && atomic_fetch_add(a11 - 3, 0xFFFFFFFF) == 1)
  {
    *a11 = 0;
    free(a11 - 3);
  }

  LiString::dec(v12);
  if (a12)
  {
    if (atomic_fetch_add(a12 - 3, 0xFFFFFFFF) == 1)
    {
      *a12 = 0;
      free(a12 - 3);
    }
  }

  _Unwind_Resume(a1);
}

void ProShade::ConstVector::inputs(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, 0, v2);
}

__n128 ProShade::ConstVector::getVec2@<Q0>(__n128 *this@<X0>, const PCString *a2@<X1>, __n128 *a3@<X8>)
{
  if (this[1].n128_u32[3] - 5 <= 2)
  {
    ProShade::Error<PCException>::raise<char [27]>("isMatrix", a2);
  }

  result = this[3];
  *a3 = result;
  return result;
}

double ProShade::ConstVector::getVec3@<D0>(ProShade::ConstVector *this@<X0>, const PCString *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(this + 7) - 5) <= 2)
  {
    ProShade::Error<PCException>::raise<char [27]>("isMatrix", a2);
  }

  result = *(this + 8);
  *a3 = *(this + 3);
  *(a3 + 16) = result;
  return result;
}

__n128 ProShade::ConstVector::getVec4@<Q0>(__n128 *this@<X0>, const PCString *a2@<X1>, __n128 *a3@<X8>)
{
  if (this[1].n128_u32[3] - 5 <= 2)
  {
    ProShade::Error<PCException>::raise<char [27]>("isMatrix", a2);
  }

  result = this[3];
  v4 = this[4];
  *a3 = result;
  a3[1] = v4;
  return result;
}

void ProShade::ConstVector::getData(uint64_t a1, uint64_t a2)
{
  Size = ProShade::shapeGetSize(*(a1 + 28), a2);
  if (*(a2 + 8) < Size)
  {
    v5 = 2 * Size + 1;
  }

  else
  {
    v5 = *(a2 + 8);
  }

  PCArray<BOOL,PCArray_Traits<BOOL>>::resize(a2, Size, v5);
  if (Size >= 1)
  {
    v7 = 0;
    v8 = a1 + 48;
    do
    {
      if (v7 >= *(a2 + 12))
      {
        PCArray_base::badIndex(v6);
      }

      *(*(a2 + 16) + v7) = *(v8 + 8 * v7) != 0.0;
      ++v7;
    }

    while (Size != v7);
  }
}

{
  Size = ProShade::shapeGetSize(*(a1 + 28), a2);
  if (*(a2 + 8) < Size)
  {
    v5 = 2 * Size + 1;
  }

  else
  {
    v5 = *(a2 + 8);
  }

  PCArray<int,PCArray_Traits<int>>::resize(a2, Size, v5);
  if (Size >= 1)
  {
    v7 = 0;
    v8 = a1 + 48;
    do
    {
      if (v7 >= *(a2 + 12))
      {
        PCArray_base::badIndex(v6);
      }

      *(*(a2 + 16) + 4 * v7) = *(v8 + 8 * v7);
      ++v7;
    }

    while (Size != v7);
  }
}

{
  Size = ProShade::shapeGetSize(*(a1 + 28), a2);
  if (*(a2 + 8) < Size)
  {
    v5 = 2 * Size + 1;
  }

  else
  {
    v5 = *(a2 + 8);
  }

  PCArray<double,PCArray_Traits<double>>::resize(a2, Size, v5);
  if (Size >= 1)
  {
    v7 = 0;
    v8 = a1 + 48;
    do
    {
      if (v7 >= *(a2 + 12))
      {
        PCArray_base::badIndex(v6);
      }

      *(*(a2 + 16) + 8 * v7) = *(v8 + 8 * v7);
      ++v7;
    }

    while (Size != v7);
  }
}