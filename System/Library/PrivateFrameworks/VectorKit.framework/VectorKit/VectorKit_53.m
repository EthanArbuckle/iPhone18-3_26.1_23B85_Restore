void sub_1B2B5F158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<gm::Box<double,2>,md::MultiRectSetCompare,std::allocator<gm::Box<double,2>>>::__find_equal<gm::Box<double,2>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!md::MultiRectSetCompare::operator()(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!md::MultiRectSetCompare::operator()((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t geo::_retain_ptr<NSUUID * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

void ___ZN2md16RouteRenderLayer13layoutOverlayERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEbPN3ggl13CommandBufferE_block_invoke(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v2 = *a2 + 8;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 48);
  md::RouteLineSection::updateStyleQueryIfNecessary(v2, *(a1 + 32), *(a1 + 40), *(v3 + 620), *(v3 + 621), *(v3 + 622), (v3 + 536), (v3 + 568), *(a1 + 64), *(a1 + 76), *(a1 + 68), *(a1 + 72));
}

uint64_t *gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(void *a1, unsigned __int16 a2, unsigned int a3)
{
  if (a3 >= 0x17)
  {
    v3 = 23;
  }

  else
  {
    v3 = a3;
  }

  v4 = *a1 + 120 * *(a1 + v3 + 16);
  v5 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v4 + 72), a2);
  if (v5 == *(v4 + 84))
  {
    return &gss::PropertySetValueHelper<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
  }

  else
  {
    return (*(v4 + 72) + *(v4 + 80) + 8 * v5);
  }
}

float gm::operator*<float,4,4,1>(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v4 = v4 + (*(a2 + v3) * *(a1 + 4 * v3));
      v3 += 4;
    }

    while (v3 != 16);
    *(&v6 + i) = v4;
    a1 += 4;
  }

  return v6;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

ggl::MPSBlur *ggl::MPSBlur::MPSBlur(ggl::MPSBlur *this, char a2, BOOL a3, const char *a4)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_1F2A5C1B0;
  *(this + 1) = "MPSBlur";
  *(this + 48) = a2;
  *(this + 49) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v6 = 0;
  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::resize((this + 16), 1uLL, &v6);
  return this;
}

void sub_1B2B5F504(_Unwind_Exception *a1)
{
  *v1 = &unk_1F2A5C298;
  *(v1 + 8) = 3131955885;
  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

void ggl::MPSBlur::~MPSBlur(id *this)
{
  ggl::MPSBlur::~MPSBlur(this);

  JUMPOUT(0x1B8C62190);
}

{

  *this = &unk_1F2A5C298;
  this[1] = 3131955885;
  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 2));
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL md::MultiRectSetCompare::operator()(uint64_t a1, uint64_t a2)
{
  if (gm::Box<double,2>::operator==(a1, a2))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16) - *a1;
  v7 = *(a1 + 24) - v5;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16) - *a2;
  v10 = *(a2 + 24) - v8;
  v11 = v7 * v6 <= v10 * v9;
  if (v7 * v6 != v10 * v9)
  {
    return !v11;
  }

  v12 = *a1 + v6 * 0.5;
  v13 = *a2 + v9 * 0.5;
  v14 = v12 < v13;
  if (v12 == v13)
  {
    v15 = v5 + v7 * 0.5;
    v16 = v8 + v10 * 0.5;
    v14 = v15 < v16;
    if (v15 == v16)
    {
      v11 = v6 <= v9;
      if (v6 == v9)
      {
        v11 = v7 <= v10;
      }

      return !v11;
    }
  }

  return v14;
}

void **geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      md::RouteLineSection::~RouteLineSection((v2 + 1));
      v4 = *a1;
      v6 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::_fast_shared_ptr_control>(v6, v4);
      *a1 = 0;
    }
  }

  return a1;
}

void md::FogInfo::updateFogUniformsWithLayoutContext(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!*a1)
  {
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_3Fog6SkyfogEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v6 = md::LayoutContext::get<md::CameraContext>(*(a2 + 8));
  v7 = *(v6 + 3032);
  v8 = 0uLL;
  if (v7 >= 0.0 && v7 <= 1.0)
  {
    v10 = 0;
    v11 = *(v6 + 3048);
    v12 = (v6 + 3160);
    do
    {
      v13 = 0;
      v14 = a3;
      do
      {
        v15 = 0;
        v16 = 0.0;
        v17 = v12;
        do
        {
          v18 = *v17;
          v17 += 4;
          v16 = v16 + *(v14 + v15) * v18;
          v15 += 8;
        }

        while (v15 != 32);
        *&v40[2 * v13++].i64[v10] = v16;
        v14 += 32;
      }

      while (v13 != 4);
      ++v10;
      ++v12;
    }

    while (v10 != 4);
    v19 = 0;
    v20 = v40;
    do
    {
      v22 = *v20;
      v21 = v20[1];
      v20 += 2;
      *&v41[v19] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      v19 += 2;
    }

    while (v19 != 8);
    for (i = 0; i != 8; i += 2)
    {
      v40[0].i32[i / 2] = v41[i + 1];
    }

    *&v11 = v11;
    __asm { FMOV            V2.4S, #-10.0 }

    v29 = vmulq_f32(v40[0], _Q2);
    __asm { FMOV            V2.4S, #1.0 }

    v8 = vmulq_f32(v29, vdivq_f32(_Q2, vdupq_lane_s32(*&v11, 0)));
  }

  v39 = v8;
  v31 = *a1;
  ggl::BufferMemory::BufferMemory(v41);
  ggl::ResourceAccessor::accessConstantData(v40, 0, v31, 1);
  ggl::BufferMemory::operator=(v41, v40);
  ggl::BufferMemory::~BufferMemory(v40);
  v42[1].f32[2] = v7;
  v32 = *a2;
  [v32 sizeInPixels];
  v34 = v33;
  v42[1].f32[1] = v34;

  v35 = v42;
  v42[1].i32[0] = -1055916032;
  *v35 = v39;
  v36 = gdc::Context::get<md::SkyLogicContext>(*(a2 + 8));
  if (v36)
  {
    for (j = 0; j != 4; ++j)
    {
      v35[3].i32[j] = *(v36 + j * 4);
    }

    for (k = 0; k != 4; ++k)
    {
      v35[2].i32[k] = *(v36 + k * 4 + 16);
    }
  }

  else
  {
    md::SkyLogic::defaultDayFillColor(v40);
    v42[3] = v40[0];
    md::SkyLogic::defaultDayHorizonColor(v40);
    v42[2] = v40[0];
  }

  ggl::BufferMemory::~BufferMemory(v41);
}

uint64_t gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(int a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v5 = *a3;
    if (*a3)
    {
      v6 = *v5;
      LODWORD(v5) = *v5 == 1.0;
      if (*(a3 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
      {
        v8 = v6 < 1.0;
        goto LABEL_13;
      }
    }

    v9 = a3 + v5;
  }

  else
  {
    v9 = a3 + a2;
  }

  v10 = *(v9 + 11);
  if (v10 != 2)
  {
    v14 = *gss::RenderStyle<gss::PropertyID>::styleValueForKey<BOOL>(a3, a1, v10, 0);
    return v14 & 1;
  }

  v8 = 1;
LABEL_13:
  v17 = 1;
  v16 = 1;
  v11 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<BOOL>(a3, a1, 0, &v17);
  v12 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<BOOL>(a3, a1, 1u, &v16);
  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *v13;
  return v14 & 1;
}

void *md::MultiRectRegion::addRect(void *result, double *a2)
{
  v3 = result;
  v4 = a2 + 2;
  v6 = result + 1;
  v5 = *result;
  if (*result != result + 1)
  {
    while (1)
    {
      v7 = vsubq_f64(*(v5 + 3), *(v5 + 2));
      if (vmulq_laneq_f64(v7, v7, 1).f64[0] < (a2[3] - a2[1]) * (a2[2] - *a2) + -2.22044605e-16)
      {
        break;
      }

      v8 = 0;
      v9 = 1;
      while (a2[v8] >= *&v5[v8 + 4] && v4[v8] <= *&v5[v8 + 6])
      {
        v10 = v9;
        v9 = 0;
        v8 = 1;
        if ((v10 & 1) == 0)
        {
          return result;
        }
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
      if (v12 == v6)
      {
        goto LABEL_16;
      }
    }
  }

  v12 = v5;
LABEL_16:
  if (v12 != v6)
  {
    do
    {
      v14 = 0;
      v15 = 1;
      do
      {
        if (*&v12[v14 + 4] < a2[v14] || *&v12[v14 + 6] > v4[v14])
        {
          v21 = v12[1];
          if (v21)
          {
            do
            {
              v19 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v19 = v12[2];
              v13 = *v19 == v12;
              v12 = v19;
            }

            while (!v13);
          }

          goto LABEL_34;
        }

        v16 = v15;
        v15 = 0;
        v14 = 1;
      }

      while ((v16 & 1) != 0);
      v17 = v12[1];
      v18 = v12;
      if (v17)
      {
        do
        {
          v19 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v19 = v18[2];
          v13 = *v19 == v18;
          v18 = v19;
        }

        while (!v13);
      }

      if (*v3 == v12)
      {
        *v3 = v19;
      }

      v20 = v3[1];
      v3[2] = (v3[2] - 1);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v20, v12);
      operator delete(v12);
LABEL_34:
      v12 = v19;
    }

    while (v19 != v6);
  }

  v22 = 0;
  v23 = 1;
  do
  {
    *&v3[v22 + 3] = fmin(a2[v22], *&v3[v22 + 3]);
    v24 = v23;
    *&v3[v22 + 5] = fmax(*&v3[v22 + 5], v4[v22]);
    v22 = 1;
    v23 = 0;
  }

  while ((v24 & 1) != 0);
  result = std::__tree<gm::Box<double,2>,md::MultiRectSetCompare,std::allocator<gm::Box<double,2>>>::__find_equal<gm::Box<double,2>>(v3, &v25, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t *md::RouteLineLayer::updateAnimationParameters(uint64_t *this, float a2, uint64_t *a3, int a4, int a5)
{
  for (; this != a3; ++this)
  {
    v5 = *this;
    if (*(*this + 2960) == 1)
    {
      v6 = *(*(v5 + 2968) + 216);
      v7 = a2;
      if (v6 != a4)
      {
        v7 = 1.0;
        if (v6 >= a4)
        {
          if (v6 > a4 && a2 >= 1.0)
          {
            v7 = 1.0;
          }

          else
          {
            v7 = 0.0;
          }
        }
      }

      if (a5)
      {
        v7 = a2;
      }

      *(v5 + 3112) = v7;
    }
  }

  return this;
}

md::RibbonLayoutContext *md::RouteLayoutContext::RouteLayoutContext(md::RibbonLayoutContext *a1, char a2, uint64_t a3, md::LayoutContext *a4)
{
  v8 = md::RibbonLayoutContext::RibbonLayoutContext(a1, a4);
  *(v8 + 14) = a3;
  *(v8 + 120) = a2;
  *(v8 + 121) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v8 + 124) = _D0;
  *(v8 + 17) = 0;
  *(v8 + 72) = 0;
  *(v8 + 45) = 0;
  *(v8 + 23) = 0;
  *(v8 + 164) = 0;
  *(v8 + 156) = 0;
  *(v8 + 169) = 0;
  *(v8 + 192) = 1;
  *(v8 + 193) = 0;
  *(v8 + 25) = 0;
  md::LayoutContext::frameState(a4);
  *(a1 + 26) = *(v14 + 624);
  return a1;
}

uint64_t ggl::CullingGrid::intersectedCellsForView(uint64_t a1, double a2)
{
  v3 = 0;
  *&v21[19] = *MEMORY[0x1E69E9840];
  v4 = &v20;
  v5 = a2;
  do
  {
    v6 = 0;
    v7 = vcvts_n_f32_u32(v3, 2uLL);
    v8 = v4;
    do
    {
      *v18 = v7;
      v18[1] = vcvts_n_f32_u32(v6, 2uLL);
      *&v18[2] = v5;
      v18[3] = 1065353216;
      v19[0] = gm::operator*<float,4,4,1>(a1, v18);
      v19[1] = v9;
      v19[2] = v10;
      v19[3] = v11;
      *v8 = ggl::CullingGrid::clipFlagsForClipPoint(v19);
      v8 += 5;
      ++v6;
    }

    while (v6 != 5);
    ++v3;
    ++v4;
  }

  while (v3 != 5);
  v12 = 0;
  result = 0;
  v14 = v21;
  do
  {
    v15 = 0;
    v16 = 0;
    v17 = v14;
    do
    {
      if (((*(v17 - 5) & *(v17 - 6)) & (*(v17 - 1) & *v17)) == 0)
      {
        result = (1 << ggl::CullingGrid::bitForCell(unsigned char,unsigned char)::clockwiseOrder[v15 & 2 | v12 & 1] << (4 * LOBYTE(ggl::CullingGrid::bitForCell(unsigned char,unsigned char)::clockwiseOrder[v16 & 2 | (v12 >> 1)]))) | result;
      }

      v17 += 5;
      ++v16;
      v15 += 2;
    }

    while (v15 != 8);
    ++v12;
    ++v14;
  }

  while (v12 != 4);
  return result;
}

uint64_t ggl::CullingGrid::clipFlagsForClipPoint(float *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = -v2;
  v4 = a1[1];
  if (*a1 < -v2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (*a1 > v2)
  {
    v5 = 1;
  }

  v6 = v5 | 8;
  if (v4 >= v3)
  {
    v6 = v5;
  }

  v7 = v5 | 4;
  if (v4 > v2)
  {
    result = v7;
  }

  else
  {
    result = v6;
  }

  if (v1 > v2)
  {
    return result | 0x10;
  }

  if (v1 < v3)
  {
    return result | 0x20;
  }

  return result;
}

void md::RouteRenderLayer::layoutArrowsAndManeuverPoints(uint64_t a1, md::LayoutContext *a2, void *a3, char a4, ggl::zone_mallocator *a5, float a6)
{
  v273 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  if ((a4 & 1) != 0 || *(v8 + 620) != 1 || (v10 = [*(v8 + 160) arrows], v8 = *a3, *v10 == v10[1]))
  {
    v30 = a5;
    v31 = *(v8 + 624);
    v221 = +[VKDebugSettings sharedSettings];
    v32 = a3;
    if (![v221 showManeuverPoints] || (v31 & 1) != 0)
    {
    }

    else
    {
      v33 = [*(*a3 + 160) overlay];
      v34 = [v33 composedRoute];
      v35 = [v34 stepsCount];

      if (v35)
      {
        v36 = *a3;
        if (!*(*a3 + 344))
        {
          v37 = *(a2 + 93);
          v225[0] = MEMORY[0x1E69E9820];
          v225[1] = 3321888768;
          v225[2] = ___ZN2md16RouteRenderLayer29layoutArrowsAndManeuverPointsERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEfbPN3ggl13CommandBufferE_block_invoke_20;
          v225[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e30_v16__0__ResourceAccessor_____8l;
          v225[4] = a1;
          v225[5] = v36;
          v38 = a3[1];
          v226 = v38;
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v247 = 0;
          v245[0] = &unk_1F2A59B50;
          v245[1] = MEMORY[0x1B8C62DA0](v225);
          v247 = v245;
          v259 = 0uLL;
          ggl::Loader::performWithAccessor(*(v37 + 32));
          if (*(&v259 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v259 + 1));
          }

          std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](v245);
          v32 = a3;
          if (v226)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v226);
          }
        }

        v39 = *(a2 + 1);
        v40 = *gdc::Context::get<md::StyleLogicContext>(v39);
        v41 = *(*v32 + 620);
        v42 = *(*v32 + 344);
        v43 = md::LayoutContext::get<md::CameraContext>(v39);
        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v267, **(*(v42 + 40) + 136), 1);
        v44 = 0;
        v45 = (v43 + 808);
        do
        {
          v46 = 0;
          v47 = v42 + 56;
          do
          {
            v48 = 0;
            v49 = 0.0;
            v50 = v45;
            do
            {
              v51 = *v50;
              v50 += 4;
              v49 = v49 + *(v47 + v48) * v51;
              v48 += 8;
            }

            while (v48 != 32);
            *&(&v245[4 * v46++])[v44] = v49;
            v47 += 32;
          }

          while (v46 != 4);
          ++v44;
          ++v45;
        }

        while (v44 != 4);
        v52 = 0;
        v53 = v245;
        do
        {
          v55 = *v53;
          v54 = *(v53 + 1);
          v53 += 4;
          *(&v259 + v52) = vcvt_hight_f32_f64(vcvt_f32_f64(v55), v54);
          v52 += 16;
        }

        while (v52 != 64);
        v56 = v272;
        *v272 = v259;
        v56[1] = v260;
        v56[2] = v261;
        v56[3] = v262;
        ggl::BufferMemory::~BufferMemory(&v267);
        LODWORD(v245[0]) = 5;
        WORD2(v245[0]) = 11;
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v57, v245, 1uLL);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v264, &v267);
        gss::FeatureAttributeSet::sort(v264, v265);
        __src = 0;
        v243 = 0;
        LOWORD(v244) = 256;
        *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](&__src, 0x10002u) = v41;
        gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v240, v40, &v264, &__src);
        v58 = v240;
        v59 = v241;
        if (v241)
        {
          atomic_fetch_add_explicit(&v241->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v259, v58, v59);
        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v59);
        }

        v60 = 5.0;
        if (v261 == 1)
        {
          v61 = fmaxf(*(v43 + 3080) + *(v43 + 3072), 1.0);
          gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(243, 2, *(v259 + 24), 0);
          v63 = v62;
          gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(244, 2, *(v259 + 24), 0);
          v65 = v64;
          gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(245, 2, *(v259 + 24), 0);
          v67 = fminf(fmaxf(v65 * (v61 - v63), 0.0), v66);
          v68 = *(v259 + 24);
          v69 = fminf(v61, 23.0);
          v70 = *v68;
          if (*v68 && (v71 = *v70, LODWORD(v70) = *v70 == 1.0, *(v68 + 10) == 1) && v71 != 0.0 && v71 != 1.0 || (v72 = *(v68 + v70 + 11), v71 = 0.0, v72 == 2))
          {
            LOBYTE(v245[0]) = 1;
            LOBYTE(v238) = 1;
            v206 = v67;
            v207 = v69;
            v208 = v71;
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v68, 94, 0, v245, v69);
            v210 = v209;
            v211 = v207;
            v67 = v206;
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v68, 94, 1, &v238, v211);
            v73 = v210 + ((v212 - v210) * v208);
          }

          else
          {
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v259 + 24), 94, v72, 0, v69);
          }

          v60 = ((v67 * 0.5) + 0.5) * v73;
        }

        v74 = a6 / *(v42 + 56);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v245, *(*(*(v42 + 48) + 136) + 16));
        v75 = v249;
        *(v249 + 4) = ((v60 + 2.0) * *(v42 + 184)) * v74;
        *v75 = xmmword_1B33B0710;
        ggl::BufferMemory::~BufferMemory(v245);
        v76 = *(v42 + 24);
        *(v76 + 6) = 1610612736;
        ggl::CommandBuffer::pushRenderItem(v30, v76);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v245, *(*(*(v42 + 40) + 136) + 16));
        v77 = v249;
        *(v249 + 4) = (v60 * v74) * *(v42 + 184);
        __asm { FMOV            V0.4S, #1.0 }

        *v77 = _Q0;
        ggl::BufferMemory::~BufferMemory(v245);
        v82 = *(v42 + 16);
        *(v82 + 6) = 1610612737;
        ggl::CommandBuffer::pushRenderItem(v30, v82);
        if (v261 == 1)
        {
          (*(*v259 + 56))(v259);
        }

        if (*(&v260 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v260 + 1));
        }

        if (*(&v259 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v259 + 1));
        }

        if (v241)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v241);
        }

        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&__src);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v264);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v267);
      }
    }
  }

  else
  {
    v220 = a5;
    v11 = *(v8 + 520);
    v12 = [*(v8 + 160) overlay];
    v13 = [v12 composedRoute];
    v14 = [v13 currentDisplayStep];

    _ZF = v11 == v14;
    v16 = a3;
    if (!_ZF)
    {
      v17 = *(*a3 + 528);
      v18 = [[VKTimedAnimation alloc] initWithDuration:0.25];
      v19 = *(*a3 + 192);
      *(*a3 + 192) = v18;

      v229[0] = MEMORY[0x1E69E9820];
      v229[1] = 3321888768;
      v229[2] = ___ZN2md16RouteRenderLayer29layoutArrowsAndManeuverPointsERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEfbPN3ggl13CommandBufferE_block_invoke;
      v229[3] = &__block_descriptor_60_ea8_40c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0f8l;
      v20 = *a3;
      v21 = a3[1];
      v229[4] = a1;
      v229[5] = v20;
      v230 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = *a3;
      }

      v231 = v17;
      [*(v20 + 192) setStepHandler:v229];
      v227[0] = MEMORY[0x1E69E9820];
      v227[1] = 3321888768;
      v227[2] = ___ZN2md16RouteRenderLayer29layoutArrowsAndManeuverPointsERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEfbPN3ggl13CommandBufferE_block_invoke_15;
      v227[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0B8l;
      v22 = *a3;
      v23 = a3[1];
      v227[4] = a1;
      v227[5] = v22;
      v228 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = *a3;
      }

      [*(v22 + 192) setCompletionHandler:v227];
      md::AnimationRunner::runAnimation(*(a1 + 88), *(*a3 + 192));
      v24 = [*(*a3 + 160) overlay];
      v25 = [v24 composedRoute];
      *(*a3 + 520) = [v25 currentDisplayStep];

      if (v228)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v228);
      }

      v16 = a3;
      if (v230)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v230);
      }
    }

    v26 = *v16;
    if (*(*v16 + 288) == *(*v16 + 296))
    {
      v27 = v16[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v215 = v27;
      v28 = [*(v26 + 160) arrows];
      v29 = *(v26 + 160);
      if (v29)
      {
        v29 = [v29 sections];
      }

      else
      {
        v264 = 0;
        v265 = 0;
        v266 = 0;
      }

      v218 = v26;
      v84 = *v28;
      v83 = v28[1];
      if (*v28 == v83)
      {
        goto LABEL_173;
      }

      v214 = (v26 + 288);
      v213 = v28[1];
      while (1)
      {
        v245[0] = 0;
        v245[1] = v245;
        v246 = 0x5812000000;
        v247 = __Block_byref_object_copy__27085;
        v248 = __Block_byref_object_dispose__27086;
        v249 = "";
        memset(v250, 0, sizeof(v250));
        v251 = 1065353216;
        if (*(v84 + 4) == -1)
        {
          goto LABEL_172;
        }

        if (*(v84 + 8) == -1)
        {
          goto LABEL_172;
        }

        v85 = v264;
        if (v265 == v264)
        {
          goto LABEL_172;
        }

        v86 = (v265 - v264) >> 3;
        v87 = *(v84 + 12);
        if (v86 <= 1)
        {
          v86 = 1;
        }

        while (1)
        {
          v88 = *v85 ? *v85 + 8 : 0;
          v89 = *(v88 + 88);
          if (v89 < v87 || v89 == v87 && *(v88 + 92) <= *(v84 + 16))
          {
            v90 = *(v88 + 96);
            if (v87 < v90 || v87 == v90 && *(v84 + 16) <= *(v88 + 100))
            {
              break;
            }
          }

          v85 = (v85 + 8);
          if (!--v86)
          {
            goto LABEL_172;
          }
        }

        v92 = *(v88 + 248);
        v91 = *(v88 + 256);
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v219 = v91;
        __src = 0;
        v243 = 0;
        v244 = 0;
        v93 = *(v84 + 28);
        if (*(v84 + 32) > 0.0)
        {
          v29 = (*(*v88 + 56))(v88);
          if (v29 > (v93 + 1))
          {
            v94 = (*(**(v88 + 72) + 32))(*(v88 + 72), v93);
            v95 = 0;
            v96 = *(v94 + 8);
            v236 = *v94;
            v237 = v96;
            v97 = 1.0 - *(v84 + 32);
            do
            {
              *(&v267 + v95) = *(&v236 + v95) * v97;
              v95 += 4;
            }

            while (v95 != 12);
            v238 = v267;
            v239 = v268;
            v98 = (*(**(v88 + 72) + 32))(*(v88 + 72), (v93 + 1));
            v99 = 0;
            v100 = *(v98 + 8);
            v232 = *v98;
            v233 = v100;
            v101 = *(v84 + 32);
            do
            {
              *(&v267 + v99) = *(&v232 + v99) * v101;
              v99 += 4;
            }

            while (v99 != 12);
            v102 = 0;
            v234 = v267;
            v235 = v268;
            do
            {
              *(&v267 + v102) = *(&v234 + v102) + *(&v238 + v102);
              v102 += 4;
            }

            while (v102 != 12);
            v240 = v267;
            LODWORD(v241) = v268;
            std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&__src, &v240);
            LODWORD(v93) = v93 + 1;
          }
        }

        v103 = *(v84 + 8);
        if (*(v84 + 4) == v103)
        {
          while (1)
          {
            v104 = *(v84 + 36);
            if (v93 > v104)
            {
              break;
            }

            v105 = (*(**(v88 + 72) + 32))(*(v88 + 72), v93);
            v106 = *(v105 + 8);
            v267 = *v105;
            LODWORD(v268) = v106;
            std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&__src, &v267);
            LODWORD(v93) = v93 + 1;
          }

          if (*(v84 + 40) > 0.0)
          {
            v29 = (*(*v88 + 56))(v88);
            if (v29 > v104 + 1)
            {
              v125 = (*(**(v88 + 72) + 32))(*(v88 + 72), *(v84 + 36));
              v126 = 0;
              v127 = *(v125 + 8);
              v236 = *v125;
              v237 = v127;
              v128 = 1.0 - *(v84 + 40);
              do
              {
                *(&v267 + v126) = *(&v236 + v126) * v128;
                v126 += 4;
              }

              while (v126 != 12);
              v238 = v267;
              v239 = v268;
              v129 = (*(**(v88 + 72) + 32))(*(v88 + 72), (*(v84 + 36) + 1));
              v130 = 0;
              v131 = *(v129 + 8);
              v232 = *v129;
              v233 = v131;
              v132 = *(v84 + 40);
              do
              {
                *(&v267 + v130) = *(&v232 + v130) * v132;
                v130 += 4;
              }

              while (v130 != 12);
              v133 = 0;
              v234 = v267;
              v235 = v268;
              do
              {
                *(&v267 + v133) = *(&v234 + v133) + *(&v238 + v133);
                v133 += 4;
              }

              while (v133 != 12);
LABEL_119:
              v240 = v267;
              LODWORD(v241) = v268;
              std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&__src, &v240);
            }
          }
        }

        else
        {
          if (v93 <= *(v88 + 96))
          {
            v107 = v93;
            do
            {
              v108 = (*(**(v88 + 72) + 32))(*(v88 + 72), v107);
              v109 = *(v108 + 8);
              v267 = *v108;
              LODWORD(v268) = v109;
              std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&__src, &v267);
              LODWORD(v93) = v93 + 1;
            }

            while (v93 <= *(v88 + 96));
            v103 = *(v84 + 8);
          }

          v110 = 0;
          v111 = *(v264 + v103);
          if (v111)
          {
            v112 = (v111 + 8);
          }

          else
          {
            v112 = 0;
          }

          do
          {
            v113 = (*(*v112[9] + 32))(v112[9], v110);
            v114 = *(v113 + 8);
            v267 = *v113;
            LODWORD(v268) = v114;
            std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&__src, &v267);
            ++v110;
            v115 = *(v84 + 36);
          }

          while (v110 <= v115);
          if (*(v84 + 40) > 0.0)
          {
            v29 = ((*v112)[7])(v112);
            if (v29 > v115 + 1)
            {
              v116 = (*(*v112[9] + 32))(v112[9], *(v84 + 36));
              v117 = 0;
              v118 = *(v116 + 8);
              v236 = *v116;
              v237 = v118;
              v119 = 1.0 - *(v84 + 40);
              do
              {
                *(&v267 + v117) = *(&v236 + v117) * v119;
                v117 += 4;
              }

              while (v117 != 12);
              v238 = v267;
              v239 = v268;
              v120 = (*(*v112[9] + 32))(v112[9], (*(v84 + 36) + 1));
              v121 = 0;
              v122 = *(v120 + 8);
              v232 = *v120;
              v233 = v122;
              v123 = *(v84 + 40);
              do
              {
                *(&v267 + v121) = *(&v232 + v121) * v123;
                v121 += 4;
              }

              while (v121 != 12);
              v124 = 0;
              v234 = v267;
              v235 = v268;
              do
              {
                *(&v267 + v124) = *(&v234 + v124) + *(&v238 + v124);
                v124 += 4;
              }

              while (v124 != 12);
              goto LABEL_119;
            }
          }
        }

        v135 = __src;
        v134 = v243;
        v136 = mdm::zone_mallocator::instance(v29);
        v137 = pthread_rwlock_rdlock((v136 + 32));
        if (v137)
        {
          geo::read_write_lock::logFailure(v137, "read lock", v138);
        }

        v139 = malloc_type_zone_malloc(*v136, 0x68uLL, 0x10A10402DF98402uLL);
        atomic_fetch_add((v136 + 24), 1u);
        geo::read_write_lock::unlock((v136 + 32));
        md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(v139, 0xAAAAAAAAAAAAAAABLL * ((v134 - v135) >> 2));
        *v139 = &unk_1F2A2AB00;
        v238 = v139;
        *(v139 + 96) = *v84;
        __p = __src;
        v140 = memcpy(*(v139 + 9), __src, 12 * *(v139 + 11));
        v141 = 0x9DDFEA08EB382D69 * ((8 * (v92 & 0x1FFFFFFF) + 8) ^ HIDWORD(v92));
        v142 = 0x9DDFEA08EB382D69 * (HIDWORD(v92) ^ (v141 >> 47) ^ v141);
        v143 = 0x9DDFEA08EB382D69 * (v142 ^ (v142 >> 47));
        v144 = v245[1][7];
        if (!*&v144)
        {
          goto LABEL_138;
        }

        v145 = vcnt_s8(v144);
        v145.i16[0] = vaddlv_u8(v145);
        if (v145.u32[0] > 1uLL)
        {
          v146 = 0x9DDFEA08EB382D69 * (v142 ^ (v142 >> 47));
          if (v143 >= *&v144)
          {
            v146 = v143 % *&v144;
          }
        }

        else
        {
          v146 = (*&v144 - 1) & v143;
        }

        v147 = *(v245[1][6] + v146);
        if (!v147 || (v148 = *v147) == 0)
        {
LABEL_138:
          operator new();
        }

        while (1)
        {
          v149 = v148[1];
          if (v149 == v143)
          {
            break;
          }

          if (v145.u32[0] > 1uLL)
          {
            if (v149 >= *&v144)
            {
              v149 %= *&v144;
            }
          }

          else
          {
            v149 &= *&v144 - 1;
          }

          if (v149 != v146)
          {
            goto LABEL_138;
          }

LABEL_137:
          v148 = *v148;
          if (!v148)
          {
            goto LABEL_138;
          }
        }

        if (v148[2] != v92)
        {
          goto LABEL_137;
        }

        v182 = v219;
        v151 = v148[5];
        v150 = v148[6];
        if (v151 >= v150)
        {
          v154 = v148[4];
          v155 = v151 - v154;
          v156 = (v151 - v154) >> 3;
          v157 = v156 + 1;
          if ((v156 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v158 = v150 - v154;
          if (v158 >> 2 > v157)
          {
            v157 = v158 >> 2;
          }

          if (v158 >= 0x7FFFFFFFFFFFFFF8)
          {
            v159 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v159 = v157;
          }

          v271 = (v148 + 7);
          if (v159)
          {
            v160 = mdm::zone_mallocator::instance(v140);
            v161 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>>(v160, v159);
            v154 = v148[4];
            v155 = v148[5] - v154;
            v162 = v155 >> 3;
            v182 = v219;
          }

          else
          {
            v161 = 0;
            v162 = v156;
          }

          v163 = &v161[8 * v156];
          v164 = &v161[8 * v159];
          v165 = v238;
          v238 = 0;
          v166 = &v163[-8 * v162];
          *v163 = v165;
          v153 = v163 + 8;
          memcpy(v166, v154, v155);
          v167 = v148[4];
          v148[4] = v166;
          v148[5] = v153;
          v168 = v148[6];
          v148[6] = v164;
          v269 = v167;
          v270 = v168;
          v267 = v167;
          v268 = v167;
          std::__split_buffer<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v267);
        }

        else
        {
          v152 = v238;
          v238 = 0;
          *v151 = v152;
          v153 = v151 + 8;
        }

        v148[5] = v153;
        v170 = v218[37];
        v169 = v218[38];
        if (v170 >= v169)
        {
          v173 = *v214;
          v174 = v170 - *v214;
          v175 = (v174 >> 3) + 1;
          if (v175 >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v176 = v169 - v173;
          if (v176 >> 2 > v175)
          {
            v175 = v176 >> 2;
          }

          if (v176 >= 0x7FFFFFFFFFFFFFF8)
          {
            v177 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v177 = v175;
          }

          v271 = v214;
          if (v177)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v177);
          }

          v172 = v218;
          v178 = (8 * (v174 >> 3));
          *v178 = 0;
          v171 = v178 + 1;
          memcpy(0, v173, v174);
          v179 = v218[36];
          v218[36] = 0;
          v218[37] = v171;
          v180 = v218[38];
          v218[38] = 0;
          v269 = v179;
          v270 = v180;
          v267 = v179;
          v268 = v179;
          std::__split_buffer<std::unique_ptr<md::RouteLineArrowLayer>>::~__split_buffer(&v267);
        }

        else
        {
          *v170 = 0;
          v171 = v170 + 8;
          v172 = v218;
        }

        v172[37] = v171;
        v181 = *(a2 + 93);
        *&v259 = MEMORY[0x1E69E9820];
        *(&v259 + 1) = 3321888768;
        *&v260 = ___ZN2md16RouteRenderLayer15addArrowRibbonsERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke;
        *(&v260 + 1) = &unk_1F2A2AA78;
        *(&v261 + 1) = v214;
        *&v261 = v245;
        *&v262 = v172;
        *(&v262 + 1) = v215;
        if (v215)
        {
          atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v263 = v84;
        v270 = 0;
        v267 = &unk_1F2A59B50;
        v83 = v213;
        v268 = MEMORY[0x1B8C62DA0](&v259);
        v270 = &v267;
        v240 = 0;
        v241 = 0;
        ggl::Loader::performWithAccessor(*(v181 + 32));
        if (v241)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v241);
        }

        std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](&v267);
        if (*(&v262 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v262 + 1));
        }

        std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>::~unique_ptr[abi:nn200100](&v238);
        if (__p)
        {
          operator delete(__p);
        }

        v16 = a3;
        if (v182)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v182);
        }

LABEL_172:
        _Block_object_dispose(v245, 8);
        v29 = std::__hash_table<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineArrowBatchKey,std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineArrowBatchKey>,std::equal_to<md::RouteLineArrowBatchKey>,true>,std::__unordered_map_equal<md::RouteLineArrowBatchKey,std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineArrowBatchKey>,std::hash<md::RouteLineArrowBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(v250);
        v84 += 44;
        if (v84 == v83)
        {
LABEL_173:
          v245[0] = &v264;
          std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](v245);
          if (v215)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v215);
          }

          break;
        }
      }
    }

    if (!*(*(a1 + 56) + 32))
    {
      v216 = *md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 1));
      [*(*(a1 + 40) + 104) format];
      v183 = v216;
      if (v183)
      {
        [v183 textureManager];
      }

      else
      {
        v267 = 0;
        v268 = 0;
      }

      HIBYTE(v246) = 14;
      strcpy(v245, "routeLineArrow");
      LODWORD(v240) = 3;
      LODWORD(v238) = 0;
      __src = 0x3FF0000000000000;
      LODWORD(v236) = 1;
      LODWORD(v234) = 1;
      LODWORD(v232) = 1;
      std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,double,ggl::Filter,ggl::Filter,ggl::Filter,0>();
    }

    v184 = gdc::Context::context<md::RouteOverlayContext>(*(a2 + 1));
    md::RouteLayoutContext::RouteLayoutContext(v245, *(v184 + 176), *v16 + 464, a2);
    v257 = 1065353216;
    v185 = a3;
    v186 = *a3;
    v187 = *(*a3 + 528);
    LODWORD(v257) = *(*a3 + 204);
    HIDWORD(v257) = v187;
    v188 = *(v186 + 168);
    v252 = v188;
    v253 = -1;
    v254 = **(a2 + 93);
    v189 = *(v186 + 504);
    if (v189)
    {
      v190 = v189 + 8;
    }

    else
    {
      v190 = 0;
    }

    v258 = v190;
    v191 = *(v186 + 288);
    v192 = *(v186 + 296);
    if (v191 != v192)
    {
      v193 = 0;
      v194 = 0xFFFFFFFFLL;
      do
      {
        v195 = *v191;
        v196 = *(*(a1 + 56) + 32);
        if (*(*v191 + 168) | v196)
        {
          *(v195 + 168) = v196;
          v198 = *(v195 + 8);
          v197 = *(v195 + 16);
          if (v198 != v197)
          {
            do
            {
              v199 = *v198;
              v200 = *(*(*v198 + 8) + 168);
              v201 = *(*v198 + 296);
              v202 = v200[1];
              *&v259 = *v200;
              *(&v259 + 1) = v202;
              if (v202)
              {
                atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
                ggl::PipelineSetup::setState(v201, &v259);
                std::__shared_weak_count::__release_shared[abi:nn200100](v202);
              }

              else
              {
                ggl::PipelineSetup::setState(v201, &v259);
              }

              **(*(v199 + 296) + 168) = v200[4];
              ++v198;
            }

            while (v198 != v197);
            v195 = *v191;
            v185 = a3;
          }
        }

        v203 = v193;
        if (*(v195 + 160) != llroundf(*(*v185 + 528)))
        {
          md::RouteLineArrowLayer::layout(v195, v245);
          v204 = *v191;
          *&v259 = &unk_1F2A2AAB8;
          *(&v259 + 1) = v220;
          *(&v260 + 1) = &v259;
          md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(*(v204 + 8), *(v204 + 16), &v259);
          std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v259);
          v203 = v194;
        }

        v193 = (v193 + 1);
        ++v191;
        v194 = v203;
      }

      while (v191 != v192);
      if ((v203 & 0x80000000) == 0)
      {
        md::RouteLineArrowLayer::layout(*(*(*v185 + 288) + 8 * v203), v245);
        v205 = *(*(*v185 + 288) + 8 * v203);
        *&v259 = &unk_1F2A2AAB8;
        *(&v259 + 1) = v220;
        *(&v260 + 1) = &v259;
        md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(*(v205 + 8), *(v205 + 16), &v259);
        std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v259);
      }
    }

    if (v255)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v255);
    }
  }
}

void sub_1B2B620E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, id a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Block_object_dispose(&a63, 8);
  std::__hash_table<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineArrowBatchKey,std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineArrowBatchKey>,std::equal_to<md::RouteLineArrowBatchKey>,true>,std::__unordered_map_equal<md::RouteLineArrowBatchKey,std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineArrowBatchKey>,std::hash<md::RouteLineArrowBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(v63 + 48);
  a63 = (v64 - 232);
  std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&a63);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(a1);
}

uint64_t ggl::DaVinci::GroundShadowMapPipelineSetup::deviceDataIsEnabled(ggl::DaVinci::GroundShadowMapPipelineSetup *this, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(*(this + 2) + 316);
  }

  else if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(*(this + 2) + 345);
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::GroundShadowMapPipelineSetup::constantDataIsEnabled(ggl::DaVinci::GroundShadowMapPipelineSetup *this, uint64_t a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 5:
        v2 = *(*(this + 2) + 336);
        return v2 & 1;
      case 4:
        v2 = *(*(this + 2) + 341);
        return v2 & 1;
      case 3:
        v2 = *(*(this + 2) + 335);
        return v2 & 1;
    }

LABEL_9:
    v2 = 0;
    return v2 & 1;
  }

  if (a2 >= 3)
  {
    goto LABEL_9;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t md::Logic<md::DisplayLinkVerificationLogic,md::DisplayLinkVerificationContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x42BE82C40F9A8F80)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x1AF456233693CD46uLL);
      if (v6 && (v8 = v6[5], *(v8 + 8) == 0x1AF456233693CD46))
      {
        v7 = *(v8 + 32);
      }

      else
      {
        v7 = 0;
      }

      v10 = v7;
      return (*(*v5 + 152))(v5, a2, v9, v3);
    }
  }

  return result;
}

uint64_t ggl::SolidRibbon::PipelineSetup::textureIsEnabled(ggl::SolidRibbon::PipelineSetup *this, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = *(*(this + 2) + 308);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = *(*(this + 2) + 307);
  }

  return v2 & 1;
}

uint64_t ggl::DaVinciTraffic::BasePipelineSetup::textureIsEnabled(ggl::DaVinciTraffic::BasePipelineSetup *this, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = *(*(this + 2) + 308);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t ggl::PatternedRibbon::BasePipelineSetup::constantDataIsEnabled(ggl::PatternedRibbon::BasePipelineSetup *this, unint64_t a2)
{
  if (a2 == 3)
  {
    v2 = *(*(this + 2) + 309);
  }

  else
  {
    v2 = a2 < 3;
  }

  return v2 & 1;
}

uint64_t std::__function::__func<md::LabelRenderer::prepareDeviceBuffer(md::LabelRenderDeviceBuffer &,unsigned int)::$_0,std::allocator<md::LabelRenderer::prepareDeviceBuffer(md::LabelRenderDeviceBuffer &,unsigned int)::$_0>,void ()(ggl::Texture2DLoadItem const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ggl::TextureData2DNoCopy::~TextureData2DNoCopy(ggl::TextureData2DNoCopy *this)
{
  *this = &unk_1F2A5CC50;
  std::vector<ggl::ShaderLibrary::ComputeShaderEntry,geo::allocator_adapter<ggl::ShaderLibrary::ComputeShaderEntry,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 32));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CC50;
  std::vector<ggl::ShaderLibrary::ComputeShaderEntry,geo::allocator_adapter<ggl::ShaderLibrary::ComputeShaderEntry,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 32));
}

uint64_t ggl::Icon::IconPipelineSetup::textureIsEnabled(ggl::Icon::IconPipelineSetup *this, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(*(this + 2) + 304);
  }

  else
  {
    v2 = a2 == 0;
  }

  return v2 & 1;
}

uint64_t ggl::GlyphWithNormalHalo::DefaultPipelineSetup::constantDataIsEnabled(ggl::GlyphWithNormalHalo::DefaultPipelineSetup *this, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = *(*(this + 2) + 304);
    }

    else
    {
      v2 = (a2 - 2) < 2;
    }
  }

  else
  {
    v2 = *(*(this + 2) + 308);
  }

  return v2 & 1;
}

uint64_t ggl::Icon::IconPipelineSetup::constantDataIsEnabled(ggl::Icon::IconPipelineSetup *this, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = *(*(this + 2) + 304);
    }

    else
    {
      v2 = a2 == 2;
    }
  }

  else
  {
    v2 = *(*(this + 2) + 308);
  }

  return v2 & 1;
}

uint64_t ggl::GlyphWithNormalHalo::DefaultPipelineSetup::textureIsEnabled(ggl::GlyphWithNormalHalo::DefaultPipelineSetup *this, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(*(this + 2) + 304);
  }

  else
  {
    v2 = a2 == 0;
  }

  return v2 & 1;
}

void md::TextLabelPart::pushToRenderModel(uint64_t a1, gdc::Registry **a2, float a3)
{
  v76[31] = *MEMORY[0x1E69E9840];
  if (*(a1 + 940) == 1)
  {
    a3 = *(a1 + 936);
  }

  v4 = *(a1 + 768) * a3;
  *(a1 + 552) = fmaxf(fminf(v4, 1.0), 0.0);
  if (v4 < 0.0039062)
  {
    *(a1 + 889) = 0;
    return;
  }

  v5 = *(a1 + 883);
  *(a1 + 889) = v5;
  if (v5 == 1)
  {
    v6 = v76;
    v72 = v76;
    v73 = v76;
    v74 = v76;
    v75 = 8;
    v7 = *(a1 + 818) - *(a1 + 816);
    v8 = (*(a1 + 822) - *(a1 + 820));
    v9 = v8 + v7;
    v10 = *(a1 + 904);
    v11 = *(a1 + 896);
    v12 = (v10 - v11) >> 4;
    if (v9 > v12)
    {
      v13 = v9 - v12;
      v14 = *(a1 + 912);
      if (v13 > (v14 - v10) >> 4)
      {
        v15 = v14 - v11;
        if (v15 >> 3 > v9)
        {
          v9 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v9;
        }

        if (!(v16 >> 60))
        {
          operator new();
        }

        goto LABEL_80;
      }

      bzero(*(a1 + 904), 16 * v13);
      *(a1 + 904) = v10 + 16 * v13;
      v17 = (a1 + 920);
      *(a1 + 920) = 0;
      goto LABEL_19;
    }

    if (v9 < v12)
    {
      *(a1 + 904) = v11 + 16 * v9;
    }

    *(a1 + 920) = 0;
    if (v9)
    {
      v17 = (a1 + 920);
LABEL_19:
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = v7;
      v22 = -v7;
      while (1)
      {
        if (v20 < v21)
        {
          v23 = v20 + *(a1 + 816);
          v24 = 32;
        }

        else
        {
          v23 = v22;
          v24 = 128;
        }

        v25 = (*(*(a1 + 592) + v24 + 32) + (v23 << 6));
        v26 = *v25;
        v27 = *(a1 + 896);
        *(v27 + v18) = 0;
        v28 = *v26;
        if (*v26)
        {
          if (*(v28 + 62) == 1)
          {
            v29 = *(v28 + 96);
            if (v29)
            {
              break;
            }
          }
        }

LABEL_31:
        ++v20;
        ++v22;
        v19 += 0x10000;
        v18 += 16;
        if (v8 == v22)
        {
          v6 = v72;
          v30 = v73;
          goto LABEL_33;
        }
      }

      v68 = v21;
      v69 = v17;
      v70 = v8;
      v30 = v72;
      v31 = v73;
      if (v72 == v73)
      {
        v32 = v29;
      }

      else
      {
        v32 = v29;
        v33 = (*(**(v29 + 32) + 32))(*(v29 + 32));
        v30 = v73;
        if (*(v31 - 3) == v33)
        {
          v34 = *v26;
          if (*(v73 - 2) == *(*v26 + 61))
          {
LABEL_73:
            v64 = v27 + v18;
            *(v64 + 2) = -1 - 85 * ((v30 - v72) >> 3);
            v65 = *(v30 - 4);
            *(v30 - 4) = v65 + 1;
            *(v64 + 4) = v65;
            *(v30 - 2) = v20;
            *v64 = 1;
            *(v64 + 8) = v25;
            v17 = v69;
            v8 = v70;
            v21 = v68;
            if ((*(v34 + 58) & 1) == 0)
            {
              *(v27 + v18 + 1) = 1;
              ++*v69;
            }

            goto LABEL_31;
          }
        }
      }

      v6 = v72;
      if (v30 - v72 == 6120)
      {
        goto LABEL_33;
      }

      v67 = (*(**(v32 + 32) + 32))(*(v32 + 32));
      v60 = v59;
      v61 = *(*v26 + 61);
      v66 = *(*v26 + 59);
      v62 = v73;
      v63 = 1 - 0x5555555555555555 * ((v73 - v72) >> 3);
      if (v63 > v75)
      {
        geo::small_vector_base<md::TextLabelPart::prepareRenderDescriptors(void)::DescriptorInfo>::grow(&v72, v63);
        v62 = v73;
      }

      *v62 = v67;
      *(v62 + 8) = v60;
      v62[2] = v19 & 0xFFFF0000 | (v61 << 48) | (v66 << 56);
      v30 = v73 + 3;
      v73 += 3;
      v34 = *v26;
      goto LABEL_73;
    }

    v30 = v76;
LABEL_33:
    v35 = 0xAAAAAAAAAAAAAAABLL * (v30 - v6);
    v36 = (-85 * (v30 - v6));
    v37 = *(a1 + 960);
    v38 = *(a1 + 952);
    v39 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v38) >> 4);
    v40 = v36 >= v39;
    v41 = v36 - v39;
    if (v41 != 0 && v40)
    {
      v42 = *(a1 + 968);
      if (0xAAAAAAAAAAAAAAABLL * ((v42 - v37) >> 4) < v41)
      {
        v43 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v38) >> 4);
        v44 = 0x5555555555555556 * ((v42 - v38) >> 4);
        if (v44 <= v36)
        {
          v44 = v36;
        }

        if (v43 >= 0x2AAAAAAAAAAAAAALL)
        {
          v45 = 0x555555555555555;
        }

        else
        {
          v45 = v44;
        }

        if (v45 <= 0x555555555555555)
        {
          operator new();
        }

LABEL_80:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v46 = v37 + 48 * v41;
      do
      {
        *v37 = 0uLL;
        *(v37 + 16) = 0uLL;
        *v37 = 1;
        *(v37 + 4) = 10;
        *(v37 + 8) = 257;
        *(v37 + 32) = 0;
        *(v37 + 36) = 258;
        *(v37 + 38) = 0;
        *(v37 + 46) = 0;
        v37 += 48;
      }

      while (v37 != v46);
      *(a1 + 960) = v46;
    }

    else
    {
      if (!v40)
      {
        *(a1 + 960) = v38 + 48 * v36;
      }

      if (!v36)
      {
        goto LABEL_62;
      }
    }

    v47 = 0;
    v48 = 0;
    v49 = 32;
    do
    {
      v50 = v72 + v47;
      if (*(v72 + v47 + 22))
      {
        v51 = 3;
      }

      else if (*(a1 + 882) == 1)
      {
        if (*(a1 + 886))
        {
          v51 = 6;
        }

        else
        {
          v51 = 5;
        }
      }

      else
      {
        v51 = 1;
      }

      v52 = *(a1 + 952);
      v53 = v52 + v49;
      *(v53 - 28) = v51;
      *(v53 + 12) = *(v50 + 10);
      *(v53 + 8) = *(v50 + 4);
      *(v53 - 32) = *(a1 + 557);
      *(v53 - 30) = *(a1 + 556);
      v54 = *(a1 + 32);
      v55 = 0;
      if (*(v54 + 78) == 1)
      {
        v55 = *(v54 + 72);
      }

      v56 = (v52 + v49);
      *v56 = v55;
      *(v56 - 23) = *(a1 + 565) ^ 1;
      *(v56 - 31) = *(a1 + 825);
      *(v56 - 24) = *(v54 + 77) ^ 1;
      *(v56 - 22) = *(a1 + 764) > 0.0;
      if (*(a1 + 882) == 1)
      {
        if (*(a1 + 824))
        {
          v57 = v35;
        }

        else
        {
          v57 = v48;
        }

        *(v56 - 29) = v57;
      }

      *(v56 - 13) = *(a1 + 558);
      v58 = *v50;
      ++v48;
      *(v56 - 8) = v50[8];
      *(v56 - 2) = v58;
      LOBYTE(v35) = v35 - 1;
      v47 += 24;
      v49 += 48;
    }

    while (v36 != v48);
    v6 = v72;
LABEL_62:
    if (v6 != v74)
    {
      free(v6);
    }

    if (*(a1 + 952) != *(a1 + 960))
    {
      gdc::Registry::create(*a2);
    }
  }
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,ggl::Batcher::commit(unsigned int)::$_0 &,gm::Range<unsigned long> *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,ggl::CommandBuffer::sortRenderItems(BOOL)::$_0 &,ggl::RenderItem **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 48);
  v8 = *(*result + 48);
  v9 = *a3;
  v10 = *(*a3 + 48);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 48) < *(*result + 48))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 48) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 48) < *(v5 + 48))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 48) < *(*a2 + 48))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 48) < *(*result + 48))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 48) < *(*a4 + 48))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 48) < *(*a3 + 48))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 48) < *(*a2 + 48))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 48) < *(*result + 48))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

uint64_t md::CollisionObject::setupShapeData(uint64_t this)
{
  v1.i64[0] = *(this + 32);
  v2 = *(this + 198);
  if (v2 == 1)
  {
    *v1.f32 = vmla_n_f32(*(this + 40), vsub_f32(*v1.f32, *(this + 40)), *(this + 104));
  }

  v3 = vsub_f32(*(this + 8), *this);
  v4 = vmla_f32(*this, 0x3F0000003F000000, v3);
  v5 = vadd_f32(v4, *v1.f32);
  v6 = *(this + 196);
  if (v6 != 1 || *(this + 168) && *(this + 176) == 1)
  {
    v7 = 0;
    v8 = *(this + 96);
    v9 = *(this + 108);
    v10 = vmaxnm_f32(v3, 0);
    v11 = vcvtq_f64_f32(v10);
    *v12.f32 = vsub_f32(v4, vcvt_f32_f64(vmulq_n_f64(v11, v9 * 0.5)));
    v13 = &v85;
    *&v12.u32[2] = vmla_n_f32(*v12.f32, v10, v9);
    v85 = v12;
    v14 = 1;
    v15 = xmmword_1B33B0730;
    while (v85.f32[v7 + 2] >= v13->f32[0])
    {
      v16 = v14;
      v14 = 0;
      v13 = &v85.i32[1];
      v7 = 1;
      if ((v16 & 1) == 0)
      {
        v17 = 0;
        v86 = v85;
        v18 = &v86;
        v19 = 1;
        while (v86.f32[v17 + 2] >= v18->f32[0])
        {
          v20 = v19;
          v19 = 0;
          v18 = &v86.i32[1];
          v17 = 1;
          if ((v20 & 1) == 0)
          {
            v21.i64[0] = v1.i64[0];
            v21.i64[1] = v1.i64[0];
            v15 = vaddq_f32(v86, v21);
            goto LABEL_20;
          }
        }

        v15 = v86;
        break;
      }
    }

LABEL_20:
    *(this + 64) = v15;
    if (v2)
    {
      v44 = 0;
      v45 = 0;
      v46 = *(this + 104);
      *v47.f32 = vsub_f32(v4, vcvt_f32_f64(vmulq_n_f64(v11, v46 * 0.5)));
      v48 = &v85;
      *&v47.u32[2] = vmla_n_f32(*v47.f32, v10, v46);
      v85 = v47;
      do
      {
        v49 = v85.f32[v45 + 2];
        v50 = v48->f32[0];
        if (v44)
        {
          break;
        }

        v44 = 1;
        v48 = &v85.i32[1];
        v45 = 1;
      }

      while (v49 >= v50);
      if (v49 < v50)
      {
        v1.i64[0] = 0x80000000800000;
        v56 = vneg_f32(0x80000000800000);
      }

      else
      {
        v51 = 0;
        v52 = 0;
        v86 = v85;
        v53 = &v86;
        do
        {
          v54 = v86.f32[v52 + 2];
          v55 = v53->f32[0];
          if (v51)
          {
            break;
          }

          v51 = 1;
          v53 = &v86.i32[1];
          v52 = 1;
        }

        while (v54 >= v55);
        v56 = *v86.f32;
        if (v54 < v55)
        {
          v1.i64[0] = v86.i64[1];
        }

        else
        {
          v56 = vadd_f32(*v86.f32, *v1.f32);
          *v1.f32 = vadd_f32(*&v86.u32[2], *v1.f32);
        }
      }

      v8 = v46 * v8;
      *(this + 48) = v56;
      *(this + 56) = v1.i64[0];
    }

    else
    {
      v36 = 0;
      v37 = 1;
      v38 = xmmword_1B33B0730;
      while (*(this + 8 + 4 * v36) >= *(this + 4 * v36))
      {
        v39 = v37;
        v37 = 0;
        v36 = 1;
        if ((v39 & 1) == 0)
        {
          v40 = 0;
          v86 = *this;
          v41 = &v86;
          v42 = 1;
          while (v86.f32[v40 + 2] >= v41->f32[0])
          {
            v43 = v42;
            v42 = 0;
            v41 = &v86.i32[1];
            v40 = 1;
            if ((v43 & 1) == 0)
            {
              v1.i64[1] = v1.i64[0];
              v38 = vaddq_f32(v86, v1);
              goto LABEL_39;
            }
          }

          v38 = v86;
          break;
        }
      }

LABEL_39:
      *(this + 48) = v38;
    }

    v57 = 0;
    v58 = (this + 48);
    v59 = 1;
    while (*(this + 56 + 4 * v57) >= v58->f32[v57])
    {
      v60 = v59;
      v59 = 0;
      v57 = 1;
      if ((v60 & 1) == 0)
      {
        v1.f32[0] = -v8;
        v61 = vdupq_lane_s32(*v1.f32, 0);
        v35.i64[0] = vaddq_f32(*v58, v61).u64[0];
        v35.i64[1] = vsubq_f32(*v58, v61).i64[1];
        goto LABEL_45;
      }
    }

    v35 = *v58;
    goto LABEL_45;
  }

  v24 = vcltz_f32(v3);
  v22 = v24.i8[0];
  v23 = 0.5 * v3.f32[0];
  *v24.i32 = vmuls_lane_f32(0.5, v3, 1);
  if (v22)
  {
    v23 = 0.0;
  }

  if (v24.i8[4])
  {
    *v24.i32 = 0.0;
  }

  v25 = *(this + 96);
  v26 = v23 + v25;
  v27 = *v24.i32 + v25;
  v28 = *(this + 16);
  v29 = vdup_lane_s32(v28, 0);
  v29.f32[0] = -v28.f32[1];
  v30 = vadd_f32(vabs_f32(vmul_n_f32(v29, v27)), vabs_f32(vmul_n_f32(v28, v26)));
  v31 = vsub_f32(v5, v30);
  v32 = vadd_f32(v30, v5);
  *(this + 80) = v31;
  *(this + 88) = v32;
  *(this + 48) = v31;
  *(this + 56) = v32;
  *(this + 64) = v31;
  *(this + 72) = v32;
  if (v2)
  {
    v33 = vadd_f32(vabs_f32(vmul_n_f32(v29, *(this + 104) * v27)), vabs_f32(vmul_n_f32(v28, *(this + 104) * v26)));
    v34 = vadd_f32(v33, v5);
    *v35.f32 = vsub_f32(v5, v33);
    *&v35.u32[2] = v34;
LABEL_45:
    *(this + 80) = v35;
  }

  v62 = *(this + 160);
  if (v62)
  {
    v72 = *(this + 176);
    if (v72)
    {
      v73 = (*(this + 184) + 16);
      v74 = v62 + 1;
      do
      {
        v75 = vmaxnm_f32(vmul_f32(vmaxnm_f32(vsub_f32(*v74, v74[-1]), 0), 0x3F0000003F000000), 0);
        v76 = (this + 96);
        v77 = vld1_dup_f32(v76);
        v78 = vadd_f32(v77, v75);
        v73[-1] = v78;
        v79 = (this + 100);
        v80 = vld1_dup_f32(v79);
        v81 = vadd_f32(v80, v75);
        *v73 = v81;
        v82 = vsub_f32(vmla_f32(v74[-1], 0x3F0000003F000000, vsub_f32(*v74, v74[-1])), v4);
        if (v2)
        {
          v73[-1] = vmul_n_f32(v78, *(this + 104));
          *v73 = vmul_n_f32(v81, *(this + 104));
          v82 = vmul_n_f32(v82, *(this + 104));
        }

        if (v6)
        {
          v83 = vmul_n_f32(v82, *(this + 16));
          v84 = vrev64_s32(vmul_n_f32(v82, *(this + 20)));
          v82.i32[0] = vsub_f32(v83, v84).u32[0];
          v82.i32[1] = vadd_f32(v83, v84).i32[1];
        }

        v73[-2] = vadd_f32(v82, v5);
        v73 += 3;
        v74 += 2;
        --v72;
      }

      while (v72);
    }
  }

  else
  {
    v63 = *(this + 168);
    if (v63)
    {
      v64 = *(this + 176);
      if (v64)
      {
        v65 = *(this + 184) + 12;
        v66 = (v63 + 8);
        do
        {
          v67 = *(this + 96) + *v66;
          *(v65 - 4) = v67;
          *v65 = v67;
          v68 = *(this + 100) + *v66;
          *(v65 + 4) = v68;
          *(v65 + 8) = v68;
          v69 = vsub_f32(*(v66 - 2), v4);
          if (v2)
          {
            *(v65 - 4) = vmul_n_f32(*(v65 - 4), *(this + 104));
            *(v65 + 4) = vmul_n_f32(*(v65 + 4), *(this + 104));
            v69 = vmul_n_f32(v69, *(this + 104));
          }

          if (v6)
          {
            v70 = vmul_n_f32(v69, *(this + 16));
            v71 = vrev64_s32(vmul_n_f32(v69, *(this + 20)));
            v69.i32[0] = vsub_f32(v70, v71).u32[0];
            v69.i32[1] = vadd_f32(v70, v71).i32[1];
          }

          *(v65 - 12) = vadd_f32(v69, v5);
          v65 += 24;
          v66 += 3;
          --v64;
        }

        while (v64);
      }
    }
  }

  return this;
}

float md::LabelIcon::centeredRenderBounds(float32x2_t *this)
{
  v1 = atomic_load(&this[18]);
  if ((v1 & 1) == 0)
  {
    return 3.4028e38;
  }

  *v2.f32 = vsub_f32(this[7], this[6]);
  v2.i64[1] = v2.i64[0];
  LODWORD(result) = vbslq_s8(vcltzq_f32(v2), xmmword_1B33B2280, vmulq_f32(v2, xmmword_1B33B0930)).u32[0];
  return result;
}

float md::HorizontalTextLabelPart::bottomAlignInset(uint64_t a1, int a2)
{
  v2 = 1088;
  if (!a2)
  {
    v2 = 976;
  }

  return *(a1 + v2 + 60);
}

uint64_t md::Label::pushToRenderModel(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = *(result + 296);
  if ((v5 || (v5 = *(result + 272)) != 0) && *(result + 440) >= 0.0)
  {
    v6 = *(result + 304);
    if (v6)
    {
      (*(*v6 + 128))(v6, a2, 1.0);
    }

    v7 = *(v4 + 1148) * *(v4 + 1204);
    if (v7 >= 0.0039062 || *(v4 + 1264) || (result = (*(*v5 + 712))(v5), result))
    {
      v8 = *(*v5 + 128);
      a3.n128_f32[0] = v7;

      return v8(v5, a2, a3);
    }
  }

  return result;
}

float md::CurvedTextLabelPart::pushToRenderModel(uint64_t a1, gdc::Registry **a2, float a3)
{
  v9 = *MEMORY[0x1E69E9840];
  md::TextLabelPart::pushToRenderModel(a1, a2, *(a1 + 1200) * a3);
  if (*(a1 + 889) == 1)
  {
    v6 = *(a1 + 920);
    if (v6)
    {
      result = *(a1 + 796);
      if (result > 0.0)
      {
        *(a1 + 1369) = *(a1 + 565) ^ 1;
        *(a1 + 1400) = v6;
        *(a1 + 1361) = *(a1 + 825);
        *(a1 + 1366) = *(a1 + 558);
        *(a1 + 1362) = *(a1 + 556);
        v7 = *(a1 + 32);
        v8 = 0;
        if (*(v7 + 78) == 1)
        {
          v8 = *(v7 + 72);
        }

        *(a1 + 1392) = v8;
        gdc::Registry::create(*a2);
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::GlyphMeshDescriptor>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

BOOL md::Label::isAnimating(md::Label *this)
{
  if (*(this + 1339) != 1)
  {
    return 0;
  }

  v2 = *(this + 34);
  if (!v2)
  {
    goto LABEL_27;
  }

  if (((*(*v2 + 712))(v2) & 1) == 0)
  {
    if ((*(this + 1339) & 1) == 0)
    {
      return *(this + 158) != 0;
    }

    v3 = *(this + 34);
    if (!v3 || ((*(*v3 + 616))(v3) & 1) == 0)
    {
LABEL_27:
      v4 = *(this + 37);
      if ((!v4 || ((*(*v4 + 696))(v4) & 1) == 0) && !*(this + 38))
      {
        v5 = *(this + 1152);
        if (v5 == 1)
        {
          if (*(this + 300) < 1.0 || *(this + 308) < 1.0)
          {
            return 1;
          }
        }

        else if (v5 == 3)
        {
          if (*(this + 308) < 1.0)
          {
            return 1;
          }
        }

        else if (v5 == 2 && *(this + 300) > 0.0)
        {
          return 1;
        }

        if (!*(this + 158))
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

uint64_t md::IconLabelPart::pushToRenderModel(uint64_t a1, gdc::Registry **a2, float a3)
{
  if (*(a1 + 824) == 1)
  {
    a3 = *(a1 + 820);
  }

  v5 = *(a1 + 600) * a3;
  result = (*(*a1 + 744))(a1, 1);
  if (result)
  {
    if ((*(a1 + 828) & 1) == 0 && (*(a1 + 567) & 1) == 0)
    {
      *(a1 + 718) = *(a1 + 558);
      if (v5 >= 0.0039062)
      {
        v7 = *(a1 + 640);
        if (v7)
        {
          v8 = atomic_load((v7 + 143));
          if (v8)
          {
            v9 = *(v7 + 16);
          }

          else
          {
            v9 = 0;
          }

          *(a1 + 728) = [v9 texture];
          *(a1 + 736) = v10;
        }

        else
        {
          *(a1 + 728) = 0;
          *(a1 + 736) = 0;
        }

        v11 = *(a1 + 32);
        if (v11)
        {
          v12 = 0;
          if (*(v11 + 78) == 1)
          {
            v12 = *(v11 + 72);
          }

          *(a1 + 744) = v12;
        }

        gdc::Registry::create(*a2);
      }
    }
  }

  *(a1 + 552) = fmaxf(fminf(v5, 1.0), 0.0);
  return result;
}

uint64_t md::ImageLabelPart::visible(uint64_t a1, int a2)
{
  v2 = 596;
  if (!a2)
  {
    v2 = 572;
  }

  return *(a1 + v2 + 21);
}

uint64_t std::__function::__func<md::IconLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0,std::allocator<md::IconLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4BEC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::IconMeshDescriptor>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<md::IconMeshDescriptor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

ggl::zone_mallocator *std::vector<ggl::Icon::IconPipelineSetup *,geo::allocator_adapter<ggl::Icon::IconPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
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

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Icon::IconPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Icon::IconPipelineSetup *,geo::allocator_adapter<ggl::Icon::IconPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
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

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<std::string>(uint64_t a1, unsigned __int16 a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v6 = *(a1 + 16 * a4 + 16);
  if (!v6)
  {
    goto LABEL_12;
  }

  v9 = a1 + 16 * a4;
  if (*(v9 + 56))
  {
    v10 = *(v9 + 48);
    v11 = 8 * *(v9 + 56);
    while (1)
    {
      v12 = *(*v10 + 72);
      if (v12)
      {
        v15 = *v12;
        v13 = v12 + 2;
        v14 = v15;
        v16 = v15 + 120 * *(v13 + a3);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, a2) != *(v16 + 12))
        {
          break;
        }
      }

      v10 += 8;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    if (a3 >= 0x17)
    {
      v21 = 23;
    }

    else
    {
      v21 = a3;
    }

    v22 = v14 + 120 * *(v13 + v21);
    v23 = a2;
    goto LABEL_20;
  }

LABEL_7:
  v17 = *(v6 + 72);
  if (!v17 || (a3 >= 0x17 ? (v18 = 23) : (v18 = a3), v19 = *v17 + 120 * *(v17 + v18 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v19, a2) == *(v19 + 12)))
  {
LABEL_12:
    if (a5)
    {
      *a5 = 0;
    }

    return &gss::defaultValueForKey<gss::PropertyID,std::string>(gss::PropertyID)::_defaultValue;
  }

  v23 = a2;
  v22 = v19;
LABEL_20:

  return gss::PropertySetValueHelper<gss::PropertyID,std::string>::value(v23, v22);
}

void gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(std::string *a1, uint64_t a2, unsigned __int16 a3, unsigned int a4, int a5)
{
  if (a5 == 2)
  {
    v9 = *a2;
    if (*a2)
    {
      v10 = *v9;
      LODWORD(v9) = *v9 == 1.0;
      if (*(a2 + 10) == 1 && v10 != 0.0 && v10 != 1.0)
      {
        v12 = v10 < 1.0;
        goto LABEL_13;
      }
    }

    v13 = (a2 + v9 + 11);
  }

  else
  {
    v13 = (a2 + 12);
  }

  v14 = *v13;
  if (v14 == 2)
  {
    v12 = 1;
LABEL_13:
    v29 = 1;
    v28 = 1;
    v15 = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<std::string>(a2, a3, a4, 0, &v29);
    if (v15[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v27, *v15, *(v15 + 1));
    }

    else
    {
      v16 = *v15;
      v27.__r_.__value_.__r.__words[2] = *(v15 + 2);
      *&v27.__r_.__value_.__l.__data_ = v16;
    }

    v19 = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<std::string>(a2, a3, a4, 1u, &v28);
    if (v19[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v19, *(v19 + 1));
    }

    else
    {
      v20 = *v19;
      __p.__r_.__value_.__r.__words[2] = *(v19 + 2);
      *&__p.__r_.__value_.__l.__data_ = v20;
    }

    p_p = &v27;
    if (!v12)
    {
      p_p = &__p;
    }

    v22 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (!v12)
    {
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v22 < 0)
    {
      std::string::__init_copy_ctor_external(a1, p_p->__r_.__value_.__l.__data_, p_p->__r_.__value_.__l.__size_);
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_28:
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *&p_p->__r_.__value_.__l.__data_;
      a1->__r_.__value_.__r.__words[2] = p_p->__r_.__value_.__r.__words[2];
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_28;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_28;
  }

  v17 = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<std::string>(a2, a3, a4, v14, 0);
  if (v17[23] < 0)
  {
    v24 = *v17;
    v25 = *(v17 + 1);

    std::string::__init_copy_ctor_external(a1, v24, v25);
  }

  else
  {
    v18 = *v17;
    a1->__r_.__value_.__r.__words[2] = *(v17 + 2);
    *&a1->__r_.__value_.__l.__data_ = v18;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::localId;
    *algn_1EB82D778 = 0x3B44468EF6722590;
    qword_1EB82D780 = "md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>]";
    qword_1EB82D788 = 58;
  }
}

uint64_t std::__function::__func<md::ita::AssignRouteMaskTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignRouteMaskTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a4);
  result = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a4);
  v8 = result;
  v9 = **(a1 + 16);
  v10 = *(v9 + 168);
  if (v10 && (v11 = *(v9 + 8), v12 = *(v10 + 32), v13 = *(v11 + 96), v12 < (*(v11 + 104) - v13) >> 3))
  {
    v14 = *(*(v13 + 8 * v12) + 16);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(result + 168), *(a3 + 4), v14);
  }

  if (*(a3 + 1) == 1)
  {
    v15 = *(a3 + 8);
    v16 = *(v8 + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v16, v15, v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t md::CompositeLabelPart::animate(uint64_t this, float a2)
{
  v2 = *(this + 576);
  for (i = *(this + 584); v2 != i; this = (*(*v5 + 624))(v5, a2))
  {
    v5 = *v2++;
  }

  return this;
}

unint64_t sortRenderDescriptionFunc(unint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  if (v2 != v3)
  {
    return v2 > v3;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4 != v5)
  {
    return v4 < v5;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  if (v6 != v7)
  {
    return v6 > v7;
  }

  v8 = *(a1 + 6);
  v9 = *(a2 + 6);
  v10 = v8 >= v9;
  if (v8 != v9)
  {
    return !v10;
  }

  v11 = *(a1 + 3);
  v12 = *(a2 + 3);
  v10 = v11 >= v12;
  if (v11 != v12)
  {
    return !v10;
  }

  v13 = *(a1 + 8);
  v14 = *(a2 + 8);
  v10 = v13 >= v14;
  if (v13 != v14)
  {
    return !v10;
  }

  v15 = *(a1 + 4);
  v16 = *(a2 + 4);
  v10 = v15 >= v16;
  if (v15 != v16)
  {
    return !v10;
  }

  v17 = *(a1 + 16);
  v18 = *(a2 + 16);
  if (v17 == v18)
  {
    v19 = *(a1 + 9);
    if (v19 != *(a2 + 9))
    {
      return v19 ^ 1u;
    }

    v17 = *(a1 + 10);
    if (v17 == *(a2 + 10))
    {
      v10 = a1 >= a2;
      return !v10;
    }
  }

  else
  {
    v20 = HIDWORD(v17) < HIDWORD(v18);
    v21 = v17 == v18;
    LODWORD(v17) = v17 < v18;
    if (v21)
    {
      return v20;
    }

    else
    {
      return v17;
    }
  }

  return v17;
}

uint64_t ggl::TextureData2DNoCopy::TextureData2DNoCopy(uint64_t a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5)
{
  *(a1 + 8) = 1;
  *(a1 + 12) = a4;
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *a1 = &unk_1F2A5CC50;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v10 = (a1 + 32);
  *(a1 + 64) = 0;
  std::vector<unsigned char *,geo::allocator_adapter<unsigned char *,ggl::zone_mallocator>>::resize((a1 + 32), 1uLL);
  v11 = *(a1 + 64);
  *(a1 + 64) = ggl::pixelFormatPixelsSize(a4, a2, a3) + v11;
  *(a1 + 24) = a5;
  **v10 = a5 + v11;
  return a1;
}

void md::NavLabel::layoutForDisplayWithNavContext(float32x2_t *this, md::NavContext *a2)
{
  v2 = this[38];
  if (v2)
  {
    v3 = *(*&v2 + 640);
    if (v3)
    {
      v4 = atomic_load((v3 + 144));
      if (v4)
      {
        if ((this[47].i8[0] & 1) == 0)
        {
          md::NavLabel::worldPointForDisplay(this, a2);
          v7 = 0;
          *&v29 = v8;
          *(&v29 + 1) = v9;
          v30 = v10;
          v11 = *(a2 + 3);
          v12 = 864;
          do
          {
            v13 = 0;
            v14 = 0.0;
            v15 = v12;
            do
            {
              v14 = v14 + *(&v29 + v13) * *(v11 + v15);
              v13 += 8;
              v15 += 32;
            }

            while (v13 != 24);
            v25.f64[v7] = *(v11 + 864 + 8 * v7 + 96) + v14;
            ++v7;
            v12 += 8;
          }

          while (v7 != 4);
          __asm { FMOV            V1.2D, #1.0 }

          this[52] = vcvt_f32_f64(vmulq_f64(v25, vdivq_f64(_Q1, vdupq_lane_s64(v27, 0))));
          v25 = xmmword_1B33B0710;
          v26 = 0.0;
          v28 = 0;
          v31.i8[0] = 0;
          v32 = 0;
          md::LabelLayoutContext::evaluateWorldPoint(v11, &v29, &v31, 1, 0, &v25, 1.0);
          *this[28].f32 = v29;
          this[30] = v30;
          v21 = v26;
          this[33].f32[0] = v21;
        }

        *&v25.f64[0] = vadd_f32(this[48], this[52]);
        (*(**&this[38] + 984))(*&this[38], a2, &v25, this + 48);
        this[53].f32[0] = (*(**&this[38] + 264))();
        this[53].i32[1] = v22;
        this[54].i32[0] = v23;
        this[54].i32[1] = v24;
      }
    }
  }
}

void md::LabelRenderer::initGlyphMeshes(md::LabelRenderData &,md::LabelLayoutContext const&)::$_0::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  if (v4)
  {
    v6 = a2;
    (*(*v4 + 48))(v4, a2, *a1);
    v7 = a1[1];
    v8 = *(v6 + 38);
    if (*(v6 + 38))
    {
      v9 = *(v7 + 4);
      v10 = *(v7 + 5);
      v11 = 256 - v9;
      if (v11 >= v8)
      {
        v11 = 0;
      }

      v12 = v9 + v11;
      *(v7 + 4) = v9 + v11 + v8;
      *(v7 + 5) = v10 + v8;
      v13 = (v7[3] + 16 * (v9 + v11));
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v14 = *(v6 + 39);
    if (*(v6 + 39))
    {
      v15 = *(v7 + 8);
      v16 = *(v7 + 9);
      v17 = 256 - v15;
      if (v17 >= v14)
      {
        v17 = 0;
      }

      v18 = v15 + v17;
      *(v7 + 8) = v15 + v17 + v14;
      *(v7 + 9) = v16 + v14;
      v19 = v7[5] + 4 * (v15 + v17);
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v20 = *a1;
    if (*a3 == 1)
    {
      v21 = 0;
      v22 = a1[2];
      v23 = (v22 + 92);
      v24 = v20[8];
      do
      {
        v25 = 0;
        v26 = v24;
        do
        {
          v27 = 0;
          v28 = 0.0;
          v29 = v23;
          do
          {
            v30 = *v29;
            v29 += 4;
            v28 = v28 + *(v26 + v27) * v30;
            v27 += 8;
          }

          while (v27 != 32);
          *&v146[2 * v25++].i64[v21] = v28;
          v26 += 32;
        }

        while (v25 != 4);
        ++v21;
        ++v23;
      }

      while (v21 != 4);
      v31 = 0;
      v32 = v146;
      do
      {
        v34 = *v32;
        v33 = v32[1];
        v32 += 2;
        v145[v31++] = vcvt_hight_f32_f64(vcvt_f32_f64(v34), v33);
      }

      while (v31 != 4);
      v35 = v145[1];
      *v13 = v145[0];
      v13[1] = v35;
      v36 = v145[3];
      v13[2] = v145[2];
      v13[3] = v36;
      if (*(a3 + 1) == 1)
      {
        v37 = v145;
        gm::operator*<double,4,4,4>(v145, v22 + 60, v24);
        for (i = 0; i != 4; ++i)
        {
          v40 = *v37;
          v39 = v37[1];
          v37 += 2;
          v143[i] = vcvt_hight_f32_f64(vcvt_f32_f64(v40), v39);
        }

        v41 = 0;
        v42 = v143[1];
        v13[4] = v143[0];
        v13[5] = v42;
        v43 = v143[3];
        v13[6] = v143[2];
        v13[7] = v43;
        v44 = v142;
        v45 = v145;
        do
        {
          v46 = 0;
          v47 = v45;
          do
          {
            v48 = *v47;
            v47 += 4;
            v44[v46++] = v48;
          }

          while (v46 != 4);
          ++v41;
          v44 += 4;
          v45 = (v45 + 8);
        }

        while (v41 != 4);
        v49 = v143;
        gm::Matrix<double,4,4>::inverted<int,void>(v143, v142);
        for (j = 0; j != 4; ++j)
        {
          v52 = *v49;
          v51 = v49[1];
          v49 += 2;
          v144[j] = vcvt_hight_f32_f64(vcvt_f32_f64(v52), v51);
        }

        v53 = v144[1];
        v13[8] = v144[0];
        v13[9] = v53;
        v54 = v144[3];
        v13[10] = v144[2];
        v13[11] = v54;
        v55 = a1[3];
        v56 = fminf(fmaxf(v55[2] / *v55, -1.0), 1.0);
        if (*v55 == 0.0)
        {
          LOBYTE(v57) = 0;
        }

        else
        {
          v57 = fminf(fmaxf((v55[3] * 255.0) / *v55, 0.0), 255.0);
        }

        *v19 = v57;
        *(v19 + 1) = fminf(fmaxf((v56 * 127.5) + 127.5, 0.0), 255.0);
        *(v19 + 2) = fminf(fmaxf(*(a1[3] + 1) * 255.0, 0.0), 255.0);
        *(v19 + 4) = *(a1[3] + 4);
        *(v19 + 8) = *(a1[3] + 5);
        v20 = *a1;
        v7 = a1[1];
      }
    }

    v141 = a1;
    v58 = 0;
    v59 = v7[1];
    v60 = *(v6 + 46);
    do
    {
      v146[0].f32[v58] = *(v20 + v58 * 4 + 28) * 255.0;
      ++v58;
    }

    while (v58 != 4);
    if (*(v6 + 40))
    {
      v61 = 0;
      v62 = 0;
      v63 = vcvtq_s32_f32(vmulq_f32(*(v20 + 44), vdupq_n_s32(0x437F0000u)));
      v64 = vmovn_s32(v63);
      v65 = v59 + 160 * v60;
      v140 = v65 + 148;
      v139 = v65 + 140;
      v138 = v65 + 136;
      v137 = v65 + 132;
      v136 = v65 + 108;
      v135 = v65 + 100;
      v134 = v65 + 96;
      v133 = v65 + 92;
      v132 = v65 + 68;
      v131 = v65 + 60;
      v130 = v65 + 56;
      v129 = v65 + 52;
      v128 = v65 + 36;
      v127 = v65 + 32;
      v126 = v65 + 28;
      v125 = v65 + 20;
      v66 = v65 + 16;
      v67 = v65 + 12;
      v68 = 12;
      v69 = 24;
      v70 = 36;
      v63.i32[0] = 1199570688;
      v71 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(v146[0])), *v63.i8).u32[0];
      v72 = vuzp1_s8(v64, *v63.i8).u32[0];
      do
      {
        v73 = v6;
        v74 = 0;
        v75 = 160 * v62;
        v76 = (v140 + 160 * v62);
        v77 = (v138 + 160 * v62);
        v78 = (v136 + 160 * v62);
        v79 = (v134 + 160 * v62);
        v80 = (v132 + 160 * v62);
        v81 = (v130 + 160 * v62);
        v82 = (v128 + 160 * v62);
        v83 = (v126 + 160 * v62);
        v84 = (v66 + 160 * v62);
        v85 = **v141;
        v86 = v85 + 92 * v62;
        _S21 = *(*v141 + 6);
        _S22 = *(v86 + 88);
        v89 = fmaxf(*(v86 + 48) * 65535.0, 0.0);
        v90 = fmaxf(*(v86 + 52) * 65535.0, 0.0);
        v91 = fmaxf(*(v86 + 56) * 65535.0, 0.0);
        v92 = fmaxf(*(v86 + 60) * 65535.0, 0.0);
        do
        {
          *(v65 + v74) = *(v85 + v61 + v74);
          v74 += 4;
        }

        while (v74 != 12);
        v93 = (v137 + v75);
        v94 = (v133 + v75);
        v95 = (v129 + v75);
        v96 = (v67 + v75);
        __asm
        {
          FCVT            H21, S21
          FCVT            H22, S22
        }

        v103 = fminf(v89, 65535.0);
        v104 = fminf(v90, 65535.0);
        v105 = fminf(v91, 65535.0);
        *v96 = v103;
        v96[1] = v104;
        *v84 = _H21;
        *(v125 + 160 * v62) = v71;
        v84[1] = _H22;
        *(v65 + 24) = v72;
        v106 = (v127 + v75);
        v107 = fminf(v92, 65535.0);
        *v83 = v12;
        v83[1] = v18;
        v108 = *(v86 + 72) + 1.0;
        _S25 = ((*(v86 + 64) * 0.28126) / v108) + 0.5;
        _S26 = ((*(v86 + 68) * 0.28126) / v108) + 0.5;
        __asm
        {
          FCVT            H25, S25
          FCVT            H26, S26
        }

        *v106 = LOWORD(_S25);
        v106[1] = LOWORD(_S26);
        v111 = *(v86 + 84) + 1.0;
        _S25 = ((*(v86 + 76) * 0.28126) / v111) + 0.5;
        _S26 = ((*(v86 + 80) * 0.28126) / v111) + 0.5;
        __asm
        {
          FCVT            H25, S25
          FCVT            H26, S26
        }

        *v82 = LOWORD(_S25);
        v82[1] = LOWORD(_S26);
        v114 = (v85 + v68);
        for (k = 10; k != 13; ++k)
        {
          v116 = *v114++;
          *(v65 + 4 * k) = v116;
        }

        v117 = v107;
        *v95 = v105;
        v95[1] = v104;
        *v81 = _H21;
        v81[1] = _H22;
        *(v131 + 160 * v62) = v71;
        *(v65 + 64) = v72;
        *v80 = v12;
        v80[1] = v18;
        *(v65 + 72) = *(v65 + 32);
        v118 = (v85 + v69);
        for (m = 20; m != 23; ++m)
        {
          v120 = *v118++;
          *(v65 + 4 * m) = v120;
        }

        *v94 = v105;
        v94[1] = v117;
        *v79 = _H21;
        v79[1] = _H22;
        *(v135 + 160 * v62) = v71;
        *(v65 + 104) = v72;
        *v78 = v12;
        v78[1] = v18;
        *(v65 + 112) = *(v65 + 32);
        v121 = (v85 + v70);
        for (n = 30; n != 33; ++n)
        {
          v123 = *v121++;
          *(v65 + 4 * n) = v123;
        }

        *v93 = v103;
        v93[1] = v117;
        *v77 = _H21;
        v77[1] = _H22;
        *(v139 + 160 * v62) = v71;
        *(v65 + 144) = v72;
        *v76 = v12;
        v76[1] = v18;
        *(v65 + 152) = *(v65 + 32);
        ++v62;
        v65 += 160;
        v61 += 92;
        v6 = v73;
        v68 += 92;
        v69 += 92;
        v70 += 92;
      }

      while (v62 < *(v73 + 40));
    }
  }

  else
  {
    v124 = std::__throw_bad_function_call[abi:nn200100]();
    md::TextLabelPart::populateMesh(v124);
  }
}

void md::TextLabelPart::populateMesh(float32x2_t *a1, unsigned __int16 *a2, uint64_t *a3, __n128 a4)
{
  v7 = (&a1[103] + 2);
  if (a1[70].i8[5] == 1)
  {
    a3[8] = (*(*a1 + 144))(a1);
    if (a1[110].i8[2] == 1)
    {
      v8 = 0;
      a4.n128_u64[0] = a1[98];
      a4.n128_u32[2] = a1[97].u32[1];
      a4.n128_u32[3] = a1[115].u32[1];
      *(a3 + 9) = a4;
      do
      {
        *(a3 + v8 + 88) = a1[104].i8[v8 + 6];
        ++v8;
      }

      while (v8 != 4);
      for (i = 0; i != 4; ++i)
      {
        *(a3 + i + 92) = a1[104].i8[i + 2];
      }
    }
  }

  v10 = a2[21];
  v11 = a2[22];
  v12 = a1[103].u8[0];
  if (a1[103].i8[0])
  {
    v13 = a2[22];
  }

  else
  {
    v13 = a2[21];
  }

  *(a3 + 6) = a1[69].i32[0];
  a4.n128_u32[0] = *v7;
  v14 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a4.n128_u64[0])));
  if (v12)
  {
    v15 = v10 - 1;
  }

  else
  {
    v15 = v11 + 1;
  }

  v16 = vdupq_n_s32(0x3B808081u);
  v17 = vmulq_f32(v14, v16);
  v18 = a1[96].f32[1];
  *(a3 + 28) = vmul_n_f32(*v17.f32, v18);
  *(a3 + 9) = vmuls_lane_f32(v18, v17, 2);
  *(a3 + 10) = v17.i32[3];
  v17.i32[0] = v7[1];
  v19 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v17.f32))), v16);
  v16.i32[0] = a1[96].i32[1];
  *(a3 + 44) = vmul_n_f32(*v19.f32, v16.f32[0]);
  *(a3 + 13) = vmuls_lane_f32(v16.f32[0], v19, 2);
  *(a3 + 14) = v19.i32[3];
  v20 = a2[20];
  v21 = *a3;
  v22 = a3[1];
  v23 = 0xD37A6F4DE9BD37A7 * ((v22 - *a3) >> 2);
  v24 = v20 - v23;
  if (v20 <= v23)
  {
    if (v20 >= v23)
    {
      goto LABEL_25;
    }

    v27 = v21 + 92 * v20;
  }

  else
  {
    v25 = a3[2];
    if (0xD37A6F4DE9BD37A7 * ((v25 - v22) >> 2) < v24)
    {
      v26 = 0xD37A6F4DE9BD37A7 * ((v25 - v21) >> 2);
      if (2 * v26 > v20)
      {
        v20 = 2 * v26;
      }

      if (v26 >= 0x1642C8590B21642)
      {
        v20 = 0x2C8590B21642C85;
      }

      if (v20 <= 0x2C8590B21642C85)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a3[1], 92 * ((92 * v24 - 92) / 0x5C) + 92);
    v27 = v22 + 92 * ((92 * v24 - 92) / 0x5C) + 92;
  }

  a3[1] = v27;
LABEL_25:
  if (v15 != v13)
  {
    v28 = 0;
    if (v12)
    {
      v29 = -1;
    }

    else
    {
      v29 = 1;
    }

    do
    {
      v30 = *&a1[112] + 16 * v13;
      if (*v30 == 1)
      {
        v31 = *(v30 + 8);
        v32 = *a3 + 92 * v28;
        v33 = **v31;
        v34 = *(v33 + 96);
        v35 = (*(v33 + 104) * *(*v31 + 32)) / *(v33 + 48);
        *(v32 + 88) = a1[95].f32[1] / v35;
        v36 = (*(**(v34 + 32) + 40))(*(v34 + 32));
        *(v32 + 48) = *v36;
        *(v32 + 52) = v36[1];
        *(v32 + 56) = v36[2];
        *(v32 + 60) = v36[3];
        v37.n64_u64[0] = *(v33 + 64);
        v38 = vcvt_f32_u32(*(v33 + 72));
        *v32 = v37;
        *(v32 + 8) = 0;
        v39 = vadd_f32(v37.n64_u64[0], v38);
        *(v32 + 12) = __PAIR64__(v37.n64_u32[1], v39.u32[0]);
        *(v32 + 20) = 0;
        *(v32 + 24) = v39;
        *(v32 + 32) = 0;
        v37.n64_u32[1] = v39.u32[1];
        *(v32 + 36) = v37;
        *(v32 + 44) = 0;
        v37.n64_f32[0] = v35;
        md::TextLabelPart::prepareGlyphVertices(a1, v31, v32, v37);
        if (a1[70].i8[5] == 1)
        {
          if (a1[110].i8[5] == 1)
          {
            for (j = 0; j != 12; j += 4)
            {
              *(v32 + 64 + j) = *(v31 + 20 + j);
            }

            v41 = *(v32 + 68);
            v42.i32[0] = vdup_lane_s32(v41, 1).u32[0];
            v42.i32[1] = *(v32 + 64);
            v43 = *(v31 + 36);
            v44.i32[0] = vdup_lane_s32(v43, 1).u32[0];
            v44.i32[1] = *(v31 + 32);
            *(v32 + 76) = vmla_f32(vneg_f32(vmul_f32(v44, v41)), v43, v42);
            *(v32 + 84) = -((v42.f32[1] * *v43.i32) - (v44.f32[1] * *v41.i32));
          }

          else
          {
            v45 = -*(v31 + 32);
            v46 = vmul_n_f32(*(v31 + 20), COERCE_FLOAT(*(v31 + 36)));
            *(v32 + 64) = v46;
            *(v32 + 72) = v45;
            v49[0] = -v46.f32[1];
            v49[1] = v46.f32[0];
            v49[2] = 0.0;
            *(v32 + 76) = gm::Matrix<float,3,1>::normalized<int,void>(v49);
            *(v32 + 80) = v47;
            *(v32 + 84) = v48;
          }
        }

        ++v28;
      }

      v13 += v29;
    }

    while (v15 != v13);
  }
}

__n64 md::TextLabelPart::prepareGlyphVertices(float32x2_t *a1, uint64_t a2, float *a3, __n64 result)
{
  v4 = a1[70].i8[5];
  if ((v4 & 1) == 0)
  {
    if (a1[110].i8[5])
    {
      goto LABEL_15;
    }

LABEL_32:
    v42 = *(a2 + 20) * result.n64_f32[0];
    v43 = *(a2 + 24) * result.n64_f32[0];
    v44 = *(a2 + 56);
    result.n64_f32[0] = v44 * v42;
    result.n64_f32[1] = v43;
    v45.f32[0] = -(v43 * v44);
    v45.f32[1] = v42;
    v46 = 48;
    v47 = a3;
    do
    {
      *v47 = vmla_n_f32(vmul_n_f32(result.n64_u64[0], *v47), v45, v47[1]);
      v47 += 3;
      v46 -= 12;
    }

    while (v46);
    goto LABEL_15;
  }

  if ((a1[110].i8[5] & 1) == 0)
  {
    v48 = *(a2 + 32);
    if (v48 != 0.0)
    {
      v49 = *(a2 + 36);
      v50 = -v48;
      v51 = 4;
      v52 = a3;
      do
      {
        v53 = *v52 * v49;
        *v52 = v53;
        v52[2] = v53 * v50;
        v52 += 3;
        --v51;
      }

      while (v51);
    }

    v54 = *(a2 + 52);
    for (i = 2; i != 14; i += 3)
    {
      a3[i] = a3[i] + v54;
    }

    goto LABEL_32;
  }

  v5 = 0;
  v6 = *(a2 + 32);
  v7 = *(a2 + 36);
  v8 = *(a2 + 24);
  v9.i32[0] = vdup_lane_s32(v8, 1).u32[0];
  v10.i32[0] = vdup_lane_s32(v7, 1).u32[0];
  v10.f32[1] = v6;
  v64 = *(a2 + 20);
  v9.i32[1] = v64;
  v65 = *(a2 + 28);
  v66 = vmla_f32(vneg_f32(vmul_f32(v10, v8)), v7, v9);
  v67 = -((*&v64 * v7.f32[0]) - (v6 * v8.f32[0]));
  v68 = *(a2 + 32);
  v69 = *(a2 + 40);
  v58 = 0;
  v59 = 0;
  v62 = 0;
  v61 = 0;
  v60 = result.n64_u32[0];
  v63 = result.n64_u32[0];
  v57 = *(a2 + 56) * result.n64_f32[0];
  v11 = &v64;
  do
  {
    v12 = 0;
    v13 = &v57;
    do
    {
      v14 = 0;
      v15 = 0.0;
      v16 = v11;
      do
      {
        v17 = *v16;
        v16 += 3;
        v15 = v15 + (v13[v14++] * v17);
      }

      while (v14 != 3);
      *&v56[3 * v12++ + v5] = v15;
      v13 += 3;
    }

    while (v12 != 3);
    ++v5;
    v11 = (v11 + 4);
  }

  while (v5 != 3);
  v18 = 0;
  v19 = 0;
  v20 = a3;
  do
  {
    v21 = 0;
    v22 = v56;
    do
    {
      v23 = 0;
      result.n64_u64[0] = 0;
      v24 = v22;
      do
      {
        v25 = *v24;
        v24 += 3;
        result.n64_f32[0] = result.n64_f32[0] + (v20[v23++] * v25);
      }

      while (v23 != 3);
      *(&v70 + v21++) = result.n64_u32[0];
      ++v22;
    }

    while (v21 != 3);
    v26 = &a3[3 * v18];
    v27 = v71;
    *v26 = v70;
    *(v26 + 2) = v27;
    v19 += 12;
    ++v18;
    v20 += 3;
  }

  while (v19 != 48);
LABEL_15:
  v28 = 0;
  v64 = *(a2 + 8);
  v65 = *(a2 + 16);
  v29 = a3;
  do
  {
    for (j = 0; j != 3; ++j)
    {
      result.n64_f32[0] = v29[j] + *(&v64 + j * 4);
      v29[j] = result.n64_f32[0];
    }

    v28 += 12;
    v29 += 3;
  }

  while (v28 != 48);
  if ((v4 & 1) == 0)
  {
    v31 = *(*&a1[4] + 68);
    v32 = 1.1;
    if (!a1[105].i8[6])
    {
      v32 = 1.0;
    }

    v33 = (a1[116].f32[0] * v32) * v31;
    if (fabsf(v33 + -1.0) > 0.000001)
    {
      for (k = 0; k != 12; k += 3)
      {
        *&a3[k] = vmul_n_f32(*&a3[k], v33);
      }
    }

    if (a1[63].i8[4] == 1)
    {
      for (m = 0; m != 12; m += 3)
      {
        v36 = *&a3[m];
        v37 = vmul_n_f32(v36, a1[41].f32[0]);
        v38 = vmul_n_f32(vrev64_s32(v36), a1[41].f32[1]);
        LODWORD(v39) = vsub_f32(v37, v38).u32[0];
        HIDWORD(v39) = vadd_f32(v37, v38).i32[1];
        *&a3[m] = v39;
      }
    }

    v40 = 0;
    v41 = vmla_n_f32(a1[106], a1[68], v31);
    do
    {
      result.n64_u64[0] = vadd_f32(*&a3[v40], v41);
      *&a3[v40] = result;
      v40 += 3;
    }

    while (v40 != 12);
  }

  return result;
}

float md::LabelRenderer::initIconMeshes(md::LabelRenderData &,md::LabelLayoutContext const&)::$_0::operator()(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  if (!v4)
  {
    v42 = std::__throw_bad_function_call[abi:nn200100]();
    *&v7 = md::IconLabelPart::populateMesh(v42, v43);
    return *&v7;
  }

  (*(*v4 + 48))(v4, a2, *a1);
  v8 = a1[1];
  v9 = *(a2 + 38);
  if (*(a2 + 38))
  {
    v10 = *(v8 + 4);
    v11 = *(v8 + 5);
    v12 = 256 - v10;
    if (v12 >= v9)
    {
      v12 = 0;
    }

    v13 = v10 + v12;
    *(v8 + 4) = v13 + v9;
    *(v8 + 5) = v11 + v9;
    v14 = v8[3] + 16 * v13;
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = *(a2 + 39);
  if (*(a2 + 39))
  {
    v17 = *(v8 + 8);
    v18 = *(v8 + 9);
    v19 = 256 - v17;
    if (v19 >= v16)
    {
      v19 = 0;
    }

    v20 = v17 + v19;
    *(v8 + 8) = v17 + v19 + v16;
    *(v8 + 9) = v18 + v16;
    v21 = (v8[5] + 4 * (v17 + v19));
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (*a3 == 1)
  {
    v22 = v48;
    gm::operator*<double,4,4,4>(v48, (v8[6] + 736), (*a1)[8]);
    for (i = 0; i != 4; ++i)
    {
      v25 = *v22;
      v24 = v22[1];
      v22 += 2;
      v45[i] = vcvt_hight_f32_f64(vcvt_f32_f64(v25), v24);
    }

    v26 = v45[1];
    *v14 = v45[0];
    *(v14 + 16) = v26;
    LODWORD(v7) = v46;
    v27 = v47;
    *(v14 + 32) = v46;
    *(v14 + 48) = v27;
    v14 += 64;
  }

  if (*(a3 + 1) == 1)
  {
    v41 = *a1;
    *v21 = *(*a1 + 22);
    v21[1] = v41[23];
    v21[2] = v41[24];
    if (*(a3 + 2) == 1)
    {
      v21[3] = v41[25];
      v21[4] = v41[26];
      v21[5] = v41[27];
      v29 = 3;
    }

    else
    {
      v29 = 0;
    }

    *v14 = v41[18];
    *(v14 + 4) = v41[19];
    *(v14 + 8) = v41[20];
    v30 = v41 + 21;
    goto LABEL_17;
  }

  v28 = *a1;
  if (*(a3 + 3) == 1)
  {
    v29 = 0;
    *v21 = *(v28 + 112);
    *v14 = *(v28 + 116);
    *(v14 + 4) = *(v28 + 120);
    *(v14 + 8) = *(v28 + 124);
    v30 = (v28 + 128);
LABEL_17:
    LODWORD(v7) = *v30;
    *(v14 + 12) = *v30;
    v28 = *a1;
    goto LABEL_19;
  }

  v29 = 0;
LABEL_19:
  if (*(a2 + 37))
  {
    v31 = 0;
    v32 = fminf(fmaxf(*(v28 + 48) * 255.0, 0.0), 255.0);
    v33 = fminf(fmaxf(*(v28 + 52) * 100.0, 0.0), 255.0);
    v34 = fminf(fmaxf(*(v28 + 56) * 255.0, 0.0), 255.0);
    v35 = fminf(fmaxf(*(v28 + 32) * 65535.0, 0.0), 65535.0);
    v36 = fminf(fmaxf(*(v28 + 36) * 65535.0, 0.0), 65535.0);
    v37 = fminf(fmaxf(*(v28 + 40) * 65535.0, 0.0), 65535.0);
    v38 = fminf(fmaxf(*(v28 + 44) * 65535.0, 0.0), 65535.0);
    v39 = *a1[1] + (*(a2 + 46) << 7);
    do
    {
      *v39 = *v28;
      *(v39 + 8) = 0;
      *(v39 + 16) = v35;
      *(v39 + 18) = v36;
      *(v39 + 20) = v32;
      *(v39 + 21) = v33;
      *(v39 + 22) = v34;
      *(v39 + 23) = 0;
      v40 = v15 | (v20 << 16);
      *(v39 + 24) = v40;
      *(v39 + 32) = *(v28 + 8);
      *(v39 + 40) = 0;
      *(v39 + 48) = v37;
      *(v39 + 50) = v36;
      *(v39 + 52) = v32;
      *(v39 + 53) = v33;
      *(v39 + 54) = v34;
      *(v39 + 55) = 1;
      *(v39 + 56) = v40;
      *(v39 + 64) = *(v28 + 16);
      *(v39 + 72) = 0;
      *(v39 + 80) = v37;
      *(v39 + 82) = v38;
      *(v39 + 84) = v32;
      *(v39 + 85) = v33;
      *(v39 + 86) = v34;
      *(v39 + 87) = 2;
      *(v39 + 88) = v40;
      v7 = *(v28 + 24);
      *(v39 + 96) = v7;
      *(v39 + 104) = 0;
      *(v39 + 112) = v35;
      *(v39 + 114) = v38;
      *(v39 + 116) = v32;
      *(v39 + 117) = v33;
      *(v39 + 118) = v34;
      *(v39 + 119) = 3;
      *(v39 + 120) = v40;
      v20 += v29;
      ++v31;
      v39 += 128;
    }

    while (v31 < *(a2 + 37));
  }

  return *&v7;
}

float md::IconLabelPart::populateMesh(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 565) == 1)
  {
    *(a2 + 64) = (*(*a1 + 144))(a1);
  }

  v4 = 0;
  v5 = *(a1 + 608) * *(a1 + 596);
  *(a2 + 48) = *(a1 + 552);
  *(a2 + 52) = v5;
  *(a2 + 56) = *(a1 + 604);
  do
  {
    v6 = (a2 + v4);
    *v6 = *(a1 + v4 + 760);
    v6[1] = *(a1 + v4 + 764);
    v4 += 8;
  }

  while (v4 != 32);
  v7 = (*(*a1 + 936))(a1);
  *(a2 + 32) = *v7;
  *(a2 + 36) = *(v7 + 4);
  *(a2 + 40) = *(v7 + 8);
  result = *(v7 + 12);
  *(a2 + 44) = result;
  return result;
}

uint64_t md::IconLabelPart::textureRect(md::IconLabelPart *this)
{
  v1 = *(this + 80);
  v2 = atomic_load((v1 + 143));
  if (v2)
  {
    v3 = *(v1 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 textureCoordinates];

  return v4;
}

ggl::zone_mallocator *md::LabelRenderer::renderLayers(ggl::zone_mallocator *result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (a2 != a3)
  {
    v7 = a2;
    v8 = result;
    do
    {
      v9 = a3;
      if (v7 != a3)
      {
        v14 = a3 - v7;
        v15 = *(*v7 + 2);
        v9 = v7;
        do
        {
          v16 = v14 >> 1;
          v17 = &v9[v14 >> 1];
          v18 = *(*v17 + 2);
          if (v15 >= v18 && (v15 != v18 || *(*v7 + 32) <= *(*v17 + 32)))
          {
            v9 = v17 + 1;
            v16 = v14 + ~v16;
          }

          v14 = v16;
        }

        while (v16);
      }

      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      if (v7 != v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        do
        {
          v19 = *v7;
          if (v10 && (*(v11 + 8) != *(v19 + 8) || *(v11 + 4) != *(v19 + 4) || *(v11 + 16) != *(v19 + 16) || *(v11 + 9) != *(v19 + 9) || *(v11 + 37) != 1 || *(v19 + 37) != 1 || (*(v19 + 10) & 1) == 0))
          {
            result = md::LabelRenderer::addGlyphRenderItem(v8, &v23, a4, a5, 1);
            v11 = 0;
            v10 = 0;
            v23 = 0;
            v24 = 0;
          }

          if (v12 && (*(v13 + 8) != *(v19 + 8) || *(v13 + 4) != *(v19 + 4) || *(v13 + 16) != *(v19 + 16) || *(v13 + 9) != *(v19 + 9) || *(v13 + 37) != 1 || *(v19 + 37) != 1))
          {
            if (*(v13 + 36) == 1)
            {
              result = md::LabelRenderer::addGlyphRenderItem(v8, &v21, a4, a5, 0);
            }

            else
            {
              result = md::LabelRenderer::addIconRenderItem(v8, &v21, a4, a5);
            }

            v13 = 0;
            v12 = 0;
          }

          if (*(v19 + 36) == 1 && *(v19 + 10) == 1)
          {
            if (!v11)
            {
              v11 = v19;
            }

            v23 = v11;
            v10 += *(v19 + 40);
            v24 = v10;
          }

          if (!v13)
          {
            v13 = v19;
          }

          v21 = v13;
          v12 += *(v19 + 40);
          v22 = v12;
          ++v7;
        }

        while (v7 != v9);
        if (v10)
        {
          result = md::LabelRenderer::addGlyphRenderItem(v8, &v23, a4, a5, 1);
        }

        if (v12)
        {
          if (*(v13 + 36) == 1)
          {
            result = md::LabelRenderer::addGlyphRenderItem(v8, &v21, a4, a5, 0);
          }

          else
          {
            result = md::LabelRenderer::addIconRenderItem(v8, &v21, a4, a5);
          }
        }
      }

      v7 = v9;
    }

    while (v9 != a3);
  }

  return result;
}

ggl::zone_mallocator *md::LabelRenderer::addGlyphRenderItem(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v8 = *a2;
  v9 = *(*a2 + 4);
  v10 = 992;
  if (a5)
  {
    v10 = 1008;
  }

  v11 = *(v8 + 9);
  v12 = 1440;
  if (*(a3 + 24))
  {
    v12 = 1456;
  }

  if (*(v8 + 9))
  {
    v12 = 1424;
  }

  if (v9 == 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a1 + 1861);
  }

  v14 = 0;
  if ((v13 & 1) != 0 && (a5 & 1) == 0)
  {
    v14 = *(a1 + 1860);
  }

  v15 = *(a1 + 16 * *(a1 + 1540) + 1552);
  if (!v15)
  {
    v15 = *(a1 + 1872);
  }

  v16 = *(a1 + 16 * *(a1 + 1684) + 1696);
  if (!v16)
  {
    v16 = *(a1 + 1888);
  }

  v17 = (a1 + v10);
  v74 = (a1 + v12);
  TextureStorage = mre::GGLResourceStore::getTextureStorage(*(a1 + 16), *(v8 + 16), 0);
  if (TextureStorage)
  {
    v19 = *TextureStorage;
  }

  else
  {
    v19 = 0;
  }

  v76 = a2;
  if (v9 == 3)
  {
    v61 = v19;
    SDFPipelineSetup = ggl::FragmentedPool<ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup>::pop(*(a1 + 416));
    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewCommonConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1408), *(a1 + 1416));
    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1376), *(a1 + 1384));
    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *v74, v74[1]);
    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1496), *(a1 + 1504));
    *(SDFPipelineSetup[21] + 8) = v15;
    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *v17, v17[1]);
    *SDFPipelineSetup[21] = v61;
    goto LABEL_48;
  }

  v20 = *(*a2 + 4);
  switch(v20)
  {
    case 4:
      v63 = v17;
      v64 = v19;
      SDFPipelineSetup = ggl::FragmentedPool<ggl::Glyph3d::DefaultPipelineSetup>::pop(*(a1 + 344));
      ggl::Glyph3d::DefaultPipelineSetup::setViewCommonConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1408), *(a1 + 1416));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1376), *(a1 + 1384));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *v74, v74[1]);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1496), *(a1 + 1504));
      *(SDFPipelineSetup[21] + 16) = v15;
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1640), *(a1 + 1648));
      *(SDFPipelineSetup[21] + 8) = v16;
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewCommonConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *v63, v63[1]);
LABEL_74:
      *SDFPipelineSetup[21] = v64;
      goto LABEL_48;
    case 5:
      v65 = v17;
      v64 = v19;
      if (a5)
      {
        SDFPipelineSetup = ggl::FragmentedPool<ggl::Glyph3d::LowPrecisionHaloPipelineSetup>::pop(*(a1 + 360));
      }

      else
      {
        SDFPipelineSetup = ggl::FragmentedPool<ggl::Glyph3d::LowPrecisionPipelineSetup>::pop(*(a1 + 352));
      }

      ggl::Glyph3d::DefaultPipelineSetup::setViewCommonConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1408), *(a1 + 1416));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1376), *(a1 + 1384));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *v74, v74[1]);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1496), *(a1 + 1504));
      *(SDFPipelineSetup[21] + 16) = v15;
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1640), *(a1 + 1648));
      *(SDFPipelineSetup[21] + 8) = v16;
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewCommonConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *v65, v65[1]);
      goto LABEL_74;
    case 6:
      v66 = v17;
      v64 = v19;
      SDFPipelineSetup = ggl::FragmentedPool<ggl::Glyph3d::RaymarchPipelineSetup>::pop(*(a1 + 368));
      ggl::Glyph3d::DefaultPipelineSetup::setViewCommonConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1408), *(a1 + 1416));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1376), *(a1 + 1384));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *v74, v74[1]);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1496), *(a1 + 1504));
      *(SDFPipelineSetup[21] + 16) = v15;
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *(a1 + 1640), *(a1 + 1648));
      *(SDFPipelineSetup[21] + 8) = v16;
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewCommonConstantData(SDFPipelineSetup[17], SDFPipelineSetup[29], *v66, v66[1]);
      goto LABEL_74;
  }

  if (v13)
  {
    SDFPipelineSetup = md::LabelRenderer::createSDFPipelineSetup(a1, a5, v14 & 1, v74, v17, v19);
  }

  else
  {
    v21 = *(a3 + 24);
    v22 = *(a1 + 400);
    v23 = v22[1];
    if (v23 == *v22)
    {
      v24 = v22[11];
      if (!v24)
      {
        goto LABEL_78;
      }

      v25 = v19;
      SDFPipelineSetup = (*(*v24 + 48))(v24);
      v78 = SDFPipelineSetup;
    }

    else
    {
      v25 = v19;
      SDFPipelineSetup = *(v23 - 8);
      v78 = SDFPipelineSetup;
      v22[1] = v23 - 8;
    }

    std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v22 + 4), &v78);
    v80[0] = SDFPipelineSetup;
    v27 = v22[15];
    if (!v27)
    {
      goto LABEL_78;
    }

    (*(*v27 + 48))(v27, v80);
    md::LabelPipelineStateManager<ggl::GlyphWithNormalHalo::DefaultPipelineState,std::shared_ptr<ggl::GlyphWithNormalHaloShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v78, a1 + 472, v11 ^ 1, v21 == 0, 0, a5, v11);
    v28 = v79;
    v80[0] = v78;
    v80[1] = v79;
    if (v79)
    {
      atomic_fetch_add_explicit((v79 + 8), 1uLL, memory_order_relaxed);
      ggl::PipelineSetup::setState(SDFPipelineSetup, v80);
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    else
    {
      ggl::PipelineSetup::setState(SDFPipelineSetup, v80);
    }

    v29 = SDFPipelineSetup[17];
    *(v29 + 56) = 0;
    v30 = *(a1 + 1408);
    *(v29 + 48) = v30;
    v31 = SDFPipelineSetup[29];
    v32 = *(a1 + 1416);
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v33 = *(v31 + 56);
    *(v31 + 48) = v30;
    *(v31 + 56) = v32;
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }

    v34 = SDFPipelineSetup[17];
    if (v11)
    {
      v34[1] = 0;
      v35 = *(a1 + 1392);
      *v34 = v35;
      v36 = SDFPipelineSetup[29];
      v37 = *(a1 + 1400);
      if (v37)
      {
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
      }

      v38 = v36[1];
      *v36 = v35;
      v36[1] = v37;
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v38);
      }
    }

    else
    {
      v34[3] = 0;
      v39 = *(a1 + 1496);
      v34[2] = v39;
      v40 = SDFPipelineSetup[29];
      v41 = *(a1 + 1504);
      if (v41)
      {
        atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
      }

      v42 = *(v40 + 24);
      *(v40 + 16) = v39;
      *(v40 + 24) = v41;
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v42);
      }

      *(SDFPipelineSetup[21] + 8) = v15;
    }

    v43 = SDFPipelineSetup[17];
    *(v43 + 40) = 0;
    v44 = *v17;
    *(v43 + 32) = *v17;
    v45 = SDFPipelineSetup[29];
    v46 = v17[1];
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    v47 = *(v45 + 40);
    *(v45 + 32) = v44;
    *(v45 + 40) = v46;
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v47);
    }

    *SDFPipelineSetup[21] = v25;
  }

LABEL_48:
  v48 = *(a1 + 336);
  v49 = v48[1];
  if (v49 == *v48)
  {
    v50 = std::function<ggl::RenderItem * ()(void)>::operator()(v48[11]);
  }

  else
  {
    v50 = *(v49 - 8);
    v48[1] = v49 - 8;
  }

  v78 = v50;
  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v48 + 4), &v78);
  v80[0] = v50;
  v51 = v48[15];
  if (v51)
  {
    (*(*v51 + 48))(v51, v80);
    v52 = *v76;
    v53 = *(*v76 + 8);
    if (v53 == 1)
    {
      v54 = a3;
      if (*(a3 + 8))
      {
        v55 = a4 + 1;
      }

      else
      {
        v55 = a4;
      }
    }

    else
    {
      v54 = a3;
      if (v53 == 2)
      {
        v62 = 3;
        if (*(a3 + 8))
        {
          v62 = 2;
        }

        v56 = a4[v62];
        goto LABEL_56;
      }

      if (*(*v76 + 8))
      {
        goto LABEL_57;
      }

      v55 = a4;
    }

    v56 = *v55;
LABEL_56:
    *(v50 + 3) = v56;
LABEL_57:
    *(v50 + 4) = SDFPipelineSetup;
    *(v50 + 8) = a1 + 1024;
    v57 = *(v52 + 46);
    v58 = v76[2];
    *(v50 + 9) = 6 * v57;
    *(v50 + 10) = 6 * (v58 + v57);
    *(v50 + 11) = 0;
    *(v50 + 12) = 1;
    v59 = *(v54 + 16);
    v80[0] = v50;
    result = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v59 + 72), v80);
    ++*(a1 + 1812);
    return result;
  }

LABEL_78:
  v67 = std::__throw_bad_function_call[abi:nn200100]();
  return md::LabelPipelineStateManager<ggl::GlyphWithNormalHalo::DefaultPipelineState,std::shared_ptr<ggl::GlyphWithNormalHaloShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v67, v68, v69, v70, v71, v72, v73);
}

unint64_t md::LabelPipelineStateManager<ggl::GlyphWithNormalHalo::DefaultPipelineState,std::shared_ptr<ggl::GlyphWithNormalHaloShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  v17 = a3;
  BYTE1(v18) = a4;
  BYTE3(v18) = a7;
  BYTE4(v18) = a5;
  BYTE5(v18) = a6;
  result = ggl::packFunctionConstantKey(&v17, a2);
  v10 = *(a2 + 104);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = (a2 + 104);
  do
  {
    v12 = v10[4];
    v13 = v12 >= result;
    v14 = v12 < result;
    if (v13)
    {
      v11 = v10;
    }

    v10 = v10[v14];
  }

  while (v10);
  if (v11 == (a2 + 104) || result < v11[4])
  {
LABEL_9:
    std::allocate_shared[abi:nn200100]<ggl::GlyphWithNormalHalo::DefaultPipelineState,std::allocator<ggl::GlyphWithNormalHalo::DefaultPipelineState>,std::shared_ptr<ggl::GlyphWithNormalHaloShader> &,ggl::ColorBufferOperation &,ggl::RenderTargetFormat &,BOOL &,BOOL,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,0>();
  }

  v16 = v11[5];
  v15 = v11[6];
  *a1 = v16;
  a1[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2B67170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  _Unwind_Resume(exception_object);
}

ggl::zone_mallocator *std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
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

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *md::LabelRenderer::addIconRenderItem(uint64_t a1, TextureHandle **a2, uint64_t a3, void *a4)
{
  v94 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 16 * *(a1 + 1540) + 1552);
  if (!v8)
  {
    v8 = *(a1 + 1872);
  }

  v89 = v8;
  v9 = *(&(*a2)->isInternal + 1);
  v10 = 1440;
  if (*(a3 + 24))
  {
    v10 = 1456;
  }

  if (*(&(*a2)->isInternal + 1))
  {
    v11 = 1424;
  }

  else
  {
    v11 = v10;
  }

  TextureStorage = mre::GGLResourceStore::getTextureStorage(*(a1 + 16), (*a2)[1], 0);
  if (TextureStorage)
  {
    v13 = *TextureStorage;
  }

  else
  {
    v13 = 0;
  }

  v14 = BYTE4((*a2)->var0.value);
  if (v14 != 7)
  {
    if (BYTE4((*a2)->var0.value))
    {
      v86 = (a1 + v11);
      if (v14 == 9)
      {
        v87 = *(a1 + 16 * *(a1 + 1684) + 1696);
        if (!v87)
        {
          v87 = *(a1 + 1888);
        }

        v19 = ggl::FragmentedPool<ggl::Icon::MaskedIconPipelineSetup>::pop(*(a1 + 440));
        *v19[21] = v13;
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewCommonConstantData(v19[17], v19[29], *(a1 + 1408), *(a1 + 1416));
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v19[17], v19[29], *(a1 + 1376), *(a1 + 1384));
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v19[17], v19[29], *v86, v86[1]);
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v19[17], v19[29], *(a1 + 1496), *(a1 + 1504));
        *(v19[21] + 16) = v89;
        *(v19[21] + 8) = v87;
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(v19[17], v19[29], *(a1 + 1640), *(a1 + 1648));
      }

      else
      {
        v88 = *(a1 + 16 * *(a1 + 1684) + 1696);
        if (!v88)
        {
          v88 = *(a1 + 1888);
        }

        v19 = ggl::FragmentedPool<ggl::Icon::WaypointPipelineSetup>::pop(*(a1 + 448));
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewCommonConstantData(v19[17], v19[29], *(a1 + 1408), *(a1 + 1416));
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v19[17], v19[29], *(a1 + 1376), *(a1 + 1384));
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v19[17], v19[29], *v86, v86[1]);
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v19[17], v19[29], *(a1 + 1496), *(a1 + 1504));
        *(v19[21] + 8) = v89;
        *v19[21] = v88;
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(v19[17], v19[29], *(a1 + 1640), *(a1 + 1648));
      }

      goto LABEL_75;
    }

    v28 = *(a1 + 16 * *(a1 + 1684) + 1696);
    if (!v28)
    {
      v28 = *(a1 + 1888);
    }

    v29 = *(a3 + 24);
    v30 = *(a1 + 432);
    v31 = v30[1];
    if (v31 == *v30)
    {
      v32 = v30[11];
      if (!v32)
      {
        goto LABEL_102;
      }

      v19 = (*(*v32 + 48))(v32);
      v90 = v19;
    }

    else
    {
      v19 = *(v31 - 8);
      v90 = v19;
      v30[1] = v31 - 8;
    }

    std::vector<ggl::Icon::ShadowPipelineSetup *,geo::allocator_adapter<ggl::Icon::ShadowPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v30 + 4), &v90);
    *v91 = v19;
    v33 = v30[15];
    if (!v33)
    {
      goto LABEL_102;
    }

    (*(*v33 + 48))(v33, v91);
    *&v91[1] = 0u;
    memset(v93, 0, sizeof(v93));
    v92 = 0u;
    v91[0] = 1;
    v91[2] = v29 ^ 1;
    v91[4] = v9;
    *&v91[5] = 257;
    v35 = ggl::packFunctionConstantKey(v91, v34);
    v36 = *(a1 + 816);
    if (!v36)
    {
      goto LABEL_40;
    }

    v37 = (a1 + 816);
    do
    {
      v38 = v36[4];
      v26 = v38 >= v35;
      v39 = v38 < v35;
      if (v26)
      {
        v37 = v36;
      }

      v36 = v36[v39];
    }

    while (v36);
    if (v37 == (a1 + 816) || v35 < v37[4])
    {
LABEL_40:
      LOBYTE(v90) = 0;
      std::allocate_shared[abi:nn200100]<ggl::Icon::ShadowPipelineState,std::allocator<ggl::Icon::ShadowPipelineState>,std::shared_ptr<ggl::ShadowShader> &,ggl::ColorBufferOperation &,ggl::RenderTargetFormat &,BOOL &,BOOL,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,0>();
    }

    v42 = v37[5];
    v43 = v37[6];
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      *v91 = v42;
      *&v91[8] = v43;
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      ggl::PipelineSetup::setState(v19, v91);
      std::__shared_weak_count::__release_shared[abi:nn200100](v43);
      std::__shared_weak_count::__release_shared[abi:nn200100](v43);
    }

    else
    {
      *v91 = v42;
      ggl::PipelineSetup::setState(v19, v91);
    }

    v54 = v19[17];
    *(v54 + 56) = 0;
    v55 = *(a1 + 1408);
    *(v54 + 48) = v55;
    v56 = v19[29];
    v57 = *(a1 + 1416);
    if (v57)
    {
      atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
    }

    v58 = *(v56 + 56);
    *(v56 + 48) = v55;
    *(v56 + 56) = v57;
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v58);
    }

    if (v9)
    {
      v59 = v19[17];
      v59[1] = 0;
      v60 = *(a1 + 1392);
      *v59 = v60;
      v61 = v19[29];
      v62 = *(a1 + 1400);
      if (v62)
      {
        atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
      }

      v63 = v61[1];
      *v61 = v60;
      v61[1] = v62;
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v63);
      }
    }

    v64 = v19[17];
    *(v64 + 40) = 0;
    v65 = *(a1 + 1496);
    *(v64 + 32) = v65;
    v66 = v19[29];
    v67 = *(a1 + 1504);
    if (v67)
    {
      atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
    }

    v68 = *(v66 + 40);
    *(v66 + 32) = v65;
    *(v66 + 40) = v67;
    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v68);
    }

    *(v19[21] + 8) = v89;
    *v19[21] = v28;
    v69 = v19[17];
    *(v69 + 24) = 0;
    v70 = *(a1 + 1640);
    *(v69 + 16) = v70;
    v71 = v19[29];
    v72 = *(a1 + 1648);
    if (v72)
    {
      atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
    }

    v53 = *(v71 + 24);
    *(v71 + 16) = v70;
    *(v71 + 24) = v72;
    if (!v53)
    {
      goto LABEL_75;
    }

LABEL_74:
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
    goto LABEL_75;
  }

  v15 = *(a3 + 24);
  v16 = *(a1 + 424);
  v17 = v16[1];
  if (v17 == *v16)
  {
    v18 = v16[11];
    if (!v18)
    {
      goto LABEL_102;
    }

    v19 = (*(*v18 + 48))(v18);
    v90 = v19;
  }

  else
  {
    v19 = *(v17 - 8);
    v90 = v19;
    v16[1] = v17 - 8;
  }

  std::vector<ggl::Icon::IconPipelineSetup *,geo::allocator_adapter<ggl::Icon::IconPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v16 + 4), &v90);
  *v91 = v19;
  v20 = v16[15];
  if (!v20)
  {
    goto LABEL_102;
  }

  (*(*v20 + 48))(v20, v91);
  *&v91[1] = 0u;
  memset(v93, 0, sizeof(v93));
  v92 = 0u;
  v91[0] = v9 ^ 1;
  v91[2] = v15 ^ 1;
  v91[4] = v9;
  v91[6] = 1;
  v22 = ggl::packFunctionConstantKey(v91, v21);
  v23 = *(a1 + 696);
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = (a1 + 696);
  do
  {
    v25 = v23[4];
    v26 = v25 >= v22;
    v27 = v25 < v22;
    if (v26)
    {
      v24 = v23;
    }

    v23 = v23[v27];
  }

  while (v23);
  if (v24 == (a1 + 696) || v22 < v24[4])
  {
LABEL_23:
    LOBYTE(v90) = 0;
    std::allocate_shared[abi:nn200100]<ggl::Icon::IconPipelineState,std::allocator<ggl::Icon::IconPipelineState>,std::shared_ptr<ggl::IconShader> &,ggl::ColorBufferOperation &,ggl::RenderTargetFormat &,BOOL &,BOOL,BOOL &,BOOL &,BOOL &,BOOL &,BOOL &,0>();
  }

  v40 = v24[5];
  v41 = v24[6];
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    *v91 = v40;
    *&v91[8] = v41;
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::setState(v19, v91);
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  else
  {
    *v91 = v40;
    ggl::PipelineSetup::setState(v19, v91);
  }

  *v19[21] = v13;
  v44 = v19[17];
  *(v44 + 40) = 0;
  v45 = *(a1 + 1408);
  *(v44 + 32) = v45;
  v46 = v19[29];
  v47 = *(a1 + 1416);
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  v48 = *(v46 + 40);
  *(v46 + 32) = v45;
  *(v46 + 40) = v47;
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v48);
  }

  v49 = v19[17];
  if (!v9)
  {
    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v49, v19[29], *(a1 + 1496), *(a1 + 1504));
    *(v19[21] + 8) = v89;
    goto LABEL_75;
  }

  v49[1] = 0;
  v50 = *(a1 + 1392);
  *v49 = v50;
  v51 = v19[29];
  v52 = *(a1 + 1400);
  if (v52)
  {
    atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
  }

  v53 = v51[1];
  *v51 = v50;
  v51[1] = v52;
  if (v53)
  {
    goto LABEL_74;
  }

LABEL_75:
  v73 = *(a1 + 336);
  v74 = v73[1];
  if (v74 != *v73)
  {
    v75 = *(v74 - 8);
    v90 = v75;
    v73[1] = v74 - 8;
    goto LABEL_77;
  }

  v85 = v73[11];
  if (!v85)
  {
LABEL_102:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v75 = (*(*v85 + 48))(v85);
  v90 = v75;
LABEL_77:
  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v73 + 4), &v90);
  *v91 = v75;
  v76 = v73[15];
  if (!v76)
  {
    goto LABEL_102;
  }

  (*(*v76 + 48))(v76, v91);
  v77 = *a2;
  isInternal = (*a2)->isInternal;
  if (isInternal == 1)
  {
    v79 = 8;
    if (!*(a3 + 8))
    {
      v79 = 0;
    }

LABEL_81:
    a4 = (a4 + v79);
LABEL_82:
    v75[3] = *a4;
    goto LABEL_83;
  }

  if (isInternal == 2)
  {
    v79 = 24;
    if (*(a3 + 8))
    {
      v79 = 16;
    }

    goto LABEL_81;
  }

  if (!(*a2)->isInternal)
  {
    goto LABEL_82;
  }

LABEL_83:
  v75[4] = v19;
  v75[8] = a1 + 1232;
  v80 = *(&v77[2].isInternal + 3);
  if (*(a3 + 25) == 1)
  {
    v80 += *&v77[2].isInternal;
  }

  v81 = 6 * v80;
  v82 = 6 * (v80 + *(a2 + 2));
  v75[9] = v81;
  v75[10] = v82;
  v75[11] = 0;
  v75[12] = 1;
  v83 = *(a3 + 16);
  *v91 = v75;
  result = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v83 + 72), v91);
  ++*(a1 + 1816);
  return result;
}

void sub_1B2B67BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__base_destruct_at_end[abi:nn200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1B8C62190](result, 0x1000C40104B78CFLL);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void std::default_delete<std::vector<gm::Matrix<float,2,1>>>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciTrafficRenderLayer::layout(md::DaVinciTrafficRenderLayer *this, const md::LayoutContext *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(this + 44);
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  operator new();
}

void sub_1B2B684B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::PassShadowConfiguration>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowConfiguration>();
    *algn_1EB83CA28 = 0x7216A09FEC0661A6;
    qword_1EB83CA30 = "md::ls::PassShadowConfiguration]";
    qword_1EB83CA38 = 31;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowConfiguration>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassShadowConfiguration>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), a2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, WORD1(a2));
      }
    }
  }

  v20 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v20 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassShadowConfiguration>(a1);
}

uint64_t md::TrafficMeshStyle::TrafficMeshStyle(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, char a4)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::TrafficMeshStyle::setup(a1, a2, a3, a4);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  return a1;
}

void sub_1B2B687C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::TrafficMeshStyle::setup(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, char a4)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v13, a2, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  for (i = 0; i != 4; ++i)
  {
    if (v16 == 1 && ((v8 = md::trafficVisibleAtSpeed(&v13, i), i == 3) ? (v9 = a4) : (v9 = 0), (v9 & 1) != 0 || v8))
    {
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v13[3], 11 * i + 46, 0, 2u, 0);
      v10 = 0;
      if (v12 <= 0.0)
      {
        if (md::trafficSecondaryWidthForSpeedAtZ(v13, i, 0.0, v11) <= 0.0)
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }
      }
    }

    else
    {
      v10 = 5;
    }

    *(a1 + 4 * i) = v10;
  }

  if (v16 == 1)
  {
    (*(*v13 + 56))(v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }
}

void sub_1B2B68924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciTrafficLayer::layout(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v281 = *MEMORY[0x1E69E9840];
  if (*(a2 + 162) == 1)
  {
    v4 = 32;
    if (*(a2 + 160))
    {
      v4 = 40;
    }
  }

  else
  {
    v5 = 16;
    if (!*(a2 + 56))
    {
      v5 = 0;
    }

    v6 = 8;
    if (*(a2 + 56))
    {
      v6 = 24;
    }

    if (*(a2 + 160))
    {
      v4 = v6;
    }

    else
    {
      v4 = v5;
    }
  }

  v7 = *(*(a1 + 160) + 72 + v4);
  *(a1 + 56) = v7;
  if (*(a2 + 104))
  {
    v8 = *a2;
    if (v7)
    {
      v9 = md::LayoutContext::get<md::CameraContext>(*(v8 + 1));
      v10 = v2[16];
      v11 = gdc::CameraView::position(v9);
      *v279 = *v11;
      *&v279[16] = *(v11 + 16);
      v263 = 0uLL;
      v264[0] = 0.0;
      geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(v279, &v263);
      v12 = v264[0];
      *(v7 + 40) = (fminf(fmaxf(fminf(fmaxf((v12 * 0.00021053) + -0.10526, 0.0), 1.0) * fminf(fmaxf(v10, 0.2), 1.0), 0.0), 1.0) * -200000.0) + -5000.0;
    }
  }

  else
  {
    v8 = *a2;
  }

  md::LayoutContext::frameState(v8);
  v257 = v2;
  if ((*(v13 + 632) & 1) == 0)
  {
    v32 = *(a1 + 8);
    v33 = *(a1 + 16);
    goto LABEL_50;
  }

  v14 = *(*v2 + 8);
  v262[0] = md::LayoutContext::get<md::CameraContext>(v14);
  v258 = a1;
  if (*(v262[0] + 3784))
  {
    v15 = *(a1 + 72);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = *(gdc::Camera::cameraFrame(v262[0]) + 16);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v20 = v16 | (4 * i);
          geo::Frustum<double>::transformed(&v263, v262[0] + 984, v15 + 1696 + 56 * v20);
          v21 = v15 + 32 + 104 * v20;
          v22 = *(v21 + 56);
          v23 = *(v21 + 88);
          *&v279[16] = *(v21 + 72);
          *&v279[32] = v23;
          *v279 = v22;
          v277[1] = 0;
          v277[0] = 0;
          v277[2] = v18;
          gm::Box<double,3>::operator+=(v279, v277);
          for (j = 0; j != 24; j += 4)
          {
            v25 = 0;
            v26 = v264[j];
            v272 = *&v264[j - 2];
            v273 = v26;
            do
            {
              v27 = &v279[v25 * 8];
              if (*(&v272 + v25 * 8) >= 0.0)
              {
                v27 = &v279[v25 * 8 + 24];
              }

              v277[v25++] = *v27;
            }

            while (v25 != 3);
            v28 = 0;
            v29 = 0.0;
            do
            {
              v29 = v29 + v264[j - 2 + v28] * *&v277[v28];
              ++v28;
            }

            while (v28 != 3);
            v30 = v264[j + 1] + v29;
            if (v30 < 0.0)
            {
              break;
            }
          }

          v31 = 1 << (4 * i + v16);
          if (v30 < 0.0)
          {
            v31 = 0;
          }

          v17 |= v31;
        }

        ++v16;
      }

      while (v16 != 4);
      goto LABEL_42;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&v263, *(a1 + 120), 0);
    v35 = v265;
    v36 = 0.0;
  }

  else
  {
    v34 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v14) == 1 && *(a1 + 112) == 1)
    {
      v34 = *(gdc::Camera::cameraFrame(v262[0]) + 16) * 0.0000000249532021 * (1 << *(a1 + 81));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&v263, *(a1 + 120), 0);
    v35 = v265;
    v36 = v34;
  }

  v17 = ggl::CullingGrid::intersectedCellsForView(v35, v36);
  ggl::BufferMemory::~BufferMemory(&v263);
LABEL_42:
  v32 = *(v258 + 8);
  v33 = *(v258 + 16);
  if (v32 != v33)
  {
    v37 = *(v258 + 8);
    do
    {
      v38 = *v37;
      v39 = *(*v37 + 248);
      v40 = *(*v37 + 256);
      if (v39 == v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = 0;
        do
        {
          v42 = *v39++;
          v43 = (*(v42 + 96) & v17) != 0;
          v41 |= v43;
          *(v42 + 48) = v43;
        }

        while (v39 != v40);
      }

      *(v38 + 136) = v41 & 1;
      *(v38 + 272) = v41 & 1;
      ++v37;
    }

    while (v37 != v33);
  }

LABEL_50:
  if (v32 != v33)
  {
    v259 = vdupq_n_s32(0x37800080u);
    v255 = v33;
    while (1)
    {
      v44 = *v32;
      if (*(*v32 + 272) == 1)
      {
        break;
      }

LABEL_321:
      if (++v32 == v33)
      {
        return;
      }
    }

    v45 = *(v44 + 296);
    v46 = *(v44 + 304);
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v272, v45, v46);
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v46);
    }

    if ((v275 & 1) == 0)
    {
      *(v44 + 136) = 0;
      *(v44 + 272) = 0;
LABEL_317:
      if (v274)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v274);
      }

      if (*(&v272 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v272 + 1));
      }

      goto LABEL_321;
    }

    v47 = *(v44 + 280);
    v48 = *(v44 + 288);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v268, v47, v48);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }

    v266.i8[0] = 0;
    v267 = 0;
    v49 = md::setupSharedStylingParameters(v2, &v263, &v268, *(v44 + 312));
    v50 = *(v2 + 12);
    v51 = v50;
    v52 = *(v44 + 312);
    v53 = *(v272 + 24);
    if (v50 >= 0x17)
    {
      v54 = 23;
    }

    else
    {
      v54 = *(v2 + 12);
    }

    v55 = *v53;
    v260 = v49;
    if (*v53)
    {
      v56 = *v55;
      v57 = *v55 == 1.0;
      if (*(v53 + 10) == 1 && v56 != 0.0 && v56 != 1.0)
      {
LABEL_73:
        v60 = *(v53 + 16);
        if (v60)
        {
          v61 = *(v60 + 72);
          if (v61)
          {
            v62 = *v61 + 120 * *(v61 + v54 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v62, 0x1ACu) != *(v62 + 12))
            {
              goto LABEL_165;
            }
          }

          if (*(v53 + 56))
          {
            v63 = *(v53 + 48);
            v64 = 8 * *(v53 + 56);
            while (1)
            {
              v65 = *(*v63 + 72);
              if (v65)
              {
                v66 = *v65 + 120 * *(v65 + v54 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v66, 0x1ACu) != *(v66 + 12))
                {
                  goto LABEL_165;
                }
              }

              v63 += 8;
              v59 = 1;
              v64 -= 8;
              if (!v64)
              {
                goto LABEL_84;
              }
            }
          }
        }

        v59 = 1;
LABEL_84:
        v252 = v53 + 16;
        v67 = *(v53 + 16 + 16 * v59);
        if (v67)
        {
          v68 = *(v67 + 72);
          if (v68)
          {
            v69 = *v68 + 120 * *(v68 + v54 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v69, 0x1ACu) != *(v69 + 12))
            {
              goto LABEL_165;
            }
          }

          v70 = v53 + 16 * v59;
          if (*(v70 + 56))
          {
            v71 = *(v70 + 48);
            v72 = 8 * *(v70 + 56);
            do
            {
              v73 = *(*v71 + 72);
              if (v73)
              {
                v74 = *v73 + 120 * *(v73 + v54 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v74, 0x1ACu) != *(v74 + 12))
                {
                  goto LABEL_165;
                }
              }

              v71 += 8;
              v72 -= 8;
            }

            while (v72);
          }
        }

        if (v55)
        {
          v75 = *v55;
          v76 = *v55 == 1.0;
          if (*(v53 + 10) == 1 && v75 != 0.0 && v75 != 1.0)
          {
LABEL_100:
            if (*v252)
            {
              v79 = *(*v252 + 72);
              if (v79)
              {
                v80 = *v79 + 120 * *(v79 + v54 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v80, 0x1ADu) != *(v80 + 12))
                {
                  goto LABEL_165;
                }
              }

              if (*(v53 + 56))
              {
                v81 = *(v53 + 48);
                v82 = 8 * *(v53 + 56);
                while (1)
                {
                  v83 = *(*v81 + 72);
                  if (v83)
                  {
                    v84 = *v83 + 120 * *(v83 + v54 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v84, 0x1ADu) != *(v84 + 12))
                    {
                      goto LABEL_165;
                    }
                  }

                  v81 += 8;
                  v78 = 1;
                  v82 -= 8;
                  if (!v82)
                  {
                    goto LABEL_110;
                  }
                }
              }
            }

            v78 = 1;
LABEL_110:
            v85 = *(v252 + 16 * v78);
            if (v85)
            {
              v86 = *(v85 + 72);
              if (v86)
              {
                v87 = *v86 + 120 * *(v86 + v54 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v87, 0x1ADu) != *(v87 + 12))
                {
                  goto LABEL_165;
                }
              }

              v88 = v53 + 16 * v78;
              if (*(v88 + 56))
              {
                v89 = *(v88 + 48);
                v90 = 8 * *(v88 + 56);
                do
                {
                  v91 = *(*v89 + 72);
                  if (v91)
                  {
                    v92 = *v91 + 120 * *(v91 + v54 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v92, 0x1ADu) != *(v92 + 12))
                    {
                      goto LABEL_165;
                    }
                  }

                  v89 += 8;
                  v90 -= 8;
                }

                while (v90);
              }
            }

            if (v55)
            {
              v93 = *v55;
              v94 = *v55 == 1.0;
              if (*(v53 + 10) == 1 && v93 != 0.0 && v93 != 1.0)
              {
LABEL_126:
                if (*v252)
                {
                  v97 = *(*v252 + 72);
                  if (v97)
                  {
                    v98 = *v97 + 120 * *(v97 + v54 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v98, 0x1AEu) != *(v98 + 12))
                    {
                      goto LABEL_165;
                    }
                  }

                  if (*(v53 + 56))
                  {
                    v99 = *(v53 + 48);
                    v100 = 8 * *(v53 + 56);
                    while (1)
                    {
                      v101 = *(*v99 + 72);
                      if (v101)
                      {
                        v102 = *v101 + 120 * *(v101 + v54 + 16);
                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v102, 0x1AEu) != *(v102 + 12))
                        {
                          goto LABEL_165;
                        }
                      }

                      v99 += 8;
                      v96 = 1;
                      v100 -= 8;
                      if (!v100)
                      {
                        goto LABEL_136;
                      }
                    }
                  }
                }

                v96 = 1;
LABEL_136:
                v103 = *(v252 + 16 * v96);
                if (v103)
                {
                  v104 = *(v103 + 72);
                  if (v104)
                  {
                    v105 = *v104 + 120 * *(v104 + v54 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v105, 0x1AEu) != *(v105 + 12))
                    {
                      goto LABEL_165;
                    }
                  }

                  v106 = v53 + 16 * v96;
                  if (*(v106 + 56))
                  {
                    v107 = *(v106 + 48);
                    v108 = 8 * *(v106 + 56);
                    do
                    {
                      v109 = *(*v107 + 72);
                      if (v109)
                      {
                        v110 = *v109 + 120 * *(v109 + v54 + 16);
                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v110, 0x1AEu) != *(v110 + 12))
                        {
                          goto LABEL_165;
                        }
                      }

                      v107 += 8;
                      v108 -= 8;
                    }

                    while (v108);
                  }
                }

                if (v55)
                {
                  v111 = *v55;
                  v112 = *v55 == 1.0;
                  if (*(v53 + 10) == 1 && v111 != 0.0 && v111 != 1.0)
                  {
                    goto LABEL_152;
                  }
                }

                else
                {
                  v112 = 0;
                }

                v114 = *(v53 + v112 + 11);
                if (v114 != 2)
                {
LABEL_162:
                  v121 = *(v252 + 16 * v114);
                  if (!v121)
                  {
                    goto LABEL_329;
                  }

                  v122 = *(v121 + 72);
                  if (v122)
                  {
                    v123 = *v122 + 120 * *(v122 + v54 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v123, 0x1AFu) != *(v123 + 12))
                    {
                      goto LABEL_165;
                    }
                  }

                  v239 = v53 + 16 * v114;
                  if (!*(v239 + 56))
                  {
LABEL_329:
                    v2 = v257;
                    v127 = *v262;
                    goto LABEL_177;
                  }

                  v240 = *(v239 + 48);
                  v241 = 8 * *(v239 + 56);
                  while (1)
                  {
                    v242 = *(*v240 + 72);
                    if (v242)
                    {
                      v243 = *v242 + 120 * *(v242 + v54 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v243, 0x1AFu) != *(v243 + 12))
                      {
                        break;
                      }
                    }

                    v240 += 8;
                    v241 -= 8;
                    if (!v241)
                    {
                      goto LABEL_329;
                    }
                  }

LABEL_165:
                  if (v52 > 1)
                  {
                    v127 = *v262;
                    if (v52 != 2)
                    {
                      v2 = v257;
                      if (v52 != 3)
                      {
                        goto LABEL_175;
                      }

                      v124 = fminf(fmaxf(v51, 0.0), 23.0);
                      v125 = v53;
                      v126 = 431;
                      goto LABEL_171;
                    }

                    v128 = fminf(fmaxf(v51, 0.0), 23.0);
                    v129 = v53;
                    v130 = 430;
                  }

                  else
                  {
                    if (v52)
                    {
                      v2 = v257;
                      v124 = fminf(fmaxf(v51, 0.0), 23.0);
                      v125 = v53;
                      v126 = 429;
LABEL_171:
                      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v279, v125, v126, 2u, v124);
                      v127 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v279)), v259);
                      goto LABEL_175;
                    }

                    v128 = fminf(fmaxf(v51, 0.0), 23.0);
                    v129 = v53;
                    v130 = 428;
                  }

                  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v279, v129, v130, 2u, v128);
                  v127 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v279)), v259);
                  v2 = v257;
LABEL_175:
                  v266 = v127;
                  if ((v267 & 1) == 0)
                  {
                    v267 = 1;
                  }

LABEL_177:
                  *v262 = v127;
                  if (v52 > 1)
                  {
                    if (v52 == 2)
                    {
                      v131 = *(v272 + 24);
                      v132 = fminf(fmaxf(v51, 0.0), 23.0);
                      v133 = 65;
                    }

                    else
                    {
                      v134 = v256;
                      if (v52 != 3)
                      {
                        goto LABEL_186;
                      }

                      v131 = *(v272 + 24);
                      v132 = fminf(fmaxf(v51, 0.0), 23.0);
                      v133 = 76;
                    }
                  }

                  else
                  {
                    v131 = *(v272 + 24);
                    v132 = fminf(fmaxf(v51, 0.0), 23.0);
                    if (v52)
                    {
                      v133 = 54;
                    }

                    else
                    {
                      v133 = 43;
                    }
                  }

                  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v279, v131, v133, 2u, v132);
                  v134 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v279)), v259);
LABEL_186:
                  v256 = v134;
                  *(v264 + 4) = v134;
                  v135 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*v2 + 16), *(*(*v2 + 16) + 8));
                  if (!v135)
                  {
                    v137 = *(v272 + 24);
                    v139 = *v137;
LABEL_198:
                    v145 = v2[2];
                    if (v145 >= 0x17)
                    {
                      v146 = 23;
                    }

                    else
                    {
                      v146 = v145;
                    }

                    if (v139)
                    {
                      v147 = *v139;
                      v148 = *v139 == 1.0;
                      if (*(v137 + 10) == 1 && v147 != 0.0 && v147 != 1.0)
                      {
LABEL_209:
                        v151 = *(v137 + 16);
                        if (v151)
                        {
                          v152 = *(v151 + 72);
                          if (v152)
                          {
                            v153 = *v152 + 120 * *(v152 + v146 + 16);
                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v153, 0x5Eu) != *(v153 + 12))
                            {
                              goto LABEL_222;
                            }
                          }

                          if (*(v137 + 56))
                          {
                            v154 = *(v137 + 48);
                            v155 = 8 * *(v137 + 56);
                            while (1)
                            {
                              v156 = *(*v154 + 72);
                              if (v156)
                              {
                                v157 = *v156 + 120 * *(v156 + v146 + 16);
                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v157, 0x5Eu) != *(v157 + 12))
                                {
                                  goto LABEL_222;
                                }
                              }

                              v154 += 8;
                              v150 = 1;
                              v155 -= 8;
                              if (!v155)
                              {
                                goto LABEL_219;
                              }
                            }
                          }
                        }

                        v150 = 1;
LABEL_219:
                        v158 = *(v137 + 16 * v150 + 16);
                        v159 = 4.0;
                        if (!v158)
                        {
                          goto LABEL_231;
                        }

                        v160 = *(v158 + 72);
                        if (!v160 || (v161 = *v160 + 120 * *(v160 + v146 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v161, 0x5Eu) == *(v161 + 12)))
                        {
                          v179 = v137 + 16 * v150;
                          if (!*(v179 + 56))
                          {
                            goto LABEL_231;
                          }

                          v180 = *(v179 + 48);
                          v181 = 8 * *(v179 + 56);
                          while (1)
                          {
                            v182 = *(*v180 + 72);
                            if (v182)
                            {
                              v183 = *v182 + 120 * *(v182 + v146 + 16);
                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v183, 0x5Eu) != *(v183 + 12))
                              {
                                break;
                              }
                            }

                            v180 += 8;
                            v181 -= 8;
                            if (!v181)
                            {
                              goto LABEL_231;
                            }
                          }
                        }

LABEL_222:
                        v162 = fminf(fmaxf(v145, 0.0), 23.0);
                        if (v139)
                        {
                          v163 = *v139;
                          v164 = *v139 == 1.0;
                          if (*(v137 + 10) == 1 && v163 != 0.0 && v163 != 1.0)
                          {
LABEL_340:
                            v279[0] = 1;
                            LOBYTE(v277[0]) = 1;
                            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 94, 0, v279, v162);
                            v254 = v244;
                            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 94, 1, v277, v162);
                            v159 = v254 + ((v245 - v254) * v163);
LABEL_231:
                            *(&v263 + 1) = v159;
                            if (v139)
                            {
                              v168 = *v139;
                              v169 = *v139 == 1.0;
                              if (*(v137 + 10) == 1 && v168 != 0.0 && v168 != 1.0)
                              {
LABEL_239:
                                v172 = *(v137 + 16);
                                if (v172)
                                {
                                  v173 = *(v172 + 72);
                                  if (v173)
                                  {
                                    v174 = *v173 + 120 * *(v173 + v146 + 16);
                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v174, 0x1BAu) != *(v174 + 12))
                                    {
                                      goto LABEL_258;
                                    }
                                  }

                                  if (*(v137 + 56))
                                  {
                                    v175 = *(v137 + 48);
                                    v176 = 8 * *(v137 + 56);
                                    while (1)
                                    {
                                      v177 = *(*v175 + 72);
                                      if (v177)
                                      {
                                        v178 = *v177 + 120 * *(v177 + v146 + 16);
                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v178, 0x1BAu) != *(v178 + 12))
                                        {
                                          goto LABEL_258;
                                        }
                                      }

                                      v175 += 8;
                                      v171 = 1;
                                      v176 -= 8;
                                      if (!v176)
                                      {
                                        goto LABEL_255;
                                      }
                                    }
                                  }
                                }

                                v171 = 1;
LABEL_255:
                                v184 = *(v137 + 16 * v171 + 16);
                                v185 = 1.0;
                                if (!v184)
                                {
                                  goto LABEL_270;
                                }

                                v186 = *(v184 + 72);
                                if (v186)
                                {
                                  v187 = *v186 + 120 * *(v186 + v146 + 16);
                                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v187, 0x1BAu) != *(v187 + 12))
                                  {
                                    goto LABEL_258;
                                  }
                                }

                                v196 = v137 + 16 * v171;
                                if (!*(v196 + 56))
                                {
LABEL_270:
                                  v33 = v255;
                                  v191 = v260;
                                  goto LABEL_273;
                                }

                                v197 = *(v196 + 48);
                                v198 = 8 * *(v196 + 56);
                                while (1)
                                {
                                  v199 = *(*v197 + 72);
                                  if (v199)
                                  {
                                    v200 = *v199 + 120 * *(v199 + v146 + 16);
                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v200, 0x1BAu) != *(v200 + 12))
                                    {
                                      break;
                                    }
                                  }

                                  v197 += 8;
                                  v198 -= 8;
                                  if (!v198)
                                  {
                                    goto LABEL_270;
                                  }
                                }

LABEL_258:
                                v188 = fminf(fmaxf(v145, 0.0), 23.0);
                                if (v139)
                                {
                                  v189 = *v139;
                                  v190 = *v139 == 1.0;
                                  v33 = v255;
                                  v191 = v260;
                                  if (*(v137 + 10) == 1 && v189 != 0.0 && v189 != 1.0)
                                  {
LABEL_264:
                                    v279[0] = 1;
                                    LOBYTE(v277[0]) = 1;
                                    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 442, 0, v279, v188);
                                    v194 = v193;
                                    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 442, 1, v277, v188);
                                    v185 = v194 + ((v195 - v194) * v189);
LABEL_273:
                                    *v264 = v185;
                                    *(v44 + 136) = v191;
                                    *(v44 + 272) = v191;
                                    if (v191)
                                    {
                                      v203 = *(*(v44 + 8) + 160);
                                      v250 = *(v2 + 76);
                                      v253 = v267;
                                      v251 = *(v2 + 10);
                                      v261 = *(v2 + 12);
                                      v204 = +[VKDebugSettings sharedSettings];
                                      v205 = [v204 enableTileClippingDebug];

                                      v207 = v250 & v253;
                                      v208 = *(v203 + 136);
                                      if (!v251)
                                      {
                                        v207 = 0;
                                      }

                                      v249 = *(v44 + 328);
                                      v209 = *(v203 + 64);
                                      v210 = *(v2 + 88);
                                      v211 = *(v2 + 165);
                                      v280 = 0;
                                      memset(&v279[8], 0, 48);
                                      v279[0] = v208;
                                      v279[1] = v210;
                                      *&v279[2] = 0;
                                      v279[4] = v207;
                                      v279[5] = v261 != 0;
                                      v279[6] = v205;
                                      v279[7] = v211;
                                      v212 = ggl::packFunctionConstantKey(v279, v206);
                                      v213 = *(v209 + 104);
                                      if (!v213)
                                      {
                                        goto LABEL_284;
                                      }

                                      v214 = (v209 + 104);
                                      do
                                      {
                                        v215 = v213[4];
                                        _CF = v215 >= v212;
                                        v217 = v215 < v212;
                                        if (_CF)
                                        {
                                          v214 = v213;
                                        }

                                        v213 = v213[v217];
                                      }

                                      while (v213);
                                      if (v214 == (v209 + 104) || v212 < v214[4])
                                      {
LABEL_284:
                                        operator new();
                                      }

                                      v218 = v214[5];
                                      v219 = v214[6];
                                      if (v219)
                                      {
                                        atomic_fetch_add_explicit(&v219->__shared_owners_, 1uLL, memory_order_relaxed);
                                        v220 = v250 & v253;
                                        *v279 = v218;
                                        *&v279[8] = v219;
                                        atomic_fetch_add_explicit(&v219->__shared_owners_, 1uLL, memory_order_relaxed);
                                        ggl::PipelineSetup::setState(v249, v279);
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v219);
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v219);
                                      }

                                      else
                                      {
                                        *v279 = v214[5];
                                        *&v279[8] = 0;
                                        ggl::PipelineSetup::setState(v249, v279);
                                        v220 = v250 & v253;
                                      }

                                      v221 = v251;
                                      if (!v220)
                                      {
                                        v221 = 0;
                                      }

                                      *(*(*(v44 + 328) + 168) + 8) = v221;
                                      v222 = *(v44 + 328);
                                      v223 = *(v222 + 136);
                                      *(v223 + 32) = v261;
                                      *(v223 + 40) = 0;
                                      v224 = *(v222 + 232);
                                      v225 = *(v224 + 40);
                                      *(v224 + 32) = 0;
                                      *(v224 + 40) = 0;
                                      if (v225)
                                      {
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v225);
                                      }

                                      v226 = **(*(*(v44 + 8) + 160) + 128);
                                      v227 = v2[17];
                                      v228 = *(*(*(v44 + 328) + 136) + 48);
                                      ggl::BufferMemory::BufferMemory(v277);
                                      ggl::ResourceAccessor::accessConstantData(v279, 0, v228, 1);
                                      ggl::BufferMemory::operator=(v277, v279);
                                      ggl::BufferMemory::~BufferMemory(v279);
                                      if (v253 & 1) != 0 && (v250)
                                      {
                                        if ((v267 & 1) == 0)
                                        {
                                          std::__throw_bad_optional_access[abi:nn200100]();
                                        }

                                        v229 = v278;
                                        v278[1] = v266;
                                      }

                                      else
                                      {
                                        v229 = v278;
                                      }

                                      v231 = *(&v263 + 1);
                                      v230 = *&v263;
                                      if (!*(v44 + 320))
                                      {
                                        v230 = 0.0;
                                      }

                                      v229[2].f32[2] = v230;
                                      v232 = *(*(*(v44 + 8) + 160) + 128);
                                      _S1 = (*v264 + (*(v232 + 8) * v231)) * 0.5;
                                      __asm { FCVT            H1, S1 }

                                      v229[2].i16[6] = LOWORD(_S1);
                                      *v229 = *(v264 + 4);
                                      v229[2].f32[0] = (v231 * 0.5) * *(v232 + 8);
                                      v229[2].f32[1] = v227 * v226;
                                      _H0 = 0;
                                      if ((*(v2 + 163) & 1) == 0)
                                      {
                                        _S0 = fminf(fmaxf((v2[39] * 0.14286) + -1.7143, 0.0), 1.0);
                                        __asm { FCVT            H0, S0 }

                                        v229[2].i32[2] = 0;
                                      }

                                      v229[2].i16[7] = _H0;
                                      ggl::BufferMemory::~BufferMemory(v277);
                                      if (*(v44 + 136))
                                      {
                                        *(v44 + 56) = *(v2 + 57);
                                        if (*(v2 + 164) == 1)
                                        {
                                          md::RoadBatch::setRenderOrdersForStrokeAndFill(1, 0, 0, 0, 0, v44 + 16, *(v44 + 316), 1, &v268, v2, ~*(v44 + 312), 0);
                                        }

                                        else
                                        {
                                          if (v271 == 1)
                                          {
                                            if (v2[39] >= 0x17)
                                            {
                                              v238 = 23;
                                            }

                                            else
                                            {
                                              v238 = v2[39];
                                            }

                                            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v268[3], 106, v238, 2, 0);
                                          }

                                          *(v44 + 64) = (*(v44 + 312) ^ 0xFFFFFFFFLL) + *(v2 + 18);
                                        }
                                      }
                                    }

                                    if (v271 == 1)
                                    {
                                      (*(*v268 + 56))(v268);
                                    }

                                    if (v270)
                                    {
                                      std::__shared_weak_count::__release_shared[abi:nn200100](v270);
                                    }

                                    if (v269)
                                    {
                                      std::__shared_weak_count::__release_shared[abi:nn200100](v269);
                                    }

                                    if (v275)
                                    {
                                      (*(*v272 + 56))(v272);
                                    }

                                    goto LABEL_317;
                                  }
                                }

                                else
                                {
                                  v190 = 0;
                                  v33 = v255;
                                  v191 = v260;
                                }

                                v201 = *(v137 + v190 + 11);
                                if (v201 != 2)
                                {
                                  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 442, v201, 0, v188);
                                  v185 = v202;
                                  goto LABEL_273;
                                }

                                v189 = 0.0;
                                goto LABEL_264;
                              }
                            }

                            else
                            {
                              v169 = 0;
                            }

                            v171 = *(v137 + v169 + 11);
                            if (v171 != 2)
                            {
                              goto LABEL_255;
                            }

                            goto LABEL_239;
                          }
                        }

                        else
                        {
                          v164 = 0;
                        }

                        v166 = *(v137 + v164 + 11);
                        if (v166 != 2)
                        {
                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 94, v166, 0, v162);
                          v159 = v167;
                          goto LABEL_231;
                        }

                        v163 = 0.0;
                        goto LABEL_340;
                      }
                    }

                    else
                    {
                      v148 = 0;
                    }

                    v150 = *(v137 + v148 + 11);
                    if (v150 != 2)
                    {
                      goto LABEL_219;
                    }

                    goto LABEL_209;
                  }

                  v136 = v135;
                  *v279 = *(v264 + 4);
                  v137 = *(v272 + 24);
                  v138 = fminf(fmaxf(v51, 0.0), 23.0);
                  v139 = *v137;
                  if (*v137)
                  {
                    v140 = *v139;
                    v141 = *v139 == 1.0;
                    if (*(v137 + 10) == 1 && v140 != 0.0 && v140 != 1.0)
                    {
                      goto LABEL_343;
                    }
                  }

                  else
                  {
                    v141 = 0;
                  }

                  v143 = *(v137 + v141 + 11);
                  if (v143 != 2)
                  {
                    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v272 + 24), 489, v143, 0, v138);
LABEL_196:
                    md::AccessibilityHelper::luminanceAdjustedColor(v264 + 4, *v136, v279, v144);
                    goto LABEL_198;
                  }

                  v140 = 0.0;
LABEL_343:
                  LOBYTE(v277[0]) = 1;
                  v276 = 1;
                  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 489, 0, v277, v138);
                  v247 = v246;
                  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 489, 1, &v276, v138);
                  v144 = v247 + ((v248 - v247) * v140);
                  goto LABEL_196;
                }

LABEL_152:
                if (*v252)
                {
                  v115 = *(*v252 + 72);
                  if (v115)
                  {
                    v116 = *v115 + 120 * *(v115 + v54 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v116, 0x1AFu) != *(v116 + 12))
                    {
                      goto LABEL_165;
                    }
                  }

                  if (*(v53 + 56))
                  {
                    v117 = *(v53 + 48);
                    v118 = 8 * *(v53 + 56);
                    while (1)
                    {
                      v119 = *(*v117 + 72);
                      if (v119)
                      {
                        v120 = *v119 + 120 * *(v119 + v54 + 16);
                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v120, 0x1AFu) != *(v120 + 12))
                        {
                          goto LABEL_165;
                        }
                      }

                      v117 += 8;
                      v114 = 1;
                      v118 -= 8;
                      if (!v118)
                      {
                        goto LABEL_162;
                      }
                    }
                  }
                }

                v114 = 1;
                goto LABEL_162;
              }
            }

            else
            {
              v94 = 0;
            }

            v96 = *(v53 + v94 + 11);
            if (v96 != 2)
            {
              goto LABEL_136;
            }

            goto LABEL_126;
          }
        }

        else
        {
          v76 = 0;
        }

        v78 = *(v53 + v76 + 11);
        if (v78 != 2)
        {
          goto LABEL_110;
        }

        goto LABEL_100;
      }
    }

    else
    {
      v57 = 0;
    }

    v59 = *(v53 + v57 + 11);
    if (v59 != 2)
    {
      goto LABEL_84;
    }

    goto LABEL_73;
  }
}

void sub_1B2B6A4DC(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x2C8]) == 1)
  {
    (*(*STACK[0x2A8] + 56))();
  }

  if (STACK[0x2C0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2C0]);
  }

  if (STACK[0x2B0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2B0]);
  }

  if (LOBYTE(STACK[0x2F0]) == 1)
  {
    (*(*STACK[0x2D0] + 56))();
  }

  if (STACK[0x2E8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2E8]);
  }

  if (STACK[0x2D8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2D8]);
  }

  _Unwind_Resume(a1);
}

BOOL md::setupSharedStylingParameters(float *a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = *(a1 + 14);
  v12 = *(a1 + 15);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v492, v11, v12);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  if (v495 != 1)
  {
    md::defaultStandardFillColor(&v491, a4);
    *(a2 + 20) = v491;
    __asm { FMOV            V0.4S, #1.0 }

    *(a2 + 36) = _Q0;
    v16 = 0.375;
    v4 = 4.0;
    v6 = 1.0;
    v18 = 0.1;
    v5 = 3.4028e38;
    v7 = 3.4028e38;
    goto LABEL_708;
  }

  v486 = *(a1 + 12);
  v13 = v486;
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        goto LABEL_52;
      }

      v14 = fminf(fmaxf(v13, 0.0), 23.0);
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 76, 2u, v14);
      v482 = vdupq_n_s32(0x37800080u);
      *(a2 + 20) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v482);
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 77, 2u, v14);
      *(a2 + 36) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v482);
      v479 = (a2 + 20);
      v481 = (a2 + 36);
      md::trafficWidthForSpeedAtZ(&v492, 3, v13);
      v16 = v37;
      v18 = md::trafficSecondaryWidthForSpeedAtZ(v492, 3, v13, v38);
      v19 = v492[3];
      if (v486 >= 0x17)
      {
        v39 = 23;
      }

      else
      {
        v39 = v486;
      }

      v21 = *v19;
      if (*v19)
      {
        v40 = *v21;
        v41 = *v21 == 1.0;
        if (*(v19 + 10) == 1 && v40 != 0.0 && v40 != 1.0)
        {
LABEL_43:
          v44 = *(v19 + 16);
          if (v44)
          {
            v45 = *(v44 + 72);
            if (v45)
            {
              v46 = *v45 + 120 * *(v45 + v39 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v46, 0x52u) != *(v46 + 12))
              {
                goto LABEL_116;
              }
            }

            if (*(v19 + 56))
            {
              v47 = *(v19 + 48);
              v48 = 8 * *(v19 + 56);
              while (1)
              {
                v49 = *(*v47 + 72);
                if (v49)
                {
                  v50 = *v49 + 120 * *(v49 + v39 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v50, 0x52u) != *(v50 + 12))
                  {
                    goto LABEL_116;
                  }
                }

                v47 += 8;
                v43 = 1;
                v48 -= 8;
                if (!v48)
                {
                  goto LABEL_113;
                }
              }
            }
          }

          v43 = 1;
LABEL_113:
          v94 = *(v19 + 16 * v43 + 16);
          if (!v94)
          {
            goto LABEL_168;
          }

          v95 = *(v94 + 72);
          if (!v95 || (v96 = *v95 + 120 * *(v95 + v39 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v96, 0x52u) == *(v96 + 12)))
          {
            v99 = v19 + 16 * v43;
            if (!*(v99 + 56))
            {
              goto LABEL_168;
            }

            v100 = *(v99 + 48);
            v101 = 8 * *(v99 + 56);
            while (1)
            {
              v102 = *(*v100 + 72);
              if (v102)
              {
                v103 = *v102 + 120 * *(v102 + v39 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v103, 0x52u) != *(v103 + 12))
                {
                  break;
                }
              }

              v100 += 8;
              v101 -= 8;
              if (!v101)
              {
                goto LABEL_168;
              }
            }
          }

LABEL_116:
          if (v21)
          {
            v6 = *v21;
            v97 = *v21 == 1.0;
            if (*(v19 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
            {
              goto LABEL_785;
            }
          }

          else
          {
            v97 = 0;
          }

          v86 = *(v19 + v97 + 11);
          if (v86 != 2)
          {
            v87 = v19;
            v88 = 82;
            goto LABEL_177;
          }

          v6 = 0.0;
LABEL_785:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 82, 0, &v491, v14);
          v5 = v475;
          v472 = v19;
          v473 = 82;
          goto LABEL_790;
        }
      }

      else
      {
        v41 = 0;
      }

      v43 = *(v19 + v41 + 11);
      if (v43 != 2)
      {
        goto LABEL_113;
      }

      goto LABEL_43;
    }

    v14 = fminf(fmaxf(v13, 0.0), 23.0);
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 65, 2u, v14);
    v484 = vdupq_n_s32(0x37800080u);
    *(a2 + 20) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v484);
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 66, 2u, v14);
    *(a2 + 36) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v484);
    v479 = (a2 + 20);
    v481 = (a2 + 36);
    md::trafficWidthForSpeedAtZ(&v492, 2, v13);
    v16 = v67;
    v18 = md::trafficSecondaryWidthForSpeedAtZ(v492, 2, v13, v68);
    v19 = v492[3];
    if (v486 >= 0x17)
    {
      v69 = 23;
    }

    else
    {
      v69 = v486;
    }

    v21 = *v19;
    if (*v19)
    {
      v70 = *v21;
      v71 = *v21 == 1.0;
      if (*(v19 + 10) == 1 && v70 != 0.0 && v70 != 1.0)
      {
LABEL_84:
        v74 = *(v19 + 16);
        if (v74)
        {
          v75 = *(v74 + 72);
          if (v75)
          {
            v76 = *v75 + 120 * *(v75 + v69 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v76, 0x47u) != *(v76 + 12))
            {
              goto LABEL_154;
            }
          }

          if (*(v19 + 56))
          {
            v77 = *(v19 + 48);
            v78 = 8 * *(v19 + 56);
            while (1)
            {
              v79 = *(*v77 + 72);
              if (v79)
              {
                v80 = *v79 + 120 * *(v79 + v69 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v80, 0x47u) != *(v80 + 12))
                {
                  goto LABEL_154;
                }
              }

              v77 += 8;
              v73 = 1;
              v78 -= 8;
              if (!v78)
              {
                goto LABEL_151;
              }
            }
          }
        }

        v73 = 1;
LABEL_151:
        v114 = *(v19 + 16 * v73 + 16);
        if (!v114)
        {
          goto LABEL_168;
        }

        v115 = *(v114 + 72);
        if (!v115 || (v116 = *v115 + 120 * *(v115 + v69 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v116, 0x47u) == *(v116 + 12)))
        {
          v119 = v19 + 16 * v73;
          if (!*(v119 + 56))
          {
            goto LABEL_168;
          }

          v120 = *(v119 + 48);
          v121 = 8 * *(v119 + 56);
          while (1)
          {
            v122 = *(*v120 + 72);
            if (v122)
            {
              v123 = *v122 + 120 * *(v122 + v69 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v123, 0x47u) != *(v123 + 12))
              {
                break;
              }
            }

            v120 += 8;
            v121 -= 8;
            if (!v121)
            {
              goto LABEL_168;
            }
          }
        }

LABEL_154:
        if (v21)
        {
          v6 = *v21;
          v117 = *v21 == 1.0;
          if (*(v19 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
          {
            goto LABEL_789;
          }
        }

        else
        {
          v117 = 0;
        }

        v86 = *(v19 + v117 + 11);
        if (v86 != 2)
        {
          v87 = v19;
          v88 = 71;
          goto LABEL_177;
        }

        v6 = 0.0;
LABEL_789:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 71, 0, &v491, v14);
        v5 = v477;
        v472 = v19;
        v473 = 71;
        goto LABEL_790;
      }
    }

    else
    {
      v71 = 0;
    }

    v73 = *(v19 + v71 + 11);
    if (v73 != 2)
    {
      goto LABEL_151;
    }

    goto LABEL_84;
  }

  if (!a4)
  {
    v14 = fminf(fmaxf(v13, 0.0), 23.0);
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 43, 2u, v14);
    v483 = vdupq_n_s32(0x37800080u);
    *(a2 + 20) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v483);
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 44, 2u, v14);
    *(a2 + 36) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v483);
    v479 = (a2 + 20);
    v481 = (a2 + 36);
    md::trafficWidthForSpeedAtZ(&v492, 0, v13);
    v16 = v53;
    v18 = md::trafficSecondaryWidthForSpeedAtZ(v492, 0, v13, v54);
    v19 = v492[3];
    if (v486 >= 0x17)
    {
      v55 = 23;
    }

    else
    {
      v55 = v486;
    }

    v21 = *v19;
    if (*v19)
    {
      v56 = *v21;
      v57 = *v21 == 1.0;
      if (*(v19 + 10) == 1 && v56 != 0.0 && v56 != 1.0)
      {
LABEL_64:
        v60 = *(v19 + 16);
        if (v60)
        {
          v61 = *(v60 + 72);
          if (v61)
          {
            v62 = *v61 + 120 * *(v61 + v55 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v62, 0x31u) != *(v62 + 12))
            {
              goto LABEL_135;
            }
          }

          if (*(v19 + 56))
          {
            v63 = *(v19 + 48);
            v64 = 8 * *(v19 + 56);
            while (1)
            {
              v65 = *(*v63 + 72);
              if (v65)
              {
                v66 = *v65 + 120 * *(v65 + v55 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v66, 0x31u) != *(v66 + 12))
                {
                  goto LABEL_135;
                }
              }

              v63 += 8;
              v59 = 1;
              v64 -= 8;
              if (!v64)
              {
                goto LABEL_132;
              }
            }
          }
        }

        v59 = 1;
LABEL_132:
        v104 = *(v19 + 16 * v59 + 16);
        if (!v104)
        {
          goto LABEL_168;
        }

        v105 = *(v104 + 72);
        if (!v105 || (v106 = *v105 + 120 * *(v105 + v55 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v106, 0x31u) == *(v106 + 12)))
        {
          v109 = v19 + 16 * v59;
          if (!*(v109 + 56))
          {
            goto LABEL_168;
          }

          v110 = *(v109 + 48);
          v111 = 8 * *(v109 + 56);
          while (1)
          {
            v112 = *(*v110 + 72);
            if (v112)
            {
              v113 = *v112 + 120 * *(v112 + v55 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v113, 0x31u) != *(v113 + 12))
              {
                break;
              }
            }

            v110 += 8;
            v111 -= 8;
            if (!v111)
            {
              goto LABEL_168;
            }
          }
        }

LABEL_135:
        if (v21)
        {
          v6 = *v21;
          v107 = *v21 == 1.0;
          if (*(v19 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
          {
            goto LABEL_787;
          }
        }

        else
        {
          v107 = 0;
        }

        v86 = *(v19 + v107 + 11);
        if (v86 != 2)
        {
          v87 = v19;
          v88 = 49;
          goto LABEL_177;
        }

        v6 = 0.0;
LABEL_787:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 49, 0, &v491, v14);
        v5 = v476;
        v472 = v19;
        v473 = 49;
        goto LABEL_790;
      }
    }

    else
    {
      v57 = 0;
    }

    v59 = *(v19 + v57 + 11);
    if (v59 != 2)
    {
      goto LABEL_132;
    }

    goto LABEL_64;
  }

  if (a4 != 1)
  {
LABEL_52:
    v479 = (a2 + 20);
    v481 = (a2 + 36);
    md::trafficWidthForSpeedAtZ(&v492, a4, v486);
    v16 = v51;
    v18 = md::trafficSecondaryWidthForSpeedAtZ(v492, a4, v13, v52);
    goto LABEL_178;
  }

  v14 = fminf(fmaxf(v13, 0.0), 23.0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 54, 2u, v14);
  v480 = vdupq_n_s32(0x37800080u);
  *(a2 + 20) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v480);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v491, v492[3], 55, 2u, v14);
  *(a2 + 36) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v491)), v480);
  v479 = (a2 + 20);
  v481 = (a2 + 36);
  md::trafficWidthForSpeedAtZ(&v492, 1, v13);
  v16 = v15;
  v18 = md::trafficSecondaryWidthForSpeedAtZ(v492, 1, v13, v17);
  v19 = v492[3];
  if (v486 >= 0x17)
  {
    v20 = 23;
  }

  else
  {
    v20 = v486;
  }

  v21 = *v19;
  if (*v19)
  {
    v22 = *v21;
    v23 = *v21 == 1.0;
    if (*(v19 + 10) == 1 && v22 != 0.0 && v22 != 1.0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = *(v19 + v23 + 11);
  if (v25 == 2)
  {
LABEL_20:
    v26 = *(v19 + 16);
    if (v26)
    {
      v27 = *(v26 + 72);
      if (v27)
      {
        v28 = *v27 + 120 * *(v27 + v20 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v28, 0x3Cu) != *(v28 + 12))
        {
          goto LABEL_97;
        }
      }

      if (*(v19 + 56))
      {
        v29 = *(v19 + 48);
        v30 = 8 * *(v19 + 56);
        while (1)
        {
          v31 = *(*v29 + 72);
          if (v31)
          {
            v32 = *v31 + 120 * *(v31 + v20 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v32, 0x3Cu) != *(v32 + 12))
            {
              goto LABEL_97;
            }
          }

          v29 += 8;
          v25 = 1;
          v30 -= 8;
          if (!v30)
          {
            goto LABEL_94;
          }
        }
      }
    }

    v25 = 1;
  }

LABEL_94:
  v81 = *(v19 + 16 * v25 + 16);
  if (v81)
  {
    v82 = *(v81 + 72);
    if (v82)
    {
      v83 = *v82 + 120 * *(v82 + v20 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v83, 0x3Cu) != *(v83 + 12))
      {
LABEL_97:
        if (v21)
        {
          v6 = *v21;
          v84 = *v21 == 1.0;
          if (*(v19 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
          {
            goto LABEL_783;
          }
        }

        else
        {
          v84 = 0;
        }

        v86 = *(v19 + v84 + 11);
        if (v86 == 2)
        {
          v6 = 0.0;
LABEL_783:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 60, 0, &v491, v14);
          v5 = v474;
          v472 = v19;
          v473 = 60;
          goto LABEL_790;
        }

        v87 = v19;
        v88 = 60;
LABEL_177:
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v87, v88, v86, 0, v14);
        v4 = v126;
        goto LABEL_178;
      }
    }

    v89 = v19 + 16 * v25;
    if (*(v89 + 56))
    {
      v90 = *(v89 + 48);
      v91 = 8 * *(v89 + 56);
      do
      {
        v92 = *(*v90 + 72);
        if (v92)
        {
          v93 = *v92 + 120 * *(v92 + v20 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v93, 0x3Cu) != *(v93 + 12))
          {
            goto LABEL_97;
          }
        }

        v90 += 8;
        v91 -= 8;
      }

      while (v91);
    }
  }

LABEL_168:
  if (v21)
  {
    v6 = *v21;
    v124 = *v21 == 1.0;
    if (*(v19 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
    {
      goto LABEL_781;
    }
  }

  else
  {
    v124 = 0;
  }

  v86 = *(v19 + v124 + 11);
  if (v86 != 2)
  {
    v87 = v19;
    v88 = 270;
    goto LABEL_177;
  }

  v6 = 0.0;
LABEL_781:
  LOBYTE(v491) = 1;
  LOBYTE(v490) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 270, 0, &v491, v14);
  v5 = v471;
  v472 = v19;
  v473 = 270;
LABEL_790:
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v472, v473, 1, &v490, v14);
  v4 = v5 + ((v478 - v5) * v6);
LABEL_178:
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        goto LABEL_348;
      }

      v127 = v492[3];
      if (v486 >= 0x17)
      {
        v141 = 23;
      }

      else
      {
        v141 = v486;
      }

      v129 = *v127;
      if (*v127)
      {
        v142 = *v129;
        v143 = *v129 == 1.0;
        if (*(v127 + 10) == 1 && v142 != 0.0 && v142 != 1.0)
        {
LABEL_214:
          v146 = *(v127 + 16);
          if (v146)
          {
            v147 = *(v146 + 72);
            if (v147)
            {
              v148 = *v147 + 120 * *(v147 + v141 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v148, 0x54u) != *(v148 + 12))
              {
                goto LABEL_286;
              }
            }

            if (*(v127 + 56))
            {
              v149 = *(v127 + 48);
              v150 = 8 * *(v127 + 56);
              while (1)
              {
                v151 = *(*v149 + 72);
                if (v151)
                {
                  v152 = *v151 + 120 * *(v151 + v141 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v152, 0x54u) != *(v152 + 12))
                  {
                    goto LABEL_286;
                  }
                }

                v149 += 8;
                v145 = 1;
                v150 -= 8;
                if (!v150)
                {
                  goto LABEL_283;
                }
              }
            }
          }

          v145 = 1;
LABEL_283:
          v191 = *(v127 + 16 * v145 + 16);
          if (!v191)
          {
            goto LABEL_338;
          }

          v192 = *(v191 + 72);
          if (!v192 || (v193 = *v192 + 120 * *(v192 + v141 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v193, 0x54u) == *(v193 + 12)))
          {
            v196 = v127 + 16 * v145;
            if (!*(v196 + 56))
            {
              goto LABEL_338;
            }

            v197 = *(v196 + 48);
            v198 = 8 * *(v196 + 56);
            while (1)
            {
              v199 = *(*v197 + 72);
              if (v199)
              {
                v200 = *v199 + 120 * *(v199 + v141 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v200, 0x54u) != *(v200 + 12))
                {
                  break;
                }
              }

              v197 += 8;
              v198 -= 8;
              if (!v198)
              {
                goto LABEL_338;
              }
            }
          }

LABEL_286:
          v180 = fminf(fmaxf(v13, 0.0), 23.0);
          if (v129)
          {
            v7 = *v129;
            v194 = *v129 == 1.0;
            if (*(v127 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
            {
              goto LABEL_732;
            }
          }

          else
          {
            v194 = 0;
          }

          v183 = *(v127 + v194 + 11);
          v7 = 0.0;
          if (v183 != 2)
          {
            v184 = v127;
            v185 = 84;
            goto LABEL_347;
          }

LABEL_732:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v127, 84, 0, &v491, v180);
          v6 = v455;
          v446 = v127;
          v447 = 84;
          goto LABEL_739;
        }
      }

      else
      {
        v143 = 0;
      }

      v145 = *(v127 + v143 + 11);
      if (v145 != 2)
      {
        goto LABEL_283;
      }

      goto LABEL_214;
    }

    v127 = v492[3];
    if (v486 >= 0x17)
    {
      v165 = 23;
    }

    else
    {
      v165 = v486;
    }

    v129 = *v127;
    if (*v127)
    {
      v166 = *v129;
      v167 = *v129 == 1.0;
      if (*(v127 + 10) == 1 && v166 != 0.0 && v166 != 1.0)
      {
LABEL_254:
        v170 = *(v127 + 16);
        if (v170)
        {
          v171 = *(v170 + 72);
          if (v171)
          {
            v172 = *v171 + 120 * *(v171 + v165 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v172, 0x49u) != *(v172 + 12))
            {
              goto LABEL_324;
            }
          }

          if (*(v127 + 56))
          {
            v173 = *(v127 + 48);
            v174 = 8 * *(v127 + 56);
            while (1)
            {
              v175 = *(*v173 + 72);
              if (v175)
              {
                v176 = *v175 + 120 * *(v175 + v165 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v176, 0x49u) != *(v176 + 12))
                {
                  goto LABEL_324;
                }
              }

              v173 += 8;
              v169 = 1;
              v174 -= 8;
              if (!v174)
              {
                goto LABEL_321;
              }
            }
          }
        }

        v169 = 1;
LABEL_321:
        v211 = *(v127 + 16 * v169 + 16);
        if (!v211)
        {
          goto LABEL_338;
        }

        v212 = *(v211 + 72);
        if (!v212 || (v213 = *v212 + 120 * *(v212 + v165 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v213, 0x49u) == *(v213 + 12)))
        {
          v216 = v127 + 16 * v169;
          if (!*(v216 + 56))
          {
            goto LABEL_338;
          }

          v217 = *(v216 + 48);
          v218 = 8 * *(v216 + 56);
          while (1)
          {
            v219 = *(*v217 + 72);
            if (v219)
            {
              v220 = *v219 + 120 * *(v219 + v165 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v220, 0x49u) != *(v220 + 12))
              {
                break;
              }
            }

            v217 += 8;
            v218 -= 8;
            if (!v218)
            {
              goto LABEL_338;
            }
          }
        }

LABEL_324:
        v180 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v129)
        {
          v7 = *v129;
          v214 = *v129 == 1.0;
          if (*(v127 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
          {
            goto LABEL_738;
          }
        }

        else
        {
          v214 = 0;
        }

        v183 = *(v127 + v214 + 11);
        v7 = 0.0;
        if (v183 != 2)
        {
          v184 = v127;
          v185 = 73;
          goto LABEL_347;
        }

LABEL_738:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v127, 73, 0, &v491, v180);
        v6 = v461;
        v446 = v127;
        v447 = 73;
        goto LABEL_739;
      }
    }

    else
    {
      v167 = 0;
    }

    v169 = *(v127 + v167 + 11);
    if (v169 != 2)
    {
      goto LABEL_321;
    }

    goto LABEL_254;
  }

  if (!a4)
  {
    v127 = v492[3];
    if (v486 >= 0x17)
    {
      v153 = 23;
    }

    else
    {
      v153 = v486;
    }

    v129 = *v127;
    if (*v127)
    {
      v154 = *v129;
      v155 = *v129 == 1.0;
      if (*(v127 + 10) == 1 && v154 != 0.0 && v154 != 1.0)
      {
LABEL_234:
        v158 = *(v127 + 16);
        if (v158)
        {
          v159 = *(v158 + 72);
          if (v159)
          {
            v160 = *v159 + 120 * *(v159 + v153 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v160, 0x33u) != *(v160 + 12))
            {
              goto LABEL_305;
            }
          }

          if (*(v127 + 56))
          {
            v161 = *(v127 + 48);
            v162 = 8 * *(v127 + 56);
            while (1)
            {
              v163 = *(*v161 + 72);
              if (v163)
              {
                v164 = *v163 + 120 * *(v163 + v153 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v164, 0x33u) != *(v164 + 12))
                {
                  goto LABEL_305;
                }
              }

              v161 += 8;
              v157 = 1;
              v162 -= 8;
              if (!v162)
              {
                goto LABEL_302;
              }
            }
          }
        }

        v157 = 1;
LABEL_302:
        v201 = *(v127 + 16 * v157 + 16);
        if (!v201)
        {
          goto LABEL_338;
        }

        v202 = *(v201 + 72);
        if (!v202 || (v203 = *v202 + 120 * *(v202 + v153 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v203, 0x33u) == *(v203 + 12)))
        {
          v206 = v127 + 16 * v157;
          if (!*(v206 + 56))
          {
            goto LABEL_338;
          }

          v207 = *(v206 + 48);
          v208 = 8 * *(v206 + 56);
          while (1)
          {
            v209 = *(*v207 + 72);
            if (v209)
            {
              v210 = *v209 + 120 * *(v209 + v153 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v210, 0x33u) != *(v210 + 12))
              {
                break;
              }
            }

            v207 += 8;
            v208 -= 8;
            if (!v208)
            {
              goto LABEL_338;
            }
          }
        }

LABEL_305:
        v180 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v129)
        {
          v7 = *v129;
          v204 = *v129 == 1.0;
          if (*(v127 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
          {
            goto LABEL_737;
          }
        }

        else
        {
          v204 = 0;
        }

        v183 = *(v127 + v204 + 11);
        v7 = 0.0;
        if (v183 != 2)
        {
          v184 = v127;
          v185 = 51;
          goto LABEL_347;
        }

LABEL_737:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v127, 51, 0, &v491, v180);
        v6 = v460;
        v446 = v127;
        v447 = 51;
        goto LABEL_739;
      }
    }

    else
    {
      v155 = 0;
    }

    v157 = *(v127 + v155 + 11);
    if (v157 != 2)
    {
      goto LABEL_302;
    }

    goto LABEL_234;
  }

  if (a4 != 1)
  {
    goto LABEL_348;
  }

  v127 = v492[3];
  if (v486 >= 0x17)
  {
    v128 = 23;
  }

  else
  {
    v128 = v486;
  }

  v129 = *v127;
  if (*v127)
  {
    v130 = *v129;
    v131 = *v129 == 1.0;
    if (*(v127 + 10) == 1 && v130 != 0.0 && v130 != 1.0)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v131 = 0;
  }

  v133 = *(v127 + v131 + 11);
  if (v133 == 2)
  {
LABEL_192:
    v134 = *(v127 + 16);
    if (v134)
    {
      v135 = *(v134 + 72);
      if (v135)
      {
        v136 = *v135 + 120 * *(v135 + v128 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v136, 0x3Eu) != *(v136 + 12))
        {
          goto LABEL_267;
        }
      }

      if (*(v127 + 56))
      {
        v137 = *(v127 + 48);
        v138 = 8 * *(v127 + 56);
        while (1)
        {
          v139 = *(*v137 + 72);
          if (v139)
          {
            v140 = *v139 + 120 * *(v139 + v128 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v140, 0x3Eu) != *(v140 + 12))
            {
              goto LABEL_267;
            }
          }

          v137 += 8;
          v133 = 1;
          v138 -= 8;
          if (!v138)
          {
            goto LABEL_264;
          }
        }
      }
    }

    v133 = 1;
  }

LABEL_264:
  v177 = *(v127 + 16 * v133 + 16);
  if (v177)
  {
    v178 = *(v177 + 72);
    if (v178)
    {
      v179 = *v178 + 120 * *(v178 + v128 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v179, 0x3Eu) != *(v179 + 12))
      {
LABEL_267:
        v180 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v129)
        {
          v7 = *v129;
          v181 = *v129 == 1.0;
          if (*(v127 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
          {
            goto LABEL_731;
          }
        }

        else
        {
          v181 = 0;
        }

        v183 = *(v127 + v181 + 11);
        v7 = 0.0;
        if (v183 == 2)
        {
LABEL_731:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v127, 62, 0, &v491, v180);
          v6 = v454;
          v446 = v127;
          v447 = 62;
          goto LABEL_739;
        }

        v184 = v127;
        v185 = 62;
LABEL_347:
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v184, v185, v183, 0, v180);
        v5 = v223;
        goto LABEL_348;
      }
    }

    v186 = v127 + 16 * v133;
    if (*(v186 + 56))
    {
      v187 = *(v186 + 48);
      v188 = 8 * *(v186 + 56);
      do
      {
        v189 = *(*v187 + 72);
        if (v189)
        {
          v190 = *v189 + 120 * *(v189 + v128 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v190, 0x3Eu) != *(v190 + 12))
          {
            goto LABEL_267;
          }
        }

        v187 += 8;
        v188 -= 8;
      }

      while (v188);
    }
  }

LABEL_338:
  v180 = fminf(fmaxf(v13, 0.0), 23.0);
  if (v129)
  {
    v7 = *v129;
    v221 = *v129 == 1.0;
    if (*(v127 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
    {
      goto LABEL_724;
    }
  }

  else
  {
    v221 = 0;
  }

  v183 = *(v127 + v221 + 11);
  v7 = 0.0;
  if (v183 != 2)
  {
    v184 = v127;
    v185 = 278;
    goto LABEL_347;
  }

LABEL_724:
  LOBYTE(v491) = 1;
  LOBYTE(v490) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v127, 278, 0, &v491, v180);
  v6 = v445;
  v446 = v127;
  v447 = 278;
LABEL_739:
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v446, v447, 1, &v490, v180);
  v5 = v6 + ((v462 - v6) * v7);
LABEL_348:
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        goto LABEL_518;
      }

      v224 = v492[3];
      if (v486 >= 0x17)
      {
        v238 = 23;
      }

      else
      {
        v238 = v486;
      }

      v226 = *v224;
      if (*v224)
      {
        v239 = *v226;
        v240 = *v226 == 1.0;
        if (*(v224 + 10) == 1 && v239 != 0.0 && v239 != 1.0)
        {
LABEL_384:
          v243 = *(v224 + 16);
          if (v243)
          {
            v244 = *(v243 + 72);
            if (v244)
            {
              v245 = *v244 + 120 * *(v244 + v238 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v245, 0x53u) != *(v245 + 12))
              {
                goto LABEL_456;
              }
            }

            if (*(v224 + 56))
            {
              v246 = *(v224 + 48);
              v247 = 8 * *(v224 + 56);
              while (1)
              {
                v248 = *(*v246 + 72);
                if (v248)
                {
                  v249 = *v248 + 120 * *(v248 + v238 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v249, 0x53u) != *(v249 + 12))
                  {
                    goto LABEL_456;
                  }
                }

                v246 += 8;
                v242 = 1;
                v247 -= 8;
                if (!v247)
                {
                  goto LABEL_453;
                }
              }
            }
          }

          v242 = 1;
LABEL_453:
          v289 = *(v224 + 16 * v242 + 16);
          if (!v289)
          {
            goto LABEL_508;
          }

          v290 = *(v289 + 72);
          if (!v290 || (v291 = *v290 + 120 * *(v290 + v238 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v291, 0x53u) == *(v291 + 12)))
          {
            v294 = v224 + 16 * v242;
            if (!*(v294 + 56))
            {
              goto LABEL_508;
            }

            v295 = *(v294 + 48);
            v296 = 8 * *(v294 + 56);
            while (1)
            {
              v297 = *(*v295 + 72);
              if (v297)
              {
                v298 = *v297 + 120 * *(v297 + v238 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v298, 0x53u) != *(v298 + 12))
                {
                  break;
                }
              }

              v295 += 8;
              v296 -= 8;
              if (!v296)
              {
                goto LABEL_508;
              }
            }
          }

LABEL_456:
          v277 = fminf(fmaxf(v13, 0.0), 23.0);
          if (v226)
          {
            v278 = *v226;
            v292 = *v226 == 1.0;
            if (*(v224 + 10) == 1 && v278 != 0.0 && v278 != 1.0)
            {
              goto LABEL_734;
            }
          }

          else
          {
            v292 = 0;
          }

          v281 = *(v224 + v292 + 11);
          v278 = 0.0;
          if (v281 != 2)
          {
            v282 = v224;
            v283 = 83;
            goto LABEL_517;
          }

LABEL_734:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v224, 83, 0, &v491, v277);
          v7 = v457;
          v449 = v224;
          v450 = 83;
          goto LABEL_742;
        }
      }

      else
      {
        v240 = 0;
      }

      v242 = *(v224 + v240 + 11);
      if (v242 != 2)
      {
        goto LABEL_453;
      }

      goto LABEL_384;
    }

    v224 = v492[3];
    if (v486 >= 0x17)
    {
      v262 = 23;
    }

    else
    {
      v262 = v486;
    }

    v226 = *v224;
    if (*v224)
    {
      v263 = *v226;
      v264 = *v226 == 1.0;
      if (*(v224 + 10) == 1 && v263 != 0.0 && v263 != 1.0)
      {
LABEL_424:
        v267 = *(v224 + 16);
        if (v267)
        {
          v268 = *(v267 + 72);
          if (v268)
          {
            v269 = *v268 + 120 * *(v268 + v262 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v269, 0x48u) != *(v269 + 12))
            {
              goto LABEL_494;
            }
          }

          if (*(v224 + 56))
          {
            v270 = *(v224 + 48);
            v271 = 8 * *(v224 + 56);
            while (1)
            {
              v272 = *(*v270 + 72);
              if (v272)
              {
                v273 = *v272 + 120 * *(v272 + v262 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v273, 0x48u) != *(v273 + 12))
                {
                  goto LABEL_494;
                }
              }

              v270 += 8;
              v266 = 1;
              v271 -= 8;
              if (!v271)
              {
                goto LABEL_491;
              }
            }
          }
        }

        v266 = 1;
LABEL_491:
        v309 = *(v224 + 16 * v266 + 16);
        if (!v309)
        {
          goto LABEL_508;
        }

        v310 = *(v309 + 72);
        if (!v310 || (v311 = *v310 + 120 * *(v310 + v262 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v311, 0x48u) == *(v311 + 12)))
        {
          v314 = v224 + 16 * v266;
          if (!*(v314 + 56))
          {
            goto LABEL_508;
          }

          v315 = *(v314 + 48);
          v316 = 8 * *(v314 + 56);
          while (1)
          {
            v317 = *(*v315 + 72);
            if (v317)
            {
              v318 = *v317 + 120 * *(v317 + v262 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v318, 0x48u) != *(v318 + 12))
              {
                break;
              }
            }

            v315 += 8;
            v316 -= 8;
            if (!v316)
            {
              goto LABEL_508;
            }
          }
        }

LABEL_494:
        v277 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v226)
        {
          v278 = *v226;
          v312 = *v226 == 1.0;
          if (*(v224 + 10) == 1 && v278 != 0.0 && v278 != 1.0)
          {
            goto LABEL_741;
          }
        }

        else
        {
          v312 = 0;
        }

        v281 = *(v224 + v312 + 11);
        v278 = 0.0;
        if (v281 != 2)
        {
          v282 = v224;
          v283 = 72;
          goto LABEL_517;
        }

LABEL_741:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v224, 72, 0, &v491, v277);
        v7 = v464;
        v449 = v224;
        v450 = 72;
        goto LABEL_742;
      }
    }

    else
    {
      v264 = 0;
    }

    v266 = *(v224 + v264 + 11);
    if (v266 != 2)
    {
      goto LABEL_491;
    }

    goto LABEL_424;
  }

  if (!a4)
  {
    v224 = v492[3];
    if (v486 >= 0x17)
    {
      v250 = 23;
    }

    else
    {
      v250 = v486;
    }

    v226 = *v224;
    if (*v224)
    {
      v251 = *v226;
      v252 = *v226 == 1.0;
      if (*(v224 + 10) == 1 && v251 != 0.0 && v251 != 1.0)
      {
LABEL_404:
        v255 = *(v224 + 16);
        if (v255)
        {
          v256 = *(v255 + 72);
          if (v256)
          {
            v257 = *v256 + 120 * *(v256 + v250 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v257, 0x32u) != *(v257 + 12))
            {
              goto LABEL_475;
            }
          }

          if (*(v224 + 56))
          {
            v258 = *(v224 + 48);
            v259 = 8 * *(v224 + 56);
            while (1)
            {
              v260 = *(*v258 + 72);
              if (v260)
              {
                v261 = *v260 + 120 * *(v260 + v250 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v261, 0x32u) != *(v261 + 12))
                {
                  goto LABEL_475;
                }
              }

              v258 += 8;
              v254 = 1;
              v259 -= 8;
              if (!v259)
              {
                goto LABEL_472;
              }
            }
          }
        }

        v254 = 1;
LABEL_472:
        v299 = *(v224 + 16 * v254 + 16);
        if (!v299)
        {
          goto LABEL_508;
        }

        v300 = *(v299 + 72);
        if (!v300 || (v301 = *v300 + 120 * *(v300 + v250 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v301, 0x32u) == *(v301 + 12)))
        {
          v304 = v224 + 16 * v254;
          if (!*(v304 + 56))
          {
            goto LABEL_508;
          }

          v305 = *(v304 + 48);
          v306 = 8 * *(v304 + 56);
          while (1)
          {
            v307 = *(*v305 + 72);
            if (v307)
            {
              v308 = *v307 + 120 * *(v307 + v250 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v308, 0x32u) != *(v308 + 12))
              {
                break;
              }
            }

            v305 += 8;
            v306 -= 8;
            if (!v306)
            {
              goto LABEL_508;
            }
          }
        }

LABEL_475:
        v277 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v226)
        {
          v278 = *v226;
          v302 = *v226 == 1.0;
          if (*(v224 + 10) == 1 && v278 != 0.0 && v278 != 1.0)
          {
            goto LABEL_740;
          }
        }

        else
        {
          v302 = 0;
        }

        v281 = *(v224 + v302 + 11);
        v278 = 0.0;
        if (v281 != 2)
        {
          v282 = v224;
          v283 = 50;
          goto LABEL_517;
        }

LABEL_740:
        LOBYTE(v491) = 1;
        LOBYTE(v490) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v224, 50, 0, &v491, v277);
        v7 = v463;
        v449 = v224;
        v450 = 50;
        goto LABEL_742;
      }
    }

    else
    {
      v252 = 0;
    }

    v254 = *(v224 + v252 + 11);
    if (v254 != 2)
    {
      goto LABEL_472;
    }

    goto LABEL_404;
  }

  if (a4 != 1)
  {
    goto LABEL_518;
  }

  v224 = v492[3];
  if (v486 >= 0x17)
  {
    v225 = 23;
  }

  else
  {
    v225 = v486;
  }

  v226 = *v224;
  if (*v224)
  {
    v227 = *v226;
    v228 = *v226 == 1.0;
    if (*(v224 + 10) == 1 && v227 != 0.0 && v227 != 1.0)
    {
      goto LABEL_362;
    }
  }

  else
  {
    v228 = 0;
  }

  v230 = *(v224 + v228 + 11);
  if (v230 == 2)
  {
LABEL_362:
    v231 = *(v224 + 16);
    if (v231)
    {
      v232 = *(v231 + 72);
      if (v232)
      {
        v233 = *v232 + 120 * *(v232 + v225 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v233, 0x3Du) != *(v233 + 12))
        {
          goto LABEL_437;
        }
      }

      if (*(v224 + 56))
      {
        v234 = *(v224 + 48);
        v235 = 8 * *(v224 + 56);
        while (1)
        {
          v236 = *(*v234 + 72);
          if (v236)
          {
            v237 = *v236 + 120 * *(v236 + v225 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v237, 0x3Du) != *(v237 + 12))
            {
              goto LABEL_437;
            }
          }

          v234 += 8;
          v230 = 1;
          v235 -= 8;
          if (!v235)
          {
            goto LABEL_434;
          }
        }
      }
    }

    v230 = 1;
  }

LABEL_434:
  v274 = *(v224 + 16 * v230 + 16);
  if (v274)
  {
    v275 = *(v274 + 72);
    if (v275)
    {
      v276 = *v275 + 120 * *(v275 + v225 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v276, 0x3Du) != *(v276 + 12))
      {
LABEL_437:
        v277 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v226)
        {
          v278 = *v226;
          v279 = *v226 == 1.0;
          if (*(v224 + 10) == 1 && v278 != 0.0 && v278 != 1.0)
          {
            goto LABEL_733;
          }
        }

        else
        {
          v279 = 0;
        }

        v281 = *(v224 + v279 + 11);
        v278 = 0.0;
        if (v281 == 2)
        {
LABEL_733:
          LOBYTE(v491) = 1;
          LOBYTE(v490) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v224, 61, 0, &v491, v277);
          v7 = v456;
          v449 = v224;
          v450 = 61;
          goto LABEL_742;
        }

        v282 = v224;
        v283 = 61;
LABEL_517:
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v282, v283, v281, 0, v277);
        v6 = v321;
        goto LABEL_518;
      }
    }

    v284 = v224 + 16 * v230;
    if (*(v284 + 56))
    {
      v285 = *(v284 + 48);
      v286 = 8 * *(v284 + 56);
      do
      {
        v287 = *(*v285 + 72);
        if (v287)
        {
          v288 = *v287 + 120 * *(v287 + v225 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v288, 0x3Du) != *(v288 + 12))
          {
            goto LABEL_437;
          }
        }

        v285 += 8;
        v286 -= 8;
      }

      while (v286);
    }
  }

LABEL_508:
  v277 = fminf(fmaxf(v13, 0.0), 23.0);
  if (v226)
  {
    v278 = *v226;
    v319 = *v226 == 1.0;
    if (*(v224 + 10) == 1 && v278 != 0.0 && v278 != 1.0)
    {
      goto LABEL_725;
    }
  }

  else
  {
    v319 = 0;
  }

  v281 = *(v224 + v319 + 11);
  v278 = 0.0;
  if (v281 != 2)
  {
    v282 = v224;
    v283 = 271;
    goto LABEL_517;
  }

LABEL_725:
  LOBYTE(v491) = 1;
  LOBYTE(v490) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v224, 271, 0, &v491, v277);
  v7 = v448;
  v449 = v224;
  v450 = 271;
LABEL_742:
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v449, v450, 1, &v490, v277);
  v6 = v7 + ((v465 - v7) * v278);
LABEL_518:
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        goto LABEL_688;
      }

      v322 = v492[3];
      if (v486 >= 0x17)
      {
        v336 = 23;
      }

      else
      {
        v336 = v486;
      }

      v324 = *v322;
      if (*v322)
      {
        v337 = *v324;
        v338 = *v324 == 1.0;
        if (*(v322 + 10) == 1 && v337 != 0.0 && v337 != 1.0)
        {
LABEL_554:
          v341 = *(v322 + 16);
          if (v341)
          {
            v342 = *(v341 + 72);
            if (v342)
            {
              v343 = *v342 + 120 * *(v342 + v336 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v343, 0x55u) != *(v343 + 12))
              {
                goto LABEL_626;
              }
            }

            if (*(v322 + 56))
            {
              v344 = *(v322 + 48);
              v345 = 8 * *(v322 + 56);
              while (1)
              {
                v346 = *(*v344 + 72);
                if (v346)
                {
                  v347 = *v346 + 120 * *(v346 + v336 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v347, 0x55u) != *(v347 + 12))
                  {
                    goto LABEL_626;
                  }
                }

                v344 += 8;
                v340 = 1;
                v345 -= 8;
                if (!v345)
                {
                  goto LABEL_623;
                }
              }
            }
          }

          v340 = 1;
LABEL_623:
          v387 = *(v322 + 16 * v340 + 16);
          if (!v387)
          {
            goto LABEL_678;
          }

          v388 = *(v387 + 72);
          if (!v388 || (v389 = *v388 + 120 * *(v388 + v336 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v389, 0x55u) == *(v389 + 12)))
          {
            v392 = v322 + 16 * v340;
            if (!*(v392 + 56))
            {
              goto LABEL_678;
            }

            v393 = *(v392 + 48);
            v394 = 8 * *(v392 + 56);
            while (1)
            {
              v395 = *(*v393 + 72);
              if (v395)
              {
                v396 = *v395 + 120 * *(v395 + v336 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v396, 0x55u) != *(v396 + 12))
                {
                  break;
                }
              }

              v393 += 8;
              v394 -= 8;
              if (!v394)
              {
                goto LABEL_678;
              }
            }
          }

LABEL_626:
          v375 = fminf(fmaxf(v13, 0.0), 23.0);
          if (v324)
          {
            v376 = *v324;
            v390 = *v324 == 1.0;
            if (*(v322 + 10) == 1 && v376 != 0.0 && v376 != 1.0)
            {
              goto LABEL_736;
            }
          }

          else
          {
            v390 = 0;
          }

          v379 = *(v322 + v390 + 11);
          v376 = 0.0;
          if (v379 != 2)
          {
            v380 = v322;
            v381 = 85;
            goto LABEL_687;
          }

LABEL_736:
          LOBYTE(v491) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v322, 85, 0, &v491, v375);
          v488 = v459;
          v452 = v322;
          v453 = 85;
          goto LABEL_745;
        }
      }

      else
      {
        v338 = 0;
      }

      v340 = *(v322 + v338 + 11);
      if (v340 != 2)
      {
        goto LABEL_623;
      }

      goto LABEL_554;
    }

    v322 = v492[3];
    if (v486 >= 0x17)
    {
      v360 = 23;
    }

    else
    {
      v360 = v486;
    }

    v324 = *v322;
    if (*v322)
    {
      v361 = *v324;
      v362 = *v324 == 1.0;
      if (*(v322 + 10) == 1 && v361 != 0.0 && v361 != 1.0)
      {
LABEL_594:
        v365 = *(v322 + 16);
        if (v365)
        {
          v366 = *(v365 + 72);
          if (v366)
          {
            v367 = *v366 + 120 * *(v366 + v360 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v367, 0x4Au) != *(v367 + 12))
            {
              goto LABEL_664;
            }
          }

          if (*(v322 + 56))
          {
            v368 = *(v322 + 48);
            v369 = 8 * *(v322 + 56);
            while (1)
            {
              v370 = *(*v368 + 72);
              if (v370)
              {
                v371 = *v370 + 120 * *(v370 + v360 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v371, 0x4Au) != *(v371 + 12))
                {
                  goto LABEL_664;
                }
              }

              v368 += 8;
              v364 = 1;
              v369 -= 8;
              if (!v369)
              {
                goto LABEL_661;
              }
            }
          }
        }

        v364 = 1;
LABEL_661:
        v407 = *(v322 + 16 * v364 + 16);
        if (!v407)
        {
          goto LABEL_678;
        }

        v408 = *(v407 + 72);
        if (!v408 || (v409 = *v408 + 120 * *(v408 + v360 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v409, 0x4Au) == *(v409 + 12)))
        {
          v412 = v322 + 16 * v364;
          if (!*(v412 + 56))
          {
            goto LABEL_678;
          }

          v413 = *(v412 + 48);
          v414 = 8 * *(v412 + 56);
          while (1)
          {
            v415 = *(*v413 + 72);
            if (v415)
            {
              v416 = *v415 + 120 * *(v415 + v360 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v416, 0x4Au) != *(v416 + 12))
              {
                break;
              }
            }

            v413 += 8;
            v414 -= 8;
            if (!v414)
            {
              goto LABEL_678;
            }
          }
        }

LABEL_664:
        v375 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v324)
        {
          v376 = *v324;
          v410 = *v324 == 1.0;
          if (*(v322 + 10) == 1 && v376 != 0.0 && v376 != 1.0)
          {
            goto LABEL_744;
          }
        }

        else
        {
          v410 = 0;
        }

        v379 = *(v322 + v410 + 11);
        v376 = 0.0;
        if (v379 != 2)
        {
          v380 = v322;
          v381 = 74;
          goto LABEL_687;
        }

LABEL_744:
        LOBYTE(v491) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v322, 74, 0, &v491, v375);
        v488 = v467;
        v452 = v322;
        v453 = 74;
        goto LABEL_745;
      }
    }

    else
    {
      v362 = 0;
    }

    v364 = *(v322 + v362 + 11);
    if (v364 != 2)
    {
      goto LABEL_661;
    }

    goto LABEL_594;
  }

  if (!a4)
  {
    v322 = v492[3];
    if (v486 >= 0x17)
    {
      v348 = 23;
    }

    else
    {
      v348 = v486;
    }

    v324 = *v322;
    if (*v322)
    {
      v349 = *v324;
      v350 = *v324 == 1.0;
      if (*(v322 + 10) == 1 && v349 != 0.0 && v349 != 1.0)
      {
LABEL_574:
        v353 = *(v322 + 16);
        if (v353)
        {
          v354 = *(v353 + 72);
          if (v354)
          {
            v355 = *v354 + 120 * *(v354 + v348 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v355, 0x34u) != *(v355 + 12))
            {
              goto LABEL_645;
            }
          }

          if (*(v322 + 56))
          {
            v356 = *(v322 + 48);
            v357 = 8 * *(v322 + 56);
            while (1)
            {
              v358 = *(*v356 + 72);
              if (v358)
              {
                v359 = *v358 + 120 * *(v358 + v348 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v359, 0x34u) != *(v359 + 12))
                {
                  goto LABEL_645;
                }
              }

              v356 += 8;
              v352 = 1;
              v357 -= 8;
              if (!v357)
              {
                goto LABEL_642;
              }
            }
          }
        }

        v352 = 1;
LABEL_642:
        v397 = *(v322 + 16 * v352 + 16);
        if (!v397)
        {
          goto LABEL_678;
        }

        v398 = *(v397 + 72);
        if (!v398 || (v399 = *v398 + 120 * *(v398 + v348 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v399, 0x34u) == *(v399 + 12)))
        {
          v402 = v322 + 16 * v352;
          if (!*(v402 + 56))
          {
            goto LABEL_678;
          }

          v403 = *(v402 + 48);
          v404 = 8 * *(v402 + 56);
          while (1)
          {
            v405 = *(*v403 + 72);
            if (v405)
            {
              v406 = *v405 + 120 * *(v405 + v348 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v406, 0x34u) != *(v406 + 12))
              {
                break;
              }
            }

            v403 += 8;
            v404 -= 8;
            if (!v404)
            {
              goto LABEL_678;
            }
          }
        }

LABEL_645:
        v375 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v324)
        {
          v376 = *v324;
          v400 = *v324 == 1.0;
          if (*(v322 + 10) == 1 && v376 != 0.0 && v376 != 1.0)
          {
            goto LABEL_743;
          }
        }

        else
        {
          v400 = 0;
        }

        v379 = *(v322 + v400 + 11);
        v376 = 0.0;
        if (v379 != 2)
        {
          v380 = v322;
          v381 = 52;
          goto LABEL_687;
        }

LABEL_743:
        LOBYTE(v491) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v322, 52, 0, &v491, v375);
        v488 = v466;
        v452 = v322;
        v453 = 52;
        goto LABEL_745;
      }
    }

    else
    {
      v350 = 0;
    }

    v352 = *(v322 + v350 + 11);
    if (v352 != 2)
    {
      goto LABEL_642;
    }

    goto LABEL_574;
  }

  if (a4 != 1)
  {
    goto LABEL_688;
  }

  v322 = v492[3];
  if (v486 >= 0x17)
  {
    v323 = 23;
  }

  else
  {
    v323 = v486;
  }

  v324 = *v322;
  if (*v322)
  {
    v325 = *v324;
    v326 = *v324 == 1.0;
    if (*(v322 + 10) == 1 && v325 != 0.0 && v325 != 1.0)
    {
      goto LABEL_532;
    }
  }

  else
  {
    v326 = 0;
  }

  v328 = *(v322 + v326 + 11);
  if (v328 == 2)
  {
LABEL_532:
    v329 = *(v322 + 16);
    if (v329)
    {
      v330 = *(v329 + 72);
      if (v330)
      {
        v331 = *v330 + 120 * *(v330 + v323 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v331, 0x3Fu) != *(v331 + 12))
        {
          goto LABEL_607;
        }
      }

      if (*(v322 + 56))
      {
        v332 = *(v322 + 48);
        v333 = 8 * *(v322 + 56);
        while (1)
        {
          v334 = *(*v332 + 72);
          if (v334)
          {
            v335 = *v334 + 120 * *(v334 + v323 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v335, 0x3Fu) != *(v335 + 12))
            {
              goto LABEL_607;
            }
          }

          v332 += 8;
          v328 = 1;
          v333 -= 8;
          if (!v333)
          {
            goto LABEL_604;
          }
        }
      }
    }

    v328 = 1;
  }

LABEL_604:
  v372 = *(v322 + 16 * v328 + 16);
  if (v372)
  {
    v373 = *(v372 + 72);
    if (v373)
    {
      v374 = *v373 + 120 * *(v373 + v323 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v374, 0x3Fu) != *(v374 + 12))
      {
LABEL_607:
        v375 = fminf(fmaxf(v13, 0.0), 23.0);
        if (v324)
        {
          v376 = *v324;
          v377 = *v324 == 1.0;
          if (*(v322 + 10) == 1 && v376 != 0.0 && v376 != 1.0)
          {
            goto LABEL_735;
          }
        }

        else
        {
          v377 = 0;
        }

        v379 = *(v322 + v377 + 11);
        v376 = 0.0;
        if (v379 == 2)
        {
LABEL_735:
          LOBYTE(v491) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v322, 63, 0, &v491, v375);
          v488 = v458;
          v452 = v322;
          v453 = 63;
          goto LABEL_745;
        }

        v380 = v322;
        v381 = 63;
LABEL_687:
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v380, v381, v379, 0, v375);
        v7 = v419;
        goto LABEL_688;
      }
    }

    v382 = v322 + 16 * v328;
    if (*(v382 + 56))
    {
      v383 = *(v382 + 48);
      v384 = 8 * *(v382 + 56);
      do
      {
        v385 = *(*v383 + 72);
        if (v385)
        {
          v386 = *v385 + 120 * *(v385 + v323 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v386, 0x3Fu) != *(v386 + 12))
          {
            goto LABEL_607;
          }
        }

        v383 += 8;
        v384 -= 8;
      }

      while (v384);
    }
  }

LABEL_678:
  v375 = fminf(fmaxf(v13, 0.0), 23.0);
  if (v324)
  {
    v376 = *v324;
    v417 = *v324 == 1.0;
    if (*(v322 + 10) == 1 && v376 != 0.0 && v376 != 1.0)
    {
      goto LABEL_726;
    }
  }

  else
  {
    v417 = 0;
  }

  v379 = *(v322 + v417 + 11);
  v376 = 0.0;
  if (v379 != 2)
  {
    v380 = v322;
    v381 = 279;
    goto LABEL_687;
  }

LABEL_726:
  LOBYTE(v491) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v322, 279, 0, &v491, v375);
  v488 = v451;
  v452 = v322;
  v453 = 279;
LABEL_745:
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v452, v453, 1, &v490, v375);
  v7 = v488 + ((v468 - v488) * v376);
LABEL_688:
  v420 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*a1 + 16), *(*(*a1 + 16) + 8));
  if (!v420)
  {
    goto LABEL_708;
  }

  v421 = v420;
  v490 = *v479;
  v422 = v492[3];
  v423 = fminf(fmaxf(v13, 0.0), 23.0);
  v424 = *v422;
  if (*v422)
  {
    v425 = *v424;
    v426 = *v424 == 1.0;
    if (*(v422 + 10) == 1 && v425 != 0.0 && v425 != 1.0)
    {
      goto LABEL_721;
    }
  }

  else
  {
    v426 = 0;
  }

  v428 = *(v422 + v426 + 11);
  v425 = 0.0;
  if (v428 != 2)
  {
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v492[3], 489, v428, 0, v423);
    goto LABEL_698;
  }

LABEL_721:
  LOBYTE(v491) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v422, 489, 0, &v491, v423);
  v487 = v443;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v422, 489, 1, v496, v423);
  v429 = v487 + ((v444 - v487) * v425);
LABEL_698:
  v430 = *v421;
  md::AccessibilityHelper::luminanceAdjustedColor(&v491, v430, &v490, v429);
  *v479 = v491;
  v490 = *v481;
  if (v424)
  {
    v431 = *v424;
    v432 = *v424 == 1.0;
    if (*(v422 + 10) == 1 && v431 != 0.0 && v431 != 1.0)
    {
      goto LABEL_779;
    }
  }

  else
  {
    v432 = 0;
  }

  v434 = *(v422 + v432 + 11);
  if (v434 == 2)
  {
    v431 = 0.0;
LABEL_779:
    LOBYTE(v491) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v422, 489, 0, &v491, v423);
    v489 = v469;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v422, 489, 1, v496, v423);
    v435 = v489 + ((v470 - v489) * v431);
    goto LABEL_707;
  }

  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v422, 489, v434, 0, v423);
LABEL_707:
  md::AccessibilityHelper::luminanceAdjustedColor(&v491, v430, &v490, v435);
  *v481 = v491;
LABEL_708:
  *a2 = (fminf(fmaxf(15.0 - a1[2], 0.0), 4.0) * -0.25) + 1.0;
  if (v495 == 1)
  {
    (*(*v492 + 56))(v492);
  }

  if (v494)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v494);
  }

  if (v493)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v493);
  }

  v436 = a1[38];
  if (v436 <= 0.0)
  {
    LODWORD(v492) = 0;
    v438 = 0.0;
    if (*(a3 + 32) == 1)
    {
      LODWORD(v491) = 0;
      LODWORD(v490) = 0;
      md::getRoadWidths(a3, &v492, &v491, &v490, v496, a1[2]);
      v438 = *&v492;
    }

    v439 = fminf(fmaxf(v438 * v16, v4), v5);
    v440 = fmaxf((v439 + v438) * 0.16667, (v439 * 0.5) + 0.5);
    v441 = fmaxf(v6, v438 * v18);
    v442 = fminf(v7, v441);
    if (v7 > 0.0)
    {
      v441 = v442;
    }

    *(a2 + 4) = v439;
    *(a2 + 8) = v441;
    *(a2 + 12) = v440;
    return v439 >= a1[15];
  }

  else
  {
    *(a2 + 12) = 0;
    *(a2 + 4) = v436 * v16;
    *(a2 + 8) = v436 * v18;
    return 1;
  }
}