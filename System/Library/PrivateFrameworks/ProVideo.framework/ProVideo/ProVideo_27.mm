BOOL HGRect::IsInfinite(HGRect *this)
{
  if (this->var0 == 0x80000000)
  {
    return 1;
  }

  if (this->var1 == 0x80000000)
  {
    return 1;
  }

  if (this->var2 == 0x7FFFFFFF)
  {
    return 1;
  }

  return this->var3 == 0x7FFFFFFF;
}

BOOL HGRect::IsZero(HGRect *this)
{
  if (this->var0)
  {
    return 0;
  }

  if (this->var1)
  {
    return 0;
  }

  if (this->var2)
  {
    return 0;
  }

  return this->var3 == 0;
}

BOOL HGRect::ContainsRect(HGRect *this, HGRect a2)
{
  if (this->var0 > a2.var0)
  {
    return 0;
  }

  if (this->var1 > a2.var1)
  {
    return 0;
  }

  if (this->var2 >= a2.var2)
  {
    return this->var3 >= a2.var3;
  }

  return 0;
}

HGRect *HGRect::Intersection(HGRect *this, HGRect a2)
{
  var2 = this->var2;
  var0 = this->var0;
  if (var2 > this->var0 && ((var1 = a2.var1, var3 = a2.var3, v6 = this->var3, v7 = this->var1, v6 > v7) ? (v8 = a2.var2 <= a2.var0) : (v8 = 1), !v8 ? (v9 = a2.var3 <= a2.var1) : (v9 = 1), !v9 ? (v10 = var2 <= a2.var0) : (v10 = 1), !v10 ? (v11 = v6 <= a2.var1) : (v11 = 1), !v11 ? (v12 = var0 < a2.var2) : (v12 = 0), v12 ? (v13 = v7 < a2.var3) : (v13 = 0), v13))
  {
    if (var0 <= a2.var0)
    {
      var0 = a2.var0;
    }

    if (v7 > a2.var1)
    {
      var1 = this->var1;
    }

    this->var0 = var0;
    this->var1 = var1;
    if (var2 >= a2.var2)
    {
      var2 = a2.var2;
    }

    if (v6 < a2.var3)
    {
      var3 = v6;
    }

    this->var2 = var2;
    this->var3 = var3;
  }

  else
  {
    *&this->var0 = 0;
    *&this->var2 = 0;
  }

  return this;
}

uint64_t HGRectMake4i(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a1 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a2 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a2;
  }

  return v4 | (v5 << 32);
}

HGRect *HGRect::Union(HGRect *this, HGRect a2)
{
  if (a2.var2 > a2.var0)
  {
    var1 = a2.var1;
    var3 = a2.var3;
    if (a2.var3 > a2.var1)
    {
      var0 = this->var0;
      if (this->var0 >= a2.var0)
      {
        var0 = a2.var0;
      }

      if (this->var1 < a2.var1)
      {
        var1 = this->var1;
      }

      this->var0 = var0;
      this->var1 = var1;
      var2 = this->var2;
      if (var2 <= a2.var2)
      {
        var2 = a2.var2;
      }

      if (this->var3 > a2.var3)
      {
        var3 = this->var3;
      }

      this->var2 = var2;
      this->var3 = var3;
    }
  }

  return this;
}

uint64_t HGRectGrow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v3) = a3 + a1;
  if ((a3 ^ 0x7FFFFFFF) <= a1)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = a3 + a1;
  }

  if ((0x80000000 - a3) >= a1)
  {
    LODWORD(v3) = 0x80000000;
  }

  if (a3 <= 0)
  {
    v3 = v3;
  }

  else
  {
    v3 = v4;
  }

  if ((HIDWORD(a3) ^ 0x7FFFFFFF) <= SHIDWORD(a1))
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = HIDWORD(a3) + HIDWORD(a1);
  }

  if ((0x80000000 - HIDWORD(a3)) >= SHIDWORD(a1))
  {
    LODWORD(v6) = 0x80000000;
  }

  else
  {
    LODWORD(v6) = HIDWORD(a3) + HIDWORD(a1);
  }

  if (SHIDWORD(a3) <= 0)
  {
    v6 = v6;
  }

  else
  {
    v6 = v5;
  }

  return v3 | (v6 << 32);
}

uint64_t HGRectIsInfinite(uint64_t a1, uint64_t a2)
{
  v2.i64[0] = a1;
  v2.i64[1] = a2;
  v3.i64[0] = 0xFFFFFFFFLL;
  v3.i64[1] = 0xFFFFFFFFLL;
  v4.i64[0] = 0xFFFFFFFF00000000;
  v4.i64[1] = 0xFFFFFFFF00000000;
  return vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(vandq_s8(v2, v3), xmmword_26038FA60), vceqq_s64(vandq_s8(v2, v4), xmmword_26038FA70)))) & 1;
}

uint64_t HGRectIntegral@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  if (a4 < a2 || a5 < a3)
  {
    return 0;
  }

  LODWORD(a1) = vcvtms_s32_f32(fmaxf(a2, -2147500000.0));
  LODWORD(v5) = vcvtms_s32_f32(fmaxf(a3, -2147500000.0));
  return a1 | (v5 << 32);
}

uint64_t HGRectIntersection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    return 0;
  }

  v4 = 0;
  if (SHIDWORD(a2) <= SHIDWORD(a1) || a4 <= a3 || SHIDWORD(a4) <= SHIDWORD(a3) || a2 <= a3 || SHIDWORD(a2) <= SHIDWORD(a3) || a1 >= a4)
  {
    return 0;
  }

  v5 = 0;
  if (SHIDWORD(a1) < SHIDWORD(a4))
  {
    if (a1 <= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = a1;
    }

    if (SHIDWORD(a1) <= SHIDWORD(a3))
    {
      v6 = HIDWORD(a3);
    }

    else
    {
      v6 = HIDWORD(a1);
    }

    v5 = v6 << 32;
  }

  return v5 | v4;
}

uint64_t HGRectMake4f@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  v6 = fminf(a2, a4);
  v7 = fmaxf(a2, a4);
  v8 = fminf(a3, a5);
  v9 = fmaxf(a3, a5);
  if (v7 < v6 || v9 < v8)
  {
    return 0;
  }

  LODWORD(a1) = vcvtms_s32_f32(fmaxf(v6, -2147500000.0));
  LODWORD(v5) = vcvtms_s32_f32(fmaxf(v8, -2147500000.0));
  return a1 | (v5 << 32);
}

float HGRectScale(float a1, double a2, float a3, double a4, float a5)
{
  if (a5 >= 0.0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a3;
  }

  if (a5 >= 0.0)
  {
    a1 = a3;
  }

  return fminf(v5 * a5, a1 * a5);
}

uint64_t HGRectUnion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 > a1 && SHIDWORD(a2) > SHIDWORD(a1))
  {
    if (a1 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = a1;
    }

    if (SHIDWORD(a1) >= SHIDWORD(a3))
    {
      v5 = HIDWORD(a3);
    }

    else
    {
      v5 = HIDWORD(a1);
    }

    v6 = v4 | (v5 << 32);
    if (SHIDWORD(a4) <= SHIDWORD(a3))
    {
      v6 = a1;
    }

    if (a4 > a3)
    {
      return v6;
    }

    else
    {
      return a1;
    }
  }

  return a3;
}

void HGRenderUtils::BufferCopierImpl::~BufferCopierImpl(dispatch_group_t *this)
{
  if (*(this + 72) == 1)
  {
    dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(this + 72) = 0;
  }

  dispatch_release(*this);
}

{
  if (*(this + 72) == 1)
  {
    dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(this + 72) = 0;
  }

  dispatch_release(*this);
}

intptr_t HGRenderUtils::BufferCopierImpl::finish_dispatch(intptr_t this)
{
  if (*(this + 72) == 1)
  {
    v1 = this;
    this = dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(v1 + 72) = 0;
  }

  return this;
}

uint64_t HGRenderUtils::BufferCopierImpl::_build_context@<X0>(HGRenderUtils::BufferCopierImpl *this@<X0>, HGBitmap *a2@<X1>, HGBitmap *a3@<X2>, void *a4@<X8>)
{
  v7 = (a3 + 20);
  v8 = HGRectIntersection(*(a3 + 20), *(a3 + 28), *(a2 + 20), *(a2 + 28));
  v10.i32[0] = *(a2 + 5);
  v10.i32[1] = *v7;
  v11 = vsub_s32(vdup_n_s32(v8), v10);
  v13 = (v12 - v8);
  v14 = *(a3 + 7);
  if (*(a3 + 4) == 31)
  {
    v15 = 4 * v14 * ((v13 + 5) / 6uLL);
    v16.i64[0] = v11.u32[0];
    v16.i64[1] = v11.u32[1];
    v17 = vcvtq_f64_u64(v16);
    __asm { FMOV            V1.2D, #3.0 }

    v23 = vcvtq_u64_f64(vdivq_f64(vaddq_f64(v17, v17), _Q1));
  }

  else
  {
    v15 = v14 * v13;
    v24.i64[0] = v11.i32[0];
    v24.i64[1] = v11.i32[1];
    v23 = v24;
  }

  v25 = *(a3 + 8);
  v27 = *(a2 + 7);
  v26 = *(a2 + 8);
  v28 = (v9 - HIDWORD(v8));
  result = v8 >> 32;
  v30 = *(a2 + 10) + v26 * (result - *(a2 + 6));
  *a4 = *(a3 + 10) + v25 * (result - *(a3 + 6)) + v23.i64[1] * v14;
  a4[1] = v30 + v27 * v23.i64[0];
  v31 = 4;
  if (v25 != v15 || v26 != v15)
  {
    v31 = v28 >> 2;
  }

  a4[2] = v25;
  a4[3] = v26;
  if (v28 < 0x40)
  {
    v31 = v28;
  }

  a4[4] = v15;
  a4[5] = v28;
  a4[6] = v31;
  a4[7] = 0;
  *(a4 + 56) = v25 == v15 && v26 == v15;
  return result;
}

void *HGRenderUtils::BufferCopierImpl::plain_copy(HGRenderUtils::BufferCopierImpl *this, HGBitmap *a2, HGBitmap *a3)
{
  result = HGRenderUtils::BufferCopierImpl::_build_context(this, a2, a3, v16);
  v5 = v16[1];
  *(this + 8) = v16[0];
  *(this + 24) = v5;
  v6 = v16[3];
  *(this + 40) = v16[2];
  *(this + 56) = v6;
  if (*(this + 64) == 1)
  {
    return memcpy(*(this + 2), *(this + 1), *(this + 6) * *(this + 5));
  }

  v7 = *(this + 6);
  if (v7)
  {
    v8 = *(this + 3);
    v9 = *(this + 4);
    v10 = *(this + 5);
    v11 = 1;
    v14 = this + 8;
    v12 = *(this + 1);
    v13 = *(v14 + 1);
    do
    {
      result = memcpy(v13, v12, v10);
      v12 += v8;
      v13 += v9;
    }

    while (v7 > v11++);
  }

  return result;
}

void HGRenderUtils::BufferCopierImpl::start_dispatch(dispatch_group_t *this, HGBitmap *a2, HGBitmap *a3)
{
  v5 = this;
  if (*(this + 72) == 1)
  {
    this = dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(v5 + 72) = 0;
  }

  HGRenderUtils::BufferCopierImpl::_build_context(this, a2, a3, v12);
  v6 = v12[1];
  *(v5 + 1) = v12[0];
  *(v5 + 3) = v6;
  v7 = v12[3];
  *(v5 + 5) = v12[2];
  *(v5 + 7) = v7;
  v8 = *(v5 + 64);
  v9 = *v5;
  global_queue = dispatch_get_global_queue(0, 0);
  if (v8)
  {
  }

  else
  {
  }

  dispatch_group_async_f(v9, global_queue, v5 + 1, v11);
  *(v5 + 72) = 1;
}

void anonymous namespace::block_single_copy_dispatch(_anonymous_namespace_ *this, void *a2)
{
  v3 = *(this + 6);
  global_queue = dispatch_get_global_queue(0, 0);
}

void anonymous namespace::block_copy_dispatch(_anonymous_namespace_ *this, void *a2)
{
  v3 = *(this + 6);
  global_queue = dispatch_get_global_queue(0, 0);
}

void HGRenderUtils::BufferReformatterImpl::~BufferReformatterImpl(dispatch_group_t *this)
{
  if (*(this + 32) == 1)
  {
    dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(this + 32) = 0;
  }

  dispatch_release(*this);
}

{
  if (*(this + 32) == 1)
  {
    dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(this + 32) = 0;
  }

  dispatch_release(*this);
}

intptr_t HGRenderUtils::BufferReformatterImpl::finish_dispatch(intptr_t this)
{
  if (*(this + 32) == 1)
  {
    v1 = this;
    this = dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(v1 + 32) = 0;
  }

  return this;
}

pthread_mutex_t *HGRenderUtils::BufferReformatterImpl::plain_reformat(HGRenderUtils::BufferReformatterImpl *this, HGBitmap *a2, HGBitmap *a3)
{
  v5 = *(a2 + 20);
  v6 = *(a2 + 28);
  v7 = HGMemory::allocate((16 * (v6 - v5) * (HIDWORD(v6) - HIDWORD(v5))), 0, a3);
  (*(*a3 + 72))(a3, v7, v5, v6, 0);
  (*(*a2 + 80))(a2, v7, v5, v6);
  return HGMemory::release(v7, v8);
}

void HGRenderUtils::BufferReformatterImpl::start_dispatch(dispatch_group_t *this, HGBitmap *a2, NSObject *a3)
{
  if (*(this + 32) == 1)
  {
    dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(this + 32) = 0;
  }

  v6 = (*(a2 + 8) - *(a2 + 6));
  if (v6 >= 0x40)
  {
    v6 >>= 2;
  }

  this[1] = a3;
  this[2] = a2;
  this[3] = v6;
  v7 = *this;
  global_queue = dispatch_get_global_queue(0, 0);
  *(this + 32) = 1;
}

void anonymous namespace::block_reformat_dispatch(_anonymous_namespace_ *this, void *a2)
{
  v3 = *(this + 2);
  global_queue = dispatch_get_global_queue(0, 0);
}

void HGRenderUtils::BufferFillerImpl::~BufferFillerImpl(dispatch_group_t *this)
{
  if (*(this + 240) == 1)
  {
    dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(this + 240) = 0;
  }

  dispatch_release(*this);
  v2 = this[29];
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C8077774924);
  }
}

{
  if (*(this + 240) == 1)
  {
    dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(this + 240) = 0;
  }

  dispatch_release(*this);
  v2 = this[29];
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C8077774924);
  }
}

intptr_t HGRenderUtils::BufferFillerImpl::finish_dispatch(intptr_t this)
{
  if (*(this + 240) == 1)
  {
    v1 = this;
    this = dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(v1 + 240) = 0;
  }

  return this;
}

void HGRenderUtils::BufferFillerImpl::plain_fill(HGRenderUtils::BufferFillerImpl *this, HGBitmap *a2, HGRect a3, unsigned __int8 *a4)
{
  v4 = *&a3.var2;
  v5 = *&a3.var0;
  v7 = HGRectIntersection(*(a2 + 20), *(a2 + 28), *&a3.var0, *&a3.var2);
  v9 = v8;
  memset(__p, 0, sizeof(__p));
  if (HGRectIsNull(v5, v4) || HGRectIsNull(v7, v9))
  {
    operator new();
  }

  v10 = *(this + 29);
  if (v10)
  {
    MEMORY[0x2666E9ED0](v10, 0x1000C8077774924);
  }

  operator new[]();
}

void sub_25FBFD6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::subdivideRect(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v9 = a1;
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v12 = HIDWORD(a4);
  if (SHIDWORD(a3) > SHIDWORD(a1))
  {
    *&v17 = HGRectMake4i(a1, HIDWORD(a1), a2, HIDWORD(a3));
    *(&v17 + 1) = v14;
    std::vector<HGRect>::push_back[abi:ne200100](a5, &v17);
    if (v12 >= v10)
    {
LABEL_3:
      if (v7 <= v9)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (SHIDWORD(a4) >= SHIDWORD(a2))
  {
    goto LABEL_3;
  }

  *&v17 = HGRectMake4i(v9, v12, a2, HIDWORD(a2));
  *(&v17 + 1) = v15;
  std::vector<HGRect>::push_back[abi:ne200100](a5, &v17);
  if (v7 <= v9)
  {
LABEL_4:
    if (v6 >= a2)
    {
      return;
    }

    goto LABEL_5;
  }

LABEL_9:
  *&v17 = HGRectMake4i(v9, v11, v7, v12);
  *(&v17 + 1) = v16;
  std::vector<HGRect>::push_back[abi:ne200100](a5, &v17);
  if (v6 >= a2)
  {
    return;
  }

LABEL_5:
  *&v17 = HGRectMake4i(v6, v11, a2, v12);
  *(&v17 + 1) = v13;
  std::vector<HGRect>::push_back[abi:ne200100](a5, &v17);
}

void HGRenderUtils::BufferFillerImpl::start_dispatch(dispatch_group_t *this, HGBitmap *a2, HGRect a3, unsigned __int8 *a4)
{
  v4 = *&a3.var2;
  v5 = *&a3.var0;
  if (*(this + 240) == 1)
  {
    dispatch_group_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    *(this + 240) = 0;
  }

  v8 = HGRectIntersection(*(a2 + 20), *(a2 + 28), v5, v4);
  v10 = v9;
  memset(__p, 0, sizeof(__p));
  if (HGRectIsNull(v5, v4) || HGRectIsNull(v8, v10))
  {
    operator new();
  }

  v11 = this[29];
  if (v11)
  {
    MEMORY[0x2666E9ED0](v11, 0x1000C8077774924);
  }

  operator new[]();
}

void sub_25FBFDA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::block_fill_dispatch(_anonymous_namespace_ *this, void *a2)
{
  v3 = *(this + 6);
  global_queue = dispatch_get_global_queue(0, 0);
}

void HGRenderUtils::BufferCopier::~BufferCopier(HGRenderUtils::BufferCopier *this)
{
  v1 = *this;
  if (*this)
  {
    if (*(v1 + 72) == 1)
    {
      dispatch_group_wait(*v1, 0xFFFFFFFFFFFFFFFFLL);
      *(v1 + 72) = 0;
    }

    dispatch_release(*v1);
    MEMORY[0x2666E9F00](v1, 0x1030C400C955606);
  }
}

{
  v1 = *this;
  if (*this)
  {
    if (*(v1 + 72) == 1)
    {
      dispatch_group_wait(*v1, 0xFFFFFFFFFFFFFFFFLL);
      *(v1 + 72) = 0;
    }

    dispatch_release(*v1);
    MEMORY[0x2666E9F00](v1, 0x1030C400C955606);
  }
}

void HGRenderUtils::BufferCopier::execute(dispatch_group_t **this, HGBitmap *a2, HGBitmap *a3)
{
  if (*(a2 + 4) != *(a3 + 4))
  {
    v4 = *this;
    if (*(*this + 72) != 1)
    {
      return;
    }

LABEL_5:
    dispatch_group_wait(*v4, 0xFFFFFFFFFFFFFFFFLL);
    *(v4 + 72) = 0;
    return;
  }

  HGRenderUtils::BufferCopierImpl::start_dispatch(*this, a2, a3);
  v4 = *this;
  if (*(v4 + 72) == 1)
  {
    goto LABEL_5;
  }
}

void HGRenderUtils::BufferCopier::start(dispatch_group_t **this, HGBitmap *a2, HGBitmap *a3)
{
  if (*(a2 + 4) == *(a3 + 4))
  {
    HGRenderUtils::BufferCopierImpl::start_dispatch(*this, a2, a3);
  }
}

intptr_t HGRenderUtils::BufferCopier::finish(intptr_t this)
{
  v1 = *this;
  if (*(*this + 72) == 1)
  {
    this = dispatch_group_wait(*v1, 0xFFFFFFFFFFFFFFFFLL);
    *(v1 + 72) = 0;
  }

  return this;
}

void HGRenderUtils::BufferReformatter::~BufferReformatter(HGRenderUtils::BufferReformatter *this)
{
  v1 = *this;
  if (*this)
  {
    if (*(v1 + 32) == 1)
    {
      dispatch_group_wait(*v1, 0xFFFFFFFFFFFFFFFFLL);
      *(v1 + 32) = 0;
    }

    dispatch_release(*v1);
    MEMORY[0x2666E9F00](v1, 0x1020C409C40F318);
  }
}

{
  v1 = *this;
  if (*this)
  {
    if (*(v1 + 32) == 1)
    {
      dispatch_group_wait(*v1, 0xFFFFFFFFFFFFFFFFLL);
      *(v1 + 32) = 0;
    }

    dispatch_release(*v1);
    MEMORY[0x2666E9F00](v1, 0x1020C409C40F318);
  }
}

void HGRenderUtils::BufferReformatter::execute(HGRenderUtils::BufferReformatter *this, HGBitmap *a2, HGBitmap *a3)
{
  HGRenderUtils::BufferReformatter::start(this, a2, a3);
  v4 = *this;
  if (*(v4 + 32) == 1)
  {
    dispatch_group_wait(*v4, 0xFFFFFFFFFFFFFFFFLL);
    *(v4 + 32) = 0;
  }
}

void HGRenderUtils::BufferReformatter::start(HGRenderUtils::BufferReformatter *this, HGBitmap *a2, HGBitmap *a3)
{
  if (*(a2 + 4) != *(a3 + 4))
  {
    v5 = *this;
    if (*(*this + 32) == 1)
    {
      dispatch_group_wait(*v5, 0xFFFFFFFFFFFFFFFFLL);
      *(v5 + 32) = 0;
    }

    v6 = (*(a2 + 8) - *(a2 + 6));
    if (v6 >= 0x40)
    {
      v6 >>= 2;
    }

    *(v5 + 8) = a3;
    *(v5 + 16) = a2;
    *(v5 + 24) = v6;
    v7 = *v5;
    global_queue = dispatch_get_global_queue(0, 0);
    *(v5 + 32) = 1;
  }
}

intptr_t HGRenderUtils::BufferReformatter::finish(intptr_t this)
{
  v1 = *this;
  if (*(*this + 32) == 1)
  {
    this = dispatch_group_wait(*v1, 0xFFFFFFFFFFFFFFFFLL);
    *(v1 + 32) = 0;
  }

  return this;
}

void HGRenderUtils::BufferFiller::~BufferFiller(HGRenderUtils::BufferFiller *this)
{
  v1 = *this;
  if (*this)
  {
    if (*(v1 + 240) == 1)
    {
      dispatch_group_wait(*v1, 0xFFFFFFFFFFFFFFFFLL);
      *(v1 + 240) = 0;
    }

    dispatch_release(*v1);
    v2 = *(v1 + 232);
    if (v2)
    {
      MEMORY[0x2666E9ED0](v2, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v1, 0x1030C40855A15F8);
  }
}

dispatch_group_t **HGRenderUtils::BufferFiller::execute(dispatch_group_t **this, HGBitmap *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (*(a2 + 7) == a4)
  {
    *&v6.var0 = 0;
    *&v6.var2 = 0;
    HGRenderUtils::BufferFillerImpl::start_dispatch(*this, a2, v6, a3);
  }

  v4 = *this;
  if (*(*this + 240) == 1)
  {
    this = dispatch_group_wait(*v4, 0xFFFFFFFFFFFFFFFFLL);
    *(v4 + 240) = 0;
  }

  return this;
}

dispatch_group_t **HGRenderUtils::BufferFiller::execute(dispatch_group_t **this, HGBitmap *a2, HGRect a3, unsigned __int8 *a4, uint64_t a5)
{
  if (*(a2 + 7) == a5)
  {
    HGRenderUtils::BufferFillerImpl::start_dispatch(*this, a2, a3, a4);
  }

  v5 = *this;
  if (*(*this + 240) == 1)
  {
    this = dispatch_group_wait(*v5, 0xFFFFFFFFFFFFFFFFLL);
    *(v5 + 240) = 0;
  }

  return this;
}

dispatch_group_t **HGRenderUtils::BufferFiller::start(dispatch_group_t **this, HGBitmap *a2, HGRect a3, unsigned __int8 *a4, uint64_t a5)
{
  if (*(a2 + 7) == a5)
  {
    HGRenderUtils::BufferFillerImpl::start_dispatch(*this, a2, a3, a4);
  }

  return this;
}

intptr_t HGRenderUtils::BufferFiller::finish(intptr_t this)
{
  v1 = *this;
  if (*(*this + 240) == 1)
  {
    this = dispatch_group_wait(*v1, 0xFFFFFFFFFFFFFFFFLL);
    *(v1 + 240) = 0;
  }

  return this;
}

dispatch_group_t **HGRenderUtils::BufferFiller::start(dispatch_group_t **this, HGBitmap *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (*(a2 + 7) == a4)
  {
    *&v5.var0 = 0;
    *&v5.var2 = 0;
    HGRenderUtils::BufferFillerImpl::start_dispatch(*this, a2, v5, a3);
  }

  return this;
}

void *anonymous namespace::block_single_copy(_anonymous_namespace_ *this, void *a2)
{
  v3 = *(this + 5);
  v2 = *(this + 6);
  v4 = v3 / v2;
  v5 = v3 % v2;
  if ((v2 - 1) == a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return memcpy((*(this + 1) + *(this + 3) * v4 * a2), (*this + *(this + 2) * v4 * a2), *(this + 4) * (v6 + v4));
}

void *anonymous namespace::block_copy(void *this, void *a2)
{
  v2 = this[5];
  v3 = this[6];
  v4 = v2 / v3;
  v5 = v2 % v3;
  if ((v3 - 1) != a2)
  {
    v5 = 0;
  }

  v6 = v5 + v4;
  if (v5 + v4)
  {
    v7 = this[2];
    v8 = this[3];
    v9 = this[4];
    v10 = v4 * a2;
    v11 = (this[1] + v8 * v10);
    v12 = (*this + v7 * v10);
    v13 = 1;
    do
    {
      this = memcpy(v11, v12, v9);
      v12 += v7;
      v11 += v8;
    }

    while (v6 > v13++);
  }

  return this;
}

pthread_mutex_t *anonymous namespace::block_reformat(_anonymous_namespace_ *this, void *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = (v3[8] - v6);
  v9 = v8 / v4;
  v10 = v8 % v4;
  if ((v4 - 1) != a2)
  {
    v10 = 0;
  }

  v11 = HGRectMake4i(v5, v6 + v9 * a2, v7, v6 + v9 * a2 + v9 + v10);
  v13 = v12;
  v16 = this;
  v14 = *this;
  v15 = *(v16 + 1);
  v18 = HGMemory::allocate((16 * (v12 - v11) * (HIDWORD(v12) - HIDWORD(v11))), 0, v17);
  (*(*v14 + 72))(v14, v18, v11, v13, 0);
  (*(*v15 + 80))(v15, v18, v11, v13);

  return HGMemory::release(v18, v19);
}

void std::vector<HGRect>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *anonymous namespace::block_fill(void *this, void *a2)
{
  v2 = this[5];
  v3 = this[6];
  v4 = v2 / v3;
  v5 = v2 % v3;
  if ((v3 - 1) != a2)
  {
    v5 = 0;
  }

  v6 = v5 + v4;
  if (v5 + v4)
  {
    v7 = this[2];
    v8 = this[3];
    v9 = this[1];
    v10 = (*this + v4 * a2 * v9);
    v11 = 1;
    do
    {
      this = memcpy(v10, v7, v8);
      v10 += v9;
    }

    while (v6 > v11++);
  }

  return this;
}

void sub_25FBFE7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a9);
  MEMORY[0x2666E9F00](v11, 0x10B3C40C3EE8A59);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_25FBFE7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HGMetalBufferPool::setServicingPolicy(std::mutex **a1, uint64_t *a2)
{
  v3 = *a1;
  std::mutex::lock(*a1 + 4);
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *&v3[2].__m_.__opaque[40];
  *&v3[2].__m_.__opaque[32] = v5;
  *&v3[2].__m_.__opaque[40] = v4;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = v3 + 4;
  }

  else
  {
    v7 = v3 + 4;
  }

  std::mutex::unlock(v7);
}

void HGMetalBufferPool::setAllocationPolicy(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 40);
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::releaseObject(std::mutex *a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock(a1 + 4);
  HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,true>::retrieveObject(&a1->__m_.__opaque[40], &v3);
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::clear(uint64_t a1)
{
  std::mutex::lock((a1 + 256));
  if (*(a1 + 224))
  {
    v2 = 0;
    do
    {
      HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::_pop_front((a1 + 152));
      --v2;
    }

    while (*(a1 + 224));
    if (v2)
    {
      (*(*a1 + 24))(a1);
      (*(*a1 + 40))(a1);
      kdebug_trace();
    }
  }

  std::mutex::unlock((a1 + 256));
}

void sub_25FBFF250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FBFF264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_25FBFF290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FBFF2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FBFF2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x2666E9F00](v3, 0x10B3C40C3EE8A59);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_25FBFF2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::newObject(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || (v4 = *(a1 + 32)) == 0)
  {
    v5 = *a2;
    v6 = *(a2 + 16);
  }

  else
  {
    (*(*v4 + 16))(&v5);
  }

  std::mutex::lock((a1 + 256));
  HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::retrieveObject(a1 + 152, &v5);
}

void sub_25FBFF95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSignPost::EventScopeGuard::~EventScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBFF9B0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::releaseObject(std::mutex *a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock(a1 + 4);
  HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,true>::retrieveObject(&a1->__m_.__opaque[40], &v3);
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::clear(uint64_t a1)
{
  std::mutex::lock((a1 + 256));
  if (*(a1 + 224))
  {
    v5 = 0;
    do
    {
      HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::_pop_front((a1 + 152), 1, v2, v3, v4);
      --v5;
    }

    while (*(a1 + 224));
    if (v5)
    {
      (*(*a1 + 24))(a1);
      (*(*a1 + 40))(a1);
      kdebug_trace();
    }
  }

  std::mutex::unlock((a1 + 256));
}

void std::__shared_ptr_emplace<anonymous namespace::BufferAllocator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28720FAD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void anonymous namespace::BufferAllocator::release(uint64_t a1, void *a2)
{
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::~Pool(uint64_t a1, HGPool::BasePool *a2)
{
  HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::~Pool(a1, a2);

  JUMPOUT(0x2666E9F00);
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::service(uint64_t a1)
{
  std::mutex::lock((a1 + 256));
  if (HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::service((a1 + 152), a1))
  {
    (*(*a1 + 24))(a1);
    (*(*a1 + 40))(a1);
    kdebug_trace();
  }

  std::mutex::unlock((a1 + 256));
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::trace(std::mutex *a1)
{
  std::mutex::lock(a1 + 4);
  sig = a1 + 5;
  if (a1[5].__m_.__opaque[15] < 0)
  {
    sig = sig->__m_.__sig;
  }

  (*(a1->__m_.__sig + 24))(a1, sig);
  (*(a1->__m_.__sig + 16))(a1);
  (*(a1->__m_.__sig + 40))(a1);
  (*(a1->__m_.__sig + 32))(a1);
  std::mutex::unlock(a1 + 4);
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::log(uint64_t a1, const char *a2)
{
  v3 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    v3 = *v3;
    if (HGLogger::getLevel(v3, a2) < 2)
    {
      return;
    }
  }

  else if (HGLogger::getLevel((a1 + 344), a2) < 2)
  {
    return;
  }

  std::mutex::lock((a1 + 256));
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    v7 = (a1 + 320);
    if (*(a1 + 343) < 0)
    {
      v7 = *v7;
    }

    HGLogger::log(v3, 2, "pool '%s' (%p)\n", v4, v5, v7, a1);
  }

  HGLogger::indent(1);
  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log(v3, 2, "live objects:\n", v8, v9);
  }

  HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,true>::log((a1 + 48), v3);
  v13 = atomic_load(HGLogger::_enabled);
  if (v13)
  {
    HGLogger::log(v3, 2, "free objects:\n", v11, v12);
  }

  HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::log((a1 + 152), v3);
  HGLogger::indent(0xFFFFFFFFLL);

  std::mutex::unlock((a1 + 256));
}

int64x2_t *HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::~List(int64x2_t *a1)
{
  while (a1[4].i64[1])
  {
    HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::_pop_front(a1);
  }

  std::deque<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>>::~deque[abi:ne200100](a1[2].i64);
  v2 = a1[1].i64[1];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1->i64[1];
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::_pop_front(int64x2_t *a1)
{
  v2 = (*(a1[2].i64[1] + 8 * (a1[4].i64[0] / 0x55uLL)) + 48 * (a1[4].i64[0] % 0x55uLL));
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -v5);
  v6 = a1[2].i64[1];
  v7 = vaddq_s64(a1[4], xmmword_260342880);
  a1[4] = v7;
  if (v7.i64[0] >= 0xAAuLL)
  {
    operator delete(*v6);
    a1[2].i64[1] += 8;
    a1[4].i64[0] -= 85;
  }

  kdebug_trace();
  kdebug_trace();
  (*(*a1->i64[0] + 24))(a1->i64[0], v4);
  if (v3)
  {
    (*(*a1->i64[0] + 24))(a1->i64[0], v3);
  }

  return kdebug_trace();
}

uint64_t std::deque<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>>::~deque[abi:ne200100](uint64_t a1)
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
    v5 = 42;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 85;
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

uint64_t HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::~Pool(uint64_t a1, HGPool::BasePool *a2)
{
  *a1 = &unk_28720FB78;
  HGPool::unregisterPool(a1, a2);
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if ((*(a1 + 343) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    operator delete(*(a1 + 320));
    goto LABEL_3;
  }

  if (*(a1 + 343) < 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  std::mutex::~mutex((a1 + 256));
  HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::~List((a1 + 152));
  std::deque<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>>::~deque[abi:ne200100](a1 + 80);
  v3 = *(a1 + 72);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 56);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 40);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 24);
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

uint64_t HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::service(int64x2_t *a1, uint64_t a2)
{
  if (!a1[1].i64[0] || !a1[4].i64[1])
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = atomic_load(&a1[5]);
    if (v5 <= (*(*a1[1].i64[0] + 16))(a1[1].i64[0], a2))
    {
      v6 = atomic_load(&a1[5].u64[1]);
      if (v6 <= (*(*a1[1].i64[0] + 24))(a1[1].i64[0], a2))
      {
        v7 = a1[4].u64[0];
        v8 = *(a1[2].i64[1] + 8 * (v7 / 0x55));
        v9 = std::chrono::steady_clock::now().__d_.__rep_ - *(v8 + 48 * (v7 % 0x55) + 24);
        if (v9 <= (*(*a1[1].i64[0] + 32))(a1[1].i64[0], a2))
        {
          break;
        }
      }
    }

    HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::_pop_front(a1);
    ++v4;
  }

  while (a1[4].i64[1]);
  return v4;
}

void HGPool::EntryTrace<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::trace(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    std::chrono::steady_clock::now();
  }
}

void sub_25FC00C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,true>::log(void *a1, HGLogger *a2)
{
  if (a1[9])
  {
    HGLogger::indent(1);
    v4 = a1[5];
    if (a1[6] != v4)
    {
      v5 = a1[8];
      v6 = (v4 + 8 * (v5 / 0x55));
      v7 = (*v6 + 48 * (v5 % 0x55));
      v8 = *(v4 + 8 * ((a1[9] + v5) / 0x55)) + 48 * ((a1[9] + v5) % 0x55);
      while (v7 != v8)
      {
        v9 = *v7;
        v10 = v7[2];
        v19 = v7[1];
        v20 = v10;
        *__p = v9;
        HGPool::EntryLog<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::log(__p, a2, 3);
        v7 += 3;
        if ((v7 - *v6) == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v12 = atomic_load(a1 + 11);
    HGLoggerUtils::bytesPrettyString(v12);
    v15 = atomic_load(HGLogger::_enabled);
    if (v15)
    {
      if ((SBYTE7(v19) & 0x80u) == 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      v17 = atomic_load(a1 + 10);
      HGLogger::log(a2, 2, "total : %s (%lu)\n", v13, v14, v16, v17);
    }

    if (SBYTE7(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25FC00DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::log(void *a1, HGLogger *a2)
{
  if (a1[9])
  {
    HGLogger::indent(1);
    v4 = a1[5];
    if (a1[6] != v4)
    {
      v5 = a1[8];
      v6 = (v4 + 8 * (v5 / 0x55));
      v7 = (*v6 + 48 * (v5 % 0x55));
      v8 = *(v4 + 8 * ((a1[9] + v5) / 0x55)) + 48 * ((a1[9] + v5) % 0x55);
      while (v7 != v8)
      {
        v9 = *v7;
        v10 = v7[2];
        v19 = v7[1];
        v20 = v10;
        *__p = v9;
        HGPool::EntryLog<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::log(__p, a2, 3);
        v7 += 3;
        if ((v7 - *v6) == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v12 = atomic_load(a1 + 11);
    HGLoggerUtils::bytesPrettyString(v12);
    v15 = atomic_load(HGLogger::_enabled);
    if (v15)
    {
      if ((SBYTE7(v19) & 0x80u) == 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      v17 = atomic_load(a1 + 10);
      HGLogger::log(a2, 2, "total : %s (%lu)\n", v13, v14, v16, v17);
    }

    if (SBYTE7(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25FC00F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::EntryLog<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::log(uint64_t *a1, HGLogger *a2, const char *a3)
{
  v6 = *a1;
  HGLoggerUtils::bytesPrettyString(a1[2]);
  v22 = 0;
  LOBYTE(v21[0]) = 0;
  if (*(a1 + 40) == 1)
  {
    v9 = atomic_load(HGLogger::_enabled);
    if (v9)
    {
      v10 = v23;
      if (v24 < 0)
      {
        v10 = v23[0];
      }

      v11 = v21;
      if (v22 < 0)
      {
        v11 = v21[0];
      }

      HGLogger::log(a2, a3, "%p %10s  %4lu   %s\n", v7, v8, v6, v10, a1[4], v11);
    }

    goto LABEL_17;
  }

  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  HGLoggerUtils::timePrettyString((v12.__d_.__rep_ - a1[3]));
  v15 = atomic_load(HGLogger::_enabled);
  if (v15)
  {
    v16 = v23;
    if (v24 < 0)
    {
      v16 = v23[0];
    }

    p_p = &__p;
    if (v20 < 0)
    {
      p_p = __p;
    }

    v18 = v21;
    if (v22 < 0)
    {
      v18 = v21[0];
    }

    HGLogger::log(a2, a3, "%p %10s  %4lu  %10s   %s\n", v13, v14, v6, v16, a1[4], p_p, v18);
  }

  if ((v20 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  operator delete(__p);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v24 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(v23[0]);
    return;
  }

LABEL_21:
  operator delete(v21[0]);
  if (v24 < 0)
  {
    goto LABEL_22;
  }
}

void sub_25FC010F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v25 - 33) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((*(v25 - 33) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v25 - 56));
  _Unwind_Resume(exception_object);
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>::newObject(uint64_t a1, uint64_t *a2, char a3)
{
  if ((a3 & 1) != 0 || (v4 = *(a1 + 32)) == 0)
  {
    v5 = *a2;
  }

  else
  {
    v5 = (*(*v4 + 16))(v4);
  }

  v6 = v5;
  std::mutex::lock((a1 + 256));
  HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::retrieveObject(a1 + 152, &v6);
}

void HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::retrieveObject(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_25FC01948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FC0196C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

void **HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,false>::_retrieve@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 40) = 1;
  v5 = a1[4].u64[0];
  v6 = v5 + a1[4].i64[1];
  v7 = v6 / 0x55;
  v8 = a1[2].i64[1];
  if (a1[3].i64[0] != v8)
  {
    v9 = *(v8 + 8 * v7) + 48 * (v6 % 0x55);
    v10 = *(v8 + 8 * (v5 / 0x55)) + 48 * (v5 % 0x55);
    v11 = v9;
    v12 = *(a2 + 24);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  v11 = 0;
  v10 = 0;
  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v12 == a2)
  {
    v27 = v26;
    (*(*v12 + 24))(v12, v26);
  }

  else
  {
    v27 = (*(*v12 + 16))(v12);
  }

LABEL_8:
  v13 = (v8 + 8 * v7);
  if (v11 != v10)
  {
    v16 = *v13;
    do
    {
      v17 = v9;
      if (v9 == v16)
      {
        v17 = *(v13 - 1) + 4080;
      }

      if (!v27)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v27 + 6))(v27, v17 - 48))
      {
        break;
      }

      v16 = *v13;
      if (v9 == *v13)
      {
        v18 = *--v13;
        v16 = v18;
        v9 = v18 + 4080;
      }

      v9 -= 48;
    }

    while (v10 != v9);
  }

  result = v27;
  if (v27 == v26)
  {
    result = (*(*v27 + 4))(v27);
    v15 = a1[2].i64[1];
    if (a1[3].i64[0] != v15)
    {
      goto LABEL_13;
    }

LABEL_24:
    if (!v9)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v27)
  {
    result = (*(*v27 + 5))();
  }

  v15 = a1[2].i64[1];
  if (a1[3].i64[0] == v15)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (*(v15 + 8 * (a1[4].i64[0] / 0x55uLL)) + 48 * (a1[4].i64[0] % 0x55uLL) == v9)
  {
    return result;
  }

LABEL_25:
  v19 = v9 - *v13;
  v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
  if (v19 < 49)
  {
    v24 = 85 - v20;
    v22 = &v13[-(v24 / 0x55)];
    v23 = *v22 + 48 * (85 * (v24 / 0x55) - v24) + 4032;
  }

  else
  {
    v21 = v20 - 1;
    v22 = &v13[v21 / 0x55];
    v23 = *v22 + 48 * (v21 % 0x55);
  }

  v25 = *(v23 + 16);
  *a3 = *v23;
  *(a3 + 16) = v25;
  *(a3 + 25) = *(v23 + 25);
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -*(a3 + 16));
  return std::deque<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>>::erase(a1 + 2, v22, v23);
}

void sub_25FC01CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_25FC01CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void **std::deque<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>>::erase(int64x2_t *a1, void *a2, char *a3)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 / 0x55));
  if (v8 == v7)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *v9 + 48 * (v6 % 0x55);
    if (a3 == v10)
    {
LABEL_3:
      v11 = 0;
      v12 = *v9;
      v13 = 1;
      v14 = (v7 + 8 * (v6 / 0x55));
LABEL_13:
      v22 = a3 - v12;
      v23 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v12) >> 4);
      if (v22 < -47)
      {
        v27 = 83 - v23;
        v25 = &v14[-(v27 / 0x55)];
        v26 = *v25 + 48 * (85 * (v27 / 0x55) - v27) + 4032;
      }

      else
      {
        v24 = v23 + 1;
        v25 = &v14[v24 / 0x55];
        v26 = *v25 + 48 * (v24 % 0x55);
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,HGMetalBufferPool::Descriptor*,HGMetalBufferPool::Descriptor&,HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>*,long,85l>,HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>*,0>(v9, v10, v14, a3, v25, v26, v42);
      v28 = vaddq_s64(a1[2], xmmword_260342880);
      a1[2] = v28;
      v29 = v28.i64[0];
      v30 = a1->i64[1];
      if (v28.i64[0] >= 0xAAuLL)
      {
        operator delete(*v30);
        v30 = (a1->i64[1] + 8);
        a1->i64[1] = v30;
        v29 = a1[2].i64[0] - 85;
        a1[2].i64[0] = v29;
      }

      goto LABEL_18;
    }
  }

  v15 = 85 * (a2 - v9) - 0x5555555555555555 * (&a3[-*a2] >> 4);
  v12 = *v9;
  v11 = v15 + 0x5555555555555555 * ((v10 - *v9) >> 4);
  v13 = v11 == 0;
  if (!v11)
  {
    a3 = v10;
    v14 = (v7 + 8 * (v6 / 0x55));
    goto LABEL_13;
  }

  if (v15 < 1)
  {
    v14 = &v9[-((84 - v15) / 0x55uLL)];
    v12 = *v14;
    a3 = *v14 + 48 * (85 * ((84 - v15) / 0x55uLL) - (84 - v15)) + 4032;
    v16 = a1[2].i64[1];
    if (v11 <= (v16 - 1) >> 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = &v9[v15 / 0x55uLL];
    v12 = *v14;
    a3 = *v14 + 48 * (v15 % 0x55uLL);
    v16 = a1[2].i64[1];
    if (v11 <= (v16 - 1) >> 1)
    {
      goto LABEL_13;
    }
  }

  v17 = a3 - v12;
  v18 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v12) >> 4);
  if (v17 < -47)
  {
    v34 = 83 - v18;
    v20 = &v14[-(v34 / 0x55)];
    v21 = *v20 + 48 * (85 * (v34 / 0x55) - v34) + 4032;
  }

  else
  {
    v19 = v18 + 1;
    v20 = &v14[v19 / 0x55];
    v21 = *v20 + 48 * (v19 % 0x55);
  }

  v35 = v16 + v6;
  v36 = (v16 + v6) / 0x55;
  v37 = (v7 + 8 * v36);
  if (v8 == v7)
  {
    v38 = 0;
  }

  else
  {
    v38 = (*v37 + 48 * (v35 - 85 * v36));
  }

  v42[0] = v14;
  v42[1] = a3;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,HGMetalBufferPool::Descriptor*,HGMetalBufferPool::Descriptor&,HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>*,long,85l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>*,HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>*>>(v20, v21, v37, v38, v42);
  v30 = a1->i64[1];
  v39 = a1[1].i64[0];
  v40 = 85 * (v39 - v30) - 1;
  v29 = a1[2].u64[0];
  v41 = a1[2].i64[1];
  a1[2].i64[1] = v41 - 1;
  if (v39 == v30)
  {
    v40 = 0;
  }

  if (v40 - (v41 + v29) + 1 >= 0xAA)
  {
    operator delete(*(v39 - 1));
    v13 = 0;
    v30 = a1->i64[1];
    a1[1].i64[0] -= 8;
    v29 = a1[2].u64[0];
  }

  else
  {
    v13 = 0;
  }

LABEL_18:
  result = &v30[v29 / 0x55];
  if (a1[1].i64[0] == v30)
  {
    v32 = 0;
    if (v13)
    {
      return result;
    }
  }

  else
  {
    v32 = *result + 48 * (v29 % 0x55);
    if (v13)
    {
      return result;
    }
  }

  v33 = v11 - 0x5555555555555555 * ((v32 - *result) >> 4);
  if (v33 < 1)
  {
    result -= (84 - v33) / 0x55uLL;
  }

  else
  {
    result += v33 / 0x55uLL;
  }

  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,HGMetalBufferPool::Descriptor*,HGMetalBufferPool::Descriptor&,HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>*,long,85l>,HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>*,0>@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a1 == a3)
  {
    if (a2 != a4)
    {
      v13 = a7;
      v14 = *a5;
      v15 = a4;
      while (1)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * (&a6[-v14] >> 4);
        if ((0xAAAAAAAAAAAAAAABLL * ((v15 - a2) >> 4)) < v16)
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - a2) >> 4);
        }

        v15 -= 48 * v16;
        a6 -= 48 * v16;
        if (v16)
        {
          result = memmove(a6, v15, 48 * v16 - 7);
        }

        if (v15 == a2)
        {
          break;
        }

        v18 = *--v8;
        v14 = v18;
        a6 = (v18 + 4080);
      }

      if (*v8 + 4080 == a6)
      {
        v38 = v8[1];
        ++v8;
        a6 = v38;
      }

      a7 = v13;
      v10 = a3;
    }
  }

  else
  {
    v39 = a7;
    v20 = *a3;
    if (*a3 != a4)
    {
      v21 = *a5;
      v22 = a4;
      while (1)
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * (&a6[-v21] >> 4);
        if ((0xAAAAAAAAAAAAAAABLL * ((v22 - v20) >> 4)) < v23)
        {
          v23 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v20) >> 4);
        }

        v22 -= 48 * v23;
        a6 -= 48 * v23;
        if (v23)
        {
          result = memmove(a6, v22, 48 * v23 - 7);
        }

        if (v22 == v20)
        {
          break;
        }

        v24 = *--v8;
        v21 = v24;
        a6 = (v24 + 4080);
      }

      if (*v8 + 4080 == a6)
      {
        v25 = v8[1];
        ++v8;
        a6 = v25;
      }

      v10 = a3;
    }

    v26 = v10 - 1;
    if (v10 - 1 != a1)
    {
      v27 = *v8;
      do
      {
        while (1)
        {
          v28 = *v26;
          v29 = *v26 + 4080;
          while (1)
          {
            v30 = 0xAAAAAAAAAAAAAAABLL * ((a6 - v27) >> 4);
            if ((0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 4)) < v30)
            {
              v30 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 4);
            }

            v29 -= 48 * v30;
            a6 -= 48 * v30;
            if (v30)
            {
              result = memmove(a6, v29, 48 * v30 - 7);
            }

            if (v29 == v28)
            {
              break;
            }

            v31 = *--v8;
            v27 = v31;
            a6 = v31 + 4080;
          }

          v27 = *v8;
          if (*v8 + 4080 == a6)
          {
            break;
          }

          if (--v26 == a1)
          {
            goto LABEL_33;
          }
        }

        v32 = v8[1];
        ++v8;
        v27 = v32;
        a6 = v32;
        --v26;
      }

      while (v26 != a1);
LABEL_33:
      v10 = a3;
    }

    v33 = *v26 + 4080;
    if (v33 == a2)
    {
      v9 = a4;
    }

    else
    {
      v34 = *v8;
      v9 = a4;
      while (1)
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * (&a6[-v34] >> 4);
        if ((0xAAAAAAAAAAAAAAABLL * ((v33 - a2) >> 4)) < v35)
        {
          v35 = 0xAAAAAAAAAAAAAAABLL * ((v33 - a2) >> 4);
        }

        v33 -= 48 * v35;
        a6 -= 48 * v35;
        if (v35)
        {
          result = memmove(a6, v33, 48 * v35 - 7);
        }

        if (v33 == a2)
        {
          break;
        }

        v36 = *--v8;
        v34 = v36;
        a6 = (v36 + 4080);
      }

      if (*v8 + 4080 == a6)
      {
        v37 = v8[1];
        ++v8;
        a6 = v37;
      }
    }

    a7 = v39;
  }

  *a7 = v10;
  a7[1] = v9;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

void *std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,HGMetalBufferPool::Descriptor*,HGMetalBufferPool::Descriptor&,HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>*,long,85l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>*,HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>*>>(void *result, _BYTE *__src, void *a3, _BYTE *a4, uint64_t a5)
{
  v7 = __src;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__src != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v8 + 4080) >> 4);
        if ((0xAAAAAAAAAAAAAAABLL * ((a4 - v7) >> 4)) < v12)
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((a4 - v7) >> 4);
        }

        v13 = 48 * v12;
        if (v12)
        {
          result = memmove(v8, v7, v13 - 7);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4080 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v15 = result;
  v16 = (*result + 4080);
  v17 = *a5;
  v8 = *(a5 + 8);
  if (v16 == __src)
  {
    goto LABEL_20;
  }

  v19 = *v17++;
  v18 = v19;
  while (1)
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v8 + 4080) >> 4);
    if ((0xAAAAAAAAAAAAAAABLL * ((v16 - v7) >> 4)) < v20)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v7) >> 4);
    }

    v21 = 48 * v20;
    if (v20)
    {
      result = memmove(v8, v7, v21 - 7);
    }

    v7 += v21;
    if (v7 == v16)
    {
      break;
    }

    v22 = *v17++;
    v18 = v22;
    v8 = v22;
  }

  v8 += v21;
  if (*(v17 - 1) + 4080 != v8)
  {
    --v17;
LABEL_20:
    *a5 = v17;
    *(a5 + 8) = v8;
    for (i = v15 + 1; i != a3; ++i)
    {
LABEL_23:
      while (1)
      {
        v24 = 0;
        v25 = *i;
        v27 = *v17++;
        v26 = v27;
        while (1)
        {
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v8 + 4080) >> 4);
          if ((0xAAAAAAAAAAAAAAABLL * ((4080 - v24) >> 4)) < v28)
          {
            v28 = 0xAAAAAAAAAAAAAAABLL * ((4080 - v24) >> 4);
          }

          v29 = 48 * v28;
          if (v28)
          {
            result = memmove(v8, &v25[v24], v29 - 7);
          }

          v24 += v29;
          if (v24 == 4080)
          {
            break;
          }

          v30 = *v17++;
          v26 = v30;
          v8 = v30;
        }

        v8 += v29;
        v31 = v17 - 1;
        if (*(v17 - 1) + 4080 != v8)
        {
          break;
        }

        v8 = *v17;
        *a5 = v17;
        *(a5 + 8) = v8;
        if (++i == a3)
        {
          goto LABEL_32;
        }
      }

      --v17;
      *a5 = v31;
      *(a5 + 8) = v8;
    }

    goto LABEL_32;
  }

  v8 = *v17;
  *a5 = v17;
  *(a5 + 8) = v8;
  i = v15 + 1;
  if (v15 + 1 != a3)
  {
    goto LABEL_23;
  }

LABEL_32:
  v32 = *i;
  if (*i != a4)
  {
    v34 = *v17++;
    v33 = v34;
    while (1)
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v8 + 4080) >> 4);
      if ((0xAAAAAAAAAAAAAAABLL * ((a4 - v32) >> 4)) < v35)
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * ((a4 - v32) >> 4);
      }

      v36 = 48 * v35;
      if (v35)
      {
        result = memmove(v8, v32, v36 - 7);
      }

      v32 += v36;
      if (v32 == a4)
      {
        break;
      }

      v37 = *v17++;
      v33 = v37;
      v8 = v37;
    }

    v8 += v36;
    if (*(v17 - 1) + 4080 == v8)
    {
      v8 = *v17;
    }

    else
    {
      --v17;
    }
  }

  *a5 = v17;
LABEL_50:
  *(a5 + 8) = v8;
  return result;
}

void *std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28720FC00;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28720FC00;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28720FC00;
  v4 = a2 + 1;
  result = *(a1 + 32);
  if (result)
  {
    if (result == a1 + 8)
    {
      a2[4] = v4;
      result = (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      result = (*(*result + 16))(result, v4);
      a2[4] = result;
    }

    a2[5] = *(a1 + 40);
  }

  else
  {
    a2[4] = 0;
    a2[5] = *(a1 + 40);
  }

  return result;
}

uint64_t std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N6HGPool16MatchDescriptionIPU19objcproto9MTLBuffer11objc_objectN17HGMetalBufferPool10DescriptorEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N6HGPool16MatchDescriptionIPU19objcproto9MTLBuffer11objc_objectN17HGMetalBufferPool10DescriptorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N6HGPool16MatchDescriptionIPU19objcproto9MTLBuffer11objc_objectN17HGMetalBufferPool10DescriptorEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N6HGPool16MatchDescriptionIPU19objcproto9MTLBuffer11objc_objectN17HGMetalBufferPool10DescriptorEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::deque<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *,std::allocator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>>::emplace_back<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *&>(a1, &v11);
}

void sub_25FC03078(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,true>::retrieveObject(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_25FC032C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FC032EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

void sub_25FC03500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FC03524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

void **HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor,true>::_retrieve@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 40) = 1;
  v5 = a1[4].u64[0];
  v6 = v5 + a1[4].i64[1];
  v7 = v6 / 0x55;
  v8 = a1[2].i64[1];
  if (a1[3].i64[0] != v8)
  {
    v9 = *(v8 + 8 * v7) + 48 * (v6 % 0x55);
    v10 = *(v8 + 8 * (v5 / 0x55)) + 48 * (v5 % 0x55);
    v11 = v9;
    v12 = *(a2 + 24);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  v11 = 0;
  v10 = 0;
  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v12 == a2)
  {
    v27 = v26;
    (*(*v12 + 24))(v12, v26);
  }

  else
  {
    v27 = (*(*v12 + 16))(v12);
  }

LABEL_8:
  v13 = (v8 + 8 * v7);
  if (v11 != v10)
  {
    v16 = *v13;
    do
    {
      v17 = v9;
      if (v9 == v16)
      {
        v17 = *(v13 - 1) + 4080;
      }

      if (!v27)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v27 + 6))(v27, v17 - 48))
      {
        break;
      }

      v16 = *v13;
      if (v9 == *v13)
      {
        v18 = *--v13;
        v16 = v18;
        v9 = v18 + 4080;
      }

      v9 -= 48;
    }

    while (v10 != v9);
  }

  result = v27;
  if (v27 == v26)
  {
    result = (*(*v27 + 4))(v27);
    v15 = a1[2].i64[1];
    if (a1[3].i64[0] != v15)
    {
      goto LABEL_13;
    }

LABEL_24:
    if (!v9)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v27)
  {
    result = (*(*v27 + 5))();
  }

  v15 = a1[2].i64[1];
  if (a1[3].i64[0] == v15)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (*(v15 + 8 * (a1[4].i64[0] / 0x55uLL)) + 48 * (a1[4].i64[0] % 0x55uLL) == v9)
  {
    return result;
  }

LABEL_25:
  v19 = v9 - *v13;
  v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
  if (v19 < 49)
  {
    v24 = 85 - v20;
    v22 = &v13[-(v24 / 0x55)];
    v23 = *v22 + 48 * (85 * (v24 / 0x55) - v24) + 4032;
  }

  else
  {
    v21 = v20 - 1;
    v22 = &v13[v21 / 0x55];
    v23 = *v22 + 48 * (v21 % 0x55);
  }

  v25 = *(v23 + 16);
  *a3 = *v23;
  *(a3 + 16) = v25;
  *(a3 + 25) = *(v23 + 25);
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -*(a3 + 16));
  return std::deque<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>>::erase(a1 + 2, v22, v23);
}

void sub_25FC03894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_25FC038A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28720FD08;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28720FD08;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28720FD08;
  v4 = a2 + 1;
  result = *(a1 + 32);
  if (result)
  {
    if (result == a1 + 8)
    {
      a2[4] = v4;
      result = (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      result = (*(*result + 16))(result, v4);
      a2[4] = result;
    }

    a2[5] = *(a1 + 40);
  }

  else
  {
    a2[4] = 0;
    a2[5] = *(a1 + 40);
  }

  return result;
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferPool::Descriptor>,std::allocator<HGMetalBufferPool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferPool> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N6HGPool11MatchObjectIPU19objcproto9MTLBuffer11objc_objectN17HGMetalBufferPool10DescriptorEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N6HGPool11MatchObjectIPU19objcproto9MTLBuffer11objc_objectN17HGMetalBufferPool10DescriptorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N6HGPool11MatchObjectIPU19objcproto9MTLBuffer11objc_objectN17HGMetalBufferPool10DescriptorEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N6HGPool11MatchObjectIPU19objcproto9MTLBuffer11objc_objectN17HGMetalBufferPool10DescriptorEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__shared_ptr_emplace<anonymous namespace::BufferWrapperAllocator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28720FD90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void anonymous namespace::BufferWrapperAllocator::release(uint64_t a1, void *a2)
{
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::~Pool(uint64_t a1, HGPool::BasePool *a2)
{
  HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::~Pool(a1, a2);

  JUMPOUT(0x2666E9F00);
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::service(std::mutex *a1)
{
  std::mutex::lock(a1 + 4);
  if (HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::service(&a1[2].__m_.__opaque[16], a1))
  {
    (*(a1->__m_.__sig + 24))(a1);
    (*(a1->__m_.__sig + 40))(a1);
    kdebug_trace();
  }

  std::mutex::unlock(a1 + 4);
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::trace(std::mutex *a1)
{
  std::mutex::lock(a1 + 4);
  sig = a1 + 5;
  if (a1[5].__m_.__opaque[15] < 0)
  {
    sig = sig->__m_.__sig;
  }

  (*(a1->__m_.__sig + 24))(a1, sig);
  (*(a1->__m_.__sig + 16))(a1);
  (*(a1->__m_.__sig + 40))(a1);
  (*(a1->__m_.__sig + 32))(a1);
  std::mutex::unlock(a1 + 4);
}

void HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::log(uint64_t a1, const char *a2)
{
  v3 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    v3 = *v3;
    if (HGLogger::getLevel(v3, a2) < 2)
    {
      return;
    }
  }

  else if (HGLogger::getLevel((a1 + 344), a2) < 2)
  {
    return;
  }

  std::mutex::lock((a1 + 256));
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    v7 = (a1 + 320);
    if (*(a1 + 343) < 0)
    {
      v7 = *v7;
    }

    HGLogger::log(v3, 2, "pool '%s' (%p)\n", v4, v5, v7, a1);
  }

  HGLogger::indent(1);
  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log(v3, 2, "live objects:\n", v8, v9);
  }

  HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,true>::log((a1 + 48), v3);
  v13 = atomic_load(HGLogger::_enabled);
  if (v13)
  {
    HGLogger::log(v3, 2, "free objects:\n", v11, v12);
  }

  HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::log((a1 + 152), v3);
  HGLogger::indent(0xFFFFFFFFLL);

  std::mutex::unlock((a1 + 256));
}

int64x2_t *HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::~List(int64x2_t *a1, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  while (a1[4].i64[1])
  {
    HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::_pop_front(a1, 1, a3, a4, a5);
  }

  std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::~deque[abi:ne200100](a1[2].i64);
  v6 = a1[1].i64[1];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1->i64[1];
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

uint64_t HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::_pop_front(int64x2_t *a1, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v7 = (*(a1[2].i64[1] + ((a1[4].i64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4].i64[0] & 0x3F) << 6));
  v8 = v7[3];
  v10 = *v7;
  v9 = v7[1];
  v14[2] = v7[2];
  v14[3] = v8;
  v14[0] = v10;
  v14[1] = v9;
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -*(&v9 + 1));
  v11 = a1[2].i64[1];
  v12 = vaddq_s64(a1[4], xmmword_260342880);
  a1[4] = v12;
  if (v12.i64[0] >= 0x80uLL)
  {
    operator delete(*v11);
    a1[2].i64[1] += 8;
    a1[4].i64[0] -= 64;
  }

  HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::deleted(v14, a1[6].i64[0], a2, a4, a5);
  kdebug_trace();
  (*(*a1->i64[0] + 24))(a1->i64[0], *&v14[0]);
  if (*(&v14[0] + 1))
  {
    (*(*a1->i64[0] + 24))();
  }

  return kdebug_trace();
}

uint64_t HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::deleted(void *a1, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v9 = 0;
  LOBYTE(__p) = 0;
  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
    p_p = &__p;
    if (v9 < 0)
    {
      p_p = __p;
    }

    HGLogger::log("hgpool", 1, "hgpool entry deleted : %p (%s)\n", a4, a5, *a1, p_p);
  }

  if (v9 < 0)
  {
    operator delete(__p);
  }

  return kdebug_trace();
}

void sub_25FC04744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGPool::Pool<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::~Pool(uint64_t a1, HGPool::BasePool *a2)
{
  *a1 = &unk_28720FE38;
  HGPool::unregisterPool(a1, a2);
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if ((*(a1 + 343) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    operator delete(*(a1 + 320));
    goto LABEL_3;
  }

  if (*(a1 + 343) < 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  std::mutex::~mutex((a1 + 256));
  HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::~List((a1 + 152), v3, v4, v5, v6);
  std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::~deque[abi:ne200100](a1 + 80);
  v7 = *(a1 + 72);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(a1 + 56);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(a1 + 40);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(a1 + 24);
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

uint64_t HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::service(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 72))
    {
      v4 = 0;
      while (1)
      {
        v6 = atomic_load((a1 + 80));
        if (v6 > (*(**(a1 + 16) + 16))(*(a1 + 16), a2))
        {
          v5 = 4;
        }

        else
        {
          v10 = atomic_load((a1 + 88));
          if (v10 <= (*(**(a1 + 16) + 24))(*(a1 + 16), a2))
          {
            v11 = *(a1 + 64);
            v12 = *(*(a1 + 40) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8));
            v13 = std::chrono::steady_clock::now().__d_.__rep_ - *(v12 + ((v11 & 0x3F) << 6) + 40);
            if (v13 <= (*(**(a1 + 16) + 32))(*(a1 + 16), a2))
            {
              return v4;
            }

            v5 = 6;
          }

          else
          {
            v5 = 5;
          }
        }

        HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::_pop_front(a1, v5, v7, v8, v9);
        ++v4;
        if (!*(a1 + 72))
        {
          return v4;
        }
      }
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

void HGPool::EntryTrace<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::trace(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    std::chrono::steady_clock::now();
  }
}

void sub_25FC04B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,true>::log(void *a1, HGLogger *a2)
{
  if (a1[9])
  {
    HGLogger::indent(1);
    v4 = a1[5];
    if (a1[6] != v4)
    {
      v5 = a1[8];
      v6 = (v4 + 8 * (v5 >> 6));
      v7 = (*v6 + ((v5 & 0x3F) << 6));
      v8 = *(v4 + (((a1[9] + v5) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((a1[9] + v5) & 0x3F) << 6);
      while (v7 != v8)
      {
        v9 = *v7;
        v10 = v7[1];
        v11 = v7[3];
        v21 = v7[2];
        v22 = v11;
        *__p = v9;
        v20 = v10;
        HGPool::EntryLog<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::log(__p, a2, 3);
        v7 += 4;
        if ((v7 - *v6) == 4096)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v13 = atomic_load(a1 + 11);
    HGLoggerUtils::bytesPrettyString(v13);
    v16 = atomic_load(HGLogger::_enabled);
    if (v16)
    {
      if ((SBYTE7(v20) & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = atomic_load(a1 + 10);
      HGLogger::log(a2, 2, "total : %s (%lu)\n", v14, v15, v17, v18);
    }

    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25FC04C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::log(void *a1, HGLogger *a2)
{
  if (a1[9])
  {
    HGLogger::indent(1);
    v4 = a1[5];
    if (a1[6] != v4)
    {
      v5 = a1[8];
      v6 = (v4 + 8 * (v5 >> 6));
      v7 = (*v6 + ((v5 & 0x3F) << 6));
      v8 = *(v4 + (((a1[9] + v5) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((a1[9] + v5) & 0x3F) << 6);
      while (v7 != v8)
      {
        v9 = *v7;
        v10 = v7[1];
        v11 = v7[3];
        v21 = v7[2];
        v22 = v11;
        *__p = v9;
        v20 = v10;
        HGPool::EntryLog<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::log(__p, a2, 3);
        v7 += 4;
        if ((v7 - *v6) == 4096)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v13 = atomic_load(a1 + 11);
    HGLoggerUtils::bytesPrettyString(v13);
    v16 = atomic_load(HGLogger::_enabled);
    if (v16)
    {
      if ((SBYTE7(v20) & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = atomic_load(a1 + 10);
      HGLogger::log(a2, 2, "total : %s (%lu)\n", v14, v15, v17, v18);
    }

    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25FC04DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::EntryLog<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::log(uint64_t *a1, HGLogger *a2, const char *a3)
{
  v6 = *a1;
  HGLoggerUtils::bytesPrettyString(a1[3]);
  v22 = 0;
  LOBYTE(v21[0]) = 0;
  if (*(a1 + 56) == 1)
  {
    v9 = atomic_load(HGLogger::_enabled);
    if (v9)
    {
      v10 = v23;
      if (v24 < 0)
      {
        v10 = v23[0];
      }

      v11 = v21;
      if (v22 < 0)
      {
        v11 = v21[0];
      }

      HGLogger::log(a2, a3, "%p %10s  %4lu   %s\n", v7, v8, v6, v10, a1[6], v11);
    }

    goto LABEL_17;
  }

  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  HGLoggerUtils::timePrettyString((v12.__d_.__rep_ - a1[5]));
  v15 = atomic_load(HGLogger::_enabled);
  if (v15)
  {
    v16 = v23;
    if (v24 < 0)
    {
      v16 = v23[0];
    }

    p_p = &__p;
    if (v20 < 0)
    {
      p_p = __p;
    }

    v18 = v21;
    if (v22 < 0)
    {
      v18 = v21[0];
    }

    HGLogger::log(a2, a3, "%p %10s  %4lu  %10s   %s\n", v13, v14, v6, v16, a1[6], p_p, v18);
  }

  if ((v20 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  operator delete(__p);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v24 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(v23[0]);
    return;
  }

LABEL_21:
  operator delete(v21[0]);
  if (v24 < 0)
  {
    goto LABEL_22;
  }
}

void sub_25FC04FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v25 - 33) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((*(v25 - 33) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v25 - 56));
  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<anonymous namespace::InfinipoolServicingPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *this)
{
  this->__vftable = &unk_28720FEC0;
  std::__shared_weak_count::~__shared_weak_count(this);
}

{
  this->__vftable = &unk_28721B738;
  std::__shared_weak_count::~__shared_weak_count(this);
}

void std::__shared_ptr_emplace<anonymous namespace::InfinipoolServicingPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28720FEC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

{
  a1->__vftable = &unk_28721B738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_emplace<anonymous namespace::InfinipoolServicingPolicy>::__on_zero_shared(uint64_t a1)
{
  return (**(a1 + 24))();
}

{
  return (**(a1 + 24))();
}

void anonymous namespace::InfinipoolServicingPolicy::~InfinipoolServicingPolicy(_anonymous_namespace_::InfinipoolServicingPolicy *this)
{
  JUMPOUT(0x2666E9F00);
}

{
  JUMPOUT(0x2666E9F00);
}

uint64_t anonymous namespace::InfinipoolServicingPolicy::maxObjectAgeNS(_anonymous_namespace_::InfinipoolServicingPolicy *this, const BasePool *a2)
{
  return 2000000000;
}

{
  return 2000000000;
}

void HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::retrieveObject(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = *a2;
  v8 = *(a2 + 2);
  v2 = 0;
  v3 = v7;
  v4 = v8;
  v5 = 0;
  operator new();
}

void sub_25FC052F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FC0531C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

uint64_t HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::update(void *a1, uint64_t a2, void *a3, const char *a4, char *a5)
{
  v15 = 0;
  LOBYTE(__p) = 0;
  v9 = atomic_load(HGLogger::_enabled);
  if (v9)
  {
    p_p = &__p;
    if (v15 < 0)
    {
      p_p = __p;
    }

    HGLogger::log("hgpool", 1, "hgpool entry deleted : %p (%s)\n", a4, a5, *a1, p_p);
  }

  v11 = a1[3];
  if (v15 < 0)
  {
    operator delete(__p);
  }

  *a1 = *a3;
  a1[1] = *a4;
  v12 = *a5;
  a1[4] = *(a5 + 2);
  *(a1 + 1) = v12;
  HGPool::EntryEventHandler<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::allocated(a1, v11, a3, a4, a5);
  return kdebug_trace();
}

{
  v14 = 0;
  LOBYTE(__p) = 0;
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    p_p = &__p;
    if (v14 < 0)
    {
      p_p = __p;
    }

    HGLogger::log("hgpool", 1, "hgpool entry deleted : %p (%s)\n", a4, a5, *a1, p_p);
  }

  v10 = a1[3];
  if (v14 < 0)
  {
    operator delete(__p);
  }

  *a1 = *a3;
  v11 = *a4;
  a1[4] = *(a4 + 2);
  *(a1 + 1) = v11;
  HGPool::EntryEventHandler<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::allocated(a1, v10, a3, a4, a5);
  return kdebug_trace();
}

void sub_25FC0542C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FC05528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::_retrieve@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 56) = 1;
  v5 = a1[4].i64[0] + a1[4].i64[1];
  v6 = a1[2].i64[1];
  v7 = (v6 + 8 * (v5 >> 6));
  if (a1[3].i64[0] != v6)
  {
    v8 = *v7 + ((v5 & 0x3F) << 6);
    v9 = *(v6 + ((a1[4].i64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4].i64[0] & 0x3F) << 6);
    v10 = v8;
    v11 = *(a2 + 24);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  v9 = 0;
  v11 = *(a2 + 24);
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v11 == a2)
  {
    v24 = v23;
    (*(*v11 + 24))(v11, v23);
  }

  else
  {
    v24 = (*(*v11 + 16))(v11);
  }

LABEL_8:
  if (v10 != v9)
  {
    v14 = *v7;
    do
    {
      v15 = v8;
      if (v8 == v14)
      {
        v15 = *(v7 - 1) + 4096;
      }

      if (!v24)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v24 + 6))(v24, v15 - 64))
      {
        break;
      }

      v14 = *v7;
      if (v8 == *v7)
      {
        v16 = *--v7;
        v14 = v16;
        v8 = v16 + 4096;
      }

      v8 -= 64;
    }

    while (v9 != v8);
  }

  result = v24;
  if (v24 == v23)
  {
    result = (*(*v24 + 4))(v24);
    v13 = a1[2].i64[1];
    if (a1[3].i64[0] != v13)
    {
      goto LABEL_13;
    }

LABEL_24:
    if (!v8)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v24)
  {
    result = (*(*v24 + 5))();
  }

  v13 = a1[2].i64[1];
  if (a1[3].i64[0] == v13)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (*(v13 + ((a1[4].i64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4].i64[0] & 0x3F) << 6) == v8)
  {
    return result;
  }

LABEL_25:
  v17 = (v8 - *v7) >> 6;
  if (v17 < 2)
  {
    v21 = 64 - v17;
    v19 = &v7[-(v21 >> 6)];
    v20 = *v19 + ((~v21 & 0x3F) << 6);
  }

  else
  {
    v18 = v17 - 1;
    v19 = &v7[v18 >> 6];
    v20 = *v19 + ((v18 & 0x3F) << 6);
  }

  v22 = *(v20 + 16);
  *a3 = *v20;
  *(a3 + 16) = v22;
  *(a3 + 32) = *(v20 + 32);
  *(a3 + 41) = *(v20 + 41);
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -*(a3 + 24));
  return std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::erase(a1 + 2, v19, v20);
}

void sub_25FC05844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_25FC05858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28720FF60;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28720FF60;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2666E9F00);
}

__n128 std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28720FF60;
  v4 = a2 + 8;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 == a1 + 8)
    {
      *(a2 + 32) = v4;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      *(a2 + 32) = (*(*v5 + 16))(v5, v4);
    }
  }

  else
  {
    *(a2 + 32) = 0;
  }

  result = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = result;
  return result;
}

uint64_t std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N6HGPool16MatchDescriptionIPU19objcproto9MTLBuffer11objc_objectN30HGMetalBufferWrapperInfinipool10DescriptorEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N6HGPool16MatchDescriptionIPU19objcproto9MTLBuffer11objc_objectN30HGMetalBufferWrapperInfinipool10DescriptorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N6HGPool16MatchDescriptionIPU19objcproto9MTLBuffer11objc_objectN30HGMetalBufferWrapperInfinipool10DescriptorEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N6HGPool16MatchDescriptionIPU19objcproto9MTLBuffer11objc_objectN30HGMetalBufferWrapperInfinipool10DescriptorEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void HGPool::EntryEventHandler<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>::allocated(void *a1, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v8 = 0;
  LOBYTE(__p) = 0;
  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
    p_p = &__p;
    if (v8 < 0)
    {
      p_p = __p;
    }

    HGLogger::log("hgpool", 1, "hgpool entry allocated : %p (%s)\n", a4, a5, *a1, p_p);
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_25FC05E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x40;
  v3 = v1 - 64;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *,std::allocator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>>::emplace_back<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *&>(a1, &v11);
}

void sub_25FC06204(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,true>::retrieveObject(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_25FC06454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FC06478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

void HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,false>::retrieveObject(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_25FC0668C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FC066B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

void **HGPool::List<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor,true>::_retrieve@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 56) = 1;
  v5 = a1[4].i64[0] + a1[4].i64[1];
  v6 = a1[2].i64[1];
  v7 = (v6 + 8 * (v5 >> 6));
  if (a1[3].i64[0] != v6)
  {
    v8 = *v7 + ((v5 & 0x3F) << 6);
    v9 = *(v6 + ((a1[4].i64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4].i64[0] & 0x3F) << 6);
    v10 = v8;
    v11 = *(a2 + 24);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  v9 = 0;
  v11 = *(a2 + 24);
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v11 == a2)
  {
    v24 = v23;
    (*(*v11 + 24))(v11, v23);
  }

  else
  {
    v24 = (*(*v11 + 16))(v11);
  }

LABEL_8:
  if (v10 != v9)
  {
    v14 = *v7;
    do
    {
      v15 = v8;
      if (v8 == v14)
      {
        v15 = *(v7 - 1) + 4096;
      }

      if (!v24)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v24 + 6))(v24, v15 - 64))
      {
        break;
      }

      v14 = *v7;
      if (v8 == *v7)
      {
        v16 = *--v7;
        v14 = v16;
        v8 = v16 + 4096;
      }

      v8 -= 64;
    }

    while (v9 != v8);
  }

  result = v24;
  if (v24 == v23)
  {
    result = (*(*v24 + 4))(v24);
    v13 = a1[2].i64[1];
    if (a1[3].i64[0] != v13)
    {
      goto LABEL_13;
    }

LABEL_24:
    if (!v8)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v24)
  {
    result = (*(*v24 + 5))();
  }

  v13 = a1[2].i64[1];
  if (a1[3].i64[0] == v13)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (*(v13 + ((a1[4].i64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4].i64[0] & 0x3F) << 6) == v8)
  {
    return result;
  }

LABEL_25:
  v17 = (v8 - *v7) >> 6;
  if (v17 < 2)
  {
    v21 = 64 - v17;
    v19 = &v7[-(v21 >> 6)];
    v20 = *v19 + ((~v21 & 0x3F) << 6);
  }

  else
  {
    v18 = v17 - 1;
    v19 = &v7[v18 >> 6];
    v20 = *v19 + ((v18 & 0x3F) << 6);
  }

  v22 = *(v20 + 16);
  *a3 = *v20;
  *(a3 + 16) = v22;
  *(a3 + 32) = *(v20 + 32);
  *(a3 + 41) = *(v20 + 41);
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -*(a3 + 24));
  return std::deque<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor>>::erase(a1 + 2, v19, v20);
}

void sub_25FC069CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_25FC069E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::~__func(void *a1)
{
  *a1 = &unk_287210068;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::~__func(void *a1)
{
  *a1 = &unk_287210068;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287210068;
  v4 = a2 + 1;
  result = *(a1 + 32);
  if (result)
  {
    if (result == a1 + 8)
    {
      a2[4] = v4;
      result = (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      result = (*(*result + 16))(result, v4);
      a2[4] = result;
    }

    a2[5] = *(a1 + 40);
  }

  else
  {
    a2[4] = 0;
    a2[5] = *(a1 + 40);
  }

  return result;
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto9MTLBuffer}*,HGMetalBufferWrapperInfinipool::Descriptor>,std::allocator<HGMetalBufferWrapperInfinipool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto9MTLBuffer},HGMetalBufferWrapperInfinipool> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N6HGPool11MatchObjectIPU19objcproto9MTLBuffer11objc_objectN30HGMetalBufferWrapperInfinipool10DescriptorEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N6HGPool11MatchObjectIPU19objcproto9MTLBuffer11objc_objectN30HGMetalBufferWrapperInfinipool10DescriptorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N6HGPool11MatchObjectIPU19objcproto9MTLBuffer11objc_objectN30HGMetalBufferWrapperInfinipool10DescriptorEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N6HGPool11MatchObjectIPU19objcproto9MTLBuffer11objc_objectN30HGMetalBufferWrapperInfinipool10DescriptorEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void HGPQ::EOTF::EOTF(HGNode *this, double a2)
{
  HGNode::HGNode(this);
  *v2 = &unk_2872100F0;
  v3 = HGObject::operator new(0x1A0uLL);
  HgcST2084_EOTF::HgcST2084_EOTF(v3);
}

void sub_25FC06F50(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGPQ::EOTF::~EOTF(HGPQ::EOTF *this)
{
  *this = &unk_2872100F0;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGPQ::EOTF::~EOTF(HGNode *this)
{
  *this = &unk_2872100F0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGPQ::EOTF::GetOutput(HGPQ::EOTF *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  (*(**(this + 51) + 96))(*(this + 51), 0, 6.2774, 0.012683, 0.0, 0.0);
  (*(**(this + 51) + 96))(*(this + 51), 1, 0.83594, 18.852, -18.688, *(this + 104));
  return *(this + 51);
}

void HGPQ::InverseEOTF::InverseEOTF(HGNode *this, double a2)
{
  HGNode::HGNode(this);
  *v2 = &unk_287210340;
  v3 = HGObject::operator new(0x1A0uLL);
  HgcST2084_InverseEOTF::HgcST2084_InverseEOTF(v3);
}

void sub_25FC0722C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGPQ::InverseEOTF::~InverseEOTF(HGPQ::InverseEOTF *this)
{
  *this = &unk_287210340;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGPQ::InverseEOTF::~InverseEOTF(HGNode *this)
{
  *this = &unk_287210340;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGPQ::InverseEOTF::GetOutput(HGPQ::InverseEOTF *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  (*(**(this + 51) + 96))(*(this + 51), 0, 0.1593, 78.844, 0.0, 0.0);
  (*(**(this + 51) + 96))(*(this + 51), 1, 0.83594, *(this + 104), *(this + 105), 0.0);
  return *(this + 51);
}

void HGPQ::OOTF::OOTF(HGNode *this, int a2, double a3, double a4)
{
  HGNode::HGNode(this);
  *v5 = &unk_287210590;
  if (a2)
  {
    v6 = HGObject::operator new(0x1A0uLL);
    HgcBT2100_PQ_OOTF_qtApprox::HgcBT2100_PQ_OOTF_qtApprox(v6);
  }

  v7 = HGObject::operator new(0x1A0uLL);
  HgcBT2100_PQ_OOTF::HgcBT2100_PQ_OOTF(v7);
}

void sub_25FC07524(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGPQ::OOTF::~OOTF(HGPQ::OOTF *this)
{
  *this = &unk_287210590;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGPQ::OOTF::~OOTF(HGNode *this)
{
  *this = &unk_287210590;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGPQ::OOTF::GetOutput(HGPQ::OOTF *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  v5 = *(this + 51);
  if (v5)
  {
    if (v6)
    {
      v7 = v6;
      (*(*v6 + 96))(v6, 0, *(this + 104), *(this + 105), *(this + 106), 0.018);
      (*(*v7 + 96))(v7, 1, 0.45, 2.4, 0.0, 0.0);
      return *(this + 51);
    }
  }

  else
  {
    v9 = 0;
  }

  (*(*v9 + 96))(v9, 0, 1.0, 1.227, *(this + 107), 0.0);
  return *(this + 51);
}

void HGPQ::InverseOOTF::InverseOOTF(HGNode *this, int a2, double a3, double a4)
{
  HGNode::HGNode(this);
  *v5 = &unk_2872107E0;
  if (a2)
  {
    v6 = HGObject::operator new(0x1A0uLL);
    HgcBT2100_PQ_OOTF_qtApprox::HgcBT2100_PQ_OOTF_qtApprox(v6);
  }

  v7 = HGObject::operator new(0x1A0uLL);
  HgcBT2100_PQ_InverseOOTF::HgcBT2100_PQ_InverseOOTF(v7);
}

void sub_25FC07908(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGPQ::InverseOOTF::~InverseOOTF(HGPQ::InverseOOTF *this)
{
  *this = &unk_2872107E0;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGPQ::InverseOOTF::~InverseOOTF(HGNode *this)
{
  *this = &unk_2872107E0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGPQ::InverseOOTF::GetOutput(HGPQ::InverseOOTF *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  v5 = *(this + 51);
  if (v5)
  {
    if (v6)
    {
      v7 = v6;
      (*(*v6 + 96))(v6, 0, *(this + 104), 0.090082, *(this + 105), *(this + 106));
      (*(*v7 + 96))(v7, 1, 0.41667, 2.2222, 0.0, 0.0);
      return *(this + 51);
    }
  }

  else
  {
    v9 = 0;
  }

  (*(*v9 + 96))(v9, 0, *(this + 107), 0.815, 1.0, 0.0);
  return *(this + 51);
}

HGNode *HGPQ::OETF::OETF(HGNode *this, int a2, double a3)
{
  HGNode::HGNode(this);
  *v6 = &unk_287210A30;
  *(this + 52) = vcvt_f32_f64(vmulq_n_f64(xmmword_260390810, pow(a3 / 10000.0, 0.159301758)));
  if (!a2)
  {
    v8 = HGObject::operator new(0x1A0uLL);
    HgcBT2100_PQ_OETF::HgcBT2100_PQ_OETF(v8);
  }

  v7 = HGObject::operator new(0x1A0uLL);
  HgcBT2100_PQ_OETF_qtApprox::HgcBT2100_PQ_OETF_qtApprox(v7);
  *(this + 51) = v7;
  return this;
}

void sub_25FC07CD4(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGPQ::OETF::~OETF(HGPQ::OETF *this)
{
  *this = &unk_287210A30;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGPQ::OETF::~OETF(HGNode *this)
{
  *this = &unk_287210A30;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGPQ::OETF::GetOutput(HGPQ::OETF *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  v5 = *(this + 51);
  if (v5)
  {
    if (v6)
    {
      v7 = v6;
      (*(*v6 + 96))(v6, 0, 1.099, -0.099, 4.5, 0.018);
      (*(*v7 + 96))(v7, 1, 0.45, 0.38232, 78.844, 0.0);
      (*(*v7 + 96))(v7, 2, 0.83594, *(this + 104), *(this + 105), 0.0);
      return *(this + 51);
    }
  }

  (*(*v5 + 96))(v5, 0, 0.19546, 78.844, 0.0, 0.0);
  (*(*v5 + 96))(v5, 1, 0.83594, *(this + 104), *(this + 105), 0.0);
  return *(this + 51);
}

HGNode *HGPQ::InverseOETF::InverseOETF(HGNode *this, int a2, double a3)
{
  HGNode::HGNode(this);
  *v6 = &unk_287210C80;
  if (a2)
  {
    v7 = HGObject::operator new(0x1A0uLL);
    HgcBT2100_PQ_InverseOETF_qtApprox::HgcBT2100_PQ_InverseOETF_qtApprox(v7);
  }

  else
  {
    v7 = HGObject::operator new(0x1A0uLL);
    HgcBT2100_PQ_InverseOETF::HgcBT2100_PQ_InverseOETF(v7);
  }

  *(this + 51) = v7;
  v8 = 10000.0 / a3;
  v9 = pow(v8, 0.416666667);
  *(this + 52) = vcvt_f32_f64(vdivq_f64(vdupq_lane_s64(*&v9, 0), xmmword_260390830));
  *&v9 = 0.081 / v9;
  *(this + 106) = LODWORD(v9);
  v10 = pow(v8, 0.815);
  *(this + 107) = v10;
  return this;
}

void sub_25FC08170(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGPQ::InverseOETF::~InverseOETF(HGPQ::InverseOETF *this)
{
  *this = &unk_287210C80;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGPQ::InverseOETF::~InverseOETF(HGNode *this)
{
  *this = &unk_287210C80;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGPQ::InverseOETF::GetOutput(HGPQ::InverseOETF *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  v5 = *(this + 51);
  if (v5)
  {
    if (v6)
    {
      v7 = v6;
      (*(*v6 + 96))(v6, 0, 0.83594, 18.852, -18.688, 0.0);
      (*(*v7 + 96))(v7, 1, 2.6156, 0.012683, 2.2222, 0.0);
      (*(*v7 + 96))(v7, 2, *(this + 104), 0.090082, *(this + 105), *(this + 106));
      return *(this + 51);
    }
  }

  (*(*v5 + 96))(v5, 0, 0.83594, 18.852, -18.688, 0.0);
  (*(*v5 + 96))(v5, 1, 5.1161, 0.012683, *(this + 107), 0.0);
  return *(this + 51);
}

void HGHLG::OETF::OETF(HGNode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287210ED0;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcBT2100_HLG_OETF::HgcBT2100_HLG_OETF(v2);
}

void sub_25FC0862C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGHLG::OETF::~OETF(HGHLG::OETF *this)
{
  *this = &unk_287210ED0;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGHLG::OETF::~OETF(HGNode *this)
{
  *this = &unk_287210ED0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGHLG::OETF::GetOutput(HGHLG::OETF *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  (*(**(this + 51) + 96))(*(this + 51), 0, 1.0, 0.0, 0.0, 0.0);
  (*(**(this + 51) + 96))(*(this + 51), 1, *(this + 104), *(this + 105), 0.28467, *(this + 106));
  return *(this + 51);
}

void HGHLG::InverseOETF::InverseOETF(HGNode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287211120;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcBT2100_HLG_InverseOETF::HgcBT2100_HLG_InverseOETF(v2);
}

void sub_25FC08924(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGHLG::InverseOETF::~InverseOETF(HGHLG::InverseOETF *this)
{
  *this = &unk_287211120;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGHLG::InverseOETF::~InverseOETF(HGNode *this)
{
  *this = &unk_287211120;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGHLG::InverseOETF::GetOutput(HGHLG::InverseOETF *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  (*(**(this + 51) + 96))(*(this + 51), 0, 0.5, 4.0, 0.0, 0.0);
  (*(**(this + 51) + 96))(*(this + 51), 1, *(this + 104), *(this + 105), 1.0, 0.28467);
  return *(this + 51);
}

float HGHLG::OOTF::setPeakDisplayLuminance(HGHLG::OOTF *this, double a2)
{
  v4 = a2 / 1000.0;
  if (a2 < 400.0 || a2 > 2000.0)
  {
    v6 = log2(v4);
    v5 = pow(1.111, v6) * 1.2;
  }

  else
  {
    v5 = log10(v4) * 0.42 + 1.2;
  }

  v7 = v5 + -1.0;
  *(this + 108) = v7;
  result = pow(0.0833333333, v5) * a2 / *(this + 53);
  *(this + 109) = result;
  return result;
}

void HGHLG::OOTF::OOTF(HGNode *a1)
{
  HGNode::HGNode(a1);
  *v1 = &unk_287211370;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcBT2100_HLG_OOTF_InverseOOTF::HgcBT2100_HLG_OOTF_InverseOOTF(v2);
}

void sub_25FC08CC8(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGHLG::OOTF::~OOTF(HGHLG::OOTF *this)
{
  *this = &unk_287211370;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGHLG::OOTF::~OOTF(HGNode *this)
{
  *this = &unk_287211370;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGHLG::OOTF::GetOutput(HGHLG::OOTF *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  (*(**(this + 51) + 96))(*(this + 51), 0, **(this + 52), *(*(this + 52) + 4), *(*(this + 52) + 8), 0.0);
  (*(**(this + 51) + 96))(*(this + 51), 1, *(this + 108), *(this + 109), 0.0, 0.0);
  return *(this + 51);
}

float HGHLG::InverseOOTF::setPeakDisplayLuminance(HGHLG::InverseOOTF *this, double a2)
{
  v4 = a2 / 1000.0;
  if (a2 < 400.0 || a2 > 2000.0)
  {
    v6 = log2(v4);
    v5 = pow(1.111, v6) * 1.2;
  }

  else
  {
    v5 = log10(v4) * 0.42 + 1.2;
  }

  v7 = 1.0 / v5;
  v8 = 1.0 / v5 + -1.0;
  *(this + 108) = v8;
  result = pow(*(this + 53) / a2, v7) * 12.0;
  *(this + 109) = result;
  return result;
}

void HGHLG::InverseOOTF::InverseOOTF(HGNode *a1)
{
  HGNode::HGNode(a1);
  *v1 = &unk_2872115C0;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcBT2100_HLG_OOTF_InverseOOTF::HgcBT2100_HLG_OOTF_InverseOOTF(v2);
}

void sub_25FC09074(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGHLG::InverseOOTF::~InverseOOTF(HGHLG::InverseOOTF *this)
{
  *this = &unk_2872115C0;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGHLG::InverseOOTF::~InverseOOTF(HGNode *this)
{
  *this = &unk_2872115C0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGHLG::InverseOOTF::GetOutput(HGHLG::InverseOOTF *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  (*(**(this + 51) + 96))(*(this + 51), 0, **(this + 52), *(*(this + 52) + 4), *(*(this + 52) + 8), 0.0);
  (*(**(this + 51) + 96))(*(this + 51), 1, *(this + 108), *(this + 109), 0.0, 0.0);
  return *(this + 51);
}

uint64_t HGHLG::HLGToSDR::HLGToSDR(uint64_t a1, int a2)
{
  HGNode::HGNode(a1);
  *v4 = &unk_287211810;
  *(v4 + 408) = 0;
  *(v4 + 416) = 0;
  *(v4 + 420) = a2;
  *(a1 + 424) = TXParagraphStyleFolder_Factory::version(v4);
  return a1;
}

void HGHLG::HLGToSDR::~HLGToSDR(HGHLG::HLGToSDR *this)
{
  *this = &unk_287211810;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGHLG::HLGToSDR::~HLGToSDR(HGNode *this)
{
  *this = &unk_287211810;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGHLG::HLGToSDR::GetOutput(HGNode *this, HGRenderer *a2)
{
  HGRenderer::GetInput(a2, this, 0);
  v3 = *(this + 105);
  if (v3 < 2)
  {
    v4 = HGObject::operator new(0x1C0uLL);
    HGNode::HGNode(v4);
    *v4 = &unk_287211370;
    v5 = HGObject::operator new(0x1A0uLL);
    HgcBT2100_HLG_OOTF_InverseOOTF::HgcBT2100_HLG_OOTF_InverseOOTF(v5);
  }

  if (v3 == 2)
  {
    v6 = HGObject::operator new(0x1C0uLL);
    HGNode::HGNode(v6);
    *v6 = &unk_287211370;
    v7 = HGObject::operator new(0x1A0uLL);
    HgcBT2100_HLG_OOTF_InverseOOTF::HgcBT2100_HLG_OOTF_InverseOOTF(v7);
  }

  return *(this + 51);
}

void sub_25FC09B40(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

uint64_t HGHLG::SDRToHLG::SDRToHLG(uint64_t a1, int a2, int a3)
{
  HGNode::HGNode(a1);
  *v6 = &unk_287211A60;
  *(v6 + 408) = 0;
  *(v6 + 416) = a2;
  *(v6 + 420) = a3;
  *(a1 + 424) = TXParagraphStyleFolder_Factory::version(v6);
  return a1;
}

void HGHLG::SDRToHLG::~SDRToHLG(HGHLG::SDRToHLG *this)
{
  *this = &unk_287211A60;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGHLG::SDRToHLG::~SDRToHLG(HGNode *this)
{
  *this = &unk_287211A60;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGHLG::SDRToHLG::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  v4 = *(this + 105);
  if (v4 == 2)
  {
    v17 = HGObject::operator new(0x320uLL);
    HGColorConform::HGColorConform(v17);
    (*(*v17 + 120))(v17, 0, Input);
    HGColorConform::SetToneQualityMode(v17, *(this + 106), v18);
    HGColorConform::SetAntiSymmetricToneCurves(v17, 1, v19);
    v20 = *(this + 104);
    if (v20 == 1)
    {
      v21 = 5;
    }

    else
    {
      v21 = 3;
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    HGColorConform::SetConversion(v17, v22, 13, 0, 3, 8, 0);
    HGColorConform::SetToneQualityMode(v17, 2, v23);
    HGColorConform::SetPremultiplyState(v17, 0, 0);
    v24 = HGObject::operator new(0x1C0uLL);
    HGNode::HGNode(v24);
    *v24 = &unk_2872115C0;
    v25 = HGObject::operator new(0x1A0uLL);
    HgcBT2100_HLG_OOTF_InverseOOTF::HgcBT2100_HLG_OOTF_InverseOOTF(v25);
  }

  if (v4 == 1)
  {
    v9 = HGObject::operator new(0x320uLL);
    HGColorConform::HGColorConform(v9);
    (*(*v9 + 120))(v9, 0, Input);
    HGColorConform::SetToneQualityMode(v9, *(this + 106), v10);
    v11 = *(this + 104);
    if (v11 == 1)
    {
      v12 = 5;
    }

    else
    {
      v12 = 3;
    }

    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    HGColorConform::SetConversion(v9, v13, 1, 0, 3, 1, 3);
    HGColorConform::SetPremultiplyState(v9, 0, 0);
    v14 = HGObject::operator new(0x1A0uLL);
    HgcBT2446_Method_A_ITMO::HgcBT2446_Method_A_ITMO(v14);
    (*(*v14 + 120))(v14, 0, v9);
    v15 = HGObject::operator new(0x1C0uLL);
    HGNode::HGNode(v15);
    *v15 = &unk_2872115C0;
    v16 = HGObject::operator new(0x1A0uLL);
    HgcBT2100_HLG_OOTF_InverseOOTF::HgcBT2100_HLG_OOTF_InverseOOTF(v16);
  }

  if (v4)
  {
    return *(this + 51);
  }

  v5 = HGObject::operator new(0x1B0uLL);
  HGGamma::HGGamma(v5);
  (*(*v5 + 120))(v5, 0, Input);
  (*(*v5 + 96))(v5, 0, 2.0, 2.0, 2.0, 1.0);
  HGGamma::SetPremultiplyState(v5, 0);
  (*(*v5 + 16))(v5);
  v6 = *(this + 104);
  if (v6 == 1)
  {
    v27 = HGObject::operator new(0x4A0uLL);
    HGColorGamma::HGColorGamma(v27);
    (*(*v27 + 120))(v27, 0, v5);
    HGColorGamma::SetToneQualityMode(v27, *(this + 106), v28);
    HGColorGamma::SetConversion(v27, 5, 8, 0, 3u, 8, 0);
    HGColorGamma::SetPremultiplyState(v27, 0, 0);
    v7 = v5;
    if (v5 != v27)
    {
      (*(*v5 + 24))(v5);
      v7 = v27;
      (*(*v27 + 16))(v27);
    }

    (*(*v27 + 24))(v27);
  }

  else
  {
    v7 = v5;
    if (!v6)
    {
      v8 = HGObject::operator new(0x1F0uLL);
      HGColorMatrix::HGColorMatrix(v8);
    }
  }

  v29 = HGObject::operator new(0x1A0uLL);
  HgcBT2390_Gain_Sat_ToneAdj::HgcBT2390_Gain_Sat_ToneAdj(v29);
  (*(*v29 + 120))(v29, 0, v7);
  (*(*v29 + 16))(v29);
  *(this + 51) = v29;
  (*(*v7 + 24))(v7);
  (*(*v5 + 24))(v5);
  v30 = *(this + 51);
  (*(*v29 + 24))(v29);
  return v30;
}

void sub_25FC0A7F0(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  (*(*v1 + 24))(v1);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

void HGACEScct::Encode::Encode(HGNode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287211CB0;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcLogVideo_encode::HgcLogVideo_encode(v2);
}

void sub_25FC0AC1C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGACEScct::Encode::~Encode(HGACEScct::Encode *this)
{
  *this = &unk_287211CB0;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGACEScct::Encode::~Encode(HGNode *this)
{
  *this = &unk_287211CB0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGACEScct::Encode::GetOutput(HGACEScct::Encode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  (*(**(this + 51) + 96))(*(this + 51), 0, 1.0, 0.0, 0.057078, *(this + 105));
  (*(**(this + 51) + 96))(*(this + 51), 1, *(this + 106), *(this + 104), 0.0086806, 0.0);
  return *(this + 51);
}

void HGACEScct::Decode::Decode(HGNode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287211F00;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcLogVideo_decode::HgcLogVideo_decode(v2);
}

void sub_25FC0AF68(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGACEScct::Decode::~Decode(HGACEScct::Decode *this)
{
  *this = &unk_287211F00;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGACEScct::Decode::~Decode(HGNode *this)
{
  *this = &unk_287211F00;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGACEScct::Decode::GetOutput(HGACEScct::Decode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  (*(**(this + 51) + 96))(*(this + 51), 0, 1.0, 0.0, 17.52, *(this + 104));
  (*(**(this + 51) + 96))(*(this + 51), 1, *(this + 105), *(this + 106), 0.15525, 0.0);
  return *(this + 51);
}

void HGCanonLog2CinemaGamut::Encode::Encode(HGNode *a1)
{
  HGNode::HGNode(a1);
  *v1 = &unk_287212150;
  v2 = HGObject::operator new(0x1F0uLL);
  HGColorMatrix::HGColorMatrix(v2);
}

void sub_25FC0B224(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGCanonLog2CinemaGamut::Encode::~Encode(HGNode *this)
{
  *this = &unk_287212150;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287212150;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGCanonLog2CinemaGamut::Encode::GetOutput(HGCanonLog2CinemaGamut::Encode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  HGColorMatrix::LoadMatrix(*(this + 51), *(this + 53), 1);
  if (*(this + 108))
  {
    v5 = 0.072657;
  }

  else
  {
    v5 = 0.084849;
  }

  if (*(this + 108))
  {
    v6 = 0.092864;
  }

  else
  {
    v6 = 0.035388;
  }

  (*(**(this + 52) + 120))(*(this + 52), 0, *(this + 51));
  (*(**(this + 52) + 96))(*(this + 52), 0, v5, v6, 87.099, 0.0);
  return *(this + 52);
}

void HGDJIDLog::Encode::Encode(HGNode *a1)
{
  HGNode::HGNode(a1);
  *v1 = &unk_2872123A0;
  v2 = HGObject::operator new(0x1F0uLL);
  HGColorMatrix::HGColorMatrix(v2);
}

void sub_25FC0B56C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGDJIDLog::Encode::~Encode(HGNode *this)
{
  *this = &unk_2872123A0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2872123A0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGDJIDLog::Encode::GetOutput(HGDJIDLog::Encode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  HGColorMatrix::LoadMatrix(*(this + 51), *(this + 53), 1);
  if ((atomic_load_explicit(&qword_280C5CFB8, memory_order_acquire) & 1) == 0)
  {
    HGDJIDLog::Encode::GetOutput();
  }

  (*(**(this + 52) + 120))(*(this + 52), 0, *(this + 51));
  (*(**(this + 52) + 96))(*(this + 52), 0, 0.89028, 0.0108, *&dword_280C5CED0, 0.58455);
  (*(**(this + 52) + 96))(*(this + 52), 1, 5.4225, 0.0929, 0.0086667, 0.0);
  return *(this + 52);
}

void HGFujifilmFLog2::Encode::~Encode(HGNode *this)
{
  *this = &unk_2872125F0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2872125F0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGFujifilmFLog2::Encode::GetOutput(HGFujifilmFLog2::Encode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  if (v3)
  {
    (*(*v3 + 120))(v3, 0, Input);
    HGColorMatrix::LoadMatrix(*(this + 51), *(this + 53), 1);
    Input = *(this + 51);
  }

  if ((atomic_load_explicit(&qword_280C5CFC0, memory_order_acquire) & 1) == 0)
  {
    v6 = Input;
    HGFujifilmFLog2::Encode::GetOutput();
    Input = v6;
  }

  (*(**(this + 52) + 120))(*(this + 52), 0, Input);
  (*(**(this + 52) + 96))(*(this + 52), 0, 5.0, 0.064829, *&dword_280C5CED4, 0.38432);
  (*(**(this + 52) + 96))(*(this + 52), 1, 7.9195, 0.092864, 0.00098778, 0.0);
  return *(this + 52);
}

void HGNikonNLog::Encode::Encode(HGNode *a1)
{
  HGNode::HGNode(a1);
  *v1 = &unk_287212840;
  v1[51] = 0;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcNikonLog_encode::HgcNikonLog_encode(v2);
}

void sub_25FC0BC14(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGNikonNLog::Encode::~Encode(HGNode *this)
{
  *this = &unk_287212840;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287212840;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGNikonNLog::Encode::GetOutput(HGNikonNLog::Encode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  if (v3)
  {
    (*(*v3 + 120))(v3, 0, Input);
    HGColorMatrix::LoadMatrix(*(this + 51), *(this + 53), 1);
    Input = *(this + 51);
  }

  (*(**(this + 52) + 120))(*(this + 52), 0, Input);
  (*(**(this + 52) + 96))(*(this + 52), 0, 0.23086, 0.0019239, 0.33333, 0.36444);
  (*(**(this + 52) + 96))(*(this + 52), 1, *(this + 108), *(this + 109), 0.0, 0.0);
  return *(this + 52);
}

void HGPanasonicVLog::Encode::Encode(HGNode *a1)
{
  HGNode::HGNode(a1);
  *v1 = &unk_287212A90;
  v2 = HGObject::operator new(0x1F0uLL);
  HGColorMatrix::HGColorMatrix(v2);
}

void sub_25FC0BF70(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGPanasonicVLog::Encode::~Encode(HGNode *this)
{
  *this = &unk_287212A90;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287212A90;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGPanasonicVLog::Encode::GetOutput(HGPanasonicVLog::Encode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  HGColorMatrix::LoadMatrix(*(this + 51), *(this + 53), 1);
  if ((atomic_load_explicit(qword_280C5CFD8, memory_order_acquire) & 1) == 0)
  {
    HGPanasonicVLog::Encode::GetOutput();
  }

  (*(**(this + 52) + 120))(*(this + 52), 0, *(this + 51));
  (*(**(this + 52) + 96))(*(this + 52), 0, 0.9, 0.00873, *&dword_280C5CEE0, 0.59821);
  (*(**(this + 52) + 96))(*(this + 52), 1, 5.04, 0.125, 0.011111, 0.0);
  return *(this + 52);
}

void HGSonySLog3::Encode::Encode(HGNode *a1)
{
  HGNode::HGNode(a1);
  *v1 = &unk_287212CE0;
  v2 = HGObject::operator new(0x1F0uLL);
  HGColorMatrix::HGColorMatrix(v2);
}

void sub_25FC0C348(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGSonySLog3::Encode::~Encode(HGNode *this)
{
  *this = &unk_287212CE0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287212CE0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGSonySLog3::Encode::GetOutput(HGSonySLog3::Encode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  HGColorMatrix::LoadMatrix(*(this + 51), *(this + 53), 1);
  (*(**(this + 52) + 120))(*(this + 52), 0, *(this + 51));
  (*(**(this + 52) + 96))(*(this + 52), 0, *(this + 108), *(this + 109), *(this + 110), *(this + 111));
  (*(**(this + 52) + 96))(*(this + 52), 1, *(this + 112), *(this + 113), 0.0125, 0.0);
  return *(this + 52);
}

void HGSony709_800_MLUT::HGSony709_800_MLUT(HGSony709_800_MLUT *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287212F30;
  v2 = HGObject::operator new(0x1A0uLL);
  HgcSony709_800_MLUT::HgcSony709_800_MLUT(v2);
}

void sub_25FC0C65C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGSony709_800_MLUT::~HGSony709_800_MLUT(HGSony709_800_MLUT *this)
{
  *this = &unk_287212F30;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGSony709_800_MLUT::~HGSony709_800_MLUT(HGNode *this)
{
  *this = &unk_287212F30;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGSony709_800_MLUT::GetOutput(HGSony709_800_MLUT *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  (*(**(this + 51) + 96))(*(this + 51), 0, 0.0066667, 0.018, 0.379, 0.0);
  (*(**(this + 51) + 96))(*(this + 51), 1, 4.5, 1.099, -0.099, 0.45);
  (*(**(this + 51) + 96))(*(this + 51), 2, 0.125, 1.09, 28.966, 0.0);
  return *(this + 51);
}

void HGCameraLogEncode::HGCameraLogEncode(HGNode *a1, int a2)
{
  HGNode::HGNode(a1);
  *v3 = &unk_287213180;
  *(v3 + 408) = 0;
  *(v3 + 416) = a2;
}

void HGCameraLogEncode::~HGCameraLogEncode(HGCameraLogEncode *this)
{
  *this = &unk_287213180;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGCameraLogEncode::~HGCameraLogEncode(HGNode *this)
{
  *this = &unk_287213180;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGCameraLogEncode::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  *(this + 51) = Input;
  v4 = *(this + 104);
  if (v4 > 5)
  {
    if (v4 <= 7)
    {
      if (v4 != 6)
      {
        v8 = HGObject::operator new(0x1D0uLL);
        HGSonySLog3::Encode::Encode(v8);
      }

      v10 = HGObject::operator new(0x1B0uLL);
      HGPanasonicVLog::Encode::Encode(v10);
    }

    switch(v4)
    {
      case 8:
        v12 = HGObject::operator new(0x1D0uLL);
        HGSonySLog3::Encode::Encode(v12);
      case 9:
        v15 = HGObject::operator new(0x1D0uLL);
        HGSonySLog3::Encode::Encode(v15);
      case 10:
        v6 = HGObject::operator new(0x1D0uLL);
        HGSonySLog3::Encode::Encode(v6);
    }
  }

  else
  {
    if (v4 > 2)
    {
      if (v4 != 3)
      {
        if (v4 != 4)
        {
          v5 = HGObject::operator new(0x1C0uLL);
          HGNikonNLog::Encode::Encode(v5);
        }

        v13 = HGObject::operator new(0x1B0uLL);
        HGNode::HGNode(v13);
        *v13 = &unk_2872125F0;
        *(v13 + 51) = 0;
        v14 = HGObject::operator new(0x1A0uLL);
        HgcLogVideo_encode::HgcLogVideo_encode(v14);
      }

      v11 = HGObject::operator new(0x1B0uLL);
      HGDJIDLog::Encode::Encode(v11);
    }

    if (v4 == 1)
    {
      v9 = HGObject::operator new(0x1C0uLL);
      HGCanonLog2CinemaGamut::Encode::Encode(v9);
    }

    if (v4 == 2)
    {
      v7 = HGObject::operator new(0x1C0uLL);
      HGCanonLog2CinemaGamut::Encode::Encode(v7);
    }
  }

  (*(*Input + 16))(Input);
  return *(this + 51);
}

void sub_25FC0CCB0(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  HGObject::operator delete(v4);
  _Unwind_Resume(a1);
}

float OUTLINED_FUNCTION_1_1@<S0>(float *a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  return result;
}

void HGHLG::OETF::OETF()
{
  if (__cxa_guard_acquire(&qword_280C5CF00))
  {
    v0 = OUTLINED_FUNCTION_0_4(&qword_280C5CEF8);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CF08))
  {
    LODWORD(_MergedGlobals_13) = 1056964608;

    __cxa_guard_release(&qword_280C5CF08);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CF10))
  {
    HIDWORD(_MergedGlobals_13) = 1040047461;

    __cxa_guard_release(&qword_280C5CF10);
  }
}

{
  if (__cxa_guard_acquire(qword_280C5CF18))
  {
    OUTLINED_FUNCTION_1_1(&dword_280C5CEB0, *&qword_280C5CEF8 + 0.0);

    __cxa_guard_release((v0 + 104));
  }
}

void HGHLG::InverseOETF::InverseOETF()
{
  if (__cxa_guard_acquire(&qword_280C5CF38))
  {
    v0 = OUTLINED_FUNCTION_0_4(&qword_280C5CF30);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CF40))
  {
    dword_280C5CEB4 = 1090589594;

    __cxa_guard_release(&qword_280C5CF40);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CF48))
  {
    OUTLINED_FUNCTION_1_1(&flt_280C5CEB8, *&qword_280C5CF30 / -0.123957432);

    __cxa_guard_release((v0 + 144));
  }
}

void HGACEScct::Encode::Encode()
{
  if (__cxa_guard_acquire(qword_280C5CF58))
  {
    v0 = OUTLINED_FUNCTION_2(&qword_280C5CF50);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CF68))
  {
    v1 = OUTLINED_FUNCTION_3(&qword_280C5CF50);
    *(v0 + 16) = v1 + 0.155251142;

    __cxa_guard_release((v0 + 24));
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CF70))
  {
    dword_280C5CEBC = 1057738349;

    __cxa_guard_release(&qword_280C5CF70);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CF78))
  {
    OUTLINED_FUNCTION_1_1(&flt_280C5CEC0, *&qword_280C5CF50 * 0.9);

    __cxa_guard_release((v0 + 184));
  }
}

void HGACEScct::Decode::Decode()
{
  if (__cxa_guard_acquire(qword_280C5CF88))
  {
    v0 = OUTLINED_FUNCTION_2(&qword_280C5CF80);

    __cxa_guard_release(v0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CF98))
  {
    v1 = OUTLINED_FUNCTION_3(&qword_280C5CF80);
    *(v0 + 16) = v1 + 0.155251142;

    __cxa_guard_release((v0 + 24));
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CFA0))
  {
    LODWORD(qword_280C5CEC4) = -1055320444;

    __cxa_guard_release(&qword_280C5CFA0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CFA8))
  {
    OUTLINED_FUNCTION_1_1(&qword_280C5CEC4 + 1, 1.0 / (*&qword_280C5CF80 * 0.9));

    __cxa_guard_release((v0 + 224));
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CFB0))
  {
    OUTLINED_FUNCTION_1_1(&dword_280C5CECC, *&qword_280C5CF88[1] / (*&qword_280C5CF80 * -0.9));

    __cxa_guard_release((v0 + 228));
  }
}

void HGDJIDLog::Encode::GetOutput()
{
  if (__cxa_guard_acquire(&qword_280C5CFB8))
  {
    dword_280C5CED0 = 1033780275;

    __cxa_guard_release(&qword_280C5CFB8);
  }
}

void HGFujifilmFLog2::Encode::GetOutput()
{
  if (__cxa_guard_acquire(&qword_280C5CFC0))
  {
    dword_280C5CED4 = 1033320402;

    __cxa_guard_release(&qword_280C5CFC0);
  }
}

void HGNikonNLog::Encode::Encode()
{
  if (__cxa_guard_acquire(&qword_280C5CFC8))
  {
    dword_280C5CED8 = 1037051326;

    __cxa_guard_release(&qword_280C5CFC8);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5CFD0))
  {
    dword_280C5CEDC = 1058468423;

    __cxa_guard_release(&qword_280C5CFD0);
  }
}

void HGPanasonicVLog::Encode::GetOutput()
{
  if (__cxa_guard_acquire(qword_280C5CFD8))
  {
    dword_280C5CEE0 = 1033168202;

    __cxa_guard_release(qword_280C5CFD8);
  }
}

void HGComicBilateralFilter::HGComicBilateralFilter(HGComicBilateralFilter *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872135E0;
  *(v1 + 408) = xmmword_260344BA0;
  *(v1 + 424) = 1065353216;
  *(v1 + 16) |= 0x620u;
}

void HGComicBilateralFilter::~HGComicBilateralFilter(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGComicBilateralFilter::SetParameter(HGComicBilateralFilter *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2 == 2)
  {
    if (*(this + 106) != a3)
    {
      *(this + 106) = a3;
      return 1;
    }
  }

  else
  {
    if (a2 == 1)
    {
      if (*(this + 104) == a3)
      {
        v7 = *(this + 105);
        if (v7 == a4)
        {
          return 0;
        }
      }

      else
      {
        *(this + 104) = a3;
        v7 = *(this + 105);
      }

      if (v7 != a4)
      {
        *(this + 105) = a4;
        return 1;
      }

      return 1;
    }

    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(this + 102) != a3)
    {
      *(this + 102) = a3;
      v6 = *(this + 103);
      goto LABEL_16;
    }

    v6 = *(this + 103);
    if (v6 != a4)
    {
LABEL_16:
      if (v6 != a4)
      {
        *(this + 103) = a4;
        return 1;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t HGComicBilateralFilter::GetDOD(HGComicBilateralFilter *this, HGRenderer *a2, int a3, HGRect a4)
{
  v13 = a4;
  if (a3)
  {
    return 0;
  }

  if (HGRect::IsInfinite(&v13))
  {
    return *&v13.var0;
  }

  v6 = *(this + 106);
  HGTransform::HGTransform(v12);
  HGTransform::Scale(v12, v6, v6, 1.0);
  v7 = *&v13.var0;
  v8 = *&v13.var2;
  v10 = HGTransformUtils::MinW(v9);
  *&v14.var0 = v8;
  DOD = HGTransformUtils::GetDOD(v12, v7, v14, 0.5, v10);
  HGTransform::~HGTransform(v12);
  return DOD;
}

uint64_t HGComicBilateralFilter::GetROI(HGComicBilateralFilter *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    v19 = a4;
    v14 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v16 = v15;
    *&v22.var0 = v14;
    *&v22.var2 = v16;
    HGRect::Grow(&v19, v22);
  }

  else if (a3)
  {
    v19 = HGRectNull;
  }

  else
  {
    v5 = *&a4.var0;
    v6 = *&a4.var2;
    v7 = 1.0 / *(this + 106);
    HGTransform::HGTransform(v18);
    HGTransform::Scale(v18, v7, v7, 1.0);
    *&v19.var0 = 0;
    *&v19.var2 = 0;
    v9 = HGTransformUtils::MinW(v8);
    *&v23.var0 = v6;
    *&v19.var0 = HGTransformUtils::GetROI(v18, v5, v23, 0.5, v9);
    *&v19.var2 = *&v20.var0;
    LODWORD(v10) = vcvtps_s32_f32(*(this + 102) + *(this + 102));
    *&v20.var2 = v10 | (v10 << 32);
    v20.var0 = -v10;
    v20.var1 = -v10;
    HGRect::Grow(&v19, v20);
    v11 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v13 = v12;
    *&v21.var0 = v11;
    *&v21.var2 = v13;
    HGRect::Grow(&v19, v21);
    HGTransform::~HGTransform(v18);
  }

  return *&v19.var0;
}

uint64_t HGComicBilateralFilter::RenderTile(HGComicBilateralFilter *this, HGTile *a2)
{
  v4 = *(this + 105);
  if (*(this + 104) == 1.0)
  {
    if (v4 == 1.0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (v4 != 1.0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 106);
  v7 = HGTile::Renderer(a2);
  v8 = (*(*this + 312))(this, v7);
  v10 = *a2;
  v11 = *(a2 + 3) - HIDWORD(*a2);
  if (v11 >= 1)
  {
    v12 = (*(a2 + 2) - v10.i32[0]);
    if (v12 >= 1)
    {
      v13 = v8;
      v14 = 0;
      *v15.f32 = vadd_f32(vcvt_f32_s32(v10), 0x3F0000003F000000);
      v15.i64[1] = 0x3F80000000000000;
      v16 = *(this + 102);
      v17 = v16 + v16;
      v18 = 1.0 / (v16 * (v16 + v16));
      v19 = 1.0 / (*(this + 103) * (*(this + 103) + *(this + 103)));
      v20 = *(a2 + 2);
      __asm { FMOV            V0.4S, #1.0 }

      v92 = _Q0;
      v93 = v15;
      v90 = 1.0 / v6;
      v26 = v15;
      do
      {
        v27 = 0;
        v89 = v26;
        v28 = v26;
        do
        {
          v30 = *(a2 + 12);
          v31 = *(a2 + 26);
          v32 = vsubq_f32(v28, v15);
          if (v13)
          {
            v33 = vaddq_s32(vcvtq_s32_f32(v32), vcltzq_f32(v32));
            v34 = vsubq_f32(v32, vcvtq_f32_s32(v33)).u64[0];
            v35 = (v30 + 16 * (v33.i32[0] + v33.i32[1] * v31));
            v36 = vaddq_f32(*v35, vmulq_n_f32(vsubq_f32(v35[1], *v35), v34.f32[0]));
            v37 = vaddq_f32(v36, vmulq_lane_f32(vsubq_f32(vaddq_f32(v35[v31], vmulq_n_f32(vsubq_f32(v35[v31 + 1], v35[v31]), v34.f32[0])), v36), v34, 1));
          }

          else
          {
            v38.i64[0] = 0x3F0000003F000000;
            v38.i64[1] = 0x3F0000003F000000;
            v39 = vaddq_f32(v32, v38);
            v40 = vcvtq_s32_f32(v39);
            v39.i64[0] = vaddq_s32(v40, vcgtq_f32(vcvtq_f32_s32(v40), v39)).u64[0];
            v37 = *(v30 + 16 * (v39.i32[0] + v39.i32[1] * v31));
          }

          v91 = v28;
          v41 = vmulq_n_f32(v28, v90);
          v42 = *(a2 + 10);
          v43 = *(a2 + 22);
          v44 = vsubq_f32(v41, v15);
          if (v13)
          {
            v45 = vaddq_s32(vcvtq_s32_f32(v44), vcltzq_f32(v44));
            v46 = vsubq_f32(v44, vcvtq_f32_s32(v45)).u64[0];
            v47 = (v42 + 16 * (v45.i32[0] + v45.i32[1] * v43));
            v48 = vaddq_f32(*v47, vmulq_n_f32(vsubq_f32(v47[1], *v47), v46.f32[0]));
            v49 = &v47[v43];
            v28 = vmulq_n_f32(vsubq_f32(v49[1], *v49), v46.f32[0]);
            v50 = vsubq_f32(vaddq_f32(*v49, v28), v48);
            v51 = vaddq_f32(v48, vmulq_lane_f32(v50, v46, 1));
            _Q2 = v92;
            v96 = v51;
            if (v17 < 1.0)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v53.i64[0] = 0x3F0000003F000000;
            v53.i64[1] = 0x3F0000003F000000;
            v54 = vaddq_f32(v44, v53);
            v55 = vcvtq_s32_f32(v54);
            v50 = vcvtq_f32_s32(v55);
            v54.i64[0] = vaddq_s32(v55, vcgtq_f32(v50, v54)).u64[0];
            v51 = *(v42 + 16 * (v54.i32[0] + v54.i32[1] * v43));
            _Q2 = v92;
            v96 = v51;
            if (v17 < 1.0)
            {
              goto LABEL_10;
            }
          }

          v56 = vdupq_lane_s32(*v37.i8, 1);
          v50.i64[0] = 0;
          v57 = v37;
          v57.i32[1] = 0;
          v58 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vorrq_s8(vcgtq_f32(v50, v56), vcgeq_f32(v56, v50))), 0), v57, v37);
          v59 = vdupq_laneq_s32(v58, 2);
          v60 = v58;
          v60.i32[2] = 0;
          v61 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vorrq_s8(vcgtq_f32(v50, v59), vcgeq_f32(v59, v50))), 0), v60, v58);
          v59.i32[0] = *(this + 104);
          *v60.i32 = vmuls_lane_f32(v59.f32[0], v61, 2);
          v62 = *(this + 105);
          v28.f32[0] = vmuls_lane_f32(*&v62, *v61.f32, 1);
          v28.f32[0] = ((*v60.i32 + v28.f32[0]) + (*v60.i32 + v28.f32[0])) + -1.0;
          *v60.i32 = vmuls_lane_f32(v59.f32[0], *v61.f32, 1);
          v61.f32[0] = vmuls_lane_f32(*&v62, v61, 2);
          v28.f32[1] = (*&v62 - v59.f32[0]) * (((*v60.i32 + v61.f32[0]) + (*v60.i32 + v61.f32[0])) + -1.0);
          v94 = v28;
          v95 = v41;
          v63 = vdup_n_s32(v43);
          LODWORD(v9) = 1.0;
          __asm { FMOV            V2.4S, #1.0 }

          v64 = v43;
          v51 = v96;
          do
          {
            v101 = v51;
            v102 = _Q2;
            v78 = vmulq_n_f32(v94, *&v9).u64[0];
            v79 = vsubq_f32(vaddq_f32(v41, v78.u64[0]), v15);
            if (v13)
            {
              v80 = vaddq_s32(vcvtq_s32_f32(v79), vcltzq_f32(v79));
              v81 = vsubq_f32(v79, vcvtq_f32_s32(v80)).u64[0];
              v82 = vsubq_f32(vsubq_f32(v41, v78), v15);
              v83 = vaddq_s32(vcvtq_s32_f32(v82), vcltzq_f32(v82));
              v82.i64[0] = vsubq_f32(v82, vcvtq_f32_s32(v83)).u64[0];
              *v80.i8 = vmla_s32(vzip1_s32(*v80.i8, *v83.i8), vzip2_s32(*v80.i8, *v83.i8), v63);
              v84 = v80.i32[1];
              v85 = (v42 + 16 * v80.i32[0]);
              v86 = vaddq_f32(*v85, vmulq_n_f32(vsubq_f32(v85[1], *v85), v81.f32[0]));
              v104 = vaddq_f32(v86, vmulq_lane_f32(vsubq_f32(vaddq_f32(v85[v64], vmulq_n_f32(vsubq_f32(v85[v64 + 1], v85[v64]), v81.f32[0])), v86), v81, 1));
              v87 = (v42 + 16 * v84);
              v88 = vaddq_f32(*v87, vmulq_n_f32(vsubq_f32(v87[1], *v87), v82.f32[0]));
              v70 = vaddq_f32(v88, vmulq_lane_f32(vsubq_f32(vaddq_f32(v87[v64], vmulq_n_f32(vsubq_f32(v87[v64 + 1], v87[v64]), v82.f32[0])), v88), *v82.f32, 1));
            }

            else
            {
              v65.i64[0] = 0x3F0000003F000000;
              v65.i64[1] = 0x3F0000003F000000;
              v66 = vaddq_f32(v79, v65);
              v67 = vcvtq_s32_f32(v66);
              v68 = vaddq_f32(vsubq_f32(vsubq_f32(v41, v78), v15), v65);
              v69 = vcvtq_s32_f32(v68);
              *v66.f32 = vadd_s32(*v67.i8, *&vcgtq_f32(vcvtq_f32_s32(v67), v66));
              *v68.f32 = vadd_s32(*v69.i8, *&vcgtq_f32(vcvtq_f32_s32(v69), v68));
              *v68.f32 = vmla_s32(vzip1_s32(*v66.f32, *v68.f32), vzip2_s32(*v66.f32, *v68.f32), v63);
              v104 = *(v42 + 16 * v68.i32[0]);
              v70 = *(v42 + 16 * v68.i32[1]);
            }

            v103 = v70;
            v100 = v9;
            v99 = expf(v18 * -(*&v9 * *&v9));
            v71 = vsubq_f32(v104, v96);
            v72 = vsubq_f32(v103, v96);
            v73 = vmulq_f32(v71, v71);
            v74 = vmulq_f32(v72, v72);
            v75 = vaddv_f32(vadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL)));
            *v76.i32 = expf(-(vaddv_f32(vadd_f32(*v73.i8, *&vextq_s8(v73, v73, 8uLL))) * v19));
            v98 = *v76.i32;
            v97 = vdupq_lane_s32(v76, 0);
            *v77.i32 = expf(-(v75 * v19));
            v9 = v100;
            _Q2 = vaddq_f32(v102, vmulq_n_f32(vaddq_f32(v97, vdupq_lane_s32(v77, 0)), v99));
            v51 = vaddq_f32(v101, vmulq_n_f32(vaddq_f32(vmulq_n_f32(v104, v98), vmulq_n_f32(v103, *v77.i32)), v99));
            *&v9 = *&v100 + 1.0;
            v15 = v93;
            v41 = v95;
          }

          while ((*&v100 + 1.0) <= v17);
LABEL_10:
          v29 = vdivq_f32(v51, _Q2);
          v29.i32[3] = v96.i32[3];
          *(v20 + 16 * v27) = vmaxnmq_f32(vminnmq_f32(v29, v92), 0);
          v28 = vaddq_f32(v91, xmmword_2603429B0);
          ++v27;
        }

        while (v27 != v12);
        v26 = vaddq_f32(v89, xmmword_2603429C0);
        v20 += 16 * *(a2 + 6);
        ++v14;
      }

      while (v14 != v11);
    }
  }

  return 0;
}

HGComicBilateralFilter *HGComicBilateralFilter::GetOutput(HGComicBilateralFilter *this, HGRenderer *a2, char *a3)
{
  HGNode::SetParameter(this, 0, *(this + 102), *(this + 103), 0.0, 0.0, a3);
  HGNode::SetParameter(this, 1, *(this + 104), *(this + 105), 0.0, 0.0, v4);
  return this;
}

const char *HGComicBilateralFilter::GetProgram(HGComicBilateralFilter *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) > 0x60B0F)
  {
    return "//Metal1.0     \n//LEN=00000009bb\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >     hg_Texture0 [[ texture(0) ]],\n                                  texture2d< half >     hg_Texture1 [[ texture(1) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]],\n                                  sampler                hg_Sampler1 [[ sampler(1) ]])\n{\n    const half sigma {static_cast<half>(hg_Params[0].x)};\n    const half sigmacolor {static_cast<half>(hg_Params[0].y)};\n    const half xAxis {static_cast<half>(hg_Params[1].x)};\n    const half yAxis {static_cast<half>(hg_Params[1].y)};\n    \n    const half sigma22 {1.0h / (2.0h * sigma * sigma)};\n    const half sigmacolor22 {1.0h / (2.0h * sigmacolor * sigmacolor)};\n    const half sigmax2 {2.0h * sigma};\n\n    half2 gradient = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).yz;\n    gradient = \n        half2( (gradient.y * xAxis + gradient.x * yAxis) * 2.0h - 1.0h,\n             ((gradient.x * xAxis + gradient.y * yAxis) * 2.0h - 1.0h) *\n               (-1.0h * xAxis + 1.0h * yAxis));\n    \n    const half alpha = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).a;\n    const half3 current = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).rgb;\n    half3 acc = current;\n    half norm {1.0h};\n\n    for (half i {1.0h}; i <= sigmax2; i += 1.0h)\n    {\n        const float2 uPos = frag._texCoord0.xy + float2(i * gradient);\n        const float2 uNeg = frag._texCoord0.xy - float2(i * gradient);\n        \n        const half3 right = hg_Texture0.sample(hg_Sampler0, uPos).rgb;\n        const half3 left = hg_Texture0.sample(hg_Sampler0, uNeg).rgb;\n\n        const half coeff = exp(-i * i * sigma22);\n        const half coeffr = exp(-dot((right - current), (right - current)) * sigmacolor22);\n        const half coeffl = exp(-dot((left - current), (left - current)) * sigmacolor22);\n\n        norm += coeff * (coeffr + coeffl);\n        acc += coeff * (coeffr * right+coeffl * left);\n    }\n    \n    acc = acc / norm;\n    \n    FragmentOut out {float4(float3(acc), alpha)};\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    out.color0 = clamp(out.color0, 0.0f, 1.0f);\n    \n    return out;\n }\n//MD5=63de27e4:0c23b7b0:cc01e232:e534b9f2\n//SIG=00000000:00000000:00000000:00000003:0010:0002:0000:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    return "//GLfs1.0      \n//LEN=0000000898\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#define precision\n#define defaultp mediump\n#endif\n\nprecision highp float;\nprecision highp int;\n\nuniform defaultp sampler2DRect hg_Texture0;\nuniform defaultp sampler2DRect hg_Texture1;\n\nuniform highp vec4 hg_ProgramLocal0; // {.x == sigma, .y == sigmacolor}\nuniform highp vec4 hg_ProgramLocal1; // {.x == xAxis coefficient, .y == yAxis coefficient}\n\nvoid main (void) \n{\n    float sigma = hg_ProgramLocal0.x;\n    float sigmacolor = hg_ProgramLocal0.y;\n    float xAxis = hg_ProgramLocal1.x;\n    float yAxis = hg_ProgramLocal1.y;\n    \n    float sigma22 = 1.0 / (2.0 * sigma  * sigma);\n    float sigmacolor22 = 1.0 / (2.0 * sigmacolor * sigmacolor);\n    float sigmax2 = 2.0 * sigma;\n    \n    float alpha = texture2DRect(hg_Texture0, gl_TexCoord[0].xy).a;\n    vec3 current = texture2DRect(hg_Texture0, gl_TexCoord[0].xy).rgb;\n    vec3 acc = current;\n    float norm = 1.0;\n    \n    vec2 gradient = texture2DRect(hg_Texture1, gl_TexCoord[1].xy).yz;\n    gradient = \n        vec2( (gradient.y * xAxis + gradient.x * yAxis)*2.0 - 1.0,\n             ((gradient.x * xAxis + gradient.y * yAxis)*2.0 - 1.0) * \n             (-1.0 * xAxis + 1.0 * yAxis));\n\n    for (float i = 1.0; i <= sigmax2; i += 1.0) \n    {\n        vec2 uPos = gl_TexCoord[0].xy + i * gradient;\n        vec2 uNeg = gl_TexCoord[0].xy - i * gradient;\n        \n        vec3 right = texture2DRect(hg_Texture0, uPos).rgb;\n        vec3 left = texture2DRect(hg_Texture0, uNeg).rgb;\n\n        float coeff = exp( -i * i * sigma22);\n        float coeffr = exp( -dot((right - current), (right - current)) * sigmacolor22); //(ri-cun).r*(rig-cu).r + (ri-cu).g*(ri-cur).g ... = dist*dist\n        float coeffl = exp( -dot((left - current), (left - current)) * sigmacolor22);\n\n        norm += coeff * (coeffr + coeffl);\n        acc += coeff * (coeffr * right+coeffl * left);\n    }\n    \n    acc = acc / norm;\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    gl_FragColor = clamp(vec4(acc, alpha), 0.0, 1.0);\n }\n//MD5=26dc515d:0940174b:2c779b1c:584e541e\n//SIG=00000000:00000000:00000000:00000000:0020:0002:0000:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  return 0;
}

uint64_t HGComicBilateralFilter::BindTexture(HGComicBilateralFilter *this, HGHandler *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    HGHandler::TexCoord(a2, 1, 0, 0, 0);
  }

  else if (!a3)
  {
    v5 = 1.0 / *(this + 106);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    (*(*a2 + 104))(a2, v5, v5, 1.0);
  }

  (*(*a2 + 72))(a2, a3, 0);
  (*(*a2 + 56))(a2, 0);
  (*(*a2 + 48))(a2, 1, 1);
  return 0;
}

void HRasterizerGenerator::~HRasterizerGenerator(HRasterizerGenerator *this)
{
  HgcRasterizerGenerator::~HgcRasterizerGenerator(this);

  HGObject::operator delete(v1);
}

const HGMetalDeviceInfo *HGGPUResources::getDeviceResources(HGGPUResources *this, const HGMetalDeviceInfo *a2)
{
  v2 = this;
  if (this)
  {
    if ((atomic_load_explicit(&qword_280C5D028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5D028))
    {
      operator new();
    }

    v3 = _MergedGlobals_14;
    std::mutex::lock(_MergedGlobals_14);
    if ((atomic_load_explicit(&qword_280C5D038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5D038))
    {
      operator new();
    }

    v4 = *(qword_280C5D030 + 8);
    if (!v4)
    {
      goto LABEL_12;
    }

    v5 = qword_280C5D030 + 8;
    do
    {
      v6 = *(v4 + 32);
      v7 = v6 >= v2;
      v8 = v6 < v2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * v8);
    }

    while (v4);
    if (v5 == qword_280C5D030 + 8 || *(v5 + 32) > v2)
    {
LABEL_12:
      v5 = qword_280C5D030 + 8;
    }

    if ((atomic_load_explicit(&qword_280C5D038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5D038))
    {
      operator new();
    }

    if (v5 == qword_280C5D030 + 8)
    {
      v9 = HGObject::operator new(0xB0uLL);
      HGGPUResources::HGGPUResources(v9, v2);
    }

    if ((atomic_load_explicit(&qword_280C5D038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5D038))
    {
      operator new();
    }

    v10 = *(qword_280C5D030 + 8);
    if (!v10)
    {
LABEL_23:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v11 = v10;
        v12 = v10[4];
        if (v12 <= v2)
        {
          break;
        }

        v10 = *v11;
        if (!*v11)
        {
          goto LABEL_23;
        }
      }

      if (v12 >= v2)
      {
        break;
      }

      v10 = v11[1];
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    v2 = v11[5];
    std::mutex::unlock(v3);
  }

  return v2;
}

void sub_25FC0E4D0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280C5D038);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void sub_25FC0E514(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void HGGPUResources::HGGPUResources(HGGPUResources *this, const HGMetalDeviceInfo *a2)
{
  HGObject::HGObject(this);
  *v3 = &unk_287213AC0;
  *(v3 + 24) = 0u;
  v4 = (v3 + 24);
  *(v3 + 16) = a2;
  *(v3 + 64) = 850045863;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 1065353216;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v11);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "(device:0x", 10);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = MEMORY[0x2666E9BA0]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ")", 1);
  v7 = HGObject::operator new(0x18uLL);
  HGCVPixelBufferPool::HGCVPixelBufferPool(v7);
  *v4 = v7;
  std::stringbuf::str();
  v8 = std::string::insert(&v10, 0, "HGCV pool ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  HGCVPixelBufferPool::setLabel(v7, &v13);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v10.__r_.__value_.__l.__data_);
LABEL_3:
  operator new();
}

void sub_25FC0EDB8(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v25 - 240);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a8, MEMORY[0x277D82818]);
  MEMORY[0x2666E9E10](va);
  std::mutex::~mutex(v24);
  HGObject::~HGObject(v23);
  _Unwind_Resume(a1);
}

void HGGPUResources::forceResetCVTextureCache(std::mutex *this)
{
  keys[1] = *MEMORY[0x277D85DE8];
  v2 = *(*&this->__m_.__opaque[8] + 16);
  valuePtr = *this[2].__m_.__opaque;
  v3 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v4 = *MEMORY[0x277CC4D40];
  values = v3;
  keys[0] = v4;
  v5 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  cacheOut = 0;
  v6 = CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], v5, v2, 0, &cacheOut);
  CFRelease(v3);
  CFRelease(v5);
  if (v6)
  {
    HGLogger::warning("could not create CVMetalTextureCache! (%d)\n", v7, v8, v6);
  }

  v9 = cacheOut;
  std::mutex::lock(this + 1);
  sig = this[2].__m_.__sig;
  if (sig)
  {
    CFRelease(sig);
  }

  this[2].__m_.__sig = v9;
  std::mutex::unlock(this + 1);
}

void HGGPUResources::~HGGPUResources(std::mutex *this)
{
  this->__m_.__sig = &unk_287213AC0;
  std::mutex::~mutex(this + 1);

  HGObject::~HGObject(this);
}

{
  this->__m_.__sig = &unk_287213AC0;
  std::mutex::~mutex(this + 1);
  HGObject::~HGObject(this);

  HGObject::operator delete(v2);
}

uint64_t HGGPUResources::getCVTextureCacheRetainedRef(HGGPUResources *this)
{
  std::mutex::lock(this + 1);
  CFRetain(*(this + 16));
  v2 = *(this + 16);
  std::mutex::unlock(this + 1);
  return v2;
}

void HGGPUResources::flushFreeObjects(HGGPUResources *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    HGMetalBufferPool::clear(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    HGMetalTexturePool::clear(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {

    CVMetalTextureCacheFlush(v4, 0);
  }
}

void HGGPUResources::releaseFreeObjects(HGGPUResources *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    HGCVPixelBufferPool::clear(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    HGMetalBufferPool::clear(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    HGMetalTexturePool::clear(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    HGMetalBufferWrapperInfinipool::clear(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    HGMetalTextureWrapperInfinipool::clear(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {

    CVMetalTextureCacheFlush(v7, 0);
  }
}

void HGGPUResources::forceResetAllCVTextureCaches(HGGPUResources *this)
{
  if ((atomic_load_explicit(&qword_280C5D028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5D028))
  {
    operator new();
  }

  v1 = _MergedGlobals_14;
  std::mutex::lock(_MergedGlobals_14);
  if ((atomic_load_explicit(&qword_280C5D038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5D038))
  {
    operator new();
  }

  v2 = *qword_280C5D030;
  if ((atomic_load_explicit(&qword_280C5D038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5D038))
  {
    operator new();
  }

  v3 = qword_280C5D030 + 8;
  if (v2 != (qword_280C5D030 + 8))
  {
    do
    {
      HGGPUResources::forceResetCVTextureCache(v2[5]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::mutex::unlock(v1);
}

void sub_25FC0F410(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280C5D038);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void sub_25FC0FA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a13);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a15);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void sub_25FC0FA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_25FC0FAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<anonymous namespace::BufferPoolFixedAllocationPolicy<0,1024>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287213B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void std::__shared_ptr_emplace<anonymous namespace::TexturePoolFixedAllocationPolicy<16,64>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287213BB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

__n128 anonymous namespace::TexturePoolFixedAllocationPolicy<16,64>::pad@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v3;
  v4.i64[0] = -1;
  v4.i64[1] = -1;
  *a2 = vbslq_s8(vcgtq_u64(*a1, vdupq_n_s64(0x10uLL)), vaddq_s64(vandq_s8(vaddq_s64(*a1, v4), vdupq_n_s64(0xFFFFFFFFFFFFFFC0)), vdupq_n_s64(0x40uLL)), *a1);
  return result;
}

void std::__shared_ptr_emplace<HGPool::FixedTotalUsageServicingPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287213C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void std::__shared_ptr_emplace<HGPool::FixedGroupServicingPolicy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287213D00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void HGPool::FixedGroupServicingPolicy::~FixedGroupServicingPolicy(HGPool::FixedGroupServicingPolicy *this)
{
  *this = &unk_287223818;
  std::__tree<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::__map_value_compare<HGPool::BasePool const*,std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::less<HGPool::BasePool const*>,true>,std::allocator<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>>>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_287223818;
  std::__tree<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::__map_value_compare<HGPool::BasePool const*,std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::less<HGPool::BasePool const*>,true>,std::allocator<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>>>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x2666E9F00);
}

void std::__tree<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::__map_value_compare<HGPool::BasePool const*,std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::less<HGPool::BasePool const*>,true>,std::allocator<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::__map_value_compare<HGPool::BasePool const*,std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::less<HGPool::BasePool const*>,true>,std::allocator<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::__map_value_compare<HGPool::BasePool const*,std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>,std::less<HGPool::BasePool const*>,true>,std::allocator<std::__value_type<HGPool::BasePool const*,std::shared_ptr<HGPool::ServicingPolicy>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void sub_25FC1002C(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 456) = v5;
    operator delete(v5);
  }

  HGLegacyBlend::~HGLegacyBlend(v1);
  _Unwind_Resume(a1);
}

void HGHWBlendFlipped::~HGHWBlendFlipped(HGHWBlendFlipped *this)
{
  *this = &unk_287213DC0;
  v2 = *(this + 64);
  if (v2 != this)
  {
    (*(*v2 + 24))(v2);
    *(this + 64) = this;
  }

  HGHWBlendFlipped::DeleteStates(this);
  v3 = *(this + 56);
  if (v3)
  {
    *(this + 57) = v3;
    operator delete(v3);
  }

  HGLegacyBlend::~HGLegacyBlend(this);
}

{
  *this = &unk_287213DC0;
  v2 = *(this + 64);
  if (v2 != this)
  {
    (*(*v2 + 24))(v2);
    *(this + 64) = this;
  }

  HGHWBlendFlipped::DeleteStates(this);
  v3 = *(this + 56);
  if (v3)
  {
    *(this + 57) = v3;
    operator delete(v3);
  }

  HGLegacyBlend::~HGLegacyBlend(this);
}

{
  *this = &unk_287213DC0;
  v2 = *(this + 64);
  if (v2 != this)
  {
    (*(*v2 + 24))(v2);
    *(this + 64) = this;
  }

  HGHWBlendFlipped::DeleteStates(this);
  v3 = *(this + 56);
  if (v3)
  {
    *(this + 57) = v3;
    operator delete(v3);
  }

  HGLegacyBlend::~HGLegacyBlend(this);

  HGObject::operator delete(v4);
}

const char *HGHWBlendFlipped::label_B(HGHWBlendFlipped *this)
{
  v1 = *(this + 106);
  if (v1 > 0x29)
  {
    return "(invalid)";
  }

  else
  {
    return s_label_table[v1];
  }
}

const char *HGHWBlendFlipped::GetBlendModeLabel(HGHWBlendFlipped *this)
{
  if (this > 0x29)
  {
    return "(invalid)";
  }

  else
  {
    return s_label_table[this];
  }
}

uint64_t HGHWBlendFlipped::SetParameter(HGHWBlendFlipped *this, uint64_t a2, __n128 a3, double a4, float a5, float a6, char *a7)
{
  if (a2 <= 3)
  {
    if (a2)
    {
      if (a2 == 3)
      {
        v7 = vcvtms_u32_f32(a3.n128_f32[0]);
        if (v7 > 2)
        {
          return 0xFFFFFFFFLL;
        }

        *(this + 118) = v7;
        return 0;
      }

      return HGLegacyBlend::SetParameter(this, a2, a3.n128_f64[0], a4, a5, a6, a7);
    }

    v10 = vcvtms_s32_f32(a3.n128_f32[0]);
    if (v10 - 9 > 0x20)
    {
      a2 = 0;
      return HGLegacyBlend::SetParameter(this, a2, a3.n128_f64[0], a4, a5, a6, a7);
    }

    if (*(this + 106) != v10)
    {
      *(this + 106) = v10;
      return 1;
    }

    return 0;
  }

  if (a2 != 4)
  {
    if (a2 != 6)
    {
      return HGLegacyBlend::SetParameter(this, a2, a3.n128_f64[0], a4, a5, a6, a7);
    }

    v9.i64[0] = __PAIR64__(LODWORD(a4), a3.n128_u32[0]);
    v9.i64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*(this + 31), v9)))))
    {
      a3.n128_u32[1] = LODWORD(a4);
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(this + 31) = a3;
      return 1;
    }

    return 0;
  }

  v11 = vcvtms_s32_f32(a3.n128_f32[0]);
  v12 = v11 != 0;
  if (*(this + 119) == v12)
  {
    return 0;
  }

  *(this + 119) = v12;
  v13 = *(this + 4);
  if (v11)
  {
    v14 = v13 | 0x20;
  }

  else
  {
    v14 = v13 & 0xFFFFFFDF;
  }

  *(this + 4) = v14;
  return 1;
}

uint64_t HGHWBlendFlipped::SetState(HGHWBlendFlipped *this, HGRenderer *a2, int a3)
{
  if (a3 == 1)
  {
    v4 = this;
    v5 = a2;
    v6 = a3;
    HGHWBlendFlipped::AllocateStates(this, a2);
    this = v4;
    a2 = v5;
    a3 = v6;
  }

  return HGNode::SetState(this, a2, a3);
}

uint64_t HGHWBlendFlipped::UpdateHWBlendStatus(HGHWBlendFlipped *this, HGRenderer *a2)
{
  result = (*(*a2 + 304))(a2);
  if ((result & 1) == 0)
  {
    v5 = *(this + 118);
    switch(v5)
    {
      case 2:
        *(this + 480) = 1;
        break;
      case 1:
        result = HGRenderer::GetInput(a2, this, *(this + 108));
        if (result)
        {
          result = HGNode::DoInplaceHardwareBlending(result, a2, this, *(this + 104));
        }

        *(this + 480) = result;
        break;
      case 0:
        *(this + 480) = 0;
        break;
    }
  }

  return result;
}

HGNode *HGHWBlendFlipped::GetOutput(HGHWBlendFlipped *this, HGRenderer *a2)
{
  if (*(this + 106) >= 38)
  {
    *(this + 104) = 1065353216;
  }

  (*(*this + 592))(this, a2);
  v4 = *(this + 64);
  if (v4 != this)
  {
    (*(*v4 + 24))(v4);
    *(this + 64) = this;
  }

  if ((*(*a2 + 304))(a2) && (*(this + 119) || *(this + 106) == 41))
  {
    v5 = HGObject::operator new(0x1A0uLL);
    HGOverwrite::HGOverwrite(v5);
    Input = HGRenderer::GetInput(a2, this, *(this + 107));
    (*(*v5 + 120))(v5, 0, Input);
    v7 = HGRenderer::GetInput(a2, this, *(this + 108));
    (*(*v5 + 120))(v5, 1, v7);
    *(this + 64) = v5;
    return v5;
  }

  else if (*(this + 520) == 1)
  {
    v9 = HGObject::operator new(0x1D0uLL);
    HGLightWrapBlend::HGLightWrapBlend(v9);
    v10 = HGRenderer::GetInput(a2, this, 0);
    (*(*v9 + 120))(v9, 0, v10);
    v11 = HGRenderer::GetInput(a2, this, 1u);
    (*(*v9 + 120))(v9, 1, v11);
    (*(*v9 + 96))(v9, 0, *(this + 106), 0.0, 0.0, 0.0);
    (*(*v9 + 96))(v9, 1, *(this + 104), 0.0, 0.0, 0.0);
    HGLightWrapBlend::SetLightWrapParams(v9, *(this + 131), *(this + 132), *(this + 133), *(this + 134), *(this + 135));
    *(this + 64) = v9;
    return v9;
  }

  else
  {
    if ((*(this + 106) - 9) <= 0x20)
    {
      if ((*(*a2 + 304))(a2) & 1) == 0 && (*(this + 119) || (v12 = *(this + 106), v12 == 41) || (v12 > 0x29 || *(this + 105) == 1.0 || (s_gamma_support_blend_table[v12] & 1) == 0) && (v13 = HGBlendingInfo::Get(v12), *(this + 480) == 1) && (*v13) || *(this + 106) >= 38)
      {
        (*(*this + 136))(this, 0xFFFFFFFFLL, 32);
        (*(*this + 136))(this, 0, 32);
        (*(*this + 136))(this, 1, 32);
      }
    }

    return HGLegacyBlend::GetOutput(this, a2);
  }
}

uint64_t HGHWBlendFlipped::IsHardwareBlendSupported(HGHWBlendFlipped *this, HGRenderer *a2)
{
  if ((*(*a2 + 304))(a2))
  {
    return 0;
  }

  if (*(this + 119))
  {
    return 1;
  }

  v4 = *(this + 106);
  if (v4 == 41)
  {
    return 1;
  }

  if (v4 > 0x29 || *(this + 105) == 1.0 || (s_gamma_support_blend_table[v4] & 1) == 0)
  {
    return *(this + 480) & *HGBlendingInfo::Get(v4) & 1;
  }

  return 0;
}

uint64_t HGHWBlendFlipped::BindTexture(HGHWBlendFlipped *this, HGHandler *a2, int a3)
{
  HGHandler::TexCoord(a2, a3, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HGHWBlendFlipped::GetGammaBlendMode(HGHWBlendFlipped *this, unsigned int a2, float a3)
{
  if (a2 > 0x29)
  {
    return 0;
  }

  if (a3 > 1.9756 || a3 < 1.9364)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (s_gamma_support_blend_table[a2])
  {
    v6 = a3 == 1.0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t HGHWBlendFlipped::GetDOD(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v4 = s_dod_policy_table[*(this + 106)];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (!a3)
      {
        return *&a4.var0;
      }
    }

    else if (v4 == 3 && a3 == 1)
    {
      return *&a4.var0;
    }
  }

  else if (v4)
  {
    if (v4 == 1 && a3 <= 1)
    {
      Input = HGRenderer::GetInput(a2, this, 0);
      DOD = HGRenderer::GetDOD(a2, Input);
      v11 = v10;
      v12 = HGRenderer::GetInput(a2, this, 1u);
      v13 = HGRenderer::GetDOD(a2, v12);
      *&a4.var0 = HGRectIntersection(DOD, v11, v13, v14);
      return *&a4.var0;
    }
  }

  else if (a3 < 2)
  {
    return *&a4.var0;
  }

  return 0;
}

HGBitmap *HGHWBlendFlipped::RenderPageDispatcher<(HGGPURenderAPI)0>(uint64_t a1, HGPage *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  (*(*a1 + 616))(a1, 0);
  v4 = *a2;
  result = HGHWBlendFlipped::RenderSingleInput(a1, a2);
  if (!result)
  {
    v6 = (*(*a1 + 48))(a1);
    snprintf(__str, 0x100uLL, "%s::%s( [%d %d %d %d])", v6, "RenderPage", *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
    HGTraceGuard::HGTraceGuard(v11, "gpu", 1, __str);
    if ((*(a1 + 424) - 9) >= 0x21)
    {
      v7 = HGLegacyBlend::RenderPage(a1, a2);
    }

    else if ((*(*v4 + 304))(v4) & 1) == 0 && (*(a1 + 476) || (v8 = *(a1 + 424), v8 == 41) || (v8 > 0x29 || *(a1 + 420) == 1.0 || (s_gamma_support_blend_table[v8] & 1) == 0) && (v9 = HGBlendingInfo::Get(v8), *(a1 + 480) == 1) && (*v9))
    {
      v7 = HGHWBlendFlipped::RenderPageHWBlending<(HGGPURenderAPI)0>(a1, a2);
    }

    else
    {
      v7 = HGNode::RenderPage(a1, a2);
    }

    v10 = v7;
    HGTraceGuard::~HGTraceGuard(v11);
    return v10;
  }

  return result;
}

void sub_25FC10FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

HGBitmap *HGHWBlendFlipped::RenderPageDispatcher<(HGGPURenderAPI)1>(uint64_t a1, HGPage *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  (*(*a1 + 616))(a1, 0);
  v4 = *a2;
  result = HGHWBlendFlipped::RenderSingleInput(a1, a2);
  if (!result)
  {
    v6 = (*(*a1 + 48))(a1);
    snprintf(__str, 0x100uLL, "%s::%s( [%d %d %d %d])", v6, "RenderPageMetal", *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
    HGTraceGuard::HGTraceGuard(v11, "gpu", 1, __str);
    if ((*(a1 + 424) - 9) >= 0x21)
    {
      v7 = HGLegacyBlend::RenderPageMetal(a1, a2);
    }

    else if ((*(*v4 + 304))(v4) & 1) == 0 && (*(a1 + 476) || (v8 = *(a1 + 424), v8 == 41) || (v8 > 0x29 || *(a1 + 420) == 1.0 || (s_gamma_support_blend_table[v8] & 1) == 0) && (v9 = HGBlendingInfo::Get(v8), *(a1 + 480) == 1) && (*v9))
    {
      v7 = HGHWBlendFlipped::RenderPageHWBlending<(HGGPURenderAPI)1>(a1, a2);
    }

    else
    {
      v7 = HGNode::RenderPageMetal(a1, a2);
    }

    v10 = v7;
    HGTraceGuard::~HGTraceGuard(v11);
    return v10;
  }

  return result;
}

void sub_25FC111F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

HGBitmap *HGHWBlendFlipped::RenderSingleInput(HGHWBlendFlipped *this, HGPage *a2)
{
  v4 = *a2;
  Input = HGRenderer::GetInput(*a2, this, *(this + 107));
  v6 = HGRenderer::GetInput(v4, this, *(this + 108));
  *&v16.var0 = (*(*this + 400))(this, v4, *(this + 107), *(a2 + 2), *(a2 + 3));
  *&v16.var2 = v7;
  *&v15.var0 = (*(*this + 400))(this, v4, *(this + 108), *(a2 + 2), *(a2 + 3));
  *&v15.var2 = v8;
  DOD = HGRenderer::GetDOD(v4, v6);
  v11 = v10;
  if (HGRect::IsNull(&v15))
  {
    v6 = Input;
    return HGGPURenderer::GetNodeBitmap(v4, v6, *(a2 + 1), *(a2 + 1), 1u);
  }

  if ((HGNode::DoInplaceHardwareBlending(v6, v4, this, *(this + 104)) & 1) == 0 && *(this + 104) == 1.0 && HGRect::IsNull(&v16))
  {
    return HGGPURenderer::GetNodeBitmap(v4, v6, *(a2 + 1), *(a2 + 1), 1u);
  }

  if (*(this + 119) || *(this + 106) == 41)
  {
    v12 = HGRectIntersection(DOD, v11, *(a2 + 2), *(a2 + 3));
    if (HGRectIsEqual(v12, v13, *(a2 + 2), *(a2 + 3)))
    {
      return HGGPURenderer::GetNodeBitmap(v4, v6, *(a2 + 1), *(a2 + 1), 1u);
    }
  }

  return 0;
}

void HGHWBlendFlipped::ComputeSubPageRects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Input = HGRenderer::GetInput(*a2, a1, *(a1 + 432));
  v7 = HGRenderer::GetInput(*a2, a1, *(a1 + 428));
  DOD = HGRenderer::GetDOD(*a2, v7);
  v10 = v9;
  v11 = HGRenderer::GetDOD(*a2, Input);
  v13 = v12;
  *&v35.var0 = HGRectIntersection(DOD, v10, *(a2 + 16), *(a2 + 24));
  *&v35.var2 = v14;
  *&v34.var0 = HGRectIntersection(v11, v13, *(a2 + 16), *(a2 + 24));
  *&v34.var2 = v15;
  if (!HGRect::IsNull(&v35) && !HGRect::IsNull(&v34) && !HGRectIsEqual(*&v35.var0, *&v35.var2, *&v34.var0, *&v34.var2))
  {
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 28);
    if (v34.var3 >= v35.var3)
    {
      var3 = v35.var3;
    }

    else
    {
      var3 = v34.var3;
    }

    var0 = v35.var0;
    v21 = v34.var0;
    if (v35.var0 <= v34.var0)
    {
      v22 = v34.var0;
    }

    else
    {
      v22 = v35.var0;
    }

    if (v34.var2 >= v35.var2)
    {
      var2 = v35.var2;
    }

    else
    {
      var2 = v34.var2;
    }

    if (v35.var1 <= v34.var1)
    {
      var1 = v34.var1;
    }

    else
    {
      var1 = v35.var1;
    }

    if (v35.var1 != v34.var1)
    {
      *&v33 = HGRectMake4i(*(a2 + 16), *(a2 + 20), *(a2 + 24), var1);
      *(&v33 + 1) = v25;
      std::vector<HGRect>::push_back[abi:ne200100](a3, &v33);
      var0 = v35.var0;
      v21 = v34.var0;
    }

    if (var0 != v21)
    {
      if (var0 <= v21)
      {
        v26 = v21;
      }

      else
      {
        v26 = var0;
      }

      *&v33 = HGRectMake4i(v16, var1, v26, var3);
      *(&v33 + 1) = v27;
      std::vector<HGRect>::push_back[abi:ne200100](a3, &v33);
    }

    *&v33 = HGRectMake4i(v22, var1, var2, var3);
    *(&v33 + 1) = v28;
    std::vector<HGRect>::push_back[abi:ne200100](a3, &v33);
    if (v35.var2 != v34.var2)
    {
      if (v34.var2 >= v35.var2)
      {
        v29 = v35.var2;
      }

      else
      {
        v29 = v34.var2;
      }

      *&v33 = HGRectMake4i(v29, var1, v17, var3);
      *(&v33 + 1) = v30;
      std::vector<HGRect>::push_back[abi:ne200100](a3, &v33);
    }

    if (v35.var3 != v34.var3)
    {
      if (v34.var3 >= v35.var3)
      {
        v31 = v35.var3;
      }

      else
      {
        v31 = v34.var3;
      }

      *&v33 = HGRectMake4i(v16, v31, v17, v18);
      *(&v33 + 1) = v32;
      std::vector<HGRect>::push_back[abi:ne200100](a3, &v33);
    }
  }
}

BOOL HGHWBlendFlipped::RenderSubPages(HGHWBlendFlipped *this, HGPage *a2)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  HGHWBlendFlipped::ComputeSubPageRects(this, a2, &v27);
  v4 = v27;
  v5 = v28;
  if (v27 == v28)
  {
    v8 = v27;
    if (!v27)
    {
      return v4 != v5;
    }

    goto LABEL_5;
  }

  v6 = 0;
  v7 = 0;
  v8 = v27;
  do
  {
    v12 = *(a2 + 8);
    v26 = 1;
    v17 = *(a2 + 100);
    v18 = *(a2 + 116);
    v19 = *(a2 + 132);
    v20 = *(a2 + 148);
    v13 = *(a2 + 36);
    v14 = *(a2 + 52);
    v15 = *(a2 + 68);
    v16 = *(a2 + 84);
    v21 = *(a2 + 168);
    v22 = *(a2 + 184);
    v23 = *(a2 + 200);
    v24 = *(a2 + 216);
    v11[0] = *a2;
    v25 = *(a2 + 232);
    v11[1] = *&v8[v6];
    v9 = (*(*this + 456))(this, v11);
    (*(*v9 + 24))(v9);
    ++v7;
    v8 = v27;
    v6 += 16;
  }

  while (v7 < (v28 - v27) >> 4);
  if (v27)
  {
LABEL_5:
    v28 = v8;
    operator delete(v8);
  }

  return v4 != v5;
}

void sub_25FC11770(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    *(v1 - 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGHWBlendFlipped::SetLightWrapParams(uint64_t result, int a2, float a3, float a4, float a5, float a6)
{
  *(result + 520) = 1;
  *(result + 528) = a3;
  *(result + 532) = a4;
  *(result + 536) = a5;
  *(result + 524) = a2;
  *(result + 540) = a6;
  return result;
}

char *HGHWBlendFlipped::RenderPageHWBlending<(HGGPURenderAPI)0>(uint64_t a1, void *a2)
{
  v5 = *a2;
  Buffer = a2[1];
  v6 = (Buffer + 16);
  if (!Buffer)
  {
    v6 = (a2 + 4);
  }

  v7 = *v6;
  Input = HGRenderer::GetInput(*a2, a1, *(a1 + 432));
  v9 = HGRenderer::GetInput(v5, a1, *(a1 + 428));
  if (Buffer)
  {
    (*(*Buffer + 16))(Buffer);
    if (*(a1 + 476))
    {
      goto LABEL_8;
    }
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(v5, *(a2 + 1), v7, 0, (*(a1 + 16) >> 12) & 1, *(a2 + 248));
    if (*(a1 + 476))
    {
      goto LABEL_8;
    }
  }

  if (*(a1 + 424) != 41)
  {
LABEL_9:
    NodeBitmap = HGGPURenderer::GetNodeBitmap(v5, v9, *(a2 + 1), Buffer, 1u);
    v11 = NodeBitmap;
    if (NodeBitmap && NodeBitmap == Buffer)
    {
      HGRenderer::DotLogInplaceRendering(v5, v9);
    }

    if (!v11 || v11 == Buffer)
    {
      if (!v11)
      {
        (*(**a2 + 144))(*a2, Buffer);
        HGGPURenderer::Clear(v5, *(a2 + 1), v25, v26);
LABEL_17:
        v14 = a2[2];
        v15 = a2[3];
        DOD = HGRenderer::GetDOD(v5, Input);
        v18 = HGRectIntersection(v14, v15, DOD, v17);
        v20 = v19;
        v21 = *(a1 + 416);
        if (HGNode::DoInplaceHardwareBlending(Input, v5, a1, v21))
        {
          if (*(a1 + 476))
          {
            v22 = 41;
          }

          else
          {
            v22 = *(a1 + 424);
          }

          v27 = HGBlendingInfo::Get(v22);
          (*(*Input + 240))(Input);
          (*(*Input + 248))(Input, v27);
          v28.n128_u32[0] = *(a1 + 416);
          (*(*Input + 280))(Input, v28);
          (*(*Input + 264))(Input, a1 + 496);
          *&v37.var0 = v18;
          *&v37.var2 = v20;
          v24 = HGGPURenderer::GetNodeBitmap(v5, Input, v37, Buffer, 1u);
          HGNode::DisableInplaceHardwareBlending(Input);
          HGRenderer::DotLogHWBlending(v5, Input, a1, 1);
          v23 = 0;
          if (!v24)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v23 = v21 != 1.0;
          *&v36.var0 = v18;
          *&v36.var2 = v20;
          v24 = HGGPURenderer::GetNodeBitmap(v5, Input, v36, 0, 1u);
          if (!v24)
          {
            goto LABEL_28;
          }
        }

        if (v24 != Buffer)
        {
          v29 = HGGPURenderer::ConvertToGLTexture(v5, *(a2 + 1), v24);
          (*(*v5 + 144))(v5, Buffer);
          (*(*v5 + 152))(v5, 0, v29, 0, 0);
          if (v23)
          {
            v30 = (*(*a1 + 600))(a1, v5);
            v31 = (*(*v5 + 376))(v5, v30, a1);
            *(a1 + 481) = 1;
            a2[21] = v29;
            (*(*a1 + 488))(a1, a2, 0, v31);
            *(a1 + 481) = 0;
          }

          else
          {
            v31 = 0;
          }

          (*(*a1 + 240))(a1);
          if (*(a1 + 476))
          {
            v32 = 41;
          }

          else
          {
            v32 = *(a1 + 424);
          }

          v33 = HGBlendingInfo::Get(v32);
          (*(*a1 + 248))(a1, v33);
          (*(*a1 + 264))(a1, a1 + 496);
          (*(*a1 + 344))(a1);
          if (v31)
          {
            HGGPURenderer::Rect(v5, v31, *(a2 + 1), 1);
          }

          else
          {
            HGGPURenderer::Copy(v5, *(a2 + 1), 0, v34);
          }

          (*(*a1 + 352))(a1);
          HGNode::DisableInplaceHardwareBlending(a1);
          if (v31)
          {
            (*(*a1 + 496))(a1, a2, 0, v31);
          }

          (*(*v29 + 24))(v29);
          HGRenderer::DotLogHWBlending(v5, Input, a1, 0);
LABEL_40:
          (*(*v24 + 24))(v24);
          return Buffer;
        }

LABEL_28:
        if (!v24)
        {
          return Buffer;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v12 = HGGPURenderer::ConvertToGLTexture(v5, *(a2 + 1), v11);
      (*(*v5 + 144))(v5, Buffer);
      (*(*v5 + 152))(v5, 0, v12, 0, 0);
      HGGPURenderer::Copy(v5, *(a2 + 1), 0, v13);
      (*(*v5 + 152))(v5, 0, 0, 0, 0);
      (*(*v12 + 24))(v12);
    }

    (*(*v11 + 24))(v11);
    goto LABEL_17;
  }

LABEL_8:
  if (!HGHWBlendFlipped::RenderSubPages(a1, a2))
  {
    goto LABEL_9;
  }

  return Buffer;
}

char *HGHWBlendFlipped::RenderPageHWBlending<(HGGPURenderAPI)1>(uint64_t a1, void *a2)
{
  v5 = *a2;
  Buffer = a2[1];
  v6 = (Buffer + 16);
  if (!Buffer)
  {
    v6 = (a2 + 4);
  }

  v7 = *v6;
  Input = HGRenderer::GetInput(*a2, a1, *(a1 + 432));
  v9 = HGRenderer::GetInput(v5, a1, *(a1 + 428));
  if (Buffer)
  {
    (*(*Buffer + 16))(Buffer);
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(v5, *(a2 + 1), v7, 1, (*(a1 + 16) >> 12) & 1, *(a2 + 248));
  }

  NodeBitmap = HGGPURenderer::GetNodeBitmap(v5, v9, *(a2 + 1), Buffer, 1u);
  v12 = NodeBitmap;
  if (NodeBitmap == Buffer && NodeBitmap != 0)
  {
    HGRenderer::DotLogInplaceRendering(v5, v9);
  }

  if (v12)
  {
    v14 = v12 == Buffer;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (!v12)
    {
      HGGPURenderer::ClearMetal(v5, Buffer, *(a2 + 1), v11);
      goto LABEL_19;
    }
  }

  else
  {
    v15 = HGGPURenderer::ConvertToMetalTexture(v5, *(a2 + 1), v12);
    HGGPURenderer::CopyMetal(v5, Buffer, *(a2 + 1), v15);
    (*(*v15 + 24))(v15);
  }

  (*(*v12 + 24))(v12);
LABEL_19:
  v16 = a2[2];
  v17 = a2[3];
  DOD = HGRenderer::GetDOD(v5, Input);
  v20 = HGRectIntersection(v16, v17, DOD, v19);
  v22 = v21;
  v23 = *(a1 + 416);
  if (HGNode::DoInplaceHardwareBlending(Input, v5, a1, v23))
  {
    v24 = HGBlendingInfo::Get(*(a1 + 424));
    (*(*Input + 240))(Input);
    (*(*Input + 248))(Input, v24);
    v25.n128_u32[0] = *(a1 + 416);
    (*(*Input + 280))(Input, v25);
    (*(*Input + 264))(Input, a1 + 496);
    *&v43.var0 = v20;
    *&v43.var2 = v22;
    v26 = HGGPURenderer::GetNodeBitmap(v5, Input, v43, Buffer, 1u);
    HGNode::DisableInplaceHardwareBlending(Input);
    HGRenderer::DotLogHWBlending(v5, Input, a1, 1);
    v27 = 0;
    if (!v26)
    {
LABEL_28:
      if (!v26)
      {
        return Buffer;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v27 = v23 != 1.0;
    *&v44.var0 = v20;
    *&v44.var2 = v22;
    v26 = HGGPURenderer::GetNodeBitmap(v5, Input, v44, 0, 1u);
    if (!v26)
    {
      goto LABEL_28;
    }
  }

  if (v26 == Buffer)
  {
    goto LABEL_28;
  }

  (*(*v5 + 144))(v5, 0);
  v28 = HGGPURenderer::ConvertToMetalTexture(v5, *(a2 + 1), v26);
  if (v27)
  {
    v29 = (*(*a1 + 608))(a1, v5);
    v40 = v28;
    if (v29 && (v30 = (*(**a2 + 376))(*a2, v29, a1)) != 0)
    {
    }

    else
    {
      v31 = 0;
    }

    v34 = (*(*v5 + 128))(v5, 46);
    if (v31)
    {
      v39 = v34;
      __src = (*(*a1 + 48))(a1);
      v35 = strlen(__src);
      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v36 = v35;
      if (v35 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v35;
      if (v35)
      {
        memmove(&__dst, __src, v35);
      }

      __dst.__r_.__value_.__s.__data_[v36] = 0;
      HGMetalHandler::SetDebugLabel(v31, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      HGMetalHandler::EnableBlending(v31);
      v37 = HGBlendingInfo::Get(*(a1 + 424));
      HGMetalHandler::SetBlendingInfo(v31, v37);
      HGMetalHandler::SetBlendingColor(v31, (a1 + 496));
      (*(v31->__r_.__value_.__r.__words[0] + 136))(v31, 0, *(a1 + 416), *(a1 + 416), *(a1 + 416), *(a1 + 416));
      HGMetalHandler::BindBuffer(v31, Buffer);
      HGMetalHandler::BindTexture(v31, 0, v40);
      *&v42.var0 = v20;
      *&v42.var2 = v22;
      HGMetalHandler::InitTextureUnit(v31, v42, 0);
      HGHandler::TexCoord(v31, 0, 0, 0, 0);
      (*(v31->__r_.__value_.__r.__words[0] + 72))(v31, 0, 0);
      (*(v31->__r_.__value_.__r.__words[0] + 48))(v31, 0, 0);
      if (!v39)
      {
        (*(v31->__r_.__value_.__r.__words[0] + 168))(v31);
      }

      (*(v31->__r_.__value_.__r.__words[0] + 40))(v31);
      (*(v31->__r_.__value_.__r.__words[0] + 192))(v31, v20, v22, 1);
    }

    (*(*a1 + 496))(a1, a2, 0, v31);
    v28 = v40;
    if (!v40)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v32 = HGBlendingInfo::Get(*(a1 + 424));
  *&v45.var0 = v20;
  *&v45.var2 = v22;
  HGGPURenderer::CopyMetal(v5, Buffer, v45, v28, v32, (a1 + 496), 1);
  if (v28)
  {
LABEL_31:
    (*(*v28 + 24))(v28);
  }

LABEL_32:
  HGRenderer::DotLogHWBlending(v5, Input, a1, 0);
LABEL_33:
  (*(*v26 + 24))(v26);
  return Buffer;
}

void sub_25FC12734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double HGShaderBinding::reset(HGShaderBinding *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t HGLimits::isarb(HGLimits *this)
{
  if ((*this & 0xFF00u) - 768 >= 0x101)
  {
    return 0;
  }

  else
  {
    return *this & 0xF0000;
  }
}

uint64_t HGLimits::isarbfp(HGLimits *this)
{
  v1 = *this & 0xFFFFF;
  if (v1 - 394000 >= 0x131)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t HGLimits::isglfs(HGLimits *this)
{
  v1 = *this & 0xFFFFF;
  if (v1 - 394768 >= 0x11)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t HGLimits::ismetal(HGLimits *this)
{
  if ((*this & 0xFFFFF) == 0x60B10)
  {
    return 396048;
  }

  else
  {
    return 0;
  }
}

uint64_t HGLimits::setnormalized(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 0x800000;
  }

  else
  {
    v2 = 0;
  }

  *(this + 4) = *(this + 4) & 0xFF7FFFFF | v2;
  return this;
}

unsigned __int8 *HGString::target(HGString *this, const char *a2)
{
  v2 = a2;
  v6 = 0;
  result = header(this, &v6);
  if (result)
  {
    if (v2)
    {
      if (!strncmp(this + 33, "OPTION NV_fragment_program; \n", 0x1DuLL))
      {
        return 394256;
      }

      if (!strncmp(this + 33, "OPTION NV_fragment_program2;\n", 0x1DuLL))
      {
        return 394272;
      }

      if (!strncmp(this + 33, "OPTION NV_vertex_program2;  \n", 0x1DuLL))
      {
        return 328736;
      }

      if (!strncmp(this + 33, "OPTION NV_vertex_program3;  \n", 0x1DuLL))
      {
        return 328752;
      }
    }

    return v6;
  }

  return result;
}

unsigned __int8 *header(const char *__s1, unsigned int *a2)
{
  v2 = *__s1;
  if (!*__s1)
  {
    return 0;
  }

  v3 = __s1;
  if (v2 != 33 && v2 != 47)
  {
LABEL_22:
    if ((v2 - 33) >= 0xFFFFFFE0)
    {
      do
      {
        v8 = *++v3;
        v2 = v8;
      }

      while ((v8 - 33) > 0xFFFFFFDF);
    }

    if (v2 == 35)
    {
      v9 = v3;
      while (1)
      {
        v10 = *++v9;
        v2 = v10;
        if (!v10)
        {
          return 0;
        }

        v11 = *v3;
        v3 = v9;
        if (v11 == 10)
        {
          v3 = v9;
          goto LABEL_22;
        }
      }
    }

    if (!v2)
    {
      return 0;
    }
  }

  if (v2 == 47)
  {
    v4 = a2;
    v5 = (v3 + 6);
    if (!strncmp(v3, "//GLfs", 6uLL))
    {
      v7 = 0;
      v6 = 394752;
      goto LABEL_50;
    }

    if (!strncmp(v3, "//GLvs", 6uLL))
    {
      v7 = 0;
      v6 = 329216;
      goto LABEL_50;
    }

    if (!strncmp(v3, "//GLps", 6uLL))
    {
      v7 = 0;
      v6 = 132608;
      goto LABEL_50;
    }

    if (!strncmp(v3, "//GLus", 6uLL))
    {
      v7 = 0;
      v6 = 460288;
      goto LABEL_50;
    }

    if (!strncmp(v3, "//CGfs", 6uLL))
    {
      v7 = 0;
      v6 = 395008;
    }

    else
    {
      if (strncmp(v3, "//CGvs", 6uLL))
      {
        if (!strncmp(v3, "//Metal", 7uLL))
        {
          v7 = 0;
          v5 = (v3 + 7);
          v6 = 396032;
          goto LABEL_50;
        }

        return 0;
      }

      v7 = 0;
      v6 = 329472;
    }
  }

  else
  {
    if (v2 != 33)
    {
      return 0;
    }

    v4 = a2;
    v5 = (v3 + 7);
    if (!strncmp(v3, "!!ARBfp", 7uLL))
    {
      v7 = 0;
      v6 = 393984;
      goto LABEL_50;
    }

    if (!strncmp(v3, "!!NVfp", 6uLL))
    {
      v7 = 0;
      v6 = 394240;
      goto LABEL_49;
    }

    v6 = 328704;
    if (!strncmp(v3, "!!ARBvp", 7uLL))
    {
      v7 = 0;
      v6 = 328448;
      goto LABEL_50;
    }

    if (!strncmp(v3, "!!NVvp", 6uLL))
    {
      v7 = 0;
      goto LABEL_49;
    }

    if (!strncmp(v3, "!!NVgp", 6uLL))
    {
      v7 = 0;
      v6 = 197632;
      goto LABEL_49;
    }

    if (!strncmp(v3, "!!VP", 4uLL))
    {
      v7 = 0;
      v5 = (v3 + 4);
    }

    else if (!strncmp(v3, "!!FP", 4uLL))
    {
      v6 = 0;
      v7 = 1;
      v5 = (v3 + 4);
    }

    else if (!strncmp(v3, "!!VSP", 5uLL))
    {
      v7 = 0;
      v5 = (v3 + 5);
      v6 = 263168;
    }

    else
    {
      if (!strncmp(v3, "!!HGfp", 6uLL))
      {
        v7 = 0;
        v6 = 394496;
        goto LABEL_49;
      }

      if (!strncmp(v3, "!!HGvp", 6uLL))
      {
        v7 = 0;
        v6 = 328960;
        goto LABEL_49;
      }

      if (!strncmp(v3, "!!CIfp", 6uLL))
      {
        v7 = 0;
        v6 = 393728;
        goto LABEL_49;
      }

      if (strncmp(v3, "!!SSEfp", 7uLL))
      {
        if (!strncmp(v3, "!!CIsw", 6uLL))
        {
          v7 = 0;
          v6 = 17170944;
          goto LABEL_49;
        }

        if (!strncmp(v3, "!!CIvp", 6uLL))
        {
          v7 = 0;
          v6 = 328192;
          goto LABEL_49;
        }

        if (!strncmp(v3, "!!CIpp", 6uLL))
        {
          v7 = 0;
          v6 = 66048;
LABEL_49:
          v5 = (v3 + 6);
          goto LABEL_50;
        }

        return 0;
      }

      v7 = 0;
      v6 = 69599744;
    }
  }

LABEL_50:
  *v4 = v6;
  v13 = *v5;
  if ((v13 - 58) < 0xFFFFFFF6)
  {
    v14 = 0;
    goto LABEL_52;
  }

  v26 = 0;
  v14 = v5 + 1;
  do
  {
    v26 = v13 + 10 * v26 - 48;
    v27 = *v14++;
    v13 = v27;
  }

  while ((v27 - 58) > 0xFFFFFFF5);
  if (v7)
  {
    v6 = 0;
    if (v13 != 46)
    {
      goto LABEL_83;
    }

LABEL_86:
    v28 = *v14;
    if ((v28 - 58) >= 0xFFFFFFF6)
    {
      v29 = 0;
      do
      {
        v29 = v28 + 10 * v29 - 48;
        v30 = *++v14;
        v28 = v30;
      }

      while ((v30 - 58) > 0xFFFFFFF5);
      if (v6)
      {
        v6 += v29;
        *v4 = v6;
        if (v6 > 0xFF)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      v14 = 0;
      if (v6 > 0xFF)
      {
        goto LABEL_52;
      }
    }

LABEL_93:
    *v4 = 394240;
    while (1)
    {
      do
      {
LABEL_95:
        result = v14;
        v31 = v14 + 1;
        v21 = *v14++;
      }

      while ((v21 - 33) >= 0xFFFFFFE0);
      if (v21 != 47)
      {
        goto LABEL_109;
      }

      v32 = *v31;
      if (v32 == 42)
      {
        v14 = result + 2;
        if (result[2])
        {
          do
          {
            if (*(v31 - 1) == 42 && *v31 == 47)
            {
              break;
            }

            v35 = v31[2];
            ++v31;
          }

          while (v35);
          v14 = v31 + 1;
        }
      }

      else
      {
        if (v32 != 47)
        {
          return result;
        }

        v33 = result + 2;
        while (*v33)
        {
          v34 = *(v33 - 1);
          v14 = v33++;
          if (v34 == 10)
          {
            goto LABEL_95;
          }
        }

        v14 = v33;
      }
    }
  }

  v6 += 16 * v26;
  *v4 = v6;
  if (*(v14 - 1) == 46)
  {
    goto LABEL_86;
  }

LABEL_83:
  --v14;
  if (v6 <= 0xFF)
  {
    goto LABEL_93;
  }

LABEL_52:
  if ((v6 & 0x600) != 0)
  {
    goto LABEL_95;
  }

  if ((v6 & 0x900) != 0)
  {
    while (1)
    {
      do
      {
LABEL_65:
        result = v14;
        v20 = v14 + 1;
        v21 = *v14++;
      }

      while ((v21 - 33) >= 0xFFFFFFE0);
      if (v21 != 47)
      {
        break;
      }

      v22 = *v20;
      if (v22 == 42)
      {
        v14 = result + 2;
        if (result[2])
        {
          do
          {
            if (*(v20 - 1) == 42 && *v20 == 47)
            {
              break;
            }

            v25 = v20[2];
            ++v20;
          }

          while (v25);
          v14 = v20 + 1;
        }
      }

      else
      {
        if (v22 != 47)
        {
          return result;
        }

        v23 = result + 2;
        while (*v23)
        {
          v24 = *(v23 - 1);
          v14 = v23++;
          if (v24 == 10)
          {
            goto LABEL_65;
          }
        }

        v14 = v23;
      }
    }

LABEL_109:
    if (!v21)
    {
      return 0;
    }

    return result;
  }

  v15 = *v14;
  if (!*v14)
  {
    return 0;
  }

  if ((v15 - 33) >= 0xE0u)
  {
    do
    {
LABEL_56:
      v16 = *++v14;
      v15 = v16;
    }

    while ((v16 - 33) > 0xDFu);
  }

LABEL_57:
  if (v15 == 35)
  {
    v17 = v14;
    while (1)
    {
      v18 = *++v17;
      v15 = v18;
      if (!v18)
      {
        return 0;
      }

      v19 = *v14;
      v14 = v17;
      if (v19 == 10)
      {
        v14 = v17;
        if ((v15 - 33) >= 0xE0u)
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }
    }
  }

  if (v15)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t HGString::isdistilled(HGString *this, const char *a2)
{
  v2 = *this;
  if (v2 != 47 && v2 != 33 || !*(this + 1) || !*(this + 2) || !*(this + 3) || !*(this + 4) || !*(this + 5) || !*(this + 6) || !*(this + 7) || !*(this + 8) || !*(this + 9) || !*(this + 10) || !*(this + 11) || !*(this + 12) || !*(this + 13) || !*(this + 14) || !*(this + 15) || !*(this + 16) || !*(this + 17))
  {
    return 0;
  }

  v30 = *(this + 16);
  if (strncmp(this + 18, "LEN=", 4uLL))
  {
    return 0;
  }

  v8 = *(this + 24);
  if (v8 <= 96)
  {
    v9 = 0;
  }

  else
  {
    v9 = 9;
  }

  v10 = v9 + v8;
  v11 = *(this + 25);
  if (v11 <= 96)
  {
    v12 = 0;
  }

  else
  {
    v12 = 217;
  }

  v13 = ((v11 + v12) << 24) - 805306368;
  v6.i32[0] = *(this + 26);
  v14 = vmovl_s8(v6).u64[0];
  v15.i64[0] = 0x6000000060;
  v15.i64[1] = 0x6000000060;
  v16 = vaddq_s32(vshlq_u32(vaddw_s16((*&vcgtq_s32(vmovl_s16(v14), v15) & __PAIR128__(0xFFFFFFD9FFFFFFD9, 0xFFFFFFD9FFFFFFD9)), v14), xmmword_2603910E0), xmmword_2603910F0);
  v17 = *(this + 30);
  if (v17 <= 96)
  {
    v18 = 0;
  }

  else
  {
    v18 = -39;
  }

  v19 = 16 * (v17 + v18) - 768;
  v20 = *(this + 31);
  if (v20 <= 96)
  {
    v21 = 0;
  }

  else
  {
    v21 = -39;
  }

  v22 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  v23 = v22.i32[0] | v13 | v22.i32[1] | v19 | (v10 << 28) | (v20 + v21 - 48);
  if (!v23 || (v24 = this + v23, !*(this + v23)) && *(v24 - 138) != v30 || ((v25 = v23, v26 = v24, v27 = strncmp(v24 - 136, "MD5=", 4uLL), result = v25, v26 != 132) ? (v28 = v27 == 0) : (v28 = 0), !v28))
  {
    v29 = atomic_load(HGLogger::_enabled);
    if (v29)
    {
      HGLogger::log("mtl_perf_validation", 1, "Helium WARNING -- Shader string has incorrect LEN or missing MD5.\n", v4, v5);
    }

    return 0;
  }

  return result;
}

uint64_t HGString::_distill(HGString *this, char *__s1, unsigned int a3)
{
  v3 = __s1;
  v671 = *MEMORY[0x277D85DE8];
  v662 = 0u;
  v663 = 0u;
  *v660 = 0u;
  v661 = 0u;
  v658 = 0u;
  v659 = 0u;
  *v657 = 0u;
  v5 = *__s1;
  if (*__s1)
  {
    v6 = *__s1;
    v7 = __s1;
    if ((v5 - 33) < 0xFFFFFFE0)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_3:
      v8 = *++v7;
      v6 = v8;
    }

    while ((v8 - 33) > 0xFFFFFFDF);
LABEL_4:
    while (v6 == 35)
    {
      v9 = v7;
      do
      {
        v10 = *++v9;
        v6 = v10;
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *v7;
        v7 = v9;
      }

      while (v11 != 10);
      v7 = v9;
      if ((v6 - 33) >= 0xFFFFFFE0)
      {
        goto LABEL_3;
      }
    }

    if (v6 == 33)
    {
      v664 = 0;
      *&v663 = 0;
      DWORD2(v663) = 0;
      v12 = __s1;
      *(&v661 + 1) = 0;
      *&v662 = 0;
      if ((v5 - 33) < 0xFFFFFFE0)
      {
        goto LABEL_13;
      }

      do
      {
LABEL_12:
        v13 = *++v12;
        v5 = v13;
      }

      while ((v13 - 33) > 0xFFFFFFDF);
LABEL_13:
      while (v5 == 35)
      {
        v14 = v12;
        do
        {
          v15 = *++v14;
          v5 = v15;
          if (!v15)
          {
            goto LABEL_884;
          }

          v16 = *v12;
          v12 = v14;
        }

        while (v16 != 10);
        v12 = v14;
        if ((v5 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_12;
        }
      }

      if (!v5 || (v376 = header(v12, v657)) == 0)
      {
LABEL_884:
        result = 4294967238;
        *(this + 1) = 0;
        *(this + 2) = 0;
        *this = v3;
        v383 = v660[0];
        if (!v660[0])
        {
          return result;
        }

        goto LABEL_885;
      }

      v378 = v376;
      if ((v657[0] & 0xF0000) == 0x50000)
      {
        v380 = 0;
        v382 = 0;
        v657[1] = -1073741824;
        v381 = -939524096;
        v379 = a3;
      }

      else
      {
        v379 = a3;
        if ((v657[0] & 0xF0000) == 0x60000)
        {
          v657[1] = 0;
          v380 = a3;
          v381 = 0x8000000;
          v382 = 255;
        }

        else
        {
          v380 = 0;
          v382 = 0;
          v657[1] = 0;
          v381 = 0x8000000;
        }
      }

      v657[2] = v382;
      v657[3] = v380;
      if (v379 >= 0x100)
      {
        v657[1] = v381;
      }

      v385 = *v376;
      if (v385 == 35)
      {
        while (v385 == 35)
        {
          ++v378;
          do
          {
            v385 = *v378;
            if (!*v378)
            {
              goto LABEL_899;
            }

            v387 = *(v378++ - 1);
          }

          while (v387 != 10);
          --v378;
          if ((v385 - 33) >= 0xFFFFFFE0)
          {
            do
            {
              v386 = *++v378;
              v385 = v386;
            }

            while ((v386 - 33) > 0xFFFFFFDF);
          }
        }
      }

LABEL_899:
      v645 = 0;
      while (2)
      {
        v388 = v378;
        while (1)
        {
          while (1)
          {
            v389 = *v378;
            if (v389 != 35)
            {
              break;
            }

            while (1)
            {
              if ((v389 - 33) >= 0xFFFFFFE0)
              {
                do
                {
                  v390 = *++v378;
                  v389 = v390;
                }

                while ((v390 - 33) > 0xFFFFFFDF);
              }

              if (v389 != 35)
              {
                break;
              }

              v391 = v378;
              do
              {
                v392 = *++v391;
                v389 = v392;
                if (!v392)
                {
                  goto LABEL_915;
                }

                v393 = *v378;
                v378 = v391;
              }

              while (v393 != 10);
              v378 = v391;
            }

            if (!v389)
            {
LABEL_915:
              v378 = 0;
              goto LABEL_916;
            }
          }

          if ((v389 - 58) < 2)
          {
            break;
          }

          if (!*v378)
          {
            goto LABEL_915;
          }

          ++v378;
        }

        v426 = *++v378;
        v425 = v426;
        if (v426)
        {
          if ((v425 - 33) < 0xFFFFFFE0)
          {
            goto LABEL_1018;
          }

          do
          {
LABEL_1017:
            v427 = *++v378;
            v425 = v427;
          }

          while ((v427 - 33) > 0xFFFFFFDF);
LABEL_1018:
          while (v425 == 35)
          {
            ++v378;
            do
            {
              v425 = *v378;
              if (!*v378)
              {
                goto LABEL_916;
              }

              v428 = *(v378++ - 1);
            }

            while (v428 != 10);
            --v378;
            if ((v425 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_1017;
            }
          }
        }

LABEL_916:
        if (v388 == v378)
        {
          goto LABEL_901;
        }

        v394 = 0;
        v395 = *v388;
        v396 = &v658 + 10;
        v653 = &unk_26039121A;
LABEL_920:
        v397 = 0;
        switch(v395)
        {
          case 'A':
            if (strncmp(v388, "ATTRIB", 6uLL))
            {
              v429 = arb::obj_alias(v660, v388, v657);
              goto LABEL_1047;
            }

            if ((v657[0] & 0xF0000) == 0x60000)
            {
              v512 = &fragmentKind;
            }

            else
            {
              v512 = &vertexKind;
            }

            if (arb::obj_decl(v660, v512, (v388 + 6), v394, v657))
            {
              goto LABEL_901;
            }

            result = 4294967243;
            *(this + 1) = 0;
            *(this + 2) = 0;
            *this = v3;
            v383 = v660[0];
            if (v660[0])
            {
              goto LABEL_885;
            }

            return result;
          case 'B':
            if (strncmp(v388, "BUFFER", 6uLL))
            {
              goto LABEL_1258;
            }

            v435 = v388[6];
            v434 = (v388 + 6);
            if (v435 == 52)
            {
              v436 = (v434 + 1);
            }

            else
            {
              v436 = v434;
            }

            if (arb::obj_decl(v660, &bufferKind, v436, v394, v657))
            {
              goto LABEL_901;
            }

            result = 4294967246;
            *(this + 1) = 0;
            *(this + 2) = 0;
            *this = v3;
            v383 = v660[0];
            if (v660[0])
            {
              goto LABEL_885;
            }

            return result;
          case 'C':
            if (strncmp(v388, "CENTROID", 8uLL))
            {
              goto LABEL_1258;
            }

            v398 = v388[8];
            v388 += 8;
            v395 = v398;
            if (!v398)
            {
              goto LABEL_919;
            }

            if ((v395 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_924;
            }

            while (1)
            {
              do
              {
                if (v395 != 35)
                {
                  goto LABEL_919;
                }

                ++v388;
                do
                {
                  v395 = *v388;
                  if (!*v388)
                  {
                    goto LABEL_919;
                  }

                  v400 = *(v388++ - 1);
                }

                while (v400 != 10);
                --v388;
              }

              while ((v395 - 33) < 0xFFFFFFE0);
              do
              {
LABEL_924:
                v399 = *++v388;
                v395 = v399;
              }

              while ((v399 - 33) > 0xFFFFFFDF);
            }

          case 'D':
            goto LABEL_1254;
          case 'E':
            if (!strncmp(v388, "ENDLOOP", 7uLL) || !strncmp(v388, "ENDREP", 6uLL))
            {
              --v645;
              goto LABEL_901;
            }

            if (v388[1] != 78 || v388[2] != 68)
            {
              goto LABEL_1258;
            }

            if ((ctype[2 * v388[3]] & 0x40) == 0)
            {
              goto LABEL_1463;
            }

            goto LABEL_901;
          case 'F':
            if (!strncmp(v388, "FLAT", 4uLL))
            {
              v422 = v388[4];
              v388 += 4;
              v395 = v422;
              if (v422)
              {
                if ((v395 - 33) < 0xFFFFFFE0)
                {
                  goto LABEL_1009;
                }

                do
                {
LABEL_1008:
                  v423 = *++v388;
                  v395 = v423;
                }

                while ((v423 - 33) > 0xFFFFFFDF);
LABEL_1009:
                while (v395 == 35)
                {
                  ++v388;
                  do
                  {
                    v395 = *v388;
                    if (!*v388)
                    {
                      goto LABEL_919;
                    }

                    v424 = *(v388++ - 1);
                  }

                  while (v424 != 10);
                  --v388;
                  if ((v395 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_1008;
                  }
                }
              }
            }

            else
            {
              if (strncmp(v388, "FLOAT", 5uLL))
              {
                goto LABEL_1258;
              }

              v414 = v388[5];
              v388 += 5;
              v395 = v414;
              if (v414)
              {
                if ((v395 - 33) < 0xFFFFFFE0)
                {
                  goto LABEL_980;
                }

                do
                {
LABEL_979:
                  v415 = *++v388;
                  v395 = v415;
                }

                while ((v415 - 33) > 0xFFFFFFDF);
LABEL_980:
                while (v395 == 35)
                {
                  ++v388;
                  do
                  {
                    v395 = *v388;
                    if (!*v388)
                    {
                      goto LABEL_919;
                    }

                    v416 = *(v388++ - 1);
                  }

                  while (v416 != 10);
                  --v388;
                  if ((v395 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_979;
                  }
                }
              }
            }

            goto LABEL_919;
          case 'I':
            if (!strncmp(v388, "INTERPOLATE", 0xBuLL))
            {
              goto LABEL_901;
            }

            v404 = v388[1];
            if (v404 != 78)
            {
              if (v404 == 70)
              {
                goto LABEL_901;
              }

              goto LABEL_1258;
            }

            if (v388[2] != 84)
            {
              goto LABEL_1258;
            }

            v405 = v388[3];
            v388 += 3;
            v395 = v405;
            if (v405)
            {
              if ((v395 - 33) < 0xFFFFFFE0)
              {
                goto LABEL_947;
              }

              do
              {
LABEL_946:
                v406 = *++v388;
                v395 = v406;
              }

              while ((v406 - 33) > 0xFFFFFFDF);
LABEL_947:
              while (v395 == 35)
              {
                ++v388;
                do
                {
                  v395 = *v388;
                  if (!*v388)
                  {
                    goto LABEL_1005;
                  }

                  v407 = *(v388++ - 1);
                }

                while (v407 != 10);
                --v388;
                if ((v395 - 33) >= 0xFFFFFFE0)
                {
                  goto LABEL_946;
                }
              }
            }

LABEL_1005:
            v653 = &intKind;
            v396 = &v658 + 12;
            v394 = 3;
            goto LABEL_919;
          case 'K':
            if (v388[1] != 73 || v388[2] != 76)
            {
              goto LABEL_1258;
            }

            v657[1] |= 0x1000000u;
            goto LABEL_1094;
          case 'L':
            if (!strncmp(v388, "LOOP", 4uLL))
            {
              ++v645;
LABEL_1094:
              v397 = 1;
              v450 = *v388;
              if ((ctype[2 * *v388] & 0x40) != 0)
              {
                goto LABEL_1306;
              }

              goto LABEL_1260;
            }

            if (strncmp(v388, "LONG", 4uLL))
            {
              goto LABEL_1258;
            }

            v411 = v388[4];
            v388 += 4;
            v395 = v411;
            if (v411)
            {
              if ((v395 - 33) < 0xFFFFFFE0)
              {
                goto LABEL_969;
              }

              do
              {
LABEL_968:
                v412 = *++v388;
                v395 = v412;
              }

              while ((v412 - 33) > 0xFFFFFFDF);
LABEL_969:
              while (v395 == 35)
              {
                ++v388;
                do
                {
                  v395 = *v388;
                  if (!*v388)
                  {
                    goto LABEL_1000;
                  }

                  v413 = *(v388++ - 1);
                }

                while (v413 != 10);
                --v388;
                if ((v395 - 33) >= 0xFFFFFFE0)
                {
                  goto LABEL_968;
                }
              }
            }

LABEL_1000:
            v421 = v653;
            if ((v394 & 7u) < 3uLL)
            {
              v421 = &longKind;
            }

            v653 = v421;
            if ((v394 & 7u) < 3uLL)
            {
              v396 = &v658 + 11;
              v394 = 2;
            }

            goto LABEL_919;
          case 'M':
            v666 = 0;
            *&__dst = 0;
            v665 = 0;
            v440 = strncmp(v388, "MULA", 4uLL);
            v441 = (v388 + 4);
            if (v440)
            {
              v442 = 0;
            }

            else
            {
              v442 = (v388 + 4);
            }

            *&__s1a = v442;
            if (v440 || (v443 = *v441, (v443 - 33) < 0xFFFFFFE0))
            {
              if (*v378 != 77)
              {
                goto LABEL_1254;
              }

              if (v378[1] != 79)
              {
                goto LABEL_1254;
              }

              if (v378[2] != 86)
              {
                goto LABEL_1254;
              }

              if (v378[3] - 33 < 0xFFFFFFE0)
              {
                goto LABEL_1254;
              }

              if (*v388 != 77)
              {
                goto LABEL_1254;
              }

              if (v388[1] != 85)
              {
                goto LABEL_1254;
              }

              if (v388[2] != 76)
              {
                goto LABEL_1254;
              }

              *&__s1a = v388 + 3;
              if (v388[3] - 33 < 0xFFFFFFE0)
              {
                goto LABEL_1254;
              }

              v444 = *v441;
              if (*v441)
              {
                if ((v444 - 33) < 0xFFFFFFE0)
                {
                  goto LABEL_1072;
                }

                do
                {
LABEL_1071:
                  v445 = *(v441 + 1);
                  v441 = (v441 + 1);
                  v444 = v445;
                }

                while ((v445 - 33) > 0xFFFFFFDF);
LABEL_1072:
                while (v444 == 35)
                {
                  v441 = (v441 + 1);
                  do
                  {
                    v444 = *v441;
                    if (!*v441)
                    {
                      goto LABEL_1331;
                    }

                    v446 = *(v441 - 1);
                    v441 = (v441 + 1);
                  }

                  while (v446 != 10);
                  v441 = (v441 - 1);
                  if ((v444 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_1071;
                  }
                }
              }

LABEL_1331:
              v557 = arb::asymbol(v441, &__dst, &v666, v377);
              v655 = __dst;
              if (v441 != __dst)
              {
                goto LABEL_1254;
              }

              v558 = v557;
              v649 = v666;
              if (&v666[__dst] == v557 || !strncmp(v557 - 4, "xyzw", 4uLL) || !strncmp(v558 - 4, "rgba", 4uLL))
              {
                *&__s1a = v558;
                if (!v558)
                {
                  goto LABEL_1254;
                }

                v560 = *v558;
                if (!*v558)
                {
                  goto LABEL_1254;
                }
              }

              else
              {
                v559 = *(v558 - 3);
                if (v559 == 114)
                {
                  if (*(v558 - 2) != 103 || *(v558 - 1) != 98)
                  {
                    goto LABEL_1254;
                  }
                }

                else if (v559 != 120 || *(v558 - 2) != 121 || *(v558 - 1) != 122)
                {
                  goto LABEL_1254;
                }

                *&__s1a = v558;
                v560 = *v558;
                if (!*v558)
                {
LABEL_1254:
                  if (!v663 || !arb::isunpremult(v660, v388, v378))
                  {
                    goto LABEL_1258;
                  }

LABEL_1256:
                  v397 = 0;
                  v657[1] |= 0x10000000u;
                  *&v663 = 0;
                  v450 = *v388;
                  if ((ctype[2 * *v388] & 0x40) == 0)
                  {
                    goto LABEL_1260;
                  }

                  goto LABEL_1306;
                }
              }

              if ((v560 - 33) < 0xFFFFFFE0)
              {
                goto LABEL_1344;
              }

              do
              {
LABEL_1343:
                v561 = *++v558;
                v560 = v561;
              }

              while ((v561 - 33) > 0xFFFFFFDF);
LABEL_1344:
              while (v560 == 35)
              {
                v562 = v558;
                do
                {
                  v563 = *++v562;
                  v560 = v563;
                  if (!v563)
                  {
                    goto LABEL_1254;
                  }

                  v564 = *v558;
                  v558 = v562;
                }

                while (v564 != 10);
                v558 = v562;
                if ((v560 - 33) >= 0xFFFFFFE0)
                {
                  goto LABEL_1343;
                }
              }

              if (v560 != 44)
              {
                goto LABEL_1254;
              }

              v567 = *(v558 + 1);
              v566 = v558 + 1;
              v565 = v567;
              if (v567)
              {
                if ((v565 - 33) < 0xFFFFFFE0)
                {
                  goto LABEL_1358;
                }

                do
                {
LABEL_1357:
                  v568 = *++v566;
                  v565 = v568;
                }

                while ((v568 - 33) > 0xFFFFFFDF);
LABEL_1358:
                while (v565 == 35)
                {
                  ++v566;
                  do
                  {
                    v565 = *v566;
                    if (!*v566)
                    {
                      goto LABEL_1364;
                    }

                    v569 = *(v566++ - 1);
                  }

                  while (v569 != 10);
                  --v566;
                  if ((v565 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_1357;
                  }
                }
              }

LABEL_1364:
              if (strncmp(v566, v655, v649))
              {
                goto LABEL_1254;
              }

              v570 = &v649[v566];
              v571 = arb::achr(v570, 0x2E);
              if (v571)
              {
                v573 = arb::atok(v571, v572);
                if (strncmp(v573, "xyzw", 4uLL) && strncmp(v573, "rgba", 4uLL))
                {
                  goto LABEL_1254;
                }

                v570 = (v573 + 4);
              }

              v574 = arb::achr(v570, 0x2C);
              if (!v574)
              {
                goto LABEL_1254;
              }

              v575 = v574;
              if (strncmp(v574, v655, v649))
              {
                goto LABEL_1254;
              }

              v576 = arb::achr(&v649[v575], 0x2E);
              *&__s1a = v576;
              if (!v576)
              {
                goto LABEL_1254;
              }

              v577 = *v576;
              if (v577 != 119 && v577 != 97)
              {
                goto LABEL_1254;
              }

              if (!arb::achr((v576 + 1), 0x3B))
              {
                goto LABEL_1254;
              }

              v579 = arb::atok(v378 + 4, v578);
              arb::asymbol(v579, &__s1a, &v665, v580);
              v581 = __s1a;
              v582 = v665;
              v583 = arb::obj_add(v660, __s1a, v665, v657, 1);
              if (!v583)
              {
                goto LABEL_1254;
              }

              if (*(v583 + 5) != &outputKind)
              {
                goto LABEL_1254;
              }

              if (*(v583 + 14))
              {
                goto LABEL_1254;
              }

              v584 = arb::achr(&v582[v581], 0x2C);
              if (!v584)
              {
                goto LABEL_1254;
              }

              v585 = v584;
              if (strncmp(v584, v655, v649) || !arb::achr(&v649[v585], 0x3B))
              {
                goto LABEL_1254;
              }
            }

            else
            {
              while (1)
              {
                if ((v443 - 33) >= 0xFFFFFFE0)
                {
                  do
                  {
                    v513 = *(v441 + 1);
                    v441 = (v441 + 1);
                    v443 = v513;
                  }

                  while ((v513 - 33) > 0xFFFFFFDF);
                }

                if (v443 != 35)
                {
                  break;
                }

                v441 = (v441 + 1);
                do
                {
                  v443 = *v441;
                  if (!*v441)
                  {
                    goto LABEL_1253;
                  }

                  v514 = *(v441 - 1);
                  v441 = (v441 + 1);
                }

                while (v514 != 10);
                v441 = (v441 - 1);
              }

LABEL_1253:
              v515 = arb::asymbol(v441, &__dst, &v666, v377);
              v516 = __dst;
              if (v441 != __dst)
              {
                goto LABEL_1254;
              }

              v654 = v666;
              v540 = v515;
              if (&v666[__dst] != v515)
              {
                v648 = (v515 - 4);
                if (strncmp(v515 - 4, "xyzw", 4uLL))
                {
                  if (strncmp(v648, "rgba", 4uLL))
                  {
                    goto LABEL_1254;
                  }
                }
              }

              if (!v540)
              {
                goto LABEL_1254;
              }

              v541 = arb::obj_add(v660, v516, v654, v657, 1);
              if (!v541 || *(v541 + 5) != &outputKind || *(v541 + 14))
              {
                goto LABEL_1254;
              }
            }

            v397 = 0;
            *(&v661 + 1) = v388;
            v657[1] |= 0x20000000u;
            v450 = *v388;
            if ((ctype[2 * *v388] & 0x40) == 0)
            {
              goto LABEL_1260;
            }

            goto LABEL_1306;
          case 'O':
            v430 = (v388 + 6);
            if (!strncmp(v388, "OUTPUT", 6uLL))
            {
              if (arb::obj_decl(v660, &outputKind, (v388 + 6), v394, v657))
              {
                goto LABEL_901;
              }

              result = 4294967245;
              *(this + 1) = 0;
              *(this + 2) = 0;
              *this = v3;
              v383 = v660[0];
              if (!v660[0])
              {
                return result;
              }

LABEL_885:
              v384 = result;
              free(v383);
              return v384;
            }

            if (strncmp(v388, "OPTION", 6uLL))
            {
              goto LABEL_1258;
            }

            v431 = *v430;
            if (*v430)
            {
              if ((v431 - 33) < 0xFFFFFFE0)
              {
                goto LABEL_1033;
              }

              do
              {
LABEL_1032:
                v432 = *++v430;
                v431 = v432;
              }

              while ((v432 - 33) > 0xFFFFFFDF);
LABEL_1033:
              while (v431 == 35)
              {
                ++v430;
                do
                {
                  v431 = *v430;
                  if (!*v430)
                  {
                    goto LABEL_1245;
                  }

                  v433 = *(v430++ - 1);
                }

                while (v433 != 10);
                --v430;
                if ((v431 - 33) >= 0xFFFFFFE0)
                {
                  goto LABEL_1032;
                }
              }
            }

LABEL_1245:
            if (!strncmp(v430, "NV_fragment_program", 0x13uLL))
            {
              v529 = v430[19];
              v528 = v430 + 19;
              v527 = v529;
              v530 = v529 - 58;
              if ((v529 - 58) >= 0xFFFFFFF6)
              {
                v531 = 0;
                do
                {
                  v531 = v527 + 10 * v531 - 48;
                  v532 = *++v528;
                  v527 = v532;
                }

                while ((v532 - 58) > 0xFFFFFFF5);
                v664 = v531;
                v533 = *v528;
                if (*v528)
                {
                  if ((v533 - 33) < 0xFFFFFFE0)
                  {
                    goto LABEL_1288;
                  }

                  do
                  {
LABEL_1287:
                    v534 = *++v528;
                    v533 = v534;
                  }

                  while ((v534 - 33) > 0xFFFFFFDF);
LABEL_1288:
                  while (v533 == 35)
                  {
                    v535 = v528;
                    do
                    {
                      v536 = *++v535;
                      v533 = v536;
                      if (!v536)
                      {
                        goto LABEL_1294;
                      }

                      v537 = *v528;
                      v528 = v535;
                    }

                    while (v537 != 10);
                    v528 = v535;
                    if ((v533 - 33) >= 0xFFFFFFE0)
                    {
                      goto LABEL_1287;
                    }
                  }
                }
              }

LABEL_1294:
              v538 = __CFADD__(v530, 10);
              v539 = 394256;
              if (v538)
              {
                v539 = 16 * v664 + 394240;
              }

              v657[0] = v539;
              goto LABEL_901;
            }

            if (!strncmp(v430, "ARB_precision_hint_fastest", 0x1AuLL))
            {
              v657[1] = v657[1] & 0x3FFFFFFF | 0x40000000;
              goto LABEL_901;
            }

            if (!strncmp(v430, "ARB_precision_hint_nicest", 0x19uLL))
            {
              v657[1] |= 0x80000000;
              goto LABEL_901;
            }

            if (strncmp(v430, "ARB_draw_buffers", 0x10uLL) && strncmp(v430, "ATI_draw_buffers", 0x10uLL))
            {
              if (!strncmp(v430, "NV_vertex_program", 0x11uLL))
              {
                v547 = v430[17];
                v546 = v430 + 17;
                v545 = v547;
                v548 = v547 - 58;
                if ((v547 - 58) >= 0xFFFFFFF6)
                {
                  v549 = 0;
                  do
                  {
                    v549 = v545 + 10 * v549 - 48;
                    v550 = *++v546;
                    v545 = v550;
                  }

                  while ((v550 - 58) > 0xFFFFFFF5);
                  v664 = v549;
                  v551 = *v546;
                  if (*v546)
                  {
                    if ((v551 - 33) < 0xFFFFFFE0)
                    {
                      goto LABEL_1321;
                    }

                    do
                    {
LABEL_1320:
                      v552 = *++v546;
                      v551 = v552;
                    }

                    while ((v552 - 33) > 0xFFFFFFDF);
LABEL_1321:
                    while (v551 == 35)
                    {
                      v553 = v546;
                      do
                      {
                        v554 = *++v553;
                        v551 = v554;
                        if (!v554)
                        {
                          goto LABEL_1327;
                        }

                        v555 = *v546;
                        v546 = v553;
                      }

                      while (v555 != 10);
                      v546 = v553;
                      if ((v551 - 33) >= 0xFFFFFFE0)
                      {
                        goto LABEL_1320;
                      }
                    }
                  }
                }

LABEL_1327:
                if (v548 >= 0xFFFFFFF6)
                {
                  v556 = 16 * v664 + 328704;
                }

                else
                {
                  v556 = 328720;
                }

                v657[0] = v556;
                goto LABEL_901;
              }

              if (strncmp(v430, "ARB_position_invariant", 0x16uLL))
              {
                goto LABEL_1273;
              }

              v657[1] |= 0xC0000000;
            }

LABEL_901:
            if (!v378)
            {
LABEL_1463:
              if (HIDWORD(v663))
              {
                HIDWORD(v663) = WORD4(v658);
                v617 = arb::obj_key(v660, "", 0);
                v618 = WORD4(v658);
                ++WORD4(v658);
                v619 = v660[0] + 88 * v617;
                *(v619 + 5) = &unk_26039121A;
                *(v619 + 6) = 1;
                *(v619 + 14) = v618;
                *(v619 + 9) = 0;
                *(v619 + 10) = 0;
                *(v619 + 8) = 0;
              }

              v620 = v657[1];
              v657[3] = (v657[3] & LOBYTE(v657[1]));
              v621.i32[0] = -256;
              v621.i32[1] = LOBYTE(v657[1]);
              *&v657[1] = vand_s8(*&v657[1], v621);
              if ((v657[3] & 1) == 0)
              {
                v657[1] = v620 & 0xEFFFFF00;
                *&v662 = 0;
              }

              arb::obj_write(v660, this, v657, v3);
              v623 = *this;
              v622 = *(this + 1);
              v624 = HGDigestInit(&__dst);
              if (v622 >= 0x40)
              {
                v627 = v622 >> 6;
                do
                {
                  HGDigestAdd(&__dst, v623);
                  v623 += 16;
                  --v627;
                }

                while (v627);
                v622 &= 0x3Fu;
              }

              if (v622)
              {
                memcpy(&__s1a, v623, v622);
                bzero(&__s1a + v622, 64 - v622);
                HGDigestAdd(&__dst, &__s1a);
              }

              arb::end(this, v657, &__dst, v624, v625, v626);
              result = 0;
              v383 = v660[0];
              if (!v660[0])
              {
                return result;
              }

              goto LABEL_885;
            }

            continue;
          case 'P':
            if (!strncmp(v388, "PARAM", 5uLL))
            {
              if (arb::obj_decl(v660, &paramKind, (v388 + 5), v394, v657))
              {
                goto LABEL_901;
              }

              result = 4294967244;
              *(this + 1) = 0;
              *(this + 2) = 0;
              *this = v3;
              v383 = v660[0];
              if (!v660[0])
              {
                return result;
              }

              goto LABEL_885;
            }

            if (strncmp(v388, "NOPERSPECTIVE", 0xDuLL))
            {
              if (!strncmp(v388, "PRIMITIVE_IN", 0xCuLL))
              {
                goto LABEL_901;
              }

              v437 = v388;
              v438 = "PRIMITIVE_OUT";
              v439 = 13;
LABEL_1100:
              if (!strncmp(v437, v438, v439))
              {
                goto LABEL_901;
              }

LABEL_1258:
              v397 = 0;
LABEL_1259:
              v450 = *v388;
              if ((ctype[2 * *v388] & 0x40) != 0)
              {
LABEL_1306:
                v542 = v388 + 2;
                v543 = v450;
                do
                {
                  v544 = v543;
                  v543 = *(v542 - 1);
                  if (v544 == 95 && v543 == 83)
                  {
                    if (*v542 == 83)
                    {
                      v517 = 1;
LABEL_1261:
                      v518 = (v388 - 1);
                      do
                      {
                        v520 = *++v518;
                        v519 = v520;
                      }

                      while ((ctype[2 * v520] & 0x40) != 0);
                      *&__s1a = 0;
                      *&__dst = 0;
                      if (!v519)
                      {
                        goto LABEL_1274;
                      }

                      if ((v519 - 33) < 0xFFFFFFE0)
                      {
                        goto LABEL_1266;
                      }

                      do
                      {
LABEL_1265:
                        v521 = *++v518;
                        v519 = v521;
                      }

                      while ((v521 - 33) > 0xFFFFFFDF);
LABEL_1266:
                      while (v519 == 35)
                      {
                        v522 = v518;
                        do
                        {
                          v523 = *++v522;
                          v519 = v523;
                          if (!v523)
                          {
                            goto LABEL_1274;
                          }

                          v524 = *v518;
                          v518 = v522;
                        }

                        while (v524 != 10);
                        v518 = v522;
                        if ((v519 - 33) >= 0xFFFFFFE0)
                        {
                          goto LABEL_1265;
                        }
                      }

                      if (v519 == 58)
                      {
LABEL_1273:
                        v657[3] = 0;
                      }

                      else
                      {
LABEL_1274:
                        if (v450 == 83)
                        {
                          v525 = v397;
                        }

                        else
                        {
                          v525 = 1;
                        }

                        if (v525)
                        {
                          v526 = 1;
                          goto LABEL_1382;
                        }

                        v526 = v388[1] != 87 || v388[2] != 90;
                        do
                        {
                          if ((v450 - 33) > 0xFFFFFFDF)
                          {
                            goto LABEL_1386;
                          }

                          v586 = *++v388;
                          v450 = v586;
LABEL_1382:
                          ;
                        }

                        while (v450 != 59);
                        v450 = 59;
LABEL_1386:
                        if ((v450 - 33) < 0xFFFFFFE0)
                        {
                          goto LABEL_1388;
                        }

                        do
                        {
LABEL_1387:
                          v587 = *++v388;
                          v450 = v587;
                        }

                        while ((v587 - 33) > 0xFFFFFFDF);
LABEL_1388:
                        while (v450 == 35)
                        {
                          ++v388;
                          do
                          {
                            v450 = *v388;
                            if (!*v388)
                            {
                              goto LABEL_1394;
                            }

                            v588 = *(v388++ - 1);
                          }

                          while (v588 != 10);
                          --v388;
                          if ((v450 - 33) >= 0xFFFFFFE0)
                          {
                            goto LABEL_1387;
                          }
                        }

LABEL_1394:
                        v650 = v517;
                        if ((v397 & 1) != 0 || (v589 = arb::asymbol(v388, &__s1a, &__dst, v377)) == 0)
                        {
                          v591 = 0;
                          v656 = 0;
                        }

                        else
                        {
                          v590 = *v589;
                          if (*v589 && v590 != 44)
                          {
                            do
                            {
                              if (v590 == 35)
                              {
                                while (v590 == 35)
                                {
                                  ++v589;
                                  do
                                  {
                                    v590 = *v589;
                                    if (!*v589)
                                    {
                                      goto LABEL_1398;
                                    }

                                    v614 = *(v589++ - 1);
                                  }

                                  while (v614 != 10);
                                  --v589;
                                  if ((v590 - 33) >= 0xFFFFFFE0)
                                  {
                                    do
                                    {
                                      v613 = *++v589;
                                      v590 = v613;
                                    }

                                    while ((v613 - 33) > 0xFFFFFFDF);
                                  }
                                }
                              }

                              else
                              {
                                v615 = *++v589;
                                v590 = v615;
                              }
                            }

                            while (v590 != 44 && v590 != 0);
                          }

LABEL_1398:
                          v591 = __s1a;
                          v592 = v589[1];
                          v388 = (v589 + 1);
                          v656 = __dst;
                          if (v589[1])
                          {
                            if ((v592 - 33) < 0xFFFFFFE0)
                            {
                              goto LABEL_1401;
                            }

                            do
                            {
LABEL_1400:
                              v593 = *++v388;
                              v592 = v593;
                            }

                            while ((v593 - 33) > 0xFFFFFFDF);
LABEL_1401:
                            while (v592 == 35)
                            {
                              ++v388;
                              do
                              {
                                v592 = *v388;
                                if (!*v388)
                                {
                                  goto LABEL_1408;
                                }

                                v594 = *(v388++ - 1);
                              }

                              while (v594 != 10);
                              --v388;
                              if ((v592 - 33) >= 0xFFFFFFE0)
                              {
                                goto LABEL_1400;
                              }
                            }
                          }
                        }

LABEL_1408:
                        v595 = arb::asymbol(v388, &__s1a, &__dst, v377);
                        if (v595)
                        {
                          if (v526)
                          {
                            while (1)
                            {
                              v596 = v595;
                              v597 = arb::obj_add(v660, __s1a, __dst, v657, 1);
                              v598 = v596;
                              if (v597 && *(v597 + 5) == v663 && *(v597 + 14) == DWORD2(v663))
                              {
                                *&v663 = 0;
                              }

                              v599 = *v596;
                              if (!*v596)
                              {
                                goto LABEL_1438;
                              }

LABEL_1415:
                              if ((v599 - 33) >= 0xFFFFFFE0)
                              {
                                do
                                {
                                  v600 = *++v598;
                                  v599 = v600;
                                }

                                while ((v600 - 33) > 0xFFFFFFDF);
                              }

                              if (v599 == 35)
                              {
                                break;
                              }

                              if (v599 == 44)
                              {
                                v606 = v598[1];
                                v604 = (v598 + 1);
                                v605 = v606;
                                if (v606)
                                {
                                  if ((v605 - 33) < 0xFFFFFFE0)
                                  {
                                    goto LABEL_1426;
                                  }

                                  do
                                  {
LABEL_1425:
                                    v607 = *(v604 + 1);
                                    v604 = (v604 + 1);
                                    v605 = v607;
                                  }

                                  while ((v607 - 33) > 0xFFFFFFDF);
LABEL_1426:
                                  while (v605 == 35)
                                  {
                                    v604 = (v604 + 1);
                                    do
                                    {
                                      v605 = *v604;
                                      if (!*v604)
                                      {
                                        goto LABEL_1432;
                                      }

                                      v608 = *(v604 - 1);
                                      v604 = (v604 + 1);
                                    }

                                    while (v608 != 10);
                                    v604 = (v604 - 1);
                                    if ((v605 - 33) >= 0xFFFFFFE0)
                                    {
                                      goto LABEL_1425;
                                    }
                                  }
                                }

LABEL_1432:
                                v595 = arb::asymbol(v604, &__s1a, &__dst, v377);
                                if (v595)
                                {
                                  continue;
                                }
                              }

                              goto LABEL_1438;
                            }

                            v601 = v598;
                            while (1)
                            {
                              v602 = *++v598;
                              v599 = v602;
                              if (!v602)
                              {
                                break;
                              }

                              v603 = *v601;
                              v601 = v598;
                              if (v603 == 10)
                              {
                                goto LABEL_1415;
                              }
                            }
                          }

                          else
                          {
                            v609 = arb::obj_add(v660, __s1a, __dst, v657, 1);
                            if (v609 && *(v609 + 5) == v663 && *(v609 + 14) == DWORD2(v663))
                            {
                              *&v663 = 0;
                            }
                          }
                        }

LABEL_1438:
                        if (v591)
                        {
                          v610 = arb::obj_add(v660, v591, v656, v657, 1);
                          if (v610)
                          {
                            v611 = *(v610 + 5);
                            if (v611 == v663 && *(v610 + 14) == DWORD2(v663))
                            {
                              *&v663 = 0;
                            }

                            v156 = v611 == &outputKind;
                            v612 = v650 ^ 1;
                            if (!v156)
                            {
                              v612 = 1;
                            }

                            if ((v612 & 1) == 0)
                            {
                              HIDWORD(v663) = 1;
                            }
                          }
                        }
                      }

                      goto LABEL_901;
                    }

                    v543 = 83;
                  }

                  ++v542;
                }

                while ((ctype[2 * v543] & 0x40) != 0);
              }

LABEL_1260:
              v517 = 0;
              goto LABEL_1261;
            }

            v408 = v388[13];
            v388 += 13;
            v395 = v408;
            if (v408)
            {
              if ((v395 - 33) < 0xFFFFFFE0)
              {
                goto LABEL_958;
              }

              do
              {
LABEL_957:
                v409 = *++v388;
                v395 = v409;
              }

              while ((v409 - 33) > 0xFFFFFFDF);
LABEL_958:
              while (v395 == 35)
              {
                ++v388;
                do
                {
                  v395 = *v388;
                  if (!*v388)
                  {
                    goto LABEL_919;
                  }

                  v410 = *(v388++ - 1);
                }

                while (v410 != 10);
                --v388;
                if ((v395 - 33) >= 0xFFFFFFE0)
                {
                  goto LABEL_957;
                }
              }
            }

LABEL_919:
            if (v388 == v378)
            {
              goto LABEL_901;
            }

            goto LABEL_920;
          case 'R':
            if (!v663)
            {
              goto LABEL_1081;
            }

            if (arb::isunpremult(v660, v388, v378))
            {
              goto LABEL_1256;
            }

            if (*v388 != 82)
            {
              goto LABEL_1258;
            }

LABEL_1081:
            if (v388[1] != 69)
            {
              goto LABEL_1258;
            }

            v447 = v388[2];
            if (v447 == 84)
            {
              goto LABEL_901;
            }

            v448 = v447 == 80;
            v449 = v645;
            if (v448)
            {
              v449 = v645 + 1;
            }

            v645 = v449;
            v397 = v448;
            v450 = *v388;
            if ((ctype[2 * *v388] & 0x40) != 0)
            {
              goto LABEL_1306;
            }

            goto LABEL_1260;
          case 'S':
            if (strncmp(v388, "SHORT", 5uLL))
            {
              goto LABEL_1258;
            }

            v417 = v388[5];
            v388 += 5;
            v395 = v417;
            v418 = v653;
            if ((v394 & 7u) < 3uLL)
            {
              v418 = &shortKind;
            }

            v653 = v418;
            if ((v394 & 7u) < 3uLL)
            {
              v396 = &v658 + 10;
            }

            v394 |= (v394 & 7u) < 3uLL;
            if (!v395)
            {
              goto LABEL_919;
            }

            if ((v395 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_993;
            }

LABEL_994:
            if (v395 == 35)
            {
              ++v388;
              while (1)
              {
                v395 = *v388;
                if (!*v388)
                {
                  break;
                }

                v420 = *(v388++ - 1);
                if (v420 == 10)
                {
                  --v388;
                  if ((v395 - 33) >= 0xFFFFFFE0)
                  {
                    do
                    {
LABEL_993:
                      v419 = *++v388;
                      v395 = v419;
                    }

                    while ((v419 - 33) > 0xFFFFFFDF);
                  }

                  goto LABEL_994;
                }
              }
            }

            goto LABEL_919;
          case 'T':
            if (strncmp(v388, "TEMP", 4uLL))
            {
              v429 = arb::obj_texop(v660, &v664, v388, (v645 == 0), v657);
LABEL_1047:
              if (v429)
              {
                goto LABEL_901;
              }

              goto LABEL_1258;
            }

            v453 = v388[4];
            v452 = (v388 + 4);
            v451 = v453;
            if (v453)
            {
              if ((v451 - 33) < 0xFFFFFFE0)
              {
                goto LABEL_1105;
              }

              do
              {
LABEL_1104:
                v454 = *++v452;
                v451 = v454;
              }

              while ((v454 - 33) > 0xFFFFFFDF);
LABEL_1105:
              while (v451 == 35)
              {
                ++v452;
                do
                {
                  v451 = *v452;
                  if (!*v452)
                  {
                    goto LABEL_1111;
                  }

                  v455 = *(v452++ - 1);
                }

                while (v455 != 10);
                --v452;
                if ((v451 - 33) >= 0xFFFFFFE0)
                {
                  goto LABEL_1104;
                }
              }
            }

LABEL_1111:
            v642 = v396;
            break;
          case 'U':
            if (strncmp(v388, "UINT", 4uLL))
            {
              goto LABEL_1258;
            }

            v401 = v388[4];
            v388 += 4;
            v395 = v401;
            if (!v401)
            {
              goto LABEL_918;
            }

            if ((v395 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_934;
            }

LABEL_935:
            if (v395 == 35)
            {
              ++v388;
              while (1)
              {
                v395 = *v388;
                if (!*v388)
                {
                  break;
                }

                v403 = *(v388++ - 1);
                if (v403 == 10)
                {
                  --v388;
                  if ((v395 - 33) >= 0xFFFFFFE0)
                  {
                    do
                    {
LABEL_934:
                      v402 = *++v388;
                      v395 = v402;
                    }

                    while ((v402 - 33) > 0xFFFFFFDF);
                  }

                  goto LABEL_935;
                }
              }
            }

LABEL_918:
            v653 = &uintKind;
            v396 = &v658 + 13;
            v394 = 4;
            goto LABEL_919;
          case 'V':
            v437 = v388;
            v438 = "VERTICES_OUT";
            v439 = 12;
            goto LABEL_1100;
          default:
            goto LABEL_1259;
        }

        break;
      }

      while (1)
      {
LABEL_1112:
        v456 = 0;
        do
        {
          v457 = *(v456 + v452 + 1);
          v456 = (v456 + 1);
        }

        while ((ctype[2 * v457] & 0x40) != 0);
        v647 = v456;
        if (!v457)
        {
          goto LABEL_1146;
        }

        v458 = v456 + v452;
        if ((v457 - 33) < 0xFFFFFFE0)
        {
          goto LABEL_1117;
        }

        do
        {
LABEL_1116:
          v459 = *++v458;
          v457 = v459;
        }

        while ((v459 - 33) > 0xFFFFFFDF);
LABEL_1117:
        while (v457 == 35)
        {
          v460 = v458;
          do
          {
            v461 = *++v460;
            v457 = v461;
            if (!v461)
            {
              goto LABEL_1146;
            }

            v462 = *v458;
            v458 = v460;
          }

          while (v462 != 10);
          v458 = v460;
          if ((v457 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_1116;
          }
        }

        if (v457 != 91)
        {
          goto LABEL_1146;
        }

        v465 = v458[1];
        v464 = v458 + 1;
        LOBYTE(v463) = v465;
        if (!v465)
        {
          goto LABEL_1146;
        }

        if ((v463 - 33) < 0xE0u)
        {
          goto LABEL_1127;
        }

        do
        {
LABEL_1126:
          v466 = *++v464;
          LOBYTE(v463) = v466;
        }

        while ((v466 - 33) > 0xDFu);
LABEL_1127:
        while (v463 == 35)
        {
          v467 = v464;
          v456 = v647;
          do
          {
            v468 = *++v467;
            LOBYTE(v463) = v468;
            if (!v468)
            {
              goto LABEL_1146;
            }

            v469 = *v464;
            v464 = v467;
          }

          while (v469 != 10);
          v464 = v467;
          if ((v463 - 33) >= 0xE0u)
          {
            goto LABEL_1126;
          }
        }

        v456 = v647;
        if ((v463 - 58) < 0xF6u)
        {
          goto LABEL_1146;
        }

        LODWORD(v640) = 0;
        do
        {
          v640 = 10 * v640 + v463 - 48;
          v470 = *++v464;
          v463 = v470;
        }

        while ((v470 - 58) > 0xF5u);
        v456 = v647;
        if (!v463)
        {
          goto LABEL_1146;
        }

        if ((v463 - 33) < 0xE0u)
        {
          goto LABEL_1139;
        }

        do
        {
LABEL_1138:
          v471 = *++v464;
          LOBYTE(v463) = v471;
        }

        while ((v471 - 33) > 0xDFu);
LABEL_1139:
        while (v463 == 35)
        {
          v472 = v464;
          do
          {
            v473 = *++v472;
            LOBYTE(v463) = v473;
            v456 = v647;
            if (!v473)
            {
              goto LABEL_1146;
            }

            v474 = *v464;
            v464 = v472;
          }

          while (v474 != 10);
          v464 = v472;
          if ((v463 - 33) >= 0xE0u)
          {
            goto LABEL_1138;
          }
        }

        v456 = v647;
        if (!v463)
        {
          goto LABEL_1146;
        }

        while (1)
        {
          if ((v463 - 33) >= 0xE0u)
          {
            do
            {
              v495 = *++v464;
              LOBYTE(v463) = v495;
            }

            while ((v495 - 33) > 0xDFu);
          }

          if (v463 != 35)
          {
            break;
          }

          v496 = v464;
          do
          {
            v497 = *++v496;
            LOBYTE(v463) = v497;
            v456 = v647;
            if (!v497)
            {
              goto LABEL_1146;
            }

            v498 = *v464;
            v464 = v496;
          }

          while (v498 != 10);
          v464 = v496;
        }

        v456 = v647;
        if (v463 == 93)
        {
          ptr = v660[0];
          v629 = v660[1];
          v631 = v660[0] + 88 * v660[1];
          if (!v660[1])
          {
            goto LABEL_1204;
          }

          v637 = v660[0];
          v632 = v660[1];
          while (1)
          {
            *&__s1a = v452;
            v630 = v632 >> 1;
            v634 = &v637[88 * (v632 >> 1)];
            v499 = arb::ascan(&__s1a, v647, v634, 1);
            if (!v499)
            {
              break;
            }

            v500 = v631;
            if (v499 <= 0)
            {
              v500 = &v637[88 * (v632 >> 1)];
            }

            v631 = v500;
            if (v499 <= 0)
            {
              v501 = (v632 >> 1);
            }

            else
            {
              v501 = (v632 - (v630 + 1));
            }

            if (v499 > 0)
            {
              v502 = v630 + 1;
            }

            else
            {
              v502 = 0;
            }

            v637 += 88 * v502;
            v632 = v501;
            if (!v501)
            {
              goto LABEL_1204;
            }
          }

          if (!v637)
          {
LABEL_1204:
            if (v629 + 1 <= v661 || (v635 = (v629 & 0xFFFFFFFFFFFFFFF0) + 16, v661 == v635))
            {
              v638 = ptr;
            }

            else
            {
              *&v661 = (v629 & 0xFFFFFFFFFFFFFFF0) + 16;
              v638 = malloc_type_realloc(ptr, 88 * v635, 0x10500400A17BEF8uLL);
              v660[0] = v638;
              v503 = v629;
              if (v629 >= v635)
              {
                v503 = (v629 & 0xFFFFFFFFFFFFFFF0) + 16;
              }

              v629 = v503;
            }

            v636 = 0x2E8BA2E8BA2E8BA3 * ((v631 - ptr) >> 3);
            if (v629 > v636)
            {
              memmove(&v638[8 * ((v631 - ptr) >> 3) + 88], &v638[8 * ((v631 - ptr) >> 3)], 88 * (v629 - v636));
            }

            v660[1] = (v629 + 1);
            v634 = &v638[8 * ((v631 - ptr) >> 3)];
            v504 = v647;
            if (v647)
            {
              v504 = 0;
              v505 = 0;
              do
              {
                v506 = v452[v505];
                if ((v506 - 33) > 0xFFFFFFDF)
                {
                  v507 = &v452[++v505];
                  if (v452[v505] == 35)
                  {
LABEL_1220:
                    v508 = 35;
                    while (v508 == 35)
                    {
                      ++v507;
                      do
                      {
                        v508 = *v507;
                        if (!*v507)
                        {
                          goto LABEL_1214;
                        }

                        v510 = *(v507++ - 1);
                      }

                      while (v510 != 10);
                      --v507;
                      if ((v508 - 33) >= 0xFFFFFFE0)
                      {
                        do
                        {
                          v509 = *++v507;
                          v508 = v509;
                        }

                        while ((v509 - 33) > 0xFFFFFFDF);
                      }
                    }

LABEL_1214:
                    v505 = v507 - v452;
                  }
                }

                else
                {
                  *(v504 + v634) = v506;
                  v504 = (v504 + 1);
                  v507 = &v452[++v505];
                  if (v452[v505] == 35)
                  {
                    goto LABEL_1220;
                  }
                }
              }

              while (v505 < v647);
            }

            *(v504 + v634) = 0;
          }

          v511 = WORD1(v659);
          *(v634 + 5) = &arrayKind;
          *(v634 + 6) = 2;
          *(v634 + 14) = v511;
          *(v634 + 8) = 0;
          *(v634 + 9) = v640;
          *(v634 + 10) = v394;
          WORD1(v659) = v511 + v640;
          v483 = v647 + (v464 + 1);
          v484 = *v483;
          if (!*v483)
          {
            goto LABEL_901;
          }
        }

        else
        {
LABEL_1146:
          v478 = v653 == &shortKind || v653 == &longKind || v653 == &intKind || v653 == &uintKind;
          v479 = arb::obj_key(v660, v452, v456);
          if (v478)
          {
            v480 = 1;
            if (*(v653 + 1))
            {
              v480 = 2;
            }

            v481 = *v642;
            *v642 = v481 + 1;
            v482 = v660[0] + 88 * v479;
            *(v482 + 5) = v653;
            *(v482 + 6) = v480;
            *(v482 + 14) = v481;
            *(v482 + 8) = 0;
            *(v482 + 9) = 0;
            *(v482 + 10) = v394;
            v483 = v647 + v452;
            v484 = *v483;
            if (!*v483)
            {
              goto LABEL_901;
            }
          }

          else
          {
            v485 = WORD4(v658);
            ++WORD4(v658);
            v486 = v660[0] + 88 * v479;
            *(v486 + 5) = &unk_26039121A;
            *(v486 + 6) = 1;
            *(v486 + 14) = v485;
            *(v486 + 8) = 0;
            *(v486 + 9) = 0;
            *(v486 + 10) = v394;
            v653 = &unk_26039121A;
            v483 = v647 + v452;
            v484 = *v483;
            if (!*v483)
            {
              goto LABEL_901;
            }
          }
        }

        if ((v484 - 33) < 0xFFFFFFE0)
        {
          goto LABEL_1166;
        }

        do
        {
LABEL_1165:
          v487 = *++v483;
          v484 = v487;
        }

        while ((v487 - 33) > 0xFFFFFFDF);
LABEL_1166:
        while (v484 == 35)
        {
          v488 = v483;
          do
          {
            v489 = *++v488;
            v484 = v489;
            if (!v489)
            {
              goto LABEL_901;
            }

            v490 = *v483;
            v483 = v488;
          }

          while (v490 != 10);
          v483 = v488;
          if ((v484 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_1165;
          }
        }

        if (v484 != 44)
        {
          goto LABEL_901;
        }

        v492 = v483[1];
        v452 = v483 + 1;
        v491 = v492;
        if (v492)
        {
          if ((v491 - 33) < 0xFFFFFFE0)
          {
            goto LABEL_1176;
          }

          do
          {
LABEL_1175:
            v493 = *++v452;
            v491 = v493;
          }

          while ((v493 - 33) > 0xFFFFFFDF);
LABEL_1176:
          while (v491 == 35)
          {
            ++v452;
            do
            {
              v491 = *v452;
              if (!*v452)
              {
                goto LABEL_1112;
              }

              v494 = *(v452++ - 1);
            }

            while (v494 != 10);
            --v452;
            if ((v491 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_1175;
            }
          }
        }
      }
    }
  }

LABEL_19:
  v17 = header(__s1, v657);
  v18 = v657[0];
  if (v657[0])
  {
    if ((v657[0] & 0xFF00) == 0xB00)
    {
      goto LABEL_21;
    }

    goto LABEL_512;
  }

  v45 = v3;
  do
  {
    while (1)
    {
      while (1)
      {
        do
        {
LABEL_103:
          v46 = v45;
          v48 = (v45 + 1);
          v47 = *v45++;
        }

        while ((v47 - 33) >= 0xFFFFFFE0);
        if (v47 != 47)
        {
          break;
        }

        v49 = *v48;
        if (v49 == 42)
        {
          v45 = v46 + 2;
          if (v46[2])
          {
            do
            {
              if (*(v48 - 1) == 42 && *v48 == 47)
              {
                break;
              }

              v59 = v48[2];
              ++v48;
            }

            while (v59);
            v45 = (v48 + 1);
          }
        }

        else
        {
          if (v49 != 47)
          {
            goto LABEL_113;
          }

          v50 = v46 + 2;
          while (*v50)
          {
            v51 = *(v50 - 1);
            v45 = v50++;
            if (v51 == 10)
            {
              goto LABEL_103;
            }
          }

          v45 = v50;
        }
      }

      if (!v47)
      {
        v18 = 0;
        if (v17)
        {
          goto LABEL_526;
        }

        while (1)
        {
          do
          {
LABEL_541:
            v221 = v3;
            v228 = (v3 + 1);
            v223 = *v3++;
          }

          while ((v223 - 33) >= 0xFFFFFFE0);
          if (v223 != 47)
          {
            goto LABEL_555;
          }

          v229 = *v228;
          if (v229 == 42)
          {
            v3 = v221 + 2;
            if (v221[2])
            {
              do
              {
                if (*(v228 - 1) == 42 && *v228 == 47)
                {
                  break;
                }

                v232 = v228[2];
                ++v228;
              }

              while (v232);
              v3 = (v228 + 1);
            }
          }

          else
          {
            if (v229 != 47)
            {
              goto LABEL_557;
            }

            v230 = v221 + 2;
            while (*v230)
            {
              v231 = *(v230 - 1);
              v3 = v230++;
              if (v231 == 10)
              {
                goto LABEL_541;
              }
            }

            v3 = v230;
          }
        }
      }

LABEL_113:
      if (!strncmp(v46, "vertex ", 7uLL))
      {
        break;
      }

      if (!strncmp(v46, "fragment ", 9uLL))
      {
        v60 = v46 + 8;
        do
        {
          v62 = *++v60;
          v61 = v62;
        }

        while (v62 - 33 > 0xFFFFFFDF);
        if (v61 >= 0x21)
        {
          do
          {
            v63 = *++v60;
          }

          while (v63 > 0x20);
        }

        v45 = v60 - 1;
        do
        {
          v65 = *++v45;
          v64 = v65;
        }

        while (v65 - 33 > 0xFFFFFFDF);
        if (v64 >= 0x21)
        {
          while (v64 != 40)
          {
            v66 = *++v45;
            v64 = v66;
            if (v66 <= 0x20)
            {
              goto LABEL_103;
            }
          }

          v657[0] = 396032;
          goto LABEL_21;
        }
      }

      else if (!strncmp(v46, "kernel ", 7uLL))
      {
        v45 = v46 + 6;
        do
        {
          v67 = *++v45;
        }

        while ((v67 - 33) > 0xFFFFFFDF);
        if (!strncmp(v45, "void", 4uLL))
        {
LABEL_181:
          v657[0] = 2816;
          goto LABEL_21;
        }
      }

      else if (!strncmp(v46, "#include", 8uLL))
      {
        v45 = v46 + 7;
        do
        {
          v69 = *++v45;
        }

        while ((v69 - 33) > 0xFFFFFFDF);
        if (!strncmp(v45, "<metal_common>", 0xEuLL) || !strncmp(v45, "<metal_graphics>", 0x10uLL) || !strncmp(v45, "<metal_matrix>", 0xEuLL) || !strncmp(v45, "<metal_geometric>", 0x11uLL) || !strncmp(v45, "<metal_math>", 0xCuLL) || !strncmp(v45, "<metal_texture>", 0xFuLL) || !strncmp(v45, "<metal_stdlib>", 0xEuLL) || !strncmp(v45, "<metal_integer>", 0xFuLL) || !strncmp(v45, "<metal_relational>", 0x12uLL) || !strncmp(v45, "<metal_compute>", 0xFuLL) || !strncmp(v45, "<metal_pack>", 0xCuLL) || !strncmp(v45, "<metal_atomic>", 0xEuLL))
        {
          goto LABEL_181;
        }
      }

      else if (v47 == 103 && *v48 == 108 && v46[2] == 95)
      {
        v45 = v46 + 3;
        if (!strncmp(v46 + 3, "TextureMatrix", 0xDuLL) || !strncmp(v46 + 3, "TexCoord", 8uLL) || !strncmp(v46 + 3, "MultiTexCoord", 0xDuLL) || !strncmp(v46 + 3, "ModelViewProjectionMatrix", 0x19uLL) || !strncmp(v46 + 3, "Position", 8uLL) || !strncmp(v46 + 3, "Vertex", 6uLL) || !strncmp(v46 + 3, "Normal", 6uLL) || !strncmp(v46 + 3, "FrontFacing", 0xBuLL) || !strncmp(v46 + 3, "FragDepth", 9uLL) || !strncmp(v46 + 3, "FragCoord", 9uLL) || !strncmp(v46 + 3, "FragColor", 9uLL) || !strncmp(v46 + 3, "FragData", 8uLL))
        {
          v18 = 394752;
          v657[0] = 394752;
LABEL_512:
          if (!v17)
          {
            goto LABEL_541;
          }

          while (1)
          {
            do
            {
LABEL_526:
              v221 = v17;
              v222 = v17 + 1;
              v223 = *v17++;
            }

            while ((v223 - 33) >= 0xFFFFFFE0);
            if (v223 != 47)
            {
              break;
            }

            v224 = *v222;
            if (v224 == 42)
            {
              v17 = (v221 + 2);
              if (v221[2])
              {
                do
                {
                  if (*(v222 - 1) == 42 && *v222 == 47)
                  {
                    break;
                  }

                  v227 = v222[2];
                  ++v222;
                }

                while (v227);
                v17 = v222 + 1;
              }
            }

            else
            {
              if (v224 != 47)
              {
                goto LABEL_557;
              }

              v225 = (v221 + 2);
              while (*v225)
              {
                v226 = *(v225 - 1);
                v17 = v225++;
                if (v226 == 10)
                {
                  goto LABEL_526;
                }
              }

              v17 = v225;
            }
          }

LABEL_555:
          if (!v223)
          {
            v221 = 0;
          }

LABEL_557:
          v233 = 0;
          v234 = BYTE10(v659);
          v641 = v657[1];
          v643 = WORD2(v659);
          v652 = WORD3(v658);
          v639 = BYTE8(v659);
          v644 = WORD2(v658);
          v646 = 0;
          v235 = v221;
          while (1)
          {
            while (1)
            {
              v236 = v235;
              while (1)
              {
                do
                {
LABEL_560:
                  v237 = v236;
                  v239 = v236 + 1;
                  v238 = *v236++;
                }

                while ((v238 - 33) >= 0xFFFFFFE0);
                if (v238 != 47)
                {
                  break;
                }

                v240 = *v239;
                if (v240 == 42)
                {
                  v236 = v237 + 2;
                  if (v237[2])
                  {
                    do
                    {
                      if (*(v239 - 1) == 42 && *v239 == 47)
                      {
                        break;
                      }

                      v243 = v239[2];
                      ++v239;
                    }

                    while (v243);
                    v236 = v239 + 1;
                  }
                }

                else
                {
                  if (v240 != 47)
                  {
                    goto LABEL_575;
                  }

                  v241 = v237 + 2;
                  while (*v241)
                  {
                    v242 = *(v241 - 1);
                    v236 = v241++;
                    if (v242 == 10)
                    {
                      goto LABEL_560;
                    }
                  }

                  v236 = v241;
                }
              }

              if (!v238)
              {
                WORD3(v658) = v652 + 4 * (v646 + v233);
                HIDWORD(v659) = 16 * WORD3(v658);
                v306 = v657[0];
                v307 = v657[0] | 0x60600;
                if (v657[0] < 0x100 || (v307 = v657[0], !LOBYTE(v657[0])))
                {
                  if (v307)
                  {
                    v306 = v307;
                  }

                  else
                  {
                    v306 = v307 | 0x10;
                  }

                  v657[0] = v306;
                }

                v309 = *(this + 1);
                v308 = *(this + 2);
                v310 = v309 + 6;
                if ((v306 & 0xFFFFFF00) == 0x50600)
                {
                  if (v308)
                  {
                    if (v310 >= *v308)
                    {
                      v311 = malloc_type_realloc(*(v308 + 16), (v309 + 261) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                      v312 = *(this + 2);
                      v312[2] = v311;
                      *v312 = (v309 + 261) & 0xFFFFFFFFFFFFFF00;
                      *this = v311;
                    }
                  }

                  else
                  {
                    str_alloc(this, v310);
                  }

                  v315 = *this;
                  *(this + 1) += 6;
                  v316 = v315 + v309;
                  v317 = 29558;
                }

                else
                {
                  if (v308)
                  {
                    if (v310 >= *v308)
                    {
                      v313 = malloc_type_realloc(*(v308 + 16), (v309 + 261) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                      v314 = *(this + 2);
                      v314[2] = v313;
                      *v314 = (v309 + 261) & 0xFFFFFFFFFFFFFF00;
                      *this = v313;
                    }
                  }

                  else
                  {
                    str_alloc(this, v310);
                  }

                  v318 = *this;
                  *(this + 1) += 6;
                  v316 = v318 + v309;
                  v317 = 29542;
                }

                *(v316 + 4) = v317;
                *v316 = 1279733551;
                v320 = *(this + 1);
                v319 = *(this + 2);
                v321 = v320 + 20;
                if (v319)
                {
                  if (v321 >= *v319)
                  {
                    v322 = malloc_type_realloc(*(v319 + 16), (v320 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                    v323 = *(this + 2);
                    v323[2] = v322;
                    *v323 = (v320 + 275) & 0xFFFFFFFFFFFFFF00;
                    *this = v322;
                  }
                }

                else
                {
                  str_alloc(this, v321);
                }

                v324 = itoa((*this + v320), v306 >> 4);
                v325 = *(this + 2);
                v326 = *(this + 1) + v324;
                *(this + 1) = v326;
                v327 = v326 + 1;
                if (v325)
                {
                  if (v327 >= *v325)
                  {
                    v328 = malloc_type_realloc(*(v325 + 16), (v326 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
                    v329 = *(this + 2);
                    v329[2] = v328;
                    *v329 = (v326 & 0xFFFFFFFFFFFFFF00) + 256;
                    *this = v328;
                  }
                }

                else
                {
                  str_alloc(this, v327);
                }

                v330 = *this;
                ++*(this + 1);
                *(v330 + v326) = 46;
                v331 = v657[0];
                v333 = *(this + 1);
                v332 = *(this + 2);
                v334 = v333 + 20;
                if (v332)
                {
                  if (v334 >= *v332)
                  {
                    v335 = malloc_type_realloc(*(v332 + 16), (v333 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                    v336 = *(this + 2);
                    v336[2] = v335;
                    *v336 = (v333 + 275) & 0xFFFFFFFFFFFFFF00;
                    *this = v335;
                  }
                }

                else
                {
                  str_alloc(this, v334);
                }

                v337 = itoa((*this + v333), v331 & 0xF);
                v338 = *(this + 2);
                v339 = *(this + 1) + v337;
                *(this + 1) = v339;
                if (v338)
                {
                  if (*v338 <= 0xFuLL)
                  {
                    v340 = malloc_type_realloc(*(v338 + 16), 0x100uLL, 0x100004077774924uLL);
                    v341 = *(this + 2);
                    v341[2] = v340;
                    *v341 = 256;
                    *this = v340;
                  }
                }

                else
                {
                  str_alloc(this, 15);
                }

                v342 = *this;
                *(this + 1) += 15 - v339;
                memcpy((v342 + v339), "               ", 15 - v339);
                v344 = *(this + 1);
                v343 = *(this + 2);
                v345 = v344 + 1;
                if (v343)
                {
                  if (v345 >= *v343)
                  {
                    v346 = malloc_type_realloc(*(v343 + 16), (v344 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
                    v347 = *(this + 2);
                    v347[2] = v346;
                    *v347 = (v344 & 0xFFFFFFFFFFFFFF00) + 256;
                    *this = v346;
                  }
                }

                else
                {
                  str_alloc(this, v345);
                }

                v348 = *this;
                ++*(this + 1);
                *(v348 + v344) = 10;
                v350 = *(this + 1);
                v349 = *(this + 2);
                v351 = v350 + 17;
                if (v349)
                {
                  if (v351 >= *v349)
                  {
                    v352 = malloc_type_realloc(*(v349 + 16), (v350 + 272) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                    v353 = *(this + 2);
                    v353[2] = v352;
                    *v353 = (v350 + 272) & 0xFFFFFFFFFFFFFF00;
                    *this = v352;
                  }
                }

                else
                {
                  str_alloc(this, v351);
                }

                v354 = *this;
                *(this + 1) += 17;
                v355 = v354 + v350;
                *v355 = *"//LEN=0000000000\n";
                *(v355 + 16) = 10;
                v357 = *(this + 1);
                v356 = *(this + 2);
                v358 = v357 + v235 - v221;
                if (v356)
                {
                  if (v358 >= *v356)
                  {
                    v359 = (v358 + 255) & 0xFFFFFFFFFFFFFF00;
                    v360 = malloc_type_realloc(*(v356 + 16), v359, 0x100004077774924uLL);
                    v361 = *(this + 2);
                    v361[2] = v360;
                    *v361 = v359;
                    *this = v360;
                  }
                }

                else
                {
                  str_alloc(this, v358);
                }

                v362 = *this;
                *(this + 1) += v235 - v221;
                memcpy((v362 + v357), v221, v235 - v221);
                if (*(v235 - 1) != 10)
                {
                  v364 = *(this + 1);
                  v363 = *(this + 2);
                  v365 = v364 + 1;
                  if (v363)
                  {
                    if (v365 >= *v363)
                    {
                      v366 = malloc_type_realloc(*(v363 + 16), (v364 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
                      v367 = *(this + 2);
                      v367[2] = v366;
                      *v367 = (v364 & 0xFFFFFFFFFFFFFF00) + 256;
                      *this = v366;
                    }
                  }

                  else
                  {
                    str_alloc(this, v365);
                  }

                  v368 = *this;
                  ++*(this + 1);
                  *(v368 + v364) = 10;
                }

                v370 = *this;
                v369 = *(this + 1);
                v371 = HGDigestInit(&__dst);
                if (v369 >= 0x40)
                {
                  v374 = v369 >> 6;
                  do
                  {
                    HGDigestAdd(&__dst, v370);
                    v370 += 16;
                    --v374;
                  }

                  while (v374);
                  v369 &= 0x3Fu;
                }

                if (v369)
                {
                  memcpy(&__s1a, v370, v369);
                  bzero(&__s1a + v369, 64 - v369);
                  HGDigestAdd(&__dst, &__s1a);
                }

                glsl::end(this, v657, &__dst, 0, v371, v372, v373);
                return 0;
              }

LABEL_575:
              LODWORD(__s1a) = 0;
              v244 = *v237;
              if (v244 != 103)
              {
                break;
              }

              if (*v239 == 108 && v237[2] == 95)
              {
                if (!strncmp(v237 + 3, "TextureMatrix", 0xDuLL))
                {
                  v263 = v18 & 0xFFFFFF00;
                  v18 = v18 & 0xFFFFFF00 | 0x10;
                  v657[0] = v263 | 0x10;
                  LODWORD(__s1a) = 0;
                  v264 = glsl::glindex((v237 + 16), &__s1a, v247);
                  if (v264)
                  {
                    v239 = v264;
                  }

                  else
                  {
                    v239 = v237 + 16;
                  }

                  if (__s1a + 1 > v233)
                  {
                    v233 = (__s1a + 1);
                  }

                  else
                  {
                    v233 = v233;
                  }

                  v641 |= 0x8000000u;
                  v657[1] = v641;
                  goto LABEL_754;
                }

                v239 = v237 + 11;
                if (!strncmp(v237 + 3, "TexCoord", 8uLL))
                {
                  v270 = v18 & 0xFFFFFF00;
                  v18 = v18 & 0xFFFFFF00 | 0x10;
                  v657[0] = v270 | 0x10;
                  LODWORD(__s1a) = 0;
                  v271 = glsl::glindex((v237 + 11), &__s1a, v248);
                  if (v271)
                  {
                    v239 = v271;
                  }

                  v272 = v643;
                  if (__s1a + 1 > v643)
                  {
                    v272 = __s1a + 1;
                  }

                  v643 = v272;
                  WORD2(v659) = v272;
                  goto LABEL_754;
                }

                if (!strncmp(v237 + 3, "MultiTexCoord", 0xDuLL))
                {
                  v657[0] = 329232;
                  LODWORD(__s1a) = 0;
                  v280 = glsl::glindex((v237 + 16), &__s1a, v249);
                  if (v280)
                  {
                    v239 = v280;
                  }

                  else
                  {
                    v239 = v237 + 16;
                  }

                  v281 = v643;
                  if (__s1a + 1 > v643)
                  {
                    v281 = __s1a + 1;
                  }

                  v643 = v281;
                  WORD2(v659) = v281;
                  v18 = 329232;
                  goto LABEL_754;
                }

                if (!strncmp(v237 + 3, "ModelViewProjectionMatrix", 0x19uLL))
                {
                  v239 = v237 + 28;
                  v18 = v18 & 0xFFFFFF00 | 0x10;
                  v657[0] = v18;
                  v657[1] = v641 | 0x8000000;
                  v641 |= 0x8000000u;
LABEL_718:
                  v646 = 1;
                  goto LABEL_754;
                }

                if (!strncmp(v237 + 3, "Position", 8uLL))
                {
                  v657[0] = 329232;
                  v18 = 329232;
                  goto LABEL_754;
                }

                v250 = v233;
                v251 = v237 + 9;
                if (!strncmp(v237 + 3, "Vertex", 6uLL) || !strncmp(v237 + 3, "Normal", 6uLL))
                {
                  v657[0] = 329232;
                  v18 = 329232;
LABEL_730:
                  v239 = v251;
                  v233 = v250;
                  goto LABEL_754;
                }

                if (!strncmp(v237 + 3, "FrontFacing", 0xBuLL))
                {
                  v239 = v237 + 14;
                  v18 = v18 | 0x60600;
                  v657[0] = v18;
                  v233 = v250;
                  goto LABEL_754;
                }

                v251 = v237 + 12;
                if (!strncmp(v237 + 3, "FragDepth", 9uLL) || !strncmp(v237 + 3, "FragCoord", 9uLL))
                {
                  v18 = v18 | 0x60600;
                  v657[0] = v18;
                  goto LABEL_730;
                }

                if (strncmp(v237 + 3, "FragColor", 9uLL))
                {
                  if (!strncmp(v237 + 3, "FragData", 8uLL))
                  {
                    v301 = v18;
                    v18 = v18 | 0x60600;
                    v657[0] = v301 | 0x60600;
                    LODWORD(__s1a) = 0;
                    v302 = glsl::glindex((v237 + 11), &__s1a, v252);
                    v233 = v250;
                    if (v302)
                    {
                      if (__s1a + 1 > v234)
                      {
                        v234 = (__s1a + 1);
                        BYTE10(v659) = __s1a + 1;
                      }

                      v239 = v302;
                    }
                  }

                  else
                  {
                    v239 = v237 + 2;
                    v233 = v250;
                    do
                    {
                      v253 = *++v239;
                    }

                    while (v253 > 0x20);
                  }

                  goto LABEL_754;
                }

                v18 = v18 | 0x60600;
                v657[0] = v18;
                if (!v234)
                {
                  v234 = 1;
                  BYTE10(v659) = 1;
                }

                v233 = v250;
                v235 = v237 + 12;
              }

              else
              {
LABEL_614:
                if (!strncmp(v237, "texture2DRectLodOffset", 0x16uLL))
                {
                  v239 = v237 + 22;
                  goto LABEL_754;
                }

                if (!strncmp(v237, "texture2DRectOffset", 0x13uLL))
                {
                  v239 = v237 + 19;
                  goto LABEL_754;
                }

                v255 = v237 + 16;
                if (!strncmp(v237, "texture2DRectLod", 0x10uLL))
                {
                  v239 = v237 + 16;
                  goto LABEL_754;
                }

                if (!strncmp(v237, "texture2DRect", 0xDuLL))
                {
                  v239 = v237 + 13;
                  goto LABEL_754;
                }

                if (!strncmp(v237, "texture1DLodOffset", 0x12uLL))
                {
                  v239 = v237 + 18;
                  goto LABEL_754;
                }

                v633 = v233;
                if (!strncmp(v237, "texture1DOffset", 0xFuLL))
                {
                  goto LABEL_680;
                }

                v256 = strncmp(v237, "texture1DLod", 0xCuLL);
                v257 = v237 + 12;
                if (!v256 || (v258 = strncmp(v237, "texture1D", 9uLL), v257 = v237 + 9, !v258))
                {
                  v239 = v257;
                  goto LABEL_753;
                }

                if (!strncmp(v237, "texture2DLodOffset", 0x12uLL))
                {
                  goto LABEL_728;
                }

                if (!strncmp(v237, "texture2DOffset", 0xFuLL))
                {
LABEL_680:
                  v239 = v237 + 15;
                  goto LABEL_753;
                }

                if (!strncmp(v237, "texture2DLod", 0xCuLL))
                {
                  v239 = v237 + 12;
                  goto LABEL_753;
                }

                if (!strncmp(v237, "texture2D", 9uLL))
                {
                  v239 = v237 + 9;
                  goto LABEL_753;
                }

                if (!strncmp(v237, "texture3DLodOffset", 0x12uLL))
                {
LABEL_728:
                  v239 = v237 + 18;
                  goto LABEL_753;
                }

                if (!strncmp(v237, "texture3DOffset", 0xFuLL))
                {
                  goto LABEL_680;
                }

                if (!strncmp(v237, "texture3DLod", 0xCuLL))
                {
                  v239 = v237 + 12;
                  goto LABEL_753;
                }

                v233 = v233;
                if (!strncmp(v237, "texture3D", 9uLL))
                {
                  v239 = v237 + 9;
                }

                else if (!strncmp(v237, "textureCubeLodOffset", 0x14uLL))
                {
                  v239 = v237 + 20;
                }

                else
                {
                  if (strncmp(v237, "textureCubeOffset", 0x11uLL))
                  {
                    if (!strncmp(v237, "textureCubeLod", 0xEuLL))
                    {
                      v239 = v237 + 14;
                      goto LABEL_753;
                    }

                    v259 = v237 + 11;
                    if (strncmp(v237, "textureCube", 0xBuLL))
                    {
                      if (!strncmp(v237, "greaterThanEqual", 0x10uLL))
                      {
                        goto LABEL_771;
                      }

                      if (!strncmp(v237, "lessThanEqual", 0xDuLL))
                      {
                        v239 = v237 + 13;
                        goto LABEL_753;
                      }

                      if (strncmp(v237, "greaterThan", 0xBuLL) && strncmp(v237, "inversesqrt", 0xBuLL))
                      {
                        if (!strncmp(v237, "normalize", 9uLL))
                        {
                          v239 = v237 + 9;
                          goto LABEL_753;
                        }

                        v259 = v237 + 8;
                        if (strncmp(v237, "lessThan", 8uLL))
                        {
                          if (strncmp(v237, "notEqual", 8uLL))
                          {
                            v259 = v237 + 7;
                            if (strncmp(v237, "reflect", 7uLL))
                            {
                              if (strncmp(v237, "discard", 7uLL))
                              {
                                v259 = v237 + 6;
                                if (strncmp(v237, "noise1", 6uLL))
                                {
                                  if (strncmp(v237, "noise2", 6uLL))
                                  {
                                    if (strncmp(v237, "noise3", 6uLL))
                                    {
                                      if (strncmp(v237, "noise4", 6uLL))
                                      {
                                        v259 = v237 + 5;
                                        if (strncmp(v237, "cross", 5uLL))
                                        {
                                          if (strncmp(v237, "clamp", 5uLL) && strncmp(v237, "fract", 5uLL) && strncmp(v237, "equal", 5uLL) && strncmp(v237, "floor", 5uLL) && strncmp(v237, "while", 5uLL))
                                          {
                                            v255 = v237 + 4;
                                            if (strncmp(v237, "ceil", 4uLL) && strncmp(v237, "log2", 4uLL) && strncmp(v237, "exp2", 4uLL) && strncmp(v237, "dFdx", 4uLL) && strncmp(v237, "dFdy", 4uLL) && strncmp(v237, "sqrt", 4uLL) && strncmp(v237, "acos", 4uLL) && strncmp(v237, "asin", 4uLL) && strncmp(v237, "atan", 4uLL))
                                            {
                                              if (v244 == 97)
                                              {
                                                if (*v239 == 98 && v237[2] == 115)
                                                {
                                                  v239 = v237 + 3;
LABEL_753:
                                                  v233 = v633;
                                                  goto LABEL_754;
                                                }

LABEL_808:
                                                if ((ctype[2 * v244] & 0x40) == 0)
                                                {
                                                  goto LABEL_753;
                                                }

                                                if (!v244)
                                                {
                                                  v239 = v237;
                                                  goto LABEL_753;
                                                }

                                                do
                                                {
LABEL_810:
                                                  if ((ctype[2 * v244] & 0x40) == 0)
                                                  {
                                                    break;
                                                  }

                                                  v305 = *++v237;
                                                  LODWORD(v244) = v305;
                                                }

                                                while (v305);
                                                v239 = v237;
                                                goto LABEL_753;
                                              }

                                              if (v244 > 108)
                                              {
                                                if (v244 > 114)
                                                {
                                                  if (v244 == 115)
                                                  {
                                                    if (*v239 != 105)
                                                    {
                                                      goto LABEL_808;
                                                    }
                                                  }

                                                  else if (v244 != 116 || *v239 != 97)
                                                  {
                                                    goto LABEL_808;
                                                  }

                                                  if (v237[2] != 110)
                                                  {
                                                    goto LABEL_808;
                                                  }
                                                }

                                                else
                                                {
                                                  if (v244 == 109)
                                                  {
                                                    v303 = *v239;
                                                    switch(v303)
                                                    {
                                                      case 'a':
                                                        v304 = v237[2];
                                                        break;
                                                      case 'o':
                                                        if (v237[2] != 100)
                                                        {
                                                          goto LABEL_808;
                                                        }

                                                        goto LABEL_816;
                                                      case 'i':
                                                        v304 = v237[2];
                                                        if (v304 == 110)
                                                        {
                                                          goto LABEL_816;
                                                        }

                                                        break;
                                                      default:
                                                        goto LABEL_808;
                                                    }

                                                    if (v304 != 120)
                                                    {
                                                      goto LABEL_808;
                                                    }

                                                    goto LABEL_816;
                                                  }

                                                  if (v244 != 112 || *v239 != 111 || v237[2] != 119)
                                                  {
                                                    goto LABEL_808;
                                                  }
                                                }
                                              }

                                              else if (v244 > 101)
                                              {
                                                if (v244 != 102)
                                                {
                                                  if (v244 != 105)
                                                  {
                                                    goto LABEL_808;
                                                  }

                                                  if (v237[1] == 102)
                                                  {
                                                    v239 = v237 + 2;
                                                    goto LABEL_753;
                                                  }

                                                  goto LABEL_810;
                                                }

                                                if (*v239 != 111 || v237[2] != 114)
                                                {
                                                  goto LABEL_808;
                                                }
                                              }

                                              else if (v244 == 99)
                                              {
                                                if (*v239 != 111 || v237[2] != 115)
                                                {
                                                  goto LABEL_808;
                                                }
                                              }

                                              else if (v244 != 100 || *v239 != 111 || v237[2] != 116)
                                              {
                                                goto LABEL_808;
                                              }

LABEL_816:
                                              v239 = v237 + 3;
                                              goto LABEL_753;
                                            }

LABEL_771:
                                            v239 = v255;
                                            goto LABEL_753;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v239 = v259;
                    goto LABEL_753;
                  }

                  v239 = v237 + 17;
                }

LABEL_754:
                v235 = v239;
              }
            }

            if (v244 == 104)
            {
              if (*v239 != 103 || v237[2] != 95)
              {
                goto LABEL_614;
              }

              v239 = v237 + 3;
              v245 = v237 + 16;
              if (!strncmp(v237 + 3, "TextureMatrix", 0xDuLL))
              {
                v18 = 329248;
                v657[0] = 329248;
                LODWORD(__s1a) = 0;
                v260 = *v245;
                if ((v260 - 58) >= 0xFFFFFFF6)
                {
                  v273 = 0;
                  v261 = v237 + 16;
                  do
                  {
                    v273 = v260 + 10 * v273 - 48;
                    v274 = *++v261;
                    v260 = v274;
                  }

                  while ((v274 - 58) > 0xFFFFFFF5);
                  LODWORD(__s1a) = v273;
                  v262 = v273 + 1;
                }

                else
                {
                  v261 = 0;
                  v262 = 1;
                }

                if (v261)
                {
                  v235 = v261;
                }

                else
                {
                  v235 = v237 + 16;
                }

                if (v262 <= v233)
                {
                  v233 = v233;
                }

                else
                {
                  v233 = v262;
                }
              }

              else if (!strncmp(v237 + 3, "Texture", 7uLL))
              {
                v267 = v237[10];
                v266 = v237 + 10;
                v265 = v267;
                v18 = v18 | 0x60600;
                v657[0] = v18;
                LODWORD(__s1a) = 0;
                if ((v267 - 58) >= 0xFFFFFFF6)
                {
                  v282 = 0;
                  v268 = v266;
                  do
                  {
                    v282 = v265 + 10 * v282 - 48;
                    v283 = *++v268;
                    v265 = v283;
                  }

                  while ((v283 - 58) > 0xFFFFFFF5);
                  LODWORD(__s1a) = v282;
                  v269 = v282 + 1;
                }

                else
                {
                  v268 = 0;
                  v269 = 1;
                }

                if (v268)
                {
                  v235 = v268;
                }

                else
                {
                  v235 = v266;
                }

                v284 = v639;
                if (v269 > v639)
                {
                  v284 = v269;
                }

                v639 = v284;
                BYTE8(v659) = v284;
              }

              else
              {
                if (!strncmp(v237 + 3, "TexCoord", 8uLL))
                {
                  v277 = v237[11];
                  v276 = v237 + 11;
                  v275 = v277;
                  v18 = v18 & 0xFFFFFF00 | 0x20;
                  v657[0] = v18;
                  LODWORD(__s1a) = 0;
                  if ((v277 - 58) >= 0xFFFFFFF6)
                  {
                    v291 = 0;
                    v278 = v276;
                    do
                    {
                      v291 = v275 + 10 * v291 - 48;
                      v292 = *++v278;
                      v275 = v292;
                    }

                    while ((v292 - 58) > 0xFFFFFFF5);
                    LODWORD(__s1a) = v291;
                    v279 = v291 + 1;
                  }

                  else
                  {
                    v278 = 0;
                    v279 = 1;
                  }

                  if (v278)
                  {
                    v293 = v278;
                  }

                  else
                  {
                    v293 = v276;
                  }

                  goto LABEL_725;
                }

                if (!strncmp(v237 + 3, "ProgramLocal", 0xCuLL))
                {
                  v287 = v237[15];
                  v286 = v237 + 15;
                  v285 = v287;
                  if ((v287 - 58) >= 0xFFFFFFF6)
                  {
                    v295 = 0;
                    v288 = v286;
                    v290 = v652;
                    do
                    {
                      v295 = v285 + 10 * v295 - 48;
                      v296 = *++v288;
                      v285 = v296;
                    }

                    while ((v296 - 58) > 0xFFFFFFF5);
                    LODWORD(__s1a) = v295;
                    v289 = v295 + 1;
                  }

                  else
                  {
                    v288 = 0;
                    v289 = 1;
                    v290 = v652;
                  }

                  if (v288)
                  {
                    v235 = v288;
                  }

                  else
                  {
                    v235 = v286;
                  }

                  if (v289 > v290)
                  {
                    v290 = v289;
                  }

                  v652 = v290;
                  WORD3(v658) = v290;
                }

                else
                {
                  if (!strncmp(v237 + 3, "Position", 8uLL))
                  {
                    v18 = 329248;
                    v657[0] = 329248;
                    goto LABEL_754;
                  }

                  if (strncmp(v237 + 3, "MultiTexCoord", 0xDuLL))
                  {
                    if (!strncmp(v237 + 3, "ProjectionMatrix", 0x10uLL))
                    {
                      v239 = v237 + 19;
                      v18 = 329248;
                      v657[0] = 329248;
                      goto LABEL_718;
                    }

                    v239 = v237 + 2;
                    do
                    {
                      v246 = *++v239;
                    }

                    while (v246 > 0x20);
                    goto LABEL_754;
                  }

                  v18 = 329248;
                  v657[0] = 329248;
                  LODWORD(__s1a) = 0;
                  v297 = *v245;
                  if ((v297 - 58) >= 0xFFFFFFF6)
                  {
                    v299 = 0;
                    v298 = v237 + 16;
                    do
                    {
                      v299 = v297 + 10 * v299 - 48;
                      v300 = *++v298;
                      v297 = v300;
                    }

                    while ((v300 - 58) > 0xFFFFFFF5);
                    LODWORD(__s1a) = v299;
                    v279 = v299 + 1;
                  }

                  else
                  {
                    v298 = 0;
                    v279 = 1;
                  }

                  if (v298)
                  {
                    v293 = v298;
                  }

                  else
                  {
                    v293 = v237 + 16;
                  }

LABEL_725:
                  v294 = v643;
                  if (v279 > v643)
                  {
                    v294 = v279;
                  }

                  v643 = v294;
                  WORD2(v659) = v294;
                  v235 = v293;
                }
              }
            }

            else
            {
              if ((v244 - 48) > 9)
              {
                if (v244 <= 0x3E && (((1 << v244) & 0xAC0000000000) != 0 || ((1 << v244) & 0x7000000200000000) != 0 && (v244 == 61 || *v239 == 61)))
                {
                  goto LABEL_754;
                }

                goto LABEL_614;
              }

              do
              {
                v254 = *++v237;
              }

              while ((v254 - 48) < 0xA);
              WORD2(v658) = ++v644;
              v235 = v237;
            }
          }
        }
      }

      else
      {
        v45 = v46 - 1;
        do
        {
          v68 = *++v45;
        }

        while (v68 > 0x20);
      }
    }

    v52 = v46 + 6;
    do
    {
      v54 = *++v52;
      v53 = v54;
    }

    while (v54 - 33 > 0xFFFFFFDF);
    if (v53 >= 0x21)
    {
      do
      {
        v55 = *++v52;
      }

      while (v55 > 0x20);
    }

    v45 = v52 - 1;
    do
    {
      v57 = *++v45;
      v56 = v57;
    }

    while (v57 - 33 > 0xFFFFFFDF);
  }

  while (v56 < 0x21);
  while (v56 != 40)
  {
    v58 = *++v45;
    v56 = v58;
    if (v58 <= 0x20)
    {
      goto LABEL_103;
    }
  }

  v657[0] = 330512;
LABEL_21:
  if (v17)
  {
    while (1)
    {
      do
      {
LABEL_24:
        v19 = v17;
        v20 = v17 + 1;
        v21 = *v17++;
      }

      while ((v21 - 33) >= 0xFFFFFFE0);
      if (v21 != 47)
      {
        break;
      }

      v22 = *v20;
      if (v22 == 42)
      {
        v17 = v19 + 2;
        if (v19[2])
        {
          do
          {
            if (*(v20 - 1) == 42 && *v20 == 47)
            {
              break;
            }

            v25 = v20[2];
            ++v20;
          }

          while (v25);
          v17 = v20 + 1;
        }
      }

      else
      {
        if (v22 != 47)
        {
          goto LABEL_55;
        }

        v23 = v19 + 2;
        while (*v23)
        {
          v24 = *(v23 - 1);
          v17 = v23++;
          if (v24 == 10)
          {
            goto LABEL_24;
          }
        }

        v17 = v23;
      }
    }
  }

  else
  {
    while (1)
    {
      do
      {
LABEL_39:
        v19 = v3;
        v26 = (v3 + 1);
        v21 = *v3++;
      }

      while ((v21 - 33) >= 0xFFFFFFE0);
      if (v21 != 47)
      {
        break;
      }

      v27 = *v26;
      if (v27 == 42)
      {
        v3 = (v19 + 2);
        if (v19[2])
        {
          do
          {
            if (*(v26 - 1) == 42 && *v26 == 47)
            {
              break;
            }

            v30 = v26[2];
            ++v26;
          }

          while (v30);
          v3 = (v26 + 1);
        }
      }

      else
      {
        if (v27 != 47)
        {
          goto LABEL_55;
        }

        v28 = (v19 + 2);
        while (*v28)
        {
          v29 = *(v28 - 1);
          v3 = v28++;
          if (v29 == 10)
          {
            goto LABEL_39;
          }
        }

        v3 = v28;
      }
    }
  }

  if (!v21)
  {
    v19 = 0;
  }

LABEL_55:
  __s1a = 0uLL;
  v670 = 0;
  v31 = v19;
  while (1)
  {
    do
    {
LABEL_58:
      v33 = v31;
      v34 = v31 + 1;
      v35 = *v31++;
    }

    while ((v35 - 33) >= 0xFFFFFFE0);
    if (v35 == 47)
    {
      v36 = *v34;
      if (v36 == 42)
      {
        v31 = v33 + 2;
        if (v33[2])
        {
          do
          {
            if (*(v34 - 1) == 42 && *v34 == 47)
            {
              break;
            }

            v40 = v34[2];
            ++v34;
          }

          while (v40);
          v31 = v34 + 1;
        }

        goto LABEL_58;
      }

      if (v36 == 47)
      {
        v37 = v33 + 2;
        while (*v37)
        {
          v38 = *(v37 - 1);
          v31 = v37++;
          if (v38 == 10)
          {
            goto LABEL_58;
          }
        }

        v31 = v37;
        goto LABEL_58;
      }
    }

    else if (!v35)
    {
      goto LABEL_185;
    }

    if (!strncmp(v33, "vertex ", 7uLL))
    {
      v70 = 330512;
      goto LABEL_184;
    }

    if (!strncmp(v33, "fragment ", 9uLL))
    {
      break;
    }

    if (!strncmp(v33, "kernel ", 7uLL))
    {
      v32 = (v33 + 7);
LABEL_57:
      v657[0] = 2816;
      v31 = v32;
      goto LABEL_58;
    }

    if (strncmp(v33, "#include", 8uLL))
    {
      v31 = v33 - 1;
      do
      {
        v39 = *++v31;
      }

      while (v39 > 0x20);
      goto LABEL_58;
    }

    v32 = (v33 + 25);
    do
    {
      v41 = *(v32++ - 17) - 33;
    }

    while (v41 > 0xFFFFFFDF);
    v31 = (v32 - 18);
    if (!strncmp(v32 - 18, "<metal_common>", 0xEuLL))
    {
LABEL_95:
      v32 -= 4;
      goto LABEL_57;
    }

    if (!strncmp(v32 - 18, "<metal_graphics>", 0x10uLL))
    {
      v32 -= 2;
      goto LABEL_57;
    }

    if (!strncmp(v32 - 18, "<metal_matrix>", 0xEuLL))
    {
      goto LABEL_95;
    }

    if (!strncmp(v32 - 18, "<metal_geometric>", 0x11uLL))
    {
      --v32;
      goto LABEL_57;
    }

    v42 = strncmp(v32 - 18, "<metal_math>", 0xCuLL);
    v43 = (v32 - 6);
    if (!v42 || (v44 = strncmp(v32 - 18, "<metal_texture>", 0xFuLL), v43 = (v32 - 3), !v44))
    {
      v32 = v43;
      goto LABEL_57;
    }

    if (!strncmp(v32 - 18, "<metal_stdlib>", 0xEuLL))
    {
      goto LABEL_95;
    }

    if (!strncmp(v32 - 18, "<metal_integer>", 0xFuLL))
    {
      goto LABEL_100;
    }

    if (!strncmp(v32 - 18, "<metal_relational>", 0x12uLL))
    {
      goto LABEL_57;
    }

    if (!strncmp(v32 - 18, "<metal_compute>", 0xFuLL))
    {
LABEL_100:
      v32 -= 3;
      goto LABEL_57;
    }

    if (!strncmp(v32 - 18, "<metal_pack>", 0xCuLL))
    {
      v32 -= 6;
      goto LABEL_57;
    }

    if (!strncmp(v32 - 18, "<metal_atomic>", 0xEuLL))
    {
      goto LABEL_95;
    }
  }

  v70 = 396048;
LABEL_184:
  v657[0] = v70;
LABEL_185:
  v651 = 0;
  v71 = "texCoord";
  v72 = "hg_Params[";
  i = v19;
LABEL_186:
  v74 = i;
  while (1)
  {
    do
    {
LABEL_188:
      v75 = v74;
      v77 = v74 + 1;
      v76 = *v74++;
    }

    while ((v76 - 33) >= 0xFFFFFFE0);
    if (v76 != 47)
    {
      break;
    }

    v78 = *v77;
    if (v78 == 42)
    {
      v74 = v75 + 2;
      if (v75[2])
      {
        do
        {
          if (*(v77 - 1) == 42 && *v77 == 47)
          {
            break;
          }
        }

        while (*(v77++ + 2));
        v74 = v77 + 1;
      }
    }

    else
    {
      if (v78 != 47)
      {
LABEL_203:
        LODWORD(v666) = 0;
        v82 = *v75;
        if (v82 == 95)
        {
          if (!strncmp(v77, v71, 8uLL))
          {
            v99 = v75[9];
            v98 = (v75 + 9);
            v97 = v99;
            if ((v99 - 58) >= 0xFFFFFFF6)
            {
              v114 = 0;
              v100 = v98;
              do
              {
                v114 = v97 + 10 * v114 - 48;
                v115 = *++v100;
                v97 = v115;
              }

              while ((v115 - 58) > 0xFFFFFFF5);
              LODWORD(v666) = v114;
              v101 = v114 + 1;
            }

            else
            {
              v100 = 0;
              v101 = 1;
            }

            if (v100)
            {
              i = v100;
            }

            else
            {
              i = v98;
            }

            v116 = WORD2(v659);
            if (v101 > WORD2(v659))
            {
              v116 = v101;
            }

            WORD2(v659) = v116;
          }

          else
          {
            do
            {
              v93 = *++v75;
            }

            while (v93 > 0x20);
            i = v75;
          }
        }

        else
        {
          if (v82 == 91 && *v77 == 91)
          {
            v83 = v72;
            v84 = v71;
            v85 = v75 + 14;
            do
            {
              v86 = *(v85++ - 12) - 33;
            }

            while (v86 >= 0xFFFFFFE0);
            v87 = (v85 - 13);
            v88 = (v85 - 5);
            if (!strncmp(v85 - 13, "texture(", 8uLL))
            {
              v111 = *(v85 - 5);
              if ((v111 - 58) >= 0xFFFFFFF6)
              {
                v112 = 0;
                v113 = (v85 - 5);
                v71 = v84;
                do
                {
                  v112 = v111 + 10 * v112 - 48;
                  v121 = *++v113;
                  v111 = v121;
                }

                while ((v121 - 58) > 0xFFFFFFF5);
                LODWORD(v666) = v112;
              }

              else
              {
                v112 = 0;
                v113 = 0;
                v71 = v84;
              }

              v72 = v83;
              if (v113)
              {
                v87 = v113;
              }

              else
              {
                v87 = v88;
              }

              if (v112 + 1 > BYTE8(v659))
              {
                v122 = v112 + 1;
              }

              else
              {
                v122 = BYTE8(v659);
              }

              BYTE8(v659) = v122;
              if (v651)
              {
                v651 = 0;
                LODWORD(v658) = v658 | (1 << v112);
              }

              else
              {
                v651 = 0;
              }
            }

            else if (!strncmp(v85 - 13, "sampler(", 8uLL))
            {
              v119 = *(v85 - 5);
              if ((v119 - 58) >= 0xFFFFFFF6)
              {
                v127 = 0;
                v120 = (v85 - 5);
                v71 = v84;
                do
                {
                  v127 = v119 + 10 * v127 - 48;
                  v128 = *++v120;
                  v119 = v128;
                }

                while ((v128 - 58) > 0xFFFFFFF5);
                LODWORD(v666) = v127;
              }

              else
              {
                v120 = 0;
                v71 = v84;
              }

              v72 = v83;
              if (v120)
              {
                v87 = v120;
              }

              else
              {
                v87 = v88;
              }
            }

            else
            {
              if (!strncmp(v85 - 13, "user(texcoord", 0xDuLL))
              {
                v124 = *v85;
                if ((v124 - 58) >= 0xFFFFFFF6)
                {
                  v133 = 0;
                  v125 = v85;
                  do
                  {
                    v133 = v124 + 10 * v133 - 48;
                    v134 = *++v125;
                    v124 = v134;
                  }

                  while ((v134 - 58) > 0xFFFFFFF5);
                  LODWORD(v666) = v133;
                  v126 = v133 + 1;
                }

                else
                {
                  v125 = 0;
                  v126 = 1;
                }

                if (v125)
                {
                  v87 = v125;
                }

                else
                {
                  v87 = v85;
                }

                v135 = WORD2(v659);
                if (v126 > WORD2(v659))
                {
                  v135 = v126;
                }

                WORD2(v659) = v135;
              }

              else if (!strncmp(v85 - 13, "stage_in", 8uLL))
              {
                v657[0] = 396048;
                v87 = (v85 - 5);
              }

              else if (!strncmp(v85 - 13, "vertex_id", 9uLL))
              {
                v87 = (v85 - 4);
                v657[0] = 330512;
              }

              else if (!strncmp(v85 - 13, "position", 8uLL))
              {
                v87 = (v85 - 5);
              }

              else if (!strncmp(v85 - 13, "color(", 6uLL))
              {
                v143 = *(v85 - 7);
                v142 = (v85 - 7);
                v141 = v143;
                if ((v143 - 58) >= 0xFFFFFFF6)
                {
                  v146 = 0;
                  v144 = v142;
                  do
                  {
                    v146 = v141 + 10 * v146 - 48;
                    v147 = *++v144;
                    v141 = v147;
                  }

                  while ((v147 - 58) > 0xFFFFFFF5);
                  LODWORD(v666) = v146;
                  v145 = v146 + 1;
                }

                else
                {
                  v144 = 0;
                  v145 = 1;
                }

                if (v144)
                {
                  v87 = v144;
                }

                else
                {
                  v87 = v142;
                }

                v148 = BYTE10(v659);
                if (v145 > BYTE10(v659))
                {
                  v148 = v145;
                }

                BYTE10(v659) = v148;
              }

              else if (!strncmp(v85 - 13, "depth(any)", 0xAuLL))
              {
                v87 = (v85 - 3);
                BYTE9(v659) = 1;
              }

              v71 = v84;
              v72 = v83;
            }

              ;
            }

            goto LABEL_186;
          }

          if (!strncmp(v75, v72, 0xAuLL))
          {
            v94 = v75[10];
            if ((v94 - 58) >= 0xFFFFFFF6)
            {
              v105 = 0;
              v95 = (v75 + 10);
              do
              {
                v105 = v94 + 10 * v105 - 48;
                v106 = *++v95;
                v94 = v106;
              }

              while ((v106 - 58) > 0xFFFFFFF5);
              LODWORD(v666) = v105;
              v96 = v105 + 1;
            }

            else
            {
              v95 = 0;
              v96 = 1;
            }

            if (!v95)
            {
              v95 = (v75 + 10);
            }

            if (v96 <= WORD3(v658))
            {
              LOWORD(v96) = WORD3(v658);
            }

            WORD3(v658) = v96;
            i = (v95 + 1);
          }

          else
          {
            v89 = v71;
            v90 = strncmp(v75, "FragmentOut ", 0xCuLL);
            i = v75 + 12;
            if (v90)
            {
              v91 = 0;
            }

            else
            {
              v91 = v75 + 12;
            }

            if (!v90 && strncmp(v75 + 12, "fragmentFunc", 0xCuLL))
            {
              v102 = *i;
              if (*i)
              {
                do
                {
                  if (v102 < 0x21)
                  {
                    break;
                  }

                  if ((ctype[2 * v102] & 0x40) == 0)
                  {
                    break;
                  }

                  v103 = *++i;
                  v102 = v103;
                }

                while (v103);
              }

              v104 = i - v91;
              if ((i - v91) >= 0x7FFFFFFFFFFFFFF8)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v104 >= 0x17)
              {
                operator new();
              }

              HIBYTE(v668) = i - v91;
              if (i != v91)
              {
                memmove(&__dst, v91, i - v91);
              }

              v71 = v89;
              *(&__dst + v104) = 0;
              v72 = "hg_Params[";
              if (SHIBYTE(v670) < 0)
              {
                operator delete(__s1a);
              }

              __s1a = __dst;
              v670 = v668;
              goto LABEL_186;
            }

            v92 = SHIBYTE(v670);
            if ((SHIBYTE(v670) & 0x8000000000000000) != 0)
            {
              if (*(&__s1a + 1))
              {
                if (*(&__s1a + 1) == -1)
                {
                  std::string::__throw_out_of_range[abi:ne200100]();
                }

                if (!memcmp(__s1a, v75, *(&__s1a + 1)))
                {
                  goto LABEL_278;
                }
              }
            }

            else if (HIBYTE(v670) && !memcmp(&__s1a, v75, SHIBYTE(v670)))
            {
LABEL_278:
              v118 = *(&__s1a + 1);
              if (v92 >= 0)
              {
                v118 = v92;
              }

              i = &v75[v118];
              if (!strncmp(&v75[v118], ".color", 6uLL))
              {
                v130 = *(i + 6);
                i += 6;
                v129 = v130;
                v71 = v89;
                if ((v130 - 58) >= 0xFFFFFFF6)
                {
                  v136 = 0;
                  v131 = i;
                  v72 = "hg_Params[";
                  do
                  {
                    v136 = v129 + 10 * v136 - 48;
                    v137 = *++v131;
                    v129 = v137;
                  }

                  while ((v137 - 58) > 0xFFFFFFF5);
                  LODWORD(v666) = v136;
                  v132 = v136 + 1;
                }

                else
                {
                  v131 = 0;
                  v132 = 1;
                  v72 = "hg_Params[";
                }

                if (v131)
                {
                  i = v131;
                }

                v138 = BYTE10(v659);
                if (v132 > BYTE10(v659))
                {
                  v138 = v132;
                }

                BYTE10(v659) = v138;
              }

              else
              {
                v71 = v89;
                v72 = "hg_Params[";
              }

              if (!strncmp(i, ".depth", 6uLL))
              {
                v657[1] |= 0x2000000u;
              }

              goto LABEL_186;
            }

            i = v75 + 9;
            v71 = v89;
            if (!strncmp(v75, "texture2d", 9uLL))
            {
              v109 = *i;
              if (*i)
              {
                v72 = "hg_Params[";
                do
                {
                  if (v109 >= 0x21 && v109 != 60)
                  {
                    break;
                  }

                  v110 = *++i;
                  v109 = v110;
                }

                while (v110);
              }

              else
              {
                v72 = "hg_Params[";
              }

              if (!strncmp(i, "half", 4uLL))
              {
                v657[1] |= 0x400000u;
                v651 = 1;
              }

              else
              {
                v651 &= strncmp(i, "float", 5uLL) != 0;
              }
            }

            else if (v82 == 46)
            {
              do
              {
                v108 = *++v75;
              }

              while ((v108 - 48) < 0xA);
              i = v75;
              v72 = "hg_Params[";
            }

            else if ((v82 - 48) > 9)
            {
              v123 = (v82 - 33);
              if (v123 > 0x3A)
              {
                goto LABEL_347;
              }

              if (((1 << (v82 - 33)) & 0x5E00) != 0)
              {
                goto LABEL_307;
              }

              if (((1 << (v82 - 33)) & 0x38000001) != 0)
              {
                if (*v77 == 61 || v82 == 44 || v82 == 61)
                {
LABEL_307:
                  i = v77;
                  v72 = "hg_Params[";
                  goto LABEL_186;
                }

LABEL_347:
                if (!strncmp(v75, "get_num_mip_levels", 0x12uLL))
                {
                  i = v75 + 18;
                  v72 = "hg_Params[";
                  goto LABEL_186;
                }

                if (!strncmp(v75, "get_num_samples", 0xFuLL))
                {
                  i = v75 + 15;
                  v72 = "hg_Params[";
                  goto LABEL_186;
                }

                if (!strncmp(v75, "get_array_size", 0xEuLL))
                {
                  i = v75 + 14;
                  v72 = "hg_Params[";
                  goto LABEL_186;
                }

                if (!strncmp(v75, "get_height", 0xAuLL))
                {
                  i = v75 + 10;
                  v72 = "hg_Params[";
                  goto LABEL_186;
                }

                if (!strncmp(v75, "get_width", 9uLL))
                {
                  v72 = "hg_Params[";
                  goto LABEL_186;
                }

                if (!strncmp(v75, "get_depth", 9uLL))
                {
                  v72 = "hg_Params[";
                  goto LABEL_186;
                }

                v140 = (v75 + 6);
                if (!strncmp(v75, "sample", 6uLL) || !strncmp(v75, "gather", 6uLL))
                {
                  goto LABEL_412;
                }

                if (strncmp(v75, "write", 5uLL))
                {
                  v140 = (v75 + 4);
                  if (!strncmp(v75, "read", 4uLL))
                  {
                    goto LABEL_412;
                  }

                  if (!strncmp(v75, "discard_fragment", 0x10uLL))
                  {
                    i = v75 + 16;
                    goto LABEL_417;
                  }

                  if (!strncmp(v75, "normalize", 9uLL))
                  {
LABEL_417:
                    v71 = v89;
                    v72 = "hg_Params[";
                    goto LABEL_186;
                  }

                  if (!strncmp(v75, "reflect", 7uLL))
                  {
                    i = v75 + 7;
                    goto LABEL_417;
                  }

                  if (strncmp(v75, "rsqrt", 5uLL) && strncmp(v75, "cross", 5uLL) && strncmp(v75, "clamp", 5uLL) && strncmp(v75, "fract", 5uLL) && strncmp(v75, "floor", 5uLL) && strncmp(v75, "while", 5uLL) && strncmp(v75, "ilogb", 5uLL) && strncmp(v75, "ldexp", 5uLL) && strncmp(v75, "round", 5uLL) && strncmp(v75, "atan2", 5uLL) && strncmp(v75, "trunc", 5uLL))
                  {
                    if (strncmp(v75, "ceil", 4uLL) && strncmp(v75, "log2", 4uLL) && strncmp(v75, "exp2", 4uLL) && strncmp(v75, "dfdx", 4uLL) && strncmp(v75, "dfdy", 4uLL) && strncmp(v75, "sqrt", 4uLL) && strncmp(v75, "acos", 4uLL) && strncmp(v75, "asin", 4uLL) && strncmp(v75, "atan", 4uLL) && strncmp(v75, "fmax", 4uLL) && strncmp(v75, "fmin", 4uLL))
                    {
                      if (v82 == 97)
                      {
                        if (*v77 == 98 && v75[2] == 115)
                        {
                          i = v75 + 3;
                          goto LABEL_417;
                        }

                        goto LABEL_457;
                      }

                      i = v75 + 3;
                      if (v82 <= 108)
                      {
                        if (v82 <= 101)
                        {
                          if (v82 == 99)
                          {
                            if (*v77 == 111 && v75[2] == 115)
                            {
                              goto LABEL_417;
                            }
                          }

                          else if (v82 == 100 && *v77 == 111 && v75[2] == 116)
                          {
                            goto LABEL_417;
                          }

                          goto LABEL_457;
                        }

                        if (v82 == 102)
                        {
                          if (*v77 == 111 && v75[2] == 114)
                          {
                            goto LABEL_417;
                          }

                          goto LABEL_457;
                        }

                        if (v82 != 105)
                        {
                          goto LABEL_457;
                        }

                        if (v75[1] == 102)
                        {
                          i = v75 + 2;
                          goto LABEL_417;
                        }

                        goto LABEL_460;
                      }

                      if (v82 > 114)
                      {
                        if (v82 == 115)
                        {
                          if (*v77 != 105)
                          {
                            goto LABEL_457;
                          }
                        }

                        else if (v82 != 116 || *v77 != 97)
                        {
                          goto LABEL_457;
                        }

                        if (v75[2] == 110)
                        {
                          goto LABEL_417;
                        }
                      }

                      else
                      {
                        if (v82 != 109)
                        {
                          if (v82 == 112 && *v77 == 111 && v75[2] == 119)
                          {
                            goto LABEL_417;
                          }

                          goto LABEL_457;
                        }

                        v151 = *v77;
                        switch(v151)
                        {
                          case 'a':
                            v152 = v75[2];
                            break;
                          case 'o':
                            if (v75[2] == 100)
                            {
                              goto LABEL_417;
                            }

                            goto LABEL_457;
                          case 'i':
                            v152 = v75[2];
                            if (v152 == 110)
                            {
                              goto LABEL_417;
                            }

                            break;
                          default:
                            goto LABEL_457;
                        }

                        if (v152 == 120)
                        {
                          goto LABEL_417;
                        }
                      }

LABEL_457:
                      if ((ctype[2 * v82] & 0x40) == 0)
                      {
                        i = v77;
                        goto LABEL_417;
                      }

                      if (v82)
                      {
                        do
                        {
LABEL_460:
                          if ((ctype[2 * v82] & 0x40) == 0)
                          {
                            break;
                          }

                          v153 = *++v75;
                          LODWORD(v82) = v153;
                        }

                        while (v153);
                      }

                      i = v75;
                      goto LABEL_417;
                    }

LABEL_412:
                    i = v140;
                    goto LABEL_417;
                  }
                }

                i = v75 + 5;
                goto LABEL_417;
              }

              if (v123 != 58)
              {
                goto LABEL_347;
              }

              v139 = glsl::glindex(v75, &v666, v107);
              if (v139)
              {
                i = v139;
                v72 = "hg_Params[";
              }

              else
              {
                i = v75;
                v72 = "hg_Params[";
                do
                {
                  v150 = *++i;
                  v149 = v150;
                }

                while (v150 && v149 != 93);
              }
            }

            else
            {
              v72 = "hg_Params[";
              do
              {
                v117 = *++v75;
              }

              while ((v117 - 48) < 0xA);
              ++WORD2(v658);
              i = v75;
            }
          }
        }

        goto LABEL_186;
      }

      v79 = v75 + 2;
      while (*v79)
      {
        v80 = *(v79 - 1);
        v74 = v79++;
        if (v80 == 10)
        {
          goto LABEL_188;
        }
      }

      v74 = v79;
    }
  }

  if (v76)
  {
    goto LABEL_203;
  }

  HIDWORD(v659) = 16 * WORD3(v658);
  LOBYTE(v154) = v657[0];
  v155 = v657[0] + 396032;
  if (v657[0] < 0x100)
  {
    v156 = 1;
  }

  else
  {
    v155 = v657[0];
    v156 = LOBYTE(v657[0]) == 0;
  }

  if (v156)
  {
    if (v155)
    {
      v154 = v155;
    }

    else
    {
      v154 = v155 | 0x10;
    }

    v657[0] = v154;
  }

  if (SHIBYTE(v670) < 0)
  {
    operator delete(__s1a);
  }

  v158 = *(this + 1);
  v157 = *(this + 2);
  v159 = v158 + 7;
  if (v157)
  {
    if (v159 >= *v157)
    {
      v160 = malloc_type_realloc(*(v157 + 16), (v158 + 262) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v161 = *(this + 2);
      v161[2] = v160;
      *v161 = (v158 + 262) & 0xFFFFFFFFFFFFFF00;
      *this = v160;
    }
  }

  else
  {
    str_alloc(this, v159);
  }

  v162 = *this;
  *(this + 1) += 7;
  v163 = (v162 + v158);
  *(v163 + 3) = 1818326117;
  *v163 = 1699557167;
  v165 = *(this + 1);
  v164 = *(this + 2);
  v166 = v165 + 20;
  if (v164)
  {
    if (v166 >= *v164)
    {
      v167 = malloc_type_realloc(*(v164 + 16), (v165 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v168 = *(this + 2);
      v168[2] = v167;
      *v168 = (v165 + 275) & 0xFFFFFFFFFFFFFF00;
      *this = v167;
    }
  }

  else
  {
    str_alloc(this, v166);
  }

  v169 = itoa((*this + v165), v154 >> 4);
  v170 = *(this + 2);
  v171 = *(this + 1) + v169;
  *(this + 1) = v171;
  v172 = v171 + 1;
  if (v170)
  {
    if (v172 >= *v170)
    {
      v173 = malloc_type_realloc(*(v170 + 16), (v171 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v174 = *(this + 2);
      v174[2] = v173;
      *v174 = (v171 & 0xFFFFFFFFFFFFFF00) + 256;
      *this = v173;
    }
  }

  else
  {
    str_alloc(this, v172);
  }

  v175 = *this;
  ++*(this + 1);
  *(v175 + v171) = 46;
  v176 = v657[0];
  v178 = *(this + 1);
  v177 = *(this + 2);
  v179 = v178 + 20;
  if (v177)
  {
    if (v179 >= *v177)
    {
      v180 = malloc_type_realloc(*(v177 + 16), (v178 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v181 = *(this + 2);
      v181[2] = v180;
      *v181 = (v178 + 275) & 0xFFFFFFFFFFFFFF00;
      *this = v180;
    }
  }

  else
  {
    str_alloc(this, v179);
  }

  v182 = itoa((*this + v178), v176 & 0xF);
  v183 = *(this + 2);
  v184 = *(this + 1) + v182;
  *(this + 1) = v184;
  if (v183)
  {
    if (*v183 <= 0xFuLL)
    {
      v185 = malloc_type_realloc(*(v183 + 16), 0x100uLL, 0x100004077774924uLL);
      v186 = *(this + 2);
      v186[2] = v185;
      *v186 = 256;
      *this = v185;
    }
  }

  else
  {
    str_alloc(this, 15);
  }

  v187 = *this;
  *(this + 1) += 15 - v184;
  memcpy((v187 + v184), "               ", 15 - v184);
  v189 = *(this + 1);
  v188 = *(this + 2);
  v190 = v189 + 1;
  if (v188)
  {
    if (v190 >= *v188)
    {
      v191 = malloc_type_realloc(*(v188 + 16), (v189 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v192 = *(this + 2);
      v192[2] = v191;
      *v192 = (v189 & 0xFFFFFFFFFFFFFF00) + 256;
      *this = v191;
    }
  }

  else
  {
    str_alloc(this, v190);
  }

  v193 = *this;
  ++*(this + 1);
  *(v193 + v189) = 10;
  v195 = *(this + 1);
  v194 = *(this + 2);
  v196 = v195 + 17;
  if (v194)
  {
    if (v196 >= *v194)
    {
      v197 = malloc_type_realloc(*(v194 + 16), (v195 + 272) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v198 = *(this + 2);
      v198[2] = v197;
      *v198 = (v195 + 272) & 0xFFFFFFFFFFFFFF00;
      *this = v197;
    }
  }

  else
  {
    str_alloc(this, v196);
  }

  v199 = *this;
  *(this + 1) += 17;
  v200 = v199 + v195;
  *v200 = *"//LEN=0000000000\n";
  *(v200 + 16) = 10;
  v202 = *(this + 1);
  v201 = *(this + 2);
  v203 = v202 + i - v19;
  if (v201)
  {
    if (v203 >= *v201)
    {
      v204 = (v203 + 255) & 0xFFFFFFFFFFFFFF00;
      v205 = malloc_type_realloc(*(v201 + 16), v204, 0x100004077774924uLL);
      v206 = *(this + 2);
      v206[2] = v205;
      *v206 = v204;
      *this = v205;
    }
  }

  else
  {
    str_alloc(this, v203);
  }

  v207 = *this;
  *(this + 1) += i - v19;
  memcpy((v207 + v202), v19, i - v19);
  if (*(i - 1) != 10)
  {
    v209 = *(this + 1);
    v208 = *(this + 2);
    v210 = v209 + 1;
    if (v208)
    {
      if (v210 >= *v208)
      {
        v211 = malloc_type_realloc(*(v208 + 16), (v209 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
        v212 = *(this + 2);
        v212[2] = v211;
        *v212 = (v209 & 0xFFFFFFFFFFFFFF00) + 256;
        *this = v211;
      }
    }

    else
    {
      str_alloc(this, v210);
    }

    v213 = *this;
    ++*(this + 1);
    *(v213 + v209) = 10;
  }

  v215 = *this;
  v214 = *(this + 1);
  v216 = HGDigestInit(&__dst);
  if (v214 >= 0x40)
  {
    v219 = v214 >> 6;
    do
    {
      HGDigestAdd(&__dst, v215);
      v215 += 16;
      --v219;
    }

    while (v219);
    v214 &= 0x3Fu;
  }

  if (v214)
  {
    memcpy(&__s1a, v215, v214);
    bzero(&__s1a + v214, 64 - v214);
    HGDigestAdd(&__dst, &__s1a);
  }

  glsl::end(this, v657, &__dst, 0, v216, v217, v218);
  return 4294967264;
}