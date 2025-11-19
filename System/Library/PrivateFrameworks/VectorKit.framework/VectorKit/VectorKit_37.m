void *gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<unsigned int>(void *a1, unsigned __int8 a2, unsigned int a3)
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
  v5 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v4 + 48), a2);
  if (v5 == *(v4 + 60))
  {
    return &gss::PropertySetValueHelper<gss::ScenePropertyID,unsigned int>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
  }

  else
  {
    return (*(v4 + 48) + *(v4 + 56) + 4 * v5);
  }
}

uint64_t gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<int>(uint64_t a1, int a2, float a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *v6;
    LODWORD(v6) = *v6 == 1.0;
    if (*(a1 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
    {
      v11 = v7 < 1.0;
      goto LABEL_13;
    }
  }

  v9 = *(a1 + v6 + 11);
  if (v9 == 2)
  {
    v11 = 1;
LABEL_13:
    v14 = 1;
    v12 = gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<int>(a1, a2, 0, &v14, a3);
    LODWORD(result) = gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<int>(a1, a2, 1u, &v13, a3);
    if (v11)
    {
      return v12;
    }

    else
    {
      return result;
    }
  }

  return gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<int>(a1, a2, v9, 0, a3);
}

uint64_t gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<int>(uint64_t a1, int a2, unsigned int a3, _BYTE *a4, float a5)
{
  v5 = a4;
  if (a5 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = a5;
  }

  if (a5 >= 0x16)
  {
    LOBYTE(v8) = 22;
  }

  else
  {
    v8 = a5;
  }

  v9 = a1 + 16 * a3;
  v12 = *(v9 + 16);
  v11 = v9 + 16;
  v10 = v12;
  if (v12)
  {
    v26 = v10;
    v14 = v8 + 1;
    v15 = a1 + 16 * a3;
    if (*(v15 + 56))
    {
      v25 = v11;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = *(v15 + 48);
      v27 = &v19[*(v15 + 56)];
LABEL_10:
      LOBYTE(v20) = 0;
      while (1)
      {
        v21 = *v19;
        if (v20)
        {
          goto LABEL_14;
        }

        v22 = *(v21 + 72);
        if (gss::CartoStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(v22, a2, v7))
        {
          break;
        }

        v20 = 0;
LABEL_15:
        if (v16)
        {
          if (v20)
          {
            goto LABEL_30;
          }

LABEL_18:
          ++v19;
          v16 = 1;
          if (v19 != v27)
          {
            goto LABEL_10;
          }

          v30 = 1;
          v29 = 1;
          v18 = *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<int>(*(v26 + 72), a2, v7, &v30);
LABEL_20:
          v5 = a4;
          goto LABEL_21;
        }

        v23 = *(v21 + 72);
        if (gss::CartoStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(v23, a2, v14))
        {
          v17 = *gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<int>(v23, a2, v14);
          if ((v20 & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_30:
          v30 = 1;
          v29 = 1;
          goto LABEL_20;
        }

        v16 = 0;
        if (++v19 == v27)
        {
          v30 = 1;
          v29 = 1;
          v5 = a4;
          v11 = v25;
          if ((v20 & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        }
      }

      v18 = *gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<int>(v22, a2, v7);
LABEL_14:
      v20 = 1;
      goto LABEL_15;
    }

    v30 = 1;
    v29 = 1;
LABEL_34:
    v18 = *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<int>(*(v26 + 72), a2, v7, &v30);
LABEL_35:
    v17 = *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<int>(*(*v11 + 72), a2, v14, &v29);
LABEL_21:
    if (v5)
    {
      *v5 = (v30 | v29) & 1;
    }

    if ((a5 - v7) >= 1.0)
    {
      return v17;
    }

    else
    {
      return v18;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    return *gss::defaultValueForKey<gss::ScenePropertyID,int>(a2);
  }
}

void *gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<int>(void *a1, unsigned __int8 a2, unsigned int a3)
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
  v5 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v4 + 48), a2);
  if (v5 == *(v4 + 60))
  {
    return &gss::PropertySetValueHelper<gss::ScenePropertyID,int>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
  }

  else
  {
    return (*(v4 + 48) + *(v4 + 56) + 4 * v5);
  }
}

uint64_t std::__function::__value_func<void ()(md::FrameGraphRenderPassBuilder &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void md::FrameGraphBuilder::addRenderPass<md::StandardCommandBufferIdInfo>(void *a1)
{
  v2 = 0;
  v25 = *MEMORY[0x1E69E9840];
  v4 = a1[19];
  v3 = a1[20];
  while (1)
  {
    v5 = off_1E7B3AB48[v2];
    v6 = a1[23];
    v24 = v2;
    v23 = v5;
    v7 = v6[6];
    if (v6[5] == v7)
    {
      geo::Pool<ggl::CommandBuffer>::construct<unsigned char &,char const*&>((v6 + 8), &v24, &v23);
      v8 = v22;
    }

    else
    {
      v8 = *(v7 - 8);
      *(v8 + 16) = v2;
      *(v8 + 8) = v5;
      v6[6] = v7 - 8;
    }

    std::__hash_table<ggl::CommandBuffer *,std::hash<ggl::CommandBuffer *>,std::equal_to<ggl::CommandBuffer *>,std::allocator<ggl::CommandBuffer *>>::__emplace_unique_key_args<ggl::CommandBuffer *,ggl::CommandBuffer *&>(v6, v8);
    v10 = a1[20];
    v9 = a1[21];
    if (v10 < v9)
    {
      *v10 = v8;
      v17 = (v10 + 1);
    }

    else
    {
      v11 = a1[19];
      v12 = (v10 - v11) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = v9 - v11;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v15);
      }

      v16 = (8 * v12);
      *v16 = v8;
      v17 = 8 * v12 + 8;
      v18 = a1[19];
      v19 = a1[20] - v18;
      v20 = v16 - v19;
      memcpy(v16 - v19, v18, v19);
      v21 = a1[19];
      a1[19] = v20;
      a1[20] = v17;
      a1[21] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    a1[20] = v17;
    if (++v2 == 126)
    {
      md::FrameGraphResourcePools::constructRenderQueue(a1[23], a1[19] + v3 - v4, 0x7EuLL);
    }
  }
}

uint64_t md::DetermineIfLegacy::operator()(uint64_t ****a1)
{
  v2 = ***a1;
  if (*v2 != 0xD369A4D92C8FFE6CLL)
  {
    v3 = v2 + 5;
    do
    {
      v4 = *v3;
      v3 += 5;
    }

    while (v4 != 0xD369A4D92C8FFE6CLL);
    v2 = v3 - 5;
  }

  v6 = v2[3];
  v5 = v2[4];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v7 = (*(*v6 + 16))(v6);
  v8 = ***a1;
  v33 = a1;
  if (*v8 != 0xD369A4D92C8FFE6CLL)
  {
    v9 = v8 + 5;
    do
    {
      v10 = *v9;
      v9 += 5;
    }

    while (v10 != 0xD369A4D92C8FFE6CLL);
    v8 = v9 - 5;
  }

  v34 = v7;
  v12 = v8[3];
  v11 = v8[4];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v32 = (*(*v12 + 24))(v12);
  v13 = 0;
  v35 = 235867409;
  v36 = 16;
  *__p = 0u;
  v38 = 0u;
  v39 = 1065353216;
  do
  {
    v14 = *(&v35 + v13);
    if (!__p[1])
    {
      goto LABEL_30;
    }

    v15 = vcnt_s8(__p[1]);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = *(&v35 + v13);
      if (__p[1] <= v14)
      {
        v16 = v14 % LOBYTE(__p[1]);
      }
    }

    else
    {
      v16 = (LODWORD(__p[1]) - 1) & v14;
    }

    v17 = *(__p[0] + v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_30:
      operator new();
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v14)
      {
        break;
      }

      if (v15.u32[0] > 1uLL)
      {
        if (v19 >= __p[1])
        {
          v19 %= __p[1];
        }
      }

      else
      {
        v19 &= __p[1] - 1;
      }

      if (v19 != v16)
      {
        goto LABEL_30;
      }

LABEL_29:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    if (*(v18 + 16) != v14)
    {
      goto LABEL_29;
    }

    ++v13;
  }

  while (v13 != 5);
  v20 = vcnt_s8(__p[1]);
  v20.i16[0] = vaddlv_u8(v20);
  if (v20.u32[0] > 1uLL)
  {
    v21 = v32;
    if (__p[1] <= v32)
    {
      v21 = v32 % LOBYTE(__p[1]);
    }
  }

  else
  {
    v21 = (LODWORD(__p[1]) - 1) & v32;
  }

  v22 = *(__p[0] + v21);
  if (v22)
  {
    for (i = *v22; i; i = *i)
    {
      v24 = i[1];
      if (v24 == v32)
      {
        if (*(i + 16) == v32)
        {
          v31 = 0;
          goto LABEL_48;
        }
      }

      else
      {
        if (v20.u32[0] > 1uLL)
        {
          if (v24 >= __p[1])
          {
            v24 %= __p[1];
          }
        }

        else
        {
          v24 &= __p[1] - 1;
        }

        if (v24 != v21)
        {
          break;
        }
      }
    }
  }

  v31 = 1;
LABEL_48:
  v25 = (*(*v34 + 7))(v34);
  v26 = (v25 != 0) | [v34[13] supportsFramebufferFetch] ^ 1;
  if (v31)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1;
  }

  v28 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareBuildFrameGraph>();
  ecs2::UtilityTaskContext::toggleTask((*v33)[2], ~v28, (v27 & 1) == 0);
  started = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::LegacyLayoutStartTask>();
  ecs2::UtilityTaskContext::toggleTask((*v33)[2], ~started, v27 & 1);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(__p);
}

void sub_1B2A37724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfLegacy>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfLegacy>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::DetermineIfLegacy::operator()((a1 + 8));
  *v2 = 0;
  return result;
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
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

uint64_t gm::Plane3<double>::intersect(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = 0;
  v4 = 0.0;
  do
  {
    v4 = v4 + *(a2 + 24 + v3) * *(a1 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  if (fabs(v4) <= 2.22044605e-16)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0.0;
  do
  {
    v6 = v6 + *(a2 + v5) * *(a1 + v5);
    v5 += 8;
  }

  while (v5 != 24);
  *a3 = -(v6 + *(a1 + 24)) / v4;
  if (v4 > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double gm::Box<double,3>::center<double>(uint64_t a1)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v9 + i) = *(a1 + i + 24) - *(a1 + i);
  }

  v2 = 0;
  v5 = v9;
  v6 = v10;
  do
  {
    *(&v9 + v2) = *(&v5 + v2) * 0.5;
    v2 += 8;
  }

  while (v2 != 24);
  v3 = 0;
  v7 = v9;
  v8 = v10;
  do
  {
    *(&v9 + v3) = *(&v7 + v3) + *(a1 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  return *&v9;
}

void *gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<float>(void *result, int a2, unsigned int a3, _BYTE *a4, float a5)
{
  v5 = a4;
  if (a5 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = a5;
  }

  if (a5 >= 0x16)
  {
    LOBYTE(v8) = 22;
  }

  else
  {
    v8 = a5;
  }

  v9 = result[2 * a3 + 2];
  if (!v9)
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,float>(a2);
  }

  v10 = v8 + 1;
  v11 = &result[2 * a3];
  if (!*(v11 + 28))
  {
    v23 = 1;
    v22 = 1;
    goto LABEL_35;
  }

  v12 = 0;
  v13 = *(v11 + 6);
  v14 = &v13[*(v11 + 28)];
LABEL_10:
  LOBYTE(v15) = 0;
  do
  {
    v16 = *v13;
    if ((v15 & 1) == 0)
    {
      v17 = *(v16 + 72);
      if (!v17 || (v20 = *v17 + 120 * *(v17 + v7 + 16), result = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v20, a2), result == *(v20 + 12)))
      {
        v15 = 0;
        goto LABEL_14;
      }

      result = gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<float>(v17, a2, v7);
    }

    v15 = 1;
LABEL_14:
    if (v12)
    {
      if (!v15)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }

    v18 = *(v16 + 72);
    result = gss::CartoStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(v18, a2, v10);
    if (result)
    {
      result = gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<float>(v18, a2, v10);
      if ((v15 & 1) == 0)
      {
LABEL_17:
        ++v13;
        v12 = 1;
        if (v13 != v14)
        {
          goto LABEL_10;
        }

        v23 = 1;
        v22 = 1;
        result = gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(*(v9 + 72), a2, v7, &v23);
        goto LABEL_19;
      }

LABEL_27:
      v23 = 1;
      v22 = 1;
LABEL_19:
      v5 = a4;
      goto LABEL_20;
    }

    v12 = 0;
    ++v13;
  }

  while (v13 != v14);
  v23 = 1;
  v22 = 1;
  v5 = a4;
  if (!v15)
  {
LABEL_35:
    v19 = *(v9 + 72);
    gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(v19, a2, v7, &v23);
    goto LABEL_36;
  }

  v19 = *(v9 + 72);
LABEL_36:
  result = gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(v19, a2, v10, &v22);
LABEL_20:
  if (v5)
  {
    *v5 = (v23 | v22) & 1;
  }

  return result;
}

float gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<float>(uint64_t a1, int a2, float a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *v6;
    LODWORD(v6) = *v6 == 1.0;
    if (*(a1 + 10) == 1 && v7 != 0.0 && v7 != 1.0)
    {
      goto LABEL_13;
    }
  }

  v9 = *(a1 + v6 + 11);
  if (v9 == 2)
  {
    v7 = 0.0;
LABEL_13:
    v15 = 1;
    gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<float>(a1, a2, 0, &v15, a3);
    v12 = v11;
    gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<float>(a1, a2, 1u, &v14, a3);
    return v12 + ((v13 - v12) * v7);
  }

  gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<float>(a1, a2, v9, 0, a3);
  return result;
}

void *gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<float>(void *a1, unsigned __int8 a2, unsigned int a3)
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
  v5 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v4 + 48), a2);
  if (v5 == *(v4 + 60))
  {
    return &gss::PropertySetValueHelper<gss::ScenePropertyID,float>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
  }

  else
  {
    return (*(v4 + 48) + *(v4 + 56) + 4 * v5);
  }
}

uint64_t md::Logic<md::MapZoomLevelStyleLogic,md::MapZoomLevelStyleLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF0AA2DB42EB710AFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v10 = v7[5], *(v10 + 8) == 0x1AF456233693CD46))
      {
        v8 = *(v10 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xE42D19AFCA302E68)[5] + 32);
      v11[0] = v8;
      v11[1] = v9;
      return (*(*v5 + 144))(v5, a2, v11, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::SkyLogic,md::SkyLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x7C7EC6C7C111B0D0)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v10 = v7[5], *(v10 + 8) == 0x1AF456233693CD46))
      {
        v8 = *(v10 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xE42D19AFCA302E68)[5] + 32);
      v11[0] = v8;
      v11[1] = v9;
      return (*(*v5 + 144))(v5, a2, v11, v3);
    }
  }

  return result;
}

uint64_t gdc::ServiceLocator::resolve<md::CallbackGraphService>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0xCFC5133F599B8248)
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

  v2 = a1[3];
  v3 = a1[4];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return v2;
}

uint64_t ecs2::Runtime::_entities<md::ita::EndFrameGraphPreparation,md::ls::FrameGraphBuilder &,md::ls::PreviousResourceStamp const&,md::ls::PassCount const&>(uint64_t a1, uint64_t **a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphBuilder>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PreviousResourceStamp>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassCount>(v3);
  *buf = v4;
  *&buf[8] = v5;
  *&buf[16] = v6;
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
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  *buf = v10;
  *&buf[8] = v11;
  *&buf[16] = v4;
  *&buf[24] = v5;
  *&v55 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(buf, *v10, v10[1]))
  {
    v10 += 2;
    *buf = v10;
  }

  v51 = *buf;
  v52 = *&buf[16];
  v53 = v55;
  v12 = *buf;
  if (*buf == v11)
  {
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = result;
    v15 = 0;
  }

  else
  {
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
    do
    {
      v16 = v12[1];
      v17 = (v16 >> 3) & 0x1FF8;
      v18 = v16 & 0x3F;
      v19 = *(*(*(v52 + 8) + v17) + 4 * v18 + 2);
      v20 = *(*(v52 + 56) + ((v19 >> 3) & 0x1FF8));
      v21 = *(*(*(*(&v52 + 1) + 8) + v17) + 4 * v18 + 2);
      v22 = *(*(*(&v52 + 1) + 56) + ((v21 >> 3) & 0x1FF8));
      *(v13 + 104 * *v14 + 24) = *v12;
      v23 = a2[1];
      if (!v23)
      {
        v24 = **a2;
        v25 = *v24;
        v26 = *(v24 + 8);
        if (v25 == v26)
        {
          goto LABEL_15;
        }

        while (*v25 != 0xD369A4D92C8FFE6CLL)
        {
          v25 += 5;
          if (v25 == v26)
          {
            goto LABEL_15;
          }
        }

        if (v25 == v26)
        {
LABEL_15:
          v23 = 0;
        }

        else
        {
          v23 = v25[3];
          v27 = v25[4];
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v27);
          }
        }

        a2[1] = v23;
      }

      v28 = (*(*v23 + 8))(v23);
      if (v28)
      {
        v29 = v28;
        v49 = v15;
        v30 = v14;
        v31 = v11;
        v32 = v13;
        v33 = a2[2];
        if (!v33)
        {
          v34 = **a2;
          v35 = *v34;
          v36 = *(v34 + 8);
          while (1)
          {
            if (v35 == v36)
            {
              goto LABEL_43;
            }

            if (*v35 == 0xC94DD89A7B09BE9CLL)
            {
              break;
            }

            v35 += 5;
          }

          if (v35 == v36)
          {
LABEL_43:
            v33 = 0;
            goto LABEL_29;
          }

          v33 = v35[3];
          v37 = v35[4];
          if (v37)
          {
            atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v37);
          }

LABEL_29:
          a2[2] = v33;
        }

        (*(*v33 + 104))(v33);
        if (v38)
        {
          if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
          }

          v39 = GEOGetVectorKitVKDefaultLog_log;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "service<md::RenderLayerProvider>()->getAllCommandBuffers().empty()";
            *&buf[12] = 2080;
            *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/BuildFrameGraphModule.mm";
            *&buf[22] = 1024;
            *&buf[24] = 248;
            _os_log_impl(&dword_1B2754000, v39, OS_LOG_TYPE_ERROR, "Ensure we cleared weak pointers to command buffers before: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
          }
        }

        md::PassList::updateGraphState(v29, *(v20 + 8 * (v19 & 0x3F)), *(v22 + 8 * (v21 & 0x3F)));
        v13 = v32;
        v11 = v31;
        v14 = v30;
        v15 = v49;
      }

      ++v15;
      v40 = *(&v51 + 1);
      v41 = (v51 + 4);
      while (1)
      {
        v12 = v41;
        *&v51 = v41;
        if (v41 == v40)
        {
          break;
        }

        v42 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v51, *v41, v41[1]);
        v41 = v12 + 2;
        if (v42)
        {
          v40 = v12;
          break;
        }
      }
    }

    while (v40 != v11);
    result = ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphBuilder>(*(a1 + 8));
  }

  *(v13 + 104 * *v14 + 24) = -65536;
  v44 = v13 + 104 * *v14;
  v45 = *(v44 + 92);
  *(v44 + 92) = v45 + 1;
  *(v44 + 4 * v45 + 28) = v15;
  v46 = v13 + 104 * *v14;
  v48 = *(v46 + 92);
  v47 = (v46 + 92);
  if (v48 >= 0x10)
  {
    *v47 = 0;
  }

  return result;
}

uint64_t *gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(uint64_t *result, uint64_t a2, int a3, unsigned int a4, _BYTE *a5, float a6)
{
  v6 = a5;
  v8 = result;
  LODWORD(v9) = a6;
  if (a6 >= 0x17)
  {
    v10 = 23;
  }

  else
  {
    v10 = a6;
  }

  if (v9 >= 0x16)
  {
    v9 = 22;
  }

  else
  {
    v9 = v9;
  }

  v11 = a2 + 16 * a4;
  v14 = *(v11 + 16);
  v12 = (v11 + 16);
  v13 = v14;
  if (!v14)
  {
    if (a5)
    {
      *a5 = 0;
    }

    result = gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a3);
    v28 = *result;
    goto LABEL_20;
  }

  v47 = v9 + 1;
  v16 = a2 + 16 * a4;
  if (*(v16 + 56))
  {
    v46 = result;
    v17 = 0;
    v29 = *(v16 + 48);
    v44 = &v29[*(v16 + 56)];
LABEL_22:
    v30 = 0;
    while (1)
    {
      v31 = *v29;
      if ((v30 & 1) == 0)
      {
        v32 = *(v31 + 72);
        if (!v32 || (v33 = *v32 + 120 * *(v32 + v10 + 16), result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v33, a3), result == *(v33 + 12)))
        {
          v30 = 0;
          goto LABEL_29;
        }

        result = gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v32, a3, v10);
        v43 = *result;
      }

      v30 = 1;
LABEL_29:
      if (v17)
      {
        v41 = v42;
        if (v30)
        {
          goto LABEL_55;
        }

LABEL_44:
        v42 = v41;
        ++v29;
        v17 = 1;
        if (v29 != v44)
        {
          goto LABEL_22;
        }

        v48 = v41;
LABEL_46:
        v6 = a5;
        v8 = v46;
        goto LABEL_10;
      }

      v34 = *(v31 + 72);
      if (v34)
      {
        v35 = *v34 + 120 * *(v34 + v47 + 16);
        result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v35, a3);
        if (result != *(v35 + 12))
        {
          result = gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v34, a3, v47);
          v41 = *result;
          if ((v30 & 1) == 0)
          {
            goto LABEL_44;
          }

LABEL_55:
          v48 = v41;
          v49 = v43;
          v24 = 1;
          v25 = 1;
          v6 = a5;
          v8 = v46;
LABEL_17:
          if (v6)
          {
            goto LABEL_18;
          }

          goto LABEL_19;
        }
      }

      v17 = 0;
      if (++v29 == v44)
      {
        v48 = v42;
        v49 = v43;
        if (v30)
        {
          v24 = 1;
          v6 = a5;
          v8 = v46;
          goto LABEL_35;
        }

        v17 = 0;
        goto LABEL_46;
      }
    }
  }

  v17 = 0;
LABEL_10:
  v18 = *(v13 + 72);
  if (!v18 || (v19 = *(v18 + v10 + 16), v20 = *v18, v21 = *v18 + 120 * v19, geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v21, a3) == *(v21 + 12)))
  {
    result = gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a3);
    v24 = 0;
  }

  else
  {
    v22 = v20 + 120 * v19;
    v23 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v22 + 72), a3);
    if (v23 == *(v22 + 84))
    {
      result = &gss::PropertySetValueHelper<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      result = (*(v22 + 72) + *(v22 + 80) + 8 * v23);
    }

    v24 = 1;
  }

  v49 = *result;
  if (v17)
  {
    v25 = 1;
    goto LABEL_17;
  }

  v13 = *v12;
LABEL_35:
  v36 = *(v13 + 72);
  if (!v36 || (v37 = *(v36 + v47 + 16), v38 = *v36, geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((*v36 + 120 * *(v36 + v47 + 16)), a3) == *(v38 + 120 * v37 + 12)))
  {
    result = gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a3);
    v25 = 0;
  }

  else
  {
    v39 = v38 + 120 * v37;
    v40 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v39 + 72), a3);
    if (v40 == *(v39 + 84))
    {
      result = &gss::PropertySetValueHelper<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      result = (*(v39 + 72) + *(v39 + 80) + 8 * v40);
    }

    v25 = 1;
  }

  v48 = *result;
  if (v6)
  {
LABEL_18:
    *v6 = v24 | v25;
  }

LABEL_19:
  v26 = vdupq_n_s32(0x37800080u);
  v27 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v49)), v26);
  v28 = vmovn_s32(vcvtq_u32_f32(vmulq_f32(vmlaq_n_f32(v27, vmlaq_f32(vnegq_f32(v27), v26, vcvtq_f32_u32(vmovl_u16(v48))), a6 - v10), vdupq_n_s32(0x477FFF00u))));
LABEL_20:
  *v8 = v28;
  return result;
}

uint64_t *gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(uint64_t *a1, uint64_t a2, int a3, unsigned int a4, float a5)
{
  if (a4 == 2)
  {
    v9 = *a2;
    if (*a2)
    {
      v10 = *v9;
      LODWORD(v9) = *v9 == 1.0;
      if (*(a2 + 10) == 1 && v10 != 0.0 && v10 != 1.0)
      {
        goto LABEL_12;
      }
    }

    v12 = a2 + v9;
  }

  else
  {
    v12 = a2 + a4;
  }

  v13 = *(v12 + 11);
  v10 = 0.0;
  if (v13 == 2)
  {
LABEL_12:
    v17 = v10;
    v21 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v19, a2, a3, 0, &v21, a5);
    result = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v18, a2, a3, 1u, &v20, a5);
    v15 = vdupq_n_s32(0x37800080u);
    v16 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v19)), v15);
    *a1 = vmovn_s32(vcvtq_u32_f32(vmulq_f32(vmlaq_n_f32(v16, vmlaq_f32(vnegq_f32(v16), v15, vcvtq_f32_u32(vmovl_u16(v18))), v17), vdupq_n_s32(0x477FFF00u))));
    return result;
  }

  return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a1, a2, a3, v13, 0, a5);
}

uint64_t gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    (*(**a1 + 56))();
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void sub_1B2A38A84(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::Logic<md::ElevatedOverlayLogic,md::ElevatedOverlayContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1DCE255EA309B4ADLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v10 = v7[5], *(v10 + 8) == 0x1AF456233693CD46))
      {
        v8 = *(v10 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL)[5] + 32);
      v11[0] = v8;
      v11[1] = v9;
      return (*(*v5 + 144))(v5, a2, v11, v3);
    }
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::CheckIfReadyToProcess>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>(void)::metadata >= 0x200)
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

uint64_t md::Logic<md::ElevatedOverlayLogic,md::ElevatedOverlayContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1DCE255EA309B4ADLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

void md::FrameGraphResourcePools::constructRenderQueue(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v3 = *(a1 + 448);
  if (*(a1 + 440) != v3)
  {
    v4 = *(v3 - 8);
    v5 = 0;
    std::vector<ggl::CommandBuffer *,geo::allocator_adapter<ggl::CommandBuffer *,ggl::zone_mallocator>>::resize((v4 + 104), a3, &v5);
    operator new();
  }

  geo::Pool<ggl::RenderQueue>::construct<unsigned long &>(a1 + 464, &v6);
}

void sub_1B2A391A4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x1AF456233693CD46uLL);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0x1AF456233693CD46))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x99BED48DEFBBD82BLL);
  return v4;
}

void md::MapZoomLevelStyleLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v3 = a3[1];
  if (*(v3 + 82) == 1)
  {
    v5 = *a3;
    v29[0] = &unk_1F2A3F030;
    v29[1] = a1;
    v29[2] = v3;
    v29[3] = v29;
    md::StyleLogicContext::parseEvents(v3, v29);
    std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v29);
    v6 = *(v5 + 3072);
    v7 = *(v5 + 3080);
    v9 = *(v3 + 32);
    v8 = *(v3 + 40);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9 && !*(a1 + 128))
    {
      v10 = pthread_rwlock_rdlock((v9 + 16));
      if (v10)
      {
        geo::read_write_lock::logFailure(v10, "read lock", v11);
      }

      v12 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v9 + 216, 0x10036u);
      v13 = v12;
      v14 = *(v9 + 228);
      if (v12 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(*(v9 + 216) + *(v9 + 224) + 2 * v12);
      }

      v16 = v7 + v6;
      v17 = pthread_rwlock_unlock((v9 + 16));
      if (v17)
      {
        geo::read_write_lock::logFailure(v17, "unlock", v18);
      }

      v19 = fmaxf(v16, 1.0);
      v20 = 148;
      if (*(v3 + 88) == 5)
      {
        v20 = 144;
      }

      v21 = *(a1 + v20);
      if (v13 == v14)
      {
        md::MapZoomLevelStyleLogic::mapZoomLevelDidChange(a1, v19 >= v21, v9);
      }

      else
      {
        if (v15)
        {
          v22 = 1;
        }

        else
        {
          v22 = v19 < (v21 + 0.25);
        }

        v23 = !v22;
        v25 = v15 == 1 && v19 < (v21 + -0.25);
        if ((v23 & 1) != 0 || v25)
        {
          v26 = *v3;
          v27 = *(v3 + 8);
          v28[0] = v26;
          v28[1] = v27;
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::MapZoomLevelStyleLogic::beginMapZoomLevelTransition(a1, v28, v19 >= v21);
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v27);
          }
        }
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }
}

void sub_1B2A3955C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2md22MapZoomLevelStyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_17StyleLogicContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_29MapZoomLevelStyleLogicContextEE3__0NS_9allocatorISK_EEFvNS2_17StyleManagerEventEEEclEOSN_(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 5)
  {
    v19 = v5;
    v20 = v4;
    v21 = v2;
    v22 = v3;
    v6 = *(a1 + 16);
    if (*v6)
    {
      v7 = *(a1 + 8);
      v8 = atomic_load((*(*v6 + 16) + 2784));
      if (v8)
      {
        gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v17, *(*v6 + 16));
        v9 = v17;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        if (v9)
        {
          *(v7 + 148) = 1096810496;
          v10 = *v6;
          v11 = 13.0;
          if (*v6)
          {
            gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v17, *(v10 + 16));
            HIDWORD(v10) = HIDWORD(v17);
            if (v17)
            {
              v11 = *(v17 + 288);
              *(v7 + 148) = *(v17 + 292);
            }

            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v18);
            }
          }

          v12 = fmaxf(v11, 13.0) + 0.25;
          if (*(v7 + 144) != v12)
          {
            LODWORD(v10) = vcvtms_u32_f32(v11);
            v13 = *(v7 + 152);
            v17 = v10 | 0x100000000;
            v18 = 0x100000019;
            v14 = *(v13 + 56);
            v15 = *(v13 + 64);
            while (v14 != v15)
            {
              if (*v14 == 13)
              {
                if (v14 != v15)
                {
                  v16 = *(v14 + 8);
                  if (v16)
                  {
                    (*(*v16 + 32))(v16, &v17);
                  }
                }

                break;
              }

              v14 += 16;
            }

            *(v7 + 144) = v12;
          }
        }
      }
    }
  }
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::PassCount>(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassCount>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassCount>();
    unk_1EB83B8B0 = 0x256170776297ADC7;
    qword_1EB83B8B8 = "md::ls::PassCount]";
    qword_1EB83B8C0 = 17;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassCount>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassCount>(a1);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 4 * (v13 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_55;
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
    v54 = v27;
    v55 = a3;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v53 = v27 >> 6;
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
      v28 = v53;
      LOBYTE(v27) = v54;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    a3 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  *(*(v30 + 8 * v28) + 4 * (v27 & 0x3F)) = *a3;
  v49 = *(v7 + 152);
  v50 = *(v7 + 160);
  while (v49 != v50)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), a2);
    v49 += 32;
  }

LABEL_55:
  v51 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v51 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v56;

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassCount>(a1);
}

void md::MapZoomLevelStyleLogic::mapZoomLevelDidChange(uint64_t a1, int a2, uint64_t a3)
{
  gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(a3, 0x10036u, a2);
  v4 = **(a1 + 160);
  if (v4)
  {
    v5 = 6;
    md::MapEngine::setNeedsTick(v4, &v5);
  }
}

__n128 md::SingleGEOResourceDataRequester::setVisibleZoomRange(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 28) = *a2;
  return result;
}

id **std::unique_ptr<ggl::MetalDeviceContextPass>::reset[abi:nn200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    ggl::MetalDeviceContextPass::endActiveEncoding(v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::default_delete<md::FrameGraphResourceRegistry::ResourceHolder>::operator()[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C62190);
}

id **ggl::MetalDeviceContext::endPass(ggl::MetalDeviceContext *this)
{
  v2 = *(this + 6);
  result = (this + 48);
  if (v2)
  {
    return std::unique_ptr<ggl::MetalDeviceContextPass>::reset[abi:nn200100](result, 0);
  }

  return result;
}

void ggl::MetalDeviceContextPass::endActiveEncoding(ggl::MetalDeviceContextPass *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    [v2 updateFence:*(this + 11)];
    [*(this + 13) endEncoding];
    v3 = *(this + 13);
    *(this + 13) = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    [v4 updateFence:*(this + 11) afterStages:2];
    [*(this + 12) endEncoding];
    v5 = *(this + 12);
    *(this + 12) = 0;
  }
}

uint64_t md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext>(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x1AF456233693CD46uLL);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0x1AF456233693CD46))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xE42D19AFCA302E68);
  return v4;
}

uint64_t ggl::MetalDeviceContext::beginPass(uint64_t result)
{
  if (!*(result + 48))
  {
    operator new();
  }

  return result;
}

uint64_t md::Logic<md::MapZoomLevelStyleLogic,md::MapZoomLevelStyleLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF0AA2DB42EB710AFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::PassDOFConfiguration>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDOFConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDOFConfiguration>();
    unk_1EB82F490 = 0x860C7F11DE38DFC9;
    qword_1EB82F498 = "md::ls::PassDOFConfiguration]";
    qword_1EB82F4A0 = 28;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDOFConfiguration>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassDOFConfiguration>(a1);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_55;
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
    v54 = v27;
    v55 = a3;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v53 = v27 >> 6;
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
      v28 = v53;
      LOBYTE(v27) = v54;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    a3 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  *(*(v30 + 8 * v28) + (v27 & 0x3F)) = *a3;
  v49 = *(v7 + 152);
  v50 = *(v7 + 160);
  while (v49 != v50)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), a2);
    v49 += 32;
  }

LABEL_55:
  v51 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v51 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v56;

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassDOFConfiguration>(a1);
}

void *md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x99BED48DEFBBD82BLL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0xE42D19AFCA302E68))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xC97B9E962ADF4AD4);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0xC97B9E962ADF4AD4))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1B8B241A8D896A1DuLL);
  v17 = *(result[5] + 32);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v15;
  a1[4] = v17;
  return result;
}

uint64_t md::Logic<md::HikingLogic,md::HikingContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x92F3DC114CADB853)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::HikingLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *this, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = *(a3 + 24);
  md::LayoutContext::frameState(this);
  v10 = (*(v9 + 88) * 1000.0);
  v11 = *(a1 + 338) == 1 && v10 - *(a1 + 160) > 100;
  v12 = *(a1 + 224) == 1 && v10 - *(a1 + 168) > 1000;
  v13 = *(a1 + 280);
  if (v11)
  {
    v14 = gdc::Camera::cameraFrame(v7);
    v44 = *(v14 + 8);
    v15 = tan(*v14 * 0.5 + 0.785398163);
    v16 = log(v15);
    *&v17.f64[0] = v44;
    v17.f64[1] = v16;
    __asm { FMOV            V1.2D, #0.5 }

    *buf = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v17);
    *(a1 + 176) = md::HikingLogic::_doesLocationIntersectWithParkRegion(buf, 1, 1, *(a3 + 8));
    *(a1 + 184) = v23;
    *(a1 + 192) = md::HikingLogic::_doesLocationIntersectWithParkRegion(buf, 1, 2, *(a3 + 8));
    *(a1 + 200) = v24;
    *a4 = *(a1 + 184);
    *(a4 + 1) = v24 & 1;
    *(a1 + 160) = v10;
  }

  if (v12)
  {
    if ((*(a1 + 224) & 1) == 0)
    {
      goto LABEL_62;
    }

    doesLocationIntersectWithParkRegion = md::HikingLogic::_doesLocationIntersectWithParkRegion((a1 + 208), 2, 1, *(a3 + 8));
    v27 = v26;
    if (v26)
    {
      v28 = *(a1 + 256);
      if (v28)
      {
        *buf = doesLocationIntersectWithParkRegion;
        std::__function::__value_func<void ()(unsigned long long)>::operator()[abi:nn200100](v28);
      }
    }

    if (*(a1 + 224) == 1)
    {
      *(a1 + 224) = 0;
    }

    *(a1 + 168) = v10;
    v29 = GEOGetVectorKitHikingLogicLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = "NO";
      if (v27)
      {
        v30 = "YES";
        v31 = doesLocationIntersectWithParkRegion;
      }

      else
      {
        v31 = 0;
      }

      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      _os_log_impl(&dword_1B2754000, v29, OS_LOG_TYPE_DEBUG, "Requested Location In ToolTip Region: %s feature id: %llu", buf, 0x16u);
    }
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  if ((*(a1 + 280) & 1) == 0)
  {
LABEL_62:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  *buf = *(a1 + 264);
  md::HikingLogic::_doesLocationIntersectWithParkRegion(buf, 4, 1, *(a3 + 8));
  v33 = v32;
  v34 = *(a1 + 312);
  if (v34)
  {
    *v45 = *buf;
    std::__function::__value_func<void ()(geo::Mercator2<double>,BOOL)>::operator()[abi:nn200100](v34);
  }

  if (*(a1 + 280) == 1)
  {
    *(a1 + 280) = 0;
  }

  v35 = GEOGetVectorKitHikingLogicLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v36 = "NO";
    if (v33)
    {
      v36 = "YES";
    }

    *v45 = 136315138;
    *&v45[4] = v36;
    _os_log_impl(&dword_1B2754000, v35, OS_LOG_TYPE_DEBUG, "Requested Location In Contextual Region: %s", v45, 0xCu);
  }

LABEL_33:
  if (*(a1 + 328))
  {
    v39 = 2;
  }

  else if (*(a1 + 338) == 1)
  {
    v39 = *(a1 + 184);
  }

  else
  {
    v37 = *v8;
    v38 = v8[1];
    if (*v8 == v38)
    {
      v39 = 3;
    }

    else
    {
      while (*v37 != 34)
      {
        v37 += 16;
        v39 = 3;
        if (v37 == v38)
        {
          goto LABEL_37;
        }
      }

      v39 = 3;
      if (v37 != v38)
      {
        if (*(v37 + 8))
        {
          v39 = 4;
        }

        else
        {
          v39 = 3;
        }
      }
    }
  }

LABEL_37:
  if (*(a1 + 337) != 1 || *(a1 + 336) != v39)
  {
    *(a1 + 336) = v39 | 0x100;
    md::StyleStateController::setHikingFeatureState(*(a1 + 144), v39 | 0x100);
  }

  v40 = *v8;
  v41 = v8[1];
  while (1)
  {
    if (v40 == v41)
    {
      goto LABEL_48;
    }

    if (*v40 == 34)
    {
      break;
    }

    v40 += 16;
  }

  if (v40 == v41 || !*(v40 + 8))
  {
LABEL_48:
    *(a1 + 348) = 0;
    v43 = 0.0;
    goto LABEL_49;
  }

  *(a1 + 348) = 1065353216;
  v42 = *(a1 + 340);
  v43 = 1.0;
  if (v42 > 0.0 && *(gdc::Camera::cameraFrame(v7) + 32) * 57.2957795 > v42)
  {
    v43 = *(a1 + 344);
    *(a1 + 348) = v43;
  }

LABEL_49:
  if (vabds_f32(*(a1 + 352), v43) > 0.0001)
  {
    *(a1 + 352) = v43;
    md::HikingLogic::_animateContourFade(a1, a4, *(a1 + 392), v43);
  }

  *(a4 + 4) = *(a1 + 356);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<ToggleFeatureFlagTasks>,std::allocator<ecs2::ForwardToExecute<ToggleFeatureFlagTasks>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ToggleFeatureFlagTasks::operator()((a1 + 8));
  *v2 = 0;
  return result;
}

void md::StyleStateController::setHikingFeatureState(uint64_t *a1, unsigned __int16 a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = (v4 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v3 - v6;
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
      if (!(v10 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = (v4 - *a1) >> 5;
    v12 = 32 * v7;
    *v12 = &unk_1F2A294F8;
    *(v12 + 8) = a2;
    *(v12 + 12) = 1053609165;
    *(v12 + 24) = v12;
    v5 = 32 * v7 + 32;
    v19 = (v12 + 32);
    v13 = v12 - 32 * v11;
    if (v6 != v4)
    {
      v14 = v6;
      v15 = v6;
      v16 = v12 - 32 * v11;
      do
      {
        v17 = *(v15 + 24);
        if (v17)
        {
          if (v15 == v17)
          {
            *(v16 + 24) = v16;
            (*(*v17 + 24))(v17, v16);
          }

          else
          {
            *(v16 + 24) = v17;
            *(v15 + 24) = 0;
          }
        }

        else
        {
          *(v16 + 24) = 0;
        }

        v15 += 32;
        v16 += 32;
        v14 += 32;
      }

      while (v15 != v4);
      do
      {
        std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](v6);
        v6 += 32;
      }

      while (v6 != v4);
    }

    v18 = *a1;
    *a1 = v13;
    *(a1 + 1) = v19;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v4 = &unk_1F2A294F8;
    *(v4 + 8) = a2;
    *(v4 + 12) = 1053609165;
    *(v4 + 24) = v4;
    v5 = v4 + 32;
  }

  a1[1] = v5;
}

void *ggl::MetalResourceManager::prepareTexture(ggl::MetalResourceManager *this, const ggl::Texture *a2, unint64_t a3)
{
  v6 = *(a2 + 14);
  v7 = *(a2 + 3);
  if (v6)
  {
    if (!v7 || v6 == 1 && (v8 = *(a2 + 11)) != 0 && *(v8 + 32) != *(a2 + 8))
    {
      v7 = ggl::MetalResourceManager::newTexture(this, a2);
    }
  }

  else if (!v7 || (v9 = *(a2 + 11)) != 0 && *(v9 + 32) != *(a2 + 8))
  {
    simpleValidateTexture(a2);
    PixelFormat = ggl::getPixelFormat(*(a2 + 17), *(*(this + 32) + 16));
    v11 = ggl::zone_mallocator::instance(PixelFormat);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v11, 0x88uLL);
    ggl::MetalTextureResource::MetalTextureResource(v7);
    v12 = *(a2 + 11);
    if (v12)
    {
      if (*(v7 + 16))
      {
        v13 = 0;
        v14 = *(v12 + 24);
        do
        {
          v15 = *(*(v14 + 32) + 8 * v13);
          v16 = [v15 newTextureViewWithPixelFormat:PixelFormat];
          v17 = *(v7 + 4);
          v18 = *(v17 + 8 * v13);
          *(v17 + 8 * v13) = v16;

          ++v13;
        }

        while (v13 < *(v7 + 16));
      }

      v19 = *(a2 + 3);
      if (v19 && v19 != 3735927469)
      {
        ggl::RenderDataHolder::replaceRenderResource(a2, this, v7);
      }

      else
      {
        ggl::RenderDataHolder::setRenderResource(a2, this, v7);
      }
    }

    else
    {
      v20 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:PixelFormat width:*(a2 + 20) height:*(a2 + 21) mipmapped:0];
      v21 = v20;
      if (*(a2 + 19) == 1)
      {
        if (*(*(this + 32) + 18))
        {
          v22 = 48;
        }

        else
        {
          v22 = 32;
        }
      }

      else
      {
        v22 = 32;
      }

      [v20 setResourceOptions:v22];
      [v21 setUsage:4];
      [v21 setSampleCount:*(a2 + 18)];
      if (*(a2 + 18) <= 1u)
      {
        v23 = 2;
      }

      else
      {
        v23 = 4;
      }

      [v21 setTextureType:v23];
      v24 = [*(*(this + 32) + 104) newTextureWithDescriptor:v21];
      objc_storeStrong(*(v7 + 4), v24);
      ggl::RenderDataHolder::setRenderResource(a2, this, v7);
    }

    ggl::ResourceManager::_addResourceStat(this, "Texture", 0x4DDB34EE00000007uLL, 0);
  }

  v25 = atomic_load(v7 + 2);
  if (v25 < a3)
  {
    v26 = v25;
    do
    {
      atomic_compare_exchange_strong(v7 + 2, &v26, a3);
      if (v26 == v25)
      {
        break;
      }

      v25 = v26;
    }

    while (v26 < a3);
  }

  return v7;
}

uint64_t ecs2::service<md::FrameService>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x8C3843AC816FCBCLL)
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

  v2 = a1[3];
  v3 = a1[4];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return v2;
}

uint64_t md::Logic<md::HikingLogic,md::HikingContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x92F3DC114CADB853)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void ecs2::Runtime::_entities<PrepareFrameForRender,md::ita::FrameHandle &>(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = ecs2::BasicRegistry<void>::storage<md::ita::FrameHandle>(*(a1 + 8));
  v5 = v4[4];
  v6 = v4[5];
  v7 = _ZTWN4ecs27Runtime11_localStateE();
  v8 = _ZTWN4ecs27Runtime11_stackIndexE();
  if (v5 == v6)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *(v4[7] + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8));
      *(v7 + 104 * *v8 + 24) = *v5;
      v11 = *(a2 + 8);
      if (!v11)
      {
        v11 = ecs2::service<md::FrameService>(***a2, *(**a2 + 8));
        *(a2 + 8) = v11;
      }

      v12 = (*(*v11 + 48))(v11, *(v10 + 8 * (v9 & 0x3F)));
      if (v13)
      {
        v14 = ecs2::ExecutionTaskContext::currentEntity(v12);
        v22 = &unk_1F2A1D7F8;
        *&v23 = 0;
        *(&v23 + 1) = v14;
        v24 = &v22;
        v27 = &v25;
        v25 = &unk_1F2A1D7F8;
        v26 = v23;
        HIDWORD(v26) = 0;
        v28 = 0;
        ecs2::Runtime::queueCommand();
        if (v28 != -1)
        {
          (off_1F2A1D8B8[v28])(&v21, &v25);
        }

        v28 = -1;
        std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v22);
      }

      ++v9;
      ++v5;
    }

    while (v5 != v6);
    if (v9)
    {
      v15 = *(a1 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>();
      *(v15 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>(void)::metadata) = *(v15 + 4096);
    }
  }

  *(v7 + 104 * *v8 + 24) = -65536;
  v16 = v7 + 104 * *v8;
  v17 = *(v16 + 92);
  *(v16 + 92) = v17 + 1;
  *(v16 + 4 * v17 + 28) = v9;
  v18 = v7 + 104 * *v8;
  v20 = *(v18 + 92);
  v19 = (v18 + 92);
  if (v20 >= 0x10)
  {
    *v19 = 0;
  }
}

uint64_t ecs2::Runtime::_entities<md::ita::BuildSSAODOFCommonFrameGraph,md::ls::FrameGraphBuilder &,md::ls::PassSSAOConfiguration const&,md::ls::PassMapEngineCapabilities const&>(uint64_t a1, uint64_t **a2)
{
  v58[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphBuilder>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassSSAOConfiguration>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassMapEngineCapabilities>(v3);
  v58[0] = v4;
  v58[1] = v5;
  v58[2] = v6;
  v7 = 1;
  v8 = v4;
  v9 = v58;
  do
  {
    if (*(v58[v7] + 40) - *(v58[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v58[v7];
      v9 = &v58[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v11 = *(*v9 + 32);
  v10 = *(*v9 + 40);
  v53 = v11;
  v54 = v10;
  v55 = v4;
  v56 = v5;
  v57 = v6;
  v52 = v10;
  while (v11 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v53, *v11, v11[1]))
  {
    v11 += 2;
    v53 = v11;
    v10 = v52;
  }

  v12 = v53;
  if (v53 == v52)
  {
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = result;
    v15 = 0;
  }

  else
  {
    v50 = v55;
    v48 = a1;
    v49 = v56;
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
    v16 = v54;
    do
    {
      v17 = v12[1];
      v18 = (v17 >> 3) & 0x1FF8;
      v19 = v17 & 0x3F;
      v20 = *(*(*(v50 + 8) + v18) + 4 * v19 + 2);
      v21 = *(*(v50 + 56) + ((v20 >> 3) & 0x1FF8));
      v22 = *(*(*(v49 + 8) + v18) + 4 * v19 + 2);
      v23 = *(*(v49 + 56) + ((v22 >> 3) & 0x1FF8));
      v24 = v14;
      v25 = *v14;
      v26 = v13;
      *(v13 + 104 * v25 + 24) = *v12;
      v27 = a2;
      v28 = a2[1];
      if (!v28)
      {
        v29 = **a2;
        v30 = *v29;
        v31 = *(v29 + 8);
        if (v30 == v31)
        {
          goto LABEL_13;
        }

        while (*v30 != 0xD369A4D92C8FFE6CLL)
        {
          v28 = 0;
          v30 += 5;
          if (v30 == v31)
          {
            goto LABEL_14;
          }
        }

        if (v30 == v31)
        {
LABEL_13:
          v28 = 0;
        }

        else
        {
          v28 = v30[3];
          v41 = v30[4];
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v41);
            v27 = a2;
          }
        }

LABEL_14:
        v27[1] = v28;
      }

      v32 = (*(*v28 + 8))(v28);
      if (v32)
      {
        v33 = v23 + 12 * (v22 & 0x3F);
        v34 = *(v21 + 8 * (v20 & 0x3F));
        v35 = *v33;
        v37 = *(v33 + 10);
        v36 = (v33 + 10);
        if (!v37)
        {
          v35 = 1.0;
        }

        *v58 = v35;
        md::StandardPassList::_buildSSAODOFCommonFrameGraph(v32, v36, 0, v58, v34);
      }

      ++v15;
      v38 = v12 + 2;
      v13 = v26;
      v14 = v24;
      while (1)
      {
        v12 = v38;
        v53 = v38;
        if (v38 == v16)
        {
          break;
        }

        v39 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v53, *v38, v38[1]);
        v38 = v12 + 2;
        if (v39)
        {
          v40 = v12;
          goto LABEL_24;
        }
      }

      v40 = v16;
LABEL_24:
      ;
    }

    while (v40 != v52);
    result = ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphBuilder>(*(v48 + 8));
  }

  *(v13 + 104 * *v14 + 24) = -65536;
  v43 = v13 + 104 * *v14;
  v44 = *(v43 + 92);
  *(v43 + 92) = v44 + 1;
  *(v43 + 4 * v44 + 28) = v15;
  v45 = v13 + 104 * *v14;
  v47 = *(v45 + 92);
  v46 = (v45 + 92);
  if (v47 >= 0x10)
  {
    *v46 = 0;
  }

  return result;
}

uint64_t md::Logic<md::SkyLogic,md::SkyLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::allocateContext@<X0>(uint64_t a1@<X8>)
{
  geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(a1, &md::kSkyDayDefaultFillColor);
  result = geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(a1 + 16, &md::kSkyDayDefaultHorizonColor);
  *(a1 + 32) = 0;
  return result;
}

uint64_t md::SkyLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v8 = *a3;
  v7 = a3[1];
  if (*(v7 + 82) == 1)
  {
    v26[0] = &unk_1F2A1C3B8;
    v26[1] = a1;
    v26[2] = v7;
    v26[3] = v26;
    md::StyleLogicContext::parseEvents(v7, v26);
    std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v26);
  }

  v9 = *(v8 + 3076);
  v10 = *(v8 + 3080);
  v11 = *(a1 + 120);
  v12 = *(a1 + 128);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = v11;
    v22 = v12;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v21 = *(a1 + 120);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v19 = (*(*v11 + 48))(v11, &v23);
  v25 = v19;
  if (!v12)
  {
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_13:
    md::SkyLogic::defaultDayFillColor(&v20);
    *(a1 + 136) = v20;
    md::SkyLogic::defaultDayHorizonColor(&v20);
    v15 = v20;
    goto LABEL_7;
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v13 = fmaxf(v10 + v9, 1.0);
  v14 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a2 + 16), *(*(a2 + 16) + 8));
  md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(&v20, v14, &v21, 2u, v13);
  *(a1 + 136) = v20;
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v20, *(v21 + 24), 238, 2u, fminf(v13, 23.0));
  v15 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v20.f32)), vdupq_n_s32(0x37800080u));
LABEL_7:
  *(a1 + 152) = v15;
  for (i = 0; i != 16; i += 4)
  {
    *(a4 + i) = *(a1 + 136 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a4 + 16 + j) = *(a1 + 152 + j);
  }

  *(a4 + 32) = *(a1 + 168);
  return gss::QueryableLocker<gss::PropertyID>::~QueryableLocker(&v21);
}

void sub_1B2A3BE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, char a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2md8SkyLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_17StyleLogicContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15SkyLogicContextEE3__0NS_9allocatorISK_EEFvNS2_17StyleManagerEventEEEclEOSN_(uint64_t a1, unsigned __int8 *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  if ((*a2 | 4) == 4)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    v4 = *(v2 + 128);
    *(v2 + 120) = 0;
    *(v2 + 128) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    if (*v3)
    {
      LODWORD(v7) = 5;
      WORD2(v7) = 7;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v8, &v7, 1uLL);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v9, v8);
      gss::FeatureAttributeSet::sort(v9[0], v9[1]);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v8);
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v8, *v3, v9);
      v5 = v8[0];
      v8[0] = 0uLL;
      v6 = *(v2 + 128);
      *(v2 + 120) = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        if (*(&v8[0] + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v8[0] + 1));
        }
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v9);
    }
  }
}

void sub_1B2A3BF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::ServiceLocator::resolve<md::AccessibilityHelper>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0xAF62741E5C928850)
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

void md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, float a5)
{
  v9 = fminf(fmaxf(a5, 0.0), 23.0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v21, *(*a3 + 24), 92, a4, v9);
  v20 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v21)), vdupq_n_s32(0x37800080u));
  v10 = *(*a3 + 24);
  if (a4 == 2)
  {
    v11 = *v10;
    if (*v10)
    {
      v12 = *v11;
      LODWORD(v11) = *v11 == 1.0;
      if (*(v10 + 10) == 1 && v12 != 0.0 && v12 != 1.0)
      {
        goto LABEL_15;
      }
    }

    v14 = v10 + v11;
  }

  else
  {
    v14 = v10 + a4;
  }

  v15 = *(v14 + 11);
  if (v15 == 2)
  {
    v12 = 0.0;
LABEL_15:
    v21.i8[0] = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v10, 489, 0, &v21, v9);
    v18 = v17;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v10, 489, 1, &v22, v9);
    v16 = v18 + ((v19 - v18) * v12);
    goto LABEL_12;
  }

  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v10, 489, v15, 0, v9);
LABEL_12:
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v20, v16);
}

void *md::LayoutContext::get<md::SceneQueryContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xDFC317497CF9A4BFLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xDFC317497CF9A4BFLL)
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

void setupAttachments(ggl::MetalResourceManager *,ggl::RenderTarget *,ggl::PassDescriptor const&,ggl::ClearItem *,MTLRenderPassDescriptor *,unsigned long)::$_0::operator()(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v21 = v5;
  if (a3)
  {
    [v5 setTexture:**a1];
    [v21 setLevel:*(**(a1 + 8) + 288)];
    [v21 setSlice:*(**(a1 + 8) + 296)];
    v6 = *(*(a1 + 16) + 40);
    v7 = **(a1 + 24);
    v8 = **(a1 + 32);
    if (v8 && *(v8 + 28))
    {
      v9 = 2;
      v10 = v21;
    }

    else
    {
      v10 = v21;
      if (*(v7 + 56))
      {
        v9 = 1;
      }

      else
      {
        v9 = *(v7 + 76) == 0;
      }

      if (v6 == 2)
      {
        v9 = 1;
      }

      else if (v6)
      {
        v9 = 0;
      }
    }

    [v10 setLoadAction:v9];
    v13 = *(a1 + 8);
    v14 = *(*(a1 + 16) + 44);
    v15 = *(*v13 + 304);
    if (v15)
    {
      v16 = *(v15 + 56);
      v17 = *(*v13 + 304);
    }

    else
    {
      v17 = **(a1 + 24);
      v16 = *(v17 + 56);
    }

    v12 = v21;
    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = *(v17 + 76) == 0;
    }

    if (v14 == 3)
    {
      if (v15)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }
    }

    else if (v14 == 2)
    {
      v11 = 1;
    }

    else if (v14)
    {
      v11 = 0;
    }

    else
    {
      v19 = v15 == 0;
      v20 = 1;
      if (!v19)
      {
        v20 = 2;
      }

      if (v18)
      {
        v11 = v20;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    [v5 setTexture:0];
    [v21 setLoadAction:0];
    v11 = 0;
    v12 = v21;
  }

  [v12 setStoreAction:v11];
}

int *gss::defaultValueForKey<gss::PropertyID,float>(int a1)
{
  if (a1 > 281)
  {
    if (a1 <= 354)
    {
      if (a1 > 323)
      {
        if (a1 > 330)
        {
          if (a1 == 331)
          {
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultBuildingGradientMaxHeight;
          }

          if (a1 == 345)
          {
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelPerspectiveScale;
          }
        }

        else
        {
          if (a1 == 324)
          {
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelTextOpacity;
          }

          if (a1 == 330)
          {
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultBuildingGradientMaxIntensity;
          }
        }
      }

      else if (a1 > 301)
      {
        if (a1 == 302)
        {
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficCasingWidth;
        }

        if (a1 == 313)
        {
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficMaskWidth;
        }
      }

      else
      {
        if (a1 == 282)
        {
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTextElementMarginHorizontal;
        }

        if (a1 == 284)
        {
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultAnnotationElementMargin;
        }
      }

      return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
    }

    switch(a1)
    {
      case 433:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelIconImageScale;
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 474:
      case 477:
      case 480:
      case 481:
      case 504:
      case 506:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
      case 448:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultOpacity;
      case 456:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultIntensity;
      case 457:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultScaleWithNoPitch;
      case 458:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultkernelSize;
      case 471:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultMinSize;
      case 472:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultFadeZoomSpan;
      case 473:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelMaxZoomBias;
      case 475:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelImageScale;
      case 476:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelBlockEndMargin;
      case 478:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelMaxDynamicTextScale;
      case 479:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelMaxDynamicImageScale;
      case 482:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelColorLumAdjustment;
      case 483:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelHaloColorLumAdjustment;
      case 484:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelExtrusionColorLumAdjustment;
      case 485:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelStrokeColorLumAdjustment;
      case 486:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelSecondaryColorLumAdjustment;
      case 487:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultArrowColorLumAdjustment;
      case 488:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultArrowHaloColorLumAdjustment;
      case 489:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultFillColorLumAdjustment;
      case 490:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultStrokeColorLumAdjustment;
      case 491:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultInnerGlowColorLumAdjustment;
      case 492:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultOuterGlowColorLumAdjustment;
      case 493:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultDropShadowColorLumAdjustment;
      case 494:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultAlternateFillColorLumAdjustment;
      case 495:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultBuildingTopColorLumAdjustment;
      case 496:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultBuildingLandmarkColorLumAdjustment;
      case 497:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultBuildingFlatColorLumAdjustment;
      case 498:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultInnerShadowColorLumAdjustment;
      case 499:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultOuterShadowColorLumAdjustment;
      case 500:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultBuildingLandmarkColor3DLumAdjustment;
      case 501:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultPuckArrowColorLumAdjustment;
      case 502:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultPuckArrowColorStaleLumAdjustment;
      case 503:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultPuckCircleColorLumAdjustment;
      case 505:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultHaloWidth;
      case 507:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultHaloColorLumAdjustment;
      case 508:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultStrokeColor2LumAdjustment;
      default:
        if (a1 == 355)
        {
          result = &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelOccludedOpacity;
        }

        else
        {
          if (a1 != 402)
          {
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
          }

          result = &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelLineHeight;
        }

        break;
    }
  }

  else if (a1 <= 163)
  {
    if (a1 <= 68)
    {
      if (a1 <= 46)
      {
        if (a1 <= 8)
        {
          if (a1)
          {
            if (a1 == 1)
            {
              return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultOuterGlowOpacity;
            }

            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
          }

          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultInnerGlowOpacity;
        }

        else
        {
          switch(a1)
          {
            case 9:
              return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelHeightMedium;
            case 45:
              return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficPillMiddleLengthStopped;
            case 46:
              return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficPillSpacingStopped;
            default:
              return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
          }
        }
      }

      else if (a1 > 57)
      {
        switch(a1)
        {
          case ':':
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficSecondaryWidthSlow;
          case 'C':
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficPillMiddleLengthMedium;
          case 'D':
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficPillSpacingMedium;
          default:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
        }
      }

      else
      {
        switch(a1)
        {
          case '/':
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficSecondaryWidthStopped;
          case '8':
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficPillMiddleLengthSlow;
          case '9':
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficPillSpacingSlow;
          default:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
        }
      }
    }

    else if (a1 > 151)
    {
      if (a1 > 154)
      {
        switch(a1)
        {
          case 155:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultMarginBottom;
          case 156:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultMarginRight;
          case 158:
            return &md::kNoLabelElevation;
          default:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
        }
      }

      else if (a1 == 152)
      {
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultMargin;
      }

      else if (a1 == 153)
      {
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultMarginTop;
      }

      else
      {
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultMarginLeft;
      }
    }

    else if (a1 > 79)
    {
      switch(a1)
      {
        case 80:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficSecondaryWidthFast;
        case 122:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelSpacing;
        case 131:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultArrowSpacing;
        default:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
      }
    }

    else
    {
      switch(a1)
      {
        case 'E':
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficSecondaryWidthMedium;
        case 'N':
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficPillMiddleLengthFast;
        case 'O':
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficPillSpacingFast;
        default:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
      }
    }
  }

  else if (a1 > 230)
  {
    if (a1 > 273)
    {
      if (a1 > 277)
      {
        switch(a1)
        {
          case 278:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficMaxWidth;
          case 279:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficSecondaryMaxWidth;
          case 281:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTextElementMarginVertical;
          default:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
        }
      }

      else
      {
        switch(a1)
        {
          case 274:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultBrightness;
          case 276:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultFillBrightness;
          case 277:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultStrokeBrightness;
          default:
            return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
        }
      }
    }

    else if (a1 > 269)
    {
      switch(a1)
      {
        case 270:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficMinWidth;
        case 271:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficSecondaryMinWidth;
        case 273:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelIconPadding;
        default:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
      }
    }

    else
    {
      switch(a1)
      {
        case 231:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultDiagonalPositionVerticalMargin;
        case 234:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelOffset;
        case 251:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultPuckOffset;
        default:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
      }
    }
  }

  else if (a1 > 217)
  {
    if (a1 > 226)
    {
      switch(a1)
      {
        case 227:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelMultiShieldGap;
        case 228:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelRoadWithShieldGap;
        case 230:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultDiagonalPositionHorizontalMargin;
        default:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
      }
    }

    else
    {
      switch(a1)
      {
        case 218:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultPoiIconOpacity;
        case 222:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultNavLabelSignBrightness;
        case 226:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelShieldSpacing;
        default:
          return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
      }
    }
  }

  else if (a1 > 179)
  {
    switch(a1)
    {
      case 180:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelIconBevelAmount;
      case 187:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelIconSaturation;
      case 193:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultPadding;
      default:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
    }
  }

  else
  {
    switch(a1)
    {
      case 164:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficWidth;
      case 166:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultTrafficIncidentBrightness;
      case 178:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::kDefaultLabelIconCornerRadius;
      default:
        return &gss::defaultValueForKey<gss::PropertyID,float>(gss::PropertyID)::_defaultValue;
    }
  }

  return result;
}

void md::AccessibilityHelper::luminanceAdjustedColor(uint64_t a1, char a2, _OWORD *a3, float a4)
{
  if ((a2 & 1) == 0 || a4 == 0.0)
  {
    *a1 = *a3;
  }

  else
  {
    v13 = *a3;
    v12[0] = geo::fromLinear<float,4,(geo::ColorSpace)5,int,void>::operator()(gm::Matrix<float,4,1> const&)const::{lambda(gm::Matrix<float,4,1> const&)#1}::operator()(&v13);
    v12[1] = v6;
    v12[2] = v7 + a4;
    v12[3] = v8;
    *a1 = geo::toLinear<float,4,(geo::ColorSpace)5,int,void>::operator()(gm::Matrix<float,4,1> const&)const::{lambda(gm::Matrix<float,4,1> const&)#1}::operator()(v12);
    *(a1 + 4) = v9;
    *(a1 + 8) = v10;
    *(a1 + 12) = v11;
  }
}

uint64_t gss::QueryableLocker<gss::PropertyID>::~QueryableLocker(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    (*(**a1 + 56))();
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void sub_1B2A3CCBC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::ClearRenderLayer::activeCommandBuffers(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return md::Logic<md::SkyLogic,md::SkyLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(v5);
  }
}

uint64_t md::Logic<md::SkyLogic,md::SkyLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x7C7EC6C7C111B0D0)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::MapEngine::buildFrameRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a1 + 41656;
  v7 = *(a1 + 47336);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v8 == v9)
  {
    goto LABEL_4;
  }

  while (*v8 != 0x8C3843AC816FCBCLL)
  {
    v8 += 5;
    if (v8 == v9)
    {
      goto LABEL_4;
    }
  }

  if (v8 == v9)
  {
LABEL_4:
    v10 = 0;
  }

  else
  {
    v10 = v8[3];
    v11 = v8[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  LOBYTE(v16) = *(v6 + 376) == 1;
  HIDWORD(v16) = a2;
  LOBYTE(v17) = BYTE4(a2);
  v18 = CACurrentMediaTime();
  v12 = [*v6 renderSource];
  LOBYTE(v19) = [v12 isDelayedRenderQueueConsumptionSupported] ^ 1;
  v13 = (*(*v10 + 16))(v10, &v16);

  if (*(a3 + 24))
  {
    (*(*v10 + 64))(v10, v13, 0, a3);
  }

  v15 = v13;
  [*v6 prepareRenderTask:&v15];
  if (!*(v6 + 376))
  {
    v16 = &unk_1F2A267D8;
    v17 = a1;
    v19 = &v16;
    (*(*v10 + 64))(v10, v13, 2, &v16);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v16);
  }

  return v13;
}

void sub_1B2A3D0E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t md::Logic<md::mun::MuninLogic,md::mun::MuninContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x8EA84A1BD3791AFALL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0x99BED48DEFBBD82BLL))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1AF456233693CD46))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x8BD499FBD96FBB9ELL)[5] + 32);
      v14[0] = v9;
      v14[1] = v12;
      v14[2] = v13;
      return (*(*v5 + 144))(v5, a2, v14, v3);
    }
  }

  return result;
}

void md::FrameGraphPass::~FrameGraphPass(md::FrameGraphPass *this)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 14));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 11));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 8));
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

void md::mun::MuninLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = **a3;
  v7 = *(v5 + 112);
  v6 = *(v5 + 120);
  if (v7 != v6)
  {
    v8 = *(v5 + 282);
    while (*v7 != v8)
    {
      v7 += 56;
      if (v7 == v6)
      {
        goto LABEL_7;
      }
    }

    v6 = v7;
  }

LABEL_7:
  v9 = a3[1];
  v10 = *(v6 + 13);
  if (v10)
  {
    v11 = a3[2];
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 160));
    if (*v11 == 1)
    {
      gdc::LayerDataCollector::data(&v43, *(v10 + 24), *(v10 + 32), 63);
      v40 = v43;
      v16 = v44;
      for (i = *&v43.f64[0]; gdc::DataKeyIterator::operator!=(i, v16); i = *&v40.f64[0])
      {
        v18 = gdc::DataIterator::operator*(i);
        v19 = *(v18 + 8);
        v42.f64[0] = *v18;
        *&v42.f64[1] = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>(a1 + 160, &v42);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        gdc::DataIterator::operator++(&v40);
      }
    }

    else
    {
      gdc::LayerDataCollector::data(&v43, *(v10 + 24), *(v10 + 32), 40);
      v40 = v43;
      v12 = v44;
      for (j = *&v43.f64[0]; gdc::DataKeyIterator::operator!=(j, v12); j = *&v40.f64[0])
      {
        v14 = gdc::DataIterator::operator*(j);
        v15 = *(v14 + 8);
        v42.f64[0] = *v14;
        *&v42.f64[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>(a1 + 160, &v42);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }

        gdc::DataIterator::operator++(&v40);
      }
    }
  }

  v20 = +[VKDebugSettings sharedSettings];
  v21 = v20;
  if (*(a1 + 184) == 1 && ![v20 muninAvailabilityOverride] && (v22 = *(a2 + 88)) != 0)
  {
    v23 = *(v22 + 16);
    md::LayoutContext::centerScreenPoint(a2);
    v25.f32[1] = 1.0 - v24;
    v38 = vmulq_f64(v23[23], vcvtq_f64_f32(v25));
    v26 = gdc::Camera::cameraFrame(v9);
    md::MapDataAccess::groundCoordinateForScreenPoint(v43.f64, *(a2 + 88), v26, 0, 0, v38);
    v38.f64[0] = v43.f64[1];
    v27 = tan(v43.f64[0] * 0.5 + 0.785398163);
    v28 = log(v27);
    v29.f64[0] = v38.f64[0];
    v29.f64[1] = v28;
    __asm { FMOV            V1.2D, #0.5 }

    v39 = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v29);
    v42 = v39;
    if (roundf(fmaxf(v9[770] + v9[768], 1.0)) >= 14.0)
    {
      md::mun::MuninLogic::nearestRoadPoint(&v40, *(a1 + 160), *(a1 + 168), &v42);
      if (v41)
      {
        v37 = 2;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v35 = *(a1 + 160);
      v36 = *(a1 + 168);
      if (v35 == v36)
      {
LABEL_31:
        v37 = 0;
      }

      else
      {
        v37 = 1;
        while (!md::MuninAvailabilityData::isWithinMuninCoverage(*v35, v39.f64[0], v39.f64[1]))
        {
          v35 += 2;
          if (v35 == v36)
          {
            goto LABEL_31;
          }
        }
      }
    }
  }

  else
  {
    v37 = 2 * ([v21 muninAvailabilityOverride] == 2);
  }

  if (v37 != *(a1 + 152))
  {
    *(a1 + 152) = v37;
    *&v43.f64[0] = v37;
    std::__function::__value_func<void ()(VKMuninAvailability)>::operator()[abi:nn200100](*(a1 + 144));
  }
}

unint64_t md::CommandBufferPool::pop(md::CommandBufferPool *this, char a2, const char *a3)
{
  v9 = a2;
  v8 = a3;
  v4 = *(this + 6);
  if (*(this + 5) == v4)
  {
    geo::Pool<ggl::CommandBuffer>::construct<unsigned char &,char const*&>(this + 64, &v9, &v8);
    v5 = v7;
  }

  else
  {
    v5 = *(v4 - 8);
    *(v5 + 16) = a2;
    *(v5 + 8) = a3;
    *(this + 6) = v4 - 8;
  }

  std::__hash_table<ggl::CommandBuffer *,std::hash<ggl::CommandBuffer *>,std::equal_to<ggl::CommandBuffer *>,std::allocator<ggl::CommandBuffer *>>::__emplace_unique_key_args<ggl::CommandBuffer *,ggl::CommandBuffer *&>(this, v5);
  return v5;
}

double gdc::LayerDataCollector::data(gdc::LayerDataCollector *this, unsigned __int16 *a2, unsigned __int16 *a3, int a4)
{
  if (a2 == a3)
  {
    goto LABEL_34;
  }

  v4 = a2;
  while (*v4 != a4)
  {
    v4 += 16;
    if (v4 == a3)
    {
      goto LABEL_34;
    }
  }

  if (v4 == a3)
  {
LABEL_34:
    *&v9 = 0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  else
  {
    v5 = a2;
    while (*v5 != a4)
    {
      v5 += 16;
      if (v5 == a3)
      {
        v5 = a3;
        break;
      }
    }

    v6 = *(v5 + 1);
    v7 = a2;
    while (*v7 != a4)
    {
      v7 += 16;
      if (v7 == a3)
      {
        v7 = a3;
        break;
      }
    }

    v8 = *(v7 + 2);
    *&v9 = v6;
    *(&v9 + 1) = v8;
    if (v6 != v8)
    {
      while (!*(v6 + 112))
      {
        v6 += 144;
        if (v6 == v8)
        {
          v6 = v8;
          break;
        }
      }

      *&v9 = v6;
    }

    v10 = a2;
    while (*v10 != a4)
    {
      v10 += 16;
      if (v10 == a3)
      {
        v10 = a3;
        break;
      }
    }

    v11 = *(v10 + 2);
    while (*a2 != a4)
    {
      a2 += 16;
      if (a2 == a3)
      {
        a2 = a3;
        break;
      }
    }

    v12 = *(a2 + 2);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    if (v11 != v12)
    {
      while (!*(v11 + 112))
      {
        v11 += 144;
        if (v11 == v12)
        {
          v11 = *(a2 + 2);
          break;
        }
      }

      *&v13 = v11;
    }

    *this = v9;
    *(this + 1) = v13;
  }

  return *&v9;
}

void geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::insert(void *a1, char *a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
LABEL_5:
    v7 = a1[2];
    if (v4 >= v7)
    {
      v8 = v4 - v5;
      v6 = a1[1];
LABEL_7:
      v9 = ((v4 - v5) >> 3) + 1;
      if (v9 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = v7 - v5;
      if (v10 >> 2 > v9)
      {
        v9 = v10 >> 2;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v9;
      }

      v12 = v8 >> 3;
      if (v11)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v11);
      }

      v13 = (8 * v12);
      v14 = 8 * v12;
      if (!v12)
      {
        if (v8 < 1)
        {
          if (v6 == v5)
          {
            v20 = 1;
          }

          else
          {
            v20 = v8 >> 2;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v20);
        }

        v13 = (v13 - (((v8 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
        v14 = v13;
      }

      *v13 = *a2;
      v15 = v14 + 8;
      memcpy((v14 + 8), v6, a1[1] - v6);
      v16 = *a1;
      v25 = (v15 + a1[1] - v6);
      a1[1] = v6;
      v17 = v6 - v16;
      v18 = v13 - (v6 - v16);
      memcpy(v18, v16, v17);
      v19 = *a1;
      *a1 = v18;
      *(a1 + 1) = v25;
      if (v19)
      {

        operator delete(v19);
      }

      return;
    }

LABEL_33:
    *v4 = *a2;
    a1[1] = v4 + 8;
    return;
  }

  v6 = *a1;
  while (**v6 < **a2)
  {
    v6 += 8;
    if (v6 == v4)
    {
      goto LABEL_5;
    }
  }

  if (v6 == v4 || **a2 != **v6)
  {
    v7 = a1[2];
    if (v4 >= v7)
    {
      v8 = v6 - v5;
      goto LABEL_7;
    }

    if (v6 != v4)
    {
      v21 = v6 + 8;
      if (v4 < 8)
      {
        v22 = a1[1];
      }

      else
      {
        *v4 = *(v4 - 1);
        v22 = v4 + 8;
      }

      a1[1] = v22;
      if (v4 != v21)
      {
        memmove(v6 + 8, v6, v4 - v21);
        v22 = a1[1];
      }

      v23 = v22 <= a2 || v6 > a2;
      v24 = 8;
      if (v23)
      {
        v24 = 0;
      }

      *v6 = *&a2[v24];
      return;
    }

    goto LABEL_33;
  }
}

void geo::DirectedGraph<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::vector<md::FrameGraphPass *>>::topologicalSortedDFS(uint64_t a1, unsigned __int8 *a2, unsigned __int8 ***a3, uint64_t a4)
{
  v18 = a2;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    goto LABEL_11;
  }

  v10 = *a2;
  while (1)
  {
    v11 = **v8;
    if (v11 == v10)
    {
      break;
    }

    ++v8;
    if (v10 < v11 || v8 == v9)
    {
      goto LABEL_11;
    }
  }

  if (v8 == v9)
  {
LABEL_11:
    geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::insert(a3, &v18);
    v13 = std::map<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>,md::FrameGraphPassLessThan,std::allocator<std::pair<md::FrameGraphPass * const,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::find[abi:nn200100](a1, a2);
    if (a1 + 8 != v13)
    {
      v14 = *(v13 + 40);
      v15 = *(v13 + 48);
      while (v14 != v15)
      {
        v16 = *v14;
        v17 = a3[1];
        if (v17 == geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::find(*a3, v17, *v14))
        {
          geo::DirectedGraph<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::vector<md::FrameGraphPass *>>::topologicalSortedDFS(a1, v16, a3, a4);
        }

        ++v14;
      }
    }

    std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(a4, &v18);
  }
}

void md::LayoutContext::centerScreenPoint(float32x2_t *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (this[92].i8[0])
  {
    goto LABEL_7;
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "_frameState.has_value()";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDLayoutContext.mm";
    v12 = 1024;
    v13 = 92;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "Requesting frameState on context in undefined state: Assertion with expression - %s : Failed in file - %s line - %i", &v8, 0x1Cu);
  }

  if (this[92].i8[0])
  {
LABEL_7:
    gdc::Canvas::centerScreenPoint(this + 74);
  }

  else
  {
    v3 = std::__throw_bad_optional_access[abi:nn200100]();
    gdc::ViewDataAccess::worldRayFromScreenNormalizedPoint(v3, v4, v5, v6, v7);
  }
}

void gdc::ViewDataAccess::worldRayFromScreenNormalizedPoint(uint64_t a1, uint64_t a2, double *a3, double a4, double a5)
{
  gdc::ViewDataAccess::rigidTransformForFrame(&v28, *a2, a3);
  v10 = *(a2 + 368);
  v9 = *(a2 + 376);
  v11 = v9 * v10;
  if (v9 >= v10)
  {
    v13 = *(a2 + 456);
    v16 = v13;
  }

  else
  {
    if (v11 <= 0.0)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = v9 / v10;
    }

    v13 = *(a2 + 456);
    v14 = tan(v13 * 0.5);
    v15 = atan(v14 * v12);
    v16 = v15 + v15;
  }

  if (v10 < v9)
  {
    if (v11 <= 0.0)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = v10 / v9;
    }

    v18 = tan(v13 * 0.5);
    v19 = atan(v18 * v17);
    v13 = v19 + v19;
  }

  v20 = tan(v16 * 0.5);
  v26[0] = tan(v13 * 0.5) * a4;
  v26[1] = v20 * a5;
  v26[2] = -1.0;
  v27[0] = gm::Matrix<double,3,1>::normalized<int,void>(v26);
  v27[1] = v21;
  v27[2] = v22;
  v23 = gm::Quaternion<double>::operator*(&v30, v27);
  *a1 = v28;
  *(a1 + 16) = v29;
  *(a1 + 24) = v23;
  *(a1 + 32) = v24;
  *(a1 + 40) = v25;
}

double gdc::ViewDataAccess::rigidTransformForFrame(uint64_t a1, unsigned __int8 a2, double *a3)
{
  if (a2 - 1 >= 2)
  {
    if (a2 == 3)
    {
      return gdc::CameraFrame<geo::Radians,double>::toRigidTransformEcefNoOffset(a1, a3);
    }

    else
    {
      return gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(a1, a3, 1);
    }
  }

  else
  {
    gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(a1, a3);
  }

  return result;
}

__n128 gdc::ViewDataAccess::worldRayFromScreenPoint(uint64_t a1, uint64_t a2, double *a3, float64x2_t a4)
{
  v4 = vsubq_f64(a4, vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(*(a2 + 368), vcvtq_f64_f32(*(a2 + 488))))));
  v5 = vdivq_f64(vaddq_f64(v4, v4), *(a2 + 368));
  gdc::ViewDataAccess::worldRayFromScreenNormalizedPoint(a1, a2, a3, v5.f64[0] + -1.0, 1.0 - v5.f64[1]);
  return result;
}

double md::MapDataAccess::groundCoordinateForScreenPoint(double *a1, uint64_t a2, double *a3, _BYTE *a4, char a5, float64x2_t a6)
{
  v8 = *(a2 + 16);
  if (*(v8 + 376) * *(v8 + 368) == 0.0)
  {
    v9 = vdupq_n_s64(0xC00921FB54442D18);
    *a1 = v9;
    a1[2] = 0.0;
  }

  else
  {
    v9.i64[0] = gdc::ViewDataAccess::worldRayFromScreenPoint(v15, v8, a3, a6).n128_u64[0];
    v13 = *(a2 + 9);
    if ((v13 - 1) < 2)
    {
      md::MapDataAccess::_globeGroundCoordinateForScreenPoint(a1, a2, a3, v15, a4, a5);
    }

    else if (v13 == 3)
    {
      *a1 = *a3;
      v9.i64[0] = a3[2];
      a1[2] = *v9.i64;
    }

    else if (!*(a2 + 9))
    {
      *v9.i64 = md::MapDataAccess::_mercatorGroundCoordinateForScreenPoint(a1, v15, a3[2]);
    }
  }

  return *v9.i64;
}

uint64_t md::MapDataAccess::_globeGroundCoordinateForScreenPoint(void *a1, unsigned __int8 *a2, double *a3, uint64_t a4, _BYTE *a5, char a6)
{
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v15 = __sincos_stret(v12);
  v16 = 6378137.0 / sqrt(v15.__sinval * v15.__sinval * -0.00669437999 + 1.0);
  v17 = (v16 + v14) * v15.__cosval;
  v18 = __sincos_stret(v13);
  v19 = 0;
  v31 = v17 * v18.__cosval;
  v32 = v17 * v18.__sinval;
  v33 = (v14 + v16 * 0.99330562) * v15.__sinval;
  v20 = 0.0;
  do
  {
    v20 = v20 + *(&v31 + v19) * *(&v31 + v19);
    v19 += 8;
  }

  while (v19 != 24);
  memset(v30, 0, 24);
  v30[3] = sqrt(v20);
  v29 = 0.0;
  v21 = geo::Intersect::intersection<double>(v30, a4, &v29, &v28);
  if (a5)
  {
    *a5 = v21;
  }

  if (v21)
  {
    v22 = v29;
  }

  else
  {
    gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(&v31, a3);
    v23 = sqrt((a3[3] + cos(3.14159265 - a3[4]) * -12756274.0) * a3[3] + 4.06806316e13);
    v22 = sqrt((v23 + 6378137.0) * (v23 + -6378137.0));
  }

  v31 = gm::Ray<double,3>::at(a4, v22);
  v32 = v24;
  v33 = v25;
  result = geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(a1, &v31);
  if ((a6 & 1) == 0)
  {
    result = md::MapDataAccess::heightAtCoordinate(a2, a1);
    a1[2] = result & (v27 << 55 >> 63);
  }

  return result;
}

uint64_t geo::Intersect::intersection<double>(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v4 = 0;
  *a3 = 0.0;
  *a4 = 1.79769313e308;
  do
  {
    *(&v18 + v4) = *(a2 + v4) - *(a1 + v4);
    v4 += 8;
  }

  while (v4 != 24);
  v5 = 0;
  v6 = a2 + 24;
  v7 = 0.0;
  do
  {
    v7 = v7 + *(v6 + v5) * *(v6 + v5);
    v5 += 8;
  }

  while (v5 != 24);
  v8 = 0;
  v9 = 0.0;
  do
  {
    v9 = v9 + *(v6 + v8) * *(&v18 + v8);
    v8 += 8;
  }

  while (v8 != 24);
  v10 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + *(&v18 + v10) * *(&v18 + v10);
    v10 += 8;
  }

  while (v10 != 24);
  v12 = v9 + v9;
  v13 = v7 * -4.0 * (v11 - *(a1 + 24) * *(a1 + 24)) + v12 * v12;
  if (v13 >= 0.0)
  {
    v14 = sqrt(v13);
    v15 = (v14 + v12) * -0.5 / v7;
    v16 = (v14 - v12) * 0.5 / v7;
    if (v15 >= 0.0)
    {
      *a3 = v15;
      a3 = a4;
LABEL_12:
      *a3 = v16;
      return 1;
    }

    if (v16 >= 0.0)
    {
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t ecs2::Runtime::_entities<md::ita::BuildRouteLineFrameGraph,md::ls::FrameGraphBuilder &,md::ls::PassCount &,md::ls::FrameBufferDesc const&,md::ls::PassRoutelineMaskConfiguration const&,md::ls::PassDeviceCapabilities const&>(uint64_t a1, uint64_t **a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphBuilder>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PassCount>(v2);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FrameBufferDesc>(v2);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassRoutelineMaskConfiguration>(v2);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PassDeviceCapabilities>(v2);
  v60 = v3;
  v61 = v4;
  v62 = v5;
  v63 = v6;
  v8 = 8;
  v9 = v3;
  v10 = &v60;
  v64 = v7;
  do
  {
    if ((*(&v60 + v8))[5] - (*(&v60 + v8))[4] < *(v9 + 40) - *(v9 + 32))
    {
      v9 = *(&v60 + v8);
      v10 = (&v60 + v8);
    }

    v8 += 8;
  }

  while (v8 != 40);
  v12 = *(*v10 + 4);
  v11 = *(*v10 + 5);
  v51 = v12;
  v52 = v11;
  v53 = v3;
  v54 = v4;
  v55 = v5;
  v56 = v6;
  v57 = v7;
  v50 = v11;
  while (v12 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v51, *v12, v12[1]))
  {
    v12 += 2;
    v51 = v12;
    v11 = v50;
  }

  v13 = v51;
  v48 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v47 = result;
  if (v13 == v50)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = v13[1];
      v17 = (v16 >> 3) & 0x1FF8;
      v18 = v16 & 0x3F;
      v19 = *(*(*(v53 + 8) + v17) + 4 * v18 + 2);
      v20 = *(*(v53 + 56) + ((v19 >> 3) & 0x1FF8));
      v21 = *(*(*(v55 + 8) + v17) + 4 * v18 + 2);
      v22 = *(*(v55 + 56) + ((v21 >> 3) & 0x1FF8));
      v23 = *(*(*(v56 + 8) + v17) + 4 * v18 + 2);
      v24 = *(*(v56 + 56) + ((v23 >> 3) & 0x1FF8));
      v25 = *(*(*(v57 + 8) + v17) + 4 * v18 + 2);
      v26 = *(*(v57 + 56) + ((v25 >> 3) & 0x1FF8));
      *(v48 + 104 * *v47 + 24) = *v13;
      v27 = a2;
      v28 = a2[1];
      if (!v28)
      {
        v29 = **a2;
        v30 = *v29;
        v31 = *(v29 + 8);
        if (v30 == v31)
        {
          goto LABEL_13;
        }

        while (*v30 != 0xD369A4D92C8FFE6CLL)
        {
          v28 = 0;
          v30 += 5;
          if (v30 == v31)
          {
            goto LABEL_14;
          }
        }

        if (v30 == v31)
        {
LABEL_13:
          v28 = 0;
        }

        else
        {
          v28 = v30[3];
          v40 = v30[4];
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v40);
            v27 = a2;
          }
        }

LABEL_14:
        v27[1] = v28;
      }

      v32 = (*(*v28 + 8))(v28);
      if (v32)
      {
        v33 = *(v20 + 8 * (v19 & 0x3F));
        v34 = v24 + 8 * (v23 & 0x3F);
        v35 = md::StandardPassList::_buildRouteLineMaskFrameGraph(v32, *(v34 + 4), v34, v26 + (v25 & 0x3F), v22 + 8 * (v21 & 0x3F), v33);
        if (*(v34 + 4) == 1)
        {
          v36 = ecs2::ExecutionTaskContext::currentEntity(v35);
          v59[0] = &unk_1F2A55590;
          v59[1] = v36 << 32;
          v59[3] = v59;
          v63 = &v60;
          v60 = &unk_1F2A55590;
          v61 = v36 << 32;
          LODWORD(v64) = 0;
          ecs2::Runtime::queueCommand();
          if (v64 != -1)
          {
            (off_1F2A54620[v64])(&v58, &v60);
          }

          LODWORD(v64) = -1;
          std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v59);
        }
      }

      ++v15;
      v37 = v52;
      v38 = v51 + 2;
      while (1)
      {
        v13 = v38;
        v51 = v38;
        if (v38 == v37)
        {
          break;
        }

        v39 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v51, *v38, v38[1]);
        v38 = v13 + 2;
        if (v39)
        {
          v37 = v13;
          break;
        }
      }
    }

    while (v37 != v50);
    ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphBuilder>(*(a1 + 8));
    result = ecs2::BasicRegistry<void>::didWrite<md::ls::PassCount>(*(a1 + 8));
  }

  *(v48 + 104 * *v47 + 24) = -65536;
  v41 = v48 + 104 * *v47;
  v42 = *(v41 + 92);
  *(v41 + 92) = v42 + 1;
  *(v41 + 4 * v42 + 28) = v15;
  v43 = v48 + 104 * *v47;
  v45 = *(v43 + 92);
  v44 = (v43 + 92);
  if (v45 >= 0x10)
  {
    *v44 = 0;
  }

  return result;
}

uint64_t geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(uint64_t a1, double *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = sqrt(v3 * v3 + v4 * v4);
  v7 = atan2(v5, v6 * 0.996647189);
  v8 = atan2(v4, v3);
  v9 = __sincos_stret(v7);
  v10 = atan2(v5 + v9.__sinval * v9.__sinval * 42841.3115 * v9.__sinval, v6 + v9.__cosval * v9.__cosval * -42697.6727 * v9.__cosval);
  v11 = __sincos_stret(v10);
  *a1 = v10;
  *(a1 + 8) = v8;
  *(a1 + 16) = v6 / v11.__cosval + -6378137.0 / sqrt(v11.__sinval * v11.__sinval * -0.00669437999 + 1.0);
  return a1;
}

void md::ita::CheckIfReadyToProcess::operator()(uint64_t **a1)
{
  v18[8] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v2 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    a1[1] = v2;
  }

  v3 = (**v2)(v2);
  v17 = md::LayoutContext::get<md::MeshRenderableContext>(*(v3 + 8));
  v4 = md::LayoutContext::get<md::ElevationContext>(*(v3 + 8));
  v5 = a1[2];
  if (!v5)
  {
    v6 = **a1;
    v7 = *v6;
    v8 = *(v6 + 8);
    if (v7 == v8)
    {
      goto LABEL_7;
    }

    while (*v7 != 0x41D4E9297E100630)
    {
      v7 += 5;
      if (v7 == v8)
      {
        goto LABEL_7;
      }
    }

    if (v7 == v8)
    {
LABEL_7:
      v5 = 0;
    }

    else
    {
      v5 = v7[3];
      v9 = v7[4];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }
    }

    a1[2] = v5;
  }

  v16 = v5;
  v10 = *(v3 + 8);
  v11 = gdc::Context::get<md::StyleLogicContext>(v10);
  v15 = md::LayoutContext::get<md::FlyoverCompleteTileDataContext>(v10);
  v12 = md::LayoutContext::get<md::LightingLogicContext>(*(v3 + 8));
  v14 = 0;
  if (v11)
  {
    v18[0] = &unk_1F2A1A240;
    v18[1] = &v14;
    v18[3] = v18;
    md::StyleLogicContext::parseEvents(v11, v18);
    std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v18);
    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | *(v4 + 6);
  if (v12)
  {
    if (*(v12 + 260) == 1)
    {
      v14 = 1;
    }
  }

  operator new();
}

void *md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext,md::ElevationContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x99BED48DEFBBD82BLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x1AF456233693CD46))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8BD499FBD96FBB9ELL);
  if (result && (v11 = result[5], *(v11 + 8) == 0x8BD499FBD96FBB9ELL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  return result;
}

void ggl::MetalResourceManager::onRenderDataReleased(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 9);
  v5 = v4 >= 9;
  v7 = v4 == 9;
  v6 = (1 << v4) & 0x2E7;
  v7 = !v7 && v5 || v6 == 0;
  if (v7)
  {

    ggl::MetalResourceManager::deleteResource(a1, a2);
  }

  else
  {
    v9[6] = v2;
    v9[7] = v3;
    v8 = *(a1 + 272);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZN3ggl20MetalResourceManager20onRenderDataReleasedEPNS_14RenderResourceE_block_invoke;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = a1;
    v9[5] = a2;
    dispatch_sync(v8, v9);
  }
}

uint64_t md::Logic<md::mun::MuninLogic,md::mun::MuninContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x8EA84A1BD3791AFALL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext,md::ElevationContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::RouteRenderLayer::prepare(md::RouteRenderLayer *this, md::LayoutContext *a2)
{
  v108 = *MEMORY[0x1E69E9840];
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 1), 0x13043386C0978CC2uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x13043386C0978CC2))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  (*(**(this + 9) + 104))(*(this + 9), v6 + 104, 1);
  (*(**(this + 9) + 104))(*(this + 9), v6, 0);
  v7 = *(this + 8);
  v8 = v7[1];
  v93 = *v7;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v7);
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((*(this + 8) + 24));
  v9 = *(a2 + 1);
  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v9, 0xE42D19AFCA302E68);
  v12 = v10 && (v11 = v10[5], *(v11 + 8) == 0xE42D19AFCA302E68) && (v85 = *(v11 + 32)) != 0 && (*(v85 + 88) - 3) < 2;
  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v9, 0x1AF456233693CD46uLL);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0x1AF456233693CD46))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  v16 = **(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v9, 0x8BD499FBD96FBB9ELL)[5] + 32);
  v98 = *(this + 8);
  v17 = (*(**(this + 9) + 112))(*(this + 9));
  v18 = *v17;
  v95 = v17 + 1;
  if (*v17 != v17 + 1)
  {
    v92 = 0;
    v91 = v15;
    v19 = v15 + 2920;
    v89 = v16;
    v90 = 0;
    v94 = v12 | v16;
    while (1)
    {
      v96 = v18;
      v20 = v18[4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v22 = v20;
      v97 = v22;
      if ((isKindOfClass & 1) == 0)
      {
        md::StandardRouteOverlayCache::getInternalOverlay(&v104, *(this + 9), v22);
        v76 = v104;
        if (v104)
        {
          extractExternalOverlayState(v22, &v104);
          [*(v76 + 160) setSimplificationEpsilonPoints:*(*(this + 8) + 76)];
          if ((v89 & 1) != 0 || *(v76 + 625) != 1)
          {
LABEL_97:
            std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](v98, &v104);
          }

          else
          {
            v77 = md::rectFromGEOMapRegion<double>(*v76);
            v78 = 0;
            v79 = buf;
            *buf = v77;
            *&buf[8] = v80;
            *&buf[16] = v81;
            *&buf[24] = v82;
            v83 = 1;
            while (*&buf[8 * v78 + 16] > *(v19 + 8 * v78) && *v79 < *(v91 + 2936 + 8 * v78))
            {
              v84 = v83;
              v83 = 0;
              v79 = &buf[8];
              v78 = 1;
              if ((v84 & 1) == 0)
              {
                goto LABEL_97;
              }
            }

            ++v90;
          }
        }

        goto LABEL_78;
      }

      md::StandardRouteOverlayCache::getInternalOverlay(&v104, *(this + 9), v22);
      v23 = v104;
      if (v104)
      {
        v24 = [v22 boundingMapRegion];
        v25 = *(v23 + 88);
        *(v23 + 88) = v24;

        v27 = (v23 + 8);
        v26 = *v23;
        if (*v23 != v23 + 8)
        {
          do
          {
            v29 = v26[4];
            v28 = v26[5];
            *buf = v29;
            *&buf[8] = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v30 = *(v29 + 144);
            extractExternalOverlayState(v30, buf);

            [*(v29 + 160) setSimplificationEpsilonPoints:*(*(this + 8) + 76)];
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v28);
            }

            v31 = v26[1];
            if (v31)
            {
              do
              {
                v32 = v31;
                v31 = *v31;
              }

              while (v31);
            }

            else
            {
              do
              {
                v32 = v26[2];
                v33 = *v32 == v26;
                v26 = v32;
              }

              while (!v33);
            }

            v26 = v32;
          }

          while (v32 != v27);
        }

        if ((v94 & 1) != 0 || *(v23 + 136) != 1)
        {
          std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>((v98 + 3), &v104);
          v48 = *v23;
          if (*v23 != v27)
          {
            v49 = 0;
            v50 = v98[1];
            v51 = v48;
            do
            {
              v52 = v49;
              v53 = v51[1];
              if (v53)
              {
                do
                {
                  v54 = v53;
                  v53 = *v53;
                }

                while (v53);
              }

              else
              {
                do
                {
                  v54 = v51[2];
                  v33 = *v54 == v51;
                  v51 = v54;
                }

                while (!v33);
              }

              ++v49;
              v51 = v54;
            }

            while (v54 != v27);
            v55 = v98[2];
            if (v52 >= (v55 - v50) >> 4)
            {
              v59 = v50 - *v98;
              v60 = v49 + (v59 >> 4);
              if (v60 >> 60)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v61 = v55 - *v98;
              if (v61 >> 3 > v60)
              {
                v60 = v61 >> 3;
              }

              if (v61 >= 0x7FFFFFFFFFFFFFF0)
              {
                v62 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v62 = v60;
              }

              v107 = v98;
              if (v62)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v62);
              }

              v67 = (16 * (v59 >> 4));
              *buf = 0;
              *&buf[8] = v67;
              *&buf[16] = v67;
              v63 = &v67[2 * v49];
              do
              {
                *v67 = v48[4];
                v64 = v48[5];
                v67[1] = v64;
                if (v64)
                {
                  atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
                }

                v65 = v48[1];
                if (v65)
                {
                  do
                  {
                    v66 = v65;
                    v65 = *v65;
                  }

                  while (v65);
                }

                else
                {
                  do
                  {
                    v66 = v48[2];
                    v33 = *v66 == v48;
                    v48 = v66;
                  }

                  while (!v33);
                }

                v67 += 2;
                v48 = v66;
              }

              while (v67 != v63);
              *&buf[16] = v63;
              memcpy(v63, v50, v98[1] - v50);
              *&buf[16] += v98[1] - v50;
              v98[1] = v50;
              v68 = v50 - *v98;
              v69 = *&buf[8] - v68;
              memcpy((*&buf[8] - v68), *v98, v68);
              v70 = *v98;
              *v98 = v69;
              v71 = v98[2];
              v72 = *&buf[16];
              *&buf[8] = v70;
              *&buf[16] = v70;
              *(v98 + 1) = v72;
              *&buf[24] = v71;
              *buf = v70;
              std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(buf);
            }

            else
            {
              do
              {
                *v50 = v48[4];
                v56 = v48[5];
                v50[1] = v56;
                if (v56)
                {
                  atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
                }

                v57 = v48[1];
                if (v57)
                {
                  do
                  {
                    v58 = v57;
                    v57 = *v57;
                  }

                  while (v57);
                }

                else
                {
                  do
                  {
                    v58 = v48[2];
                    v33 = *v58 == v48;
                    v48 = v58;
                  }

                  while (!v33);
                }

                v50 += 2;
                v48 = v58;
              }

              while (v58 != v27);
              v98[1] = v50;
            }
          }

          goto LABEL_78;
        }

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v34 = [v97 polylines];
        v35 = [v34 countByEnumeratingWithState:&v100 objects:v105 count:16];
        if (!v35)
        {

LABEL_88:
          ++v92;
          goto LABEL_78;
        }

        v88 = v8;
        v36 = 0;
        v37 = *v101;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v101 != v37)
            {
              objc_enumerationMutation(v34);
            }

            md::StandardRouteOverlayCache::getInternalOverlay(&v99, *(this + 9), *(*(&v100 + 1) + 8 * i));
            v39 = md::rectFromGEOMapRegion<double>(*v99);
            v40 = 0;
            *buf = v39;
            *&buf[8] = v41;
            v42 = buf;
            v43 = 1;
            *&buf[16] = v44;
            *&buf[24] = v45;
            while (1)
            {
              v46 = *&buf[8 * v40 + 16];
              if (v46 <= *(v19 + 8 * v40))
              {
                break;
              }

              v46 = *v42;
              if (*v42 >= *(v91 + 2936 + 8 * v40))
              {
                break;
              }

              v47 = v43;
              v43 = 0;
              v42 = &buf[8];
              v40 = 1;
              if ((v47 & 1) == 0)
              {
                std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](v98, &v99);
                v36 = 1;
                break;
              }
            }

            if (*(&v99 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v99 + 1));
            }
          }

          v35 = [v34 countByEnumeratingWithState:&v100 objects:v105 count:{16, v46}];
        }

        while (v35);

        v8 = v88;
        if ((v36 & 1) == 0)
        {
          goto LABEL_88;
        }

        std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>((v98 + 3), &v104);
      }

LABEL_78:
      if (*(&v104 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v104 + 1));
      }

      v73 = v96;
      v74 = v96[1];
      if (v74)
      {
        do
        {
          v75 = v74;
          v74 = *v74;
        }

        while (v74);
      }

      else
      {
        do
        {
          v75 = v73[2];
          v33 = *v75 == v73;
          v73 = v75;
        }

        while (!v33);
      }

      v18 = v75;
      if (v75 == v95)
      {
        goto LABEL_103;
      }
    }
  }

  v92 = 0;
  v90 = 0;
LABEL_103:
  v86 = v98[1] - *v98;
  if (v8 - v93 != v86)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v87 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      *&buf[4] = v86 >> 4;
      *&buf[12] = 1024;
      *&buf[14] = v92;
      *&buf[18] = 1024;
      *&buf[20] = v90;
      _os_log_impl(&dword_1B2754000, v87, OS_LOG_TYPE_INFO, "RouteRenderLayer::prepare routelines to process %zu, group culled %d, culled %d", buf, 0x18u);
    }
  }
}

void sub_1B2A3F888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  }

  _Unwind_Resume(a1);
}

BOOL md::DaVinciTransitionManager::doesNeedEngineUpdate(md::DaVinciTransitionManager *this)
{
  if (*(this + 88) == 1)
  {
    if (*(this + 19))
    {
      v2 = 1;
    }

    else
    {
      v2 = *(this + 80) != *(this + 86);
    }
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 42) == 1)
  {
    v12 = *(this + 3);
    v3 = tan(*(this + 2) * 0.5 + 0.785398163);
    v4 = log(v3);
    v5.f64[0] = v12;
    v5.f64[1] = v4;
    __asm { FMOV            V1.2D, #0.5 }

    v13 = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v5);
    return *(this + 87) != (md::DaVinciGroundMetaData::flagsForPoint(*this, v13.f64) & 0xFF00) >> 8 || v2;
  }

  return v2;
}

uint64_t md::FrameGraphBuilder::addRenderPass(unsigned __int8 ***a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1;
  if (*a1 != v7)
  {
    while (**v8 != a2)
    {
      if (++v8 == v7)
      {
        goto LABEL_6;
      }
    }
  }

  if (v8 != v7)
  {
    return 0;
  }

LABEL_6:
  v38 = a2;
  v39 = v7 - v6;
  v40 = 0;
  __p = 0;
  v42 = 0;
  v45[0] = 0;
  v45[1] = 0;
  v43 = 0;
  v44 = v45;
  v46[0] = 0;
  v46[1] = 0;
  v45[2] = v46;
  v37 = &unk_1F2A2A508;
  v50[44] = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  memset(v50, 0, 25);
  v50[48] = 0;
  if (!a4)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    goto LABEL_38;
  }

  (*(*a4 + 48))(a4, &v37);
  v9 = md::FrameGraphRenderPassBuilder::build(&v37, a1[23]);
  v10 = v9;
  v12 = a1[1];
  v11 = a1[2];
  if (v12 >= v11)
  {
    v19 = (v12 - *a1) >> 3;
    if (!((v19 + 1) >> 61))
    {
      v20 = v11 - *a1;
      v21 = v20 >> 2;
      if (v20 >> 2 <= (v19 + 1))
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v22);
      }

      v23 = (8 * v19);
      *v23 = v10;
      v13 = 8 * v19 + 8;
      v24 = a1[1] - *a1;
      v25 = (v23 - v24);
      memcpy(v23 - v24, *a1, v24);
      v26 = *a1;
      *a1 = v25;
      a1[1] = v13;
      a1[2] = 0;
      if (v26)
      {
        operator delete(v26);
      }

      goto LABEL_9;
    }

LABEL_38:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v12 = v9;
  v13 = (v12 + 1);
LABEL_9:
  a1[1] = v13;
  v15 = a1[17];
  v14 = a1[18];
  if (v15 >= v14)
  {
    v27 = a1[16];
    v28 = v15 - v27;
    if ((v28 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v29 = v14 - v27;
    v30 = v29 >> 2;
    if (v29 >> 2 <= (v28 + 1))
    {
      v30 = v28 + 1;
    }

    if (v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      v31 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v30;
    }

    if (v31)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v31);
    }

    v32 = (8 * v28);
    *v32 = a3;
    v16 = 8 * v28 + 8;
    v33 = a1[16];
    v34 = a1[17] - v33;
    v35 = (v32 - v34);
    memcpy(v32 - v34, v33, v34);
    v36 = a1[16];
    a1[16] = v35;
    a1[17] = v16;
    a1[18] = 0;
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *v15 = a3;
    v16 = (v15 + 1);
  }

  a1[17] = v16;
  v17 = *(a1[1] - 1);
  v37 = &unk_1F2A2A4F0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v46[0]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v45[0]);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  return v17;
}

uint64_t md::CartographicRenderer::update(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  for (i = *(result + 48); v2 != i; ++v2)
  {
    result = *v2;
    if (*v2)
    {
      if (*(result + 32) == 1)
      {
        result = (*(*result + 72))(result, a2);
      }
    }
  }

  return result;
}

uint64_t md::Anchor::worldIndexWithContext(md::Anchor *this, const md::CameraContext *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 3056) != 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = (a2 + 2920);
  v7 = (a2 + 2936);
  do
  {
    v8 = v7[v5];
    v9 = v6[v5];
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v8 >= v9);
  v10 = gdc::CameraView::position(a2);
  if (v8 < v9)
  {
    return 0;
  }

  v12 = v10;
  v13 = *v6;
  v14 = -ceil(fabs(*v6));
  if (*v6 < 0.0)
  {
    v13 = v14;
  }

  v15 = v13;
  v16 = *v7;
  v17 = -ceil(fabs(*v7));
  if (*v7 < 0.0)
  {
    v16 = v17;
  }

  v18 = v16;
  (*(*this + 40))(this);
  if (v15 > v18)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  v22 = 1.79769313e308;
  while (1)
  {
    v23 = 0;
    v32[1] = v20;
    v32[2] = v21;
    v32[0] = v19 + v15;
    v24 = a2 + 984;
    do
    {
      v25 = 0;
      v26 = 0.0;
      do
      {
        v26 = v26 + *&v24[v25 * 8] * v32[v25];
        ++v25;
      }

      while (v25 != 3);
      v27 = *(a2 + v23 + 1008) + v26;
      if (v27 < 0.0)
      {
        break;
      }

      v23 += 32;
      v24 += 32;
    }

    while (v23 != 192);
    if (v27 >= 0.0)
    {
      break;
    }

    for (i = 0; i != 3; ++i)
    {
      v32[i + 3] = *(v12 + i * 8) - v32[i];
    }

    v29 = 0;
    v30 = 0.0;
    do
    {
      v30 = v30 + v32[v29 + 3] * v32[v29 + 3];
      ++v29;
    }

    while (v29 != 3);
    if (v30 < v22)
    {
      result = v15;
    }

    v22 = fmin(v30, v22);
    if (v15++ == v18)
    {
      return result;
    }
  }

  return v15;
}

void ___ZN3ggl20MetalResourceManager20onRenderDataReleasedEPNS_14RenderResourceE_block_invoke(ggl::zone_mallocator *a1)
{
  v2 = *(a1 + 4);
  v4 = v2[36];
  v3 = v2[37];
  if (v4 >= v3)
  {
    v6 = v2[35];
    v7 = (v4 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - v6;
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

    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(a1);
      geo::read_write_lock::read_lock((v11 + 32));
      v12 = malloc_type_zone_malloc(*v11, 8 * v10, 0x2004093837F09uLL);
      atomic_fetch_add((v11 + 24), 1u);
      geo::read_write_lock::unlock((v11 + 32));
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *(a1 + 5);
    v5 = v13 + 8;
    v15 = v2[35];
    v16 = v2[36] - v15;
    v17 = &v13[-v16];
    v18 = memcpy(&v13[-v16], v15, v16);
    v19 = v2[35];
    v2[35] = v17;
    v2[36] = v5;
    v2[37] = v14;
    if (v19)
    {
      v20 = ggl::zone_mallocator::instance(v18);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::MetalResource *>(v20, v19);
    }
  }

  else
  {
    *v4 = *(a1 + 5);
    v5 = v4 + 1;
  }

  v2[36] = v5;
}

void md::StandardRouteOverlayCache::update(VKPolylineOverlay *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      v7 = v6[4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        md::StandardRouteOverlayCache::getInternalOverlay(&v36, a1, v7);
        v32 = v36;
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v37);
        }

        if (v32)
        {
          v33 = *(v32 + 625);

          if (v33 == a3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }
      }

LABEL_7:

LABEL_8:
      (*(a1->super.isa + 11))(a1, v7, a3);
LABEL_9:

      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
      if (v13 == v5)
      {
        goto LABEL_19;
      }
    }

    v8 = v7;
    v9 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(&a1[1]._splitSections.__begin_, v8);
    if (v9)
    {
      v11 = v9[3];
      v10 = v9[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);

        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        goto LABEL_6;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_6:
    if (v11)
    {
      v15 = *(v11 + 136);

      if (v15 == a3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  v36 = 0;
  v37 = 0;
  v38 = 0;
  for (i = a1[1]._observers; i; i = *i)
  {
    if (*(*(i + 3) + 625) == a3)
    {
      v26 = *(i + 2);
      v27 = *v5;
      if (!*v5)
      {
        goto LABEL_44;
      }

      v28 = v5;
      do
      {
        v29 = v27[4];
        v22 = v29 >= v26;
        v30 = v29 < v26;
        if (v22)
        {
          v28 = v27;
        }

        v27 = v27[v30];
      }

      while (v27);
      if (v28 == v5 || v26 < v28[4])
      {
LABEL_44:
        v35 = v26;
        std::vector<objc_object  {objcproto14VKRouteOverlay}* {__strong}>::push_back[abi:nn200100](&v36, &v35);
      }
    }
  }

  for (j = a1[1]._splitSections.__cap_; j; j = j->start)
  {
    if (*(*&j[1].end + 136) == a3)
    {
      start = j[1].start;
      v19 = *v5;
      if (!*v5)
      {
        goto LABEL_30;
      }

      v20 = v5;
      do
      {
        v21 = v19[4];
        v22 = v21 >= start;
        v23 = v21 < start;
        if (v22)
        {
          v20 = v19;
        }

        v19 = v19[v23];
      }

      while (v19);
      if (v20 == v5 || start < v20[4])
      {
LABEL_30:
        v34 = start;
        std::vector<objc_object  {objcproto14VKRouteOverlay}* {__strong}>::push_back[abi:nn200100](&v36, &v34);
      }
    }
  }

  v24 = v36;
  v25 = v37;
  while (v24 != v25)
  {
    v31 = *v24;
    (*(a1->super.isa + 12))(a1, v31, a3);

    ++v24;
  }

  v39 = &v36;
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v39);
}

uint64_t md::StandardRouteOverlayCache::addOverlay(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (!std::__hash_table<std::__hash_value_type<VKPolylineGroupOverlay *,std::shared_ptr<md::RouteLineOverlayGroup>>,std::__unordered_map_hasher<std::shared_ptr,std::__unordered_map_hasher,md::RouteLineOverlayGroup::StandardRouteOverlayCache::pointer_hasher<VKPolylineGroupOverlay>,std::equal_to<std::shared_ptr>,true>,std::__unordered_map_equal<std::shared_ptr,std::__unordered_map_hasher,std::__unordered_map_hasher<std::shared_ptr,std::__unordered_map_hasher,md::RouteLineOverlayGroup::StandardRouteOverlayCache::pointer_hasher<VKPolylineGroupOverlay>,std::equal_to<std::shared_ptr>,true>,std::equal_to,true>,std::allocator<std::__unordered_map_hasher>>::find<std::shared_ptr>((a1 + 136), v5))
      {
        operator new();
      }

      if (GEOGetVectorKitRouteLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
      }

      v6 = GEOGetVectorKitRouteLog_log;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "Failed to add overlay %@. It is already being tracked", buf, 0xCu);
      }

      v4 = v5;
    }

    else
    {
      if (!std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((a1 + 96), v4))
      {
        v7 = v4;
        operator new();
      }

      if (GEOGetVectorKitRouteLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
      }

      v5 = GEOGetVectorKitRouteLog_log;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "Failed to add overlay  %@. It is already being tracked", buf, 0xCu);
      }
    }
  }

  return 0;
}

void sub_1B2A410A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v20);
  std::__shared_weak_count::__release_shared[abi:nn200100](v19);

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<VKPolylineGroupOverlay *,std::shared_ptr<md::RouteLineOverlayGroup>>,std::__unordered_map_hasher<std::shared_ptr,std::__unordered_map_hasher,md::RouteLineOverlayGroup::StandardRouteOverlayCache::pointer_hasher<VKPolylineGroupOverlay>,std::equal_to<std::shared_ptr>,true>,std::__unordered_map_equal<std::shared_ptr,std::__unordered_map_hasher,std::__unordered_map_hasher<std::shared_ptr,std::__unordered_map_hasher,md::RouteLineOverlayGroup::StandardRouteOverlayCache::pointer_hasher<VKPolylineGroupOverlay>,std::equal_to<std::shared_ptr>,true>,std::equal_to,true>,std::allocator<std::__unordered_map_hasher>>::find<std::shared_ptr>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
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

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_1B2A412BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1020C40EDED9539);
  }

  _Unwind_Resume(exception_object);
}

void md::MapEngineCallbackGraphService::create(uint64_t a1)
{
  std::__shared_mutex_base::lock((a1 + 8));
  v2 = *(a1 + 216);
  if (!v2)
  {
    geo::Pool<gdc::tf::Taskflow>::allocateSlab(a1 + 176);
    v2 = *(a1 + 216);
  }

  *(a1 + 216) = *v2;
  gdc::tf::Taskflow::Taskflow(v2);
}

void sub_1B2A415EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  std::__shared_mutex_base::unlock((v12 + 8));
  _Unwind_Resume(a1);
}

uint64_t md::ita::CheckIfShouldDeleteRenderable::operator()(uint64_t **a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  if (!v4)
  {
    v5 = **a1;
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v6 == v7)
    {
      goto LABEL_5;
    }

    while (*v6 != 0x41D4E9297E100630)
    {
      v6 += 5;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    if (v6 == v7)
    {
LABEL_5:
      v4 = 0;
    }

    else
    {
      v4 = v6[3];
      v8 = v6[4];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    a1[1] = v4;
  }

  v37 = v4;
  v45[0] = &unk_1F2A1A520;
  v45[1] = &v37;
  v45[2] = a1;
  v46 = v45;
  v9 = *(a2 + 8);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v9);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v9);
  v12 = v11;
  if (*(v11 + 40) - *(v11 + 32) >= *(v10 + 40) - *(v10 + 32))
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v13 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v42, *(v13 + 32), v14, v10, v11);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v41, v14, v14, v10, v12);
  v15 = v42;
  v40 = v44;
  v38 = v42;
  v39 = v43;
  v16 = v41;
  if (v42 == v41)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v17 = v43;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = *(&v42 + 1);
    do
    {
      v22 = v15[1];
      v23 = (v22 >> 3) & 0x1FF8;
      v24 = v22 & 0x3F;
      v25 = *(*(*(v17 + 8) + v23) + 4 * v24 + 2);
      v26 = *(*(v17 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(*(&v17 + 1) + 8) + v23) + 4 * v24 + 2);
      v28 = *(*(*(&v17 + 1) + 56) + ((v27 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v15;
      if (!v46)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v46 + 48))(v46, v26 + 8 * (v25 & 0x3F), v28 + 24 * (v27 & 0x3F));
      ++v20;
      v29 = v15 + 2;
      do
      {
        v15 = v29;
        *&v42 = v29;
        if (v29 == v21)
        {
          break;
        }

        v30 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v42, *v29, v29[1]);
        v29 = v15 + 2;
      }

      while (!v30);
    }

    while (v15 != v16);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v31 = v18 + 104 * *v19;
  v32 = *(v31 + 92);
  *(v31 + 92) = v32 + 1;
  *(v31 + 4 * v32 + 28) = v20;
  v33 = v18 + 104 * *v19;
  v35 = *(v33 + 92);
  v34 = (v33 + 92);
  if (v35 > 0xF)
  {
    *v34 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&)>::~__value_func[abi:nn200100](v45);
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfShouldDeleteRenderable>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfShouldDeleteRenderable>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::CheckIfShouldDeleteRenderable::operator()((a1 + 8), a2);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

void std::__function::__func<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0,std::allocator<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  md::LabelManager::layoutForStaging(*(a1 + 8), (a1 + 24));
  dispatch_semaphore_signal(*(*(a1 + 8) + 216));
  v2 = *(a1 + 8);
  std::recursive_mutex::lock((v2 + 24));
  md::LabelManager::didCompleteBackgroundUpdate(*(a1 + 8), *(a1 + 36));

  std::recursive_mutex::unlock((v2 + 24));
}

void md::LabelManager::layoutForStaging(md::LabelManager *this, const LabelUpdateOptions *a2)
{
  v4 = *(this + 40);
  *(v4 + 136) = 0;
  *(v4 + 8) = 0;
  *(v4 + 88) = 0;
  v5 = *(v4 + 56);
  v6 = *(v4 + 64);
  if (v5 != v6)
  {
    v7 = 0;
    v8 = v6 - v5 - 24;
    v9 = vdupq_n_s64(v8 / 0x18);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v7), xmmword_1B33B0560)));
      if (v10.i8[0])
      {
        *v5 = 0;
      }

      if (v10.i8[4])
      {
        *(v5 + 3) = 0;
      }

      v7 += 2;
      v5 += 48;
    }

    while (((v8 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v7);
  }

  if ((*(*(this + 53) + 21) & 1) != 0 || *(this + 3047) == 1)
  {
    if (*(this + 3046) == 1)
    {
      (*(**(this + 30) + 128))(*(this + 30));
    }

    *(this + 3047) = 0;
  }

  v11 = *(*(this + 42) + 200);
  if (*(v11 + 88) == 1)
  {
    *(v11 + 88) = 256;
    operator new();
  }

  *(*(this + 396) + 160) = a2->var6;
  v12 = *(this + 34);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::clear[abi:nn200100]((v12 + 24));
  *(v12 + 60) = 1;
  (*(**(this + 30) + 48))(*(this + 30), a2);
  md::LabelTextDataLoader::finishBatch(*(this + 34));
  md::FontGlyphCache::finishFrame(*(this + 396));
  if (!*(this + 23) && *(this + 3046) == 1)
  {
    v13 = *(**(this + 30) + 136);

    v13();
  }
}

void sub_1B2A4212C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, char a31, uint64_t a32, std::__shared_weak_count *a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>>>::destroy(a18);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a31)
  {
    (*(*a27 + 56))(a27);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a33);
  }

  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::PassRoutelineMaskConfiguration>(uint64_t a1, unint64_t a2, void *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRoutelineMaskConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassRoutelineMaskConfiguration>();
    unk_1EB83BC90 = 0xCDD99CCED5CBB5CBLL;
    qword_1EB83BC98 = "md::ls::PassRoutelineMaskConfiguration]";
    qword_1EB83BCA0 = 38;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRoutelineMaskConfiguration>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassRoutelineMaskConfiguration>(a1);
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
    goto LABEL_55;
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
    v54 = v27;
    v55 = a3;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v53 = v27 >> 6;
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
      v28 = v53;
      LOBYTE(v27) = v54;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    a3 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  *(*(v30 + 8 * v28) + 8 * (v27 & 0x3F)) = *a3;
  v49 = *(v7 + 152);
  v50 = *(v7 + 160);
  while (v49 != v50)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), a2);
    v49 += 32;
  }

LABEL_55:
  v51 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v51 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v56;

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassRoutelineMaskConfiguration>(a1);
}

NSObject *___ZN3geo9TaskQueue14queueAsyncTaskENSt3__110shared_ptrINS_4TaskEEEPU28objcproto17OS_dispatch_group8NSObject_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(a1 + 64) & 1) == 0)
  {
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  v3 = atomic_load((*(a1 + 48) + 32));
  if ((v3 & 1) == 0)
  {
    v4 = *(*(a1 + 48) + 24);
    if (!v4)
    {
      v7 = std::__throw_bad_function_call[abi:nn200100]();
      return geo::_retain_ptr<VKPolylineGroupOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v7);
    }

    (*(*v4 + 48))(v4);
    atomic_store(1u, (*(a1 + 48) + 33));
  }

  v5 = *(a1 + 40);
  if (v5 && *(a1 + 64) == 1)
  {
    dispatch_group_leave(v5);
  }

  result = *(a1 + 32);
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void *geo::_retain_ptr<VKPolylineGroupOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F29E3D60;
  a1[1] = v3;
  return a1;
}

void md::MapEngineFrameService::requestFrame(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = gdc::ServiceLocator::resolve<md::CallbackGraphService>(**(a1 + 8), *(*(a1 + 8) + 8));
  *v12 = *a2;
  *&v12[9] = *(a2 + 9);
  v13 = *(a2 + 4);
  v14 = *(a2 + 8);
  v15 = 0;
  LOWORD(v16[0]) = 0;
  *&v16[1] = 0u;
  v17 = 0u;
  v18 = 0;
  v11 = 0;
  v4 = (*(*v3 + 16))(v3, &v11);
  v21 = 3;
  v22 = v4;
  v10 = 0;
  v5 = (*(*v3 + 16))(v3, &v10);
  v23 = 1;
  v24 = v5;
  v9 = 0;
  v6 = (*(*v3 + 16))(v3, &v9);
  v25 = 0;
  v26 = v6;
  v8 = 0;
  v7 = (*(*v3 + 16))(v3, &v8);
  v27 = 2;
  v28 = v7;
  v20 = 0;
  v19 = 0uLL;
  operator new();
}

void sub_1B2A42C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  md::MapEngineFrameService::Data::~Data(va);
  _Unwind_Resume(a1);
}

uint64_t md::CompositeLabeler::layoutForStaging(uint64_t this, const LabelUpdateOptions *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = (*(*v5 + 48))(v5, a2))
  {
    v5 = *v2++;
  }

  return this;
}

void md::MapNavLabeler::layoutForStaging(md::MapNavLabeler *this, const LabelUpdateOptions *a2)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v4 = *(this + 8);
  v5 = *(*(*(v4 + 8) + 424) + 26) == 2;
  v6 = *(v4 + 277);
  if (v6 != v5)
  {
    *(v4 + 277) = v5;
  }

  if (*(v4 + 274) == 1)
  {
    md::RouteLineSupport::generateWaypointFeatures(v4);
    md::RouteLineSupport::updateWaypointFeatureIDs(v4);
    md::RouteLineSupport::updateRouteLine(v4, v7);
    if ((*(v4 + 274) & 1) != 0 || md::RouteLineSupport::didCurrentWaypointChange(v4))
    {
      md::RouteLineSupport::updateWaypointProximities(v4);
    }

    goto LABEL_7;
  }

  if (md::RouteLineSupport::didCurrentWaypointChange(v4))
  {
    updated = md::RouteLineSupport::updateWaypointProximities(v4);
    if (v6 != v5 || (updated & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  else if (v6 != v5)
  {
LABEL_7:
    md::RouteLineSupport::generateWaypointClusters(v4);
    md::RouteLineSupport::restyleFeatures(v4);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v8 = *(v4 + 88);
  v9 = *(v4 + 96);
  if (v8 != v9)
  {
    do
    {
      if (*(*v8 + 737) != 2)
      {
        v10 = *(*v8 + 720);
        md::LabelExternalPointFeature::incident(v10);
        objc_claimAutoreleasedReturnValue();
        if (v10 && [v10 needsTextUpdate])
        {
          v26[0] = *v8;
          std::vector<md::TransitConnectedNode *>::push_back[abi:nn200100](&v21, v26);
        }
      }

      v8 += 16;
    }

    while (v8 != v9);
    v11 = v21;
    v12 = v22;
    if (v21 != v22)
    {
      v13 = v21;
      do
      {
        v14 = *(*v13 + 720);
        md::LabelExternalPointFeature::incident(v14);
        [objc_claimAutoreleasedReturnValue() setNeedsTextUpdate:0];
        v15 = (*(**v13 + 72))();
        md::WaypointStore::updateExternalFeatureText(v15, v14, v16);
        (*(**v13 + 32))(*v13, 0, 0);
        (*(**v13 + 552))(*v13, *(v4 + 8));

        ++v13;
      }

      while (v13 != v12);
    }

    if (v11)
    {
      operator delete(v11);
    }
  }

  *(v4 + 274) = 0;
  v17 = *(this + 3);
  v18 = v17[53];
  v21 = &unk_1F29EFAF8;
  v22 = v17;
  v23 = this;
  v24 = v18;
  v25 = this + 136;
  if (*(this + 13))
  {
    v19 = *(this + 90);
    if (*(v19 + 24))
    {
      if (*(this + 713) == 1)
      {
        *(this + 713) = 0;
        md::LabelNavEtaLabeler::handleRouteContextStateChange(v19);
      }

      md::MapNavLabeler::buildAvoidanceRects(v26, this, &v21, 0);
      md::LabelNavEtaLabeler::layoutForStagingWithNavContext(*(this + 90), &v21, v26);
      std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v26);
    }
  }

  if (((*(*this + 360))(this) & 1) != 0 || *(*(*(this + 3) + 336) + 163) << 16 == 393216 || (*(*this + 384))(this))
  {
    md::MapNavLabeler::buildAvoidanceRects(v26, this, &v21, 1);
    [*(this + 7) layoutForStagingWithNavContext:&v21 avoidanceRects:v26 options:a2];
    std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v26);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassRouteLineDescriptor>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>(void)::metadata >= 0x200)
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

void md::StandardRouteOverlayCache::getInternalOverlay(md::StandardRouteOverlayCache *this, VKPolylineGroupOverlay *a2, void *a3)
{
  v7 = a3;
  v5 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(&a2[2]._polylines, v7);
  if (v5)
  {
    v6 = v5[4];
    *this = v5[3];
    *(this + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }
}

BOOL md::RouteLineSupport::didCurrentWaypointChange(md::RouteLineSupport *this)
{
  v2 = *(this + 33);
  v3 = *(this + 3);
  v4 = [v3 currentWaypoint];
  if (v2 == v4)
  {
    v5 = *(this + 272);
    v6 = v5 != [*(this + 3) currentWaypointProximity];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void ggl::RenderTransaction::~RenderTransaction(ggl::RenderTransaction *this)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 64);
  std::__function::__value_func<void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::~__value_func[abi:nn200100](this + 32);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

uint64_t md::VenueRenderLayer::prepare(void *a1, uint64_t a2)
{
  result = (*(*a1 + 104))(a1);
  if (a1[34] != a1[35])
  {
    **(a2 + 744) = 1;
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x99BED48DEFBBD82BLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  (*(*a1 + 144))(a1, v6);
  if (((*(*a1 + 200))(a1) & 1) == 0)
  {
    v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x99BED48DEFBBD82BLL);
    if (v7)
    {
      v8 = v7[5];
      if (*(v8 + 8) == 0x99BED48DEFBBD82BLL)
      {
        v9 = *(v8 + 32);
        if (v9)
        {
          (*(*a1 + 160))(a1, v9);
          v10 = a1[22];
          if (v10 != a1 + 23)
          {
            do
            {
              FillRect = grl::IconMetricsRenderResult::getFillRect(v10[4]);
              v29 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(a1 + 11, FillRect);
              if (v29)
              {
                v30 = v29;
                v32 = a1[34];
                v31 = a1[35];
                if (v32 != v31)
                {
                  while (*v32 != *(v29 + 16))
                  {
                    v32 += 8;
                    if (v32 == v31)
                    {
                      v32 = a1[35];
                      break;
                    }
                  }
                }

                v33 = v31 - (v32 + 8);
                if (v31 != v32 + 8)
                {
                  memmove(v32, v32 + 8, v31 - (v32 + 8));
                }

                a1[35] = &v32[v33];
                v34 = *(v30 + 16);
                if (v34 && a1[30])
                {
                  (**v34)(*(v30 + 16));
                  *v34 = a1[33];
                  a1[33] = v34;
                }

                std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::erase(a1 + 11, v30);
              }

              v35 = v10[1];
              if (v35)
              {
                do
                {
                  v36 = v35;
                  v35 = *v35;
                }

                while (v35);
              }

              else
              {
                do
                {
                  v36 = v10[2];
                  v37 = *v36 == v10;
                  v10 = v36;
                }

                while (!v37);
              }

              v10 = v36;
            }

            while (v36 != a1 + 23);
          }

          (*(*a1 + 168))(&__p, a1, a2);
          std::vector<md::RoadPosition *>::__insert_with_size[abi:nn200100]<std::__wrap_iter<md::RoadPosition **>,std::__wrap_iter<md::RoadPosition **>>((a1 + 34), a1[35], __p, v42, (v42 - __p) >> 3);
          if (*(a1 + 86) == 2)
          {
            v11 = a1[34];
            v12 = a1[35];
            while (v11 != v12)
            {
              (*(*a1 + 184))(a1, v9, *v11++);
            }
          }

          v13 = (*(*a1 + 176))(a1, v9);
          v14 = a1[35];
          v39 = v13;
          v40 = v14;
          if (*(a1 + 13) == 1)
          {
            v38[0] = __p;
            v38[1] = v42;
            v15 = a1[34];
            v43 = a1;
            v44 = a2;
            v16 = std::__partition_impl[abi:nn200100]<md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::legacyCollectRenderables(md::LayoutContext const&)::{lambda(md::MapTileDataRenderable<md::VenueTileData>*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::MapTileDataRenderable<md::VenueTileData>**>,std::__wrap_iter<md::MapTileDataRenderable<md::VenueTileData>**>>(v15, v13, &v43);
            v43 = a1[34];
            v44 = v16;
            (*(*a1 + 120))(a1, &v39);
            (*(*a1 + 112))(a1, a2, v38);
            (*(*a1 + 128))(a1, a2, &v43);
            v13 = (*(*a1 + 176))(a1, v9);
            v14 = a1[35];
            v39 = v13;
            v40 = v14;
          }

          std::vector<md::DaVinciRoadTileDataRenderable *>::__insert_with_size[abi:nn200100]<std::__wrap_iter<md::DaVinciRoadTileDataRenderable * const*>,std::__wrap_iter<md::DaVinciRoadTileDataRenderable * const*>>(a1 + 37, a1[38], v13, v14, (v14 - v13) >> 3);
          v17 = v39;
          if (v39 != v40)
          {
            v18 = a1[35];
            v19 = v18 - v40;
            if (v18 != v40)
            {
              memmove(v39, v40, v18 - v40);
            }

            a1[35] = &v17[v19];
          }

          v20 = a1[37];
          v21 = a1[38];
          if (v21 != v20)
          {
            do
            {
              v22 = *v20;
              if (*v20 && a1[30])
              {
                (**v22)(*v20);
                *v22 = a1[33];
                a1[33] = v22;
              }

              ++v20;
            }

            while (v20 != v21);
            v20 = a1[37];
          }

          a1[38] = v20;
          (*(*a1 + 192))(a1);
          if (__p)
          {
            v42 = __p;
            operator delete(__p);
          }
        }
      }
    }
  }

  v23 = (*(*a1 + 96))(a1, a2);
  v24 = v23;
  if (a1[10])
  {
    v25 = *v23;
    v26 = v23[1];
    std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::__value_func[abi:nn200100](v45, (a1 + 7));
    std::sort[abi:nn200100]<std::__wrap_iter<md::MapTileDataRenderable<md::VenueTileData> **>,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>>(v25, v26, v45);
    std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::~__value_func[abi:nn200100](v45);
  }

  return (*(*a1 + 152))(a1, v24, a2);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::EndFrameGraphPreparation>,std::allocator<ecs2::ForwardToExecute<md::ita::EndFrameGraphPreparation>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::EndFrameGraphPreparation,md::ls::FrameGraphBuilder &,md::ls::PreviousResourceStamp const&,md::ls::PassCount const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t *ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(uint64_t **a1)
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

    while (*v4 != 0xC94DD89A7B09BE9CLL)
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

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_19;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_19:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

void md::StandardLabeler::layoutForStaging(md::StandardLabeler *this, const LabelUpdateOptions *a2)
{
  if (a2->var0 || a2->var1)
  {
    LOBYTE(v97.__vftable) = 0;
    md::LabelPool::updateLabelsFromFeatureSources(*(this + 6), a2, &v97);
    if (!a2->var5)
    {
      *(this + 370) |= LOBYTE(v97.__vftable);
    }
  }

  if (!a2->var2)
  {
    if (a2->var3)
    {

      md::StandardLabeler::layoutDisplayableLabelsForStaging(this);
    }

    return;
  }

  v4 = *(this + 6);
  v5 = *(*(*(v4 + 8) + 168) + 32);
  v6 = (*(*v5 + 80))(v5);
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 256) != *(v4 + 740);
  }

  else
  {
    v8 = 0;
  }

  if ((*(v4 + 758) & 1) != 0 || *(*(v4 + 624) + 224) != *(v4 + 736) || v8)
  {
    goto LABEL_10;
  }

  v85 = *(this + 9);
  v86 = *(this + 10);
  if (v85 == v86)
  {
    goto LABEL_185;
  }

  v87 = 0;
  v88 = 0;
  do
  {
    while (1)
    {
      while (v87)
      {
        v85 += 16;
        v87 = 1;
        if (v85 == v86)
        {
          goto LABEL_10;
        }
      }

      v89 = *v85;
      if (!*(*v85 + 844) && (v89[1339] & 1) == 0)
      {
        break;
      }

LABEL_177:
      if (v89[848] == 1)
      {
        goto LABEL_183;
      }

      v87 = 0;
      v85 += 16;
      if (v85 == v86)
      {
        goto LABEL_185;
      }
    }

    if (atomic_load(v89 + 1385))
    {
      v89 = *v85;
      goto LABEL_177;
    }

LABEL_183:
    v87 = ++v88 > 4;
    v85 += 16;
  }

  while (v85 != v86);
  if (v88 < 5)
  {
    goto LABEL_185;
  }

LABEL_10:
  v9 = *(v4 + 624);
  v10 = *(v9 + 208);
  v92 = v9;
  *(v4 + 736) = *(v9 + 224);
  *(v4 + 758) = 0;
  v11 = *(v4 + 704);
  if (v11)
  {
    v12 = (*(**(v11 + 8) + 184))(*(v11 + 8));
    v96 = v13;
    v94 = v12;
  }

  else
  {
    v94 = 0;
    v96 = 0;
  }

  v14 = *(v4 + 720);
  if (v14)
  {
    v15 = (*(**(v14 + 8) + 184))(*(v14 + 8));
    v95 = v16;
    v91 = v15;
  }

  else
  {
    v91 = 0;
    v95 = 0;
  }

  if (v7)
  {
    *(v4 + 740) = *(v7 + 256);
    v93 = (v7 + 120);
    v17 = *(v7 + 160) == 0;
  }

  else
  {
    v93 = 0;
    v17 = 1;
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 9);
  v20 = *(v4 + 248);
  v21 = *(this + 9);
  if (v20 > (*(this + 11) - v21) >> 4)
  {
    if (v20 >> 60)
    {
      goto LABEL_192;
    }

    v22 = *(this + 10) - v21;
    v99 = this + 96;
    v23 = mdm::zone_mallocator::instance(v18);
    v24 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::Label>>(v23, v20);
    v25 = &v24[v22];
    v26 = &v24[16 * v20];
    v27 = *(this + 9);
    v28 = *(this + 10) - v27;
    v29 = &v25[-v28];
    memcpy(&v25[-v28], v27, v28);
    v30 = *(this + 9);
    *(this + 9) = v29;
    *(this + 10) = v25;
    v31 = *(this + 11);
    *(this + 11) = v26;
    v97.__shared_weak_owners_ = v30;
    v98 = v31;
    v97.__vftable = v30;
    v97.__shared_owners_ = v30;
    std::__split_buffer<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator> &>::~__split_buffer(&v97);
  }

  *(v4 + 616) = 0;
  v32 = *(v4 + 224);
  if (v32 != (v4 + 232))
  {
    while (2)
    {
      v33 = (v32 + 6);
      v34 = v32[6];
      if (!v34[844] && (v34[1339] & 1) == 0)
      {
        v38 = atomic_load(v34 + 1385);
        v34 = *v33;
        if (!v38)
        {
          atomic_store(0, v34 + 1330);
          v39 = atomic_load(v34 + 1330);
          if ((v39 & 1) == 0)
          {
            *(v34 + 44) = 0;
          }

          md::Label::setActive(v32[6], 0, v19);
          v40 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::erase(v4 + 224, v32);
LABEL_87:
          v32 = v40;
          if (v40 == (v4 + 232))
          {
            goto LABEL_95;
          }

          continue;
        }
      }

      break;
    }

    v35 = v34;
    if (!v34[1297])
    {
      v35 = v34;
      if (!v34[38])
      {
        v41 = (*(**(v34 + 1) + 320))(*(v34 + 1));
        v35 = *v33;
        if (v41)
        {
          if (v35[848] == 1)
          {
            v35[848] = 0;
            v35[1350] = 0;
            goto LABEL_78;
          }

LABEL_81:
          std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::Label> const&>(this + 3, v32 + 3);
          goto LABEL_82;
        }
      }
    }

    if (v35[1291] - 20 >= 3)
    {
      v36 = v96 && v35 != *(v4 + 704) && v94 == (*(**(v34 + 1) + 184))(*(v34 + 1)) && v96 == v37;
      if (v95 && (v36 & 1) == 0)
      {
        v42 = *v33;
        v43 = *(v4 + 720);
        if ((*v33)[1352] == 1)
        {
          v44 = v43[1352] != 1 || v42 == v43;
          if (v44)
          {
            goto LABEL_23;
          }
        }

        else if (v42 == v43)
        {
          goto LABEL_23;
        }

        if (v91 != (*(**(v34 + 1) + 184))(*(v34 + 1)))
        {
          goto LABEL_23;
        }

        v36 = v95 == v58;
      }
    }

    else
    {
LABEL_23:
      v36 = 0;
    }

    v35 = *v33;
    if (v10 && (v36 & 1) == 0)
    {
      if (v35[1352])
      {
        v36 = 0;
      }

      else
      {
        v45 = (*(**(v34 + 1) + 184))(*(v34 + 1));
        if (v46)
        {
          v36 = std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::find<md::LabelFeatureID>((v92 + 168), v45, v46) != 0;
        }

        else
        {
          v36 = 0;
        }

        v35 = *v33;
      }
    }

    if (((v17 | v36) & 1) == 0)
    {
      if (v35[1291] - 20 >= 3)
      {
        v53 = (*(**(v34 + 1) + 184))(*(v34 + 1));
        if (v54)
        {
          v36 = std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::find<md::LabelFeatureID>(v93, v53, v54) != 0;
        }

        else
        {
          v36 = 0;
        }

        v35 = *v33;
      }

      else
      {
        v36 = 0;
      }
    }

    if (*(v4 + 664))
    {
      v47 = (*(*v35 + 32))(v35);

      v35 = *v33;
      if (v47)
      {
        v48 = (*(*v35 + 32))(*v33);
        v97.__vftable = v48;
        v49 = *(v4 + 664);
        if (!v49)
        {
          std::__throw_bad_function_call[abi:nn200100]();
LABEL_192:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v50 = (*(*v49 + 48))(v49, &v97);

        v36 |= v50;
        v35 = *v33;
      }
    }

    if (v36 == v35[848])
    {
      if (!v36)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v35[848] = v36;
      v35[1350] = 0;
      if (!v36)
      {
LABEL_78:
        if ((v35[1339] & 1) == 0)
        {
          md::Label::clearStagingParts(v35);
        }

        v35[1295] = -1;
        goto LABEL_81;
      }

      v55 = md::LabelPool::replacementForLabel(v4, v35);
      if (v55)
      {
        v35[1350] = 1;
        *(v35 + 164) = 0;
        v56 = atomic_load((v55 + 1328));
        if ((v56 & 1) != 0 && (v35[1333] & 1) == 0 && v35[846] != 1)
        {
          v35[850] = 1;
        }
      }

      else
      {
        md::Label::updateStateMachineForStaging(v35, 2, 28);
      }

      v35 = *v33;
    }

    if (v35[1350])
    {
      goto LABEL_81;
    }

    v51 = atomic_load(v35 + 1328);
    if (v51)
    {
      goto LABEL_81;
    }

    if ((*v33)[844] == 2)
    {
      goto LABEL_81;
    }

    v52 = atomic_load(*v33 + 1331);
    if (v52)
    {
      goto LABEL_81;
    }

    ++*(v4 + 616);
LABEL_82:
    v57 = v32[1];
    if (v57)
    {
      do
      {
        v40 = v57;
        v57 = *v57;
      }

      while (v57);
    }

    else
    {
      do
      {
        v40 = v32[2];
        v44 = *v40 == v32;
        v32 = v40;
      }

      while (!v44);
    }

    goto LABEL_87;
  }

LABEL_95:
  v59 = *(v4 + 280);
  if (v59)
  {
    while (2)
    {
      v60 = *v59;
      if (*(v59[6] + 8) != *(v59[6] + 16))
      {
        goto LABEL_97;
      }

      v61 = *(v4 + 264);
      v62 = v59[1];
      v63 = vcnt_s8(v61);
      v63.i16[0] = vaddlv_u8(v63);
      if (v63.u32[0] > 1uLL)
      {
        if (v62 >= *&v61)
        {
          v62 %= *&v61;
        }
      }

      else
      {
        v62 &= *&v61 - 1;
      }

      v64 = *(v4 + 256);
      v65 = *(v64 + 8 * v62);
      do
      {
        v66 = v65;
        v65 = *v65;
      }

      while (v65 != v59);
      if (v66 == (v4 + 280))
      {
        goto LABEL_195;
      }

      v67 = v66[1];
      if (v63.u32[0] > 1uLL)
      {
        if (v67 >= *&v61)
        {
          v67 %= *&v61;
        }
      }

      else
      {
        v67 &= *&v61 - 1;
      }

      v68 = *v59;
      if (v67 == v62)
      {
LABEL_112:
        if (v68)
        {
          goto LABEL_113;
        }
      }

      else
      {
LABEL_195:
        if (!v60)
        {
          goto LABEL_111;
        }

        v69 = v60[1];
        if (v63.u32[0] > 1uLL)
        {
          if (v69 >= *&v61)
          {
            v69 %= *&v61;
          }
        }

        else
        {
          v69 &= *&v61 - 1;
        }

        v68 = *v59;
        if (v69 != v62)
        {
LABEL_111:
          *(v64 + 8 * v62) = 0;
          v68 = *v59;
          goto LABEL_112;
        }

LABEL_113:
        v70 = v68[1];
        if (v63.u32[0] > 1uLL)
        {
          if (v70 >= *&v61)
          {
            v70 %= *&v61;
          }
        }

        else
        {
          v70 &= *&v61 - 1;
        }

        if (v70 != v62)
        {
          *(*(v4 + 256) + 8 * v70) = v66;
          v68 = *v59;
        }
      }

      *v66 = v68;
      *v59 = 0;
      --*(v4 + 296);
      std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v59);
LABEL_97:
      v59 = v60;
      if (!v60)
      {
        break;
      }

      continue;
    }
  }

  v71 = *(v4 + 392);
  while (v71)
  {
    if (*(v71[3] + 8) == *(v71[3] + 16))
    {
      v71 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::erase((v4 + 368), v71);
    }

    else
    {
      v71 = *v71;
    }
  }

  v72 = *(v4 + 448);
  while (v72)
  {
    if (*(v72[3] + 8) == *(v72[3] + 16))
    {
      v72 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::erase((v4 + 424), v72);
    }

    else
    {
      v72 = *v72;
    }
  }

  v73 = *(v4 + 336);
  if (v73)
  {
    while (2)
    {
      v74 = *v73;
      if (*(v73[2] + 8) != *(v73[2] + 16))
      {
        goto LABEL_138;
      }

      v75 = *(v4 + 320);
      v76 = v73[1];
      v77 = vcnt_s8(v75);
      v77.i16[0] = vaddlv_u8(v77);
      if (v77.u32[0] > 1uLL)
      {
        if (v76 >= *&v75)
        {
          v76 %= *&v75;
        }
      }

      else
      {
        v76 &= *&v75 - 1;
      }

      v78 = *(v4 + 312);
      v79 = *(v78 + 8 * v76);
      do
      {
        v80 = v79;
        v79 = *v79;
      }

      while (v79 != v73);
      if (v80 == (v4 + 336))
      {
        goto LABEL_196;
      }

      v81 = v80[1];
      if (v77.u32[0] > 1uLL)
      {
        if (v81 >= *&v75)
        {
          v81 %= *&v75;
        }
      }

      else
      {
        v81 &= *&v75 - 1;
      }

      v82 = *v73;
      if (v81 == v76)
      {
LABEL_153:
        if (v82)
        {
          goto LABEL_154;
        }
      }

      else
      {
LABEL_196:
        if (!v74)
        {
          goto LABEL_152;
        }

        v83 = v74[1];
        if (v77.u32[0] > 1uLL)
        {
          if (v83 >= *&v75)
          {
            v83 %= *&v75;
          }
        }

        else
        {
          v83 &= *&v75 - 1;
        }

        v82 = *v73;
        if (v83 != v76)
        {
LABEL_152:
          *(v78 + 8 * v76) = 0;
          v82 = *v73;
          goto LABEL_153;
        }

LABEL_154:
        v84 = v82[1];
        if (v77.u32[0] > 1uLL)
        {
          if (v84 >= *&v75)
          {
            v84 %= *&v75;
          }
        }

        else
        {
          v84 &= *&v75 - 1;
        }

        if (v84 != v76)
        {
          *(*(v4 + 312) + 8 * v84) = v80;
          v82 = *v73;
        }
      }

      *v80 = v82;
      *v73 = 0;
      --*(v4 + 352);
      std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v73);
LABEL_138:
      v73 = v74;
      if (!v74)
      {
        break;
      }

      continue;
    }
  }

LABEL_185:
  (*(*this + 464))(this);
}

void md::LabelPool::updateLabelsFromFeatureSources(md::LabelPool *this, const LabelUpdateOptions *a2, BOOL *a3)
{
  v49[3] = *MEMORY[0x1E69E9840];
  v6 = *(*(*(this + 1) + 424) + 29);
  if (*(this + 760) != 1 || *(this + 756) != v6)
  {
    v49[2] = 0;
    v48 = v49;
    v49[0] = 0;
    std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::swap(this + 84, &v48);
    md::LabelPool::addGlobalFeatureLabels(this, v6, *(*(this + 78) + 136), *(*(this + 78) + 144));
    md::LabelPool::addGlobalFeatureLabels(this, v6, *(*(this + 79) + 8), *(*(this + 79) + 16));
    v7 = *(this + 88);
    if (v7)
    {
      v45 = *(*(v7 + 8) + 72);
      LODWORD(v46) = *(v7 + 48);
      std::mutex::lock((this + 480));
      if ((this + 552) == std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::find<std::pair<unsigned long long,md::LabelIdentifier>>(this + 544, v45, v46))
      {
        v43 = &v45;
        v8 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::pair<unsigned long long,md::LabelIdentifier>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long long,md::LabelIdentifier> const&>,std::tuple<>>(this + 68, v45, v46, &v43);
        v9 = *(this + 88);
        v10 = *(this + 89);
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = *(v8 + 7);
        *(v8 + 6) = v9;
        *(v8 + 7) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        ++*(this + 186);
      }

      std::mutex::unlock((this + 480));
      v12 = *(this + 88);
      v14 = *(v12 + 8);
      v13 = *(v12 + 16);
      v43 = v14;
      v44 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v45 = 0;
      v46 = 0;
      v47 = 0;
      std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::LabelFeature> const*,std::shared_ptr<md::LabelFeature> const*>(&v45, &v43, &v45);
      md::LabelPool::addGlobalFeatureLabels(this, v6, v45, v46);
      v42 = &v45;
      std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v42);
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v44);
      }

      *(this + 757) = 0;
    }

    v15 = v48;
    if (v48 != v49)
    {
      do
      {
        v16 = v15[4];
        if (atomic_fetch_add((v16 + 1384), 0xFFu) == 1)
        {
          if (*(v16 + 1352) == 1)
          {
            *(v16 + 1349) = 1;
            *(v16 + 1312) = 0;
          }

          else
          {
            md::Label::updateStateMachineForStaging(v16, 1, 37);
          }
        }

        v17 = v15[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v15[2];
            v19 = *v18 == v15;
            v15 = v18;
          }

          while (!v19);
        }

        v15 = v18;
      }

      while (v18 != v49);
    }

    *(this + 756) = v6;
    *(this + 760) = 1;
    std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(v49[0]);
  }

  v20 = *(this + 88);
  if (v20)
  {
    v21 = (*(**(v20 + 8) + 112))(*(v20 + 8), v20 + 48);
    if (*(v21 + 46) == 1)
    {
      v22 = md::LabelPoint::mercatorPoint(v21);
      v23 = *(this + 2);
      v24 = *(this + 3);
      if (v23 != v24)
      {
        v25 = v22;
        do
        {
          v26 = *v23;
          if ((*v23)[8] == 255)
          {
            v27 = v26[9];
            if (v27 > *(this + 757))
            {
              v28 = 0;
              v29 = 1;
              while (1)
              {
                v30 = *(v25 + 8 * v28);
                if (v30 < *&v26[8 * v28 + 48] || v30 > *&v26[8 * v28 + 64])
                {
                  break;
                }

                v31 = v29;
                v29 = 0;
                v28 = 1;
                if ((v31 & 1) == 0)
                {
                  *(this + 757) = v27;
                  (*(*v26 + 24))(v26, *(this + 88));
                  break;
                }
              }
            }
          }

          v23 += 2;
        }

        while (v23 != v24);
      }
    }
  }

  *a3 = 0;
  if (!a2->var0 && !a2->var5)
  {
    v35.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v36 = *(this + 2);
    v37 = *(this + 3);
    if (v36 == v37)
    {
      goto LABEL_57;
    }

    rep = v35.__d_.__rep_;
    v39 = 0;
    while (1)
    {
      v40 = *v36;
      if (v39)
      {
        if (*(v40 + 552) != v6 || (*(v40 + 130) & 1) != 0 || (*(v40 + 132) & 1) != 0 || (*(v40 + 131) & 1) != 0 || (*(v40 + 136) & 1) != 0)
        {
          *a3 = 1;
          goto LABEL_57;
        }

        v39 = 1;
      }

      else
      {
        md::LabelMapTile::updateLabels(v40, *(this + 1), this, v6, 0);
        v39 = std::chrono::steady_clock::now().__d_.__rep_ - rep > 4999999;
      }

      v36 += 2;
      if (v36 == v37)
      {
        goto LABEL_57;
      }
    }
  }

  v32 = *(this + 2);
  v33 = *(this + 3);
  while (v32 != v33)
  {
    v34 = *v32;
    v32 += 2;
    md::LabelMapTile::updateLabels(v34, *(this + 1), this, v6, a2->var4);
  }

LABEL_57:
  if (!*a3)
  {
    for (i = *(this + 13); i; i = *i)
    {
      md::LabelMapTile::deactivateLabels(i[2], 0);
      std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelMapTile>,std::shared_ptr<md::LabelMapTile> const&>(this + 34, i[2], i + 2);
    }

    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::clear(this + 80);
  }
}

void sub_1B2A44E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::mutex::unlock((v17 + 480));
  std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(a17);
  _Unwind_Resume(a1);
}

void md::LabelPool::addGlobalFeatureLabels(uint64_t a1, int a2, md::PointLabelFeature **a3, md::PointLabelFeature **a4)
{
  if (a3 != a4)
  {
    v5 = a3;
    v8 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v27 = _Q0;
    do
    {
      if (*(*(**v5 + 568))(*v5, 0, 0, 0, 0))
      {
        v14 = (*(**v5 + 264))(*v5);
        if ((v14 - 6) < 2)
        {
          v19 = *(a1 + 8);
          LODWORD(v31) = 1;
          md::LabelPool::labelForCustomFeature(&v28, a1, v19, v5, &v31, 1);
          v20 = v28;
          if (v28)
          {
            if (std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::Label>,std::shared_ptr<md::Label> const&>((a1 + 672), v28, &v28))
            {
              md::Label::incTileRefCount(v20);
            }

            md::Label::assignWorldPointToLabel(v20, *(a1 + 8));
          }

          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v29);
          }
        }

        else if (v14 == 1)
        {
          v21 = *v5;
          md::PointLabelFeature::updatePositions(*v5);
          v22 = *(v21 + 54);
          v23 = (v21 + 440);
          if (v22 != (v21 + 440))
          {
            do
            {
              md::LabelPool::labelForCustomFeature(&v28, a1, *(a1 + 8), v5, v22 + 8, 1);
              v24 = v28;
              if (v28)
              {
                if (std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::Label>,std::shared_ptr<md::Label> const&>((a1 + 672), v28, &v28))
                {
                  md::Label::incTileRefCount(v24);
                }

                md::Label::assignWorldPointToLabel(v24, *(a1 + 8));
              }

              if (v29)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v29);
              }

              v25 = *(v22 + 1);
              if (v25)
              {
                do
                {
                  v26 = v25;
                  v25 = *v25;
                }

                while (v25);
              }

              else
              {
                do
                {
                  v26 = *(v22 + 2);
                  _ZF = *v26 == v22;
                  v22 = v26;
                }

                while (!_ZF);
              }

              v22 = v26;
            }

            while (v26 != v23);
          }
        }

        else if (v14 == 3)
        {
          v15 = *v5;
          md::LineLabelFeature::updatePositions(*v5, *(a1 + 8), a2, 0);
          v28 = 0;
          v29 = 0;
          v30 = v27;
          md::LineLabelPlacer::placementsForRect(&v31, v15 + 24, &v28, a2);
          if (v8)
          {
            operator delete(v8);
          }

          v8 = v31;
          v16 = v32;
          for (i = v31; i != v16; ++i)
          {
            md::LabelPool::labelForCustomFeature(&v28, a1, *(a1 + 8), v5, i, 1);
            v18 = v28;
            if (v28)
            {
              if (std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::Label>,std::shared_ptr<md::Label> const&>((a1 + 672), v28, &v28))
              {
                md::Label::incTileRefCount(v18);
              }

              md::Label::assignWorldPointToLabel(v18, *(a1 + 8));
            }

            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v29);
            }
          }
        }
      }

      v5 += 2;
    }

    while (v5 != a4);
    if (v8)
    {
      operator delete(v8);
    }
  }
}

void sub_1B2A45174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

double md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::_determineEnteringRenderables@<X0>(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 1), 0x3070CB6B3C7F21D3uLL);
  if (result)
  {
    v6 = result[5];
    if (*(v6 + 8) == 0x3070CB6B3C7F21D3)
    {
      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = *(a1 + 192);
        if (v8)
        {
          if (!(v8 >> 61))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v8);
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        result = (*(*a1 + 208))(a1);
        if (result)
        {
          v9 = *(a1 + 34);
        }

        else
        {
          v9 = -1;
        }

        v10 = *(a1 + 176);
        if (v10 != a1 + 184)
        {
          v11 = v9;
          v12 = *(v10 + 32);
          v13 = *(v10 + 40);
          v22 = v12;
          v23 = v13;
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          }

          v19 = *(v12 + 172);
          *v18 = *(v12 + 168);
          v20 = *(v12 + 184);
          v21 = *(v12 + 192);
          v14 = *(v12 + 608);
          v15 = *(v12 + 616);
          v16 = md::LayoutContext::cameraType(a2);
          v17[23] = gdc::ToCoordinateSystem(v16);
          md::GeometryContext::transformConstantData(v14, v15, v17, v7, v18, v16, v11);
        }
      }
    }
  }

  return result;
}

void sub_1B2A45504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v14)
  {
    *(v13 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  v4 = a1;
  return std::__partition_impl[abi:nn200100]<md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::MapTileDataRenderable<md::VenueTileData>*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::MapTileDataRenderable<md::VenueTileData>**>,std::__wrap_iter<md::MapTileDataRenderable<md::VenueTileData>**>>(v2, v1, &v4);
}

uint64_t *std::__partition_impl[abi:nn200100]<md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::legacyCollectRenderables(md::LayoutContext const&)::{lambda(md::MapTileDataRenderable<md::VenueTileData>*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::MapTileDataRenderable<md::VenueTileData>**>,std::__wrap_iter<md::MapTileDataRenderable<md::VenueTileData>**>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1;
    v3 = a2;
    while (((*(**a3 + 136))(*a3, a3[1], *v5) & 1) != 0)
    {
      ++v5;
LABEL_5:
      if (v5 == v3)
      {
        return v3;
      }
    }

    v6 = v3 - 1;
    while (v6 != v5)
    {
      v3 = v6;
      v7 = *v6--;
      if ((*(**a3 + 136))(*a3, a3[1], v7))
      {
        v8 = *v5;
        *v5++ = *v3;
        *v3 = v8;
        goto LABEL_5;
      }
    }

    return v5;
  }

  return v3;
}

void std::vector<md::RoadPosition *>::__insert_with_size[abi:nn200100]<std::__wrap_iter<md::RoadPosition **>,std::__wrap_iter<md::RoadPosition **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - v11;
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

    v15 = (__dst - v11) >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v14);
    }

    v32 = 8 * v15;
    v33 = 8 * a5;
    v34 = (8 * v15);
    do
    {
      v35 = *v6++;
      *v34++ = v35;
      v33 -= 8;
    }

    while (v33);
    memcpy((v32 + 8 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 8 * a5 + *(a1 + 8) - __dst;
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
  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v28 = &__dst[8 * a5];
    v29 = &v10[-8 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 8;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v28);
    }

    v27 = 8 * a5;
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
    v21 = &__dst[8 * a5];
    v22 = &v10[v19];
    if (&v20[-8 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -8 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 8;
        v23 += 8;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[8 * a5], __dst, v20 - v21);
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

void *md::StandardLabeler::willStartCollision(md::StandardLabeler *this)
{
  (*(*this + 456))(this);
  v2 = *(this + 17);
  v3 = *(this + 18);
  while (v2 != v3)
  {
    v7 = *v2++;
    md::LabelCollider::addCollidableItem(*(this + 7), v7);
  }

  result = (*(*this + 448))(this);
  *(this + 95) = result;
  *(this + 48) = 0;
  v5 = *(this + 3);
  if (*(v5 + 3650))
  {
    v6 = *(this + 6);

    return md::LabelPool::prepareDedupingGroupsForCollision(v6, v5);
  }

  return result;
}

uint64_t *std::__partition_impl[abi:nn200100]<md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::MapTileDataRenderable<md::VenueTileData>*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::MapTileDataRenderable<md::VenueTileData>**>,std::__wrap_iter<md::MapTileDataRenderable<md::VenueTileData>**>>(uint64_t *a1, uint64_t *a2, void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1;
    v3 = a2;
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(*a3, *v5) & 1) != 0)
    {
      ++v5;
LABEL_5:
      if (v5 == v3)
      {
        return v3;
      }
    }

    v6 = v3 - 1;
    while (v6 != v5)
    {
      v3 = v6;
      v7 = *v6--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(*a3, v7))
      {
        v8 = *v5;
        *v5++ = *v3;
        *v3 = v8;
        goto LABEL_5;
      }
    }

    return v5;
  }

  return v3;
}

float32x2_t *md::StandardLabeler::layoutLabelsForStaging(md::StandardLabeler *this)
{
  v13 = 257;
  v14 = 1;
  v2 = *(this + 9);
  v3 = *(this + 10);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    md::Label::layoutForStaging(v4, *(this + 3), *(this + 6), &v13);
  }

  result = md::StandardLabeler::willStartCollision(this);
  v6 = *(this + 10);
  v7 = *(this + 9);
  if (v7 != v6)
  {
    if (*(*(this + 3) + 3650) == 1)
    {
      do
      {
        v8 = *v7;
        if (*(*v7 + 1378) == 1)
        {
          if (*(v8 + 1335) == 1)
          {
            md::Label::updateReserveSpaceCollisionItem(*v7);
          }

          if (*(v8 + 42))
          {
            v9 = *(this + 7);
            v15[0] = *(v8 + 42);
            md::SimpleBuffer<md::LabelCollisionItemBase *,2000ul>::push_back((v9 + 136), v15);
            ++*(this + 97);
          }

          v10 = *(this + 7);
          v15[0] = *(*v7 + 41);
          result = md::SimpleBuffer<md::LabelCollisionItemBase *,2000ul>::push_back((v10 + 136), v15);
        }

        v7 += 2;
      }

      while (v7 != v6);
      v11 = *(this + 7);
      v12 = *(v11 + 136);
      if (v12)
      {
        std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,false>(*(v11 + 152), (*(v11 + 152) + 8 * v12), 126 - 2 * __clz(v12), 1);
        result = md::LabelCollider::collideItems(v11, *(v11 + 152), *(v11 + 136));
        LODWORD(v12) = *(*(this + 7) + 136);
      }

      *(this + 96) = v12;
    }

    else
    {
      LOWORD(v15[0]) = 0;
      v15[1] = 0;
      do
      {
        result = *v7;
        if (*(*v7 + 1378) == 1)
        {
          result = md::Label::setCollisionResult(result, v15);
        }

        v7 += 2;
      }

      while (v7 != v6);
    }
  }

  return result;
}

void md::MapStandardLabeler::addAdditionalItemsToCollider(md::MapStandardLabeler *this)
{
  v1 = *(this + 55);
  if (v1)
  {
    md::LabelCollider::addCollidableItem(*(this + 7), v1);
  }
}

void md::VenueRenderLayer::_updateStyles(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = (*(**(*v3 + 392) + 48))(*(*v3 + 392));
      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v8, v5);
        v7 = v9;
        [v7 setNeedsTextureUpdate];

        v8 = off_1F2A4E798;
        v5 += 24;
      }

      v3 += 8;
    }

    while (v3 != a2);
  }
}

void *md::LabelPool::prepareDedupingGroupsForCollision(void *this, LabelManager *a2)
{
  v3 = this;
  for (i = this[35]; i; i = *i)
  {
    this = (*(*i[6] + 16))(i[6], a2);
  }

  for (j = v3[49]; j; j = *j)
  {
    this = (*(*j[3] + 16))(j[3], a2);
  }

  for (k = v3[56]; k; k = *k)
  {
    this = (*(*k[3] + 16))(k[3], a2);
  }

  for (m = v3[42]; m; m = *m)
  {
    this = (*(*m[2] + 16))(m[2], a2);
  }

  return this;
}

uint64_t md::MapStandardLabeler::addLinesToCollider(md::MapStandardLabeler *this)
{
  if (*(*(this + 3) + 3661) != 1)
  {
    return 0;
  }

  v2 = *(this + 6);
  v3 = *(*(this + 7) + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (v4 == v5)
  {
    v6 = *(*(this + 7) + 8);
  }

  else
  {
    do
    {
      v12 = *v4;
      if ((*(*v4 + 130) & 1) == 0)
      {
        v13 = v12[56];
        if (v13)
        {
          md::LabelMapTileCollisionInfo::addItemsToCollider(v13, *(this + 3), *(this + 7));
          v12 = *v4;
        }

        v14 = v12[58];
        if (v14)
        {
          md::LabelMapTileCollisionInfo::addItemsToCollider(v14, *(this + 3), *(this + 7));
          v12 = *v4;
        }

        v15 = v12[60];
        if (v15)
        {
          md::LabelMapTileCollisionInfo::addItemsToCollider(v15, *(this + 3), *(this + 7));
          v12 = *v4;
        }

        v11 = v12[62];
        v16 = v12 + 63;
        if (v11 != v12 + 63)
        {
          do
          {
            md::LabelMapTileCollisionInfo::addItemsToCollider(v11[5], *(this + 3), *(this + 7));
            v8 = v11[1];
            if (v8)
            {
              do
              {
                v9 = v8;
                v8 = *v8;
              }

              while (v8);
            }

            else
            {
              do
              {
                v9 = v11[2];
                v10 = *v9 == v11;
                v11 = v9;
              }

              while (!v10);
            }

            v11 = v9;
          }

          while (v9 != v16);
        }
      }

      v4 += 16;
    }

    while (v4 != v5);
    v6 = *(*(this + 7) + 8);
  }

  return (v6 - v3);
}

void md::MapEngineCallbackGraphService::addTask(uint64_t a1, unint64_t a2, uint64_t a3)
{
  std::__shared_mutex_base::lock_shared((a1 + 8));
  v6 = *(a1 + 248);
  if (a2 >= ((*(a1 + 256) - v6) >> 3) || ((v7 = *(v6 + 8 * a2)) != 0 ? (v8 = (v7 ^ a2) >> 32 == 0) : (v8 = 0), !v8 || (v9 = 16 * *(v6 + 8 * a2) + *(a1 + 272), *(a1 + 280) == v9)))
  {

    std::__shared_mutex_base::unlock_shared((a1 + 8));
  }

  else
  {
    v11 = *v9;
    v10 = *(v9 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__shared_mutex_base::unlock_shared((a1 + 8));
    v12 = *(*v11 + 8);
    v13 = v12[3];
    v15 = *v12;
    v14 = v12[1];
    v16 = *(v13 + 40);
    if (!v16)
    {
      v17 = malloc_type_malloc(152 * *(v13 + 24), 0x1032040517F6E98uLL);
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(v13, v17);
      v16 = *(v13 + 40);
      v18 = &v17[19 * *(v13 + 24) - 19];
      if (v18 >= v17)
      {
        do
        {
          v19 = v18;
          *v18 = v16;
          v18 -= 19;
          v16 = v19;
        }

        while (v18 >= v17);
        v16 = (v18 + 19);
      }

      *(v13 + 40) = v16;
    }

    *(v13 + 40) = *v16;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v16, a3);
    *(v16 + 64) = 1;
    *(v16 + 95) = 0;
    *(v16 + 72) = 0;
    *(v16 + 96) = (v14 - v15) >> 3;
    *(v16 + 104) = 0u;
    *(v16 + 120) = 0u;
    *(v16 + 136) = 0u;
    v21 = v12[1];
    v20 = v12[2];
    if (v21 >= v20)
    {
      v23 = *v12;
      v24 = v21 - *v12;
      v25 = v24 >> 3;
      v26 = (v24 >> 3) + 1;
      if (v26 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v27 = v20 - v23;
      if (v27 >> 2 > v26)
      {
        v26 = v27 >> 2;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v28);
      }

      *(8 * v25) = v16;
      v22 = 8 * v25 + 8;
      memcpy(0, v23, v24);
      v29 = *v12;
      *v12 = 0;
      v12[1] = v22;
      v12[2] = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v21 = v16;
      v22 = (v21 + 1);
      v12[1] = v22;
    }

    v12[1] = v22;
    atomic_fetch_add(v11 + 2, 1u);
    if (v10)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }
}