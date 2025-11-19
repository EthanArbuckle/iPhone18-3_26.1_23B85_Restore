const void *esl::QuartzColor::cgColorSpace@<X0>(CGColorRef *this@<X0>, void *a2@<X8>)
{
  result = CGColorGetColorSpace(this[2]);
  v4 = result;
  *a2 = &unk_1F29E1230;
  if (result)
  {
    result = CFRetain(result);
  }

  a2[1] = v4;
  return result;
}

void esl::QuartzColor::~QuartzColor(esl::QuartzColor *this)
{
  *this = &unk_1F29E15F0;
  geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(this + 1);
}

{
  *this = &unk_1F29E15F0;
  geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(this + 1);

  JUMPOUT(0x1B8C62190);
}

_BYTE *geo::optional<geo::ColorSpace>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::optional<geo::ColorSpace>::value(a1);
    *a1 = 0;
  }

  return a1;
}

void geo::_retain_ptr<__CFString const*,geo::_retain_cf<__CFString const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<__CFString const*,geo::_retain_cf<__CFString const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFString const*,geo::_retain_cf<__CFString const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E1668;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

_BYTE *geo::optional<geo::Color<float,4,(geo::ColorSpace)2>>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::optional<float>::value(a1);
    *a1 = 0;
  }

  return a1;
}

float geo::fromLinear<float,4,(geo::ColorSpace)2,int,void>::operator()(uint64_t a1, float *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  if (*a2 >= 0.0031308)
  {
    v5 = (powf(v2, 0.41667) * 1.055) + -0.055;
  }

  else
  {
    v5 = v2 * 12.92;
  }

  if (v3 >= 0.0031308)
  {
    powf(v3, 0.41667);
  }

  if (v4 >= 0.0031308)
  {
    powf(v4, 0.41667);
  }

  return v5;
}

float geo::colorTransform<geo::ReverseGammaCorrection>(float *a1, float *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[2];
  v7 = a1[3] * v6;
  if (*a2 >= v7)
  {
    v8 = powf((v3 + *a1) / (*a1 + 1.0), a1[1]);
  }

  else
  {
    v8 = v3 / v6;
  }

  if (v4 >= v7)
  {
    powf((v4 + *a1) / (*a1 + 1.0), a1[1]);
  }

  if (v5 >= v7)
  {
    powf((v5 + *a1) / (*a1 + 1.0), a1[1]);
  }

  return v8;
}

{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[2];
  v7 = v6 * a1[3];
  if (*a2 >= v7)
  {
    v8 = powf((*a1 + v3) / (*a1 + 1.0), a1[1]);
  }

  else
  {
    v8 = v3 / v6;
  }

  if (v4 >= v7)
  {
    powf((*a1 + v4) / (*a1 + 1.0), a1[1]);
  }

  if (v5 >= v7)
  {
    powf((*a1 + v5) / (*a1 + 1.0), a1[1]);
  }

  return v8;
}

uint64_t esl::QuartzPath::moveToPoint(CGMutablePathRef *a1, uint64_t a2, float a3, float a4)
{
  v8 = (*(*a1 + 2))(a1);
  if (v8)
  {
    if (a2)
    {
      v9 = (a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    CGPathMoveToPoint(a1[1], v9, a3, a4);
  }

  return v8;
}

uint64_t esl::QuartzPath::addLineToPoint(CGMutablePathRef *a1, uint64_t a2, float a3, float a4)
{
  v8 = (*(*a1 + 2))(a1);
  if (v8)
  {
    if (a2)
    {
      v9 = (a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    CGPathAddLineToPoint(a1[1], v9, a3, a4);
  }

  return v8;
}

uint64_t esl::QuartzPath::addCurveToPoint(CGMutablePathRef *a1, uint64_t a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v16 = (*(*a1 + 2))(a1);
  if (v16)
  {
    if (a2)
    {
      v17 = (a2 + 8);
    }

    else
    {
      v17 = 0;
    }

    CGPathAddCurveToPoint(a1[1], v17, a3, a4, a5, a6, a7, a8);
  }

  return v16;
}

uint64_t esl::QuartzPath::addQuadCurveToPoint(CGMutablePathRef *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v12 = (*(*a1 + 2))(a1);
  if (v12)
  {
    if (a2)
    {
      v13 = (a2 + 8);
    }

    else
    {
      v13 = 0;
    }

    CGPathAddQuadCurveToPoint(a1[1], v13, a3, a4, a5, a6);
  }

  return v12;
}

uint64_t esl::QuartzPath::addEllipseInRect(CGMutablePathRef *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v12 = (*(*a1 + 2))(a1);
  if (v12)
  {
    if (a2)
    {
      v13 = (a2 + 8);
    }

    else
    {
      v13 = 0;
    }

    if ((a5 - a3) >= 0.0)
    {
      v14 = a5 - a3;
    }

    else
    {
      v14 = 0.0;
    }

    if ((a6 - a4) >= 0.0)
    {
      v15 = a6 - a4;
    }

    else
    {
      v15 = 0.0;
    }

    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = v14;
    v17.size.height = v15;
    CGPathAddEllipseInRect(a1[1], v13, v17);
  }

  return v12;
}

uint64_t esl::QuartzPath::addArc(CGMutablePathRef *a1, BOOL a2, uint64_t a3, float a4, float a5, float a6, float a7, float a8)
{
  v16 = (*(*a1 + 2))(a1);
  if (v16)
  {
    if (a3)
    {
      v17 = (a3 + 8);
    }

    else
    {
      v17 = 0;
    }

    CGPathAddArc(a1[1], v17, a4, a5, a6, a7, a8, a2);
  }

  return v16;
}

uint64_t esl::QuartzPath::addPath(CGMutablePathRef *a1, uint64_t *a2, uint64_t a3)
{
  if (!(*(*a1 + 2))(a1))
  {
    return 0;
  }

  if (a3)
  {
    v6 = (a3 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v9 = *(v7 + 8);
    if (v9)
    {
      CGPathAddPath(a1[1], v6, v9);
      v10 = 1;
      if (!v8)
      {
        return v10;
      }

      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v8)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return v10;
}

void sub_1B2BF2A60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t esl::QuartzPath::addRect(CGMutablePathRef *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v12 = (*(*a1 + 2))(a1);
  if (v12)
  {
    if (a2)
    {
      v13 = (a2 + 8);
    }

    else
    {
      v13 = 0;
    }

    if ((a5 - a3) >= 0.0)
    {
      v14 = a5 - a3;
    }

    else
    {
      v14 = 0.0;
    }

    if ((a6 - a4) >= 0.0)
    {
      v15 = a6 - a4;
    }

    else
    {
      v15 = 0.0;
    }

    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = v14;
    v17.size.height = v15;
    CGPathAddRect(a1[1], v13, v17);
  }

  return v12;
}

void std::__shared_ptr_emplace<esl::QuartzPath>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E1750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t GEOGetEaselContextLog()
{
  if (GEOGetEaselContextLog::onceToken != -1)
  {
    GEOGetEaselContextLog_cold_1();
  }

  return GEOGetEaselContextLog::log;
}

os_log_t __GEOGetEaselContextLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit.Easel", "Context");
  GEOGetEaselContextLog::log = result;
  return result;
}

uint64_t GEOGetEaselImageLog()
{
  if (GEOGetEaselImageLog::onceToken != -1)
  {
    GEOGetEaselImageLog_cold_1();
  }

  return GEOGetEaselImageLog::log;
}

os_log_t __GEOGetEaselImageLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit.Easel", "Image");
  GEOGetEaselImageLog::log = result;
  return result;
}

void Flyover::GetDataIDs(Flyover *this)
{
  v2[9] = *MEMORY[0x1E69E9840];
  {
    v2[0] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>();
    v2[1] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>();
    v2[2] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>();
    v2[3] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>();
    v2[4] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>();
    v2[5] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>();
    v2[6] = gdc::typeIndex<Flyover::AtmosphereTexture>();
    v2[7] = gdc::typeIndex<Flyover::DiffuseTexture>();
    v1 = 0;
    v2[8] = gdc::typeIndex<Flyover::NightTexture>();
    Flyover::GetDataIDs(void)::kDataIDs = 0u;
    *algn_1EB829230 = 0u;
    dword_1EB829240 = 1065353216;
    do
    {
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&Flyover::GetDataIDs(void)::kDataIDs, v2[v1++]);
    }

    while (v1 != 9);
  }
}

void md::Logic<md::DrapingLogic,md::DrapingContext,md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 3;
      do
      {
        v7 = v6;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v7);
        v7 = v6 - 3;
        std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&v7);
        if (*(v6 - 33) < 0)
        {
          operator delete(*(v6 - 7));
        }

        v6 -= 10;
      }

      while (v6 + 3 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 6;
      do
      {
        v8 = v6 + 3;
        std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v8);
        v8 = v6;
        std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v8);
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 3));
        }

        if (*(v6 - 25) < 0)
        {
          operator delete(*(v6 - 6));
        }

        v7 = v6 - 6;
        v6 -= 12;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<gdc::DebugTreeValue>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<gdc::DebugTreeValue>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

uint64_t _ZZN2md12DrapingLogic14runAfterLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__0clENS5_6EntityERNS_17overlayComponents13VectorOverlayE(uint64_t **a1, uint64_t a2)
{
  v3 = gdc::Registry::storage<md::overlayComponents::TileIsInView>(**a1);
  result = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v3, a2);
  if (!result)
  {
    operator new();
  }

  return result;
}

__n128 std::__function::__func<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#3},std::allocator<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#3}>,void ()(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A5FEE0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A5FE98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(*(result + 8) + 184);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = a3[1];
    do
    {
      result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v3[6], v4, v5, v6);
      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::TileIsInView>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void *geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if ((v4 - 8) != a2)
  {
    *a2 = *(v4 - 8);
    v5 = (a2 - *(a1 + 24)) >> 3;
    *(geo::sparse_set<gdc::Entity,unsigned short,256ul>::_getOrCreatePage(a1, *(*(a1 + 32) - 4)) + 2 * (a2 & 0x7F)) = v5;
    v4 = *(a1 + 32);
  }

  *(a1 + 32) = v4 - 8;
  return a2;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::TileIsInView>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::TileIsInView>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::VectorOverlay>::remove(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 104 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 96);
    *v6 = *(v7 - 104);
    v9 = *(v7 - 88);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v6 + 16);
    *(v6 + 8) = v8;
    *(v6 + 16) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v12 = *(v7 - 80);
    v11 = *(v7 - 72);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(v6 + 32);
    *(v6 + 24) = v12;
    *(v6 + 32) = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v15 = *(v7 - 64);
    v14 = *(v7 - 56);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v6 + 48);
    *(v6 + 40) = v15;
    *(v6 + 48) = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v18 = *(v7 - 48);
    v17 = *(v7 - 40);
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(v6 + 64);
    *(v6 + 56) = v18;
    *(v6 + 64) = v17;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    v21 = *(v7 - 32);
    v20 = *(v7 - 24);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(v6 + 80);
    *(v6 + 72) = v21;
    *(v6 + 80) = v20;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    v23 = *(v7 - 16);
    *(v6 + 96) = *(v7 - 8);
    *(v6 + 88) = v23;
    std::vector<md::overlayComponents::VectorOverlay>::__base_destruct_at_end[abi:nn200100]((a1 + 10), a1[11] - 104);
    v24 = a1[28];
    if (v24)
    {
      v25 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v24[6], v25, &v27, 1);
        v24 = *v24;
      }

      while (v24);
    }
  }

  return v5 != v4;
}

void std::vector<md::overlayComponents::VectorOverlay>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 104)
  {
    v5 = *(i - 24);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(i - 40);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(i - 56);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = *(i - 72);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(i - 88);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  *(a1 + 8) = a2;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::VectorOverlay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::overlayComponents::VectorOverlay>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::overlayComponents::VectorOverlay>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<md::overlayComponents::VectorOverlay>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::VectorOverlay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::overlayComponents::VectorOverlay>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    return a1[11];
  }

  else
  {
    return a1[10] + 24 * ((v3 - a1[7]) >> 3);
  }
}

void _ZZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__2clENS5_6EntityERNS_17overlayComponents17RasterOverlayBaseINS_15OverlayTileData19OverlayTileResource10RasterTileEEERNSt3__113unordered_mapIPNS5_8RegistryENSS_6vectorISK_NSS_9allocatorISK_EEEENSS_4hashISV_EENSS_8equal_toISV_EENSX_INSS_4pairIKSV_SZ_EEEEEERNSW_ISV_NSX_ISV_EEEE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t **a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = gdc::Registry::getOrAdd<gdc::components::RegistryBridgeMap<gdc::Entity>>(**a1, a2);
  v10 = gdc::Registry::storage<md::overlayComponents::TileIsInView>(**a1);
  v11 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v10, a2);
  CanDisable = gdc::Registry::storage<md::overlayComponents::CanDisableDraping>(**a1);
  if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(CanDisable, a2) || (**(a1 + 8) & 1) == 0)
  {
    if (v11)
    {
      v13 = *(a4 + 16);
      if (v13)
      {
        do
        {
          v15 = v13[3];
          v14 = v13[4];
          v32 = v13;
          if (v15 != v14)
          {
            v16 = v13[2];
            do
            {
              v17 = *v15;
              v33 = v17;
              if ((gdc::components::RegistryBridgeMap<gdc::Entity>::hasEntity(v9, v16, v17) & 1) == 0)
              {
                v18 = gdc::Registry::storage<md::components::MeshInstance>(v16);
                v19 = gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(v18, v17);
                if (v19)
                {
                  v20 = v19;
                  v21 = *(gdc::components::RegistryBridgeMap<gdc::Entity>::nodeForRegistryAndKey(v9, v16, &v33) + 16);
                  v22 = gdc::Registry::storage<md::components::MeshInstance>(v16);
                  v36 = v20[3];
                  v37 = v20[4];
                  v38[0] = v20[5];
                  *(v38 + 12) = *(v20 + 92);
                  *buf = *v20;
                  *&buf[16] = v20[1];
                  v35 = v20[2];
                  gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(v22, v21, buf);
                  v23 = gdc::Registry::storage<md::components::Visibility>(v16);
                  buf[0] = 1;
                  gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v23, v21, buf);
                  operator new();
                }

                v24 = GEOGetVectorKitDrapingLogicLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "false";
                  *&buf[12] = 2080;
                  *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/Overlays/DrapingLogic.mm";
                  *&buf[22] = 1024;
                  *&buf[24] = 307;
                  _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_ERROR, "Entity MUST have a mesh instance: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
                }
              }

              ++v15;
            }

            while (v15 != v14);
          }

          v13 = *v32;
        }

        while (*v32);
      }
    }

    else
    {
      v25 = *a5;
      v26 = a5[1];
      while (v25 != v26)
      {
        v27 = *v25;
        gdc::components::RegistryBridgeMap<gdc::Entity>::entities(buf, v9, *v25);
        v28 = *buf;
        md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(v27, *buf, *&buf[8]);
        if (v28)
        {
          operator delete(v28);
        }

        ++v25;
      }

      for (i = *(a4 + 16); i; i = *i)
      {
        v30 = i[2];
        gdc::components::RegistryBridgeMap<gdc::Entity>::entities(buf, v9, v30);
        v31 = *buf;
        md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(v30, *buf, *&buf[8]);
        if (v31)
        {
          operator delete(v31);
        }
      }
    }
  }
}

void sub_1B2BF3F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void _ZZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__3clENS5_6EntityERNS_17overlayComponents17RasterOverlayBaseINS_15OverlayTileData19OverlayTileResource7TextureEEERNSt3__113unordered_mapIPNS5_8RegistryENSS_6vectorISK_NSS_9allocatorISK_EEEENSS_4hashISV_EENSS_8equal_toISV_EENSX_INSS_4pairIKSV_SZ_EEEEEERNSW_ISV_NSX_ISV_EEEE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t **a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = gdc::Registry::getOrAdd<gdc::components::RegistryBridgeMap<gdc::Entity>>(**a1, a2);
  v10 = gdc::Registry::storage<md::overlayComponents::TileIsInView>(**a1);
  v11 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v10, a2);
  CanDisable = gdc::Registry::storage<md::overlayComponents::CanDisableDraping>(**a1);
  if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(CanDisable, a2) || (**(a1 + 8) & 1) == 0)
  {
    if (v11)
    {
      v13 = *(a4 + 16);
      if (v13)
      {
        do
        {
          v15 = v13[3];
          v14 = v13[4];
          v32 = v13;
          if (v15 != v14)
          {
            v16 = v13[2];
            do
            {
              v17 = *v15;
              v33 = v17;
              if ((gdc::components::RegistryBridgeMap<gdc::Entity>::hasEntity(v9, v16, v17) & 1) == 0)
              {
                v18 = gdc::Registry::storage<md::components::MeshInstance>(v16);
                v19 = gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(v18, v17);
                if (v19)
                {
                  v20 = v19;
                  v21 = *(gdc::components::RegistryBridgeMap<gdc::Entity>::nodeForRegistryAndKey(v9, v16, &v33) + 16);
                  v22 = gdc::Registry::storage<md::components::MeshInstance>(v16);
                  v36 = v20[3];
                  v37 = v20[4];
                  v38[0] = v20[5];
                  *(v38 + 12) = *(v20 + 92);
                  *buf = *v20;
                  *&buf[16] = v20[1];
                  v35 = v20[2];
                  gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(v22, v21, buf);
                  v23 = gdc::Registry::storage<md::components::Visibility>(v16);
                  buf[0] = 1;
                  gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v23, v21, buf);
                  operator new();
                }

                v24 = GEOGetVectorKitDrapingLogicLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "false";
                  *&buf[12] = 2080;
                  *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/Overlays/DrapingLogic.mm";
                  *&buf[22] = 1024;
                  *&buf[24] = 307;
                  _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_ERROR, "Entity MUST have a mesh instance: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
                }
              }

              ++v15;
            }

            while (v15 != v14);
          }

          v13 = *v32;
        }

        while (*v32);
      }
    }

    else
    {
      v25 = *a5;
      v26 = a5[1];
      while (v25 != v26)
      {
        v27 = *v25;
        gdc::components::RegistryBridgeMap<gdc::Entity>::entities(buf, v9, *v25);
        v28 = *buf;
        md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(v27, *buf, *&buf[8]);
        if (v28)
        {
          operator delete(v28);
        }

        ++v25;
      }

      for (i = *(a4 + 16); i; i = *i)
      {
        v30 = i[2];
        gdc::components::RegistryBridgeMap<gdc::Entity>::entities(buf, v9, v30);
        v31 = *buf;
        md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(v30, *buf, *&buf[8]);
        if (v31)
        {
          operator delete(v31);
        }
      }
    }
  }
}

void sub_1B2BF4434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

id GEOGetVectorKitDrapingLogicLog(void)
{
  if (GEOGetVectorKitDrapingLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitDrapingLogicLog(void)::onceToken, &__block_literal_global);
  }

  v1 = GEOGetVectorKitDrapingLogicLog(void)::log;

  return v1;
}

BOOL std::__hash_table<md::FoundationOverlayPair,md::FoundationOverlayPairHash,std::equal_to<md::FoundationOverlayPair>,std::allocator<md::FoundationOverlayPair>>::__emplace_unique_key_args<md::FoundationOverlayPair,md::FoundationOverlayPair>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 216);
  v3 = (*(a2 + 104) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = (*(a2 + 104) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = v3 & (*&v4 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = *(v10 + 1);
    if (v11 == v3)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (!gdc::LayerDataRequestKey::operator==(v10 + 16, a2))
  {
    goto LABEL_18;
  }

  result = gdc::LayerDataRequestKey::operator==(v10 + 128, (a2 + 112));
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

void sub_1B2BF4940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<md::FoundationOverlayPair,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<md::FoundationOverlayPair,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::FoundationOverlayPair::~FoundationOverlayPair(md::FoundationOverlayPair *this)
{
  v2 = *(this + 16);
  if (v2 != *(this + 18))
  {
    free(v2);
  }

  v3 = *(this + 2);
  if (v3 != *(this + 4))
  {
    free(v3);
  }
}

void md::DrapingLogic::_fixUpHoles(void *a1, uint64_t *a2, void *a3, char **a4)
{
  v4 = a2;
  v159[9] = *MEMORY[0x1E69E9840];
  v5 = a3[2];
  v7 = *v5;
  v6 = *(v5 + 8);
  while (v7 != v6)
  {
    if (*v7 == 1)
    {
      v6 = v7;
      break;
    }

    v7 += 16;
  }

  v8 = *(*(v6 + 2) + 16);
  v132[1] = 0;
  v132[0] = 0;
  v110 = v8;
  v131 = v132;
  if (a2)
  {
    do
    {
      v9 = v4 + 2;
      gdc::Tiled::tileFromLayerDataKey(&v147, v4[4]);
      v10 = v147.__r_.__value_.__s.__data_[1];
      gdc::Tiled::tileFromLayerDataKey(buf, v4[18]);
      if (v10 <= buf[1])
      {
        v11 = 0;
      }

      else
      {
        v11 = 14;
      }

      gdc::LayerDataRequestKey::LayerDataRequestKey(__p, &v9[v11]);
      gdc::Tiled::tileFromLayerDataKey(&v147, v4[4]);
      v12 = v147.__r_.__value_.__s.__data_[1];
      gdc::Tiled::tileFromLayerDataKey(v146, v4[18]);
      if (v12 <= v146[1])
      {
        v13 = 14;
      }

      else
      {
        v13 = 0;
      }

      gdc::LayerDataRequestKey::LayerDataRequestKey(buf, &v9[v13]);
      v14 = v132[0];
      if (!v132[0])
      {
        goto LABEL_26;
      }

      v15 = v132;
      do
      {
        v16 = v15;
        v17 = v14 + 32;
        v18 = gdc::LayerDataRequestKey::operator<(v14 + 32, __p);
        if (v18)
        {
          v19 = 8;
        }

        else
        {
          v19 = 0;
        }

        if (!v18)
        {
          v15 = v14;
        }

        v14 = *&v14[v19];
      }

      while (v14);
      if (v15 == v132 || (!v18 ? (v20 = v17) : (v20 = (v16 + 4)), (gdc::LayerDataRequestKey::operator<(__p, v20) & 1) != 0))
      {
LABEL_26:
        gdc::LayerDataRequestKey::LayerDataRequestKey(v146, buf);
        v143 = 0uLL;
        v144 = 0;
        std::vector<gdc::LayerDataRequestKey>::__init_with_size[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*>();
      }

      std::vector<gdc::LayerDataRequestKey>::push_back[abi:nn200100](v15 + 18, buf);
      if (*&buf[16] != v153)
      {
        free(*&buf[16]);
      }

      if (v155 != v156)
      {
        free(v155);
      }

      v4 = *v4;
    }

    while (v4);
  }

  v115 = *a3;
  v22 = *(*a3 + 112);
  v21 = *(*a3 + 120);
  while (v22 != v21)
  {
    if (*v22 == 1)
    {
      v21 = v22;
      break;
    }

    v22 += 56;
  }

  v23 = *(v21 + 13);
  v129 = 0;
  v128 = 0;
  v130 = 0;
  v24 = v131;
  if (v131 != v132)
  {
    v108 = *(v110 + 56);
    v109 = v23;
    while (1)
    {
      if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
      }

      v25 = GEOGetVectorKitDrapingFallbackLog_log;
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);

      if (v26)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v27 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          gdc::LayerDataRequestKey::keysInt32Str(&v147, v24 + 16);
          v28 = SHIBYTE(v147.__r_.__value_.__r.__words[2]);
          v29 = v147.__r_.__value_.__r.__words[0];
          v30 = &v147;
          if (v28 < 0)
          {
            v30 = v29;
          }

          v31 = __p;
          if (SHIBYTE(v155) < 0)
          {
            v31 = *__p;
          }

          *buf = 136315394;
          *&buf[4] = v30;
          *&buf[12] = 2080;
          *&buf[14] = v31;
          _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_DEBUG, "Hole: Larger tile %s contains pairs: %s", buf, 0x16u);
          if (SHIBYTE(v155) < 0)
          {
            operator delete(*__p);
          }

          v23 = v109;
          if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v147.__r_.__value_.__l.__data_);
          }
        }
      }

      memset(&v139, 0, sizeof(v139));
      if (*(v24 + 20) != 33)
      {
        strcpy(&v147, "!");
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(1);
      }

      std::vector<md::MapDataType>::__assign_with_size[abi:nn200100]<md::MapDataType*,md::MapDataType*>(&v139, *a4, a4[1], (a4[1] - *a4) >> 1);
      v32 = v139.__r_.__value_.__l.__size_ - v139.__r_.__value_.__r.__words[0];
      if (v139.__r_.__value_.__l.__size_ != v139.__r_.__value_.__r.__words[0])
      {
        if (((v32 >> 1) & 0x8000000000000000) == 0)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v32 >> 1);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      gdc::Tiled::tileFromLayerDataKey(&v147, v24[6]);
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      v157 = 0.0;
      v158 = 0.0;
      v159[0] = 0.0;
      gdc::LayerDataCollector::virtualTilesReferencingKey(v23, v24 + 32, &v157);
      v34 = *&v157;
      v33 = v158;
      v111 = v158;
      while (v34 != *&v33)
      {
        v35 = grl::LayerMetrics::anchor(*v34);
        *&v133 = v35;
        while (1)
        {
          v36 = grl::LayerMetrics::anchor(v34[1]);
          if (!gdc::DataKeyIterator::operator!=(v35, v36))
          {
            break;
          }

          gdc::DataKeyIterator::operator++(&v133);
          v35 = v133;
        }

        v34 += 3;
        v33 = v111;
      }

      v151 = 0;
      v150 = 0uLL;
      v37 = v24;
      if (*buf != &buf[8])
      {
        v38 = 0;
        v39 = *buf;
        do
        {
          v40 = v38;
          v41 = *(v39 + 1);
          if (v41)
          {
            do
            {
              v42 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v42 = *(v39 + 2);
              v43 = *v42 == v39;
              v39 = v42;
            }

            while (!v43);
          }

          ++v38;
          v39 = v42;
        }

        while (v42 != &buf[8]);
        if (v40 < 0x249249249249249)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v38);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v157 != 0.0)
      {
        operator delete(*&v157);
      }

      std::__tree<gdc::LayerDataRequestKey>::destroy(*&buf[8]);
      v23 = v109;
      if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
      }

      v44 = GEOGetVectorKitDrapingFallbackLog_log;
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);

      if (v45)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v46 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v47 = &v147;
          if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v47 = v147.__r_.__value_.__r.__words[0];
          }

          *__p = 136315138;
          *&__p[4] = v47;
          _os_log_impl(&dword_1B2754000, v46, OS_LOG_TYPE_DEBUG, "smaller keys covering: %s", __p, 0xCu);
          if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v147.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v150 != *(&v150 + 1))
      {
        gdc::LayerDataRequestKey::LayerDataRequestKey(&v147, v150);
        gdc::LayerDataRequestKey::LayerDataRequestKey(v127, (v24 + 4));
        gdc::LayerDataRequestKey::LayerDataRequestKey(v126, &v147);
        gdc::LayerDataRequestKey::LayerDataRequestKey(__p, (v24 + 4));
        v157 = 0.0;
        v158 = 0.0;
        v159[0] = 0.0;
        std::vector<gdc::LayerDataRequestKey>::__init_with_size[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*>();
      }

      if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
      }

      v48 = GEOGetVectorKitDrapingFallbackLog_log;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v147.__r_.__value_.__l.__data_) = 134217984;
        *(v147.__r_.__value_.__r.__words + 4) = 0;
        _os_log_impl(&dword_1B2754000, v48, OS_LOG_TYPE_DEBUG, "Current Coverage: %f", &v147, 0xCu);
      }

      v157 = 0.0;
      v158 = 0.0;
      v159[0] = 0.0;
      if (v150 != *(&v150 + 1))
      {
        gdc::LayerDataRequestKey::LayerDataRequestKey(__p, v150);
        v49 = v24[18];
        for (i = v24[19]; v49 != i; v49 += 112)
        {
          if (gdc::LayerDataRequestKey::operator==(v49, __p))
          {
            break;
          }
        }

        gdc::LayerDataRequestKey::LayerDataRequestKey(v125, (v24 + 4));
        gdc::LayerDataRequestKey::LayerDataRequestKey(v124, __p);
        gdc::LayerDataRequestKey::LayerDataRequestKey(buf, (v24 + 4));
        v133 = 0uLL;
        v134 = 0;
        std::vector<gdc::LayerDataRequestKey>::__init_with_size[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*>();
      }

      if (gdc::LayerDataCollector::isFallbackData(v109, (v24 + 4)))
      {
        memset(buf, 0, 24);
      }

      else
      {
        gdc::LayerDataRequestKey::LayerDataRequestKey(&v147, (v24 + 4));
        md::DrapingLogic::_fallbackTilesForHoleTile(buf, a1, &v147, v108);
        if (v147.__r_.__value_.__r.__words[2] != v149)
        {
          free(v147.__r_.__value_.__r.__words[2]);
        }
      }

      if (*&buf[8] != *buf)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v51 = GEOGetVectorKitDrapingFallbackLog_log;
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG);

        if (v52)
        {
          if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
          }

          v53 = GEOGetVectorKitDrapingFallbackLog_log;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v54 = &v147;
            if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v54 = v147.__r_.__value_.__r.__words[0];
            }

            *__p = 136315138;
            *&__p[4] = v54;
            _os_log_impl(&dword_1B2754000, v53, OS_LOG_TYPE_DEBUG, "larger fallback keys: %s", __p, 0xCu);
            if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v147.__r_.__value_.__l.__data_);
            }
          }
        }

        v56 = *(&v150 + 1);
        v55 = v150;
        if (v150 != *(&v150 + 1))
        {
          gdc::LayerDataRequestKey::LayerDataRequestKey(&v147, v150);
          gdc::LayerDataRequestKey::LayerDataRequestKey(v123, (v24 + 4));
          gdc::LayerDataRequestKey::LayerDataRequestKey(v122, &v147);
          gdc::LayerDataRequestKey::LayerDataRequestKey(__p, &v147);
          v133 = 0uLL;
          v134 = 0;
          std::vector<gdc::LayerDataRequestKey>::__init_with_size[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*>();
        }

        while (v55 != v56)
        {
          gdc::LayerDataRequestKey::LayerDataRequestKey(__p, v55);
          v58 = v24[18];
          v57 = v24[19];
          if (v58 != v57)
          {
            while (!gdc::LayerDataRequestKey::operator==(v58, __p))
            {
              v58 += 112;
              if (v58 == v57)
              {
                v58 = v57;
                break;
              }
            }
          }

          gdc::LayerDataRequestKey::LayerDataRequestKey(v119, (v24 + 4));
          gdc::LayerDataRequestKey::LayerDataRequestKey(v116, __p);
          if (v58 == v57)
          {
            gdc::LayerDataRequestKey::LayerDataRequestKey(&v143, __p);
            v133 = 0uLL;
            v134 = 0;
            std::vector<gdc::LayerDataRequestKey>::__init_with_size[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*>();
          }

          if (gdc::LayerDataCollector::isFallbackData(v109, __p))
          {
            v133 = 0uLL;
            v134 = 0;
          }

          else
          {
            gdc::LayerDataRequestKey::LayerDataRequestKey(&v147, __p);
            md::DrapingLogic::_fallbackTilesForHoleTile(&v133, a1, &v147, v108);
            if (v147.__r_.__value_.__r.__words[2] != v149)
            {
              free(v147.__r_.__value_.__r.__words[2]);
            }
          }

          v59 = md::DrapingLogic::_evaluateCoverageOfTilePairs(a1, v119, v116, buf, &v133);
          v159[0] = v159[0] + v59;
          v147.__r_.__value_.__r.__words[0] = &v133;
          std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v147);
          if (v58 == v57 && v144 != v145)
          {
            free(v144);
          }

          if (v117 != v118)
          {
            free(v117);
          }

          if (v120 != v121)
          {
            free(v120);
          }

          if (v155 != v156)
          {
            free(v155);
          }

          v55 += 112;
        }
      }

      if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
      }

      v60 = GEOGetVectorKitDrapingFallbackLog_log;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v147.__r_.__value_.__l.__data_) = 134218496;
        *(v147.__r_.__value_.__r.__words + 4) = v157;
        WORD2(v147.__r_.__value_.__r.__words[1]) = 2048;
        *(&v147.__r_.__value_.__r.__words[1] + 6) = v158;
        HIWORD(v147.__r_.__value_.__r.__words[2]) = 2048;
        v148 = v159[0];
        _os_log_impl(&dword_1B2754000, v60, OS_LOG_TYPE_DEBUG, "Coverage for fallback smaller: %f  fallback larger: %f  Fallback smaller and larger: %f", &v147, 0x20u);
      }

      v61 = fmax(v157, v158);
      v62 = &v158;
      if (v157 >= v158)
      {
        v62 = &v157;
      }

      v63 = 16;
      if (v61 >= v159[0])
      {
        v63 = 8 * (v157 < v158);
      }

      v64 = v159;
      if (v61 >= v159[0])
      {
        v64 = v62;
      }

      v65 = *(&v157 + v63);
      if (v65 <= 0.0)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v68 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v147.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_1B2754000, v68, OS_LOG_TYPE_DEBUG, "failed to fill hole!", &v147, 2u);
        }

        goto LABEL_174;
      }

      v66 = v64 - &v157;
      if (v66 == 2)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v70 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v147.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_1B2754000, v70, OS_LOG_TYPE_DEBUG, "Filled hole by falling back both tiles of pair", &v147, 2u);
        }

        std::vector<gdc::LayerDataRequestKey>::__insert_with_size[abi:nn200100]<std::__wrap_iter<gdc::LayerDataRequestKey const*>,std::__wrap_iter<gdc::LayerDataRequestKey const*>>(&v128, v129, v24[18], v24[19], 0x6DB6DB6DB6DB6DB7 * ((v24[19] - v24[18]) >> 4));
      }

      else
      {
        if (v66 != 1)
        {
          if (!v66)
          {
            if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
            }

            v67 = GEOGetVectorKitDrapingFallbackLog_log;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v147.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&dword_1B2754000, v67, OS_LOG_TYPE_DEBUG, "Filled hole by falling back smaller tile of pair", &v147, 2u);
            }

            std::vector<gdc::LayerDataRequestKey>::__insert_with_size[abi:nn200100]<std::__wrap_iter<gdc::LayerDataRequestKey const*>,std::__wrap_iter<gdc::LayerDataRequestKey const*>>(&v128, v129, v24[18], v24[19], 0x6DB6DB6DB6DB6DB7 * ((v24[19] - v24[18]) >> 4));
          }

          goto LABEL_174;
        }

        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v69 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v147.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_1B2754000, v69, OS_LOG_TYPE_DEBUG, "Filled hole by falling back larger tile of pair", &v147, 2u);
        }
      }

      std::vector<gdc::LayerDataRequestKey>::push_back[abi:nn200100](&v128, (v24 + 4));
LABEL_174:
      v147.__r_.__value_.__r.__words[0] = buf;
      std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v147);
      v147.__r_.__value_.__r.__words[0] = &v150;
      std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v147);
      if (v139.__r_.__value_.__r.__words[0])
      {
        operator delete(v139.__r_.__value_.__l.__data_);
      }

      v71 = v24[1];
      if (v71)
      {
        do
        {
          v72 = v71;
          v71 = *v71;
        }

        while (v71);
      }

      else
      {
        do
        {
          v72 = v37[2];
          v43 = *v72 == v37;
          v37 = v72;
        }

        while (!v43);
      }

      v24 = v72;
      if (v72 == v132)
      {
        v73 = a3;
        v115 = *a3;
        goto LABEL_184;
      }
    }
  }

  v73 = a3;
LABEL_184:
  v74 = v73[1];
  if (v74)
  {
    atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v128 != v129)
  {
    v112 = v74;
    if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
    }

    v75 = GEOGetVectorKitDrapingFallbackLog_log;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v147.__r_.__value_.__l.__data_) = 134217984;
      *(v147.__r_.__value_.__r.__words + 4) = 0x6DB6DB6DB6DB6DB7 * ((v129 - v128) >> 4);
      _os_log_impl(&dword_1B2754000, v75, OS_LOG_TYPE_DEBUG, "Holding back %zu tiles", &v147, 0xCu);
    }

    v76 = v128;
    v114 = v129;
    while (v76 != v114)
    {
      if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
      }

      v77 = GEOGetVectorKitDrapingFallbackLog_log;
      v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG);

      if (v78)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v79 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          gdc::LayerDataRequestKey::keysInt32Str(&v147, v76);
          v80 = &v147;
          if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v80 = v147.__r_.__value_.__r.__words[0];
          }

          *buf = 136315138;
          *&buf[4] = v80;
          _os_log_impl(&dword_1B2754000, v79, OS_LOG_TYPE_DEBUG, "Holding back %s", buf, 0xCu);
          if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v147.__r_.__value_.__l.__data_);
          }
        }
      }

      md::SceneStateManager::setHasLayerDataDependency(v115, v76);
      v81 = gdc::Camera::cameraFrame(v76);
      gdc::LayerDataKey::LayerDataKey(&v157, v81);
      gdc::LayerDataRequestKey::LayerDataRequestKey(&v147, 1u, &v157);
      if (*&v158 != *&v159[1])
      {
        free(*&v158);
      }

      md::SceneStateManager::setHasLayerDataDependency(v115, &v147);
      gdc::LayerDataRequestKey::LayerDataRequestKey(__p, v76);
      md::DrapingLogic::_fallbackTilesForHoleTile(v142, a1, __p, *(v110 + 56));
      if (v155 != v156)
      {
        free(v155);
      }

      v82 = v142[0];
      v83 = v142[1];
      while (v82 != v83)
      {
        gdc::LayerDataRequestKey::LayerDataRequestKey(buf, v82);
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v84 = GEOGetVectorKitDrapingFallbackLog_log;
        v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG);

        if (v85)
        {
          if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
          }

          v86 = GEOGetVectorKitDrapingFallbackLog_log;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            gdc::LayerDataRequestKey::keysInt32Str(&v139, buf);
            v87 = &v139;
            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v87 = v139.__r_.__value_.__r.__words[0];
            }

            LODWORD(v150) = 136315138;
            *(&v150 + 4) = v87;
            _os_log_impl(&dword_1B2754000, v86, OS_LOG_TYPE_DEBUG, "Replacing this with %s", &v150, 0xCu);
            if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v139.__r_.__value_.__l.__data_);
            }
          }
        }

        v88 = a1[58];
        v89 = *(v88 + 80);
        v90 = *(v88 + 88);
        if (v89 == v90)
        {
          goto LABEL_226;
        }

        while (*v89 != *&buf[8])
        {
          v89 += 8;
          if (v89 == v90)
          {
            goto LABEL_226;
          }
        }

        if (v89 == v90)
        {
LABEL_226:
          v91 = 0;
        }

        else
        {
          v91 = *(v89 + 1);
        }

        gdc::LayerDataStore::get(&v140, v91, buf);
        gdc::Tiled::tileFromLayerDataKey(&v139, *(v76 + 16));
        gdc::Tiled::tileFromLayerDataKey(&v150, *&buf[16]);
        if (v139.__r_.__value_.__s.__data_[1] <= BYTE1(v150))
        {
          v92 = BYTE1(v150);
        }

        else
        {
          v92 = v139.__r_.__value_.__s.__data_[1];
        }

        v93 = &v139;
        if (v139.__r_.__value_.__s.__data_[1] < BYTE1(v150))
        {
          v93 = &v150;
        }

        v95 = HIDWORD(v93->__r_.__value_.__r.__words[0]);
        v94 = v93->__r_.__value_.__r.__words[1];
        v96 = v93->__r_.__value_.__s.__data_[0];
        v97 = *(v110 + 64);
        v137 = 0;
        v136 = 0;
        v138 = 0;
        v98 = *(v97 + 24);
        if (v98)
        {
          v99 = 0;
          while (1)
          {
            if (*(v98 + 16) == v96)
            {
              v100 = *(v98 + 17);
              v101 = v100 - v92;
              if (v100 >= v92)
              {
                if (v100 == v92 && *(v98 + 5) == v95)
                {
                  v103 = v94;
                  v102 = v95;
                  if (*(v98 + 6) == v94)
                  {
LABEL_249:
                    if (v99 >= v138)
                    {
                      v99 = std::vector<geo::QuadTile>::__emplace_back_slow_path<geo::QuadTile const&>(&v136, (v98 + 2));
                    }

                    else
                    {
                      v99[24] = 0;
                      v99[1] = v100;
                      *(v99 + 1) = v102;
                      *(v99 + 2) = v103;
                      *v99 = v96;
                      *(v99 + 2) = v98[4];
                      v99[24] = *(v98 + 40);
                      v99 += 32;
                    }

                    v137 = v99;
                    goto LABEL_253;
                  }
                }
              }

              else
              {
                v102 = v95 >> (v92 - v100);
                if (*(v98 + 5) == v102)
                {
                  v103 = v94 >> (v92 - v100);
                  if (*(v98 + 6) == v103)
                  {
                    goto LABEL_249;
                  }
                }
              }

              if (v92 >= v100)
              {
                if (v92 != v100 || v95 != *(v98 + 5))
                {
                  goto LABEL_253;
                }

                v104 = *(v98 + 6);
                v103 = v94;
                v102 = v95;
              }

              else
              {
                v102 = *(v98 + 5);
                if (v95 != v102 >> v101)
                {
                  goto LABEL_253;
                }

                v103 = *(v98 + 6);
                v104 = v103 >> v101;
              }

              if (v94 == v104)
              {
                goto LABEL_249;
              }
            }

LABEL_253:
            v98 = *v98;
            if (!v98)
            {
              v105 = v136;
              if (v136 != v99)
              {
                do
                {
                  *(&v133 + 4) = *(v105 + 4);
                  LOWORD(v133) = *v105;
                  v134 = *(v105 + 2);
                  v135 = v105[24];
                  gdc::LayerDataCollector::addFallbackData(v23, buf, &v133, &v140);
                  v105 += 32;
                }

                while (v105 != v99);
                v105 = v136;
              }

              if (v105)
              {
                v137 = v105;
                operator delete(v105);
              }

              break;
            }
          }
        }

        if (v141)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v141);
        }

        if (*&buf[16] != v153)
        {
          free(*&buf[16]);
        }

        v82 += 112;
      }

      *buf = v142;
      std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](buf);
      if (v147.__r_.__value_.__r.__words[2] != v149)
      {
        free(v147.__r_.__value_.__r.__words[2]);
      }

      v76 += 112;
    }

    gdc::LayerDataCollector::sortIndexList(v23);
    v74 = v112;
  }

  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v74);
  }

  v147.__r_.__value_.__r.__words[0] = &v128;
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v147);
  std::__tree<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::__map_value_compare<gdc::LayerDataRequestKey,std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::less<gdc::LayerDataRequestKey>,true>,std::allocator<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>>>::destroy(v132[0]);
}

void sub_1B2BF6488(_Unwind_Exception *a1)
{
  STACK[0x6F0] = &STACK[0x680];
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&STACK[0x6F0]);
  STACK[0x6F0] = &STACK[0x660];
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&STACK[0x6F0]);
  if (STACK[0x4A8])
  {
    operator delete(STACK[0x4A8]);
  }

  STACK[0x680] = &STACK[0x440];
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&STACK[0x680]);
  std::__tree<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::__map_value_compare<gdc::LayerDataRequestKey,std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::less<gdc::LayerDataRequestKey>,true>,std::allocator<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>>>::destroy(STACK[0x460]);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::view<md::components::MeshInstance,md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>(uint64_t a1)
{
  v2 = gdc::Registry::storage<md::components::MeshInstance>(a1);
  gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>(a1);
  return v2;
}

void _ZNK3gdc12RegistryViewIJN2md10components12MeshInstanceENS1_17overlayComponents18FoundationMeshTypeILN3gss8MeshTypeE24EEEEE4eachIZNS1_12DrapingLogic29runBeforeLayoutAtVariableRateERKNS1_13LayoutContextERKNS1_17LogicDependenciesIJNS_8TypeListIJNS1_15OverlaysContextENS1_13CameraContextENS1_19PendingSceneContextENS1_16ElevationContextEEEENSG_IJEEEEE20ResolvedDependenciesERNS1_14DrapingContextEE3__4EEvT_(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a1 + 32;
  if (!*a1)
  {
    v8 = 0;
  }

  v9 = v6 + 32;
  if (!v6)
  {
    v9 = 0;
  }

  if (*(v9 + 32) - *(v9 + 24) >= *(v8 + 32) - *(v8 + 24))
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    v11 = v7[7];
    v12 = v7[8];
    if (v11 != v12)
    {
      v13 = v7[10];
      do
      {
        v14 = a1[1];
        if (*(v14 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v14 + 32), *(v11 + 4)))
        {
          v15 = *v11;
          HasDebug = gdc::Registry::storage<md::overlayComponents::HasDebugDisplay>(*a2);
          if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(HasDebug, v15))
          {
            v17 = a3[1];
            v18 = a3[2];
            if (v17 >= v18)
            {
              v25 = 0x6DB6DB6DB6DB6DB7 * ((v17 - *a3) >> 4);
              v26 = v25 + 1;
              if ((v25 + 1) > 0x249249249249249)
              {
LABEL_60:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v27 = 0x6DB6DB6DB6DB6DB7 * ((v18 - *a3) >> 4);
              if (2 * v27 > v26)
              {
                v26 = 2 * v27;
              }

              if (v27 >= 0x124924924924924)
              {
                v28 = 0x249249249249249;
              }

              else
              {
                v28 = v26;
              }

              if (v28)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<md::components::MeshInstance>>(v28);
              }

              v29 = 112 * v25;
              v30 = *v13;
              v31 = v13[2];
              *(v29 + 16) = v13[1];
              *(v29 + 32) = v31;
              *v29 = v30;
              v32 = v13[3];
              v33 = v13[4];
              v34 = v13[6];
              *(v29 + 80) = v13[5];
              *(v29 + 96) = v34;
              *(v29 + 48) = v32;
              *(v29 + 64) = v33;
              v35 = *a3;
              v36 = a3[1];
              v37 = 112 * v25 + *a3 - v36;
              if (*a3 != v36)
              {
                v38 = (v29 + *a3 - v36);
                do
                {
                  v39 = *v35;
                  v40 = v35[2];
                  v38[1] = v35[1];
                  v38[2] = v40;
                  *v38 = v39;
                  v41 = v35[3];
                  v42 = v35[4];
                  v43 = v35[6];
                  v38[5] = v35[5];
                  v38[6] = v43;
                  v38[3] = v41;
                  v38[4] = v42;
                  v35 += 7;
                  v38 += 7;
                }

                while (v35 != v36);
                v35 = *a3;
              }

              v24 = (v29 + 112);
              *a3 = v37;
              a3[1] = v29 + 112;
              a3[2] = 0;
              if (v35)
              {
                operator delete(v35);
              }
            }

            else
            {
              v19 = *v13;
              v20 = v13[2];
              v17[1] = v13[1];
              v17[2] = v20;
              *v17 = v19;
              v21 = v13[3];
              v22 = v13[4];
              v23 = v13[6];
              v17[5] = v13[5];
              v17[6] = v23;
              v17[3] = v21;
              v17[4] = v22;
              v24 = v17 + 7;
            }

            a3[1] = v24;
            v44 = gdc::Registry::storage<md::overlayComponents::HasDebugDisplay>(*a2);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v44, v15);
          }
        }

        v13 += 7;
        v11 += 8;
      }

      while (v11 != v12);
      v6 = a1[1];
    }
  }

  v45 = v6 + 32;
  if (!v6)
  {
    v45 = 0;
  }

  if (v45 == v10)
  {
    v46 = *(v6 + 56);
    for (i = *(v6 + 64); v46 != i; v46 += 8)
    {
      v48 = *a1;
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((*a1 + 32), *(v46 + 4));
      v50 = v48[8];
      if (v50 != Index)
      {
        v51 = *v46;
        v52 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v48 + 4, HIDWORD(*v46));
        v53 = (v50 == v52 ? v48[11] : v48[10] + 112 * ((v52 - v48[7]) >> 3));
        v54 = gdc::Registry::storage<md::overlayComponents::HasDebugDisplay>(*a2);
        if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v54, v51))
        {
          v55 = a3[1];
          v56 = a3[2];
          if (v55 >= v56)
          {
            v63 = 0x6DB6DB6DB6DB6DB7 * ((v55 - *a3) >> 4);
            v64 = v63 + 1;
            if ((v63 + 1) > 0x249249249249249)
            {
              goto LABEL_60;
            }

            v65 = 0x6DB6DB6DB6DB6DB7 * ((v56 - *a3) >> 4);
            if (2 * v65 > v64)
            {
              v64 = 2 * v65;
            }

            if (v65 >= 0x124924924924924)
            {
              v66 = 0x249249249249249;
            }

            else
            {
              v66 = v64;
            }

            if (v66)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::components::MeshInstance>>(v66);
            }

            v67 = 112 * v63;
            v68 = *v53;
            v69 = v53[2];
            *(v67 + 16) = v53[1];
            *(v67 + 32) = v69;
            *v67 = v68;
            v70 = v53[3];
            v71 = v53[4];
            v72 = v53[6];
            *(v67 + 80) = v53[5];
            *(v67 + 96) = v72;
            *(v67 + 48) = v70;
            *(v67 + 64) = v71;
            v73 = *a3;
            v74 = a3[1];
            v75 = 112 * v63 + *a3 - v74;
            if (*a3 != v74)
            {
              v76 = (v67 + *a3 - v74);
              do
              {
                v77 = *v73;
                v78 = v73[2];
                v76[1] = v73[1];
                v76[2] = v78;
                *v76 = v77;
                v79 = v73[3];
                v80 = v73[4];
                v81 = v73[6];
                v76[5] = v73[5];
                v76[6] = v81;
                v76[3] = v79;
                v76[4] = v80;
                v73 += 7;
                v76 += 7;
              }

              while (v73 != v74);
              v73 = *a3;
            }

            v62 = (v67 + 112);
            *a3 = v75;
            a3[1] = v67 + 112;
            a3[2] = 0;
            if (v73)
            {
              operator delete(v73);
            }
          }

          else
          {
            v57 = *v53;
            v58 = v53[2];
            v55[1] = v53[1];
            v55[2] = v58;
            *v55 = v57;
            v59 = v53[3];
            v60 = v53[4];
            v61 = v53[6];
            v55[5] = v53[5];
            v55[6] = v61;
            v55[3] = v59;
            v55[4] = v60;
            v62 = v55 + 7;
          }

          a3[1] = v62;
          v82 = gdc::Registry::storage<md::overlayComponents::HasDebugDisplay>(*a2);
          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v82, v51);
        }
      }
    }
  }
}

void gdc::Registry::add<md::components::MeshInstance,md::components::Material,md::components::Visibility,md::components::Collapsible,md::components::IntendedSceneLayer,md::components::CustomRenderState>(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, _BYTE *a5, char *a6, uint64_t *a7)
{
  v14 = gdc::Registry::storage<md::components::MeshInstance>(a1);
  gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(v14, a2, a3);
  v15 = gdc::Registry::storage<md::components::Material>(a1);
  gdc::ComponentStorageWrapper<md::components::Material>::emplace(v15, a2, a4);
  v16 = gdc::Registry::storage<md::components::Visibility>(a1);
  gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v16, a2, a5);
  v17 = gdc::Registry::storage<md::components::Collapsible>(a1);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v17, a2);
  v18 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a1);
  gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v18, a2, a6);
  v19 = gdc::Registry::storage<md::components::CustomRenderState>(a1);

  gdc::ComponentStorageWrapper<md::components::CustomRenderState>::emplace(v19, a2, a7);
}

void gdc::Registry::add<md::components::MeshInstance,md::components::Material,md::components::Visibility,md::components::Collapsible,md::components::IntendedSceneLayer>(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, _BYTE *a5, char *a6)
{
  v12 = gdc::Registry::storage<md::components::MeshInstance>(a1);
  gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(v12, a2, a3);
  v13 = gdc::Registry::storage<md::components::Material>(a1);
  gdc::ComponentStorageWrapper<md::components::Material>::emplace(v13, a2, a4);
  v14 = gdc::Registry::storage<md::components::Visibility>(a1);
  gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v14, a2, a5);
  v15 = gdc::Registry::storage<md::components::Collapsible>(a1);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v15, a2);
  v16 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a1);

  gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v16, a2, a6);
}

uint64_t md::DrapingLogic::_cleanUpStaleDrapingTasks(gdc::Registry *,md::SceneContext const&)::$_0::operator()(md::SceneContext **a1, unint64_t *a2, unint64_t *a3, int a4)
{
  v5 = a2[1];
  if (!v5)
  {
    return 1;
  }

  v9 = std::__shared_weak_count::lock(v5);
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  v11 = *a2;
  if (!*a2 || (v12 = a3[1]) == 0 || (v13 = std::__shared_weak_count::lock(v12)) == 0)
  {
    v17 = 1;
    goto LABEL_35;
  }

  v14 = v13;
  v15 = *a3;
  if (!*a3)
  {
    v17 = 1;
    goto LABEL_34;
  }

  v16 = md::SceneContext::layerDataInView(*a1, 33);
  v17 = 1;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = v16[1];
  if (!v18)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v19 = *(v18 + 48);
    v20 = *(v18 + 32);
    v21 = v11 < v20;
    if (*(v18 + 48))
    {
      v21 = v19 > 0;
    }

    if (v21)
    {
      goto LABEL_15;
    }

    v22 = v20 < v11;
    v23 = v19 == 0;
    v24 = v19 < 0;
    if (v23)
    {
      v24 = v22;
    }

    if (!v24)
    {
      break;
    }

    v18 += 8;
LABEL_15:
    v18 = *v18;
    if (!v18)
    {
      v17 = 1;
      goto LABEL_33;
    }
  }

  v25 = md::SceneContext::layerDataInView(*a1, a4);
  v17 = 1;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v26 = v25[1];
  if (v26)
  {
    while (1)
    {
      v27 = *(v26 + 48);
      v28 = *(v26 + 32);
      v29 = v15 < v28;
      if (*(v26 + 48))
      {
        v29 = v27 > 0;
      }

      if (!v29)
      {
        v30 = v28 < v15;
        v23 = v27 == 0;
        v31 = v27 < 0;
        if (v23)
        {
          v31 = v30;
        }

        if (!v31)
        {
          v17 = 0;
          break;
        }

        v26 += 8;
      }

      v26 = *v26;
      if (!v26)
      {
        v17 = 1;
        break;
      }
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
LABEL_33:
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
LABEL_34:
  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
LABEL_35:
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  return v17;
}

uint64_t std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,void *>>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[10];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v44 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v44);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v23 = a1[10];
      v24 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v23) >> 4);
      v25 = v24 + 1;
      if ((v24 + 1) > 0x249249249249249)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v26 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v23) >> 4);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x124924924924924)
      {
        v27 = 0x249249249249249;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::components::MeshInstance>>(v27);
      }

      v28 = 112 * v24;
      v29 = *a3;
      v30 = a3[2];
      *(v28 + 16) = a3[1];
      *(v28 + 32) = v30;
      *v28 = v29;
      v31 = a3[3];
      v32 = a3[4];
      v33 = a3[6];
      *(v28 + 80) = a3[5];
      *(v28 + 96) = v33;
      *(v28 + 48) = v31;
      *(v28 + 64) = v32;
      v14 = 112 * v24 + 112;
      v34 = a1[10];
      v35 = a1[11];
      v36 = 112 * v24 + v34 - v35;
      if (v34 != v35)
      {
        v37 = (112 * v24 + v34 - v35);
        do
        {
          v38 = *v34;
          v39 = *(v34 + 2);
          v37[1] = *(v34 + 1);
          v37[2] = v39;
          *v37 = v38;
          v40 = *(v34 + 3);
          v41 = *(v34 + 4);
          v42 = *(v34 + 6);
          v37[5] = *(v34 + 5);
          v37[6] = v42;
          v37[3] = v40;
          v37[4] = v41;
          v34 += 112;
          v37 += 7;
        }

        while (v34 != v35);
        v34 = a1[10];
      }

      a1[10] = v36;
      a1[11] = v14;
      a1[12] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      v9 = *a3;
      v10 = a3[2];
      v7[1] = a3[1];
      v7[2] = v10;
      *v7 = v9;
      v11 = a3[3];
      v12 = a3[4];
      v13 = a3[6];
      v7[5] = a3[5];
      v7[6] = v13;
      v7[3] = v11;
      v7[4] = v12;
      v14 = (v7 + 7);
    }

    a1[11] = v14;
    v21 = a1[31];
    goto LABEL_29;
  }

  v15 = 0;
  v16 = a1[10] + 112 * ((v5 - a1[7]) >> 3);
  v17 = *a3;
  v18 = a3[1];
  *(v16 + 32) = *(a3 + 32);
  *v16 = v17;
  *(v16 + 16) = v18;
  do
  {
    *(v16 + 36 + v15) = *(a3 + v15 + 36);
    v15 += 4;
  }

  while (v15 != 12);
  for (i = 0; i != 12; i += 4)
  {
    *(v16 + 48 + i) = *(a3 + i + 48);
  }

  for (j = 0; j != 48; j += 4)
  {
    *(v16 + 60 + j) = *(a3 + j + 60);
  }

  v21 = a1[31];
  if (v16 == a1[11])
  {
LABEL_29:
    for (k = a1[22]; k; k = *k)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v21, &v44, 1);
    }

    return;
  }

  for (m = a1[16]; m; m = *m)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(m[6], v21, &v44, 1);
  }
}

void gdc::ComponentStorageWrapper<md::components::Material>::emplace(uint64_t *a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v34);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v17 = a1[10];
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v17) >> 3);
      v19 = v18 + 1;
      if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v17) >> 3);
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = 24 * v18;
      v23 = a3[1];
      *v22 = *a3;
      *(v22 + 8) = v23;
      v24 = a3[2];
      *(v22 + 16) = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = (v22 + 24);
      v33 = (v22 + 24);
      v26 = a1[10];
      v25 = a1[11];
      v27 = v22 + v26 - v25;
      if (v25 != v26)
      {
        v28 = a1[10];
        v29 = v27;
        do
        {
          *v29 = *v28;
          *(v29 + 8) = *(v28 + 8);
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
          v28 += 24;
          v29 += 24;
        }

        while (v28 != v25);
        do
        {
          v30 = *(v26 + 16);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v30);
          }

          v26 += 24;
        }

        while (v26 != v25);
      }

      v31 = a1[10];
      a1[10] = v27;
      *(a1 + 11) = v33;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      v9 = a3[1];
      *v7 = *a3;
      v7[1] = v9;
      v10 = a3[2];
      v7[2] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = v7 + 3;
    }

    a1[11] = v11;
    v15 = a1[31];
LABEL_32:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v15, &v34, 1);
    }

    return;
  }

  v12 = a1[10] + 24 * ((v5 - a1[7]) >> 3);
  *v12 = *a3;
  v13 = *(a3 + 1);
  a3[1] = 0;
  a3[2] = 0;
  v14 = *(v12 + 16);
  *(v12 + 8) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = a1[31];
  if (v12 == a1[11])
  {
    goto LABEL_32;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v15, &v34, 1);
  }
}

void gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v21 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v21);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = (v8 - v14);
      v16 = v8 - v14 + 1;
      if (v16 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v14;
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        operator new();
      }

      v19 = v8 - v14;
      *v15 = *a3;
      v9 = v15 + 1;
      memcpy(0, v14, v19);
      a1[10] = 0;
      a1[11] = (v15 + 1);
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 1;
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_19;
  }

  v10 = a1[11];
  v11 = (a1[10] + ((v5 - a1[7]) >> 3));
  *v11 = *a3;
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_19:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v21, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v21, 1);
  }
}

uint64_t gdc::Registry::storage<md::components::Collapsible>(uint64_t a1)
{
  v3 = 0x3FD9D9EF0A6A9A58;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x3FD9D9EF0A6A9A58uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::IntendedSceneLayer>(uint64_t a1)
{
  v3 = 0x8217BEFF5E3814C6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x8217BEFF5E3814C6);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(uint64_t *a1, uint64_t a2, char *a3)
{
  v23 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v23);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = (v8 - v14);
      v16 = v8 - v14 + 1;
      if (v16 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v14;
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        operator new();
      }

      *v15 = *a3;
      v9 = v15 + 1;
      if (v14 != v8)
      {
        v19 = v14;
        v20 = 0;
        do
        {
          v21 = *v19++;
          *v20++ = v21;
        }

        while (v19 != v8);
      }

      a1[10] = 0;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 1;
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_22;
  }

  v10 = a1[11];
  v11 = (a1[10] + ((v5 - a1[7]) >> 3));
  *v11 = *a3;
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_22:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v23, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v23, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 1);
    a1[11] = v8 - 1;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::Collapsible>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::Collapsible>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::Collapsible>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::Visibility>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 1);
    a1[11] = v8 - 1;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::Visibility>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::Visibility>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::Material>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 24 * ((v3 - a1[7]) >> 3));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 16);
    *v6 = *(v7 - 24);
    v9 = *(v7 - 8);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[2];
    v6[1] = v8;
    v6[2] = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 24;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::Material>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::components::Material>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::Material>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::components::Material>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::components::MeshInstance>>(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

BOOL gdc::ComponentStorageWrapper<md::components::MeshInstance>::remove(void *a1, uint64_t a2)
{
  v17 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 112 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = *(v8 - 112);
    v10 = *(v8 - 96);
    *(v6 + 32) = *(v8 - 80);
    *v6 = v9;
    *(v6 + 16) = v10;
    do
    {
      *(v6 + 36 + v7) = *(v8 - 76 + v7);
      v7 += 4;
    }

    while (v7 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(v6 + 48 + i) = *(v8 - 64 + i);
    }

    v12 = 0;
    v13 = v8 - 52;
    do
    {
      *(v6 + 60 + v12) = *(v13 + v12);
      v12 += 4;
    }

    while (v12 != 48);
    a1[11] -= 112;
    v14 = a1[28];
    if (v14)
    {
      v15 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v14[6], v15, &v17, 1);
        v14 = *v14;
      }

      while (v14);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::MeshInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::MeshInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void gdc::ComponentStorageWrapper<md::components::CustomRenderState>::emplace(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v34 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v34);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v17 = a1[10];
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v17) >> 3);
      v19 = v18 + 1;
      if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v17) >> 3);
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = 24 * v18;
      v23 = a3[1];
      *v22 = *a3;
      *(v22 + 8) = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      *(24 * v18 + 0x10) = *(a3 + 16);
      v10 = v22 + 24;
      v33 = (v22 + 24);
      v25 = a1[10];
      v24 = a1[11];
      v26 = v22 + v25 - v24;
      if (v25 != v24)
      {
        v27 = a1[10];
        v28 = v22 + v25 - v24;
        do
        {
          v29 = *(v27 + 8);
          *v28 = *v27;
          *(v28 + 8) = v29;
          if (v29)
          {
            atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
          }

          *(v28 + 16) = *(v27 + 16);
          v27 += 24;
          v28 += 24;
        }

        while (v27 != v24);
        do
        {
          v30 = *(v25 + 8);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v30);
          }

          v25 += 24;
        }

        while (v25 != v24);
      }

      v31 = a1[10];
      a1[10] = v26;
      *(a1 + 11) = v33;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      v9 = a3[1];
      *v7 = *a3;
      *(v7 + 8) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = *(a3 + 16);
      v10 = v7 + 24;
    }

    a1[11] = v10;
    v15 = a1[31];
LABEL_36:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v15, &v34, 1);
    }

    return;
  }

  v11 = a1[10] + 24 * ((v5 - a1[7]) >> 3);
  v13 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(v11 + 8);
  *v11 = v13;
  *(v11 + 8) = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  *(v11 + 16) = *(a3 + 16);
  v15 = a1[31];
  if (v11 == a1[11])
  {
    goto LABEL_36;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v15, &v34, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::CustomRenderState>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 24);
    v8 = *(v7 - 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v6 + 8);
    *v6 = v9;
    *(v6 + 8) = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    *(v6 + 16) = *(v7 - 8);
    v11 = a1[11];
    v12 = *(v11 - 16);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 24;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::CustomRenderState>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::components::CustomRenderState>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::components::CustomRenderState>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 2);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::components::CustomRenderState>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::components::CustomRenderState>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnySsaoIntensity(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 848))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyDryAdjustment(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 824))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyWetAdjustment(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 800))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyColdAdjustment(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 776))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyHotAdjustment(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 752))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyColorRampRGB(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 728))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyGradientMaskFactorRGB(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 704))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyEmissiveFactorRGB(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 680))();
  }

  return result;
}

void md::VectorOverlayMaterial::albedoFactorRGB(md::VectorOverlayMaterial *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 16);
  v7 = *(this + 7);
  v8 = v4;
  *a2 = geo::colorTransform<geo::ReverseGammaCorrection>(geo::reverseSRGBGammaCorrection, &v7);
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = 1;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyAlbedoFactorRGB(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 656))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyAlpha(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 632))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyNoColorCorrection(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 608))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyHideOnCollapse(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 584))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyGradientMaskFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 560))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyBrightnessRemapRange(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 536))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnySaturationRemapRange(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 512))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyAcceptsOverlays(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 488))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyBrightnessFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnySaturationFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 440))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyColorRamp(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 416))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyCastShadow(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 392))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyShininess(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 368))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnySpecularity(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 344))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyOffset(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 320))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyTiling(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 296))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyVisibility(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 272))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyLineWidth(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyZIndex(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t md::VectorOverlayMaterial::albedoFactor@<X0>(md::VectorOverlayMaterial *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *(this + 56);
  result = geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(a2, &v5);
  *(a2 + 16) = 1;
  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyAlbedoFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 200))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyEmissiveFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 176))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyMetallicFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 152))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyRoughnessFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyEmissive(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 104))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyRoughnessMetallic(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyNormal(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyAlbedo(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void md::VectorOverlayMaterial::~VectorOverlayMaterial(md::VectorOverlayMaterial *this)
{
  gms::Material<ggl::Texture2D>::~Material(this);

  JUMPOUT(0x1B8C62190);
}

void gms::Material<ggl::Texture2D>::~Material(void *a1)
{
  gms::Material<ggl::Texture2D>::~Material(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::VectorOverlayMaterial>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E1F78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::Registry::storage<md::overlayComponents::HasDebugDisplay>(uint64_t a1)
{
  v3 = 0x6A5EB78DB32E8B87;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6A5EB78DB32E8B87uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::HasDebugDisplay>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::HasDebugDisplay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::HasDebugDisplay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>(uint64_t a1)
{
  v3 = 0x5C60C89240C40C60;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x5C60C89240C40C60uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void *_ZNSt3__110__function6__funcIZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_15OverlaysContextENS2_13CameraContextENS2_19PendingSceneContextENS2_16ElevationContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_14DrapingContextEE3__1NS_9allocatorISM_EEFbRKPNS8_8RegistryEEEclESS_(uint64_t a1, void **a2)
{
  v2 = *a2;
  result = gdc::Context::context<md::components::SharedTransformData>(*a2);
  if (result)
  {
    return (gdc::Context::context<md::overlayComponents::Overlayable>(v2) != 0);
  }

  return result;
}

void *gdc::Context::context<md::overlayComponents::Overlayable>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x41A3BFA74D47A0E8uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x41A3BFA74D47A0E8)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::__destroy_at[abi:nn200100]<md::FoundationOverlayPair,0>(void *a1)
{
  v2 = a1[16];
  if (v2 != a1[18])
  {
    free(v2);
  }

  v3 = a1[2];
  if (v3 != a1[4])
  {

    free(v3);
  }
}

void std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<gdc::LayerDataRequestKey>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t anonymous namespace::_tileListToString(_BYTE *a1, unsigned __int16 **a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v11);
  __p.__r_.__value_.__s.__data_[0] = 91;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, &__p, 1);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      gdc::LayerDataRequestKey::keysInt32Str(&__p, v4);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, p_p, size);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, " ", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 += 56;
    }

    while (v4 != v5);
  }

  __p.__r_.__value_.__s.__data_[0] = 93;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, &__p, 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a1, v11);
  v11[0] = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v8;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v16);
}

void sub_1B2BFA5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a15 = *MEMORY[0x1E69E54D8];
  v35 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a17 = v35;
  a18 = MEMORY[0x1E69E5548] + 16;
  if (a31 < 0)
  {
    operator delete(__p);
  }

  a18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a19);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a34);
  _Unwind_Resume(a1);
}

void std::__tree<gdc::LayerDataRequestKey>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<gdc::LayerDataRequestKey>::destroy(*a1);
    std::__tree<gdc::LayerDataRequestKey>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 != a1[8])
    {
      free(v2);
    }

    operator delete(a1);
  }
}

double md::DrapingLogic::_evaluateCoverageOfTilePairs(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 **a4, unsigned __int16 **a5)
{
  v104 = *MEMORY[0x1E69E9840];
  gdc::Tiled::tileFromLayerDataKey(&v93, *(a2 + 16));
  v71 = a3;
  gdc::Tiled::tileFromLayerDataKey(&v91, *(a3 + 16));
  v8 = *a4;
  v72 = a4;
  v73 = a4[1];
  v9 = 0.0;
  if (*a4 != v73)
  {
    v78 = a1;
    while (1)
    {
      gdc::Tiled::tileFromLayerDataKey(&v89, *(v8 + 2));
      v11 = *a5;
      v10 = a5[1];
      v79 = v10;
      v80 = v8;
      if (*a5 != v10)
      {
        break;
      }

LABEL_80:
      v8 += 56;
      if (v8 == v73)
      {
        goto LABEL_81;
      }
    }

    while (1)
    {
      *&v12 = gdc::Tiled::tileFromLayerDataKey(&v87, *(v11 + 2));
      if (v89.__r_.__value_.__s.__data_[0] == v87.__r_.__value_.__s.__data_[0])
      {
        if (v89.__r_.__value_.__s.__data_[1] >= v87.__r_.__value_.__s.__data_[1])
        {
          if (v89.__r_.__value_.__s.__data_[1] == v87.__r_.__value_.__s.__data_[1] && *(v89.__r_.__value_.__r.__words + 4) == *(v87.__r_.__value_.__r.__words + 4))
          {
LABEL_15:
            v15 = v8[4];
            if (v15 == 33)
            {
              v16 = v11;
            }

            else
            {
              v16 = v8;
            }

            if (v15 == 33)
            {
              v17 = v89.__r_.__value_.__s.__data_[0];
            }

            else
            {
              v17 = v87.__r_.__value_.__s.__data_[0];
            }

            if (v15 == 33)
            {
              v18 = v89.__r_.__value_.__s.__data_[1];
            }

            else
            {
              v18 = v87.__r_.__value_.__s.__data_[1];
            }

            if (v15 == 33)
            {
              v19 = v87.__r_.__value_.__s.__data_[0];
            }

            else
            {
              v19 = v89.__r_.__value_.__s.__data_[0];
            }

            if (v15 == 33)
            {
              v20 = v87.__r_.__value_.__s.__data_[1];
            }

            else
            {
              v20 = v89.__r_.__value_.__s.__data_[1];
            }

            v21 = *(*(a1 + 168) + 24);
            if (v21)
            {
              LODWORD(v12) = 33;
              v13.i32[0] = v8[4];
              v22 = vdup_lane_s16(vceq_s16(v13, *&v12), 0);
              *&v14 = vbsl_s8(v22, *(v89.__r_.__value_.__r.__words + 4), *(v87.__r_.__value_.__r.__words + 4));
              *&v12 = vbsl_s8(v22, *(v87.__r_.__value_.__r.__words + 4), *(v89.__r_.__value_.__r.__words + 4));
              v23 = v16[4];
              v24 = v90;
              if (v15 == 33)
              {
                v25 = v88;
              }

              else
              {
                v25 = v90;
              }

              v26 = v87.__r_.__value_.__r.__words[2];
              if (v15 == 33)
              {
                v27 = v87.__r_.__value_.__r.__words[2];
              }

              else
              {
                v27 = v89.__r_.__value_.__r.__words[2];
              }

              if (v15 == 33)
              {
                v26 = v89.__r_.__value_.__r.__words[2];
              }

              else
              {
                v24 = v88;
              }

              v28 = (v18 - 0x61C8864680B583EBLL + ((v17 - 0x61C8864680B583EBLL) << 6) + ((v17 - 0x61C8864680B583EBLL) >> 2)) ^ (v17 - 0x61C8864680B583EBLL);
              v29 = v14;
              v30 = (v14 - 0x61C8864680B583EBLL + (v28 << 6) + (v28 >> 2)) ^ v28;
              v31 = DWORD1(v14);
              v32 = (SDWORD1(v14) - 0x61C8864680B583EBLL + (v30 << 6) + (v30 >> 2)) ^ v30;
              v33 = (v20 - 0x61C8864680B583EBLL + ((v19 - 0x61C8864680B583EBLL) << 6) + ((v19 - 0x61C8864680B583EBLL) >> 2)) ^ (v19 - 0x61C8864680B583EBLL);
              v34 = v12;
              v35 = (v12 - 0x61C8864680B583EBLL + (v33 << 6) + (v33 >> 2)) ^ v33;
              v36 = DWORD1(v12);
              v37 = (SDWORD1(v12) - 0x61C8864680B583EBLL + (v35 << 6) + (v35 >> 2)) ^ v35;
              while (1)
              {
                if (v21[40] == 1)
                {
                  v55 = v32;
                  v69 = v17;
                  v39 = v18;
                  v67 = v23;
                  v75 = v12;
                  v65 = v14;
                  v63 = v24;
                  v61 = v26;
                  v57 = v31;
                  v59 = v29;
                  geo::QuadTile::computeHash(v21 + 16);
                  v32 = v55;
                  v31 = v57;
                  v29 = v59;
                  v26 = v61;
                  v24 = v63;
                  v14 = v65;
                  v12 = v75;
                  v23 = v67;
                  v18 = v39;
                  v17 = v69;
                  v21[40] = 0;
                }

                if (v24)
                {
                  v26 = v32;
                  v24 = 0;
                }

                if (*(v21 + 4) == v26 && v21[16] == v17 && v21[17] == v18 && *(v21 + 5) == v29 && *(v21 + 6) == v31)
                {
                  v38 = *(v21 + 9);
                  if (v38)
                  {
                    break;
                  }
                }

LABEL_62:
                v21 = *v21;
                if (!v21)
                {
                  goto LABEL_77;
                }
              }

              while (1)
              {
                if (v38[40] == 1)
                {
                  v53 = v18;
                  v54 = v32;
                  v68 = v17;
                  v66 = v23;
                  v74 = v12;
                  v64 = v14;
                  v62 = v24;
                  v60 = v26;
                  v56 = v31;
                  v58 = v29;
                  geo::QuadTile::computeHash(v38 + 16);
                  v18 = v53;
                  v32 = v54;
                  v31 = v56;
                  v29 = v58;
                  v26 = v60;
                  v24 = v62;
                  v14 = v64;
                  v12 = v74;
                  v23 = v66;
                  v17 = v68;
                  v38[40] = 0;
                }

                if (v25)
                {
                  v25 = 0;
                  v27 = v37;
                }

                if (*(v38 + 4) == v27 && v38[16] == v19 && v38[17] == v20 && *(v38 + 5) == v34 && *(v38 + 6) == v36 && *(v38 + 24) == v23)
                {
                  break;
                }

                v38 = *v38;
                if (!v38)
                {
                  goto LABEL_62;
                }
              }

              v40 = *(v38 + 9);
              if (!v40)
              {
LABEL_77:
                a1 = v78;
LABEL_78:
                v10 = v79;
                v8 = v80;
                goto LABEL_79;
              }

              v41 = atomic_load(v40);
              a1 = v78;
              if (v41 != 2)
              {
                goto LABEL_78;
              }

              v76 = v12;
              v42 = v23;
              buf[1] = v18;
              v96 = v14;
              buf[0] = v17;
              *&v98[2] = v26;
              LOBYTE(v99) = v24;
              md::DrapingLogic::_dataInStore(&v84, *(*(v78 + 464) + 80), *(*(v78 + 464) + 88), buf, 33);
              buf[1] = v20;
              v96 = v76;
              buf[0] = v19;
              *&v98[2] = v27;
              LOBYTE(v99) = v25;
              md::DrapingLogic::_dataInStore(&__p, *(*(v78 + 464) + 80), *(*(v78 + 464) + 88), buf, v42);
              v10 = v79;
              v8 = v80;
              if (v82)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v82);
              }

              if (v85)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v85);
              }

              v43 = v89.__r_.__value_.__s.__data_[1];
              if (v89.__r_.__value_.__s.__data_[1] <= v94)
              {
                v43 = v94;
              }

              v44 = v87.__r_.__value_.__s.__data_[1];
              if (v87.__r_.__value_.__s.__data_[1] <= v92)
              {
                v44 = v92;
              }

              if (v43 <= v44)
              {
                v43 = v44;
              }

              v9 = COERCE_DOUBLE(0x3FF0000000000000 - ((v43 - v94) << 53)) + v9;
            }

            goto LABEL_79;
          }
        }

        else if (*(v89.__r_.__value_.__r.__words + 4) == __PAIR64__(SLODWORD(v87.__r_.__value_.__r.__words[1]) >> (v87.__r_.__value_.__s.__data_[1] - v89.__r_.__value_.__s.__data_[1]), SHIDWORD(v87.__r_.__value_.__r.__words[0]) >> (v87.__r_.__value_.__s.__data_[1] - v89.__r_.__value_.__s.__data_[1])))
        {
          goto LABEL_15;
        }

        if (v87.__r_.__value_.__s.__data_[1] >= v89.__r_.__value_.__s.__data_[1])
        {
          if (v87.__r_.__value_.__s.__data_[1] == v89.__r_.__value_.__s.__data_[1] && *(v87.__r_.__value_.__r.__words + 4) == *(v89.__r_.__value_.__r.__words + 4))
          {
            goto LABEL_15;
          }
        }

        else if (*(v87.__r_.__value_.__r.__words + 4) == __PAIR64__(SLODWORD(v89.__r_.__value_.__r.__words[1]) >> (v89.__r_.__value_.__s.__data_[1] - v87.__r_.__value_.__s.__data_[1]), SHIDWORD(v89.__r_.__value_.__r.__words[0]) >> (v89.__r_.__value_.__s.__data_[1] - v87.__r_.__value_.__s.__data_[1])))
        {
          goto LABEL_15;
        }
      }

LABEL_79:
      v11 += 56;
      if (v11 == v10)
      {
        goto LABEL_80;
      }
    }
  }

LABEL_81:
  if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
  }

  v45 = GEOGetVectorKitDrapingFallbackLog_log;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    v46 = &v89;
    gdc::LayerDataRequestKey::keysInt32Str(&v89, a2);
    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v46 = v89.__r_.__value_.__r.__words[0];
    }

    gdc::LayerDataRequestKey::keysInt32Str(&v87, v71);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v87;
    }

    else
    {
      v47 = v87.__r_.__value_.__r.__words[0];
    }

    v48 = v86;
    v49 = v84;
    v50 = &v84;
    if (v48 < 0)
    {
      v50 = v49;
    }

    if (v83 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136316162;
    v96 = v46;
    v97 = 2080;
    *v98 = v47;
    *&v98[8] = 2080;
    v99 = v50;
    v100 = 2080;
    v101 = p_p;
    v102 = 2048;
    v103 = v9;
    _os_log_impl(&dword_1B2754000, v45, OS_LOG_TYPE_DEBUG, "evaluate coverage of : %s vs %s.  First Keys = %s.  Second Keys = %s  Area = %f", buf, 0x34u);
    if (v83 < 0)
    {
      operator delete(__p);
    }

    if (v86 < 0)
    {
      operator delete(v84);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }
  }

  return v9;
}

void sub_1B2BFAE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (v49 < 0)
  {
    operator delete(v47);
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

void md::DrapingLogic::_fallbackTilesForHoleTile(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  gdc::Tiled::tileFromLayerDataKey(&v43, *(a3 + 16));
  v8 = 1 << v44;
  v38[0] = v43;
  v38[1] = v44;
  v39 = (v45 % v8 + v8) % v8;
  v40 = (v46 % v8 + v8) % v8;
  v41 = 0;
  v42 = 1;
  v9.n128_f64[0] = gdc::FallbackCollector::start((a2 + 29), v38);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v10 = *(a3 + 8);
  v11 = a2[58];
  v12 = v11[10];
  v13 = v11[11];
  while (v12 != v13)
  {
    if (*v12 == v10)
    {
      if (v12 != v13)
      {
        v14 = *(v12 + 1);
        goto LABEL_8;
      }

      break;
    }

    v12 += 8;
  }

  v14 = 0;
LABEL_8:
  v16 = v11[4];
  v15 = v11[5];
  while (v16 != v15)
  {
    if (*v16 == v10)
    {
      if (v16 != v15)
      {
        v17 = *(v16 + 1);
        goto LABEL_15;
      }

      break;
    }

    v16 += 8;
  }

  v17 = 0;
LABEL_15:
  v18 = (*(*v17 + 96))(v17, v9);
  md::TileAdjustmentHelpers::getFallbackDataForTile(a2 + 42, v10, v38, v14, (a2 + 29));
  *&v27[4] = 0;
  *&v27[8] = 0;
  *v27 = 255;
  v28 = 0;
  if ((v18 & 0x100) != 0)
  {
    v19 = a4;
  }

  else
  {
    v19 = 0;
  }

  v29 = 1;
  gdc::FallbackCollector::collectFallbackData((a2 + 29), &v35, v18 & 1, v19, v27);
  gdc::FallbackCollector::end((a2 + 29), v20);
  std::vector<gdc::LayerDataRequestKey>::reserve(a1, 0xF0F0F0F0F0F0F0F1 * ((v36 - v35) >> 3));
  v21 = v35;
  for (i = v36; v21 != i; v21 += 136)
  {
    v23 = *v21;
    *&v27[4] = *(v21 + 4);
    *v27 = v23;
    v28 = *(v21 + 16);
    v29 = *(v21 + 24);
    gdc::LayerDataKey::LayerDataKey(&v30, v21 + 32);
    v24 = *(v21 + 120);
    v25 = *(v21 + 128);
    v33 = v24;
    v34 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = v33;
    }

    FillRect = grl::IconMetricsRenderResult::getFillRect(v24);
    std::vector<gdc::LayerDataRequestKey>::push_back[abi:nn200100](a1, FillRect);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    if (v31 != v32)
    {
      free(v31);
    }
  }

  *v27 = &v35;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](v27);
}

void sub_1B2BFB114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  a9 = &a26;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<gdc::LayerDataRequestKey>::__insert_with_size[abi:nn200100]<std::__wrap_iter<gdc::LayerDataRequestKey const*>,std::__wrap_iter<gdc::LayerDataRequestKey const*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 4) < a5)
  {
    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 4);
    if (v12 > 0x249249249249249)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x124924924924924)
    {
      v14 = 0x249249249249249;
    }

    else
    {
      v14 = v12;
    }

    v32[4] = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v14);
    }

    v23 = 16 * ((a2 - v11) >> 4);
    v24 = 112 * a5;
    v25 = v23 + 112 * a5;
    v26 = v23;
    do
    {
      v26 = gdc::LayerDataRequestKey::LayerDataRequestKey(v26, v6) + 112;
      v6 += 112;
      v24 -= 112;
    }

    while (v24);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(a2, a1[1], v25);
    v27 = *a1;
    v28 = v25 + a1[1] - a2;
    a1[1] = a2;
    v29 = v23 + v27 - a2;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(v27, a2, v29);
    v30 = *a1;
    *a1 = v29;
    a1[1] = v28;
    v31 = a1[2];
    a1[2] = 0;
    v32[2] = v30;
    v32[3] = v31;
    v32[0] = v30;
    v32[1] = v30;
    std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(v32);
    return;
  }

  v15 = v10 - a2;
  if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 4) >= a5)
  {
    v22 = 112 * a5;
    std::vector<gdc::LayerDataRequestKey>::__move_range(a1, a2, a1[1], a2 + 112 * a5);
    v21 = v22 + v6;
    v20 = v6;
    goto LABEL_18;
  }

  v17 = a1[1];
  if (v15 + a3 != a4)
  {
    v18 = v15 + a3;
    v17 = v10;
    do
    {
      v19 = gdc::LayerDataRequestKey::LayerDataRequestKey(v17, v18);
      v18 += 112;
      v17 = v19 + 112;
    }

    while (v18 != a4);
  }

  a1[1] = v17;
  if (v15 >= 1)
  {
    std::vector<gdc::LayerDataRequestKey>::__move_range(a1, a2, v10, a2 + 112 * a5);
    v20 = v6;
    v21 = v15 + v6;
LABEL_18:

    std::__copy_impl::operator()[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey*>(v20, v21, a2);
  }
}

void std::__tree<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::__map_value_compare<gdc::LayerDataRequestKey,std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::less<gdc::LayerDataRequestKey>,true>,std::allocator<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::__map_value_compare<gdc::LayerDataRequestKey,std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::less<gdc::LayerDataRequestKey>,true>,std::allocator<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>>>::destroy(*a1);
    std::__tree<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::__map_value_compare<gdc::LayerDataRequestKey,std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::less<gdc::LayerDataRequestKey>,true>,std::allocator<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::vector<gdc::LayerDataRequestKey>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::vector<gdc::LayerDataRequestKey>>,0>(uint64_t a1)
{
  v3 = (a1 + 112);
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 32))
  {

    free(v2);
  }
}

__n128 std::vector<gdc::LayerDataRequestKey>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v9 = a2 + v6 - a4;
    v10 = *(a1 + 8);
    do
    {
      v11 = gdc::LayerDataRequestKey::LayerDataRequestKey(v10, v9);
      v9 += 112;
      v10 = v11 + 112;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v10;
  if (v6 != a4)
  {
    v13 = 0;
    v14 = a4 - v6;
    do
    {
      v15 = v6 + v13;
      v16 = v7 + v13;
      *(v15 - 112) = *(v7 + v13 - 112);
      *(v15 - 104) = *(v7 + v13 - 104);
      if (v7 != v6)
      {
        geo::small_vector_base<unsigned char>::copy((v15 - 96), (v16 - 96), (v15 - 64));
      }

      *(v15 - 32) = *(v16 - 32);
      result = *(v16 - 16);
      *(v15 - 16) = result;
      v13 -= 112;
    }

    while (v14 != v13);
  }

  return result;
}

__n128 std::__copy_impl::operator()[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a3 + 48;
    v5 = a1 + 16;
    do
    {
      v6 = v5 - 16;
      *(v4 - 48) = *(v5 - 16);
      *(v4 - 40) = *(v5 - 8);
      if (v4 - 48 != v5 - 16)
      {
        geo::small_vector_base<unsigned char>::copy((v4 - 32), v5, v4);
      }

      *(v4 + 32) = *(v5 + 64);
      result = *(v5 + 80);
      *(v4 + 48) = result;
      v4 += 112;
      v5 += 112;
    }

    while (v6 + 112 != a2);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 112;
    v4 = *(v2 - 96);
    if (v4 == *(v2 - 80))
    {
      v2 -= 112;
    }

    else
    {
      free(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(a3, v6);
      v6 += 112;
      a3 += 112;
    }

    while (v6 != a2);
    do
    {
      v7 = *(v5 + 16);
      if (v7 != *(v5 + 32))
      {
        free(v7);
      }

      v5 += 112;
    }

    while (v5 != a2);
  }
}

void *std::vector<gdc::LayerDataRequestKey>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::__destroy_at[abi:nn200100]<gdc::FallbackData,0>(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[5];
  if (v3 != a1[7])
  {

    free(v3);
  }
}

void md::DrapingLogic::_dataInStore(gdc::LayerDataStore *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int8 *a4, int a5)
{
  v5 = a5;
  while (a2 != a3)
  {
    if (*a2 == a5)
    {
      if (a2 != a3)
      {
        v8 = *(a2 + 1);
        goto LABEL_8;
      }

      break;
    }

    a2 += 8;
  }

  v8 = 0;
LABEL_8:
  gdc::Tiled::mapDataKeyFromTile(v14, 0, a4, a5);
  gdc::LayerDataStore::get(a1, v8, v14);
  if (!*a1)
  {
    gdc::Tiled::mapDataKeyFromTile(&v10, 1u, a4, v5);
    v14[0] = v10;
    v15 = WORD4(v10);
    geo::small_vector_base<unsigned char>::copy(v16, v11, v17);
    v17[2] = v12;
    v17[3] = v13;
    if (v11[0] != v11[2])
    {
      free(v11[0]);
    }

    gdc::LayerDataStore::get(&v10, v8, v14);
    v9 = *(a1 + 1);
    *a1 = v10;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  if (v16[0] != v16[2])
  {
    free(v16[0]);
  }
}

void sub_1B2BFB990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27)
{
  if (a11 != a13)
  {
    free(a11);
  }

  v29 = *(v27 + 8);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  if (a25 != a27)
  {
    free(a25);
  }

  _Unwind_Resume(exception_object);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:nn200100](a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<md::FoundationOverlayPair,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<md::FoundationOverlayPair,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<md::FoundationOverlayPair,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t md::overlayComponents::VectorOverlay::VectorOverlay(uint64_t result, uint64_t *a2, uint64_t a3, void *a4)
{
  v4 = *a2;
  *result = 0;
  *(result + 8) = v4;
  if (v4)
  {
    operator new();
  }

  *a2 = 0;
  v5 = a2[1];
  *(result + 16) = 0;
  *(result + 24) = v5;
  if (v5)
  {
    operator new();
  }

  *(result + 32) = 0;
  a2[1] = 0;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  v6 = a4[1];
  *(result + 72) = *a4;
  *(result + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 88) = a3;
  *(result + 96) = 0;
  return result;
}

void sub_1B2BFBBD4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::emplace_back<md::overlayComponents::VectorOverlay &,md::DrapingStyle>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0xF0F0F0F0F0F0F0F1 * ((v5 - *a1) >> 3);
    if (v7 + 1 > 0x1E1E1E1E1E1E1E1)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0xF0F0F0F0F0F0F0)
    {
      v10 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>(v10);
    }

    v11[0] = 0;
    v11[1] = 136 * v7;
    v11[3] = 0;
    std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::construct[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,md::overlayComponents::VectorOverlay &,md::DrapingStyle,void,0>(136 * v7, a2, a3);
    v11[2] = 136 * v7 + 136;
    std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::__swap_out_circular_buffer(a1, v11);
    v6 = a1[1];
    std::__split_buffer<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem> &>::~__split_buffer(v11);
  }

  else
  {
    std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::construct[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,md::overlayComponents::VectorOverlay &,md::DrapingStyle,void,0>(a1[1], a2, a3);
    v6 = v5 + 136;
  }

  a1[1] = v6;
}

void md::overlayComponents::VectorOverlay::~VectorOverlay(md::overlayComponents::VectorOverlay *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void md::PolygonOverlayMeshBuilder::PolygonMeshes::~PolygonMeshes(md::PolygonOverlayMeshBuilder::PolygonMeshes *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    std::default_delete<md::Mesh>::operator()[abi:nn200100](v3);
  }
}

void *std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::reserve(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::VectorOverlay>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 104 * ((v3 - a1[7]) >> 3);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t md::debugString<geo::QuadTile>(_BYTE *a1, unsigned __int8 *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v11);
  v4 = MEMORY[0x1B8C61C80](&v12, *(a2 + 2));
  v17 = 46;
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, &v17, 1);
  v6 = MEMORY[0x1B8C61C80](v5, *(a2 + 1));
  v17 = 46;
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, &v17, 1);
  MEMORY[0x1B8C61C90](v7, a2[1]);
  v8 = *a2;
  if (v8 <= 5)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, off_1E7B58778[v8], qword_1B3420E30[v8]);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a1, v11);
  v11[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v9;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v16);
}

void sub_1B2BFC0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v28 + *(*MEMORY[0x1E69E54D8] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a13);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a28);
  _Unwind_Resume(a1);
}

void *std::vector<md::Mesh>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 112 * ((v3 - a1[7]) >> 3);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t *std::vector<md::Mesh>::emplace_back<md::Mesh const&>(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x199999999999999)
    {
      v13 = 0x333333333333333;
    }

    else
    {
      v13 = v11;
    }

    v26 = v2;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(v13);
    }

    *(&v25 + 1) = 0;
    v14 = *(a2 + 8);
    v15 = 80 * v10;
    *v15 = *a2;
    *(v15 + 8) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 32);
    *(80 * v10 + 0x2E) = *(a2 + 46);
    *(80 * v10 + 0x10) = v16;
    *(80 * v10 + 0x20) = v17;
    v18 = *(a2 + 72);
    *(80 * v10 + 0x40) = *(a2 + 64);
    *(80 * v10 + 0x48) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    *&v25 = v15 + 80;
    v19 = v2[1];
    v20 = (v15 + *v2 - v19);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::Mesh>,md::Mesh*>(*v2, v19, v20);
    v21 = *v2;
    *v2 = v20;
    v22 = v2[2];
    v23 = v25;
    *(v2 + 1) = v25;
    *&v25 = v21;
    *(&v25 + 1) = v22;
    v24[0] = v21;
    v24[1] = v21;
    result = std::__split_buffer<md::Mesh>::~__split_buffer(v24);
    v9 = v23;
  }

  else
  {
    v5 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    *(v3 + 46) = *(a2 + 46);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    v8 = *(a2 + 72);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 72) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v3 + 80;
  }

  v2[1] = v9;
  return result;
}

void *std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0xF0F0F0F0F0F0F0F1 * ((v2 - *a2) >> 3);
    if (v3 < 0x1E1E1E1E1E1E1E2)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>(v3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::vector<md::Mesh>::__init_with_size[abi:nn200100]<md::Mesh*,md::Mesh*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

uint64_t md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0::~$_0(uint64_t a1)
{
  v6 = (a1 + 144);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100]((a1 + 120));
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 80;
        std::__destroy_at[abi:nn200100]<md::Mesh,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 17;
        std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::destroy[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,void,0>(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::destroy[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,void,0>(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[6];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a1[4];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a1[2];
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void std::__destroy_at[abi:nn200100]<md::Mesh,0>(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__function::__func<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0>,void ()(void)>::operator()(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[5];
      if (!v5 || (v6 = atomic_load(v5), v6 == 3))
      {
LABEL_52:
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
        return;
      }

      v7 = *(v5 + 32);
      v35 = a1[5];
      v34 = v4;
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v33 = v8;
          v5 = v35;
          v9 = *(v35 + 24) != 0;
        }

        else
        {
          v9 = 0;
          v33 = 0;
          v5 = v35;
        }
      }

      else
      {
        v9 = 0;
        v33 = 0;
      }

      v10 = *(v5 + 48);
      if (!v10 || (v11 = std::__shared_weak_count::lock(v10)) == 0)
      {
LABEL_50:
        v4 = v34;
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v33);
        }

        goto LABEL_52;
      }

      if (*(v35 + 40))
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
LABEL_49:
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        goto LABEL_50;
      }

      v32 = v11;
      atomic_store(1u, v35);
      v13 = +[VKSharedResourcesManager sharedResources];
      (*(*[v13 gglDevice] + 24))(&v36);

      v14 = a1[4];
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
      }

      else
      {
        v15 = 0;
      }

      v16 = 0xFCFCFCFCFCFCFCFDLL * ((a1[17] - a1[16]) >> 3) * ((a1[20] - a1[19]) >> 4);
      v17 = v35;
      v18 = *(v35 + 112);
      v19 = *(v35 + 120);
      v20 = 0xCCCCCCCCCCCCCCCDLL * (&v19[-v18] >> 4);
      v21 = v16 - v20;
      if (v16 <= v20)
      {
        if (v16 >= v20)
        {
          v25 = *(v35 + 120);
          v17 = v35;
LABEL_36:
          if (v25 == *(v17 + 112))
          {
            atomic_store(2u, v17);
            v27 = v15;
          }

          else
          {
            if (a1[20] != a1[19])
            {
              operator new();
            }

            atomic_store(2u, v35);
            v26 = a1[2];
            v27 = v15;
            if (v26)
            {
              v28 = std::__shared_weak_count::lock(v26);
              if (v28)
              {
                v29 = v28;
                v30 = a1[1];
                if (v30)
                {
                  v31 = *v30;
                  if (*v30)
                  {
                    v37[0] = 10;
                    md::MapEngine::setNeedsTick(v31, v37);
                  }
                }

                std::__shared_weak_count::__release_shared[abi:nn200100](v29);
              }
            }
          }

          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v27);
          }

          ggl::Loader::~Loader(&v36);
          v11 = v32;
          goto LABEL_49;
        }

        v25 = (v18 + 0xF0F0F0F0F0F0F10 * ((a1[17] - a1[16]) >> 3) * ((a1[20] - a1[19]) >> 4));
        while (v19 != v25)
        {
          v19 -= 80;
          std::allocator_traits<std::allocator<md::ClientDrapedMeshes>>::destroy[abi:nn200100]<md::ClientDrapedMeshes,void,0>(v19);
        }

        v17 = v35;
      }

      else
      {
        v22 = *(v35 + 128);
        if (0xCCCCCCCCCCCCCCCDLL * ((v22 - v19) >> 4) < v21)
        {
          if (v16 <= 0x333333333333333)
          {
            v23 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v18) >> 4);
            if (2 * v23 > v16)
            {
              v16 = 2 * v23;
            }

            if (v23 >= 0x199999999999999)
            {
              v24 = 0x333333333333333;
            }

            else
            {
              v24 = v16;
            }

            if (v24 <= 0x333333333333333)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(v19, 80 * ((80 * v21 - 80) / 0x50) + 80);
        v25 = &v19[80 * ((80 * v21 - 80) / 0x50) + 80];
      }

      *(v17 + 120) = v25;
      goto LABEL_36;
    }
  }
}

void sub_1B2BFF26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59);
  }

  ggl::Loader::~Loader(&a59);
  std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  _Unwind_Resume(a1);
}

void sub_1B2BFF668()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v0);
  }

  JUMPOUT(0x1B2BFF61CLL);
}

void sub_1B2BFF67C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v0);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  if (!v1)
  {
    JUMPOUT(0x1B2BFF69CLL);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  JUMPOUT(0x1B2BFF6C4);
}

void std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__tree_node<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 24))
  {
    v6 = *a1;
    v8 = (a1 + 8);
    v7 = *(a1 + 8);
    *a1 = a1 + 8;
    *(v7 + 16) = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    if (!v9)
    {
      v12 = 0;
LABEL_34:
      std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::destroy(v12);
      goto LABEL_35;
    }

    v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v9);
    if (a2 == a3)
    {
      v11 = v9;
    }

    else
    {
      v13 = a2;
      do
      {
        v11 = v10;
        v14 = v13[5];
        v9[4] = v13[4];
        v15 = v13[6];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v16 = v9[6];
        v9[5] = v14;
        v9[6] = v15;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }

        v17 = *v8;
        v18 = (a1 + 8);
        v19 = (a1 + 8);
        if (*v8)
        {
          do
          {
            while (1)
            {
              v18 = v17;
              if (v9[4] >= v17[4])
              {
                break;
              }

              v17 = *v17;
              v19 = v18;
              if (!*v18)
              {
                goto LABEL_20;
              }
            }

            v17 = v17[1];
          }

          while (v17);
          v19 = v18 + 1;
        }

LABEL_20:
        std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(a1, v18, v19, v9);
        if (v10)
        {
          v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v10);
        }

        else
        {
          v10 = 0;
        }

        v20 = v13[1];
        if (v20)
        {
          do
          {
            a2 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            a2 = v13[2];
            v21 = *a2 == v13;
            v13 = a2;
          }

          while (!v21);
        }

        if (!v11)
        {
          break;
        }

        v9 = v11;
        v13 = a2;
      }

      while (a2 != a3);
    }

    std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::destroy(v11);
    if (v10)
    {
      for (i = v10[2]; i; i = i[2])
      {
        v10 = i;
      }

      v12 = v10;
      goto LABEL_34;
    }
  }

LABEL_35:
  if (a2 != a3)
  {
    do
    {
      std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__construct_node<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>> const&>(&v28, a1, a2 + 4);
      v23 = *(a1 + 8);
      v24 = (a1 + 8);
      v25 = (a1 + 8);
      if (v23)
      {
        do
        {
          while (1)
          {
            v24 = v23;
            if (v28[4] >= v23[4])
            {
              break;
            }

            v23 = *v23;
            v25 = v24;
            if (!*v24)
            {
              goto LABEL_42;
            }
          }

          v23 = v23[1];
        }

        while (v23);
        v25 = v24 + 1;
      }

LABEL_42:
      std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(a1, v24, v25, v28);
      v26 = a2[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = a2[2];
          v21 = *v27 == a2;
          a2 = v27;
        }

        while (!v21);
      }

      a2 = v27;
    }

    while (v27 != a3);
  }
}

void *std::vector<unsigned short>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_2,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_2>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v8, **(a1 + 8), 0, (*(*(a1 + 16) + 8) - **(a1 + 16)) >> 1, 1, 1, *a2);
  v3 = **(a1 + 16);
  v4 = *(*(a1 + 16) + 8) - v3;
  if (v4)
  {
    v5 = v4 >> 1;
    v6 = v8[5];
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v7 = *v3++;
      *v6++ = v7;
      --v5;
    }

    while (v5);
  }

  ggl::BufferMemory::~BufferMemory(v8);
}

__n128 std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_2,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_2>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E27F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<ggl::IndexData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D2C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v36, *(a1 + 104), 0, *(a1 + 136), 0, *a2);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v34, *(a1 + 120), 0, *(a1 + 136), 1, v3);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v32, *(a1 + 24), 0, *(a1 + 144), 0, 1, v3);
  if (*(a1 + 144) >= 3uLL)
  {
    v7 = 0;
    v8 = *(a1 + 144) / 3uLL;
    do
    {
      v31 = *(v33 + v7);
      v30 = *(v33 + v7 + 2);
      v9 = v30;
      v29 = *(v33 + v7 + 4);
      v10 = v29;
      v11 = (v37 + 16 * v31);
      v12 = (v37 + 16 * v30);
      v13 = (v37 + 16 * v29);
      v14 = *(a1 + 8);
      v4.i16[0] = *(a1 + 152);
      v15 = v4.u32[0];
      v4.i16[0] = v14[2];
      v16.f32[0] = v4.u32[0];
      v5.i16[0] = v14[1];
      *v6.i32 = v5.u32[0];
      v5.i16[0] = v14[3];
      v16.f32[1] = (*v6.i32 + -1.0) - v5.u32[0];
      v17 = vdiv_f32(vmul_n_f32(v16, v15), vdup_lane_s32(v6, 0));
      v4 = vmul_n_f32(vsub_f32(*v11, v17), *v6.i32);
      v5 = vmul_n_f32(vsub_f32(*v12, v17), *v6.i32);
      v6 = vmul_n_f32(vsub_f32(*v13, v17), *v6.i32);
      *v18.f32 = v4;
      *&v18.u32[2] = v4;
      v19.i64[1] = 0;
      v19.f32[0] = v15;
      v19.f32[1] = v15;
      v20.i32[0] = vmovn_s32(vcgtq_f32(v18, v19.u64[0])).u32[0];
      v20.i32[1] = vmovn_s32(vcgtq_f32(*&v19, v18)).i32[1];
      if ((vmaxv_u16(vcltz_s16(vshl_n_s16(v20, 0xFuLL))) & 1) == 0 || (*v21.f32 = v5, *&v21.u32[2] = v5, v22.i32[0] = vmovn_s32(vcgtq_f32(v21, v19)).u32[0], v22.i32[1] = vmovn_s32(vcgtq_f32(v19, v21)).i32[1], (vmaxv_u16(vcltz_s16(vshl_n_s16(v22, 0xFuLL))) & 1) == 0) || (*v23.f32 = v6, *&v23.u32[2] = v6, v24.i32[0] = vmovn_s32(vcgtq_f32(v23, v19)).u32[0], v24.i32[1] = vmovn_s32(vcgtq_f32(v19, v23)).i32[1], (vmaxv_u16(vcltz_s16(vshl_n_s16(v24, 0xFuLL))) & 1) == 0))
      {
        v25 = v35;
        v26 = v35 + 16 * v31;
        *v26 = *v11;
        *(v26 + 4) = v11->i32[1];
        *(v26 + 8) = v11[1].i16[0];
        *(v26 + 10) = v11[1].i16[1];
        *(v26 + 12) = v11[1].i32[1];
        v27 = v25 + 16 * v9;
        *v27 = v12->i32[0];
        *(v27 + 4) = v12->i32[1];
        *(v27 + 8) = v12[1].i16[0];
        *(v27 + 10) = v12[1].i16[1];
        *(v27 + 12) = v12[1].i32[1];
        v28 = v25 + 16 * v10;
        *v28 = v13->i32[0];
        *(v28 + 4) = v13->i32[1];
        *(v28 + 8) = v13[1].i16[0];
        *(v28 + 10) = v13[1].i16[1];
        *(v28 + 12) = v13[1].i32[1];
        *v26 = v4;
        *v27 = v5;
        *v28 = v6;
        std::vector<unsigned short>::push_back[abi:nn200100](*(a1 + 16), &v31);
        std::vector<unsigned short>::push_back[abi:nn200100](*(a1 + 16), &v30);
        std::vector<unsigned short>::push_back[abi:nn200100](*(a1 + 16), &v29);
      }

      v7 += 6;
      --v8;
    }

    while (v8);
  }

  ggl::BufferMemory::~BufferMemory(v32);
  ggl::BufferMemory::~BufferMemory(v34);
  ggl::BufferMemory::~BufferMemory(v36);
}

void sub_1B2BFFF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ggl::BufferMemory::~BufferMemory(va);
  ggl::BufferMemory::~BufferMemory(va1);
  ggl::BufferMemory::~BufferMemory((v3 - 96));
  _Unwind_Resume(a1);
}

void std::vector<unsigned short>::push_back[abi:nn200100](uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v12);
    }

    v13 = (2 * v9);
    v14 = *a2;
    v15 = &v13[-(v8 >> 1)];
    *v13 = v14;
    v6 = v13 + 1;
    memcpy(v15, v7, v8);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = __p[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = __p[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  operator delete(__p);
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::destroy(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

__n128 std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E27B0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 64) = 0;
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 96) = 0;
  *(a2 + 76) = *(a1 + 76);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 112);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 128) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 136) = result;
  *(a2 + 154) = 0;
  *(a2 + 158) = 0;
  return result;
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E27B0;
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E27B0;
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__construct_node<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>> const&>(ggl::zone_mallocator *a1, uint64_t a2, void *a3)
{
  v5 = a2 + 16;
  v6 = ggl::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,void *>>(v6);
  *a1 = result;
  *(a1 + 1) = v5;
  *(a1 + 2) = 1;
  v8 = a3[1];
  result[4] = *a3;
  result[5] = v8;
  v9 = a3[2];
  result[6] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x38uLL, 0x1020040276B7DC0uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void geo::read_write_lock::logFailure(geo::read_write_lock *this, uint64_t a2, const char *a3)
{
  v4 = this;
  v10 = *MEMORY[0x1E69E9840];
  {
    geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
  }

  v5 = geo::read_write_lock::logFailure(int,char const*)::log;
  if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315394;
    v7 = a2;
    v8 = 1024;
    v9 = v4;
    _os_log_fault_impl(&dword_1B2754000, v5, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &v6, 0x12u);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<ggl::VertexData>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<ggl::VertexData>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v13, *(a1 + 16), 0, *(a1 + 48), 0, *a2);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v12, *(a1 + 32), 0, *(a1 + 48), 1, v3);
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = v12[5] + 8;
    v9 = v13[5] + 8;
    do
    {
      *(v8 - 8) = *(v9 - 8);
      *(v8 - 4) = *(v9 - 4);
      *v8 = *v9;
      *(v8 + 2) = *(v9 + 2);
      v10 = *(v9 + 4);
      *(v8 + 4) = v10;
      LOWORD(v10) = *(a1 + 56);
      v11 = v7[1];
      *v4.i32 = v11;
      v5.i16[0] = v7[2];
      v5.f32[0] = v5.u32[0];
      v5.f32[1] = (~v7[3] + v11);
      v4 = vdup_lane_s32(v4, 0);
      *(v8 - 8) = vdiv_f32(vmla_n_f32(*(v9 - 8), v5, v10), v4);
      v8 += 16;
      v9 += 16;
      --v6;
    }

    while (v6);
  }

  ggl::BufferMemory::~BufferMemory(v12);
  ggl::BufferMemory::~BufferMemory(v13);
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E2768;
  *(a2 + 8) = v2;
  v3 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 48);
  *(a2 + 56) = *(result + 56);
  *(a2 + 48) = v5;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2768;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2768;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E26E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v13, a1[1], 0, a1[5], 0, *a2);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v12, a1[3], 0, a1[5], 1, v3);
  v5 = a1[5];
  if (v5)
  {
    v6 = a1[8];
    v7 = (v13[5] + 6);
    v8 = v12[5] + 8;
    do
    {
      v9 = *(v6 + 4 * ((v7[2] >> 15) ^ 1u));
      LOWORD(v4) = *(v7 - 3);
      *&v10 = *(v7 - 1);
      v4 = LODWORD(v4) + (v9 * *&v10);
      LOWORD(v10) = *(v7 - 2);
      v11 = *v7;
      *(v8 - 8) = v4;
      *(v8 - 4) = v10 + (v9 * v11);
      *v8 = v7[1];
      *(v8 + 2) = v7[2];
      *(v8 + 4) = *(v7 + 3);
      v7 += 10;
      v8 += 16;
      --v5;
    }

    while (v5);
  }

  ggl::BufferMemory::~BufferMemory(v12);
  ggl::BufferMemory::~BufferMemory(v13);
}

void std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  operator delete(__p);
}

void std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void *std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F29E2720;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = result[6];
  a2[5] = result[5];
  a2[6] = v5;
  v6 = result[7];
  a2[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a2[8] = result[8];
  return result;
}

void std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2720;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2720;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return a1;
}

void *std::__function::__value_func<gm::Matrix<float,2,1> ()(ZDiffParams,gm::Matrix<float,2,1>,float)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<gm::Matrix<float,2,1> ()(ZDiffParams,gm::Matrix<float,2,1>,float)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v14, *(a1 + 40), 0, *(a1 + 56), 1, *a2);
  if (*(a1 + 56))
  {
    v3 = 0;
    v4 = 0;
    v5 = v15;
    do
    {
      v6 = *(a1 + 24);
      v7 = *(a1 + 64);
      v8 = *(v5 + v3);
      v18 = **(a1 + 32);
      v17 = v8;
      v16 = v7;
      v9 = *(v6 + 24);
      if (!v9)
      {
        v13 = std::__throw_bad_function_call[abi:nn200100]();
        ggl::BufferMemory::~BufferMemory(v14);
        _Unwind_Resume(v13);
      }

      v10 = (*(*v9 + 48))(v9, &v18, &v17, &v16);
      v5 = v15;
      v11 = v15 + v3;
      *v11 = v10;
      *(v11 + 4) = v12;
      ++v4;
      v3 += 16;
    }

    while (v4 < *(a1 + 56));
  }

  ggl::BufferMemory::~BufferMemory(v14);
}

void *ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ggl::BufferMemory::BufferMemory(a1);
  ggl::ResourceAccessor::accessIndexData(v13, a6, a2, a3, a4, a5, 1);
  ggl::BufferMemory::operator=(a1, v13);
  ggl::BufferMemory::~BufferMemory(v13);
  return a1;
}

void std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F29E26A0;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v4;
  return result;
}

void std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E26A0;
  v1 = a1[6];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E26A0;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

float32x2_t convertLowToHighZTileSpace(_WORD *a1, float32x2_t *a2, float a3, float a4, double a5, float a6)
{
  LOWORD(a4) = a1[2];
  v6.f32[0] = LODWORD(a4);
  LOWORD(a5) = a1[1];
  *&a5 = LODWORD(a5);
  LOWORD(a6) = a1[3];
  v6.f32[1] = (*&a5 + -1.0) - LODWORD(a6);
  return vmul_n_f32(vsub_f32(*a2, vdiv_f32(vmul_n_f32(v6, a3), vdup_lane_s32(*&a5, 0))), *&a5);
}

uint64_t std::__function::__func<gm::Matrix<float,2,1> (*)(ZDiffParams const&,gm::Matrix<float,2,1> const&,float),std::allocator<gm::Matrix<float,2,1> (*)(ZDiffParams const&,gm::Matrix<float,2,1> const&,float)>,gm::Matrix<float,2,1> ()(ZDiffParams,gm::Matrix<float,2,1>,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E2658;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<ggl::DaVinci::TexturedCompressedDrapingMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E25A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(void *a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v17, a1[2], 0, a1[4], 1, *a2);
  v4 = a1[1];
  if (v4[61] == 1)
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v15, **(*v4 + 64), 0, a1[4], 0, v3);
    v10 = a1[4];
    if (v10)
    {
      v11 = (v18 + 8);
      v12 = (v16 + 4);
      do
      {
        v13 = *(v12 - 1) * 3.9001;
        *(v11 - 2) = *(v12 - 2) * 3.9001;
        *(v11 - 1) = v13;
        v14 = *v12;
        v12 += 2;
        *v11 = v14;
        v11 += 4;
        --v10;
      }

      while (v10);
    }

    goto LABEL_10;
  }

  if (!v4[61])
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v15, **(*v4 + 64), 0, a1[4], 0, 1, v3);
    v5 = a1[4];
    if (v5)
    {
      v6 = (v18 + 8);
      v7 = (v16 + 4);
      do
      {
        v8 = *(v7 - 1) * 3.9001;
        *(v6 - 2) = *(v7 - 2) * 3.9001;
        *(v6 - 1) = v8;
        v9 = *v7;
        v7 += 2;
        *v6 = v9;
        v6 += 4;
        --v5;
      }

      while (v5);
    }

LABEL_10:
    ggl::BufferMemory::~BufferMemory(v15);
  }

  ggl::BufferMemory::~BufferMemory(v17);
}

void std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void *std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F29E2558;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a2[4] = result[4];
  return result;
}

void std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2558;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2558;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedDrapingVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedDrapingVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedDrapingVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Mesh::~Mesh(ggl::Mesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

uint64_t ggl::Mesh::Mesh(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &unk_1F2A5DAD0;
  *(a1 + 8) = v4;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 16) = &unk_1F2A5D1D8;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v7;
  *a1 = &unk_1F2A5D0F8;
  *(a1 + 16) = &unk_1F2A5D118;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = *(a2 + 88);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  if (v9 != v8)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 64), (v9 - v8) >> 4);
    v10 = *(a1 + 72);
    do
    {
      v11 = *(v8 + 1);
      *v10 = *v8;
      v10[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v8 += 16;
      v10 += 2;
    }

    while (v8 != v9);
    *(a1 + 72) = v10;
  }

  v12 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v13 = (a1 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = 0;
  *(a1 + 112) = a1 + 120;
  v14 = *(a2 + 112);
  v15 = (a2 + 120);
  if (v14 != (a2 + 120))
  {
    do
    {
      v16 = *v13;
      v17 = (a1 + 120);
      if (*(a1 + 112) == v13)
      {
        goto LABEL_18;
      }

      v18 = *v13;
      v19 = (a1 + 120);
      if (v16)
      {
        do
        {
          v17 = v18;
          v18 = v18[1];
        }

        while (v18);
      }

      else
      {
        do
        {
          v17 = v19[2];
          v20 = *v17 == v19;
          v19 = v17;
        }

        while (v20);
      }

      v21 = v14[4];
      if (v17[4] < v21)
      {
LABEL_18:
        if (v16)
        {
          v22 = v17;
        }

        else
        {
          v22 = (a1 + 120);
        }

        if (v16)
        {
          v23 = (v17 + 1);
        }

        else
        {
          v23 = (a1 + 120);
        }
      }

      else
      {
        v22 = (a1 + 120);
        v23 = (a1 + 120);
        if (v16)
        {
          v23 = (a1 + 120);
          while (1)
          {
            while (1)
            {
              v22 = v16;
              v26 = v16[4];
              if (v21 >= v26)
              {
                break;
              }

              v16 = *v22;
              v23 = v22;
              if (!*v22)
              {
                goto LABEL_25;
              }
            }

            if (v26 >= v21)
            {
              break;
            }

            v23 = v22 + 1;
            v16 = v22[1];
            if (!v16)
            {
              goto LABEL_25;
            }
          }
        }
      }

      if (!*v23)
      {
LABEL_25:
        std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__construct_node<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>> const&>(&v28, a1 + 112, v14 + 4);
        std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at((a1 + 112), v22, v23, v28);
      }

      v24 = v14[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v14[2];
          v20 = *v25 == v14;
          v14 = v25;
        }

        while (!v20);
      }

      v14 = v25;
    }

    while (v25 != v15);
  }

  return a1;
}

void non-virtual thunk toggl::Draping::FoundationMesh::~FoundationMesh(ggl::Draping::FoundationMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Draping::FoundationMesh::~FoundationMesh(ggl::Draping::FoundationMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(void *a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v27, a1[2], 0, a1[4], 1, *a2);
  v4 = a1[1];
  if (v4[61] == 1)
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v25, **(*v4 + 64), 0, a1[4], 0, v3);
    v15 = a1[4];
    if (v15)
    {
      v16 = a1[5];
      v17 = (v28 + 8);
      v18 = (v26 + 4);
      do
      {
        v19 = *(v18 - 1);
        v20 = v19 * 3.9001;
        v21 = (v19 >> 16) * 3.9001;
        v22 = fminf(v21, v16[1]);
        *v16 = fminf(v20, *v16);
        v16[1] = v22;
        v23 = fmaxf(v16[3], v21);
        v16[2] = fmaxf(v16[2], v20);
        v16[3] = v23;
        *(v17 - 2) = v20;
        *(v17 - 1) = v21;
        v24 = *v18;
        v18 += 2;
        *v17 = v24;
        v17 += 4;
        --v15;
      }

      while (v15);
    }

    goto LABEL_10;
  }

  if (!v4[61])
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v25, **(*v4 + 64), 0, a1[4], 0, 1, v3);
    v5 = a1[4];
    if (v5)
    {
      v6 = a1[5];
      v7 = (v28 + 8);
      v8 = (v26 + 4);
      do
      {
        v9 = *(v8 - 1);
        v10 = v9 * 3.9001;
        v11 = (v9 >> 16) * 3.9001;
        v12 = fminf(v11, v6[1]);
        *v6 = fminf(v10, *v6);
        v6[1] = v12;
        v13 = fmaxf(v6[3], v11);
        v6[2] = fmaxf(v6[2], v10);
        v6[3] = v13;
        *(v7 - 2) = v10;
        *(v7 - 1) = v11;
        v14 = *v8;
        v8 += 2;
        *v7 = v14;
        v7 += 4;
        --v5;
      }

      while (v5);
    }

LABEL_10:
    ggl::BufferMemory::~BufferMemory(v25);
  }

  ggl::BufferMemory::~BufferMemory(v27);
}

void std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = &unk_1F29E2610;
  a2->n128_u64[1] = v2;
  v3 = a1[1].n128_u64[1];
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a2[1].n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = a1[2];
  a2[2] = result;
  return result;
}

void std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2610;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2610;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Draping::FoundationVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Draping::FoundationVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Draping::FoundationVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E25D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::allocator_traits<std::allocator<md::ClientDrapedMeshes>>::destroy[abi:nn200100]<md::ClientDrapedMeshes,void,0>(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (a1 + 56);
  v4 = -64;
  do
  {
    if (*v3 == 1)
    {
      v5 = *(v3 - 2);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }

    v3 -= 32;
    v4 += 32;
  }

  while (v4);
}

void std::__function::__func<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  v5 = (a1 + 152);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100]((a1 + 128));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void std::__function::__func<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v5 = (a1 + 152);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100]((a1 + 128));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 104) = 0;
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::vector[abi:nn200100]((a1 + 120), (a2 + 120));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<md::Mesh>::__init_with_size[abi:nn200100]<md::Mesh*,md::Mesh*>(a1 + 144, *(a2 + 144), *(a2 + 152), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 152) - *(a2 + 144)) >> 4));
  return a1;
}

void sub_1B2C02600(_Unwind_Exception *a1)
{
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100](v1 + 15);
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29E24D8;
  v5 = (a1 + 152);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100]((a1 + 128));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29E24D8;
  v6 = (a1 + 152);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100]((a1 + 128));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>(unint64_t a1)
{
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::Mesh>,md::Mesh*>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      *(v5 + 8) = 0;
      v6 = *(v5 + 16);
      v7 = *(v5 + 32);
      *(a3 + 46) = *(v5 + 46);
      a3[1] = v6;
      a3[2] = v7;
      a3[4] = *(v5 + 64);
      *(v5 + 64) = 0;
      *(v5 + 72) = 0;
      v5 += 80;
      a3 += 5;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::Mesh,0>(v4);
      v4 += 80;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<md::Mesh>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__destroy_at[abi:nn200100]<md::Mesh,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 16) = v7[2];
      v7[1] = 0;
      v7[2] = 0;
      *(v8 + 24) = *(v7 + 3);
      v7[3] = 0;
      v7[4] = 0;
      *(v8 + 40) = *(v7 + 5);
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = *(v7 + 7);
      v7[7] = 0;
      v7[8] = 0;
      *(v8 + 72) = *(v7 + 9);
      v7[9] = 0;
      v7[10] = 0;
      v9 = v7[11];
      *(v8 + 96) = *(v7 + 96);
      *(v8 + 88) = v9;
      v10 = *(v7 + 13);
      *(v8 + 116) = *(v7 + 116);
      *(v8 + 104) = v10;
      v7 += 17;
      v8 += 136;
    }

    while (v7 != v5);
    do
    {
      std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::destroy[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,void,0>(v4);
      v4 += 17;
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

uint64_t std::__split_buffer<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::destroy[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,void,0>((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::default_delete<md::Mesh>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 72);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

__n128 std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::construct[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,md::overlayComponents::VectorOverlay &,md::DrapingStyle,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v8;
  result = *a3;
  *(a1 + 116) = *(a3 + 12);
  *(a1 + 104) = result;
  return result;
}

uint64_t std::__shared_ptr_pointer<ggl::PolylineOverlayRibbon::BaseMesh  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::PolylineOverlayRibbon::BaseMesh  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_pointer<md::Mesh  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DrapingTaskInfo>::__on_zero_shared(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    v3 = a1[18];
    v4 = a1[17];
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        std::allocator_traits<std::allocator<md::ClientDrapedMeshes>>::destroy[abi:nn200100]<md::ClientDrapedMeshes,void,0>(v3);
      }

      while (v3 != v2);
      v4 = a1[17];
    }

    a1[18] = v2;
    operator delete(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    a1[15] = v5;
    operator delete(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = a1[5];
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void std::__shared_ptr_emplace<md::DrapingTaskInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E24A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ___ZL30GEOGetVectorKitDrapingLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "DrapingLogic");
  v1 = GEOGetVectorKitDrapingLogicLog(void)::log;
  GEOGetVectorKitDrapingLogicLog(void)::log = v0;
}

uint64_t gdc::Registry::getOrAdd<gdc::components::RegistryBridgeMap<gdc::Entity>>(uint64_t a1, uint64_t a2)
{
  v4 = gdc::Registry::storage<gdc::components::RegistryBridgeMap<gdc::Entity>>(a1);
  result = gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::get(v4, a2);
  if (result)
  {
    return result;
  }

  v6 = gdc::Registry::storage<gdc::components::RegistryBridgeMap<gdc::Entity>>(a1);
  v33 = &unk_1F2A182F0;
  v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  v37 = a2;
  v7 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v6 + 4, &v37);
  if (v8)
  {
    v10 = v6[11];
    v9 = v6[12];
    if (v10 >= v9)
    {
      v15 = v6[10];
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v15) >> 4);
      if (v16 + 1 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v15) >> 4);
      v18 = 2 * v17;
      if (2 * v17 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x2AAAAAAAAAAAAAALL)
      {
        v19 = 0x555555555555555;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        if (v19 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 48 * v16;
      *v20 = &unk_1F2A182F0;
      *(v20 + 8) = 0u;
      *(v20 + 24) = 0u;
      *(v20 + 40) = 1065353216;
      gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(48 * v16, &v33);
      v21 = v6[10];
      v22 = v6[11];
      v32 = 48 * v16 - (v22 - v21);
      v11 = 48 * v16 + 48;
      if (v22 != v21)
      {
        v23 = 48 * v16 - 16 * ((v22 - v21) >> 4);
        v24 = v6[10];
        v25 = v32;
        do
        {
          *v25 = &unk_1F2A182F0;
          *(v25 + 8) = 0u;
          *(v25 + 24) = 0u;
          *(v25 + 40) = 1065353216;
          gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(v25, v24);
          v24 += 48;
          v25 += 48;
          v23 += 48;
        }

        while (v24 != v22);
        v26 = v21;
        v27 = v21;
        do
        {
          v28 = *v27;
          v27 += 48;
          (*v28)(v21);
          v26 += 48;
          v21 = v27;
        }

        while (v27 != v22);
      }

      v29 = v6[10];
      v6[10] = v32;
      *(v6 + 11) = v11;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v10 = &unk_1F2A182F0;
      *(v10 + 8) = 0u;
      *(v10 + 24) = 0u;
      *(v10 + 40) = 1065353216;
      gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(v10, &v33);
      v11 = v10 + 48;
      v6[11] = v10 + 48;
    }

    v6[11] = v11;
    v13 = v6[31];
  }

  else
  {
    v12 = v6[10] + 48 * ((v7 - v6[7]) >> 3);
    gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(v12, &v33);
    v13 = v6[31];
    if (v12 != v6[11])
    {
      for (i = v6[16]; i; i = *i)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v13, &v37, 1);
      }

      goto LABEL_28;
    }
  }

  for (j = v6[22]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v13, &v37, 1);
  }

LABEL_28:
  gdc::components::RegistryBridgeMap<gdc::Entity>::~RegistryBridgeMap(&v33);
  v31 = gdc::Registry::storage<gdc::components::RegistryBridgeMap<gdc::Entity>>(a1);

  return gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::get(v31, a2);
}

void sub_1B2C031A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  gdc::components::RegistryBridgeMap<gdc::Entity>::~RegistryBridgeMap(va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::CanDisableDraping>(uint64_t a1)
{
  v3 = 0xC0B2E017CC0570FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xC0B2E017CC0570FuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::components::RegistryBridgeMap<gdc::Entity>::entities(void **a1, uint64_t a2, unint64_t a3)
{
  v4 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((a2 + 8), a3);
  if (v4)
  {
    v5 = v4;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    std::vector<gdc::Entity>::reserve(a1, v4[6]);
    v6 = v5[5];
    if (v6)
    {
      v7 = a1[1];
      do
      {
        v8 = v6[3];
        v9 = a1[2];
        if (v7 >= v9)
        {
          v10 = *a1;
          v11 = v7 - *a1;
          v12 = (v11 >> 3) + 1;
          if (v12 >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v13 = v9 - v10;
          if (v13 >> 2 > v12)
          {
            v12 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v14);
          }

          v15 = (8 * (v11 >> 3));
          *v15 = *(v8 + 16);
          v7 = (v15 + 1);
          memcpy(0, v10, v11);
          *a1 = 0;
          a1[2] = 0;
          if (v10)
          {
            operator delete(v10);
          }
        }

        else
        {
          *v7 = *(v8 + 16);
          v7 += 8;
        }

        a1[1] = v7;
        v6 = *v6;
      }

      while (v6);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1B2C03484(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    for (i = a2; i != a3; ++i)
    {
      v6 = *i;
      v7 = gdc::Registry::storage<md::components::QueuedForDestruction<>>(a1);
      gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v7, v6);
      v8 = *i;
      v23[3] = 0xB02BC19BABA3EE9ELL;
      v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB02BC19BABA3EE9ELL);
      if (!v9)
      {
        operator new();
      }

      v10 = v9[3];
      v23[0] = v8;
      v11 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v10 + 4, v23);
      if (v12)
      {
        v13 = v10[11];
        v14 = v10[12];
        if (v13 >= v14)
        {
          v18 = v10[10];
          v19 = v13 - v18 + 1;
          if (v19 < 0)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v20 = v14 - v18;
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            operator new();
          }

          v15 = v13 - v18 + 1;
          memcpy(0, v18, v13 - v18);
          v10[10] = 0;
          v10[11] = v15;
          v10[12] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          v15 = v13 + 1;
        }

        v10[11] = v15;
        v16 = v10[31];
      }

      else
      {
        v16 = v10[31];
        if (v10[10] + ((v11 - v10[7]) >> 3) != v10[11])
        {
          for (j = v10[16]; j; j = *j)
          {
            std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v16, v23, 1);
          }

          continue;
        }
      }

      for (k = v10[22]; k; k = *k)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v16, v23, 1);
      }
    }
  }
}

uint64_t gdc::components::RegistryBridgeMap<gdc::Entity>::hasEntity(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((a1 + 8), a2);
  if (result)
  {
    v5 = *(result + 32);
    if (v5)
    {
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = a3;
        if (*&v5 <= a3)
        {
          v7 = a3 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & a3;
      }

      v8 = *(*(result + 24) + 8 * v7);
      if (v8)
      {
        for (i = *v8; i; i = *i)
        {
          v10 = i[1];
          if (v10 == a3)
          {
            if (__PAIR64__(*(i + 9), *(i + 8)) == __PAIR64__(WORD1(a3), a3) && *(i + 5) == HIDWORD(a3))
            {
              return 1;
            }
          }

          else
          {
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
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t gdc::components::RegistryBridgeMap<gdc::Entity>::nodeForRegistryAndKey(int8x8_t *a1, gdc::Registry *a2, unint64_t *a3)
{
  v4 = 0x9DDFEA08EB382D69 * (((((a2 >> 3) & 0x3FFFFFF) << 6) | 8) ^ (a2 >> 32));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[2];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*&a1[1] + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
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

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  v12 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(v10 + 3, *a3);
  if (!v12)
  {
    gdc::Registry::create(a2);
  }

  return v12[3];
}

void sub_1B2C03DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__split_buffer<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode,std::allocator<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode> &>::~__split_buffer(va1);
  if (v4)
  {
    gdc::components::RegistryBridgeMap<gdc::Entity>::nodeIsBeingDestroyed(v4, va);
  }

  _Unwind_Resume(a1);
}

void gdc::ComponentStorageWrapper<md::components::Material>::emplace<int,std::shared_ptr<gms::Material<ggl::Texture2D>>>(uint64_t *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v6[0] = a3;
  v6[1] = v4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gdc::ComponentStorageWrapper<md::components::Material>::emplace(a1, a2, v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void sub_1B2C03ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<md::overlayComponents::DrapedRasterOverlay>(uint64_t a1)
{
  v3 = 0x1866018A21896929;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1866018A21896929uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<md::overlayComponents::DrapedRasterOverlay>::emplace(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v38 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v38);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v21 = a1[10];
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v21) >> 4);
      v23 = v22 + 1;
      if (v22 + 1 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v21) >> 4);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x2AAAAAAAAAAAAAALL)
      {
        v25 = 0x555555555555555;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        if (v25 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v26 = *(a3 + 1);
      v27 = 48 * v22;
      *v27 = *a3;
      *(v27 + 8) = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      *(48 * v22 + 0x10) = *(a3 + 2);
      *(48 * v22 + 0x15) = *(a3 + 21);
      v28 = *(a3 + 5);
      *(48 * v22 + 0x20) = *(a3 + 4);
      *(48 * v22 + 0x28) = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = (v27 + 48);
      v37 = (v27 + 48);
      v29 = a1[10];
      v30 = a1[11];
      v31 = v27 + v29 - v30;
      if (v30 != v29)
      {
        v32 = a1[10];
        v33 = v31;
        do
        {
          *v33 = *v32;
          *v32 = 0;
          *(v32 + 8) = 0;
          v34 = *(v32 + 16);
          *(v33 + 21) = *(v32 + 21);
          *(v33 + 16) = v34;
          *(v33 + 32) = *(v32 + 32);
          *(v32 + 32) = 0;
          *(v32 + 40) = 0;
          v32 += 48;
          v33 += 48;
        }

        while (v32 != v30);
        do
        {
          std::__destroy_at[abi:nn200100]<md::overlayComponents::DrapedRasterOverlay,0>(v29);
          v29 += 48;
        }

        while (v29 != v30);
      }

      v35 = a1[10];
      a1[10] = v31;
      *(a1 + 11) = v37;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      v9 = *(a3 + 1);
      *v7 = *a3;
      v7[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(a3 + 2);
      *(v7 + 21) = *(a3 + 21);
      v7[2] = v10;
      v11 = *(a3 + 5);
      v7[4] = *(a3 + 4);
      v7[5] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = v7 + 6;
    }

    a1[11] = v12;
    v19 = a1[31];
LABEL_36:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v19, &v38, 1);
    }

    return;
  }

  v13 = a1[10] + 48 * ((v5 - a1[7]) >> 3);
  v14 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v15 = *(v13 + 8);
  *v13 = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  *(v13 + 16) = *(a3 + 4);
  *(v13 + 20) = *(a3 + 5);
  v16 = *(a3 + 6);
  *(v13 + 28) = *(a3 + 28);
  *(v13 + 24) = v16;
  v17 = a3[2];
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  v18 = *(v13 + 40);
  *(v13 + 32) = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = a1[31];
  if (v13 == a1[11])
  {
    goto LABEL_36;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v19, &v38, 1);
  }
}

void std::__destroy_at[abi:nn200100]<md::overlayComponents::DrapedRasterOverlay,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::DrapedRasterOverlay>::remove(void *a1, uint64_t a2)
{
  v19 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 48 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 48);
    v8 = *(v7 - 40);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v6 + 8);
    *v6 = v9;
    *(v6 + 8) = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    *(v6 + 16) = *(v7 - 32);
    *(v6 + 20) = *(v7 - 28);
    v11 = *(v7 - 24);
    *(v6 + 28) = *(v7 - 20);
    *(v6 + 24) = v11;
    v13 = *(v7 - 16);
    v12 = *(v7 - 8);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v6 + 40);
    *(v6 + 32) = v13;
    *(v6 + 40) = v12;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = a1[11] - 48;
    std::__destroy_at[abi:nn200100]<md::overlayComponents::DrapedRasterOverlay,0>(v15);
    a1[11] = v15;
    v16 = a1[28];
    if (v16)
    {
      v17 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v16[6], v17, &v19, 1);
        v16 = *v16;
      }

      while (v16);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::DrapedRasterOverlay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::overlayComponents::DrapedRasterOverlay>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::overlayComponents::DrapedRasterOverlay>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:nn200100]<md::overlayComponents::DrapedRasterOverlay,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::DrapedRasterOverlay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::overlayComponents::DrapedRasterOverlay>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t md::RasterOverlayMaterial::albedoFactor@<X0>(uint64_t a1@<X8>)
{
  v4 = xmmword_1B33AFF00;
  result = geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(a1, &v4);
  *(result + 16) = 1;
  return result;
}

void md::RasterOverlayMaterial::~RasterOverlayMaterial(md::RasterOverlayMaterial *this)
{
  gms::Material<ggl::Texture2D>::~Material(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RasterOverlayMaterial>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E19A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}