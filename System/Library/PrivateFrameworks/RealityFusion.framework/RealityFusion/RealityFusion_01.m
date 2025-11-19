void sub_2617DAD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, char a40)
{
  if (a40 == 1)
  {
  }

  _Unwind_Resume(exception_object);
}

void *anonymous namespace::updateEntityFromEnvironmentProbe(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  REAREnvironmentProbeComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    rf::getMessage("The probe entity doesn't have probe component.", __p);
    rf::internal::logAssert(__p);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v14);
  }

  REComponentGetEntity();
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  RETransformComponentSetWorldMatrix4x4F();
  v10 = *(a2 + 96);
  REAREnvironmentProbeComponentSetExtents();
  if (*(a2 + 120) != 1)
  {
    return REAREnvironmentProbeComponentSetTexture();
  }

  v11 = *(a2 + 112);
  __p[0] = REAssetManagerTextureMemoryAssetCreateWithMTLTexture();
  REAREnvironmentProbeComponentSetTexture();
  if (a4)
  {
    v12 = *(a2 + 128);
    REAREnvironmentProbeComponentSetClippingPointLux();
  }

  return RESharedPtr<REAsset>::~RESharedPtr(__p);
}

void sub_2617DAEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::createEntityFromEnvironmentProbe(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = REEntityCreate();
  std::string::basic_string[abi:ne200100]<0>(&v21, "RFAREnvironmentProbeEntity");
  rf::data_flow::RFUUID::string(a2, __p);
  if ((v20 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v8 = v20;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v23 = v9->__r_.__value_.__r.__words[2];
  *v22 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  REEntitySetName();
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  RETransformComponentSetWorldMatrix4x4F();
  REAREnvironmentProbeComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  if (!*(a2 + 24))
  {
    if (*(a2 + 16))
    {
      v18 = *a2;
    }

    else
    {
      v18 = a2;
    }

    *(a2 + 24) = ((*v18 >> 2) + (*v18 << 6) + v18[1] + 2654435769) ^ *v18;
  }

  REAREnvironmentProbeComponentSetIdentifier();
  v15 = *(a2 + 96);
  REAREnvironmentProbeComponentSetExtents();
  REAREnvironmentProbeComponentSetUseAsBackground();
  if (*(a2 + 120) == 1)
  {
    v16 = *(a2 + 112);
    v21.__r_.__value_.__r.__words[0] = REAssetManagerTextureMemoryAssetCreateWithMTLTexture();
    REAREnvironmentProbeComponentSetTexture();
    if (a5)
    {
      v17 = *(a2 + 128);
      REAREnvironmentProbeComponentSetClippingPointLux();
    }

    RESharedPtr<REAsset>::~RESharedPtr(&v21);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_2617DB0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  RESharedPtr<REEntity>::~RESharedPtr(v26);
  _Unwind_Resume(a1);
}

void *std::function<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::function<void ()(rf::data_flow::EnvironmentProbe const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void rf::data_flow::consumer::EnvironmentProbeConsumer::~EnvironmentProbeConsumer(id *this)
{
  rf::data_flow::consumer::EnvironmentProbeConsumer::~EnvironmentProbeConsumer(this);

  JUMPOUT(0x26670D060);
}

{
  *this = &unk_287408138;
  v2 = this + 90;
  std::vector<rf::data_flow::EnvironmentProbe>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::~__hash_table((this + 85));
  v2 = this + 82;
  std::vector<RESharedPtr<REEntity>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 77));
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::~__hash_table((this + 72));
  if (*(this + 560) == 1 && *(this + 536) == 1)
  {
  }

  if (*(this + 400) == 1 && *(this + 376) == 1)
  {
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>>>::~__hash_table((this + 25));
  RESharedPtr<REEntity>::~RESharedPtr(this + 24);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100]((this + 14));
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100]((this + 10));
}

void std::vector<RESharedPtr<REEntity>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = RESharedPtr<REEntity>::~RESharedPtr(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_0>,anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_1>,anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_2> &>(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 32) == 1)
  {
    result = *(a2 + 16);
    v5 = *(a2 + 24);
  }

  else
  {
    *(a2 + 16) = result;
    *(a2 + 24) = v5;
    *(a2 + 32) = 1;
  }

  *a1 = a2;
  a1[1] = result;
  a1[2] = v5;
  a1[3] = a2;
  return result;
}

uint64_t std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_0>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::span<REComponent *,18446744073709551615ul>,anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_0>::__iterator<false>,std::reference_wrapper<anonymous namespace::collectAABBsInScene(REScene *,BOOL)::$_1>,std::identity>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  for (i = a2; i != a4; ++i)
  {
    v7 = *i;
    REComponentGetEntity();
    RETransformComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      RESceneUnderstandingComponentGetComponentType();
      if (!REEntityGetComponentByClass() || RESceneUnderstandingComponentGetSourceType() != 1)
      {
        REProbeClusterExclusionComponentGetComponentType();
        if (!REEntityGetComponentByClass())
        {
          MainBundle = CFBundleGetMainBundle();
          Identifier = CFBundleGetIdentifier(MainBundle);
          applesauce::CF::details::CFString_get_value<true>(Identifier, __s1);
          v10 = 0;
          if (v15 < 0 && __s1[1] == 36)
          {
            v10 = memcmp(__s1[0], "com.apple.AssetViewer.ASVAssetViewer", 0x24uLL) == 0;
          }

          Name = REEntityGetName();
          v12 = !v10 || strncmp("ARQL_", Name, 5uLL) != 0;
          if (v15 < 0)
          {
            operator delete(__s1[0]);
          }

          if (v12)
          {
            break;
          }
        }
      }
    }
  }

  return a1;
}

void sub_2617DB498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<rf::AABB>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<rf::AABB>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<rf::AABB>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
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
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::computeSceneMeshAABBClusterIslands(std::vector<rf::AABB> const&,int,float,float)::$_0 &,rf::AABB*,false>(float32x4_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = 0uLL;
LABEL_2:
  v9 = (a2 - 32);
  v10 = (a2 - 64);
  v11 = (a2 - 96);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v247 = *(a2 - 32);
        v248 = *(a2 - 16);
        v246 = (a2 - 32);
        v249 = vsubq_f32(v248, v247);
        v249.i32[3] = 0;
        v250 = vmaxnmq_f32(v249, 0);
        v251 = vmulq_f32(v250, v250);
        v252 = vsubq_f32(v12[1], *v12);
        v252.i32[3] = 0;
        v253 = vmaxnmq_f32(v252, 0);
        v254 = vmulq_f32(v253, v253);
        *v251.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v251, v251, 8uLL), *&vextq_s8(v254, v254, 8uLL)), vadd_f32(vzip1_s32(*v251.i8, *v254.i8), vzip2_s32(*v251.i8, *v254.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v251.i8, vdup_lane_s32(*v251.i8, 1)).u32[0])
        {
          v462 = *v12;
          v493 = v12[1];
          v255 = v246[1];
          *v12 = *v246;
          v12[1] = v255;
          *v246 = v462;
          v246[1] = v493;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v256 = v12 + 2;
      v271 = v12 + 4;
      v272 = vsubq_f32(v12[3], v12[2]);
      v272.i32[3] = 0;
      v273 = vmaxnmq_f32(v272, 0);
      v274 = vmulq_f32(v273, v273);
      v275 = vsubq_f32(v12[1], *v12);
      v275.i32[3] = 0;
      v276 = vmaxnmq_f32(v275, 0);
      v277 = vmulq_f32(v276, v276);
      v278 = vsubq_f32(v12[5], v12[4]);
      v278.i32[3] = 0;
      v279 = vmaxnmq_f32(v278, 0);
      v280 = vmulq_f32(v279, v279);
      v281 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v280, v280, 8uLL), *&vextq_s8(v274, v274, 8uLL)), vadd_f32(vzip1_s32(*v280.i8, *v274.i8), vzip2_s32(*v280.i8, *v274.i8)))), 0x3F0000003F000000);
      if (v281.f32[1] <= (sqrtf(v277.f32[2] + vaddv_f32(*v277.f32)) * 0.5))
      {
        if (v281.f32[0] > v281.f32[1])
        {
          v377 = *v256;
          v376 = v12[3];
          v378 = v12[5];
          *v256 = *v271;
          v12[3] = v378;
          *v271 = v377;
          v12[5] = v376;
          v379 = vsubq_f32(v12[3], v12[2]);
          v379.i32[3] = 0;
          v380 = vmaxnmq_f32(v379, 0);
          v381 = vmulq_f32(v380, v380);
          v382 = vsubq_f32(v12[1], *v12);
          v382.i32[3] = 0;
          v383 = vmaxnmq_f32(v382, 0);
          v384 = vmulq_f32(v383, v383);
          *v381.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v381, v381, 8uLL), *&vextq_s8(v384, v384, 8uLL)), vadd_f32(vzip1_s32(*v381.i8, *v384.i8), vzip2_s32(*v381.i8, *v384.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(*v381.i8, vdup_lane_s32(*v381.i8, 1)).u8[0])
          {
            v466 = *v12;
            v498 = v12[1];
            v385 = v12[3];
            *v12 = *v256;
            v12[1] = v385;
            *v256 = v466;
            v12[3] = v498;
          }
        }
      }

      else if (v281.f32[0] <= v281.f32[1])
      {
        v468 = *v12;
        v500 = v12[1];
        v412 = v12[3];
        *v12 = *v256;
        v12[1] = v412;
        *v256 = v468;
        v12[3] = v500;
        v413 = vsubq_f32(v12[3], v12[2]);
        v413.i32[3] = 0;
        v414 = vmaxnmq_f32(v413, 0);
        v415 = vmulq_f32(v414, v414);
        if (v281.f32[0] > (sqrtf(v415.f32[2] + vaddv_f32(*v415.f32)) * 0.5))
        {
          v417 = *v256;
          v416 = v12[3];
          v418 = v12[5];
          *v256 = *v271;
          v12[3] = v418;
          *v271 = v417;
          v12[5] = v416;
        }
      }

      else
      {
        v464 = *v12;
        v495 = v12[1];
        v282 = v12[5];
        *v12 = *v271;
        v12[1] = v282;
        *v271 = v464;
        v12[5] = v495;
      }

      v419 = vsubq_f32(*(a2 - 16), *(a2 - 32));
      v419.i32[3] = 0;
      v420 = vmaxnmq_f32(v419, 0);
      v421 = vmulq_f32(v420, v420);
      v422 = vsubq_f32(v12[5], v12[4]);
      v422.i32[3] = 0;
      v423 = vmaxnmq_f32(v422, 0);
      v424 = vmulq_f32(v423, v423);
      *v424.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v421, v421, 8uLL), *&vextq_s8(v424, v424, 8uLL)), vadd_f32(vzip1_s32(*v421.i8, *v424.i8), vzip2_s32(*v421.i8, *v424.i8)))), 0x3F0000003F000000);
      if ((vcgt_f32(*v424.i8, vdup_lane_s32(*v424.i8, 1)).u8[0] & 1) == 0)
      {
        return;
      }

      v425 = *v271;
      v501 = v12[5];
      v426 = *(a2 - 16);
      *v271 = *v9;
      v12[5] = v426;
      *v9 = v425;
      *(a2 - 16) = v501;
      v427 = vsubq_f32(v12[5], v12[4]);
      v427.i32[3] = 0;
      v428 = vmaxnmq_f32(v427, 0);
      v429 = vmulq_f32(v428, v428);
      v430 = vsubq_f32(v12[3], v12[2]);
      v430.i32[3] = 0;
      v431 = vmaxnmq_f32(v430, 0);
      v432 = vmulq_f32(v431, v431);
      *v432.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v429, v429, 8uLL), *&vextq_s8(v432, v432, 8uLL)), vadd_f32(vzip1_s32(*v429.i8, *v432.i8), vzip2_s32(*v429.i8, *v432.i8)))), 0x3F0000003F000000);
      if ((vcgt_f32(*v432.i8, vdup_lane_s32(*v432.i8, 1)).u32[0] & 1) == 0)
      {
        return;
      }

      v434 = *v256;
      v433 = v12[3];
      v435 = v12[5];
      *v256 = *v271;
      v12[3] = v435;
      *v271 = v434;
      v12[5] = v433;
LABEL_183:
      v436 = vsubq_f32(v12[3], v12[2]);
      v436.i32[3] = 0;
      v437 = vmaxnmq_f32(v436, 0);
      v438 = vmulq_f32(v437, v437);
      v439 = vsubq_f32(v12[1], *v12);
      v439.i32[3] = 0;
      v440 = vmaxnmq_f32(v439, 0);
      v441 = vmulq_f32(v440, v440);
      *v438.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v438, v438, 8uLL), *&vextq_s8(v441, v441, 8uLL)), vadd_f32(vzip1_s32(*v438.i8, *v441.i8), vzip2_s32(*v438.i8, *v441.i8)))), 0x3F0000003F000000);
      if (vcgt_f32(*v438.i8, vdup_lane_s32(*v438.i8, 1)).u32[0])
      {
        v469 = *v12;
        v502 = v12[1];
        v442 = v256[1];
        *v12 = *v256;
        v12[1] = v442;
        *v256 = v469;
        v256[1] = v502;
      }

      return;
    }

    if (v13 == 5)
    {

      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      v283 = v12 + 2;
      v285 = v12 == a2 || v283 == a2;
      if (a4)
      {
        if (!v285)
        {
          v286 = 0;
          v287 = v12;
          do
          {
            v289 = v287[1];
            v288 = v287[2];
            v290 = *v287;
            v287 = v283;
            v291 = v283[1];
            v292 = vsubq_f32(v291, v288);
            v292.i32[3] = 0;
            v293 = vmaxnmq_f32(v292, 0);
            v294 = vmulq_f32(v293, v293);
            v295 = vsubq_f32(v289, v290);
            v295.i32[3] = 0;
            v296 = vmaxnmq_f32(v295, 0);
            v297 = vmulq_f32(v296, v296);
            v298 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v294, v294, 8uLL), *&vextq_s8(v297, v297, 8uLL)), vadd_f32(vzip1_s32(*v294.i8, *v297.i8), vzip2_s32(*v294.i8, *v297.i8)))), 0x3F0000003F000000);
            if (vcgt_f32(v298, vdup_lane_s32(v298, 1)).u8[0])
            {
              v299 = v286;
              while (1)
              {
                v300 = (v12 + v299);
                v301 = *(v12 + v299 + 16);
                v300[2] = *(v12 + v299);
                v300[3] = v301;
                if (!v299)
                {
                  break;
                }

                v302 = vsubq_f32(v300[-1], v300[-2]);
                v302.i32[3] = 0;
                v303 = vmaxnmq_f32(v302, 0);
                v304 = vmulq_f32(v303, v303);
                v299 -= 32;
                if (v298.f32[0] <= (sqrtf(v304.f32[2] + vaddv_f32(*v304.f32)) * 0.5))
                {
                  v305 = (v12 + v299 + 32);
                  goto LABEL_129;
                }
              }

              v305 = v12;
LABEL_129:
              *v305 = v288;
              v305[1] = v291;
            }

            v283 = v287 + 2;
            v286 += 32;
          }

          while (&v287[2] != a2);
        }
      }

      else if (!v285)
      {
        do
        {
          v387 = a1[1];
          v386 = a1[2];
          v388 = *a1;
          a1 = v283;
          v389 = v283[1];
          v390 = vsubq_f32(v389, v386);
          v390.i32[3] = 0;
          v391 = vmaxnmq_f32(v390, 0);
          v392 = vmulq_f32(v391, v391);
          v393 = vsubq_f32(v387, v388);
          v393.i32[3] = 0;
          v394 = vmaxnmq_f32(v393, 0);
          v395 = vmulq_f32(v394, v394);
          v396 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v392, v392, 8uLL), *&vextq_s8(v395, v395, 8uLL)), vadd_f32(vzip1_s32(*v392.i8, *v395.i8), vzip2_s32(*v392.i8, *v395.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(v396, vdup_lane_s32(v396, 1)).u8[0])
          {
            v397 = v283;
            do
            {
              v398 = v397[-1];
              *v397 = v397[-2];
              v397[1] = v398;
              v400 = v397[-4];
              v399 = v397[-3];
              v397 -= 2;
              v401 = vsubq_f32(v399, v400);
              v401.i32[3] = 0;
              v402 = vmaxnmq_f32(v401, 0);
              v403 = vmulq_f32(v402, v402);
            }

            while (v396.f32[0] > (sqrtf(v403.f32[2] + vaddv_f32(*v403.f32)) * 0.5));
            *v397 = v386;
            v397[1] = v389;
          }

          v283 += 2;
        }

        while (&a1[2] != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v306 = (v13 - 2) >> 1;
        v307 = v306;
        do
        {
          v308 = v307;
          if (v306 >= v307)
          {
            v309 = (2 * v307) | 1;
            v310 = &v12[2 * v309];
            if (2 * v308 + 2 < v13)
            {
              v311 = vsubq_f32(v310[1], *v310);
              v311.i32[3] = 0;
              v312 = vmaxnmq_f32(v311, 0);
              v313 = vmulq_f32(v312, v312);
              v314 = vsubq_f32(v310[3], v310[2]);
              v314.i32[3] = 0;
              v315 = vmaxnmq_f32(v314, 0);
              v316 = vmulq_f32(v315, v315);
              *v313.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v313, v313, 8uLL), *&vextq_s8(v316, v316, 8uLL)), vadd_f32(vzip1_s32(*v313.i8, *v316.i8), vzip2_s32(*v313.i8, *v316.i8)))), 0x3F0000003F000000);
              if (vcgt_f32(*v313.i8, vdup_lane_s32(*v313.i8, 1)).u8[0])
              {
                v310 += 2;
                v309 = 2 * v308 + 2;
              }
            }

            v317 = &v12[2 * v308];
            v318 = vsubq_f32(v310[1], *v310);
            v318.i32[3] = 0;
            v319 = vmaxnmq_f32(v318, 0);
            v320 = vmulq_f32(v319, v319);
            v322 = *v317;
            v321 = v317[1];
            v323 = vsubq_f32(v321, *v317);
            v323.i32[3] = 0;
            v324 = vmaxnmq_f32(v323, 0);
            v325 = vmulq_f32(v324, v324);
            *v325.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v320, v320, 8uLL), *&vextq_s8(v325, v325, 8uLL)), vadd_f32(vzip1_s32(*v320.i8, *v325.i8), vzip2_s32(*v320.i8, *v325.i8)))), 0x3F0000003F000000);
            v326 = *&v325.i32[1];
            if (*v325.i32 <= *&v325.i32[1])
            {
              do
              {
                v327 = v310;
                v328 = v310[1];
                *v317 = *v310;
                v317[1] = v328;
                if (v306 < v309)
                {
                  break;
                }

                v329 = (2 * v309) | 1;
                v310 = &v12[2 * v329];
                v330 = 2 * v309 + 2;
                if (v330 < v13)
                {
                  v331 = vsubq_f32(v310[1], *v310);
                  v331.i32[3] = 0;
                  v332 = vmaxnmq_f32(v331, 0);
                  v333 = vmulq_f32(v332, v332);
                  v334 = vsubq_f32(v310[3], v310[2]);
                  v334.i32[3] = 0;
                  v335 = vmaxnmq_f32(v334, 0);
                  v336 = vmulq_f32(v335, v335);
                  *v333.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v333, v333, 8uLL), *&vextq_s8(v336, v336, 8uLL)), vadd_f32(vzip1_s32(*v333.i8, *v336.i8), vzip2_s32(*v333.i8, *v336.i8)))), 0x3F0000003F000000);
                  if (vcgt_f32(*v333.i8, vdup_lane_s32(*v333.i8, 1)).u8[0])
                  {
                    v310 += 2;
                    v329 = v330;
                  }
                }

                v337 = vsubq_f32(v310[1], *v310);
                v337.i32[3] = 0;
                v338 = vmaxnmq_f32(v337, 0);
                v339 = vmulq_f32(v338, v338);
                v317 = v327;
                v309 = v329;
              }

              while ((sqrtf(v339.f32[2] + vaddv_f32(*v339.f32)) * 0.5) <= v326);
              *v327 = v322;
              v327[1] = v321;
            }
          }

          v307 = v308 - 1;
        }

        while (v308);
        do
        {
          v340 = 0;
          v465 = *v12;
          v496 = v12[1];
          v341 = v12;
          do
          {
            v342 = &v341[2 * v340];
            v343 = v342 + 2;
            v344 = (2 * v340) | 1;
            v340 = 2 * v340 + 2;
            if (v340 >= v13)
            {
              v340 = v344;
            }

            else
            {
              v346 = v342[4];
              v345 = v342 + 4;
              v347 = vsubq_f32(v345[-1], v345[-2]);
              v347.i32[3] = 0;
              v348 = vmaxnmq_f32(v347, 0);
              v349 = vmulq_f32(v348, v348);
              v350 = vsubq_f32(v345[1], v346);
              v350.i32[3] = 0;
              v351 = vmaxnmq_f32(v350, 0);
              v352 = vmulq_f32(v351, v351);
              *v352.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v349, v349, 8uLL), *&vextq_s8(v352, v352, 8uLL)), vadd_f32(vzip1_s32(*v349.i8, *v352.i8), vzip2_s32(*v349.i8, *v352.i8)))), 0x3F0000003F000000);
              if (vcgt_f32(*v352.i8, vdup_lane_s32(*v352.i8, 1)).u8[0])
              {
                v343 = v345;
              }

              else
              {
                v340 = v344;
              }
            }

            v353 = v343[1];
            *v341 = *v343;
            v341[1] = v353;
            v341 = v343;
          }

          while (v340 <= ((v13 - 2) >> 1));
          a2 -= 32;
          if (v343 == a2)
          {
            *v343 = v465;
            v343[1] = v496;
          }

          else
          {
            v354 = *(a2 + 16);
            *v343 = *a2;
            v343[1] = v354;
            *a2 = v465;
            *(a2 + 16) = v496;
            v355 = (v343 - v12 + 32) >> 5;
            v356 = v355 < 2;
            v357 = v355 - 2;
            if (!v356)
            {
              v358 = v357 >> 1;
              v359 = &v12[2 * v358];
              v360 = vsubq_f32(v359[1], *v359);
              v360.i32[3] = 0;
              v361 = vmaxnmq_f32(v360, 0);
              v362 = vmulq_f32(v361, v361);
              v364 = *v343;
              v363 = v343[1];
              v365 = vsubq_f32(v363, *v343);
              v365.i32[3] = 0;
              v366 = vmaxnmq_f32(v365, 0);
              v367 = vmulq_f32(v366, v366);
              *v367.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v362, v362, 8uLL), *&vextq_s8(v367, v367, 8uLL)), vadd_f32(vzip1_s32(*v362.i8, *v367.i8), vzip2_s32(*v362.i8, *v367.i8)))), 0x3F0000003F000000);
              v368 = *&v367.i32[1];
              if (*v367.i32 > *&v367.i32[1])
              {
                do
                {
                  v369 = v359;
                  v370 = v359[1];
                  *v343 = *v359;
                  v343[1] = v370;
                  if (!v358)
                  {
                    break;
                  }

                  v358 = (v358 - 1) >> 1;
                  v359 = &v12[2 * v358];
                  v371 = vsubq_f32(v359[1], *v359);
                  v371.i32[3] = 0;
                  v372 = vmaxnmq_f32(v371, 0);
                  v373 = vmulq_f32(v372, v372);
                  v343 = v369;
                }

                while ((sqrtf(v373.f32[2] + vaddv_f32(*v373.f32)) * 0.5) > v368);
                *v369 = v364;
                v369[1] = v363;
              }
            }
          }

          v356 = v13-- <= 2;
        }

        while (!v356);
      }

      return;
    }

    v14 = &v12[2 * (v13 >> 1)];
    if (v13 >= 0x81)
    {
      v15 = vsubq_f32(v14[1], *v14);
      v15.i32[3] = 0;
      v16 = vmaxnmq_f32(v15, v8);
      v17 = vmulq_f32(v16, v16);
      v18 = vsubq_f32(v12[1], *v12);
      v18.i32[3] = 0;
      v19 = vmaxnmq_f32(v18, v8);
      v20 = vmulq_f32(v19, v19);
      v21 = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)) * 0.5;
      v22 = vsubq_f32(*(a2 - 16), *(a2 - 32));
      v22.i32[3] = 0;
      v23 = vmaxnmq_f32(v22, v8);
      v24 = vmulq_f32(v23, v23);
      v25 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v17.i8), vzip2_s32(*v24.i8, *v17.i8)))), 0x3F0000003F000000);
      if (v25.f32[1] <= v21)
      {
        if (v25.f32[0] > v25.f32[1])
        {
          v445 = *v14;
          v472 = v14[1];
          v39 = *(a2 - 16);
          *v14 = *v9;
          v14[1] = v39;
          *v9 = v445;
          *(a2 - 16) = v472;
          v40 = vsubq_f32(v14[1], *v14);
          v40.i32[3] = 0;
          v41 = vmaxnmq_f32(v40, v8);
          v42 = vmulq_f32(v41, v41);
          v43 = vsubq_f32(v12[1], *v12);
          v43.i32[3] = 0;
          v44 = vmaxnmq_f32(v43, v8);
          v45 = vmulq_f32(v44, v44);
          *v42.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vadd_f32(vzip1_s32(*v42.i8, *v45.i8), vzip2_s32(*v42.i8, *v45.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(*v42.i8, vdup_lane_s32(*v42.i8, 1)).u8[0])
          {
            v446 = *v12;
            v473 = v12[1];
            v46 = v14[1];
            *v12 = *v14;
            v12[1] = v46;
            *v14 = v446;
            v14[1] = v473;
          }
        }
      }

      else
      {
        if (v25.f32[0] > v25.f32[1])
        {
          v443 = *v12;
          v470 = v12[1];
          v26 = *(a2 - 16);
          *v12 = *v9;
          v12[1] = v26;
          goto LABEL_27;
        }

        v449 = *v12;
        v476 = v12[1];
        v55 = v14[1];
        *v12 = *v14;
        v12[1] = v55;
        *v14 = v449;
        v14[1] = v476;
        v56 = vsubq_f32(*(a2 - 16), *(a2 - 32));
        v56.i32[3] = 0;
        v57 = vmaxnmq_f32(v56, v8);
        v58 = vmulq_f32(v57, v57);
        v59 = vsubq_f32(v14[1], *v14);
        v59.i32[3] = 0;
        v60 = vmaxnmq_f32(v59, v8);
        v61 = vmulq_f32(v60, v60);
        *v58.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v61, v61, 8uLL)), vadd_f32(vzip1_s32(*v58.i8, *v61.i8), vzip2_s32(*v58.i8, *v61.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v58.i8, vdup_lane_s32(*v58.i8, 1)).u8[0])
        {
          v443 = *v14;
          v470 = v14[1];
          v62 = *(a2 - 16);
          *v14 = *v9;
          v14[1] = v62;
LABEL_27:
          *v9 = v443;
          *(a2 - 16) = v470;
        }
      }

      v63 = v12 + 2;
      v64 = v14 - 2;
      v65 = vsubq_f32(v14[-1], v14[-2]);
      v65.i32[3] = 0;
      v66 = vmaxnmq_f32(v65, v8);
      v67 = vmulq_f32(v66, v66);
      v68 = vsubq_f32(v12[3], v12[2]);
      v68.i32[3] = 0;
      v69 = vmaxnmq_f32(v68, v8);
      v70 = vmulq_f32(v69, v69);
      v71 = sqrtf(v70.f32[2] + vaddv_f32(*v70.f32)) * 0.5;
      v72 = vsubq_f32(*(a2 - 48), *(a2 - 64));
      v72.i32[3] = 0;
      v73 = vmaxnmq_f32(v72, v8);
      v74 = vmulq_f32(v73, v73);
      v75 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v74, v74, 8uLL), *&vextq_s8(v67, v67, 8uLL)), vadd_f32(vzip1_s32(*v74.i8, *v67.i8), vzip2_s32(*v74.i8, *v67.i8)))), 0x3F0000003F000000);
      if (v75.f32[1] <= v71)
      {
        if (v75.f32[0] > v75.f32[1])
        {
          v450 = *v64;
          v477 = v14[-1];
          v79 = *(a2 - 48);
          *v64 = *v10;
          v14[-1] = v79;
          *v10 = v450;
          *(a2 - 48) = v477;
          v80 = vsubq_f32(v14[-1], v14[-2]);
          v80.i32[3] = 0;
          v81 = vmaxnmq_f32(v80, v8);
          v82 = vmulq_f32(v81, v81);
          v83 = vsubq_f32(v12[3], v12[2]);
          v83.i32[3] = 0;
          v84 = vmaxnmq_f32(v83, v8);
          v85 = vmulq_f32(v84, v84);
          *v82.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v82, v82, 8uLL), *&vextq_s8(v85, v85, 8uLL)), vadd_f32(vzip1_s32(*v82.i8, *v85.i8), vzip2_s32(*v82.i8, *v85.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(*v82.i8, vdup_lane_s32(*v82.i8, 1)).u8[0])
          {
            v86 = *v63;
            v478 = v12[3];
            v87 = v14[-1];
            *v63 = *v64;
            v12[3] = v87;
            *v64 = v86;
            v14[-1] = v478;
          }
        }
      }

      else
      {
        if (v75.f32[0] > v75.f32[1])
        {
          v76 = *v63;
          v77 = v12[3];
          v78 = *(a2 - 48);
          *v63 = *v10;
          v12[3] = v78;
          goto LABEL_39;
        }

        v96 = *v63;
        v480 = v12[3];
        v97 = v14[-1];
        *v63 = *v64;
        v12[3] = v97;
        *v64 = v96;
        v14[-1] = v480;
        v98 = vsubq_f32(*(a2 - 48), *(a2 - 64));
        v98.i32[3] = 0;
        v99 = vmaxnmq_f32(v98, v8);
        v100 = vmulq_f32(v99, v99);
        v101 = *v64;
        v102 = vsubq_f32(v14[-1], v14[-2]);
        v102.i32[3] = 0;
        v103 = vmaxnmq_f32(v102, v8);
        v104 = vmulq_f32(v103, v103);
        *v100.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v100, v100, 8uLL), *&vextq_s8(v104, v104, 8uLL)), vadd_f32(vzip1_s32(*v100.i8, *v104.i8), vzip2_s32(*v100.i8, *v104.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v100.i8, vdup_lane_s32(*v100.i8, 1)).u8[0])
        {
          v452 = *v64;
          v481 = v14[-1];
          v105 = *(a2 - 48);
          *v64 = *v10;
          v14[-1] = v105;
          v76 = v452;
          v77 = v481;
LABEL_39:
          *v10 = v76;
          *(a2 - 48) = v77;
        }
      }

      v106 = v12 + 4;
      v107 = v14 + 2;
      v108 = vsubq_f32(v14[3], v14[2]);
      v108.i32[3] = 0;
      v109 = vmaxnmq_f32(v108, v8);
      v110 = vmulq_f32(v109, v109);
      v111 = vsubq_f32(v12[5], v12[4]);
      v111.i32[3] = 0;
      v112 = vmaxnmq_f32(v111, v8);
      v113 = vmulq_f32(v112, v112);
      v114 = sqrtf(v113.f32[2] + vaddv_f32(*v113.f32)) * 0.5;
      v115 = vsubq_f32(*(a2 - 80), *(a2 - 96));
      v115.i32[3] = 0;
      v116 = vmaxnmq_f32(v115, v8);
      v117 = vmulq_f32(v116, v116);
      v118 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v110, v110, 8uLL)), vadd_f32(vzip1_s32(*v117.i8, *v110.i8), vzip2_s32(*v117.i8, *v110.i8)))), 0x3F0000003F000000);
      if (v118.f32[1] <= v114)
      {
        if (v118.f32[0] > v118.f32[1])
        {
          v453 = *v107;
          v482 = v14[3];
          v122 = *(a2 - 80);
          *v107 = *v11;
          v14[3] = v122;
          *v11 = v453;
          *(a2 - 80) = v482;
          v123 = vsubq_f32(v14[3], v14[2]);
          v123.i32[3] = 0;
          v124 = vmaxnmq_f32(v123, v8);
          v125 = vmulq_f32(v124, v124);
          v126 = vsubq_f32(v12[5], v12[4]);
          v126.i32[3] = 0;
          v127 = vmaxnmq_f32(v126, v8);
          v128 = vmulq_f32(v127, v127);
          *v125.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v125, v125, 8uLL), *&vextq_s8(v128, v128, 8uLL)), vadd_f32(vzip1_s32(*v125.i8, *v128.i8), vzip2_s32(*v125.i8, *v128.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(*v125.i8, vdup_lane_s32(*v125.i8, 1)).u8[0])
          {
            v129 = *v106;
            v483 = v12[5];
            v130 = v14[3];
            *v106 = *v107;
            v12[5] = v130;
            *v107 = v129;
            v14[3] = v483;
          }
        }
      }

      else
      {
        if (v118.f32[0] > v118.f32[1])
        {
          v119 = *v106;
          v120 = v12[5];
          v121 = *(a2 - 80);
          *v106 = *v11;
          v12[5] = v121;
          goto LABEL_48;
        }

        v131 = *v106;
        v484 = v12[5];
        v132 = v14[3];
        *v106 = *v107;
        v12[5] = v132;
        *v107 = v131;
        v14[3] = v484;
        v133 = vsubq_f32(*(a2 - 80), *(a2 - 96));
        v133.i32[3] = 0;
        v134 = vmaxnmq_f32(v133, v8);
        v135 = vmulq_f32(v134, v134);
        v136 = *v107;
        v137 = vsubq_f32(v14[3], v14[2]);
        v137.i32[3] = 0;
        v138 = vmaxnmq_f32(v137, v8);
        v139 = vmulq_f32(v138, v138);
        *v135.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v135, v135, 8uLL), *&vextq_s8(v139, v139, 8uLL)), vadd_f32(vzip1_s32(*v135.i8, *v139.i8), vzip2_s32(*v135.i8, *v139.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v135.i8, vdup_lane_s32(*v135.i8, 1)).u8[0])
        {
          v454 = *v107;
          v485 = v14[3];
          v140 = *(a2 - 80);
          *v107 = *v11;
          v14[3] = v140;
          v119 = v454;
          v120 = v485;
LABEL_48:
          *v11 = v119;
          *(a2 - 80) = v120;
        }
      }

      v141 = vsubq_f32(v14[1], *v14);
      v141.i32[3] = 0;
      v142 = vmaxnmq_f32(v141, v8);
      v143 = vmulq_f32(v142, v142);
      v144 = *v64;
      v145 = vsubq_f32(v14[-1], v14[-2]);
      v145.i32[3] = 0;
      v146 = vmaxnmq_f32(v145, v8);
      v147 = vmulq_f32(v146, v146);
      v144.f32[0] = sqrtf(v147.f32[2] + vaddv_f32(*v147.f32)) * 0.5;
      v148 = *v107;
      v149 = vsubq_f32(v14[3], v14[2]);
      v149.i32[3] = 0;
      v150 = vmaxnmq_f32(v149, v8);
      v151 = vmulq_f32(v150, v150);
      v152 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v151, v151, 8uLL), *&vextq_s8(v143, v143, 8uLL)), vadd_f32(vzip1_s32(*v151.i8, *v143.i8), vzip2_s32(*v151.i8, *v143.i8)))), 0x3F0000003F000000);
      if (v152.f32[1] <= v144.f32[0])
      {
        if (v152.f32[0] > v152.f32[1])
        {
          v456 = *v14;
          v487 = v14[1];
          v154 = v14[3];
          *v14 = *v107;
          v14[1] = v154;
          *v107 = v456;
          v14[3] = v487;
          v155 = vsubq_f32(v14[1], *v14);
          v155.i32[3] = 0;
          v156 = vmaxnmq_f32(v155, v8);
          v157 = vmulq_f32(v156, v156);
          v158 = *v64;
          v159 = vsubq_f32(v14[-1], v14[-2]);
          v159.i32[3] = 0;
          v160 = vmaxnmq_f32(v159, v8);
          v161 = vmulq_f32(v160, v160);
          *v157.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v157, v157, 8uLL), *&vextq_s8(v161, v161, 8uLL)), vadd_f32(vzip1_s32(*v157.i8, *v161.i8), vzip2_s32(*v157.i8, *v161.i8)))), 0x3F0000003F000000);
          if (vcgt_f32(*v157.i8, vdup_lane_s32(*v157.i8, 1)).u8[0])
          {
            v457 = *v64;
            v488 = v14[-1];
            v162 = v14[1];
            *v64 = *v14;
            v14[-1] = v162;
            *v14 = v457;
            v14[1] = v488;
          }
        }
      }

      else
      {
        if (v152.f32[0] > v152.f32[1])
        {
          v455 = *v64;
          v486 = v14[-1];
          v153 = v14[3];
          *v64 = *v107;
          v14[-1] = v153;
          goto LABEL_57;
        }

        v458 = *v64;
        v489 = v14[-1];
        v163 = v14[1];
        *v64 = *v14;
        v14[-1] = v163;
        *v14 = v458;
        v14[1] = v489;
        v164 = vsubq_f32(v14[3], v14[2]);
        v164.i32[3] = 0;
        v165 = vmaxnmq_f32(v164, v8);
        v166 = vmulq_f32(v165, v165);
        v167 = vsubq_f32(v14[1], *v14);
        v167.i32[3] = 0;
        v168 = vmaxnmq_f32(v167, v8);
        v169 = vmulq_f32(v168, v168);
        *v166.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v166, v166, 8uLL), *&vextq_s8(v169, v169, 8uLL)), vadd_f32(vzip1_s32(*v166.i8, *v169.i8), vzip2_s32(*v166.i8, *v169.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v166.i8, vdup_lane_s32(*v166.i8, 1)).u8[0])
        {
          v455 = *v14;
          v486 = v14[1];
          v170 = v14[3];
          *v14 = *v107;
          v14[1] = v170;
LABEL_57:
          *v107 = v455;
          v14[3] = v486;
        }
      }

      v459 = *v12;
      v490 = v12[1];
      v171 = v14[1];
      *v12 = *v14;
      v12[1] = v171;
      *v14 = v459;
      v14[1] = v490;
      goto LABEL_59;
    }

    v27 = vsubq_f32(v12[1], *v12);
    v27.i32[3] = 0;
    v28 = vmaxnmq_f32(v27, v8);
    v29 = vmulq_f32(v28, v28);
    v30 = vsubq_f32(v14[1], *v14);
    v30.i32[3] = 0;
    v31 = vmaxnmq_f32(v30, v8);
    v32 = vmulq_f32(v31, v31);
    v33 = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32)) * 0.5;
    v34 = vsubq_f32(*(a2 - 16), *(a2 - 32));
    v34.i32[3] = 0;
    v35 = vmaxnmq_f32(v34, v8);
    v36 = vmulq_f32(v35, v35);
    v37 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v29, v29, 8uLL)), vadd_f32(vzip1_s32(*v36.i8, *v29.i8), vzip2_s32(*v36.i8, *v29.i8)))), 0x3F0000003F000000);
    if (v37.f32[1] <= v33)
    {
      if (v37.f32[0] > v37.f32[1])
      {
        v447 = *v12;
        v474 = v12[1];
        v47 = *(a2 - 16);
        *v12 = *v9;
        v12[1] = v47;
        *v9 = v447;
        *(a2 - 16) = v474;
        v48 = vsubq_f32(v12[1], *v12);
        v48.i32[3] = 0;
        v49 = vmaxnmq_f32(v48, v8);
        v50 = vmulq_f32(v49, v49);
        v51 = vsubq_f32(v14[1], *v14);
        v51.i32[3] = 0;
        v52 = vmaxnmq_f32(v51, v8);
        v53 = vmulq_f32(v52, v52);
        *v50.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v53, v53, 8uLL)), vadd_f32(vzip1_s32(*v50.i8, *v53.i8), vzip2_s32(*v50.i8, *v53.i8)))), 0x3F0000003F000000);
        if (vcgt_f32(*v50.i8, vdup_lane_s32(*v50.i8, 1)).u8[0])
        {
          v448 = *v14;
          v475 = v14[1];
          v54 = v12[1];
          *v14 = *v12;
          v14[1] = v54;
          *v12 = v448;
          v12[1] = v475;
        }
      }

      goto LABEL_59;
    }

    if (v37.f32[0] > v37.f32[1])
    {
      v444 = *v14;
      v471 = v14[1];
      v38 = *(a2 - 16);
      *v14 = *v9;
      v14[1] = v38;
LABEL_36:
      *v9 = v444;
      *(a2 - 16) = v471;
      goto LABEL_59;
    }

    v451 = *v14;
    v479 = v14[1];
    v88 = v12[1];
    *v14 = *v12;
    v14[1] = v88;
    *v12 = v451;
    v12[1] = v479;
    v89 = vsubq_f32(*(a2 - 16), *(a2 - 32));
    v89.i32[3] = 0;
    v90 = vmaxnmq_f32(v89, v8);
    v91 = vmulq_f32(v90, v90);
    v92 = vsubq_f32(v12[1], *v12);
    v92.i32[3] = 0;
    v93 = vmaxnmq_f32(v92, v8);
    v94 = vmulq_f32(v93, v93);
    *v91.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v91, v91, 8uLL), *&vextq_s8(v94, v94, 8uLL)), vadd_f32(vzip1_s32(*v91.i8, *v94.i8), vzip2_s32(*v91.i8, *v94.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(*v91.i8, vdup_lane_s32(*v91.i8, 1)).u8[0])
    {
      v444 = *v12;
      v471 = v12[1];
      v95 = *(a2 - 16);
      *v12 = *v9;
      v12[1] = v95;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    v172 = *v12;
    if (a4)
    {
      v173 = v12[1];
      v174 = vsubq_f32(v173, v172);
      v174.i32[3] = 0;
      v175 = vmaxnmq_f32(v174, v8);
      v176 = vmulq_f32(v175, v175);
      v177 = sqrtf(v176.f32[2] + vaddv_f32(*v176.f32)) * 0.5;
LABEL_62:
      v184 = 0;
      do
      {
        v185 = vsubq_f32(v12[v184 + 3], v12[v184 + 2]);
        v185.i32[3] = 0;
        v186 = vmaxnmq_f32(v185, v8);
        v187 = vmulq_f32(v186, v186);
        v184 += 2;
      }

      while ((sqrtf(v187.f32[2] + vaddv_f32(*v187.f32)) * 0.5) > v177);
      v188 = &v12[v184];
      v189 = a2;
      if (v184 == 2)
      {
        v189 = a2;
        do
        {
          if (v188 >= v189)
          {
            break;
          }

          v195 = v189[-2];
          v196 = v189[-1];
          v189 -= 2;
          v197 = vsubq_f32(v196, v195);
          v197.i32[3] = 0;
          v198 = vmaxnmq_f32(v197, v8);
          v199 = vmulq_f32(v198, v198);
        }

        while ((sqrtf(v199.f32[2] + vaddv_f32(*v199.f32)) * 0.5) <= v177);
      }

      else
      {
        do
        {
          v190 = v189[-2];
          v191 = v189[-1];
          v189 -= 2;
          v192 = vsubq_f32(v191, v190);
          v192.i32[3] = 0;
          v193 = vmaxnmq_f32(v192, v8);
          v194 = vmulq_f32(v193, v193);
        }

        while ((sqrtf(v194.f32[2] + vaddv_f32(*v194.f32)) * 0.5) <= v177);
      }

      if (v188 >= v189)
      {
        v213 = v188 - 2;
      }

      else
      {
        v200 = &v12[v184];
        v201 = v189;
        do
        {
          v460 = *v200;
          v491 = v200[1];
          v202 = v201[1];
          *v200 = *v201;
          v200[1] = v202;
          *v201 = v460;
          v201[1] = v491;
          do
          {
            v203 = v200[2];
            v204 = v200[3];
            v200 += 2;
            v205 = vsubq_f32(v204, v203);
            v205.i32[3] = 0;
            v206 = vmaxnmq_f32(v205, v8);
            v207 = vmulq_f32(v206, v206);
          }

          while ((sqrtf(v207.f32[2] + vaddv_f32(*v207.f32)) * 0.5) > v177);
          do
          {
            v208 = v201[-2];
            v209 = v201[-1];
            v201 -= 2;
            v210 = vsubq_f32(v209, v208);
            v210.i32[3] = 0;
            v211 = vmaxnmq_f32(v210, v8);
            v212 = vmulq_f32(v211, v211);
          }

          while ((sqrtf(v212.f32[2] + vaddv_f32(*v212.f32)) * 0.5) <= v177);
        }

        while (v200 < v201);
        v213 = v200 - 2;
      }

      if (v213 != v12)
      {
        v214 = v213[1];
        *v12 = *v213;
        v12[1] = v214;
      }

      *v213 = v172;
      v213[1] = v173;
      if (v188 < v189)
      {
        goto LABEL_83;
      }

      v12 = v213 + 2;
      {
        a2 = v213;
        v8 = 0uLL;
        if (!v215)
        {
          goto LABEL_2;
        }

        return;
      }

      v8 = 0uLL;
      if (!v215)
      {
LABEL_83:
        v8 = 0uLL;
        a4 = 0;
        v12 = v213 + 2;
      }
    }

    else
    {
      v178 = vsubq_f32(v12[-1], v12[-2]);
      v178.i32[3] = 0;
      v179 = vmaxnmq_f32(v178, v8);
      v180 = vmulq_f32(v179, v179);
      v173 = v12[1];
      v181 = vsubq_f32(v173, v172);
      v181.i32[3] = 0;
      v182 = vmaxnmq_f32(v181, v8);
      v183 = vmulq_f32(v182, v182);
      *v183.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v180, v180, 8uLL), *&vextq_s8(v183, v183, 8uLL)), vadd_f32(vzip1_s32(*v180.i8, *v183.i8), vzip2_s32(*v180.i8, *v183.i8)))), 0x3F0000003F000000);
      v177 = *&v183.i32[1];
      if (*v183.i32 > *&v183.i32[1])
      {
        goto LABEL_62;
      }

      v216 = vsubq_f32(*(a2 - 16), *(a2 - 32));
      v216.i32[3] = 0;
      v217 = vmaxnmq_f32(v216, v8);
      v218 = vmulq_f32(v217, v217);
      if (v177 <= (sqrtf(v218.f32[2] + vaddv_f32(*v218.f32)) * 0.5))
      {
        v224 = v12 + 2;
        do
        {
          v12 = v224;
          if (v224 >= a2)
          {
            break;
          }

          v225 = vsubq_f32(v224[1], *v224);
          v225.i32[3] = 0;
          v226 = vmaxnmq_f32(v225, v8);
          v227 = vmulq_f32(v226, v226);
          v224 += 2;
        }

        while (v177 <= (sqrtf(v227.f32[2] + vaddv_f32(*v227.f32)) * 0.5));
      }

      else
      {
        do
        {
          v219 = v12[2];
          v220 = v12[3];
          v12 += 2;
          v221 = vsubq_f32(v220, v219);
          v221.i32[3] = 0;
          v222 = vmaxnmq_f32(v221, v8);
          v223 = vmulq_f32(v222, v222);
        }

        while (v177 <= (sqrtf(v223.f32[2] + vaddv_f32(*v223.f32)) * 0.5));
      }

      v228 = a2;
      if (v12 < a2)
      {
        v228 = a2;
        do
        {
          v229 = v228[-2];
          v230 = v228[-1];
          v228 -= 2;
          v231 = vsubq_f32(v230, v229);
          v231.i32[3] = 0;
          v232 = vmaxnmq_f32(v231, v8);
          v233 = vmulq_f32(v232, v232);
        }

        while (v177 > (sqrtf(v233.f32[2] + vaddv_f32(*v233.f32)) * 0.5));
      }

      while (v12 < v228)
      {
        v461 = *v12;
        v492 = v12[1];
        v234 = v228[1];
        *v12 = *v228;
        v12[1] = v234;
        *v228 = v461;
        v228[1] = v492;
        do
        {
          v235 = v12[2];
          v236 = v12[3];
          v12 += 2;
          v237 = vsubq_f32(v236, v235);
          v237.i32[3] = 0;
          v238 = vmaxnmq_f32(v237, v8);
          v239 = vmulq_f32(v238, v238);
        }

        while (v177 <= (sqrtf(v239.f32[2] + vaddv_f32(*v239.f32)) * 0.5));
        do
        {
          v240 = v228[-2];
          v241 = v228[-1];
          v228 -= 2;
          v242 = vsubq_f32(v241, v240);
          v242.i32[3] = 0;
          v243 = vmaxnmq_f32(v242, v8);
          v244 = vmulq_f32(v243, v243);
        }

        while (v177 > (sqrtf(v244.f32[2] + vaddv_f32(*v244.f32)) * 0.5));
      }

      if (&v12[-2] != a1)
      {
        v245 = v12[-1];
        *a1 = v12[-2];
        a1[1] = v245;
      }

      a4 = 0;
      v12[-2] = v172;
      v12[-1] = v173;
    }
  }

  v256 = v12 + 2;
  v257 = vsubq_f32(v12[3], v12[2]);
  v257.i32[3] = 0;
  v258 = vmaxnmq_f32(v257, 0);
  v259 = vmulq_f32(v258, v258);
  v260 = vsubq_f32(v12[1], *v12);
  v260.i32[3] = 0;
  v261 = vmaxnmq_f32(v260, 0);
  v262 = vmulq_f32(v261, v261);
  v263 = (a2 - 32);
  v264 = vsubq_f32(*(a2 - 16), *(a2 - 32));
  v264.i32[3] = 0;
  v265 = vmaxnmq_f32(v264, 0);
  v266 = vmulq_f32(v265, v265);
  v267 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v266, v266, 8uLL), *&vextq_s8(v259, v259, 8uLL)), vadd_f32(vzip1_s32(*v266.i8, *v259.i8), vzip2_s32(*v266.i8, *v259.i8)))), 0x3F0000003F000000);
  if (v267.f32[1] <= (sqrtf(v262.f32[2] + vaddv_f32(*v262.f32)) * 0.5))
  {
    if (v267.f32[0] <= v267.f32[1])
    {
      return;
    }

    v374 = *v256;
    v497 = v12[3];
    v375 = *(a2 - 16);
    *v256 = *v263;
    v12[3] = v375;
    *v263 = v374;
    *(a2 - 16) = v497;
    goto LABEL_183;
  }

  if (v267.f32[0] <= v267.f32[1])
  {
    v467 = *v12;
    v499 = v12[1];
    v404 = v12[3];
    *v12 = *v256;
    v12[1] = v404;
    *v256 = v467;
    v12[3] = v499;
    v405 = vsubq_f32(*(a2 - 16), *(a2 - 32));
    v405.i32[3] = 0;
    v406 = vmaxnmq_f32(v405, 0);
    v407 = vmulq_f32(v406, v406);
    v408 = vsubq_f32(v12[3], v12[2]);
    v408.i32[3] = 0;
    v409 = vmaxnmq_f32(v408, 0);
    v410 = vmulq_f32(v409, v409);
    *v407.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v407, v407, 8uLL), *&vextq_s8(v410, v410, 8uLL)), vadd_f32(vzip1_s32(*v407.i8, *v410.i8), vzip2_s32(*v407.i8, *v410.i8)))), 0x3F0000003F000000);
    if ((vcgt_f32(*v407.i8, vdup_lane_s32(*v407.i8, 1)).u32[0] & 1) == 0)
    {
      return;
    }

    v269 = *v256;
    v270 = v12[3];
    v411 = *(a2 - 16);
    *v256 = *v263;
    v12[3] = v411;
  }

  else
  {
    v463 = *v12;
    v494 = v12[1];
    v268 = *(a2 - 16);
    *v12 = *v263;
    v12[1] = v268;
    v269 = v463;
    v270 = v494;
  }

  *v263 = v269;
  *(a2 - 16) = v270;
}

int8x16_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::computeSceneMeshAABBClusterIslands(std::vector<rf::AABB> const&,int,float,float)::$_0 &,rf::AABB*,0>(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5 = vsubq_f32(a2[1], *a2);
  v5.i32[3] = 0;
  v6 = vmaxnmq_f32(v5, 0);
  v7 = vmulq_f32(v6, v6);
  v8 = vsubq_f32(a1[1], *a1);
  v8.i32[3] = 0;
  v9 = vmaxnmq_f32(v8, 0);
  v10 = vmulq_f32(v9, v9);
  v11 = vsubq_f32(a3[1], *a3);
  v11.i32[3] = 0;
  v12 = vmaxnmq_f32(v11, 0);
  v13 = vmulq_f32(v12, v12);
  v14 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v13.i8, *v7.i8), vzip2_s32(*v13.i8, *v7.i8)))), 0x3F0000003F000000);
  if (v14.f32[1] <= (sqrtf(v10.f32[2] + vaddv_f32(*v10.f32)) * 0.5))
  {
    if (v14.f32[0] > v14.f32[1])
    {
      v19 = *a2;
      v18 = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = v18;
      v21 = vsubq_f32(a2[1], *a2);
      v21.i32[3] = 0;
      v22 = vmaxnmq_f32(v21, 0);
      v23 = vmulq_f32(v22, v22);
      v24 = vsubq_f32(a1[1], *a1);
      v24.i32[3] = 0;
      v25 = vmaxnmq_f32(v24, 0);
      v26 = vmulq_f32(v25, v25);
      *v23.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v26, v26, 8uLL)), vadd_f32(vzip1_s32(*v23.i8, *v26.i8), vzip2_s32(*v23.i8, *v26.i8)))), 0x3F0000003F000000);
      if (vcgt_f32(*v23.i8, vdup_lane_s32(*v23.i8, 1)).u8[0])
      {
        v28 = *a1;
        v27 = a1[1];
        v29 = a2[1];
        *a1 = *a2;
        a1[1] = v29;
        *a2 = v28;
        a2[1] = v27;
      }
    }
  }

  else
  {
    if (v14.f32[0] > v14.f32[1])
    {
      v16 = *a1;
      v15 = a1[1];
      v17 = a3[1];
      *a1 = *a3;
      a1[1] = v17;
LABEL_9:
      *a3 = v16;
      a3[1] = v15;
      goto LABEL_10;
    }

    v31 = *a1;
    v30 = a1[1];
    v32 = a2[1];
    *a1 = *a2;
    a1[1] = v32;
    *a2 = v31;
    a2[1] = v30;
    v33 = vsubq_f32(a3[1], *a3);
    v33.i32[3] = 0;
    v34 = vmaxnmq_f32(v33, 0);
    v35 = vmulq_f32(v34, v34);
    v36 = vsubq_f32(a2[1], *a2);
    v36.i32[3] = 0;
    v37 = vmaxnmq_f32(v36, 0);
    v38 = vmulq_f32(v37, v37);
    *v35.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v38, v38, 8uLL)), vadd_f32(vzip1_s32(*v35.i8, *v38.i8), vzip2_s32(*v35.i8, *v38.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(*v35.i8, vdup_lane_s32(*v35.i8, 1)).u8[0])
    {
      v16 = *a2;
      v15 = a2[1];
      v39 = a3[1];
      *a2 = *a3;
      a2[1] = v39;
      goto LABEL_9;
    }
  }

LABEL_10:
  v40 = vsubq_f32(a4[1], *a4);
  v40.i32[3] = 0;
  v41 = vmaxnmq_f32(v40, 0);
  v42 = vmulq_f32(v41, v41);
  v43 = vsubq_f32(a3[1], *a3);
  v43.i32[3] = 0;
  v44 = vmaxnmq_f32(v43, 0);
  v45 = vmulq_f32(v44, v44);
  *v45.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vadd_f32(vzip1_s32(*v42.i8, *v45.i8), vzip2_s32(*v42.i8, *v45.i8)))), 0x3F0000003F000000);
  if (vcgt_f32(*v45.i8, vdup_lane_s32(*v45.i8, 1)).u8[0])
  {
    v47 = *a3;
    v46 = a3[1];
    v48 = a4[1];
    *a3 = *a4;
    a3[1] = v48;
    *a4 = v47;
    a4[1] = v46;
    v49 = vsubq_f32(a3[1], *a3);
    v49.i32[3] = 0;
    v50 = vmaxnmq_f32(v49, 0);
    v51 = vmulq_f32(v50, v50);
    v52 = vsubq_f32(a2[1], *a2);
    v52.i32[3] = 0;
    v53 = vmaxnmq_f32(v52, 0);
    v54 = vmulq_f32(v53, v53);
    *v51.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vadd_f32(vzip1_s32(*v51.i8, *v54.i8), vzip2_s32(*v51.i8, *v54.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(*v51.i8, vdup_lane_s32(*v51.i8, 1)).u8[0])
    {
      v56 = *a2;
      v55 = a2[1];
      v57 = a3[1];
      *a2 = *a3;
      a2[1] = v57;
      *a3 = v56;
      a3[1] = v55;
      v58 = vsubq_f32(a2[1], *a2);
      v58.i32[3] = 0;
      v59 = vmaxnmq_f32(v58, 0);
      v60 = vmulq_f32(v59, v59);
      v61 = vsubq_f32(a1[1], *a1);
      v61.i32[3] = 0;
      v62 = vmaxnmq_f32(v61, 0);
      v63 = vmulq_f32(v62, v62);
      *v60.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v63, v63, 8uLL)), vadd_f32(vzip1_s32(*v60.i8, *v63.i8), vzip2_s32(*v60.i8, *v63.i8)))), 0x3F0000003F000000);
      if (vcgt_f32(*v60.i8, vdup_lane_s32(*v60.i8, 1)).u8[0])
      {
        v65 = *a1;
        v64 = a1[1];
        v66 = a2[1];
        *a1 = *a2;
        a1[1] = v66;
        *a2 = v65;
        a2[1] = v64;
      }
    }
  }

  v67 = vsubq_f32(a5[1], *a5);
  v67.i32[3] = 0;
  v68 = vmaxnmq_f32(v67, 0);
  v69 = vmulq_f32(v68, v68);
  v70 = vsubq_f32(a4[1], *a4);
  v70.i32[3] = 0;
  v71 = vmaxnmq_f32(v70, 0);
  result = vmulq_f32(v71, v71);
  *result.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v69, v69, 8uLL), *&vextq_s8(result, result, 8uLL)), vadd_f32(vzip1_s32(*v69.i8, *result.i8), vzip2_s32(*v69.i8, *result.i8)))), 0x3F0000003F000000);
  *result.i8 = vcgt_f32(*result.i8, vdup_lane_s32(*result.i8, 1));
  if (result.i8[0])
  {
    v74 = *a4;
    v73 = a4[1];
    v75 = a5[1];
    *a4 = *a5;
    a4[1] = v75;
    *a5 = v74;
    a5[1] = v73;
    v76 = vsubq_f32(a4[1], *a4);
    v76.i32[3] = 0;
    result = 0uLL;
    v77 = vmaxnmq_f32(v76, 0);
    v78 = vmulq_f32(v77, v77);
    v79 = vsubq_f32(a3[1], *a3);
    v79.i32[3] = 0;
    v80 = vmaxnmq_f32(v79, 0);
    v81 = vmulq_f32(v80, v80);
    *v81.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v78, v78, 8uLL), *&vextq_s8(v81, v81, 8uLL)), vadd_f32(vzip1_s32(*v78.i8, *v81.i8), vzip2_s32(*v78.i8, *v81.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(*v81.i8, vdup_lane_s32(*v81.i8, 1)).u8[0])
    {
      v83 = *a3;
      v82 = a3[1];
      v84 = a4[1];
      *a3 = *a4;
      a3[1] = v84;
      *a4 = v83;
      a4[1] = v82;
      v85 = vsubq_f32(a3[1], *a3);
      v85.i32[3] = 0;
      v86 = vmaxnmq_f32(v85, 0);
      v87 = vmulq_f32(v86, v86);
      v88 = vsubq_f32(a2[1], *a2);
      v88.i32[3] = 0;
      v89 = vmaxnmq_f32(v88, 0);
      result = vmulq_f32(v89, v89);
      *result.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v87, v87, 8uLL), *&vextq_s8(result, result, 8uLL)), vadd_f32(vzip1_s32(*v87.i8, *result.i8), vzip2_s32(*v87.i8, *result.i8)))), 0x3F0000003F000000);
      *result.i8 = vcgt_f32(*result.i8, vdup_lane_s32(*result.i8, 1));
      if (result.i8[0])
      {
        v91 = *a2;
        v90 = a2[1];
        v92 = a3[1];
        *a2 = *a3;
        a2[1] = v92;
        *a3 = v91;
        a3[1] = v90;
        v93 = vsubq_f32(a2[1], *a2);
        v93.i32[3] = 0;
        v94 = vmaxnmq_f32(v93, 0);
        result = vmulq_f32(v94, v94);
        v95 = vsubq_f32(a1[1], *a1);
        v95.i32[3] = 0;
        v96 = vmaxnmq_f32(v95, 0);
        v97 = vmulq_f32(v96, v96);
        *result.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(result, result, 8uLL), *&vextq_s8(v97, v97, 8uLL)), vadd_f32(vzip1_s32(*result.i8, *v97.i8), vzip2_s32(*result.i8, *v97.i8)))), 0x3F0000003F000000);
        *result.i8 = vcgt_f32(*result.i8, vdup_lane_s32(*result.i8, 1));
        if (result.i8[0])
        {
          v98 = *a1;
          result = a1[1];
          v99 = a2[1];
          *a1 = *a2;
          a1[1] = v99;
          *a2 = v98;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::computeSceneMeshAABBClusterIslands(std::vector<rf::AABB> const&,int,float,float)::$_0 &,rf::AABB*>(float32x4_t *a1, float32x4_t *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v15 = a1 + 2;
      v16 = vsubq_f32(a1[3], a1[2]);
      v16.i32[3] = 0;
      v17 = vmaxnmq_f32(v16, 0);
      v18 = vmulq_f32(v17, v17);
      v19 = vsubq_f32(a1[1], *a1);
      v19.i32[3] = 0;
      v20 = vmaxnmq_f32(v19, 0);
      v21 = vmulq_f32(v20, v20);
      v22 = a2 - 2;
      v23 = vsubq_f32(a2[-1], a2[-2]);
      v23.i32[3] = 0;
      v24 = vmaxnmq_f32(v23, 0);
      v25 = vmulq_f32(v24, v24);
      v26 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v18, v18, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v18.i8), vzip2_s32(*v25.i8, *v18.i8)))), 0x3F0000003F000000);
      if (v26.f32[1] > (sqrtf(v21.f32[2] + vaddv_f32(*v21.f32)) * 0.5))
      {
        if (v26.f32[0] <= v26.f32[1])
        {
          v82 = *a1;
          v81 = a1[1];
          v83 = a1[3];
          *a1 = *v15;
          a1[1] = v83;
          *v15 = v82;
          a1[3] = v81;
          v84 = vsubq_f32(a2[-1], a2[-2]);
          v84.i32[3] = 0;
          v85 = vmaxnmq_f32(v84, 0);
          v86 = vmulq_f32(v85, v85);
          v87 = vsubq_f32(a1[3], a1[2]);
          v87.i32[3] = 0;
          v88 = vmaxnmq_f32(v87, 0);
          v89 = vmulq_f32(v88, v88);
          *v86.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v86, v86, 8uLL), *&vextq_s8(v89, v89, 8uLL)), vadd_f32(vzip1_s32(*v86.i8, *v89.i8), vzip2_s32(*v86.i8, *v89.i8)))), 0x3F0000003F000000);
          if ((vcgt_f32(*v86.i8, vdup_lane_s32(*v86.i8, 1)).u32[0] & 1) == 0)
          {
            return 1;
          }

          v28 = *v15;
          v27 = a1[3];
          v90 = a2[-1];
          *v15 = *v22;
          a1[3] = v90;
        }

        else
        {
          v28 = *a1;
          v27 = a1[1];
          v29 = a2[-1];
          *a1 = *v22;
          a1[1] = v29;
        }

        *v22 = v28;
        a2[-1] = v27;
        return 1;
      }

      if (v26.f32[0] <= v26.f32[1])
      {
        return 1;
      }

      v61 = *v15;
      v60 = a1[3];
      v62 = a2[-1];
      *v15 = *v22;
      a1[3] = v62;
LABEL_50:
      *v22 = v61;
      v22[1] = v60;
      v141 = vsubq_f32(a1[3], a1[2]);
      v141.i32[3] = 0;
      v142 = vmaxnmq_f32(v141, 0);
      v143 = vmulq_f32(v142, v142);
      v144 = vsubq_f32(a1[1], *a1);
      v144.i32[3] = 0;
      v145 = vmaxnmq_f32(v144, 0);
      v146 = vmulq_f32(v145, v145);
      *v143.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v143, v143, 8uLL), *&vextq_s8(v146, v146, 8uLL)), vadd_f32(vzip1_s32(*v143.i8, *v146.i8), vzip2_s32(*v143.i8, *v146.i8)))), 0x3F0000003F000000);
      if (vcgt_f32(*v143.i8, vdup_lane_s32(*v143.i8, 1)).u32[0])
      {
        v148 = *a1;
        v147 = a1[1];
        v149 = v15[1];
        *a1 = *v15;
        a1[1] = v149;
        *v15 = v148;
        v15[1] = v147;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v15 = a1 + 2;
    v22 = a1 + 4;
    v46 = vsubq_f32(a1[3], a1[2]);
    v46.i32[3] = 0;
    v47 = vmaxnmq_f32(v46, 0);
    v48 = vmulq_f32(v47, v47);
    v49 = vsubq_f32(a1[1], *a1);
    v49.i32[3] = 0;
    v50 = vmaxnmq_f32(v49, 0);
    v51 = vmulq_f32(v50, v50);
    v52 = sqrtf(v51.f32[2] + vaddv_f32(*v51.f32)) * 0.5;
    v53 = vsubq_f32(a1[5], a1[4]);
    v53.i32[3] = 0;
    v54 = vmaxnmq_f32(v53, 0);
    v55 = vmulq_f32(v54, v54);
    v56 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v55, v55, 8uLL), *&vextq_s8(v48, v48, 8uLL)), vadd_f32(vzip1_s32(*v55.i8, *v48.i8), vzip2_s32(*v55.i8, *v48.i8)))), 0x3F0000003F000000);
    if (v56.f32[1] <= v52)
    {
      if (v56.f32[0] > v56.f32[1])
      {
        v73 = *v15;
        v72 = a1[3];
        v74 = a1[5];
        *v15 = *v22;
        a1[3] = v74;
        *v22 = v73;
        a1[5] = v72;
        v75 = vsubq_f32(a1[3], a1[2]);
        v75.i32[3] = 0;
        v76 = vmaxnmq_f32(v75, 0);
        v77 = vmulq_f32(v76, v76);
        if ((sqrtf(v77.f32[2] + vaddv_f32(*v77.f32)) * 0.5) > v52)
        {
          v79 = *a1;
          v78 = a1[1];
          v80 = a1[3];
          *a1 = *v15;
          a1[1] = v80;
          *v15 = v79;
          a1[3] = v78;
        }
      }

      goto LABEL_47;
    }

    if (v56.f32[0] <= v56.f32[1])
    {
      v118 = *a1;
      v117 = a1[1];
      v119 = a1[3];
      *a1 = *v15;
      a1[1] = v119;
      *v15 = v118;
      a1[3] = v117;
      v120 = vsubq_f32(a1[3], a1[2]);
      v120.i32[3] = 0;
      v121 = vmaxnmq_f32(v120, 0);
      v122 = vmulq_f32(v121, v121);
      if (v56.f32[0] <= (sqrtf(v122.f32[2] + vaddv_f32(*v122.f32)) * 0.5))
      {
        goto LABEL_47;
      }

      v58 = *v15;
      v57 = a1[3];
      v123 = a1[5];
      *v15 = *v22;
      a1[3] = v123;
    }

    else
    {
      v58 = *a1;
      v57 = a1[1];
      v59 = a1[5];
      *a1 = *v22;
      a1[1] = v59;
    }

    *v22 = v58;
    a1[5] = v57;
LABEL_47:
    v124 = vsubq_f32(a2[-1], a2[-2]);
    v124.i32[3] = 0;
    v125 = vmaxnmq_f32(v124, 0);
    v126 = vmulq_f32(v125, v125);
    v127 = vsubq_f32(a1[5], a1[4]);
    v127.i32[3] = 0;
    v128 = vmaxnmq_f32(v127, 0);
    v129 = vmulq_f32(v128, v128);
    *v129.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v126, v126, 8uLL), *&vextq_s8(v129, v129, 8uLL)), vadd_f32(vzip1_s32(*v126.i8, *v129.i8), vzip2_s32(*v126.i8, *v129.i8)))), 0x3F0000003F000000);
    if ((vcgt_f32(*v129.i8, vdup_lane_s32(*v129.i8, 1)).u8[0] & 1) == 0)
    {
      return 1;
    }

    v130 = a2 - 2;
    v132 = *v22;
    v131 = a1[5];
    v133 = a2[-1];
    *v22 = a2[-2];
    a1[5] = v133;
    *v130 = v132;
    v130[1] = v131;
    v134 = vsubq_f32(a1[5], a1[4]);
    v134.i32[3] = 0;
    v135 = vmaxnmq_f32(v134, 0);
    v136 = vmulq_f32(v135, v135);
    v137 = vsubq_f32(a1[3], a1[2]);
    v137.i32[3] = 0;
    v138 = vmaxnmq_f32(v137, 0);
    v139 = vmulq_f32(v138, v138);
    *v139.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v136, v136, 8uLL), *&vextq_s8(v139, v139, 8uLL)), vadd_f32(vzip1_s32(*v136.i8, *v139.i8), vzip2_s32(*v136.i8, *v139.i8)))), 0x3F0000003F000000);
    if ((vcgt_f32(*v139.i8, vdup_lane_s32(*v139.i8, 1)).u32[0] & 1) == 0)
    {
      return 1;
    }

    v61 = *v15;
    v60 = a1[3];
    v140 = a1[5];
    *v15 = *v22;
    a1[3] = v140;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = a2[-2];
    v5 = a2[-1];
    v3 = a2 - 2;
    v6 = vsubq_f32(v5, v4);
    v6.i32[3] = 0;
    v7 = vmaxnmq_f32(v6, 0);
    v8 = vmulq_f32(v7, v7);
    v9 = vsubq_f32(a1[1], *a1);
    v9.i32[3] = 0;
    v10 = vmaxnmq_f32(v9, 0);
    v11 = vmulq_f32(v10, v10);
    *v8.i8 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v11, v11, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v11.i8), vzip2_s32(*v8.i8, *v11.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0])
    {
      v13 = *a1;
      v12 = a1[1];
      v14 = v3[1];
      *a1 = *v3;
      a1[1] = v14;
      *v3 = v13;
      v3[1] = v12;
    }

    return 1;
  }

LABEL_13:
  v30 = a1 + 4;
  v31 = a1 + 2;
  v32 = vsubq_f32(a1[3], a1[2]);
  v32.i32[3] = 0;
  v33 = vmaxnmq_f32(v32, 0);
  v34 = vmulq_f32(v33, v33);
  v35 = vsubq_f32(a1[1], *a1);
  v35.i32[3] = 0;
  v36 = vmaxnmq_f32(v35, 0);
  v37 = vmulq_f32(v36, v36);
  v38 = sqrtf(v37.f32[2] + vaddv_f32(*v37.f32)) * 0.5;
  v39 = vsubq_f32(a1[5], a1[4]);
  v39.i32[3] = 0;
  v40 = vmaxnmq_f32(v39, 0);
  v41 = vmulq_f32(v40, v40);
  v42 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v34, v34, 8uLL)), vadd_f32(vzip1_s32(*v41.i8, *v34.i8), vzip2_s32(*v41.i8, *v34.i8)))), 0x3F0000003F000000);
  if (v42.f32[1] <= v38)
  {
    if (v42.f32[0] > v42.f32[1])
    {
      v64 = *v31;
      v63 = a1[3];
      v65 = a1[5];
      *v31 = *v30;
      a1[3] = v65;
      *v30 = v64;
      a1[5] = v63;
      v66 = vsubq_f32(a1[3], a1[2]);
      v66.i32[3] = 0;
      v67 = vmaxnmq_f32(v66, 0);
      v68 = vmulq_f32(v67, v67);
      if ((sqrtf(v68.f32[2] + vaddv_f32(*v68.f32)) * 0.5) > v38)
      {
        v70 = *a1;
        v69 = a1[1];
        v71 = a1[3];
        *a1 = *v31;
        a1[1] = v71;
        *v31 = v70;
        a1[3] = v69;
      }
    }
  }

  else
  {
    if (v42.f32[0] <= v42.f32[1])
    {
      v92 = *a1;
      v91 = a1[1];
      v93 = a1[3];
      *a1 = *v31;
      a1[1] = v93;
      *v31 = v92;
      a1[3] = v91;
      v94 = vsubq_f32(a1[3], a1[2]);
      v94.i32[3] = 0;
      v95 = vmaxnmq_f32(v94, 0);
      v96 = vmulq_f32(v95, v95);
      if (v42.f32[0] <= (sqrtf(v96.f32[2] + vaddv_f32(*v96.f32)) * 0.5))
      {
        goto LABEL_33;
      }

      v44 = *v31;
      v43 = a1[3];
      v97 = a1[5];
      *v31 = *v30;
      a1[3] = v97;
    }

    else
    {
      v44 = *a1;
      v43 = a1[1];
      v45 = a1[5];
      *a1 = *v30;
      a1[1] = v45;
    }

    *v30 = v44;
    a1[5] = v43;
  }

LABEL_33:
  v98 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v99 = 0;
  v100 = 0;
  while (1)
  {
    v102 = *v98;
    v101 = v98[1];
    v103 = vsubq_f32(v101, *v98);
    v103.i32[3] = 0;
    v104 = vmaxnmq_f32(v103, 0);
    v105 = vmulq_f32(v104, v104);
    v106 = vsubq_f32(v30[1], *v30);
    v106.i32[3] = 0;
    v107 = vmaxnmq_f32(v106, 0);
    v108 = vmulq_f32(v107, v107);
    v109 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v105, v105, 8uLL), *&vextq_s8(v108, v108, 8uLL)), vadd_f32(vzip1_s32(*v105.i8, *v108.i8), vzip2_s32(*v105.i8, *v108.i8)))), 0x3F0000003F000000);
    if (vcgt_f32(v109, vdup_lane_s32(v109, 1)).u8[0])
    {
      v110 = v99;
      while (1)
      {
        v111 = (a1 + v110);
        v112 = *(a1 + v110 + 80);
        v111[6] = *(a1 + v110 + 64);
        v111[7] = v112;
        if (v110 == -64)
        {
          break;
        }

        v113 = vsubq_f32(v111[3], v111[2]);
        v113.i32[3] = 0;
        v114 = vmaxnmq_f32(v113, 0);
        v115 = vmulq_f32(v114, v114);
        v110 -= 32;
        if (v109.f32[0] <= (sqrtf(v115.f32[2] + vaddv_f32(*v115.f32)) * 0.5))
        {
          v116 = (a1 + v110 + 96);
          goto LABEL_41;
        }
      }

      v116 = a1;
LABEL_41:
      *v116 = v102;
      v116[1] = v101;
      if (++v100 == 8)
      {
        return &v98[2] == a2;
      }
    }

    v30 = v98;
    v99 += 32;
    v98 += 2;
    if (v98 == a2)
    {
      return 1;
    }
  }
}

void std::allocator<rf::data_flow::EnvironmentProbe>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v18 = a4;
  v17 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2 + 14;
    do
    {
      v7 = *(v6 - 7);
      v8 = *(v6 - 5);
      *(a4 + 16) = *(v6 - 6);
      *(a4 + 32) = v8;
      *a4 = v7;
      v9 = *(v6 - 4);
      v10 = *(v6 - 3);
      v11 = *(v6 - 1);
      *(a4 + 80) = *(v6 - 2);
      *(a4 + 96) = v11;
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      if (*(v6 + 8) == 1)
      {
        v12 = *v6;
        *v6 = 0;
        *(a4 + 112) = v12;
        *(a4 + 120) = 1;
      }

      v13 = v6 - 14;
      *(a4 + 128) = v6[2];
      a4 += 144;
      v6 += 18;
    }

    while (v13 + 18 != a3);
    v18 = a4;
    v16 = 1;
    do
    {
      if (*(v5 + 120) == 1)
      {
      }

      v5 += 18;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 24) == 1)
    {
    }

    v1 -= 144;
  }
}

void **std::__split_buffer<rf::data_flow::EnvironmentProbe>::~__split_buffer(void **a1)
{
  std::__split_buffer<rf::data_flow::EnvironmentProbe>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<rf::data_flow::EnvironmentProbe>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1 != v2)
  {
    do
    {
      v4 = v1 - 144;
      *(a1 + 16) = v1 - 144;
      if (*(v1 - 24) == 1)
      {

        v4 = *(a1 + 16);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

void *RESharedPtr<REAsset>::~RESharedPtr(void *a1)
{
  if (*a1)
  {
    RERelease();
  }

  return a1;
}

void std::__optional_storage_base<objc_object  {objcproto10MTLTexture}* {__strong},false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<objc_object  {objcproto10MTLTexture}*,false> const&>(id *location, void *a2, unsigned __int8 a3)
{
  if (*(location + 8) == a3)
  {
    if (*(location + 8))
    {

      objc_storeStrong(location, a2);
    }
  }

  else if (*(location + 8))
  {

    *(location + 8) = 0;
  }

  else
  {
    *location = a2;
    *(location + 8) = 1;
  }
}

uint64_t std::__split_buffer<RESharedPtr<REEntity>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    RESharedPtr<REEntity>::~RESharedPtr((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *RESharedPtr<REEntity>::~RESharedPtr(void *a1)
{
  if (*a1)
  {
    RERelease();
  }

  return a1;
}

uint64_t std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      RESharedPtr<REEntity>::~RESharedPtr(v2 + 6);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__deallocate_node(int a1, id *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 168) == 1)
      {
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__deallocate_node(a1, *(a1 + 16));
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

void *std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
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

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2))
  {
    goto LABEL_18;
  }

  return v10;
}

BOOL std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,rf::data_flow::EnvironmentProbe>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
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

  result = rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2);
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      RESharedPtr<REEntity>::~RESharedPtr(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617DEAB8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617DED1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t isInputMesh(ARAnchor *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void std::__function::__func<meshServiceAddAnchorCallback(void)::$_0,std::allocator<meshServiceAddAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(id *a1@<X1>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *(a2 + 176) = 0;
  *(a2 + 448) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 1065353216;
  *(a2 + 552) = 0;
  *(a2 + 1776) = 0;
  *(a2 + 2000) = 0;
  *(a2 + 2016) = 0;
  *(a2 + 2020) = 0;
  *(a2 + 2024) = 0;
  *(a2 + 2028) = 0;
  *(a2 + 2032) = 0;
  *(a2 + 2036) = 0;
  *(a2 + 2040) = 0;
  *(a2 + 2044) = 0;
  *(a2 + 2048) = 0;
  *(a2 + 2050) = 0;
  *(a2 + 2052) = 0;
  *(a2 + 2056) = 0;
  *(a2 + 2060) = 0;
  *(a2 + 2064) = 0;
  *(a2 + 2072) = 0;
  *(a2 + 2096) = 0;
  *(a2 + 2104) = 0;
  *(a2 + 2120) = 0;
  *(a2 + 848) = 0;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 784) = 0u;
  *(a2 + 800) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 768) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 656) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 624) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 1856) = 0;
  *(a2 + 1840) = 0u;
  *(a2 + 1824) = 0u;
  *(a2 + 1808) = 0u;
  *(a2 + 1792) = 0u;
  *(a2 + 1872) = 0u;
  *(a2 + 1888) = 0u;
  *(a2 + 1904) = 0u;
  *(a2 + 1920) = 0u;
  v14 = a2;
  *(a2 + 1936) = 0;
  memset(v26, 0, 24);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = *v23;
    do
    {
      v6 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        *&v29 = *(*(&v22 + 1) + 8 * v6);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v26, &v29);

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }

  v17[0] = v26;
  v17[1] = isInputMesh;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v20 = 0uLL;
  v8 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v17);
  v9 = *(v17[0] + 8);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v10 = v7;
    v11 = 0;
    do
    {
      v12 = v8 + 1;
      v8 = *(*v10 + 1);
      while (v12 != v8)
      {
        if (v10[1](*v12))
        {
          v8 = v12;
          break;
        }

        ++v12;
      }

      ++v11;
    }

    while (v8 != v9);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v17);
  v15 = *(v17[0] + 8);
  v26[3] = &v20;
  v27 = 0;
  if (v11)
  {
    std::vector<rf::data_flow::provider::InputMesh>::__vallocate[abi:ne200100](&v20, v11);
  }

  std::vector<rf::data_flow::provider::InputMesh>::__vdeallocate(v14);
  *v14 = v20;
  *(v14 + 16) = v21;
  v21 = 0;
  v20 = 0uLL;
  *&v29 = &v20;
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&v29);
  *&v29 = v26;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v29);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2617DF71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, void **a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&a42);
  a65 = &a39;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a65);
  rf::data_flow::provider::InputData::~InputData(a10);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<meshServiceAddAnchorCallback(void)::$_0,std::allocator<meshServiceAddAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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

    v13[4] = a1;
    if (v10)
    {
      std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (8 * v7);
    v13[0] = 0;
    v13[1] = v11;
    v13[3] = 0;
    *v11 = *a2;
    v13[2] = v11 + 1;
    std::vector<ARAnchor * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v6 = a1[1];
    std::__split_buffer<ARAnchor * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    a1[1] = v6;
  }

  a1[1] = v6;
  return v6 - 1;
}

void sub_2617DFA0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ARAnchor * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<ARAnchor * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
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

void std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<ARAnchor * {__strong}>::~__split_buffer(uint64_t a1)
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

void std::vector<rf::data_flow::provider::InputMesh>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xBA2E8BA2E8BA2FLL)
  {
    std::allocator<rf::data_flow::provider::InputMesh>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::allocator<rf::data_flow::provider::InputMesh>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xBA2E8BA2E8BA2FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void rf::data_flow::RFUUID::copy(rf::data_flow::RFUUID *this@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = this;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  uuid_clear(a2);
  v6 = 0uLL;
  [(rf::data_flow::RFUUID *)v4 getUUIDBytes:&v6];
  *a2 = v6;

  v5 = *MEMORY[0x277D85DE8];
}

re::internal::AriadneSignpostScopeGuard *re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(re::internal::AriadneSignpostScopeGuard *this, int a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  if (re::internal::enableSignposts(0, 0))
  {
    v4 = *this;
    kdebug_trace();
  }

  return this;
}

void re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(re::internal::AriadneSignpostScopeGuard *this)
{
  if (re::internal::enableSignposts(0, 0))
  {
    v2 = (4 * *this + 4) & 0xFFFC;
    v3 = *(this + 1);
    kdebug_trace();
  }
}

void *std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    return *(a1 + 16);
  }

  v2 = **a1;
  v3 = *(*a1 + 8);
  if (v2 != v3)
  {
    while (((*(a1 + 8))(*v2) & 1) == 0)
    {
      if (++v2 == v3)
      {
        v2 = v3;
        break;
      }
    }
  }

  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  return v2;
}

void std::vector<rf::data_flow::provider::InputMesh>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        rf::data_flow::provider::InputMesh::~InputMesh(v3 - 44);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<meshServiceUpdateAnchorCallback(void)::$_0,std::allocator<meshServiceUpdateAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(id *a1@<X1>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *(a2 + 176) = 0;
  *(a2 + 448) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 1065353216;
  *(a2 + 552) = 0;
  *(a2 + 1776) = 0;
  *(a2 + 2000) = 0;
  *(a2 + 2016) = 0;
  *(a2 + 2020) = 0;
  *(a2 + 2024) = 0;
  *(a2 + 2028) = 0;
  *(a2 + 2032) = 0;
  *(a2 + 2036) = 0;
  *(a2 + 2040) = 0;
  *(a2 + 2044) = 0;
  *(a2 + 2048) = 0;
  *(a2 + 2050) = 0;
  *(a2 + 2052) = 0;
  *(a2 + 2056) = 0;
  *(a2 + 2060) = 0;
  *(a2 + 2064) = 0;
  *(a2 + 2072) = 0;
  *(a2 + 2096) = 0;
  *(a2 + 2104) = 0;
  *(a2 + 2120) = 0;
  *(a2 + 848) = 0;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 784) = 0u;
  *(a2 + 800) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 768) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 656) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 624) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 1856) = 0;
  *(a2 + 1840) = 0u;
  *(a2 + 1824) = 0u;
  *(a2 + 1808) = 0u;
  *(a2 + 1792) = 0u;
  *(a2 + 1872) = 0u;
  *(a2 + 1888) = 0u;
  *(a2 + 1904) = 0u;
  *(a2 + 1920) = 0u;
  v14 = a2;
  *(a2 + 1936) = 0;
  memset(v26, 0, 24);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = *v23;
    do
    {
      v6 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        *&v29 = *(*(&v22 + 1) + 8 * v6);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v26, &v29);

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }

  v17[0] = v26;
  v17[1] = isInputMesh;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v20 = 0uLL;
  v8 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v17);
  v9 = *(v17[0] + 8);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v10 = v7;
    v11 = 0;
    do
    {
      v12 = v8 + 1;
      v8 = *(*v10 + 1);
      while (v12 != v8)
      {
        if (v10[1](*v12))
        {
          v8 = v12;
          break;
        }

        ++v12;
      }

      ++v11;
    }

    while (v8 != v9);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v17);
  v15 = *(v17[0] + 8);
  v26[3] = &v20;
  v27 = 0;
  if (v11)
  {
    std::vector<rf::data_flow::provider::InputMesh>::__vallocate[abi:ne200100](&v20, v11);
  }

  std::vector<rf::data_flow::provider::InputMesh>::__vdeallocate((v14 + 24));
  *(v14 + 24) = v20;
  *(v14 + 40) = v21;
  v21 = 0;
  v20 = 0uLL;
  *&v29 = &v20;
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&v29);
  *&v29 = v26;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v29);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2617E07BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void **a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&a41);
  a61 = &a38;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a61);
  rf::data_flow::provider::InputData::~InputData(a11);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<meshServiceUpdateAnchorCallback(void)::$_0,std::allocator<meshServiceUpdateAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<meshServiceRemoveAnchorCallback(void)::$_0,std::allocator<meshServiceRemoveAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::operator()(id *a1@<X1>, uint64_t a2@<X8>)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *(a2 + 176) = 0;
  *(a2 + 448) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 1065353216;
  *(a2 + 552) = 0;
  *(a2 + 1776) = 0;
  *(a2 + 2000) = 0;
  *(a2 + 2016) = 0;
  *(a2 + 2020) = 0;
  *(a2 + 2024) = 0;
  *(a2 + 2028) = 0;
  *(a2 + 2032) = 0;
  *(a2 + 2036) = 0;
  *(a2 + 2040) = 0;
  *(a2 + 2044) = 0;
  *(a2 + 2048) = 0;
  *(a2 + 2050) = 0;
  *(a2 + 2052) = 0;
  *(a2 + 2056) = 0;
  *(a2 + 2060) = 0;
  *(a2 + 2064) = 0;
  *(a2 + 2072) = 0;
  *(a2 + 2096) = 0;
  *(a2 + 2104) = 0;
  *(a2 + 2120) = 0;
  *(a2 + 848) = 0;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 784) = 0u;
  *(a2 + 800) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 768) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 656) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 624) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 1856) = 0;
  *(a2 + 1840) = 0u;
  *(a2 + 1824) = 0u;
  *(a2 + 1808) = 0u;
  *(a2 + 1792) = 0u;
  *(a2 + 1872) = 0u;
  *(a2 + 1888) = 0u;
  *(a2 + 1904) = 0u;
  *(a2 + 1920) = 0u;
  v18 = a2;
  *(a2 + 1936) = 0;
  memset(v29, 0, sizeof(v29));
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v31[0] = *(*(&v25 + 1) + 8 * v7);
        std::vector<ARAnchor * {__strong}>::emplace_back<ARAnchor * {__strong}&>(v29, v31);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v19[0] = v29;
  v19[1] = isInputMesh;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v9 = std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v19);
  v10 = *(v19[0] + 8);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v11 = v8;
    v12 = 0;
    do
    {
      v13 = v9 + 1;
      v9 = *(*v11 + 1);
      while (v13 != v9)
      {
        if (v11[1](*v13))
        {
          v9 = v13;
          break;
        }

        ++v13;
      }

      ++v12;
    }

    while (v9 != v10);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<ARAnchor * {__strong}>>,BOOL (*)(ARAnchor *)>::begin[abi:ne200100](v19);
  if (v12)
  {
    v14 = *(v19[0] + 8);
    std::vector<rf::data_flow::RFUUID>::__vallocate[abi:ne200100](&v22, v12);
  }

  v15 = v23;
  v16 = v24;
  v18[6] = v22;
  v18[7] = v15;
  v18[8] = v16;
  v31[0] = v29;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100](v31);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2617E0F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  *(v37 - 136) = &a36;
  std::vector<ARAnchor * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v37 - 136));
  rf::data_flow::provider::InputData::~InputData(a10);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<meshServiceRemoveAnchorCallback(void)::$_0,std::allocator<meshServiceRemoveAnchorCallback(void)::$_0>,rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<rf::data_flow::RFUUID>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void rf::synthetic::getMeshPathFromIdentifier(rf::data_flow::RFUUID *a1)
{
  rf::data_flow::RFUUID::string(a1, __p);
  v1 = v4;
  if ((v4 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v4 & 0x80u) != 0)
  {
    v1 = __p[1];
  }

  for (; v1; --v1)
  {
    if (*v2 == 45)
    {
      *v2 = 95;
    }

    v2 = (v2 + 1);
  }

  std::operator+<char>();
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617E1170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::synthetic::getAnchorPathFromIdentifier(rf::data_flow::RFUUID *a1)
{
  rf::data_flow::RFUUID::string(a1, __p);
  v1 = v4;
  if ((v4 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v4 & 0x80u) != 0)
  {
    v1 = __p[1];
  }

  for (; v1; --v1)
  {
    if (*v2 == 45)
    {
      *v2 = 95;
    }

    v2 = (v2 + 1);
  }

  std::operator+<char>();
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617E1220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::synthetic::getObjectPathFromIdentifier(rf::data_flow::RFUUID *a1)
{
  rf::data_flow::RFUUID::string(a1, __p);
  v1 = v4;
  if ((v4 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v4 & 0x80u) != 0)
  {
    v1 = __p[1];
  }

  for (; v1; --v1)
  {
    if (*v2 == 45)
    {
      *v2 = 95;
    }

    v2 = (v2 + 1);
  }

  std::operator+<char>();
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2617E12D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::query::QueryDatabasePerScene::updateUsingScene(void *a1, uint64_t a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v85.i64[0] = a2;
  v2 = std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::__emplace_unique_key_args<REScene const*,std::piecewise_construct_t const&,std::tuple<REScene const*&&>,std::tuple<>>(a1, &v85);
  memset(v71, 0, sizeof(v71));
  v72 = 1065353216;
  v85.i64[0] = 0;
  *&v80 = &v85;
  v3 = std::__hash_table<std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,re::GenericSRT<float>>>>::__emplace_unique_key_args<REEntity *,std::piecewise_construct_t const&,std::tuple<REEntity *&&>,std::tuple<>>(v71, 0);
  v3[4] = 0x3F8000003F800000;
  v3[5] = 1065353216;
  v3[6] = 0;
  v3[7] = 0x3F80000000000000;
  v3[8] = 0;
  v3[9] = 0;
  EntitiesArray = RESceneGetEntitiesArray();
  if (v5)
  {
    v63 = &EntitiesArray[v5];
    do
    {
      v64 = EntitiesArray;
      v6 = *EntitiesArray;
      if (REIsEntityHidden())
      {
        goto LABEL_84;
      }

      v74 = 0u;
      memset(v73, 0, sizeof(v73));
      *&v80 = v6;
      std::deque<REEntity *>::push_back(v73, &v80);
LABEL_5:
      if (*(&v74 + 1))
      {
        v7 = *(*(*(&v73[0] + 1) + ((v74 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v74 & 0x1FF));
        *&v74 = v74 + 1;
        --*(&v74 + 1);
        if (v74 >= 0x400)
        {
          operator delete(**(&v73[0] + 1));
          *(&v73[0] + 1) += 8;
          *&v74 = v74 - 512;
        }

        LocalId = REEntityGetLocalId();
        LOBYTE(v79) = 0;
        *(&v79 + 1) = 0;
        uuid_clear(uu);
        *uu = LocalId;
        v9 = *(&v79 + 1);
        if (!*(&v79 + 1))
        {
          v59 = uu;
          if (v79)
          {
            v59 = LocalId;
          }

          v9 = ((*v59 >> 2) + (*v59 << 6) + *(v59 + 1) + 2654435769) ^ *v59;
          *(&v79 + 1) = v9;
        }

        v10 = v2[4];
        if (!*&v10)
        {
          goto LABEL_25;
        }

        v11 = vcnt_s8(v10);
        v11.i16[0] = vaddlv_u8(v11);
        v12 = v11.u32[0];
        if (v11.u32[0] > 1uLL)
        {
          v13 = v9;
          if (v9 >= *&v10)
          {
            v13 = v9 % *&v10;
          }
        }

        else
        {
          v13 = (*&v10 - 1) & v9;
        }

        v14 = *(v2[3] + 8 * v13);
        if (!v14 || (v15 = *v14) == 0)
        {
LABEL_25:
          RESharedPtr<REEntity>::fromGet(v7, &v80);
          v17 = v80;
          *&v80 = 0;
          v76 = 0u;
          RESharedPtr<REEntity>::~RESharedPtr(&v80);
          v85.i64[0] = v17;
          *&v75 = 0;
          v86 = v76;
          v87 = 0;
          v80 = *uu;
          v81 = v79;
          v84 = -1;
          *&v82 = v17;
          if (v17)
          {
            RERetain();
          }

          v83 = v86;
          v84 = 0;
          v18 = *(&v81 + 1);
          if (!*(&v81 + 1))
          {
            v60 = &v80;
            if (v81)
            {
              v60 = v80;
            }

            v18 = ((*v60 >> 2) + (*v60 << 6) + *(v60 + 1) + 2654435769) ^ *v60;
            *(&v81 + 1) = v18;
          }

          v19 = v2[4];
          if (!*&v19)
          {
            goto LABEL_44;
          }

          v20 = vcnt_s8(v19);
          v20.i16[0] = vaddlv_u8(v20);
          v21 = v20.u32[0];
          if (v20.u32[0] > 1uLL)
          {
            v22 = v18;
            if (v18 >= *&v19)
            {
              v22 = v18 % *&v19;
            }
          }

          else
          {
            v22 = (*&v19 - 1) & v18;
          }

          v23 = *(v2[3] + 8 * v22);
          if (!v23 || (v15 = *v23) == 0)
          {
LABEL_44:
            operator new();
          }

          while (1)
          {
            v24 = v15->u64[1];
            if (v24 == v18)
            {
              if (rf::data_flow::RFUUID::Equality::operator()((v2 + 3), &v15[1], &v80))
              {
                if (v84 != -1)
                {
                  RESharedPtr<REEntity>::~RESharedPtr(&v82);
                }

                if (v87 != -1)
                {
                  RESharedPtr<REEntity>::~RESharedPtr(&v85);
                }

                RESharedPtr<REEntity>::~RESharedPtr(&v75);
                goto LABEL_50;
              }
            }

            else
            {
              if (v21 > 1)
              {
                if (v24 >= *&v19)
                {
                  v24 %= *&v19;
                }
              }

              else
              {
                v24 &= *&v19 - 1;
              }

              if (v24 != v22)
              {
                goto LABEL_44;
              }
            }

            v15 = v15->i64[0];
            if (!v15)
            {
              goto LABEL_44;
            }
          }
        }

        while (1)
        {
          v16 = v15->u64[1];
          if (v16 == v9)
          {
            if (rf::data_flow::RFUUID::Equality::operator()((v2 + 3), &v15[1], uu))
            {
LABEL_50:
              if (v15[5].i32[0])
              {
                std::__throw_bad_variant_access[abi:ne200100]();
              }

              Parent = REEntityGetParent();
              if (!*(&v71[0] + 1))
              {
                goto LABEL_86;
              }

              v26 = 0x9DDFEA08EB382D69 * ((8 * (Parent & 0x1FFFFFFF) + 8) ^ HIDWORD(Parent));
              v27 = 0x9DDFEA08EB382D69 * (HIDWORD(Parent) ^ (v26 >> 47) ^ v26);
              v28 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
              v29 = vcnt_s8(*(v71 + 8));
              v29.i16[0] = vaddlv_u8(v29);
              if (v29.u32[0] > 1uLL)
              {
                v30 = v28;
                if (v28 >= *(&v71[0] + 1))
                {
                  v30 = v28 % *(&v71[0] + 1);
                }
              }

              else
              {
                v30 = (*(&v71[0] + 1) - 1) & v28;
              }

              v31 = *(*&v71[0] + 8 * v30);
              if (!v31 || (v32 = *v31) == 0)
              {
LABEL_86:
                std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
              }

              while (2)
              {
                v33 = v32->u64[1];
                if (v33 != v28)
                {
                  if (v29.u32[0] > 1uLL)
                  {
                    if (v33 >= *(&v71[0] + 1))
                    {
                      v33 %= *(&v71[0] + 1);
                    }
                  }

                  else
                  {
                    v33 &= *(&v71[0] + 1) - 1;
                  }

                  if (v33 != v30)
                  {
                    goto LABEL_86;
                  }

LABEL_66:
                  v32 = v32->i64[0];
                  if (!v32)
                  {
                    goto LABEL_86;
                  }

                  continue;
                }

                break;
              }

              if (v32[1].i64[0] != Parent)
              {
                goto LABEL_66;
              }

              v68 = v32[3];
              v69 = v32[2];
              v70 = v32[4];
              if (REEntityGetComponent())
              {
                RETransformComponentGetLocalSRT();
                v66 = v35;
                v67 = v34;
                v65 = v36;
              }

              else if (REEntityGetComponent())
              {
                REAnchorComponentGetWorldTransform();
                v80 = v37;
                v81 = v38;
                v82 = v39;
                v83 = v40;
                v85 = 0u;
                v75 = xmmword_26185E1B0;
                v77 = 0u;
                re::decomposeScaleRotationTranslation<float>(&v80, &v85, &v75, &v77);
                v66 = v75;
                v67 = v85;
                v65 = v77;
              }

              else
              {
                v65 = 0u;
                v66 = xmmword_26185E1B0;
                v67 = xmmword_26185E500;
              }

              v85.i64[0] = v7;
              *&v80 = &v85;
              v41 = std::__hash_table<std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,re::GenericSRT<float>>>>::__emplace_unique_key_args<REEntity *,std::piecewise_construct_t const&,std::tuple<REEntity *&&>,std::tuple<>>(v71, v7);
              _Q6 = v68;
              v43 = vextq_s8(vuzp1q_s32(_Q6, _Q6), v68, 0xCuLL);
              v44 = vnegq_f32(v68);
              v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), v44), v65, v43);
              v46 = vaddq_f32(v45, v45);
              v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
              v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL), v44), v47, v43);
              _S3 = v66.i32[3];
              _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL), v44), v66, v43);
              v51 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v66, v68, 3), v68, v66, 3);
              __asm { FMLA            S2, S3, V6.S[3] }

              v51.i32[3] = _Q2.i32[0];
              v41[2] = vmulq_f32(v69, v67);
              v41[3] = v51;
              v56 = vaddq_f32(v70, vmulq_f32(v69, vaddq_f32(vaddq_f32(v65, vmulq_laneq_f32(v47, v68, 3)), vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))));
              v41[4] = v56;
              v15[4] = v56;
              ChildCount = REEntityGetChildCount();
              if (ChildCount)
              {
                for (i = 0; i != ChildCount; ++i)
                {
                  *&v80 = REEntityGetChild();
                  std::deque<REEntity *>::push_back(v73, &v80);
                }
              }

              goto LABEL_5;
            }
          }

          else
          {
            if (v12 > 1)
            {
              if (v16 >= *&v10)
              {
                v16 %= *&v10;
              }
            }

            else
            {
              v16 &= *&v10 - 1;
            }

            if (v16 != v13)
            {
              goto LABEL_25;
            }
          }

          v15 = v15->i64[0];
          if (!v15)
          {
            goto LABEL_25;
          }
        }
      }

      std::deque<REEntity *>::~deque[abi:ne200100](v73);
LABEL_84:
      EntitiesArray = v64 + 1;
    }

    while (v64 + 1 != v63);
  }

  result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v71);
  v62 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__hash_table<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::__unordered_map_hasher<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::hash<REScene const*>,std::equal_to<REScene const*>,true>,std::__unordered_map_equal<REScene const*,std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,std::equal_to<REScene const*>,std::hash<REScene const*>,true>,std::allocator<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>>>::__emplace_unique_key_args<REScene const*,std::piecewise_construct_t const&,std::tuple<REScene const*&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_2617E2074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene const*,std::unordered_map<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 20) != -1)
      {
        RESharedPtr<REEntity>::~RESharedPtr(v2 + 6);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,re::GenericSRT<float>>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,re::GenericSRT<float>>>>::__emplace_unique_key_args<REEntity *,std::piecewise_construct_t const&,std::tuple<REEntity *&&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::deque<REEntity *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<REEntity *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<REEntity *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<REEntity **>::emplace_back<REEntity **&>(a1, &v10);
}

void sub_2617E27C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<REEntity **>::emplace_back<REEntity **&>(void *result, void *a2)
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

      std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](result, v11);
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

const void **std::__split_buffer<REEntity **>::emplace_front<REEntity **>(const void **result, void *a2)
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

      std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](result, v9);
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

void *std::__split_buffer<REEntity **>::emplace_back<REEntity **>(void *result, void *a2)
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

      std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](result[4], v11);
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

const void **std::__split_buffer<REEntity **>::emplace_front<REEntity **&>(const void **result, void *a2)
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

      std::allocator<ARAnchor * {__strong}>::allocate_at_least[abi:ne200100](result[4], v9);
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

uint64_t RESharedPtr<REEntity>::fromGet@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  *a2 = 0;
  if (result)
  {
    result = RERetain();
  }

  *a2 = v2;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    if (*(__p + 20) != -1)
    {
      RESharedPtr<REEntity>::~RESharedPtr(__p + 6);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t re::decomposeScaleRotationTranslation<float>(uint64_t result, int32x4_t *a2, void *a3, _OWORD *a4)
{
  *a4 = *(result + 48);
  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = vmulq_f32(*result, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL))), vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL)));
  v7 = -1.0;
  if ((v6.f32[2] + vaddv_f32(*v6.f32)) > 0.0)
  {
    v7 = 1.0;
  }

  v8 = vmulq_f32(*result, *result);
  v9 = vmulq_f32(v4, v4);
  v10 = vadd_f32(vzip1_s32(*v8.i8, *v9.i8), vzip2_s32(*v8.i8, *v9.i8));
  v11 = vextq_s8(v8, v8, 8uLL);
  *v11.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v11.f32, *&vextq_s8(v9, v9, 8uLL)), v10));
  v12 = vmulq_f32(v5, v5);
  v11.i32[2] = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  v13 = vmulq_n_f32(v11, v7);
  *a2 = v13;
  v14 = v13.i64[1];
  v15 = vdupq_laneq_s32(v13, 2);
  v16 = v13.i64[0];
  v17 = vdivq_f32(*result, vdupq_lane_s32(*v13.i8, 0));
  v18 = vdivq_f32(*(result + 16), vdupq_lane_s32((__PAIR128__(v14, v16) >> 32), 0));
  v19 = vdivq_f32(*(result + 32), v15);
  v20 = vmulq_f32(v17, v17);
  v15.f32[0] = vaddv_f32(*v20.f32);
  v20.i32[1] = 0;
  *&v21 = v20.f32[2] + v15.f32[0];
  *v15.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v15.f32[0]));
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v21, vmul_f32(*v15.f32, *v15.f32)));
  v22 = vmulq_n_f32(v17, vmul_f32(*v15.f32, vrsqrts_f32(v21, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  v23 = vmulq_f32(v22, v18);
  v24 = vmulq_f32(v22, v22);
  v24.f32[0] = v24.f32[2] + vaddv_f32(*v24.f32);
  v25 = vsubq_f32(v18, vmulq_n_f32(v22, (v23.f32[2] + vaddv_f32(*v23.f32)) / v24.f32[0]));
  v26 = vmulq_f32(v25, v25);
  *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
  *v26.f32 = vrsqrte_f32(v27);
  *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
  v28 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
  v29 = vmulq_f32(v22, v19);
  v30 = vsubq_f32(v19, vmulq_n_f32(v22, (v29.f32[2] + vaddv_f32(*v29.f32)) / v24.f32[0]));
  v31 = vmulq_f32(v19, v28);
  v32 = vmulq_f32(v28, v28);
  v33 = vsubq_f32(v30, vmulq_n_f32(v28, (v31.f32[2] + vaddv_f32(*v31.f32)) / (v32.f32[2] + vaddv_f32(*v32.f32))));
  v34 = vmulq_f32(v33, v33);
  v32.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
  *v34.f32 = vrsqrte_f32(v32.u32[0]);
  *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v34.f32, *v34.f32)));
  v35 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v34.f32, *v34.f32))).f32[0]);
  v36 = (v22.f32[0] + v28.f32[1]) + v35.f32[2];
  if (v36 >= 0.0)
  {
    v46 = sqrtf(v36 + 1.0);
    v47 = v46 + v46;
    v20.f32[0] = v46 + v46;
    v48 = vrecpe_f32(*v20.f32);
    v49 = vmul_f32(v48, vrecps_f32(*v20.f32, v48));
    v50 = vmul_f32(v49, vrecps_f32(*v20.f32, v49)).f32[0];
    v42 = (v28.f32[2] - v35.f32[1]) * v50;
    v43 = (v35.f32[0] - v22.f32[2]) * v50;
    v44 = (v22.f32[1] - v28.f32[0]) * v50;
    v51 = v47 * 0.25;
  }

  else
  {
    if (v22.f32[0] < v28.f32[1] || v22.f32[0] < v35.f32[2])
    {
      v52 = 1.0 - v22.f32[0];
      if (v28.f32[1] >= v35.f32[2])
      {
        v57 = sqrtf(v28.f32[1] + (v52 - v35.f32[2]));
        v58 = v57 + v57;
        v59 = vrecpe_f32(COERCE_UNSIGNED_INT(v57 + v57));
        v60 = vmul_f32(v59, vrecps_f32(COERCE_UNSIGNED_INT(v57 + v57), v59));
        v41 = vmul_f32(v60, vrecps_f32(COERCE_UNSIGNED_INT(v57 + v57), v60)).f32[0];
        v42 = (v22.f32[1] + v28.f32[0]) * v41;
        v43 = v58 * 0.25;
        v44 = (v28.f32[2] + v35.f32[1]) * v41;
        v45 = v35.f32[0] - v22.f32[2];
      }

      else
      {
        v53 = sqrtf((v52 - v28.f32[1]) + v35.f32[2]);
        v54 = v53 + v53;
        v55 = vrecpe_f32(COERCE_UNSIGNED_INT(v53 + v53));
        v56 = vmul_f32(v55, vrecps_f32(COERCE_UNSIGNED_INT(v53 + v53), v55));
        v41 = vmul_f32(v56, vrecps_f32(COERCE_UNSIGNED_INT(v53 + v53), v56)).f32[0];
        v42 = (v22.f32[2] + v35.f32[0]) * v41;
        v43 = (v28.f32[2] + v35.f32[1]) * v41;
        v44 = v54 * 0.25;
        v45 = v22.f32[1] - v28.f32[0];
      }
    }

    else
    {
      v37 = sqrtf(v22.f32[0] + ((1.0 - v28.f32[1]) - v35.f32[2]));
      *&v38 = v37 + v37;
      v39 = vrecpe_f32(v38);
      v40 = vmul_f32(v39, vrecps_f32(v38, v39));
      v41 = vmul_f32(v40, vrecps_f32(v38, v40)).f32[0];
      v42 = *&v38 * 0.25;
      v43 = (v22.f32[1] + v28.f32[0]) * v41;
      v44 = (v22.f32[2] + v35.f32[0]) * v41;
      v45 = v28.f32[2] - v35.f32[1];
    }

    v51 = v45 * v41;
  }

  *a3 = __PAIR64__(LODWORD(v43), LODWORD(v42));
  a3[1] = __PAIR64__(LODWORD(v51), LODWORD(v44));
  return result;
}

uint64_t std::deque<REEntity *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<REEntity **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<REEntity **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::DebugOptionConsumer(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_287408320;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 48);
  *(a1 + 80) = 0;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  *(a1 + 104) = 0;
  if (*(a2 + 80) == 1)
  {
    if (*(a2 + 79) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v8 = *(a2 + 56);
      *(a1 + 96) = *(a2 + 9);
      *(a1 + 80) = v8;
    }

    *(a1 + 104) = 1;
  }

  v9 = *(a2 + 46);
  *(a1 + 112) = *(a2 + 22);
  *(a1 + 116) = v9;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  rf::data_flow::consumer::MeshVisualizer::MeshVisualizer((a1 + 176));
  rf::data_flow::consumer::MeshVisualizer::MeshVisualizer((a1 + 496));
  rf::data_flow::consumer::MeshVisualizer::MeshVisualizer((a1 + 816));
  rf::data_flow::consumer::MeshVisualizer::MeshVisualizer((a1 + 1136));
  rf::data_flow::consumer::MeshVisualizer::MeshVisualizer((a1 + 1456));
  *(a1 + 1776) = 0;
  if ((atomic_load_explicit(&qword_2810C4628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4628))
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "");
    rf::UserDefaults::UserDefaults(&v30, v28);
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.DebugOptionConsumer.enableRoomDebugVisualization");
    v19 = rf::UserDefaults::BOOLValue(&v30, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v20 = *&v19 & ((v19 & 0x100) >> 8);
    rf::UserDefaults::~UserDefaults(&v30);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    _MergedGlobals_0 = v20;
    __cxa_guard_release(&qword_2810C4628);
  }

  *(a1 + 72) |= _MergedGlobals_0;
  v10 = *(a1 + 112);
  if ((atomic_load_explicit(&qword_2810C4638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4638))
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "");
    rf::UserDefaults::UserDefaults(&v30, v28);
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.DebugOptionConsumer.roomVisualizationMode");
    v21 = rf::UserDefaults::intValue(&v30, __p);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = v10;
    }

    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    rf::UserDefaults::~UserDefaults(&v30);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    qword_2810C4630 = v23;
    __cxa_guard_release(&qword_2810C4638);
  }

  v11 = qword_2810C4630;
  if (qword_2810C4630 >= 4)
  {
    v11 = v10;
  }

  *(a1 + 112) = v11;
  if ((atomic_load_explicit(&qword_2810C4640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C4640))
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "");
    rf::UserDefaults::UserDefaults(&v30, v28);
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.DebugOptionConsumer.roomClassificationAlpha");
    v24 = rf::UserDefaults::floatValue(&v30, __p);
    if ((v24 & 0x100000000) != 0)
    {
      v25 = *&v24;
    }

    else
    {
      v25 = 0.1;
    }

    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    rf::UserDefaults::~UserDefaults(&v30);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    dword_2810C4624 = LODWORD(v25);
    __cxa_guard_release(&qword_2810C4640);
  }

  v12 = 1.0;
  if (*&dword_2810C4624 <= 1.0)
  {
    v12 = *&dword_2810C4624;
  }

  LODWORD(v13) = 0;
  if (*&dword_2810C4624 < 0.0)
  {
    v12 = 0.0;
  }

  v14 = *(a1 + 1040);
  if (*(a1 + 1048) != v14)
  {
    v15 = 0;
    v16 = 12;
    do
    {
      *(v14 + v16) = v12;
      *(a1 + 1084) = v12;
      ++v15;
      v14 = *(a1 + 1040);
      v16 += 16;
    }

    while (v15 < (*(a1 + 1048) - v14) >> 4);
  }

  *&v17 = 1061997773;
  DWORD1(v13) = 1061997773;
  DWORD2(v17) = 0;
  *(&v17 + 3) = v12;
  *(a1 + 1232) = v17;
  DWORD2(v13) = 0;
  *(&v13 + 3) = v12;
  *(a1 + 1552) = v13;
  *(a1 + 1778) = 1;
  return a1;
}

void sub_2617E358C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  rf::UserDefaults::~UserDefaults(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  __cxa_guard_abort(&qword_2810C4640);
  rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer((v22 + 1456));
  rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer((v22 + 1136));
  rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer((v22 + 816));
  rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer((v22 + 496));
  rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer((v27 + 8));
  RESharedPtr<REAsset>::~RESharedPtr(v26);
  RESharedPtr<REAsset>::~RESharedPtr(v27 + 5);
  RESharedPtr<REAsset>::~RESharedPtr(v25);
  RESharedPtr<REAsset>::~RESharedPtr(v27 + 3);
  RESharedPtr<REAsset>::~RESharedPtr(v24);
  if (v22[104] == 1 && v22[103] < 0)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(a1);
}

__n128 rf::data_flow::consumer::DebugOptionConsumer::setRoomVisualizationClassificationAlpha(__n128 *this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  v3 = a2 < 0.0;
  result.n128_u32[0] = 0;
  if (v3)
  {
    v2 = 0.0;
  }

  v5 = this[65].n128_u64[0];
  if (this[65].n128_u64[1] != v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      *(v5 + v7) = v2;
      this[67].n128_f32[3] = v2;
      ++v6;
      v5 = this[65].n128_u64[0];
      v7 += 16;
    }

    while (v6 < (this[65].n128_u64[1] - v5) >> 4);
  }

  v8.n128_u64[0] = 1061997773;
  result.n128_u32[1] = 1061997773;
  v8.n128_u32[2] = 0;
  v8.n128_f32[3] = v2;
  result.n128_u32[2] = 0;
  this[77] = v8;
  result.n128_f32[3] = v2;
  this[97] = result;
  this[111].n128_u8[2] = 1;
  return result;
}

void rf::data_flow::consumer::MeshVisualizer::~MeshVisualizer(rf::data_flow::consumer::MeshVisualizer *this)
{
  v2 = *(this + 34);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 6);
  RESharedPtr<REAsset>::~RESharedPtr(this + 5);

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this);
}

void rf::data_flow::consumer::DebugOptionConsumer::consumeLatestUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1 || *(a2 + 16) != 1)
  {
    return;
  }

  v4 = *(a1 + 16);
  std::mutex::lock(v4);
  if ((*(a2 + 16) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v5 = MEMORY[0x26670CB10](*(a2 + 8));
  if ((*(a2 + 16) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v6 = v5;
  v7 = MEMORY[0x26670CB70](*(a2 + 8));
  if (v6)
  {
    v8 = v7;
    if (v7)
    {
      if (RERenderManagerIsBeingUpdated())
      {
        if (!*(a1 + 136))
        {
          AssetHandle = REAssetManagerCreateAssetHandle();
          v9 = *(a1 + 144);
          *(a1 + 144) = AssetHandle;
          if (v9)
          {
            RERelease();
          }

          AssetHandle = 0;
          RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
          v10 = *(a1 + 144);
          REAssetHandleLoadAsync();
          v11 = *(a1 + 144);
          AssetHandle = REAssetManagerMaterialMemoryAssetCreate();
          v12 = *(a1 + 136);
          *(a1 + 136) = AssetHandle;
          if (v12)
          {
            RERelease();
          }

          AssetHandle = 0;
          RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
          v13 = *(a1 + 136);
          REAssetHandleLoadAsync();
        }

        if (!*(a1 + 152))
        {
          AssetHandle = REAssetManagerCreateAssetHandle();
          v14 = *(a1 + 160);
          *(a1 + 160) = AssetHandle;
          if (v14)
          {
            RERelease();
          }

          AssetHandle = 0;
          RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
          v15 = *(a1 + 160);
          REAssetHandleLoadAsync();
          v16 = *(a1 + 160);
          AssetHandle = REAssetManagerMaterialMemoryAssetCreate();
          v17 = *(a1 + 152);
          *(a1 + 152) = AssetHandle;
          if (v17)
          {
            RERelease();
          }

          AssetHandle = 0;
          RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
          v18 = *(a1 + 152);
          REAssetHandleLoadAsync();
        }

        if (!*(a1 + 128))
        {
          AssetHandle = REAssetManagerCreateAssetHandle();
          v19 = *(a1 + 128);
          *(a1 + 128) = AssetHandle;
          if (v19)
          {
            RERelease();
          }

          AssetHandle = 0;
          RESharedPtr<REAsset>::~RESharedPtr(&AssetHandle);
          v20 = *(a1 + 128);
          if ((REAssetHandleIsLoaded() & 1) == 0)
          {
            v21 = *(a1 + 128);
            REAssetHandleLoadAsync();
          }
        }

        rf::data_flow::consumer::MeshVisualizer::setupMaterials(a1 + 176);
        rf::data_flow::consumer::MeshVisualizer::setupMaterials(a1 + 496);
        rf::data_flow::consumer::MeshVisualizer::setupMaterials(a1 + 816);
        *(a1 + 872) = 9;
        rf::data_flow::consumer::MeshVisualizer::setupMaterials(a1 + 1136);
        *(a1 + 1192) = 8;
        rf::data_flow::consumer::MeshVisualizer::setupMaterials(a1 + 1456);
        *(a1 + 1512) = 8;
        if (*(a1 + 1779))
        {
          goto LABEL_26;
        }

        v23 = *(a1 + 144);
        if (REAssetHandleIsLoaded() && (v24 = *(a1 + 136), REAssetHandleIsLoaded()) && (v25 = *(a1 + 160), REAssetHandleIsLoaded()) && (v26 = *(a1 + 152), REAssetHandleIsLoaded()) && (v27 = *(a1 + 128), REAssetHandleIsLoaded()) && *(a1 + 240) == 2)
        {
          v28 = *(a1 + 560) == 2;
          *(a1 + 1779) = v28;
          if (v28)
          {
LABEL_26:
            if ((*(a2 + 32) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            AssetHandle = *(a2 + 24);
            v22 = *(*(a1 + 16) + 4064);
            if (v22 <= 4 && ((1 << v22) & 0x15) != 0)
            {
              if (*(a1 + 24) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::drawAnchorVisualizations(a1, v8, &AssetHandle, v4 + 144, v4 + 1424);
              }

              if (*(a1 + 32) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::drawSceneObjectVisualizations(a1, v8, v4 + 1320);
              }

              if (*(a1 + 40) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::updateMeshVisualizations(a1, v4 + 2888, v4 + 2928, v4 + 2968, *(v4 + 80));
                rf::data_flow::consumer::DebugOptionConsumer::drawMeshVisualizations(a1, v8, v4 + 64);
              }

              if (*(a1 + 53) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::updatePRRMeshVisualizations(a1, v4 + 3008, v4 + 3048, v4 + 3088, *(v4 + 120));
                rf::data_flow::consumer::DebugOptionConsumer::drawPRRMeshVisualizations(a1, v8, v4 + 104);
              }

              if (*(a1 + 64) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::drawEnvironmentProbeVisualizations(a1, v8, v4 + 1280);
              }

              if (*(a1 + 72) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::updateRoomVisualizations(a1, (v4 + 3928), (v4 + 3968), (v4 + 352));
                rf::data_flow::consumer::DebugOptionConsumer::drawRoomVisualizations(a1, v8, v4 + 352, (v4 + 144));
              }

              if (*(a1 + 117) == 1)
              {
                rf::data_flow::consumer::DebugOptionConsumer::drawPinnedAnchorVisualization(a1, v8, v4 + 224, (v4 + 144));
              }
            }

            else
            {
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 176);
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 496);
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 816);
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 1136);
              std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 1456);
              *(a1 + 1776) = 257;
              *(a1 + 1778) = 1;
            }
          }
        }

        else
        {
          *(a1 + 1779) = 0;
        }
      }
    }
  }

  std::mutex::unlock(v4);
}

void sub_2617E3CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RESharedPtr<REAsset>::~RESharedPtr(va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::drawAnchorVisualizations(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v82 = *MEMORY[0x277D85DE8];
  v8 = REPrimitiveRenderAddContext();
  v9 = *(a1 + 136);
  v58 = v8;
  REPrimitiveRenderSetShapeMaterial();
  v59 = a1;
  v60 = REPrimitiveRenderAddContext();
  v10 = *(a1 + 152);
  v57 = a2;
  REPrimitiveRenderSetShapeMaterial();
  v11 = *a3;
  REAnchorComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  *__p = 0u;
  v62 = 0u;
  v63 = 1065353216;
  if (v13)
  {
    v14 = ComponentsOfClass;
    v15 = (ComponentsOfClass + 8 * v13);
    do
    {
      v16 = *v14;
      AnchorIdentifier = REAnchorComponentGetAnchorIdentifier();
      LOBYTE(v76) = 0;
      *(&v76 + 1) = 0;
      uuid_clear(uu);
      *uu = AnchorIdentifier;
      LOBYTE(v76) = 1;
      v18 = *v14;
      REComponentGetEntity();
      REAnchoringComponentGetComponentType();
      ComponentByClass = REEntityGetComponentByClass();
      v65 = *uu;
      v66 = v76;
      *&v67 = ComponentByClass;
      v20 = *(&v76 + 1);
      if (!*(&v76 + 1))
      {
        v28 = &v65;
        if (v66)
        {
          v28 = v65;
        }

        v20 = ((*v28 >> 2) + (*v28 << 6) + *(v28 + 1) + 2654435769) ^ *v28;
        *(&v66 + 1) = v20;
      }

      v21 = __p[1];
      if (!__p[1])
      {
        goto LABEL_20;
      }

      v22 = vcnt_s8(__p[1]);
      v22.i16[0] = vaddlv_u8(v22);
      v23 = v22.u32[0];
      if (v22.u32[0] > 1uLL)
      {
        v24 = v20;
        if (v20 >= __p[1])
        {
          v24 = v20 % __p[1];
        }
      }

      else
      {
        v24 = (__p[1] - 1) & v20;
      }

      v25 = *(__p[0] + v24);
      if (!v25 || (v26 = *v25) == 0)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        v27 = v26[1];
        if (v27 == v20)
        {
          break;
        }

        if (v23 > 1)
        {
          if (v27 >= v21)
          {
            v27 %= v21;
          }
        }

        else
        {
          v27 &= v21 - 1;
        }

        if (v27 != v24)
        {
          goto LABEL_20;
        }

LABEL_19:
        v26 = *v26;
        if (!v26)
        {
          goto LABEL_20;
        }
      }

      if (!rf::data_flow::RFUUID::Equality::operator()(__p, (v26 + 2), &v65))
      {
        goto LABEL_19;
      }

      ++v14;
    }

    while (v14 != v15);
  }

  if (*(a5 + 272))
  {
    rf::helpers::getRFUUIDFromAnchor(a5, v79);
    v29 = 1;
  }

  else
  {
    v29 = 0;
    LOBYTE(v79[0]) = 0;
  }

  v81 = v29;
  v30 = *(a4 + 16);
  if (!v30)
  {
    goto LABEL_68;
  }

  do
  {
    if (v81 == 1)
    {
      v31 = v80 ? v79[0] : v79;
      v32 = *(v30 + 32) ? v30[2] : (v30 + 2);
      if (!uuid_compare(v31, v32))
      {
        goto LABEL_62;
      }
    }

    rf::helpers::getTransformFromAnchor((v30 + 6));
    v33 = v30[5];
    if (!v33)
    {
      if (*(v30 + 32))
      {
        v49 = v30[2];
      }

      else
      {
        v49 = v30 + 2;
      }

      v33 = ((*v49 >> 2) + (*v49 << 6) + v49[1] + 2654435769) ^ *v49;
      v30[5] = v33;
    }

    v34 = __p[1];
    if (!__p[1])
    {
      goto LABEL_56;
    }

    v35 = vcnt_s8(__p[1]);
    v35.i16[0] = vaddlv_u8(v35);
    v36 = v35.u32[0];
    if (v35.u32[0] > 1uLL)
    {
      v37 = v33;
      if (v33 >= __p[1])
      {
        v37 = v33 % __p[1];
      }
    }

    else
    {
      v37 = (__p[1] - 1) & v33;
    }

    v38 = *(__p[0] + v37);
    if (!v38)
    {
      goto LABEL_58;
    }

    v39 = *v38;
    if (!*v38)
    {
LABEL_56:
      LODWORD(v38) = 0;
      goto LABEL_58;
    }

    do
    {
      v40 = v39[1];
      if (v40 == v33)
      {
        if (rf::data_flow::RFUUID::Equality::operator()(__p, (v39 + 2), (v30 + 2)))
        {
          LODWORD(v38) = 1;
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      if (v36 > 1)
      {
        if (v40 >= v34)
        {
          v40 %= v34;
        }
      }

      else
      {
        v40 &= v34 - 1;
      }

      if (v40 != v37)
      {
        break;
      }

LABEL_54:
      v39 = *v39;
    }

    while (v39);
    LODWORD(v38) = 0;
LABEL_57:
    a2 = v57;
LABEL_58:
    v41 = v66;
    *uu = v65;
    v76 = v66;
    v42 = v67;
    v43 = v68;
    v77 = v67;
    v78 = v68;
    v44 = *(v30 + 76);
    v45 = (*(v30 + 76) == 0) & v30[22];
    v46 = v60;
    if (v38)
    {
      v46 = v58;
    }

    v66 = v65;
    v67 = v41;
    v68 = v42;
    v69 = v43;
    v47 = *(v59 + 28);
    v48 = *(v59 + 128);
    LOBYTE(v65) = v38;
    BYTE1(v65) = v45;
    v70 = 0;
    v71 = v47;
    v72 = v46;
    v73 = a2;
    v74 = v48;
    if (v44 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v64 = &v65;
    (off_287408358[v44])(&v64, v30 + 6);
LABEL_62:
    v30 = *v30;
  }

  while (v30);
LABEL_68:
  if (*(a5 + 272))
  {
    rf::helpers::getTransformFromAnchor(a5);
    v66 = *uu;
    v67 = v76;
    v68 = v77;
    v69 = v78;
    v50 = *(v59 + 28);
    v51 = *(v59 + 128);
    LOWORD(v65) = 0;
    v70 = 1;
    v71 = v50;
    v72 = v60;
    v73 = v57;
    v74 = v51;
    v52 = *(a5 + 256);
    if (v52 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v64 = &v65;
    (off_287408358[v52])(&v64, a5);
  }

  result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(__p);
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2617E44F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::drawSceneObjectVisualizations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = REPrimitiveRenderAddContext();
  v7 = *(a1 + 136);
  result = REPrimitiveRenderSetShapeMaterial();
  v10 = *(a1 + 36);
  v11 = v6;
  v12 = a2;
  for (i = *(a3 + 16); i; i = i->i64[0])
  {
    result = rf::data_flow::consumer::SceneGraphVisualizer::drawSceneObject(&v10, i + 3);
  }

  return result;
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::updateMeshVisualizations(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v8 = result;
  ++*(result + 264);
  if (*(result + 1776) == 1)
  {
    for (i = a5; i; i = *i)
    {
      result = rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh(v8 + 176, i[6]);
    }

    *(v8 + 1776) = 0;
  }

  for (j = *(a2 + 16); j; j = *j)
  {
    result = rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh(v8 + 176, j[6]);
  }

  for (k = *(a3 + 16); k; k = *k)
  {
    result = rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh(v8 + 176, k[6]);
  }

  for (m = *(a4 + 16); m; m = *m)
  {
    result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((v8 + 176), m[6]);
  }

  return result;
}

void rf::data_flow::consumer::DebugOptionConsumer::drawMeshVisualizations(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = REPrimitiveRenderAddContext();
  rf::data_flow::consumer::MeshVisualizer::setMaterial((a1 + 44), a2, v6, a1[11], a1[12]);
  for (i = *(a3 + 16); i; i = *i)
  {
    rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh((a1 + 44), i[6]);
  }
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::updatePRRMeshVisualizations(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v8 = result;
  ++*(result + 584);
  if (*(result + 1777) == 1)
  {
    for (i = a5; i; i = *i)
    {
      result = rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh(v8 + 496, i[6]);
    }

    *(v8 + 1777) = 0;
  }

  for (j = *(a2 + 16); j; j = *j)
  {
    result = rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh(v8 + 496, j[6]);
  }

  for (k = *(a3 + 16); k; k = *k)
  {
    result = rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh(v8 + 496, k[6]);
  }

  for (m = *(a4 + 16); m; m = *m)
  {
    result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((v8 + 496), m[6]);
  }

  return result;
}

void rf::data_flow::consumer::DebugOptionConsumer::drawPRRMeshVisualizations(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = REPrimitiveRenderAddContext();
  rf::data_flow::consumer::MeshVisualizer::setMaterial((a1 + 124), a2, v6, a1[14], a1[15]);
  for (i = *(a3 + 16); i; i = *i)
  {
    rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh((a1 + 124), i[6]);
  }
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::drawEnvironmentProbeVisualizations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = REPrimitiveRenderAddContext();
  v7 = *(a1 + 136);
  result = REPrimitiveRenderSetShapeMaterial();
  v10 = *(a1 + 68);
  v11 = v6;
  v12 = a2;
  for (i = *(a3 + 16); i; i = i->i64[0])
  {
    result = rf::data_flow::consumer::SceneGraphVisualizer::drawSceneObject(&v10, i + 3);
  }

  return result;
}

void rf::data_flow::consumer::DebugOptionConsumer::updateRoomVisualizations(uint64_t a1, void *a2, void *a3, const rf::data_flow::Room *a4)
{
  ++*(a1 + 904);
  ++*(a1 + 1224);
  ++*(a1 + 1544);
  if (*(a1 + 1778) == 1)
  {
    *(a1 + 1778) = 0;
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 816);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 1136);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 1456);
    if (*(a4 + 912) != 1)
    {
      return;
    }

    rf::data_flow::consumer::DebugOptionConsumer::updateCurrentRoomVisualization(a1, a4);
  }

  if (*(a4 + 912))
  {
    if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, a4) || std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a2, a4))
    {

      rf::data_flow::consumer::DebugOptionConsumer::updateCurrentRoomVisualization(a1, a4);
    }
  }

  else
  {

    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::clear(a1 + 816);
  }
}

void rf::data_flow::consumer::DebugOptionConsumer::drawRoomVisualizations(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v49[54] = *MEMORY[0x277D85DE8];
  if (*(a3 + 912) == 1)
  {
    v5 = a1;
    v6 = *(a1 + 112);
    if ((v6 & 0xFFFFFFFE) == 2)
    {
      v8 = REPrimitiveRenderAddContext();
      v9 = *(v5 + 136);
      REPrimitiveRenderSetShapeMaterial();
      v10 = *(v5 + 128);
      v49[0] = v8;
      v49[1] = a2;
      v49[2] = v10;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v40 = *(*(v5 + 8) + 4288);
      if (v40)
      {
        v38 = (v5 + 80);
        do
        {
          if (*(v5 + 104) != 1)
          {
            goto LABEL_19;
          }

          v11 = *(v40 + 95);
          if (v11 >= 0)
          {
            v12 = *(v40 + 95);
          }

          else
          {
            v12 = v40[10];
          }

          v13 = *(v5 + 103);
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v5 + 88);
          }

          if (v12 == v13)
          {
            v15 = v11 >= 0 ? v40 + 9 : v40[9];
            v16 = *v38;
            v17 = v14 >= 0 ? v38 : *v38;
            if (!memcmp(v15, v17, v12))
            {
LABEL_19:
              v18 = v40[23];
              if (v18)
              {
                v41 = v40 + 9;
                do
                {
                  if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a4, (v18 + 2)))
                  {
                    v19 = v5;
                    v20 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a4, (v18 + 2));
                    if (!v20)
                    {
                      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                    }

                    v21 = v20 + 6;
                    v22 = v45;
                    if (v45 >= v46)
                    {
                      v25 = v44;
                      v26 = v45 - v44;
                      v27 = (v45 - v44) >> 4;
                      v28 = v27 + 1;
                      if ((v27 + 1) >> 60)
                      {
                        std::vector<int>::__throw_length_error[abi:ne200100]();
                      }

                      v29 = v46 - v44;
                      if ((v46 - v44) >> 3 > v28)
                      {
                        v28 = v29 >> 3;
                      }

                      if (v29 >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v30 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v30 = v28;
                      }

                      if (v30)
                      {
                        if (!(v30 >> 60))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      v31 = (16 * v27);
                      *v31 = v41;
                      v31[1] = v21;
                      v23 = 16 * v27 + 16;
                      memcpy(0, v25, v26);
                      v44 = 0;
                      v46 = 0;
                      if (v25)
                      {
                        operator delete(v25);
                      }
                    }

                    else
                    {
                      *v45 = v41;
                      *(v22 + 1) = v21;
                      v23 = (v22 + 16);
                    }

                    v5 = v19;
                    v45 = v23;
                  }

                  else
                  {
                    v24 = rf::realityFusionLogObject(0);
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                    {
                      rf::data_flow::RFUUID::string((v18 + 2), __p);
                      v32 = __p;
                      if (v43 < 0)
                      {
                        v32 = __p[0];
                      }

                      *buf = 136446210;
                      v48 = v32;
                      _os_log_error_impl(&dword_2617CB000, v24, OS_LOG_TYPE_ERROR, "DebugOptionConsumer: Room client referencing anchor %{public}s while it's not in the anchor dictionary.", buf, 0xCu);
                      if (v43 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }
                  }

                  v18 = *v18;
                }

                while (v18);
              }
            }
          }

          v40 = *v40;
        }

        while (v40);
      }

      rf::data_flow::consumer::RoomAwareAnchorVisualizer::drawRoomAnchors(v49, a3, &v44);
      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      v6 = *(v5 + 112);
    }

    if (v6 <= 3 && v6 != 2)
    {
      v34 = REPrimitiveRenderAddContext();
      rf::data_flow::consumer::MeshVisualizer::setMaterial(v5 + 816, a2, v34, 9, 0);
      v35 = REPrimitiveRenderAddContext();
      rf::data_flow::consumer::MeshVisualizer::setMaterial(v5 + 1136, a2, v35, 8, 0);
      v36 = REPrimitiveRenderAddContext();
      rf::data_flow::consumer::MeshVisualizer::setMaterial(v5 + 1456, a2, v36, 8, 0);
      if (*(v5 + 112) != 1)
      {
        rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh((v5 + 816), v49);
        goto LABEL_59;
      }

      if (*(a3 + 696) == 1)
      {
        rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh((v5 + 1456), v49);
        rf::data_flow::consumer::Mesh::~Mesh(v49);
      }

      if (*(a3 + 496) == 1)
      {
        rf::data_flow::consumer::MeshVisualizer::drawDebugVisMesh((v5 + 1136), v49);
LABEL_59:
        rf::data_flow::consumer::Mesh::~Mesh(v49);
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void rf::data_flow::consumer::DebugOptionConsumer::drawPinnedAnchorVisualization(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = REPrimitiveRenderAddContext();
  v8 = *(a1 + 136);
  REPrimitiveRenderSetShapeMaterial();
  v9 = *(a3 + 16);
  if (v9)
  {
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      rf::data_flow::RFUUID::string((v9 + 48), &__p);
      v15 = *(v9 + 120);
      v16 = HIBYTE(v53);
      if (v53 < 0)
      {
        v16 = v52;
      }

      p_p = &__p;
      if (v53 < 0)
      {
        p_p = __p;
      }

      *&v57 = p_p;
      *(&v57 + 1) = v16;
      *&v59 = 109;
      v58 = v15;
      *v54 = v55 + 8;
      *&v54[8] = xmmword_26185E530;
      *&v54[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      *&v55[0] = 0;
      __src = v55 + 8;
      v45.i64[0] = 2;
      v45.i64[1] = &v57;
      v46.i64[0] = 109;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v54, "Group identifier: {}\nTracking status: {}", 40, &v45);
      v18 = *&v54[16];
      if (*&v54[16] > 0x7FFFFFFFFFFFFFF7uLL)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (*&v54[16] >= 0x17uLL)
      {
        operator new();
      }

      v50 = v54[16];
      if (*&v54[16])
      {
        memmove(__dst, __src, *&v54[16]);
      }

      *(__dst + v18) = 0;
      if (__src != v55 + 8)
      {
        operator delete(__src);
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(__p);
      }

      v39 = v9;
      for (i = *(v9 + 96); i; i = *i)
      {
        v20 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a4, (i + 2));
        if (!v20)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        rf::helpers::getTransformFromAnchor((v20 + 6));
        v21 = 0;
        v22 = v45;
        v23 = v46;
        v24 = v47;
        v25 = v48;
        v57 = xmmword_26185DD00;
        v58 = xmmword_26185DD10;
        v59 = xmmword_26185DD20;
        v60 = xmmword_26185E540;
        do
        {
          *&v54[v21] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v57 + v21))), v23, *(&v57 + v21), 1), v24, *(&v57 + v21), 2), v25, *(&v57 + v21), 3);
          v21 += 16;
        }

        while (v21 != 64);
        v26 = 0;
        v27 = *v54;
        v28 = *&v54[16];
        v29 = v55[0];
        v30 = v55[1];
        v57 = xmmword_26185E550;
        v58 = xmmword_26185E560;
        v59 = xmmword_26185E570;
        v60 = xmmword_26185E1B0;
        do
        {
          *&v54[v26] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v57 + v26))), v28, *(&v57 + v26), 1), v29, *(&v57 + v26), 2), v30, *(&v57 + v26), 3);
          v26 += 16;
        }

        while (v26 != 64);
        rf::data_flow::RFUUID::string((i + 2), v42);
        v31 = v50;
        if ((v50 & 0x80u) != 0)
        {
          v31 = __dst[1];
        }

        v32 = __dst;
        if ((v50 & 0x80u) != 0)
        {
          v32 = __dst[0];
        }

        *&v57 = v32;
        *(&v57 + 1) = v31;
        v33 = v43;
        if ((v43 & 0x80u) != 0)
        {
          v33 = v42[1];
        }

        v34 = v42;
        if ((v43 & 0x80u) != 0)
        {
          v34 = v42[0];
        }

        *(&v58 + 1) = v33;
        *&v59 = 429;
        *&v58 = v34;
        v53 = 429;
        *v54 = v55 + 8;
        *&v54[8] = xmmword_26185E530;
        *&v54[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        *&v55[0] = 0;
        __src = v55 + 8;
        __p = 2;
        v52 = &v57;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v54, "{}\nAnchor identifier {}", 23, &__p);
        v35 = *&v54[16];
        if (*&v54[16] > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (*&v54[16] >= 0x17uLL)
        {
          operator new();
        }

        *(&v44.__r_.__value_.__s + 23) = v54[16];
        if (*&v54[16])
        {
          memmove(&v44, __src, *&v54[16]);
        }

        v44.__r_.__value_.__s.__data_[v35] = 0;
        if (__src != v55 + 8)
        {
          operator delete(__src);
        }

        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        rf::helpers::drawAxis(a2, v7, &v45);
        v36 = *(a1 + 128);
        v37 = SHIBYTE(v44.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v41, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
        }

        else
        {
          v41 = v44;
        }

        REDebugRendererDrawTextAtWorldTransform();
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        rf::helpers::drawAnchorCube(a2, v7, &v45);
        if (v37 < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }
      }

      if (v50 < 0)
      {
        operator delete(__dst[0]);
      }

      v9 = *v39;
    }

    while (*v39);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_2617E534C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (STACK[0x2E8] != v67)
  {
    operator delete(STACK[0x2E8]);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::setMeshVisualizationClassificationsAlpha(uint64_t this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  v3 = a2 < 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = *(this + 400);
  if (*(this + 408) != v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      *(v5 + v7) = v4;
      *(this + 444) = v4;
      ++v6;
      v5 = *(this + 400);
      v7 += 16;
    }

    while (v6 < (*(this + 408) - v5) >> 4);
  }

  *(this + 1776) = 1;
  return this;
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::setMeshVisualizationMaterialsAlpha(uint64_t this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  v3 = a2 < 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = *(this + 320);
  if (*(this + 328) != v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      *(v5 + v7) = v4;
      *(this + 364) = v4;
      ++v6;
      v5 = *(this + 320);
      v7 += 16;
    }

    while (v6 < (*(this + 328) - v5) >> 4);
  }

  *(this + 1776) = 1;
  return this;
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::setPRRMeshVisualizationClassificationsAlpha(uint64_t this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  v3 = a2 < 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = *(this + 720);
  if (*(this + 728) != v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      *(v5 + v7) = v4;
      *(this + 764) = v4;
      ++v6;
      v5 = *(this + 720);
      v7 += 16;
    }

    while (v6 < (*(this + 728) - v5) >> 4);
  }

  *(this + 1777) = 1;
  return this;
}

uint64_t rf::data_flow::consumer::DebugOptionConsumer::setPRRMeshVisualizationMaterialsAlpha(uint64_t this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  v3 = a2 < 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = *(this + 640);
  if (*(this + 648) != v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      *(v5 + v7) = v4;
      *(this + 684) = v4;
      ++v6;
      v5 = *(this + 640);
      v7 += 16;
    }

    while (v6 < (*(this + 648) - v5) >> 4);
  }

  *(this + 1777) = 1;
  return this;
}

void rf::data_flow::consumer::DebugOptionConsumer::updateCurrentRoomVisualization(rf::data_flow::consumer::DebugOptionConsumer *this, const rf::data_flow::Room *a2)
{
  v6[55] = *MEMORY[0x277D85DE8];
  rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh(this + 816, v6);
  if (*(a2 + 696) == 1)
  {
    rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh(this + 1456, v5);
    rf::data_flow::consumer::Mesh::~Mesh(v5);
  }

  if (*(a2 + 496) == 1)
  {
    rf::data_flow::consumer::MeshVisualizer::updateDebugVisMesh(this + 1136, v5);
    rf::data_flow::consumer::Mesh::~Mesh(v5);
  }

  rf::data_flow::consumer::Mesh::~Mesh(v6);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_2617E5660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  rf::data_flow::consumer::Mesh::~Mesh(&a9);
  rf::data_flow::consumer::Mesh::~Mesh(&a63);
  _Unwind_Resume(a1);
}

void anonymous namespace::generateMeshFromRoomMesh(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v26 = *a2;
  v27 = v6;
  *&v28 = 0;
  v7 = a3[1];
  v29 = *a3;
  v30 = v7;
  v8 = a3[3];
  v31 = a3[2];
  v32 = v8;
  LOBYTE(v33) = 0;
  DWORD1(v33) = 0;
  *(&v33 + 1) = 0;
  LOBYTE(v34) = 0;
  v36 = 0;
  v9 = *(a4 + 24);
  if (v9 == 1)
  {
    v34 = *a4;
    v35 = *(a4 + 8);
    v36 = 1;
  }

  LOBYTE(v37) = 0;
  v39 = 0;
  v10 = *(a4 + 88);
  if (v10 == 1)
  {
    v37 = *(a4 + 64);
    v38 = *(a4 + 72);
    v39 = 1;
  }

  LOBYTE(v40) = 0;
  v42 = 0;
  v11 = *(a4 + 56);
  if (v11 == 1)
  {
    v40 = *(a4 + 32);
    v41 = *(a4 + 40);
    v42 = 1;
  }

  LOBYTE(v43) = 0;
  v45 = 0;
  v12 = *(a4 + 152);
  if (v12 == 1)
  {
    v43 = *(a4 + 128);
    v44 = *(a4 + 136);
    v45 = 1;
  }

  v46 = 0;
  v47 = 0;
  LOBYTE(v48) = 0;
  v50 = 0;
  v13 = *(a4 + 184);
  if (v13 == 1)
  {
    v48 = *(a4 + 160);
    v49 = *(a4 + 168);
    v50 = 1;
  }

  LOBYTE(v51) = 0;
  v53 = 0;
  v14 = *(a4 + 120);
  if (v14 == 1)
  {
    v51 = *(a4 + 96);
    v52 = *(a4 + 104);
    v53 = 1;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v15 = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v15;
  v16 = v33;
  *(a1 + 96) = v32;
  *(a1 + 112) = v16;
  v17 = v27;
  *a1 = v26;
  *(a1 + 16) = v17;
  v18 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v18;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (v9)
  {
    v19 = v34;
    v34 = 0;
    *(a1 + 128) = v19;
    *(a1 + 136) = v35;
    *(a1 + 152) = 1;
  }

  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  if (v10)
  {
    v20 = v37;
    v37 = 0;
    *(a1 + 160) = v20;
    *(a1 + 168) = v38;
    *(a1 + 184) = 1;
  }

  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  if (v11)
  {
    v21 = v40;
    v40 = 0;
    *(a1 + 192) = v21;
    *(a1 + 200) = v41;
    *(a1 + 216) = 1;
  }

  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  if (v12)
  {
    v22 = v43;
    v43 = 0;
    *(a1 + 224) = v22;
    *(a1 + 232) = v44;
    *(a1 + 248) = 1;
  }

  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  if (v13)
  {
    v23 = v48;
    v48 = 0;
    *(a1 + 288) = v23;
    *(a1 + 296) = v49;
    *(a1 + 312) = 1;
  }

  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  if (v14)
  {
    v24 = v51;
    v51 = 0;
    *(a1 + 320) = v24;
    *(a1 + 328) = v52;
    *(a1 + 344) = 1;
  }

  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  v62 = 0;
  *(a1 + 416) = 0;
  rf::data_flow::consumer::Mesh::~Mesh(&v26);
  v25 = *MEMORY[0x277D85DE8];
}

void rf::data_flow::consumer::DebugOptionConsumer::~DebugOptionConsumer(rf::data_flow::consumer::DebugOptionConsumer *this)
{
  rf::data_flow::consumer::DebugOptionConsumer::~DebugOptionConsumer(this);

  JUMPOUT(0x26670D060);
}

{
  *this = &unk_287408320;
  v2 = *(this + 216);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 210);
  if (v3)
  {
    *(this + 211) = v3;
    operator delete(v3);
  }

  v4 = *(this + 206);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 200);
  if (v5)
  {
    *(this + 201) = v5;
    operator delete(v5);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 188);
  RESharedPtr<REAsset>::~RESharedPtr(this + 187);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 1456);
  v6 = *(this + 176);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 170);
  if (v7)
  {
    *(this + 171) = v7;
    operator delete(v7);
  }

  v8 = *(this + 166);
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 160);
  if (v9)
  {
    *(this + 161) = v9;
    operator delete(v9);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 148);
  RESharedPtr<REAsset>::~RESharedPtr(this + 147);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 1136);
  v10 = *(this + 136);
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 130);
  if (v11)
  {
    *(this + 131) = v11;
    operator delete(v11);
  }

  v12 = *(this + 126);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 120);
  if (v13)
  {
    *(this + 121) = v13;
    operator delete(v13);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 108);
  RESharedPtr<REAsset>::~RESharedPtr(this + 107);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 816);
  v14 = *(this + 96);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 90);
  if (v15)
  {
    *(this + 91) = v15;
    operator delete(v15);
  }

  v16 = *(this + 86);
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(this + 80);
  if (v17)
  {
    *(this + 81) = v17;
    operator delete(v17);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 68);
  RESharedPtr<REAsset>::~RESharedPtr(this + 67);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 496);
  v18 = *(this + 56);
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(this + 50);
  if (v19)
  {
    *(this + 51) = v19;
    operator delete(v19);
  }

  v20 = *(this + 46);
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(this + 40);
  if (v21)
  {
    *(this + 41) = v21;
    operator delete(v21);
  }

  RESharedPtr<REAsset>::~RESharedPtr(this + 28);
  RESharedPtr<REAsset>::~RESharedPtr(this + 27);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(this + 176);
  RESharedPtr<REAsset>::~RESharedPtr(this + 20);
  RESharedPtr<REAsset>::~RESharedPtr(this + 19);
  RESharedPtr<REAsset>::~RESharedPtr(this + 18);
  RESharedPtr<REAsset>::~RESharedPtr(this + 17);
  RESharedPtr<REAsset>::~RESharedPtr(this + 16);
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }
}

rf::data_flow::consumer::MeshVisualizer *rf::data_flow::consumer::MeshVisualizer::MeshVisualizer(rf::data_flow::consumer::MeshVisualizer *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 5) = 0;
  *(this + 16) = 0;
  *(this + 22) = 0;
  *(this + 6) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 6) = _Q0;
  *(this + 7) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 16) = _Q0;
  rf::ColorPaletteMaterialARKit::ColorPaletteMaterialARKit((this + 144));
  rf::ColorPaletteClassificationARKit::ColorPaletteClassificationARKit((this + 224));
  *(this + 152) = 257;
  return this;
}

void sub_2617E5A9C(_Unwind_Exception *a1)
{
  rf::ColorPaletteMaterialARKit::~ColorPaletteMaterialARKit((v1 + 144));
  RESharedPtr<REAsset>::~RESharedPtr((v1 + 48));
  RESharedPtr<REAsset>::~RESharedPtr(v2);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void rf::ColorPaletteMaterialARKit::~ColorPaletteMaterialARKit(rf::ColorPaletteMaterialARKit *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void *RESharedPtr<REGeomModelDescriptor>::~RESharedPtr(void *a1)
{
  if (*a1)
  {
    RERelease();
  }

  return a1;
}

void rf::data_flow::consumer::Mesh::~Mesh(id *this)
{
  if (*(this + 408) == 1)
  {
  }

  if (*(this + 392) == 1)
  {
    RESharedPtr<REAsset>::~RESharedPtr(this + 48);
  }

  if (*(this + 376) == 1)
  {
    RESharedPtr<REAsset>::~RESharedPtr(this + 46);
  }

  if (*(this + 360) == 1)
  {
    RESharedPtr<REGeomModelDescriptor>::~RESharedPtr(this + 44);
  }

  if (*(this + 344) == 1)
  {
  }

  if (*(this + 312) == 1)
  {
  }

  if (*(this + 280) == 1)
  {
  }

  if (*(this + 248) == 1)
  {
  }

  if (*(this + 216) == 1)
  {
  }

  if (*(this + 184) == 1)
  {
  }

  if (*(this + 152) == 1)
  {
  }
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    do
    {
      v11 = v10[1];
      if (v4 == v11)
      {
        if (rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2))
        {
          return v10;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (v11 >= *&v5)
          {
            v11 %= *&v5;
          }
        }

        else
        {
          v11 &= *&v5 - 1;
        }

        if (v11 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

uint64_t std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }

  return result;
}

void std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  *&v270[1023] = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v5 = &a2[a3];
  v252[0] = a2;
  v252[1] = &a2[a3];
  v253 = 0;
  v254 = 0;
  v255 = v4;
  v248 = *a4;
  v249 = a4[2];
  LOBYTE(v245.__locale_) = 0;
  v246 = 0;
  *v247 = a1;
  LOBYTE(v250.__locale_) = 0;
  v251 = 0;
  if (a3)
  {
    v6 = a2;
    v7 = a1;
    v244 = "The argument index value is too large for the number of arguments supplied";
    while (2)
    {
      v8 = *v6;
      if (v8 == 125)
      {
        if (++v6 == v5 || *v6 != 125)
        {
          v239 = "The format string contains an invalid escape sequence";
LABEL_535:
          v244 = v239;
LABEL_536:
          std::__throw_format_error[abi:ne200100](v244);
        }

LABEL_16:
        std::__format::__output_buffer<char>::push_back[abi:ne200100](v7, v8);
        ++v6;
        goto LABEL_473;
      }

      if (v8 != 123)
      {
        goto LABEL_16;
      }

      if (++v6 == v5)
      {
        v239 = "The format string terminates at a '{'";
        goto LABEL_535;
      }

      if (*v6 == 123)
      {
        goto LABEL_16;
      }

      *v247 = v7;
      v9 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v6, v5, v252);
      if (v5 == v9)
      {
        goto LABEL_533;
      }

      v11 = *v9;
      if (v11 != 125)
      {
        if (v11 != 58)
        {
LABEL_533:
          v239 = "The argument index should end with a ':' or a '}'";
          goto LABEL_535;
        }

        ++v9;
      }

      v252[0] = v9;
      if (v248 <= v10)
      {
        goto LABEL_536;
      }

      if (v248 > 0xC)
      {
        v13 = (*(&v248 + 1) + 32 * v10);
        LODWORD(v12) = *(v13 + 16);
      }

      else
      {
        v12 = (v249 >> (5 * v10)) & 0x1F;
        v13 = (*(&v248 + 1) + 16 * v10);
      }

      v14 = *(v13 + 1);
      v16 = *v13;
      v15 = v13[1];
      switch(v12)
      {
        case 1:
          v264 = 0;
          v265 = 0x20FFFFFFFFLL;
          if (v11 != 58)
          {
            goto LABEL_249;
          }

          v17 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v264, v252, 55);
          v18 = v17;
          if (BYTE1(v264) - 2 < 6)
          {
            v252[0] = v17;
            v19 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v264, v247);
            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v16, v247, v19, v20, 0);
            goto LABEL_117;
          }

          if (BYTE1(v264) > 1u)
          {
            v43 = "a BOOL";
            goto LABEL_542;
          }

          std::__format_spec::__parser<char>::__validate[abi:ne200100](&v264, "a BOOL");
          if ((v264 & 7) == 0)
          {
            LOBYTE(v264) = v264 | 1;
          }

          v252[0] = v18;
LABEL_249:
          v118 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v264, v247);
          v120 = v119;
          if ((v118 & 0x40) != 0)
          {
            std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v268, v247);
            v123 = std::locale::use_facet(&v268, MEMORY[0x277D826C0]);
            std::locale::~locale(&v268);
            v124 = v123->__vftable;
            if (v16)
            {
              v125 = &v124[2];
            }

            else
            {
              v125 = &v124[2].~facet_0;
            }

            (*v125)(&v268, v123);
            if ((v268.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v126 = &v268;
            }

            else
            {
              v126 = v268.__r_.__value_.__r.__words[0];
            }

            if ((v268.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v268.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v268.__r_.__value_.__l.__size_;
            }

            v32 = *v247;
            std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v126, size, *v247, v118, v120);
            if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v268.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if (v16)
            {
              v121 = 4;
            }

            else
            {
              v121 = 5;
            }

            v32 = *v247;
            if (v16)
            {
              v122 = "true";
            }

            else
            {
              v122 = "false";
            }

            std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v122, v121, *v247, v118, v120, v121);
          }

          goto LABEL_118;
        case 2:
          v264 = 0;
          v265 = 0x20FFFFFFFFLL;
          if (v11 != 58)
          {
            goto LABEL_59;
          }

          v41 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v264, v252, 55);
          v42 = BYTE1(v264);
          if (BYTE1(v264) - 2 < 6)
          {
            goto LABEL_56;
          }

          if (BYTE1(v264) > 0x13u)
          {
            v43 = "a character";
LABEL_542:
            std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](v43);
          }

          v43 = "a character";
          if (((1 << SBYTE1(v264)) & 0x80401) == 0)
          {
            goto LABEL_542;
          }

          std::__format_spec::__parser<char>::__validate[abi:ne200100](&v264, "a character");
          if ((v264 & 7) == 0)
          {
            LOBYTE(v264) = v264 | 1;
          }

LABEL_56:
          v252[0] = v41;
          switch(v42)
          {
            case 0:
              goto LABEL_59;
            case 19:
              v44 = *v247;
              v128 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v264, v247);
              v130 = v129;
              __p.__r_.__value_.__s.__data_[0] = v16;
              memset(&v268, 0, sizeof(v268));
              std::string::push_back(&v268, 39);
              std::__formatter::__escape[abi:ne200100]<char>(&v268, &__p, 1, 0);
              std::string::push_back(&v268, 39);
              if ((v268.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v131 = &v268 + HIBYTE(v268.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v131 = (v268.__r_.__value_.__r.__words[0] + v268.__r_.__value_.__l.__size_);
              }

              if ((v268.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v132 = &v268;
              }

              else
              {
                v132 = v268.__r_.__value_.__r.__words[0];
              }

              if ((v268.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v133 = HIBYTE(v268.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v133 = v268.__r_.__value_.__l.__size_;
              }

              std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v132, v131 - v132, v44, v128, v130, v133);
              if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v268.__r_.__value_.__l.__data_);
              }

              break;
            case 10:
LABEL_59:
              v44 = *v247;
              v45 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v264, v247);
              v268.__r_.__value_.__s.__data_[0] = v16;
              std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v268, 1uLL, v44, v45, v46, 1);
              break;
            default:
              v134 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v264, v247);
              v44 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v16, v247, v134, v135, 0);
              break;
          }

          *v247 = v44;
          goto LABEL_470;
        case 3:
          v268.__r_.__value_.__r.__words[0] = 0;
          v268.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v47 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v268, v252, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v268);
            v252[0] = v47;
          }

          v29 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v268, v247);
          v30 = v48;
          if ((v29 & 0xFF00) != 0xA00)
          {
            if (v16 >= 0)
            {
              v65 = v16;
            }

            else
            {
              v65 = -v16;
            }

            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v65, v247, v29, v48, v16 < 0);
            goto LABEL_117;
          }

          if (v16 != v16)
          {
            goto LABEL_537;
          }

LABEL_35:
          v32 = *v247;
          LOBYTE(v264) = v16;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v264, 1uLL, *v247, v29, v30, 1);
          goto LABEL_118;
        case 4:
          v268.__r_.__value_.__r.__words[0] = 0;
          v268.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v27 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v268, v252, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v268);
            v252[0] = v27;
          }

          v29 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v268, v247);
          v30 = v28;
          v31 = v16 | (v15 << 32);
          if ((v29 & 0xFF00) != 0xA00)
          {
            if (v31 >= 0)
            {
              v64 = v16 | (v15 << 32);
            }

            else
            {
              v64 = -v31;
            }

            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v64, v247, v29, v28, v15 >> 31);
            goto LABEL_117;
          }

          if ((v16 | (v15 << 32)) != v16)
          {
            goto LABEL_537;
          }

          goto LABEL_35;
        case 5:
          v268.__r_.__value_.__r.__words[0] = 0;
          v268.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v51 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v268, v252, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v268);
            v252[0] = v51;
          }

          v38 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v268, v247);
          v39 = v52;
          v53 = v16 | (v15 << 32);
          if ((v38 & 0xFF00) != 0xA00)
          {
            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>((v53 ^ (v14 >> 63)) - (v14 >> 63), (__PAIR128__(v14 ^ (v14 >> 63), v53 ^ (v14 >> 63)) - __PAIR128__(v14 >> 63, v14 >> 63)) >> 64, v247, v38, v52, v14 < 0);
            goto LABEL_117;
          }

          if (__PAIR128__((v53 >= 0x80) + v14 - 1, v53 - 128) < __PAIR128__(-1, -256))
          {
            goto LABEL_537;
          }

          goto LABEL_89;
        case 6:
          v268.__r_.__value_.__r.__words[0] = 0;
          v268.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v49 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v268, v252, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v268);
            v252[0] = v49;
          }

          v38 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v268, v247);
          v39 = v50;
          if ((v38 & 0xFF00) != 0xA00)
          {
            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v16, v247, v38, v50, 0);
            goto LABEL_117;
          }

          if (v16 > 0x7F)
          {
            goto LABEL_537;
          }

          goto LABEL_89;
        case 7:
          v268.__r_.__value_.__r.__words[0] = 0;
          v268.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v57 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v268, v252, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v268);
            v252[0] = v57;
          }

          v38 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v268, v247);
          v39 = v58;
          v59 = v16 | (v15 << 32);
          if ((v38 & 0xFF00) == 0xA00)
          {
            if (v59 > 0x7F)
            {
LABEL_537:
              v239 = "Integral value outside the range of the char type";
              goto LABEL_535;
            }

LABEL_89:
            v32 = *v247;
            LOBYTE(v264) = v16;
            std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v264, 1uLL, *v247, v38, v39, 1);
          }

          else
          {
            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v247, v38, v58, 0);
LABEL_117:
            v32 = v21;
          }

LABEL_118:
          *v247 = v32;
          goto LABEL_470;
        case 8:
          v268.__r_.__value_.__r.__words[0] = 0;
          v268.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 == 58)
          {
            v36 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v268, v252, 55);
            std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v268);
            v252[0] = v36;
          }

          v38 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v268, v247);
          v39 = v37;
          v40 = v16 | (v15 << 32);
          if ((v38 & 0xFF00) != 0xA00)
          {
            v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v40, v14, v247, v38, v37, 0);
            goto LABEL_117;
          }

          if (v40 > 0x7F)
          {
            goto LABEL_537;
          }

          goto LABEL_89;
        case 9:
          v256 = 0;
          v257 = -1;
          v258 = 32;
          v259 = 0;
          v260 = 0;
          if (v11 != 58)
          {
            goto LABEL_122;
          }

          v33 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v256, v252, 63);
          if (BYTE1(v256) - 13 >= 6)
          {
            if (BYTE1(v256) > 0xCu)
            {
              goto LABEL_539;
            }

            v43 = "a floating-point";
            if (((1 << SBYTE1(v256)) & 0x1801) == 0)
            {
              goto LABEL_542;
            }
          }

          else
          {
            if (v257 != -1 || SWORD1(v256) <= -1)
            {
              v35 = v257;
            }

            else
            {
              v35 = 6;
            }

            v257 = v35;
          }

          v252[0] = v33;
LABEL_122:
          v67 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v256, v247);
          v68 = v66;
          if ((v16 & 0x7FFFFFFF) >= 0x7F800000)
          {
            v157 = *v247;
            std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(*v247, v67, v66, v16 < 0, 0);
LABEL_421:
            *v247 = v157;
            goto LABEL_470;
          }

          if (v66 == -1)
          {
            v69 = 149;
          }

          else
          {
            v69 = v66;
          }

          v268.__r_.__value_.__r.__words[0] = v69;
          if (v69 < 150)
          {
            v71 = v69 + 45;
            v268.__r_.__value_.__l.__size_ = v71;
            if ((v69 + 45) >= 0x101)
            {
              operator new();
            }
          }

          else
          {
            v70 = v69 - 149;
            v69 = 149;
            HIDWORD(v268.__r_.__value_.__r.__words[0]) = v70;
            LODWORD(v268.__r_.__value_.__l.__data_) = 149;
            v268.__r_.__value_.__l.__size_ = 194;
            v71 = 194;
          }

          v268.__r_.__value_.__r.__words[2] = &v269;
          if ((v16 & 0x80000000) != 0)
          {
            v74 = 45;
          }

          else
          {
            v72 = (v67 >> 3) & 3;
            if (v72 == 2)
            {
              v74 = 43;
            }

            else
            {
              v73 = &v269;
              if (v72 != 3)
              {
                goto LABEL_137;
              }

              v74 = 32;
            }
          }

          v269 = v74;
          v73 = v270;
LABEL_137:
          v75 = fabsf(*&v16);
          if (BYTE1(v67) > 0xEu)
          {
            if (BYTE1(v67) - 15 < 2)
            {
              v264 = v73;
              v76 = MEMORY[0x26670CFD0](v73, &v270[v71 - 1], 2, v69, v75);
              __src = v76;
              *v267 = v76;
              if (v69)
              {
                v77 = v69 + 1;
              }

              else
              {
                v77 = 0;
              }

              v78 = &v76[-v77];
              goto LABEL_147;
            }

            if (BYTE1(v67) == 17)
            {
LABEL_154:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v264, &v268, v69, v73);
              goto LABEL_155;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v264, &v268, v69, v73);
            v79 = __src;
            if (__src != *v267)
            {
              goto LABEL_287;
            }
          }

          else
          {
            if (BYTE1(v67) > 0xBu)
            {
              if (BYTE1(v67) == 12)
              {
                if ((v66 & 0x80000000) != 0)
                {
                  v136 = -1;
                }

                else
                {
                  v136 = v69;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v264, v71, &v269, v136, v73);
                v137 = v264;
                v138 = __src;
                while (v137 != v138)
                {
                  *v137 = std::__formatter::__hex_to_upper[abi:ne200100](*v137);
                  ++v137;
                }

                *v138 = 80;
                if ((v67 & 0x20) == 0)
                {
                  goto LABEL_337;
                }

                goto LABEL_156;
              }

              if (BYTE1(v67) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v264, v71, &v269, v69, v73);
                goto LABEL_155;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v264, v71, &v269, v69, v73);
              v79 = __src;
LABEL_287:
              *v79 = 69;
              if ((v67 & 0x20) == 0)
              {
                goto LABEL_337;
              }

              goto LABEL_156;
            }

            if (!BYTE1(v67))
            {
              if ((v66 & 0x80000000) == 0)
              {
                goto LABEL_154;
              }

              v264 = v73;
              v220 = std::to_chars(v73, &v270[v71 - 1], &v269, v75);
              v221 = v220;
              *v267 = v220;
              v222 = v220 - v73;
              if (v220 - v73 < 4)
              {
LABEL_488:
                v224 = v220;
              }

              else
              {
                if (v222 >= 6)
                {
                  v222 = 6;
                }

                v223 = -v222;
                while (*(v220 + v223) != 101)
                {
                  if (++v223 == -3)
                  {
                    goto LABEL_488;
                  }
                }

                v224 = (v220 + v223);
              }

              __src = v224;
              v235 = memchr(v73 + 1, 46, v224 - (v73 + 1));
              if (v235)
              {
                v78 = v235;
              }

              else
              {
                v78 = v224;
              }

              if (v78 == v224)
              {
                v78 = v221;
              }

LABEL_147:
              v265 = v78;
              if ((v67 & 0x20) == 0)
              {
                goto LABEL_337;
              }

              goto LABEL_156;
            }

            if ((v66 & 0x80000000) != 0)
            {
              v139 = -1;
            }

            else
            {
              v139 = v69;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v264, v71, &v269, v139, v73);
          }

LABEL_155:
          if ((v67 & 0x20) == 0)
          {
            goto LABEL_337;
          }

LABEL_156:
          v80 = v265;
          v81 = *v267;
          if (v265 == *v267)
          {
            **v267 = 46;
            *v267 = ++v81;
            v82 = __src;
            if (__src != v80)
            {
              if (__src + 1 == v80)
              {
                v148 = *__src;
                *__src = *(__src + 1);
                *(v82 + 1) = v148;
              }

              else
              {
                memmove(&v81[-(v80 - __src)], __src, v80 - __src);
                *v82 = 46;
              }
            }

            v265 = v82;
            __src = (v82 + 1);
          }

          else
          {
            v82 = v265;
          }

          if (BYTE1(v67) - 17 <= 1)
          {
            if (v68 <= 1)
            {
              v149 = 1;
            }

            else
            {
              v149 = v68;
            }

            if ((v68 & 0x80000000) != 0)
            {
              v149 = 6;
            }

            v150 = v264 - v82;
            if (__src != v81)
            {
              v150 = -1;
            }

            v151 = v150 + v149;
            v152 = __src + ~v82;
            if (v152 < v151)
            {
              HIDWORD(v268.__r_.__value_.__r.__words[0]) += v151 - v152;
            }
          }

LABEL_337:
          if ((v67 & 0x40) == 0)
          {
            v153 = *v267;
            v154 = v268.__r_.__value_.__r.__words[2];
            v155 = *v267 - v268.__r_.__value_.__r.__words[2];
            v156 = SHIDWORD(v268.__r_.__value_.__r.__words[0]);
            if ((*v267 - v268.__r_.__value_.__r.__words[2] + SHIDWORD(v268.__r_.__value_.__r.__words[0])) >= v67 >> 32)
            {
              if (!HIDWORD(v268.__r_.__value_.__r.__words[0]) || (v167 = __src, __src == *v267))
              {
                v157 = *v247;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v247, v268.__r_.__value_.__r.__words[2], *v267 - v268.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v157, v156, 48);
              }

              else
              {
                v157 = *v247;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v247, v268.__r_.__value_.__r.__words[2], __src - v268.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v157, v156, 48);
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v157, v167, v153 - v167);
              }
            }

            else
            {
              v157 = *v247;
              if ((v67 & 7) == 4)
              {
                if (v268.__r_.__value_.__r.__words[2] != v264)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*v247, *v268.__r_.__value_.__r.__words[2]);
                  ++v154;
                }

                v176 = v67 & 0xB8 | 3;
                v177 = 48;
              }

              else
              {
                v176 = v67;
                v177 = BYTE4(v68);
              }

              v196 = v67 & 0xFFFFFFFFFFFFFF00 | v176;
              v197 = v68 & 0xFFFFFF00FFFFFFFFLL | (v177 << 32);
              if (v156)
              {
                std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v154, v153, v157, v196, v197, v155, __src, v156);
              }

              else
              {
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v154, v153 - v154, v157, v196, v197, v155);
              }
            }

LABEL_419:
            if (v268.__r_.__value_.__l.__size_ >= 0x101)
            {
              operator delete(v268.__r_.__value_.__r.__words[2]);
            }

            goto LABEL_421;
          }

          v157 = *v247;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v261, v247);
          v158 = std::locale::use_facet(&v261, MEMORY[0x277D826C0]);
          (v158->__vftable[1].__on_zero_shared)(&__p);
          v159 = __src;
          v160 = v264;
          v242 = __src;
          v243 = v265;
          if (__src >= v265)
          {
            v159 = v265;
          }

          v161 = v159 - v264;
          v240 = v159 - v264;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v162 = __p.__r_.__value_.__l.__size_;
            if (!__p.__r_.__value_.__l.__size_)
            {
              goto LABEL_376;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
            v164 = *__p.__r_.__value_.__l.__data_;
            if (v161 <= v164)
            {
              *__p.__r_.__value_.__l.__data_ = 0;
              __p.__r_.__value_.__l.__size_ = 0;
              goto LABEL_376;
            }

            v166 = *__p.__r_.__value_.__l.__data_;
            v163 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&__p.__r_.__value_.__s + 23))
            {
              goto LABEL_376;
            }

            if (v161 <= __p.__r_.__value_.__s.__data_[0])
            {
              __p.__r_.__value_.__s.__data_[0] = 0;
              *(&__p.__r_.__value_.__s + 23) = 0;
              goto LABEL_376;
            }

            v162 = __p.__r_.__value_.__l.__size_;
            v163 = __p.__r_.__value_.__r.__words[0];
            v164 = __p.__r_.__value_.__s.__data_[0];
            p_p = &__p;
            v166 = __p.__r_.__value_.__s.__data_[0];
          }

          memset(&v262, 0, sizeof(v262));
          v168 = (v163 + v162);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v169 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v169 = v168;
          }

          v170 = v161 - v164;
          if (v170 >= 1)
          {
            v171 = (v169 - 1);
            do
            {
              std::string::push_back(&v262, v166);
              if (p_p == v171)
              {
                v166 = p_p->__r_.__value_.__s.__data_[0];
              }

              else
              {
                v172 = (&p_p->__r_.__value_.__l.__data_ + 1);
                v173 = &p_p->__r_.__value_.__s.__data_[1];
                do
                {
                  v174 = *v173++;
                  v166 = v174;
                  if (v174)
                  {
                    v175 = 1;
                  }

                  else
                  {
                    v175 = v172 == v171;
                  }

                  v172 = v173;
                }

                while (!v175);
                p_p = (v173 - 1);
              }

              v170 -= v166;
            }

            while (v170 > 0);
          }

          std::string::push_back(&v262, v166 + v170);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v262;
LABEL_376:
          v178 = HIDWORD(v68);
          v179 = *v267;
          v180 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v180 = __p.__r_.__value_.__l.__size_;
          }

          v181 = *v267 - v268.__r_.__value_.__r.__words[2] + SHIDWORD(v268.__r_.__value_.__r.__words[0]) + v180 - (v180 != 0);
          v182 = v67 & 7;
          v183 = (v67 >> 32) - v181;
          if (v67 >> 32 > v181)
          {
            if (v182 == 4)
            {
              v184 = 48;
            }

            else
            {
              v184 = v178;
            }

            if (v182 == 4)
            {
              v185 = 3;
            }

            else
            {
              v185 = v67 & 7;
            }

            if (v185 > 1)
            {
              if (v185 != 3)
              {
                *v241 = v183 - (v183 >> 1);
                v183 >>= 1;
                goto LABEL_392;
              }
            }

            else if (v185)
            {
              *v241 = v183;
              v183 = 0;
LABEL_392:
              if (v182 == 4 && v160 != v268.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v157, *v268.__r_.__value_.__r.__words[2]);
              }

              v186 = v178 & 0xFFFFFF00 | v184;
              std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v157, v183, v186);
              if (v182 != 4 && v160 != v268.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v157, *v268.__r_.__value_.__r.__words[2]);
              }

              v187 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v187 = __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__l.__size_)
                {
                  v188 = __p.__r_.__value_.__r.__words[0];
LABEL_403:
                  v189 = v188 + v187;
                  v190 = (v158->__vftable[1].~facet_0)(v158);
                  v191 = &v188->__r_.__value_.__s.__data_[1];
                  for (i = v189; ; v189 = i)
                  {
                    v193 = *--i;
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v157, v160, v193);
                    if (v189 == v191)
                    {
                      break;
                    }

                    v160 += *i;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v157, v190);
                  }

LABEL_407:
                  if (v243 == v179)
                  {
                    v179 = v243;
                    v195 = v242;
                  }

                  else
                  {
                    v194 = (v158->__vftable[1].~facet)(v158);
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v157, v194);
                    v195 = v242;
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v157, (v243 + 1), &v242[-v243 - 1]);
                    std::__format::__output_buffer<char>::__fill[abi:ne200100](v157, SHIDWORD(v268.__r_.__value_.__r.__words[0]), 48);
                  }

                  if (v195 != v179)
                  {
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v157, v195, v179 - v195);
                  }

                  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v157, *v241, v186);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v261);
                  goto LABEL_419;
                }
              }

              else if (*(&__p.__r_.__value_.__s + 23))
              {
                v188 = &__p;
                goto LABEL_403;
              }

              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v157, v160, v240);
              goto LABEL_407;
            }

            *v241 = 0;
            goto LABEL_392;
          }

          *v241 = 0;
          v183 = 0;
          v184 = v178;
          goto LABEL_392;
        case 10:
          __p.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 != 58)
          {
            goto LABEL_206;
          }

          v60 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, v252, 63);
          if (__p.__r_.__value_.__s.__data_[1] - 13 >= 6)
          {
            if (__p.__r_.__value_.__s.__data_[1] > 0xCu)
            {
LABEL_539:
              v43 = "a floating-point";
              goto LABEL_542;
            }

            v43 = "a floating-point";
            if (((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) == 0)
            {
              goto LABEL_542;
            }
          }

          else
          {
            if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
            {
              v62 = __p.__r_.__value_.__r.__words[1];
            }

            else
            {
              v62 = 6;
            }

            LODWORD(__p.__r_.__value_.__r.__words[1]) = v62;
          }

          v252[0] = v60;
LABEL_206:
          v84 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, v247);
          v85 = v102;
          v86 = v15 << 32;
          *&v103 = v16 | (v15 << 32);
          if ((v16 | (v15 << 32) & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
          {
            if (v102 == -1)
            {
              v104 = 1074;
            }

            else
            {
              v104 = v102;
            }

            v268.__r_.__value_.__r.__words[0] = v104;
            if (v104 >= 1075)
            {
              HIDWORD(v268.__r_.__value_.__r.__words[0]) = v104 - 1074;
              LODWORD(v268.__r_.__value_.__l.__data_) = 1074;
              v268.__r_.__value_.__l.__size_ = 1390;
LABEL_213:
              operator new();
            }

            v105 = v104 + 316;
            v268.__r_.__value_.__l.__size_ = v105;
            v106 = v102;
            if ((v104 + 316) >= 0x401)
            {
              goto LABEL_213;
            }

            v268.__r_.__value_.__r.__words[2] = &v269;
            if (v86 < 0)
            {
              v109 = 45;
            }

            else
            {
              v107 = (v84 >> 3) & 3;
              if (v107 != 2)
              {
                v108 = &v269;
                if (v107 == 3)
                {
                  v109 = 32;
                  goto LABEL_220;
                }

LABEL_221:
                v110 = fabs(v103);
                if (BYTE1(v84) > 0xEu)
                {
                  if (BYTE1(v84) - 15 < 2)
                  {
                    v264 = v108;
                    v111 = MEMORY[0x26670CF70](v108, &v270[v105 - 1], 2, v102, v110);
                    __src = v111;
                    *v267 = v111;
                    if (v106)
                    {
                      v112 = v106 + 1;
                    }

                    else
                    {
                      v112 = 0;
                    }

                    v113 = &v111[-v112];
                    goto LABEL_231;
                  }

                  if (BYTE1(v84) == 17)
                  {
                    goto LABEL_238;
                  }

                  std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v264, &v268, v102, v108);
                  v114 = __src;
                  if (__src != *v267)
                  {
                    goto LABEL_309;
                  }
                }

                else
                {
                  if (BYTE1(v84) > 0xBu)
                  {
                    if (BYTE1(v84) == 12)
                    {
                      if (v102 < 0)
                      {
                        v143 = -1;
                      }

                      else
                      {
                        v143 = v102;
                      }

                      std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v264, v105, &v269, v143, v108);
                      v144 = v264;
                      v145 = __src;
                      while (v144 != v145)
                      {
                        *v144 = std::__formatter::__hex_to_upper[abi:ne200100](*v144);
                        ++v144;
                      }

                      *v145 = 80;
                      if ((v84 & 0x20) == 0)
                      {
                        goto LABEL_461;
                      }
                    }

                    else
                    {
                      if (BYTE1(v84) == 13)
                      {
                        std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v264, v105, &v269, v102, v108);
                        goto LABEL_239;
                      }

                      std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v264, v105, &v269, v102, v108);
                      v114 = __src;
LABEL_309:
                      *v114 = 69;
                      if ((v84 & 0x20) == 0)
                      {
LABEL_461:
                        if ((v84 & 0x40) == 0)
                        {
                          v203 = *v267;
                          v204 = v268.__r_.__value_.__r.__words[2];
                          v205 = *v267 - v268.__r_.__value_.__r.__words[2];
                          v206 = SHIDWORD(v268.__r_.__value_.__r.__words[0]);
                          if ((*v267 - v268.__r_.__value_.__r.__words[2] + SHIDWORD(v268.__r_.__value_.__r.__words[0])) < v84 >> 32)
                          {
                            v207 = *v247;
                            if ((v84 & 7) == 4)
                            {
                              if (v268.__r_.__value_.__r.__words[2] != v264)
                              {
                                std::__format::__output_buffer<char>::push_back[abi:ne200100](*v247, *v268.__r_.__value_.__r.__words[2]);
                                ++v204;
                              }

                              v218 = v84 & 0xB8 | 3;
                              v219 = 48;
                            }

                            else
                            {
                              v218 = v84;
                              v219 = BYTE4(v85);
                            }

                            v211 = v84 & 0xFFFFFFFFFFFFFF00 | v218;
                            v212 = v85 & 0xFFFFFF00FFFFFFFFLL | (v219 << 32);
                            if (!v206)
                            {
                              goto LABEL_481;
                            }

LABEL_447:
                            std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v204, v203, v207, v211, v212, v205, __src, v206);
                            goto LABEL_467;
                          }

                          if (!HIDWORD(v268.__r_.__value_.__r.__words[0]))
                          {
                            goto LABEL_477;
                          }

                          v208 = __src;
                          if (__src == *v267)
                          {
                            goto LABEL_477;
                          }

                          goto LABEL_442;
                        }

                        goto LABEL_466;
                      }
                    }

LABEL_240:
                    v115 = v265;
                    v116 = *v267;
                    if (v265 == *v267)
                    {
                      **v267 = 46;
                      *v267 = ++v116;
                      v117 = __src;
                      if (__src != v115)
                      {
                        if (__src + 1 == v115)
                        {
                          v213 = *__src;
                          *__src = *(__src + 1);
                          *(v117 + 1) = v213;
                        }

                        else
                        {
                          memmove(&v116[-(v115 - __src)], __src, v115 - __src);
                          *v117 = 46;
                        }
                      }

                      v265 = v117;
                      __src = (v117 + 1);
                    }

                    else
                    {
                      v117 = v265;
                    }

                    if (BYTE1(v84) - 17 <= 1)
                    {
                      if (v85 <= 1)
                      {
                        v214 = 1;
                      }

                      else
                      {
                        v214 = v85;
                      }

                      if ((v85 & 0x80000000) != 0)
                      {
                        v214 = 6;
                      }

                      v215 = v264 - v117;
                      if (__src != v116)
                      {
                        v215 = -1;
                      }

                      v216 = v215 + v214;
                      v217 = __src + ~v117;
                      if (v217 < v216)
                      {
                        HIDWORD(v268.__r_.__value_.__r.__words[0]) += v216 - v217;
                      }
                    }

                    goto LABEL_461;
                  }

                  if (!BYTE1(v84))
                  {
                    if ((v102 & 0x80000000) == 0)
                    {
LABEL_238:
                      std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v264, &v268, v102, v108);
                      goto LABEL_239;
                    }

                    v264 = v108;
                    v230 = std::to_chars(v108, &v270[v105 - 1], &v269, v110);
                    v231 = v230;
                    *v267 = v230;
                    v232 = v230 - v108;
                    if (v230 - v108 < 4)
                    {
LABEL_502:
                      v234 = v230;
                    }

                    else
                    {
                      if (v232 >= 6)
                      {
                        v232 = 6;
                      }

                      v233 = -v232;
                      while (*(v230 + v233) != 101)
                      {
                        if (++v233 == -3)
                        {
                          goto LABEL_502;
                        }
                      }

                      v234 = (v230 + v233);
                    }

                    __src = v234;
                    v237 = memchr(v108 + 1, 46, v234 - (v108 + 1));
                    if (v237)
                    {
                      v113 = v237;
                    }

                    else
                    {
                      v113 = v234;
                    }

                    if (v113 == v234)
                    {
                      v113 = v231;
                    }

LABEL_231:
                    v265 = v113;
                    if ((v84 & 0x20) == 0)
                    {
                      goto LABEL_461;
                    }

                    goto LABEL_240;
                  }

                  if (v102 < 0)
                  {
                    v147 = -1;
                  }

                  else
                  {
                    v147 = v102;
                  }

                  std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v264, v105, &v269, v147, v108);
                }

LABEL_239:
                if ((v84 & 0x20) == 0)
                {
                  goto LABEL_461;
                }

                goto LABEL_240;
              }

              v109 = 43;
            }

LABEL_220:
            v269 = v109;
            v108 = v270;
            goto LABEL_221;
          }

LABEL_525:
          v207 = *v247;
          std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(*v247, v84, v85, v86 < 0, 0);
LABEL_469:
          *v247 = v207;
LABEL_470:
          if (v252[0] == v5 || *v252[0] != 125)
          {
            v239 = "The replacement field misses a terminating '}'";
            goto LABEL_535;
          }

          v6 = v252[0] + 1;
          v7 = *v247;
LABEL_473:
          if (v6 == v5)
          {
            break;
          }

          continue;
        case 11:
          __p.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
          if (v11 != 58)
          {
            goto LABEL_164;
          }

          v54 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, v252, 63);
          if (__p.__r_.__value_.__s.__data_[1] - 13 >= 6)
          {
            if (__p.__r_.__value_.__s.__data_[1] > 0xCu)
            {
              goto LABEL_539;
            }

            v43 = "a floating-point";
            if (((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) == 0)
            {
              goto LABEL_542;
            }
          }

          else
          {
            if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
            {
              v56 = __p.__r_.__value_.__r.__words[1];
            }

            else
            {
              v56 = 6;
            }

            LODWORD(__p.__r_.__value_.__r.__words[1]) = v56;
          }

          v252[0] = v54;
LABEL_164:
          v84 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, v247);
          v85 = v83;
          v86 = v15 << 32;
          *&v87 = v16 | (v15 << 32);
          if ((v16 | (v15 << 32) & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
          {
            goto LABEL_525;
          }

          if (v83 == -1)
          {
            v88 = 1074;
          }

          else
          {
            v88 = v83;
          }

          v268.__r_.__value_.__r.__words[0] = v88;
          if (v88 >= 1075)
          {
            HIDWORD(v268.__r_.__value_.__r.__words[0]) = v88 - 1074;
            LODWORD(v268.__r_.__value_.__l.__data_) = 1074;
            v268.__r_.__value_.__l.__size_ = 1390;
LABEL_171:
            operator new();
          }

          v89 = v88 + 316;
          v268.__r_.__value_.__l.__size_ = v89;
          v90 = v83;
          if ((v88 + 316) >= 0x401)
          {
            goto LABEL_171;
          }

          v268.__r_.__value_.__r.__words[2] = &v269;
          if (v86 < 0)
          {
            v93 = 45;
          }

          else
          {
            v91 = (v84 >> 3) & 3;
            if (v91 == 2)
            {
              v93 = 43;
            }

            else
            {
              v92 = &v269;
              if (v91 != 3)
              {
                goto LABEL_179;
              }

              v93 = 32;
            }
          }

          v269 = v93;
          v92 = v270;
LABEL_179:
          v94 = fabs(v87);
          if (BYTE1(v84) > 0xEu)
          {
            if (BYTE1(v84) - 15 < 2)
            {
              v264 = v92;
              v95 = MEMORY[0x26670CFA0](v92, &v270[v89 - 1], 2, v83, v94);
              __src = v95;
              *v267 = v95;
              if (v90)
              {
                v96 = v90 + 1;
              }

              else
              {
                v96 = 0;
              }

              v97 = &v95[-v96];
              goto LABEL_189;
            }

            if (BYTE1(v84) == 17)
            {
LABEL_196:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v264, &v268, v83, v92);
              goto LABEL_197;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v264, &v268, v83, v92);
            v98 = __src;
            if (__src != *v267)
            {
              goto LABEL_306;
            }
          }

          else
          {
            if (BYTE1(v84) > 0xBu)
            {
              if (BYTE1(v84) == 12)
              {
                if (v83 < 0)
                {
                  v140 = -1;
                }

                else
                {
                  v140 = v83;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v264, v89, &v269, v140, v92);
                v141 = v264;
                v142 = __src;
                while (v141 != v142)
                {
                  *v141 = std::__formatter::__hex_to_upper[abi:ne200100](*v141);
                  ++v141;
                }

                *v142 = 80;
                if ((v84 & 0x20) == 0)
                {
                  goto LABEL_434;
                }

                goto LABEL_198;
              }

              if (BYTE1(v84) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v264, v89, &v269, v83, v92);
                goto LABEL_197;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v264, v89, &v269, v83, v92);
              v98 = __src;
LABEL_306:
              *v98 = 69;
              if ((v84 & 0x20) == 0)
              {
                goto LABEL_434;
              }

              goto LABEL_198;
            }

            if (!BYTE1(v84))
            {
              if ((v83 & 0x80000000) == 0)
              {
                goto LABEL_196;
              }

              v264 = v92;
              v225 = std::to_chars(v92, &v270[v89 - 1], &v269, v94);
              v226 = v225;
              *v267 = v225;
              v227 = v225 - v92;
              if (v225 - v92 < 4)
              {
LABEL_495:
                v229 = v225;
              }

              else
              {
                if (v227 >= 6)
                {
                  v227 = 6;
                }

                v228 = -v227;
                while (*(v225 + v228) != 101)
                {
                  if (++v228 == -3)
                  {
                    goto LABEL_495;
                  }
                }

                v229 = (v225 + v228);
              }

              __src = v229;
              v236 = memchr(v92 + 1, 46, v229 - (v92 + 1));
              if (v236)
              {
                v97 = v236;
              }

              else
              {
                v97 = v229;
              }

              if (v97 == v229)
              {
                v97 = v226;
              }

LABEL_189:
              v265 = v97;
              if ((v84 & 0x20) == 0)
              {
                goto LABEL_434;
              }

              goto LABEL_198;
            }

            if (v83 < 0)
            {
              v146 = -1;
            }

            else
            {
              v146 = v83;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v264, v89, &v269, v146, v92);
          }

LABEL_197:
          if ((v84 & 0x20) == 0)
          {
            goto LABEL_434;
          }

LABEL_198:
          v99 = v265;
          v100 = *v267;
          if (v265 == *v267)
          {
            **v267 = 46;
            *v267 = ++v100;
            v101 = __src;
            if (__src != v99)
            {
              if (__src + 1 == v99)
              {
                v198 = *__src;
                *__src = *(__src + 1);
                *(v101 + 1) = v198;
              }

              else
              {
                memmove(&v100[-(v99 - __src)], __src, v99 - __src);
                *v101 = 46;
              }
            }

            v265 = v101;
            __src = (v101 + 1);
          }

          else
          {
            v101 = v265;
          }

          if (BYTE1(v84) - 17 <= 1)
          {
            if (v85 <= 1)
            {
              v199 = 1;
            }

            else
            {
              v199 = v85;
            }

            if ((v85 & 0x80000000) != 0)
            {
              v199 = 6;
            }

            v200 = v264 - v101;
            if (__src != v100)
            {
              v200 = -1;
            }

            v201 = v200 + v199;
            v202 = __src + ~v101;
            if (v202 < v201)
            {
              HIDWORD(v268.__r_.__value_.__r.__words[0]) += v201 - v202;
            }
          }

LABEL_434:
          if ((v84 & 0x40) == 0)
          {
            v203 = *v267;
            v204 = v268.__r_.__value_.__r.__words[2];
            v205 = *v267 - v268.__r_.__value_.__r.__words[2];
            v206 = SHIDWORD(v268.__r_.__value_.__r.__words[0]);
            if ((*v267 - v268.__r_.__value_.__r.__words[2] + SHIDWORD(v268.__r_.__value_.__r.__words[0])) < v84 >> 32)
            {
              v207 = *v247;
              if ((v84 & 7) == 4)
              {
                if (v268.__r_.__value_.__r.__words[2] != v264)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*v247, *v268.__r_.__value_.__r.__words[2]);
                  ++v204;
                }

                v209 = v84 & 0xB8 | 3;
                v210 = 48;
              }

              else
              {
                v209 = v84;
                v210 = BYTE4(v85);
              }

              v211 = v84 & 0xFFFFFFFFFFFFFF00 | v209;
              v212 = v85 & 0xFFFFFF00FFFFFFFFLL | (v210 << 32);
              if (v206)
              {
                goto LABEL_447;
              }

LABEL_481:
              std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v204, v203 - v204, v207, v211, v212, v205);
LABEL_467:
              if (v268.__r_.__value_.__l.__size_ >= 0x401)
              {
                operator delete(v268.__r_.__value_.__r.__words[2]);
              }

              goto LABEL_469;
            }

            if (!HIDWORD(v268.__r_.__value_.__r.__words[0]) || (v208 = __src, __src == *v267))
            {
LABEL_477:
              v207 = *v247;
              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v247, v268.__r_.__value_.__r.__words[2], *v267 - v268.__r_.__value_.__r.__words[2]);
              std::__format::__output_buffer<char>::__fill[abi:ne200100](v207, v206, 48);
              goto LABEL_467;
            }

LABEL_442:
            v207 = *v247;
            std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v247, v268.__r_.__value_.__r.__words[2], __src - v268.__r_.__value_.__r.__words[2]);
            std::__format::__output_buffer<char>::__fill[abi:ne200100](v207, v206, 48);
            std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v207, v208, v203 - v208);
            goto LABEL_467;
          }

LABEL_466:
          v207 = *v247;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v262, v247);
          std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v207, &v268, &v264, &v262, v84, v85);
          std::locale::~locale(&v262);
          goto LABEL_467;
        case 12:
          LODWORD(v268.__r_.__value_.__l.__data_) = 1;
          *(v268.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
          v268.__r_.__value_.__s.__data_[12] = 32;
          *(&v268.__r_.__value_.__r.__words[1] + 5) = 0;
          v268.__r_.__value_.__s.__data_[15] = 0;
          if (v11 == 58)
          {
            v252[0] = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v268, v252);
          }

          v63 = strlen((v16 | (v15 << 32)));
          v26 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v268, (v16 | (v15 << 32)), v63, v247);
          goto LABEL_104;
        case 13:
          LODWORD(v268.__r_.__value_.__l.__data_) = 1;
          *(v268.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
          v268.__r_.__value_.__s.__data_[12] = 32;
          *(&v268.__r_.__value_.__r.__words[1] + 5) = 0;
          v268.__r_.__value_.__s.__data_[15] = 0;
          if (v11 == 58)
          {
            v252[0] = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v268, v252);
          }

          v26 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v268, (v16 | (v15 << 32)), v14, v247);
          goto LABEL_104;
        case 14:
          v264 = 0;
          v265 = 0x20FFFFFFFFLL;
          if (v11 != 58)
          {
            goto LABEL_26;
          }

          v22 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v264, v252, 36);
          if (BYTE1(v264) - 8 >= 2 && BYTE1(v264))
          {
            v43 = "a pointer";
            goto LABEL_542;
          }

          v252[0] = v22;
LABEL_26:
          v24 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v264, v247);
          v25 = v16 | (v15 << 32);
          if ((v24 & 0xFF00) == 0x900)
          {
            v26 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v25, v247, v24 & 0xFFFFFFFFFFFF00DFLL | 0x720, v23, &v268, &v268.__r_.__value_.__r.__words[2] + 3, "0X", 0x10u);
          }

          else
          {
            v26 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v25, v247, v24 & 0xFFFFFFFFFFFF00DFLL | 0x620, v23, &v268, &v268.__r_.__value_.__r.__words[2] + 3, "0x", 0x10u);
          }

LABEL_104:
          *v247 = v26;
          goto LABEL_470;
        case 15:
          (v14)(v252, v247, v16 | (v15 << 32));
          goto LABEL_470;
        default:
          goto LABEL_536;
      }

      break;
    }
  }

  if (v251 == 1)
  {
    std::locale::~locale(&v250);
    if (v246)
    {
      std::locale::~locale(&v245);
    }
  }

  v238 = *MEMORY[0x277D85DE8];
}

void sub_2617E8230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, std::locale a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::locale a52, unint64_t a53, void *__p)
{
  if (a53 >= 0x401)
  {
    operator delete(__p);
  }

  if (a26 == 1)
  {
    std::locale::~locale(&a25);
    if (a17)
    {
      std::locale::~locale(&a16);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2874083B0;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x26670D060);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *result;
  if (v4 == 125 || v4 == 58)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      if (v6 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 2;
    }

    ++*(a3 + 24);
  }

  else if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
LABEL_13:
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    ++result;
  }

  else
  {
    if ((v4 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    result = std::__format::__parse_number[abi:ne200100]<char const*>(result, a2);
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v25[0] = *a2;
  v25[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v25) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v9 = v25[0];
  if (v25[0] >= v3)
  {
    goto LABEL_9;
  }

  v10 = *v25[0];
  switch(v10)
  {
    case '<':
      v11 = 1;
LABEL_18:
      *a1 = *a1 & 0xF8 | v11;
      v13 = v9 - v4;
      if (v9 - v4 == 1)
      {
        if (*v4 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v9 == v4)
      {
LABEL_23:
        v4 += v13;
        goto LABEL_24;
      }

      memmove((a1 + 12), v4, v13);
      goto LABEL_23;
    case '>':
      v11 = 3;
      goto LABEL_18;
    case '^':
      v11 = 2;
      goto LABEL_18;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v12 = 1;
      break;
    case '>':
      v12 = 3;
      break;
    case '^':
      v12 = 2;
      break;
    default:
      goto LABEL_25;
  }

  *a1 = *a1 & 0xF8 | v12;
LABEL_24:
  if (++v4 == v3)
  {
    return v4;
  }

LABEL_25:
  if (a3)
  {
    v14 = *v4;
    switch(v14)
    {
      case ' ':
        v15 = *a1 | 0x18;
        break;
      case '+':
        v15 = *a1 & 0xE7 | 0x10;
        break;
      case '-':
        v15 = *a1 & 0xE7 | 8;
        break;
      default:
        goto LABEL_33;
    }

    *a1 = v15;
    if (++v4 == v3)
    {
      return v4;
    }
  }

LABEL_33:
  if ((a3 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((a3 & 4) != 0)
  {
    v16 = *v4;
    if (v16 != 48)
    {
      goto LABEL_42;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    if (++v4 == v3)
    {
      return v4;
    }
  }

  v16 = *v4;
LABEL_42:
  if (v16 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v16 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v16 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_48;
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v4, v3);
  }

  *(a1 + 4) = v17;
  if (v3 == v4)
  {
    return v4;
  }

LABEL_48:
  if ((a3 & 8) == 0 || *v4 != 46)
  {
    goto LABEL_56;
  }

  v18 = v4 + 1;
  if (v4 + 1 == v3)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
  }

  v19 = *v18;
  if (v19 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
    *(a1 + 2) |= 0x8000u;
    *(a1 + 8) = v20;
  }

  else
  {
    if ((v19 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v18, v3);
    *(a1 + 8) = v21;
    *(a1 + 2) &= ~0x8000u;
  }

  if (v3 != v4)
  {
LABEL_56:
    if ((a3 & 0x10) != 0)
    {
      v22 = *v4;
      if (v22 != 76)
      {
        goto LABEL_60;
      }

      *a1 |= 0x40u;
      if (++v4 == v3)
      {
        return v4;
      }
    }

    v22 = *v4;
LABEL_60:
    if (v22 <= 97)
    {
      if (v22 <= 69)
      {
        if (v22 > 65)
        {
          if (v22 == 66)
          {
            v23 = 3;
            goto LABEL_103;
          }

          if (v22 == 69)
          {
            v23 = 14;
            goto LABEL_103;
          }
        }

        else
        {
          if (v22 == 63)
          {
            v23 = 19;
            goto LABEL_103;
          }

          if (v22 == 65)
          {
            v23 = 12;
            goto LABEL_103;
          }
        }
      }

      else if (v22 <= 79)
      {
        if (v22 == 70)
        {
          v23 = 16;
          goto LABEL_103;
        }

        if (v22 == 71)
        {
          v23 = 18;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'P':
            v23 = 9;
            goto LABEL_103;
          case 'X':
            v23 = 7;
            goto LABEL_103;
          case 'a':
            v23 = 11;
LABEL_103:
            *(a1 + 1) = v23;
            ++v4;
            break;
        }
      }
    }

    else
    {
      if (v22 <= 102)
      {
        if (v22 <= 99)
        {
          if (v22 == 98)
          {
            v23 = 2;
          }

          else
          {
            v23 = 10;
          }
        }

        else if (v22 == 100)
        {
          v23 = 5;
        }

        else if (v22 == 101)
        {
          v23 = 13;
        }

        else
        {
          v23 = 15;
        }

        goto LABEL_103;
      }

      if (v22 <= 111)
      {
        if (v22 == 103)
        {
          v23 = 17;
          goto LABEL_103;
        }

        if (v22 == 111)
        {
          v23 = 4;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'p':
            v23 = 8;
            goto LABEL_103;
          case 's':
            v23 = 1;
            goto LABEL_103;
          case 'x':
            v23 = 6;
            goto LABEL_103;
        }
      }
    }

    if (v4 != v3 && *v4 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
    }
  }

  return v4;
}