uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RenderablesCountEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53498;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeV>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeV>();
    unk_1EB83DAD0 = 0x52DA3EA752368C9DLL;
    qword_1EB83DAD8 = "md::ls::MapDataTypeV]";
    qword_1EB83DAE0 = 20;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::PointLabelFeatureElement::updateText(md::PointLabelFeatureElement *this, const md::PointLabelFeature *a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  *(this + 130) = -1;
  if (*(this + 9) >= *(a2 + 51))
  {
    if (*(this + 136) == 1)
    {
      v6 = (*(*a2 + 72))(a2);
      v7 = *(v6 + 48);
      if (0x4EC4EC4EC4EC4EC5 * ((*(v6 + 56) - v7) >> 3) <= *(this + 134))
      {
        return;
      }

      v8 = v7 + 104 * *(this + 134);
      if (!a3)
      {
        goto LABEL_14;
      }

      v9 = *(v8 + 79);
      if (v9 < 0)
      {
        v9 = *(v8 + 64);
      }

      if (v9)
      {
        md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp<std::string>(__dst, (v8 + 56));
        v10 = md::PointLabelFeature::indexForTextEntry(a2, __dst);
      }

      else
      {
LABEL_14:
        md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp<std::string>(__dst, (v8 + 8));
        v10 = md::PointLabelFeature::indexForTextEntry(a2, __dst);
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      if (!a3 || (geo::codec::featureGetLocalizedLabel(*this, &v17, &v16), (v11 = v17) == 0) || !*v17)
      {
        geo::codec::featureGetNativeLabel(*this, 0, &v17, &v16);
        v11 = v17;
      }

      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(__dst, v11, v16);
      v10 = md::PointLabelFeature::indexForTextEntry(a2, __dst);
    }

    *(this + 130) = v10;
    if (v21 < 0)
    {
      v12 = v20;
      v13 = mdm::zone_mallocator::instance(v10);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
    }

    if (v19 < 0)
    {
      v14 = __dst[0];
      v15 = mdm::zone_mallocator::instance(v10);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v15, v14);
    }
  }
}

void sub_1B2A5397C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    v25 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v25, a19);
  }

  if (a17 < 0)
  {
    v26 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v26, a12);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v7 = *--v3;
        v6 = v7;
        if (v7)
        {
          if ((*v6)-- == 1)
          {
            v9 = v6[3];
            if (v9)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v9);
              v6 = *v3;
            }

            v10 = mdm::zone_mallocator::instance(v9);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::_fast_shared_ptr_control>(v10, v6);
            *v3 = 0;
          }
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v11 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>>(v11, v4);
  }
}

void geo::codec::featureGetLocalizedLabel(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v6 = std::__shared_weak_count::lock(v6);
      v7 = v6;
      if (v6)
      {
        v6 = *a1;
      }
    }

    else
    {
      v7 = 0;
    }

    geo::codec::vectorTileGetLocalizedLabel(v6, *(a1 + 73), *(a1 + 56), a2, a3);
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);

      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_1B2A53B58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeV>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeV>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[68];
}

void *geo::codec::vectorTileGetLocalizedLabel(void *result, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  if (a2)
  {
    if (result)
    {
      v5 = (result[132] + 24 * a3);
      v6 = *v5;
      if (*v5)
      {
        v7 = v5[1];
        v8 = result[108];
        v9 = result[109];
        if (v8 <= v6)
        {
          v10 = v9 >= v6;
          v11 = v9 == v6;
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }

        if (!v11 && v10)
        {
          v12 = a4;
          v13 = a5;
          v14 = result[136];
          v15 = result;
          v16 = result[137];
          __key = v6 - v8;
          result = bsearch(&__key, v14, (v16 - v14) >> 5, 0x20uLL, geo::codec::compareSearchingLocalizationTableEntries);
          if (!result)
          {
            goto LABEL_21;
          }

          v17 = result[1];
          if (v17 == -1)
          {
            goto LABEL_21;
          }

          v18 = 114;
          if (result[3])
          {
            v18 = 128;
          }

          v19 = &v15[v18];
          v20 = v15[v18];
          if (v17 >= v19[1] - v20)
          {
LABEL_21:
            a5 = v13;
            a4 = v12;
          }

          else
          {
            a5 = v13;
            a4 = v12;
            if (v20)
            {
              v7 = result[2];
              if (v12)
              {
                *v12 = v20 + v17;
              }

LABEL_24:
              if (!a5)
              {
                return result;
              }

              goto LABEL_25;
            }
          }
        }

        if (a4)
        {
          *a4 = v6;
        }

        goto LABEL_24;
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    v7 = 0;
LABEL_25:
    *a5 = v7;
  }

  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls12MapDataTypeVEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A40E38;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CheckIfReadyToProcess>();
    *algn_1EB83CD18 = 0xD14836FBCB6E3943;
    qword_1EB83CD20 = "md::ls::CheckIfReadyToProcess]";
    qword_1EB83CD28 = 29;
  }
}

void *md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(void *a1, char *a2, char *a3)
{
  if (!a2)
  {
    a2 = "";
  }

  v5 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(a1, a2);
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = "";
  }

  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(v5 + 4, v6);
  return a1;
}

void sub_1B2A53EA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    v3 = *v1;
    v4 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  _Unwind_Resume(exception_object);
}

void md::Anchor::~Anchor(unint64_t this)
{
  *this = &unk_1F2A1E798;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v4 = 0x9DDFEA08EB382D69 * ((8 * (this & 0x1FFFFFFF) + 8) ^ HIDWORD(this));
      v5 = 0x9DDFEA08EB382D69 * (HIDWORD(this) ^ (v4 >> 47) ^ v4);
      v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
      v7 = vcnt_s8(v3);
      v7.i16[0] = vaddlv_u8(v7);
      if (v7.u32[0] > 1uLL)
      {
        v8 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
        if (v6 >= *&v3)
        {
          v8 = v6 % *&v3;
        }
      }

      else
      {
        v8 = v6 & (*&v3 - 1);
      }

      v9 = v2[3];
      v10 = *(v9 + 8 * v8);
      if (v10)
      {
        v11 = *v10;
        if (*v10)
        {
          v12 = *&v3 - 1;
          do
          {
            v13 = v11[1];
            if (v13 == v6)
            {
              if (v11[2] == this)
              {
                v14 = v11[1];
                if (v7.u32[0] > 1uLL)
                {
                  if (v14 >= *&v3)
                  {
                    v14 %= *&v3;
                  }
                }

                else
                {
                  v14 &= v12;
                }

                v15 = *(v9 + 8 * v14);
                do
                {
                  v16 = v15;
                  v15 = *v15;
                }

                while (v15 != v11);
                if (v16 == v2 + 5)
                {
                  goto LABEL_37;
                }

                v17 = v16[1];
                if (v7.u32[0] > 1uLL)
                {
                  if (v17 >= *&v3)
                  {
                    v17 = (v17 % *&v3);
                  }
                }

                else
                {
                  v17 = (v17 & v12);
                }

                if (v17 != v14)
                {
LABEL_37:
                  if (!*v11)
                  {
                    goto LABEL_38;
                  }

                  v18 = *(*v11 + 1);
                  if (v7.u32[0] > 1uLL)
                  {
                    if (v18 >= *&v3)
                    {
                      v18 = (v18 % *&v3);
                    }
                  }

                  else
                  {
                    v18 = (v18 & v12);
                  }

                  if (v18 != v14)
                  {
LABEL_38:
                    *(v9 + 8 * v14) = 0;
                  }
                }

                v19 = *v11;
                if (*v11)
                {
                  v20 = *(v19 + 1);
                  if (v7.u32[0] > 1uLL)
                  {
                    if (v20 >= *&v3)
                    {
                      v20 = (v20 % *&v3);
                    }
                  }

                  else
                  {
                    v20 = (v20 & v12);
                  }

                  if (v20 != v14)
                  {
                    *(v2[3] + 8 * v20) = v16;
                    v19 = *v11;
                  }
                }

                *v16 = v19;
                *v11 = 0;
                --v2[6];
                operator delete(v11);
                break;
              }
            }

            else
            {
              if (v7.u32[0] > 1uLL)
              {
                if (v13 >= *&v3)
                {
                  v13 = (v13 % *&v3);
                }
              }

              else
              {
                v13 = (v13 & v12);
              }

              if (v13 != v8)
              {
                break;
              }
            }

            v11 = *v11;
          }

          while (v11);
        }
      }
    }
  }

  objc_destroyWeak((this + 64));
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeVEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40E38;
  a2[1] = v2;
  return result;
}

void md::MercatorTerrainAnchor::~MercatorTerrainAnchor(md::MercatorTerrainAnchor *this)
{
  *this = &unk_1F2A1E900;
  v2 = *(this + 1);
  if (v2)
  {
    md::AnchorManager::clearTerrainHeightForAnchor(*(v2 + 16), this);
  }

  md::Anchor::~Anchor(this);
}

{
  md::MercatorTerrainAnchor::~MercatorTerrainAnchor(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PointLabelFeature::indexForTextEntry(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    v6 = *(a1 + 520);
    v7 = *(a1 + 528);
    if (v6 == v7)
    {
      v8 = 0;
LABEL_34:
      if (v7 >= *(a1 + 536))
      {
        v21 = std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_back_slow_path<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>> const&>((a1 + 520), a2);
      }

      else
      {
        std::__construct_at[abi:nn200100]<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>> const&,md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>*>(v7, a2);
        v21 = (v7 + 64);
        *(a1 + 528) = v7 + 64;
      }

      *(a1 + 528) = v21;
    }

    else
    {
      v8 = 0;
      if (v2 >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      v10 = *(a2 + 55);
      if (v10 >= 0)
      {
        v11 = *(a2 + 55);
      }

      else
      {
        v11 = *(a2 + 40);
      }

      if (v10 >= 0)
      {
        v12 = (a2 + 32);
      }

      else
      {
        v12 = *(a2 + 32);
      }

      v13 = v6 + 32;
      while (1)
      {
        v14 = *(v13 - 9);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(v13 - 3);
        }

        if (v3 == v14)
        {
          v16 = v15 >= 0 ? v13 - 32 : *(v13 - 4);
          if (!memcmp(v9, v16, v3))
          {
            v17 = v13[23];
            v18 = v17;
            if ((v17 & 0x80u) != 0)
            {
              v17 = *(v13 + 1);
            }

            if (v11 == v17)
            {
              v19 = v18 >= 0 ? v13 : *v13;
              if (!memcmp(v12, v19, v11))
              {
                break;
              }
            }
          }
        }

        ++v8;
        v20 = v13 + 32;
        v13 += 64;
        if (v20 == v7)
        {
          if (v8 <= 0x64u)
          {
            goto LABEL_34;
          }

          return -1;
        }
      }
    }
  }

  else
  {
    return -1;
  }

  return v8;
}

uint64_t std::__shared_ptr_pointer<md::MercatorTerrainAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::MercatorTerrainAnchor>,std::allocator<md::MercatorTerrainAnchor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CheckIfReadyToProcess>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CheckIfReadyToProcess>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[437];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls21CheckIfReadyToProcessEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A2C8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21CheckIfReadyToProcessEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A2C8;
  a2[1] = v2;
  return result;
}

void md::PointLabelFeatureElement::updateLabelPlacements(md::PointLabelFeatureElement *this, const md::PointLabelFeature *a2)
{
  v3 = this;
  if (*(this + 136) == 1)
  {
    v4 = *(this + 135);
    v5 = (*(*a2 + 72))(a2);
    if (v4 >= (*(v5 + 384) - *(v5 + 376)) >> 5)
    {
      *__p = 0u;
      v15 = 0u;
      BYTE8(v15) = 1;
      v6 = __p;
    }

    else
    {
      v6 = (*((*(*a2 + 72))(a2) + 376) + 32 * *(v3 + 135));
    }

    *(v3 + 131) = md::PointLabelFeature::indexForPlacementInfo(a2, v6);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v15 = 0;
    WORD4(v15) = 1;
    BYTE10(v15) = 0;
    v7 = *this;
    v8 = *(*this + 8);
    if (v8 && (v9 = std::__shared_weak_count::lock(v8)) != 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v10 = *(v7 + 205);
    if (*(v7 + 205))
    {
      BYTE8(v15) = *(v7 + 209) ^ 1;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::LabelExternalPointFeature::ElementType,geo::Color<unsigned char,4,(geo::ColorSpace)0>>>>(v10);
    }

    v3 = this;
    *(this + 131) = md::PointLabelFeature::indexForPlacementInfo(a2, __p);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  if (*(v3 + 108) == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v15 = 0;
    WORD4(v15) = 1;
    BYTE10(v15) = 0;
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::LabelExternalPointFeature::ElementType,geo::Color<unsigned char,4,(geo::ColorSpace)0>>>>(1uLL);
  }
}

void sub_1B2A54958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverOctileKey>();
    unk_1EB83D620 = 0x53EA4A91D91C8985;
    qword_1EB83D628 = "md::ls::FlyoverOctileKey]";
    qword_1EB83D630 = 24;
  }
}

uint64_t md::PointLabelFeature::indexForPlacementInfo(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1[69];
  v5 = a1[70];
  if (v4 == v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0;
    v7 = *(a2 + 8);
    v8 = a1[69];
    do
    {
      if (*(a2 + 24) == *(v8 + 24) && &v7[-*a2] == (*(v8 + 8) - *v8))
      {
        if (*a2 == v7)
        {
          return v6;
        }

        v9 = (*v8 + 4);
        for (i = (*a2 + 4); ; i += 5)
        {
          v11 = i - 4;
          a1 = *(i - 4);
          if (a1 != *(v9 - 4))
          {
            break;
          }

          a1 = *(i - 3);
          if (a1 != *(v9 - 3))
          {
            break;
          }

          a1 = *(i - 1);
          if (a1 != *(v9 - 1))
          {
            break;
          }

          if (a1 == 10)
          {
            a1 = *i;
            if (a1 != *v9)
            {
              break;
            }
          }

          v9 += 5;
          if (v11 + 5 == v7)
          {
            return v6;
          }
        }
      }

      ++v6;
      v8 += 32;
    }

    while (v8 != v5);
    if (v6 > 0xFF)
    {
      LOBYTE(v6) = 0;
      return v6;
    }
  }

  v12 = v3[71];
  if (v5 >= v12)
  {
    v15 = (v5 - v4) >> 5;
    if ((v15 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v16 = v12 - v4;
    v17 = v16 >> 4;
    if (v16 >> 4 <= (v15 + 1))
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v39 = v3 + 72;
    if (v18)
    {
      v19 = mdm::zone_mallocator::instance(a1);
      v20 = pthread_rwlock_rdlock((v19 + 32));
      if (v20)
      {
        geo::read_write_lock::logFailure(v20, "read lock", v21);
      }

      v22 = malloc_type_zone_malloc(*v19, 32 * v18, 0x1020040AEE4956FuLL);
      atomic_fetch_add((v19 + 24), 1u);
      geo::read_write_lock::unlock((v19 + 32));
    }

    else
    {
      v22 = 0;
    }

    v23 = &v22[32 * v15];
    v36 = v22;
    v37 = v23;
    *&v38 = v23;
    *(&v38 + 1) = &v22[32 * v18];
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    std::vector<md::LabelPlacement>::__init_with_size[abi:nn200100]<md::LabelPlacement*,md::LabelPlacement*>(v23, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * (*(a2 + 8) - *a2));
    v24 = *(a2 + 24);
    *(v23 + 26) = *(a2 + 26);
    *(v23 + 24) = v24;
    *&v38 = v38 + 32;
    v25 = v3[70];
    v26 = v3[69];
    v27 = &v37[v26 - v25];
    if (v26 != v25)
    {
      v28 = v3[69];
      v29 = &v37[v26 - v25];
      do
      {
        *v29 = 0;
        *(v29 + 1) = 0;
        *(v29 + 2) = 0;
        *v29 = *v28;
        *(v29 + 2) = *(v28 + 16);
        *v28 = 0;
        *(v28 + 8) = 0;
        *(v28 + 16) = 0;
        v30 = *(v28 + 24);
        v29[26] = *(v28 + 26);
        *(v29 + 12) = v30;
        v28 += 32;
        v29 += 32;
      }

      while (v28 != v25);
      do
      {
        v31 = *v26;
        if (*v26)
        {
          *(v26 + 8) = v31;
          operator delete(v31);
        }

        v26 += 32;
      }

      while (v26 != v25);
    }

    v32 = v3[69];
    v3[69] = v27;
    v33 = v3[71];
    v35 = v38;
    *(v3 + 35) = v38;
    *&v38 = v32;
    *(&v38 + 1) = v33;
    v36 = v32;
    v37 = v32;
    std::__split_buffer<md::LabelFeaturePlacementInfo,geo::allocator_adapter<md::LabelFeaturePlacementInfo,mdm::zone_mallocator> &>::~__split_buffer(&v36);
    v14 = v35;
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    std::vector<md::LabelPlacement>::__init_with_size[abi:nn200100]<md::LabelPlacement*,md::LabelPlacement*>(v5, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * (*(a2 + 8) - *a2));
    v13 = *(a2 + 24);
    *(v5 + 26) = *(a2 + 26);
    *(v5 + 24) = v13;
    v14 = v5 + 32;
    v3[70] = v5 + 32;
  }

  v3[70] = v14;
  return v6;
}

void std::vector<md::LabelPlacement>::__init_with_size[abi:nn200100]<md::LabelPlacement*,md::LabelPlacement*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x3333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::LabelExternalPointFeature::ElementType,geo::Color<unsigned char,4,(geo::ColorSpace)0>>>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverOctileKey>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverOctileKey>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[20];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16FlyoverOctileKeyEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1CD00;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::LabelFeaturePlacementInfo>,md::LabelFeaturePlacementInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v6 = *(v5 + 24);
      *(a3 + 26) = *(v5 + 26);
      *(a3 + 24) = v6;
      v5 += 32;
      a3 += 32;
    }

    while (v5 != a2);
    do
    {
      v7 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v7;
        operator delete(v7);
      }

      v4 += 32;
    }

    while (v4 != a2);
  }
}

void **std::__split_buffer<md::LabelFeaturePlacementInfo,geo::allocator_adapter<md::LabelFeaturePlacementInfo,mdm::zone_mallocator> &>::~__split_buffer(void **a1)
{
  v1 = a1;
  v3 = a1[1];
  v2 = a1[2];
  while (v2 != v3)
  {
    a1 = *(v2 - 4);
    v1[2] = v2 - 32;
    if (a1)
    {
      *(v2 - 3) = a1;
      operator delete(a1);
      v2 = v1[2];
    }

    else
    {
      v2 -= 32;
    }
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeaturePlacementInfo>(v5, v4);
  }

  return v1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16FlyoverOctileKeyEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1CD00;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::BaseMapTileHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BaseMapTileHandle>();
    *algn_1EB83D328 = 0x695C99F828CA9E84;
    qword_1EB83D330 = "md::ls::BaseMapTileHandle]";
    qword_1EB83D338 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void **geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
        v2 = *a1;
      }

      v5 = mdm::zone_mallocator::instance(v4);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::_fast_shared_ptr_control>(v5, v2);
      *a1 = 0;
    }
  }

  return a1;
}

void std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeaturePoolTileInfo::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeaturePoolTileInfo::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__emplace_unique_key_args<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator> const&>(float *a1, uint64_t a2, void **a3)
{
  v6 = a2 + 8;
  if (!a2)
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 8) + 72);
  v8 = *(a1 + 1);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = *(*(v6 + 8) + 72);
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          v13 = i[2];
          if (v13)
          {
            v14 = v13 + 8;
          }

          else
          {
            v14 = 0;
          }

          if (*(*(v14 + 8) + 72) == v7)
          {
            return;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v15 = mdm::zone_mallocator::instance(a1);
  prime = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v15);
  v17 = prime;
  *prime = 0;
  *(prime + 1) = v7;
  *(prime + 2) = 0;
  v18 = *a3;
  *(prime + 2) = *a3;
  if (v18)
  {
    ++*v18;
  }

  v19 = (*(a1 + 5) + 1);
  v20 = a1[12];
  if (!v8 || (v20 * v8) < v19)
  {
    v21 = 1;
    if (v8 >= 3)
    {
      v21 = (v8 & (v8 - 1)) != 0;
    }

    v22 = v21 | (2 * v8);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if (*&v24 == 1)
    {
      v24 = 2;
    }

    else if ((*&v24 & (*&v24 - 1)) != 0)
    {
      prime = std::__next_prime(*&v24);
      v24 = prime;
    }

    v8 = *(a1 + 1);
    if (*&v24 > v8)
    {
      goto LABEL_37;
    }

    if (*&v24 < v8)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v8 < 3 || (v31 = vcnt_s8(v8), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v32 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v32;
        }
      }

      if (*&v24 <= prime)
      {
        v24 = prime;
      }

      if (*&v24 >= v8)
      {
        v8 = *(a1 + 1);
      }

      else
      {
        if (v24)
        {
LABEL_37:
          v25 = mdm::zone_mallocator::instance(prime);
          v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v25, *&v24);
          std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(a1, v26);
          v27 = 0;
          *(a1 + 1) = v24;
          do
          {
            *(*a1 + 8 * v27++) = 0;
          }

          while (*&v24 != v27);
          v28 = *(a1 + 3);
          if (v28)
          {
            v29 = v28[1];
            v30 = vcnt_s8(v24);
            v30.i16[0] = vaddlv_u8(v30);
            if (v30.u32[0] > 1uLL)
            {
              if (v29 >= *&v24)
              {
                v29 %= *&v24;
              }
            }

            else
            {
              v29 &= *&v24 - 1;
            }

            *(*a1 + 8 * v29) = a1 + 6;
            v33 = *v28;
            if (*v28)
            {
              do
              {
                v34 = v33[1];
                if (v30.u32[0] > 1uLL)
                {
                  if (v34 >= *&v24)
                  {
                    v34 %= *&v24;
                  }
                }

                else
                {
                  v34 &= *&v24 - 1;
                }

                if (v34 != v29)
                {
                  v35 = *a1;
                  if (!*(*a1 + 8 * v34))
                  {
                    *(v35 + 8 * v34) = v28;
                    goto LABEL_59;
                  }

                  *v28 = *v33;
                  *v33 = **(v35 + 8 * v34);
                  **(v35 + 8 * v34) = v33;
                  v33 = v28;
                }

                v34 = v29;
LABEL_59:
                v28 = v33;
                v33 = *v33;
                v29 = v34;
              }

              while (v33);
            }
          }

          v8 = v24;
          goto LABEL_63;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(a1, 0);
        v8 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_63:
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v36 = *a1;
  v37 = *(*a1 + 8 * v3);
  if (v37)
  {
    *v17 = *v37;
LABEL_76:
    *v37 = v17;
    goto LABEL_77;
  }

  *v17 = *(a1 + 3);
  *(a1 + 3) = v17;
  *(v36 + 8 * v3) = a1 + 6;
  if (*v17)
  {
    v38 = *(*v17 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v38 >= v8)
      {
        v38 %= v8;
      }
    }

    else
    {
      v38 &= v8 - 1;
    }

    v37 = (*a1 + 8 * v38);
    goto LABEL_76;
  }

LABEL_77:
  ++*(a1 + 5);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BaseMapTileHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BaseMapTileHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[507];
}

uint64_t *std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::weak_ptr<md::PointLabelFeature>,std::weak_ptr<md::PointLabelFeature>>(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v4 = result;
  v6 = result + 1;
  v5 = result[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[5];
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = result + 1;
LABEL_9:
    v9 = mdm::zone_mallocator::instance(result);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x30uLL, 0x10200409B2CA512uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v12[2] = *a3;
    *a3 = 0;
    *(a3 + 8) = 0;
    *v12 = 0;
    *(v12 + 1) = 0;
    *(v12 + 2) = v7;
    *v6 = v12;
    v13 = **v4;
    if (v13)
    {
      *v4 = v13;
      v12 = *v6;
    }

    result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v4[1], v12);
    ++v4[3];
  }

  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17BaseMapTileHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A535A8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17BaseMapTileHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A535A8;
  a2[1] = v2;
  return result;
}

void **geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      *(v2 + 1) = &unk_1F2A57B40;
      v4 = *(v2 + 10);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v9.__vftable = (v2 + 32);
      std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
      v5 = *(v2 + 3);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      v6 = *a1;
      v7 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v7, v6);
      *a1 = 0;
    }
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::WillEnterView>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::WillEnterView>();
    unk_1EB83D8B0 = 0xF3801DCCD1DDBED8;
    qword_1EB83D8B8 = "md::ls::WillEnterView]";
    qword_1EB83D8C0 = 21;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::LabelFeature::vectorFromAzimuth(md::LabelFeature *this, float a2, const md::LabelPoint *a3)
{
  v3 = a2 * -0.017453;
  v4 = v3;
  if (a3)
  {
    v5 = md::LabelPoint::geocentricPoint(this);
    for (i = 0; i != 3; ++i)
    {
      v25.f64[i] = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(v5 + i * 8);
    }

    v7.f64[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v25);
    v29[0] = *&v7.f64[0];
    *&v29[1] = v8;
    *&v29[2] = v9;
    v7.f64[1] = v8;
    v25 = vmulq_n_f64(vnegq_f64(v7), v9);
    v26 = v8 * v8 + v7.f64[0] * v7.f64[0];
    v28[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v25);
    v28[1] = v10;
    v28[2] = v11;
    v12 = v4 * 0.5;
    v13 = sin(v12);
    for (j = 0; j != 3; ++j)
    {
      v25.f64[j] = *&v29[j] * v13;
    }

    v22 = v25;
    v15 = v26;
    v16 = cos(v12);
    v25 = v22;
    v26 = v15;
    v27 = v16;
    memset(v23, 0, sizeof(v23));
    v17 = gm::rotateAboutPoint<double>(v28, &v25, v23);
    v18 = 0;
    *v24 = v17;
    v24[1] = v19;
    v24[2] = v20;
    do
    {
      v21 = *&v24[v18];
      *(&v29[3] + ++v18) = v21;
    }

    while (v18 != 3);
  }

  else
  {
    __sincos_stret(v3);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::WillEnterView>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::WillEnterView>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[46];
}

void *std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass *&,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>(uint64_t a1, unsigned __int8 *a2)
{
  result = std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::__find_equal<md::FrameGraphPass *>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::LabelExternalPointFeature::ElementType,geo::Color<unsigned char,4,(geo::ColorSpace)0>>>>(unint64_t a1)
{
  if (a1 < 0x3333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13WillEnterViewEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A19BD8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13WillEnterViewEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A19BD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ggl::RenderFrame::execute(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v15, a4);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v14, a5);
  std::__function::__value_func<void ()(ggl::WillSubmitFrameInfo const*)>::__value_func[abi:nn200100](v13, a6);
  (*(*v11 + 80))(v11, a2, a3, v15, v14, v13);
  std::__function::__value_func<void ()(ggl::WillSubmitFrameInfo const*)>::~__value_func[abi:nn200100](v13);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v14);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v15);
  *(a1 + 8) = 1;
  return result;
}

void anonymous namespace::extractPasses(__int128 *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(v4 + 72);
  v6 = *(v4 + 80);
  while (v5 != v6)
  {
    v18 = *v5;
    v19 = *(v5 + 2);
    v5 = (v5 + 24);
  }

  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v8 >= v7)
  {
    v11 = *a2;
    v12 = v8 - *a2;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3) + 1;
    if (v13 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v16 = 8 * (v12 >> 3);
    *v16 = *a1;
    *(v16 + 16) = *(a1 + 2);
    v10 = v16 + 24;
    v17 = v16 - v12;
    memcpy((v16 - v12), v11, v12);
    *a2 = v17;
    *(a2 + 8) = v10;
    *(a2 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    v9 = *a1;
    *(v8 + 16) = *(a1 + 2);
    *v8 = v9;
    v10 = v8 + 24;
  }

  *(a2 + 8) = v10;
  *(*(a1 + 1) + 80) = *(*(a1 + 1) + 72);
}

void ecs2::BasicRegistry<void>::add<md::erq::RenderQueueToSubmit>(uint64_t a1, unint64_t a2, void *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderQueueToSubmit>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderQueueToSubmit>();
    *algn_1EB83B848 = 0x17922920A08D336CLL;
    qword_1EB83B850 = "md::erq::RenderQueueToSubmit]";
    qword_1EB83B858 = 28;
  }

  v4 = &unk_1EB83B000;
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderQueueToSubmit>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::erq::RenderQueueToSubmit>(a1);
  v7 = v6;
  v8 = a2 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v8 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((a2 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = a2 | (WORD1(a2) << 16);
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = a2 | (WORD1(a2) << 16);
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = a2;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v52 = v27;
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_61;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v27 = v32 - v44;
      v45 = *(v7 + 96);
      if (v27 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v28 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_61:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v27);
      *(v7 + 88) = v43 + 16 * v27;
      LOBYTE(v27) = v52;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    v4 = &unk_1EB83B000;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  *(*(v30 + 8 * v28) + 8 * (v27 & 0x3F)) = *a3;
  v49 = *(v7 + 152);
  for (i = *(v7 + 160); v49 != i; v49 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), a2);
  }

LABEL_54:
  v51 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v51 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderQueueToSubmit>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderQueueToSubmit>();
    *algn_1EB83B848 = 0x17922920A08D336CLL;
    qword_1EB83B850 = "md::erq::RenderQueueToSubmit]";
    qword_1EB83B858 = 28;
  }

  *(a1 + 8 * v4[264]) = *(a1 + 4096);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::BuildSSAODOFCommonFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::BuildSSAODOFCommonFrameGraph>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::BuildSSAODOFCommonFrameGraph,md::ls::FrameGraphBuilder &,md::ls::PassSSAOConfiguration const&,md::ls::PassMapEngineCapabilities const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::erq::RenderTargetToSubmit>(uint64_t a1, unint64_t a2, void *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderTargetToSubmit>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderTargetToSubmit>();
    unk_1EB83B820 = 0x38B0ED5EA8D13426;
    qword_1EB83B828 = "md::erq::RenderTargetToSubmit]";
    qword_1EB83B830 = 29;
  }

  v4 = &unk_1EB83B000;
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderTargetToSubmit>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::erq::RenderTargetToSubmit>(a1);
  v7 = v6;
  v8 = a2 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v8 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((a2 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = a2 | (WORD1(a2) << 16);
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = a2 | (WORD1(a2) << 16);
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = a2;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v52 = v27;
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_61;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v27 = v32 - v44;
      v45 = *(v7 + 96);
      if (v27 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v28 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_61:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v27);
      *(v7 + 88) = v43 + 16 * v27;
      LOBYTE(v27) = v52;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    v4 = &unk_1EB83B000;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  *(*(v30 + 8 * v28) + 8 * (v27 & 0x3F)) = *a3;
  v49 = *(v7 + 152);
  for (i = *(v7 + 160); v49 != i; v49 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), a2);
  }

LABEL_54:
  v51 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v51 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderTargetToSubmit>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderTargetToSubmit>();
    unk_1EB83B820 = 0x38B0ED5EA8D13426;
    qword_1EB83B828 = "md::erq::RenderTargetToSubmit]";
    qword_1EB83B830 = 29;
  }

  *(a1 + 8 * v4[259]) = *(a1 + 4096);
}

void std::vector<gdc::Registry *>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__function::__func<ecs2::ForwardToExecute<PrepareFrameForRender>,std::allocator<ecs2::ForwardToExecute<PrepareFrameForRender>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<PrepareFrameForRender,md::ita::FrameHandle &>(a2, a1 + 8);
  *v2 = 0;
  v2[1] = 0;
}

void ggl::MetalDeviceContext::endFrame(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    memset(v2, 0, sizeof(v2));
    v9 = v2;
    operator new();
  }

  v1 = GEOGetGeoGLMetalDeviceContextLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    buf = 136315650;
    buf_4 = "false";
    buf_12 = 2080;
    buf_14 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalDeviceContext.mm";
    v7 = 1024;
    LODWORD(v8) = 174;
    _os_log_impl(&dword_1B2754000, v1, OS_LOG_TYPE_FAULT, "No active frame to end: Assertion with expression - %s : Failed in file - %s line - %i", &buf, 0x1Cu);
  }
}

void sub_1B2A57C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  a46 = (v47 - 216);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a46);
  _Unwind_Resume(a1);
}

void std::allocator_traits<geo::allocator_adapter<std::function<void ()(NSError *)>,ggl::zone_mallocator>>::construct[abi:nn200100]<std::function<void ()(NSError *)>,ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_0,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v3, a2);
  *(a1 + 24) = 0;
  operator new();
}

void sub_1B2A57EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

char *ecs2::Runtime::_entities<md::erq::EncodeRenderQueue,md::erq::RenderQueueToSubmit const&,md::erq::RenderTargetToSubmit const&,md::erq::GPUWorkCallbacks const&>(uint64_t a1, uint64_t **a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = ecs2::BasicRegistry<void>::storage<md::erq::RenderQueueToSubmit>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::erq::RenderTargetToSubmit>(a1);
  v6 = ecs2::BasicRegistry<void>::storage<md::erq::GPUWorkCallbacks>(a1);
  *buf = v4;
  *&buf[8] = v5;
  v46 = v6;
  v7 = 8;
  v8 = v4;
  v9 = buf;
  do
  {
    if (*(*&buf[v7] + 40) - *(*&buf[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = *&buf[v7];
      v9 = &buf[v7];
    }

    v7 += 8;
  }

  while (v7 != 24);
  v11 = *(*v9 + 32);
  v10 = *(*v9 + 40);
  *buf = v11;
  *&buf[8] = v10;
  v46 = v4;
  v47 = v5;
  *&v48 = v6;
  v42 = v10;
  while (v11 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(buf, *v11, v11[1]))
  {
    v11 += 2;
    *buf = v11;
    v10 = v42;
  }

  v43 = v48;
  v12 = *buf;
  if (*buf != v42)
  {
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v41 = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = *(*(*(v43 + 8) + ((*(v12 + 2) >> 3) & 0x1FF8)) + 4 * (*(v12 + 2) & 0x3FLL) + 2);
    v15 = *(*(v43 + 56) + ((v14 >> 3) & 0x1FF8));
    *(v13 + 104 * *v41 + 24) = *v12;
    v16 = a2[1];
    if (!v16)
    {
      v17 = **a2;
      v18 = *v17;
      v19 = *(v17 + 8);
      if (v18 == v19)
      {
        goto LABEL_18;
      }

      while (*v18 != 0x4987A5FEEF8688ACLL)
      {
        v18 += 5;
        if (v18 == v19)
        {
          goto LABEL_18;
        }
      }

      if (v18 == v19)
      {
LABEL_18:
        v16 = 0;
      }

      else
      {
        v16 = v18[3];
        v20 = v18[4];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }
      }

      a2[1] = v16;
    }

    v21 = a2[2];
    if (!v21)
    {
      v22 = **a2;
      v23 = *v22;
      v24 = *(v22 + 8);
      if (v23 == v24)
      {
        goto LABEL_22;
      }

      while (*v23 != 0xCFC5133F599B8248)
      {
        v21 = 0;
        v23 += 5;
        if (v23 == v24)
        {
          goto LABEL_23;
        }
      }

      if (v23 == v24)
      {
LABEL_22:
        v21 = 0;
      }

      else
      {
        v21 = v23[3];
        v33 = v23[4];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v33);
        }
      }

LABEL_23:
      a2[2] = v21;
    }

    (*(*v21 + 40))(v21, *(v15 + 24 * (v14 & 0x3F)));
    v25 = **a2;
    v26 = *v25;
    v27 = *(v25 + 8);
    if (v26 != v27)
    {
      while (*v26 != 0xCFC5133F599B8248)
      {
        v26 += 5;
        if (v26 == v27)
        {
          goto LABEL_31;
        }
      }

      if (v26 != v27)
      {
        v28 = v26[4];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v28);
        }
      }
    }

LABEL_31:
    (*(*v16 + 24))(v16);
    v29 = (*(*v16 + 16))(v16);
    ggl::RenderFrame::RenderFrame(v44, v29);
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v30 = GEOGetVectorKitPerformanceLog_log;
    v31 = (*(*v16 + 24))(v16);
    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = v31;
      if (os_signpost_enabled(v30))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v32, "SubmitCommands", &unk_1B3514CAA, buf, 2u);
      }
    }

    operator new();
  }

  v34 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  *(v34 + 104 * *result + 24) = -65536;
  v36 = v34 + 104 * *result;
  v37 = *(v36 + 92);
  *(v36 + 92) = v37 + 1;
  *(v36 + 4 * v37 + 28) = 0;
  v38 = v34 + 104 * *result;
  v40 = *(v38 + 92);
  v39 = (v38 + 92);
  if (v40 > 0xF)
  {
    *v39 = 0;
  }

  return result;
}

uint64_t md::DaVinciGroundRenderLayer::reserveStencilRange(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  if (*a3 == *(result + 3533))
  {
    v3 = result;
    if (a3[1] == *(result + 3534))
    {
      result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), 9, (result + 3320), 0);
      *(v3 + 3332) = result;
      *(v3 + 3336) = result + 1;
    }
  }

  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<std::function<void ()(NSError *)>,ggl::zone_mallocator>,std::function<void ()(NSError *)>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        if (v6 == v7)
        {
          *(a3 + 24) = a3;
          (*(**(v6 + 24) + 24))(*(v6 + 24), a3);
        }

        else
        {
          *(a3 + 24) = v7;
          *(v6 + 24) = 0;
        }
      }

      else
      {
        *(a3 + 24) = 0;
      }

      v6 += 32;
      a3 += 32;
    }

    while (v6 != a2);
    do
    {
      result = std::__function::__value_func<void ()(NSError *)>::~__value_func[abi:nn200100](v5);
      v5 += 32;
    }

    while (v5 != a2);
  }

  return result;
}

void md::MapEngineCallbackGraphService::execute(uint64_t a1, unint64_t a2)
{
  std::__shared_mutex_base::lock_shared((a1 + 8));
  v4 = *(a1 + 248);
  if (a2 >= ((*(a1 + 256) - v4) >> 3) || ((v5 = *(v4 + 8 * a2)) != 0 ? (v6 = (v5 ^ a2) >> 32 == 0) : (v6 = 0), !v6 || (v7 = 16 * *(v4 + 8 * a2) + *(a1 + 272), *(a1 + 280) == v7)))
  {

    std::__shared_mutex_base::unlock_shared((a1 + 8));
  }

  else
  {
    v9 = *v7;
    v8 = *(v7 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__shared_mutex_base::unlock_shared((a1 + 8));
    atomic_fetch_add(v9 + 2, 1u);
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    v18 = 0;
    *__p = 0u;
    v17 = 0u;
    *v15 = 0u;
    memset(v12, 0, sizeof(v12));
    memset(v10, 0, sizeof(v10));
    v11 = 0u;
    DWORD2(v11) = 1065353216;
    v13 = 0;
    v14 = 1065353216;
    gdc::tf::Executor::_runWithContext(v10, (*v9 + 56), v19);
    if (__p[1])
    {
      *&v17 = __p[1];
      operator delete(__p[1]);
    }

    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }

    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>>>::~__hash_table(v12 + 8);
    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>>>::~__hash_table(v10 + 8);
    std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>>>::~__hash_table(v19);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }
}

uint64_t std::__function::__func<md::erq::EncodeRenderQueue::operator()(md::erq::RenderQueueToSubmit const&,md::erq::RenderTargetToSubmit const&,md::erq::GPUWorkCallbacks const&)::$_0,std::allocator<md::erq::EncodeRenderQueue::operator()(md::erq::RenderQueueToSubmit const&,md::erq::RenderTargetToSubmit const&,md::erq::GPUWorkCallbacks const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v2 = *(a1 + 8);
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = GEOGetVectorKitPerformanceLog_log;
    if (os_signpost_enabled(GEOGetVectorKitPerformanceLog_log))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v3, OS_SIGNPOST_INTERVAL_END, v2, "SubmitCommands", &unk_1B3514CAA, v5, 2u);
    }
  }

  return (*(**(a1 + 24) + 56))(*(a1 + 24), *(a1 + 16));
}

uint64_t *std::unique_ptr<ggl::MetalDeviceContextFrame>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    v4 = v2 + 88;
    std::vector<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    v4 = v2 + 56;
    std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

double ggl::RenderTarget::RenderTarget(ggl::RenderTarget *this, const char *a2, char a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *this = &unk_1F2A5D940;
  *(this + 5) = &unk_1F2A5D960;
  *(this + 6) = a2;
  *(this + 42) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 82) = 0;
  *(this + 56) = 0u;
  *(this + 344) = a3;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  return result;
}

void *md::AnchorManager::clearTerrainHeightForAnchor(void *this, md::MercatorTerrainAnchor *a2)
{
  if (this)
  {
    v2 = this;
    this = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(this, a2);
    if (this)
    {

      return std::__hash_table<std::__hash_value_type<md::Anchor *,float>,std::__unordered_map_hasher<md::Anchor *,std::__hash_value_type<md::Anchor *,float>,std::hash<md::Anchor *>,std::equal_to<md::Anchor *>,true>,std::__unordered_map_equal<md::Anchor *,std::__hash_value_type<md::Anchor *,float>,std::equal_to<md::Anchor *>,std::hash<md::Anchor *>,true>,std::allocator<std::__hash_value_type<md::Anchor *,float>>>::erase(v2, this);
    }
  }

  return this;
}

uint64_t MDDisplayLayerSwapchainProvider::resolve(uint64_t a1, unint64_t a2)
{
  std::__shared_mutex_base::lock_shared((a1 + 8));
  v4 = *(a1 + 200);
  if (a2 >= ((*(a1 + 208) - v4) >> 3) || ((v5 = *(v4 + 8 * a2)) != 0 ? (v6 = (v5 ^ a2) >> 32 == 0) : (v6 = 0), !v6 || (v8 = (16 * *(v4 + 8 * a2) + *(a1 + 224)), *(a1 + 232) == v8)))
  {
    v7 = 0;
  }

  else
  {
    v7 = *v8;
  }

  std::__shared_mutex_base::unlock_shared((a1 + 8));
  return v7;
}

ggl::zone_mallocator *std::__split_buffer<std::function<void ()(NSError *)>,geo::allocator_adapter<std::function<void ()(NSError *)>,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 32;
    a1 = std::__function::__value_func<void ()(NSError *)>::~__value_func[abi:nn200100](i - 32);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::function<void ()(NSError *)>>(v5, v4);
  }

  return v1;
}

uint64_t ggl::MetalSwapchainDrawableRef::texture@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v3 = *(this + 8);
    v5 = *(v3 + 96);
    v4 = *(v3 + 104);
    *a3 = v5;
    a3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

void ggl::MetalDeviceContext::beginFrame(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
  if (!*(a1 + 40))
  {
    operator new();
  }

  v2 = GEOGetGeoGLMetalDeviceContextLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v4 = "false";
    v5 = 2080;
    v6 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalDeviceContext.mm";
    v7 = 1024;
    v8 = 149;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_FAULT, "Frame already active: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
  }
}

void sub_1B2A59028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11)
{
  a11 = a9;
  std::vector<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  v15 = *(v11 + 16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v11, 0x10A0C406AFAF037);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::BuildRouteLineFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::BuildRouteLineFrameGraph>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::BuildRouteLineFrameGraph,md::ls::FrameGraphBuilder &,md::ls::PassCount &,md::ls::FrameBufferDesc const&,md::ls::PassRoutelineMaskConfiguration const&,md::ls::PassDeviceCapabilities const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

ggl::RenderFrame *ggl::RenderFrame::RenderFrame(ggl::RenderFrame *this, ggl::Renderer *a2)
{
  *this = a2;
  *(this + 8) = 0;
  (*(*a2 + 64))(a2);
  return this;
}

uint64_t std::__function::__func<md::LabelsLogic::setNeedsLayoutCallback(std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>)::$_0,std::allocator<md::LabelsLogic::setNeedsLayoutCallback(std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>)::$_0>,void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(uint64_t a1, uint64_t *a2, char *a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = *a2;
    if (*(*(a1 + 40) + 160) == v5)
    {
      return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(result, v5, *a3);
    }
  }

  return result;
}

uint64_t ggl::RenderTarget::setMsaaResolveBuffer(uint64_t this, uint64_t a2, ggl::Texture *a3)
{
  v3 = (this + 24 * a2);
  v3[24] = 0;
  v3[25] = 0;
  v3[23] = a3;
  return this;
}

void md::MapEngineCallbackGraphService::retain(uint64_t a1, unint64_t a2)
{
  std::__shared_mutex_base::lock_shared((a1 + 8));
  v4 = *(a1 + 248);
  if (a2 >= ((*(a1 + 256) - v4) >> 3) || ((v5 = *(v4 + 8 * a2)) != 0 ? (v6 = (v5 ^ a2) >> 32 == 0) : (v6 = 0), !v6 || (v7 = (16 * *(v4 + 8 * a2) + *(a1 + 272)), *(a1 + 280) == v7)))
  {

    std::__shared_mutex_base::unlock_shared((a1 + 8));
  }

  else
  {
    v9 = *v7;
    v8 = v7[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_mutex_base::unlock_shared((a1 + 8));
      atomic_fetch_add((v9 + 12), 1u);

      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    else
    {
      std::__shared_mutex_base::unlock_shared((a1 + 8));
      atomic_fetch_add((v9 + 12), 1u);
    }
  }
}

void sub_1B2A59384(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a2;
  v6 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v7, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return ggl::CommandBuffer::sortRenderItems(v4, v5);
}

unint64_t ggl::CommandBuffer::sortRenderItems(ggl::CommandBuffer *this, ggl::CommandBuffer *a2)
{
  v2 = 126 - 2 * __clz((a2 - this) >> 3);
  if (a2 == this)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return std::__introsort<std::_ClassicAlgPolicy,ggl::CommandBuffer::sortRenderItems(BOOL)::$_0 &,ggl::RenderItem **,false>(this, a2, v3, 1);
}

uint64_t ggl::RenderTarget::setColorBuffer(uint64_t this, uint64_t a2, ggl::Texture *a3)
{
  v3 = (this + 24 * a2);
  v3[12] = 0;
  v3[13] = 0;
  v3[11] = a3;
  v4 = *(a3 + 17);
  *(this + 80) = *(a3 + 18);
  if (*(this + 72) <= (a2 + 1))
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = *(this + 72);
  }

  *(this + 72) = v5;
  *(this + 4 * a2 + 56) = v4;
  return this;
}

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::PassMapEngineCapabilities>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassMapEngineCapabilities>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassMapEngineCapabilities>();
      unk_1EB83C720 = 0xC5E1935BF25B6EDALL;
      qword_1EB83C728 = "md::ls::PassMapEngineCapabilities]";
      qword_1EB83C730 = 33;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassMapEngineCapabilities>(void)::metadata) = *(result + 4096);
  return result;
}

unint64_t md::ita::SortCommandBuffers::operator()(uint64_t **a1)
{
  v1 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a1);
  result = (*(*v1 + 104))(v1);
  if (v3)
  {
    v4 = result;
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      result = ggl::CommandBuffer::sortRenderItems(*(v6 + 72), *(v6 + 80));
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t ggl::RenderTarget::setDepthStencilBuffer(uint64_t this, ggl::Texture *a2)
{
  *(this + 288) = 0;
  *(this + 296) = 0;
  *(this + 280) = a2;
  *(this + 84) = *(a2 + 17);
  if (!*(this + 80))
  {
    *(this + 80) = *(a2 + 18);
  }

  return this;
}

uint64_t md::BuildingRenderLayer::heightAtPoint(float *a1, double *a2)
{
  v2 = *(a1 + 34);
  v3 = *(a1 + 35);
  if (v2 == v3)
  {
    goto LABEL_131;
  }

  v6 = *a2;
  v5 = a2[1];
LABEL_3:
  v7 = 0;
  v8 = *v2;
  v9 = *(*v2 + 64);
  v115 = v9;
  v11 = *(v8 + 80);
  v10 = *(v8 + 88);
  *v116 = v11;
  *&v116[1] = v10;
  v12 = &v115;
  v13 = 1;
  v14 = v6;
  do
  {
    if (v14 < *v12 || v14 >= *&v116[v7])
    {
      if (++v2 == v3)
      {
        goto LABEL_131;
      }

      goto LABEL_3;
    }

    v15 = v13;
    v13 = 0;
    v14 = v5;
    v12 = &v115 + 1;
    v7 = 1;
  }

  while ((v15 & 1) != 0);
  if (!v8)
  {
    goto LABEL_131;
  }

  v16 = (v6 - *&v9) / (v11 - *&v9);
  v17 = (v5 - *(&v115 + 1)) / (v10 - *(&v115 + 1));
  v18 = *(v8 + 392);
  v19 = geo::codec::VectorTile::totalBuildingFootprintsCount(*(v18 + 912));
  if (v19)
  {
    v20 = v19;
    for (i = 0; i != v20; ++i)
    {
      v22 = geo::codec::buildingFootprintFeatureAtIndex(*(v18 + 912), i);
      if (v22)
      {
        v23 = v22;
        if ((*(v22 + 128) & 1) == 0)
        {
          v24 = *(v22 + 96);
          if (v24)
          {
            for (j = 0; j != v24; ++j)
            {
              v93[0] = 0;
              v26 = geo::codec::multiSectionFeaturePoints(v23, j, v93);
              if (v93[0])
              {
                v27 = 0;
                v28 = &v26->__vftable + 1;
                v29 = 1;
                do
                {
                  if (v29 == v93[0])
                  {
                    v30 = 0;
                  }

                  else
                  {
                    v30 = v29;
                  }

                  v31 = (&v26->__vftable + v30);
                  v32 = *v28;
                  v33 = v31[1];
                  v37 = fminf(*v28, v33) <= v17 && fmaxf(v32, v33) >= v17 && ((v34 = *(v28 - 1), v35 = *v31, fmaxf(v34, *v31) >= v16) ? (v36 = v32 == v33) : (v36 = 1), !v36) && (v34 == v35 || ((((v35 - v34) * (v17 - v32)) / (v33 - v32)) + v34) >= v16);
                  v27 += v37;
                  v28 += 2;
                  ++v29;
                }

                while (v29 - v93[0] != 1);
                if (v27)
                {
                  v51 = geo::codec::buildingFootprintExtrusionHeight(v23, j);
                  shared_weak_owners = v23[1].__shared_weak_owners_;
                  goto LABEL_47;
                }
              }
            }
          }
        }
      }
    }
  }

  v38 = *(v18 + 968);
  v39 = *(v18 + 976);
  if (v38 == v39)
  {
LABEL_131:
    *&result = 0.0;
    return result;
  }

LABEL_39:
  v40 = 0;
  v41 = *v38;
  v42 = *(v38 + 4);
  v43 = *(v38 + 8);
  v44 = *(v38 + 12);
  LODWORD(v93[0]) = *v38;
  *(v93 + 1) = v43;
  v93[1] = __PAIR64__(LODWORD(v44), LODWORD(v42));
  v45 = v93;
  v46 = 1;
  v47 = v16;
  do
  {
    if (v47 < *v45 || v47 >= *(&v93[1] + v40))
    {
      *&result = 0.0;
      v38 += 432;
      if (v38 == v39)
      {
        return result;
      }

      goto LABEL_39;
    }

    v48 = v46;
    v46 = 0;
    v45 = (v93 + 4);
    v47 = v17;
    v40 = 1;
  }

  while ((v48 & 1) != 0);
  v50 = ((v17 - v43) * 20.0) / (v44 - v43);
  LOBYTE(v50) = *(v38 + 20 * vcvtms_s32_f32(((v16 - v41) * 20.0) / (v42 - v41)) + vcvtms_s32_f32(v50) + 24);
  v51 = *(v38 + 16) + ((LODWORD(v50) * 0.0039216) * (*(v38 + 20) - *(v38 + 16)));
  shared_weak_owners = *(v38 + 424);
LABEL_47:
  v53 = *(*(*(a1 + 5) + 96) + 41928);
  v54 = v53[3];
  if (!*&v54)
  {
    goto LABEL_138;
  }

  v55 = vcnt_s8(v54);
  v55.i16[0] = vaddlv_u8(v55);
  if (v55.u32[0] > 1uLL)
  {
    v56 = 0xEC9B77B4222D22FFLL % *&v54;
    if (*&v54 > 0xEC9B77B4222D22FFLL)
    {
      v56 = 0xEC9B77B4222D22FFLL;
    }
  }

  else
  {
    v56 = (*&v54 - 1) & 0xEC9B77B4222D22FFLL;
  }

  v57 = *(*&v53[2] + 8 * v56);
  if (!v57)
  {
    goto LABEL_138;
  }

  v58 = *v57;
  if (!v58)
  {
    goto LABEL_138;
  }

  while (2)
  {
    v59 = v58[1];
    if (v59 != 0xEC9B77B4222D22FFLL)
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
        goto LABEL_138;
      }

      goto LABEL_62;
    }

    if (v58[2] != 0xEC9B77B4222D22FFLL)
    {
LABEL_62:
      v58 = *v58;
      if (!v58)
      {
        goto LABEL_138;
      }

      continue;
    }

    break;
  }

  v60 = v58[5];
  if (!v60)
  {
    goto LABEL_138;
  }

  v91 = a1;
  v92 = shared_weak_owners;
  *v93 = 0u;
  *v94 = 0u;
  v95 = *(v60 + 240);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(v93, *(v60 + 216));
  for (k = *(v60 + 224); k; k = *k)
  {
    v62 = k[2];
    if (!v93[1])
    {
      goto LABEL_82;
    }

    v63 = vcnt_s8(v93[1]);
    v63.i16[0] = vaddlv_u8(v63);
    if (v63.u32[0] > 1uLL)
    {
      v64 = k[2];
      if (v62 >= v93[1])
      {
        v64 = v62 % v93[1];
      }
    }

    else
    {
      v64 = (v93[1] - 1) & v62;
    }

    v65 = *(v93[0] + v64);
    if (!v65 || (v66 = *v65) == 0)
    {
LABEL_82:
      operator new();
    }

    while (1)
    {
      v67 = v66[1];
      if (v67 == v62)
      {
        break;
      }

      if (v63.u32[0] > 1uLL)
      {
        if (v67 >= v93[1])
        {
          v67 %= v93[1];
        }
      }

      else
      {
        v67 &= v93[1] - 1;
      }

      if (v67 != v64)
      {
        goto LABEL_82;
      }

LABEL_81:
      v66 = *v66;
      if (!v66)
      {
        goto LABEL_82;
      }
    }

    if (v66[2] != v62)
    {
      goto LABEL_81;
    }
  }

  memset(v96, 0, sizeof(v96));
  v97 = *(v60 + 280);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(v96, *(v60 + 256));
  v68 = *(v60 + 264);
  if (!v68)
  {
    goto LABEL_103;
  }

  do
  {
    v69 = v68[2];
    if (!*(&v96[0] + 1))
    {
      goto LABEL_101;
    }

    v70 = vcnt_s8(*(v96 + 8));
    v70.i16[0] = vaddlv_u8(v70);
    if (v70.u32[0] > 1uLL)
    {
      v71 = v68[2];
      if (v69 >= *(&v96[0] + 1))
      {
        v71 = v69 % *(&v96[0] + 1);
      }
    }

    else
    {
      v71 = (*(&v96[0] + 1) - 1) & v69;
    }

    v72 = *(*&v96[0] + 8 * v71);
    if (!v72 || (v73 = *v72) == 0)
    {
LABEL_101:
      operator new();
    }

    while (1)
    {
      v74 = v73[1];
      if (v74 == v69)
      {
        break;
      }

      if (v70.u32[0] > 1uLL)
      {
        if (v74 >= *(&v96[0] + 1))
        {
          v74 %= *(&v96[0] + 1);
        }
      }

      else
      {
        v74 &= *(&v96[0] + 1) - 1;
      }

      if (v74 != v71)
      {
        goto LABEL_101;
      }

LABEL_100:
      v73 = *v73;
      if (!v73)
      {
        goto LABEL_101;
      }
    }

    if (v73[2] != v69)
    {
      goto LABEL_100;
    }

    v68 = *v68;
  }

  while (v68);
LABEL_103:
  std::unordered_set<unsigned long long>::unordered_set(v98, v60 + 288);
  std::vector<gdc::Entity>::vector[abi:nn200100](&v99, (v60 + 328));
  *(v109 + 9) = *(v60 + 489);
  v75 = *(v60 + 464);
  v107 = *(v60 + 448);
  v108 = v75;
  v76 = *(v60 + 480);
  v77 = *(v60 + 400);
  v103 = *(v60 + 384);
  v104 = v77;
  v78 = *(v60 + 432);
  v105 = *(v60 + 416);
  v106 = v78;
  v79 = *(v60 + 368);
  v101 = *(v60 + 352);
  v102 = v79;
  *__p = 0u;
  *v111 = 0u;
  v109[0] = v76;
  v112 = *(v60 + 544);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(__p, *(v60 + 520));
  for (m = *(v60 + 528); m; m = *m)
  {
    v81 = m[2];
    if (!__p[1])
    {
      goto LABEL_120;
    }

    v82 = vcnt_s8(__p[1]);
    v82.i16[0] = vaddlv_u8(v82);
    if (v82.u32[0] > 1uLL)
    {
      v83 = m[2];
      if (v81 >= __p[1])
      {
        v83 = v81 % __p[1];
      }
    }

    else
    {
      v83 = (__p[1] - 1) & v81;
    }

    v84 = *(__p[0] + v83);
    if (!v84 || (v85 = *v84) == 0)
    {
LABEL_120:
      operator new();
    }

    while (1)
    {
      v86 = v85[1];
      if (v86 == v81)
      {
        break;
      }

      if (v82.u32[0] > 1uLL)
      {
        if (v86 >= __p[1])
        {
          v86 %= __p[1];
        }
      }

      else
      {
        v86 &= __p[1] - 1;
      }

      if (v86 != v83)
      {
        goto LABEL_120;
      }

LABEL_119:
      v85 = *v85;
      if (!v85)
      {
        goto LABEL_120;
      }
    }

    if (v85[2] != v81)
    {
      goto LABEL_119;
    }
  }

  v113 = *(v60 + 552);
  v114 = *(v60 + 560);
  if (v92 && std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v98, v92) && (1.0 - fminf(fmaxf((v91[103] * 2.0) + -31.0, 0.0), 1.0)) < 0.00000011921)
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(v111[0]);
    v87 = __p[0];
    __p[0] = 0;
    if (v87)
    {
      operator delete(v87);
    }

    if (v99)
    {
      v100 = v99;
      operator delete(v99);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v98);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v96);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__deallocate_node(v94[0]);
    v88 = v93[0];
    v93[0] = 0;
    if (v88)
    {
      operator delete(v88);
    }

    goto LABEL_131;
  }

  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(v111[0]);
  v89 = __p[0];
  __p[0] = 0;
  if (v89)
  {
    operator delete(v89);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v98);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v96);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__deallocate_node(v94[0]);
  v90 = v93[0];
  v93[0] = 0;
  if (v90)
  {
    operator delete(v90);
  }

LABEL_138:
  *&result = (*(v8 + 80) - *(v8 + 64)) * (*(v8 + 420) * v51);
  return result;
}

void sub_1B2A5A188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, void *a51)
{
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(a51);
  v52 = __p;
  __p = 0;
  if (v52)
  {
    operator delete(v52);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a21);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a16);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__deallocate_node(a13);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderTargetToPrepare>(ecs2::Entity,md::ls::RenderTargetToPrepare &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D7F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassDeviceCapabilities>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDeviceCapabilities>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDeviceCapabilities>();
    *algn_1EB83CB38 = 0x6738F9098C50E08CLL;
    qword_1EB83CB40 = "md::ls::PassDeviceCapabilities]";
    qword_1EB83CB48 = 30;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDeviceCapabilities>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDeviceCapabilities>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t md::MapEngineFrameService::makeDrawableReady(uint64_t result, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(result + 88);
  if (a2 < ((*(result + 96) - v3) >> 3))
  {
    v4 = *(v3 + 8 * a2);
    if (v4 && (v4 ^ a2) >> 32 == 0)
    {
      v6 = result;
      v7 = 8 * *(v3 + 8 * a2) + *(result + 112);
      if (*(result + 120) != v7)
      {
        v8 = *v7;
        ++*(*v7 + 120);
        v9 = *(result + 8);
        v10 = *v9;
        v11 = *(v9 + 8);
        if (v10 == v11)
        {
          goto LABEL_9;
        }

        v16 = v10;
        while (*v16 != 0xC5B557B9C9754C35)
        {
          v16 += 5;
          if (v16 == v11)
          {
            goto LABEL_9;
          }
        }

        if (v16 == v11)
        {
LABEL_9:
          v12 = 0;
        }

        else
        {
          v12 = v16[3];
          v18 = v16[4];
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v18);
            v19 = *(v6 + 8);
            v10 = *v19;
            v11 = *(v19 + 8);
          }
        }

        if (v10 == v11)
        {
          goto LABEL_11;
        }

        while (*v10 != 0xCFC5133F599B8248)
        {
          v13 = 0;
          v10 += 5;
          if (v10 == v11)
          {
            goto LABEL_12;
          }
        }

        if (v10 == v11)
        {
LABEL_11:
          v13 = 0;
        }

        else
        {
          v13 = v10[3];
          v20 = v10[4];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }
        }

LABEL_12:
        v14 = (*(*v12 + 24))(v12, *(v8 + 40));
        result = (*(*v14 + 24))(v14);
        *(v8 + 48) = result | 0x100;
        if (result)
        {
          if ((result - 1) < 2)
          {
            if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
            }

            v17 = GEOGetVectorKitVKDefaultLog_log;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "Failed to acquire drawable, rendering to temporary texture", buf, 2u);
            }

            (*(*v14 + 16))(&v21, v14, 0);
            operator new();
          }
        }

        else
        {
          v15 = *geo::linear_map<md::FrameCallback,geo::handle<gdc::tf::Taskflow>,std::equal_to<md::FrameCallback>,std::allocator<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>,std::vector<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>>::operator[]((v8 + 96), 1u);
          *buf = &unk_1F2A2D2D8;
          v23 = a2;
          v24 = v6;
          v25 = buf;
          (*(*v13 + 48))(v13, v15, buf);
          return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](buf);
        }
      }
    }
  }

  return result;
}

void sub_1B2A5A934(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a5);
  }

  _Unwind_Resume(a1);
}

void ecs2::BasicRegistry<void>::add<md::erq::GPUWorkCallbacks>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::GPUWorkCallbacks>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::GPUWorkCallbacks>();
    *algn_1EB83B868 = 0x3D9415B0404B6523;
    qword_1EB83B870 = "md::erq::GPUWorkCallbacks]";
    qword_1EB83B878 = 25;
  }

  v4 = &unk_1EB83B000;
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::GPUWorkCallbacks>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::erq::GPUWorkCallbacks>(a1);
  v7 = v6;
  v8 = a2 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v8 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((a2 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v53 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
    v54 = *a3;
    *(v53 + 16) = *(a3 + 2);
    *v53 = v54;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_57;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v57 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = a2 | (WORD1(a2) << 16);
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = a2 | (WORD1(a2) << 16);
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = a2;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v56 = v27;
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_64;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v27 = v32 - v44;
      v45 = *(v7 + 96);
      if (v27 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v28 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_64:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v27);
      *(v7 + 88) = v43 + 16 * v27;
      LOBYTE(v27) = v56;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    v4 = &unk_1EB83B000;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v49 = *(v30 + 8 * v28) + 24 * (v27 & 0x3F);
  v50 = *a3;
  *(v49 + 16) = *(a3 + 2);
  *v49 = v50;
  v51 = *(v7 + 152);
  v52 = *(v7 + 160);
  if (v51 == v52)
  {
    v5 = v57;
  }

  else
  {
    v5 = v57;
    do
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v51 + 24), a2);
      v51 += 32;
    }

    while (v51 != v52);
  }

LABEL_57:
  v55 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::GPUWorkCallbacks>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::GPUWorkCallbacks>();
    *algn_1EB83B868 = 0x3D9415B0404B6523;
    qword_1EB83B870 = "md::erq::GPUWorkCallbacks]";
    qword_1EB83B878 = 25;
  }

  *(a1 + 8 * v4[268]) = *(a1 + 4096);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0)
  {
    return *(v9 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

char *std::__function::__func<ecs2::ForwardToExecute<md::erq::EncodeRenderQueue>,std::allocator<ecs2::ForwardToExecute<md::erq::EncodeRenderQueue>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::erq::EncodeRenderQueue,md::erq::RenderQueueToSubmit const&,md::erq::RenderTargetToSubmit const&,md::erq::GPUWorkCallbacks const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

unint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::SortCommandBuffers>,std::allocator<ecs2::ForwardToExecute<md::ita::SortCommandBuffers>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::SortCommandBuffers::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassCount>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassCount>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassCount>();
    unk_1EB83B8B0 = 0x256170776297ADC7;
    qword_1EB83B8B8 = "md::ls::PassCount]";
    qword_1EB83B8C0 = 17;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassCount>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassCount>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::PassDOFConfiguration>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDOFConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDOFConfiguration>();
      unk_1EB82F490 = 0x860C7F11DE38DFC9;
      qword_1EB82F498 = "md::ls::PassDOFConfiguration]";
      qword_1EB82F4A0 = 28;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDOFConfiguration>(void)::metadata) = *(result + 4096);
  return result;
}

void *__copy_helper_block_ea8_48c51_ZTSNSt3__110shared_ptrIN3ggl17RenderTransactionEEE64c119_ZTSNSt3__110shared_ptrINS_6vectorINS_8functionIFvP7NSErrorEEEN3geo17allocator_adapterIS6_N3ggl15zone_mallocatorEEEEEEE(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::erq::RenderTargetToSubmit>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderTargetToSubmit>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderTargetToSubmit>();
    unk_1EB83B820 = 0x38B0ED5EA8D13426;
    qword_1EB83B828 = "md::erq::RenderTargetToSubmit]";
    qword_1EB83B830 = 29;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderTargetToSubmit>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderTargetToSubmit>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t md::MapEngineFrameService::callbackGraphHandle(void *a1, unint64_t a2, int a3)
{
  v3 = a1[11];
  if (a2 >= ((a1[12] - v3) >> 3))
  {
    return 0;
  }

  v4 = *(v3 + 8 * a2);
  if (!v4 || (v4 ^ a2) >> 32 != 0)
  {
    return 0;
  }

  v7 = (8 * *(v3 + 8 * a2) + a1[14]);
  if (a1[15] == v7)
  {
    return 0;
  }

  v8 = *v7 + 96;
  v9 = *v8;
  ++*(v8 + 24);
  v10 = *(v8 + 8);
  while (v9 != v10)
  {
    if (*v9 == a3)
    {
      if (v9 != v10)
      {
        return *(v9 + 1);
      }

      break;
    }

    v9 += 16;
  }

  v11[0] = a3;
  v12 = 0;
  v9 = geo::linear_map<md::FrameCallback,geo::handle<gdc::tf::Taskflow>,std::equal_to<md::FrameCallback>,std::allocator<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>,std::vector<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>>::insert(v8, v11);
  return *(v9 + 1);
}

uint64_t geo::Pool<std::array<unsigned char,24ul>>::allocateSlab(uint64_t a1)
{
  v2 = malloc_type_malloc(24 * *(a1 + 24), 0x10220406D6D4512uLL);
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2);
  v4 = *(a1 + 40);
  v5 = &v2[24 * *(a1 + 24) - 24];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 24;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = v5 + 24;
  }

  *(a1 + 40) = v4;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphBuilder>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphBuilder>();
      unk_1EB83D2E0 = 0x9792F5BB2E6066F1;
      qword_1EB83D2E8 = "md::ls::FrameGraphBuilder]";
      qword_1EB83D2F0 = 25;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata) = *(result + 4096);
  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0)
  {
    return *(v13 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::erq::GPUWorkCallbacks>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::GPUWorkCallbacks>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::GPUWorkCallbacks>();
    *algn_1EB83B868 = 0x3D9415B0404B6523;
    qword_1EB83B870 = "md::erq::GPUWorkCallbacks]";
    qword_1EB83B878 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::GPUWorkCallbacks>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::GPUWorkCallbacks>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::erq::RenderQueueToSubmit>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderQueueToSubmit>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderQueueToSubmit>();
    *algn_1EB83B848 = 0x17922920A08D336CLL;
    qword_1EB83B850 = "md::erq::RenderQueueToSubmit]";
    qword_1EB83B858 = 28;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderQueueToSubmit>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderQueueToSubmit>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

id ggl::MetalDeviceContextFrame::blitCommandEncoder(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a1 + 144;
  v4 = *(a1 + 144 + 8 * a2);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3 == 0;
  }

  if (!v5)
  {
    v7 = 136;
    if (!a2)
    {
      v7 = 128;
    }

    v8 = *(a1 + v7);
    v9 = [v8 blitCommandEncoder];
    v10 = *(v3 + 8 * a2);
    *(v3 + 8 * a2) = v9;

    v4 = *(v3 + 8 * a2);
  }

  return v4;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PreviousResourceStamp>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreviousResourceStamp>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreviousResourceStamp>();
    *algn_1EB83CC88 = 0xE0E0BD7780EC271BLL;
    qword_1EB83CC90 = "md::ls::PreviousResourceStamp]";
    qword_1EB83CC98 = 29;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreviousResourceStamp>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreviousResourceStamp>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void std::vector<unsigned int>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 2;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v14);
    }

    v32 = 4 * v15;
    v33 = 4 * a5;
    v34 = (4 * v15);
    do
    {
      v35 = *v6++;
      *v34++ = v35;
      v33 -= 4;
    }

    while (v33);
    memcpy((v32 + 4 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 4 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v38 = (__dst - v36);
    v39 = (v32 - (__dst - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v40)
    {

      operator delete(v40);
    }

    return;
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v28 = &__dst[4 * a5];
    v29 = &v10[-4 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 4;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v28);
    }

    v27 = 4 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[4 * a5];
    v22 = &v10[v19];
    if (&v20[-4 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -4 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 4;
        v23 += 4;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[4 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}

__n128 std::__function::__func<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_0,std::allocator<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2D2D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        v6 = v3 - 64;
        a1 = std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100]((v3 - 32));
        v3 = v6;
      }

      while (v6 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BufferLoadItem>(v7, v4);
  }
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PreviousResourceStamp>(ecs2::Entity,md::ls::PreviousResourceStamp &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A54560;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_1,std::allocator<ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_1>,void ()(NSError *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A5BFF0;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::PassRoutelineMaskConfiguration>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRoutelineMaskConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassRoutelineMaskConfiguration>();
      unk_1EB83BC90 = 0xCDD99CCED5CBB5CBLL;
      qword_1EB83BC98 = "md::ls::PassRoutelineMaskConfiguration]";
      qword_1EB83BCA0 = 38;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRoutelineMaskConfiguration>(void)::metadata) = *(result + 4096);
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FrameGraphBuilder>(ecs2::Entity,md::ls::FrameGraphBuilder &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A54658;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::WillSubmitFrameInfo const*)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassMapEngineCapabilities>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassMapEngineCapabilities>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassMapEngineCapabilities>();
    unk_1EB83C720 = 0xC5E1935BF25B6EDALL;
    qword_1EB83C728 = "md::ls::PassMapEngineCapabilities]";
    qword_1EB83C730 = 33;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassMapEngineCapabilities>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassMapEngineCapabilities>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FrameGraphRenderTarget>(ecs2::Entity,md::ls::FrameGraphRenderTarget &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A54728;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::PassDeviceCapabilities>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDeviceCapabilities>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDeviceCapabilities>();
      *algn_1EB83CB38 = 0x6738F9098C50E08CLL;
      qword_1EB83CB40 = "md::ls::PassDeviceCapabilities]";
      qword_1EB83CB48 = 30;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDeviceCapabilities>(void)::metadata) = *(result + 4096);
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::erq::RenderQueueToSubmit>(ecs2::Entity,md::erq::RenderQueueToSubmit &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D9C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassSSAOConfiguration>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAOConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassSSAOConfiguration>();
    *algn_1EB83CCC8 = 0x73C8822C1D168C4;
    qword_1EB83CCD0 = "md::ls::PassSSAOConfiguration]";
    qword_1EB83CCD8 = 29;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAOConfiguration>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAOConfiguration>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::erq::RenderTargetToSubmit>(ecs2::Entity,md::erq::RenderTargetToSubmit &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1DA98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FrameGraphRenderResourcesRegistry>(ecs2::Entity,md::ls::FrameGraphRenderResourcesRegistry &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A547F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphRenderTarget>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderTarget>();
    *algn_1EB83CBD8 = 0x2CF7C0CBD63AB273;
    qword_1EB83CBE0 = "md::ls::FrameGraphRenderTarget]";
    qword_1EB83CBE8 = 30;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

id **std::unique_ptr<ggl::MetalSurfaceDrawable>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x1B8C62190](v2, 0x80C40B8603338);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphBuilder>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphBuilder>();
    unk_1EB83D2E0 = 0x9792F5BB2E6066F1;
    qword_1EB83D2E8 = "md::ls::FrameGraphBuilder]";
    qword_1EB83D2F0 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphRenderTarget>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderTarget>();
      *algn_1EB83CBD8 = 0x2CF7C0CBD63AB273;
      qword_1EB83CBE0 = "md::ls::FrameGraphRenderTarget]";
      qword_1EB83CBE8 = 30;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata) = *(result + 4096);
  return result;
}

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::PassCount>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassCount>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassCount>();
      unk_1EB83B8B0 = 0x256170776297ADC7;
      qword_1EB83B8B8 = "md::ls::PassCount]";
      qword_1EB83B8C0 = 17;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassCount>(void)::metadata) = *(result + 4096);
  return result;
}

ggl::zone_mallocator *std::__split_buffer<std::function<void ()(void)>,geo::allocator_adapter<std::function<void ()(void)>,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 32;
    a1 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](i - 32);
  }

  v4 = *v1;
  if (*v1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::function<void ()(void)>>(v5, v4);
  }

  return v1;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,ggl::CommandBuffer::sortRenderItems(BOOL)::$_0 &,ggl::RenderItem **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (*(*v8 + 48) < *(*v9 + 48))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = *v9;
      v87 = v83[6];
      v88 = *(*v9 + 48);
      v89 = *(v85 + 48);
      if (v87 >= v88)
      {
        if (v89 >= v87)
        {
          goto LABEL_175;
        }

        *v82 = v85;
        *v84 = v83;
        v90 = v9;
        v91 = (v9 + 1);
        result = v83;
        if (v89 < v88)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v90 = v9;
        v91 = (v9 + 2);
        result = *v9;
        if (v89 >= v87)
        {
          *v9 = v83;
          v9[1] = v86;
          v90 = v9 + 1;
          v91 = (v9 + 2);
          result = v86;
          if (v89 >= v88)
          {
LABEL_175:
            v83 = v85;
            goto LABEL_176;
          }
        }

LABEL_167:
        *v90 = v85;
        *v91 = v86;
        v83 = result;
      }

LABEL_176:
      if (*(*v8 + 48) < v83[6])
      {
        *v84 = *v8;
        *v8 = v83;
        v139 = *v84;
        v140 = *v82;
        v141 = *(v139 + 48);
        if (v141 < *(v140 + 48))
        {
          v9[1] = v139;
          v9[2] = v140;
          v142 = *v9;
          if (v141 < *(*v9 + 48))
          {
            *v9 = v139;
            v9[1] = v142;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,ggl::CommandBuffer::sortRenderItems(BOOL)::$_0 &,ggl::RenderItem **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 8;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = *(v97 + 48);
            if (v99 < *(v98 + 48))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100) = v98;
                v101 = v100 - 8;
                if (v100 == 8)
                {
                  break;
                }

                v98 = *(v9 + v100 - 16);
                v100 -= 8;
                if (v99 >= *(v98 + 48))
                {
                  v102 = (v9 + v101);
                  goto LABEL_128;
                }
              }

              v102 = v9;
LABEL_128:
              *v102 = v97;
            }

            v92 = v96 + 1;
            v95 += 8;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v136 = *v7;
          v135 = v7[1];
          v7 = v92;
          v137 = *(v135 + 48);
          if (v137 < *(v136 + 48))
          {
            v138 = v7;
            do
            {
              *v138 = v136;
              v136 = *(v138 - 2);
              --v138;
            }

            while (v137 < *(v136 + 48));
            *v138 = v135;
          }

          v92 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v103 = (v10 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v106 = (2 * v104) | 1;
            v107 = &v9[v106];
            v108 = *v107;
            if (2 * v105 + 2 < v10 && *(v108 + 48) < *(v107[1] + 48))
            {
              v108 = v107[1];
              ++v107;
              v106 = 2 * v105 + 2;
            }

            result = &v9[v105];
            v109 = *result;
            v110 = *(*result + 48);
            if (*(v108 + 48) >= v110)
            {
              do
              {
                v111 = v107;
                *result = v108;
                if (v103 < v106)
                {
                  break;
                }

                v112 = (2 * v106) | 1;
                v107 = &v9[v112];
                v113 = 2 * v106 + 2;
                v108 = *v107;
                if (v113 < v10 && *(v108 + 48) < *(v107[1] + 48))
                {
                  v108 = v107[1];
                  ++v107;
                  v112 = v113;
                }

                result = v111;
                v106 = v112;
              }

              while (*(v108 + 48) >= v110);
              *v111 = v109;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          v114 = 0;
          v115 = *v9;
          v116 = v9;
          do
          {
            v117 = &v116[v114];
            v118 = v117 + 1;
            v119 = v117[1];
            v120 = (2 * v114) | 1;
            v114 = 2 * v114 + 2;
            if (v114 >= v10)
            {
              v114 = v120;
            }

            else
            {
              v123 = v117[2];
              v121 = v117 + 2;
              v122 = v123;
              result = *(v119 + 48);
              if (result >= *(v123 + 48))
              {
                v114 = v120;
              }

              else
              {
                v119 = v122;
                v118 = v121;
              }
            }

            *v116 = v119;
            v116 = v118;
          }

          while (v114 <= ((v10 - 2) >> 1));
          if (v118 == --a2)
          {
            *v118 = v115;
          }

          else
          {
            *v118 = *a2;
            *a2 = v115;
            v124 = (v118 - v9 + 8) >> 3;
            v125 = v124 < 2;
            v126 = v124 - 2;
            if (!v125)
            {
              v127 = v126 >> 1;
              v128 = &v9[v127];
              v129 = *v128;
              v130 = *v118;
              v131 = *(*v118 + 48);
              if (*(*v128 + 48) < v131)
              {
                do
                {
                  v132 = v128;
                  *v118 = v129;
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = &v9[v127];
                  v129 = *v128;
                  v118 = v132;
                }

                while (*(*v128 + 48) < v131);
                *v132 = v130;
              }
            }
          }

          v125 = v10-- <= 2;
        }

        while (!v125);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = *(*v8 + 48);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = *(*v11 + 48);
      v18 = *(*v9 + 48);
      if (v17 >= v18)
      {
        if (v14 < v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (*(*v11 + 48) < *(*v9 + 48))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v17)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v16;
        if (*(*v8 + 48) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = *(v26 + 48);
      v29 = *(v27 + 48);
      v30 = *(a2 - 2);
      v31 = *(v30 + 48);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (*(*v25 + 48) < *(v32 + 48))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v27;
        v33 = *(a2 - 2);
        if (*(v33 + 48) < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v36 = v11[1];
      v34 = v11 + 1;
      v35 = v36;
      v37 = v9[2];
      v38 = *(v36 + 48);
      v39 = *(v37 + 48);
      v40 = *(a2 - 3);
      v41 = *(v40 + 48);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (*(*v34 + 48) < *(v42 + 48))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v35;
        *v34 = v37;
        v43 = *(a2 - 3);
        if (*(v43 + 48) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = *(*v12 + 48);
      v47 = *(*v25 + 48);
      v48 = *v34;
      v49 = *(*v34 + 48);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v45;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v44;
        *v12 = v45;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v45;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v45;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = *v12;
    v21 = *(*v9 + 48);
    v22 = *(*v12 + 48);
    if (v21 >= v22)
    {
      if (v14 < v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (*(*v9 + 48) < *(*v12 + 48))
        {
          *v12 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 < v21)
    {
      *v12 = v13;
LABEL_36:
      *v8 = v20;
      goto LABEL_57;
    }

    *v12 = v19;
    *v9 = v20;
    if (*(*v8 + 48) < v22)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v51 = *v9;
    if (a4)
    {
      v52 = *(v51 + 48);
LABEL_60:
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*(v56 + 48) < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 48) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 48) >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 48) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 48) >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_79;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ggl::CommandBuffer::sortRenderItems(BOOL)::$_0 &,ggl::RenderItem **>(v9, v54);
      v9 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ggl::CommandBuffer::sortRenderItems(BOOL)::$_0 &,ggl::RenderItem **>(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,ggl::CommandBuffer::sortRenderItems(BOOL)::$_0 &,ggl::RenderItem **,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      v52 = *(v51 + 48);
      if (*(*(v9 - 1) + 48) < v52)
      {
        goto LABEL_60;
      }

      if (v52 >= *(*v8 + 48))
      {
        v67 = v9 + 1;
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v52 >= *(*v9 + 48));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= *(v66 + 48));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < *(v69 + 48));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= *(v72 + 48));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < *(v73 + 48));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = *(v77 + 48);
  v79 = *(*v9 + 48);
  v80 = *v8;
  v81 = *(*v8 + 48);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v134 = *v9;
      v133 = v9[1];
      if (*(v133 + 48) < *(*v9 + 48))
      {
        *v9 = v133;
        v9[1] = v134;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (*(*v8 + 48) >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FrameBufferDesc>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameBufferDesc>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameBufferDesc>();
    *algn_1EB83D6E8 = 0xD7B05696AE714D71;
    qword_1EB83D6F0 = "md::ls::FrameBufferDesc]";
    qword_1EB83D6F8 = 23;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameBufferDesc>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameBufferDesc>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassShadowConfiguration>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowConfiguration>();
    *algn_1EB83CA28 = 0x7216A09FEC0661A6;
    qword_1EB83CA30 = "md::ls::PassShadowConfiguration]";
    qword_1EB83CA38 = 31;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowConfiguration>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowConfiguration>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void *std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::__find_equal<md::FrameGraphPass *>(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = **(v4 + 32);
        if (v6 >= v8)
        {
          break;
        }

        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (v8 >= v6)
      {
        break;
      }

      result = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = result;
  }

LABEL_10:
  *a2 = v7;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassSSAOConfiguration>(ecs2::Entity,md::ls::PassSSAOConfiguration &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A548C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ggl::RenderResourceFences::update(unsigned int *a1, uint64_t *a2)
{
  v2 = a1 + 2;
  v3 = *a1;
  v4 = *a2;
  if (*a2 != *&a1[4 * v3 + 2])
  {
    v5 = (v3 + 1) % 3u;
    *a1 = v5;
    v6 = &v2[4 * v5];
    if (*v6)
    {
      atomic_load(*v6);
      v7 = &v2[4 * *a1];
      v9 = *a2;
      v8 = a2[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = v7[1];
      *v7 = v9;
      v7[1] = v8;
      if (v10)
      {
LABEL_6:
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }
    }

    else
    {
      v11 = a2[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(v6 + 1);
      *v6 = v4;
      *(v6 + 1) = v11;
      if (v10)
      {
        goto LABEL_6;
      }
    }
  }
}

void ggl::MetalResourceManager::updateTextureWithResource(ggl::MetalResourceManager *this, const ggl::Texture *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a2 + 3);
  if (!v7)
  {
    v8 = ggl::zone_mallocator::instance(v5);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, 0x88uLL);
    ggl::MetalTextureResource::MetalTextureResource(v7);
    ggl::RenderDataHolder::setRenderResource(a2, this, v7);
  }

  v9 = *(v7 + 4);
  v10 = *v9;
  *v9 = v6;
}

void sub_1B2A5E558(ggl::zone_mallocator *a1)
{
  v4 = ggl::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, v2);

  _Unwind_Resume(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassRouteLineDescriptor>();
    *algn_1EB83CA48 = 0x6D136A48B3800686;
    qword_1EB83CA50 = "md::ls::PassRouteLineDescriptor]";
    qword_1EB83CA58 = 31;
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassDOFConfiguration>(ecs2::Entity,md::ls::PassDOFConfiguration &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A54998;
  a2[1] = *(result + 8);
  return result;
}

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::FrameBufferDesc>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameBufferDesc>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameBufferDesc>();
      *algn_1EB83D6E8 = 0xD7B05696AE714D71;
      qword_1EB83D6F0 = "md::ls::FrameBufferDesc]";
      qword_1EB83D6F8 = 23;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameBufferDesc>(void)::metadata) = *(result + 4096);
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassDOFConfiguration>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDOFConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDOFConfiguration>();
    unk_1EB82F490 = 0x860C7F11DE38DFC9;
    qword_1EB82F498 = "md::ls::PassDOFConfiguration]";
    qword_1EB82F4A0 = 28;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDOFConfiguration>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDOFConfiguration>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::PassSSAOConfiguration>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAOConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassSSAOConfiguration>();
      *algn_1EB83CCC8 = 0x73C8822C1D168C4;
      qword_1EB83CCD0 = "md::ls::PassSSAOConfiguration]";
      qword_1EB83CCD8 = 29;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAOConfiguration>(void)::metadata) = *(result + 4096);
  return result;
}

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::PreviousResourceStamp>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreviousResourceStamp>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreviousResourceStamp>();
      *algn_1EB83CC88 = 0xE0E0BD7780EC271BLL;
      qword_1EB83CC90 = "md::ls::PreviousResourceStamp]";
      qword_1EB83CC98 = 29;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreviousResourceStamp>(void)::metadata) = *(result + 4096);
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassRoutelineMaskConfiguration>(ecs2::Entity,md::ls::PassRoutelineMaskConfiguration &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A54B38;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassDeviceCapabilities>(ecs2::Entity,md::ls::PassDeviceCapabilities &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A54C08;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassMapEngineCapabilities>(ecs2::Entity,md::ls::PassMapEngineCapabilities &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A54CD8;
  a2[1] = *(result + 8);
  return result;
}

mdm::zone_mallocator *md::PointLabelFeature::populateStyleQueries(uint64_t a1, std::__shared_weak_count *a2, uint64_t *a3)
{
  v11 = 0;
  if ((*(*a1 + 496))(a1) && (*(*a1 + 488))(a1, 0))
  {
    operator new();
  }

  (*(*a1 + 600))(&v7, a1, 0);
  md::LabelStyleCache::styleQueryForFeatureAttributes(&v9, a3, &v7, v11);
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](&v11, 0);
}

void sub_1B2A5ED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1B8C62190](v6, 0x1012C40B602C572);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t md::PointLabelFeature::publicLocale(md::PointLabelFeature *this, unint64_t a2)
{
  v2 = *(this + 65);
  v3 = *(this + 66) - v2;
  v4 = v2 + (a2 << 6) + 32;
  if (a2 >= v3 >> 6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FrameBufferDesc>(ecs2::Entity,md::ls::FrameBufferDesc &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A54DA8;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  return result;
}

void md::PointLabelFeature::styleAttributes(void *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = md::PointLabelFeature::styleEntryForIdentifier(a1, a2);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a1 + 87;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(*a1 + 560))(a1, &v8);
  if (v8 != v9)
  {
    std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>();
  }

  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
}

void sub_1B2A5EEF0(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t md::PointLabelFeature::styleEntryForIdentifier(void *a1, unsigned int a2)
{
  v2 = a1[55];
  if (!v2)
  {
    return 0;
  }

  v3 = a1 + 55;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == a1 + 55 || *(v3 + 8) > a2)
  {
    return 0;
  }

  v8 = *(v3 + 35);
  v9 = a1[73];
  v10 = a1[74] - v9;
  v11 = v9 + 32 * v8;
  if (v8 >= v10 >> 5)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassCount>(ecs2::Entity,md::ls::PassCount &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A54E78;
  a2[1] = *(result + 8);
  return result;
}

unsigned __int8 *md::PointLabelFeatureBase::populateAdditionalStyleAttributes(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  if ((result[241] & 1) == 0)
  {
    v4 = result[141];
    v6 = *(a2 + 8);
    v5 = *(a2 + 16);
    if (v6 >= v5)
    {
      v8 = (v6 - *a2) >> 3;
      if ((v8 + 1) >> 61)
      {
        goto LABEL_83;
      }

      v9 = v5 - *a2;
      v10 = v9 >> 2;
      if (v9 >> 2 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      v11 = v9 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v10;
      v98 = a2 + 24;
      if (v11)
      {
        v12 = mdm::zone_mallocator::instance(result);
        v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v12, v11);
      }

      else
      {
        v13 = 0;
      }

      v15 = &v13[8 * v11];
      v14 = &v13[8 * v8];
      *v14 = ((v4 << 32) | 0x10022) + 3;
      v7 = v14 + 8;
      v16 = *(a2 + 8) - *a2;
      v17 = &v14[-v16];
      memcpy(&v14[-v16], *a2, v16);
      v18 = *a2;
      *a2 = v17;
      *(a2 + 8) = v7;
      v19 = *(a2 + 16);
      *(a2 + 16) = v15;
      v96 = v18;
      v97 = v19;
      v94 = v18;
      v95 = v18;
      result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v94);
    }

    else
    {
      *v6 = ((v4 << 32) | 0x10022) + 3;
      v7 = v6 + 1;
    }

    *(a2 + 8) = v7;
    if (v3[142] == 1)
    {
      v20 = *(a2 + 16);
      if (v7 >= v20)
      {
        v22 = (v7 - *a2) >> 3;
        if ((v22 + 1) >> 61)
        {
          goto LABEL_83;
        }

        v23 = v20 - *a2;
        v24 = v23 >> 2;
        if (v23 >> 2 <= (v22 + 1))
        {
          v24 = v22 + 1;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        v98 = a2 + 24;
        if (v25)
        {
          v26 = mdm::zone_mallocator::instance(result);
          v27 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v26, v25);
        }

        else
        {
          v27 = 0;
        }

        v29 = &v27[8 * v25];
        v28 = &v27[8 * v22];
        *v28 = 0x100010056;
        v21 = v28 + 8;
        v30 = *(a2 + 8) - *a2;
        v31 = &v28[-v30];
        memcpy(&v28[-v30], *a2, v30);
        v32 = *a2;
        *a2 = v31;
        *(a2 + 8) = v21;
        v33 = *(a2 + 16);
        *(a2 + 16) = v29;
        v96 = v32;
        v97 = v33;
        v94 = v32;
        v95 = v32;
        result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v94);
      }

      else
      {
        *v7 = 0x100010056;
        v21 = v7 + 1;
      }

      *(a2 + 8) = v21;
    }
  }

  if ((v3[240] & 1) == 0)
  {
    v35 = *(a2 + 8);
    v34 = *(a2 + 16);
    if (v35 >= v34)
    {
      v37 = (v35 - *a2) >> 3;
      if ((v37 + 1) >> 61)
      {
        goto LABEL_83;
      }

      v38 = v34 - *a2;
      v39 = v38 >> 2;
      if (v38 >> 2 <= (v37 + 1))
      {
        v39 = v37 + 1;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v40 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v39;
      }

      v98 = a2 + 24;
      if (v40)
      {
        v41 = mdm::zone_mallocator::instance(result);
        v42 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v41, v40);
      }

      else
      {
        v42 = 0;
      }

      v44 = &v42[8 * v40];
      v43 = &v42[8 * v37];
      *v43 = 65572;
      v36 = v43 + 8;
      v45 = *(a2 + 8) - *a2;
      v46 = &v43[-v45];
      memcpy(&v43[-v45], *a2, v45);
      v47 = *a2;
      *a2 = v46;
      *(a2 + 8) = v36;
      v48 = *(a2 + 16);
      *(a2 + 16) = v44;
      v96 = v47;
      v97 = v48;
      v94 = v47;
      v95 = v47;
      result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v94);
    }

    else
    {
      *v35 = 65572;
      v36 = v35 + 1;
    }

    *(a2 + 8) = v36;
    v49 = *(a2 + 16);
    if (v36 >= v49)
    {
      v51 = (v36 - *a2) >> 3;
      if ((v51 + 1) >> 61)
      {
        goto LABEL_83;
      }

      v52 = v49 - *a2;
      v53 = v52 >> 2;
      if (v52 >> 2 <= (v51 + 1))
      {
        v53 = v51 + 1;
      }

      if (v52 >= 0x7FFFFFFFFFFFFFF8)
      {
        v54 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v53;
      }

      v98 = a2 + 24;
      if (v54)
      {
        v55 = mdm::zone_mallocator::instance(result);
        v56 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v55, v54);
      }

      else
      {
        v56 = 0;
      }

      v58 = &v56[8 * v54];
      v57 = &v56[8 * v51];
      *v57 = 65570;
      v50 = v57 + 8;
      v59 = *(a2 + 8) - *a2;
      v60 = &v57[-v59];
      memcpy(&v57[-v59], *a2, v59);
      v61 = *a2;
      *a2 = v60;
      *(a2 + 8) = v50;
      v62 = *(a2 + 16);
      *(a2 + 16) = v58;
      v96 = v61;
      v97 = v62;
      v94 = v61;
      v95 = v61;
      result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v94);
    }

    else
    {
      *v36 = 65570;
      v50 = v36 + 1;
    }

    *(a2 + 8) = v50;
  }

  if (v3[143] == 1)
  {
    v64 = *(a2 + 8);
    v63 = *(a2 + 16);
    if (v64 >= v63)
    {
      v66 = (v64 - *a2) >> 3;
      if ((v66 + 1) >> 61)
      {
        goto LABEL_83;
      }

      v67 = v63 - *a2;
      v68 = v67 >> 2;
      if (v67 >> 2 <= (v66 + 1))
      {
        v68 = v66 + 1;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFF8)
      {
        v69 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v69 = v68;
      }

      v98 = a2 + 24;
      if (v69)
      {
        v70 = mdm::zone_mallocator::instance(result);
        v71 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v70, v69);
      }

      else
      {
        v71 = 0;
      }

      v73 = &v71[8 * v69];
      v72 = &v71[8 * v66];
      *v72 = 0x100010043;
      v65 = v72 + 8;
      v74 = *(a2 + 8) - *a2;
      v75 = &v72[-v74];
      memcpy(&v72[-v74], *a2, v74);
      v76 = *a2;
      *a2 = v75;
      *(a2 + 8) = v65;
      v77 = *(a2 + 16);
      *(a2 + 16) = v73;
      v96 = v76;
      v97 = v77;
      v94 = v76;
      v95 = v76;
      result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v94);
    }

    else
    {
      *v64 = 0x100010043;
      v65 = v64 + 1;
    }

    *(a2 + 8) = v65;
  }

  v78 = v3[244];
  if (v78 == -1)
  {
    return result;
  }

  v80 = *(a2 + 8);
  v79 = *(a2 + 16);
  if (v80 >= v79)
  {
    v82 = (v80 - *a2) >> 3;
    if (!((v82 + 1) >> 61))
    {
      v83 = v79 - *a2;
      v84 = v83 >> 2;
      if (v83 >> 2 <= (v82 + 1))
      {
        v84 = v82 + 1;
      }

      if (v83 >= 0x7FFFFFFFFFFFFFF8)
      {
        v85 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v85 = v84;
      }

      v98 = a2 + 24;
      if (v85)
      {
        v86 = mdm::zone_mallocator::instance(result);
        v87 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v86, v85);
      }

      else
      {
        v87 = 0;
      }

      v89 = &v87[8 * v85];
      v88 = &v87[8 * v82];
      *v88 = ((v78 << 32) | 0x10022) + 55;
      v81 = v88 + 8;
      v90 = *(a2 + 8) - *a2;
      v91 = &v88[-v90];
      memcpy(&v88[-v90], *a2, v90);
      v92 = *a2;
      *a2 = v91;
      *(a2 + 8) = v81;
      v93 = *(a2 + 16);
      *(a2 + 16) = v89;
      v96 = v92;
      v97 = v93;
      v94 = v92;
      v95 = v92;
      result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v94);
      goto LABEL_81;
    }

LABEL_83:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v80 = ((v78 << 32) | 0x10022) + 55;
  v81 = v80 + 1;
LABEL_81:
  *(a2 + 8) = v81;
  return result;
}

mdm::zone_mallocator *md::PointLabelFeature::populateAdditionalStyleAttributes(unsigned __int8 *a1, uint64_t a2)
{
  md::PointLabelFeatureBase::populateAdditionalStyleAttributes(a1, a2);
  result = (*(*a1 + 368))(a1);
  v5 = result;
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v7 >= v6)
  {
    v10 = (v7 - *a2) >> 3;
    if ((v10 + 1) >> 61)
    {
      goto LABEL_32;
    }

    v11 = v6 - *a2;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v42 = a2 + 24;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(result);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v14, v13);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v10];
    v17 = &v15[8 * v13];
    v18 = 0x100010041;
    if (!v5)
    {
      v18 = 65601;
    }

    *v16 = v18;
    v9 = v16 + 1;
    v19 = *(a2 + 8) - *a2;
    v20 = v16 - v19;
    memcpy(v16 - v19, *a2, v19);
    v21 = *a2;
    *a2 = v20;
    *(a2 + 8) = v9;
    v22 = *(a2 + 16);
    *(a2 + 16) = v17;
    v40 = v21;
    v41 = v22;
    v38 = v21;
    v39 = v21;
    result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v38);
  }

  else
  {
    v8 = 0x100010041;
    if (!result)
    {
      v8 = 65601;
    }

    *v7 = v8;
    v9 = v7 + 1;
  }

  *(a2 + 8) = v9;
  if (a1[695] != 1)
  {
    return result;
  }

  v23 = a1[694];
  v24 = *(a2 + 16);
  if (v9 >= v24)
  {
    v26 = (v9 - *a2) >> 3;
    if (!((v26 + 1) >> 61))
    {
      v27 = v24 - *a2;
      v28 = v27 >> 2;
      if (v27 >> 2 <= (v26 + 1))
      {
        v28 = v26 + 1;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v29 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v28;
      }

      v42 = a2 + 24;
      if (v29)
      {
        v30 = mdm::zone_mallocator::instance(result);
        v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v30, v29);
      }

      else
      {
        v31 = 0;
      }

      v33 = &v31[8 * v29];
      v32 = &v31[8 * v26];
      *v32 = ((v23 << 32) | 0x10041) + 60;
      v25 = v32 + 8;
      v34 = *(a2 + 8) - *a2;
      v35 = &v32[-v34];
      memcpy(&v32[-v34], *a2, v34);
      v36 = *a2;
      *a2 = v35;
      *(a2 + 8) = v25;
      v37 = *(a2 + 16);
      *(a2 + 16) = v33;
      v40 = v36;
      v41 = v37;
      v38 = v36;
      v39 = v36;
      result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v38);
      goto LABEL_30;
    }

LABEL_32:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v9 = ((v23 << 32) | 0x10041) + 60;
  v25 = v9 + 1;
LABEL_30:
  *(a2 + 8) = v25;
  return result;
}

mdm::zone_mallocator *std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsFeatureStylePair>(v5, v4);
  }

  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderTargetToPrepare>();
    unk_1EB83CC60 = 0x90024251D45E5EE8;
    qword_1EB83CC68 = "md::ls::RenderTargetToPrepare]";
    qword_1EB83CC70 = 29;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderTargetToPrepare>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderTargetToPrepare>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[430];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls21RenderTargetToPrepareEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1D880;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21RenderTargetToPrepareEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1D880;
  a2[1] = v2;
  return result;
}

void std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsFeatureStylePair>(v2, v1);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreviousResourceStamp>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreviousResourceStamp>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[431];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls21PreviousResourceStampEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A545E8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21PreviousResourceStampEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A545E8;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<FeatureStyleAttributes>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }

  else
  {
    free(*(a1 + 24));
    *(a1 + 24) = 0;
    *(a1 + 57) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    free(v3);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphBuilder>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphBuilder>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[504];
}

gss::zone_mallocator *std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::emplace_back<gss::StyleAttribute,unsigned short>(gss::zone_mallocator *result, _DWORD *a2, _WORD *a3)
{
  v5 = result;
  v6 = *(result + 1);
  v7 = *(result + 2);
  if (v6 >= v7)
  {
    v9 = *result;
    v10 = v6 - *result;
    v11 = v10 >> 3;
    v12 = (v10 >> 3) + 1;
    if (v12 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v7 - v9;
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

    v22[4] = result + 24;
    if (v14)
    {
      v15 = gss::zone_mallocator::instance(result);
      v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v15, v14);
      v9 = *v5;
      v10 = *(v5 + 1) - *v5;
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v11];
    v18 = &v16[8 * v14];
    *v17 = *a2;
    *(v17 + 2) = *a3;
    v8 = v17 + 8;
    v19 = &v17[-8 * (v10 >> 3)];
    memcpy(v19, v9, v10);
    v20 = *v5;
    *v5 = v19;
    *(v5 + 1) = v8;
    v21 = *(v5 + 2);
    *(v5 + 2) = v18;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    *v6 = *a2;
    *(v6 + 4) = *a3;
    v8 = (v6 + 8);
  }

  *(v5 + 1) = v8;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17FrameGraphBuilderEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A546E0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17FrameGraphBuilderEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A546E0;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassRoutelineMaskConfiguration>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRoutelineMaskConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassRoutelineMaskConfiguration>();
    unk_1EB83BC90 = 0xCDD99CCED5CBB5CBLL;
    qword_1EB83BC98 = "md::ls::PassRoutelineMaskConfiguration]";
    qword_1EB83BCA0 = 38;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRoutelineMaskConfiguration>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRoutelineMaskConfiguration>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderTarget>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderTarget>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[423];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22FrameGraphRenderTargetEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A547B0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22FrameGraphRenderTargetEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A547B0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderResourcesRegistry>()
{
  v0 = &unk_1EB839000;
  {
    v0 = &unk_1EB839000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderResourcesRegistry>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB839000;
    }
  }

  return v0[278];
}

void ___ZN3ggl18MetalDeviceContext8endFrameERKNS_14EndFrameParamsE_block_invoke_2(uint64_t a1)
{
  if (GEOGetGeoGLPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGeoGLPerformanceLog_onceToken, &__block_literal_global_5_50383);
  }

  v2 = GEOGetGeoGLPerformanceLog_log;
  v3 = v2;
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v3, OS_SIGNPOST_INTERVAL_END, v4, "GPUFrameScheduled", &unk_1B3514CAA, buf, 2u);
  }

  if (GEOGetGeoGLPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGeoGLPerformanceLog_onceToken, &__block_literal_global_5_50383);
  }

  v5 = GEOGetGeoGLPerformanceLog_log;
  v6 = v5;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "GPUFrame", &unk_1B3514CAA, v8, 2u);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphRenderResourcesRegistry>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderResourcesRegistry>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderResourcesRegistry>();
    unk_1EB82F400 = 0x5D2A68BC4355A70CLL;
    qword_1EB82F408 = "md::ls::FrameGraphRenderResourcesRegistry]";
    qword_1EB82F410 = 41;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderResourcesRegistry>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderResourcesRegistry>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls33FrameGraphRenderResourcesRegistryEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A54880;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__function::__func<md::erq::EncodeRenderQueue::operator()(md::erq::RenderQueueToSubmit const&,md::erq::RenderTargetToSubmit const&,md::erq::GPUWorkCallbacks const&)::$_1,std::allocator<md::erq::EncodeRenderQueue::operator()(md::erq::RenderQueueToSubmit const&,md::erq::RenderTargetToSubmit const&,md::erq::GPUWorkCallbacks const&)::$_1>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t ggl::StencilManager::reserveStencilValues(unsigned __int8 *a1, int a2, unsigned __int8 **a3, int a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (v4 + a2 <= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 + 4;
  }

  *a3 = v6;
  if (v4 + a2 > v5)
  {
    LOBYTE(v4) = 1;
    *a1 = 1;
    LOBYTE(v5) = a1[2];
    a1[1] = v5;
  }

  if (a4)
  {
    LOBYTE(v4) = v5 - a2;
    a1[1] = v5 - a2;
  }

  else
  {
    *a1 = v4 + a2;
  }

  return v4;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls33FrameGraphRenderResourcesRegistryEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A54880;
  a2[1] = v2;
  return result;
}

void std::vector<std::function<void ()(NSError *)>,geo::allocator_adapter<std::function<void ()(NSError *)>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(NSError *)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = ggl::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::function<void ()(NSError *)>>(v6, v5);
  }
}

uint64_t md::MapEngineFrameService::presentDrawable(uint64_t a1, unint64_t a2)
{
  result = md::MapEngineFrameService::get(a1, a2);
  if (result)
  {
    v4 = result;
    if (*(result + 49) == 1 && !*(result + 48))
    {
      v5 = gdc::ServiceLocator::resolve<md::SwapchainProvider>(**(a1 + 8), *(*(a1 + 8) + 8));
      result = (*(*v5 + 24))(v5, *(v4 + 40));
      if (result)
      {
        v6 = result;
        v7 = gdc::ServiceLocator::resolve<md::CallbackGraphService>(**(a1 + 8), *(*(a1 + 8) + 8));
        if (*(v4 + 36) == 1)
        {
          if (*(a1 + 160))
          {
            operator new();
          }
        }

        (*(*v6 + 32))(v6);
        v8 = geo::linear_map<md::FrameCallback,geo::handle<gdc::tf::Taskflow>,std::equal_to<md::FrameCallback>,std::allocator<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>,std::vector<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>>::operator[]((v4 + 96), 2u);
        return (*(*v7 + 56))(v7, *v8);
      }
    }
  }

  return result;
}

void sub_1B2A61368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, std::future<void> a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  operator delete(v44);
  if (a15)
  {
    operator delete(a15);
  }

  std::mutex::unlock((v46 + 8));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v47 - 192);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v45);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v47 - 152);
  std::future<void>::~future(&a25);
  MEMORY[0x1B8C61FC0](&a26);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a39);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a12);
  _Block_object_dispose(&a43, 8);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a10);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphRenderResourcesRegistry>(uint64_t result)
{
  {
    v2 = result;
    result = v2;
    if (v1)
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderResourcesRegistry>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderResourcesRegistry>();
      unk_1EB82F400 = 0x5D2A68BC4355A70CLL;
      qword_1EB82F408 = "md::ls::FrameGraphRenderResourcesRegistry]";
      qword_1EB82F410 = 41;
      result = v2;
    }
  }

  *(result + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderResourcesRegistry>(void)::metadata) = *(result + 4096);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassSSAOConfiguration>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassSSAOConfiguration>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[435];
}

void std::vector<std::function<void ()(void)>,geo::allocator_adapter<std::function<void ()(void)>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = ggl::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::function<void ()(void)>>(v6, v5);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls21PassSSAOConfigurationEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A54950;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t gdc::ServiceLocator::resolve<md::SwapchainProvider>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0xC5B557B9C9754C35)
  {
    a1 += 5;
    if (a1 == a2)
    {
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return v3;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21PassSSAOConfigurationEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A54950;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_0,std::allocator<ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_0>,void ()(NSError *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t md::RouteRenderLayer::reserveStencilRange(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  if (*a3 == *(result + 106))
  {
    v3 = result;
    if (a3[1] == *(result + 107))
    {
      v4 = *(result + 64);
      v5 = *(v4 + 24);
      for (i = *(v4 + 32); v5 != i; v5 += 2)
      {
        result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (2 * *(*v5 + 16) + 4) & 0xFE, (*(v3 + 56) + 16), 1);
        v8 = *v5;
        v9 = (*v5 + 1);
        v10 = **v5;
        if (v10 != v9)
        {
          v17 = 0;
          do
          {
            v11 = v10[4];
            if (*(v11 + 621) == 1)
            {
              v12 = result + 2 * (*(v8 + 4) & 0x7F) + 2;
            }

            else
            {
              if (*(v11 + 620) == 1)
              {
                v13 = 2 * (*(v8 + 4) & 0x7F);
              }

              else
              {
                v13 = 2 * (v17 & 0x7F);
              }

              v12 = v13 + result;
            }

            *(v11 + 512) = v12;
            *(v11 + 616) = v17;
            v14 = v10[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v10[2];
                v16 = *v15 == v10;
                v10 = v15;
              }

              while (!v16);
            }

            ++v17;
            v10 = v15;
          }

          while (v15 != v9);
        }
      }
    }
  }

  return result;
}

void ggl::MetalSwapchainDrawable::presentAtTime(ggl::MetalSwapchainDrawable *this, double a2)
{
  v2 = 3;
  atomic_compare_exchange_strong(this + 33, &v2, 5u);
  if (v2 == 3)
  {
    std::mutex::lock(this);
    v5 = **(this + 14);
    if (a2 == 0.0)
    {
      [v5 present];
    }

    else
    {
      [v5 presentAtTime:a2];
    }

    ggl::MetalResourceManager::updateTextureWithResource(*(*(this + 8) + 80), *(this + 12), 0);
    std::mutex::unlock(this);
    atomic_exchange(this + 33, 6u);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDOFConfiguration>()
{
  v0 = &unk_1EB839000;
  {
    v0 = &unk_1EB839000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDOFConfiguration>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB839000;
    }
  }

  return v0[284];
}

uint64_t md::StandardPassList::_buildSSAODOFCommonFrameGraph(uint64_t this, const BOOL *a2, const BOOL *a3, const float *a4, md::FrameGraphBuilder *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a2 || (a3 & 1) != 0)
  {
    v5 = *a4;
    v6[0] = 1;
    v7 = 0;
    v8 = v5;
    v9 = 0;
    v10 = v5;
    v11 = 0x100000015;
    v12 = 0;
    v13 = 0;
    v14 = a3 ^ 1;
    v15 = 0x100000001;
    v16 = 1;
    md::FrameGraphBuilder::createResource(a5, v6, "DV Scene Depth", 0x138BE2490000000ELL, 0);
  }

  *(this + 112) = 0;
  *(this + 176) = 0;
  return this;
}

void sub_1B2A61BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__function::__value_func<void ()(md::FrameGraphRenderPassBuilder &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(ggl::WillSubmitFrameInfo const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::MapEngineFrameService::get(void *a1, unint64_t a2)
{
  v2 = a1[11];
  if (a2 >= ((a1[12] - v2) >> 3))
  {
    return 0;
  }

  v3 = *(v2 + 8 * a2);
  if (!v3 || (v3 ^ a2) >> 32 != 0)
  {
    return 0;
  }

  v5 = 8 * *(v2 + 8 * a2) + a1[14];
  if (a1[15] == v5)
  {
    return 0;
  }

  result = *v5;
  ++*(*v5 + 120);
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20PassDOFConfigurationEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A54A20;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20PassDOFConfigurationEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A54A20;
  a2[1] = v2;
  return result;
}

void std::vector<std::function<void ()(ggl::WillSubmitFrameInfo const*)>,geo::allocator_adapter<std::function<void ()(ggl::WillSubmitFrameInfo const*)>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(ggl::WillSubmitFrameInfo const*)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = ggl::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::function<void ()(ggl::WillSubmitFrameInfo const*)>>(v6, v5);
  }
}

void std::vector<ggl::Buffer *,geo::allocator_adapter<ggl::Buffer *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Buffer *>(v2, v1);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassSSAODescriptor>();
    *algn_1EB83D138 = 0x937D85B25618F8B3;
    qword_1EB83D140 = "md::ls::PassSSAODescriptor]";
    qword_1EB83D148 = 26;
  }
}

uint64_t md::StandardPassList::_buildSSAOFrameGraph(uint64_t a1, char a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v10 = *a3;
    v11[0] = 1;
    v12 = 0;
    v13 = v10;
    v14 = 0;
    v15 = v10;
    v16 = 0x100000003;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 1;
    v21 = 0;
    md::FrameGraphBuilder::createResource(a6, v11, "DV Low Res Linear Depth", 0x78CE7E6100000017, 0);
  }

  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  v7 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    v9 = *(*result + 8);

    return v9();
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassRoutelineMaskConfiguration>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassRoutelineMaskConfiguration>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[264];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls30PassRoutelineMaskConfigurationEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A54BC0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30PassRoutelineMaskConfigurationEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A54BC0;
  a2[1] = v2;
  return result;
}

double md::Anchor::coordinate@<D0>(md::Anchor *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 40);
  result = *(this + 7);
  *(a2 + 16) = result;
  return result;
}

void std::__function::__func<md::MapEngine::buildFrameRequest(std::optional<unsigned int>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::buildFrameRequest(std::optional<unsigned int>,std::function<void ()(void)>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v1 + 41664));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((v1 + 41664));
    [v3 didPresent];
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDeviceCapabilities>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDeviceCapabilities>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[419];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22PassDeviceCapabilitiesEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A54C90;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::StandardPassList::_buildRouteLineMaskFrameGraph(uint64_t a1, char a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = *a3;
    v10[0] = 1;
    v11 = 0;
    v12 = v9;
    v13 = 0;
    v14 = v9;
    v15 = 0x100000008;
    v16 = 0;
    v17 = 0;
    v18 = 0x100000000;
    v19 = 1;
    v20 = 0;
    md::FrameGraphBuilder::createResource(a6, v10, "DV RouteMask", 0x43A17EC40000000CLL, 0);
  }

  *(a1 + 168) = 0;
  result = *(a1 + 208);
  *(a1 + 208) = 0;
  if (result)
  {
    v8 = *(*result + 8);

    return v8();
  }

  return result;
}

void sub_1B2A62DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(md::FrameGraphRenderPassBuilder &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22PassDeviceCapabilitiesEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A54C90;
  a2[1] = v2;
  return result;
}

char *ecs2::Runtime::_entities<md::ita::CleanUpFrameGraphResources,md::ls::FrameGraphBuilder &,md::ls::FrameGraphRenderTarget &>(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphBuilder>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphRenderTarget>(v2);
  v5 = v4;
  if (*(v4 + 40) - *(v4 + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v50, *(v6 + 32), v7, v3, v4);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v45, v7, v7, v3, v5);
  v44 = v52;
  v42 = v50;
  v43 = v51;
  v39 = v50;
  v40 = v51;
  v41 = v52;
  v8 = v50;
  v36 = v45;
  if (v50 == v45)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v10 = 0;
  }

  else
  {
    v9 = v40;
    v38 = _ZTWN4ecs27Runtime11_localStateE();
    v37 = _ZTWN4ecs27Runtime11_stackIndexE();
    v10 = 0;
    v11 = *(&v39 + 1);
    do
    {
      v12 = v8[1];
      v13 = v12 & 0x3F;
      v14 = (v12 >> 3) & 0x1FF8;
      v15 = *(*(*(v9 + 8) + v14) + 4 * v13 + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v9 + 56) + ((v15 >> 3) & 0x1FF8));
      v18 = *(*(*(*(&v9 + 1) + 8) + v14) + 4 * v13 + 2);
      v19 = *(*(*(&v9 + 1) + 56) + ((v18 >> 3) & 0x1FF8));
      *(v38 + 104 * *v37 + 24) = *v8;
      v20 = *(v17 + 8 * v16);
      if (v20)
      {
        md::FrameGraphBuilder::~FrameGraphBuilder(v20);
        MEMORY[0x1B8C62190]();
      }

      v21 = *(v19 + 8 * (v18 & 0x3F));
      if (v21)
      {
        v21 = MEMORY[0x1B8C62190](v21, 0x1020C406634E4F7);
      }

      v22 = ecs2::ExecutionTaskContext::currentEntity(v21);
      v47 = &unk_1F2A55788;
      LODWORD(v48) = v22;
      v49 = &v47;
      *(&v51 + 1) = &v50;
      *&v50 = &unk_1F2A55788;
      DWORD2(v50) = v22;
      LODWORD(v52) = 2;
      ecs2::Runtime::queueCommand();
      if (v52 != -1)
      {
        (off_1F2A54620[v52])(&v46, &v50);
      }

      LODWORD(v52) = -1;
      v23 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v47);
      v24 = ecs2::ExecutionTaskContext::currentEntity(v23);
      v47 = &unk_1F2A557D0;
      LODWORD(v48) = v24;
      v49 = &v47;
      *(&v51 + 1) = &v50;
      *&v50 = &unk_1F2A557D0;
      DWORD2(v50) = v24;
      LODWORD(v52) = 2;
      ecs2::Runtime::queueCommand();
      if (v52 != -1)
      {
        (off_1F2A54620[v52])(&v46, &v50);
      }

      LODWORD(v52) = -1;
      v25 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v47);
      v26 = ecs2::ExecutionTaskContext::currentEntity(v25);
      v47 = &unk_1F2A55818;
      v48 = v26 << 32;
      v49 = &v47;
      *(&v51 + 1) = &v50;
      *&v50 = &unk_1F2A55818;
      *(&v50 + 1) = v26 << 32;
      LODWORD(v52) = 0;
      ecs2::Runtime::queueCommand();
      if (v52 != -1)
      {
        (off_1F2A54620[v52])(&v46, &v50);
      }

      LODWORD(v52) = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v47);
      ++v10;
      v27 = v8 + 2;
      do
      {
        v8 = v27;
        *&v39 = v27;
        if (v27 == v11)
        {
          break;
        }

        v28 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v39, *v27, v27[1]);
        v27 = v8 + 2;
      }

      while (!v28);
    }

    while (v8 != v36);
    ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphBuilder>(*(a1 + 8));
    ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphRenderTarget>(*(a1 + 8));
    result = v37;
    v30 = v38;
  }

  *(v30 + 104 * *result + 24) = -65536;
  v31 = v30 + 104 * *result;
  v32 = *(v31 + 92);
  *(v31 + 92) = v32 + 1;
  *(v31 + 4 * v32 + 28) = v10;
  v33 = v30 + 104 * *result;
  v35 = *(v33 + 92);
  v34 = (v33 + 92);
  if (v35 >= 0x10)
  {
    *v34 = 0;
  }

  return result;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::CleanUpFrameGraphResources>,std::allocator<ecs2::ForwardToExecute<md::ita::CleanUpFrameGraphResources>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::CleanUpFrameGraphResources,md::ls::FrameGraphBuilder &,md::ls::FrameGraphRenderTarget &>(a2);
  *v2 = 0;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassMapEngineCapabilities>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassMapEngineCapabilities>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[376];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls25PassMapEngineCapabilitiesEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A54D60;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25PassMapEngineCapabilitiesEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A54D60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::FrameGraphBuilder>(ecs2::Entity,std::type_identity<md::ls::FrameGraphBuilder>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::FrameGraphBuilder>(ecs2::Entity,std::type_identity<md::ls::FrameGraphBuilder>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A55788;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameBufferDesc>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameBufferDesc>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[25];
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateResourcesAfterRebuild>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateResourcesAfterRebuild>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::UpdateResourcesAfterRebuild::operator()((a1 + 8), a2, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls15FrameBufferDescEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A54E30;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::FrameGraphRenderTarget>(ecs2::Entity,std::type_identity<md::ls::FrameGraphRenderTarget>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::FrameGraphRenderTarget>(ecs2::Entity,std::type_identity<md::ls::FrameGraphRenderTarget>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A557D0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15FrameBufferDescEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A54E30;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MarkForEntityDeletion>(ecs2::Entity,md::ls::MarkForEntityDeletion &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A55818;
  a2[1] = *(result + 8);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassCount>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassCount>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[220];
}

uint64_t md::ita::CleanupRampMaterialData::operator()()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2A433E0;
  v2[3] = v2;
  v3[3] = v3;
  v3[0] = &unk_1F2A433E0;
  v4 = 4;
  ecs2::Runtime::queueCommand();
  if (v4 != -1)
  {
    (off_1F2A411A8[v4])(&v1, v3);
  }

  v4 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v2);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::CleanupRampMaterialData>,std::allocator<ecs2::ForwardToExecute<md::ita::CleanupRampMaterialData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  result = md::ita::CleanupRampMaterialData::operator()();
  *(a1 + 8) = 0;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls9PassCountEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A54F00;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls9PassCountEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A54F00;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::UpdateProcessedStatus::operator()(void ****a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, (**a1)[1]);
  (*v1)();
  v4[0] = &unk_1F2A198A0;
  v7 = v6;
  v5 = v4;
  v6[0] = &unk_1F2A198A0;
  v8 = 4;
  ecs2::Runtime::queueCommand();
  if (v8 != -1)
  {
    (off_1F2A198D8[v8])(&v3, v6);
  }

  v8 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
  v4[0] = &unk_1F2A19910;
  v7 = v6;
  v5 = v4;
  v6[0] = &unk_1F2A19910;
  v8 = 4;
  ecs2::Runtime::queueCommand();
  if (v8 != -1)
  {
    (off_1F2A198D8[v8])(&v3, v6);
  }

  v8 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
  v4[0] = &unk_1F2A19958;
  v5 = v4;
  v7 = v6;
  v6[0] = &unk_1F2A19958;
  v8 = 4;
  ecs2::Runtime::queueCommand();
  if (v8 != -1)
  {
    (off_1F2A198D8[v8])(&v3, v6);
  }

  v8 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
  v4[0] = &unk_1F2A19A08;
  v7 = v6;
  v5 = v4;
  v6[0] = &unk_1F2A19A08;
  v8 = 4;
  ecs2::Runtime::queueCommand();
  if (v8 != -1)
  {
    (off_1F2A198D8[v8])(&v3, v6);
  }

  v8 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
  v4[0] = &unk_1F2A19A50;
  v5 = v4;
  v7 = v6;
  v6[0] = &unk_1F2A19A50;
  v8 = 4;
  ecs2::Runtime::queueCommand();
  if (v8 != -1)
  {
    (off_1F2A198D8[v8])(&v3, v6);
  }

  v8 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
  v4[0] = &unk_1F2A19A98;
  v7 = v6;
  v5 = v4;
  v6[0] = &unk_1F2A19A98;
  v8 = 4;
  ecs2::Runtime::queueCommand();
  if (v8 != -1)
  {
    (off_1F2A198D8[v8])(&v3, v6);
  }

  v8 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
  v4[0] = &unk_1F2A19AE0;
  v5 = v4;
  v7 = v6;
  v6[0] = &unk_1F2A19AE0;
  v8 = 4;
  ecs2::Runtime::queueCommand();
  if (v8 != -1)
  {
    (off_1F2A198D8[v8])(&v3, v6);
  }

  v8 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
  v4[0] = &unk_1F2A19B28;
  v7 = v6;
  v5 = v4;
  v6[0] = &unk_1F2A19B28;
  v8 = 4;
  ecs2::Runtime::queueCommand();
  if (v8 != -1)
  {
    (off_1F2A198D8[v8])(&v3, v6);
  }

  v8 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
  v4[0] = &unk_1F2A19B70;
  v7 = v6;
  v5 = v4;
  v6[0] = &unk_1F2A19B70;
  v8 = 4;
  ecs2::Runtime::queueCommand();
  if (v8 != -1)
  {
    (off_1F2A198D8[v8])(&v3, v6);
  }

  v8 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatus>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatus>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::UpdateProcessedStatus::operator()((a1 + 8));
  *v2 = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassShadowDescriptor>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowDescriptor>();
    unk_1EB83CF40 = 0x73F7A94D4E0637DDLL;
    qword_1EB83CF48 = "md::ls::PassShadowDescriptor]";
    qword_1EB83CF50 = 28;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t md::ita::UpdateResourcesAfterRebuild::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v53 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v52 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(a1);
  v57[0] = &unk_1F2A1AC40;
  v57[1] = &v53;
  v57[2] = a1;
  v58 = v57;
  v6 = *(a2 + 8);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsRebuildingRenderables>(v6);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::EnteringView>(v6);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationTileHandle>(v6);
  *&v59 = v7;
  *(&v59 + 1) = v8;
  v10 = 8;
  v11 = v7;
  v12 = &v59;
  *&v60 = v9;
  do
  {
    if (*(*(&v59 + v10) + 40) - *(*(&v59 + v10) + 32) < *(v11 + 40) - *(v11 + 32))
    {
      v11 = *(&v59 + v10);
      v12 = &v59 + v10;
    }

    v10 += 8;
  }

  while (v10 != 24);
  v13 = *(*v12 + 32);
  v14 = *(*v12 + 40);
  *&v59 = v13;
  *(&v59 + 1) = v14;
  *&v60 = v7;
  *(&v60 + 1) = v8;
  *&v61 = v9;
  while (v13 != v14 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v59, *v13, v13[1]))
  {
    v13 += 2;
    *&v59 = v13;
  }

  v54 = v59;
  v55 = v60;
  v56 = v61;
  v15 = v59;
  if (v59 == v14)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v16 = v55;
    v17 = v56;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = *(&v54 + 1);
    do
    {
      v22 = *(v16 + 32);
      v23 = v15[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(v16 + 8) + v25) + 4 * v24;
      v27 = *(*(*(*(&v16 + 1) + 8) + v25) + 4 * v24 + 2);
      v28 = *(*(*(&v16 + 1) + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v17 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(v26 + 2);
      *(v18 + 104 * *v19 + 24) = *v15;
      if (!v58)
      {
LABEL_32:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v58 + 48))(v58, v22 + 4 * v31, v28 + (v27 & 0x3F), v30 + 8 * (v29 & 0x3F));
      ++v20;
      v32 = v15 + 2;
      while (1)
      {
        v15 = v32;
        *&v54 = v32;
        if (v32 == v21)
        {
          break;
        }

        v33 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v54, *v32, v32[1]);
        v32 = v15 + 2;
        if (v33)
        {
          v34 = v15;
          goto LABEL_17;
        }
      }

      v34 = v21;
LABEL_17:
      ;
    }

    while (v34 != v14);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v35 = v18 + 104 * *v19;
  v36 = *(v35 + 92);
  *(v35 + 92) = v36 + 1;
  *(v35 + 4 * v36 + 28) = v20;
  v37 = v18 + 104 * *v19;
  v39 = *(v37 + 92);
  v38 = (v37 + 92);
  if (v39 > 0xF)
  {
    *v38 = 0;
  }

  std::__function::__value_func<void ()(md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&)>::~__value_func[abi:nn200100](v57);
  *&v59 = &unk_1F2A1ACD0;
  *(&v59 + 1) = &v52;
  *&v60 = a1;
  *(&v60 + 1) = &v59;
  v40 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(*(a3 + 8));
  v41 = v40[4];
  v42 = v40[5];
  if (v41 == v42)
  {
    LODWORD(v43) = 0;
  }

  else
  {
    v43 = 0;
    do
    {
      v44 = *(v40[7] + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8));
      *(v18 + 104 * *v19 + 24) = *v41;
      if (!*(&v60 + 1))
      {
        goto LABEL_32;
      }

      (*(**(&v60 + 1) + 48))(*(&v60 + 1), v44 + 24 * (v43++ & 0x3F));
      ++v41;
    }

    while (v41 != v42);
    if (v43)
    {
      v45 = *(a3 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>();
      *(v45 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata) = *(v45 + 4096);
    }
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v46 = v18 + 104 * *v19;
  v47 = *(v46 + 92);
  *(v46 + 92) = v47 + 1;
  *(v46 + 4 * v47 + 28) = v43;
  v48 = v18 + 104 * *v19;
  v50 = *(v48 + 92);
  v49 = (v48 + 92);
  if (v50 >= 0x10)
  {
    *v49 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::UniqueMaterialData &)>::~__value_func[abi:nn200100](&v59);
}

void sub_1B2A644F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(md::ls::UniqueMaterialData &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t *ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(uint64_t **a1)
{
  v1 = a1[2];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x4EDAD23DFB014132)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[2] = v1;
  }

  return v1;
}

uint64_t md::VenueRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 393) == 1)
  {
    v3 = *(a1 + 49) - *(a1 + 48) + 2;
  }

  else
  {
    v3 = 2;
  }

  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), v3, *(a1 + 376) + 3676);
  v5 = *(a1 + 376);
  *(v5 + 3672) = result;
  *(v5 + 3673) = result + 1;
  return result;
}

uint64_t ggl::StencilManager::reserveStencilValues(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 + a2 > a1[1])
  {
    *(a3 + 28) = a1[32];
    *(a3 + 32) = *(a1 + 9);
    a1[1] = a1[2];
    v3 = 1;
  }

  *a1 = v3 + a2;
  return v3;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SupportsRebuildingRenderables>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t md::ClientDrapedPolygonRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), 8, &v4, 0);
  *(a1 + 496) = result;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsRebuildingRenderables>();
    unk_1EB83BD50 = 0xD853A1C6BA9D5FEDLL;
    qword_1EB83BD58 = "md::ls::SupportsRebuildingRenderables]";
    qword_1EB83BD60 = 37;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::EnteringView>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::EnteringView>();
    *algn_1EB83DB18 = 0xE0AB1B46607846E6;
    qword_1EB83DB20 = "md::ls::EnteringView]";
    qword_1EB83DB28 = 20;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::AssociationTileHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AssociationTileHandle>();
    unk_1EB83CD40 = 0x24B7D588576BB14ELL;
    qword_1EB83CD48 = "md::ls::AssociationTileHandle]";
    qword_1EB83CD50 = 29;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t std::__function::__value_func<void ()(md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData &)>::~__value_func[abi:nn200100](uint64_t a1)
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

double std::__function::__func<ecs2::ForwardToExecute<md::ita::DisconnectComponents>,std::allocator<ecs2::ForwardToExecute<md::ita::DisconnectComponents>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::DisconnectComponents::operator()((a1 + 8), a2, a2, a2, a2, a2, a2, a2, a2, a2);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t *ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<mre::GGLResourceStore>(uint64_t **a1)
{
  v1 = a1[3];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x348A0B0E758C07C2)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[3] = v1;
  }

  return v1;
}

uint64_t std::__function::__value_func<void ()(md::ls::RequestReset const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassSSAODescriptor>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassSSAODescriptor>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[485];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls18PassSSAODescriptorEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A551A8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18PassSSAODescriptorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A551A8;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingDeletion>();
    *algn_1EB83D698 = 0x34ACED59D994E35ELL;
    qword_1EB83D6A0 = "md::ls::PendingDeletion]";
    qword_1EB83D6A8 = 23;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderableMaterialData>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMaterialData>();
    *algn_1EB83CAF8 = 0xB6C12FBB402E8E70;
    qword_1EB83CB00 = "md::ls::RenderableMaterialData]";
    qword_1EB83CB08 = 30;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RampMaterialData>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RampMaterialData>();
    *algn_1EB83D558 = 0x741786E98487217CLL;
    qword_1EB83D560 = "md::ls::RampMaterialData]";
    qword_1EB83D568 = 24;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialZIndexHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialZIndexHandle>();
    unk_1EB83C500 = 0xE515B39146CD9FB7;
    qword_1EB83C508 = "md::ls::UniqueMaterialZIndexHandle]";
    qword_1EB83C510 = 34;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowDescriptor>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowDescriptor>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[464];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20PassShadowDescriptorEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A55330;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialVisibilityOptionsHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialVisibilityOptionsHandle>();
    *algn_1EB83BA18 = 0x849CB194B84BB63DLL;
    qword_1EB83BA20 = "md::ls::UniqueMaterialVisibilityOptionsHandle]";
    qword_1EB83BA28 = 45;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueColorDataHandle>();
    unk_1EB83CC20 = 0x60915CB292001F47;
    qword_1EB83CC28 = "md::ls::UniqueColorDataHandle]";
    qword_1EB83CC30 = 29;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20PassShadowDescriptorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A55330;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorCorrectionDataHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueGradientMaskDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueGradientMaskDataHandle>();
    *algn_1EB83BE38 = 0xC8B3692EC3F5F854;
    qword_1EB83BE40 = "md::ls::UniqueGradientMaskDataHandle]";
    qword_1EB83BE48 = 36;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueColorCorrectionDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueColorCorrectionDataHandle>(void)::localId;
    unk_1EB82B380 = 0x9B887E855861722BLL;
    qword_1EB82B388 = "md::ls::UniqueColorCorrectionDataHandle]";
    qword_1EB82B390 = 39;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassRouteLineDescriptor>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassRouteLineDescriptor>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[407];
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23PassRouteLineDescriptorEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A55470;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23PassRouteLineDescriptorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A55470;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleRouteLineMaskConstantDataHandle>();
    unk_1EB83BA60 = 0x6E0342375BBCD967;
    qword_1EB83BA68 = "md::ls::StyleRouteLineMaskConstantDataHandle]";
    qword_1EB83BA70 = 44;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::StyleConstantHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleConstantHandle>();
    *algn_1EB83D038 = 0x7DD7F5B95CA3FF88;
    qword_1EB83D040 = "md::ls::StyleConstantHandle]";
    qword_1EB83D048 = 27;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueStyleEmissiveDataKeyHandle>();
    *algn_1EB83BB18 = 0xEBDB618C34E97A19;
    qword_1EB83BB20 = "md::ls::UniqueStyleEmissiveDataKeyHandle]";
    qword_1EB83BB28 = 40;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t md::ita::UpdateProcessedStatusRenderables::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = *MEMORY[0x1E69E9840];
  v90 = &unk_1F2A1A090;
  v91 = a1;
  v92 = &v90;
  v7 = *(a2 + 8);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessing>(v7);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(v7);
  v10 = v9;
  v85 = a4;
  if (*(v9 + 40) - *(v9 + 32) >= *(v8 + 40) - *(v8 + 32))
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(v11 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v87, *(v11 + 32), v12, v8, v9);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v86, v12, v12, v8, v10);
  v13 = v87;
  v14 = v86[0];
  if (v87 != v86[0])
  {
    v15 = v89;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v88;
    while (1)
    {
      v20 = *(v15 + 32);
      v21 = v13[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v25 = *(*(&v15 + 1) + 32);
      v26 = *(*(*(*(&v15 + 1) + 8) + v23) + 4 * v22 + 2);
      *(v16 + 104 * *v17 + 24) = *v13;
      if (!v92)
      {
        break;
      }

      (*(*v92 + 6))(v92, v20 + 4 * v24, v25 + 4 * v26);
      ++v18;
      v27 = v13 + 2;
      do
      {
        v13 = v27;
        v87 = v27;
        if (v27 == v19)
        {
          break;
        }

        v28 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v87, *v27, v27[1]);
        v27 = v13 + 2;
      }

      while (!v28);
      if (v13 == v14)
      {
        goto LABEL_13;
      }
    }

LABEL_44:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v16 = _ZTWN4ecs27Runtime11_localStateE();
  v17 = _ZTWN4ecs27Runtime11_stackIndexE();
  v18 = 0;
LABEL_13:
  *(v16 + 104 * *v17 + 24) = -65536;
  v29 = v16 + 104 * *v17;
  v30 = *(v29 + 92);
  *(v29 + 92) = v30 + 1;
  *(v29 + 4 * v30 + 28) = v18;
  v31 = v16 + 104 * *v17;
  v33 = *(v31 + 92);
  v32 = (v31 + 92);
  if (v33 > 0xF)
  {
    *v32 = 0;
  }

  std::__function::__value_func<void ()(md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&)>::~__value_func[abi:nn200100](&v90);
  v90 = &unk_1F2A1A120;
  v91 = a1;
  v92 = &v90;
  v34 = *(a3 + 8);
  v35 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessingShadow>(v34);
  v36 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingShadow>(v34);
  v37 = v36;
  if (*(v36 + 40) - *(v36 + 32) >= *(v35 + 40) - *(v35 + 32))
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  v39 = *(v38 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v87, *(v38 + 32), v39, v35, v36);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v86, v39, v39, v35, v37);
  v40 = v87;
  v41 = v86[0];
  if (v87 != v86[0])
  {
    v42 = 0;
    v43 = v89;
    v44 = v88;
    while (1)
    {
      v45 = *(v43 + 32);
      v46 = v40[1];
      v47 = v46 & 0x3F;
      v48 = (v46 >> 3) & 0x1FF8;
      v49 = *(*(*(v43 + 8) + v48) + 4 * v47 + 2);
      v50 = *(*(&v43 + 1) + 32);
      v51 = *(*(*(*(&v43 + 1) + 8) + v48) + 4 * v47 + 2);
      *(v16 + 104 * *v17 + 24) = *v40;
      if (!v92)
      {
        goto LABEL_44;
      }

      (*(*v92 + 6))(v92, v45 + 4 * v49, v50 + 4 * v51);
      ++v42;
      v52 = v40 + 2;
      do
      {
        v40 = v52;
        v87 = v52;
        if (v52 == v44)
        {
          break;
        }

        v53 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v87, *v52, v52[1]);
        v52 = v40 + 2;
      }

      while (!v53);
      if (v40 == v41)
      {
        goto LABEL_27;
      }
    }
  }

  v42 = 0;
LABEL_27:
  *(v16 + 104 * *v17 + 24) = -65536;
  v54 = v16 + 104 * *v17;
  v55 = *(v54 + 92);
  *(v54 + 92) = v55 + 1;
  *(v54 + 4 * v55 + 28) = v42;
  v56 = v16 + 104 * *v17;
  v58 = *(v56 + 92);
  v57 = (v56 + 92);
  if (v58 > 0xF)
  {
    *v57 = 0;
  }

  std::__function::__value_func<void ()(md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&)>::~__value_func[abi:nn200100](&v90);
  v90 = &unk_1F2A1A1B0;
  v91 = a1;
  v92 = &v90;
  v59 = *(v85 + 8);
  v60 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessingDepthPrePass>(v59);
  v61 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingDepthPrePass>(v59);
  v62 = v61;
  if (*(v61 + 40) - *(v61 + 32) >= *(v60 + 40) - *(v60 + 32))
  {
    v63 = v60;
  }

  else
  {
    v63 = v61;
  }

  v64 = *(v63 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v87, *(v63 + 32), v64, v60, v61);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v86, v64, v64, v60, v62);
  v65 = v87;
  v66 = v86[0];
  if (v87 != v86[0])
  {
    v67 = 0;
    v68 = v89;
    v69 = v88;
    while (1)
    {
      v70 = *(v68 + 32);
      v71 = v65[1];
      v72 = v71 & 0x3F;
      v73 = (v71 >> 3) & 0x1FF8;
      v74 = *(*(*(v68 + 8) + v73) + 4 * v72 + 2);
      v75 = *(*(&v68 + 1) + 32);
      v76 = *(*(*(*(&v68 + 1) + 8) + v73) + 4 * v72 + 2);
      *(v16 + 104 * *v17 + 24) = *v65;
      if (!v92)
      {
        goto LABEL_44;
      }

      (*(*v92 + 6))(v92, v70 + 4 * v74, v75 + 4 * v76);
      ++v67;
      v77 = v65 + 2;
      do
      {
        v65 = v77;
        v87 = v77;
        if (v77 == v69)
        {
          break;
        }

        v78 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v87, *v77, v77[1]);
        v77 = v65 + 2;
      }

      while (!v78);
      if (v65 == v66)
      {
        goto LABEL_41;
      }
    }
  }

  v67 = 0;
LABEL_41:
  *(v16 + 104 * *v17 + 24) = -65536;
  v79 = v16 + 104 * *v17;
  v80 = *(v79 + 92);
  *(v79 + 92) = v80 + 1;
  *(v79 + 4 * v80 + 28) = v67;
  v81 = v16 + 104 * *v17;
  v83 = *(v81 + 92);
  v82 = (v81 + 92);
  if (v83 > 0xF)
  {
    *v82 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&)>::~__value_func[abi:nn200100](&v90);
}