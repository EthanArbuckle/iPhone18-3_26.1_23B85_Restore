uint64_t std::__shared_ptr_pointer<md::MuninJunctionIntersection *,std::shared_ptr<md::MuninJunctionElement>::__shared_ptr_default_delete<md::MuninJunctionElement,md::MuninJunctionIntersection>,std::allocator<md::MuninJunctionIntersection>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MuninJunctionIntersection *,std::shared_ptr<md::MuninJunctionElement>::__shared_ptr_default_delete<md::MuninJunctionElement,md::MuninJunctionIntersection>,std::allocator<md::MuninJunctionIntersection>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninJunctionFeature::clearLabels(md::MuninJunctionFeature *this, md::MuninJunctionFeature *a2)
{
  if (this != a2)
  {
    v3 = this;
    do
    {
      v4 = *v3 + 16;
      v5 = *v4;
      *(v4 + 24) = 0;
      v6 = *(v4 + 8);
      while (v5 != v6)
      {
        v7 = *v5;
        if (atomic_fetch_add((*v5 + 306), 0xFFu) == 1)
        {
          v8 = byte_1B3417E90[v7[493] + 3];
          atomic_load(v7 + 298);
          if (v8 == 255)
          {
            v8 = v7[493];
          }

          else
          {
            v7[493] = v8;
            v7[494] = 37;
          }

          if (v8 != 2)
          {
            v7[299] = 0;
          }

          v9 = atomic_load(v7 + 353);
          if ((v9 & 1) == 0)
          {
            v7[356] = 2 * (v7[493] == 2);
          }
        }

        v5 += 16;
      }

      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v4);
      v3 = (v3 + 16);
    }

    while (v3 != a2);
  }
}

void md::mun::MuninNavigation::path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v5 = 0;
  operator new();
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<std::pair<double,unsigned long>> &,std::__wrap_iter<std::pair<double,unsigned long>*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 16 * v3);
    v6 = *(a2 - 16);
    v5 = (a2 - 16);
    v7 = v6;
    v8 = *v4;
    v9 = *(v4 + 1);
    v10 = *(v5 + 1);
    v11 = v9 < v10;
    v12 = *v4 < v6;
    if (*v4 != v6)
    {
      v11 = v12;
    }

    if (v11)
    {
      do
      {
        *v5 = v8;
        *(v5 + 1) = v9;
        v5 = v4;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 16 * v3);
        v8 = *v4;
        v9 = *(v4 + 1);
        v13 = v9 < v10;
        if (*v4 != v7)
        {
          v13 = *v4 < v7;
        }
      }

      while (v13);
      *v5 = v7;
      *(v5 + 1) = v10;
    }
  }

  return result;
}

uint64_t std::__function::__func<md::mun::MuninNavigation::path(md::mun::CollectionPoint const&,geo::Geocentric<double> const&,BOOL,md::MuninSettings const&,std::function<BOOL ()(void)>)::$_0,std::allocator<md::mun::MuninNavigation::path(md::mun::CollectionPoint const&,geo::Geocentric<double> const&,BOOL,md::MuninSettings const&,std::function<BOOL ()(void)>)::$_0>,void ()(md::mun::MuninNavigationGraph const*)>::operator()(uint64_t a1, void **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = **(a1 + 16);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:nn200100](v13, *(a1 + 56));
  v6 = *v2;
  v4 = v2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v7 = v5[4];
      if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v7 + 192), v3) && *(v7 + 168))
      {
        std::__function::__value_func<BOOL ()(void)>::__value_func[abi:nn200100](v14, v13);
        operator new();
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  **(a1 + 8) = 0;
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](v13);
}

__n128 std::__function::__func<md::mun::MuninNavigation::path(md::mun::CollectionPoint const&,geo::Geocentric<double> const&,BOOL,md::MuninSettings const&,std::function<BOOL ()(void)>)::$_0,std::allocator<md::mun::MuninNavigation::path(md::mun::CollectionPoint const&,geo::Geocentric<double> const&,BOOL,md::MuninSettings const&,std::function<BOOL ()(void)>)::$_0>,void ()(md::mun::MuninNavigationGraph const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A4EBA0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::mun::MuninNavigation::findTargetPoint(md::mun::CollectionPoint const&,geo::Geocentric<double> const&,BOOL,md::MuninSettings const&)::$_0,std::allocator<md::mun::MuninNavigation::findTargetPoint(md::mun::CollectionPoint const&,geo::Geocentric<double> const&,BOOL,md::MuninSettings const&)::$_0>,void ()(md::mun::MuninNavigationGraph const*)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v78 = *(a1 + 40);
  v76 = **(a1 + 32);
  v80 = 0;
  v81 = 0;
  v82 = 0;
  md::mun::MuninMetadata::neighborsWithinRadiusInMetadatas<std::set<std::shared_ptr<md::mun::MuninMetadata>>>(v3, v5, &v80, 40.0);
  v6 = 0;
  memset(v96, 0, sizeof(v96));
  v97 = 1065353216;
  v95[0] = 0;
  v95[1] = 0;
  v94 = v95;
  v7 = (v4 + 1);
  do
  {
    *(&v86 + v6 * 8) = v5[v6] - *&v4[v6 + 1];
    ++v6;
  }

  while (v6 != 3);
  v8 = 0;
  v92 = v86;
  v93 = v87;
  v9 = 0.0;
  do
  {
    v9 = v9 + *(&v92 + v8) * *(&v92 + v8);
    v8 += 8;
  }

  while (v8 != 24);
  v79 = v4;
  v10 = 0;
  v11 = sqrt(v9);
  do
  {
    *(&v86 + v10) = *(&v92 + v10) * (1.0 / v11);
    v10 += 8;
  }

  while (v10 != 24);
  v12.n128_u64[1] = *(&v86 + 1);
  v90 = v86;
  v91 = v87;
  v13 = fmax(v11 * 0.05, 0.0);
  v12.n128_u64[0] = 1.0;
  v14 = fmin(v13, 1.0);
  v15 = *(v78 + 8);
  geo::RigidTransform<double,float>::inverse(&v86, v7, v13, v12);
  for (i = 0; i != 3; ++i)
  {
    *(&v98 + i) = *&v88[i];
  }

  v17 = v14 * 3.0;
  v18 = v89;
  v100 = v89;
  v19 = gm::Quaternion<double>::operator*(&v98, v5);
  v20 = 0;
  v101 = v19;
  v102 = v21;
  v103 = v22;
  do
  {
    *&v104[v20] = *(&v101 + v20) + *(&v86 + v20);
    v20 += 8;
  }

  while (v20 != 24);
  v23 = v81;
  v24 = v78;
  __p = v80;
  if (v80 == v81)
  {
    goto LABEL_74;
  }

  v73 = a1;
  v72 = v15 * 5.0;
  v25 = v105;
  v26 = v17 + 1.0;
  v74 = v26;
  v27 = 1.79769313e308;
  v28 = 2.0;
  v29 = v80;
  v30 = v4;
  v77 = v81;
  do
  {
    v31 = *v29;
    v85 = v31;
    if (*v31 != *v30)
    {
      for (j = 0; j != 3; ++j)
      {
        *(&v98 + j * 8) = v5[j] - *&v31[j + 1];
      }

      v33 = 0;
      v83 = v98;
      v84 = v99;
      v34 = 0.0;
      do
      {
        v34 = v34 + *(&v83 + v33) * *(&v83 + v33);
        v33 += 8;
      }

      while (v33 != 24);
      for (k = 0; k != 3; ++k)
      {
        *(&v98 + k * 8) = *&v31[k + 1] - *(v7 + k * 8);
      }

      v36 = 0;
      v37 = 0.0;
      do
      {
        v37 = v37 + *(&v98 + v36) * *(&v98 + v36);
        v36 += 8;
      }

      while (v36 != 24);
      v38 = sqrt(v34);
      if (v38 <= v11)
      {
        v39 = sqrt(v37);
        v40 = v39 <= *(v24 + 16) && v39 <= v11 * 1.1;
        if (v40 && v39 <= (v11 - v38) * 4.0)
        {
          for (m = 0; m != 3; ++m)
          {
            *(&v98 + m) = *&v88[m];
          }

          v100 = v18;
          v43 = gm::Quaternion<double>::operator*(&v98, (v31 + 1));
          v44 = 0;
          v101 = v43;
          v102 = v45;
          v103 = v46;
          do
          {
            *&v104[v44] = *(&v101 + v44) + *(&v86 + v44);
            v44 += 8;
          }

          while (v44 != 24);
          v30 = v4;
          if (v25 <= v28)
          {
            if (v25 >= -3.0)
            {
              if (v105 <= v28 && v105 >= -3.0)
              {
                goto LABEL_37;
              }
            }

            else if (v105 <= v28)
            {
              goto LABEL_37;
            }
          }

          else if (v105 >= -3.0)
          {
LABEL_37:
            v47 = v31[10];
            v48 = v4[10];
            v49 = v48 - v47;
            v40 = v47 > v48;
            v50 = v47 - v48;
            if (!v40)
            {
              v50 = v49;
            }

            if (v50 <= 0xEA60)
            {
              v51 = 1.0;
            }

            else
            {
              v51 = v74;
            }

            v52 = v38;
            v53 = gm::Matrix<double,3,1>::angle<int,void>(&v90, &v83);
            v54 = v53 * 12.7323954;
            if (!v76)
            {
              v54 = 0.0;
            }

            v55 = (v54 + v52) * v51;
            std::__tree<md::mun::CollectionPoint const*>::__emplace_unique_key_args<md::mun::CollectionPoint const*,md::mun::CollectionPoint const* const&>(&v94, v31);
            v56 = v55;
            *&v98 = &v85;
            v57 = std::__hash_table<std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::__unordered_map_hasher<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::hash<md::mun::CollectionPoint const*>,std::equal_to<md::mun::CollectionPoint const*>,true>,std::__unordered_map_equal<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::equal_to<md::mun::CollectionPoint const*>,std::hash<md::mun::CollectionPoint const*>,true>,std::allocator<std::__hash_value_type<md::mun::CollectionPoint const*,double>>>::__emplace_unique_key_args<md::mun::CollectionPoint const*,std::piecewise_construct_t const&,std::tuple<md::mun::CollectionPoint const* const&>,std::tuple<>>(v96, v85);
            v30 = v4;
            v57[3] = v56;
            v27 = fmin(v27, v56);
            v28 = 2.0;
          }

          v23 = v77;
          v24 = v78;
        }
      }
    }

    ++v29;
  }

  while (v29 != v23);
  v59 = v94;
  a1 = v73;
  if (v94 == v95)
  {
LABEL_74:
    v60 = 0;
    goto LABEL_75;
  }

  v60 = 0;
  v61 = 0x80000000;
  v62 = 1.79769313e308;
  do
  {
    v64 = v59 + 4;
    v63 = v59[4];
    *&v98 = v59 + 4;
    v65 = std::__hash_table<std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::__unordered_map_hasher<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::hash<md::mun::CollectionPoint const*>,std::equal_to<md::mun::CollectionPoint const*>,true>,std::__unordered_map_equal<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::equal_to<md::mun::CollectionPoint const*>,std::hash<md::mun::CollectionPoint const*>,true>,std::allocator<std::__hash_value_type<md::mun::CollectionPoint const*,double>>>::__emplace_unique_key_args<md::mun::CollectionPoint const*,std::piecewise_construct_t const&,std::tuple<md::mun::CollectionPoint const* const&>,std::tuple<>>(v96, v63);
    v66 = v65[3];
    if (v66 <= v27 + v72)
    {
      v67 = (*(*v64 + 80) - *(v79 + 20)) / 86400000;
      if (v61 < v67 || (v61 == v67 ? (v68 = v66 < v62) : (v68 = 0), v68))
      {
        v62 = v65[3];
        v61 = (*(*v64 + 80) - *(v79 + 20)) / 86400000;
        v60 = *v64;
      }
    }

    v69 = v59[1];
    if (v69)
    {
      do
      {
        v70 = v69;
        v69 = *v69;
      }

      while (v69);
    }

    else
    {
      do
      {
        v70 = v59[2];
        v71 = *v70 == v59;
        v59 = v70;
      }

      while (!v71);
    }

    v59 = v70;
  }

  while (v70 != v95);
LABEL_75:
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v95[0]);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v96);
  if (__p)
  {
    operator delete(__p);
  }

  **(a1 + 8) = v60;
}

__n128 std::__function::__func<md::mun::MuninNavigation::findTargetPoint(md::mun::CollectionPoint const&,geo::Geocentric<double> const&,BOOL,md::MuninSettings const&)::$_0,std::allocator<md::mun::MuninNavigation::findTargetPoint(md::mun::CollectionPoint const&,geo::Geocentric<double> const&,BOOL,md::MuninSettings const&)::$_0>,void ()(md::mun::MuninNavigationGraph const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A4EBE8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1B32A3B04(_Unwind_Exception *a1)
{
  if (*(v1 - 161) < 0)
  {
    operator delete(*(v1 - 184));
  }

  _Unwind_Resume(a1);
}

double VKTrafficFeatureDirection(void *a1, void *a2)
{
  v3 = a2;
  LODWORD(a1) = [v3 routeCoordinateAtDistance:*a1 beforeRouteCoordinate:20.0];
  [v3 pointAt:a1];
  v5 = v4;
  v7 = v6;
  [v3 pointAt:(a1 + 1)];
  v10 = vabdd_f64(v7, v9);
  if (vabdd_f64(v5, v8) < 0.00000011920929 && v10 < 0.00000011920929)
  {
    v14 = -1.0;
  }

  else
  {
    GEOBearingFromCoordinateToCoordinate();
    v13 = fmod(v12, 360.0);
    v14 = fmod(v13 + 360.0, 360.0);
  }

  return v14;
}

uint64_t md::ARApplyWorldTransformUpdatesLogic::runAfterLayout(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = gdc::Registry::storage<arComponents::WorldTransform>(v1);
  result = gdc::Registry::storage<arComponents::BaseWorldTransform>(v1);
  v4 = result;
  v5 = (result + 32);
  v7 = v2[7];
  v6 = v2[8];
  if (*(result + 64) - *(result + 56) >= (v6 - v7))
  {
    v8 = v2 + 4;
  }

  else
  {
    v8 = (result + 32);
  }

  if (v2 + 4 == v8 && v7 != v6)
  {
    v9 = v2[10] + 56;
    do
    {
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5, *(v7 + 4));
      v10 = v4[8];
      if (v10 != result)
      {
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v5, *(v7 + 4));
        if (v10 == result)
        {
          v11 = v4[11];
        }

        else
        {
          v11 = v4[10] + 80 * ((result - v4[7]) >> 3);
        }

        v12 = v9 - 56;
        v13 = *v11;
        v14 = *(v11 + 16);
        v15 = *(v11 + 48);
        v16 = *(v11 + 56);
        v17 = *(v11 + 72);
        v18 = *(v11 + 24);
        *(v9 - 16) = *(v11 + 40);
        *(v9 - 32) = v18;
        *(v9 - 8) = v15;
        *(v12 + 16) = v14;
        *v12 = v13;
        *(v9 + 16) = v17;
        *v9 = v16;
      }

      v7 += 8;
      v9 += 80;
    }

    while (v7 != v6);
  }

  if (v5 == v8)
  {
    v19 = v4[7];
    v20 = v4[8];
    if (v19 != v20)
    {
      v21 = v4[10] + 56;
      do
      {
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v2 + 4, *(v19 + 4));
        v22 = v2[8];
        if (v22 != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v2 + 4, *(v19 + 4));
          if (v22 == result)
          {
            v23 = v2[11];
          }

          else
          {
            v23 = v2[10] + 80 * ((result - v2[7]) >> 3);
          }

          v24 = *(v21 - 56);
          v25 = *(v21 - 40);
          v26 = *(v21 - 8);
          v27 = *v21;
          v28 = *(v21 + 16);
          v29 = *(v21 - 32);
          *(v23 + 40) = *(v21 - 16);
          *(v23 + 24) = v29;
          *(v23 + 48) = v26;
          *(v23 + 16) = v25;
          *v23 = v24;
          *(v23 + 72) = v28;
          *(v23 + 56) = v27;
        }

        v19 += 8;
        v21 += 80;
      }

      while (v19 != v20);
    }
  }

  return result;
}

uint64_t gdc::Registry::storage<arComponents::BaseWorldTransform>(uint64_t a1)
{
  v3 = 0x7558385A40C6FA73;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x7558385A40C6FA73uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::BaseWorldTransform>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 80 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    do
    {
      *(v6 + 24 + v7) = *(v8 - 56 + v7);
      v7 += 8;
    }

    while (v7 != 24);
    v9 = 0;
    v10 = v8 - 80;
    *(v6 + 48) = *(v8 - 32);
    do
    {
      *(v6 + v9) = *(v10 + v9);
      v9 += 8;
    }

    while (v9 != 24);
    v11 = 0;
    v12 = v8 - 24;
    do
    {
      *(v6 + 56 + v11) = *(v12 + v11);
      v11 += 8;
    }

    while (v11 != 24);
    a1[11] = v10;
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

void gdc::ComponentStorageWrapper<arComponents::BaseWorldTransform>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::BaseWorldTransform>::~ComponentStorageWrapper(uint64_t a1)
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

void *md::ARApplyWorldTransformUpdatesLogic::runBeforeLayout(uint64_t a1)
{
  v188 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 120);
  v2 = gdc::Registry::storage<arComponents::WorldTransform>(v1);
  v3 = gdc::Registry::storage<arComponents::TranslationToApply>(v1);
  v4 = v3;
  v5 = (v3 + 32);
  v7 = v2[7];
  v6 = v2[8];
  if (*(v3 + 64) - *(v3 + 56) >= (v6 - v7))
  {
    v8 = v2 + 4;
  }

  else
  {
    v8 = (v3 + 32);
  }

  v175 = v8;
  v177 = v2 + 4;
  if (v2 + 4 == v8 && v7 != v6)
  {
    v9 = v2[10];
    do
    {
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5, *(v7 + 4));
      v11 = v4[8];
      if (v11 != Index)
      {
        v12 = *v7;
        v13 = HIDWORD(*v7);
        v14 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v5, HIDWORD(*v7));
        if (v11 == v14)
        {
          v15 = v4[11];
        }

        else
        {
          v15 = v4[10] + 24 * ((v14 - v4[7]) >> 3);
        }

        v16 = gdc::Registry::storage<arComponents::BaseWorldTransform>(*(a1 + 120));
        if (*(v16 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v16 + 32), v13))
        {
          v17 = *(a1 + 120);
          v181 = *v9;
          v182 = *(v9 + 16);
          v183 = *(v9 + 24);
          v184 = *(v9 + 40);
          v185 = *(v9 + 48);
          v186 = *(v9 + 56);
          v187 = *(v9 + 72);
          v18 = gdc::Registry::storage<arComponents::BaseWorldTransform>(v17);
          gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(v18, v12, v181.i8);
        }

        for (i = 0; i != 24; i += 8)
        {
          *(v9 + i) = *(v9 + i) + *(v15 + i);
        }

        v20 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(*(a1 + 120));
        gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v20, v12);
      }

      v9 += 80;
      v7 += 8;
    }

    while (v7 != v6);
  }

  if (v5 == v175)
  {
    v21 = v4[7];
    v22 = v4[8];
    if (v21 != v22)
    {
      v23 = v4[10];
      do
      {
        v24 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v177, *(v21 + 4));
        v25 = v2[8];
        if (v25 != v24)
        {
          v26 = *v21;
          v27 = HIDWORD(*v21);
          v28 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v177, HIDWORD(*v21));
          if (v25 == v28)
          {
            v29 = v2[11];
          }

          else
          {
            v29 = v2[10] + 80 * ((v28 - v2[7]) >> 3);
          }

          v30 = gdc::Registry::storage<arComponents::BaseWorldTransform>(*(a1 + 120));
          if (*(v30 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v30 + 32), v27))
          {
            v31 = *(a1 + 120);
            v181 = *v29;
            v182 = *(v29 + 16);
            v183 = *(v29 + 24);
            v184 = *(v29 + 40);
            v185 = *(v29 + 48);
            v186 = *(v29 + 56);
            v187 = *(v29 + 72);
            v32 = gdc::Registry::storage<arComponents::BaseWorldTransform>(v31);
            gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(v32, v26, v181.i8);
          }

          for (j = 0; j != 24; j += 8)
          {
            *(v29 + j) = *(v29 + j) + *(v23 + j);
          }

          v34 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(*(a1 + 120));
          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v34, v26);
        }

        v23 += 24;
        v21 += 8;
      }

      while (v21 != v22);
    }
  }

  v35 = *(a1 + 120);
  v36 = gdc::Registry::storage<arComponents::WorldTransform>(v35);
  v37 = gdc::Registry::storage<arComponents::RotationToApply>(v35);
  v38 = v37;
  v39 = (v37 + 32);
  v41 = v36[7];
  v40 = v36[8];
  if (*(v37 + 64) - *(v37 + 56) >= (v40 - v41))
  {
    v42 = v36 + 4;
  }

  else
  {
    v42 = (v37 + 32);
  }

  if (v36 + 4 == v42 && v41 != v40)
  {
    v43 = v36[10];
    do
    {
      v44 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v39, *(v41 + 4));
      v45 = v38[8];
      if (v45 != v44)
      {
        v46 = *v41;
        v47 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v39, HIDWORD(*v41));
        if (v45 == v47)
        {
          v48 = v38[11];
        }

        else
        {
          v48 = v38[10] + 2 * (v47 - v38[7]);
        }

        _ZZN2md33ARApplyWorldTransformUpdatesLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_27ARUpDirectionUpdatesContextENS_18ARAnimationContextENS_26ARRotateTowardsUserContextENS_25LabelsExternalMeshContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_35ARApplyWorldTransformUpdatesContextEENK3__1clENS5_6EntityERN12arComponents14WorldTransformERNSL_15RotationToApplyE(a1, v46, v43, v48);
      }

      v43 += 80;
      v41 += 8;
    }

    while (v41 != v40);
  }

  if (v39 == v42)
  {
    v49 = v38[7];
    v50 = v38[8];
    if (v49 != v50)
    {
      v51 = v38[10];
      do
      {
        v52 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v36 + 4, *(v49 + 4));
        v53 = v36[8];
        if (v53 != v52)
        {
          v54 = *v49;
          v55 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v36 + 4, HIDWORD(*v49));
          if (v53 == v55)
          {
            v56 = v36[11];
          }

          else
          {
            v56 = v36[10] + 80 * ((v55 - v36[7]) >> 3);
          }

          _ZZN2md33ARApplyWorldTransformUpdatesLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_27ARUpDirectionUpdatesContextENS_18ARAnimationContextENS_26ARRotateTowardsUserContextENS_25LabelsExternalMeshContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_35ARApplyWorldTransformUpdatesContextEENK3__1clENS5_6EntityERN12arComponents14WorldTransformERNSL_15RotationToApplyE(a1, v54, v56, v51);
        }

        v51 += 16;
        v49 += 8;
      }

      while (v49 != v50);
    }
  }

  v57 = *(a1 + 120);
  v58 = gdc::Registry::storage<arComponents::WorldTransform>(v57);
  v59 = gdc::Registry::storage<arComponents::ScaleToApply>(v57);
  v60 = v59;
  v61 = (v59 + 32);
  v62 = v58[7];
  v178 = v58[8];
  if (*(v59 + 64) - *(v59 + 56) >= (v178 - v62))
  {
    v63 = v58 + 4;
  }

  else
  {
    v63 = (v59 + 32);
  }

  v173 = v63;
  if (v58 + 4 == v63 && v62 != v178)
  {
    v64 = v58[10];
    do
    {
      v65 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v61, *(v62 + 4));
      v66 = v60[8];
      if (v66 != v65)
      {
        v67 = *v62;
        v68 = HIDWORD(*v62);
        v69 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v61, HIDWORD(*v62));
        if (v66 == v69)
        {
          v70 = v60[11];
        }

        else
        {
          v70 = (v60[10] + v69 - v60[7]);
        }

        v71 = gdc::Registry::storage<arComponents::BaseWorldTransform>(*(a1 + 120));
        if (*(v71 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v71 + 32), v68))
        {
          v72 = *(a1 + 120);
          v181 = *v64;
          v182 = *(v64 + 16);
          v183 = *(v64 + 24);
          v184 = *(v64 + 40);
          v185 = *(v64 + 48);
          v186 = *(v64 + 56);
          v187 = *(v64 + 72);
          v73 = gdc::Registry::storage<arComponents::BaseWorldTransform>(v72);
          gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(v73, v67, v181.i8);
        }

        v74 = 0;
        v75 = *v70;
        do
        {
          *&v181.i64[v74] = *(v64 + v74 * 8 + 56) * v75;
          ++v74;
        }

        while (v74 != 3);
        v76 = v182;
        *(v64 + 56) = v181;
        *(v64 + 72) = v76;
        v77 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(*(a1 + 120));
        gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v77, v67);
      }

      v64 += 80;
      v62 += 8;
    }

    while (v62 != v178);
  }

  v78 = v58 + 4;
  if (v61 == v173)
  {
    v79 = v60[7];
    v80 = v60[8];
    if (v79 != v80)
    {
      v81 = v60[10];
      do
      {
        v82 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v78, *(v79 + 4));
        v83 = v58[8];
        if (v83 != v82)
        {
          v84 = *v79;
          v85 = HIDWORD(*v79);
          v86 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v78, HIDWORD(*v79));
          if (v83 == v86)
          {
            v87 = v58[11];
          }

          else
          {
            v87 = v58[10] + 80 * ((v86 - v58[7]) >> 3);
          }

          v88 = gdc::Registry::storage<arComponents::BaseWorldTransform>(*(a1 + 120));
          if (*(v88 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v88 + 32), v85))
          {
            v89 = *(a1 + 120);
            v181 = *v87;
            v182 = *(v87 + 16);
            v183 = *(v87 + 24);
            v184 = *(v87 + 40);
            v185 = *(v87 + 48);
            v186 = *(v87 + 56);
            v187 = *(v87 + 72);
            v90 = gdc::Registry::storage<arComponents::BaseWorldTransform>(v89);
            gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(v90, v84, v181.i8);
            v78 = v58 + 4;
          }

          v91 = 0;
          v92 = *v81;
          do
          {
            *&v181.i64[v91] = *(v87 + 56 + v91 * 8) * v92;
            ++v91;
          }

          while (v91 != 3);
          v93 = v182;
          *(v87 + 56) = v181;
          *(v87 + 72) = v93;
          v94 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(*(a1 + 120));
          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v94, v84);
        }

        ++v81;
        v79 += 8;
      }

      while (v79 != v80);
    }
  }

  v95 = *(a1 + 120);
  v96 = gdc::Registry::storage<arComponents::WorldTransform>(v95);
  v97 = gdc::Registry::storage<arComponents::UpRelativeTranslationToApply>(v95);
  v98 = gdc::Registry::storage<arComponents::UpDirection>(v95);
  v99.i64[0] = v96;
  v99.i64[1] = v97;
  v181 = vaddq_s64(v99, vdupq_n_s64(0x20uLL));
  v174 = v98;
  v176 = (v98 + 32);
  v182 = v98 + 32;
  v100 = v181.i64[0];
  v101 = 1;
  v102 = &v181;
  do
  {
    if (*(v181.i64[v101] + 32) - *(v181.i64[v101] + 24) < *(v100 + 32) - *(v100 + 24))
    {
      v100 = v181.i64[v101];
      v102 = (&v181 + v101 * 8);
    }

    ++v101;
  }

  while (v101 != 3);
  v179 = v96 + 4;
  v171 = v102->i64[0];
  if (v96 + 4 == v102->i64[0])
  {
    v103 = v96[7];
    v104 = v96[8];
    if (v103 != v104)
    {
      v105 = v96[10];
      do
      {
        v106 = *(v103 + 4);
        v107 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v97 + 4, v106);
        v108 = v97[8];
        if (v108 != v107)
        {
          v109 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v176, v106);
          v110 = v174[8];
          if (v110 != v109)
          {
            v111 = *v103;
            v112 = HIDWORD(*v103);
            v113 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v97 + 4, HIDWORD(*v103));
            if (v108 == v113)
            {
              v114 = v97[11];
            }

            else
            {
              v114 = (v97[10] + v113 - v97[7]);
            }

            v115 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v176, v112);
            if (v110 == v115)
            {
              v116 = v174[11];
            }

            else
            {
              v116 = v174[10] + 12 * ((v115 - v174[7]) >> 3);
            }

            _ZZN2md33ARApplyWorldTransformUpdatesLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_27ARUpDirectionUpdatesContextENS_18ARAnimationContextENS_26ARRotateTowardsUserContextENS_25LabelsExternalMeshContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_35ARApplyWorldTransformUpdatesContextEENK3__3clENS5_6EntityERN12arComponents14WorldTransformERNSL_28UpRelativeTranslationToApplyERNSL_11UpDirectionE(a1, v111, v105, v114, v116);
          }
        }

        v105 += 80;
        v103 += 8;
      }

      while (v103 != v104);
    }
  }

  v117 = v96;
  v172 = v97 + 4;
  if (v97 + 4 == v171)
  {
    v118 = v97[7];
    v119 = v97[8];
    if (v118 != v119)
    {
      v120 = v97[10];
      do
      {
        v121 = *(v118 + 4);
        v122 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v179, v121);
        v123 = v117[8];
        if (v123 != v122)
        {
          v124 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v176, v121);
          v125 = v174[8];
          if (v125 != v124)
          {
            v126 = *v118;
            v127 = HIDWORD(*v118);
            v128 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v179, HIDWORD(*v118));
            if (v123 == v128)
            {
              v129 = v117[11];
            }

            else
            {
              v129 = v117[10] + 80 * ((v128 - v117[7]) >> 3);
            }

            v130 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v176, v127);
            if (v125 == v130)
            {
              v131 = v174[11];
            }

            else
            {
              v131 = v174[10] + 12 * ((v130 - v174[7]) >> 3);
            }

            _ZZN2md33ARApplyWorldTransformUpdatesLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_27ARUpDirectionUpdatesContextENS_18ARAnimationContextENS_26ARRotateTowardsUserContextENS_25LabelsExternalMeshContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_35ARApplyWorldTransformUpdatesContextEENK3__3clENS5_6EntityERN12arComponents14WorldTransformERNSL_28UpRelativeTranslationToApplyERNSL_11UpDirectionE(a1, v126, v129, v120, v131);
          }
        }

        ++v120;
        v118 += 8;
      }

      while (v118 != v119);
    }
  }

  if (v176 == v171)
  {
    v132 = v174[7];
    v133 = v174[8];
    if (v132 != v133)
    {
      v134 = v117;
      v135 = v174[10];
      do
      {
        v136 = *(v132 + 4);
        v137 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v179, v136);
        v138 = v134[8];
        if (v138 != v137)
        {
          v139 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v172, v136);
          v140 = v97[8];
          if (v140 != v139)
          {
            v141 = *v132;
            v142 = HIDWORD(*v132);
            v143 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v179, HIDWORD(*v132));
            if (v138 == v143)
            {
              v144 = v134[11];
            }

            else
            {
              v144 = v134[10] + 80 * ((v143 - v134[7]) >> 3);
            }

            v145 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v172, v142);
            if (v140 == v145)
            {
              v146 = v97[11];
            }

            else
            {
              v146 = (v97[10] + v145 - v97[7]);
            }

            _ZZN2md33ARApplyWorldTransformUpdatesLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_27ARUpDirectionUpdatesContextENS_18ARAnimationContextENS_26ARRotateTowardsUserContextENS_25LabelsExternalMeshContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_35ARApplyWorldTransformUpdatesContextEENK3__3clENS5_6EntityERN12arComponents14WorldTransformERNSL_28UpRelativeTranslationToApplyERNSL_11UpDirectionE(a1, v141, v144, v146, v135);
          }
        }

        v135 += 12;
        v132 += 8;
      }

      while (v132 != v133);
    }
  }

  v147 = gdc::Registry::storage<arComponents::TranslationToApply>(*(a1 + 120));
  v148 = v147;
  if (v147[29])
  {
    v149 = v147[28];
    if (v149)
    {
      v150 = v147[31];
      v151 = v147[7];
      v152 = (v147[8] - v151) >> 3;
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v149[6], v150, v151, v152);
        v149 = *v149;
      }

      while (v149);
    }
  }

  v148[8] = v148[7];
  v148[11] = v148[10];
  v153 = gdc::Registry::storage<arComponents::UpRelativeTranslationToApply>(*(a1 + 120));
  v154 = v153;
  if (v153[29])
  {
    v155 = v153[28];
    if (v155)
    {
      v156 = v153[31];
      v157 = v153[7];
      v158 = (v153[8] - v157) >> 3;
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v155[6], v156, v157, v158);
        v155 = *v155;
      }

      while (v155);
    }
  }

  v154[8] = v154[7];
  v154[11] = v154[10];
  v159 = gdc::Registry::storage<arComponents::RotationToApply>(*(a1 + 120));
  v160 = v159;
  if (v159[29])
  {
    v161 = v159[28];
    if (v161)
    {
      v162 = v159[31];
      v163 = v159[7];
      v164 = (v159[8] - v163) >> 3;
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v161[6], v162, v163, v164);
        v161 = *v161;
      }

      while (v161);
    }
  }

  v160[8] = v160[7];
  v160[11] = v160[10];
  result = gdc::Registry::storage<arComponents::ScaleToApply>(*(a1 + 120));
  v166 = result;
  if (result[29])
  {
    v167 = result[28];
    if (v167)
    {
      v168 = result[31];
      v169 = result[7];
      v170 = (result[8] - v169) >> 3;
      do
      {
        result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v167[6], v168, v169, v170);
        v167 = *v167;
      }

      while (v167);
    }
  }

  v166[8] = v166[7];
  v166[11] = v166[10];
  return result;
}

uint64_t gdc::Registry::storage<arComponents::TranslationToApply>(uint64_t a1)
{
  v3 = 0x2EB7B1A523944070;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x2EB7B1A523944070uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void _ZZN2md33ARApplyWorldTransformUpdatesLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_27ARUpDirectionUpdatesContextENS_18ARAnimationContextENS_26ARRotateTowardsUserContextENS_25LabelsExternalMeshContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_35ARApplyWorldTransformUpdatesContextEENK3__1clENS5_6EntityERN12arComponents14WorldTransformERNSL_15RotationToApplyE(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = HIDWORD(a2);
  v9 = gdc::Registry::storage<arComponents::BaseWorldTransform>(*(a1 + 120));
  if (*(v9 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v9 + 32), v8))
  {
    v10 = *(a1 + 120);
    v15 = *a3;
    v16 = *(a3 + 16);
    v17 = *(a3 + 24);
    v18 = *(a3 + 40);
    v19 = *(a3 + 48);
    v20 = *(a3 + 56);
    v21 = *(a3 + 72);
    v11 = gdc::Registry::storage<arComponents::BaseWorldTransform>(v10);
    gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(v11, a2, &v15);
  }

  for (i = 0; i != 3; ++i)
  {
    *&v14[i] = *(a4 + 4 * i);
  }

  *&v14[3] = *(a4 + 12);
  gm::Quaternion<double>::operator*(&v15, a3 + 24, v14);
  *(a3 + 24) = v15;
  *(a3 + 40) = v16;
  *(a3 + 48) = v17;
  v13 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(*(a1 + 120));

  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v13, a2);
}

void _ZZN2md33ARApplyWorldTransformUpdatesLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_27ARUpDirectionUpdatesContextENS_18ARAnimationContextENS_26ARRotateTowardsUserContextENS_25LabelsExternalMeshContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_35ARApplyWorldTransformUpdatesContextEENK3__3clENS5_6EntityERN12arComponents14WorldTransformERNSL_28UpRelativeTranslationToApplyERNSL_11UpDirectionE(uint64_t a1, unint64_t a2, uint64_t a3, double *a4, uint64_t a5)
{
  v10 = HIDWORD(a2);
  v11 = gdc::Registry::storage<arComponents::BaseWorldTransform>(*(a1 + 120));
  if (*(v11 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v11 + 32), v10))
  {
    v12 = *(a1 + 120);
    v20 = *a3;
    v21 = *(a3 + 16);
    v22 = *(a3 + 24);
    v23 = *(a3 + 40);
    v24 = *(a3 + 48);
    v25 = *(a3 + 56);
    v26 = *(a3 + 72);
    v13 = gdc::Registry::storage<arComponents::BaseWorldTransform>(v12);
    gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(v13, a2, &v20);
  }

  for (i = 0; i != 3; ++i)
  {
    v19[i] = *(a5 + 4 * i);
  }

  v15 = 0;
  v16 = *a4;
  do
  {
    *(&v20 + v15 * 8) = v19[v15] * v16;
    ++v15;
  }

  while (v15 != 3);
  for (j = 0; j != 24; j += 8)
  {
    *(a3 + j) = *(a3 + j) + *(&v20 + j);
  }

  v18 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(*(a1 + 120));

  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v18, a2);
}

BOOL gdc::ComponentStorageWrapper<arComponents::TranslationToApply>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11] - 24;
    do
    {
      *(v6 + v7) = *(v8 + v7);
      v7 += 8;
    }

    while (v7 != 24);
    a1[11] = v8;
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

void gdc::ComponentStorageWrapper<arComponents::TranslationToApply>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::TranslationToApply>::~ComponentStorageWrapper(uint64_t a1)
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

void md::ARApplyWorldTransformUpdatesLogic::~ARApplyWorldTransformUpdatesLogic(md::ARApplyWorldTransformUpdatesLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B32A71EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak((v16 - 88));

  _Unwind_Resume(a1);
}

void sub_1B32A7348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKAttachedNavGestureCameraBehavior;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B32A8C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_1B32A8DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKDetachedNavGestureCameraBehavior;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t md::LiveTileFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v5, 0);
  gdc::ResourceKey::getInt32(v5, 1u);
  gdc::ResourceKey::getInt32(v5, 2u);
  [v4 size];
  [v4 scale];
  [v4 style];
  v6 = GEOLiveTileKeyMake();

  return v6;
}

void md::LiveTileFetcher::~LiveTileFetcher(md::LiveTileFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void createRenderItemForEntity(uint64_t a1, int a2, void *a3, unint64_t *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  AssociationItemStorage = md::VKMRenderResourcesStore::getAssociationItemStorage(a3, *a4, 1);
  if (AssociationItemStorage)
  {
    v9 = AssociationItemStorage;
    v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a3 + 24, *a4);
    if (!v10)
    {
      goto LABEL_30;
    }

    v11 = v10;
    v13 = v10[3];
    v12 = v10[4];
    v14 = a3[34];
    if (!v14)
    {
      v15 = malloc_type_malloc(120 * a3[32], 0x10F2040A5726FBFuLL);
      *buf = v15;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>((a3 + 29), v15);
      v14 = a3[34];
      v16 = &v15[15 * a3[32] - 15];
      if (v16 >= v15)
      {
        do
        {
          v17 = v16;
          *v16 = v14;
          v16 -= 15;
          v14 = v17;
        }

        while (v16 >= v15);
        v14 = (v16 + 15);
      }

      a3[34] = v14;
    }

    v49 = v13;
    a3[34] = v14->i64[0];
    ggl::RenderItem::RenderItem(v14, "");
    v19 = v11[4];
    v18 = v11[5];
    if (v19 >= v18)
    {
      v48 = v12;
      v23 = v11[3];
      v24 = v19 - v23;
      v25 = (v19 - v23) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v27 = v18 - v23;
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
        if (!(v28 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v29 = (v19 - v23) >> 3;
      v30 = (8 * v25);
      v31 = (8 * v25 - 8 * v29);
      *v30 = v14;
      v20 = v30 + 1;
      memcpy(v31, v23, v24);
      v11[3] = v31;
      v11[4] = v20;
      v11[5] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      v12 = v48;
    }

    else
    {
      *v19 = v14;
      v20 = v19 + 8;
    }

    v11[4] = v20;
    v32 = *a4;
    if (v32)
    {
      v34 = v9[2];
      v33 = v9[3];
      if (v34 >= v33)
      {
        v38 = v9[1];
        v39 = (v34 - v38) >> 2;
        v36 = v49;
        if ((v39 + 1) >> 62)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v40 = v33 - v38;
        v41 = v40 >> 1;
        if (v40 >> 1 <= (v39 + 1))
        {
          v41 = v39 + 1;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v42 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        if (v42)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v42);
        }

        v43 = (4 * v39);
        *v43 = a2;
        v35 = 4 * v39 + 4;
        v44 = v9[1];
        v45 = v9[2] - v44;
        v46 = v43 - v45;
        memcpy(v43 - v45, v44, v45);
        v47 = v9[1];
        v9[1] = v46;
        v9[2] = v35;
        v9[3] = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        *v34 = a2;
        v35 = (v34 + 1);
        v36 = v49;
      }

      v22 = 0;
      v9[2] = v35;
      *a1 = v32;
      *(a1 + 8) = (v12 - v36) >> 3;
    }

    else
    {
LABEL_30:
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v37 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "false";
        v51 = 2080;
        v52 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
        v53 = 1024;
        v54 = 99;
        _os_log_impl(&dword_1B2754000, v37, OS_LOG_TYPE_ERROR, "Failed to resolve render item: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
      }

      *a1 = 0;
      v22 = 1;
    }
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v21 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "false";
      v51 = 2080;
      v52 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
      v53 = 1024;
      v54 = 93;
      _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_ERROR, "Failed to resolve association handle data: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    v22 = 1;
    *a1 = 1;
  }

  *(a1 + 16) = v22;
}

uint64_t ecs2::addComponent<md::ls::FinishedProcessing>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4EF80;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4EF80;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t ecs2::addComponent<md::ls::HasMaterialRasterRenderItem>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A4F058;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A4F058;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::UniqueRenderArrayID>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A4F1F8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A4F1F8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t addIntendedSceneLayer<ecs2::Runtime>(uint64_t result, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        v3 = a2 << 32;
        v6 = &unk_1F2A4F428;
        v7 = a2 << 32;
        v8 = &v6;
        v10 = v9;
        v4 = &unk_1F2A4F428;
        break;
      case 3:
        v3 = a2 << 32;
        v6 = &unk_1F2A4F4D8;
        v7 = a2 << 32;
        v8 = &v6;
        v10 = v9;
        v4 = &unk_1F2A4F4D8;
        break;
      case 4:
        v3 = a2 << 32;
        v6 = &unk_1F2A4F588;
        v7 = a2 << 32;
        v8 = &v6;
        v10 = v9;
        v4 = &unk_1F2A4F588;
        break;
      default:
        return result;
    }

LABEL_11:
    v9[0] = v4;
    v9[1] = v3;
    v11 = 0;
    ecs2::Runtime::queueCommand();
    if (v11 != -1)
    {
      (off_1F2A4F020[v11])(&v5, v9);
    }

    v11 = -1;
    return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v6);
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v3 = a2 << 32;
    v6 = &unk_1F2A4F378;
    v7 = a2 << 32;
    v8 = &v6;
    v10 = v9;
    v4 = &unk_1F2A4F378;
    goto LABEL_11;
  }

  return ecs2::addComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(result, a2);
}

uint64_t ecs2::addComponent<md::ls::IsElevated>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F638;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4F638;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t ecs2::addComponent<md::ls::NeedsRenderState>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F938;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4F938;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t ecs2::addComponent<md::ls::IsNotMercator>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4FA98;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4FA98;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t ecs2::addComponent<md::ls::IsS2>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A4FB48;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A4FB48;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A4F020[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::RenderableHash>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A50588;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A50588;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::StyleDataKeyHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A50A68;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A50A68;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::StyleEmissiveDataKeyHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A50C08;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A50C08;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void ecs2::addComponent<md::ls::TextureHandleForType<DaVinci::TexTexture>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

uint64_t ecs2::addComponent<md::ls::InstanceTransformHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A510E8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A510E8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::IsMaterial>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A517B8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A517B8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::TriPlanar>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51888;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A51888;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void ecs2::addComponent<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

uint64_t ecs2::addComponent<md::ls::LandCoverSettingsConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A5BE30;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A5BE30;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::StyleGroundOcclusionConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A561B8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A561B8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void ecs2::addComponent<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

void ecs2::addComponent<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

uint64_t ecs2::addComponent<md::ls::BlendRasterConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51EE8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A51EE8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void ecs2::addComponent<md::ls::RasterOverlayConstantDataHandle>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  v6 = *(a3 + 4);
  operator new();
}

uint64_t ecs2::addComponent<md::ls::ColorRampDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A52088;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A52088;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ColorRampDataHandle>(ecs2::Entity,md::ls::ColorRampDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52088;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RasterOverlayConstantDataHandle>(ecs2::Entity,md::ls::RasterOverlayConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51FB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 52) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::BlendRasterConstantDataHandle>(ecs2::Entity,md::ls::BlendRasterConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51EE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51E18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51D48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleGroundOcclusionConstantDataHandle>(ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
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

    *(4 * v19) = v4;
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
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
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

      goto LABEL_56;
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
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleGroundOcclusionConstantDataHandle>(ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A561B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::LandCoverSettingsConstantDataHandle>(ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
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

    *(4 * v19) = v4;
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
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
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

      goto LABEL_56;
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
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::LandCoverSettingsConstantDataHandle>(ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A5BE30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51938;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TriPlanar>(ecs2::Entity,md::ls::TriPlanar &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A51888;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsMaterial>(ecs2::Entity,md::ls::IsMaterial &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A517B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceTransformHandle>(ecs2::Entity,md::ls::InstanceTransformHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A510E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<DaVinci::TexTexture>>(ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50E78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleEmissiveDataKeyHandle>(ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50C08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleDataKeyHandle>(ecs2::Entity,md::ls::StyleDataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50A68;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderableHash>(ecs2::Entity,md::ls::RenderableHash &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50588;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RenderItemID,md::ls::PendingRenderItemSetup,md::ls::UniqueRenderArrayID,md::ls::MainPassItem,md::ls::RenderItemTypeID,md::ls::DataForCommandBuffer,md::ls::RequiredPipelinePoolID,md::ls::VisibilityGroupTest,md::ls::NeedsRenderState,md::ls::UsesShadow,md::ls::FunctionConstants,md::ls::UseGlobeLighting,md::ls::RenderOrderToUse>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RenderItemID,md::ls::PendingRenderItemSetup,md::ls::UniqueRenderArrayID,md::ls::MainPassItem,md::ls::RenderItemTypeID,md::ls::DataForCommandBuffer,md::ls::RequiredPipelinePoolID,md::ls::VisibilityGroupTest,md::ls::NeedsRenderState,md::ls::UsesShadow,md::ls::FunctionConstants,md::ls::UseGlobeLighting,md::ls::RenderOrderToUse> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  ecs2::BasicRegistry<void>::add<md::ls::RenderItemID>(a2, *(a1 + 192), (a1 + 8));
  ecs2::BasicRegistry<void>::add<md::ls::PendingRenderItemSetup>(a2, *(a1 + 192));
  ecs2::BasicRegistry<void>::add<md::ls::UniqueRenderArrayID>(a2, *(a1 + 192), (a1 + 32));
  v4 = *(a1 + 192);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::MainPassItem>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  if (*v12 == -1 && v12[1] == 0)
  {
    v15 = v7[5];
    v14 = v7[6];
    if (v15 >= v14)
    {
      v17 = v7[4];
      v18 = (v15 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v14 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      *(4 * v18) = v4;
      v16 = 4 * v18 + 4;
      v22 = v7[4];
      v23 = v7[5] - v22;
      v24 = (4 * v18 - v23);
      memcpy(v24, v22, v23);
      v25 = v7[4];
      v7[4] = v24;
      v7[5] = v16;
      v7[6] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v15 = v4;
      v16 = (v15 + 1);
    }

    v7[5] = v16;
    v26 = ((v16 - *(v7 + 8)) >> 2) - 1;
    *v12 = v4;
    v12[1] = v26;
    v28 = v7[13];
    v27 = v7[14];
    while (v28 != v27)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v4);
      v28 += 32;
    }
  }

  v29 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v29 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata) = *(a2 + 4096);
  ecs2::BasicRegistry<void>::add<md::ls::RenderItemTypeID>(a2, *(a1 + 192), (a1 + 40));
  ecs2::BasicRegistry<void>::add<md::ls::DataForCommandBuffer>(a2, *(a1 + 192), (a1 + 64));
  ecs2::BasicRegistry<void>::add<md::ls::RequiredPipelinePoolID>(a2, *(a1 + 192), (a1 + 88));
  ecs2::BasicRegistry<void>::add<md::ls::VisibilityGroupTest>(a2, *(a1 + 192), (a1 + 92));
  ecs2::BasicRegistry<void>::add<md::ls::NeedsRenderState>(a2, *(a1 + 192));
  ecs2::BasicRegistry<void>::add<md::ls::UsesShadow>(a2, *(a1 + 192));
  ecs2::BasicRegistry<void>::add<md::ls::FunctionConstants>(a2, *(a1 + 192), a1 + 108);
  ecs2::BasicRegistry<void>::add<md::ls::UseGlobeLighting>(a2, *(a1 + 192));
  v30 = *(a1 + 192);

  ecs2::BasicRegistry<void>::add<md::ls::RenderOrderToUse>(a2, v30, (a1 + 184));
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderItemID>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata;
  v60 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    v54 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
    v55 = *a3;
    *(v54 + 16) = *(a3 + 2);
    *v54 = v55;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  v59 = a3;
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v57 = v28;
    v58 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v57;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v58;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  v50 = *(v31 + 8 * v29) + 24 * (v28 & 0x3F);
  v51 = *v59;
  *(v50 + 16) = *(v59 + 2);
  *v50 = v51;
  v52 = *(v8 + 152);
  v53 = *(v8 + 160);
  while (v52 != v53)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), a2);
    v52 += 32;
  }

LABEL_54:
  v56 = *(v60 + 41016) + (WORD1(a2) << 6);
  *(v56 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>();
  *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata) = *(v60 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::PendingRenderItemSetup>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::UniqueRenderArrayID>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueRenderArrayID>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>(void)::metadata) = *(v55 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderItemTypeID>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata;
  v60 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemTypeID>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    v54 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
    v55 = *a3;
    *(v54 + 16) = *(a3 + 2);
    *v54 = v55;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  v59 = a3;
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v57 = v28;
    v58 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v57;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v58;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  v50 = *(v31 + 8 * v29) + 24 * (v28 & 0x3F);
  v51 = *v59;
  *(v50 + 16) = *(v59 + 2);
  *v50 = v51;
  v52 = *(v8 + 152);
  v53 = *(v8 + 160);
  while (v52 != v53)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), a2);
    v52 += 32;
  }

LABEL_54:
  v56 = *(v60 + 41016) + (WORD1(a2) << 6);
  *(v56 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>();
  *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata) = *(v60 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::DataForCommandBuffer>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>(void)::metadata;
  v60 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::DataForCommandBuffer>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    v54 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
    v55 = *a3;
    *(v54 + 16) = *(a3 + 2);
    *v54 = v55;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  v59 = a3;
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v57 = v28;
    v58 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v57;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v58;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  v50 = *(v31 + 8 * v29) + 24 * (v28 & 0x3F);
  v51 = *v59;
  *(v50 + 16) = *(v59 + 2);
  *v50 = v51;
  v52 = *(v8 + 152);
  v53 = *(v8 + 160);
  while (v52 != v53)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), a2);
    v52 += 32;
  }

LABEL_54:
  v56 = *(v60 + 41016) + (WORD1(a2) << 6);
  *(v56 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>();
  *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>(void)::metadata) = *(v60 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::RequiredPipelinePoolID>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RequiredPipelinePoolID>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata) = *(v55 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::VisibilityGroupTest>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupTest>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 16 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata) = *(v55 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::NeedsRenderState>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsRenderState>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::UsesShadow>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UsesShadow>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::FunctionConstants>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
    unk_1EB83D2C0 = 0xC62D89929260CB56;
    qword_1EB83D2C8 = "md::ls::FunctionConstants]";
    qword_1EB83D2D0 = 25;
  }

  v6 = &qword_1EB83D000;
  v7 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata;
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(a1);
  v9 = v8;
  v10 = a2 >> 22;
  v12 = (v8 + 8);
  v11 = *(v8 + 8);
  if (v10 >= (*(v8 + 16) - v11) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v8 + 8), v10 + 1);
    v11 = *v12;
  }

  v13 = *(v11 + 8 * v10);
  if (!v13)
  {
    operator new();
  }

  v14 = (v13 + 4 * ((a2 >> 16) & 0x3F));
  v15 = v14[1];
  if (*v14 == -1 && v15 == 0)
  {
    v18 = *(v9 + 40);
    v17 = *(v9 + 48);
    v62 = a3;
    v63 = v7;
    if (v18 >= v17)
    {
      v20 = *(v9 + 32);
      v21 = (v18 - v20) >> 2;
      if ((v21 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = v17 - v20;
      v23 = v22 >> 1;
      if (v22 >> 1 <= (v21 + 1))
      {
        v23 = v21 + 1;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v24 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v24);
      }

      *(4 * v21) = a2 | (WORD1(a2) << 16);
      v19 = 4 * v21 + 4;
      v25 = *(v9 + 32);
      v26 = *(v9 + 40) - v25;
      v27 = (4 * v21 - v26);
      memcpy(v27, v25, v26);
      v28 = *(v9 + 32);
      *(v9 + 32) = v27;
      *(v9 + 40) = v19;
      *(v9 + 48) = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v18 = a2 | (WORD1(a2) << 16);
      v19 = (v18 + 1);
    }

    *(v9 + 40) = v19;
    v29 = ((v19 - *(v9 + 32)) >> 2) - 1;
    *v14 = a2;
    v14[1] = v29;
    v30 = v29 >> 6;
    v32 = *(v9 + 56);
    v31 = *(v9 + 64);
    v33 = v31 - v32;
    if (v29 >> 6 < (v31 - v32) >> 3)
    {
      goto LABEL_53;
    }

    v61 = a1;
    v34 = v30 + 1;
    v35 = v30 + 1 - (v33 >> 3);
    v36 = *(v9 + 72);
    if (v35 > (v36 - v31) >> 3)
    {
      v37 = v36 - v32;
      v38 = (v36 - v32) >> 2;
      if (v38 <= v34)
      {
        v38 = v30 + 1;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v38;
      }

      if (!(v39 >> 61))
      {
        operator new();
      }

      goto LABEL_68;
    }

    v40 = 0;
    v41 = (v35 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v42 = vdupq_n_s64(v41);
    do
    {
      v43 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(vdupq_n_s64(v40), xmmword_1B33B0560)));
      if (v43.i8[0])
      {
        *(v31 + 8 * v40) = 0;
      }

      if (v43.i8[4])
      {
        *(v31 + 8 * v40 + 8) = 0;
      }

      v40 += 2;
    }

    while (v41 - ((v35 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v40);
    *(v9 + 64) = v31 + 8 * v35;
    v44 = *(v9 + 80);
    v45 = *(v9 + 88);
    v46 = (v45 - v44) >> 4;
    if (v46 <= v30)
    {
      v48 = v34 - v46;
      v49 = *(v9 + 96);
      if (v48 > (v49 - v45) >> 4)
      {
        v50 = v49 - v44;
        v51 = v50 >> 3;
        if (v50 >> 3 <= v34)
        {
          v51 = v30 + 1;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF0)
        {
          v52 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v51;
        }

        if (!(v52 >> 60))
        {
          operator new();
        }

LABEL_68:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v9 + 88), 16 * v48);
      v47 = v45 + 16 * v48;
    }

    else
    {
      if (v34 >= v46)
      {
        goto LABEL_51;
      }

      v47 = v44 + 16 * v34;
    }

    *(v9 + 88) = v47;
LABEL_51:
    v32 = *(v9 + 56);
    a1 = v61;
    if (v33 < (*(v9 + 64) - v32))
    {
      operator new();
    }

LABEL_53:
    v53 = *(v32 + 8 * v30) + 70 * (v29 & 0x3F);
    *v53 = *v62;
    v54 = *(v62 + 16);
    v55 = *(v62 + 32);
    v56 = *(v62 + 48);
    *(v53 + 62) = *(v62 + 62);
    *(v53 + 32) = v55;
    *(v53 + 48) = v56;
    *(v53 + 16) = v54;
    v57 = *(v9 + 152);
    v58 = *(v9 + 160);
    v6 = &qword_1EB83D000;
    if (v57 == v58)
    {
      v7 = v63;
    }

    else
    {
      v7 = v63;
      do
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v57 + 24), a2);
        v57 += 32;
      }

      while (v57 != v58);
    }

    goto LABEL_61;
  }

  v59 = *(*(v9 + 56) + ((v15 >> 3) & 0x1FF8)) + 70 * (v15 & 0x3F);
  if (v59 != a3)
  {
    *v59 = *a3;
    *(v59 + 16) = *(a3 + 16);
    *(v59 + 32) = *(a3 + 32);
    *(v59 + 34) = *(a3 + 34);
    *(v59 + 50) = *(a3 + 50);
    *(v59 + 66) = *(a3 + 66);
  }

  *(v59 + 68) = *(a3 + 68);
  LODWORD(a2) = (a2 >> 16) << 16;
LABEL_61:
  v60 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v60 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
    unk_1EB83D2C0 = 0xC62D89929260CB56;
    qword_1EB83D2C8 = "md::ls::FunctionConstants]";
    qword_1EB83D2D0 = 25;
  }

  *(a1 + 8 * v6[87]) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::UseGlobeLighting>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UseGlobeLighting>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderOrderToUse>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderOrderToUse>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RenderItemID,md::ls::PendingRenderItemSetup,md::ls::UniqueRenderArrayID,md::ls::MainPassItem,md::ls::RenderItemTypeID,md::ls::DataForCommandBuffer,md::ls::RequiredPipelinePoolID,md::ls::VisibilityGroupTest,md::ls::NeedsRenderState,md::ls::UsesShadow,md::ls::FunctionConstants,md::ls::UseGlobeLighting,md::ls::RenderOrderToUse>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RenderItemID,md::ls::PendingRenderItemSetup,md::ls::UniqueRenderArrayID,md::ls::MainPassItem,md::ls::RenderItemTypeID,md::ls::DataForCommandBuffer,md::ls::RequiredPipelinePoolID,md::ls::VisibilityGroupTest,md::ls::NeedsRenderState,md::ls::UsesShadow,md::ls::FunctionConstants,md::ls::UseGlobeLighting,md::ls::RenderOrderToUse> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A4FD78;
  result = *(a1 + 136);
  v3 = *(a1 + 152);
  v4 = *(a1 + 168);
  *(a2 + 184) = *(a1 + 184);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v7;
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v10 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v10;
  *(a2 + 88) = v9;
  *(a2 + 72) = v8;
  *(a2 + 168) = v4;
  *(a2 + 152) = v3;
  *(a2 + 136) = result;
  *(a2 + 196) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsS2>(ecs2::Entity,md::ls::IsS2 &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IsS2>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
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

    *(4 * v19) = v4;
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
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
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

      goto LABEL_56;
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
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsS2>(ecs2::Entity,md::ls::IsS2 &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4FB48;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsNotMercator>(ecs2::Entity,md::ls::IsNotMercator &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>(void)::metadata;
  IsNot = ecs2::BasicRegistry<void>::storage<md::ls::IsNotMercator>(a2);
  v6 = IsNot;
  v7 = v3 >> 22;
  v9 = (IsNot + 8);
  v8 = *(IsNot + 8);
  if (v3 >> 22 >= (*(IsNot + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((IsNot + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsNotMercator>(ecs2::Entity,md::ls::IsNotMercator &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4FA98;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NeedsRenderState>(ecs2::Entity,md::ls::NeedsRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F938;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsElevated>(ecs2::Entity,md::ls::IsElevated &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsElevated>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsElevated>(ecs2::Entity,md::ls::IsElevated &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F638;
  a2[1] = *(result + 8);
  return result;
}

uint64_t ecs2::addComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F2C8;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4F2C8;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)4> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)4> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F588;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)3> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)3> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F4D8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)2> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(void)::localId;
    *algn_1EB82B4B8 = 0xB62F599CC8566C3BLL;
    qword_1EB82B4C0 = "md::ls::IntendedSceneLayerType<md::SceneLayer::RoadNetwork>]";
    qword_1EB82B4C8 = 59;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE2EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE2EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F490;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F470;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)2>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F470;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)2>>(ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)2> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F428;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)1> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(void)::localId;
    unk_1EB82D7A0 = 0x9E3C294C9F37A685;
    qword_1EB82D7A8 = "md::ls::IntendedSceneLayerType<md::SceneLayer::Background>]";
    qword_1EB82D7B0 = 58;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE1EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE1EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F3E0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F3C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)1>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F3C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)1>>(ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)1> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F378;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)0> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(void)::localId;
    *algn_1EB82D7C8 = 0x2636D6B46908A08CLL;
    qword_1EB82D7D0 = "md::ls::IntendedSceneLayerType<md::SceneLayer::Default>]";
    qword_1EB82D7D8 = 55;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE0EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE0EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F330;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F310;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)0>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F310;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayerType<(md::SceneLayer)0>>(ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)0> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F2C8;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueRenderArrayID>(ecs2::Entity,md::ls::UniqueRenderArrayID &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A4F1F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::HasMaterialRasterRenderItem>(ecs2::Entity,md::ls::HasMaterialRasterRenderItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata;
  HasMaterialRasterRender = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRasterRenderItem>(a2);
  v7 = HasMaterialRasterRender;
  v8 = v4 >> 22;
  v10 = (HasMaterialRasterRender + 8);
  v9 = *(HasMaterialRasterRender + 8);
  if (v4 >> 22 >= (*(HasMaterialRasterRender + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((HasMaterialRasterRender + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
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

    *(4 * v19) = v4;
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
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
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

      goto LABEL_56;
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
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::HasMaterialRasterRenderItem>(ecs2::Entity,md::ls::HasMaterialRasterRenderItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A4F058;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FinishedProcessing>(ecs2::Entity,md::ls::FinishedProcessing &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessing>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FinishedProcessing>(ecs2::Entity,md::ls::FinishedProcessing &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4EF80;
  a2[1] = *(result + 8);
  return result;
}

uint64_t ecs2::addComponent<md::ls::PendingRenderItemSetup>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52978;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A52978;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void ecs2::addComponent<md::ls::RenderItemID>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(a3 + 2);
  operator new();
}

void ecs2::addComponent<md::ls::RenderItemTypeID>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(a3 + 2);
  operator new();
}

void ecs2::addComponent<md::ls::DataForCommandBuffer>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(a3 + 2);
  operator new();
}

void ecs2::addComponent<md::ls::VisibilityGroupTest>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

void ecs2::addComponent<md::ls::FunctionConstants>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3[3];
  v7 = a3[2];
  *v8 = v3;
  *&v8[14] = *(a3 + 62);
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  operator new();
}

uint64_t ecs2::addComponent<md::ls::RenderState>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &off_1F2A52BD8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &off_1F2A52BD8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::RenderOrderToUse>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A52CA8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A52CA8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A4F020[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::UseGlobeLighting>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52CF0;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A52CF0;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t ecs2::addComponent<md::ls::RequiredPipelinePoolID>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A52D38;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A52D38;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A4F020[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiredPipelinePoolID>(ecs2::Entity,md::ls::RequiredPipelinePoolID &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A52D38;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UseGlobeLighting>(ecs2::Entity,md::ls::UseGlobeLighting &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A52CF0;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderOrderToUse>(ecs2::Entity,md::ls::RenderOrderToUse &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52CA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FunctionConstants>(ecs2::Entity,md::ls::FunctionConstants &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52B90;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::VisibilityGroupTest>(ecs2::Entity,md::ls::VisibilityGroupTest &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52B48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::DataForCommandBuffer>(ecs2::Entity,md::ls::DataForCommandBuffer &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52B00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderItemTypeID>(ecs2::Entity,md::ls::RenderItemTypeID &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52AB8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::DepthPeeledPassItem>(ecs2::Entity,md::ls::DepthPeeledPassItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DepthPeeledPassItem>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DepthPeeledPassItem>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DepthPeeledPassItem>(void)::localId;
    *algn_1EB8292C8 = 0xB1EC8A230021F56BLL;
    qword_1EB8292D0 = "md::ls::DepthPeeledPassItem]";
    qword_1EB8292D8 = 27;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::DepthPeeledPassItem>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19DepthPeeledPassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DepthPeeledPassItem>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPeeledPassItem>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19DepthPeeledPassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52A70;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DepthPeeledPassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52A50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DepthPeeledPassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52A50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::DepthPeeledPassItem>(ecs2::Entity,md::ls::DepthPeeledPassItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A52A08;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderItemID>(ecs2::Entity,md::ls::RenderItemID &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A529C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PendingRenderItemSetup>(ecs2::Entity,md::ls::PendingRenderItemSetup &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A52978;
  a2[1] = *(result + 8);
  return result;
}

uint64_t ecs2::addComponent<md::ls::UsesShadow>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52E30;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A52E30;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UsesShadow>(ecs2::Entity,md::ls::UsesShadow &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A52E30;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UnflattenedPassItem>(ecs2::Entity,md::ls::UnflattenedPassItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UnflattenedPassItem>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UnflattenedPassItem>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UnflattenedPassItem>(void)::localId;
    *algn_1EB82A758 = 0x525987C8040ACB5FLL;
    qword_1EB82A760 = "md::ls::UnflattenedPassItem]";
    qword_1EB82A768 = 27;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UnflattenedPassItem>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19UnflattenedPassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UnflattenedPassItem>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnflattenedPassItem>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19UnflattenedPassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52DE8;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UnflattenedPassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52DC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UnflattenedPassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52DC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UnflattenedPassItem>(ecs2::Entity,md::ls::UnflattenedPassItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A52D80;
  a2[1] = *(result + 8);
  return result;
}

uint64_t ecs2::addComponent<md::ls::IntendedStandardPassSceneDepth>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52FD8;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A52FD8;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedStandardPassSceneDepth>(ecs2::Entity,md::ls::IntendedStandardPassSceneDepth &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassSceneDepth>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedStandardPassSceneDepth>(ecs2::Entity,md::ls::IntendedStandardPassSceneDepth &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A52FD8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::DepthPrePassItem>(ecs2::Entity,md::ls::DepthPrePassItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DepthPrePassItem>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DepthPrePassItem>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DepthPrePassItem>(void)::localId;
    *algn_1EB82B508 = 0x1B35410F914DF9B5;
    qword_1EB82B510 = "md::ls::DepthPrePassItem]";
    qword_1EB82B518 = 24;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::DepthPrePassItem>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16DepthPrePassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DepthPrePassItem>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassItem>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16DepthPrePassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52F90;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DepthPrePassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52F70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DepthPrePassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52F70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::DepthPrePassItem>(ecs2::Entity,md::ls::DepthPrePassItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &off_1F2A52F28;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FinishedProcessingDepthPrePass>(ecs2::Entity,md::ls::FinishedProcessingDepthPrePass &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessingDepthPrePass>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FinishedProcessingDepthPrePass>(ecs2::Entity,md::ls::FinishedProcessingDepthPrePass &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A52E78;
  a2[1] = *(result + 8);
  return result;
}

uint64_t ecs2::addComponent<md::ls::IntendedStandardPassShadow>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A532B8;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A532B8;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedStandardPassShadow>(ecs2::Entity,md::ls::IntendedStandardPassShadow &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassShadow>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassShadow>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedStandardPassShadow>(ecs2::Entity,md::ls::IntendedStandardPassShadow &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A532B8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ShadowPassItem>(ecs2::Entity,md::ls::ShadowPassItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowPassItem>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShadowPassItem>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShadowPassItem>(void)::localId;
    *algn_1EB829308 = 0x9E1F385137C59FBLL;
    qword_1EB829310 = "md::ls::ShadowPassItem]";
    qword_1EB829318 = 22;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ShadowPassItem>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14ShadowPassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowPassItem>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowPassItem>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14ShadowPassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53270;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShadowPassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53250;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShadowPassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53250;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ShadowPassItem>(ecs2::Entity,md::ls::ShadowPassItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A53208;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FinishedProcessingShadow>(ecs2::Entity,md::ls::FinishedProcessingShadow &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessingShadow>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FinishedProcessingShadow>(ecs2::Entity,md::ls::FinishedProcessingShadow &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A53158;
  a2[1] = *(result + 8);
  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::EnteringView const&,md::ls::SupportsDepthPrePass const&,md::ls::RenderablesCount const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TilePrepassShadowConstantDataHandle const&,md::ls::TilePrepassConstantDataHandle const&>,std::tuple<>>::containsAll<md::ls::EnteringView const,md::ls::SupportsDepthPrePass const,md::ls::RenderablesCount const,md::ls::AssociationTileHandle const,md::ls::BaseMapTileHandle const,md::ls::TileViewConstantDataHandle const,md::ls::TileTransformConstantDataHandle const,md::ls::TileMatrix const,md::ls::TilePrepassShadowConstantDataHandle const,md::ls::TilePrepassConstantDataHandle const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0 && *(v15 + 4 * (a3 & 0x3F)) == a2 && (v16 = *(a1[8] + 8), v3 < (*(a1[8] + 16) - v16) >> 3) && (v17 = *(v16 + 8 * v3)) != 0 && *(v17 + 4 * (a3 & 0x3F)) == a2 && (v18 = *(a1[9] + 8), v3 < (*(a1[9] + 16) - v18) >> 3) && (v19 = *(v18 + 8 * v3)) != 0 && *(v19 + 4 * (a3 & 0x3F)) == a2 && (v20 = *(a1[10] + 8), v3 < (*(a1[10] + 16) - v20) >> 3) && (v21 = *(v20 + 8 * v3)) != 0 && *(v21 + 4 * (a3 & 0x3F)) == a2 && (v22 = *(a1[11] + 8), v3 < (*(a1[11] + 16) - v22) >> 3) && (v23 = *(v22 + 8 * v3)) != 0)
  {
    return *(v23 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<md::ita::CreateTileClearRenderItemsForDepthPrePass::operator()(ecs2::Query<md::ls::EnteringView const&,md::ls::SupportsDepthPrePass const&,md::ls::RenderablesCount const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TilePrepassShadowConstantDataHandle const&,md::ls::TilePrepassConstantDataHandle const&>)::$_0,std::allocator<md::ita::CreateTileClearRenderItemsForDepthPrePass::operator()(ecs2::Query<md::ls::EnteringView const&,md::ls::SupportsDepthPrePass const&,md::ls::RenderablesCount const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TilePrepassShadowConstantDataHandle const&,md::ls::TilePrepassConstantDataHandle const&>)::$_0>,void ()(md::ls::EnteringView const&,md::ls::SupportsDepthPrePass const&,md::ls::RenderablesCount const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TilePrepassShadowConstantDataHandle const&,md::ls::TilePrepassConstantDataHandle const&)>::operator()(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a4 + 8) != *(a4 + 16) && *a2 == 1)
  {
    v6 = result;
    v7 = *(result + 8);
    Entity = ecs2::ExecutionTaskContext::createEntity(*(*v7 + 8));
    v9 = *a5;
    v15 = *a5;
    v10 = Entity;
    createRenderItemForEntity(&v13, Entity, **(v6 + 16), &v15);
    if (v14 != 1)
    {
      ecs2::addComponent<md::ls::PendingRenderItemSetup>(*v7, v10);
      *buf = v9;
      *&buf[8] = 0;
      buf[16] = 0;
      ecs2::addComponent<md::ls::AssociationHandle>(*v7, v10, buf);
    }

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v11 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (v13 > 2uLL)
      {
        v12 = "";
      }

      else
      {
        v12 = off_1E7B3D650[v13];
      }

      *buf = 136315906;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "false";
      v17 = 2080;
      v18 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
      v19 = 1024;
      v20 = 936;
      _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_ERROR, "Failed to create depth prepass tile clear render item (%s): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
    }

    return ecs2::ExecutionTaskContext::destroyEntity(*v7, v10);
  }

  return result;
}

uint64_t ecs2::addComponent<md::ls::UseIdentityMatrix>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53A60;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A53A60;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A4F020[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UseIdentityMatrix>(ecs2::Entity,md::ls::UseIdentityMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UseIdentityMatrix>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UseIdentityMatrix>(ecs2::Entity,md::ls::UseIdentityMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A53A60;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::DepthPrePassTileClearItem>(ecs2::Entity,md::ls::DepthPrePassTileClearItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DepthPrePassTileClearItem>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DepthPrePassTileClearItem>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DepthPrePassTileClearItem>(void)::localId;
    unk_1EB82D730 = 0xF23B9817A178C71CLL;
    qword_1EB82D738 = "md::ls::DepthPrePassTileClearItem]";
    qword_1EB82D740 = 33;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::DepthPrePassTileClearItem>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25DepthPrePassTileClearItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DepthPrePassTileClearItem>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DepthPrePassTileClearItem>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25DepthPrePassTileClearItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53A18;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DepthPrePassTileClearItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A539F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DepthPrePassTileClearItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A539F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::DepthPrePassTileClearItem>(ecs2::Entity,md::ls::DepthPrePassTileClearItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A539B0;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::CreateTileClearRenderItemsForDepthPrePass::operator()(ecs2::Query<md::ls::EnteringView const&,md::ls::SupportsDepthPrePass const&,md::ls::RenderablesCount const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TilePrepassShadowConstantDataHandle const&,md::ls::TilePrepassConstantDataHandle const&>)::$_0,std::allocator<md::ita::CreateTileClearRenderItemsForDepthPrePass::operator()(ecs2::Query<md::ls::EnteringView const&,md::ls::SupportsDepthPrePass const&,md::ls::RenderablesCount const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TilePrepassShadowConstantDataHandle const&,md::ls::TilePrepassConstantDataHandle const&>)::$_0>,void ()(md::ls::EnteringView const&,md::ls::SupportsDepthPrePass const&,md::ls::RenderablesCount const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TilePrepassShadowConstantDataHandle const&,md::ls::TilePrepassConstantDataHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A53898;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::EnteringView const&,md::ls::SupportsShadows const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle const&>,std::tuple<>>::containsAll<md::ls::EnteringView const,md::ls::SupportsShadows const,md::ls::AssociationTileHandle const,md::ls::BaseMapTileHandle const,md::ls::TileViewConstantDataHandle const,md::ls::TileTransformConstantDataHandle const,md::ls::TileMatrix const,md::ls::TileShadowConstantDataHandle const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0 && *(v15 + 4 * (a3 & 0x3F)) == a2 && (v16 = *(a1[8] + 8), v3 < (*(a1[8] + 16) - v16) >> 3) && (v17 = *(v16 + 8 * v3)) != 0 && *(v17 + 4 * (a3 & 0x3F)) == a2 && (v18 = *(a1[9] + 8), v3 < (*(a1[9] + 16) - v18) >> 3) && (v19 = *(v18 + 8 * v3)) != 0)
  {
    return *(v19 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<md::ita::CreateTileClearRenderItemsForShadowPass::operator()(ecs2::Query<md::ls::EnteringView const&,md::ls::SupportsShadows const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle const&>)::$_0,std::allocator<md::ita::CreateTileClearRenderItemsForShadowPass::operator()(ecs2::Query<md::ls::EnteringView const&,md::ls::SupportsShadows const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle const&>)::$_0>,void ()(md::ls::EnteringView const&,md::ls::SupportsShadows const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  Entity = ecs2::ExecutionTaskContext::createEntity(*(*v6 + 8));
  v8 = *a4;
  v15 = *a4;
  v9 = Entity;
  createRenderItemForEntity(&v13, Entity, **(a1 + 16), &v15);
  if (v14 != 1)
  {
    *buf = v8;
    *&buf[8] = 0;
    buf[16] = 0;
    ecs2::addComponent<md::ls::AssociationHandle>(*v6, v9, buf);
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v10 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    if (v13 > 2uLL)
    {
      v11 = "";
    }

    else
    {
      v11 = off_1E7B3D650[v13];
    }

    *buf = 136315906;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = "false";
    v17 = 2080;
    v18 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
    v19 = 1024;
    v20 = 1016;
    _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_ERROR, "Failed to create shadow tile clear render item (%s): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
  }

  return ecs2::ExecutionTaskContext::destroyEntity(*v6, v9);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ShadowTileClearItem>(ecs2::Entity,md::ls::ShadowTileClearItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowTileClearItem>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShadowTileClearItem>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShadowTileClearItem>(void)::localId;
    unk_1EB82D810 = 0x92A64D0A32DD2051;
    qword_1EB82D818 = "md::ls::ShadowTileClearItem]";
    qword_1EB82D820 = 27;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ShadowTileClearItem>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19ShadowTileClearItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowTileClearItem>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowTileClearItem>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19ShadowTileClearItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53CB0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShadowTileClearItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53C90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShadowTileClearItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53C90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ShadowTileClearItem>(ecs2::Entity,md::ls::ShadowTileClearItem &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A53C48;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::CreateTileClearRenderItemsForShadowPass::operator()(ecs2::Query<md::ls::EnteringView const&,md::ls::SupportsShadows const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle const&>)::$_0,std::allocator<md::ita::CreateTileClearRenderItemsForShadowPass::operator()(ecs2::Query<md::ls::EnteringView const&,md::ls::SupportsShadows const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle const&>)::$_0>,void ()(md::ls::EnteringView const&,md::ls::SupportsShadows const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A53C00;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void ggl::DaVinci::GroundPipelineSetup::~GroundPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinci::GroundPipelineSetup::setTransitionConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 112) = a3;
  *(a1 + 120) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 120);
  *(a2 + 112) = a3;
  *(a2 + 120) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void ggl::DaVinci::GroundPipelineSetup::setTileClippingConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 176) = a3;
  *(a1 + 184) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 184);
  *(a2 + 176) = a3;
  *(a2 + 184) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void ggl::DaVinci::GroundPipelineSetup::setLightConfigConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 192) = a3;
  *(a1 + 200) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 200);
  *(a2 + 192) = a3;
  *(a2 + 200) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void ggl::DaVinci::GroundPipelineSetup::setLightingDebugOptionsConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 224) = a3;
  *(a1 + 232) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 232);
  *(a2 + 224) = a3;
  *(a2 + 232) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

uint64_t ggl::DaVinci::GroundNonCompressedPipelineSetup::deviceDataIsEnabled(ggl::DaVinci::GroundNonCompressedPipelineSetup *this, uint64_t a2)
{
  if (a2 == 3)
  {
    v2 = *(*(this + 2) + 316);
  }

  else if (a2 == 2)
  {
    v2 = *(*(this + 2) + 344);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::GroundNonCompressedPipelineSetup::textureIsEnabled(ggl::DaVinci::GroundNonCompressedPipelineSetup *this, uint64_t a2)
{
  if (a2 > 6)
  {
    if (a2 > 9)
    {
      if (a2 != 10)
      {
        if (a2 == 11)
        {
          v2 = *(*(this + 2) + 310);
          return v2 & 1;
        }

        if (a2 == 12)
        {
          v2 = *(*(this + 2) + 311);
          return v2 & 1;
        }

        goto LABEL_23;
      }
    }

    else if (a2 == 7 || a2 == 8)
    {
      v2 = *(*(this + 2) + 314);
      return v2 & 1;
    }

    v2 = *(*(this + 2) + 338);
    return v2 & 1;
  }

  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v2 = *(*(this + 2) + 315);
    }

    else if (a2 == 5)
    {
      v2 = *(*(this + 2) + 327);
    }

    else
    {
      v2 = *(*(this + 2) + 324);
    }
  }

  else
  {
    v2 = 1;
    if ((a2 - 2) >= 2 && a2)
    {
      if (a2 == 1)
      {
        v2 = *(*(this + 2) + 309);
        return v2 & 1;
      }

LABEL_23:
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::GroundNonCompressedPipelineSetup::constantDataIsEnabled(ggl::DaVinci::GroundNonCompressedPipelineSetup *this, uint64_t a2)
{
  v2 = 1;
  switch(a2)
  {
    case 0:
    case 1:
    case 3:
    case 5:
    case 8:
    case 10:
    case 13:
    case 28:
      return v2 & 1;
    case 2:
    case 18:
      v2 = *(*(this + 2) + 309);
      break;
    case 4:
      v2 = *(*(this + 2) + 329);
      break;
    case 6:
      v2 = *(*(this + 2) + 330);
      break;
    case 7:
      v2 = *(*(this + 2) + 331);
      break;
    case 9:
      v2 = *(*(this + 2) + 335);
      break;
    case 11:
      v2 = *(*(this + 2) + 336);
      break;
    case 12:
    case 21:
      v2 = *(*(this + 2) + 326);
      break;
    case 14:
      v2 = *(*(this + 2) + 317);
      break;
    case 15:
      v2 = *(*(this + 2) + 318);
      break;
    case 16:
    case 25:
    case 26:
      v2 = *(*(this + 2) + 324);
      break;
    case 17:
      v2 = *(*(this + 2) + 343);
      break;
    case 19:
      v2 = *(*(this + 2) + 327);
      break;
    case 20:
      v2 = *(*(this + 2) + 320);
      break;
    case 22:
      v2 = *(*(this + 2) + 310);
      break;
    case 23:
    case 24:
      v2 = *(*(this + 2) + 311);
      break;
    case 27:
      v2 = *(*(this + 2) + 325);
      break;
    case 29:
      v2 = *(*(this + 2) + 315);
      break;
    case 30:
      v2 = *(*(this + 2) + 346);
      break;
    default:
      v2 = 0;
      break;
  }

  return v2 & 1;
}

void ggl::DaVinci::GroundNonCompressedPipelineSetup::~GroundNonCompressedPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Sky::SkyPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A53E70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Sky::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Sky::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A53E18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ARWalkingManeuverLabelFeature::populateStyleQueries(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 0;
  if ((*(*a1 + 496))(a1))
  {
    if ((*(*a1 + 488))(a1, 0))
    {
      operator new();
    }
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B32B9A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MEMORY[0x1B8C62190](v11, 0x1012C40B602C572);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *md::ARWalkingManeuverLabelFeature::attributesForFeature(mdm::zone_mallocator *result, __int16 a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      goto LABEL_40;
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

    v51 = result + 24;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v14 = &v12[8 * v10];
    v13 = &v12[8 * v7];
    *v13 = 65632;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v49 = v17;
    v50 = v18;
    v47 = v17;
    v48 = v17;
    result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v47);
  }

  else
  {
    *v5 = 65632;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  v19 = *(v3 + 2);
  if (v6 >= v19)
  {
    v21 = (v6 - *v3) >> 3;
    if ((v21 + 1) >> 61)
    {
      goto LABEL_40;
    }

    v22 = v19 - *v3;
    v23 = v22 >> 2;
    if (v22 >> 2 <= (v21 + 1))
    {
      v23 = v21 + 1;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v24 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v23;
    }

    v51 = v3 + 24;
    if (v24)
    {
      v25 = mdm::zone_mallocator::instance(result);
      v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v25, v24);
    }

    else
    {
      v26 = 0;
    }

    v28 = &v26[8 * v24];
    v27 = &v26[8 * v21];
    *v27 = 65594;
    v20 = v27 + 8;
    v29 = *(v3 + 1) - *v3;
    v30 = &v27[-v29];
    memcpy(&v27[-v29], *v3, v29);
    v31 = *v3;
    *v3 = v30;
    *(v3 + 1) = v20;
    v32 = *(v3 + 2);
    *(v3 + 2) = v28;
    v49 = v31;
    v50 = v32;
    v47 = v31;
    v48 = v31;
    result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v47);
  }

  else
  {
    *v6 = 65594;
    v20 = v6 + 1;
  }

  *(v3 + 1) = v20;
  if ((a2 & 0x100) == 0)
  {
    return result;
  }

  v33 = *(v3 + 2);
  if (v20 >= v33)
  {
    v35 = (v20 - *v3) >> 3;
    if (!((v35 + 1) >> 61))
    {
      v36 = v33 - *v3;
      v37 = v36 >> 2;
      if (v36 >> 2 <= (v35 + 1))
      {
        v37 = v35 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      v51 = v3 + 24;
      if (v38)
      {
        v39 = mdm::zone_mallocator::instance(result);
        v40 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v39, v38);
      }

      else
      {
        v40 = 0;
      }

      v42 = &v40[8 * v38];
      v41 = &v40[8 * v35];
      *v41 = ((a2 << 32) | 0x1003A) + 51;
      v34 = v41 + 8;
      v43 = *(v3 + 1) - *v3;
      v44 = &v41[-v43];
      memcpy(&v41[-v43], *v3, v43);
      v45 = *v3;
      *v3 = v44;
      *(v3 + 1) = v34;
      v46 = *(v3 + 2);
      *(v3 + 2) = v42;
      v49 = v45;
      v50 = v46;
      v47 = v45;
      v48 = v45;
      result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v47);
      goto LABEL_38;
    }

LABEL_40:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v20 = ((a2 << 32) | 0x1003A) + 51;
  v34 = v20 + 1;
LABEL_38:
  *(v3 + 1) = v34;
  return result;
}

uint64_t md::ARWalkingManeuverLabelFeature::style(void *a1, unsigned int a2)
{
  v2 = a1[55];
  if (!v2)
  {
    return (a1 + 10);
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
    return (a1 + 10);
  }

  v8 = a1[108];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = a1 + 108;
  do
  {
    v10 = *(v8 + 28);
    v5 = v10 >= a2;
    v11 = v10 < a2;
    if (v5)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v11);
  }

  while (v8);
  if (v9 != a1 + 108 && *(v9 + 7) <= a2)
  {
    v12 = *(v9 + 32);
  }

  else
  {
LABEL_18:
    v12 = 0;
  }

  v13 = *(v3 + 145);
  if (v13)
  {
    return a1[12] + 16 * (v12 + v13 + 1);
  }

  else
  {
    return a1[12] + 16 * v12;
  }
}

uint64_t md::ARWalkingManeuverLabelFeature::dedupingGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 840);
  *a2 = *(this + 832);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t md::ARWalkingManeuverLabelFeature::skewOffsettingLimits@<X0>(md::ARWalkingManeuverLabelFeature *this@<X0>, const md::LabelIdentifier *a2@<X1>, float *a3@<X8>)
{
  result = md::ARWalkingManeuverLabelFeature::layoutTypeForLabelIdentifier(this, *a2);
  v5 = result != 1 && result >= 0x100u;
  v6 = 2.0;
  if (!v5)
  {
    v6 = 0.0;
  }

  *a3 = v6;
  a3[1] = v6;
  return result;
}

uint64_t md::ARWalkingManeuverLabelFeature::layoutTypeForLabelIdentifier(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = a1 + 440;
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
    if (v3 == a1 + 440 || *(v3 + 32) > a2)
    {
      v7 = 0;
      LODWORD(v2) = 0;
    }

    else
    {
      v7 = *(v3 + 145);
      LODWORD(v2) = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 | (v2 << 8);
}