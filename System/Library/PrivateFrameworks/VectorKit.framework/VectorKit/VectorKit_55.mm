void sub_1B2B7A5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, void *a24)
{
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a24);

  _Unwind_Resume(a1);
}

uint64_t md::PointLabelFeature::elementAtZoom(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 440);
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 440;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == a1 + 440 || *(v4 + 32) > a2)
  {
    return 0;
  }

  v10 = v4 + 40;
  v9 = *(v4 + 40);
  v11 = (*(v10 + 8) - v9) >> 3;
  if (v11 < 2)
  {
    v14 = 1;
  }

  else
  {
    if (*v9)
    {
      v12 = *v9 + 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v12 + 72);
    v14 = 1;
    while (1)
    {
      v15 = v9[v14];
      v16 = v15 ? v15 + 8 : 0;
      if (*(v16 + 72) != v13 || *(v16 + 129) > a3)
      {
        break;
      }

      if (v11 == ++v14)
      {
        v14 = v11;
        break;
      }
    }
  }

  v17 = v9[v14 - 1];
  if (v17)
  {
    return v17 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
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
        return v7;
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
    v7 = a1 + 1;
LABEL_9:
    v9 = mdm::zone_mallocator::instance(a1);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x48uLL, 0x10E00404E70DBE6uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v13 = **a3;
    **a3 = 0;
    v12[4] = v13;
    v12[5] = 0;
    v12[6] = 0;
    v12[7] = 0;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = v7;
    *v6 = v12;
    v14 = **a1;
    v15 = v12;
    if (v14)
    {
      *a1 = v14;
      v15 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[3] = (a1[3] + 1);
  }

  return v12;
}

uint64_t md::CaptionedIconLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, const LabelLayoutContext *a3, _BYTE *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  if (*(a1 + 926) == 1)
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 8);
    v11 = *(v9 + 392);
    v12 = *(v9 + 256);
    v13 = atomic_load((a2 + 3368));
    v14 = md::PointLabelFeature::elementAtZoom(v10, *(v9 + 48), (v11 - v13) & ~((v11 - v13) >> 31));
    if (v14)
    {
      if (*(v14 + 130) != *(a1 + 943))
      {
        goto LABEL_9;
      }

      v15 = 131;
      if (v12 == 3)
      {
        v15 = 133;
      }

      if (v12 == 2)
      {
        v15 = 132;
      }

      if (*(v14 + v15) != *(a1 + 944))
      {
        goto LABEL_9;
      }
    }
  }

  if (v5)
  {
    v17 = *v8;
    if (*(*v8 + 250) != *(a1 + 922) || *(a1 + 926) == 1 && *(a1 + 958) == 1 && !*(v17 + 246) && !md::LabelPlacement::operator==((a1 + 832), (a1 + 837)))
    {
LABEL_9:
      result = 1;
      a4[8] = 1;
      *a4 = 1;
      return result;
    }

    if (*(v17 + 253) != *(a1 + 857) || (md::LabelIconStyleMonitor::needsCrossfade(a1 + 736, v17, a4) & 1) != 0)
    {
      return 1;
    }

    v18 = *(a1 + 576);
    v19 = *(a1 + 584);
    if (v18 != v19)
    {
      v20 = v18 + 8;
      do
      {
        v21 = (*(**(v20 - 8) + 768))(*(v20 - 8), a2, 1, a4);
        if (v21)
        {
          break;
        }

        v22 = v20 == v19;
        v20 += 8;
      }

      while (!v22);
      if (v21)
      {
        return 1;
      }
    }

    v23 = *v8;
    if (*(*v8 + 144) != *(a1 + 923))
    {
      return 1;
    }

    v24 = *(v23 + 272);
    if (!v24)
    {
      v25 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v8);
      v24 = *v25;
      *(v23 + 272) = *v25;
    }

    if (*(a1 + 924) != *(v24 + 70))
    {
      return 1;
    }

    if (*(a1 + 926) != 1)
    {
      goto LABEL_39;
    }

    v26 = *v8;
    v27 = *(*v8 + 272);
    if (!v27)
    {
      v28 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v8);
      v27 = *v28;
      *(v26 + 272) = *v28;
    }

    if (*(v27 + 64) != *(a1 + 853))
    {
      return 1;
    }

    v29 = md::LabelAnnotationStyleMonitor::needsCrossfade(a1 + 933, *v8);
  }

  else
  {
    v30 = *(a1 + 576);
    v31 = *(a1 + 584);
    if (v30 == v31)
    {
      goto LABEL_39;
    }

    v32 = v30 + 8;
    do
    {
      v29 = (*(**(v32 - 8) + 768))(*(v32 - 8), a2, 0, a4);
      if (v29)
      {
        break;
      }

      v22 = v32 == v31;
      v32 += 8;
    }

    while (!v22);
  }

  if (v29)
  {
    return 1;
  }

LABEL_39:
  if (*(a1 + 926) == 1)
  {
    if (*(a1 + 832) == 5)
    {
      v37 = md::CaptionedIconLabelPart::evaluateFeatureNormalTextPosition(*(a1 + 16), *(a2 + 424), a3);
      v33 = *(a1 + 847);
    }

    else
    {
      if (*(a1 + 920) != 1)
      {
        return 0;
      }

      v33 = *(a1 + 847);
      v34 = *(*(a2 + 424) + 472) + *(a1 + 836);
      v35 = ((v34 + 32) >> 5) & 6;
      v36 = (v34 + 16) >> 5;
      if (*(a1 + 856) == 1)
      {
        v37 = v36;
      }

      else
      {
        v37 = v35;
      }
    }

    if (v37 != v33)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t md::CompositeLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 576);
  v5 = *(a1 + 584);
  if (v4 == v5)
  {
    return 0;
  }

  v9 = v4 + 8;
  do
  {
    result = (*(**(v9 - 8) + 768))(*(v9 - 8), a2, a3, a4);
    if (result)
    {
      break;
    }

    v11 = v9 == v5;
    v9 += 8;
  }

  while (!v11);
  return result;
}

BOOL md::TextLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = md::LabelStyle::textStyleGroup(**(a1 + 32), *(a1 + 880));
  return *(v4 + 100) != 0.0 && !md::LabelText::checkValidForZoom(*(a1 + 576), *(*(a1 + 16) + 404), v4);
}

__n128 std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>> &>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, __n128 *a6)
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
    if (md::RouteRangeAnnotationRequest::operator<((v8 + 4), i[4]))
    {
      std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>::operator=[abi:nn200100](a6, (*a2 + 32));
      v15 = *a2;
      v16 = *(*a2 + 8);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v15[2];
          v18 = *v17 == v15;
          v15 = v17;
        }

        while (!v18);
      }

      *a2 = v17;
    }

    else
    {
      if (md::RouteRangeAnnotationRequest::operator<(*a4 + 32, *(*a2 + 32)))
      {
        v19 = *a4;
        v20 = *(*a4 + 8);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v19[2];
            v18 = *v21 == v19;
            v19 = v21;
          }

          while (!v18);
        }
      }

      else
      {
        v22 = *a2;
        v23 = *(*a2 + 8);
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
            v24 = v22[2];
            v18 = *v24 == v22;
            v22 = v24;
          }

          while (!v18);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v21 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v21 = v25[2];
            v18 = *v21 == v25;
            v25 = v21;
          }

          while (!v18);
        }
      }

      *a4 = v21;
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
      std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>::operator=[abi:nn200100](&v30, v8 + 4);
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
          v18 = *v28 == v8;
          v8 = v28;
        }

        while (!v18);
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

BOOL md::LabelPlacement::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a1[3];
  if (v2 != a2[3])
  {
    return 0;
  }

  if (v2 == 10)
  {
    return a1[4] == a2[4];
  }

  return 1;
}

BOOL md::RouteRangeAnnotationRequest::operator<(uint64_t a1, unint64_t a2)
{
  if (*a1 == a2)
  {
    return [*(a1 + 8) compare:{v2, v3}] == -1;
  }

  else
  {
    return *a1 < a2;
  }
}

float md::TextLabelPart::prepareForDisplay(md::TextLabelPart *this, md::LabelManager *a2)
{
  if (!*(this + 74))
  {
    std::allocate_shared[abi:nn200100]<md::LabelText,std::allocator<md::LabelText>,md::LabelText&,0>();
  }

  v3 = *(**(this + 4) + 16 * (*(this + 880) == 1) + 408);
  if (!v3)
  {
    md::LabelStyle::prepareDisplayTextStyleGroup();
  }

  v4 = *(**(this + 4) + 16 * (*(this + 880) == 1) + 416);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 76) = v3;
  v5 = *(this + 77);
  *(this + 77) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  result = *(this + 157);
  *(this + 187) = result;
  if (*(this + 565) == 1 && !*(this + 107))
  {
    operator new();
  }

  return result;
}

float md::Label::boundsForStaging(md::Label *this)
{
  v2 = *(this + 33);
  if (v2 && (*(this + 1371) & 1) != 0)
  {
    return *(*(*v2 + 256))(v2);
  }

  v2 = *(this + 34);
  if (v2)
  {
    return *(*(*v2 + 256))(v2);
  }

  else
  {
    return 3.4028e38;
  }
}

uint64_t md::Label::updateStateMachineForStaging(uint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  v11 = *MEMORY[0x1E69E9840];
  v4 = byte_1B3417E90[3 * a2 + *(result + 844)];
  atomic_load((result + 1330));
  if (v4 == 255)
  {
    v4 = *(result + 844);
  }

  else
  {
    if ((v4 == 0) == (*(result + 844) != 0))
    {
      v6 = 0;
      v10 = *(result + 264);
      do
      {
        result = *(&v10 + v6);
        if (result)
        {
          v7 = *result;
          if (v4)
          {
            result = (*(v7 + 152))(result, a2);
          }

          else
          {
            result = (*(v7 + 160))(result, a2);
          }
        }

        v6 += 8;
      }

      while (v6 != 16);
    }

    *(v3 + 844) = v4;
    *(v3 + 845) = a3;
  }

  if (v4 != 2)
  {
    if (!v4)
    {
      *(v3 + 1371) = 0;
      *(v3 + 1373) = 0;
      result = *(v3 + 264);
      *(v3 + 264) = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (*(v3 + 288))
      {
        *(v3 + 288) = 0;
        *(v3 + 1335) = 1;
      }
    }

    *(v3 + 1378) = 0;
    *(v3 + 856) = *(v3 + 855);
    if (*(v3 + 1338) == 1)
    {
      atomic_load((v3 + 1330));
      *(v3 + 1338) = 0;
      v8 = atomic_load((v3 + 1328));
      if ((v8 & 1) == 0)
      {
        *(v3 + 858) = 1;
      }
    }
  }

  v9 = atomic_load((v3 + 481));
  if ((v9 & 1) == 0)
  {
    *(v3 + 485) = 2 * (*(v3 + 844) == 2);
  }

  return result;
}

unint64_t md::LabelStyle::collisionGroupInfo(uint64_t a1, int a2)
{
  v3 = *(a1 + 256);
  v4 = *(a1 + 261) | (*(a1 + 263) << 16);
  if (a2 == 8)
  {
    v5 = *(a1 + 264);
    if (!v5)
    {
      v6 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(a1);
      v5 = *v6;
      *(a1 + 264) = *v6;
    }

    v7 = (v5 + 63);
  }

  else
  {
    v7 = (a1 + 260);
  }

  return v3 | (v4 << 40) | (*v7 << 32);
}

uint64_t md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(uint64_t a1, int a2)
{
  v19 = a2;
  v20 = 0;
  v3 = *(a1 + 336);
  v4 = *(a1 + 344);
  while (1)
  {
    if (v3 == v4)
    {
      goto LABEL_13;
    }

    v5 = *v3 == a2 && v3[1] == 0;
    if (v5 && v3[2] == 0)
    {
      break;
    }

    v3 += 16;
  }

  if (v3 == v4)
  {
LABEL_13:
    operator new();
  }

  v7 = *(v3 + 1);
  if ((*(v7 + 12) & 1) == 0)
  {
    v8 = *v7;
    *(v7 + 12) = 1;
    if (*a1)
    {
      v9 = md::LabelStyle::styleQueryForComponent(a1, a2, 0);
      v10 = *v9;
      if (*v9)
      {
        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v15, v10, v11);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        if (v18 == 1)
        {
          md::LabelTextStyleGroup::update(v8, &v15, *(a1 + 16), *(a1 + 93), 1, *(a1 + 104), *(a1 + 88));
          if (v18)
          {
            (*(*v15 + 56))(v15);
          }
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v17);
        }

        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }
      }
    }

    else
    {
      v12 = *(a1 + 88);
      *(v8 + 8) = 255;
      *(v8 + 10) = -1;
      *(v8 + 14) = -1;
      *(v8 + 44) = 1065353216;
      if (*(v8 + 95) < 0)
      {
        *(v8 + 80) = 5;
        v13 = *(v8 + 72);
      }

      else
      {
        v13 = (v8 + 72);
        *(v8 + 95) = 5;
      }

      strcpy(v13, "basic");
      *(v8 + 100) = v12 * 12.0;
      *(v8 + 104) = 1065353216;
    }
  }

  return v7;
}

void sub_1B2B7B6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::TextLabelPart::textColorForSource(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = *a3;
  if (a2 == 4)
  {
    v11 = *(v5 + 272);
    if (!v11)
    {
      v12 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*a3);
      v11 = *v12;
      *(v5 + 272) = *v12;
    }

    v10 = (v11 + 65);
  }

  else
  {
    v6 = *(a1 + 880) == 1;
    v7 = v5 + 280;
    if (*(a1 + 880) == 1)
    {
      v8 = 6;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v7 + 8 * (*(a1 + 880) == 1));
    if (v9)
    {
      if (vabds_f32(*(v9 + 8), *(v5 + 104)) >= 0.01)
      {
        md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(v5, v9, v8);
        v9 = *(v7 + 8 * v6);
      }
    }

    else
    {
      v9 = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(v5, v8);
      *(v7 + 8 * v6) = v9;
    }

    v10 = (*v9 + 8);
  }

  *a4 = *v10;
}

float gm::Box<float,2>::operator-(float32x4_t *a1, float32x4_t a2)
{
  v2 = 0;
  v3 = 1;
  v4 = 2139095039;
  while (a1->f32[v2 + 2] >= a1->f32[v2])
  {
    v5 = v3;
    v3 = 0;
    v2 = 1;
    if ((v5 & 1) == 0)
    {
      v6 = 0;
      v11 = *a1;
      v7 = &v11;
      v8 = 1;
      while (v11.f32[v6 + 2] >= v7->f32[0])
      {
        v9 = v8;
        v8 = 0;
        v7 = &v11.i32[1];
        v6 = 1;
        if ((v9 & 1) == 0)
        {
          a2.i64[1] = a2.i64[0];
          v4 = vsubq_f32(v11, a2).u32[0];
          return *&v4;
        }
      }

      v4 = v11.i32[0];
      return *&v4;
    }
  }

  return *&v4;
}

BOOL md::LineLabelFeature::hasIdentifier(md::LineLabelFeature *this, const md::LabelIdentifier *a2)
{
  v4 = *(this + 29);
  v2 = this + 232;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 8);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *&v3[8 * v9];
  }

  while (v3);
  if (v6 == v2 || v5 < *(v6 + 8))
  {
    return 0;
  }

  v11 = (*(**(v6 + 5) + 200))(*(v6 + 5));
  v13 = v11;
  if (*v11 && *(v11 + 10) == *(*v11 + 16) && *(v11 + 3) && (*(v11 + 17) & 0x80000000) == 0)
  {
    return 1;
  }

  md::LabelLineResolvedPosition::moveOntoPathForZoom(v11, v11[164], v12);
  if (!*v13 || *(v13 + 10) != *(*v13 + 16) || !*(v13 + 3))
  {
    return 0;
  }

  return *(v13 + 17) >= 0;
}

uint64_t *md::LabelNavEtaLabeler::annotatableSectionsForRoute(md::LabelNavEtaLabeler *this, GEOComposedRoute *a2)
{
  v3 = a2;
  {
    v15 = v3;
    v3 = v15;
    if (v14)
    {
      qword_1EB82A738 = 0;
      qword_1EB82A748 = 0;
      md::LabelNavEtaLabeler::annotatableSectionsForRoute(GEOComposedRoute *)const::empty = &qword_1EB82A738;
      v3 = v15;
    }
  }

  v4 = *(this + 49);
  if (v4)
  {
    v5 = this + 392;
    v6 = this + 392;
    do
    {
      v7 = *(v4 + 4);
      v8 = v7 >= v3;
      v9 = v7 < v3;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * v9];
    }

    while (v4);
    v10 = &md::LabelNavEtaLabeler::annotatableSectionsForRoute(GEOComposedRoute *)const::empty;
    if (v6 != v5)
    {
      v11 = *(v6 + 4);
      v12 = (v6 + 40);
      if (v11 <= v3)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = &md::LabelNavEtaLabeler::annotatableSectionsForRoute(GEOComposedRoute *)const::empty;
  }

  return v10;
}

uint64_t std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__vallocate[abi:nn200100](a1, v5 >> 4);
    v6 = *(a1 + 8);
    memmove(v6, v4, v5);
    *(a1 + 8) = &v6[v5];
  }

  return a1;
}

void *md::LineLabelFeature::style(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  if (!a2)
  {
    return (a1 + 80);
  }

  v6 = *(a1 + 232);
  if (!v6)
  {
    goto LABEL_10;
  }

  v10 = a1 + 232;
  do
  {
    v11 = *(v6 + 32);
    v12 = v11 >= a2;
    v13 = v11 < a2;
    if (v12)
    {
      v10 = v6;
    }

    v6 = *(v6 + 8 * v13);
  }

  while (v6);
  if (v10 == a1 + 232 || *(v10 + 32) > a2)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v17 = *(v10 + 40);
  v14 = *(v10 + 48);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = (*(*v17 + 200))(v17);
  v20 = v18;
  if (!v18)
  {
    goto LABEL_48;
  }

  if (*v18 && *(v18 + 10) == *(*v18 + 16) && *(v18 + 3) && (*(v18 + 17) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  md::LabelLineResolvedPosition::moveOntoPathForZoom(v18, v18[164], v19);
  v21 = *v20;
  if (!*v20)
  {
    goto LABEL_33;
  }

  if (*(v20 + 10) != *(v21 + 16))
  {
    goto LABEL_48;
  }

  v21 = *(v20 + 3);
  if (!v21)
  {
    goto LABEL_33;
  }

  if ((*(v20 + 17) & 0x80000000) == 0)
  {
LABEL_27:
    md::LabelLineResolvedPosition::ensureValidLinePosition(v20, v19);
    if (*v20 && *(v20 + 10) == *(*v20 + 16) && (v22 = *(v20 + 3)) != 0 && (*(v20 + 17) & 0x80000000) == 0 && (v21 = *v22) != 0)
    {
      LODWORD(v21) = *(v21 + 40);
    }

    else
    {
      LODWORD(v21) = -1;
    }
  }

  else
  {
LABEL_48:
    LODWORD(v21) = 0;
  }

LABEL_33:
  v23 = *(a1 + 272);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 280) - v23) >> 4) > v21)
  {
    v24 = v17[9];
    v25 = (v23 + 80 * v21);
    if (a4)
    {
      if (*(a1 + 304) != v21)
      {
        *(a1 + 304) = v21;
        operator new();
      }

      v25 = *(a1 + 312);
    }

    if (a3 || v24 > 8)
    {
      v26 = 0;
    }

    else if (((1 << v24) & 0x1E7) != 0)
    {
      v26 = v25 + 2;
    }

    else
    {
      v26 = v25 + 6;
      if (v24 != 3)
      {
        v26 = v25 + 8;
      }
    }

    if (v26)
    {
      v15 = v26;
    }

    else
    {
      v15 = v25 + 2;
    }

    if (a5 && !*v15)
    {
      md::LineLabelFeature::resolvedStyleAttributes();
    }

    goto LABEL_12;
  }

LABEL_11:
  v15 = (a1 + 80);
LABEL_12:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  return v15;
}

void sub_1B2B7BE58(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LineLabelFeature::updateDynamicStyling(md::LineLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  if (*(this + 432) == 1)
  {
    (*(*this + 552))(this, a2, a3);
    *(this + 432) = 0;
  }

  return 0;
}

char *std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ShareSection>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

BOOL md::LabelLineResolvedPosition::ensureValidLinePosition(md::LabelLineResolvedPosition *this, double a2)
{
  if (*this && *(this + 10) == *(*this + 16) && *(this + 3) && (*(this + 17) & 0x80000000) == 0)
  {
    return 1;
  }

  md::LabelLineResolvedPosition::moveOntoPathForZoom(this, *(this + 164), a2);
  return *this && *(this + 10) == *(*this + 16) && *(this + 3) && *(this + 17) >= 0;
}

uint64_t **std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 8);
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
    v7 = a1 + 1;
LABEL_9:
    v9 = mdm::zone_mallocator::instance(a1);
    v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,void *>>(v9);
    v10[8] = **a3;
    *(v10 + 6) = 0;
    *(v10 + 7) = 0;
    *(v10 + 5) = 0;
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(a1, v7, v6, v10);
    return v10;
  }

  return v7;
}

void md::CurvedTextLabelPart::updateWithStyle(md::CurvedTextLabelPart *this, md::LabelManager *a2)
{
  md::TextLabelPart::updateWithStyle(this, a2);
  v4 = *(this + 4);
  v5 = *v4;
  v6 = *(this + 880) == 1;
  v7 = *v4 + 280;
  if (*(this + 880) == 1)
  {
    v8 = 6;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v7 + 8 * (*(this + 880) == 1));
  if (v9)
  {
    if (vabds_f32(*(v9 + 8), *(v5 + 104)) >= 0.01)
    {
      md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(v5, v9, v8);
    }
  }

  else
  {
    *(v7 + 8 * v6) = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(v5, v8);
  }

  v10 = *(this + 157);
  if (v10 != 0.0)
  {
    v11 = **(v7 + 8 * v6);
    v12 = *v4;
    v14 = *(*v4 + 148);
    v13 = *(*v4 + 152);
    *(this + 248) = v13;
    *(this + 1154) = *(v12 + 240);
    *(this + 246) = v14 + (v10 * 0.33);
    *(this + 247) = (*(a2 + 44) * v13) + (*(v11 + 100) * 0.33);
    v15 = *(v12 + 264);
    if (!v15)
    {
      v16 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(v12);
      v15 = *v16;
      *(v12 + 264) = *v16;
      v12 = *v4;
    }

    *(this + 291) = *(v15 + 52);
    v17 = *(this + 1479);
    v18 = *(v12 + 248);
    if (v18 == 32)
    {
      v22 = **(*(this + 72) + 16);
      v19 = (*(v22 + 128) == 2) & *(v22 + 130);
    }

    else
    {
      v19 = 0;
    }

    *(this + 1479) = v19;
    if (v17 && (v19 & 1) == 0)
    {
      *(this + 1476) = v18;
    }

    if ((*(this + 1481) & 1) == 0)
    {
      v20 = *(*(this + 4) + 16);
      if (vabds_f32(v20, *(this + 357)) > 0.5)
      {
        *(this + 357) = v20;
        v21 = *(*this + 560);

        v21(this);
      }
    }
  }
}

uint64_t md::CurvedTextLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v7 = md::TextLabelPart::layoutForStaging(a1, a2, a3, a4);
  if (v7 != 37)
  {
    return v7;
  }

  v8 = *(a2 + 424);
  v9 = *(a1 + 1155);
  *(a1 + 1155) = 0;
  if (*(a1 + 1160))
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(**(a1 + 1088) + 168))(*(a1 + 1088), *(*(a1 + 32) + 16));
    v9 |= v10;
  }

  v11 = *(v8 + 1176);
  if (*(a1 + 1016) != v11)
  {
    *(a1 + 1016) = v11;
    v9 = 1;
    *(a1 + 1490) = 1;
  }

  v12 = *(*(a1 + 576) + 108);
  if (*(a1 + 1020) != v12)
  {
    *(a1 + 1020) = v12;
    v9 = 1;
  }

  if ((*(a1 + 1481) & 1) == 0)
  {
    v38 = *(*(a1 + 16) + 96);
    if (*(a1 + 1432) != v38)
    {
      *(a1 + 1490) = 1;
      *(a1 + 1432) = v38;
      if ((v9 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_10:
      v13 = *(a1 + 32);
      v14 = *(v13 + 16);
      *(a1 + 1153) = v14;
      *(a1 + 976) = v14;
      *(a1 + 996) = *(v13 + 20) * *(a1 + 628);
      *(a1 + 1024) = a1 + 72;
      *(a1 + 1000) = *(a1 + 168);
      v15 = *(a1 + 16);
      v16 = (v15 + 616);
      for (i = 129; i != 132; ++i)
      {
        v18 = *v16++;
        *(a1 + 8 * i) = v18;
      }

      v19 = 0;
      *(a1 + 1080) = *(v15 + 784);
      *(a1 + 1072) = *(v15 + 680);
      *(a1 + 1012) = *(a2 + 176);
      do
      {
        v20 = *(v15 + 544 + 8 * v19);
        *(v40.f64 + v19++) = v20;
      }

      while (v19 != 3);
      v21 = 0;
      *(a1 + 1056) = v40.f64[0];
      *(a1 + 1064) = LODWORD(v40.f64[1]);
      v22 = v15 + 640;
      v23 = 864;
      do
      {
        v24 = 0;
        v25 = 0.0;
        v26 = v23;
        do
        {
          v25 = v25 + *(v22 + v24) * *(v8 + v26);
          v24 += 8;
          v26 += 32;
        }

        while (v24 != 24);
        v40.f64[v21] = *(v8 + 864 + 8 * v21 + 96) + v25;
        ++v21;
        v23 += 8;
      }

      while (v21 != 4);
      __asm { FMOV            V1.2D, #1.0 }

      v32 = vmulq_f64(v40, vdivq_f64(_Q1, vdupq_lane_s64(v41, 0)));
      *&v32.f64[0] = vcvt_f32_f64(v32);
      if (v10)
      {
        v39 = v32;
        if ((*(**(a1 + 1088) + 176))(*(a1 + 1088), 1.0))
        {
          *(a1 + 1487) = 1;
          v33 = *(a1 + 1158);
          if (v33 != (*(**(a1 + 1088) + 80))(*(a1 + 1088), v39))
          {
            *(a1 + 1158) = (*(**(a1 + 1088) + 80))(*(a1 + 1088), v39);
            if (*(a1 + 1152))
            {
              if (*(a1 + 1152) == 2)
              {
                v34 = 1;
              }

              else
              {
                v34 = 2;
              }

              *(a1 + 1152) = v34;
            }
          }
        }
      }

      v35 = md::CurvedTextLabelPart::placeGlyphsOnRoadPath(a1, 0, (a1 + 1482), a1 + 976, v8, a2);
      *(a1 + 1156) = v35;
      v36 = *(a1 + 576);
      *(a1 + 688) = -858980352 * ((*(*(v36 + 16) + 64) - *(*(v36 + 16) + 56)) >> 3);
      *(a1 + 692) = 0;
      *(a1 + 696) = ((*(v36 + 72) - *(v36 + 64)) << 10) & 0xFFFF0000;
      goto LABEL_27;
    }
  }

  if (v9)
  {
    goto LABEL_10;
  }

LABEL_32:
  v35 = *(a1 + 1156);
LABEL_27:
  *(a1 + 280) = *a3;
  *(a1 + 284) = a3[1];
  *(a1 + 104) = *a3;
  *(a1 + 108) = a3[1];
  md::CollisionObject::setupShapeData(a1 + 72);
  return v35;
}

BOOL md::CurvedTextLabelPart::needsCrossfade(uint64_t a1, float *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  if (*(a1 + 1482) != 4)
  {
    goto LABEL_7;
  }

  v9 = *(md::LabelStyle::textStyleGroup(*v8, *(a1 + 880)) + 100);
  if (v9 == 0.0)
  {
    goto LABEL_7;
  }

  v10 = v9 / a2[44];
  v11 = *(*v8 + 152) + *(*v8 + 152);
  if (*(a1 + 1485) != 8)
  {
    if (v10 < v11)
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  if (v10 < v11)
  {
    goto LABEL_7;
  }

LABEL_5:
  v12 = 1;
  *(a4 + 8) = 1;
  *a4 = 1;
LABEL_8:
  if ((*(a1 + 1481) & 1) == 0 && *(a1 + 1489) == 1 && *(a1 + 1490) == 1 && *(a1 + 1156) == 37)
  {
    *(a1 + 1490) = 0;
    if (md::CurvedTextLabelPart::checkForTraffic(a1, a2))
    {
      v19 = *(a1 + 1480) ^ 1;
      v12 = 1;
      *(a4 + 10) = 1;
      *(a4 + 2) = v19;
    }
  }

  v13 = *(a1 + 1476);
  if (*(a1 + 1157) == v13 || v13 == 0)
  {
    v15 = *(a1 + 1478);
    if (*(a1 + 1152) != v15 && v15 != 0)
    {
      v12 = 1;
      *(a4 + 9) = 1;
      *(a4 + 1) = v15;
      *(a4 + 6) = *(a1 + 1153) | 0x100;
      if (a3)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v12 = 1;
    *(a4 + 11) = 1;
    *(a4 + 3) = v13;
    *(a4 + 9) = 1;
    *(a4 + 1) = 0;
  }

  if (a3)
  {
LABEL_24:
    if (*(*v8 + 253) == *(a1 + 1422))
    {
      v18 = v12;
    }

    else
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_28;
    }

    return 1;
  }

LABEL_21:
  if (v12)
  {
    return 1;
  }

LABEL_28:

  return md::TextLabelPart::needsCrossfade(a1, a2, a3);
}

double md::CurvedTextLabelPart::prepareForDisplay(md::CurvedTextLabelPart *this, md::LabelManager *a2)
{
  v3.n128_f32[0] = md::TextLabelPart::prepareForDisplay(this, a2);
  if ((*(this + 1160) & 1) == 0)
  {
    (*(**(this + 136) + 24))(*(this + 136), this + 1280, v3.n128_f32[0]);
    *(this + 1344) = *(this + 1152);
    *(this + 1349) = *(this + 1157);
  }

  *(this + 1350) = (*(**(this + 160) + 80))(*(this + 160), v3);
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(*(this + 74) + 16) + 64) - *(*(*(this + 74) + 16) + 56)) >> 3);
  *(this + 202) = -858980352 * ((*(*(*(this + 74) + 16) + 64) - *(*(*(this + 74) + 16) + 56)) >> 3);
  *(this + 203) = 0;
  if (*(this + 126) < v4)
  {
    free(*(this + 62));
    *(this + 62) = malloc_type_calloc(v4, 0x18uLL, 0x1000040504FFAC1uLL);
    *(this + 126) = v4;
  }

  v5 = *(this + 59);
  if (v5)
  {
    free(v5);
    v6 = 0;
    *(this + 59) = 0;
    *(this + 123) = 0;
  }

  else
  {
    v6 = *(this + 123);
  }

  if (v6 < v4)
  {
    free(*(this + 60));
    v7 = malloc_type_malloc(12 * v4, 0x10000403E1C8BA9uLL);
    *(this + 60) = v7;
    if (v7)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    *(this + 123) = v8;
  }

  *(this + 122) = 0;
  result = 1.40444743e306;
  *(this + 312) = xmmword_1B33B0730;
  return result;
}

void md::PolylineLabelPlacement::copyTo(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *(v3 + 38) = *(a1 + 38);
  *(v3 + 24) = v5;
  *(v3 + 8) = v4;
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(v3 + 56);
  *(v3 + 48) = v7;
  *(v3 + 56) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = 0;
  v10 = *(a1 + 64);
  *(v3 + 76) = *(a1 + 76);
  *(v3 + 64) = v10;
  *(v3 + 96) = *(a1 + 96);
  do
  {
    *(v3 + 104 + v9) = *(a1 + 104 + v9);
    v9 += 8;
  }

  while (v9 != 24);
  v11 = 0;
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 136) = *(a1 + 136);
  v12 = *(a1 + 144);
  *(v3 + 147) = *(a1 + 147);
  *(v3 + 144) = v12;
  do
  {
    *(v3 + 152 + v11) = *(a1 + 152 + v11);
    v11 += 8;
  }

  while (v11 != 24);
  v13 = 0;
  *(v3 + 176) = *(a1 + 176);
  *(v3 + 184) = *(a1 + 184);
  v14 = *(a1 + 192);
  *(v3 + 195) = *(a1 + 195);
  *(v3 + 192) = v14;
  do
  {
    *(v3 + 200 + v13) = *(a1 + 200 + v13);
    v13 += 4;
  }

  while (v13 != 12);
  *(v3 + 212) = *(a1 + 212);
}

uint64_t *md::ShieldIconLabelPart::updateWithStyle(uint64_t **this, md::LabelManager *a2)
{
  result = md::ImageLabelPart::updateWithStyle(this, a2);
  if ((*(a2 + 3028) & 1) != 0 || *(this[2] + 1290) - 2 >= 8)
  {
    v6 = *this[4];
    v7 = *(v6 + 264);
    if (!v7)
    {
      result = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(*this[4]);
      v7 = *result;
      *(v6 + 264) = *result;
    }

    if ((*(this[2] + 1362) & 1) != 0 || *(v7 + 56) == 1)
    {
      v8 = *(v7 + 58);
    }

    else
    {
      v8 = 0;
    }

    v5 = v8 & 1;
  }

  else
  {
    v5 = 0;
  }

  *(this + 593) = v5;
  return result;
}

uint64_t md::RouteLineSupport::resolveRouteLegWhen(md::RouteLineSupport *this, const PolylineCoordinate *a2)
{
  if (*(this + 31) == -1 || (v3 = *(this + 3)) == 0)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v5 = [v3 routeInfo];
    v6 = [v5 route];

    LODWORD(v5) = a2->index;
    if (v5 >= [v6 pointCount] || (v7 = objc_msgSend(v6, "legIndexForStepIndex:", objc_msgSend(v6, "stepIndexForPointIndex:", a2->index)), v7 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v10 = *(this + 31);
      v11 = v10 > v7;
      v12 = v10 >= v7;
      v8 = 1;
      if (v11)
      {
        v9 = 2;
      }

      else
      {
        v9 = v12;
      }
    }
  }

  return v9 | (v8 << 8);
}

BOOL md::ShieldIconLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *v4;
  v6 = *(*v4 + 296);
  if (!v6)
  {
    v7 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v4, 0);
    v6 = *v7;
    *(v5 + 296) = *v7;
  }

  if (*(v6 + 91) != *(a1 + 848))
  {
    return 1;
  }

  v8 = *v4;
  v9 = *(*v4 + 296);
  if (!v9)
  {
    v10 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v4, 0);
    v9 = *v10;
    *(v8 + 296) = *v10;
  }

  return *(a1 + 852) != *(v9 + 56) || *(a1 + 856) != *(v9 + 60);
}

void md::LineTextWithAuxLabelPart::updateWithStyle(md::LineTextWithAuxLabelPart *this, md::LabelManager *a2)
{
  v4 = **(this + 4);
  v5 = *(v4 + 264);
  if (!v5)
  {
    v6 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(**(this + 4));
    v5 = *v6;
    *(v4 + 264) = *v6;
  }

  *(this + 158) = *(v5 + 40);

  md::CompositeLabelPart::updateWithStyle(this, a2);
}

float md::MultipleShieldLabelPart::updateWithStyle(uint64_t **this, md::LabelManager *a2)
{
  md::CompositeLabelPart::updateWithStyle(this, a2);
  v4 = this[4];
  v5 = *v4;
  v6 = *(*v4 + 264);
  if (!v6)
  {
    v7 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(*v4);
    v6 = *v7;
    *(v5 + 264) = *v7;
    v5 = *v4;
  }

  *(this + 162) = *(a2 + 44) * *(v6 + 36);
  result = *(v5 + 172);
  *(this + 42) = result;
  return result;
}

uint64_t md::LineTextWithAuxLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  result = (*(*a1 + 352))(a1);
  if (result != 37)
  {
    return result;
  }

  v57 = xmmword_1B33B0730;
  v9 = **(a1 + 576);
  v10 = *(*(a1 + 32) + 16);
  v11 = *(a2 + 424);
  if ((*(**(a1 + 640) + 168))(*(a1 + 640), v10))
  {
    if ((*(**(a1 + 640) + 176))(*(a1 + 640), v10, 1.0))
    {
      v12 = *(a1 + 658);
      if (v12 != (*(**(a1 + 640) + 80))(*(a1 + 640)))
      {
        *(a1 + 658) = (*(**(a1 + 640) + 80))(*(a1 + 640));
        v13 = *(a1 + 714);
        if (*(a1 + 714))
        {
          v14 = v13 == 2;
          v15 = v13 != 2;
          if (v14)
          {
            v16 = 1;
          }

          else
          {
            v16 = 2;
          }

          *(a1 + 714) = v16;
          *(a1 + 657) = v15;
        }
      }
    }
  }

  Hiker = md::LabelPart::createHiker(&v62, v9, 0, v9[136], v11);
  v18 = v62;
  (*(*v62 + 88))(v62, Hiker);
  if ((v18[9] & 1) == 0)
  {
    (*(*v18 + 8))(v18);
    return 9;
  }

  v19 = (*(***(a1 + 576) + 344))(**(a1 + 576), 0);
  v20 = *(a1 + 632);
  v21 = (*(**(*(a1 + 576) + 8) + 344))(*(*(a1 + 576) + 8), 0);
  v55 = 0;
  v56[0] = 0;
  v22 = *(a1 + 640);
  v23 = (*(*v22 + 80))(v22);
  v26 = v22[45];
  if (v22[45])
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  if (v26 == 2)
  {
    v27 = 0;
  }

  if (v23)
  {
    LOBYTE(v26) = v27;
  }

  LineLayoutDirection = md::CurvedTextLabelPart::findLineLayoutDirection(v18, 1, v26, &v55, (v20 + v19) + v21, v24, v25);
  if (LineLayoutDirection)
  {
    if (*(v9 + 565) == 1)
    {
      v60 = *(v11 + 432);
      v61 = *(v11 + 440);
      v58 = *(v11 + 444);
      v59 = *(v11 + 452);
    }

    else
    {
      v60 = 1065353216;
      v61 = 0;
      v58 = 0x3F80000000000000;
      v59 = 0;
    }

    v29 = *(v9 + 1479);
    if (*(a1 + 714))
    {
      md::CurvedTextLabelPart::updateTextLayoutOptions(v29, &v60, &v58, &v55, *(a1 + 712), *(a1 + 714), (a1 + 713), (a1 + 715));
    }

    else
    {
      md::CurvedTextLabelPart::initTextLayoutOptions(v29, &v60, &v58, &v55, (a1 + 712), (a1 + 714));
      *(a1 + 657) = *(a1 + 714) == 2;
    }
  }

  (*(*v18 + 8))(v18);
  if ((LineLayoutDirection & 1) == 0)
  {
    return 9;
  }

  v30 = *(a1 + 657);
  md::LineTextWithAuxLabelPart::updateLayoutOffsets(a1, 0);
  (*(*v9 + 400))(v9, 0, v30);
  *(v9 + 1157) = *(a1 + 712);
  v31 = (*(*v9 + 80))(v9, a2, a3, a4);
  *(a1 + 656) = v31;
  *(a1 + 659) = v31 == 37;
  if (v31 == 37)
  {
    v32 = 0;
    v33 = v9[3];
    v34 = v33 + 72;
    v35 = v33 + 80;
    v36 = &v57;
    v37 = 1;
    do
    {
      v38 = v37;
      *v36 = fminf(*(v34 + 4 * v32), *v36);
      *(&v57 + v32 + 2) = fmaxf(*(&v57 + v32 + 2), *(v35 + 4 * v32));
      v36 = &v57 + 1;
      v32 = 1;
      v37 = 0;
    }

    while ((v38 & 1) != 0);
    v39 = 1;
    (*(**(*(a1 + 576) + 8) + 408))(*(*(a1 + 576) + 8), 0, 1);
    (*(**(*(a1 + 576) + 8) + 400))();
  }

  else
  {
    (*(**(*(a1 + 576) + 8) + 408))(*(*(a1 + 576) + 8), 0, 0);
    v39 = 0;
  }

  (*(**(*(a1 + 576) + 8) + 368))(*(*(a1 + 576) + 8), 0, v39);
  result = (*(**(*(a1 + 576) + 8) + 80))(*(*(a1 + 576) + 8), a2, a3, a4);
  if (result == 37)
  {
    v40 = *(*(a1 + 576) + 8);
    v41 = v40[3];
    LODWORD(v60) = (*(*v40 + 280))(v40, 0);
    HIDWORD(v60) = v42;
    v43 = gm::Box<float,2>::operator+((v41 + 72), &v60);
    v44 = 0;
    v55 = __PAIR64__(v45, LODWORD(v43));
    v46 = &v55;
    v56[0] = v47;
    v56[1] = v48;
    v49 = &v57;
    v50 = 1;
    do
    {
      v51 = v50;
      v52 = *v46;
      v53 = *v49;
      *(&v57 + v44 + 2) = fmaxf(*(&v57 + v44 + 2), *&v56[v44]);
      *v49 = fminf(v52, v53);
      v46 = &v55 + 1;
      v49 = &v57 + 1;
      v44 = 1;
      v50 = 0;
    }

    while ((v51 & 1) != 0);
    md::CollisionObject::resetWithRects((a1 + 72), 1u);
    md::CollisionObject::addRect(a1 + 72, &v57);
    v54 = vadd_f32(*a4, *a3);
    *(a1 + 280) = v54;
    *(a1 + 104) = v54;
    md::CollisionObject::setupShapeData(a1 + 72);
    return 37;
  }

  return result;
}

uint64_t geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](uint64_t *a1, id *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  j = *a1;
  for (i = a1[1]; j != i; i = a1[1])
  {
    if (md::RouteRangeAnnotationRequest::operator==(a2, j))
    {
      if (j != a1[1])
      {
        return j + 48;
      }

      break;
    }

    j += 56;
  }

  v32 = *a2;
  v33 = a2[1];
  std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v34, (a2 + 2));
  v35 = 0;
  for (j = *a1; ; j += 56)
  {
    v6 = a1[1];
    if (j == v6)
    {
      break;
    }

    if (md::RouteRangeAnnotationRequest::operator==(&v32, j))
    {
      v6 = a1[1];
      if (j != v6)
      {
        goto LABEL_31;
      }

      break;
    }
  }

  v7 = a1[2];
  if (v6 >= v7)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 3);
    if ((v9 + 1) > 0x492492492492492)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x249249249249249)
    {
      v12 = 0x492492492492492;
    }

    else
    {
      v12 = v11;
    }

    v31 = a1;
    if (v12)
    {
      if (v12 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v28 = 0;
    v29 = 56 * v9;
    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::construct[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>,std::pair<md::RouteRangeAnnotationRequest,md::WhenState> const&,void,0>(56 * v9, &v32);
    v30 = (56 * v9 + 56);
    v13 = *a1;
    v14 = a1[1];
    v15 = v29 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = 0;
      do
      {
        v17 = (v13 + v16);
        v18 = v15 + v16;
        v19 = *(v13 + v16);
        *v17 = 0;
        v17[1] = 0;
        *v18 = v19;
        *(v18 + 16) = *(v13 + v16 + 16);
        v20 = (v13 + v16 + 24);
        v21 = *v20;
        *(v15 + v16 + 24) = *v20;
        v22 = v15 + v16 + 24;
        *(v18 + 32) = *(v13 + v16 + 32);
        v23 = *(v13 + v16 + 40);
        *(v18 + 40) = v23;
        if (v23)
        {
          *(v21 + 16) = v22;
          v17[2] = v20;
          *v20 = 0;
          v17[5] = 0;
        }

        else
        {
          *(v18 + 16) = v22;
        }

        *(v15 + v16 + 48) = *(v13 + v16 + 48);
        v16 += 56;
      }

      while (v13 + v16 != v14);
      do
      {
        std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v13);
        v13 += 56;
      }

      while (v13 != v14);
    }

    v24 = *a1;
    *a1 = v15;
    v25 = a1[2];
    v27 = v30;
    *(a1 + 1) = v30;
    *&v30 = v24;
    *(&v30 + 1) = v25;
    v28 = v24;
    v29 = v24;
    std::__split_buffer<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>::~__split_buffer(&v28);
    v8 = v27;
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::construct[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>,std::pair<md::RouteRangeAnnotationRequest,md::WhenState> const&,void,0>(v6, &v32);
    v8 = v6 + 56;
    a1[1] = v6 + 56;
  }

  a1[1] = v8;
  j = v8 - 56;
LABEL_31:
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v34[1]);

  return j + 48;
}

void sub_1B2B7D790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20)
{
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a20);

  _Unwind_Resume(a1);
}

uint64_t md::CompositeLabelPart::checkResourcesReady(md::CompositeLabelPart *this, md::LabelManager *a2)
{
  v2 = *(this + 72);
  v3 = *(this + 73);
  if (v2 == v3)
  {
    return 37;
  }

  while (1)
  {
    result = (*(**v2 + 352))(*v2, a2);
    if (result != 37)
    {
      break;
    }

    if (++v2 == v3)
    {
      return 37;
    }
  }

  return result;
}

uint64_t *std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::construct[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>,std::pair<md::RouteRangeAnnotationRequest,md::WhenState> const&,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100]((a1 + 16), a2 + 16);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

void md::LabelNavEtaLabeler::setupRouteLabelingState(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, unsigned int a6, char a7)
{
  v152 = *MEMORY[0x1E69E9840];
  v118 = a4;
  v9 = [(VKRouteInfo *)v118 route];
  v10 = v9;
  v11 = *(a1 + 464);
  if (v11)
  {
    while (1)
    {
      while (1)
      {
        v12 = v11;
        v13 = v11[4];
        if (v9 >= v13)
        {
          break;
        }

        v11 = *v12;
        v14 = v12;
        if (!*v12)
        {
          goto LABEL_9;
        }
      }

      if (v13 >= v9)
      {
        break;
      }

      v11 = v12[1];
      if (!v11)
      {
        v14 = v12 + 1;
        goto LABEL_9;
      }
    }

    v131 = v12;
  }

  else
  {
    v14 = (a1 + 464);
    v12 = (a1 + 464);
LABEL_9:
    v15 = mdm::zone_mallocator::instance(v9);
    v16 = pthread_rwlock_rdlock((v15 + 32));
    if (v16)
    {
      geo::read_write_lock::logFailure(v16, "read lock", v17);
    }

    v18 = malloc_type_zone_malloc(*v15, 0x40uLL, 0x10E00408968D84CuLL);
    atomic_fetch_add((v15 + 24), 1u);
    geo::read_write_lock::unlock((v15 + 32));
    v18[4] = v10;
    v18[5] = 0;
    v18[6] = 0;
    v18[7] = 0;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v12;
    *v14 = v18;
    v19 = **(a1 + 456);
    v131 = v18;
    if (v19)
    {
      *(a1 + 456) = v19;
      v18 = *v14;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 464), v18);
    v10 = 0;
    ++*(a1 + 480);
  }

  v141 = [(VKRouteInfo *)v118 route];
  *&v148 = &v141;
  v115 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((a1 + 488), v141, &v148);

  v20 = v118;
  v21 = [(VKRouteInfo *)v118 route];
  hasPolylineForRoute = md::LabelNavEtaLabeler::hasPolylineForRoute(a1, v118);
  v22 = v115[5];
  v129 = a2;
  v130 = v21;
  v136 = a1;
  v23 = v131;
  if (v115[6] != v22)
  {
    v24 = 0;
    v112 = (a1 + 424);
    v126 = 2;
    v125 = 0;
    do
    {
      v114 = v24;
      v25 = v22 + 48 * v24;
      i = geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::operator[](v23 + 5, v25);
      *(i + 148) = a5;
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((i + 48));
      *(i + 152) = md::RouteRangeAnnotationRequest::etaType(*(v25 + 8));
      v27 = v20;
      v28 = v112;
      v29 = *v112;
      v30 = 0.0;
      if (*v112)
      {
        do
        {
          v31 = *(v29 + 4);
          _CF = v31 >= v27;
          v33 = v31 < v27;
          if (_CF)
          {
            v28 = v29;
          }

          v29 = *&v29[2 * v33];
        }

        while (v29);
        if (v28 != v112 && *(v28 + 4) <= v27)
        {
          v30 = v28[11];
        }
      }

      v34 = *(*(a2 + 8) + 176);
      if (v30 == 0.0)
      {
        v35 = 8.0;
      }

      else
      {
        v35 = v30 + v30;
      }

      *(i + 84) = v35 * v34;
      v20 = v118;
      v23 = v131;
      if (hasPolylineForRoute)
      {
        *(i + 80) = -1;
        v36 = *(v25 + 16);
        v117 = (v25 + 24);
        if (v36 != (v25 + 24))
        {
          v134 = i;
          do
          {
            v37 = v36[5];
            v119 = v36;
            v120 = v36[6];
            if (v37 != v120)
            {
              do
              {
                (*(**(a1 + 40) + 24))(&v140);
                v121 = v37;
                v132 = *&v140.f64[1];
                v38 = *&v140.f64[0];
                if (*&v140.f64[0] != *&v140.f64[1])
                {
                  v39 = *(i + 80);
                  if (v39 >= *(v36 + 8))
                  {
                    v39 = *(v36 + 8);
                  }

                  *(i + 80) = v39;
                  do
                  {
                    __p[0] = 0;
                    __p[1] = 0;
                    v139 = 0;
                    v40 = v21;
                    v41 = *&v38[1].index;
                    offset = v38->offset;
                    if (v38->index == LODWORD(v41) && vabds_f32(offset, v38[1].offset) < 0.00000011921)
                    {
                      v43 = 0;
                    }

                    else
                    {
                      if (offset == 0.0)
                      {
                        v43 = 0;
                      }

                      else
                      {
                        v143 = *v38;
                        *&v148 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(a1 + 48), v40, &v143);
                        *(&v148 + 1) = v44;
                        v149 = v45;
                        md::LabelLayoutContext::projectPointToPixel(*(a2 + 24), &v148, v142);
                        v43 = std::vector<md::PolylineCollider::VertexType>::__emplace_back_slow_path<md::PolylineCollider::VertexType const&>(__p, v142);
                        __p[1] = v43;
                        offset = v38->offset;
                        v41 = *&v38[1].index;
                      }

                      if (offset <= 0.0)
                      {
                        index = v38->index;
                      }

                      else
                      {
                        index = v38->index + 1;
                      }

                      if (index == LODWORD(v41))
                      {
                        *&v143.index = v41;
                        v143.offset = 0.0;
                        a1 = v136;
                        i = v134;
                        *&v148 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(v136 + 48), v40, &v143);
                        *(&v148 + 1) = v47;
                        v149 = v48;
                        md::LabelLayoutContext::projectPointToPixel(*(a2 + 24), &v148, v142);
                        if (v43 >= v139)
                        {
                          v43 = std::vector<md::PolylineCollider::VertexType>::__emplace_back_slow_path<md::PolylineCollider::VertexType const&>(__p, v142);
                        }

                        else
                        {
                          *v43++ = v142[0];
                        }

                        __p[1] = v43;
                      }

                      else if (index < LODWORD(v41) && (v49 = *(a2 + 24), v148 = *(v49 + 136), v149 = *(v49 + 152), v150 = *(v49 + 160), v151 = *(v49 + 176), v50 = *(v136 + 40), v143.index = index, v143.offset = v41, (*(*v50 + 32))(v50, a3, v40, &v148, &v143, v142)))
                      {
                        a1 = v136;
                        md::RouteSimplifier::simplifiedRibbonIndices(*(v136 + 48), v40, index, SLODWORD(v41), (v136 + 80), *v142 * 4.0 * *(v49 + 312) / *(v49 + 1064));
                        v52 = *(v136 + 80);
                        v51 = *(v136 + 88);
                        for (i = v134; v52 != v51; ++v52)
                        {
                          v147 = *v52;
                          v143 = COERCE_POLYLINECOORDINATE(md::RouteSimplifier::worldPointForPolylineCoordinate(*(v136 + 48), v40, &v147));
                          v144 = v53;
                          v145 = v54;
                          md::LabelLayoutContext::projectPointToPixel(*(a2 + 24), &v143, &v146);
                          if (v43 >= v139)
                          {
                            v43 = std::vector<md::PolylineCollider::VertexType>::__emplace_back_slow_path<md::PolylineCollider::VertexType const&>(__p, &v146);
                          }

                          else
                          {
                            *v43++ = v146;
                          }

                          __p[1] = v43;
                        }
                      }

                      else
                      {
                        i = v134;
                        a1 = v136;
                      }

                      if (v38[1].offset != 0.0)
                      {
                        v143 = v38[1];
                        *&v148 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(a1 + 48), v40, &v143);
                        *(&v148 + 1) = v55;
                        v149 = v56;
                        md::LabelLayoutContext::projectPointToPixel(*(a2 + 24), &v148, v142);
                        if (v43 >= v139)
                        {
                          v43 = std::vector<md::PolylineCollider::VertexType>::__emplace_back_slow_path<md::PolylineCollider::VertexType const&>(__p, v142);
                        }

                        else
                        {
                          *v43++ = v142[0];
                        }

                        __p[1] = v43;
                      }
                    }

                    if ((v43 - __p[0]) >= 9)
                    {
                      operator new();
                    }

                    v23 = v131;
                    if (__p[0])
                    {
                      operator delete(__p[0]);
                    }

                    v38 += 2;
                  }

                  while (v38 != v132);
                  v38 = *&v140.f64[0];
                  v20 = v118;
                  v36 = v119;
                }

                if (v38)
                {
                  *&v140.f64[1] = v38;
                  operator delete(v38);
                }

                v37 = v121 + 16;
              }

              while (v121 + 16 != v120);
            }

            v57 = v36[1];
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
                v58 = v36[2];
                _ZF = *v58 == v36;
                v36 = v58;
              }

              while (!_ZF);
            }

            v36 = v58;
          }

          while (v58 != v117);
        }
      }

      v24 = v114 + 1;
      v22 = v115[5];
    }

    while (v114 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v115[6] - v22) >> 4));
  }

  v137 = md::LabelNavEtaLabeler::featuresForRoute(a1, v20);
  v60 = v115[5];
  if (v115[6] != v60)
  {
    v61 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v122 = _Q0;
    while (1)
    {
      v65 = (v60 + 48 * v61);
      v66 = geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::operator[](v23 + 5, v65);
      v135 = v61;
      v67 = v137;
      if (v137)
      {
        for (j = *v137; ; j += 72)
        {
          if (j == v67[1])
          {
            goto LABEL_92;
          }

          if (md::RouteRangeAnnotationRequest::operator==(v65, j))
          {
            break;
          }

          v67 = v137;
        }

        if (j == v137[1])
        {
LABEL_92:
          *&v148 = &unk_1F29F1180;
          *(&v148 + 1) = 0;
          v71 = geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::operator[](v137, v65);
          geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v71, &v148);
          *&v148 = &unk_1F29F1180;

          goto LABEL_93;
        }

        v69 = *(j + 56);
        v70 = v69;
        if (!v69)
        {
          goto LABEL_94;
        }

        if ([v69 didStyleChange])
        {
          *(v66 + 40) = 0;
          [v70 setDidStyleChange:0];
        }

        v133 = 0;
      }

      else
      {
LABEL_93:
        v70 = 0;
LABEL_94:
        v133 = 1;
      }

      v72 = [v65[1] etaDescription];
      v73 = [v72 routeEtaType];
      if (v73 > 2)
      {
        break;
      }

      if (!v73)
      {
        goto LABEL_103;
      }

      if (v73 == 1)
      {
        LOWORD(v148) = 1798;
        std::vector<md::RoadSignOrientation>::vector[abi:nn200100](&v143, &v148, 2);
        goto LABEL_107;
      }

      if (v73 != 2)
      {
LABEL_104:
        LOBYTE(v148) = 6;
        std::vector<md::RoadSignOrientation>::vector[abi:nn200100](&v143, &v148, 1);
        goto LABEL_107;
      }

      LOWORD(v148) = 2057;
      std::vector<md::RoadSignOrientation>::vector[abi:nn200100](&v143, &v148, 2);
LABEL_107:
      if ((*(v66 + 40) & 1) == 0)
      {
        v124 = v70;
        v127 = [(VKRouteInfo *)v118 hasFocus];
        v74 = [VKLabelNavRouteEta toStyleEtaComparison:a6];
        v75 = [(VKRouteInfo *)v118 route];
        v76 = [v75 transportType];
        if (v76 >= 7)
        {
          v77 = 4;
        }

        else
        {
          v77 = 0x50403020100uLL >> (8 * v76);
        }

        v78 = +[VKLabelNavRouteEta toStyleNavLabelType:](VKLabelNavRouteEta, "toStyleNavLabelType:", [v72 routeEtaType]);
        v79 = *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[]((v136 + 552), v65);
        v80 = *(geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[]((v136 + 552), v65) + 2);
        v81 = [v72 styleAttributes];
        v126 = v126 & 0xFFFFFFFFFFFF0000 | v80;
        v125 = v125 & 0xFFFFFFFFFFFF0000 | v79;
        a2 = v129;
        [VKLabelNavRouteEta styleForNavContext:v129 selected:a5 focused:v127 etaComparison:v74 transportType:v77 navLabelType:v78 when:v125 routeLegWhen:v126 additionalAttributes:v81];

        v21 = v130;
        v82 = [(VKRouteInfo *)v118 route];
        [v82 pointAt:{objc_msgSend(v65[1], "start")}];
        v128 = v83;
        v85 = v84;

        v86 = tan(v85 * 0.00872664626 + 0.785398163);
        v87 = log(v86);
        v88.f64[0] = v128;
        v88.f64[1] = v87;
        v140 = vmlaq_f64(v122, xmmword_1B33B0700, v88);
        v89 = v143;
        v90 = v144;
        while (v89 != v90)
        {
          v146.i8[0] = *v89;
          v91 = [VKLabelNavRouteEta artworkForEtaDescription:"artworkForEtaDescription:navContext:roadSignStyleGroup:mercatorPoint:orientation:isSelected:artworkCache:" navContext:v72 roadSignStyleGroup:v129 mercatorPoint:&v148 orientation:&v140 isSelected:*(v136 + 144) artworkCache:?];
          v92 = v91;
          if (!v91)
          {
            break;
          }

          [v91 offsetPixelForPixel:{0.0, 0.0}];
          v147.index = v93;
          v147.offset = v94;
          [v92 localSignBounds];
          __p[0] = __PAIR64__(v96, v95);
          __p[1] = __PAIR64__(v98, v97);
          v99 = gm::Box<float,2>::operator+(__p, &v147);
          v101 = v100;
          v103 = v102;
          v105 = v104;
          v142[0] = &v146;
          v106 = std::__hash_table<std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::__unordered_map_hasher<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::hash<md::RoadSignOrientation>,std::equal_to<md::RoadSignOrientation>,true>,std::__unordered_map_equal<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::equal_to<md::RoadSignOrientation>,std::hash<md::RoadSignOrientation>,true>,std::allocator<std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>>>::__emplace_unique_key_args<md::RoadSignOrientation,std::piecewise_construct_t const&,std::tuple<md::RoadSignOrientation const&>,std::tuple<>>(v66, v146.u8[0]);
          *(v106 + 5) = v99;
          *(v106 + 6) = v101;
          *(v106 + 7) = v103;
          *(v106 + 8) = v105;
          *(v66 + 40) = 1;

          ++v89;
        }

        if (v151)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v151);
        }

        v70 = v124;
        if (v150)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v150);
        }

        if (*(&v148 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v148 + 1));
        }
      }

      *(v66 + 88) = 0;
      if ((v133 & 1) == 0 && (hasPolylineForRoute & [v70 hasLabelWithAnchor]) == 1 && (a7 & 1) == 0)
      {
        [v70 worldPointForStaging];
        *&v148 = v107;
        *(&v148 + 1) = v108;
        v149 = v109;
        md::LabelNavEtaLabeler::updateEtaBoundsInRouteState(*(a2 + 24), v66, &v148, [v70 orientation]);
      }

      if (v143)
      {
        v144 = v143;
        operator delete(*&v143);
      }

      v61 = v135 + 1;
      v60 = v115[5];
      v23 = v131;
      if (v135 + 1 >= 0xAAAAAAAAAAAAAAABLL * ((v115[6] - v60) >> 4))
      {
        goto LABEL_128;
      }
    }

    if (v73 != 6)
    {
      if (v73 == 4)
      {
        LOWORD(v148) = 1284;
        std::vector<md::RoadSignOrientation>::vector[abi:nn200100](&v143, &v148, 2);
        goto LABEL_107;
      }

      if (v73 != 3)
      {
        goto LABEL_104;
      }
    }

LABEL_103:
    LODWORD(v148) = 185337865;
    std::vector<md::RoadSignOrientation>::vector[abi:nn200100](&v143, &v148, 4);
    goto LABEL_107;
  }

LABEL_128:
}

void sub_1B2B7EB74(_Unwind_Exception *a1)
{
  *(v1 + 328) = v3;
  v5 = *(v1 + 384);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  MEMORY[0x1B8C62190](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::operator[](uint64_t *a1, id *a2)
{
  v93 = *MEMORY[0x1E69E9840];
  j = *a1;
  for (i = a1[1]; j != i; i = a1[1])
  {
    if (md::RouteRangeAnnotationRequest::operator==(a2, j))
    {
      if (j != a1[1])
      {
        return j + 48;
      }

      break;
    }

    j += 384;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  *&v56[4] = 0u;
  v52 = 0u;
  v53 = 0u;
  v49 = 0u;
  memset(v48, 0, sizeof(v48));
  LODWORD(v49) = 1065353216;
  v51 = 0uLL;
  v50 = 0uLL;
  v54 = 2139095039;
  v55 = 0;
  *v56 = 0uLL;
  v56[16] = 1;
  v68 = 0uLL;
  v67 = 0uLL;
  v69 = *a2;
  v70 = a2[1];
  std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v71, (a2 + 2));
  v48[0] = 0uLL;
  memset(v72, 0, sizeof(v72));
  v73 = 1065353216;
  v74 = 0;
  memset(v75, 0, sizeof(v75));
  v76 = 0;
  *&v51 = 0;
  v50 = 0uLL;
  v79 = 0x7F7FFFFFu;
  v80 = *&v56[4];
  v77 = 0u;
  v78 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(v91, 0, sizeof(v91));
  v92 = 0;
  *&v68 = 0;
  v67 = 0uLL;
  for (j = *a1; ; j += 384)
  {
    v6 = a1[1];
    if (j == v6)
    {
      break;
    }

    if (md::RouteRangeAnnotationRequest::operator==(&v69, j))
    {
      v6 = a1[1];
      if (j != v6)
      {
        goto LABEL_37;
      }

      break;
    }
  }

  v7 = a1[2];
  if (v6 >= v7)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 7);
    if (v9 + 1 > 0xAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 7);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x55555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    v47 = a1;
    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v44 = 0;
    v45 = 384 * v9;
    std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>::pair[abi:nn200100](384 * v9, &v69);
    v46 = 384 * v9 + 384;
    v13 = *a1;
    v14 = a1[1];
    v15 = v45 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = 0;
      do
      {
        v17 = v15 + v16;
        v18 = (v13 + v16);
        v19 = *(v13 + v16);
        *v18 = 0;
        v18[1] = 0;
        *v17 = v19;
        *(v17 + 16) = *(v13 + v16 + 16);
        v20 = (v13 + v16 + 24);
        v21 = *v20;
        *(v15 + v16 + 24) = *v20;
        v22 = v15 + v16 + 24;
        *(v17 + 32) = *(v13 + v16 + 32);
        v23 = *(v13 + v16 + 40);
        *(v17 + 40) = v23;
        if (v23)
        {
          *(v21 + 16) = v22;
          v18[2] = v20;
          *v20 = 0;
          v18[5] = 0;
        }

        else
        {
          *(v17 + 16) = v22;
        }

        v24 = v15 + v16;
        v25 = v13 + v16;
        v26 = *(v13 + v16 + 48);
        *(v13 + v16 + 48) = 0;
        *(v24 + 48) = v26;
        v27 = *(v13 + v16 + 64);
        *(v24 + 56) = *(v13 + v16 + 56);
        *(v13 + v16 + 56) = 0;
        *(v15 + v16 + 64) = v27;
        v28 = *(v13 + v16 + 72);
        *(v24 + 72) = v28;
        *(v24 + 80) = *(v13 + v16 + 80);
        if (v28)
        {
          v29 = *(v27 + 8);
          v30 = *(v24 + 56);
          if ((v30 & (v30 - 1)) != 0)
          {
            if (v29 >= v30)
            {
              v29 %= v30;
            }
          }

          else
          {
            v29 &= v30 - 1;
          }

          *(v26 + 8 * v29) = v15 + v16 + 64;
          *(v13 + v16 + 64) = 0;
          *(v13 + v16 + 72) = 0;
        }

        *(v24 + 88) = *(v25 + 88);
        *(v24 + 104) = 0;
        *(v24 + 112) = 0;
        *(v24 + 96) = 0;
        *(v24 + 120) = *(v25 + 120);
        *(v24 + 96) = *(v25 + 96);
        *(v24 + 112) = *(v25 + 112);
        *(v25 + 104) = 0;
        *(v25 + 112) = 0;
        *(v25 + 96) = 0;
        v31 = *(v25 + 192);
        v33 = *(v25 + 144);
        v32 = *(v25 + 160);
        *(v24 + 176) = *(v25 + 176);
        *(v24 + 192) = v31;
        *(v24 + 144) = v33;
        *(v24 + 160) = v32;
        *(v24 + 128) = *(v25 + 128);
        v34 = *(v25 + 224);
        v35 = *(v25 + 240);
        v36 = *(v25 + 272);
        *(v24 + 256) = *(v25 + 256);
        *(v24 + 272) = v36;
        *(v24 + 224) = v34;
        *(v24 + 240) = v35;
        v37 = *(v25 + 288);
        v38 = *(v25 + 304);
        v39 = *(v25 + 336);
        *(v24 + 320) = *(v25 + 320);
        *(v24 + 336) = v39;
        *(v24 + 288) = v37;
        *(v24 + 304) = v38;
        *(v24 + 208) = *(v25 + 208);
        *(v24 + 360) = 0;
        *(v24 + 368) = 0;
        *(v24 + 352) = 0;
        *(v24 + 376) = *(v25 + 376);
        *(v24 + 352) = *(v25 + 352);
        *(v24 + 368) = *(v25 + 368);
        *(v25 + 352) = 0;
        *(v25 + 360) = 0;
        *(v25 + 368) = 0;
        v16 += 384;
      }

      while (v13 + v16 != v14);
      do
      {
        std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>,void,0>(v13);
        v13 += 384;
      }

      while (v13 != v14);
    }

    v40 = *a1;
    *a1 = v15;
    v41 = a1[2];
    v43 = v46;
    *(a1 + 1) = v46;
    *&v46 = v40;
    *(&v46 + 1) = v41;
    v44 = v40;
    v45 = v40;
    std::__split_buffer<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>::~__split_buffer(&v44);
    v8 = v43;
  }

  else
  {
    std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>::pair[abi:nn200100](v6, &v69);
    v8 = v6 + 384;
    a1[1] = v6 + 384;
  }

  a1[1] = v8;
  j = v8 - 384;
LABEL_37:
  v44 = v91;
  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v44);
  v44 = v75;
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v44);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v72);
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v71[1]);

  v44 = &v67;
  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v44);
  v44 = &v50;
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v44);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v48);
  return j + 48;
}

void sub_1B2B7F0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60, id a61, uint64_t a62, void *a63)
{
  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v63 + 48);
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a63);

  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a17);
  _Unwind_Resume(a1);
}

double md::LabelPart::createHiker(double *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 565) == 1)
  {
    v9 = 0;
    v10 = *(a5 + 328);
    v11 = 1040;
    if (!a3)
    {
      v11 = 640;
    }

    v12 = *(a2 + 16) + v11;
    v50 = *v12;
    v13 = *(v12 + 16);
    v45 = 0;
    v47 = 0u;
    v44 = 0u;
    v51 = v13;
    v48 = 0;
    v14 = 1.0 / v10;
    v43 = v14;
    v46 = v14;
    v49 = v14;
    do
    {
      *(&v52 + v9) = -*(&v50 + v9);
      v9 += 8;
    }

    while (v9 != 24);
    v15 = 0;
    v41 = v52;
    v42 = v53;
    do
    {
      *(&v52 + v15) = *(&v41 + v15) * v14;
      v15 += 8;
    }

    while (v15 != 24);
    v16 = 0;
    v17 = v52;
    v18 = v53;
    v19 = &v54;
    v20 = &v43;
    do
    {
      v21 = 0;
      v22 = v19;
      do
      {
        *v22 = v20[v21];
        v22 += 2;
        v21 += 3;
      }

      while (v21 != 9);
      ++v16;
      v19 = (v19 + 8);
      ++v20;
    }

    while (v16 != 3);
    *(&v55 + 1) = 0;
    *(&v57 + 1) = 0;
    *(&v59 + 1) = 0;
    v60 = v17;
    *&v61 = v18;
    *(&v61 + 1) = 0x3FF0000000000000;
    (*(*a4 + 40))(&v43, a4, (*(a5 + 8) & 1) == 0, &v54, 0);
    v23 = v43;
  }

  else
  {
    (*(*a4 + 40))(&v54, a4, (*(a5 + 8) & 1) == 0, a5 + 864, 1);
    v23 = *&v54;
  }

  *a1 = v23;
  v24 = *(a2 + 16);
  v25 = *(v24 + 232);
  result = v25;
  *(*&v23 + 56) = result;
  LODWORD(result) = *(a5 + 52);
  *(*&v23 + 52) = LODWORD(result);
  v27 = 1072;
  if (!a3)
  {
    v27 = 696;
  }

  v28 = *(v24 + v27);
  if (v28)
  {
    if ((*(v28 + 208) & 1) == 0)
    {
      md::GeocentricFrame::_updateMatrix(v28);
    }

    v29 = 0;
    *(*&v23 + 64) = 1;
    v30 = (*&v23 + 72);
    do
    {
      v31 = 0;
      v32 = v28 + 80;
      do
      {
        v33 = 0;
        v34 = 0.0;
        v35 = v30;
        do
        {
          v36 = *v35;
          v35 += 4;
          v34 = v34 + *(v32 + v33) * v36;
          v33 += 8;
        }

        while (v33 != 32);
        *(&v54 + 4 * v31++ + v29) = v34;
        v32 += 32;
      }

      while (v31 != 4);
      ++v29;
      ++v30;
    }

    while (v29 != 4);
    v37 = v55;
    *(*&v23 + 200) = v54;
    *(*&v23 + 216) = v37;
    v38 = v57;
    *(*&v23 + 232) = v56;
    *(*&v23 + 248) = v38;
    v39 = v59;
    *(*&v23 + 264) = v58;
    *(*&v23 + 280) = v39;
    result = *&v60;
    v40 = v61;
    *(*&v23 + 296) = v60;
    *(*&v23 + 312) = v40;
  }

  return result;
}

uint64_t md::RouteRangeAnnotationRequest::operator==(id *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == v5)
  {
    v6 = [a1[1] isEqual:*(a2 + 8)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void std::__shared_ptr_emplace<md::PolylineCollider>::__on_zero_shared(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

__n128 md::LabelLineResolvedPosition::LabelLineResolvedPosition(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 0;
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 99) = *(a2 + 99);
  *(a1 + 96) = v4;
  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v5;
  result = *(a2 + 128);
  *(a1 + 128) = result;
  v7 = *(a2 + 144);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 144) = v7;
  v8 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v8;
  *(a1 + 164) = *(a2 + 164);
  return result;
}

void md::MercatorRouteCollider::intersectRouteWithFrustum(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = a3;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  v11 = v9;
  if ([v9 pointCount])
  {
    v10 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v8, v11);
    if (v10)
    {
      md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustum(v10, a2, a4, a5);
    }
  }
}

void sub_1B2B7F62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

float md::RoadPosition::RoadPosition(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F29EAEC0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  return result;
}

void md::PolylinePixelHiker::validateIfNeeded(md::PolylinePixelHiker *this)
{
  if (*(this + 8) == 1)
  {
    md::PolylinePixelHiker::validate(this);
  }
}

uint64_t md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(uint64_t **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(*v4 + 8);

      if (v7 == v3)
      {
        v6 = *v4;
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  return v6;
}

void md::PolylinePixelHiker::validate(md::PolylinePixelHiker *this)
{
  *(this + 4) = 256;
  *(this + 10) = 0;
  v2 = *(this + 68);
  if (!v2)
  {
    goto LABEL_49;
  }

  if (*(this + 146) != *(v2 + 16))
  {
    goto LABEL_49;
  }

  v3 = *(this + 71);
  if (!v3 || (*(this + 289) & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v4 = (*(**v3 + 24))();
  v5 = 74;
  v6 = v4;
  do
  {
    v7 = *v6++;
    *(this + v5++) = v7;
  }

  while (v5 != 77);
  *(this + 77) = *(v4 + 24);
  *(this + 78) = *(v4 + 32);
  v8 = *(v4 + 40);
  *(this + 635) = *(v4 + 43);
  *(this + 158) = v8;
  v9 = md::LabelLinePosition::pointExists((this + 544));
  *(this + 9) = v9;
  if (!v9)
  {
    return;
  }

  v10 = md::RoadHiker::pixelForPoint(this, (this + 592), this + 86, this + 178);
  *(this + 9) = v10;
  if (!v10)
  {
    return;
  }

  v11 = md::LabelLinePosition::pointAtOffset((this + 544), 1);
  if (!v11)
  {
LABEL_49:
    *(this + 9) = 0;
    return;
  }

  v12 = v11;
  for (i = 0; i != 24; i += 8)
  {
    *(this + i + 640) = *(v11 + i);
  }

  *(this + 83) = *(v11 + 24);
  *(this + 84) = *(v11 + 32);
  v14 = *(v11 + 40);
  *(this + 683) = *(v11 + 43);
  *(this + 170) = v14;
  v15 = md::RoadHiker::pixelForPoint(this, (this + 640), (this + 700), this + 179);
  *(this + 9) = v15;
  if (v15)
  {
    v16 = 0;
    v17 = *(this + 178);
    v18 = *(this + 179);
    do
    {
      *(v63 + v16 + 32) = *(this + v16 + 700) - *(this + v16 + 688);
      v16 += 4;
    }

    while (v16 != 12);
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(v63 + v19 + 32) * *(v63 + v19 + 32));
      v19 += 4;
    }

    while (v19 != 12);
    v21 = v17 - v18;
    v22 = sqrtf(v20);
    v23 = 1.0 / sqrtf(v20 + (v21 * v21));
    *(this + 10) = v23 * v21;
    *(this + 11) = v23 * v22;
    md::LabelPoint::lerped(&v62, (this + 592), *(this + 145), this + 640);
    if (md::RoadHiker::pixelForPoint(this, &v62, this + 2, this + 12))
    {
      if (*(this + 190) != 0.0)
      {
        v24 = md::LabelLinePosition::pointAtOffset((this + 544), -1);
        if (v24)
        {
          md::RoadHiker::pixelForPoint(this, v24, v63, 0);
        }

        *(this + 180) = md::PolylinePixelHiker::computeBisector(this, v63, v24 != 0, this + 86, (this + 700), 1, (this + 592));
        *(this + 181) = v25;
        *(this + 182) = v26;
        v27 = md::LabelLinePosition::pointAtOffset((this + 544), 2);
        if (v27)
        {
          md::RoadHiker::pixelForPoint(this, v12, &v60, 0);
        }

        *(this + 183) = md::PolylinePixelHiker::computeBisector(this, this + 86, 1, (this + 700), &v60, v27 != 0, (this + 640));
        *(this + 184) = v28;
        *(this + 185) = v29;
      }

      v30 = 700;
      v31 = (this + 688);
      do
      {
        v32 = v31[3];
        v33 = *v31++;
        *&v63[v30 - 700] = v32 - v33;
        v30 += 4;
      }

      while (v30 != 712);
      v34 = 0;
      v36 = *&v63[4];
      v35 = *v63;
      v60 = *v63;
      v61 = *&v63[4];
      v37 = 0.0;
      do
      {
        v37 = v37 + (*(&v60 + v34) * *(&v60 + v34));
        v34 += 4;
      }

      while (v34 != 12);
      v38 = sqrtf(v37);
      *(this + 9) = v38 > 0.001;
      if (v38 > 0.001)
      {
        v39 = 0;
        v40 = 1.0 / v38;
        do
        {
          *&v63[v39] = *(&v60 + v39) * v40;
          v39 += 4;
        }

        while (v39 != 12);
        v41 = *&v63[8];
        *(this + 28) = *v63;
        *(this + 9) = v41;
        v42 = fabsf(v35);
        v43 = fabsf(v36);
        v44 = 692;
        if (v42 > v43)
        {
          v44 = 688;
        }

        v45 = 20;
        if (v42 <= v43)
        {
          v35 = v36;
        }

        else
        {
          v45 = 16;
        }

        v46 = (*(this + v45) - *(this + v44)) / v35;
        *(this + 191) = v46;
        v47 = *(this + 190);
        if (v47 != 0.0)
        {
          for (j = 0; j != 12; j += 4)
          {
            *&v63[j] = *(this + j + 720) * v47;
          }

          v49 = 0;
          v58 = *v63;
          v59 = *&v63[8];
          do
          {
            *&v63[v49] = *(&v58 + v49) + *(this + v49 + 688);
            v49 += 4;
          }

          while (v49 != 12);
          v50 = 0;
          v51 = *v63;
          v52 = *&v63[8];
          do
          {
            *&v63[v50] = *(this + v50 + 732) * v47;
            v50 += 4;
          }

          while (v50 != 12);
          v53 = 0;
          v56 = *v63;
          v57 = *&v63[8];
          do
          {
            *&v63[v53] = *(&v56 + v53) + *(this + v53 + 700);
            v53 += 4;
          }

          while (v53 != 12);
          v54 = 0;
          v58 = *v63;
          v59 = *&v63[8];
          *v63 = v51;
          *&v63[8] = v52;
          do
          {
            *&v63[v54] = *&v63[v54] + ((*(&v58 + v54) - *&v63[v54]) * v46);
            v54 += 4;
          }

          while (v54 != 12);
          v55 = *&v63[8];
          *(this + 2) = *v63;
          *(this + 6) = v55;
        }

        *(this + 192) = 0;
      }
    }
  }
}

uint64_t md::RouteCollisionObject<md::MercatorPointSource>::segmentIndexForVertexIndex(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 48);
  if (*(a1 + 56) == v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = a2 - (a3 == 1);
  while (1)
  {
    v8 = *(v3 + 8 * v5);
    if ([v8 startPointIndex] <= v7 && objc_msgSend(v8, "endPointIndex") > v7)
    {
      break;
    }

    v5 = ++v6;
    v3 = *(a1 + 48);
    if (v6 >= ((*(a1 + 56) - v3) >> 3))
    {
      return 0;
    }
  }

  v10 = v7 - [v8 startPointIndex];

  return v6 | (v10 << 16);
}

double md::MercatorPointSource::segmentWorldPoint(uint64_t a1, int a2, int a3)
{
  v4 = HIWORD(a2);
  v5 = *(a1 + 8 * a2);
  v6 = [v5 points];
  if (v5)
  {
    [v5 bounds];
    v7 = v12;
    v8 = v13;
  }

  else
  {
    v8 = 0.0;
    v7 = 0.0;
  }

  v9 = v4;
  if (a3 == 1)
  {
    v9 = v4 + 1;
  }

  v10 = (v7 + v8 * *(v6 + 12 * v9)) / *MEMORY[0x1E69A1690];

  return v10;
}

BOOL md::RoadHiker::pixelForPoint(uint64_t a1, md::LabelPoint *this, float32x2_t *a3, float *a4)
{
  if (*(a1 + 13) == 1)
  {
    v52 = 0uLL;
    v53 = 0.0;
    v8 = *(this + 10);
    if (v8 == 3.4028e38)
    {
      v8 = 0.0;
    }

    v9 = v8 * *(a1 + 52);
    v10 = v9;
    v11 = (a1 + 72);
    if (*(a1 + 65) == 1)
    {
      if (*(a1 + 64))
      {
        v12 = *md::LabelPoint::mercatorPoint(this);
        v13 = *(md::LabelPoint::mercatorPoint(this) + 8);
        *&v52 = v12;
        *(&v52 + 1) = v13;
        v53 = 0.0;
        v11 = (a1 + 200);
      }

      else
      {
        md::LabelPoint::geocentricPoint(this);
        v52 = *this;
        v53 = *(this + 2);
        if (v9 != 0.0)
        {
          v35 = md::LabelPoint::geocentricNormal(this);
          v36 = 0;
          v50.f64[0] = v35;
          v50.f64[1] = v37;
          v51 = v38;
          do
          {
            v54.f64[v36] = v50.f64[v36] * v10;
            ++v36;
          }

          while (v36 != 3);
          for (i = 0; i != 3; ++i)
          {
            *(&v52 + i * 8) = *(&v52 + i * 8) + v54.f64[i];
          }
        }
      }
    }

    else
    {
      v23 = *md::LabelPoint::mercatorPoint(this);
      v24 = *(md::LabelPoint::mercatorPoint(this) + 8);
      v25 = *(a1 + 56) * v10;
      *&v52 = v23;
      *(&v52 + 1) = v24;
      v53 = v25;
    }

    if (a4)
    {
      v40 = v11[7].f64[0] + v11[5].f64[0] * v10;
      *a4 = v40;
    }

    v41 = v11[1].f64[1];
    v42 = v11[3].f64[1];
    v43 = v11[5].f64[1];
    v44 = v11[7].f64[1];
    v45 = v11[4];
    v46 = vmlaq_n_f64(vmlaq_n_f64(v11[6], *v11, *&v52), v11[2], *(&v52 + 1));
    v50 = v46;
    v47 = v44 + *&v52 * v41 + *(&v52 + 1) * v42;
    v51 = v47;
    if (v53 != 0.0)
    {
      v50 = vmlaq_n_f64(v46, v45, v53);
      v47 = v47 + v53 * v43;
      v51 = v47;
    }

    result = v47 > 2.22044605e-16;
    if (v47 > 2.22044605e-16)
    {
      v48 = 0;
      v49 = 1.0 / v47;
      do
      {
        v54.f64[v48] = v50.f64[v48] * v49;
        ++v48;
      }

      while (v48 != 3);
      *a3 = vcvt_f32_f64(v54);
      a3[1].i32[0] = 0;
    }
  }

  else
  {
    v52 = 0uLL;
    v53 = 0.0;
    v14 = *(this + 10);
    if (v14 == 3.4028e38)
    {
      v14 = 0.0;
    }

    v15 = v14 * *(a1 + 52);
    v16 = v15;
    if (*(a1 + 65) == 1)
    {
      md::LabelPoint::geocentricPoint(this);
      for (j = 0; j != 24; j += 8)
      {
        *(&v52 + j) = *(this + j);
      }

      if (v15 != 0.0)
      {
        v18 = md::LabelPoint::geocentricNormal(this);
        v19 = 0;
        v50.f64[0] = v18;
        v50.f64[1] = v20;
        v51 = v21;
        do
        {
          v54.f64[v19] = v50.f64[v19] * v16;
          ++v19;
        }

        while (v19 != 3);
        for (k = 0; k != 3; ++k)
        {
          *(&v52 + k * 8) = *(&v52 + k * 8) + v54.f64[k];
        }
      }
    }

    else
    {
      v16 = *(a1 + 56) * v16;
      v26 = *md::LabelPoint::mercatorPoint(this);
      v27 = *(md::LabelPoint::mercatorPoint(this) + 8);
      *&v52 = v26;
      *(&v52 + 1) = v27;
      v53 = v16;
    }

    if (a4)
    {
      v28 = *(a1 + 184) + *(a1 + 152) * v16;
      *a4 = v28;
    }

    v29 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>((a1 + 72), &v52);
    v30 = 0;
    v54.f64[0] = v29;
    v54.f64[1] = v31;
    v55 = v32;
    do
    {
      v33 = v54.f64[v30];
      *(&v52 + v30++) = v33;
    }

    while (v30 != 3);
    *a3 = v52;
    a3[1].i32[0] = DWORD2(v52);
    return 1;
  }

  return result;
}

BOOL gm::Range<md::PointSource::SegmentIndex>::overlapsRange(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = a2[2];
  v3 = *a1;
  if (v2 < v3 || v2 == v3 && a2[3] < a1[1])
  {
    return 0;
  }

  v4 = *a2;
  v5 = a1[2];
  if (v4 > v5)
  {
    return 0;
  }

  if (v4 == v5)
  {
    return a2[1] <= a1[3];
  }

  return 1;
}

uint64_t md::LabelLinePosition::pointAtOffset(md::LabelLinePosition *this, int a2)
{
  v5 = -1;
  if (!md::LabelLinePosition::getPointCoordinateAtOffset(this, a2, &v5))
  {
    return 0;
  }

  v3 = *(**(*(*(this + 2) + 8) + 16 * v5) + 24);

  return v3();
}

uint64_t geo::Intersect::internal::intersection<double,std::array<gm::Plane3<double>,6ul>>(uint64_t a1, uint64_t a2, int a3, double *a4, double *a5)
{
  v5 = 0;
  v6 = dbl_1B33B29D8[a3];
  *a4 = dbl_1B33B29C0[a3];
  *a5 = v6;
  for (i = a1; ; i += 32)
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      v9 = v9 + *(a2 + 24 + v8) * *(i + v8);
      v8 += 8;
    }

    while (v8 != 24);
    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + *(a2 + v10) * *(i + v10);
      v10 += 8;
    }

    while (v10 != 24);
    v12 = v11 + *(a1 + v5 + 24);
    v13 = v9 <= 0.0;
    if (v9 == 0.0)
    {
      if (v12 < 0.0)
      {
        return 0;
      }
    }

    else
    {
      v14 = -v12 / v9;
      if (v13)
      {
        v6 = fmin(v14, v6);
        *a5 = v6;
      }

      else
      {
        *a4 = fmax(*a4, v14);
        v6 = *a5;
      }
    }

    if (*a4 > v6)
    {
      break;
    }

    v5 += 32;
    if (v5 == 192)
    {
      return 1;
    }
  }

  return 0;
}

void *std::vector<gm::Range<geo::PolylineCoordinate>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

md::LabelPoint *md::LabelPoint::lerped(md::LabelPoint *this, const md::LabelPoint *a2, double a3, uint64_t a4)
{
  v7 = *(a2 + 10);
  v8 = 3.4028e38;
  if (v7 != 3.4028e38)
  {
    v9 = *(a4 + 40);
    v10 = v9 == 3.4028e38;
    v11 = v7 + (v9 - v7) * a3;
    if (v10)
    {
      v8 = 3.4028e38;
    }

    else
    {
      v8 = v11;
    }
  }

  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  if (*(a2 + 45) == 1 && *(a4 + 45) == 1)
  {
    result = md::LabelPoint::mercatorPoint(a4);
    v13 = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *this = 0;
    *(this + 24) = vmlaq_n_f64(*(a2 + 24), vsubq_f64(*result, *(a2 + 24)), a3);
    v14 = 1;
  }

  else
  {
    result = md::LabelPoint::geocentricPoint(a4);
    v15 = 0;
    v18 = *a2;
    v19 = *(a2 + 2);
    do
    {
      *(&v18 + v15) = *(&v18 + v15) + (*(a4 + v15) - *(&v18 + v15)) * a3;
      v15 += 8;
    }

    while (v15 != 24);
    v14 = 0;
    v16 = v19;
    *this = v18;
    *(this + 2) = v16;
    *(this + 3) = 0;
    *(this + 4) = 0;
    v13 = 1;
  }

  *(this + 10) = v8;
  *(this + 44) = v13;
  *(this + 45) = v14;
  *(this + 46) = 1;
  return result;
}

float std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,false>(void *a1, unint64_t *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return a5.n128_f32[0];
      }

      if (v11 == 2)
      {
        if (*v9 >= *v10)
        {
          if (*v9 != *v10)
          {
            return a5.n128_f32[0];
          }

          a5.n128_u32[0] = *(a2 - 1);
          if (a5.n128_f32[0] >= *(v10 + 4))
          {
            return a5.n128_f32[0];
          }
        }

LABEL_209:
        v79 = *v10;
        *v10 = *v9;
LABEL_210:
        *v9 = v79;
        return a5.n128_f32[0];
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      a5.n128_f32[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,0>(v10, (v10 + 8), (v10 + 16), a2 - 2);
      return a5.n128_f32[0];
    }

    if (v11 == 5)
    {
      a5.n128_f32[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,0>(v10, (v10 + 8), (v10 + 16), (v10 + 24));
      v80 = *(v10 + 24);
      if (*v9 < v80 || *v9 == v80 && (a5.n128_u32[0] = *(a2 - 1), a5.n128_f32[0] < *(v10 + 28)))
      {
        v81 = *(v10 + 24);
        *(v10 + 24) = *v9;
        *v9 = v81;
        v82 = *(v10 + 24);
        v83 = *(v10 + 16);
        if (v82 < v83 || v82 == v83 && (a5.n128_u32[0] = *(v10 + 28), a5.n128_f32[0] < *(v10 + 20)))
        {
          v85 = *(v10 + 16);
          v84 = *(v10 + 24);
          *(v10 + 16) = v84;
          *(v10 + 24) = v85;
          v86 = *(v10 + 8);
          a5.n128_u32[0] = HIDWORD(v84);
          if (v86 > v84 || v86 == v84 && *(v10 + 12) > *(&v84 + 1))
          {
            v87 = *(v10 + 8);
            *(v10 + 8) = v84;
            *(v10 + 16) = v87;
            if (*v10 > v84 || *v10 == v84 && *(v10 + 4) > *(&v84 + 1))
            {
              v88 = *v10;
              *v10 = v84;
              *(v10 + 8) = v88;
            }
          }
        }
      }

      return a5.n128_f32[0];
    }

LABEL_9:
    if (v11 <= 23)
    {
      v89 = (v10 + 8);
      v91 = v10 == a2 || v89 == a2;
      if (a4)
      {
        if (v91)
        {
          return a5.n128_f32[0];
        }

        v92 = 0;
        v93 = v10;
        while (2)
        {
          v94 = v93;
          v93 = v89;
          v95 = *(v94 + 8);
          if (v95 < *v94)
          {
            a5.n128_u32[0] = *(v94 + 12);
            goto LABEL_227;
          }

          if (v95 == *v94)
          {
            a5.n128_u32[0] = *(v94 + 12);
            if (a5.n128_f32[0] < *(v94 + 4))
            {
LABEL_227:
              *(v94 + 8) = *v94;
              v96 = v10;
              if (v94 != v10)
              {
                v97 = v92;
                do
                {
                  v98 = *(v10 + v97 - 8);
                  if (v95 >= v98)
                  {
                    if (v95 != v98)
                    {
                      v96 = v94;
                      goto LABEL_238;
                    }

                    v96 = (v10 + v97);
                    if (*(v10 + v97 - 4) <= a5.n128_f32[0])
                    {
                      goto LABEL_238;
                    }
                  }

                  v94 -= 8;
                  *(v10 + v97) = *(v10 + v97 - 8);
                  v97 -= 8;
                }

                while (v97);
                v96 = v10;
              }

LABEL_238:
              *v96 = v95;
              v96[1] = a5.n128_u32[0];
            }
          }

          v89 = (v93 + 8);
          v92 += 8;
          if ((v93 + 8) == a2)
          {
            return a5.n128_f32[0];
          }

          continue;
        }
      }

      if (v91)
      {
        return a5.n128_f32[0];
      }

      while (2)
      {
        v130 = a1;
        a1 = v89;
        v131 = *(v130 + 2);
        if (v131 >= *v130)
        {
          if (v131 == *v130)
          {
            a5.n128_u32[0] = *(v130 + 3);
            if (a5.n128_f32[0] < *(v130 + 1))
            {
              goto LABEL_307;
            }
          }
        }

        else
        {
          a5.n128_u32[0] = *(v130 + 3);
          do
          {
            do
            {
LABEL_307:
              v132 = v130;
              v130[1] = *v130;
              v133 = *(v130-- - 2);
              v134 = v131 == v133;
            }

            while (v131 < v133);
          }

          while (v134 && *(v132 - 1) > a5.n128_f32[0]);
          *v132 = v131;
          v132[1] = a5.n128_f32[0];
        }

        v89 = a1 + 1;
        if (a1 + 1 == a2)
        {
          return a5.n128_f32[0];
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v10 == a2)
      {
        return a5.n128_f32[0];
      }

      v99 = (v11 - 2) >> 1;
      v100 = v99;
      while (2)
      {
        v101 = v100;
        if (v99 >= v100)
        {
          v102 = (2 * v100) | 1;
          v103 = v10 + 8 * v102;
          if (2 * v101 + 2 < v11)
          {
            v104 = *(v103 + 8);
            if (*v103 < v104 || *v103 == v104 && (a5.n128_u32[0] = *(v103 + 4), a5.n128_f32[0] < *(v103 + 12)))
            {
              v103 += 8;
              v102 = 2 * v101 + 2;
            }
          }

          v105 = (v10 + 8 * v101);
          v106 = *v105;
          if (*v103 >= *v105)
          {
            if (*v103 != v106)
            {
              a5.n128_u32[0] = v105[1];
              goto LABEL_253;
            }

            a5.n128_u32[0] = v105[1];
            if (*(v103 + 4) >= a5.n128_f32[0])
            {
LABEL_253:
              *v105 = *v103;
              if (v99 >= v102)
              {
                while (1)
                {
                  v108 = 2 * v102;
                  v102 = (2 * v102) | 1;
                  v107 = v10 + 8 * v102;
                  v109 = v108 + 2;
                  if (v109 < v11)
                  {
                    v110 = *(v107 + 8);
                    if (*v107 < v110 || *v107 == v110 && *(v107 + 4) < *(v107 + 12))
                    {
                      v107 += 8;
                      v102 = v109;
                    }
                  }

                  if (*v107 < v106 || *v107 == v106 && *(v107 + 4) < a5.n128_f32[0])
                  {
                    break;
                  }

                  *v103 = *v107;
                  v103 = v107;
                  if (v99 < v102)
                  {
                    goto LABEL_255;
                  }
                }
              }

              v107 = v103;
LABEL_255:
              *v107 = v106;
              *(v107 + 4) = a5.n128_u32[0];
            }
          }
        }

        v100 = v101 - 1;
        if (v101)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v111 = 0;
        v112 = *v10;
        v113 = v10;
        do
        {
          v114 = v113;
          v115 = v113 + 8 * v111;
          v113 = v115 + 8;
          v116 = 2 * v111;
          v111 = (2 * v111) | 1;
          v117 = v116 + 2;
          if (v117 < v11)
          {
            v118 = *(v115 + 16);
            v119 = *(v115 + 8);
            if (v119 < v118 || v119 == v118 && (a5.n128_u32[0] = *(v115 + 12), a5.n128_f32[0] < *(v115 + 20)))
            {
              v113 = v115 + 16;
              v111 = v117;
            }
          }

          *v114 = *v113;
        }

        while (v111 <= (v11 - 2) / 2);
        if (v113 == --a2)
        {
          *v113 = v112;
        }

        else
        {
          *v113 = *a2;
          *a2 = v112;
          v120 = (v113 - v10 + 8) >> 3;
          v121 = v120 - 2;
          if (v120 >= 2)
          {
            v122 = v121 >> 1;
            v123 = v10 + 8 * (v121 >> 1);
            v124 = *v113;
            if (*v123 < *v113)
            {
              a5.n128_u32[0] = *(v113 + 4);
              goto LABEL_282;
            }

            if (*v123 == v124)
            {
              a5.n128_u32[0] = *(v113 + 4);
              if (*(v123 + 4) < a5.n128_f32[0])
              {
LABEL_282:
                *v113 = *v123;
                if (v121 >= 2)
                {
                  while (1)
                  {
                    v126 = v122 - 1;
                    v122 = (v122 - 1) >> 1;
                    v125 = v10 + 8 * v122;
                    if (*v125 >= v124 && (*v125 != v124 || *(v125 + 4) >= a5.n128_f32[0]))
                    {
                      break;
                    }

                    *v123 = *v125;
                    v123 = v10 + 8 * v122;
                    if (v126 <= 1)
                    {
                      goto LABEL_288;
                    }
                  }
                }

                v125 = v123;
LABEL_288:
                *v125 = v124;
                *(v125 + 4) = a5.n128_u32[0];
              }
            }
          }
        }

        if (v11-- <= 2)
        {
          return a5.n128_f32[0];
        }

        continue;
      }
    }

    v12 = v10 + 8 * (v11 >> 1);
    v13 = v12;
    if (v11 >= 0x81)
    {
      v14 = *v12;
      if (*v12 < *v10 || v14 == *v10 && *(v12 + 4) < *(v10 + 4))
      {
        if (*v9 < v14 || *v9 == v14 && *(a2 - 1) < *(v12 + 4))
        {
          v15 = *v10;
          *v10 = *v9;
        }

        else
        {
          v15 = *v10;
          *v10 = *v12;
          *v12 = v15;
          if (*v9 >= v15 && (*v9 != v15 || *(a2 - 1) >= *(&v15 + 1)))
          {
            goto LABEL_33;
          }

          *v12 = *v9;
        }

        *v9 = v15;
        goto LABEL_33;
      }

      if (*v9 < v14 || *v9 == v14 && *(a2 - 1) < *(v12 + 4))
      {
        v18 = *v12;
        *v12 = *v9;
        *v9 = v18;
        if (*v12 < *v10 || *v12 == *v10 && *(v12 + 4) < *(v10 + 4))
        {
          v19 = *v10;
          *v10 = *v12;
          *v12 = v19;
        }
      }

LABEL_33:
      v22 = v12 - 8;
      v23 = *(v12 - 8);
      v24 = *(v10 + 8);
      if (v23 < v24 || v23 == v24 && *(v12 - 4) < *(v10 + 12))
      {
        v25 = *(a2 - 4);
        if (v25 < v23 || v25 == v23 && *(a2 - 3) < *(v12 - 4))
        {
          v26 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 2);
        }

        else
        {
          v26 = *(v10 + 8);
          *(v10 + 8) = *v22;
          *v22 = v26;
          v31 = *(a2 - 4);
          if (v31 >= v26 && (v31 != v26 || *(a2 - 3) >= *(&v26 + 1)))
          {
            goto LABEL_51;
          }

          *v22 = *(a2 - 2);
        }

        *(a2 - 2) = v26;
        goto LABEL_51;
      }

      v27 = *(a2 - 4);
      if (v27 < v23 || v27 == v23 && *(a2 - 3) < *(v12 - 4))
      {
        v28 = *v22;
        *v22 = *(a2 - 2);
        *(a2 - 2) = v28;
        v29 = *(v10 + 8);
        if (*v22 < v29 || *v22 == v29 && *(v12 - 4) < *(v10 + 12))
        {
          v30 = *(v10 + 8);
          *(v10 + 8) = *v22;
          *v22 = v30;
        }
      }

LABEL_51:
      v34 = *(v12 + 8);
      v32 = v12 + 8;
      v33 = v34;
      v35 = *(v10 + 16);
      v36 = v34 == v35;
      if (v34 >= v35 && (!v36 || *(v32 + 4) >= *(v10 + 20)))
      {
        v39 = *(a2 - 6);
        if (v39 < v33 || v39 == v33 && *(a2 - 5) < *(v32 + 4))
        {
          v40 = *v32;
          *v32 = *(a2 - 3);
          *(a2 - 3) = v40;
          v41 = *(v10 + 16);
          if (*v32 < v41 || *v32 == v41 && *(v32 + 4) < *(v10 + 20))
          {
            v42 = *(v10 + 16);
            *(v10 + 16) = *v32;
            *v32 = v42;
          }
        }

        goto LABEL_65;
      }

      v37 = *(a2 - 6);
      if (v37 < v33 || v37 == v33 && *(a2 - 5) < *(v32 + 4))
      {
        v38 = *(v10 + 16);
        *(v10 + 16) = *(a2 - 3);
      }

      else
      {
        v38 = *(v10 + 16);
        *(v10 + 16) = *v32;
        *v32 = v38;
        v43 = *(a2 - 6);
        if (v43 >= v38 && (v43 != v38 || *(a2 - 5) >= *(&v38 + 1)))
        {
          goto LABEL_65;
        }

        *v32 = *(a2 - 3);
      }

      *(a2 - 3) = v38;
LABEL_65:
      v44 = *v13;
      v45 = *v22;
      if (*v13 < *v22 || v44 == v45 && *(v13 + 4) < *(v22 + 4))
      {
        v46 = *v32;
        if (*v32 < v44 || v46 == v44 && *(v32 + 4) < *(v13 + 4))
        {
          v47 = *v22;
          *v22 = *v32;
          *v32 = v47;
        }

        else
        {
          v51 = *v22;
          *v22 = vextq_s8(*v22, *v22, 8uLL);
          if (v46 < v51 || v46 == v51 && *(v32 + 4) < *(&v51 + 1))
          {
            *v13 = *v32;
            *v32 = v51;
          }
        }
      }

      else if (*v32 < v44 || *v32 == v44 && *(v32 + 4) < *(v13 + 4))
      {
        v48 = *v13;
        v49 = *v32;
        *v13 = *v32;
        *v32 = v48;
        if (v45 > v49 || v45 == v49 && *(v22 + 4) > *(&v49 + 1))
        {
          v50 = *v22;
          *v22 = v49;
          *v13 = v50;
        }
      }

      v52 = *v10;
      *v10 = *v13;
      *v13 = v52;
      goto LABEL_122;
    }

    v16 = *v10;
    if (*v10 < *v12 || LODWORD(v16) == *v12 && *(v10 + 4) < *(v12 + 4))
    {
      if (*v9 < LODWORD(v16) || *v9 == LODWORD(v16) && *(a2 - 1) < *(v10 + 4))
      {
        v17 = *v12;
        *v12 = *v9;
LABEL_45:
        *v9 = v17;
        goto LABEL_122;
      }

      v17 = *v12;
      *v12 = *v10;
      *v10 = v17;
      if (*v9 < v17 || *v9 == v17 && *(a2 - 1) < *(&v17 + 1))
      {
        *v10 = *v9;
        goto LABEL_45;
      }
    }

    else if (*v9 < LODWORD(v16) || *v9 == LODWORD(v16) && *(a2 - 1) < *(v10 + 4))
    {
      v20 = *v10;
      *v10 = *v9;
      *v9 = v20;
      if (*v10 < *v12 || *v10 == *v12 && *(v10 + 4) < *(v12 + 4))
      {
        v21 = *v12;
        *v12 = *v10;
        *v10 = v21;
      }
    }

LABEL_122:
    --a3;
    v53 = *v10;
    if (a4)
    {
      goto LABEL_127;
    }

    v54 = *(v10 - 8);
    if (v54 < LODWORD(v53))
    {
      goto LABEL_127;
    }

    if (v54 == LODWORD(v53))
    {
      a5.n128_u32[0] = *(v10 + 4);
      if (*(v10 - 4) >= a5.n128_f32[0])
      {
        goto LABEL_167;
      }

LABEL_127:
      v55 = *(v10 + 4);
        ;
      }

      if (i - 8 == v10)
      {
        j = a2;
        if (i < a2)
        {
          v60 = *v9;
          j = (a2 - 1);
          if (*v9 >= LODWORD(v53))
          {
            j = (a2 - 1);
            do
            {
              if (v60 == LODWORD(v53))
              {
                if (j[1] < v55 || i >= j)
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v62 = *(j - 2);
              j -= 2;
              v60 = v62;
            }

            while (v62 >= LODWORD(v53));
          }
        }
      }

      else
      {
        v57 = *v9;
        for (j = (a2 - 1); v57 >= LODWORD(v53) && (v57 != LODWORD(v53) || j[1] >= v55); j -= 2)
        {
          v59 = *(j - 2);
          v57 = v59;
        }
      }

      v10 = i;
      if (i < j)
      {
        v10 = i;
        v63 = j;
        do
        {
          v64 = *v10;
          *v10 = *v63;
          v10 += 8;
          *v63 = v64;
          while (*v10 < LODWORD(v53) || *v10 == LODWORD(v53) && *(v10 + 4) < v55)
          {
            v10 += 8;
          }

          do
          {
            v66 = *(v63 - 8);
            v63 -= 8;
            v65 = v66;
          }

          while (v66 >= LODWORD(v53) && (v65 != LODWORD(v53) || *(v63 + 4) >= v55));
        }

        while (v10 < v63);
      }

      if ((v10 - 8) != a1)
      {
        *a1 = *(v10 - 8);
      }

      *(v10 - 8) = v53;
      *(v10 - 4) = v55;
      if (i < j)
      {
        goto LABEL_166;
      }

      v67 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *>(a1, v10 - 8);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *>(v10, a2))
      {
        a2 = (v10 - 8);
        if (v67)
        {
          return a5.n128_f32[0];
        }

        goto LABEL_1;
      }

      if (!v67)
      {
LABEL_166:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,false>(a1, v10 - 8, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      a5.n128_u32[0] = *(v10 + 4);
LABEL_167:
      v68 = *v9;
      if (LODWORD(v53) < *v9 || LODWORD(v53) == v68 && *(a2 - 1) > a5.n128_f32[0])
      {
        do
        {
          v70 = *(v10 + 8);
          v10 += 8;
          v69 = v70;
        }

        while (LODWORD(v53) >= v70 && (LODWORD(v53) != v69 || *(v10 + 4) <= a5.n128_f32[0]));
      }

      else
      {
          ;
        }
      }

      k = a2;
      if (v10 < a2)
      {
        for (k = a2 - 1; LODWORD(v53) < v68 || LODWORD(v53) == v68 && *(k + 1) > a5.n128_f32[0]; --k)
        {
          v72 = *(k - 2);
          v68 = v72;
        }
      }

      while (v10 < k)
      {
        v73 = *v10;
        *v10 = *k;
        *k = v73;
        do
        {
          v75 = *(v10 + 8);
          v10 += 8;
          v74 = v75;
        }

        while (LODWORD(v53) >= v75 && (LODWORD(v53) != v74 || *(v10 + 4) <= a5.n128_f32[0]));
        do
        {
          do
          {
            v76 = *(k-- - 2);
            v77 = LODWORD(v53) == v76;
          }

          while (LODWORD(v53) < v76);
        }

        while (v77 && *(k + 1) > a5.n128_f32[0]);
      }

      if ((v10 - 8) != a1)
      {
        *a1 = *(v10 - 8);
      }

      a4 = 0;
      *(v10 - 8) = v53;
      *(v10 - 4) = a5.n128_u32[0];
    }
  }

  v78 = *(v10 + 8);
  if (v78 < *v10 || v78 == *v10 && (a5.n128_u32[0] = *(v10 + 12), a5.n128_f32[0] < *(v10 + 4)))
  {
    if (*v9 < v78)
    {
      goto LABEL_209;
    }

    if (*v9 == v78)
    {
      a5.n128_u32[0] = *(a2 - 1);
      if (a5.n128_f32[0] < *(v10 + 12))
      {
        goto LABEL_209;
      }
    }

    a5 = *v10;
    *v10 = vextq_s8(*v10, *v10, 8uLL);
    v79 = a5.n128_u64[0];
    if (*v9 < a5.n128_u32[0] || *v9 == a5.n128_u32[0] && (a5.n128_u32[0] = a5.n128_u32[1], *(a2 - 1) < *(&v79 + 1)))
    {
      *(v10 + 8) = *v9;
      goto LABEL_210;
    }
  }

  else if (*v9 < v78 || *v9 == v78 && (a5.n128_u32[0] = *(a2 - 1), a5.n128_f32[0] < *(v10 + 12)))
  {
    v128 = *(v10 + 8);
    *(v10 + 8) = *v9;
    *v9 = v128;
    v129 = *(v10 + 8);
    if (v129 < *v10 || v129 == *v10 && (a5.n128_u32[0] = *(v10 + 12), a5.n128_f32[0] < *(v10 + 4)))
    {
      a5 = vextq_s8(*v10, *v10, 8uLL);
      *v10 = a5;
    }
  }

  return a5.n128_f32[0];
}

float md::MultipleShieldLabelPart::hikerWidth(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 576);
  v3 = *(a1 + 584);
  if (v2 == v3)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = *v2;
    if ((*(**v2 + 744))(*v2, a2))
    {
      ++v6;
      (*(*v8 + 600))(v8, a2);
      v7 = (*(*v8 + 344))(v8, a2) + v7;
    }

    ++v2;
  }

  while (v2 != v3);
  if (v6 > 1)
  {
    v9 = 664;
    if (!a2)
    {
      v9 = 632;
    }

    return v7 + (*(a1 + v9 + 16) * (v6 - 1));
  }

  return v7;
}

uint64_t md::MercatorRouteCollider::computeRayBoundsOfRouteSectionWithinFrustum(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int *a5, double *a6)
{
  v9 = *(a1 + 8);
  v11 = *a5;
  v10 = a5[1];
  v12 = a3;
  if ([v12 pointCount] && (v13 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v9, v12)) != 0)
  {
    v14 = v13;
    *a6 = xmmword_1B33B0520;
    v17[0] = md::RouteCollisionObject<md::MercatorPointSource>::segmentIndexForVertexIndex(v13, v11, 0);
    v17[1] = md::RouteCollisionObject<md::MercatorPointSource>::segmentIndexForVertexIndex(v14, v10, 1);
    md::RouteCollisionObject<md::MercatorPointSource>::computeRayBoundsWithinFrustum(a2, a4, *(v14 + 72), v17, a6);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

float md::ShieldIconLabelPart::hikerWidth(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 312;
  if (!a2)
  {
    v4 = 72;
  }

  v5 = (a1 + v4);
  v6 = v5 + 2;
  do
  {
    v7 = v6[v3];
    v8 = v5[v3];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v7 >= v8);
  v9 = 0.0;
  if (v7 >= v8)
  {
    v9 = v5[2] - *v5;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v6[v11];
    v13 = v5[v11];
    if (v10)
    {
      break;
    }

    v10 = 1;
    v11 = 1;
  }

  while (v12 >= v13);
  v14 = 0.0;
  if (v12 >= v13)
  {
    v14 = v5[3] - v5[1];
  }

  return fmaxf(v9, v14);
}

void md::RouteCollisionObject<md::MercatorPointSource>::computeRayBoundsWithinFrustum(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, double *a5)
{
  v10 = a2 + 24;
LABEL_2:
  if (*a3)
  {
    memset(v47, 0, sizeof(v47));
    v46 = *(a3 + 24);
    *(v47 + 8) = *(a3 + 40);
    v33 = gm::Box<double,3>::center<double>(&v46);
    v34 = 0;
    *&v48 = v33;
    *(&v48 + 1) = v35;
    v49 = v36;
    do
    {
      v50.f64[v34] = *(&v48 + v34 * 8) - *(a2 + v34 * 8);
      ++v34;
    }

    while (v34 != 3);
    v37 = 0;
    v38 = 0.0;
    do
    {
      v38 = v38 + v50.f64[v37] * *(v10 + v37 * 8);
      ++v37;
    }

    while (v37 != 3);
    for (i = 0; i != 24; i += 8)
    {
      *(&v47[-1] + i) = fabs(*(v10 + i));
    }

    v40 = 0;
    v49 = *&v47[0];
    v47[1] = 0u;
    v48 = v46;
    v46 = *(a3 + 24);
    v47[0] = 0u;
    *(v47 + 8) = *(a3 + 40);
    do
    {
      v50.f64[v40] = *(v47 + v40 * 8 + 8) - *(&v47[-1] + v40 * 8);
      ++v40;
    }

    while (v40 != 3);
    v41 = 0;
    v42 = 0.0;
    v50 = vmaxnmq_f64(v50, 0);
    v51 = fmax(v51, 0.0);
    do
    {
      v42 = v42 + v50.f64[v41] * *(&v48 + v41 * 8);
      ++v41;
    }

    while (v41 != 3);
    v43 = v42 * 0.5;
    v44 = v38 - v43;
    v45 = fmax(v43 + v38, a5[1]);
    *a5 = fmin(*a5, v44);
    a5[1] = v45;
  }

  else if (gm::Range<md::PointSource::SegmentIndex>::overlapsRange((a3 + 72), a4))
  {
    v11 = 0;
    memset(v47, 0, sizeof(v47));
    v46 = *(a3 + 24);
    *(v47 + 8) = *(a3 + 40);
    while (1)
    {
      v12 = 0;
      v13 = *(a1 + v11 + 16);
      v48 = *(a1 + v11);
      v49 = v13;
      do
      {
        v14 = (&v47[-1] + v12 * 8);
        if (*(&v48 + v12 * 8) >= 0.0)
        {
          v14 = (v47 + v12 * 8 + 8);
        }

        v50.f64[v12++] = *v14;
      }

      while (v12 != 3);
      v15 = 0;
      v16 = 0.0;
      do
      {
        v16 = v16 + *(a1 + v11 + v15 * 8) * v50.f64[v15];
        ++v15;
      }

      while (v15 != 3);
      if (*(a1 + v11 + 24) + v16 < 0.0)
      {
        break;
      }

      v11 += 32;
      if (v11 == 192)
      {
        v18 = *a5;
        v17 = a5[1];
        if (v17 < *a5)
        {
          goto LABEL_28;
        }

        memset(v47, 0, sizeof(v47));
        v46 = *(a3 + 24);
        *(v47 + 8) = *(a3 + 40);
        v19 = gm::Box<double,3>::center<double>(&v46);
        v20 = 0;
        *&v48 = v19;
        *(&v48 + 1) = v21;
        v49 = v22;
        do
        {
          v50.f64[v20] = *(&v48 + v20 * 8) - *(a2 + v20 * 8);
          ++v20;
        }

        while (v20 != 3);
        v23 = 0;
        v24 = 0.0;
        do
        {
          v24 = v24 + v50.f64[v23] * *(v10 + v23 * 8);
          ++v23;
        }

        while (v23 != 3);
        for (j = 0; j != 24; j += 8)
        {
          *(&v47[-1] + j) = fabs(*(v10 + j));
        }

        v26 = 0;
        v48 = v46;
        v49 = *&v47[0];
        memset(v47, 0, sizeof(v47));
        v46 = *(a3 + 24);
        *(v47 + 8) = *(a3 + 40);
        do
        {
          v50.f64[v26] = *(v47 + v26 * 8 + 8) - *(&v47[-1] + v26 * 8);
          ++v26;
        }

        while (v26 != 3);
        v27 = 0;
        v28 = 0.0;
        v50 = vmaxnmq_f64(v50, 0);
        v51 = fmax(v51, 0.0);
        do
        {
          v28 = v28 + v50.f64[v27] * *(&v48 + v27 * 8);
          ++v27;
        }

        while (v27 != 3);
        v29 = v28 * 0.5;
        v30 = v24 - v29;
        v31 = v29 + v24;
        if (v18 > v30 || v31 > v17)
        {
LABEL_28:
          md::RouteCollisionObject<md::MercatorPointSource>::computeRayBoundsWithinFrustum(a1, a2, *(a3 + 8), a4, a5);
          a3 = *(a3 + 16);
          goto LABEL_2;
        }

        return;
      }
    }
  }
}

uint64_t md::CurvedTextLabelPart::findLineLayoutDirection(uint64_t a1, int a2, int a3, uint64_t a4, float a5, __n128 a6, __n128 a7)
{
  *(a1 + 11) = 0;
  *(a1 + 8) = 1;
  a6.n128_u64[0] = 0;
  a7.n128_f32[0] = a5 * -0.5;
  v10 = a5 * 0.5;
  if (a3 == 2)
  {
    a7.n128_f32[0] = -a5;
    v10 = 0.0;
  }

  if (a3)
  {
    v11 = a7.n128_f32[0];
  }

  else
  {
    v11 = 0.0;
  }

  if (a3)
  {
    v12 = v10;
  }

  else
  {
    v12 = a5;
  }

  v33 = 0;
  v34 = 0;
  (*(*a1 + 32))(a1, (v12 + v11) * 0.5, a6, a7);
  (*(*a1 + 88))(a1);
  v13 = 0;
  if (*(a1 + 9) == 1)
  {
    (*(*a1 + 88))(a1);
    v14 = 0;
    v31 = *(a1 + 28);
    v32 = *(a1 + 36);
    do
    {
      *(&v33 + v14) = *(&v33 + v14) + *(&v31 + v14);
      v14 += 4;
    }

    while (v14 != 12);
    if (a2)
    {
      (*(*a1 + 72))(a1, &v31);
    }

    (*(*a1 + 16))(a1);
    (*(*a1 + 32))(a1, v11);
    (*(*a1 + 88))(a1);
    if (*(a1 + 9) == 1)
    {
      (*(*a1 + 88))(a1);
      for (i = 0; i != 12; i += 4)
      {
        *(&v33 + i) = *(&v33 + i) + *(a1 + i + 28);
      }

      (*(*a1 + 88))(a1);
      v29 = *(a1 + 16);
      v30 = *(a1 + 24);
      (*(*a1 + 16))(a1);
      (*(*a1 + 32))(a1, v12);
      (*(*a1 + 88))(a1);
      v13 = *(a1 + 9);
      if (v13 == 1)
      {
        (*(*a1 + 88))(a1);
        for (j = 0; j != 12; j += 4)
        {
          *(&v33 + j) = *(&v33 + j) + *(a1 + j + 28);
        }

        (*(*a1 + 88))(a1);
        v17 = 0;
        v27 = *(a1 + 16);
        v28 = *(a1 + 24);
        do
        {
          *(&v35 + v17) = *(&v27 + v17) - *(&v29 + v17);
          v17 += 4;
        }

        while (v17 != 12);
        v18 = gm::Matrix<float,3,1>::normalized<int,void>(&v35);
        v19 = 0;
        *v26 = v18;
        v26[1] = v20;
        v26[2] = v21;
        do
        {
          *(&v35 + v19 * 4) = *&v26[v19] * 3.0;
          ++v19;
        }

        while (v19 != 3);
        for (k = 0; k != 12; k += 4)
        {
          *(&v33 + k) = *(&v33 + k) + *(&v35 + k);
        }

        *a4 = gm::Matrix<float,3,1>::normalized<int,void>(&v33);
        *(a4 + 4) = v23;
        *(a4 + 8) = v24;
        (*(*a1 + 80))(a1);
      }
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

void md::PolylinePixelHiker::moveCursor(md::PolylinePixelHiker *this, float a2)
{
  if (*(this + 8) == 1)
  {
    md::PolylinePixelHiker::validate(this);
  }

  *(this + 192) = *(this + 192) + a2;
  if (*(this + 11))
  {
    a2 = -a2;
  }

  v108 = *(this + 688);
  v109 = *(this + 174);
  v4 = (this + 700);
  v106 = *(this + 700);
  v107 = *(this + 177);
  v5 = *(this + 190);
  if (v5 != 0.0)
  {
    for (i = 0; i != 12; i += 4)
    {
      *&v104[i] = *(this + i + 720) * v5;
    }

    for (j = 0; j != 3; ++j)
    {
      v108.f32[j] = v108.f32[j] + *&v104[j * 4];
    }

    for (k = 0; k != 12; k += 4)
    {
      *&v104[k] = *(this + k + 732) * v5;
    }

    for (m = 0; m != 3; ++m)
    {
      v106.f32[m] = v106.f32[m] + *&v104[m * 4];
    }
  }

  v10 = 0;
  v11 = (this + 688);
  do
  {
    *&v104[v10 * 4] = v108.f32[v10] - v106.f32[v10];
    ++v10;
  }

  while (v10 != 3);
  v12 = 0;
  v13 = 0.0;
  do
  {
    v13 = v13 + (*&v104[v12] * *&v104[v12]);
    v12 += 4;
  }

  while (v12 != 12);
  v14 = sqrtf(v13);
  v15 = a2 + (*(this + 191) * v14);
  memset(v104, 0, sizeof(v104));
  *v105 = 2139095039;
  *&v105[4] = 0;
  v105[6] = 0;
  if (v15 < 0.0 || v15 > v14)
  {
    v17 = md::PolylinePixelHiker::moveAlongEdgeInDirection(this, a2 >= 0.0, v104);
    if (*(this + 9) != 1)
    {
      return;
    }

    if (v17)
    {
      v18 = *(this + 540);
      if (v18 < (md::LabelLinePosition::vertexInfo((this + 544)) >> 16))
      {
LABEL_25:
        *(this + 9) = 0;
        return;
      }

      v32 = (this + 720);
      v33 = a2 * a2;
      v34 = (this + 732);
      v95 = (this + 680);
      v96 = (this + 640);
      v93 = (this + 592);
      v94 = (this + 632);
      v35 = this + 16;
      v36 = (this + 616);
      while (1)
      {
        if (a2 < 0.0)
        {
          v37 = (this + 700);
          v38 = 3;
          do
          {
            *v37 = *(v37 - 3);
            ++v37;
            --v38;
          }

          while (v38);
          *(this + 179) = *(this + 178);
          v39 = (this + 732);
          v40 = 3;
          do
          {
            *v39 = *(v39 - 3);
            ++v39;
            --v40;
          }

          while (v40);
          v106 = v108;
          v107 = v109;
          v41 = (this + 640);
          v42 = 3;
          do
          {
            *v41 = *(v41 - 6);
            ++v41;
            --v42;
          }

          while (v42);
          *(this + 83) = *(this + 77);
          *(this + 84) = *(this + 78);
          *v95 = *v94;
          *(this + 683) = *(this + 635);
        }

        else
        {
          *v11 = *v4;
          *(this + 174) = *(this + 177);
          *(this + 178) = *(this + 179);
          *v32 = *v34;
          *(this + 182) = *(this + 185);
          v108 = v106;
          v109 = v107;
          *(this + 76) = *(this + 82);
          *v93 = *v96;
          *v36 = v36[3];
          *(this + 635) = *(this + 683);
          *v94 = *v95;
        }

        v101 = 0;
        v43 = md::RoadHiker::pixelForPoint(this, v104, &v102, &v101);
        *(this + 9) = v43;
        if (!v43)
        {
          return;
        }

        if (a2 < 0.0)
        {
          *v11 = v102;
          *(this + 174) = v103;
          *(this + 178) = v101;
          *v93 = *v104;
          *(this + 76) = *&v104[16];
          *v36 = *&v104[24];
          *(this + 635) = *&v105[3];
          v53 = *(this + 190);
          *v94 = *v105;
          if (v53 != 0.0)
          {
            v54 = md::LabelLinePosition::pointAtOffset((this + 544), -1);
            if (v54)
            {
              md::RoadHiker::pixelForPoint(this, v54, &v99, 0);
            }

            v55 = md::PolylinePixelHiker::computeBisector(this, &v99, v54 != 0, this + 86, (this + 700), 1, v104);
            v56 = 0;
            *(this + 180) = v55;
            *(this + 181) = v57;
            *(this + 182) = v58;
            v59 = *(this + 190);
            do
            {
              v110.f32[v56] = *(v32 + v56 * 4) * v59;
              ++v56;
            }

            while (v56 != 3);
            v60 = 0;
            v97 = v110;
            v98 = v111;
            v36 = (this + 616);
            do
            {
              v110.f32[v60] = v97.f32[v60] + v11[v60];
              ++v60;
            }

            while (v60 != 3);
            v108 = v110;
            v109 = v111;
            v102 = v110;
            v52 = v111;
            goto LABEL_62;
          }

          v108 = v102;
          v109 = v103;
        }

        else
        {
          *v4 = v102;
          *(this + 177) = v103;
          *(this + 179) = v101;
          *v96 = *v104;
          *(this + 82) = *&v104[16];
          v36[3] = *&v104[24];
          *(this + 683) = *&v105[3];
          v44 = *(this + 190);
          *v95 = *v105;
          if (v44 != 0.0)
          {
            v45 = md::LabelLinePosition::pointAtOffset((this + 544), 2);
            if (v45)
            {
              md::RoadHiker::pixelForPoint(this, v45, &v99, 0);
            }

            v46 = md::PolylinePixelHiker::computeBisector(this, this + 86, 1, (this + 700), &v99, v45 != 0, v104);
            v47 = 0;
            *(this + 183) = v46;
            *(this + 184) = v48;
            *(this + 185) = v49;
            v50 = *(this + 190);
            do
            {
              v110.f32[v47] = *(v34 + v47 * 4) * v50;
              ++v47;
            }

            while (v47 != 3);
            v51 = 0;
            v97 = v110;
            v98 = v111;
            v36 = (this + 616);
            do
            {
              v110.f32[v51] = v97.f32[v51] + *(v4 + v51 * 4);
              ++v51;
            }

            while (v51 != 3);
            v106 = v110;
            v107 = v111;
            v102 = v110;
            v52 = v111;
LABEL_62:
            v103 = v52;
            goto LABEL_65;
          }

          v106 = v102;
          v107 = v103;
        }

LABEL_65:
        if (*(this + 772) == 1)
        {
          for (n = 0; n != 3; ++n)
          {
            v110.f32[n] = v106.f32[n] - v108.f32[n];
          }

          v62 = 0;
          v99 = v110;
          v100 = v111;
          v63 = 0.0;
          do
          {
            v63 = v63 + (v99.f32[v62] * *(this + v62 * 4 + 744));
            ++v62;
          }

          while (v62 != 3);
          if (v63 <= 0.0)
          {
            goto LABEL_25;
          }
        }

        for (ii = 0; ii != 3; ++ii)
        {
          v110.f32[ii] = v102.f32[ii] - *(this + ii * 4 + 16);
        }

        v65 = 0;
        v66 = 0.0;
        do
        {
          v66 = v66 + (v110.f32[v65] * v110.f32[v65]);
          ++v65;
        }

        while (v65 != 3);
        if (v66 <= v33)
        {
          v67 = md::PolylinePixelHiker::moveAlongEdgeInDirection(this, a2 >= 0.0, v104);
          if ((*(this + 9) & 1) == 0)
          {
            return;
          }

          if (v67)
          {
            continue;
          }
        }

        for (jj = 0; jj != 3; ++jj)
        {
          v110.f32[jj] = v106.f32[jj] - v108.f32[jj];
        }

        v69 = 0;
        v102 = v110;
        v103 = v111;
        do
        {
          v110.f32[v69] = v106.f32[v69] - v108.f32[v69];
          ++v69;
        }

        while (v69 != 3);
        v70 = 0;
        v71 = 0.0;
        do
        {
          v71 = v71 + (v110.f32[v70] * v110.f32[v70]);
          ++v70;
        }

        while (v70 != 3);
        v72 = 0;
        v73 = sqrtf(v71);
        do
        {
          v110.f32[v72] = v102.f32[v72] * (1.0 / v73);
          ++v72;
        }

        while (v72 != 3);
        v74 = v111;
        *(this + 28) = v110;
        *(this + 9) = v74;
        v75 = 1.0;
        if (a2 >= 0.0)
        {
          v76 = 0.0;
        }

        else
        {
          v76 = 1.0;
        }

        if (a2 < 0.0)
        {
          v75 = 0.0;
        }

        if (v66 <= v33)
        {
          v77 = 0;
          v78 = a2 / v73;
          while (1)
          {
            v79 = 0;
            v20 = v75 + v78;
            v110 = v108;
            v111 = v109;
            do
            {
              v110.f32[v79] = v110.f32[v79] + ((v106.f32[v79] - v110.f32[v79]) * v20);
              ++v79;
            }

            while (v79 != 3);
            v80 = 0;
            v99 = v110;
            v100 = v111;
            do
            {
              v110.f32[v80] = v99.f32[v80] - *&v35[v80 * 4];
              ++v80;
            }

            while (v80 != 3);
            v81 = 0;
            v82 = 0.0;
            do
            {
              v82 = v82 + (v110.f32[v81] * v110.f32[v81]);
              ++v81;
            }

            while (v81 != 3);
            if (v82 > v33)
            {
              break;
            }

            ++v77;
            v75 = v75 + v78;
            if (v77 == 4)
            {
              goto LABEL_25;
            }
          }

          v73 = fabsf(v78) * v73;
        }

        else
        {
          v20 = v75;
          v75 = v76;
        }

        for (; v73 > 0.5; v73 = v73 * 0.5)
        {
          v83 = 0;
          v110 = v108;
          v111 = v109;
          do
          {
            v110.f32[v83] = v110.f32[v83] + ((v106.f32[v83] - v110.f32[v83]) * ((v75 + v20) * 0.5));
            ++v83;
          }

          while (v83 != 3);
          v84 = 0;
          v99 = v110;
          v100 = v111;
          do
          {
            v110.f32[v84] = v99.f32[v84] - *&v35[v84 * 4];
            ++v84;
          }

          while (v84 != 3);
          v85 = 0;
          v86 = 0.0;
          do
          {
            v86 = v86 + (v110.f32[v85] * v110.f32[v85]);
            ++v85;
          }

          while (v85 != 3);
          if (v86 < v33)
          {
            v75 = (v75 + v20) * 0.5;
          }

          else
          {
            v20 = (v75 + v20) * 0.5;
          }
        }

        v87 = 0;
        *(this + 191) = v20;
        v110 = v108;
        v111 = v109;
        do
        {
          v110.f32[v87] = v110.f32[v87] + ((v106.f32[v87] - v110.f32[v87]) * v20);
          ++v87;
        }

        while (v87 != 3);
        v88 = v111;
        *(this + 2) = v110;
        *(this + 6) = v88;
        v22 = *(this + 178);
        v23 = *(this + 179);
        *(this + 12) = v22 + ((v23 - v22) * v20);
        for (kk = 175; kk != 178; ++kk)
        {
          v90 = v11[3];
          v91 = *v11++;
          v110.f32[kk - 175] = v90 - v91;
        }

        v92 = 0;
        v28 = 0.0;
        do
        {
          v28 = v28 + (v110.f32[v92] * v110.f32[v92]);
          ++v92;
        }

        while (v92 != 3);
        goto LABEL_32;
      }
    }
  }

  v19 = 0;
  v20 = v15 / v14;
  *(this + 191) = v15 / v14;
  v110 = v108;
  v111 = v109;
  do
  {
    v110.f32[v19] = v110.f32[v19] + ((v106.f32[v19] - v110.f32[v19]) * v20);
    ++v19;
  }

  while (v19 != 3);
  v21 = v111;
  *(this + 2) = v110;
  *(this + 6) = v21;
  v22 = *(this + 178);
  v23 = *(this + 179);
  *(this + 12) = v22 + ((v23 - v22) * v20);
  for (mm = 175; mm != 178; ++mm)
  {
    v25 = v11[3];
    v26 = *v11++;
    v110.f32[mm - 175] = v25 - v26;
  }

  v27 = 0;
  v28 = 0.0;
  do
  {
    v28 = v28 + (v110.f32[v27] * v110.f32[v27]);
    ++v27;
  }

  while (v27 != 3);
LABEL_32:
  v29 = v22 - v23;
  v30 = sqrtf(v28);
  v31 = 1.0 / sqrtf(v28 + (v29 * v29));
  *(this + 10) = v31 * v29;
  *(this + 11) = v31 * v30;
  *(this + 10) = v20 < 0.0 || v20 > 1.0;
}

void md::RouteSimplifier::simplifiedRibbonIndices(uint64_t a1, void *a2, int a3, int a4, std::vector<unsigned int> *a5, double a6)
{
  v41 = a2;
  if (![v41 pointCount])
  {
    goto LABEL_10;
  }

  v13 = *(a1 + 16);
  v11 = a1 + 16;
  v12 = v13;
  v14 = log2(*(v11 + 16) * a6);
  if (!v13)
  {
    goto LABEL_10;
  }

  v15 = v11;
  do
  {
    v16 = *(v12 + 32);
    v17 = v16 >= v41;
    v18 = v16 < v41;
    if (v17)
    {
      v15 = v12;
    }

    v12 = *(v12 + 8 * v18);
  }

  while (v12);
  if (v15 != v11 && *(v15 + 32) <= v41)
  {
    v19 = *(v15 + 40);
    v20 = (0.5 - v14);
    v43 = a4;
    v44 = a3;
    a5->__end_ = a5->__begin_;
    v21 = (*(v19 + 8) - *v19);
    std::vector<unsigned int>::reserve(a5, (v21 + *(*(v19 + 96) + 4 * (0.5 - v14)) * (a4 - a3 + 1) - 1) / v21 + 2);
    std::vector<unsigned int>::push_back[abi:nn200100](a5, &v44);
    v22 = a3 + 1;
    v23 = a4 - 1;
    if (*(v19 + 24) >= v20)
    {
      v24 = *(v19 + 56);
      v25 = *(v19 + 64);
      if (v25 != v24)
      {
        v26 = (v25 - v24) >> 2;
        v27 = *(v19 + 56);
        v28 = v26;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[4 * (v28 >> 1)];
          v32 = *v30;
          v31 = (v30 + 1);
          v28 += ~(v28 >> 1);
          if (v32 < v22)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
        v33 = *(v19 + 56);
        do
        {
          v34 = v26 >> 1;
          v35 = &v33[4 * (v26 >> 1)];
          v37 = *v35;
          v36 = (v35 + 1);
          v26 += ~(v26 >> 1);
          if (v23 < v37)
          {
            v26 = v34;
          }

          else
          {
            v33 = v36;
          }
        }

        while (v26);
        if (v27 != v25)
        {
          v38 = (v27 - v24) >> 2;
          v39 = (v33 - v24 + 0x3FFFFFFFCLL) >> 2;
          while (v38 <= v39)
          {
            v40 = v38;
            if (*(*(v19 + 32) + v38) <= v20)
            {
              std::vector<unsigned int>::push_back[abi:nn200100](a5, (*(v19 + 56) + 4 * v38));
            }

            LODWORD(v38) = v40 + 1;
          }
        }
      }
    }

    else
    {
      while (1)
      {
        v42 = v22;
        if (v22 > v23)
        {
          break;
        }

        if (*(*v19 + v22) <= v20)
        {
          std::vector<unsigned int>::push_back[abi:nn200100](a5, &v42);
        }

        ++v22;
      }
    }

    if (a4 != a3)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a5, &v43);
    }
  }

  else
  {
LABEL_10:
    a5->__end_ = a5->__begin_;
  }
}

__n128 md::PolylinePixelHiker::resetPosition(md::PolylinePixelHiker *this, double a2)
{
  *(this + 192) = 0;
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 376), a2);
  v4 = *(this + 47);
  v3 = *(this + 48);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 68) = v4;
  v5 = *(this + 69);
  *(this + 69) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(this + 35) = *(this + 392);
  result = *(this + 404);
  *(this + 572) = result;
  *(this + 8) = 1;
  return result;
}

float md::PolylinePixelHiker::enablePathRetraceCheck(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a1 + 772) = 1;
  do
  {
    result = *(a2 + v2);
    *(a1 + 744 + v2) = result;
    v2 += 4;
  }

  while (v2 != 12);
  return result;
}

uint64_t md::LabelLinePosition::moveToPreviousPoint(md::LabelLinePosition *this)
{
  result = md::LabelLinePosition::getPointCoordinateAtOffset(this, -1, this + 32);
  if (result)
  {
    v3 = *(this + 16);
    v4 = *(*(this + 2) + 8);
    v5 = *(*(this + 2) + 16) - v4;
    v6 = v4 + 16 * v3;
    if (v3 >= v5 >> 4)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *(this + 3) = v6;
  return result;
}

uint64_t md::PolylinePixelHiker::moveAlongEdgeInDirection(md::PolylinePixelHiker *this, int a2, md::LabelPoint *a3)
{
  v5 = (this + 544);
  if (a2)
  {
    md::LabelLinePosition::moveToNextPoint(v5);
    result = md::LabelLinePosition::pointAtOffset((this + 544), 1);
    if (!result)
    {
      return result;
    }

    for (i = 0; i != 24; i += 8)
    {
      *(a3 + i) = *(result + i);
    }
  }

  else
  {
    md::LabelLinePosition::moveToPreviousPoint(v5);
    result = md::LabelLinePosition::pointExists((this + 544));
    if (!result)
    {
      return result;
    }

    result = (*(***(this + 71) + 24))(**(this + 71), *(this + 289));
    for (j = 0; j != 24; j += 8)
    {
      *(a3 + j) = *(result + j);
    }
  }

  *(a3 + 3) = *(result + 24);
  *(a3 + 4) = *(result + 32);
  v9 = *(result + 40);
  *(a3 + 43) = *(result + 43);
  *(a3 + 10) = v9;
  return 1;
}

double md::RouteSimplifier::worldPointForPolylineCoordinate(md::RouteSimplifier *this, const GEOComposedRoute *a2, const PolylineCoordinate *a3)
{
  v5 = a2;
  v6 = 0.0;
  if ([(GEOComposedRoute *)v5 pointCount])
  {
    v7 = *(this + 2);
    if (v7)
    {
      v8 = (this + 16);
      do
      {
        v9 = v7[4];
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v8 = v7;
        }

        v7 = v7[v11];
      }

      while (v7);
      if (v8 != (this + 16) && v8[4] <= v5)
      {
        v12 = v8[5];
        [*(v12 + 88) pointAtRouteCoordinate:*a3];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = *(v12 + 80);
        v20 = *v19;
        v21 = *(v19 + 8);
        if (v20 == v21)
        {
          goto LABEL_18;
        }

        while (*v20 != 0xAB4154EC82453679)
        {
          v20 += 5;
          if (v20 == v21)
          {
            goto LABEL_18;
          }
        }

        if (v20 == v21)
        {
LABEL_18:
          v24 = 0;
        }

        else
        {
          v24 = v20[3];
          v23 = v20[4];
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v23);
          }
        }

        *v31 = v14;
        *&v31[1] = v16;
        *&v31[2] = v18;
        v25 = (*(*v24 + 16))(v24, v31, this + 48);
        v26 = *&v25;
        if ((v25 & 0x100000000) == 0)
        {
          v27 = v18;
          v26 = v27;
        }

        v28 = *(this + 11) + v26 * *(this + 10);
        if (*(v12 + 128) == 1)
        {
          v29 = __sincos_stret(v14 * 0.0174532925);
          v6 = (v28 + 6378137.0 / sqrt(v29.__sinval * v29.__sinval * -0.00669437999 + 1.0)) * v29.__cosval * __sincos_stret(v16 * 0.0174532925).__cosval;
        }

        else
        {
          v30 = tan(v14 * 0.00872664626 + 0.785398163);
          v6 = v16 * 0.00277777778 + 0.5;
          log(v30);
        }
      }
    }
  }

  return v6;
}

uint64_t md::StandardRouteElevationSource::elevationForCoordinate(uint64_t a1, double *a2)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a2[2];
  v4 = +[VKSharedResourcesManager sharedResources];
  Undulation = md::GeoidModel::getUndulation([v4 undulationModel], *a2, a2[1]);
  v6 = *&Undulation;
  if (!HIDWORD(Undulation))
  {
    v6 = 0.0;
  }

  *&v7 = v6 + v3;

  return v7 | 0x100000000;
}

float gm::Matrix<float,3,1>::normalized<int,void>(uint64_t a1)
{
  v1 = 0;
  v2 = 0.0;
  do
  {
    v2 = v2 + (*(a1 + v1) * *(a1 + v1));
    v1 += 4;
  }

  while (v1 != 12);
  v3 = 0;
  v4 = 1.0 / sqrtf(v2);
  do
  {
    *(&v6 + v3) = *(a1 + v3) * v4;
    v3 += 4;
  }

  while (v3 != 12);
  return v6;
}

uint64_t md::GeoidModel::getUndulation(md::GeoidModel *this, double a2, double a3)
{
  v3 = *this;
  if (*this == *(this + 1))
  {
    goto LABEL_9;
  }

  v4 = *(this + 8);
  if (v4 >= a2)
  {
    a2 = v4 + 1.0e-12;
  }

  if (a2 <= v4 || (v5 = *(this + 9), a2 > v5) || (v6 = a3 + floor(a3 * 0.00277777778) * -360.0, v7 = *(this + 10), v6 < v7) || v6 >= *(this + 11))
  {
LABEL_9:
    v18 = 0;
    v17 = 0;
  }

  else
  {
    v8 = v6;
    v9 = (v8 - v7) / *(this + 13);
    v10 = a2;
    v11 = (v5 - v10) / *(this + 12);
    v12 = vcvtms_s32_f32(v9);
    v13 = v9 - floorf(v9);
    v14 = *(this + 7);
    v15 = v12 + v14 * vcvtms_s32_f32(v11);
    v16 = *(v3 + 2 * v15) + ((*(v3 + 2 * v15 + 2) - *(v3 + 2 * v15)) * v13);
    v17 = COERCE_UNSIGNED_INT(*(this + 14) + ((v16 + ((truncf(*(v3 + 2 * (v15 + v14)) + (v13 * (*(v3 + 2 * (v15 + v14) + 2) - *(v3 + 2 * (v15 + v14))))) - v16) * (v11 - floorf(v11)))) * *(this + 15)));
    v18 = 0x100000000;
  }

  return v17 | v18;
}

void md::PolylinePixelHiker::~PolylinePixelHiker(md::PolylinePixelHiker *this)
{
  *this = &unk_1F2A165A8;
  v2 = *(this + 69);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 41) = &unk_1F2A168B0;
  v3 = *(this + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A165A8;
  v2 = *(this + 69);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 41) = &unk_1F2A168B0;
  v3 = *(this + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *std::vector<md::PolylineCollider::VertexType>::__emplace_back_slow_path<md::PolylineCollider::VertexType const&>(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = v4 - v3;
  v7 = v6 + 1;
  if ((v6 + 1) >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 2 > v7)
  {
    v7 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = (8 * v6);
  v11 = &v10[-(v4 - v3)];
  *v10 = *a2;
  v12 = v10 + 1;
  if (v3 != v4)
  {
    v13 = v11;
    do
    {
      v14 = *v3++;
      *v13++ = v14;
    }

    while (v3 != v4);
    v3 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v12;
}

uint64_t md::CurvedTextLabelPart::updateTextLayoutOptions(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char *a7, char *a8)
{
  v8 = 0;
  v9 = 0.0;
  do
  {
    v9 = v9 + (*(a4 + v8) * *(a2 + v8));
    v8 += 4;
  }

  while (v8 != 12);
  v10 = v9;
  if (a5 == 2)
  {
    v11 = 0;
    v12 = 0.0;
    do
    {
      v12 = v12 + (*(a4 + v11) * *(a3 + v11));
      v11 += 4;
    }

    while (v11 != 12);
    v10 = -v12;
  }

  if (a6 == 1)
  {
    if (v10 >= -0.01)
    {
      goto LABEL_13;
    }

    v13 = 2;
  }

  else
  {
    if (v10 <= 0.01)
    {
      goto LABEL_13;
    }

    v13 = 1;
  }

  *a8 = v13;
LABEL_13:
  if (!result)
  {
    return result;
  }

  v14 = fabsf(v9);
  if (a5 == 1)
  {
    if (v14 >= 0.69711)
    {
      return result;
    }

    v15 = 2;
  }

  else
  {
    if (v14 <= 0.71711)
    {
      return result;
    }

    v15 = 1;
  }

  *a7 = v15;
  return result;
}

float md::CurvedTextLabelPart::hikerWidth(uint64_t a1, int a2)
{
  v4 = 0x8000007F7FFFFFLL;
  v2 = md::CurvedTextLabelPart::populateQuadOffsets(a1, a2, 0, 0, &v4);
  result = *(&v4 + 1) - *&v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

uint64_t md::LineTextWithAuxLabelPart::updateLayoutOffsets(uint64_t a1, uint64_t a2)
{
  v4 = **(a1 + 576);
  v5 = (*(*v4 + 344))(v4);
  (*(**(*(a1 + 576) + 8) + 344))();
  v7 = 664;
  if (!a2)
  {
    v7 = 632;
  }

  v8 = a1 + v7;
  v9 = *v8 + v5;
  v10 = v9 + v6;
  v11 = *(v8 + 25);
  v12 = *(v8 + 8);
  v13 = (*(*v12 + 80))(v12);
  v15 = v12[45];
  if (v12[45])
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v15 == 2)
  {
    v16 = 0;
  }

  if (v13)
  {
    LOBYTE(v15) = v16;
  }

  v17 = 0.0;
  if (v15)
  {
    v14.n128_f32[0] = -v10;
    if (v11)
    {
      v14.n128_f32[0] = 0.0;
    }

    v18 = -0.5;
    if (v11)
    {
      v18 = 0.5;
    }

    v19 = v18 * v10;
    if (v15 == 1)
    {
      v17 = v19;
    }

    if (v15 == 2)
    {
      v10 = v14.n128_f32[0];
    }

    else
    {
      v10 = v17;
    }
  }

  else if (!v11)
  {
    v10 = 0.0;
  }

  (*(*v4 + 392))(v4, a2, v10, v14);
  v20.n128_f32[0] = -v9;
  if (!v11)
  {
    v20.n128_f32[0] = v9;
  }

  v20.n128_f32[0] = v10 + v20.n128_f32[0];
  v21 = *(**(*(a1 + 576) + 8) + 392);

  return v21(v20);
}

uint64_t md::CurvedTextLabelPart::populateQuadOffsets(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float *a5)
{
  v5 = 592;
  if (!a2)
  {
    v5 = 576;
  }

  v6 = *(a1 + v5);
  v7 = *(v6 + 64);
  v8 = *(v6 + 72) - v7;
  if (!v8)
  {
    return 0;
  }

  v9 = **(v6 + 32);
  if (!v9 || *(v9 + 62) != 1)
  {
    return 0;
  }

  v13 = v8 >> 6;
  v14 = 628;
  if (a2 == 1)
  {
    v14 = 748;
  }

  v15 = 20;
  if (a2 == 1)
  {
    v15 = 68;
  }

  v16 = *(*(a1 + 32) + v15) * *(a1 + v14);
  v17 = 1168;
  if (!a2)
  {
    v17 = 976;
  }

  v18 = (a1 + v17);
  v19 = v16 / *(v9 + 48);
  if (*(a1 + v17 + 181) == 2)
  {
    v20 = v16 * 0.5;
    v21 = v19 * 0.5;
    if (v13 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v8 >> 6;
    }

    v23 = (a3 + 4);
    v24 = 0.0;
    v25 = -3.4028e38;
    v26 = 3.4028e38;
    v27 = 0.0;
    do
    {
      v28 = **v7;
      if (v28 && *(v28 + 62) == 1)
      {
        if (*(v28 + 60))
        {
          v29 = (v21 * v7[14]) * (*(v28 + 40) - *(v28 + 32));
          v30 = fmaxf(v20, v29);
        }

        else
        {
          v29 = v21 * (*(v28 + 44) - *(v28 + 36));
          v30 = v20;
        }

        v24 = (v24 + v27) + v30;
        if (a3 != a4)
        {
          *(v23 - 1) = v24;
          *v23 = 0.0;
        }

        v26 = fminf(v26, v24 - v29);
        v25 = fmaxf(v25, v24 + v29);
      }

      else
      {
        v30 = v27;
      }

      v23 += 2;
      v7 += 16;
      v27 = v30;
      --v22;
    }

    while (v22);
  }

  else
  {
    if (v13 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v8 >> 6;
    }

    v33 = (a3 + 4);
    v34 = v7 + 14;
    v25 = -3.4028e38;
    v26 = 3.4028e38;
    do
    {
      v35 = *(v34 - 7);
      v36 = *(v34 - 3);
      v37 = *v34;
      if (a3 != a4)
      {
        v38 = *(v34 - 2);
        *(v33 - 1) = v36;
        *v33 = v38;
      }

      v39 = *v35;
      if (v39 && *(v39 + 62) == 1)
      {
        v40 = v37 * v19;
        v26 = fminf(v26, v36 + (*(v39 + 32) * v40));
        v25 = fmaxf(v25, v36 + (*(v39 + 40) * v40));
      }

      v33 += 2;
      v34 += 16;
      --v32;
    }

    while (v32);
  }

  if (v8 != 64 && (*(a1 + 1448) & 1) != 0)
  {
    v41 = v18[47];
    if (v41 > 0.0)
    {
      v42 = *(a1 + 1440);
      v43 = (v26 - v25) + v42 * 409.600006 * exp2f(*v18) * v18[9];
      if (v43 > 0.0)
      {
        v44 = *(v6 + 16);
        if (*(*v44 + 131) == 1)
        {
          v45 = (v13 - 1);
          v46 = fminf(v43 / v45, v41);
          if (a3 != a4 && v13 >= 2)
          {
            v47 = (a3 + 8);
            for (i = 1; i != v13; ++i)
            {
              *v47 = *v47 + (v46 * i);
              v47 += 2;
            }
          }

LABEL_48:
          v25 = v25 + (v46 * v45);
          goto LABEL_56;
        }

        if (*(*v44 + 132) == 1)
        {
          v49 = *(v44 + 127);
          if (v49 >= 2)
          {
            v45 = (v49 - 1);
            v46 = fminf(v43 / v45, v41);
            if (a3 != a4 && v13 >= 2)
            {
              v50 = 0;
              v51 = *(v44 + 56);
              v52 = v13 - 1;
              v53 = (a3 + 8);
              v54 = (v51 + 69);
              do
              {
                v55 = *v54;
                v54 += 40;
                v50 += v55;
                *v53 = *v53 + (v46 * v50);
                v53 += 2;
                --v52;
              }

              while (v52);
            }

            goto LABEL_48;
          }
        }
      }
    }
  }

LABEL_56:
  if (a3 != a4)
  {
    v56 = a3 + 8 * v13;
    *v56 = v25;
    *(v56 + 4) = 0;
  }

  *a5 = v26;
  a5[1] = v25;
  return 1;
}

uint64_t md::CurvedTextLabelPart::setLayoutStartOffset(uint64_t result, int a2, float a3)
{
  v3 = 1168;
  if (!a2)
  {
    v3 = 976;
  }

  v4 = result + v3;
  if (*(v4 + 28) != a3)
  {
    *(v4 + 28) = a3;
    *(v4 + 179) = 1;
  }

  return result;
}

uint64_t md::MultipleShieldLabelPart::setLayoutStartOffset(uint64_t result, int a2, float a3)
{
  v3 = 664;
  if (!a2)
  {
    v3 = 632;
  }

  *(result + v3 + 20) = a3;
  return result;
}

uint64_t md::CurvedTextLabelPart::setLayoutInReverse(uint64_t result, int a2, char a3)
{
  v3 = 1168;
  if (!a2)
  {
    v3 = 976;
  }

  *(result + v3 + 183) = a3;
  return result;
}

uint64_t md::MultipleShieldLabelPart::setUseExternalLayoutOptions(uint64_t result, int a2, char a3)
{
  v3 = 664;
  if (!a2)
  {
    v3 = 632;
  }

  *(result + v3 + 30) = a3;
  return result;
}

uint64_t md::MultipleShieldLabelPart::setLayoutInReverse(uint64_t result, int a2, char a3)
{
  v3 = 664;
  if (!a2)
  {
    v3 = 632;
  }

  *(result + v3 + 29) = a3;
  return result;
}

uint64_t md::MultipleShieldLabelPart::placeShieldsOnPath(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x2_t *a6, uint64_t a7)
{
  v11 = 664;
  if (!a2)
  {
    v11 = 632;
  }

  v12 = a1 + v11;
  Hiker = md::LabelPart::createHiker(v80, a1, a2, *(a1 + v11), a3);
  v14 = v80[0];
  (*(**&v80[0] + 88))(*&v80[0], Hiker);
  if ((*(*&v14 + 9) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (*(v12 + 30) == 1)
  {
    *(*&v14 + 11) = *(v12 + 29);
    *(*&v14 + 8) = 1;
    (*(**&v14 + 56))(COERCE_DOUBLE(*&v14), *(v12 + 20));
    (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
    if ((*(*&v14 + 10) & 1) != 0 || ((*(**&v14 + 88))(COERCE_DOUBLE(*&v14)), (*(*&v14 + 9) & 1) == 0))
    {
LABEL_7:
      v15 = 9;
LABEL_8:
      (*(**&v14 + 8))(COERCE_DOUBLE(*&v14));
      return v15;
    }
  }

  else
  {
    (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
    *(*&v14 + 11) = *(*&v14 + 28) <= 0.0;
    *(*&v14 + 8) = 1;
    (*(*a1 + 344))(a1, a2);
    if (*(v12 + 28) == 2)
    {
      v17.n128_f32[0] = -v17.n128_f32[0];
    }

    else
    {
      if (*(v12 + 28))
      {
        goto LABEL_15;
      }

      v17.n128_f32[0] = v17.n128_f32[0] * -0.5;
    }

    (*(**&v14 + 32))(COERCE_DOUBLE(*&v14), v17);
  }

LABEL_15:
  memset(&v79[8], 0, 32);
  memset(&v78[8], 0, 72);
  *v78 = 0x3FF0000000000000;
  *&v78[40] = 0x3FF0000000000000;
  *v79 = 0x3FF0000000000000;
  *&v79[40] = 0x3FF0000000000000;
  if (*(a1 + 565) == 1)
  {
    v18 = 0;
    v19 = *(a3 + 328);
    v73 = 0;
    v76 = 0;
    v75 = 0uLL;
    v72 = 0uLL;
    v71 = v19;
    v74 = v19;
    v77 = v19;
    v20 = *(a1 + 16);
    v21 = &v62;
    v22 = &v71;
    do
    {
      v23 = 0;
      v24 = v21;
      do
      {
        *v24 = v22[v23];
        v24 += 8;
        v23 += 3;
      }

      while (v23 != 9);
      ++v18;
      v21 += 2;
      ++v22;
    }

    while (v18 != 3);
    v25 = 0;
    v26 = 408;
    if (!a2)
    {
      v26 = 616;
    }

    v27 = (v20 + v26);
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = *v27;
    v69 = *(v27 + 2);
    v70 = 0x3FF0000000000000;
    v28 = (a3 + 864);
    do
    {
      v29 = 0;
      v30 = &v62;
      do
      {
        v31 = 0;
        v32 = 0.0;
        v33 = v28;
        do
        {
          v34 = *v33;
          v33 += 4;
          v32 = v32 + *&v30[v31] * v34;
          v31 += 2;
        }

        while (v31 != 8);
        *(&v61[2 * v29++] + v25) = v32;
        v30 += 8;
      }

      while (v29 != 4);
      ++v25;
      ++v28;
    }

    while (v25 != 4);
    *&v78[64] = v61[4];
    *v79 = v61[5];
    *&v79[16] = v61[6];
    *&v79[32] = v61[7];
    *v78 = v61[0];
    *&v78[16] = v61[1];
    *&v78[32] = v61[2];
    *&v78[48] = v61[3];
  }

  v35 = *(a1 + 584) - *(a1 + 576);
  if (v35)
  {
    v55 = v12;
    v56 = a6;
    v36 = 0;
    v37 = v35 >> 3;
    if (v37 <= 1)
    {
      v37 = 1;
    }

    v59 = v37;
    do
    {
      v38 = *(*(a1 + 576) + 8 * v36);
      if ((*(*v38 + 744))(v38, a2))
      {
        v39 = (*(*v38 + 344))(v38, a2) * 0.5;
        (*(**&v14 + 40))(COERCE_DOUBLE(*&v14), v39);
        (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
        if (*(*&v14 + 9) != 1)
        {
          goto LABEL_7;
        }

        (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
        if (*(*&v14 + 10))
        {
          goto LABEL_7;
        }

        if (*(a1 + 565) == 1)
        {
          (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
          v40 = 0;
          *&v61[0] = *(*&v14 + 16);
          DWORD2(v61[0]) = *(*&v14 + 24);
          do
          {
            *(&v62 + v40) = *(v61 + v40);
            ++v40;
          }

          while (v40 != 3);
          v41.f64[0] = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v78, &v62);
          v41.f64[1] = v42;
          v43 = vcvt_f32_f64(v41);
        }

        else
        {
          (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
          v43 = *(*&v14 + 16);
          (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
          v44 = -*(*&v14 + 28);
          v62 = *(*&v14 + 32);
          v63 = v44;
          (*(*v38 + 168))(v38, a2, &v62);
        }

        *&v61[0] = vsub_f32(v43, *a6);
        v45 = *v38;
        if (a2)
        {
          (*(v45 + 120))(v38, a4, a5, a6, v61);
          v46 = 39;
        }

        else
        {
          v15 = (*(v45 + 80))(v38, a4, a6, v61);
          if (v15 != 37)
          {
            goto LABEL_50;
          }

          v46 = 9;
        }

        a6 = v56;
        v71 = vsub_f32(v43, *v56);
        v47 = gm::Box<float,2>::operator+(&v38[v46], &v71);
        v48 = 0;
        v62 = v47;
        v63 = v49;
        v64[0] = v50;
        v64[1] = v51;
        v52 = &v62;
        v53 = 1;
        do
        {
          v54 = v53;
          *(a7 + 4 * v48) = fminf(*v52, *(a7 + 4 * v48));
          *(a7 + 8 + 4 * v48) = fmaxf(*(a7 + 8 + 4 * v48), *&v64[v48]);
          v52 = &v63;
          v48 = 1;
          v53 = 0;
        }

        while ((v54 & 1) != 0);
        (*(**&v14 + 40))(COERCE_DOUBLE(*&v14), *(v55 + 16) + v39);
      }

      ++v36;
    }

    while (v36 != v59);
  }

  v15 = 37;
LABEL_50:
  if (v14 != 0.0)
  {
    goto LABEL_8;
  }

  return v15;
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

uint64_t md::MultipleShieldLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, float32x2_t *a3)
{
  v6 = *(a2 + 424);
  if ((*(a1 + 662) & 1) == 0 && (*(**(a1 + 632) + 168))(*(a1 + 632), *(*(a1 + 32) + 16)) && (*(**(a1 + 632) + 176))(*(a1 + 632), *(*(a1 + 32) + 16), 1.0))
  {
    *(a1 + 696) = 1;
  }

  v9 = xmmword_1B33B0730;
  v7 = md::MultipleShieldLabelPart::placeShieldsOnPath(a1, 0, v6, a2, 0, a3, &v9);
  md::CollisionObject::resetWithRects((a1 + 72), 1u);
  md::CollisionObject::addRect(a1 + 72, &v9);
  *(a1 + 280) = a3->i32[0];
  *(a1 + 284) = a3->i32[1];
  *(a1 + 104) = a3->i32[0];
  *(a1 + 108) = a3->i32[1];
  md::CollisionObject::setupShapeData(a1 + 72);
  return v7;
}

uint64_t md::PolylineCollider::buildTopDownAABBTree(uint64_t result, unsigned int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v6 = result;
  while (1)
  {
    v7 = xmmword_1B33B0730;
    v8 = a4 - a3;
    if (a4 != a3)
    {
      v9 = a3;
      v7 = xmmword_1B33B0730;
      do
      {
        v10 = *v9++;
        v11 = (v6[3] + 8 * v10);
        v12.i64[0] = *v11;
        v13.i64[0] = v11[1];
        v14.i64[0] = *v11;
        v15.i64[0] = v7.i64[0];
        v15.i64[1] = *v11;
        v12.i64[1] = vextq_s8(v7, v7, 8uLL).u64[0];
        v14.i64[1] = *v11;
        v16 = vbslq_s8(vcgtq_f32(v15, v12), v14, v7);
        v12.i64[0] = v13.i64[0];
        v12.i64[1] = v13.i64[0];
        v14.i64[0] = v16.i64[0];
        v14.i64[1] = v13.i64[0];
        v13.i64[1] = vextq_s8(v16, v16, 8uLL).u64[0];
        v7 = vbslq_s8(vcgtq_f32(v14, v13), v12, v16);
      }

      while (v9 != a4);
    }

    v17 = *v6 + 32 * a2;
    *(v17 + 4) = v7;
    v18 = v8 >> 1;
    if ((v8 & 0x1FFFFFFFCLL) == 0)
    {
      break;
    }

    v143 = a2;
    *(v17 + 2) = 1;
    *v17 = v18;
    *(v17 + 24) = 0;
    v19 = (a3 + (((v8 >> 1) + (v8 >> 63)) & 0xFFFFFFFFFFFFFFFELL));
    if (v19 != a4)
    {
      v21 = vmaxnm_f32(vsub_f32(*(v17 + 12), *(v17 + 4)), 0);
      v141 = a3 + (((v8 >> 1) + (v8 >> 63)) & 0xFFFFFFFFFFFFFFFELL);
      v142 = *&vcgt_f32(vdup_lane_s32(v21, 1), v21) & 1;
      v22 = a3;
      v23 = a4;
      v140 = a3;
      do
      {
        v24 = v23 - v22;
        if (v24 < 2)
        {
          break;
        }

        if (v24 == 3)
        {
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PolylineCollider::partitionSegments(std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,gm::Box<float,2> &)::$_0 &,std::__wrap_iter<unsigned short *>,0>(v22, v22 + 1, v23 - 1, v6[3], v142);
          v19 = v141;
          break;
        }

        if (v24 == 2)
        {
          v118 = *v22;
          v119 = v6[3];
          v120 = (v119 + 8 * *(v23 - 1));
          v145 = *v120;
          v121 = *(&v145 | (4 * v142));
          v144 = v120[1];
          v122 = (&v144 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v142 & 1)));
          v123 = (*v122 + v121) * 0.5;
          v124 = (v119 + 8 * v118);
          v145 = *v124;
          v125 = *(&v145 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v142 & 1)));
          v144 = v124[1];
          if (v123 < ((*v122 + v125) * 0.5))
          {
            v126 = *v22;
            *v22 = *(v23 - 1);
            *(v23 - 1) = v126;
          }

          break;
        }

        v25 = (&v145 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v142 & 1)));
        v26 = (&v144 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v142 & 1)));
        v27 = (&v144 | (4 * v142));
        if (v24 <= 7)
        {
          for (; v22 != v23 - 1; ++v22)
          {
            if (v22 != v23)
            {
              v127 = v22 + 1;
              if (v22 + 1 != v23)
              {
                v128 = v6[3];
                v129 = *v22;
                v130 = v22;
                v131 = v22 + 1;
                do
                {
                  v133 = *v131++;
                  v132 = v133;
                  v134 = (v128 + 8 * v133);
                  v145 = *v134;
                  v135 = *v25;
                  v144 = v134[1];
                  v136 = (*v26 + v135) * 0.5;
                  v137 = (v128 + 8 * v129);
                  v145 = *v137;
                  v138 = *v25;
                  v144 = v137[1];
                  if (v136 < ((*v27 + v138) * 0.5))
                  {
                    v129 = v132;
                    v130 = v127;
                  }

                  v127 = v131;
                }

                while (v131 != v23);
                if (v130 != v22)
                {
                  v139 = *v22;
                  *v22 = *v130;
                  *v130 = v139;
                }
              }
            }
          }

          break;
        }

        v28 = (v22 + (v24 & 0x7FFFFFFFFFFFFFFELL));
        v29 = v23 - 1;
        v30 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PolylineCollider::partitionSegments(std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,gm::Box<float,2> &)::$_0 &,std::__wrap_iter<unsigned short *>,0>(v22, v28, v23 - 1, v6[3], v142);
        v31 = *v28;
        v32 = v6[3];
        v33 = (v32 + 8 * *v22);
        v145 = *v33;
        v34 = *v25;
        v144 = v33[1];
        v35 = (*v26 + v34) * 0.5;
        v36 = (v32 + 8 * v31);
        v37 = *v36;
        v145 = *v36;
        v38 = (&v145 | (4 * v142));
        v39 = *v38;
        v40 = *(v36 + 2);
        v41 = *(v36 + 3);
        v144 = __PAIR64__(v41, v40);
        if (v35 >= ((*(&v144 + v142) + v39) * 0.5))
        {
          v42 = v23 - 2;
          v19 = v141;
          while (v42 != v22)
          {
            v43 = v42;
            v44 = *v42--;
            v45 = (v32 + 8 * v44);
            v145 = *v45;
            v46 = *v25;
            v144 = v45[1];
            v145 = v37;
            v47 = (*v26 + v46) * 0.5;
            v48 = *v38;
            v144 = __PAIR64__(v41, v40);
            if (v47 < ((*(&v144 + v142) + v48) * 0.5))
            {
              v49 = *v22;
              *v22 = *v43;
              *v43 = v49;
              if (v30)
              {
                v30 = 2;
              }

              else
              {
                v30 = 1;
              }

              v29 = v43;
              goto LABEL_22;
            }
          }

          v83 = v22 + 1;
          v84 = *v29;
          v85 = (v32 + 8 * *v22);
          v145 = *v85;
          v86 = *v25;
          v144 = v85[1];
          v87 = (*v26 + v86) * 0.5;
          v88 = (v32 + 8 * v84);
          v145 = *v88;
          v89 = *v25;
          v144 = v88[1];
          if (v87 >= ((*v27 + v89) * 0.5))
          {
            a3 = v140;
            if (v83 == v29)
            {
              break;
            }

            while (1)
            {
              v98 = *v83;
              v99 = (v32 + 8 * *v22);
              v145 = *v99;
              v100 = *v25;
              v144 = v99[1];
              v101 = (*v26 + v100) * 0.5;
              v102 = (v32 + 8 * v98);
              v145 = *v102;
              v103 = *v25;
              v144 = v102[1];
              if (v101 < ((*v27 + v103) * 0.5))
              {
                break;
              }

              if (++v83 == v29)
              {
                goto LABEL_7;
              }
            }

            v104 = *v83;
            *v83++ = *v29;
            *v29 = v104;
          }

          else
          {
            a3 = v140;
          }

          if (v83 == v29)
          {
            break;
          }

          while (1)
          {
            do
            {
              v75 = v83;
              v106 = (v32 + 8 * *v22);
              v107 = *v83++;
              v145 = *v106;
              v108 = *v25;
              v144 = v106[1];
              v109 = *v26 + v108;
              v110 = (v32 + 8 * v107);
              v145 = *v110;
              v111 = *v25;
              v144 = v110[1];
            }

            while ((v109 * 0.5) >= ((*v27 + v111) * 0.5));
            do
            {
              v112 = (v32 + 8 * *v22);
              v113 = *--v29;
              v145 = *v112;
              v114 = *v25;
              v144 = v112[1];
              v115 = *v26 + v114;
              v116 = (v32 + 8 * v113);
              v145 = *v116;
              v117 = *v25;
              v144 = v116[1];
            }

            while ((v115 * 0.5) < ((*v27 + v117) * 0.5));
            if (v75 >= v29)
            {
              break;
            }

            v105 = *v75;
            *v75 = *v29;
            *v29 = v105;
          }

          if (v75 > v141)
          {
            break;
          }
        }

        else
        {
          v19 = v141;
LABEL_22:
          v50 = v22 + 1;
          if (v22 + 1 >= v29)
          {
            v52 = v22 + 1;
          }

          else
          {
            v51 = v22 + 1;
            while (1)
            {
              do
              {
                v52 = v51;
                v53 = *v51++;
                v54 = (v32 + 8 * v53);
                v55 = *v28;
                v145 = *v54;
                v56 = *v25;
                v144 = v54[1];
                v57 = *v26 + v56;
                v58 = (v32 + 8 * v55);
                v145 = *v58;
                v59 = *v25;
                v144 = v58[1];
              }

              while ((v57 * 0.5) < ((*v27 + v59) * 0.5));
              do
              {
                v60 = *--v29;
                v61 = (v32 + 8 * v60);
                v62 = *v28;
                v145 = *v61;
                v63 = *v25;
                v144 = v61[1];
                v64 = *v26 + v63;
                v65 = (v32 + 8 * v62);
                v145 = *v65;
                v66 = *v25;
                v144 = v65[1];
              }

              while ((v64 * 0.5) >= ((*v27 + v66) * 0.5));
              if (v52 >= v29)
              {
                break;
              }

              v67 = *v52;
              *v52 = *v29;
              *v29 = v67;
              ++v30;
              if (v28 == v52)
              {
                v28 = v29;
              }
            }
          }

          if (v52 != v28)
          {
            v68 = *v52;
            v69 = (v32 + 8 * *v28);
            v145 = *v69;
            v70 = *v25;
            v144 = v69[1];
            v71 = (*v26 + v70) * 0.5;
            v72 = (v32 + 8 * v68);
            v145 = *v72;
            v73 = *v25;
            v144 = v72[1];
            if (v71 < ((*v27 + v73) * 0.5))
            {
              v74 = *v52;
              *v52 = *v28;
              *v28 = v74;
              ++v30;
            }
          }

          a3 = v140;
          if (v52 == v19)
          {
            break;
          }

          if (!v30)
          {
            if (v52 <= v19)
            {
              v90 = v52 + 1;
              while (v90 != v23)
              {
                v91 = *(v90 - 1);
                v92 = v6[3];
                v93 = (v92 + 8 * *v90);
                v145 = *v93;
                v94 = *v25;
                v144 = v93[1];
                v95 = (*v26 + v94) * 0.5;
                v96 = (v92 + 8 * v91);
                v145 = *v96;
                v97 = *v25;
                v144 = v96[1];
                ++v90;
                if (v95 < ((*v27 + v97) * 0.5))
                {
                  goto LABEL_36;
                }
              }
            }

            else
            {
              while (v50 != v52)
              {
                v76 = *(v50 - 1);
                v77 = v6[3];
                v78 = (v77 + 8 * *v50);
                v145 = *v78;
                v79 = *v25;
                v144 = v78[1];
                v80 = (*v26 + v79) * 0.5;
                v81 = (v77 + 8 * v76);
                v145 = *v81;
                v82 = *v25;
                v144 = v81[1];
                ++v50;
                if (v80 < ((*v27 + v82) * 0.5))
                {
                  goto LABEL_36;
                }
              }
            }

            break;
          }

LABEL_36:
          if (v52 <= v19)
          {
            v75 = v52 + 1;
          }

          else
          {
            v23 = v52;
            v75 = v22;
          }
        }

        v22 = v75;
      }

      while (v23 != v19);
    }

LABEL_7:
    v20 = a3;
    a3 = v19;
    result = md::PolylineCollider::buildTopDownAABBTree(v6, (2 * v143) | 1, v20, v19);
    a2 = 2 * v143 + 2;
  }

  *(v17 + 2) = 2;
  *v17 = v18;
  *(v17 + 24) = a3;
  return result;
}

uint64_t md::MultipleShieldLabelPart::setAlignment(uint64_t result, int a2, char a3)
{
  v3 = 664;
  if (!a2)
  {
    v3 = 632;
  }

  *(result + v3 + 28) = a3;
  return result;
}

uint64_t md::PolylinePixelHiker::setBasePositionOffset(md::PolylinePixelHiker *this, __n128 a2)
{
  *(this + 189) = a2.n128_u32[0];
  if (*(this + 11))
  {
    a2.n128_f32[0] = -a2.n128_f32[0];
  }

  result = (*(*this + 40))(this, a2);
  *(this + 192) = 0;
  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PolylineCollider::partitionSegments(std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,gm::Box<float,2> &)::$_0 &,std::__wrap_iter<unsigned short *>,0>(_WORD *a1, _WORD *a2, _WORD *a3, uint64_t a4, int a5)
{
  v5 = *a2;
  v6 = *a1;
  v7 = (a4 + 8 * v5);
  v8 = *v7;
  v33 = *v7;
  v9 = *(&v33 + a5);
  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  v32 = __PAIR64__(v10, v11);
  v12 = *(&v32 + a5) + v9;
  v13 = (a4 + 8 * v6);
  v14 = *v13;
  v32 = v13[1];
  v33 = v14;
  v15 = *a3;
  v16 = (a4 + 8 * v15);
  if ((v12 * 0.5) < ((*(&v32 + a5) + *(&v33 + a5)) * 0.5))
  {
    v17 = *v16;
    v32 = v16[1];
    v33 = v17;
    *&v17 = (*(&v32 + a5) + *(&v33 + a5)) * 0.5;
    v33 = v8;
    v18 = *(&v33 + a5);
    v32 = __PAIR64__(v10, v11);
    if (*&v17 >= ((*(&v32 + a5) + v18) * 0.5))
    {
      *a1 = v5;
      *a2 = v6;
      v27 = *a3;
      v28 = (a4 + 8 * v27);
      v29 = *v28;
      v32 = v28[1];
      v33 = v29;
      *&v29 = (*(&v32 + a5) + *(&v33 + a5)) * 0.5;
      v30 = *v13;
      v32 = v13[1];
      v33 = v30;
      if (*&v29 >= ((*(&v32 + a5) + *(&v33 + a5)) * 0.5))
      {
        return 1;
      }

      *a2 = v27;
    }

    else
    {
      *a1 = v15;
    }

    *a3 = v6;
    return 1;
  }

  v19 = *v16;
  v32 = v16[1];
  v33 = v19;
  *&v19 = (*(&v32 + a5) + *(&v33 + a5)) * 0.5;
  v33 = v8;
  v20 = *(&v33 + a5);
  v32 = __PAIR64__(v10, v11);
  if (*&v19 < ((*(&v32 + a5) + v20) * 0.5))
  {
    *a2 = v15;
    *a3 = v5;
    v21 = *a2;
    v22 = *a1;
    v23 = (a4 + 8 * v21);
    v24 = *v23;
    v32 = v23[1];
    v33 = v24;
    *&v24 = (*(&v32 + a5) + *(&v33 + a5)) * 0.5;
    v25 = (a4 + 8 * v22);
    v26 = *v25;
    v32 = v25[1];
    v33 = v26;
    if (*&v24 < ((*(&v32 + a5) + *(&v33 + a5)) * 0.5))
    {
      *a1 = v21;
      *a2 = v22;
    }

    return 1;
  }

  return 0;
}

double md::CollisionObject::resetWithRects(void **this, unsigned int a2)
{
  md::CollisionObject::resetShapes(this, a2);
  v4 = this[21];
  if (v4)
  {
    free(v4);
    v5 = 0;
    this[21] = 0;
    *(this + 45) = 0;
  }

  else
  {
    v5 = *(this + 45);
  }

  if (v5 < a2)
  {
    free(this[20]);
    v6 = malloc_type_malloc(16 * a2, 0x1000040451B5BE8uLL);
    this[20] = v6;
    if (v6)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    *(this + 45) = v7;
  }

  *(this + 44) = 0;
  result = 1.40444743e306;
  *this = xmmword_1B33B0730;
  return result;
}

void md::LabelNavEtaLabeler::extractPolylineOverlayInfo(md::LabelNavEtaLabeler *this, VKRouteInfo *a2, float a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(this + 13);
    v22 = v5;
    v7 = [(VKRouteInfo *)v5 route];
    v8 = (*(*v6 + 56))(v6, v7);

    if (v8)
    {
      v9 = (*(**(this + 13) + 128))(*(this + 13), v8);
      v11 = (*(**(this + 13) + 72))(*(this + 13), v8, a3);
      v12 = *(this + 53);
      if (v12)
      {
        v10 = v22;
        while (1)
        {
          while (1)
          {
            v13 = v12;
            v14 = v12[4];
            if (v14 <= v22)
            {
              break;
            }

            v12 = *v13;
            v15 = v13;
            if (!*v13)
            {
              goto LABEL_13;
            }
          }

          if (v14 >= v22)
          {
            break;
          }

          v12 = v13[1];
          if (!v12)
          {
            v15 = v13 + 1;
            goto LABEL_13;
          }
        }

        v19 = v13;
      }

      else
      {
        v15 = (this + 424);
        v13 = (this + 424);
LABEL_13:
        v16 = mdm::zone_mallocator::instance(v10);
        v17 = pthread_rwlock_rdlock((v16 + 32));
        if (v17)
        {
          geo::read_write_lock::logFailure(v17, "read lock", v18);
        }

        v19 = malloc_type_zone_malloc(*v16, 0x30uLL, 0x10E00400C95DC9AuLL);
        atomic_fetch_add((v16 + 24), 1u);
        geo::read_write_lock::unlock((v16 + 32));
        v19[4] = v22;
        v19[5] = 0;
        *v19 = 0;
        v19[1] = 0;
        v19[2] = v13;
        *v15 = v19;
        v20 = **(this + 52);
        v21 = v19;
        if (v20)
        {
          *(this + 52) = v20;
          v21 = *v15;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(this + 53), v21);
        ++*(this + 55);
      }

      *(v19 + 10) = v9;
      *(v19 + 11) = v11;
    }
  }
}

void sub_1B2B8538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  geo::read_write_lock::unlock((v11 + 32));

  _Unwind_Resume(a1);
}

void **md::CollisionObject::resetShapes(void **this, unsigned int a2)
{
  if (*(this + 48) < a2)
  {
    v3 = this;
    free(this[23]);
    this = malloc_type_calloc(a2, 0x18uLL, 0x1000040504FFAC1uLL);
    v3[23] = this;
    *(v3 + 48) = a2;
  }

  return this;
}

char *md::LabelNavEtaLabeler::featuresForRoute(md::LabelNavEtaLabeler *this, VKRouteInfo *a2)
{
  v3 = a2;
  v4 = [(VKRouteInfo *)v3 route];
  v5 = *(this + 33);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = this + 264;
  v7 = this + 264;
  do
  {
    v8 = *(v5 + 4);
    v9 = v8 >= v4;
    v10 = v8 < v4;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 != v6 && v4 >= *(v7 + 4))
  {

    v11 = v7 + 40;
  }

  else
  {
LABEL_9:

    v11 = 0;
  }

  return v11;
}

float md::CollisionObject::addRect(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *(a1 + 176);
  v4 = v3 + 1;
  v5 = (*(a1 + 160) + 16 * v3);
  *v5 = *a2;
  v5[1] = a2[1];
  v6 = a2[2];
  *(a1 + 176) = v4;
  v5[2] = v6;
  v5[3] = a2[3];
  v7 = a1 + 8;
  v8 = 1;
  do
  {
    *(a1 + 4 * v2) = fminf(*&a2[v2], *(a1 + 4 * v2));
    v9 = v8;
    result = fmaxf(*(v7 + 4 * v2), *&a2[v2 + 2]);
    *(v7 + 4 * v2) = result;
    v2 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  return result;
}

void *std::vector<md::RoadSignOrientation>::vector[abi:nn200100](void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t md::LineTextWithAuxLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 713);
  v5 = *(a1 + 712) == v4 || v4 == 0;
  if (!v5)
  {
    return 1;
  }

  v6 = *(a1 + 715);
  if (*(a1 + 714) != v6 && v6 != 0)
  {
    return 1;
  }

  v8 = *(a1 + 576);
  v9 = *(a1 + 584);
  if (v8 == v9)
  {
    return 0;
  }

  v13 = v8 + 8;
  do
  {
    result = (*(**(v13 - 8) + 768))(*(v13 - 8), a2, a3, a4);
    if (result)
    {
      break;
    }

    v5 = v13 == v9;
    v13 += 8;
  }

  while (!v5);
  return result;
}

BOOL md::LabelLineResolvedPosition::moveOntoPathForZoom(md::LabelLineResolvedPosition *this, unsigned int a2, double a3)
{
  v4 = *this;
  *(this + 12) = *(v4 + 4);
  v62 = 0uLL;
  v55 = md::LabelLineStore::lineCountForZoom(v4, a2);
  if (!v55)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v57 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = -1;
  v11 = 1.0;
  v12 = -1;
  do
  {
    v13 = md::LabelLineStore::lineStartForZoom(&v59, *this, a2, v6);
    v14 = (*(***&v60[8] + 24))(**&v60[8], *&v60[18], v13);
    while (1)
    {
      v15 = v14;
      v14 = md::LabelLinePosition::pointAtOffset(&v59, 1);
      if (!v14)
      {
        break;
      }

      v16 = (this + 56);
      if (*(*this + 159) == 1)
      {
        md::LabelPoint::geocentricPoint(v16);
        md::LabelPoint::geocentricPoint(v15);
        md::LabelPoint::geocentricPoint(v14);
        v17 = gm::Matrix<double,3,1>::distanceSquaredToLineSegment<int,void>(this + 56, v15, v14, v58);
      }

      else
      {
        v18 = md::LabelPoint::mercatorPoint(v16);
        v19 = md::LabelPoint::mercatorPoint(v15);
        v20 = md::LabelPoint::mercatorPoint(v14);
        v21 = *v19;
        v22 = vsubq_f64(*v20, *v19);
        v23 = vmulq_f64(v22, v22);
        v24 = *v18;
        v25 = 0.0;
        if (vaddvq_f64(v23) > 1.0e-15)
        {
          v26 = vaddq_f64(vdupq_laneq_s64(v23, 1), v23);
          v27 = vmulq_f64(vsubq_f64(v24, v21), v22);
          v25 = fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v27, 1), v27), v26).f64[0], 0.0), 1.0);
        }

        v28 = vsubq_f64(v24, vmlaq_n_f64(v21, v22, v25));
        v17 = vaddvq_f64(vmulq_f64(v28, v28));
      }

      if (v17 >= 1.0)
      {
        goto LABEL_22;
      }

      v29 = v59;
      if (v59 && v61[0] == *(v59 + 16))
      {
        v30 = 0;
        if (*&v60[8] && (*&v60[18] & 0x80000000) == 0)
        {
          v30 = *(**&v60[8] + 34);
        }
      }

      else
      {
        v30 = 0;
      }

      v31 = v5 == v30 && v17 < v11;
      if (v31 || v5 < v30)
      {
        v32 = *(&v59 + 1);
        if (*(&v59 + 1))
        {
          atomic_fetch_add_explicit((*(&v59 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        v62 = *v60;
        v10 = *&v60[16];
        v12 = *&v60[18];
        v9 = *&v60[20];
        v57 = v61[0];
        v8 = v32;
      }

      else
      {
LABEL_22:
        v29 = v7;
        v30 = v5;
        v17 = v11;
      }

      md::LabelLinePosition::moveToNextPoint(&v59);
      v7 = v29;
      v5 = v30;
      v11 = v17;
    }

    if (*(&v59 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v59 + 1));
    }

    ++v6;
  }

  while (v6 != v55);
  v33 = v11 != 1.0;
  if (v11 != 1.0)
  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = *(this + 1);
    *this = v7;
    *(this + 1) = v8;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    *(this + 1) = v62;
    *(this + 16) = v10;
    *(this + 17) = v12;
    *(this + 9) = v9;
    *(this + 10) = v57;
    v35 = (*(***(this + 3) + 24))(**(this + 3), v12);
    v36 = md::LabelLinePosition::pointAtOffset(this, 1);
    v37 = (this + 56);
    if (*(*this + 159) == 1)
    {
      md::LabelPoint::geocentricPoint(v37);
      md::LabelPoint::geocentricPoint(v35);
      md::LabelPoint::geocentricPoint(v36);
      v38 = gm::Matrix<double,3,1>::nearestPointOffsetAlongLineSegment<int,void>(this + 56, v35, v36);
    }

    else
    {
      v39 = md::LabelPoint::mercatorPoint(v37);
      v40 = md::LabelPoint::mercatorPoint(v35);
      v41 = vsubq_f64(*md::LabelPoint::mercatorPoint(v36), *v40);
      v42 = vmulq_f64(v41, v41);
      v38 = 0.0;
      if (vaddvq_f64(v42) > 1.0e-15)
      {
        v43 = vmulq_f64(vsubq_f64(*v39, *v40), v41);
        v38 = fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v43, 1), v43), vaddq_f64(vdupq_laneq_s64(v42, 1), v42)).f64[0], 0.0), 1.0);
      }
    }

    v44 = v38;
    md::LabelPoint::lerped(&v59, v35, v44, v36);
    *(this + 104) = v59;
    *(this + 15) = *v60;
    *(this + 8) = *&v60[8];
    *(this + 36) = v61[0];
    *(this + 147) = *(v61 + 3);
    *(this + 9) = v44;
    *&v58[0] = *&md::LabelPoint::vectorToPoint(v35, v36, *(*this + 159));
    v58[1] = v45;
    v58[2] = v46;
    v47 = gm::Matrix<double,3,1>::normalized<int,void>(v58);
    v48 = 0;
    *&v59 = v47;
    *(&v59 + 1) = v49;
    *v60 = v50;
    do
    {
      v51 = *&v60[8 * v48 - 16];
      *(&v58[3] + ++v48) = v51;
    }

    while (v48 != 3);
    v52 = 0;
    v53 = 0.0;
    do
    {
      v53 = v53 + (*(this + v52 + 152) * *(&v58[3] + v52 + 4));
      v52 += 4;
    }

    while (v52 != 12);
    *(this + 165) = v53 < 0.0;
    *(this + 164) = a2;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return v33;
}

void sub_1B2B85B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  _Unwind_Resume(exception_object);
}

float md::LabelNavEtaLabeler::animationCompletionPercentage(md::LabelNavEtaLabeler *this, VKRouteInfo *a2)
{
  v3 = a2;
  v4 = *(this + 53);
  v5 = 0.0;
  if (v4)
  {
    v6 = (this + 424);
    do
    {
      v7 = *(v4 + 4);
      v8 = v7 >= v3;
      v9 = v7 < v3;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * v9];
    }

    while (v4);
    if (v6 != (this + 424) && *(v6 + 4) <= v3)
    {
      v5 = v6[10];
    }
  }

  return v5;
}

uint64_t geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::operator[](uint64_t *a1, id *a2)
{
  v37[3] = *MEMORY[0x1E69E9840];
  j = *a1;
  for (i = a1[1]; j != i; i = a1[1])
  {
    if (md::RouteRangeAnnotationRequest::operator==(a2, j))
    {
      if (j != a1[1])
      {
        return j + 48;
      }

      break;
    }

    j += 72;
  }

  v32 = &unk_1F29F1180;
  v33 = 0;
  v34 = *a2;
  v35 = a2[1];
  std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v36, (a2 + 2));
  geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v37, &v32);
  for (j = *a1; ; j += 72)
  {
    v6 = a1[1];
    if (j == v6)
    {
      break;
    }

    if (md::RouteRangeAnnotationRequest::operator==(&v34, j))
    {
      v6 = a1[1];
      if (j != v6)
      {
        goto LABEL_31;
      }

      break;
    }
  }

  v7 = a1[2];
  if (v6 >= v7)
  {
    v9 = 0x8E38E38E38E38E39 * ((v6 - *a1) >> 3);
    if (v9 + 1 > 0x38E38E38E38E38ELL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0x8E38E38E38E38E39 * ((v7 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x1C71C71C71C71C7)
    {
      v12 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v12 = v11;
    }

    v31 = a1;
    if (v12)
    {
      if (v12 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v28 = 0;
    v29 = 72 * v9;
    std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::pair[abi:nn200100]((72 * v9), &v34);
    v30 = 72 * v9 + 72;
    v13 = *a1;
    v14 = a1[1];
    v15 = v29 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = 0;
      do
      {
        v17 = (v13 + v16);
        v18 = v15 + v16;
        v19 = *(v13 + v16);
        *v17 = 0;
        v17[1] = 0;
        *v18 = v19;
        *(v18 + 16) = *(v13 + v16 + 16);
        v20 = (v13 + v16 + 24);
        v21 = *v20;
        *(v15 + v16 + 24) = *v20;
        v22 = v15 + v16 + 24;
        *(v18 + 32) = *(v13 + v16 + 32);
        v23 = *(v13 + v16 + 40);
        *(v18 + 40) = v23;
        if (v23)
        {
          *(v21 + 16) = v22;
          v17[2] = v20;
          *v20 = 0;
          v17[5] = 0;
        }

        else
        {
          *(v18 + 16) = v22;
        }

        geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v15 + v16 + 48, v13 + v16 + 48);
        v16 += 72;
      }

      while (v13 + v16 != v14);
      do
      {
        std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(v13);
        v13 += 72;
      }

      while (v13 != v14);
    }

    v24 = *a1;
    *a1 = v15;
    v25 = a1[2];
    v27 = v30;
    *(a1 + 1) = v30;
    *&v30 = v24;
    *(&v30 + 1) = v25;
    v28 = v24;
    v29 = v24;
    std::__split_buffer<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__split_buffer(&v28);
    v8 = v27;
  }

  else
  {
    std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::pair[abi:nn200100](v6, &v34);
    v8 = v6 + 9;
    a1[1] = (v6 + 9);
  }

  a1[1] = v8;
  j = (v8 - 9);
LABEL_31:
  v37[0] = &unk_1F29F1180;

  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v36[1]);
  v32 = &unk_1F29F1180;

  return j + 48;
}

void sub_1B2B85F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a22);

  _Unwind_Resume(a1);
}

float md::StandardRouteOverlayCache::animationCompletionPercentage(VKPolylineOverlay *this, VKPolylineOverlay *a2)
{
  md::StandardRouteOverlayCache::getInternalOverlay(&v4, this, a2);
  if (v4)
  {
    v2 = 1.0;
    if (*(v4 + 857) == 1)
    {
      v2 = *(v4 + 832);
    }
  }

  else
  {
    v2 = 0.0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2;
}

void md::StandardRouteOverlayCache::getInternalOverlay(md::StandardRouteOverlayCache *this, VKPolylineOverlay *a2, void *a3)
{
  v5 = a3;
  v25 = v5;
  isa = a2[1].super.isa;
  if (isa)
  {
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(isa);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v9;
      if (v9 >= isa)
      {
        v11 = v9 % isa;
      }
    }

    else
    {
      v11 = v9 & (isa - 1);
    }

    v12 = *(a2->_traffic + v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v9 == v14)
        {
          if (i[2] == v5)
          {
            v23 = i[4];
            *this = i[3];
            *(this + 1) = v23;
            if (!v23)
            {
              goto LABEL_30;
            }

LABEL_29:
            atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
            goto LABEL_30;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v14 >= isa)
            {
              v14 %= isa;
            }
          }

          else
          {
            v14 &= isa - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  v24 = v5;
  cap = a2[1]._splitSections.__cap_;
  if (!cap)
  {
LABEL_27:
    *this = 0;
    *(this + 1) = 0;
    v5 = v24;
    goto LABEL_30;
  }

  while (1)
  {
    end = cap[1].end;
    v19 = *end;
    v17 = end + 1;
    v18 = v19;
    if (v19 != v17)
    {
      break;
    }

LABEL_26:
    cap = cap->start;
    if (!cap)
    {
      goto LABEL_27;
    }
  }

  while (!geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v18[4] + 144), &v25))
  {
    v20 = v18[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v18[2];
        v22 = *v21 == v18;
        v18 = v21;
      }

      while (!v22);
    }

    v18 = v21;
    if (v21 == v17)
    {
      goto LABEL_26;
    }
  }

  v23 = v18[5];
  *this = v18[4];
  *(this + 1) = v23;
  v5 = v24;
  if (v23)
  {
    goto LABEL_29;
  }

LABEL_30:
}

uint64_t geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
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

float md::StandardRouteOverlayCache::routeLineHalfWidthAtZ(VKPolylineOverlay *this, VKPolylineOverlay *a2, float a3)
{
  md::StandardRouteOverlayCache::getInternalOverlay(&v10, this, a2);
  v4 = 0.0;
  if (v10)
  {
    v5 = *(v10 + 504);
    if (v5)
    {
      v6 = *(v5 + 256);
      v7 = *(v5 + 264);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v12, v6, v7);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      if (v15 == 1)
      {
        md::RouteLineSection::halfWidthAtZoom(&v12, a3);
        v4 = v8;
        if (v15)
        {
          (*(*v12 + 56))(v12);
        }
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return v4;
}

void sub_1B2B863F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

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

uint64_t md::Logic<md::DisplayLinkVerificationLogic,md::DisplayLinkVerificationContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x42BE82C40F9A8F80)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>::resolveDependencies(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

void md::LabelCollider::addCollidableItem(md::LabelCollider *this, md::LabelCollidableItem *a2)
{
  v4 = gm::OBRect<float>::axisAlignedBoundingRect(a2 + 2);
  v5 = 0;
  v6 = 0;
  v8 = *(this + 8);
  v7 = *(this + 9);
  v9 = *(this + 10);
  v13 = ((v11 - v7) * v8);
  v14 = ((v12 - v9) * v8);
  v15 = (v8 * (v4 - v7)) & ~((v8 * (v4 - v7)) >> 31);
  v16 = ((v10 - v9) * v8) & ~(((v10 - v9) * v8) >> 31);
  v17 = *(this + 12);
  v18 = *(this + 11) - 1;
  if (v18 >= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = v18;
  }

  if (v17 - 1 >= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = (v17 - 1);
  }

  v21 = &v29;
  v29 = v15 | (v16 << 32);
  v30 = v19 | (v20 << 32);
  v31 = a2;
  do
  {
    v22 = *(&v30 + v6);
    v23 = *v21;
    if (v5)
    {
      break;
    }

    v5 = 1;
    v21 = (&v29 + 4);
    v6 = 1;
  }

  while (v22 >= v23);
  if (v22 >= v23)
  {
    *(a2 + 10) = 0;
    if (v16 <= v20)
    {
      v24 = *(this + 11);
      v25 = *(this + 7) + 24 * (v15 + v24 * v16);
      do
      {
        v26 = v15 - 1;
        v27 = v25;
        if (v15 <= v19)
        {
          do
          {
            md::SimpleBuffer<md::LabelCollidableItem *,20ul>::push_back(v27, &v31);
            v27 += 3;
            ++v26;
          }

          while (v26 < v19);
          v24 = *(this + 11);
        }

        v25 += 24 * v24;
        v28 = v16 < v20;
        LODWORD(v16) = v16 + 1;
      }

      while (v28);
    }

    ++*(this + 2);
  }
}

unint64_t *md::SimpleBuffer<md::LabelCollidableItem *,20ul>::push_back(unint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  if (*result < v5 || v5 > 2 * v4)
  {
    goto LABEL_8;
  }

  v6 = 2 * v4;
  if ((v6 | 1uLL) > 0x14)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 20;
  }

  v8 = (1 << -__clz(v7 - 1));
  result = malloc_type_realloc(result[2], 8 * v8, 0x2004093837F09uLL);
  if (result)
  {
    v3[1] = v8;
    v3[2] = result;
    v4 = *v3;
LABEL_8:
    *(v3[2] + 8 * v4) = *a2;
    *v3 = v4 + 1;
  }

  return result;
}

float gm::OBRect<float>::axisAlignedBoundingRect(float *a1)
{
  v1 = a1[4];
  v2 = *a1;
  if (v1 != 1.0)
  {
    v2 = fabsf(-(a1[5] * a1[1])) + fabsf(v2 * v1);
  }

  return a1[2] - v2;
}

void md::LabelNavLayoutContext::grabStateFromContext(md::LabelNavLayoutContext *this, md::LabelManager *a2, const LabelLayoutContext *a3, const md::LayoutContext *a4)
{
  v8 = md::LayoutContext::get<md::CameraContext>(*(a4 + 1));
  v9 = 0;
  *(this + 30) = *(a3 + 310);
  v10 = *(a3 + 158);
  *(this + 6) = *(a3 + 78);
  *(this + 14) = v10;
  v11 = (a3 + 864);
  do
  {
    v12 = 0.0;
    v13 = v11;
    for (i = 96; i != 120; i += 8)
    {
      v15 = *v13;
      v13 += 4;
      v12 = v12 + *(this + i) * v15;
    }

    *&__p[v9] = *(a3 + v9 + 120) + v12;
    ++v9;
    ++v11;
  }

  while (v9 != 4);
  __asm { FMOV            V1.2D, #1.0 }

  *__p = vmulq_f64(*__p, vdivq_f64(_Q1, vdupq_lane_s64(*(&v55 + 1), 0)));
  v21 = *__p;
  *(this + 31) = v21;
  md::LayoutContext::frameState(a4);
  *(this + 32) = *(a2 + 44) * *(v22 + 40);
  md::LayoutContext::frameState(a4);
  v24 = *(a2 + 44) * *(v23 + 32);
  md::LayoutContext::frameState(a4);
  v26 = *(a2 + 44) * *(v25 + 36);
  md::LayoutContext::frameState(a4);
  v28 = *(a2 + 44) * *(v27 + 40);
  md::LayoutContext::frameState(a4);
  v30 = *(a3 + 266) - (*(a2 + 44) * *(v29 + 44));
  v31 = *(a3 + 267) - v24;
  *(this + 8) = v26;
  *(this + 9) = v28;
  *(this + 10) = v30;
  *(this + 11) = v31;
  v32 = *(a3 + 266);
  v33 = *(a3 + 267) - v24;
  *(this + 12) = 0;
  *(this + 13) = v28;
  *(this + 14) = v32;
  *(this + 15) = v33;
  v34 = *(a3 + 267);
  v35 = *(a3 + 266);
  *(this + 20) = 0;
  *(this + 21) = v34 - v28;
  *(this + 22) = v35;
  *(this + 23) = v34;
  if (*(a3 + 8) == 1)
  {
    *this = v8[365];
    *(this + 1) = v8[366];
    *(this + 2) = v8[367];
    v36 = v8[368];
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0x3FF0000000000000;
    v36 = 1.0;
  }

  *(this + 3) = v36;
  v38 = *(a4 + 4);
  v37 = *(a4 + 5);
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    *(this + 17) = *(v38 + 64);
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  else
  {
    *(this + 17) = *(v38 + 64);
  }

  *(this + 18) = gdc::Context::context<md::AnchorContext>(*(a4 + 1));
  *(this + 216) = *(a3 + 8) ^ 1;
  *(this + 217) = *(a3 + 24);
  {
    md::LabelNavLayoutContext::grabStateFromContext(md::LabelManager &,md::LabelLayoutContext const&,md::LayoutContext const&)::$_0::operator() const(void)::cached_result = GEOConfigGetBOOL();
  }

  *(this + 218) = md::LabelNavLayoutContext::grabStateFromContext(md::LabelManager &,md::LabelLayoutContext const&,md::LayoutContext const&)::$_0::operator() const(void)::cached_result;
  v39 = *(a4 + 1);
  v40 = gdc::Context::get<md::StyleLogicContext>(v39);
  if (v40)
  {
    v41 = *(v40 + 112);
  }

  else
  {
    v41 = 4;
  }

  *(this + 219) = v41;
  v42 = gdc::Context::context<md::RouteLineContext>(v39);
  if (v42)
  {
    v43 = v42;
    std::unordered_map<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::shared_ptr<md::FlyoverDsmTileData>>>>::unordered_map(__p, (v42 + 1));
    std::set<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::set[abi:nn200100](&v57, v43 + 6);
  }

  else
  {
    *__p = 0u;
    v55 = 0u;
    v56 = 1065353216;
    v58 = 0;
    v59 = 0;
    v57 = &v58;
  }

  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::clear(this + 152);
  v44 = __p[0];
  __p[0] = 0;
  v45 = *(this + 19);
  *(this + 19) = v44;
  if (v45)
  {
    operator delete(v45);
  }

  v46 = __p[1];
  v47 = v55;
  *(this + 21) = v55;
  *(this + 20) = v46;
  __p[1] = 0;
  v48 = *(&v55 + 1);
  *(this + 22) = *(&v55 + 1);
  *(this + 46) = v56;
  if (v48)
  {
    v49 = *(v47 + 8);
    if ((v46 & (v46 - 1)) != 0)
    {
      if (v49 >= v46)
      {
        v49 %= v46;
      }
    }

    else
    {
      v49 &= v46 - 1;
    }

    *(*(this + 19) + 8 * v49) = this + 168;
    v55 = 0uLL;
  }

  v50 = this + 200;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 25));
  v51 = v58;
  *(this + 24) = v57;
  *(this + 25) = v51;
  v52 = v59;
  *(this + 26) = v59;
  if (v52)
  {
    v51[2] = v50;
    v57 = &v58;
    v58 = 0;
    v59 = 0;
    v51 = 0;
  }

  else
  {
    *(this + 24) = v50;
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v51);
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(v55);
  v53 = __p[0];
  __p[0] = 0;
  if (v53)
  {
    operator delete(v53);
  }
}

void md::NamedLabelDedupingGroup::prepareForCollision(md::NamedLabelDedupingGroup *this, md::LabelManager *a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  v4 = v29;
  v25 = v29;
  v26 = v29;
  v27 = v29;
  v28 = 5;
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 == v6)
  {
    v8 = v29;
  }

  else
  {
    do
    {
      v7 = *v5;
      if ((*(**v5 + 16))(*v5))
      {
        *&v23 = v7;
        geo::small_vector_base<md::Label *>::push_back(&v25, &v23);
      }

      ++v5;
    }

    while (v5 != v6);
    v4 = v25;
    v8 = v26;
  }

  if (v8 - v4 == 8)
  {
    v9 = v4->i64[0];
LABEL_9:
    *(this + 9) = v9;
    goto LABEL_26;
  }

  v10 = (v8 - v4) >> 3;
  if (v10 >= 2)
  {
    v11 = *(a2 + 53);
    v23 = *(v11 + 1120);
    v24 = vmla_f32(*(v11 + 1072), 0x3F0000003F000000, vsub_f32(*(v11 + 1080), *(v11 + 1072)));
    v12 = 126 - 2 * __clz(v10);
    if (v8 == v4)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,false>(v4, v8, &v23, v13, 1);
    v4 = v25;
    v14 = v26;
    if (v25 == v26)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v9 = 0;
    v15 = 0;
    v16 = v25;
    while (1)
    {
      v17 = v16->i64[0];
      *(v16->i64[0] + 32) = v15;
      if (v9)
      {
        v18 = *(v17 + 752);
        v19 = *(v9 + 752);
        v20 = v18 < v19;
        if (v18 == v19 && (v21 = *(v17 + 196), v22 = *(v9 + 196), v20 = v21 < v22, v21 == v22))
        {
          if (v17 >= v9)
          {
            goto LABEL_22;
          }
        }

        else if (!v20)
        {
          goto LABEL_22;
        }
      }

      v9 = v17;
LABEL_22:
      v16 = (v16 + 8);
      ++v15;
      if (v16 == v14)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_26:
  if (v4 != v27)
  {
    free(v4);
  }
}

void sub_1B2B86D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  if (a12 != a14)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelSpacingDedupingGroup *this, md::LabelManager *a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  *(this + 24) = 0;
  v3 = *(a2 + 53);
  if (*(v3 + 424) > 0.0)
  {
    v4 = *(this + 11);
    if (v4)
    {
      v6 = std::__shared_weak_count::lock(v4);
      if (v6)
      {
        v7 = v6;
        v8 = *(this + 10);
        if (v8)
        {
          v9 = (*(*v8 + 312))(v8, *(v3 + 29), v3);
          *(this + 24) = (*(a2 + 44) * v9) * (*(a2 + 44) * v9);
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }
  }

  v11 = *(this + 1);
  v10 = *(this + 2);
  if (v11 != v10)
  {
    while (((*(**v11 + 16))() & 1) != 0)
    {
      ++v11;
LABEL_10:
      if (v11 == v10)
      {
        goto LABEL_17;
      }
    }

    v12 = v10 - 1;
    while (v12 != v11)
    {
      v10 = v12;
      v13 = *v12--;
      if ((*(*v13 + 16))(v13))
      {
        v14 = *v11;
        *v11++ = *v10;
        *v10 = v14;
        goto LABEL_10;
      }
    }
  }

  v10 = v11;
LABEL_17:
  v15 = *(this + 1);
  v16 = 126 - 2 * __clz((v10 - v15) >> 3);
  if (v10 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(*(this + 1), v10, v17, 1);
  v19 = *(this + 2);
  v20 = *(this + 1);
  if (v20 != v19)
  {
    v21 = 0;
    v22 = *(this + 1);
    do
    {
      v23 = *v22++;
      *(v23 + 32) = v21;
      *(v23 + 36) = v21++;
    }

    while (v22 != v19);
    if (v10 - v15 >= 8)
    {
      if (v10 == v15 || (v24 = (v15 + 8), (v15 + 8) == v10))
      {
        v20 = v15;
      }

      else
      {
        v20 = v15;
        v25 = (v15 + 8);
        do
        {
          v26 = *v25++;
          result = md::Label::collisionPriorityCmp(v26, *v20);
          if (result)
          {
            v20 = v24;
          }

          v24 = v25;
        }

        while (v25 != v10);
      }
    }

    *(this + 9) = *v20;
  }

  return result;
}

void *md::LabelDedupingGroup::prepareForCollision(void *this, md::LabelManager *a2)
{
  this[6] = this[5];
  this[9] = 0;
  return this;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4)
        {

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v9, v9 + 1, v9 + 2, a2 - 1);
        }

        if (v10 == 5)
        {
          result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v9, v9 + 1, v9 + 2, v9 + 3);
          v97 = *v8;
          v98 = v9[3];
          v99 = *(*v8 + 844);
          if ((v99 == 2) != (*(v98 + 844) == 2))
          {
            if (v99 != 2)
            {
              return result;
            }
          }

          else if (*(v97 + 692) >= *(v98 + 692))
          {
            return result;
          }

          v9[3] = v97;
          *v8 = v98;
          v158 = v9[2];
          v157 = v9[3];
          v159 = *(v157 + 844);
          if ((v159 == 2) != (*(v158 + 844) == 2))
          {
            if (v159 != 2)
            {
              return result;
            }

            v9[2] = v157;
            v9[3] = v158;
            v160 = v9[1];
            if (*(v160 + 844) == 2)
            {
              v161 = *(v157 + 692);
              goto LABEL_342;
            }

LABEL_334:
            v9[1] = v157;
            v9[2] = v160;
            v171 = *v9;
            if (*(*v9 + 844) == 2)
            {
              v161 = *(v157 + 692);
              goto LABEL_352;
            }
          }

          else
          {
            v161 = *(v157 + 692);
            if (v161 >= *(v158 + 692))
            {
              return result;
            }

            v9[2] = v157;
            v9[3] = v158;
            v160 = v9[1];
            if ((v159 == 2) != (*(v160 + 844) == 2))
            {
              if (v159 != 2)
              {
                return result;
              }

              goto LABEL_334;
            }

LABEL_342:
            if (v161 >= *(v160 + 692))
            {
              return result;
            }

            v9[1] = v157;
            v9[2] = v160;
            v171 = *v9;
            if ((v159 == 2) != (*(*v9 + 844) == 2))
            {
              if (v159 != 2)
              {
                return result;
              }
            }

            else
            {
LABEL_352:
              if (v161 >= *(v171 + 692))
              {
                return result;
              }
            }
          }

          *v9 = v157;
          v9[1] = v171;
          return result;
        }

        goto LABEL_10;
      }

      v101 = *v9;
      v103 = v9[1];
      v104 = *(v103 + 844);
      v105 = *(*v9 + 844);
      if ((v104 == 2) != (v105 == 2))
      {
        if (v104 != 2)
        {
          goto LABEL_222;
        }
      }

      else if (*(v103 + 692) >= *(v101 + 692))
      {
LABEL_222:
        v106 = *v8;
        if ((v104 == 2) != (*(*v8 + 844) == 2))
        {
          if (*(*v8 + 844) != 2)
          {
            return result;
          }
        }

        else if (*(v106 + 692) >= *(v103 + 692))
        {
          return result;
        }

        v9[1] = v106;
        *v8 = v103;
        v173 = *v9;
        v172 = v9[1];
        v174 = *(v172 + 844);
        if ((v174 == 2) != (*(*v9 + 844) == 2))
        {
          if (v174 != 2)
          {
            return result;
          }
        }

        else if (*(v172 + 692) >= *(v173 + 692))
        {
          return result;
        }

        *v9 = v172;
        v9[1] = v173;
        return result;
      }

      v162 = v104 == 2;
      v163 = *v8;
      if ((v162 ^ (*(*v8 + 844) == 2)))
      {
        if (*(*v8 + 844) != 2)
        {
LABEL_316:
          *v9 = v103;
          v9[1] = v101;
          v164 = *v8;
          if ((v105 == 2) != (*(*v8 + 844) == 2))
          {
            if (*(*v8 + 844) != 2)
            {
              return result;
            }
          }

          else if (*(v164 + 692) >= *(v101 + 692))
          {
            return result;
          }

          v9[1] = v164;
          goto LABEL_348;
        }
      }

      else if (*(v163 + 692) >= *(v103 + 692))
      {
        goto LABEL_316;
      }

      *v9 = v163;
LABEL_348:
      *v8 = v101;
      return result;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v100 = *v8;
      v101 = *v9;
      v102 = *(*v8 + 844);
      if ((v102 == 2) != (*(*v9 + 844) == 2))
      {
        if (v102 != 2)
        {
          return result;
        }
      }

      else if (*(v100 + 692) >= *(v101 + 692))
      {
        return result;
      }

      *v9 = v100;
      goto LABEL_348;
    }

LABEL_10:
    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v119 = (v10 - 2) >> 1;
      v120 = v119;
      while (2)
      {
        v121 = v120;
        if (v119 < v120)
        {
          goto LABEL_280;
        }

        v122 = (2 * v120) | 1;
        v123 = &v9[v122];
        if (2 * v121 + 2 >= v10)
        {
          goto LABEL_262;
        }

        v124 = v123[1];
        v125 = *(*v123 + 844);
        if ((v125 == 2) != (*(v124 + 844) == 2))
        {
          if (v125 != 2)
          {
LABEL_262:
            v126 = *v123;
            v127 = v9[v121];
            v128 = *(*v123 + 844);
            v129 = *(v127 + 844);
            result = v129 == 2;
            if ((v128 == 2) != (v129 == 2))
            {
              if (v128 == 2)
              {
                goto LABEL_280;
              }
            }

            else if (*(v126 + 692) < *(v127 + 692))
            {
              goto LABEL_280;
            }

            v9[v121] = v126;
            if (v119 < v122)
            {
LABEL_267:
              v130 = v123;
LABEL_279:
              *v130 = v127;
LABEL_280:
              v120 = v121 - 1;
              if (v121)
              {
                continue;
              }

              while (2)
              {
                v136 = 0;
                v137 = *v9;
                v138 = v9;
LABEL_282:
                v139 = v138;
                v140 = &v138[v136];
                v138 = v140 + 1;
                v141 = 2 * v136;
                v136 = (2 * v136) | 1;
                v142 = v141 + 2;
                if (v142 < v10)
                {
                  v145 = v140[2];
                  v143 = v140 + 2;
                  v144 = v145;
                  v146 = *(v143 - 1);
                  result = *(v146 + 844);
                  if ((result == 2) != (*(v145 + 844) == 2))
                  {
                    if (result != 2)
                    {
                      goto LABEL_288;
                    }
                  }

                  else if (*(v146 + 692) >= *(v144 + 692))
                  {
                    goto LABEL_288;
                  }

                  v138 = v143;
                  v136 = v142;
                }

LABEL_288:
                *v139 = *v138;
                if (v136 > ((v10 - 2) >> 1))
                {
                  if (v138 == --a2)
                  {
                    goto LABEL_302;
                  }

                  *v138 = *a2;
                  *a2 = v137;
                  v147 = (v138 - v9 + 8) >> 3;
                  v148 = v147 - 2;
                  if (v147 < 2)
                  {
                    goto LABEL_303;
                  }

                  v149 = v148 >> 1;
                  v150 = &v9[v148 >> 1];
                  v151 = *v150;
                  v137 = *v138;
                  v152 = *(*v150 + 844);
                  v153 = *(*v138 + 844);
                  result = v153 == 2;
                  if ((v152 == 2) == (v153 == 2))
                  {
                    if (*(v151 + 692) >= *(v137 + 692))
                    {
                      goto LABEL_303;
                    }

LABEL_295:
                    *v138 = v151;
                    if (v148 >= 2)
                    {
                      do
                      {
                        v154 = v149 - 1;
                        v149 = (v149 - 1) >> 1;
                        v138 = &v9[v149];
                        v155 = *v138;
                        if ((v153 == 2) != (*(*v138 + 844) == 2))
                        {
                          if (*(*v138 + 844) != 2)
                          {
                            goto LABEL_296;
                          }
                        }

                        else if (*(v155 + 692) >= *(v137 + 692))
                        {
                          goto LABEL_296;
                        }

                        *v150 = v155;
                        v150 = &v9[v149];
                      }

                      while (v154 > 1);
                    }

                    else
                    {
LABEL_296:
                      v138 = v150;
                    }

LABEL_302:
                    *v138 = v137;
                    goto LABEL_303;
                  }

                  if (v152 == 2)
                  {
                    goto LABEL_295;
                  }

LABEL_303:
                  if (v10-- <= 2)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_282;
              }
            }

            while (2)
            {
              v131 = 2 * v122;
              v122 = (2 * v122) | 1;
              v130 = &v9[v122];
              v132 = v131 + 2;
              if (v132 < v10)
              {
                v133 = v130[1];
                v134 = *(*v130 + 844);
                if ((v134 == 2) != (*(v133 + 844) == 2))
                {
                  if (v134 != 2)
                  {
                    goto LABEL_274;
                  }
                }

                else if (*(*v130 + 692) >= *(v133 + 692))
                {
                  goto LABEL_274;
                }

                ++v130;
                v122 = v132;
              }

LABEL_274:
              v135 = *v130;
              result = *(*v130 + 844) == 2;
              if ((v129 == 2) != (*(*v130 + 844) == 2))
              {
                if (*(*v130 + 844) == 2)
                {
                  goto LABEL_267;
                }
              }

              else if (*(v135 + 692) < *(v127 + 692))
              {
                goto LABEL_267;
              }

              *v123 = v135;
              v123 = v130;
              if (v119 < v122)
              {
                goto LABEL_279;
              }

              continue;
            }
          }
        }

        else if (*(*v123 + 692) >= *(v124 + 692))
        {
          goto LABEL_262;
        }

        break;
      }

      ++v123;
      v122 = 2 * v121 + 2;
      goto LABEL_262;
    }

    v11 = v10 >> 1;
    v12 = &v9[v10 >> 1];
    v13 = v12;
    if (v10 >= 0x81)
    {
      v14 = *v12;
      v15 = *v9;
      v16 = *(*v12 + 844);
      v17 = *(*v9 + 844);
      if ((v16 == 2) == (v17 == 2))
      {
        if (*(v14 + 692) < *(v15 + 692))
        {
          goto LABEL_24;
        }

LABEL_15:
        v18 = *v8;
        if ((v16 == 2) != (*(*v8 + 844) == 2))
        {
          if (*(*v8 + 844) != 2)
          {
            goto LABEL_55;
          }
        }

        else if (*(v18 + 692) >= *(v14 + 692))
        {
          goto LABEL_55;
        }

        *v12 = v18;
        *v8 = v14;
        v30 = *v12;
        v31 = *v9;
        v32 = *(*v12 + 844);
        if ((v32 == 2) != (*(*v9 + 844) == 2))
        {
          if (v32 != 2)
          {
            goto LABEL_55;
          }
        }

        else if (*(v30 + 692) >= *(v31 + 692))
        {
          goto LABEL_55;
        }

        *v9 = v30;
        *v12 = v31;
        goto LABEL_55;
      }

      if (v16 != 2)
      {
        goto LABEL_15;
      }

LABEL_24:
      v24 = v16 == 2;
      v25 = *v8;
      if (((v24 ^ (*(*v8 + 844) == 2)) & 1) == 0)
      {
        if (*(v25 + 692) < *(v14 + 692))
        {
          goto LABEL_44;
        }

LABEL_26:
        *v9 = v14;
        *v12 = v15;
        v26 = *v8;
        if ((v17 == 2) != (*(*v8 + 844) == 2))
        {
          if (*(*v8 + 844) != 2)
          {
            goto LABEL_55;
          }
        }

        else if (*(v26 + 692) >= *(v15 + 692))
        {
          goto LABEL_55;
        }

        *v12 = v26;
        goto LABEL_49;
      }

      if (*(*v8 + 844) != 2)
      {
        goto LABEL_26;
      }

LABEL_44:
      *v9 = v25;
LABEL_49:
      *v8 = v15;
LABEL_55:
      v36 = v11 - 1;
      v37 = v9[v11 - 1];
      v38 = v9[1];
      v39 = *(v37 + 844);
      v40 = *(v38 + 844);
      if ((v39 == 2) == (v40 == 2))
      {
        if (*(v37 + 692) < *(v38 + 692))
        {
          goto LABEL_61;
        }

LABEL_57:
        v41 = *(a2 - 2);
        if ((v39 == 2) != (*(v41 + 844) == 2))
        {
          if (*(v41 + 844) != 2)
          {
            goto LABEL_79;
          }
        }

        else if (*(v41 + 692) >= *(v37 + 692))
        {
          goto LABEL_79;
        }

        v9[v36] = v41;
        *(a2 - 2) = v37;
        v45 = v9[v36];
        v46 = v9[1];
        v47 = *(v45 + 844);
        if ((v47 == 2) != (*(v46 + 844) == 2))
        {
          if (v47 != 2)
          {
            goto LABEL_79;
          }
        }

        else if (*(v45 + 692) >= *(v46 + 692))
        {
          goto LABEL_79;
        }

        v9[1] = v45;
        v9[v36] = v46;
        goto LABEL_79;
      }

      if (v39 != 2)
      {
        goto LABEL_57;
      }

LABEL_61:
      v42 = v39 == 2;
      v43 = *(a2 - 2);
      if (((v42 ^ (*(v43 + 844) == 2)) & 1) == 0)
      {
        if (*(v43 + 692) < *(v37 + 692))
        {
          goto LABEL_71;
        }

LABEL_63:
        v9[1] = v37;
        v9[v36] = v38;
        v44 = *(a2 - 2);
        if ((v40 == 2) != (*(v44 + 844) == 2))
        {
          if (*(v44 + 844) != 2)
          {
            goto LABEL_79;
          }
        }

        else if (*(v44 + 692) >= *(v38 + 692))
        {
          goto LABEL_79;
        }

        v9[v36] = v44;
        goto LABEL_76;
      }

      if (*(v43 + 844) != 2)
      {
        goto LABEL_63;
      }

LABEL_71:
      v9[1] = v43;
LABEL_76:
      *(a2 - 2) = v38;
LABEL_79:
      v50 = v12[1];
      v48 = v12 + 1;
      v49 = v50;
      v51 = v9[2];
      v52 = *(v50 + 844);
      v53 = *(v51 + 844);
      if ((v52 == 2) == (v53 == 2))
      {
        if (*(v49 + 692) < *(v51 + 692))
        {
          goto LABEL_85;
        }

LABEL_81:
        v54 = *(a2 - 3);
        if ((v52 == 2) != (*(v54 + 844) == 2))
        {
          if (*(v54 + 844) != 2)
          {
            goto LABEL_101;
          }
        }

        else if (*(v54 + 692) >= *(v49 + 692))
        {
          goto LABEL_101;
        }

        *v48 = v54;
        *(a2 - 3) = v49;
        v58 = *v48;
        v59 = v9[2];
        v60 = *(*v48 + 844);
        if ((v60 == 2) != (*(v59 + 844) == 2))
        {
          if (v60 != 2)
          {
            goto LABEL_101;
          }
        }

        else if (*(v58 + 692) >= *(v59 + 692))
        {
          goto LABEL_101;
        }

        v9[2] = v58;
        *v48 = v59;
        goto LABEL_101;
      }

      if (v52 != 2)
      {
        goto LABEL_81;
      }

LABEL_85:
      v55 = v52 == 2;
      v56 = *(a2 - 3);
      if (((v55 ^ (*(v56 + 844) == 2)) & 1) == 0)
      {
        if (*(v56 + 692) < *(v49 + 692))
        {
          goto LABEL_95;
        }

LABEL_87:
        v9[2] = v49;
        *v48 = v51;
        v57 = *(a2 - 3);
        if ((v53 == 2) != (*(v57 + 844) == 2))
        {
          if (*(v57 + 844) != 2)
          {
            goto LABEL_101;
          }
        }

        else if (*(v57 + 692) >= *(v51 + 692))
        {
          goto LABEL_101;
        }

        *v48 = v57;
        goto LABEL_98;
      }

      if (*(v56 + 844) != 2)
      {
        goto LABEL_87;
      }

LABEL_95:
      v9[2] = v56;
LABEL_98:
      *(a2 - 3) = v51;
LABEL_101:
      v61 = *v13;
      v62 = v9[v36];
      v63 = *(*v13 + 844);
      v64 = *(v62 + 844);
      if ((v63 == 2) != (v64 == 2))
      {
        if (v63 != 2)
        {
          goto LABEL_103;
        }

LABEL_108:
        v69 = v63 == 2;
        v70 = *v48;
        v71 = *(*v48 + 844);
        if ((v69 ^ (v71 == 2)))
        {
          if (v71 != 2)
          {
            v9[v36] = v61;
            *v13 = v62;
            if (v64 != 2)
            {
              v72 = *(v70 + 692);
              goto LABEL_123;
            }

LABEL_122:
            v61 = v62;
LABEL_126:
            v73 = *v9;
            *v9 = v61;
            *v13 = v73;
            goto LABEL_127;
          }

LABEL_117:
          v9[v36] = v70;
        }

        else
        {
          v72 = *(v70 + 692);
          if (v72 < *(v61 + 692))
          {
            goto LABEL_117;
          }

          v9[v36] = v61;
          *v13 = v62;
          if ((v64 == 2) != (v71 == 2))
          {
            if (v71 != 2)
            {
              goto LABEL_122;
            }
          }

          else
          {
LABEL_123:
            if (v72 >= *(v62 + 692))
            {
              goto LABEL_122;
            }
          }

          *v13 = v70;
          v61 = v70;
        }

LABEL_125:
        *v48 = v62;
        goto LABEL_126;
      }

      if (*(v61 + 692) < *(v62 + 692))
      {
        goto LABEL_108;
      }

LABEL_103:
      v65 = v63 == 2;
      v66 = *v48;
      v67 = *(*v48 + 844);
      if ((v65 ^ (v67 == 2)))
      {
        if (v67 != 2)
        {
          goto LABEL_126;
        }

        *v13 = v66;
        *v48 = v61;
        if (v64 == 2)
        {
          v68 = *(v66 + 692);
          goto LABEL_118;
        }

LABEL_119:
        v9[v36] = v66;
        v48 = v13;
        v61 = v62;
        goto LABEL_125;
      }

      v68 = *(v66 + 692);
      if (v68 >= *(v61 + 692))
      {
        goto LABEL_126;
      }

      *v13 = v66;
      *v48 = v61;
      if ((v64 == 2) != (v67 == 2))
      {
        if (v67 == 2)
        {
          goto LABEL_119;
        }
      }

      else
      {
LABEL_118:
        if (v68 < *(v62 + 692))
        {
          goto LABEL_119;
        }
      }

      v61 = v66;
      goto LABEL_126;
    }

    v19 = *v9;
    v20 = *v13;
    v21 = *(*v9 + 844);
    v22 = *(*v13 + 844);
    if ((v21 == 2) != (v22 == 2))
    {
      if (v21 == 2)
      {
        goto LABEL_30;
      }
    }

    else if (*(v19 + 692) < *(v20 + 692))
    {
LABEL_30:
      v27 = v21 == 2;
      v28 = *v8;
      if ((v27 ^ (*(*v8 + 844) == 2)))
      {
        if (*(*v8 + 844) == 2)
        {
          goto LABEL_46;
        }
      }

      else if (*(v28 + 692) < *(v19 + 692))
      {
LABEL_46:
        *v13 = v28;
        goto LABEL_52;
      }

      *v13 = v19;
      *v9 = v20;
      v29 = *v8;
      if ((v22 == 2) == (*(*v8 + 844) == 2))
      {
        if (*(v29 + 692) >= *(v20 + 692))
        {
          goto LABEL_127;
        }

LABEL_51:
        *v9 = v29;
LABEL_52:
        *v8 = v20;
        goto LABEL_127;
      }

      if (*(*v8 + 844) == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_127;
    }

    v23 = *v8;
    if ((v21 == 2) != (*(*v8 + 844) == 2))
    {
      if (*(*v8 + 844) != 2)
      {
        goto LABEL_127;
      }
    }

    else if (*(v23 + 692) >= *(v19 + 692))
    {
      goto LABEL_127;
    }

    *v9 = v23;
    *v8 = v19;
    v33 = *v9;
    v34 = *v13;
    v35 = *(*v9 + 844);
    if ((v35 == 2) == (*(*v13 + 844) == 2))
    {
      if (*(v33 + 692) >= *(v34 + 692))
      {
        goto LABEL_127;
      }

LABEL_73:
      *v13 = v33;
      *v9 = v34;
      goto LABEL_127;
    }

    if (v35 == 2)
    {
      goto LABEL_73;
    }

LABEL_127:
    --a3;
    v74 = *v9;
    if (a4)
    {
      v75 = *(v74 + 844);
LABEL_141:
      for (i = v9 + 1; ; ++i)
      {
        v81 = *i;
        if ((v75 == 2) == (*(*i + 844) == 2))
        {
          break;
        }

        if (*(*i + 844) != 2)
        {
          goto LABEL_147;
        }

LABEL_146:
        ;
      }

      if (*(v81 + 692) < *(v74 + 692))
      {
        goto LABEL_146;
      }

LABEL_147:
      v82 = i - 1;
      j = a2 - 1;
      if (i - 1 != v9)
      {
        while (1)
        {
          if ((v75 == 2) != (*(*j + 844) == 2))
          {
            if (*(*j + 844) == 2)
            {
              goto LABEL_162;
            }
          }

          else if (*(*j + 692) < *(v74 + 692))
          {
            goto LABEL_162;
          }

          --j;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          v84 = *(*j + 844);
          if ((v75 == 2) != (v84 == 2))
          {
            if (i >= j || v84 == 2)
            {
              break;
            }
          }

          else if (i >= j || *(*j + 692) < *(v74 + 692))
          {
            break;
          }
        }
      }

LABEL_162:
      if (i >= j)
      {
        goto LABEL_177;
      }

      v85 = *j;
      v86 = i;
      v87 = j;
      while (2)
      {
        *v86 = v85;
        v86 += 8;
        *v87 = v81;
        while (2)
        {
          v81 = *v86;
          if ((v75 == 2) != (*(*v86 + 844) == 2))
          {
            if (*(*v86 + 844) != 2)
            {
              break;
            }

            goto LABEL_169;
          }

          if (*(v81 + 692) < *(v74 + 692))
          {
LABEL_169:
            v86 += 8;
            continue;
          }

          break;
        }

        v82 = (v86 - 8);
        do
        {
          while (1)
          {
            v88 = *--v87;
            v85 = v88;
            v89 = *(v88 + 844) == 2;
            if ((v75 == 2) == v89)
            {
              break;
            }

            if (v89)
            {
              goto LABEL_176;
            }
          }
        }

        while (*(v85 + 692) >= *(v74 + 692));
LABEL_176:
        if (v86 < v87)
        {
          continue;
        }

        break;
      }

LABEL_177:
      if (v82 != v9)
      {
        *v9 = *v82;
      }

      *v82 = v74;
      if (i < j)
      {
LABEL_182:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(v7, v82, a3, a4 & 1);
        a4 = 0;
        v9 = v82 + 1;
      }

      else
      {
        v90 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(v9, v82);
        v9 = v82 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(v82 + 1, a2);
        if (result)
        {
          a2 = v82;
          if (v90)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v90)
        {
          goto LABEL_182;
        }
      }
    }

    else
    {
      v76 = *(v9 - 1);
      v77 = *(v76 + 844);
      v75 = *(v74 + 844);
      if ((v77 == 2) != (v75 == 2))
      {
        if (v77 == 2)
        {
          goto LABEL_141;
        }
      }

      else if (*(v76 + 692) < *(v74 + 692))
      {
        goto LABEL_141;
      }

      v78 = *v8;
      v79 = *(*v8 + 844);
      if ((v75 == 2) != (v79 == 2))
      {
        if (v75 == 2)
        {
          goto LABEL_184;
        }
      }

      else if (*(v74 + 692) < *(v78 + 692))
      {
LABEL_184:
        for (++v9; ; ++v9)
        {
          if ((v75 == 2) != (*(*v9 + 844) == 2))
          {
            if (v75 == 2)
            {
              goto LABEL_190;
            }
          }

          else if (*(v74 + 692) < *(*v9 + 692))
          {
            goto LABEL_190;
          }
        }
      }

      for (++v9; v9 < a2; ++v9)
      {
        if ((v75 == 2) != (*(*v9 + 844) == 2))
        {
          if (v75 == 2)
          {
            break;
          }
        }

        else if (*(v74 + 692) < *(*v9 + 692))
        {
          break;
        }
      }

LABEL_190:
      k = a2;
      if (v9 < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          if ((v75 == 2) != (v79 == 2))
          {
            if (v75 != 2)
            {
              break;
            }
          }

          else if (*(v74 + 692) >= *(v78 + 692))
          {
            break;
          }

          v92 = *(k - 1);
          v78 = v92;
          v79 = *(v92 + 844);
        }
      }

      if (v9 >= k)
      {
        goto LABEL_209;
      }

      v93 = *v9;
      v94 = *k;
      do
      {
        *v9++ = v94;
        *k = v93;
        while (1)
        {
          v93 = *v9;
          if ((v75 == 2) != (*(*v9 + 844) == 2))
          {
            break;
          }

          if (*(v74 + 692) < *(v93 + 692))
          {
            goto LABEL_206;
          }

LABEL_204:
          ++v9;
        }

        if (v75 != 2)
        {
          goto LABEL_204;
        }

        do
        {
LABEL_206:
          while (1)
          {
            v95 = *--k;
            v94 = v95;
            if ((v75 == 2) != (*(v95 + 844) == 2))
            {
              break;
            }

            if (*(v74 + 692) >= *(v94 + 692))
            {
              goto LABEL_208;
            }
          }
        }

        while (v75 == 2);
LABEL_208:
        ;
      }

      while (v9 < k);
LABEL_209:
      v96 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v96;
      }

      a4 = 0;
      *v96 = v74;
    }
  }

  v107 = v9 + 1;
  v109 = v9 == a2 || v107 == a2;
  if ((a4 & 1) == 0)
  {
    if (v109)
    {
      return result;
    }

    while (1)
    {
      v165 = v7;
      v7 = v107;
      v167 = *v165;
      v166 = v165[1];
      v168 = *(v166 + 844);
      if ((v168 == 2) != (*(*v165 + 844) == 2))
      {
        if (v168 == 2)
        {
          goto LABEL_324;
        }
      }

      else if (*(v166 + 692) < *(v167 + 692))
      {
        do
        {
LABEL_324:
          while (1)
          {
            v169 = v165;
            v170 = *--v165;
            v165[2] = v167;
            v167 = v170;
            if ((v168 == 2) == (*(v170 + 844) == 2))
            {
              break;
            }

            if (v168 != 2)
            {
              goto LABEL_328;
            }
          }
        }

        while (*(v166 + 692) < *(v167 + 692));
LABEL_328:
        *v169 = v166;
      }

      v107 = v7 + 1;
      if (v7 + 1 == a2)
      {
        return result;
      }
    }
  }

  if (v109)
  {
    return result;
  }

  v110 = 0;
  v111 = v9;
  while (2)
  {
    v112 = v111;
    v111 = v107;
    v114 = *v112;
    v113 = v112[1];
    v115 = *(v113 + 844);
    if ((v115 == 2) != (*(*v112 + 844) == 2))
    {
      if (v115 != 2)
      {
        goto LABEL_251;
      }
    }

    else if (*(v113 + 692) >= *(v114 + 692))
    {
      goto LABEL_251;
    }

    v112[1] = v114;
    v116 = v9;
    if (v112 == v9)
    {
      goto LABEL_250;
    }

    v117 = v110;
    while (2)
    {
      v118 = *(v9 + v117 - 8);
      if ((v115 == 2) != (*(v118 + 844) == 2))
      {
        if (v115 != 2)
        {
          v116 = v112;
          goto LABEL_250;
        }

LABEL_247:
        --v112;
        *(v9 + v117) = v118;
        v117 -= 8;
        if (!v117)
        {
          v116 = v9;
          goto LABEL_250;
        }

        continue;
      }

      break;
    }

    if (*(v113 + 692) < *(v118 + 692))
    {
      goto LABEL_247;
    }

    v116 = (v9 + v117);
LABEL_250:
    *v116 = v113;
LABEL_251:
    v107 = v111 + 1;
    v110 += 8;
    if (v111 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}