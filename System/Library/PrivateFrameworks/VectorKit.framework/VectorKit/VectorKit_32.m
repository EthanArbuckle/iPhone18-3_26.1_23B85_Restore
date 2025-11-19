void std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::__rehash<true>(uint64_t a1, size_t __n)
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
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void gdc::Registry::_registerStorageDataSignals(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A5FE50;
  v4[1] = a1;
  v4[3] = v4;
  gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect(a4, v4);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](v4);
  operator new();
}

void sub_1B29DD5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

unint64_t gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect(unint64_t *a1, uint64_t a2)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = *a1 + 1;
  *a1 = v3;
  v4 = a1[2];
  if (!*&v4)
  {
    goto LABEL_16;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(a1[1] + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_16:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_12;
  }

  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__value_func[abi:nn200100](&v14, a2);
  v10 = v8 + 3;
  if (v8 + 3 != &v14)
  {
    v11 = v15;
    v12 = v8[6];
    if (v15 == &v14)
    {
      if (v12 == v10)
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = 0;
        (*(*v8[6] + 24))(v8[6], &v14);
        (*(*v8[6] + 32))(v8[6]);
        v8[6] = 0;
        v15 = &v14;
        (*(v16[0] + 24))(v16, v8 + 3);
        (*(v16[0] + 32))(v16);
      }

      else
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = v8[6];
      }

      v8[6] = v10;
    }

    else if (v12 == v10)
    {
      (*(*v12 + 24))(v8[6], &v14);
      (*(*v8[6] + 32))(v8[6]);
      v8[6] = v15;
      v15 = &v14;
    }

    else
    {
      v15 = v8[6];
      v8[6] = v11;
    }
  }

  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v14);
  return *a1;
}

uint64_t std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> **,0>(gss::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = gss::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *>(v3, v2);
  }
}

uint64_t std::__function::__func<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A5FE50;
  a2[1] = v2;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> **,0>(gss::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = gss::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *>(v3, v2);
  }
}

unint64_t std::__invoke[abi:nn200100]<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#3} &,gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[4];
  if (a4)
  {
    v9 = (a3 + 8 * a4);
    v10 = a3;
    do
    {
      v11 = *v10;
      v23 = *v10;
      if (gdc::Registry::isValid(a2, &v23))
      {
        v12 = *(v8[12] + ((v11 >> 29) & 0x7FFFFFFF8));
        if (v12)
        {
          v14 = *v12;
          v13 = v12[1];
          if (*v12 != v13)
          {
            v15 = a1[1];
            while (1)
            {
              v16 = *v14;
              if (*v14 == v15)
              {
                break;
              }

              v14 += 24;
              if (v15 < v16 || v14 == v13)
              {
                goto LABEL_18;
              }
            }

            if (v14 != v13)
            {
              v18 = v13 - (v14 + 24);
              if (v13 != v14 + 24)
              {
                memmove(v14, v14 + 24, v13 - (v14 + 24));
              }

              v12[1] = &v14[v18];
            }
          }
        }
      }

LABEL_18:
      ++v10;
    }

    while (v10 != v9);
  }

  for (i = v8[23]; i; i = *i)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], a2, a3, a4);
  }

  v20 = *a1;
  v21 = v8[47];

  return gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long>::emit(v21, a2, a3, a4, v20);
}

double md::LabelLineSegment::offsetAtCoordinate(md::LabelLineSegment *this, int a2, unint64_t a3, float a4)
{
  v4 = a2;
  if (*(this + 23) - 1 <= a3)
  {
    v9 = 0.0;
    if (a2)
    {
      return *(this + 1);
    }
  }

  else
  {
    v7 = 0;
    v8 = a4;
    v9 = 0.0;
    do
    {
      v10 = (*(*this + 24))(this, v7);
      v11 = (*(*this + 24))(this, v7 + 1);
      v12 = *&md::LabelPoint::vectorToPoint(v10, v11, *(this + 33));
      v13 = 0;
      v21[0] = v12;
      v21[1] = v14;
      v21[2] = v15;
      v16 = 0.0;
      do
      {
        v16 = v16 + *&v21[v13] * *&v21[v13];
        ++v13;
      }

      while (v13 != 3);
      v17 = sqrt(v16);
      v18 = v7 == a3;
      if (v7 >= a3)
      {
        v19 = v8;
      }

      else
      {
        v19 = 1.0;
      }

      v9 = v9 + v17 * v19;
      ++v7;
    }

    while (!v18);
    if ((v4 & 1) == 0)
    {
      return *(this + 1) - v9;
    }
  }

  return v9;
}

unint64_t gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long>::emit(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v9 = result;
    while (1)
    {
      v15[0] = a3;
      v15[1] = a4;
      v13 = a5;
      v14 = a2;
      v10 = v9[6];
      if (!v10)
      {
        break;
      }

      result = (*(*v10 + 48))(v10, &v14, v15, &v13);
      v9 = *v9;
      if (!v9)
      {
        return result;
      }
    }

    v11 = std::__throw_bad_function_call[abi:nn200100]();
    return md::LabelLine::coordinateAtOffset(v11, v12);
  }

  return result;
}

unint64_t md::LabelLine::coordinateAtOffset(md::LabelLine **this, double a2)
{
  if (a2 <= 0.0)
  {
    started = md::LabelLine::startCoordinate(this[1], this[2]);
LABEL_17:
    v14 = started >> 16;
    LOWORD(v6) = started;
    return started & 0xFFFFFFFF00000000 | (v14 << 16) | v6;
  }

  if (*(this + 13) <= a2)
  {
    v4 = this[2];
    v3 = this[1];
    goto LABEL_16;
  }

  v5 = (this + 1);
  v3 = this[1];
  v4 = *(v5 + 1);
  if (v4 == v3)
  {
LABEL_16:
    started = md::LabelLine::endCoordinate(v3, v4);
    goto LABEL_17;
  }

  v6 = 0;
  v7 = (v4 - v3) >> 4;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v4 - v3) >> 4;
  }

  v9 = 0.0;
  v10 = v3;
  while (1)
  {
    v11 = v7 <= v6 ? 0 : v10;
    v12 = *v11;
    if (*(*v11 + 8) + v9 >= a2)
    {
      break;
    }

    ++v6;
    v10 = (v10 + 16);
    v9 = *(*v11 + 8) + v9;
    if (v8 == v6)
    {
      goto LABEL_16;
    }
  }

  v16 = v12[23];
  if (v16 < 2)
  {
    v14 = 0;
    v27 = 0;
  }

  else
  {
    v17 = v11[8];
    v18 = (v16 - 1);
    if (v11[8])
    {
      v19 = 0;
    }

    else
    {
      v19 = (v16 - 1);
    }

    v20 = (*(*v12 + 24))(*v11, v19);
    LODWORD(v21) = v12[23];
    if (v21 < 2)
    {
LABEL_32:
      v35 = v21 - 1;
      v14 = 0;
      if (v17)
      {
        v27 = v35;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v22 = v20;
      v23 = a2 - v9;
      v24 = 0.0;
      v25 = 1;
      while (1)
      {
        v26 = v22;
        v27 = v19;
        v28 = v24;
        v19 = v17 ? v25 : v18 - v25;
        v22 = (*(*v12 + 24))(v12, v19);
        v29 = *&md::LabelPoint::vectorToPoint(v26, v22, *(v12 + 33));
        v30 = 0;
        v37[0] = v29;
        v37[1] = v31;
        v37[2] = v32;
        v33 = 0.0;
        do
        {
          v33 = v33 + *&v37[v30] * *&v37[v30];
          ++v30;
        }

        while (v30 != 3);
        v34 = sqrt(v33);
        v24 = v34 + v28;
        if (v34 + v28 >= v23)
        {
          break;
        }

        ++v25;
        v21 = v12[23];
        if (v25 >= v21)
        {
          goto LABEL_32;
        }
      }

      *&v36 = (v23 - v28) / v34;
      v14 = v36 << 32;
    }
  }

  started = v14 | v27;
  LOWORD(v14) = v14 | v27;
  return started & 0xFFFFFFFF00000000 | (v14 << 16) | v6;
}

uint64_t std::__function::__func<md::OverlaysLogic::updateVisibleTiles(md::LayoutContext const&)::$_0,std::allocator<md::OverlaysLogic::updateVisibleTiles(md::LayoutContext const&)::$_0>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*a3)
  {
    v7 = 71;
  }

  else
  {
    v7 = 11;
  }

  if (*a3)
  {
    v8 = 72;
  }

  else
  {
    v8 = 12;
  }

  if (v3)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = md::SceneContext::layerDataInView(v5, v9);
  v75 = v6 + 80 * v3 + 40 * v4;
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v75 + 344));
  v74 = (v6 + 48 * v3 + 24 * v4);
  v74[64] = v74[63];
  *__p = 0u;
  v83 = 0u;
  v84 = 1065353216;
  v13 = *v10;
  v11 = v10 + 1;
  v12 = v13;
  if (v13 == v11)
  {
    goto LABEL_41;
  }

  do
  {
    v14 = v12[4];
    gdc::Registry::add<md::overlayComponents::TileIsInView,std::__wrap_iter<gdc::Entity const*>>(*(v6 + 152), *(v14 + 856), *(v14 + 864));
    v15 = *(v14 + 169);
    v16 = *(v14 + 172);
    v17 = *(v14 + 168);
    v18 = *(v14 + 184);
    v19 = *(v14 + 192);
    v21 = v12[4];
    v20 = v12[5];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v76[1] = v15;
    v77 = v16;
    v76[0] = v17;
    v78 = v18;
    v79 = v19;
    v80 = v21;
    v81 = v20;
    if (v19)
    {
      v22 = v17 - 0x61C8864680B583EBLL;
      v23 = (v16.i32[0] - 0x61C8864680B583EBLL + ((((v22 << 6) - 0x61C8864680B583EBLL + (v22 >> 2) + v15) ^ v22) << 6) + ((((v22 << 6) - 0x61C8864680B583EBLL + (v22 >> 2) + v15) ^ v22) >> 2)) ^ ((v22 << 6) - 0x61C8864680B583EBLL + (v22 >> 2) + v15) ^ v22;
      v18 = (v16.i32[1] - 0x61C8864680B583EBLL + (v23 << 6) + (v23 >> 2)) ^ v23;
      v78 = v18;
      v79 = 0;
    }

    v24 = __p[1];
    if (!__p[1])
    {
      goto LABEL_31;
    }

    v25 = vcnt_s8(__p[1]);
    v25.i16[0] = vaddlv_u8(v25);
    v26 = v25.u32[0];
    if (v25.u32[0] > 1uLL)
    {
      v27 = v18;
      if (v18 >= __p[1])
      {
        v27 = v18 % __p[1];
      }
    }

    else
    {
      v27 = (__p[1] - 1) & v18;
    }

    v28 = *(__p[0] + v27);
    if (!v28 || (v29 = *v28) == 0)
    {
LABEL_31:
      operator new();
    }

    while (1)
    {
      v30 = *(v29 + 1);
      if (v30 == v18)
      {
        break;
      }

      if (v26 > 1)
      {
        if (v30 >= v24)
        {
          v30 %= v24;
        }
      }

      else
      {
        v30 &= v24 - 1;
      }

      if (v30 != v27)
      {
        goto LABEL_31;
      }

LABEL_30:
      v29 = *v29;
      if (!v29)
      {
        goto LABEL_31;
      }
    }

    if (!std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v29 + 16, v76))
    {
      goto LABEL_30;
    }

    if (v81)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v81);
    }

    v31 = v12[1];
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
        v32 = v12[2];
        v33 = *v32 == v12;
        v12 = v32;
      }

      while (!v33);
    }

    v12 = v32;
  }

  while (v32 != v11);
LABEL_41:
  v34 = (v75 + 184);
  v36 = (v75 + 200);
  for (i = *(v75 + 200); i; i = *i)
  {
    if (!std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::find<geo::QuadTile>(__p, (i + 2)))
    {
      std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>((v75 + 344), (i + 2));
    }
  }

  v37 = (v74 + 63);
  v38 = v83;
  if (v83)
  {
    LOBYTE(v39) = 25;
    do
    {
      if (!std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::find<geo::QuadTile>(v34, (v38 + 2)))
      {
        v77 = *(v38 + 20);
        *v76 = *(v38 + 8);
        v78 = v38[4];
        v79 = *(v38 + 40);
        LOBYTE(v80) = 0;
        for (j = *v37; ; j += 40)
        {
          v41 = v74[64];
          if (j == v41)
          {
            break;
          }

          if (std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v76, j))
          {
            v41 = v74[64];
            if (v41 != j)
            {
              goto LABEL_70;
            }

            break;
          }
        }

        v42 = v74[65];
        if (v42 <= v41)
        {
          v44 = *v37;
          v45 = v41 - *v37;
          v46 = 0xCCCCCCCCCCCCCCCDLL * (v45 >> 3) + 1;
          if (v46 > 0x666666666666666)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v47 = 0xCCCCCCCCCCCCCCCDLL * ((v42 - v44) >> 3);
          if (2 * v47 > v46)
          {
            v46 = 2 * v47;
          }

          if (v47 >= 0x333333333333333)
          {
            v48 = 0x666666666666666;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            if (v48 <= 0x666666666666666)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v49 = 8 * (v45 >> 3);
          *(v49 + 4) = v77;
          *v49 = *v76;
          *(v49 + 16) = v78;
          *(v49 + 24) = v79;
          *(v49 + 32) = v80;
          if (v44 != v41)
          {
            v50 = 0;
            do
            {
              *(v50 + 24) = 0;
              *(v50 + 4) = *&v44[v50 + 4];
              *v50 = *&v44[v50];
              *(v50 + 16) = *&v44[v50 + 16];
              *(v50 + 24) = v44[v50 + 24];
              *(v50 + 32) = v44[v50 + 32];
              v50 += 40;
            }

            while (&v44[v50] != v41);
          }

          v43 = v49 + 40;
          *v37 = (v49 - v45);
          v74[64] = v49 + 40;
          v74[65] = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        else
        {
          *(v41 + 4) = v77;
          *v41 = *v76;
          *(v41 + 16) = v78;
          *(v41 + 24) = v79;
          *(v41 + 32) = v80;
          v43 = v41 + 40;
        }

        v74[64] = v43;
      }

LABEL_70:
      if (*(v38 + 17) >= v39)
      {
        v39 = v39;
      }

      else
      {
        v39 = *(v38 + 17);
      }

      v38 = *v38;
    }

    while (v38);
  }

  else
  {
    v39 = 25;
  }

  v51 = *v37;
  v52 = v74[64];
  if (*v37 != v52)
  {
    do
    {
      v53 = v51[1];
      if (v53)
      {
        v54 = 0;
        --v53;
        v55 = vshr_n_s32(*(v51 + 4), 1uLL);
        v56 = 1;
      }

      else
      {
        v55 = *(v51 + 4);
        v54 = *(v51 + 2);
        v56 = v51[24];
      }

      v57 = *v51;
      v76[1] = v53;
      v77 = v55;
      v76[0] = v57;
      v78 = v54;
      v79 = v56;
      if (v39 <= v53)
      {
        while (!std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::find<geo::QuadTile>(__p, v76))
        {
          v58 = v76[1];
          if (v76[1])
          {
            v59 = 0;
            v58 = v76[1] - 1;
            v60 = vshr_n_s32(v77, 1uLL);
            v61 = 1;
          }

          else
          {
            v60 = v77;
            v59 = v78;
            v61 = v79;
          }

          v76[1] = v58;
          v77 = v60;
          v78 = v59;
          v79 = v61;
          if (v39 > v58)
          {
            goto LABEL_88;
          }
        }

        v51[32] = 1;
      }

LABEL_88:
      v51 += 40;
    }

    while (v51 != v52);
  }

  if (*(v75 + 208))
  {
    v62 = *v36;
    if (*v36)
    {
      do
      {
        v72 = *v62;
        v73 = v62[7];
        if (v73)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v73);
        }

        operator delete(v62);
        v62 = v72;
      }

      while (v72);
    }

    *(v75 + 200) = 0;
    v63 = *(v75 + 192);
    if (v63)
    {
      for (k = 0; k != v63; ++k)
      {
        *(*v34 + k) = 0;
      }
    }

    *(v75 + 208) = 0;
  }

  v65 = __p[0];
  __p[0] = 0;
  v66 = *v34;
  *v34 = v65;
  if (v66)
  {
    operator delete(v66);
  }

  v67 = __p[1];
  *(v75 + 192) = __p[1];
  __p[1] = 0;
  v68 = *(&v83 + 1);
  *(v75 + 208) = *(&v83 + 1);
  *(v75 + 216) = v84;
  v69 = v83;
  *(v75 + 200) = v83;
  if (v68)
  {
    v70 = *(v69 + 8);
    if ((v67 & (v67 - 1)) != 0)
    {
      if (v70 >= v67)
      {
        v70 %= v67;
      }
    }

    else
    {
      v70 &= v67 - 1;
    }

    *(*v34 + v70) = v36;
    v83 = 0uLL;
  }

  return std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::~__hash_table(__p);
}

void sub_1B29DECB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[7];
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

mdm::zone_mallocator *std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v23[4] = result + 24;
    if (v12)
    {
      v13 = mdm::zone_mallocator::instance(result);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineAttribute>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[48 * v9];
    v16 = &v14[48 * v12];
    v17 = *a2;
    v18 = a2[2];
    *(v15 + 1) = a2[1];
    *(v15 + 2) = v18;
    *v15 = v17;
    v8 = v15 + 48;
    v19 = *(v3 + 1) - *v3;
    v20 = &v15[-v19];
    memcpy(&v15[-v19], *v3, v19);
    v21 = *v3;
    *v3 = v20;
    *(v3 + 1) = v8;
    v22 = *(v3 + 2);
    *(v3 + 2) = v16;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = std::__split_buffer<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator> &>::~__split_buffer(v23);
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = v4 + 3;
  }

  *(v3 + 1) = v8;
  return result;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 48) % 0x30uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineAttribute>(v4, v3);
  }

  return a1;
}

uint64_t md::LabelLine::endCoordinate(md::LabelLine *this, uint64_t a2)
{
  v2 = 0;
  v3 = ((a2 - this) >> 4) - 1;
  if (v3 >= ((a2 - this) >> 4))
  {
    v4 = 0;
  }

  else
  {
    v4 = this + 16 * (((a2 - this) >> 4) - 1);
  }

  if (v4[8] == 1)
  {
    v2 = ((*(**v4 + 16))() << 16) - 0x10000;
  }

  return v2 | v3;
}

uint64_t md::FixedLabelLineSegment<3ul>::vertexInfo(uint64_t a1, uint64_t a2)
{
  return a1 + 4 * a2 + 192;
}

{
  return a1 + 4 * a2 + 192;
}

void std::__function::__func<md::OverlaysLogic::updateOverlaysResources(void)::$_0,std::allocator<md::OverlaysLogic::updateOverlaysResources(void)::$_0>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 8);
  for (i = *(v3 + 80 * *a2 + 40 * *a3 + 200); i; i = *i)
  {
    md::OverlayTileData::resetNonTileOverlays(&v12, i[6]);
    v6 = v14;
    **(a1 + 16) |= v14 != 0;
    if (v6)
    {
      v8 = v12;
      v7 = v13;
      v9 = *(v12 + 8);
      v10 = *v13;
      *(v10 + 8) = v9;
      *v9 = v10;
      v11 = *(v3 + 944);
      *(v11 + 8) = v7;
      *v7 = v11;
      *(v3 + 944) = v8;
      *(v8 + 8) = v3 + 944;
      *(v3 + 960) += v6;
      v14 = 0;
    }

    std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(&v12);
  }
}

uint64_t gdc::Registry::storage<std::vector<gdc::Registry*>>(uint64_t a1)
{
  v3 = 0x9256643C7714E8FELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x9256643C7714E8FELL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::UniLineLabelFeature::shieldsForFeature(uint64_t *a1, uint64_t a2, int a3)
{
  v50 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    v4 = *(a2 + 72) >= 8u ? 8 : *(a2 + 72);
    if (*(a2 + 72))
    {
      v7 = a1 + 3;
      v46 = a1 + 3;
      v8 = mdm::zone_mallocator::instance(a1);
      v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelShieldEntry>(v8, v4);
      v10 = &v9[48 * v4];
      v11 = a1[1];
      v12 = &v9[*a1 - v11];
      std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>,md::LabelShieldEntry*>(*a1, v11, v12);
      v13 = *a1;
      *a1 = v12;
      a1[1] = v9;
      v14 = a1[2];
      a1[2] = v10;
      *&v45 = v13;
      *(&v45 + 1) = v14;
      __s = v13;
      v44 = v13;
      std::__split_buffer<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator> &>::~__split_buffer(&__s);
      if (*(a2 + 72))
      {
        v15 = 0;
        while (1)
        {
          v42 = 0;
          __s = 0;
          geo::codec::featureGetNativeShield(a2, v15, &__s, &v42, 0);
          inited = localizedLabel(&v47, a2, __s, a3, 0);
          v17 = v42;
          if (v42)
          {
            goto LABEL_41;
          }

          v18 = HIBYTE(v48);
          v19 = SHIBYTE(v48);
          if (v48 < 0)
          {
            v18 = *(&v47 + 1);
          }

          if (v18)
          {
LABEL_41:
            v21 = a1[1];
            v20 = a1[2];
            if (v21 >= v20)
            {
              v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a1) >> 4);
              v24 = v23 + 1;
              if (v23 + 1 > 0x555555555555555)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a1) >> 4);
              if (2 * v25 > v24)
              {
                v24 = 2 * v25;
              }

              v26 = v25 >= 0x2AAAAAAAAAAAAAALL ? 0x555555555555555 : v24;
              v46 = v7;
              if (v26)
              {
                v27 = mdm::zone_mallocator::instance(inited);
                v28 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelShieldEntry>(v27, v26);
                v17 = v42;
              }

              else
              {
                v28 = 0;
              }

              v30 = &v28[48 * v23];
              __s = v28;
              v44 = v30;
              *&v45 = v30;
              *(&v45 + 1) = &v28[48 * v26];
              v30[24] = v49;
              if (SHIBYTE(v48) < 0)
              {
                std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(v30, v47, *(&v47 + 1));
              }

              else
              {
                v31 = v47;
                *(v30 + 2) = v48;
                *v30 = v31;
              }

              *(v30 + 4) = v17;
              *(v30 + 10) = 0;
              v30[44] = 1;
              *&v45 = v45 + 48;
              v32 = a1[1];
              v33 = &v44[*a1 - v32];
              std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>,md::LabelShieldEntry*>(*a1, v32, v33);
              v34 = *a1;
              *a1 = v33;
              v35 = a1[2];
              v41 = v45;
              *(a1 + 1) = v45;
              *&v45 = v34;
              *(&v45 + 1) = v35;
              __s = v34;
              v44 = v34;
              inited = std::__split_buffer<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator> &>::~__split_buffer(&__s);
              v29 = v41;
            }

            else
            {
              *(v21 + 24) = v49;
              if (SHIBYTE(v48) < 0)
              {
                inited = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(v21, v47, *(&v47 + 1));
              }

              else
              {
                v22 = v47;
                *(v21 + 16) = v48;
                *v21 = v22;
              }

              *(v21 + 32) = v17;
              *(v21 + 40) = 0;
              v29 = v21 + 48;
              *(v21 + 44) = 1;
            }

            a1[1] = v29;
            v36 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a1) >> 4);
            v19 = SHIBYTE(v48);
            if (v36 > 7)
            {
              break;
            }
          }

          if (v19 < 0)
          {
            v37 = v47;
            v38 = mdm::zone_mallocator::instance(inited);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v38, v37);
          }

          if (++v15 >= *(a2 + 72))
          {
            return;
          }
        }

        if (SHIBYTE(v48) < 0)
        {
          v39 = v47;
          v40 = mdm::zone_mallocator::instance(inited);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v40, v39);
        }
      }
    }
  }
}

void sub_1B29DF51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__split_buffer<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 48;
    std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>((i - 48));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelShieldEntry>(v5, v4);
  }

  return a1;
}

uint64_t gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
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

uint64_t geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(void *a1, unsigned int a2)
{
  v2 = a2 >> 7;
  if (v2 >= (a1[1] - *a1) >> 3)
  {
    return a1[4];
  }

  v3 = *(*a1 + 8 * v2);
  if (!v3)
  {
    return a1[4];
  }

  v4 = *(v3 + 2 * (a2 & 0x7F));
  v6 = a1[3];
  result = a1[4];
  if (v4 < (result - v6) >> 3)
  {
    v7 = v6 + 8 * v4;
    if (*(v7 + 4) == a2)
    {
      return v7;
    }
  }

  return result;
}

void geo::codec::featureGetNativeShield(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  if (!a1)
  {
    return;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v9 = std::__shared_weak_count::lock(v9);
    if (v9)
    {
      if (*(a1 + 72) > a2 && *a1)
      {
        v11 = (*(*a1 + 1072) + 32 * *(a1 + 60) + 32 * a2);
        if (a3)
        {
          *a3 = *v11;
        }

        if (a5)
        {
          *a5 = v11[1];
        }

        if (a4)
        {
          *a4 = v11[3];
        }

LABEL_19:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v12 = v9;
          (v9->__on_zero_shared)();

          std::__shared_weak_count::__release_weak(v12);
        }

        return;
      }
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (v9)
  {
    goto LABEL_19;
  }
}

uint64_t geo::sparse_set<gdc::Entity,unsigned short,256ul>::_getOrCreatePage(uint64_t *a1, unint64_t a2)
{
  v3 = a2 >> 7;
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  if (a2 >> 7 >= v6 >> 3)
  {
    v7 = v3 + 1;
    v8 = v3 + 1 - (v6 >> 3);
    v9 = a1[2];
    if (v8 > (v9 - v4) >> 3)
    {
      v11 = v9 - v5;
      if (v11 >> 2 > v7)
      {
        v7 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v7;
      }

      v13 = a1;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v12);
    }

    bzero(a1[1], 8 * v8);
    a1[1] = v4 + 8 * v8;
  }

  if (!*(v5 + 8 * v3))
  {
    operator new();
  }

  return *(*a1 + 8 * v3);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>,md::LabelShieldEntry*>(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      *(a3 + 24) = v5[24];
      *v5 = 0;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *(a3 + 32) = *(v5 + 4);
      *(a3 + 40) = *(v5 + 10);
      *(a3 + 44) = v5[44];
      v5 += 48;
      a3 += 48;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>(v4);
      v4 += 48;
    }

    while (v4 != a2);
  }
}

void gdc::ComponentStorageWrapper<std::vector<gdc::Registry *>>::emplace<>(uint64_t *a1, uint64_t a2)
{
  v23 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v23);
  if (v4)
  {
    v6 = a1[11];
    v5 = a1[12];
    if (v6 >= v5)
    {
      v12 = a1[10];
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v12) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v12) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      v28 = a1 + 10;
      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = 24 * v13;
      v24 = 0;
      v25 = v17;
      v26 = 24 * v13;
      v27 = 0;
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *v17 = 0;
      v18 = a1[10];
      v19 = a1[12];
      v20 = a1[11] - v18;
      v7 = (v17 + 24);
      v21 = v17 - v20;
      memcpy((v17 - v20), v18, v20);
      a1[10] = v21;
      a1[11] = v7;
      a1[12] = 0;
      v26 = v18;
      v27 = v19;
      v24 = v18;
      v25 = v18;
      std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(&v24);
    }

    else
    {
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v7 = v6 + 3;
      a1[11] = (v6 + 3);
    }

    a1[11] = v7;
    v10 = a1[31];
LABEL_21:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v10, &v23, 1);
    }

    return;
  }

  v8 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
  v9 = *v8;
  if (*v8)
  {
    *(v8 + 8) = v9;
    operator delete(v9);
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
  }

  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v10 = a1[31];
  if (v8 == a1[11])
  {
    goto LABEL_21;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v10, &v23, 1);
  }
}

void std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__vdeallocate(mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 1);
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    *(a1 + 1) = v1;
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelShieldEntry>(v5, v4);
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }
}

void std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        v3 -= 48;
        std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>(v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelShieldEntry>(v6, v4);
  }
}

uint64_t ggl::Grid::GridPipelineSetup::constantDataIsEnabled(ggl::Grid::GridPipelineSetup *this, unint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(*(this + 2) + 305);
  }

  else
  {
    v2 = a2 <= 3;
  }

  return v2 & 1;
}

uint64_t geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 >> 7 < (a1[1] - *a1) >> 3 && (v5 = *(*a1 + 8 * (v4 >> 7))) != 0)
  {
    v6 = v4 & 0x7F;
    v7 = *(v5 + 2 * v6);
    v9 = a1[3];
    v8 = a1[4];
    v10 = v8 - v9;
    if (v7 < (v8 - v9) >> 3)
    {
      result = v9 + 8 * v7;
      if (v4 == *(result + 4) && v8 != result)
      {
        return result;
      }
    }
  }

  else
  {
    v10 = a1[4] - a1[3];
    v6 = v4 & 0x7F;
  }

  *(geo::sparse_set<gdc::Entity,unsigned short,256ul>::_getOrCreatePage(a1, v4) + 2 * v6) = v10 >> 3;
  v14 = a1[4];
  v13 = a1[5];
  if (v14 < v13)
  {
    *v14 = *a2;
    v21 = (v14 + 1);
  }

  else
  {
    v15 = a1[3];
    v16 = (v14 - v15) >> 3;
    if ((v16 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v17 = v13 - v15;
    v18 = v17 >> 2;
    if (v17 >> 2 <= (v16 + 1))
    {
      v18 = v16 + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v19);
    }

    v20 = (8 * v16);
    *v20 = *a2;
    v21 = 8 * v16 + 8;
    v22 = a1[3];
    v23 = a1[4] - v22;
    v24 = v20 - v23;
    memcpy(v20 - v23, v22, v23);
    v25 = a1[3];
    a1[3] = v24;
    a1[4] = v21;
    a1[5] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  a1[4] = v21;
  return v21 - 8;
}

uint64_t geo::codec::roadFeatureCompareShields(geo::codec *this, const GeoCodecsRoadFeature *a2, const GeoCodecsRoadFeature *a3)
{
  result = 0;
  if (this && a2)
  {
    v6 = *(this + 72);
    v7 = *(a2 + 72);
    result = v6 < v7 ? 0xFFFFFFFFLL : 1;
    if (v6 == v7)
    {
      if (!*(this + 72))
      {
        return 0;
      }

      v8 = 0;
      v9 = 0;
      v10 = 32 * v6;
      while (1)
      {
        v11 = *(this + 1);
        if (v11 && (v12 = std::__shared_weak_count::lock(v11)) != 0)
        {
          v13 = *this;
          if (v9 >= *(this + 72) || v13 == 0)
          {
            v17 = 0;
            v18 = 0;
          }

          else
          {
            v16 = *(v13 + 1072) + 32 * *(this + 15) + v8;
            v17 = *v16;
            v18 = *(v16 + 24);
          }

          if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = *(a2 + 1);
            if (!v15)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v23 = v12;
            (v12->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v23);
            v15 = *(a2 + 1);
            if (!v15)
            {
LABEL_27:
              v20 = 0;
              v21 = 0;
              goto LABEL_31;
            }
          }
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v15 = *(a2 + 1);
          if (!v15)
          {
            goto LABEL_27;
          }
        }

        v19 = std::__shared_weak_count::lock(v15);
        if (!v19)
        {
          goto LABEL_27;
        }

        v20 = 0;
        if (v9 >= *(a2 + 72))
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          if (*a2)
          {
            v22 = *(*a2 + 1072) + 32 * *(a2 + 15) + v8;
            v20 = *v22;
            v21 = *(v22 + 24);
          }
        }

        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v24 = v19;
          v25 = v20;
          (v19->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v24);
          v20 = v25;
        }

LABEL_31:
        if (v18 != v21)
        {
          if (v18 < v21)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 1;
          }
        }

        if (v17 | v20)
        {
          if (!v17 || !v20)
          {
            if (v17)
            {
              return 1;
            }

            else
            {
              return 0xFFFFFFFFLL;
            }
          }

          result = strcmp(v17, v20);
          if (result)
          {
            return result;
          }
        }

        ++v9;
        v8 += 32;
        if (v10 == v8)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<std::array<unsigned short,128ul>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x1B8C62190](v4, 0x1000C40104B78CFLL);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

float md::LabelLineStitchSegment::direction(md::LabelLineStitchSegment *this, int a2, int a3)
{
  if (a2)
  {
    md::LabelLineStitchSegment::point(v29, this, 1uLL);
    v23 = *&md::LabelPoint::vectorToPoint((this + 32), v29, a3);
    v24 = v5;
    v25 = v6;
    v7 = gm::Matrix<double,3,1>::normalized<int,void>(&v23);
    v8 = 0;
    v26 = v7;
    v27 = v9;
    v28 = v10;
    do
    {
      v11 = *(&v26 + v8);
      *(&v30 + v8++) = v11;
    }

    while (v8 != 3);
  }

  else
  {
    v12 = *this;
    if (*this)
    {
      v13 = (*(*v12 + 16))(v12);
    }

    else
    {
      v14 = *(this + 1);
      if (v14)
      {
        v13 = *(v14 + 56);
      }

      else
      {
        v13 = 0;
      }
    }

    md::LabelLineStitchSegment::point(v29, this, v13 - 2);
    v23 = *&md::LabelPoint::vectorToPoint((this + 80), v29, a3);
    v24 = v15;
    v25 = v16;
    v17 = gm::Matrix<double,3,1>::normalized<int,void>(&v23);
    v18 = 0;
    v26 = v17;
    v27 = v19;
    v28 = v20;
    do
    {
      v21 = *(&v26 + v18);
      *(&v30 + v18++) = v21;
    }

    while (v18 != 3);
  }

  return v30;
}

unint64_t std::__invoke[abi:nn200100]<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#2} &,gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[4];
  if (a4)
  {
    v6 = (a1 + 1);
    v7 = a3;
    v8 = (a3 + 8 * a4);
    v42 = a1[4];
    do
    {
      v9 = *v7;
      v44 = *v7;
      if (gdc::Registry::isValid(a2, &v44))
      {
        v10 = *(v5[12] + ((v9 >> 29) & 0x7FFFFFFF8));
        if (v10)
        {
          v12 = *v10;
          v11 = v10[1];
          v13 = v11;
          if (*v10 == v11)
          {
            goto LABEL_12;
          }

          v14 = *v6;
          v13 = *v10;
          while (*v13 < v14)
          {
            v13 += 24;
            if (v13 == v11)
            {
              v13 = v10[1];
              goto LABEL_12;
            }
          }

          if (v13 == v11 || v14 != *v13)
          {
LABEL_12:
            v15 = v10[2];
            if (v11 >= v15)
            {
              v18 = 1 - 0x5555555555555555 * ((v11 - v12) >> 3);
              if (v18 > 0xAAAAAAAAAAAAAAALL)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v12) >> 3);
              if (2 * v19 > v18)
              {
                v18 = 2 * v19;
              }

              if (v19 >= 0x555555555555555)
              {
                v20 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v20 = v18;
              }

              if (v20)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v20);
              }

              v22 = 8 * ((v13 - v12) >> 3);
              v23 = v22;
              if (!(0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3)))
              {
                if (v13 - v12 < 1)
                {
                  if (v13 == v12)
                  {
                    v28 = 1;
                  }

                  else
                  {
                    v28 = 0x5555555555555556 * ((v13 - v12) >> 3);
                  }

                  std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
                }

                v22 = 8 * ((v13 - v12) >> 3) - 24 * ((1 - 0x5555555555555555 * ((8 * ((v13 - v12) >> 3)) >> 3) + ((1 - 0x5555555555555555 * ((8 * ((v13 - v12) >> 3)) >> 3)) >> 63)) >> 1);
                v23 = v22;
              }

              v29 = *v6;
              *(v22 + 16) = *(v6 + 2);
              *v22 = v29;
              v30 = v23 + 24;
              memcpy((v23 + 24), v13, v10[1] - v13);
              v31 = *v10;
              v43 = v30 + v10[1] - v13;
              v10[1] = v13;
              v32 = v13 - v31;
              v33 = (v22 - (v13 - v31));
              memcpy(v33, v31, v32);
              v34 = *v10;
              *v10 = v33;
              *(v10 + 1) = v43;
              v5 = v42;
              if (v34)
              {
                operator delete(v34);
              }
            }

            else if (v13 == v11)
            {
              v21 = *v6;
              *(v11 + 16) = *(v6 + 2);
              *v11 = v21;
              v10[1] = v11 + 24;
            }

            else
            {
              if (v11 < 0x18)
              {
                v16 = v10[1];
              }

              else
              {
                v16 = v11 + 24;
                v17 = *(v11 - 24);
                *(v11 + 16) = *(v11 - 8);
                *v11 = v17;
              }

              v10[1] = v16;
              if (v11 != v13 + 24)
              {
                memmove(v13 + 24, v13, v11 - (v13 + 24));
                v16 = v10[1];
              }

              v24 = v16 <= v6 || v13 > v6;
              v25 = 24;
              if (v24)
              {
                v25 = 0;
              }

              v26 = &v6[v25];
              v27 = *v26;
              *(v13 + 2) = *(v26 + 2);
              *v13 = v27;
            }
          }
        }
      }

      ++v7;
    }

    while (v7 != v8);
  }

  for (i = v5[23]; i; i = *i)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], a2, a3, a4);
  }

  v36 = *a1;
  v37 = v5[41];

  return gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long>::emit(v37, a2, a3, a4, v36);
}

void sub_1B29E0564(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  v7 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v7, v8);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return gdc::Registry::isValid(v5, v6);
}

BOOL gdc::Registry::isValid(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  if (v2 == *(a1 + 40) && (v3 = *(a2 + 1), v4 = *(a1 + 48), v3 < (*(a1 + 56) - v4) >> 3) && (v5 = (v4 + 8 * v3), *v5 == v2) && v5[1] == a2[1])
  {
    return *(v5 + 1) == v3;
  }

  else
  {
    return 0;
  }
}

uint64_t md::FixedLabelLineSegment<5ul>::points(uint64_t a1)
{
  return a1 + 48;
}

{
  return a1 + 48;
}

void ___ZN3geo9TaskQueue14queueAsyncTaskENSt3__110shared_ptrINS_4TaskEEEP16dispatch_group_s_block_invoke_29(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v2)
  {
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  v4 = *(v3 + 16);
  v5 = a1[4];

  dispatch_async(v4, v5);
}

uint64_t gdc::Registry::storage<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>(uint64_t a1)
{
  v3 = 0x6BD391B11DF783CLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6BD391B11DF783CuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>(uint64_t a1)
{
  v3 = 0x4719908BF4103968;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x4719908BF4103968uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void sub_1B29E0C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  std::__function::__value_func<void ()(GeoCodecsRoadFeature const*)>::~__value_func[abi:nn200100](&__p);
  v14 = *v12;
  if (*v12)
  {
    v10[31].__shared_weak_owners_ = v14;
    operator delete(v14);
  }

  md::MapTileData::~MapTileData(v11);
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v15);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::VectorOverlay>(uint64_t a1)
{
  v3 = 0xC3F88573D031CDC5;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xC3F88573D031CDC5);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void sub_1B29E0E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<std::unordered_map<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,std::allocator<std::pair<md::SurfaceKey const,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>> &,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t _ZNSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__3NS_9allocatorISM_EEFvRNS_10unique_ptrINS_13unordered_mapINS2_10SurfaceKeyENSQ_ImNS_10shared_ptrIN3ggl16IOSurfaceTextureEEENS_4hashImEENS_8equal_toImEENSN_INS_4pairIKmSV_EEEEEENS2_14SurfaceKeyHashENS2_15SurfaceKeyEqualENSN_INS10_IKSR_S14_EEEEEENS_14default_deleteIS1A_EEEERKNS_13unordered_setIN3geo8QuadTileENS1G_12QuadTileHashENSY_IS1H_EENSN_IS1H_EEEEEEclES1E_S1N_(uint64_t result, int8x8_t **a2, void *a3)
{
  v3 = (*a2)[2];
  if (!*&v3)
  {
    return result;
  }

  v5 = *(result + 8);
  do
  {
    if (*(*&v3 + 40))
    {
      v6 = (*(*&v3 + 17) - 0x61C8864680B583EBLL + ((*(*&v3 + 16) - 0x61C8864680B583EBLL) << 6) + ((*(*&v3 + 16) - 0x61C8864680B583EBLL) >> 2)) ^ (*(*&v3 + 16) - 0x61C8864680B583EBLL);
      v7 = (*(*&v3 + 20) - 0x61C8864680B583EBLL + (v6 << 6) + (v6 >> 2)) ^ v6;
      v8 = (*(*&v3 + 24) - 0x61C8864680B583EBLL + (v7 << 6) + (v7 >> 2)) ^ v7;
      *(*&v3 + 32) = v8;
      *(*&v3 + 40) = 0;
    }

    else
    {
      v8 = *(*&v3 + 32);
    }

    v9 = a3[1];
    if (!*&v9)
    {
      goto LABEL_21;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v8 >= *&v9)
      {
        v12 = v8 % *&v9;
      }
    }

    else
    {
      v12 = (*&v9 - 1) & v8;
    }

    v13 = *(*a3 + 8 * v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_21:
      v16 = **&v3;
      goto LABEL_51;
    }

    while (1)
    {
      v15 = *(v14 + 1);
      if (v8 == v15)
      {
        break;
      }

      if (v11 > 1)
      {
        if (v15 >= *&v9)
        {
          v15 %= *&v9;
        }
      }

      else
      {
        v15 &= *&v9 - 1;
      }

      if (v15 != v12)
      {
        goto LABEL_21;
      }

LABEL_20:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    result = std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v14 + 16, (*&v3 + 16));
    if ((result & 1) == 0)
    {
      goto LABEL_20;
    }

    v17 = *(*&v3 + 72);
    if (v17)
    {
      v18 = *(*(v17 + 24) + 136);
      v31[0] = *&v3 + 48;
      v19 = std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v5 + 672), *(*&v3 + 48));
      geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>::operator[](v19 + 3, *(v18 + 44));
      operator new();
    }

    v20 = *a2;
    v21 = (*a2)[1];
    v16 = **&v3;
    v22 = *(*&v3 + 8);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = *(*v20 + 8 * v22);
    do
    {
      v25 = v24;
      v24 = *v24;
    }

    while (v24 != v3);
    if (v25 == &v20[2])
    {
      goto LABEL_56;
    }

    v26 = v25[1];
    if (v23.u32[0] > 1uLL)
    {
      if (v26 >= *&v21)
      {
        v26 %= *&v21;
      }
    }

    else
    {
      v26 &= *&v21 - 1;
    }

    v27 = **&v3;
    if (v26 == v22)
    {
LABEL_43:
      if (v27)
      {
        goto LABEL_44;
      }
    }

    else
    {
LABEL_56:
      if (!*&v16)
      {
        goto LABEL_42;
      }

      v28 = *(*&v16 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      v27 = **&v3;
      if (v28 != v22)
      {
LABEL_42:
        *(*v20 + 8 * v22) = 0;
        v27 = **&v3;
        goto LABEL_43;
      }

LABEL_44:
      v29 = *(*&v27 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v29 >= *&v21)
        {
          v29 %= *&v21;
        }
      }

      else
      {
        v29 &= *&v21 - 1;
      }

      if (v29 != v22)
      {
        *(*v20 + 8 * v29) = v25;
        v27 = **&v3;
      }
    }

    *v25 = v27;
    **&v3 = 0;
    --*&v20[3];
    v31[0] = v3;
    v31[1] = v20;
    v32 = 1;
    memset(v33, 0, sizeof(v33));
    result = std::unique_ptr<std::__hash_node<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,void *>>>>::~unique_ptr[abi:nn200100](v31);
LABEL_51:
    v3 = v16;
  }

  while (v16);
  return result;
}

uint64_t geo::codec::forEachRoad(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(a2 + 24))
    {
      v3 = *(result + 32);
      v4 = *(result + 40) - v3;
      if (v4)
      {
        v5 = 0xCF3CF3CF3CF3CF3DLL * (v4 >> 3);
        do
        {
          if (*(v3 + 154) == 1)
          {
            v7 = v3;
            v6 = *(a2 + 24);
            if (!v6)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            result = (*(*v6 + 48))(v6, &v7);
          }

          v3 += 168;
          --v5;
        }

        while (v5);
      }
    }
  }

  return result;
}

void std::__function::__func<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1,std::allocator<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1>,void ()(GeoCodecsRoadFeature const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  md::createFeatureAttributeSet(v8, (*a2 + 24));
  if (gss::FeatureAttributeSet::getValueForAttributeKey(v8[0], v8[1], 74, &v6))
  {
    v4 = *(a1 + 8);
    v5 = **(a1 + 16);
    v7[0] = &unk_1F29E2B28;
    v7[1] = v5;
    v7[3] = v7;
    geo::codec::forEachEdgeInRoad(*v4, v3, 0, v7);
    std::__function::__value_func<void ()(GeoCodecsRoadEdge *)>::~__value_func[abi:nn200100](v7);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v8);
}

void sub_1B29E1404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(GeoCodecsRoadEdge *)>::~__value_func[abi:nn200100](va);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *geo::codec::forEachEdgeInRoad(std::__shared_weak_count *result, uint64_t a2, char a3, uint64_t a4)
{
  if (!a2 || !result || !*(a4 + 24))
  {
    return result;
  }

  v5 = result[29].__vftable;
  shared_weak_owners = result[30].__shared_weak_owners_;
  if (!*(a2 + 96))
  {
    goto LABEL_10;
  }

  v7 = a3;
  v8 = a2;
  result = geo::codec::vertexPoolForFeature(a2);
  if (!result)
  {
    v11 = -1;
    a3 = v7;
    a2 = v8;
    goto LABEL_13;
  }

  shared_owners = result[1].__shared_owners_;
  a3 = v7;
  if (!shared_owners)
  {
    v11 = -1;
    a2 = v8;
    goto LABEL_13;
  }

  a2 = v8;
  v10 = *(v8 + 92);
  if (result[1].__shared_weak_owners_ > v10 && *(shared_owners + 16 * v10) < result->__shared_weak_owners_)
  {
    v11 = *(shared_owners + 16 * v10 + 8) - 1;
  }

  else
  {
LABEL_10:
    v11 = -1;
  }

LABEL_13:
  v12 = *(a2 + 132);
  v13 = *(a2 + 144);
  v30 = a2;
  v14 = shared_weak_owners + 8 * v12;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (a3)
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      if (v16 >= v13)
      {
        v19 = 0;
        v20 = 0;
        v18 = v11;
      }

      else
      {
        v17 = *(v14 + 8 * v16);
        v18 = v17[3];
        v19 = *v17;
        v20 = v5 + 32 * v19;
      }

      v31.i64[1] = v18;
      v32.i64[1] = v19;
      v33.i64[1] = v20;
      if (v15 < v18)
      {
        v34 = &v30;
        v21 = *(a4 + 24);
        if (!v21)
        {
          goto LABEL_32;
        }

        (*(*v21 + 48))(v21, &v34);
        v31 = vextq_s8(v31, v31, 8uLL);
        v32 = vextq_s8(v32, v32, 8uLL);
        v33 = vextq_s8(v33, v33, 8uLL);
        v34 = &v30;
        v22 = *(a4 + 24);
        if (!v22)
        {
          goto LABEL_32;
        }

        result = (*(*v22 + 48))(v22, &v34);
        v18 = v31.i64[0];
        v19 = v32.i64[0];
        v31.i64[1] = v31.i64[0];
        v32.i64[1] = v32.i64[0];
        v20 = v33.i64[0];
        v33.i64[1] = v33.i64[0];
      }

      v31.i64[0] = v18;
      v32.i64[0] = v19;
      v33.i64[0] = v20;
      ++v16;
      v15 = v18;
      if (v13 + 1 == v16)
      {
        return result;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  do
  {
    if (v24 >= v13)
    {
      v27 = 0;
      v28 = 0;
      v26 = v11;
    }

    else
    {
      v25 = *(v14 + 8 * v24);
      v26 = v25[3];
      v27 = *v25;
      v28 = v5 + 32 * v27;
    }

    v31.i64[1] = v26;
    v32.i64[1] = v27;
    v33.i64[1] = v28;
    if (v23 < v26)
    {
      v34 = &v30;
      v29 = *(a4 + 24);
      if (!v29)
      {
LABEL_32:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v29 + 48))(v29, &v34);
      v26 = v31.u64[1];
      v27 = v32.i64[1];
      v28 = v33.i64[1];
    }

    v31.i64[0] = v26;
    v32.i64[0] = v27;
    v33.i64[0] = v28;
    ++v24;
    v23 = v26;
  }

  while (v13 + 1 != v24);
  return result;
}

void ___ZN2md23TiledGEOResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS3_15ResourceKeyHashENS1_8equal_toIS4_EENS1_9allocatorINS1_4pairIKS4_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke_17(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v12 = a5;
  a6;
  v14 = 0;
  if (v8)
  {
    v9 = [v8 decodedRepresentation];
    v10 = v9;
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v13 = v12;
      v11 = [v8 readDataWithError:&v13];
      v13;

      v14 = v11;
    }
  }

  std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>();
}

void sub_1B29E1F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, void *a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a41 == 1 && a30 != a32)
  {
    free(a30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0,std::allocator<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0>,void ()(GeoCodecsRoadEdge *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 8);
    v33 = 0;
    v4 = geo::codec::multiSectionFeaturePoints(*v2, 0, &v33);
    v6 = *(v2 + 8);
    if (v6 < v33)
    {
      v7 = *(v2 + 16);
      if (v7 < v33)
      {
        v8 = v4;
        *&v5 = *(&v4->__vftable + v6);
        v9.i64[0] = v5;
        v9.i64[1] = v5;
        v10 = *(v3 + 752);
        v11.i64[0] = *(v3 + 752);
        v11.i64[1] = v5;
        v12.i64[0] = v5;
        v12.i64[1] = vextq_s8(v10, v10, 8uLL).u64[0];
        *(v3 + 752) = vbslq_s8(vcgtq_f32(v11, v12), v9, v10);
        if (v6 < v7)
        {
          v13 = v6 + 1;
          v14 = *(v3 + 736);
          do
          {
            v15 = v5;
            *&v5 = *(&v8->__vftable + v13);
            v16.i64[0] = v5;
            v16.i64[1] = v5;
            v17 = *(v3 + 752);
            v18.i64[0] = *(v3 + 752);
            v18.i64[1] = v5;
            v19.i64[0] = v5;
            v19.i64[1] = vextq_s8(v17, v17, 8uLL).u64[0];
            *(v3 + 752) = vbslq_s8(vcgtq_f32(v18, v19), v16, v17);
            v20 = *(v3 + 744);
            if (v14 >= v20)
            {
              v21 = *(v3 + 728);
              v22 = (v14 - v21) >> 4;
              if ((v22 + 1) >> 60)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v23 = v20 - v21;
              v24 = v23 >> 3;
              if (v23 >> 3 <= (v22 + 1))
              {
                v24 = v22 + 1;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF0)
              {
                v25 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v24;
              }

              v32 = v5;
              if (v25)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v25);
              }

              v26 = (16 * v22);
              *v26 = v15;
              v26[1] = vsub_f32(*&v5, v15);
              v27 = *(v3 + 736);
              v28 = *(v3 + 728);
              v29 = 16 * v22 + v28 - v27;
              if (v27 != v28)
              {
                v30 = (v26 + v28 - v27);
                do
                {
                  v31 = *v28;
                  v28 += 16;
                  *v30++ = v31;
                }

                while (v28 != v27);
                v28 = *(v3 + 728);
              }

              *(v3 + 728) = v29;
              v14 = v26 + 2;
              *(v3 + 736) = v26 + 2;
              *(v3 + 744) = 0;
              if (v28)
              {
                operator delete(v28);
                v5 = v32;
              }
            }

            else
            {
              *v14 = v15;
              v14[1] = vsub_f32(*&v5, v15);
              v14 += 2;
            }

            *(v3 + 736) = v14;
            ++v13;
          }

          while (v13 <= v7);
        }
      }
    }
  }
}

void *std::vector<md::MapDataType>::__assign_with_size[abi:nn200100]<md::MapDataType*,md::MapDataType*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<md::MapDataType>::__vallocate[abi:nn200100](v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::__function::__value_func<void ()(GeoCodecsRoadEdge *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::Logic<md::OverlaysLogic,md::OverlaysContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xADE8F13E6C18D970)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>::resolveDependencies(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::Logic<md::DrapingLogic,md::DrapingContext,md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>>::allocateContext(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>::resolveDependencies(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xADE8F13E6C18D970);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0xADE8F13E6C18D970))
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

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x9F2276D081C2CB20);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x9F2276D081C2CB20))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8BD499FBD96FBB9ELL);
  v14 = *(result[5] + 32);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

uint64_t md::Logic<md::DrapingLogic,md::DrapingContext,md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1B9039CBDAB12E5CLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>::resolveDependencies(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::DrapingLogic,md::DrapingContext,md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1B9039CBDAB12E5CLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>::resolveDependencies(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::DrapingLogic::runBeforeLayoutAtVariableRate(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v257 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v7 = a3[2];
  v6 = a3[3];
  v8 = gdc::Camera::cameraFrame(a3[1]);
  v9 = v6[1] | *v6 ^ 1;
  if (fabs(*(v8 + 32)) <= 0.0001)
  {
    v9 = 1;
  }

  v237 = v9 & 1;
  v225 = v5;
  v236 = *(v5 + 168);
  v10 = v236;
  v204 = v7;
  v200 = md::SceneContext::layerDataInView(v7, 33);
  v235[0] = &v236;
  v235[1] = &v237;
  v220 = a1;
  v235[2] = a1;
  v11 = gdc::Registry::storage<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>(v236);
  v12 = gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(v10);
  v13 = gdc::Registry::storage<std::vector<gdc::Registry*>>(v10);
  v14.i64[0] = v11;
  v14.i64[1] = v12;
  v222 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::minEntityStorage(v13, v14);
  if (v11 + 4 == v222)
  {
    v140 = v11[7];
    v141 = v11[8];
    if (v140 != v141)
    {
      v142 = v11[10];
      do
      {
        v143 = *(v140 + 4);
        if (v12[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v12 + 4, v143) && v13[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v13 + 4, v143))
        {
          v144 = *v140;
          v145 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>(v12, *v140);
          v146 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v13, v144);
          _ZZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__2clENS5_6EntityERNS_17overlayComponents17RasterOverlayBaseINS_15OverlayTileData19OverlayTileResource10RasterTileEEERNSt3__113unordered_mapIPNS5_8RegistryENSS_6vectorISK_NSS_9allocatorISK_EEEENSS_4hashISV_EENSS_8equal_toISV_EENSX_INSS_4pairIKSV_SZ_EEEEEERNSW_ISV_NSX_ISV_EEEE(v235, v144, v142, v145, v146);
        }

        v142 += 8;
        v140 += 8;
      }

      while (v140 != v141);
    }
  }

  if (v12 + 4 == v222)
  {
    v147 = v12[7];
    v148 = v12[8];
    if (v147 != v148)
    {
      v149 = v12[10];
      do
      {
        v150 = *(v147 + 4);
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11 + 4, v150);
        v152 = v11[8];
        if (v152 != Index && v13[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v13 + 4, v150))
        {
          v153 = *v147;
          v154 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v11 + 4, HIDWORD(*v147));
          if (v152 == v154)
          {
            v155 = v11[11];
          }

          else
          {
            v155 = v11[10] + v154 - v11[7];
          }

          v156 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v13, v153);
          _ZZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__2clENS5_6EntityERNS_17overlayComponents17RasterOverlayBaseINS_15OverlayTileData19OverlayTileResource10RasterTileEEERNSt3__113unordered_mapIPNS5_8RegistryENSS_6vectorISK_NSS_9allocatorISK_EEEENSS_4hashISV_EENSS_8equal_toISV_EENSX_INSS_4pairIKSV_SZ_EEEEEERNSW_ISV_NSX_ISV_EEEE(v235, v153, v155, v149, v156);
        }

        v149 += 40;
        v147 += 8;
      }

      while (v147 != v148);
    }
  }

  if (v13 + 4 == v222)
  {
    v157 = v13[7];
    v158 = v13[8];
    if (v157 != v158)
    {
      v159 = v13[10];
      do
      {
        v160 = *(v157 + 4);
        v161 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11 + 4, v160);
        v162 = v11[8];
        if (v162 != v161 && v12[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v12 + 4, v160))
        {
          v163 = *v157;
          v164 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v11 + 4, HIDWORD(*v157));
          if (v162 == v164)
          {
            v165 = v11[11];
          }

          else
          {
            v165 = v11[10] + v164 - v11[7];
          }

          v166 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>(v12, v163);
          _ZZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__2clENS5_6EntityERNS_17overlayComponents17RasterOverlayBaseINS_15OverlayTileData19OverlayTileResource10RasterTileEEERNSt3__113unordered_mapIPNS5_8RegistryENSS_6vectorISK_NSS_9allocatorISK_EEEENSS_4hashISV_EENSS_8equal_toISV_EENSX_INSS_4pairIKSV_SZ_EEEEEERNSW_ISV_NSX_ISV_EEEE(v235, v163, v165, v166, v159);
        }

        v159 += 3;
        v157 += 8;
      }

      while (v157 != v158);
    }
  }

  v15 = v236;
  v16 = gdc::Registry::storage<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>(v236);
  v17 = gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(v15);
  v18 = gdc::Registry::storage<std::vector<gdc::Registry*>>(v15);
  v19.i64[0] = v16;
  v19.i64[1] = v17;
  v223 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::minEntityStorage(v18, v19);
  if (v16 + 4 == v223)
  {
    v167 = v16[7];
    v168 = v16[8];
    if (v167 != v168)
    {
      v169 = v16[10];
      do
      {
        v170 = *(v167 + 4);
        if (v17[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v17 + 4, v170) && v18[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v18 + 4, v170))
        {
          v171 = *v167;
          v172 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>(v17, *v167);
          v173 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v18, v171);
          _ZZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__3clENS5_6EntityERNS_17overlayComponents17RasterOverlayBaseINS_15OverlayTileData19OverlayTileResource7TextureEEERNSt3__113unordered_mapIPNS5_8RegistryENSS_6vectorISK_NSS_9allocatorISK_EEEENSS_4hashISV_EENSS_8equal_toISV_EENSX_INSS_4pairIKSV_SZ_EEEEEERNSW_ISV_NSX_ISV_EEEE(v235, v171, v169, v172, v173);
        }

        v169 += 8;
        v167 += 8;
      }

      while (v167 != v168);
    }
  }

  if (v17 + 4 == v223)
  {
    v174 = v17[7];
    v175 = v17[8];
    if (v174 != v175)
    {
      v176 = v17[10];
      do
      {
        v177 = *(v174 + 4);
        v178 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v16 + 4, v177);
        v179 = v16[8];
        if (v179 != v178 && v18[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v18 + 4, v177))
        {
          v180 = *v174;
          v181 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v16 + 4, HIDWORD(*v174));
          if (v179 == v181)
          {
            v182 = v16[11];
          }

          else
          {
            v182 = v16[10] + v181 - v16[7];
          }

          v183 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v18, v180);
          _ZZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__3clENS5_6EntityERNS_17overlayComponents17RasterOverlayBaseINS_15OverlayTileData19OverlayTileResource7TextureEEERNSt3__113unordered_mapIPNS5_8RegistryENSS_6vectorISK_NSS_9allocatorISK_EEEENSS_4hashISV_EENSS_8equal_toISV_EENSX_INSS_4pairIKSV_SZ_EEEEEERNSW_ISV_NSX_ISV_EEEE(v235, v180, v182, v176, v183);
        }

        v176 += 40;
        v174 += 8;
      }

      while (v174 != v175);
    }
  }

  if (v18 + 4 == v223)
  {
    v184 = v18[7];
    v185 = v18[8];
    if (v184 != v185)
    {
      v186 = v18[10];
      do
      {
        v187 = *(v184 + 4);
        v188 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v16 + 4, v187);
        v189 = v16[8];
        if (v189 != v188 && v17[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v17 + 4, v187))
        {
          v190 = *v184;
          v191 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v16 + 4, HIDWORD(*v184));
          if (v189 == v191)
          {
            v192 = v16[11];
          }

          else
          {
            v192 = v16[10] + v191 - v16[7];
          }

          v193 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>(v17, v190);
          _ZZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__3clENS5_6EntityERNS_17overlayComponents17RasterOverlayBaseINS_15OverlayTileData19OverlayTileResource7TextureEEERNSt3__113unordered_mapIPNS5_8RegistryENSS_6vectorISK_NSS_9allocatorISK_EEEENSS_4hashISV_EENSS_8equal_toISV_EENSX_INSS_4pairIKSV_SZ_EEEEEERNSW_ISV_NSX_ISV_EEEE(v235, v190, v192, v193, v186);
        }

        v186 += 3;
        v184 += 8;
      }

      while (v184 != v185);
    }
  }

  v20 = *(v220 + 168);
  v21 = v20[3];
  if (v21)
  {
    do
    {
      v22 = v21[9];
      while (v22)
      {
        v23 = *(v22 + 72);
        v24 = *(v23 + 32);
        if (v24)
        {
          v25 = *(v24 + 8) == -1;
        }

        else
        {
          v25 = 1;
        }

        v26 = *(v23 + 48);
        if (v26 && (*(v26 + 8) == -1 ? (v27 = 1) : (v27 = v25), v27 != 1))
        {
          v22 = *v22;
        }

        else
        {
          if (GEOGetVectorKitDrapingLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitDrapingLog_onceToken, &__block_literal_global_61);
          }

          v28 = GEOGetVectorKitDrapingLog_log;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            md::to_string(&__p, (v21 + 2));
            v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315138;
            *&buf[4] = v29;
            _os_log_impl(&dword_1B2754000, v28, OS_LOG_TYPE_DEBUG, "Canceling draping entry %s", buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (!atomic_load(*(v22 + 72)))
          {
            atomic_store(3u, *(v22 + 72));
            atomic_store(1u, (*(*(v22 + 72) + 8) + 32));
          }

          v22 = std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::erase(v21 + 7, v22);
        }
      }

      v21 = *v21;
    }

    while (v21);
    v31 = v20[3];
    if (v31)
    {
      v32 = v20 + 1;
      while (1)
      {
        v33 = v31[9];
        while (v33)
        {
          v34 = *(*(v33 + 72) + 8);
          if (v34 && (v35 = atomic_load((v34 + 32)), (v35 & 1) != 0) && ((v36 = atomic_load((*(*(v33 + 72) + 8) + 33)), (v36 & 1) != 0) || (v37 = atomic_load(*(v33 + 72)), v37 != 1)))
          {
            v38 = *v33;
            std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::erase(&v31[7], v33);
            v33 = v38;
          }

          else
          {
            v33 = *v33;
          }
        }

        v39 = *v31;
        if (v31[10])
        {
          goto LABEL_44;
        }

        v40 = v20[2];
        v41 = v31[1];
        v42 = vcnt_s8(v40);
        v42.i16[0] = vaddlv_u8(v42);
        if (v42.u32[0] > 1uLL)
        {
          if (v41 >= *&v40)
          {
            v41 %= *&v40;
          }
        }

        else
        {
          v41 &= *&v40 - 1;
        }

        v43 = *(*v32 + 8 * v41);
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43 != v31);
        if (v44 == &v20[3])
        {
          goto LABEL_278;
        }

        v45 = v44[1];
        if (v42.u32[0] > 1uLL)
        {
          if (v45 >= *&v40)
          {
            v45 %= *&v40;
          }
        }

        else
        {
          v45 &= *&v40 - 1;
        }

        v46 = *v31;
        if (v45 != v41)
        {
LABEL_278:
          if (v39)
          {
            v47 = v39[1];
            if (v42.u32[0] > 1uLL)
            {
              if (v47 >= *&v40)
              {
                v47 %= *&v40;
              }
            }

            else
            {
              v47 &= *&v40 - 1;
            }

            v46 = *v31;
            if (v47 == v41)
            {
LABEL_60:
              v48 = v46[1];
              if (v42.u32[0] > 1uLL)
              {
                if (v48 >= *&v40)
                {
                  v48 %= *&v40;
                }
              }

              else
              {
                v48 &= *&v40 - 1;
              }

              if (v48 != v41)
              {
                *(*v32 + 8 * v48) = v44;
                v46 = *v31;
              }

              goto LABEL_64;
            }
          }

          *(*v32 + 8 * v41) = 0;
          v46 = *v31;
        }

        if (v46)
        {
          goto LABEL_60;
        }

LABEL_64:
        *v44 = v46;
        *v31 = 0;
        --*&v20[4];
        __p.__r_.__value_.__r.__words[0] = v31;
        __p.__r_.__value_.__l.__size_ = &v20[1];
        __p.__r_.__value_.__s.__data_[16] = 1;
        *(&__p.__r_.__value_.__r.__words[2] + 1) = 0;
        HIDWORD(__p.__r_.__value_.__r.__words[2]) = 0;
        std::unique_ptr<std::__hash_node<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,void *>>>>::~unique_ptr[abi:nn200100](&__p);
LABEL_44:
        v31 = v39;
        if (!v39)
        {
          v130 = v20[3];
          for (v20[6] = 0; v130; v130 = *v130)
          {
            for (i = v130[9]; i; i = *i)
            {
              v132 = *(i[9] + 8);
              if (v132)
              {
                v133 = atomic_load((v132 + 33));
                v134 = i[9];
                if (v133)
                {
                  v135 = atomic_load(v134);
                  v134 = i[9];
                  if (v135 == 2)
                  {
                    v136 = *(v134 + 112);
                    v137 = *(v134 + 120);
                    if (v136 != v137)
                    {
                      v138 = v20[6].i32[0];
                      do
                      {
                        v138 += md::ClientDrapedMeshes::vertexCount(v136);
                        v20[6].i32[0] = v138;
                        v136 = (v136 + 80);
                      }

                      while (v136 != v137);
                    }
                  }
                }

                v139 = atomic_load((*(v134 + 8) + 33));
                if ((v139 & 1) == 0)
                {
                  ++v20[6].i32[1];
                }
              }
            }
          }

          goto LABEL_74;
        }
      }
    }
  }

  v20[6] = 0;
LABEL_74:
  v49 = *(v225 + 216);
  v199 = *(v225 + 224);
  if (v49 == v199)
  {
    goto LABEL_152;
  }

  do
  {
    v203 = v49;
    v201 = *v49;
    v50 = md::SceneContext::layerDataInView(v204, *v49);
    v51 = *v50;
    v226 = v50 + 1;
    if (*v50 == v50 + 1)
    {
      goto LABEL_151;
    }

    do
    {
      v52 = v51[4];
      v53 = v51[5];
      v229[0] = v52;
      v229[1] = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53 + 1, 1uLL, memory_order_relaxed);
      }

      v54 = *(v52 + 169);
      v56 = *(v52 + 172);
      v55 = *(v52 + 176);
      v57 = *(v52 + 168);
      v224 = *(v52 + 184);
      v221 = *(v52 + 192);
      v232 = 0;
      v233 = 0;
      v234 = 0;
      v58 = *(v225 + 184);
      v59 = *(v225 + 192);
      if (v58 == v59)
      {
        goto LABEL_95;
      }

      do
      {
        v60 = *(v58 + 1);
        __p.__r_.__value_.__s.__data_[1] = *(v58 + 1);
        v62 = *(v58 + 4);
        v61 = *(v58 + 8);
        *(__p.__r_.__value_.__r.__words + 4) = __PAIR64__(v61, v62);
        __p.__r_.__value_.__s.__data_[0] = *v58;
        __p.__r_.__value_.__r.__words[2] = *(v58 + 16);
        LOBYTE(v249) = *(v58 + 24);
        v250[0] = *(v58 + 32);
        if (__p.__r_.__value_.__s.__data_[0] != v57)
        {
          goto LABEL_91;
        }

        v63 = v60 - v54;
        if (v60 < v54)
        {
          if (v62 == v56 >> (v54 - v60) && v61 == v55 >> (v54 - v60))
          {
LABEL_90:
            std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(&v232, v250);
            goto LABEL_91;
          }
        }

        else if (v60 == v54 && v62 == v56 && v61 == v55)
        {
          goto LABEL_90;
        }

        if (v54 >= v60)
        {
          if (v54 == v60 && v56 == v62 && v55 == v61)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v64 = v61 >> v63;
          v65 = v56 == v62 >> v63 && v55 == v64;
          if (v65)
          {
            goto LABEL_90;
          }
        }

LABEL_91:
        v58 += 40;
      }

      while (v58 != v59);
      v66 = v232;
      if (v232 != v233)
      {
        v198 = v233;
        v208 = v200 + 1;
        v70 = v232;
        do
        {
          v197 = v70;
          v71 = gdc::Context::context<md::components::SharedTransformData>(*v70);
          v72 = *(v71 + 1);
          v239 = *(v71 + 1);
          *&v73 = *(v71 + 4);
          *v240 = v73;
          v74 = *v71;
          v238 = *v71;
          v75 = v71[2];
          v241 = v75;
          v76 = *(v71 + 24);
          v242 = *(v71 + 24);
          v227 = 0;
          v228 = 0;
          v77 = *v200;
          if (*v200 == v208)
          {
LABEL_272:
            v194 = GEOGetVectorKitDrapingLogicLog();
            if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
              *(__p.__r_.__value_.__r.__words + 4) = "false";
              WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
              *(&__p.__r_.__value_.__r.__words[1] + 6) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/Overlays/DrapingLogic.mm";
              HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
              v249 = 374;
              _os_log_impl(&dword_1B2754000, v194, OS_LOG_TYPE_ERROR, "No backing data for foundation mesh. Check DaVinciGroundTileData.: Assertion with expression - %s : Failed in file - %s line - %i", &__p, 0x1Cu);
            }
          }

          else
          {
            v206 = v66;
            v207 = v53;
            while (1)
            {
              v79 = v77[4];
              v78 = v77[5];
              if (v78)
              {
                atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v80 = *(v79 + 169);
              v82 = *(v79 + 172);
              v81 = *(v79 + 176);
              v83 = *(v79 + 168);
              if (*(v79 + 192) == 1)
              {
                v92 = (v80 - 0x61C8864680B583EBLL + ((v83 - 0x61C8864680B583EBLL) << 6) + ((v83 - 0x61C8864680B583EBLL) >> 2)) ^ (v83 - 0x61C8864680B583EBLL);
                v93 = (v82 - 0x61C8864680B583EBLL + (v92 << 6) + (v92 >> 2)) ^ v92;
                v84 = (v81 - 0x61C8864680B583EBLL + (v93 << 6) + (v93 >> 2)) ^ v93;
              }

              else
              {
                v84 = *(v79 + 184);
              }

              if (v76)
              {
                v214 = *(v79 + 169);
                v217 = v78;
                v209 = v84;
                v211 = *(v79 + 168);
                v85 = *(v79 + 172);
                v205 = *(v79 + 176);
                geo::QuadTile::computeHash(&v238);
                LODWORD(v81) = v205;
                LODWORD(v82) = v85;
                v84 = v209;
                LODWORD(v83) = v211;
                LODWORD(v80) = v214;
                v78 = v217;
                v53 = v207;
                v76 = 0;
                v242 = 0;
                v75 = v241;
                v74 = v238;
                v72 = v239;
                *&v73 = *v240;
              }

              if (v84 == v75 && v83 == v74)
              {
                v86 = v80 == v72 && v82 == v73;
                if (v86 && v81 == DWORD1(v73))
                {
                  break;
                }
              }

              if (v78)
              {
                v218 = v76;
                v88 = v72;
                v89 = v74;
                v215 = v75;
                v212 = v73;
                std::__shared_weak_count::__release_shared[abi:nn200100](v78);
                v73 = v212;
                v75 = v215;
                v74 = v89;
                v72 = v88;
                v53 = v207;
                v76 = v218;
              }

              v90 = v77[1];
              v66 = v206;
              if (v90)
              {
                do
                {
                  v91 = v90;
                  v90 = *v90;
                }

                while (v90);
              }

              else
              {
                do
                {
                  v91 = v77[2];
                  v65 = *v91 == v77;
                  v77 = v91;
                }

                while (!v65);
              }

              v77 = v91;
              if (v91 == v208)
              {
                goto LABEL_272;
              }
            }

            v94 = v78;
            if (v78)
            {
              atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
              v228 = v78;
              v219 = v76;
              v216 = v80;
              v210 = v84;
              v213 = v83;
              std::__shared_weak_count::__release_shared[abi:nn200100](v78);
              v84 = v210;
              LOBYTE(v83) = v213;
              LOBYTE(v80) = v216;
              LOBYTE(v76) = v219;
            }

            v227 = v79;
            v95 = *(v79 + 8);
            BYTE1(v243) = v80;
            *(&v243 + 4) = *v240;
            LOBYTE(v243) = v83;
            v244 = v84;
            v245 = v76;
            v246 = v95;
            v96 = *(v52 + 8);
            __p.__r_.__value_.__s.__data_[1] = v54;
            *(__p.__r_.__value_.__r.__words + 4) = __PAIR64__(v55, v56);
            __p.__r_.__value_.__s.__data_[0] = v57;
            __p.__r_.__value_.__r.__words[2] = v224;
            LOBYTE(v249) = v221;
            LOWORD(v250[0]) = v201;
            HIDWORD(v250[0]) = v96;
            v195 &= 0xFFFFFFFFFFFFFF00;
            v196 &= 0xFFFFFFFFFFFFFF00;
            v250[1] = v195;
            v250[2] = v196;
            md::DrapingLogic::_drapeKeyPair(v220, &v243, &__p, &v227, v229);
            v66 = v206;
            if (*(v220 + 224) == 1 && md::ElevatedStrokeTileData::groupContainingFeature(*(v52 + 760), *(v52 + 768), *(v220 + 216)))
            {
              v97 = *(v52 + 8);
              buf[1] = v54;
              *&buf[4] = v56;
              *&buf[8] = v55;
              buf[0] = v57;
              *&v253 = v224;
              BYTE8(v253) = v221;
              LOWORD(v254) = v201;
              v255 = v97;
              v256 = *(v220 + 216);
              md::DrapingLogic::_drapeKeyPair(v220, &v243, buf, &v227, v229);
            }

            if (v94)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v94);
            }
          }

          v70 = v197 + 1;
        }

        while (v197 + 1 != v198);
      }

      if (v66)
      {
        operator delete(v66);
      }

LABEL_95:
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      v67 = v51[1];
      if (v67)
      {
        do
        {
          v68 = v67;
          v67 = *v67;
        }

        while (v67);
      }

      else
      {
        do
        {
          v68 = v51[2];
          v65 = *v68 == v51;
          v51 = v68;
        }

        while (!v65);
      }

      v51 = v68;
    }

    while (v68 != v226);
LABEL_151:
    v49 = v203 + 1;
  }

  while (v203 + 1 != v199);
LABEL_152:
  v98 = v220;
  v99 = *(v220 + 168);
  if (*(v220 + 400))
  {
    *buf = 0u;
    v253 = 0u;
    v254 = 1065353216;
    v100 = *(v99 + 24);
    if (v100)
    {
      do
      {
        for (j = v100[9]; j; j = *j)
        {
          v102 = atomic_load(j[9]);
          if (v102 != 2)
          {
            v103 = atomic_load(j[9]);
            if (v103 != 3)
            {
              v104 = j[9];
              if (*(v104 + 15) * *(v104 + 14))
              {
                v105 = v104[4];
                if (v105)
                {
                  v106 = std::__shared_weak_count::lock(v105);
                  if (v106)
                  {
                    v107 = v104[3];
                  }

                  else
                  {
                    v107 = 0;
                  }
                }

                else
                {
                  v107 = 0;
                  v106 = 0;
                }

                v108 = j[9];
                v109 = v108[6];
                if (v109)
                {
                  v110 = std::__shared_weak_count::lock(v109);
                  if (v110)
                  {
                    v111 = v110;
                    if (v107)
                    {
                      v112 = v108[5];
                      if (v112)
                      {
                        FillRect = grl::IconMetricsRenderResult::getFillRect(v107);
                        gdc::LayerDataRequestKey::LayerDataRequestKey(&__p, FillRect);
                        v114 = grl::IconMetricsRenderResult::getFillRect(v112);
                        gdc::LayerDataRequestKey::LayerDataRequestKey(&v251, v114);
                        std::__hash_table<md::FoundationOverlayPair,md::FoundationOverlayPairHash,std::equal_to<md::FoundationOverlayPair>,std::allocator<md::FoundationOverlayPair>>::__emplace_unique_key_args<md::FoundationOverlayPair,md::FoundationOverlayPair>(buf, &__p);
                        md::FoundationOverlayPair::~FoundationOverlayPair(&__p);
                      }
                    }

                    std::__shared_weak_count::__release_shared[abi:nn200100](v111);
                  }
                }

                if (v106)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v106);
                }
              }
            }
          }
        }

        v100 = *v100;
      }

      while (v100);
      v98 = v220;
      if (*(&v253 + 1))
      {
        md::DrapingLogic::_fixUpHoles(v220, v253, v204, (v225 + 216));
      }
    }

    std::__hash_table<md::FoundationOverlayPair,md::FoundationOverlayPairHash,std::equal_to<md::FoundationOverlayPair>,std::allocator<md::FoundationOverlayPair>>::~__hash_table(buf);
    v99 = *(v98 + 168);
  }

  *(a4 + 16) = v99 + 8;
  v115 = +[VKDebugSettings sharedSettings];
  v116 = [v115 daVinciDrawCollisionMesh];

  if (v116)
  {
    v117 = *(v220 + 120);
    v247[0] = &unk_1F29E1F00;
    v247[3] = v247;
    md::RegistryManager::entering(buf, v117, v247);
    std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v247);
    md::FilteredIterator<std::vector<gdc::Registry *>>::begin(&v243, buf);
    md::FilteredIterator<std::vector<gdc::Registry *>>::end(&v238, buf);
    while (*&v240[4] != *(&v243 + 1))
    {
      v231 = **(&v243 + 1);
      v230[0] = gdc::Registry::view<md::components::MeshInstance,md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>(v231);
      v230[1] = v118;
      v232 = 0;
      v233 = 0;
      v234 = 0;
      _ZNK3gdc12RegistryViewIJN2md10components12MeshInstanceENS1_17overlayComponents18FoundationMeshTypeILN3gss8MeshTypeE24EEEEE4eachIZNS1_12DrapingLogic29runBeforeLayoutAtVariableRateERKNS1_13LayoutContextERKNS1_17LogicDependenciesIJNS_8TypeListIJNS1_15OverlaysContextENS1_13CameraContextENS1_19PendingSceneContextENS1_16ElevationContextEEEENSG_IJEEEEE20ResolvedDependenciesERNS1_14DrapingContextEE3__4EEvT_(v230, &v231, &v232);
      if (v232 != v233)
      {
        *&__p.__r_.__value_.__l.__data_ = xmmword_1B33AFEE0;
        std::make_shared[abi:nn200100]<md::VectorOverlayMaterial,geo::Color<float,4,(geo::ColorSpace)2>,0>();
      }

      if (v232)
      {
        v233 = v232;
        operator delete(v232);
      }

      md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(&v243);
    }

    std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v241);
    std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v244);
    std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v253);
  }

  v119 = *(v220 + 168);
  *&v243 = v204;
  for (k = *(v119 + 24); k; k = *k)
  {
    v121 = k[9];
    while (v121)
    {
      v122 = atomic_load(*(v121 + 72));
      if (v122 == 1 || (v123 = atomic_load(*(v121 + 72)), v123 == 2))
      {
LABEL_190:
        v121 = *v121;
      }

      else
      {
        v124 = *(v121 + 72);
        v125 = v124[4];
        __p.__r_.__value_.__r.__words[0] = v124[3];
        __p.__r_.__value_.__l.__size_ = v125;
        if (v125)
        {
          atomic_fetch_add_explicit(&v125->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v124 = *(v121 + 72);
        }

        v126 = v124[6];
        *buf = v124[5];
        *&buf[8] = v126;
        if (v126)
        {
          atomic_fetch_add_explicit(&v126->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v127 = md::DrapingLogic::_cleanUpStaleDrapingTasks(gdc::Registry *,md::SceneContext const&)::$_0::operator()(&v243, &__p, buf, *(v121 + 48));
          std::__shared_weak_count::__release_weak(v126);
        }

        else
        {
          v127 = md::DrapingLogic::_cleanUpStaleDrapingTasks(gdc::Registry *,md::SceneContext const&)::$_0::operator()(&v243, &__p, buf, *(v121 + 48));
        }

        if (v125)
        {
          std::__shared_weak_count::__release_weak(v125);
          if ((v127 & 1) == 0)
          {
            goto LABEL_190;
          }
        }

        else if (!v127)
        {
          goto LABEL_190;
        }

        if (!atomic_load(*(v121 + 72)))
        {
          atomic_store(3u, *(v121 + 72));
          atomic_store(1u, (*(*(v121 + 72) + 8) + 32));
        }

        v121 = std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::erase(k + 7, v121);
      }
    }
  }

  v129 = *(v220 + 216);
  *(a4 + 8) = *(v220 + 224);
  *a4 = v129;
}

void sub_1B29E3D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a37);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(uint64_t a1)
{
  v3 = 0x1A70CFEE213578E3;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1A70CFEE213578E3uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::minEntityStorage(uint64_t a1, int64x2_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = vbicq_s8(vaddq_s64(a2, vdupq_n_s64(0x20uLL)), vceqzq_s64(a2));
  v3 = a1 + 32;
  if (!a1)
  {
    v3 = 0;
  }

  v8 = v2;
  v9 = v3;
  v4 = v2.i64[0];
  v5 = 1;
  v6 = &v8;
  do
  {
    if (*(v8.i64[v5] + 32) - *(v8.i64[v5] + 24) < *(v4 + 32) - *(v4 + 24))
    {
      v4 = v8.i64[v5];
      v6 = (&v8 + v5 * 8);
    }

    ++v5;
  }

  while (v5 != 3);
  return v6->i64[0];
}

uint64_t std::__hash_table<md::FoundationOverlayPair,md::FoundationOverlayPairHash,std::equal_to<md::FoundationOverlayPair>,std::allocator<md::FoundationOverlayPair>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<md::FoundationOverlayPair,0>(v2 + 2);
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

void sub_1B29E424C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v10, v11);
  _Unwind_Resume(a1);
}

uint64_t md::Logic<md::ResolvedSceneLogic,md::SceneContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x99BED48DEFBBD82BLL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildRequiredTuple<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>(v14, v8);
      v9 = md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildOptionalTuple<md::DrapingContext,md::FlyoverCompleteTileDataContext>(v8);
      v11[0] = v14[0];
      v11[1] = v14[1];
      v12 = v9;
      v13 = v10;
      return (*(*v7 + 144))(v7, a2, v11, v5);
    }
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildRequiredTuple<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8BD499FBD96FBB9ELL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x8BD499FBD96FBB9ELL))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = gdc::Context::get<md::PendingSceneContext>(a2);
  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x3070CB6B3C7F21D3uLL);
  if (v8 && (v9 = v8[5], *(v9 + 8) == 0x3070CB6B3C7F21D3))
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (result && (v12 = result[5], *(v12 + 8) == 0x1AF456233693CD46))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2] = v10;
  a1[3] = v13;
  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildOptionalTuple<md::DrapingContext,md::FlyoverCompleteTileDataContext>(void *a1)
{
  v2 = gdc::Context::context<md::DrapingContext>(a1);
  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xD3D7935EF848FCE7);
  return v2;
}

void *gdc::Context::context<md::DrapingContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x1B9039CBDAB12E5CuLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x1B9039CBDAB12E5CLL)
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

void md::ResolvedSceneLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a3 + 8);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a4[1];
  *a4 = v8;
  a4[1] = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *(a1 + 120) = a4;
}

uint64_t md::Logic<md::ResolvedSceneLogic,md::SceneContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x99BED48DEFBBD82BLL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildRequiredTuple<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>(v14, v8);
      v9 = md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildOptionalTuple<md::DrapingContext,md::FlyoverCompleteTileDataContext>(v8);
      v11[0] = v14[0];
      v11[1] = v14[1];
      v12 = v9;
      v13 = v10;
      return (*(*v7 + 128))(v7, a2, v11, v5);
    }
  }

  return result;
}

void md::ResolvedSceneLogic::runBeforeLayoutAtVariableRate(int8x8_t *a1, uint64_t a2, uint64_t a3, md::SceneStateManager **a4)
{
  v6 = *(a3 + 8);
  v8 = *v6;
  v7 = *(v6 + 8);
  v39 = v6;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    if (v8)
    {
      v8 = *v39;
      goto LABEL_5;
    }

LABEL_73:
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v38 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v38, OS_LOG_TYPE_ERROR, "PendingSceneContext sceneStateManager is null in ResolvedSceneLogic", buf, 2u);
    }

    return;
  }

  if (!v8)
  {
    goto LABEL_73;
  }

LABEL_5:
  md::SceneStateManager::updateTileSets(v8);
  v10 = *v39;
  v9 = v39[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  *a4 = v10;
  a4[1] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  a1[15] = a4;
  if (a1[16].i8[0] == 1)
  {
    v12 = 0;
    v63[3] = 0;
    while (1)
    {
      v14 = *(*v39 + 14);
      v13 = *(*v39 + 15);
      v40 = v12;
      if (v14 != v13)
      {
        while (*v14 != *(md::TileSelectionTileSetTypeList + v12))
        {
          v14 += 56;
          if (v14 == v13)
          {
            goto LABEL_16;
          }
        }

        v13 = v14;
      }

LABEL_16:
      v41 = *(v13 + 13);
      gdc::LayerDataCollector::virtualTilesBegin(v63);
LABEL_17:
      gdc::LayerDataCollector::virtualTilesEnd(buf, *(v41 + 8));
      v15 = v63[0];
      if (geo::codec::VectorTile::daVinciBuildingColorsArePresent(v63[0], *buf))
      {
        break;
      }

      v12 = v40 + 2;
      if (v40 == 16)
      {
        return;
      }
    }

    v16 = grl::LayerMetrics::anchor(v15);
    v62 = v16;
LABEL_19:
    v17 = grl::LayerMetrics::anchor(v63[1]);
    if (!gdc::DataKeyIterator::operator!=(v16, v17))
    {
      gdc::VirtualTileIterator::operator++(v63);
      goto LABEL_17;
    }

    v18 = a1[18];
    if (v18)
    {
      v19 = *(v16 + 104);
      v20 = vcnt_s8(v18);
      v20.i16[0] = vaddlv_u8(v20);
      v21 = v20.u32[0];
      if (v20.u32[0] > 1uLL)
      {
        v22 = *(v16 + 104);
        if (v19 >= *&v18)
        {
          v22 = v19 % *&v18;
        }
      }

      else
      {
        v22 = (*&v18 - 1) & v19;
      }

      v23 = *(*&a1[17] + 8 * v22);
      if (v23)
      {
        for (i = *v23; i; i = *i)
        {
          v25 = *(i + 1);
          if (v19 == v25)
          {
            if (gdc::LayerDataRequestKey::operator==(i + 16, v16))
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v21 > 1)
            {
              if (v25 >= *&v18)
              {
                v25 %= *&v18;
              }
            }

            else
            {
              v25 &= *&v18 - 1;
            }

            if (v25 != v22)
            {
              break;
            }
          }
        }
      }
    }

    Data = gdc::LayerDataCollector::getData(*(v41 + 24), *(v41 + 32), *(v16 + 8), *(v16 + 144));
    v27 = *Data;
    v28 = Data[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v27)
    {
LABEL_65:
      if (!v28)
      {
        goto LABEL_67;
      }

LABEL_66:
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      goto LABEL_67;
    }

    (*(*v27 + 24))(v42);
    gdc::LayerDataRequestKey::LayerDataRequestKey(buf, v16);
    v54 = *v42;
    v55 = v43;
    v42[1] = 0;
    v43 = 0;
    v42[0] = 0;
    __p = v44;
    v57 = v45;
    v44 = 0uLL;
    v45 = 0;
    v58 = v46;
    v29 = v47;
    v47 = 0;
    v46 = 0uLL;
    v60 = v48;
    v59 = v29;
    v61 = v49;
    v48 = 0uLL;
    v49 = 0;
    v30 = v53;
    v31 = a1[18];
    if (!*&v31)
    {
      goto LABEL_55;
    }

    v32 = vcnt_s8(v31);
    v32.i16[0] = vaddlv_u8(v32);
    v33 = v32.u32[0];
    if (v32.u32[0] > 1uLL)
    {
      v34 = v53;
      if (v53 >= *&v31)
      {
        v34 = v53 % *&v31;
      }
    }

    else
    {
      v34 = (*&v31 - 1) & v53;
    }

    v35 = *(*&a1[17] + 8 * v34);
    if (!v35 || (v36 = *v35) == 0)
    {
LABEL_55:
      operator new();
    }

    while (1)
    {
      v37 = *(v36 + 1);
      if (v37 == v30)
      {
        if (gdc::LayerDataRequestKey::operator==(v36 + 16, buf))
        {
          v64[0] = &v60;
          std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v64);
          v64[0] = &v58;
          std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v64);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v55) < 0)
          {
            operator delete(v54);
          }

          if (v51 != v52)
          {
            free(v51);
          }

          v64[0] = &v48;
          std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v64);
          v64[0] = &v46;
          std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v64);
          if (SHIBYTE(v45) < 0)
          {
            operator delete(v44);
          }

          if ((SHIBYTE(v43) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          operator delete(v42[0]);
          if (v28)
          {
            goto LABEL_66;
          }

LABEL_67:
          gdc::DataKeyIterator::operator++(&v62);
          v16 = v62;
          goto LABEL_19;
        }
      }

      else
      {
        if (v33 > 1)
        {
          if (v37 >= *&v31)
          {
            v37 %= *&v31;
          }
        }

        else
        {
          v37 &= *&v31 - 1;
        }

        if (v37 != v34)
        {
          goto LABEL_55;
        }
      }

      v36 = *v36;
      if (!v36)
      {
        goto LABEL_55;
      }
    }
  }
}

void sub_1B29E4E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  *(v63 - 104) = v61 + 200;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v63 - 104));
  *(v63 - 104) = v61 + 176;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v63 - 104));
  if (*(v61 + 175) < 0)
  {
    operator delete(*(v61 + 152));
  }

  if (*(v61 + 151) < 0)
  {
    operator delete(*(v61 + 128));
  }

  v65 = *(v61 + 32);
  if (v65 != *(v61 + 48))
  {
    free(v65);
  }

  operator delete(v61);
  *(v63 - 104) = a14;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v63 - 104));
  *(v63 - 104) = a15;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v63 - 104));
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a37 != a39)
  {
    free(a37);
  }

  *(v63 - 104) = v62;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v63 - 104));
  *(v63 - 104) = a16;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v63 - 104));
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v60);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<ecs2::ForwardToExecute<md::TestCameraVertexCollision>,std::allocator<ecs2::ForwardToExecute<md::TestCameraVertexCollision>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v3 = (a1 + 8);
  if (GEOGetVectorKitVKDeferredCameraLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDeferredCameraLog_onceToken, &__block_literal_global_49);
  }

  v4 = GEOGetVectorKitVKDeferredCameraLog_log;
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CameraCollisionTask", &unk_1B3514CAA, buf, 2u);
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v6 = **v3;
    v7 = *v6;
    v8 = *(v6 + 8);
    if (v7 == v8)
    {
      goto LABEL_13;
    }

    while (*v7 != 0x29208757E3E5784BLL)
    {
      v7 += 5;
      if (v7 == v8)
      {
        goto LABEL_13;
      }
    }

    if (v7 == v8)
    {
LABEL_13:
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

    *(a1 + 16) = v5;
  }

  v10 = *(v5 + 8);
  gdc::Context::context(*(v5 + 16), 0x99BED48DEFBBD82BLL);
  md::LogicDependencies<gdc::TypeList<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>,gdc::TypeList<md::DrapingContext,md::FlyoverCompleteTileDataContext>>::buildRequiredTuple<md::ElevationContext,md::PendingSceneContext,md::GeometryContext,md::CameraContext>(buf, *(v10 + 1));
  v11 = *buf;
  v24 = *md::LayoutContext::camera(v10);
  v12 = vcvtq_f64_f32(vmaxnm_f32(v11[2], vdup_n_s32(0x2B8CBCCCu)));
  v23 = *&vmulq_laneq_f64(v12, v12, 1);
  v22 = +[VKDebugSettings sharedSettings];
  v21 = [v22 drawCollisionGeometries];
  v20 = [v22 drawCollisionRadii];
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v26 = 0;
  operator new();
}

void sub_1B29E55F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a9)
  {
    operator delete(a9);
  }

  if (a10)
  {
    operator delete(a10);
  }

  std::__function::__value_func<md::CameraCollisionResolution ()(md::CameraCollisionResolutionRequest const&,unsigned long &)>::~__value_func[abi:nn200100](v27 - 208);
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<md::CameraCollisionResolution ()(md::CameraCollisionResolutionRequest const&,unsigned long &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0,std::allocator<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0>,md::CameraCollisionResolution ()(md::CameraCollisionResolutionRequest const&,unsigned long &)>::operator()(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v195 = *MEMORY[0x1E69E9840];
  if (*a3 >= 6)
  {
    *a4 = *a2;
    *(a4 + 16) = *(a2 + 2);
    v6 = a2[2];
    *(a4 + 24) = v6;
    v7 = *(a2 + 6);
LABEL_138:
    *(a4 + 40) = v7;
    *(a4 + 48) = v6;
    *(a4 + 64) = v7;
    *(a4 + 72) = 0;
    *(a4 + 80) = 0;
    *(a4 + 152) = 0;
    *(a4 + 160) = 0;
    return;
  }

  v10 = 0;
  v11 = *(a1 + 64);
  v12 = *(a1 + 8);
  v13 = *v12;
  do
  {
    *(&v186 + v10) = *(a2 + v10 + 32) + *(a2 + v10);
    v10 += 8;
  }

  while (v10 != 24);
  v14 = v13 == 0;
  v177 = v186;
  v178 = v187;
  v175 = *a2;
  v176 = *(a2 + 2);
  if (*v12)
  {
    v15 = gm::Matrix<double,3,1>::normalized<int,void>(&v175);
  }

  else
  {
    v17 = 1.0;
    v15 = 0.0;
    v16 = 0;
  }

  *v174 = v15;
  v174[1] = v16;
  *&v174[2] = v17;
  v173[0] = 0;
  v173[1] = 0;
  v173[2] = 0x3FF0000000000000;
  v162 = *(a1 + 16);
  v18 = *(a1 + 40);
  v163 = *(a1 + 32);
  v164 = v12;
  v165 = v18;
  v166 = &v175;
  v167 = &v177;
  v168 = v174;
  v169 = v173;
  v170 = a2;
  v171 = *(a1 + 48);
  v172 = v11;
  LOBYTE(v159) = 0;
  v161[24] = 0;
  v150 = a3;
  v149 = v14;
  v148 = v11;
  if ([**(a1 + 72) enableCollisionWithCollisionMesh])
  {
    v19 = **(a1 + 80);
    {
      qword_1ED65AC10 = 0;
      qword_1ED65AC08 = 0;
      md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
    }

    v20 = *(v19 + 48);
    v21 = *(v19 + 56);
    v22 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
    if (v20 != v21)
    {
      v23 = *(v19 + 48);
      while (*v23 != 33)
      {
        v23 += 16;
        if (v23 == v21)
        {
          goto LABEL_49;
        }
      }

      if (v23 == v21)
      {
        v22 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
      }

      else
      {
        while (*v20 != 33)
        {
          v20 += 16;
          if (v20 == v21)
          {
            v20 = *(v19 + 56);
            break;
          }
        }

        v22 = (v20 + 4);
      }
    }

LABEL_49:
    v40 = *v22;
    v38 = v22 + 1;
    v39 = v40;
    if (v40 != v38)
    {
      do
      {
        v41 = v39[4];
        v42 = v39[5];
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v43 = (*(*v41 + 48))(v41);
        v44 = gdc::Registry::storage<md::components::BoundingVolume>(v43);
        v46 = v44[7];
        v45 = v44[8];
        if (v46 != v45)
        {
          v47 = (v44[10] + 16);
          do
          {
            md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator()(&v162, v47, 1u, &v159);
            v46 += 8;
            v47 += 4;
          }

          while (v46 != v45);
        }

        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v42);
        }

        v48 = v39[1];
        if (v48)
        {
          do
          {
            v49 = v48;
            v48 = *v48;
          }

          while (v48);
        }

        else
        {
          do
          {
            v49 = v39[2];
            v37 = *v49 == v39;
            v39 = v49;
          }

          while (!v37);
        }

        v39 = v49;
      }

      while (v49 != v38);
    }

    v50 = **(a1 + 80);
    {
      qword_1ED65AC10 = 0;
      qword_1ED65AC08 = 0;
      md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
    }

    v51 = *(v50 + 48);
    v52 = *(v50 + 56);
    v53 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
    if (v51 != v52)
    {
      v54 = *(v50 + 48);
      while (*v54 != 54)
      {
        v54 += 16;
        if (v54 == v52)
        {
          goto LABEL_75;
        }
      }

      if (v54 == v52)
      {
        v53 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
      }

      else
      {
        while (*v51 != 54)
        {
          v51 += 16;
          if (v51 == v52)
          {
            v51 = *(v50 + 56);
            break;
          }
        }

        v53 = (v51 + 4);
      }
    }

LABEL_75:
    v57 = *v53;
    v55 = v53 + 1;
    v56 = v57;
    if (v57 != v55)
    {
      do
      {
        v58 = v56[4];
        v59 = v56[5];
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v60 = (*(*v58 + 48))(v58);
        v61 = gdc::Registry::storage<md::components::BoundingVolume>(v60);
        v63 = v61[7];
        v62 = v61[8];
        if (v63 != v62)
        {
          v64 = (v61[10] + 16);
          do
          {
            md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator()(&v162, v64, 2u, &v159);
            v63 += 8;
            v64 += 4;
          }

          while (v63 != v62);
        }

        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v59);
        }

        v65 = v56[1];
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
            v66 = v56[2];
            v37 = *v66 == v56;
            v56 = v66;
          }

          while (!v37);
        }

        v56 = v66;
      }

      while (v66 != v55);
    }

    v67 = **(a1 + 80);
    {
      qword_1ED65AC10 = 0;
      qword_1ED65AC08 = 0;
      md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
    }

    v68 = *(v67 + 48);
    v69 = *(v67 + 56);
    if (v68 == v69)
    {
      goto LABEL_100;
    }

    v70 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
    v71 = *(v67 + 48);
    while (*v71 != 75)
    {
      v71 += 16;
      if (v71 == v69)
      {
        goto LABEL_101;
      }
    }

    if (v71 == v69)
    {
LABEL_100:
      v70 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
    }

    else
    {
      while (*v68 != 75)
      {
        v68 += 16;
        if (v68 == v69)
        {
          v68 = *(v67 + 56);
          break;
        }
      }

      v70 = (v68 + 4);
    }

LABEL_101:
    v74 = *v70;
    v72 = v70 + 1;
    v73 = v74;
    if (v74 != v72)
    {
      do
      {
        v75 = v73[4];
        v76 = v73[5];
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v77 = (*(*v75 + 48))(v75);
        v78 = gdc::Registry::storage<md::components::BoundingVolume>(v77);
        v80 = v78[7];
        v79 = v78[8];
        if (v80 != v79)
        {
          v81 = (v78[10] + 16);
          do
          {
            md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator()(&v162, v81, 1u, &v159);
            v80 += 8;
            v81 += 4;
          }

          while (v80 != v79);
        }

        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v76);
        }

        v82 = v73[1];
        if (v82)
        {
          do
          {
            v83 = v82;
            v82 = *v82;
          }

          while (v82);
        }

        else
        {
          do
          {
            v83 = v73[2];
            v37 = *v83 == v73;
            v73 = v83;
          }

          while (!v37);
        }

        v73 = v83;
      }

      while (v83 != v72);
    }
  }

  else if ([**(a1 + 72) enableCollisionWithElevationRaster])
  {
    v24 = **(a1 + 80);
    {
      qword_1ED65AC10 = 0;
      qword_1ED65AC08 = 0;
      md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
    }

    v25 = *(v24 + 48);
    v26 = *(v24 + 56);
    if (v25 == v26)
    {
      goto LABEL_32;
    }

    v27 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
    v28 = *(v24 + 48);
    while (*v28 != 43)
    {
      v28 += 16;
      if (v28 == v26)
      {
        goto LABEL_33;
      }
    }

    if (v28 == v26)
    {
LABEL_32:
      v27 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
    }

    else
    {
      while (*v25 != 43)
      {
        v25 += 16;
        if (v25 == v26)
        {
          v25 = *(v24 + 56);
          break;
        }
      }

      v27 = (v25 + 4);
    }

LABEL_33:
    v31 = *v27;
    v29 = v27 + 1;
    v30 = v31;
    if (v31 != v29)
    {
      do
      {
        v32 = v30[4];
        v33 = v30[5];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v32)
        {
          v34 = *(v32 + 752);
          if (v34)
          {
            md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator()(&v162, (v34 + 16), 0, &v159);
          }
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v33);
        }

        v35 = v30[1];
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
            v36 = v30[2];
            v37 = *v36 == v30;
            v30 = v36;
          }

          while (!v37);
        }

        v30 = v36;
      }

      while (v36 != v29);
    }
  }

  if ((v161[24] & 1) == 0)
  {
    *a4 = *a2;
    *(a4 + 16) = *(a2 + 2);
    v6 = a2[2];
    *(a4 + 24) = v6;
    v7 = *(a2 + 6);
    goto LABEL_138;
  }

  if (**(a1 + 88) == 1)
  {
    ecs2::ExecutionTaskContext::createEntity(*(*v148 + 8));
    v186 = v177;
    v187 = v178;
    operator new();
  }

  v84 = dbl_1B33B2230[v149];
  v157 = *a2;
  v158 = *(a2 + 2);
  v155 = 0uLL;
  v156 = 0;
  v85 = 0.0;
  for (i = 32; i != 56; i += 8)
  {
    v85 = v85 + *(a2 + i) * *(a2 + i);
  }

  v87 = 0;
  v88 = sqrt(v85);
  do
  {
    *(&v186 + v87) = *(a2 + v87 + 32) * (1.0 / v88);
    v87 += 8;
  }

  while (v87 != 24);
  v153 = v186;
  v154 = v187;
  v89 = 0.0;
  v90 = v174;
  for (j = 3; j != 6; ++j)
  {
    v92 = *v90++;
    v89 = v89 + *&v160[8 * j - 16] * v92;
  }

  v93 = fmax(v89, 0.0);
  v94 = v161[0];
  if (v161[0] == 1)
  {
    if (v93 > 0.01)
    {
      v186 = *&v160[8];
      v187 = *&v160[24];
      v95 = 0.0;
      v96 = &v159;
      v97 = 3;
      do
      {
        v95 = v95 + v96[3] * *v96;
        ++v96;
        --v97;
      }

      while (v97);
      v98 = 0;
      v188 = -v95;
      v99 = 0.0;
      do
      {
        v99 = v99 + *(&v186 + v98) * *(&v157 + v98);
        v98 += 8;
      }

      while (v98 != 24);
      v100 = *(a2 + 3);
      v101 = +[VKDebugSettings sharedSettings];
      [v101 cameraCollisionPenetrationRecovery];
      v103 = v102;

      v104 = 0;
      v105 = fmax(v100 + v95 - v99, 0.0) * v103 / v93 + v84;
      do
      {
        *(&v179 + v104 * 8) = *&v174[v104] * v105;
        ++v104;
      }

      while (v104 != 3);
      v106 = 0;
      v151 = v179;
      v152 = v180;
      do
      {
        *(&v179 + v106) = *(&v151 + v106) + *(&v157 + v106);
        v106 += 8;
      }

      while (v106 != 24);
      v107 = 0;
      v157 = v179;
      v158 = v180;
      v108 = fmax(v84, v88 - v105);
      do
      {
        *(&v179 + v107 * 8) = *&v174[v107] * v108;
        ++v107;
      }

      while (v107 != 3);
      v109 = v180;
      v110 = v179;
      goto LABEL_163;
    }

    v112 = 0;
    v113 = 0.0;
    do
    {
      v113 = v113 + *&v160[v112 + 8] * *(&v153 + v112);
      v112 += 8;
    }

    while (v112 != 24);
    v114 = 0;
    v115 = fmax(v84, v113 * v88);
    do
    {
      *(&v186 + v114) = *&v160[v114 + 8] * v115;
      v114 += 8;
    }

    while (v114 != 24);
LABEL_162:
    v109 = v187;
    v110 = v186;
LABEL_163:
    v155 = v110;
    v156 = v109;
    goto LABEL_164;
  }

  v111 = *&v161[8];
  if (*&v161[8] >= v84)
  {
    for (k = 0; k != 24; k += 8)
    {
      *(&v186 + k) = *&v160[k - 16] - *(&v157 + k);
    }

    v179 = v186;
    v180 = v187;
    v117 = gm::Matrix<double,3,1>::normalized<int,void>(&v179);
    v118 = 0;
    *&v186 = v117;
    *(&v186 + 1) = v119;
    v187 = v120;
    v121 = 0.0;
    do
    {
      v121 = v121 + *(&v153 + v118) * *(&v186 + v118);
      v118 += 8;
    }

    while (v118 != 24);
    v122 = 0;
    v123 = -(v84 - v111 * fmax(v121, 0.0));
    do
    {
      *(&v186 + v122) = *(&v153 + v122) * v123;
      v122 += 8;
    }

    while (v122 != 24);
    v124 = 0;
    v179 = v186;
    v180 = v187;
    do
    {
      *(&v186 + v124) = *(&v179 + v124) + *(&v157 + v124);
      v124 += 8;
    }

    while (v124 != 24);
    v157 = v186;
    v158 = v187;
    v125 = 0;
    if (v93 <= 0.01)
    {
      v127 = 0.0;
      do
      {
        v127 = v127 + *&v160[v125 * 8 + 8] * *(&v153 + v125 * 8);
        ++v125;
      }

      while (v125 != 3);
      v128 = 0;
      v129 = fmax(v127 * v88, 0.0);
      do
      {
        *(&v186 + v128) = *&v160[v128 + 8] * v129;
        v128 += 8;
      }

      while (v128 != 24);
    }

    else
    {
      v126 = fmax(v88 - v123, 0.0);
      do
      {
        *(&v186 + v125 * 8) = *&v174[v125] * v126;
        ++v125;
      }

      while (v125 != 3);
    }

    goto LABEL_162;
  }

  v155 = a2[2];
  v156 = *(a2 + 6);
LABEL_164:
  v130 = 0;
  v131 = 0.0;
  do
  {
    v131 = v131 + *(&v155 + v130) * *(&v155 + v130);
    v130 += 8;
  }

  while (v130 != 24);
  if (sqrt(v131) < v84)
  {
    v132 = 0;
    *a4 = *a2;
    *(a4 + 16) = *(a2 + 2);
    *(a4 + 24) = a2[2];
    *(a4 + 40) = *(a2 + 6);
    do
    {
      *(&v186 + v132) = *(&v155 + v132) + *(&v157 + v132);
      v132 += 8;
    }

    while (v132 != 24);
    v133 = 0;
    v179 = v186;
    v180 = v187;
    do
    {
      *(&v186 + v133) = *(&v179 + v133) - *(a2 + v133);
      v133 += 8;
    }

    while (v133 != 24);
LABEL_177:
    v137 = v187;
    *(a4 + 48) = v186;
    *(a4 + 64) = v137;
    *(a4 + 72) = 1;
    v138 = *v161;
    *(a4 + 112) = *&v160[16];
    *(a4 + 128) = v138;
    *(a4 + 137) = *&v161[9];
    v139 = *v160;
    *(a4 + 80) = v159;
    *(a4 + 96) = v139;
    *(a4 + 160) = v94;
    return;
  }

  v134 = *v150;
  if (*v150 == 4)
  {
    v135 = 0;
    *a4 = *a2;
    *(a4 + 16) = *(a2 + 2);
    *(a4 + 24) = a2[2];
    *(a4 + 40) = *(a2 + 6);
    do
    {
      *(&v186 + v135) = *(&v155 + v135) + *(&v157 + v135);
      v135 += 8;
    }

    while (v135 != 24);
    v136 = 0;
    v179 = v186;
    v180 = v187;
    do
    {
      *(&v186 + v136) = *(&v179 + v136) - *(a2 + v136);
      v136 += 8;
    }

    while (v136 != 24);
    goto LABEL_177;
  }

  v140 = *(a1 + 96);
  v179 = v157;
  v180 = v158;
  v181 = *(a2 + 3);
  v183 = v156;
  v182 = v155;
  v184 = &unk_1F2A44148;
  v185 = 0;
  *v150 = v134 + 1;
  v141 = *(v140 + 24);
  if (!v141)
  {
    v147 = std::__throw_bad_function_call[abi:nn200100]();
    v184 = a1;

    _Unwind_Resume(v147);
  }

  (*(*v141 + 48))(&v186);
  v184 = &unk_1F2A44148;

  v142 = 0;
  *a4 = *a2;
  *(a4 + 16) = *(a2 + 2);
  *(a4 + 24) = a2[2];
  *(a4 + 40) = *(a2 + 6);
  do
  {
    *(&v179 + v142) = *&v189[v142] + *(&v157 + v142);
    v142 += 8;
  }

  while (v142 != 24);
  v143 = 0;
  v151 = v179;
  v152 = v180;
  do
  {
    *(&v179 + v143) = *(&v151 + v143) - *(a2 + v143);
    v143 += 8;
  }

  while (v143 != 24);
  v144 = v180;
  *(a4 + 48) = v179;
  *(a4 + 64) = v144;
  *(a4 + 72) = 1;
  v145 = v193[0];
  *(a4 + 112) = v192;
  *(a4 + 128) = v145;
  *(a4 + 137) = *(v193 + 9);
  v146 = v191;
  *(a4 + 80) = v190;
  *(a4 + 96) = v146;
  *(a4 + 160) = v194;
}

uint64_t std::__function::__func<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_1,std::allocator<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_1>,void ()(md::CameraCollisionResolutionRequest const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v30 = 0;
  v4 = *(*(a1 + 16) + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v4 + 48))(&v31);
  v6 = *(a1 + 8);
  if (*(v6 + 168) == 1)
  {
    for (i = 0; i != 24; i += 8)
    {
      *(v6 + i) = *(&v32[-1] + i);
    }

    for (j = 0; j != 24; j += 8)
    {
      *(v6 + 24 + j) = *(v32 + j + 8);
    }

    for (k = 0; k != 24; k += 8)
    {
      *(v6 + 48 + k) = *(&v33 + k);
    }

    *(v6 + 72) = BYTE8(v34);
    v10 = (v6 + 80);
    if (*(v6 + 152) == BYTE8(v39))
    {
      if (*(v6 + 152))
      {
        for (m = 0; m != 24; m += 8)
        {
          *(v10 + m) = *(&v35 + m);
        }

        for (n = 0; n != 24; n += 8)
        {
          *(v6 + 104 + n) = *(&v36 + n + 8);
        }

        v13 = v38;
        *(v6 + 144) = v39;
        *(v6 + 128) = v13;
      }
    }

    else if (*(v6 + 152))
    {
      *(v6 + 152) = 0;
    }

    else
    {
      *v10 = v35;
      v22 = v36;
      v23 = v37;
      v24 = v38;
      *(v6 + 144) = v39;
      *(v6 + 112) = v23;
      *(v6 + 128) = v24;
      *(v6 + 96) = v22;
      *(v6 + 152) = 1;
    }

    *(v6 + 160) = v40;
  }

  else
  {
    v14 = v31;
    v15 = v32[1];
    *(v6 + 16) = v32[0];
    *(v6 + 32) = v15;
    *v6 = v14;
    v16 = v33;
    v17 = v34;
    v18 = v36;
    *(v6 + 80) = v35;
    *(v6 + 96) = v18;
    *(v6 + 48) = v16;
    *(v6 + 64) = v17;
    v19 = v37;
    v20 = v38;
    v21 = v39;
    *(v6 + 160) = v40;
    *(v6 + 128) = v20;
    *(v6 + 144) = v21;
    *(v6 + 112) = v19;
    *(v6 + 168) = 1;
  }

  if (**(a1 + 24) == 1)
  {
    ecs2::ExecutionTaskContext::createEntity(*(*v3 + 8));
    std::vector<md::CollisionTriangleDebug>::vector[abi:nn200100](__p, *(a1 + 40));
    __p[0] = 0;
    __p[1] = 0;
    v29 = 0;
    v41 = 0;
    operator new();
  }

  v25 = geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(*(a1 + 48), *(a2 + 88));
  v26 = ecs2::ExecutionTaskContext::currentEntity(v25);
  return ecs2::ExecutionTaskContext::destroyEntity(*v3, v26);
}

void sub_1B29E6BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, uint64_t a11)
{
  if (a9)
  {
    operator delete(a9);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(md::CameraCollisionResolutionRequest const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md32CameraCollisionResolutionRequestEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t a1, unsigned int *a2)
{
  v28[3] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::CameraCollisionResolutionRequest>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 104 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 104 * (v13 & 0x3F);
        v24 = *v17;
        *v27 = *(v17 + 48);
        *&v27[16] = *(v17 + 64);
        v25 = *(v17 + 16);
        v26 = *(v17 + 32);
        geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v28, v17 + 80);
        for (i = 0; i != 24; i += 8)
        {
          *(v17 + i) = *(v16 + i);
        }

        v19 = 0;
        *(v17 + 24) = *(v16 + 24);
        v20 = (v16 + 32);
        do
        {
          *(v17 + 32 + v19) = *(v20 + v19);
          v19 += 8;
        }

        while (v19 != 24);
        v21 = 0;
        v22 = (v16 + 56);
        do
        {
          *(v17 + 56 + v21) = *(v22 + v21);
          v21 += 8;
        }

        while (v21 != 24);
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v17 + 80, v16 + 80);
        *(v16 + 16) = v25;
        *v16 = v24;
        *(v16 + 24) = *(&v25 + 1);
        *(v16 + 48) = *v27;
        *v20 = v26;
        *(v16 + 72) = *&v27[24];
        *v22 = *&v27[8];
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v16 + 80, v28);
        v28[0] = &unk_1F2A44148;

        *(v16 + 80) = &unk_1F2A44148;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  v23 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v23 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>(void)::metadata) = *(v3 + 4096);
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)33>,md::CollectMapDataContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9052DC4F017D3735)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x99BED48DEFBBD82BLL)[5] + 32);
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::CollectMapDataLogic<(md::MapDataType)33>::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 128);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(v5);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  if (v8 != v9)
  {
    v62 = *(v5 + 41016) + 4 * (v6 >> 5);
    do
    {
      *(v62 + (*(v8 + 2) << 6)) &= ~(1 << v6);
      v8 += 4;
    }

    while (v8 != v9);
  }

  v10 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(v5);
  v11 = v10[37];
  v12 = v10[38];
  while (v11 != v12)
  {
    std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(v11 + 24));
    v11 += 32;
  }

    ;
  }

  *(v5 + 8 * v6) = *(v5 + 4096);
  v14 = *(a1 + 128);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>();
    *algn_1EB82DC28 = 0xC018F3D549EA57BALL;
    qword_1EB82DC30 = "SceneComponents::LayerDataDidExitView<md::MapDataType::DaVinciGround>]";
    qword_1EB82DC38 = 69;
  }

  v15 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::metadata;
  v16 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(v14);
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  if (v17 != v18)
  {
    v63 = *(v14 + 41016) + 4 * (v15 >> 5);
    do
    {
      *(v63 + (*(v17 + 2) << 6)) &= ~(1 << v15);
      v17 += 4;
    }

    while (v17 != v18);
  }

  v19 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(v14);
  v20 = v19[37];
  v21 = v19[38];
  while (v20 != v21)
  {
    std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(v20 + 24));
    v20 += 32;
  }

    ;
  }

  *(v14 + 8 * v15) = *(v14 + 4096);
  v23 = *a3;
  v24 = *(a1 + 128);
  if (*(a1 + 120) == -65536)
  {
    v25 = ecs2::BasicRegistry<void>::create(*(a1 + 128));
    *(a1 + 120) = v25;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)33>>(*(a1 + 128), v25);
    v26 = *(a1 + 128);
    v27 = *(a1 + 120);
    LOWORD(v71) = 33;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInfo<(md::MapDataType)33>>(v26, v27, &v71);
    v28 = *(a1 + 128);
    v29 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInView<(md::MapDataType)33>>(v28, v29, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v30 = *(a1 + 128);
    v31 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(v30, v31, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v32 = *(a1 + 128);
    v33 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(v32, v33, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v34 = *(a1 + 128);
    v35 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(v34, v35, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
  }

  ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)33>>(v24);
  v36 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)33>>(v24);
  v37 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(v24);
  v38 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(v24);
  v39 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(v24);
  v64[0] = v23;
  v64[1] = a1;
  v71 = v36;
  v72 = v37;
  v40 = 1;
  v41 = v36;
  v42 = &v71;
  v73 = v38;
  v74 = v39;
  do
  {
    if ((&v71)[v40][5] - (&v71)[v40][4] < (v41[5] - v41[4]))
    {
      v41 = (&v71)[v40];
      v42 = &(&v71)[v40];
    }

    ++v40;
  }

  while (v40 != 4);
  v44 = *(*v42 + 32);
  v43 = *(*v42 + 40);
  v65 = v44;
  v66 = v43;
  v67 = v36;
  v68 = v37;
  v69 = v38;
  v70 = v39;
  while (v44 != v43 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v65, *v44, v44[1]))
  {
    v44 += 2;
    v65 = v44;
  }

  v45 = v65;
  if (v65 != v43)
  {
    v46 = v68;
    v47 = v69;
    v48 = v70;
    v50 = v66;
    v49 = v67;
    do
    {
      v51 = *(v45 + 1);
      v52 = v51 & 0x3F;
      v53 = (v51 >> 3) & 0x1FF8;
      v54 = *(*(*(v49 + 8) + v53) + 4 * v52 + 2);
      v55 = (*(*(v49 + 56) + ((v54 >> 3) & 0x1FF8)) + 24 * (v54 & 0x3F));
      v56 = *(*(v46[1] + v53) + 4 * v52 + 2);
      v57 = (*(v46[7] + ((v56 >> 3) & 0x1FF8)) + 24 * (v56 & 0x3F));
      v58 = *(*(*(v47 + 8) + v53) + 4 * v52 + 2);
      v59 = *(*(*(v48 + 8) + v53) + 4 * v52 + 2);
      md::CollectMapDataLogic<(md::MapDataType)33>::updateVisibleMapData(md::SceneContext const&,ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)33> &,SceneComponents::LayerDataExitingView<(md::MapDataType)33> &)#1}::operator()(v64, *v45, v55, v57, (*(*(v47 + 56) + ((v58 >> 3) & 0x1FF8)) + 24 * (v58 & 0x3F)), (*(*(v48 + 56) + ((v59 >> 3) & 0x1FF8)) + 24 * (v59 & 0x3F)));
      v60 = (v45 + 1);
      do
      {
        v45 = v60;
        v65 = v60;
        if (v60 == v50)
        {
          break;
        }

        v61 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v65, *v60, v60[1]);
        v60 = (v45 + 1);
      }

      while (!v61);
    }

    while (v45 != v43);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>();
    unk_1EB82DAF0 = 0xD44FD3DC899A7DDALL;
    qword_1EB82DAF8 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::DaVinciGround>]";
    qword_1EB82DB00 = 70;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>();
    unk_1EB82DAF0 = 0xD44FD3DC899A7DDALL;
    qword_1EB82DAF8 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::DaVinciGround>]";
    qword_1EB82DB00 = 70;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(void)::metadata >= 0x200)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[152];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2FB0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2FB0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[161];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>();
    *algn_1EB82DC28 = 0xC018F3D549EA57BALL;
    qword_1EB82DC30 = "SceneComponents::LayerDataDidExitView<md::MapDataType::DaVinciGround>]";
    qword_1EB82DC38 = 69;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F3018;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3018;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)33>>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)33>>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)33>>();
    unk_1EB82DD60 = 0xEC8639AAD8F442E0;
    qword_1EB82DD68 = "SceneComponents::LayerDataActive<md::MapDataType::DaVinciGround>]";
    qword_1EB82DD70 = 64;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)33>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)33>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[170];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)33>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2080;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2080;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)33>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)33>>(void)::localId;
    unk_1EB82DE50 = 0xA834E119D8DEF0BALL;
    qword_1EB82DE58 = "SceneComponents::LayerDataInfo<md::MapDataType::DaVinciGround>]";
    qword_1EB82DE60 = 62;
  }
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInfo<(md::MapDataType)33>>(uint64_t a1, unint64_t a2, _WORD *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)33>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 2 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 2 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>(void)::metadata) = *(a1 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)33>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>(void)::metadata >= 0x200)
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F30A0;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInView<(md::MapDataType)33>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)33>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)33>>();
    *algn_1EB82DCC8 = 0x10C1AF6504FA13A0;
    qword_1EB82DCD0 = "SceneComponents::LayerDataInView<md::MapDataType::DaVinciGround>]";
    qword_1EB82DCD8 = 64;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)33>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)33>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[165];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)33>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)33>>();
    *algn_1EB82DCC8 = 0x10C1AF6504FA13A0;
    qword_1EB82DCD0 = "SceneComponents::LayerDataInView<md::MapDataType::DaVinciGround>]";
    qword_1EB82DCD8 = 64;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2108;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2108;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>();
    *algn_1EB82DA58 = 0xC6D75D77A851F6C9;
    qword_1EB82DA60 = "SceneComponents::LayerDataEnteringView<md::MapDataType::DaVinciGround>]";
    qword_1EB82DA68 = 70;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[147];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>();
    *algn_1EB82DA58 = 0xC6D75D77A851F6C9;
    qword_1EB82DA60 = "SceneComponents::LayerDataEnteringView<md::MapDataType::DaVinciGround>]";
    qword_1EB82DA68 = 70;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2218;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2218;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)33>>();
    unk_1EB82DB90 = 0x8E897EF07308135FLL;
    qword_1EB82DB98 = "SceneComponents::LayerDataExitingView<md::MapDataType::DaVinciGround>]";
    qword_1EB82DBA0 = 69;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(void)::metadata >= 0x200)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)33>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[156];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F22A0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F22A0;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>();
    unk_1EB82D9C0 = 0xCC8451654026B61DLL;
    qword_1EB82D9C8 = "SceneComponents::LayerDataPreviousInView<md::MapDataType::DaVinciGround>]";
    qword_1EB82D9D0 = 72;
  }
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[142];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2190;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2190;
  a2[1] = v2;
  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0)
  {
    return *(v11 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void md::CollectMapDataLogic<(md::MapDataType)33>::updateVisibleMapData(md::SceneContext const&,ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)33> &,SceneComponents::LayerDataExitingView<(md::MapDataType)33> &)#1}::operator()(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v83 = *(a1 + 8);
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100](a3, a4);
  v12 = a3 + 1;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a3[1]);
  *a3 = (a3 + 1);
  a3[2] = 0;
  a3[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a5[1]);
  *a5 = (a5 + 1);
  a5[2] = 0;
  a5[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a6[1]);
  *a6 = (a6 + 1);
  a6[2] = 0;
  a6[1] = 0;
  v13 = md::SceneContext::layerDataInView(*a1, 33);
  std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(a3, *v13, v13 + 1);
  v14 = *a3;
  v15 = a4 + 1;
  v16 = *a4;
  v17 = *a5;
  v84 = a5;
  v85 = v17;
  if (v14 != a3 + 1)
  {
    if (v16 == v15)
    {
      v86 = a5;
      v87 = v17;
      if (v14 != v12)
      {
        do
        {
LABEL_34:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v86, v14 + 32);
          v33 = *(v14 + 8);
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = *(v14 + 16);
              v65 = *v34 == v14;
              v14 = v34;
            }

            while (!v65);
          }

          v14 = v34;
        }

        while (v34 != v12);
      }
    }

    else
    {
      while (1)
      {
        v18 = *(v14 + 32);
        v19 = *(v14 + 48);
        v20 = v19;
        v21 = *(v16 + 48);
        v22 = v16[4];
        if (v19 == v21 ? v18 < v22 : v19 < v21)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v84, v14 + 32);
          v24 = *(v14 + 8);
          if (v24)
          {
            do
            {
              v14 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v14;
              v14 = *(v14 + 16);
            }

            while (*v14 != v25);
          }
        }

        else
        {
          v26 = v22 < v18;
          if (v20 != v21)
          {
            v26 = v21 < v20;
          }

          if (v26)
          {
            v27 = v16[1];
            if (v27)
            {
              do
              {
                v16 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = v16;
                v16 = v16[2];
              }

              while (*v16 != v28);
            }
          }

          else
          {
            v29 = *(v14 + 8);
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = *(v14 + 16);
                v65 = *v30 == v14;
                v14 = v30;
              }

              while (!v65);
            }

            v31 = v16[1];
            if (v31)
            {
              do
              {
                v16 = v31;
                v31 = *v31;
              }

              while (v31);
            }

            else
            {
              do
              {
                v32 = v16;
                v16 = v16[2];
              }

              while (*v16 != v32);
            }

            v14 = v30;
          }
        }

        if (v14 == v12)
        {
          break;
        }

        if (v16 == v15)
        {
          v86 = v84;
          v87 = v85;
          goto LABEL_34;
        }
      }
    }
  }

  v35 = *a4;
  v36 = *a3;
  v37 = *a6;
  v84 = a6;
  v85 = v37;
  if (v35 != v15)
  {
    if (v36 == v12)
    {
      v86 = a6;
      v87 = v37;
      if (v35 != v15)
      {
        do
        {
LABEL_73:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v86, (v35 + 4));
          v53 = v35[1];
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
              v54 = v35[2];
              v65 = *v54 == v35;
              v35 = v54;
            }

            while (!v65);
          }

          v35 = v54;
        }

        while (v54 != v15);
      }
    }

    else
    {
      while (1)
      {
        v38 = v35[4];
        v39 = *(v35 + 48);
        v40 = v39;
        v41 = *(v36 + 48);
        v42 = *(v36 + 32);
        if (v39 == v41 ? v38 < v42 : v39 < v41)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v84, (v35 + 4));
          v44 = v35[1];
          if (v44)
          {
            do
            {
              v35 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v35;
              v35 = v35[2];
            }

            while (*v35 != v45);
          }
        }

        else
        {
          v46 = v42 < v38;
          if (v40 != v41)
          {
            v46 = v41 < v40;
          }

          if (v46)
          {
            v47 = *(v36 + 8);
            if (v47)
            {
              do
              {
                v36 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v36;
                v36 = *(v36 + 16);
              }

              while (*v36 != v48);
            }
          }

          else
          {
            v49 = v35[1];
            if (v49)
            {
              do
              {
                v50 = v49;
                v49 = *v49;
              }

              while (v49);
            }

            else
            {
              do
              {
                v50 = v35[2];
                v65 = *v50 == v35;
                v35 = v50;
              }

              while (!v65);
            }

            v51 = *(v36 + 8);
            if (v51)
            {
              do
              {
                v36 = v51;
                v51 = *v51;
              }

              while (v51);
            }

            else
            {
              do
              {
                v52 = v36;
                v36 = *(v36 + 16);
              }

              while (*v36 != v52);
            }

            v35 = v50;
          }
        }

        if (v35 == v15)
        {
          break;
        }

        if (v36 == v12)
        {
          v86 = v84;
          v87 = v85;
          goto LABEL_73;
        }
      }
    }
  }

  v55 = a2 >> 22;
  v56 = (a2 >> 16) & 0x3F;
  if (a5[2])
  {
    v57 = *(v83 + 128);
    LODWORD(v86) = a2;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>();
    v58 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(void)::metadata;
    v59 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(v57);
    v60 = v59;
    v62 = (v59 + 8);
    v61 = *(v59 + 8);
    if (v55 >= (*(v59 + 16) - v61) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v59 + 8), v55 + 1);
      v61 = *v62;
    }

    v63 = *(v61 + 8 * v55);
    if (!v63)
    {
      operator new();
    }

    v64 = (v63 + 4 * v56);
    v65 = *v64 == -1 && v64[1] == 0;
    if (v65)
    {
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v60 + 32, &v86);
      v66 = ((*(v60 + 40) - *(v60 + 32)) >> 2) - 1;
      *v64 = a2;
      v64[1] = v66;
      v67 = *(v60 + 104);
      for (i = *(v60 + 112); v67 != i; v67 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v67 + 24), a2);
      }
    }

    v69 = *(v57 + 41016) + (WORD1(a2) << 6);
    *(v69 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v58;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>();
    *(v57 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)33>>(void)::metadata) = *(v57 + 4096);
  }

  if (a6[2])
  {
    v70 = *(v83 + 128);
    LODWORD(v86) = a2;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>();
    v71 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::metadata;
    v72 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(v70);
    v73 = v72;
    v75 = (v72 + 8);
    v74 = *(v72 + 8);
    if (v55 >= (*(v72 + 16) - v74) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v72 + 8), v55 + 1);
      v74 = *v75;
    }

    v76 = *(v74 + 8 * v55);
    if (!v76)
    {
      operator new();
    }

    v77 = (v76 + 4 * v56);
    if (*v77 == -1 && v77[1] == 0)
    {
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v73 + 32, &v86);
      v79 = ((*(v73 + 40) - *(v73 + 32)) >> 2) - 1;
      *v77 = a2;
      v77[1] = v79;
      v81 = *(v73 + 104);
      for (j = *(v73 + 112); v81 != j; v81 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v81 + 24), a2);
      }
    }

    v82 = *(v70 + 41016) + (WORD1(a2) << 6);
    *(v82 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v71;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>();
    *(v70 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)33>>(void)::metadata) = *(v70 + 4096);
  }
}

uint64_t *std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<gdc::LayerDataWithWorld>::__emplace_hint_unique_key_args<gdc::LayerDataWithWorld,gdc::LayerDataWithWorld const&>(v5, v5 + 1, v4[4], *(v4 + 48));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *md::LayoutContext::get<md::SceneContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x99BED48DEFBBD82BLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x99BED48DEFBBD82BLL)
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

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)33>,md::CollectMapDataContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9052DC4F017D3735)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

double md::Logic<md::GridLogic,md::GridContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  md::GridLogic::_defaultDrivingBackgroundColor(a1);
  return md::GridLogic::_defaultDrivingStrokeColor((a1 + 16));
}

double md::GridLogic::_defaultDrivingStrokeColor(md::GridLogic *this)
{
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::GridLogic::_defaultDrivingStrokeColor(void)::_defaultDrivingStrokeLinearColor, &kDefaultDrivingStrokeColor);
      this = v3;
    }
  }

  result = *&md::GridLogic::_defaultDrivingStrokeColor(void)::_defaultDrivingStrokeLinearColor;
  *this = md::GridLogic::_defaultDrivingStrokeColor(void)::_defaultDrivingStrokeLinearColor;
  return result;
}

uint64_t md::Logic<md::GridLogic,md::GridContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x336A901A15BB7353)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xE42D19AFCA302E68)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x64780CBD71DF7CF5uLL);
      if (v10 && (v12 = v10[5], *(v12 + 8) == 0x64780CBD71DF7CF5))
      {
        v11 = *(v12 + 32);
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      return (*(*v7 + 144))(v7, a2, v13, v5);
    }
  }

  return result;
}

void md::GridLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t *a3, float32x4_t *a4)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v6 = *a3;
  if (*(*a3 + 82) == 1)
  {
    v34[0] = &unk_1F2A45BB0;
    v34[1] = a1;
    v34[2] = v6;
    v34[3] = v34;
    md::StyleLogicContext::parseEvents(v6, v34);
    std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v34);
  }

  else
  {
    v22 = *(a1 + 128);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }
  }

  a4[2].i8[0] = *(a1 + 136);
  if (*(a1 + 176) == 1)
  {
    v7 = std::function<BOOL ()(void)>::operator()(*(a1 + 168));
  }

  else
  {
    v7 = 0;
  }

  a4[3].i8[8] = v7;
  v8 = 0;
  if (*(a1 + 216) == 1)
  {
    std::function<float ()(void)>::operator()(*(a1 + 208));
  }

  a4[3].i32[3] = v8;
  v9 = *(a1 + 120);
  v10 = *(a1 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v27 = v9;
    v28 = v10;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v27 = v9;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v23 = (*(*v9 + 48))(v9, &v29);
  v31 = v23;
  if (v10)
  {
LABEL_10:
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    if (v31)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  if (v23)
  {
LABEL_11:
    v11 = v27[3];
    v12 = *v11;
    if (*v11 && (v14 = *v12, LODWORD(v12) = *v12 == 1.0, *(v11 + 10) == 1) && (v14 != 0.0 ? (v24 = v14 == 1.0) : (v24 = 1), !v24) || (v13 = *(v11 + v12 + 11), v14 = 0.0, v13 == 2))
    {
      v33 = 1;
      v32 = 1;
      v15 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v11, 92, 0, &v33);
      v16 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v11, 92, 1u, &v32);
      v17 = &v26;
      gss::lerpIfReal(&v26, *v15, *v16, v14);
    }

    else
    {
      v17 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v27[3], 92, v13, 0);
    }

    v25 = vdupq_n_s32(0x37800080u);
    *a4 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v17)), v25);
    gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v26, v27[3], 239, 2);
    v18 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v26.f32)), v25);
    goto LABEL_15;
  }

LABEL_23:
  v19 = *(v6 + 88);
  v20 = *(v6 + 72);
  v21 = *(v6 + 92);
  md::GridLogic::defaultBackgroundColor(&v26, v19, v20, v21);
  *a4 = v26;
  md::GridLogic::defaultStrokeColor(&v26, v19, v20, v21);
  v18 = v26;
LABEL_15:
  a4[1] = v18;
  if (v31 == 1)
  {
    (*(*v27 + 56))(v27);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }
}

void sub_1B29EC244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  _Unwind_Resume(exception_object);
}

gss::zone_mallocator *std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](gss::zone_mallocator *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a3)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__vallocate[abi:nn200100](a1, a3);
    v6 = *(a1 + 1);
    v7 = 8 * a3;
    do
    {
      v8 = *a2++;
      *v6++ = v8;
      v7 -= 8;
    }

    while (v7);
    *(a1 + 1) = v6;
  }

  return a1;
}

void std::__function::__func<md::GridLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>::ResolvedDependencies const&,md::GridContext &)::$_0,std::allocator<md::GridLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>::ResolvedDependencies const&,md::GridContext &)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if ((*a2 | 4) == 4)
  {
    v2 = *(a1 + 16);
    if (*v2)
    {
      v3 = *(a1 + 8);
      LODWORD(v6) = 5;
      WORD2(v6) = 8;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v7, &v6, 1uLL);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v8, v7);
      gss::FeatureAttributeSet::sort(v8[0], v8[1]);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v7);
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v7, *v2, v8);
      v4 = v7[0];
      v7[0] = 0uLL;
      v5 = *(v3 + 128);
      *(v3 + 120) = v4;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        if (*(&v7[0] + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v7[0] + 1));
        }
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v8);
    }
  }
}

void sub_1B29EC4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B29EC784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A4BA00;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[2])();
    }

    operator delete(v2);
  }

  return a1;
}

id VKAnimationCurveSpring(float a1, float a2, float a3, float a4)
{
  v4 = sqrtf(a2 / a1);
  v5 = sqrtf(a2 * a1);
  v6 = a3 / (v5 + v5);
  if (v6 >= 1.0)
  {
    v7 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __VKAnimationCurveSpring_block_invoke_2;
    v10[3] = &__block_descriptor_44_e8_f12__0f8l;
    v11 = 1065353216;
    v12 = v4 - a4;
    v13 = v4;
  }

  else
  {
    v7 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __VKAnimationCurveSpring_block_invoke;
    v14[3] = &__block_descriptor_52_e8_f12__0f8l;
    v15 = sqrtf(-((v6 * v6) + -1.0)) * v4;
    v16 = v6;
    v17 = v4;
    v18 = 1065353216;
    v19 = -(a4 - (v6 * v4)) / v15;
  }

  v8 = [v7 copy];

  return v8;
}

uint64_t *gss::RenderStyle<gss::PropertyID>::styleValueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v6 = *(a1 + 16 * a3 + 16);
  if (!v6)
  {
LABEL_14:
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2);
  }

  v7 = a1 + 16 * a3;
  if (!*(v7 + 56))
  {
LABEL_7:
    v12 = *(v6 + 72);
    if (v12)
    {
      v13 = *v12;
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v13 + 6))
      {
        v14 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13 + 9, a2);
        if (v14 == *(v13 + 42))
        {
          return &gss::PropertySetValueHelper<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        else
        {
          return (&v13[9][4 * v14] + *(v13 + 20));
        }
      }
    }

    goto LABEL_14;
  }

  v8 = *(v7 + 48);
  v9 = 8 * *(v7 + 56);
  while (1)
  {
    v10 = *(*v8 + 72);
    if (v10)
    {
      v11 = *v10;
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
      {
        break;
      }
    }

    v8 += 8;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  return gss::CartoStyle<gss::PropertyID>::valueForExistingKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v11, a2);
}

void gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(int16x4_t *a1, uint64_t a2, int a3, int a4)
{
  if (a4 == 2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *v7;
      LODWORD(v7) = *v7 == 1.0;
      if (*(a2 + 10) == 1 && v8 != 0.0 && v8 != 1.0)
      {
        goto LABEL_14;
      }
    }

    v10 = (a2 + v7 + 11);
  }

  else
  {
    v10 = (a2 + 12);
  }

  v11 = *v10;
  if (v11 != 2)
  {
    *a1 = *gss::RenderStyle<gss::PropertyID>::styleValueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2, a3, v11, 0);
    return;
  }

  v8 = 0.0;
LABEL_14:
  v15 = 1;
  v12 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2, a3, 0, &v15);
  v13 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2, a3, 1u, &v14);
  gss::lerpIfReal(a1, *v12, *v13, v8);
}

uint64_t md::Logic<md::GridLogic,md::GridContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x336A901A15BB7353)
  {
    v9[6] = v3;
    v9[7] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v9[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>::resolveDependencies(*(a2 + 8));
      v9[1] = v8;
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::TileSelectionContext>>::resolveDependencies(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xE42D19AFCA302E68);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0xE42D19AFCA302E68))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  gdc::Context::context<md::TileSelectionContext>(a1);
  return v4;
}

void std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = (8 * ((v3 - *a1) >> 3));
    geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v10, a2);
    v5 = v10 + 3;
    v21 = (v10 + 3);
    v11 = *a1;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    if (v12 != *a1)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v15, v14);
        v14 += 24;
        v15 = v16 + 24;
      }

      while (v14 != v12);
      v17 = v11;
      v18 = v11;
      do
      {
        v19 = *v18;
        v18 += 3;
        (*v19)(v11);
        v17 += 3;
        v11 = v18;
      }

      while (v18 != v12);
    }

    v20 = *a1;
    *a1 = v13;
    *(a1 + 1) = v21;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v5 = geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v3, a2) + 3;
  }

  a1[1] = v5;
}

void sub_1B29ED2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  md::RouteOverlayContext::~RouteOverlayContext(&a9);
  MEMORY[0x1B8C62190](v9, v10);
  _Unwind_Resume(a1);
}

double md::Logic<md::RouteOverlayLogic,md::RouteOverlayContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  return result;
}

void md::RouteOverlayContext::~RouteOverlayContext(md::RouteOverlayContext *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 20));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 17));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 14));

  v3 = (this + 72);
  std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v3);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 7));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 4));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 1));
}

uint64_t md::Logic<md::RouteOverlayLogic,md::RouteOverlayContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x13043386C0978CC2)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 144))(result, a2, v5);
    }
  }

  return result;
}

uint64_t geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4BA00;

  return a1;
}

void md::RouteOverlayLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65[4] = *MEMORY[0x1E69E9840];
  v6 = (a4 + 32);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a4 + 32));
  *(a4 + 24) = v6;
  *(a4 + 40) = 0;
  *v6 = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a4 + 56));
  *(a4 + 48) = a4 + 56;
  *(a4 + 64) = 0;
  *(a4 + 56) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a4 + 136));
  *(a4 + 128) = a4 + 136;
  *(a4 + 144) = 0;
  *(a4 + 136) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a4 + 160));
  *(a4 + 152) = a4 + 160;
  *(a4 + 168) = 0;
  *(a4 + 160) = 0;
  *(a4 + 176) = *(a1 + 192);
  v8 = (a4 + 104);
  v7 = *(a4 + 104);
  v57[0] = 0;
  v57[1] = 0;
  v56 = v57;
  v9 = *a4;
  v61 = (a4 + 8);
  v62 = v9;
  v59 = (a4 + 112);
  v60 = v7;
  v58.n128_u64[0] = &v56;
  v58.n128_u64[1] = v57;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::insert_iterator<std::set<objc_object  {objcproto14VKRouteOverlay}*>> &>(buf, &v62, &v61, &v60, &v59, &v58);
  v10 = *(a1 + 128);
  v11 = *(v10 + 24);
  v12 = *(a4 + 24);
  v61 = (v10 + 32);
  v62 = v11;
  v59 = v57;
  v60 = v56;
  v58.n128_u64[0] = a4 + 24;
  v58.n128_u64[1] = v12;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::insert_iterator<std::set<objc_object  {objcproto14VKRouteOverlay}*>> &>(buf, &v62, &v61, &v60, &v59, &v58);
  v13 = *(a1 + 128);
  v14 = *(v13 + 24);
  v15 = *(a4 + 48);
  v61 = v57;
  v62 = v56;
  v59 = (v13 + 32);
  v60 = v14;
  v58.n128_u64[0] = a4 + 48;
  v58.n128_u64[1] = v15;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::insert_iterator<std::set<objc_object  {objcproto14VKRouteOverlay}*>> &>(buf, &v62, &v61, &v60, &v59, &v58);
  v16 = *(a1 + 128);
  if (v16 + 24 != a4)
  {
    std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__assign_multi<std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long>>(a4, *(v16 + 24), (v16 + 32));
    v16 = *(a1 + 128);
  }

  v17 = *(v16 + 48);
  v18 = *v8;
  v19 = *(a4 + 128);
  v61 = (v16 + 56);
  v62 = v17;
  v59 = (a4 + 112);
  v60 = v18;
  v58.n128_u64[0] = a4 + 128;
  v58.n128_u64[1] = v19;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::insert_iterator<std::set<objc_object  {objcproto14VKRouteOverlay}*>> &>(buf, &v62, &v61, &v60, &v59, &v58);
  v20 = *v8;
  v21 = *(a1 + 128);
  v22 = *(v21 + 48);
  v23 = *(a4 + 152);
  v61 = (a4 + 112);
  v62 = v20;
  v59 = (v21 + 56);
  v60 = v22;
  v58.n128_u64[0] = a4 + 152;
  v58.n128_u64[1] = v23;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::insert_iterator<std::set<objc_object  {objcproto14VKRouteOverlay}*>> &>(buf, &v62, &v61, &v60, &v59, &v58);
  v24 = *(a1 + 128);
  if (v8 != (v24 + 48))
  {
    std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__assign_multi<std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long>>((a4 + 104), *(v24 + 48), (v24 + 56));
  }

  v26 = *(a4 + 72);
  v25 = *(a4 + 80);
  if (v25 != v26)
  {
    v27 = v25 - 3;
    v28 = v25 - 3;
    v29 = v25 - 3;
    do
    {
      v30 = *v29;
      v29 -= 3;
      (*v30)(v28);
      v27 -= 3;
      v31 = v28 == v26;
      v28 = v29;
    }

    while (!v31);
  }

  *(a4 + 80) = v26;
  std::set<objc_object  {objcproto14VKRouteOverlay}*>::set[abi:nn200100](buf, a4);
  std::set<objc_object  {objcproto14VKRouteOverlay}*>::set[abi:nn200100](v65, (a4 + 104));
  v32 = 0;
  for (i = 0; i != 6; i += 3)
  {
    v34 = *&buf[i * 8];
    if (v34 != (&v64[i] + 4))
    {
      do
      {
        v35 = v34[4];
        v58.n128_u64[0] = v35;
        v36 = *(a4 + 80);
        if (v36 >= *(a4 + 88))
        {
          v37 = std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__emplace_back_slow_path<objc_object  {objcproto14VKRouteOverlay}*&,geo::memory_management_mode const&>((a4 + 72), &v58);
        }

        else
        {
          v37 = geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v36, v35) + 3;
          *(a4 + 80) = v37;
        }

        *(a4 + 80) = v37;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v35;
          v39 = [v38 selectedPolyline];
          v40 = v39 == 0;

          if (v40)
          {
            goto LABEL_25;
          }

          v41 = [v38 selectedPolyline];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v38 = v35;
            goto LABEL_18;
          }

          v38 = v35;
          if (![v38 selected])
          {
LABEL_25:
            v42 = v32;
            goto LABEL_17;
          }

          v41 = v38;
        }

        v42 = v41;

        v38 = v58.n128_u64[0];
LABEL_17:

        v32 = v42;
LABEL_18:

        v43 = v34[1];
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = v34[2];
            v31 = *v44 == v34;
            v34 = v44;
          }

          while (!v31);
        }

        v34 = v44;
      }

      while (v44 != (&v64[i] + 4));
    }
  }

  for (j = 32; j != -16; j -= 24)
  {
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*&buf[j]);
  }

  v46 = (a4 + 96);
  if (*(a4 + 96) != v32)
  {
    v47 = GEOGetVectorKitRouteOverlayLogicLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v64[0] = v32;
      _os_log_impl(&dword_1B2754000, v47, OS_LOG_TYPE_INFO, "Updating selected polyline:%@", buf, 0xCu);
    }
  }

  objc_storeStrong((a4 + 96), v32);
  objc_storeStrong((a4 + 184), *(a1 + 176));
  objc_storeStrong((a4 + 192), *(a1 + 184));
  if (a4 != a1)
  {
    std::vector<geo::PolylineCoordinate>::__assign_with_size[abi:nn200100]<geo::PolylineCoordinate*,geo::PolylineCoordinate*>((a4 + 200), *(a1 + 200), *(a1 + 208), (*(a1 + 208) - *(a1 + 200)) >> 3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v57[0]);
  v48 = *v46;
  v55 = *v46;
  if (*(a1 + 136) != v55 || (v49 = *(a1 + 144), [v55 routeRibbon], v50 = objc_claimAutoreleasedReturnValue(), v50, v49 != v50))
  {
    objc_storeStrong((a1 + 136), v48);
    v51 = [v55 routeRibbon];
    v52 = *(a1 + 144);
    *(a1 + 144) = v51;

    v53 = *(a1 + 120);
    v54 = [v55 routeRibbon];
    md::LabelSettings_Navigation::setRouteLine(*(*(v53 + 8) + 24), v54);
  }
}

void sub_1B29EDA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  for (i = 32; i != -16; i -= 24)
  {
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(&a19 + i));
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  _Unwind_Resume(a1);
}

__n128 std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long> &,std::insert_iterator<std::set<objc_object  {objcproto14VKRouteOverlay}*>> &>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, __n128 *a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v30 = *a6;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = v8[4];
    v16 = i[4];
    if (v15 >= v16)
    {
      if (v16 >= v15)
      {
        v23 = v8[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v8[2];
            v20 = *v24 == v8;
            v8 = v24;
          }

          while (!v20);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v22 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v22 = v25[2];
            v20 = *v22 == v25;
            v25 = v22;
          }

          while (!v20);
        }
      }

      else
      {
        v21 = i[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = i[2];
            v20 = *v22 == i;
            i = v22;
          }

          while (!v20);
        }
      }

      *a4 = v22;
    }

    else
    {
      std::insert_iterator<std::set<objc_object  {objcproto14VKRouteOverlay}*>>::operator=[abi:nn200100](a6, v8 + 4);
      v17 = *a2;
      v18 = *(*a2 + 8);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v17[2];
          v20 = *v19 == v17;
          v17 = v19;
        }

        while (!v20);
      }

      *a2 = v19;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v30 = *a6;
  if (v8 != v9)
  {
    do
    {
      std::insert_iterator<std::set<objc_object  {objcproto14VKRouteOverlay}*>>::operator=[abi:nn200100](&v30, v8 + 4);
      v27 = v8[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v8[2];
          v20 = *v28 == v8;
          v8 = v28;
        }

        while (!v20);
      }

      v8 = v28;
    }

    while (v28 != v9);
    v8 = v9;
  }

LABEL_39:
  result = v30;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}

void *std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__emplace_hint_unique_key_args<objc_object  {objcproto14VKRouteOverlay}*,objc_object  {objcproto14VKRouteOverlay} const&>(void *a1, void *a2, unint64_t a3)
{
  v3 = a1 + 1;
  if (a1 + 1 == a2 || (v4 = a2[4], v4 > a3))
  {
    v5 = *a2;
    if (*a1 == a2)
    {
      v7 = a2;
    }

    else
    {
      if (v5)
      {
        v6 = *a2;
        do
        {
          v7 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        v13 = a2;
        do
        {
          v7 = v13[2];
          v14 = *v7 == v13;
          v13 = v7;
        }

        while (v14);
      }

      if (v7[4] >= a3)
      {
        v15 = *v3;
        if (*v3)
        {
          while (1)
          {
            while (1)
            {
              v16 = v15;
              v17 = v15[4];
              if (v17 <= a3)
              {
                break;
              }

              v15 = *v16;
              if (!*v16)
              {
                goto LABEL_21;
              }
            }

            if (v17 >= a3)
            {
              return v16;
            }

            v15 = v16[1];
            if (!v15)
            {
              goto LABEL_21;
            }
          }
        }

        goto LABEL_21;
      }
    }

    if (!v5)
    {
      goto LABEL_21;
    }

    v8 = v7[1];
  }

  else
  {
    v8 = a2;
    if (v4 >= a3)
    {
      return v8;
    }

    v9 = a2[1];
    if (v9)
    {
      v10 = a2[1];
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
      v8 = 0;
    }

    else
    {
      v11 = a2;
      do
      {
        v8 = v11;
        v11 = v11[2];
      }

      while (*v11 != v8);
    }

    if (v11 != v3 && v11[4] <= a3)
    {
      v18 = *v3;
      if (*v3)
      {
        do
        {
          while (1)
          {
            v16 = v18;
            v19 = v18[4];
            if (v19 <= a3)
            {
              break;
            }

            v18 = *v16;
            if (!*v16)
            {
              goto LABEL_21;
            }
          }

          if (v19 >= a3)
          {
            return v16;
          }

          v18 = v16[1];
        }

        while (v18);
      }

LABEL_21:
      operator new();
    }

    if (!v9)
    {
      goto LABEL_21;
    }
  }

  if (!v8)
  {
    goto LABEL_21;
  }

  return v8;
}