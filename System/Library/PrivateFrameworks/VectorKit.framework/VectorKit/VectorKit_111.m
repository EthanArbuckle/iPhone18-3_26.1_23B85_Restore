uint64_t md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_2::operator() const(md::mun::MuninNavigationGraph const*)::{lambda(md::mun::CollectionPoint const&,geo::Color<float,4,(geo::ColorSpace)0> const&,BOOL)#1}::operator()(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v8 = *a1;
  v9 = geo::RigidTransform<double,double>::operator*(*a1, a2 + 8);
  v10 = 0;
  v78 = v9;
  v79 = v11;
  v80 = v12;
  do
  {
    v13 = *(&v78 + v10);
    *&v83[4 * v10++] = v13;
  }

  while (v10 != 3);
  gm::Quaternion<float>::toMatrix(&v78, (a2 + 32));
  v14 = 0;
  v15 = v8 + 24;
  do
  {
    v16 = *(v15 + 8 * v14);
    *(&v70 + v14++) = v16;
  }

  while (v14 != 3);
  v17 = *(v8 + 48);
  *(&v71 + 1) = v17;
  v73 = v81;
  v74 = v82;
  v18 = gm::Quaternion<float>::operator*(&v70, &v73);
  v19 = 0;
  v75 = v18;
  v76 = v20;
  v77 = v21;
  do
  {
    *&v83[v19 + 12] = -*(&v75 + v19);
    v19 += 4;
  }

  while (v19 != 12);
  for (i = 0; i != 3; ++i)
  {
    v23 = *(v15 + 8 * i);
    *(&v70 + i) = v23;
  }

  *(&v71 + 1) = v17;
  v73 = v78;
  v74 = v79;
  v24 = gm::Quaternion<float>::operator*(&v70, &v73);
  v25 = 0;
  v75 = v24;
  v76 = v26;
  v77 = v27;
  v28 = *(a1 + 8);
  do
  {
    *(&v70 + v25) = *&v83[v25] - *(&v75 + v25);
    v25 += 4;
  }

  while (v25 != 12);
  v72 = *a3;
  v29 = *(v28 + 8);
  if (v29 >= *(v28 + 16))
  {
    v30 = std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(v28, &v70);
  }

  else
  {
    *v29 = v70;
    *(v29 + 8) = v71;
    *(v29 + 16) = v72;
    v30 = v29 + 32;
  }

  v31 = 0;
  *(v28 + 8) = v30;
  v32 = *(a1 + 8);
  do
  {
    *(&v70 + v31) = *(&v75 + v31) + *&v83[v31];
    v31 += 4;
  }

  while (v31 != 12);
  v72 = *a3;
  v33 = *(v32 + 8);
  if (v33 >= *(v32 + 16))
  {
    v34 = std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(v32, &v70);
  }

  else
  {
    *v33 = v70;
    *(v33 + 8) = v71;
    *(v33 + 16) = v72;
    v34 = v33 + 32;
  }

  v35 = 0;
  *(v32 + 8) = v34;
  v36 = *(a1 + 8);
  do
  {
    *(&v70 + v35) = *&v83[v35 + 12] + *&v83[v35 + 12];
    v35 += 4;
  }

  while (v35 != 12);
  v37 = 0;
  v73 = v70;
  v74 = v71;
  do
  {
    *(&v70 + v37) = *(&v73 + v37) + *&v83[v37];
    v37 += 4;
  }

  while (v37 != 12);
  v72 = *a3;
  v38 = *(v36 + 8);
  if (v38 >= *(v36 + 16))
  {
    v39 = std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(v36, &v70);
  }

  else
  {
    *v38 = v70;
    *(v38 + 8) = v71;
    *(v38 + 16) = v72;
    v39 = v38 + 32;
  }

  *(v36 + 8) = v39;
  result = [**(a1 + 16) muninGraphConnections];
  if (result)
  {
    v41 = a4 == 0;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v42 = *(**(a1 + 24) + 232);
    v43 = *a2;
    v44 = pthread_rwlock_rdlock((v42 + 96));
    if (v44)
    {
      geo::read_write_lock::logFailure(v44, "read lock", v45);
    }

    v46 = *(v42 + 48);
    if (v46 == (v42 + 56))
    {
LABEL_41:
      v52 = 0;
    }

    else
    {
      while (1)
      {
        v47 = v46[4];
        v48 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v47 + 192), v43);
        if (v48)
        {
          v49 = *(v47 + 168);
          if (v49)
          {
            break;
          }
        }

        v50 = v46[1];
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = v46[2];
            v41 = *v51 == v46;
            v46 = v51;
          }

          while (!v41);
        }

        v46 = v51;
        if (v51 == (v42 + 56))
        {
          goto LABEL_41;
        }
      }

      v52 = v49 + 1864 * *(v48 + 12);
    }

    geo::read_write_lock::unlock((v42 + 96));
    result = md::mun::MuninNavigationGraph::neighbors(**(a1 + 32), v52);
    if (result != v53)
    {
      v54 = result;
      v55 = v53;
      do
      {
        v56 = geo::RigidTransform<double,double>::operator*(*a1, *v54 + 8);
        v57 = 0;
        v70 = v56;
        v71 = v58;
        *&v72 = v59;
        do
        {
          v60 = *(&v70 + v57);
          *(&v73 + v57++) = v60;
        }

        while (v57 != 3);
        for (j = 0; j != 12; j += 4)
        {
          *(&v70 + j) = *&v83[j + 12] + *&v83[j + 12];
        }

        v62 = 0;
        v68 = v70;
        v69 = v71;
        do
        {
          *(&v70 + v62) = *(&v68 + v62) + *&v83[v62];
          v62 += 4;
        }

        while (v62 != 12);
        v63 = *(a1 + 40);
        v72 = *a3;
        v64 = *(v63 + 8);
        if (v64 >= *(v63 + 16))
        {
          v65 = std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(v63, &v70);
        }

        else
        {
          *v64 = v70;
          *(v64 + 8) = v71;
          *(v64 + 16) = v72;
          v65 = v64 + 32;
        }

        *(v63 + 8) = v65;
        v66 = *(a1 + 40);
        v70 = v73;
        LODWORD(v71) = v74;
        v72 = *a3;
        v67 = *(v66 + 8);
        if (v67 >= *(v66 + 16))
        {
          result = std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(v66, &v70);
        }

        else
        {
          *v67 = v73;
          *(v67 + 8) = v74;
          *(v67 + 16) = v72;
          result = v67 + 32;
        }

        *(v66 + 8) = result;
        ++v54;
      }

      while (v54 != v55);
    }
  }

  return result;
}

void anonymous namespace::createMeshDrawable(id *a1, void *a2)
{
  v3 = *([a2 device] + 24);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  [*a1 format];
  v6 = *(*(v5 + 80) + 424);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2FE4F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  (*(*v21 + 8))(v21);
  std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  (*(*v18 + 8))(v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(a1);
}

void ___ZN12_GLOBAL__N_118createMeshDrawableERKN2md13LayoutContextEP17VKSharedResourcesRKNSt3__110unique_ptrIN3ggl11RenderStateENS6_14default_deleteIS9_EEEERKNS6_6vectorINS8_5Debug11ExtendedVboENS6_9allocatorISH_EEEE_block_invoke(uint64_t a1)
{
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v10, *(a1 + 32), 0, (*(*(a1 + 32) + 48) - *(*(a1 + 32) + 40)) / *(*(a1 + 32) + 8));
  v2 = **(a1 + 48);
  v3 = *(*(a1 + 48) + 8);
  v4 = v3 - v2;
  if (v3 != v2)
  {
    v5 = 0;
    v6 = v4 >> 5;
    v7 = v10[5];
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      for (i = 0; i != 12; i += 4)
      {
        *(v7 + i) = *(v2 + i);
      }

      for (j = 16; j != 32; j += 4)
      {
        *(v7 + j) = *(v2 + j);
      }

      ++v5;
      v7 += 32;
      v2 += 32;
    }

    while (v5 != v6);
  }

  ggl::BufferMemory::~BufferMemory(v10);
}

void std::__shared_ptr_emplace<ggl::Debug::ExtendedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void __destroy_helper_block_ea8_32c75_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_5Debug11ExtendedVboEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c75_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_5Debug11ExtendedVboEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Debug::ExtendedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20AD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Debug::ExtendedPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A37070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 5;
  v7 = v6 + 1;
  if ((v6 + 1) >> 59)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 4 > v7)
  {
    v7 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = 32 * v6;
  *v10 = *a2;
  *(v10 + 8) = *(a2 + 8);
  *(v10 + 16) = *(a2 + 16);
  if (v3 != v4)
  {
    v11 = 0;
    do
    {
      v12 = *v3;
      *(v11 + 8) = v3[2];
      *v11 = v12;
      *(v11 + 16) = *(v3 + 1);
      v3 += 8;
      v11 += 32;
    }

    while (v3 != v4);
    v3 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 32 * v6 + 32;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 32 * v6 + 32;
}

__n128 std::__function::__func<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_2,std::allocator<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_2>,void ()(md::mun::MuninNavigationGraph const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A20A60;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = result;
  return result;
}

uint64_t std::swap[abi:nn200100]<md::mun::CollectionPoint>(uint64_t *a1, uint64_t *a2)
{
  v14 = *a1;
  v15 = *(a1 + 1);
  v4 = a1[4];
  v16 = a1[3];
  v17 = v4;
  v18 = *(a1 + 10);
  v19 = *(a1 + 44);
  v5 = *(a1 + 9);
  v20 = *(a1 + 7);
  v21 = v5;
  geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v22, (a1 + 11), &v23);
  *(v24 + 5) = *(a1 + 1853);
  v24[0] = a1[231];
  *a1 = *a2;
  for (i = 32; i != 44; i += 4)
  {
    *(a1 + i) = *(a2 + i);
  }

  *(a1 + 11) = *(a2 + 11);
  for (j = 1; j != 4; ++j)
  {
    a1[j] = a2[j];
  }

  *(a1 + 12) = *(a2 + 12);
  for (k = 7; k != 10; ++k)
  {
    a1[k] = a2[k];
  }

  a1[10] = a2[10];
  if (a1 != a2)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::move((a1 + 11), (a2 + 11), (a1 + 15));
  }

  v9 = a2[231];
  *(a1 + 1853) = *(a2 + 1853);
  a1[231] = v9;
  *a2 = v14;
  v10 = v16;
  a2[4] = v17;
  *(a2 + 10) = v18;
  *(a2 + 11) = v19;
  *(a2 + 1) = v15;
  a2[3] = v10;
  *(a2 + 12) = HIDWORD(v19);
  v11 = v21;
  *(a2 + 7) = v20;
  v12 = *(&v21 + 1);
  a2[9] = v11;
  a2[10] = v12;
  if (&v14 != a2)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::move((a2 + 11), v22, (a2 + 15));
  }

  a2[231] = v24[0];
  *(a2 + 1853) = *(v24 + 5);
  return geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v22);
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = result;
  v8 = a2[10];
  v9 = a3[10];
  if (v8 >= result[10])
  {
    if (v9 < v8)
    {
      result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(a2, a3);
      if (a2[10] < v7[10])
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(result, v10);
      goto LABEL_10;
    }

    result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(result, a2);
    if (a3[10] < a2[10])
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (a4[10] < a3[10])
  {
    result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(a3, a4);
    if (a3[10] < a2[10])
    {
      result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(a2, a3);
      if (a2[10] < v7[10])
      {

        return std::swap[abi:nn200100]<md::mun::CollectionPoint>(v7, a2);
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v30[12] = v2;
    v30[13] = v3;
    v5 = result;
    v6 = (result + 1864);
    if ((result + 1864) != a2)
    {
      v7 = result;
      do
      {
        v8 = v6;
        if (*(v7 + 1944) < *(v7 + 80))
        {
          v20 = *v6;
          v21 = *(v7 + 1872);
          v9 = *(v7 + 1896);
          v22 = *(v7 + 1888);
          v23 = v9;
          v24 = *(v7 + 1904);
          v25 = *(v7 + 1908);
          v26 = *(v7 + 1920);
          v27 = *(v7 + 1936);
          geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v28, v7 + 1952, &v29);
          v30[0] = *(v7 + 3712);
          *(v30 + 5) = *(v7 + 3717);
          v10 = v8;
          while (1)
          {
            v11 = 0;
            v12 = v7;
            *v10 = *v7;
            do
            {
              *(v7 + v11 + 1896) = *(v7 + v11 + 32);
              v11 += 4;
            }

            while (v11 != 12);
            v13 = 0;
            *(v10 + 11) = *(v7 + 44);
            do
            {
              *(v7 + v13 + 1872) = *(v7 + v13 + 8);
              v13 += 8;
            }

            while (v13 != 24);
            v14 = 0;
            *(v10 + 12) = *(v7 + 48);
            do
            {
              *(v7 + v14 + 1920) = *(v7 + v14 + 56);
              v14 += 8;
            }

            while (v14 != 24);
            v10[10] = *(v7 + 80);
            geo::small_vector_base<md::mun::PhotoInfo>::move((v10 + 11), v7 + 88, (v10 + 15));
            v10[231] = *(v7 + 1848);
            *(v10 + 1853) = *(v7 + 1853);
            if (v7 == v5)
            {
              break;
            }

            v7 -= 1864;
            v10 = v12;
            if (*(&v27 + 1) >= *(v12 - 1784))
            {
              v15 = v12;
              goto LABEL_16;
            }
          }

          v15 = v5;
LABEL_16:
          *v15 = v20;
          for (i = 32; i != 44; i += 4)
          {
            *(v12 + i) = *(&v20 + i);
          }

          *(v15 + 44) = v25;
          for (j = 8; j != 32; j += 8)
          {
            *(v12 + j) = *(&v20 + j);
          }

          *(v15 + 48) = HIDWORD(v25);
          for (k = 56; k != 80; k += 8)
          {
            *(v12 + k) = *(&v20 + k);
          }

          *(v15 + 80) = *(&v27 + 1);
          if (v15 != &v20)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move(v15 + 88, v28, v15 + 120);
          }

          v19 = v30[0];
          *(v12 + 1853) = *(v30 + 5);
          *(v12 + 1848) = v19;
          result = geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v28);
        }

        v6 = v8 + 233;
        v7 = v8;
      }

      while (v8 + 233 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v29[12] = v2;
    v29[13] = v3;
    v5 = result;
    v6 = (result + 1864);
    if ((result + 1864) != a2)
    {
      do
      {
        v7 = v6;
        if (*(v5 + 1944) < *(v5 + 80))
        {
          v19 = *v6;
          v20 = *(v5 + 1872);
          v8 = *(v5 + 1896);
          v21 = *(v5 + 1888);
          v22 = v8;
          v23 = *(v5 + 1904);
          v24 = *(v5 + 1908);
          v25 = *(v5 + 1920);
          v26 = *(v5 + 1936);
          geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v27, v5 + 1952, &v28);
          v29[0] = *(v5 + 3712);
          *(v29 + 5) = *(v5 + 3717);
          v9 = v7;
          do
          {
            v10 = 0;
            v11 = v5;
            *v9 = *v5;
            do
            {
              *(v5 + v10 + 1896) = *(v5 + v10 + 32);
              v10 += 4;
            }

            while (v10 != 12);
            v12 = 0;
            *(v9 + 11) = *(v5 + 44);
            do
            {
              *(v5 + v12 + 1872) = *(v5 + v12 + 8);
              v12 += 8;
            }

            while (v12 != 24);
            v13 = 0;
            *(v9 + 12) = *(v5 + 48);
            do
            {
              *(v5 + v13 + 1920) = *(v5 + v13 + 56);
              v13 += 8;
            }

            while (v13 != 24);
            v9[10] = *(v5 + 80);
            geo::small_vector_base<md::mun::PhotoInfo>::move((v9 + 11), v5 + 88, (v9 + 15));
            *(v9 + 1853) = *(v5 + 1853);
            v9[231] = *(v5 + 1848);
            v5 -= 1864;
            v14 = *(&v26 + 1);
            v9 = v11;
          }

          while (*(&v26 + 1) < *(v11 - 1784));
          *v11 = v19;
          for (i = 1896; i != 1908; i += 4)
          {
            *(v5 + i) = *(&v19 + i - 1864);
          }

          *(v11 + 44) = v24;
          for (j = 1872; j != 1896; j += 8)
          {
            *(v5 + j) = *(&v19 + j - 1864);
          }

          *(v11 + 48) = HIDWORD(v24);
          for (k = 1920; k != 1944; k += 8)
          {
            *(v5 + k) = *(&v19 + k - 1864);
          }

          *(v11 + 80) = v14;
          if (v11 != &v19)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move(v11 + 88, v27, v11 + 120);
          }

          v18 = v29[0];
          *(v11 + 1853) = *(v29 + 5);
          *(v11 + 1848) = v18;
          result = geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v27);
        }

        v6 = v7 + 233;
        v5 = v7;
      }

      while (v7 + 233 != a2);
    }
  }

  return result;
}

uint64_t std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,md::mun::CollectionPoint *>(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v84[13] = v3;
    v84[14] = v4;
    v6 = result;
    v8 = a2 - result;
    v9 = 0x63FB9AEB1FDCD759 * ((a2 - result) >> 3);
    if (a2 - result >= 1865)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (result + 1864 * v10);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(v6, v9, v12);
        v12 -= 233;
        --v11;
      }

      while (v11);
    }

    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (v13[10] < *(v6 + 80))
        {
          std::swap[abi:nn200100]<md::mun::CollectionPoint>(v13, v6);
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(v6, v9, v6);
        }

        v13 += 233;
      }

      while (v13 != a3);
    }

    if (v8 >= 1865)
    {
      v14 = a2;
      v15 = 0x63FB9AEB1FDCD759 * (v8 >> 3);
      v62 = v6;
      v60 = (v6 + 1848);
      do
      {
        v16 = v14;
        v63 = *v6;
        v64 = *(v6 + 8);
        v17 = *(v6 + 32);
        v65 = *(v6 + 24);
        v66 = v17;
        v67 = *(v6 + 40);
        v68 = *(v6 + 44);
        v69 = *(v6 + 56);
        v70 = *(v6 + 72);
        geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v71, v6 + 88, &v72);
        v18 = 0;
        v73[0] = *v60;
        *(v73 + 5) = *(v60 + 5);
        do
        {
          v19 = v6 + 1864 * v18;
          v20 = v19 + 1864;
          if (2 * v18 + 2 >= v15)
          {
            v18 = (2 * v18) | 1;
          }

          else
          {
            v21 = *(v19 + 1944);
            v22 = *(v19 + 3808);
            v23 = v19 + 3728;
            if (v21 >= v22)
            {
              v18 = (2 * v18) | 1;
            }

            else
            {
              v20 = v23;
              v18 = 2 * v18 + 2;
            }
          }

          *v6 = *v20;
          for (i = 32; i != 44; i += 4)
          {
            *(v6 + i) = *(v20 + i);
          }

          *(v6 + 44) = *(v20 + 44);
          for (j = 8; j != 32; j += 8)
          {
            *(v6 + j) = *(v20 + j);
          }

          *(v6 + 48) = *(v20 + 48);
          for (k = 56; k != 80; k += 8)
          {
            *(v6 + k) = *(v20 + k);
          }

          *(v6 + 80) = *(v20 + 80);
          if (v6 != v20)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move(v6 + 88, v20 + 88, v6 + 120);
          }

          v27 = (v20 + 1848);
          v28 = *(v20 + 1848);
          *(v6 + 1853) = *(v20 + 1853);
          *(v6 + 1848) = v28;
          v6 = v20;
        }

        while (v18 <= ((v15 - 2) >> 1));
        v14 = v16 - 233;
        if (v20 == v16 - 233)
        {
          *v20 = v63;
          for (m = 32; m != 44; m += 4)
          {
            *(v20 + m) = *(&v63 + m);
          }

          *(v20 + 44) = v68;
          for (n = 8; n != 32; n += 8)
          {
            *(v20 + n) = *(&v63 + n);
          }

          *(v20 + 48) = HIDWORD(v68);
          for (ii = 56; ii != 80; ii += 8)
          {
            *(v20 + ii) = *(&v63 + ii);
          }

          *(v20 + 80) = *(&v70 + 1);
          if (v20 != &v63)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move(v20 + 88, v71, v20 + 120);
          }

          v58 = v73[0];
          *(v20 + 1853) = *(v73 + 5);
          *v27 = v58;
        }

        else
        {
          *v20 = *v14;
          v29 = -458;
          v30 = (v20 + 32);
          do
          {
            *v30++ = *(v16 + v29++);
          }

          while (v29 != -455);
          v61 = v16 - 233;
          *(v20 + 44) = *(v16 - 455);
          v31 = -232;
          v32 = (v20 + 8);
          do
          {
            *v32++ = v16[v31++];
          }

          while (v31 != -229);
          *(v20 + 48) = *(v16 - 454);
          v33 = -226;
          v34 = (v20 + 56);
          do
          {
            *v34++ = v16[v33++];
          }

          while (v33 != -223);
          *(v20 + 80) = *(v16 - 223);
          geo::small_vector_base<md::mun::PhotoInfo>::move(v20 + 88, (v16 - 222), v20 + 120);
          v35 = *(v16 - 2);
          *(v20 + 1853) = *(v16 - 11);
          *v27 = v35;
          *v61 = v63;
          v36 = v65;
          *(v16 - 229) = v66;
          *(v16 - 456) = v67;
          *(v16 - 455) = v68;
          *(v16 - 116) = v64;
          *(v16 - 230) = v36;
          *(v16 - 454) = HIDWORD(v68);
          v37 = v69;
          *(v16 - 224) = v70;
          *(v16 - 113) = v37;
          v14 = v16 - 233;
          *(v16 - 223) = *(&v70 + 1);
          if (v61 != &v63)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move((v16 - 222), v71, (v16 - 218));
          }

          *(v16 - 2) = v73[0];
          *(v16 - 11) = *(v73 + 5);
          v38 = v20 - v62 + 1864;
          if (v38 >= 1865)
          {
            v39 = (0x63FB9AEB1FDCD759 * (v38 >> 3) - 2) >> 1;
            v40 = v62 + 1864 * v39;
            if (*(v40 + 80) < *(v20 + 80))
            {
              v74 = *v20;
              v41 = *(v20 + 8);
              v76 = *(v20 + 24);
              v75 = v41;
              v42 = *(v20 + 40);
              v77 = *(v20 + 32);
              v78 = v42;
              v79 = *(v20 + 44);
              v43 = *(v20 + 56);
              v81 = *(v20 + 72);
              v80 = v43;
              geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v82, v20 + 88, &v83);
              v44 = *v27;
              *(v84 + 5) = *(v20 + 1853);
              v84[0] = v44;
              do
              {
                v45 = v40;
                v46 = v40 + 32;
                *v20 = *v40;
                for (jj = 32; jj != 44; jj += 4)
                {
                  *(v20 + jj) = *(v40 + jj);
                }

                *(v20 + 44) = *(v40 + 44);
                for (kk = 8; kk != 32; kk += 8)
                {
                  *(v20 + kk) = *(v40 + kk);
                }

                *(v20 + 48) = *(v40 + 48);
                for (mm = 56; mm != 80; mm += 8)
                {
                  *(v20 + mm) = *(v40 + mm);
                }

                *(v20 + 80) = *(v40 + 80);
                if (v20 != v40)
                {
                  geo::small_vector_base<md::mun::PhotoInfo>::move(v20 + 88, v40 + 88, v20 + 120);
                }

                v50 = (v40 + 1848);
                v51 = *(v40 + 1848);
                *(v20 + 1853) = *(v40 + 1853);
                *(v20 + 1848) = v51;
                v52 = *(&v81 + 1);
                if (!v39)
                {
                  break;
                }

                v39 = (v39 - 1) >> 1;
                v40 = v62 + 1864 * v39;
                v20 = v45;
              }

              while (*(v40 + 80) < *(&v81 + 1));
              v53 = v76;
              *v46 = v77;
              *(v46 + 8) = v78;
              *v45 = v74;
              *(v45 + 44) = v79;
              *(v45 + 8) = v75;
              *(v45 + 24) = v53;
              *(v45 + 48) = HIDWORD(v79);
              v54 = v81;
              *(v45 + 56) = v80;
              *(v45 + 72) = v54;
              *(v45 + 80) = v52;
              if (v45 != &v74)
              {
                geo::small_vector_base<md::mun::PhotoInfo>::move(v45 + 88, v82, v45 + 120);
              }

              *v50 = v84[0];
              *(v45 + 1853) = *(v84 + 5);
              geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v82);
              v14 = v61;
            }
          }
        }

        result = geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v71);
        v59 = v15-- <= 2;
        v6 = v62;
      }

      while (!v59);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::CollectionPoint *,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &>(uint64_t a1, uint64_t *a2)
{
  v26 = *a1;
  v27 = *(a1 + 8);
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  v28 = *(a1 + 24);
  v29 = v4;
  v30 = *(a1 + 40);
  v31 = *(a1 + 44);
  v6 = *(a1 + 72);
  v32 = *(a1 + 56);
  v33 = v6;
  geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v34, a1 + 88, &v35);
  *(v36 + 5) = *(a1 + 1853);
  v36[0] = *(a1 + 1848);
  if (*(&v33 + 1) >= *(a2 - 223))
  {
    v10 = (a1 + 1864);
    do
    {
      v8 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = v10[10];
      v10 += 233;
    }

    while (*(&v33 + 1) >= v11);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = (v7 + 1864);
      v9 = *(v7 + 1944);
      v7 += 1864;
    }

    while (*(&v33 + 1) >= v9);
  }

  if (v8 >= a2)
  {
    v12 = a2;
  }

  else
  {
    do
    {
      v12 = a2 - 233;
      v13 = *(a2 - 223);
      a2 -= 233;
    }

    while (*(&v33 + 1) < v13);
  }

  while (v8 < v12)
  {
    std::swap[abi:nn200100]<md::mun::CollectionPoint>(v8, v12);
    do
    {
      v14 = v8[243];
      v8 += 233;
    }

    while (*(&v33 + 1) >= v14);
    do
    {
      v15 = v12 - 223;
      v12 -= 233;
    }

    while (*(&v33 + 1) < *v15);
  }

  v16 = v8 - 233;
  if (v8 - 233 != a1)
  {
    v17 = 0;
    *a1 = *v16;
    do
    {
      *(v5 + v17) = *(v8 + v17 - 1832);
      v17 += 4;
    }

    while (v17 != 12);
    v18 = 0;
    *(a1 + 44) = *(v8 - 455);
    do
    {
      *(a1 + 8 + v18 * 8) = v8[v18 - 232];
      ++v18;
    }

    while (v18 != 3);
    v19 = 0;
    *(a1 + 48) = *(v8 - 454);
    do
    {
      *(a1 + 56 + v19 * 8) = v8[v19 - 226];
      ++v19;
    }

    while (v19 != 3);
    *(a1 + 80) = *(v8 - 223);
    geo::small_vector_base<md::mun::PhotoInfo>::move(a1 + 88, (v8 - 222), a1 + 120);
    v20 = *(v8 - 2);
    *(a1 + 1853) = *(v8 - 11);
    *(a1 + 1848) = v20;
  }

  *v16 = v26;
  for (i = 32; i != 44; i += 4)
  {
    *(v8 + i - 1864) = *(&v26 + i);
  }

  *(v8 - 455) = v31;
  for (j = 1; j != 4; ++j)
  {
    v8[j - 233] = *(&v26 + j * 8);
  }

  *(v8 - 454) = HIDWORD(v31);
  for (k = 7; k != 10; ++k)
  {
    v8[k - 233] = *(&v26 + k * 8);
  }

  *(v8 - 223) = *(&v33 + 1);
  if (v16 != &v26)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::move((v8 - 222), v34, (v8 - 218));
  }

  v24 = v36[0];
  *(v8 - 11) = *(v36 + 5);
  *(v8 - 2) = v24;
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v34);
  return v8;
}

uint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::CollectionPoint *,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &>(uint64_t a1, uint64_t *a2)
{
  v30 = *a1;
  v4 = a1 + 8;
  v31 = *(a1 + 8);
  v6 = a1 + 32;
  v5 = *(a1 + 32);
  v32 = *(a1 + 24);
  v33 = v5;
  v34 = *(a1 + 40);
  v35 = *(a1 + 44);
  v7 = a1 + 56;
  v36 = *(a1 + 56);
  v37 = *(a1 + 72);
  geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v38, a1 + 88, &v39);
  *(v40 + 5) = *(a1 + 1853);
  v40[0] = *(a1 + 1848);
  v8 = a1;
  do
  {
    v9 = v8;
    v8 += 233;
  }

  while (v9[243] < *(&v37 + 1));
  if (v9 == a1)
  {
    while (v8 < a2)
    {
      v10 = a2 - 233;
      v12 = *(a2 - 223);
      a2 -= 233;
      if (v12 < *(&v37 + 1))
      {
        goto LABEL_9;
      }
    }

    v10 = a2;
  }

  else
  {
    do
    {
      v10 = a2 - 233;
      v11 = *(a2 - 223);
      a2 -= 233;
    }

    while (v11 >= *(&v37 + 1));
  }

LABEL_9:
  v13 = v8;
  if (v8 < v10)
  {
    v14 = v10;
    do
    {
      std::swap[abi:nn200100]<md::mun::CollectionPoint>(v13, v14);
      do
      {
        v15 = v13[243];
        v13 += 233;
      }

      while (v15 < *(&v37 + 1));
      do
      {
        v16 = v14 - 223;
        v14 -= 233;
      }

      while (*v16 >= *(&v37 + 1));
    }

    while (v13 < v14);
  }

  v17 = v13 - 233;
  if (v13 - 233 != a1)
  {
    v18 = 0;
    *a1 = *v17;
    do
    {
      *(v6 + v18) = *(v13 + v18 - 1832);
      v18 += 4;
    }

    while (v18 != 12);
    v19 = 0;
    *(a1 + 44) = *(v13 - 455);
    do
    {
      *(v4 + v19 * 8) = v13[v19 - 232];
      ++v19;
    }

    while (v19 != 3);
    v20 = 0;
    *(a1 + 48) = *(v13 - 454);
    do
    {
      *(v7 + v20 * 8) = v13[v20 - 226];
      ++v20;
    }

    while (v20 != 3);
    *(a1 + 80) = *(v13 - 223);
    geo::small_vector_base<md::mun::PhotoInfo>::move(a1 + 88, (v13 - 222), a1 + 120);
    v21 = *(v13 - 2);
    *(a1 + 1853) = *(v13 - 11);
    *(a1 + 1848) = v21;
  }

  *v17 = v30;
  v22 = v13 - 229;
  for (i = 8; i != 11; ++i)
  {
    *v22 = *(&v30 + i);
    v22 = (v22 + 4);
  }

  v24 = v13 - 232;
  *(v13 - 455) = v35;
  for (j = 1; j != 4; ++j)
  {
    *v24++ = *(&v30 + j);
  }

  *(v13 - 454) = HIDWORD(v35);
  v26 = v13 - 226;
  for (k = 7; k != 10; ++k)
  {
    *v26++ = *(&v30 + k);
  }

  *(v13 - 223) = *(&v37 + 1);
  if (v17 != &v30)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::move((v13 - 222), v38, (v13 - 218));
  }

  v28 = v40[0];
  *(v13 - 11) = *(v40 + 5);
  *(v13 - 2) = v28;
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v38);
  return v13 - 233;
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0x63FB9AEB1FDCD759 * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(a2 - 223) < a1[10])
      {
        v5 = a2 - 233;
LABEL_24:
        a1 = v3;
LABEL_31:
        std::swap[abi:nn200100]<md::mun::CollectionPoint>(a1, v5);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v11 = a1 + 466;
    v12 = a1[243];
    v13 = a1[476];
    if (v12 >= a1[10])
    {
      if (v13 >= v12 || (std::swap[abi:nn200100]<md::mun::CollectionPoint>(a1 + 233, a1 + 466), v3[243] >= v3[10]))
      {
LABEL_36:
        v15 = v3 + 699;
        if (v3 + 699 != v2)
        {
          v16 = 0;
          v17 = v3 + 470;
          v18 = v3 + 467;
          v19 = v3 + 473;
          v41 = v2;
          while (1)
          {
            if (v15[10] < v11[10])
            {
              v45 = v16;
              v46 = *v15;
              v47 = *(v15 + 1);
              v20 = v15[4];
              v48 = v15[3];
              v49 = v20;
              v50 = *(v15 + 10);
              v51 = *(v15 + 44);
              v52 = *(v15 + 7);
              v53 = *(v15 + 9);
              geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v54, (v15 + 11), &v55);
              v56[0] = v15[231];
              *(v56 + 5) = *(v15 + 1853);
              v42 = v19;
              v43 = v18;
              v21 = v19;
              v22 = v18;
              v44 = v17;
              v23 = v17;
              v24 = v15;
              while (1)
              {
                v25 = v11;
                v26 = v23;
                v27 = v22;
                v28 = v21;
                *v24 = *v11;
                v29 = 3;
                do
                {
                  v23[466] = *v23;
                  ++v23;
                  --v29;
                }

                while (v29);
                *(v24 + 11) = *(v11 + 11);
                v30 = v22;
                v31 = 3;
                do
                {
                  v30[233] = *v30;
                  ++v30;
                  --v31;
                }

                while (v31);
                *(v24 + 12) = *(v11 + 12);
                v32 = v28;
                v33 = 3;
                do
                {
                  v32[233] = *v32;
                  ++v32;
                  --v33;
                }

                while (v33);
                v24[10] = v11[10];
                geo::small_vector_base<md::mun::PhotoInfo>::move((v24 + 11), (v11 + 11), (v24 + 15));
                v34 = v11 + 231;
                v24[231] = v11[231];
                *(v24 + 1853) = *(v11 + 1853);
                if (v11 == v3)
                {
                  break;
                }

                v11 -= 233;
                v23 = v26 - 466;
                v22 = v27 - 233;
                v21 = v28 - 233;
                v24 = v25;
                if (*(&v53 + 1) >= *(v25 - 223))
                {
                  goto LABEL_50;
                }
              }

              v25 = v3;
LABEL_50:
              v35 = 0;
              *v25 = v46;
              do
              {
                v26[v35] = *(&v49 + v35 * 4);
                ++v35;
              }

              while (v35 != 3);
              v36 = 0;
              *(v25 + 11) = v51;
              do
              {
                v27[v36] = *(&v46 + v36 * 8 + 8);
                ++v36;
              }

              while (v36 != 3);
              v37 = 0;
              *(v25 + 12) = HIDWORD(v51);
              do
              {
                v28[v37] = *(&v52 + v37 * 8);
                ++v37;
              }

              while (v37 != 3);
              v25[10] = *(&v53 + 1);
              if (v25 != &v46)
              {
                geo::small_vector_base<md::mun::PhotoInfo>::move((v25 + 11), v54, (v25 + 15));
              }

              v38 = v56[0];
              *(v34 + 5) = *(v56 + 5);
              *v34 = v38;
              v16 = v45 + 1;
              if (v45 == 7)
              {
                v39 = v15 + 233 == v41;
                geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v54);
                return v39;
              }

              geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v54);
              v2 = v41;
              v19 = v42;
              v18 = v43;
              v17 = v44;
            }

            v11 = v15;
            v17 += 466;
            v18 += 233;
            v19 += 233;
            v15 += 233;
            if (v15 == v2)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v14 = v3 + 233;
      a1 = v3;
    }

    else
    {
      if (v13 >= v12)
      {
        std::swap[abi:nn200100]<md::mun::CollectionPoint>(a1, a1 + 233);
        if (v3[476] >= v3[243])
        {
          goto LABEL_36;
        }

        a1 = v3 + 233;
      }

      v14 = v3 + 466;
    }

    std::swap[abi:nn200100]<md::mun::CollectionPoint>(a1, v14);
    goto LABEL_36;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,0>(a1, a1 + 233, a1 + 466, a2 - 233);
      return 1;
    }

    if (v4 != 5)
    {
      goto LABEL_16;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,0>(a1, a1 + 233, a1 + 466, a1 + 699);
    if (*(v2 - 223) >= v3[709])
    {
      return 1;
    }

    std::swap[abi:nn200100]<md::mun::CollectionPoint>(v3 + 699, v2 - 233);
    if (v3[709] >= v3[476])
    {
      return 1;
    }

    std::swap[abi:nn200100]<md::mun::CollectionPoint>(v3 + 466, v3 + 699);
    if (v3[476] >= v3[243])
    {
      return 1;
    }

    v6 = v3 + 233;
    v7 = v3 + 466;
    goto LABEL_22;
  }

  v8 = a1[243];
  v9 = a2 - 223;
  v10 = *(a2 - 223);
  if (v8 < a1[10])
  {
    if (v10 >= v8)
    {
      std::swap[abi:nn200100]<md::mun::CollectionPoint>(a1, a1 + 233);
      if (*v9 >= v3[243])
      {
        return 1;
      }

      a1 = v3 + 233;
    }

    v5 = v2 - 233;
    goto LABEL_31;
  }

  if (v10 < v8)
  {
    v6 = a1 + 233;
    v7 = a2 - 233;
LABEL_22:
    std::swap[abi:nn200100]<md::mun::CollectionPoint>(v6, v7);
    if (v3[243] < v3[10])
    {
      v5 = v3 + 233;
      goto LABEL_24;
    }
  }

  return 1;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = a2 - 2;
  if (a2 >= 2)
  {
    v39[13] = v3;
    v39[14] = v4;
    v6 = a3;
    v7 = result;
    v8 = v5 >> 1;
    if ((v5 >> 1) >= 0x63FB9AEB1FDCD759 * ((a3 - result) >> 3))
    {
      v10 = (0xC7F735D63FB9AEB2 * ((a3 - result) >> 3)) | 1;
      v11 = result + 1864 * v10;
      if ((0xC7F735D63FB9AEB2 * ((a3 - result) >> 3) + 2) < a2)
      {
        v12 = *(v11 + 80) >= *(v11 + 1944);
        v13 = 1864;
        if (*(v11 + 80) >= *(v11 + 1944))
        {
          v13 = 0;
        }

        v11 += v13;
        if (!v12)
        {
          v10 = 0xC7F735D63FB9AEB2 * ((a3 - result) >> 3) + 2;
        }
      }

      if (*(v11 + 80) >= a3[10])
      {
        v29 = *a3;
        v30 = *(a3 + 1);
        v14 = a3[4];
        v31 = a3[3];
        v32 = v14;
        v33 = *(a3 + 10);
        v34 = *(a3 + 44);
        v35 = *(a3 + 7);
        v36 = *(a3 + 9);
        geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v37, (a3 + 11), &v38);
        *(v39 + 5) = *(v6 + 1853);
        v39[0] = v6[231];
        do
        {
          v15 = v11;
          *v6 = *v11;
          for (i = 32; i != 44; i += 4)
          {
            *(v6 + i) = *(v11 + i);
          }

          *(v6 + 11) = *(v11 + 44);
          for (j = 1; j != 4; ++j)
          {
            v6[j] = *(v11 + j * 8);
          }

          *(v6 + 12) = *(v11 + 48);
          for (k = 7; k != 10; ++k)
          {
            v6[k] = *(v11 + k * 8);
          }

          v6[10] = *(v11 + 80);
          if (v6 != v11)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move((v6 + 11), v11 + 88, (v6 + 15));
          }

          v19 = *(v11 + 1848);
          *(v6 + 1853) = *(v11 + 1853);
          v6[231] = v19;
          if (v8 < v10)
          {
            break;
          }

          v20 = (2 * v10) | 1;
          v11 = v7 + 1864 * v20;
          if (2 * v10 + 2 < a2)
          {
            v21 = *(v11 + 80);
            v22 = *(v11 + 1944);
            v23 = v21 >= v22;
            if (v21 >= v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = 1864;
            }

            v11 += v24;
            if (!v23)
            {
              v20 = 2 * v10 + 2;
            }
          }

          v6 = v15;
          v10 = v20;
        }

        while (*(v11 + 80) >= *(&v36 + 1));
        *v15 = v29;
        for (m = 32; m != 44; m += 4)
        {
          *(v15 + m) = *(&v29 + m);
        }

        *(v15 + 44) = v34;
        for (n = 8; n != 32; n += 8)
        {
          *(v15 + n) = *(&v29 + n);
        }

        *(v15 + 48) = HIDWORD(v34);
        for (ii = 56; ii != 80; ii += 8)
        {
          *(v15 + ii) = *(&v29 + ii);
        }

        *(v15 + 80) = *(&v36 + 1);
        if (v15 != &v29)
        {
          geo::small_vector_base<md::mun::PhotoInfo>::move(v15 + 88, v37, v15 + 120);
        }

        v28 = v39[0];
        *(v15 + 1853) = *(v39 + 5);
        *(v15 + 1848) = v28;
        return geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v37);
      }
    }
  }

  return result;
}

BOOL std::__function::__func<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_0,std::allocator<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_0>,BOOL ()(md::mun::CollectionPoint const&)>::operator()(double *a1, uint64_t a2)
{
  v3 = geo::RigidTransform<double,double>::operator*((a1 + 7), a2 + 8);
  *v14 = v3;
  v14[1] = v4;
  v14[2] = v5;
  if (v3 < a1[1] || v3 >= a1[4])
  {
    return 0;
  }

  v8 = 0;
  v9 = a1 + 5;
  for (i = 1; i != 3; ++i)
  {
    v11 = i;
    v12 = *&v14[i];
    if (v12 < *(v9 - 3))
    {
      return v8 > 1;
    }

    v13 = *v9++;
    ++v8;
    if (v12 >= v13)
    {
      v8 = v11 - 1;
      return v8 > 1;
    }
  }

  v8 = 2;
  return v8 > 1;
}

double std::__function::__func<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_0,std::allocator<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_0>,BOOL ()(md::mun::CollectionPoint const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A20A18;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  v5 = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 80) = v5;
  result = *(a1 + 104);
  *(a2 + 104) = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<anonymous namespace::PointDescriptor>>(unint64_t a1)
{
  if (a1 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ___ZN12_GLOBAL__N_120createPointsDrawableERKN2md13LayoutContextEP17VKSharedResourcesRKNSt3__110unique_ptrIN3ggl11RenderStateENS6_14default_deleteIS9_EEEEfRKNS6_6vectorINS_15PointDescriptorENS6_9allocatorISG_EEEE_block_invoke(uint64_t a1)
{
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v20, *(a1 + 32), 0, (*(*(a1 + 32) + 48) - *(*(a1 + 32) + 40)) / *(*(a1 + 32) + 8));
  v2 = *(a1 + 48);
  v3 = (v2[6] - v2[5]) / v2[1];
  ggl::BufferMemory::BufferMemory(v18);
  ggl::ResourceAccessor::accessIndexData(v21, 0, v2, 0, v3, 1, 0);
  ggl::BufferMemory::operator=(v18, v21);
  ggl::BufferMemory::~BufferMemory(v21);
  v4 = **(a1 + 64);
  v5 = *(*(a1 + 64) + 8);
  v6 = v5 - v4;
  if (v5 != v4)
  {
    v7 = 0;
    v8 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 2);
    v9 = v20[5];
    v10 = v19;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v11 = v19 + 16;
    v12 = v4 + 12;
    do
    {
      v13 = 0;
      v14 = (v4 + 28 * v7);
      v15 = *(v14 + 2);
      v16 = *v14;
      v17 = v9 + 16 * v7;
      *v17 = v16;
      *(v17 + 8) = v15;
      *(v17 + 12) = 1065353216;
      *(v10 + 32 * v7) = 1065353216;
      do
      {
        *(v11 + v13) = *(v12 + v13);
        v13 += 4;
      }

      while (v13 != 16);
      ++v7;
      v11 += 32;
      v12 += 28;
    }

    while (v7 != v8);
  }

  ggl::BufferMemory::~BufferMemory(v18);
  ggl::BufferMemory::~BufferMemory(v20);
}

void std::__shared_ptr_emplace<ggl::Point::ExtendedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A209E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void __destroy_helper_block_ea8_32c80_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_10CommonMesh10BufferPos4EEEEE48c75_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_5Point11ExtendedVboEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *__copy_helper_block_ea8_32c80_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_10CommonMesh10BufferPos4EEEEE48c75_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_5Point11ExtendedVboEEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Point::ExtendedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Point::ExtendedPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ___ZN2md3mun23MuninOverlayRenderLayer20updateDebugDrawablesERKNS_13LayoutContextE_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v5, *(a1 + 32), 0, (*(*(a1 + 32) + 48) - *(*(a1 + 32) + 40)) / *(*(a1 + 32) + 8));
  v2 = 0;
  v6[0] = xmmword_1B33B0B00;
  v6[1] = xmmword_1B33B10E0;
  v7 = xmmword_1B33B0AC0;
  v8 = xmmword_1B33B10F0;
  v3 = v5[5];
  do
  {
    *(v3 + v2 * 16) = v6[v2];
    ++v2;
  }

  while (v2 != 4);
  ggl::BufferMemory::~BufferMemory(v5);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v6, *(a1 + 48), 0, (*(*(a1 + 48) + 48) - *(*(a1 + 48) + 40)) / *(*(a1 + 48) + 8), 1, 0, 0);
  v4 = *(&v7 + 1);
  **(&v7 + 1) = 0x2000200010000;
  *(v4 + 8) = 3;
  ggl::BufferMemory::~BufferMemory(v6);
}

void *std::vector<anonymous namespace::PointDescriptor>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x924924924924925)
    {
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void __destroy_helper_block_ea8_32c80_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_10CommonMesh10BufferPos4EEEEE48c51_ZTSNSt3__110shared_ptrIN3ggl14IndexDataTypedItEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *__copy_helper_block_ea8_32c80_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_10CommonMesh10BufferPos4EEEEE48c51_ZTSNSt3__110shared_ptrIN3ggl14IndexDataTypedItEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::Drawable *,std::shared_ptr<ggl::Drawable>::__shared_ptr_default_delete<ggl::Drawable,ggl::Drawable>,std::allocator<ggl::Drawable>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::VSSprite::Sprite>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VSSprite::Sprite>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A207A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VSSprite::PipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A206B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::mun::MuninOverlayRenderLayer::~MuninOverlayRenderLayer(md::mun::MuninOverlayRenderLayer *this)
{
  md::mun::MuninOverlayRenderLayer::~MuninOverlayRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A20618;
  std::unique_ptr<md::mun::TapAnnotation>::reset[abi:nn200100](this + 45, 0);
  std::unique_ptr<md::mun::TapRenderResources>::reset[abi:nn200100](this + 44, 0);
  v2 = *(this + 40);
  if (v2)
  {
    *(this + 41) = v2;
    operator delete(v2);
  }

  v3 = *(this + 39);
  *(this + 39) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 38);
  *(this + 38) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 37);
  *(this + 37) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 29);
  *(this + 29) = 0;
  if (v6)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v6);
  }

  v7 = *(this + 21);
  *(this + 21) = 0;
  if (v7)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v7);
  }

  v8 = *(this + 20);
  *(this + 20) = 0;
  if (v8)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v8);
  }

  v9 = *(this + 12);
  *(this + 12) = 0;
  if (v9)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v9);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v10);
  }

  v11 = *(this + 10);
  *(this + 10) = 0;
  if (v11)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v11);
  }

  *this = &unk_1F2A16858;
  v12 = *(this + 1);
  if (v12)
  {
    *(this + 2) = v12;
    operator delete(v12);
  }
}

void md::TransitLineSegment::addRibbons(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 32) = a3;
  v4 = *(*(*(a2 + 640) - 8) + 56);
  v5 = 0;
  v6 = *(*(*(a2 + 640) - 8) + 64) - v4;
  if (v6)
  {
    v7 = v6 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v8 = *v4++;
      v5 = *(v8 + 16) + v5 - *(v8 + 8);
      --v7;
    }

    while (v7);
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*(*v9 + 20))
  {
    v11 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    do
    {
      v18 = 0;
      geo::codec::transitLinkPoints(v10, v11, &v18);
      if (v18)
      {
        if (!(v18 >> 62))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v18);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      ++v11;
      v17 = *(a1 + 8);
      v10 = *v17;
    }

    while (v11 < *(*v17 + 20));
    if (v19)
    {
      operator delete(v19);
    }
  }

  if (v22)
  {
    operator delete(v22);
  }
}

void sub_1B2FE8598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, uint64_t a28, uint64_t (***a29)(void), void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  std::unique_ptr<md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>>::~unique_ptr[abi:nn200100](&a28);
  std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>::~unique_ptr[abi:nn200100](&a29);
  if (__p)
  {
    operator delete(__p);
  }

  if (v36)
  {
    operator delete(v36);
  }

  if (a36)
  {
    operator delete(a36);
  }

  v39 = *(v37 - 200);
  if (v39)
  {
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void addEasingPointsInRegion(uint64_t a1, uint64_t a2, double a3)
{
  v5 = 0;
  v18[1] = *MEMORY[0x1E69E9840];
  *v18 = a3;
  do
  {
    v6 = *(v18 + v5);
    if (v6 > 0.001 && v6 < (*(a1 + 88) + -0.001))
    {
      v9 = *(a2 + 8);
      v8 = *(a2 + 16);
      if (v9 >= v8)
      {
        v11 = *a2;
        v12 = v9 - *a2;
        v13 = v12 >> 2;
        v14 = (v12 >> 2) + 1;
        if (v14 >> 62)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v16);
        }

        *(4 * v13) = v6;
        v10 = 4 * v13 + 4;
        memcpy(0, v11, v12);
        v17 = *a2;
        *a2 = 0;
        *(a2 + 8) = v10;
        *(a2 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v6;
        v10 = (v9 + 1);
      }

      *(a2 + 8) = v10;
    }

    v5 += 4;
  }

  while (v5 != 8);
}

void md::Ribbons::RibbonWriter<md::Ribbons::TransitRibbonDescriptor>::computeMeshSize(uint64_t a1, uint64_t *a2, std::vector<unsigned int> *a3)
{
  v50 = 1;
  md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::eliminateDuplicates(a1, a2, a3, &v50);
  v5 = v50;
  if (v50 >= 2)
  {
    v6 = *a2;
    v7 = 1;
    v8 = 3;
    while (1)
    {
      v9 = &v6[3 * v7];
      v11 = *v9;
      v10 = v9[1];
      v12 = 1;
      v13 = *v6;
      do
      {
        v14 = vabds_f32(v11, v13);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v12 = 0;
        v13 = v6[1];
        v11 = v10;
      }

      while (v14 < 1.0e-10);
      if (v14 >= 1.0e-10)
      {
        break;
      }

      ++v7;
      v8 += 3;
      if (v7 == v50)
      {
        v15 = 0.0;
        v16 = 1.0;
        goto LABEL_12;
      }
    }

    for (i = 0; i != 3; ++i)
    {
      *(&v51 + i * 4) = v6[v8++] - v6[i];
    }

    v18 = 1.0 / sqrtf((v51 * v51) + (v52 * v52));
    v16 = v18 * v51;
    v15 = v18 * v52;
LABEL_12:
    if (v5 - 1 >= 2)
    {
      v19 = v6 + 6;
      v20 = 1;
      v21 = 2;
      while (1)
      {
        v22 = v16;
        v23 = v15;
        v24 = &v6[3 * v20];
        v48 = *v24;
        v49 = *(v24 + 2);
        if (++v20 < v5)
        {
          v25 = v19;
          v26 = v20;
          while (1)
          {
            v27 = &v6[3 * v26];
            v29 = *v27;
            v28 = v27[1];
            v30 = 1;
            v31 = *&v48;
            do
            {
              v32 = vabds_f32(v29, v31);
              if ((v30 & 1) == 0)
              {
                break;
              }

              v30 = 0;
              v31 = *(&v48 + 1);
              v29 = v28;
            }

            while (v32 < 1.0e-10);
            if (v32 >= 1.0e-10)
            {
              break;
            }

            ++v26;
            v25 += 3;
            if (v26 == v5)
            {
              goto LABEL_25;
            }
          }

          for (j = 0; j != 12; j += 4)
          {
            v34 = *v25++;
            *(&v51 + j) = v34 - *(&v48 + j);
          }

          v35 = 1.0 / sqrtf((v51 * v51) + (v52 * v52));
          v16 = v35 * v51;
          v15 = v35 * v52;
        }

LABEL_25:
        v36 = atan2f(v15, v16);
        v37 = v36 - atan2f(v23, v22);
        v38 = v37;
        if (v37 > 3.14159265)
        {
          break;
        }

        if (v38 < -3.14159265)
        {
          v39 = 6.28318531;
          goto LABEL_29;
        }

LABEL_30:
        v40 = fmaxf(ceilf(fabsf(v37) * 0.64377), 1.0);
        if (v40 >= 2)
        {
          v41 = 2 * v40;
        }

        else
        {
          v41 = 2;
        }

        v21 += v41;
        v19 += 3;
        if (v20 == v5 - 1)
        {
          goto LABEL_36;
        }
      }

      v39 = -6.28318531;
LABEL_29:
      v37 = v38 + v39;
      goto LABEL_30;
    }

    v21 = 2;
LABEL_36:
    v42 = 2;
    if (*(a1 + 96))
    {
      v42 = 4;
    }

    v43 = v42 + v21;
    if (*(a1 + 97))
    {
      v43 += 2;
    }

    if (v43 < 0x10000)
    {
      v47 = ((v43 + 2 * (((*(a1 + 96) << 63) >> 63) - *(a1 + 97))) & 0xFFFFFFFFFFFFFFFELL) + *(a1 + 40);
      v44 = *(a1 + 8) + v43;
      v45 = 3 * v43 + *(a1 + 24) - 6;
      v46 = v47 - 2;
    }

    else
    {
      v44 = *(a1 + 8);
      v45 = *(a1 + 24);
      v46 = *(a1 + 40);
    }

    *(a1 + 16) = v44;
    *(a1 + 32) = v45;
    *(a1 + 48) = v46;
  }
}

uint64_t (****std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitRibbon>(v4, v2);
  }

  return a1;
}

void md::TransitRibbon::~TransitRibbon(md::TransitRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

id md::TransitLineSegment::debugString(md::TransitLineSegment *this)
{
  v2 = [MEMORY[0x1E696AD60] string];
  [v2 appendFormat:@"Mergetype=%i, mergedIndex=%i\n", *(this + 52), *(this + 10)];
  [v2 appendFormat:@"Offsets: Start=%.1f Middle=%.1f End=%.1f\n", *(this + 5), *(this + 7), *(this + 6)];
  v3 = geo::codec::transitLinkGetFromNodeID(**(this + 1), *(this + 9));
  v4 = geo::codec::transitLinkGetToNodeID(**(this + 1), *(this + 9));
  LineDirection = geo::codec::transitLinkGetLineDirection(**(this + 1), *(this + 9));
  if (LineDirection == 1)
  {
    LODWORD(v6) = 80;
  }

  else
  {
    LODWORD(v6) = 66;
  }

  if (LineDirection == 2)
  {
    v6 = 78;
  }

  else
  {
    v6 = v6;
  }

  [v2 appendFormat:@"NodeID From=%llu To=%llu Dir=%c\n", v3, v4, v6];

  return v2;
}

void md::PolygonSection::initialize(uint64_t a1, std::__shared_weak_count *a2, unint64_t a3)
{
  v9 = 0;
  *(a1 + 8) = geo::codec::multiSectionFeaturePoints(a2, a3, &v9);
  v5 = v9;
  *(a1 + 88) = v9;
  std::vector<gm::Matrix<float,2,1>>::resize((a1 + 16), v5);
  std::vector<gm::Matrix<float,2,1>>::resize((a1 + 40), *(a1 + 88));
  std::vector<BOOL>::resize(a1 + 64, *(a1 + 88), 0);
  shared_weak_owners = a2[1].__shared_weak_owners_;
  *(a1 + 96) = v5;
  *(a1 + 104) = shared_weak_owners;
  v7 = *(a1 + 88);
  __x = 0;
  std::vector<unsigned int>::resize((a1 + 112), v7, &__x);
}

void md::PolygonSection::calculateTangentVectors(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5, __n128 a6, __n128 a7)
{
  if (a2)
  {
    v48 = 0;
    CharacteristicPointsForSection = geo::codec::polygonFeatureGetCharacteristicPointsForSection(a2, a4, &v48);
    if (CharacteristicPointsForSection)
    {
      a1[12] = 0;
      if (a1[11])
      {
        v9 = 0;
        for (i = 0; i < a1[11]; ++i)
        {
          v11 = i >> 6;
          if (v9 >= v48)
          {
LABEL_9:
            v14 = (a1[8] + 8 * v11);
            v15 = 1 << i;
            v13 = v9;
          }

          else
          {
            v12 = CharacteristicPointsForSection + 100 * v9;
            v13 = v9;
            while (i != *(v12 + 3))
            {
              ++v13;
              v12 += 100;
              if (v48 == v13)
              {
                goto LABEL_9;
              }
            }

            v14 = (a1[8] + 8 * v11);
            v15 = 1 << i;
            if (v12[28] == 1)
            {
              *v14 |= v15;
              goto LABEL_11;
            }
          }

          *v14 &= ~v15;
          ++a1[12];
LABEL_11:
          v9 = v13;
        }
      }
    }
  }

  v16 = a1[11];
  if (v16)
  {
    v17 = 0;
    v18 = a1[12];
    v19 = 4;
    v20 = a1[11];
    while (1)
    {
      v21 = (v20 + v17 - 1) % v20;
      v22 = (v17 + 1);
      if ((v17 + 1) == v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = (v17 + 1);
      }

      if (v18 == v16)
      {
        goto LABEL_21;
      }

      v30 = a1[8];
      v31 = *(v30 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v32 = *(v30 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v21);
      v33 = v31 & (1 << v17);
      if (v33 || !v32)
      {
        break;
      }

      GhostPoint = geo::codec::multiSectionFeatureGetGhostPoint(a3, a4, v17);
      if (!GhostPoint)
      {
        goto LABEL_21;
      }

      v34 = a1[1];
      v26 = *(v34 + 8 * v17);
      v27 = vsub_f32(*(v34 + 8 * v23), v26);
LABEL_23:
      v29 = GhostPoint->__vftable;
      a6.n128_u64[0] = vmul_f32(v27, v27);
      a6.n128_f32[0] = sqrtf(vaddv_f32(a6.n128_u64[0]));
      v45 = a6;
      if (a6.n128_f32[0] <= 0.00000011921)
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v35 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B2754000, v35, OS_LOG_TYPE_ERROR, "Zero Length edge on polygon boundary", buf, 2u);
        }
      }

      else
      {
        *(a1[2] + 8 * v17) = vdiv_f32(v27, vdup_lane_s32(a6.n128_u64[0], 0));
      }

      v36 = vsub_f32(v26, v29);
      a7.n128_f32[0] = sqrtf(vaddv_f32(vmul_f32(v36, v36)));
      if (a7.n128_f32[0] <= 0.00000011921)
      {
        v44 = a7;
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v38 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *v46 = 0;
          _os_log_impl(&dword_1B2754000, v38, OS_LOG_TYPE_ERROR, "Zero Length edge on polygon boundary", v46, 2u);
        }

        a7 = v44;
        v37 = 0x3F80000000000000;
        if (v45.n128_f32[0] > 0.00000011921)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v37 = vdiv_f32(v36, vdup_lane_s32(a7.n128_u64[0], 0));
        *(a1[5] + 8 * v17) = v37;
        a6.n128_u64[1] = v45.n128_u64[1];
        if (v45.n128_f32[0] > 0.00000011921)
        {
          goto LABEL_43;
        }
      }

      *(a1[2] + 8 * v17) = v37;
LABEL_43:
      if (a7.n128_f32[0] <= 0.00000011921)
      {
        v39 = (a1[2] + v19);
        v40 = (a1[5] + v19);
        *(v40 - 1) = *(v39 - 1);
        *v40 = *v39;
      }

      v20 = a1[11];
      v19 += 8;
      ++v17;
      if (v22 >= v20)
      {
        return;
      }
    }

    if (v33 && !v32 && (v41 = geo::codec::multiSectionFeatureGetGhostPoint(a3, a4, v17)) != 0)
    {
      v24 = a1[1];
      v25 = v41->__vftable;
    }

    else
    {
LABEL_21:
      v24 = a1[1];
      v25 = *(v24 + 8 * v23);
    }

    v26 = *(v24 + 8 * v17);
    v27 = vsub_f32(v25, v26);
    GhostPoint = (v24 + 8 * v21);
    goto LABEL_23;
  }
}

uint64_t md::PolygonSection::PolygonSection(uint64_t a1, std::__shared_weak_count *a2, unint64_t a3)
{
  *a1 = &unk_1F2A40538;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  md::PolygonSection::initialize(a1, a2, a3);
  md::PolygonSection::calculateTangentVectors(a1, 0, a2, a3, v6, v7, v8);
  return a1;
}

{
  *a1 = &unk_1F2A40538;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  md::PolygonSection::initialize(a1, a2, a3);
  md::PolygonSection::calculateTangentVectors(a1, a2, a2, a3, v6, v7, v8);
  v37 = 0;
  StrokeSpecifications = geo::codec::polygonFeatureGetStrokeSpecifications(a2, &v37);
  if (v37)
  {
    v10 = StrokeSpecifications;
    v35 = 0;
    v36 = 0;
    v34 = &v35;
    v33 = 0;
    v38 = &v33;
    *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v34, 0) + 8) = 0;
    v11 = v37;
    if (v37)
    {
      v12 = 0;
      do
      {
        v13 = (v10 + 16 * v12);
        shared_owners_high = HIDWORD(v13->__shared_owners_);
        v15 = &v13->__shared_owners_ + 1;
        v14 = shared_owners_high;
        v17 = v35;
        if (!v35)
        {
          goto LABEL_13;
        }

        v18 = &v35;
        do
        {
          v19 = v17;
          v20 = v18;
          v21 = *(v17 + 7);
          if (v21 >= v14)
          {
            v18 = v17;
          }

          v17 = v17[v21 < v14];
        }

        while (v17);
        if (v18 == &v35)
        {
          goto LABEL_13;
        }

        if (v21 < v14)
        {
          v19 = v20;
        }

        if (v14 < *(v19 + 7))
        {
LABEL_13:
          v22 = v36;
          v38 = v15;
          *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v34, v14) + 8) = v22;
          v11 = v37;
        }

        ++v12;
      }

      while (v12 < v11);
      v33 = 0;
      if (v11)
      {
        v23 = 0;
        v24 = 0;
        v25 = 1;
        while (2)
        {
          v26 = (v10 + 16 * v23);
          while (HIDWORD(v26->__vftable) == a3)
          {
            shared_owners = v26->__shared_owners_;
            if ((v25 & 1) == 0)
            {
              if (v24 >= shared_owners)
              {
                v25 = 1;
              }

              else
              {
                v28 = v24;
                do
                {
                  v38 = &v33;
                  *(*(a1 + 112) + 4 * v28++) = *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v34, v33) + 8);
                }

                while (v28 < LODWORD(v26->__shared_owners_));
                v25 = 1;
                v11 = v37;
              }

              break;
            }

            v25 = 0;
            v33 = HIDWORD(v26->__shared_owners_);
            ++v23;
            ++v26;
            v24 = shared_owners;
            if (v23 >= v11)
            {
              goto LABEL_29;
            }
          }

          if (++v23 < v11)
          {
            continue;
          }

          break;
        }

        shared_owners = v24;
        if ((v25 & 1) == 0)
        {
LABEL_29:
          if (*(a1 + 88) > shared_owners)
          {
            v29 = shared_owners;
            v30 = shared_owners + 1;
            do
            {
              v38 = &v33;
              *(*(a1 + 112) + 4 * v29) = *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v34, v33) + 8);
              v29 = v30;
            }

            while (*(a1 + 88) > v30++);
          }
        }
      }
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v35);
  }

  return a1;
}

void sub_1B2FE9204(_Unwind_Exception *exception_object)
{
  v3 = v1[14];
  if (v3)
  {
    v1[15] = v3;
    operator delete(v3);
  }

  v4 = v1[8];
  if (v4)
  {
    operator delete(v4);
  }

  v5 = v1[5];
  if (v5)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1B2FE9588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  v13 = v11[14];
  if (v13)
  {
    v11[15] = v13;
    operator delete(v13);
  }

  v14 = v11[8];
  if (v14)
  {
    operator delete(v14);
  }

  v15 = v11[5];
  if (v15)
  {
    v11[6] = v15;
    operator delete(v15);
  }

  v16 = v11[2];
  if (v16)
  {
    v11[3] = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void md::BorderLabelPart::populateDebugNode(md::BorderLabelPart *this, gdc::DebugTreeNode *a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "BorderLabelPart");
  gdc::DebugTreeNode::createChildNode(a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(this + 72);
  v5 = *(this + 73);
  while (v4 != v5)
  {
    v6 = *v4++;
    (*(*v6 + 808))(v6, a2);
  }
}

void md::BorderLabelPart::~BorderLabelPart(md::BorderLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void md::Logic<md::TileSelectionLogic,md::TileSelectionContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void geo::small_vector_base<std::pair<md::TileSelectionTileSetType,unsigned long>>::emplace_back<md::TileSelectionTileSetType&,unsigned long const&>(uint64_t a1, _WORD *a2, void *a3)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = &v6[-*a1];
  v9 = (v8 >> 4) + 1;
  v10 = *(a1 + 24);
  if (v10 < v9)
  {
    v11 = *(a1 + 16);
    v12 = (1 << -__clz(v10 + 1));
    if (v10 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v12 = 1;
    }

    if (v12 <= v9)
    {
      v13 = (v8 >> 4) + 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = malloc_type_malloc(16 * v13, 0x100004030AC6366uLL);
    v15 = v14;
    v16 = *a1;
    v17 = *(a1 + 8);
    if (*a1 != v17)
    {
      v18 = v14;
      do
      {
        v19 = *v16++;
        *v18++ = v19;
      }

      while (v16 != v17);
    }

    if (v7 != v11)
    {
      free(*a1);
    }

    *a1 = v15;
    v6 = v15 + v8;
    *(a1 + 24) = v13;
  }

  *v6 = *a2;
  *(v6 + 1) = *a3;
  *(a1 + 8) = v6 + 16;
}

id GEOGetVectorKitTileSelectionLogicLog()
{
  if (GEOGetVectorKitTileSelectionLogicLog::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitTileSelectionLogicLog::onceToken, &__block_literal_global_22167);
  }

  v1 = GEOGetVectorKitTileSelectionLogicLog::log;

  return v1;
}

uint64_t md::buildTileSelectionSizeWarningString(_BYTE *a1, unsigned __int16 **a2, double *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v26);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "Detected large tile selections [", 32);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "{", 1);
      v7 = *v5;
      v8 = "<Invalid>";
      if (v7 <= 8)
      {
        v8 = off_1E7B3B318[v7];
      }

      v9 = strlen(v8);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, v8, v9);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, ":", 1);
      v10 = MEMORY[0x1B8C61CB0](&v27, *(v5 + 1));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, "}", 1);
      v11 = a2[1];
      v12 = *v5 == *(v11 - 8);
      v13 = *(v5 + 1) == *(v11 - 1);
      if (v12 && v13)
      {
        v14 = "]";
      }

      else
      {
        v14 = ", ";
      }

      if (v12 && v13)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, v14, v15);
      v5 += 8;
    }

    while (v5 != v6);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, " with camera:\n", 14);
  md::CameraContext::toString(__p, a3);
  if ((v25 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v17 = v25;
  }

  else
  {
    v17 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, v16, v17);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v34 & 0x10) != 0)
  {
    v19 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v19 = v30;
    }

    locale = v29[4].__locale_;
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v18 = 0;
      a1[23] = 0;
      goto LABEL_32;
    }

    locale = v29[1].__locale_;
    v19 = v29[3].__locale_;
  }

  v18 = v19 - locale;
  if ((v19 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a1[23] = v18;
  if (v18)
  {
    memmove(a1, locale, v18);
  }

LABEL_32:
  a1[v18] = 0;
  v26[0] = *MEMORY[0x1E69E54D8];
  v21 = *(MEMORY[0x1E69E54D8] + 72);
  *(v26 + *(v26[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v27 = v21;
  v28 = MEMORY[0x1E69E5548] + 16;
  if (v32 < 0)
  {
    operator delete(v31);
  }

  v28 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v29);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v35);
}

void sub_1B2FE9C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  a18 = *MEMORY[0x1E69E54D8];
  v38 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a18 + *(a18 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a20 = v38;
  a21 = MEMORY[0x1E69E5548] + 16;
  if (a34 < 0)
  {
    operator delete(a29);
  }

  a21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a22);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a37);
  _Unwind_Resume(a1);
}

void __GEOGetVectorKitTileSelectionLogicLog_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "TileSelectionLogic");
  v1 = GEOGetVectorKitTileSelectionLogicLog::log;
  GEOGetVectorKitTileSelectionLogicLog::log = v0;
}

uint64_t _ZNKSt3__110__function6__funcIZN2md18TileSelectionLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_16ElevationContextENS2_17StyleLogicContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_20TileSelectionContextEE3__0NS_9allocatorISL_EEFvNS2_17StyleManagerEventEEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A213A0;
  a2[1] = v2;
  return result;
}

_BYTE *md::Logic<md::TileSelectionLogic,md::TileSelectionContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x64780CBD71DF7CF5 && (v5 = *(a3 + 32)) != 0)
  {
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::StyleLogicContext>(v8, *(a2 + 8));
    return (*(*a1 + 160))(a1, a2, v8, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

void *std::vector<md::TileSelectionTileSetType>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 != *a2)
  {
    if (((v3 >> 1) & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v3 >> 1);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::TileSelectionContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::TileSelectionContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::TileSelectionContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::TileSelectionContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A21478;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::~__hash_table(v2 + 88);
    std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::~__hash_table(v2 + 48);
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    MEMORY[0x1B8C62190](v2, 0x10A0C40149C9738);
  }

  return a1;
}

void md::TileSelectionLogic::createDebugNode(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "TileSelectionLogic");
  gdc::DebugTreeNode::DebugTreeNode(a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = 0;
  v5 = a1 + 128;
  do
  {
    v6 = *(v5 + 8 * md::TileSelectionTileSetTypeList[v4]);
    if (v6)
    {
      (*(*v6 + 24))(__p);
      gdc::DebugTreeNode::addChildNode(a2, __p);
      v13 = &v12;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v13);
      v13 = &v11;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v13);
      if (v10 < 0)
      {
        operator delete(v9);
      }

      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    ++v4;
  }

  while (v4 != 9);
}

void sub_1B2FEA224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 72);
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 48);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a10);
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void md::TileSelectionLogic::didBecomeInactive(md::TileSelectionLogic *this)
{
  v2 = this + 296;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 37));
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 36) = v2;
}

void md::TileSelectionLogic::~TileSelectionLogic(md::TileSelectionLogic *this)
{
  md::TileSelectionLogic::~TileSelectionLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A20F60;
  if (*(this + 408) == 1)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](this + 376);
  }

  if (*(this + 368) == 1)
  {
    std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 336);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 37));
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
    operator delete(v2);
  }

  v3 = *(this + 30);
  if (v3)
  {
    *(this + 31) = v3;
    operator delete(v3);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 200);
  for (i = 192; i != 120; i -= 8)
  {
    v5 = *(this + i);
    *(this + i) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

double std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_5,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_5>,std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(*(a1 + 8) + 432);
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 1;
  return result;
}

uint64_t std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_5,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_5>,std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A21238;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_3,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_3>,float ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A211A8;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::TileSelectionLogic::configurationDidChange(void)::$_1,std::allocator<md::TileSelectionLogic::configurationDidChange(void)::$_1>,void ()(unsigned short,gdc::LayerDataSource *,gdc::DataKeyRequester *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A21430;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::TileSelectionLogic::configurationDidChange(void)::$_0,std::allocator<md::TileSelectionLogic::configurationDidChange(void)::$_0>,void ()(unsigned short,gdc::LayerDataSource *,gdc::DataKeyRequester *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A213E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A214E0;
  v5 = (a1 + 248);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 224);
  free(*(a1 + 224));
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 168);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  ggl::RenderItem::~RenderItem((a1 + 16));
  return a1;
}

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2 + 56;
    std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::Ribbons::RibbonBatch<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::RouteLine::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::RouteLine::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DottedRouteLineBatch::~DottedRouteLineBatch(md::DottedRouteLineBatch *this)
{
  *this = &unk_1F2A214A0;
  v2 = *(this + 36);
  *(this + 36) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonBatch(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A214A0;
  v2 = *(this + 36);
  *(this + 36) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonBatch(this);
}

void md::DottedRouteLineLayer::~DottedRouteLineLayer(md::DottedRouteLineLayer *this)
{
  *this = &unk_1F2A21500;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A21500;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonLayer(this);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A21520;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[9];
  a1[9] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A21500;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A21500;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::~RibbonLayer(a1);
}

void std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>::reset[abi:nn200100](uint64_t (****a1)(void))
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::DottedRouteLineRibbon>(v3, v1);
  }
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DottedRouteLine::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21540;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v22[4] = result + 24;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(result);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>>(v14, v13);
      v8 = *v3;
      v9 = *(v3 + 1) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v10];
    v17 = &v15[8 * v13];
    v18 = *a2;
    *a2 = 0;
    v19 = &v16[-8 * (v9 >> 3)];
    *v16 = v18;
    v7 = v16 + 8;
    memcpy(v19, v8, v9);
    v20 = *v3;
    *v3 = v19;
    *(v3 + 1) = v7;
    v21 = *(v3 + 2);
    *(v3 + 2) = v17;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  *(v3 + 1) = v7;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::batch(std::unordered_map<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v117 = a2;
    v119 = a2 - 1;
    v114 = a2 - 3;
    v115 = a2 - 2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = a2 - v6;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v119);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v119);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v6 + 3, v119);
            }
          }

          else
          {
            if (v8 < 2)
            {
              return result;
            }

            if (v8 == 2)
            {
              v41 = *v119;
              v42 = ggl::CullingGrid::sortOrderForCells(*(*v119 + 96));
              v43 = *v6;
              result = ggl::CullingGrid::sortOrderForCells(*(*v6 + 96));
              if (v42 < result)
              {
                *v6 = v41;
                *v119 = v43;
              }

              return result;
            }
          }

          if (v8 <= 23)
          {
            v44 = v6 + 1;
            v46 = v6 == a2 || v44 == a2;
            if (a4)
            {
              if (!v46)
              {
                v47 = 0;
                v48 = v6;
                do
                {
                  v49 = v44;
                  v50 = v48[1];
                  v51 = ggl::CullingGrid::sortOrderForCells(*(v50 + 96));
                  result = ggl::CullingGrid::sortOrderForCells(*(*v48 + 96));
                  if (v51 < result)
                  {
                    *v49 = 0;
                    v124 = v50;
                    v52 = *v48;
                    v53 = v47;
                    while (1)
                    {
                      *(v7 + v53) = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
                      v54 = v124;
                      if (!v53)
                      {
                        break;
                      }

                      v55 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                      v52 = *(v7 + v53 - 8);
                      v53 -= 8;
                      if (v55 >= ggl::CullingGrid::sortOrderForCells(*(v52 + 96)))
                      {
                        v56 = (v7 + v53 + 8);
                        goto LABEL_84;
                      }
                    }

                    v56 = v7;
LABEL_84:
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                    a2 = v117;
                  }

                  v44 = v49 + 1;
                  v47 += 8;
                  v48 = v49;
                }

                while (v49 + 1 != a2);
              }
            }

            else if (!v46)
            {
              do
              {
                v106 = v44;
                v107 = v7[1];
                v108 = ggl::CullingGrid::sortOrderForCells(*(v107 + 96));
                result = ggl::CullingGrid::sortOrderForCells(*(*v7 + 96));
                if (v108 < result)
                {
                  *v106 = 0;
                  v124 = v107;
                  v109 = *v7;
                  v110 = v106;
                  v111 = v106;
                  do
                  {
                    *--v111 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                }

                v44 = v106 + 1;
                v7 = v106;
              }

              while (v106 + 1 != a2);
            }

            return result;
          }

          v122 = v6;
          if (!a3)
          {
            if (v6 != a2)
            {
              v57 = (v8 - 2) >> 1;
              v120 = v57;
              do
              {
                v58 = v57;
                if (v120 >= v57)
                {
                  v59 = (2 * v57) | 1;
                  v60 = &v122[v59];
                  if (2 * v57 + 2 >= v8)
                  {
                    v65 = *v60;
                  }

                  else
                  {
                    v61 = *v60;
                    v62 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                    v63 = v60[1];
                    v64 = ggl::CullingGrid::sortOrderForCells(*(v63 + 96));
                    if (v62 >= v64)
                    {
                      v65 = v61;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v62 < v64)
                    {
                      ++v60;
                      v59 = 2 * v58 + 2;
                    }
                  }

                  v66 = &v122[v58];
                  v67 = ggl::CullingGrid::sortOrderForCells(*(v65 + 96));
                  v68 = *v66;
                  result = ggl::CullingGrid::sortOrderForCells(*(*v66 + 96));
                  if (v67 >= result)
                  {
                    *v66 = 0;
                    v124 = v68;
                    v69 = *v60;
                    while (1)
                    {
                      v70 = v60;
                      *v60 = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
                      if (v120 < v59)
                      {
                        break;
                      }

                      v71 = (2 * v59) | 1;
                      v60 = &v122[v71];
                      v72 = 2 * v59 + 2;
                      if (v72 >= v8)
                      {
                        v69 = *v60;
                        v59 = (2 * v59) | 1;
                      }

                      else
                      {
                        v73 = *v60;
                        v74 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                        v75 = v60[1];
                        v76 = ggl::CullingGrid::sortOrderForCells(*(v75 + 96));
                        v77 = v74 >= v76;
                        if (v74 >= v76)
                        {
                          v69 = v73;
                        }

                        else
                        {
                          v69 = v75;
                        }

                        if (v77)
                        {
                          v59 = v71;
                        }

                        else
                        {
                          ++v60;
                          v59 = v72;
                        }
                      }

                      v78 = ggl::CullingGrid::sortOrderForCells(*(v69 + 96));
                      v79 = v124;
                      v66 = v70;
                      if (v78 < ggl::CullingGrid::sortOrderForCells(*(v124 + 96)))
                      {
                        goto LABEL_112;
                      }
                    }

                    v79 = v124;
LABEL_112:
                    a2 = v117;
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                  }
                }

                v57 = v58 - 1;
              }

              while (v58);
              v80 = v122;
              do
              {
                if (v8 >= 2)
                {
                  v81 = 0;
                  v82 = *v80;
                  *v80 = 0;
                  v118 = a2;
                  v121 = v82;
                  v123 = v82;
                  v83 = v80;
                  do
                  {
                    v84 = &v83[v81];
                    v85 = v84 + 1;
                    v86 = (2 * v81) | 1;
                    v81 = 2 * v81 + 2;
                    if (v81 >= v8)
                    {
                      v93 = *v85;
                      v81 = v86;
                    }

                    else
                    {
                      v87 = v84[1];
                      v88 = ggl::CullingGrid::sortOrderForCells(*(v87 + 96));
                      v91 = v84[2];
                      v90 = v84 + 2;
                      v89 = v91;
                      v92 = ggl::CullingGrid::sortOrderForCells(*(v91 + 96));
                      if (v88 >= v92)
                      {
                        v93 = v87;
                      }

                      else
                      {
                        v93 = v89;
                      }

                      if (v88 >= v92)
                      {
                        v81 = v86;
                      }

                      else
                      {
                        v85 = v90;
                      }
                    }

                    *v85 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
                    v80 = v122;
                    v96 = (v85 - v122 + 8) >> 3;
                    v97 = v96 < 2;
                    v98 = v96 - 2;
                    if (!v97)
                    {
                      v99 = v98 >> 1;
                      v100 = &v122[v98 >> 1];
                      v101 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                      v102 = *v85;
                      if (v101 < ggl::CullingGrid::sortOrderForCells(*(*v85 + 96)))
                      {
                        *v85 = 0;
                        v103 = *v100;
                        do
                        {
                          v104 = v100;
                          *v100 = 0;
                          std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
                          if (!v99)
                          {
                            break;
                          }

                          v99 = (v99 - 1) >> 1;
                          v100 = &v122[v99];
                          v103 = *v100;
                          v105 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                          v85 = v104;
                        }

                        while (v105 < ggl::CullingGrid::sortOrderForCells(*(v102 + 96)));
                        v124 = 0;
                        std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
                }

                --a2;
                v97 = v8-- > 2;
              }

              while (v97);
            }

            return result;
          }

          v9 = v8 >> 1;
          v10 = &v6[v8 >> 1];
          if (v8 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(&v6[v8 >> 1], v6, v119);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, &v6[v8 >> 1], v119);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 1, v10 - 1, v115);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 2, &v6[v9 + 1], v114);
            v7 = v6;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v10 - 1, &v6[v8 >> 1], &v6[v9 + 1]);
            v11 = *v6;
            *v6 = *v10;
            *v10 = v11;
          }

          --a3;
          v12 = *v7;
          if (a4)
          {
            break;
          }

          v14 = ggl::CullingGrid::sortOrderForCells(*(*(v7 - 1) + 96));
          v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
          v77 = v14 >= v13;
          v7 = v6;
          if (!v77)
          {
            goto LABEL_18;
          }

          *v6 = 0;
          v124 = v12;
          if (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v119 + 96)))
          {
            v31 = v6 + 1;
            do
            {
              v6 = v31;
              if (v31 >= a2)
              {
                break;
              }

              ++v31;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v6 + 96)));
          }

          else
          {
            do
            {
              v30 = v6[1];
              ++v6;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(v30 + 96)));
          }

          v32 = a2;
          if (v6 < a2)
          {
            v32 = a2;
            do
            {
              v33 = *--v32;
            }

            while (v13 < ggl::CullingGrid::sortOrderForCells(*(v33 + 96)));
          }

          if (v6 < v32)
          {
            v34 = *v6;
            v35 = *v32;
            do
            {
              *v6 = v35;
              *v32 = v34;
              v12 = v124;
              v36 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
              do
              {
                v37 = v6[1];
                ++v6;
                v34 = v37;
              }

              while (v36 >= ggl::CullingGrid::sortOrderForCells(*(v37 + 96)));
              do
              {
                v38 = *--v32;
                v35 = v38;
              }

              while (v36 < ggl::CullingGrid::sortOrderForCells(*(v38 + 96)));
            }

            while (v6 < v32);
          }

          v39 = v6 - 1;
          if (v6 - 1 != v122)
          {
            v40 = *v39;
            *v39 = 0;
            std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
          a4 = 0;
        }

        v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
LABEL_18:
        *v7 = 0;
        v124 = v12;
        v15 = v7;
        do
        {
          v16 = v15;
          v18 = v15[1];
          ++v15;
          v17 = v18;
        }

        while (ggl::CullingGrid::sortOrderForCells(*(v18 + 96)) < v13);
        v19 = a2;
        if (v16 == v122)
        {
          v19 = a2;
          do
          {
            if (v15 >= v19)
            {
              break;
            }

            v21 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v21 + 96)) >= v13);
        }

        else
        {
          do
          {
            v20 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v20 + 96)) >= v13);
        }

        if (v15 < v19)
        {
          v22 = *v19;
          v23 = v15;
          v24 = v19;
          do
          {
            *v23 = v22;
            *v24 = v17;
            v12 = v124;
            v25 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
            do
            {
              v16 = v23;
              v26 = v23[1];
              ++v23;
              v17 = v26;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v26 + 96)) < v25);
            do
            {
              v27 = *--v24;
              v22 = v27;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v27 + 96)) >= v25);
          }

          while (v23 < v24);
        }

        if (v16 != v122)
        {
          v28 = *v16;
          *v16 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::batch(std::unordered_map<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::batch(std::unordered_map<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::batch(std::unordered_map<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v16 + 1, v117);
      if (result)
      {
        break;
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    a2 = v16;
    v6 = v122;
    if ((v29 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = v1 + 3;
      std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DottedRouteLineRibbonDescriptor>::batch(std::unordered_map<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = ggl::CullingGrid::sortOrderForCells(*(v5 + 96));
      v7 = *a1;
      if (v6 < ggl::CullingGrid::sortOrderForCells(*(*a1 + 96)))
      {
        *a1 = v5;
        *(a2 - 1) = v7;
      }

      return 1;
    }
  }

  v8 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*v9 + 96));
      if (v13 < ggl::CullingGrid::sortOrderForCells(*(*v8 + 96)))
      {
        *v9 = 0;
        v21 = v12;
        v14 = *v8;
        v15 = v10;
        while (1)
        {
          *(a1 + v15 + 16) = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
          v16 = v21;
          if (v15 == -16)
          {
            break;
          }

          v17 = ggl::CullingGrid::sortOrderForCells(*(v21 + 96));
          v14 = *(a1 + v15 + 8);
          v15 -= 8;
          if (v17 >= ggl::CullingGrid::sortOrderForCells(*(v14 + 96)))
          {
            v18 = (a1 + v15 + 24);
            goto LABEL_19;
          }
        }

        v18 = a1;
LABEL_19:
        v21 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::DottedRouteLineRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
    std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>::reset[abi:nn200100]((i - 8));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>>(v5, v4);
  }

  return a1;
}

uint64_t md::MapEngine::deviceSupportsHillshade(md::MapEngine *this)
{
  if (this && (v1 = *(this + 1)) != 0)
  {
    v2 = *(v1 + 16) & *(v1 + 20);
  }

  else
  {
    v2 = 0;
  }

  {
    md::MapEngine::deviceSupportsHillshade(void)::$_0::operator() const(void)::cached_result = MapsFeature_IsEnabled_HikingiOS();
  }

  return md::MapEngine::deviceSupportsHillshade(void)::$_0::operator() const(void)::cached_result & v2 & 1;
}

void sub_1B3005490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t *a22, void *a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t *a32, uint64_t *a33, uint64_t *a34, std::mutex *a35, uint64_t a36, uint64_t a37, uint64_t *a38, uint64_t *a39, uint64_t *a40, std::mutex *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ecs2::Flow *a49, uint64_t a50, uint64_t *a51, _Unwind_Exception *exception_objecta, uint64_t a53, uint64_t *a54, uint64_t a55, uint64_t *a56)
{
  exception_object = a1;
  v70 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v70;
    operator delete(v70);
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyUint64,unsigned long long>>::~Monitorable(a55 + 48016);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUint64,unsigned long long>>::~Monitorable(a55 + 47936);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(a55 + 47856);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(a55 + 47776);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(a55 + 47696);
  md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::~Monitorable(a55 + 47616);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(a55 + 47536);
  std::__function::__value_func<BOOL ()(BOOL const&)>::~__value_func[abi:nn200100](a55 + 47504);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable((a38 + 11));
  std::unique_ptr<md::HomeQueueScheduler>::reset[abi:nn200100](a21, 0);
  v71 = a54[24];
  a54[24] = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  v72 = a54[23];
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v72);
  }

  v73 = *a38;
  *a38 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(a55 + 47248);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(a55 + 47168);
  v74 = *a54;
  *a54 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  v75 = *(a53 + 1016);
  if (v75)
  {
    std::__shared_weak_count::__release_weak(v75);
  }

  v76 = *(a53 + 1000);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v76);
  }

  v77 = *(a53 + 856);
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v77);
  }

  std::unique_ptr<md::DaVinciGroundSettings>::reset[abi:nn200100](a34, 0);
  std::unique_ptr<md::DaVinciTransitionManager>::reset[abi:nn200100](a33, 0);
  if (*(a53 + 823) < 0)
  {
    operator delete(*a24);
  }

  v78 = *(a53 + 784);
  *(a53 + 784) = 0;
  if (v78)
  {
    (*(*v78 + 8))(v78);
  }

  v79 = *(a53 + 776);
  *(a53 + 776) = 0;
  if (v79)
  {
    (*(*v79 + 8))(v79);
  }

  v80 = *(a53 + 720);
  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v80);
  }

  v81 = *(a53 + 704);
  *(a53 + 704) = 0;
  if (v81)
  {
    (*(*v81 + 8))(v81);
  }

  std::unique_ptr<md::MapEngineSettings>::reset[abi:nn200100](a51, 0);
  v82 = *a56;
  *a56 = 0;
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  *(a53 + 664) = a13;

  std::unique_ptr<md::LayoutContext>::reset[abi:nn200100](a28, 0);
  std::unique_ptr<md::LayoutContext>::reset[abi:nn200100](a39, 0);
  v83 = *(a53 + 640);
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v83);
  }

  std::unique_ptr<md::ARContext>::reset[abi:nn200100](a32, 0);
  ggl::Loader::~Loader((a55 + 41856));
  std::unique_ptr<gdc::Context>::reset[abi:nn200100](a40, 0);
  std::unique_ptr<md::MapDataAccess>::reset[abi:nn200100]((a53 + 472), 0);
  std::unique_ptr<md::World>::reset[abi:nn200100]((a53 + 464), 0);
  v84 = *(a53 + 456);
  if (v84)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v84);
  }

  v85 = *(a53 + 432);
  *(a53 + 432) = 0;
  if (v85)
  {
    (*(*v85 + 8))(v85);
  }

  objc_destroyWeak((a53 + 424));

  ecs2::Flow::~Flow(a49);
  std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>>>::~__hash_table(a55 + 41264);
  v57 = *a53;
  if (*a53)
  {
    *(a53 + 8) = v57;
    operator delete(v57);
  }

  v58 = a55 + 41208;
  v59 = -16384;
  do
  {
    v58 = std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v58) - 32;
    v59 += 32;
  }

  while (v59);
  v60 = a55 + 8464;
  while (1)
  {
    v61 = *(v60 + v59);
    *(v60 + v59) = 0;
    if (v61)
    {
      (*(*v61 + 8))(v61);
    }

    v59 -= 8;
    if (v59 == -4096)
    {
      v62 = *(a55 + 4352);
      if (v62)
      {
        *(a55 + 4360) = v62;
        operator delete(v62);
      }

      v63 = *(a55 + 4328);
      if (v63)
      {
        *(a55 + 4336) = v63;
        operator delete(v63);
      }

      v64 = *(a55 + 216);
      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v64);
      }

      v65 = *(a47 + 80);
      *(a47 + 80) = 0;
      if (v65)
      {
        MEMORY[0x1B8C62190](v65, 0x20C4093837F09);
      }

      v66 = *(a55 + 192);
      *(a55 + 192) = 0;
      if (v66)
      {
        (*(*v66 + 8))(v66);
      }

      v67 = *a22;
      *a22 = 0;
      if (v67)
      {
        (*(*v67 + 8))(v67);
      }

      v68 = *(a55 + 144);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v68);
      }

      *(a55 + 112) = a14;

      v69 = *(a55 + 96);
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v69);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::default_delete<gdc::ResourceRequestRouter>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 248);
    if (v2)
    {
      *(v1 + 256) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 224);
    if (v3)
    {
      v4 = *(v1 + 232);
      v5 = *(v1 + 224);
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 40;
          std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4 - 32);
          v4 = v6;
        }

        while (v6 != v3);
        v5 = *(v1 + 224);
      }

      *(v1 + 232) = v3;
      operator delete(v5);
    }

    v7 = *(v1 + 200);
    if (v7)
    {
      *(v1 + 208) = v7;
      operator delete(v7);
    }

    v8 = *(v1 + 176);
    if (v8)
    {
      *(v1 + 184) = v8;
      operator delete(v8);
    }

    std::condition_variable::~condition_variable((v1 + 112));
    std::condition_variable::~condition_variable((v1 + 64));
    std::mutex::~mutex(v1);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t ___ZN2md9MapEngineC2Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKc_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = GEOConfigGetUInteger();
  *(v1 + 42160) = result;
  return result;
}

uint64_t ___ZN2md9MapEngineC2Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKc_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = GEOConfigGetUInteger();
  *(v1 + 42168) = result;
  return result;
}

uint64_t ___ZN2md9MapEngineC2Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKc_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = GEOConfigGetUInteger();
  *(v1 + 42176) = result;
  return result;
}

uint64_t ___ZN2md9MapEngineC2Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKc_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = GEOConfigGetDouble();
  *(v1 + 42184) = v3;
  return result;
}

void ___ZN2md9MapEngineC2Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKc_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((atomic_load_explicit(&_ZGVZZZN2md9MapEngineC1Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKcEUb_ENK4__49clEvE13cached_result, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZZN2md9MapEngineC1Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKcEUb_ENK4__49clEvE13cached_result))
  {
    _ZZZZN2md9MapEngineC1Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKcEUb_ENK4__49clEvE13cached_result = GEOConfigGetBOOL();
    __cxa_guard_release(&_ZGVZZZN2md9MapEngineC1Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKcEUb_ENK4__49clEvE13cached_result);
  }

  *(v1 + 42192) = _ZZZZN2md9MapEngineC1Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKcEUb_ENK4__49clEvE13cached_result;
}

uint64_t md::Monitorable<md::ConfigValue<GEOConfigKeyUint64,unsigned long long>>::~Monitorable(uint64_t a1)
{
  if (*(a1 + 24))
  {
    GEOConfigRemoveBlockListener();
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  atomic_store(0, *(a1 + 32));
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](a1 + 48);
  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void sub_1B300A1C8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](v1 + 48);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<ecs2::BaseGroup<void>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[5];
      v2[5] = 0;
      if (v4)
      {
        MEMORY[0x1B8C62190](v4, 0x1000C40FA0F61DDLL);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_32,std::equal_to<geo::linear_map><char const*>,void ()(BOOL)>::operator()(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 47552);
  v2 = +[VKDebugSettings sharedSettings];
  [v2 setLayoutContinuously:v1];
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_32,std::equal_to<geo::linear_map><char const*>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A265B0;
  a2[1] = v2;
  return result;
}

void *___ZN2md11MonitorableINS_11ConfigValueI18GEOConfigKeyUint64yEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFvyEEE_block_invoke(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result[4];
    if (*v1)
    {
      v3 = v2[2];
      if (*v2)
      {
        v4 = v2[1] == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        v2[2] = GEOConfigGetUint64();
      }

      result = v2[9];
      if (result)
      {
        v5 = v3;
        return (*(*result + 48))(result, &v5);
      }
    }
  }

  return result;
}

BOOL std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_31,std::equal_to<geo::linear_map><char const*>,BOOL ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
{
  result = 0;
  v4 = *(a1 + 8) + 40960;
  if (*(*(v4 + 1064) + 48) != 17 && (*a2 & 1) != 0)
  {
    return *(v4 + 1072) == 0;
  }

  return result;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_31,std::equal_to<geo::linear_map><char const*>,BOOL ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26568;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_30,std::equal_to<geo::linear_map><char const*>,void ()(BOOL)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 41936);
  v3 = 37;
  md::MapEngineSettings::set(v2, &v3, *(v1 + 47496));
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_30,std::equal_to<geo::linear_map><char const*>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26520;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_29,std::equal_to<geo::linear_map><char const*>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A264D8;
  a2[1] = v2;
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_28,std::equal_to<geo::linear_map><char const*>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26490;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_27,std::equal_to<geo::linear_map><char const*>,void ()(gdc::SceneStatus)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v3 + 41664));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((v3 + 41664));
    [v5 didUpdateSceneStatus:v2];
  }

  v6 = v3 + 41888;
  if (*(v3 + 47496) == 1)
  {
    v7 = GEOGetVectorKitVLRLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v2 == 1)
    {
      if (v8)
      {
        *v17 = 0;
        _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_DEBUG, "[VLR] UpdateTo: HasRequired ", v17, 2u);
      }

      v10 = *(*v6 + 8);
      v11 = v3;
      v9 = 4;
      v12 = 4;
      goto LABEL_13;
    }

    if (!v2)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_DEBUG, "[VLR] UpdateTo: PENDING ", buf, 2u);
      }

      v9 = kVariableLogicFrequency;
      v10 = *(*v6 + 8);
      v11 = v3;
      v12 = kVariableLogicFrequency;
LABEL_13:
      v13 = 1;
      v14 = 1;
      goto LABEL_18;
    }

    if (v8)
    {
      *v16 = 0;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_DEBUG, "[VLR] UpdateTo: Completed and else ", v16, 2u);
    }

    v9 = kVariableLogicFrequency;
    v10 = *(*v6 + 8);
    v11 = v3;
    v12 = kVariableLogicFrequency;
    v13 = 1;
  }

  else
  {
    v10 = *(*v6 + 8);
    v11 = v3;
    v9 = 1;
    v12 = 0;
    v13 = 0;
  }

  v14 = 0;
LABEL_18:
  md::MapEngine::updateLogicsFrequency(v11, v9, v10, v12, v13, v14);
  if (*(*(v3 + 42024) + 48) == 17)
  {
    v15 = 3;
    md::MapEngine::setNeedsTick(v3, &v15);
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_27,std::equal_to<geo::linear_map><char const*>,void ()(gdc::SceneStatus)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26448;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_26,std::equal_to<geo::linear_map><char const*>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v5 = v1;
  if (atomic_load_explicit((v1 + 42008), memory_order_acquire) != -1)
  {
    *buf = &v5;
    v6 = buf;
    std::__call_once((v1 + 42008), &v6, std::__call_once_proxy[abi:nn200100]<std::tuple<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_26::operator() const(void)::{lambda(void)#1} &&>>);
  }

  WeakRetained = objc_loadWeakRetained((v1 + 41664));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((v1 + 41664));
    [v3 willBecomeFullyDrawn];
  }

  v4 = GEOGetVectorKitVLRLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_DEBUG, "[VLR] setWillBecomeFullyLoadedCallback", buf, 2u);
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_26::operator() const(void)::{lambda(void)#1} &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  v2 = *(v1 + 41936);
  v3 = 30;
  md::MapEngineSettings::set(v2, &v3, 1);
  md::AnimationManager::forceInstantAnimations(*(v1 + 192), 0);
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_26,std::equal_to<geo::linear_map><char const*>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26400;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_25,std::equal_to<geo::linear_map><char const*>,void ()(NSError *)>::operator()(uint64_t a1, id *a2)
{
  v7 = *a2;
  v3 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v3 + 41664));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((v3 + 41664));
    v6 = v5;
    if (v7)
    {
      [v5 didFinishLoadingDataWithError:?];
    }

    else
    {
      [v5 didFinishLoadingData];
    }
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_25,std::equal_to<geo::linear_map><char const*>,void ()(NSError *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A263B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_24,std::equal_to<geo::linear_map><char const*>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v1 + 41664));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((v1 + 41664));
    [v3 didStartLoadingData];
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_24,std::equal_to<geo::linear_map><char const*>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26370;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_23,std::equal_to<geo::linear_map><char const*>,void ()(long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26328;
  a2[1] = v2;
  return result;
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_39 &&>>()
{
  v0 = +[VKPlatform sharedPlatform];
  kVariableLogicFrequency = [v0 preferredFrequencyUpdate];
}

uint64_t std::__shared_ptr_pointer<LayoutContextProviderWrapper *,std::shared_ptr<LayoutContextProviderWrapper>::__shared_ptr_default_delete<LayoutContextProviderWrapper,LayoutContextProviderWrapper>,std::allocator<LayoutContextProviderWrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<LayoutContextProviderWrapper *,std::shared_ptr<LayoutContextProviderWrapper>::__shared_ptr_default_delete<LayoutContextProviderWrapper,LayoutContextProviderWrapper>,std::allocator<LayoutContextProviderWrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::CameraStore *,std::shared_ptr<md::CameraStore>::__shared_ptr_default_delete<md::CameraStore,md::CameraStore>,std::allocator<md::CameraStore>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::deque<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::~deque[abi:nn200100](result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::CameraStore *,std::shared_ptr<md::CameraStore>::__shared_ptr_default_delete<md::CameraStore,md::CameraStore>,std::allocator<md::CameraStore>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::LogicContextProvider<md::ElevationLogic> *,std::shared_ptr<md::LogicContextProvider<md::ElevationLogic>>::__shared_ptr_default_delete<md::LogicContextProvider<md::ElevationLogic>,md::LogicContextProvider<md::ElevationLogic>>,std::allocator<md::LogicContextProvider<md::ElevationLogic>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::LogicContextProvider<md::ElevationLogic> *,std::shared_ptr<md::LogicContextProvider<md::ElevationLogic>>::__shared_ptr_default_delete<md::LogicContextProvider<md::ElevationLogic>,md::LogicContextProvider<md::ElevationLogic>>,std::allocator<md::LogicContextProvider<md::ElevationLogic>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::LogicContextProvider<md::ResolvedSceneLogic> *,std::shared_ptr<md::LogicContextProvider<md::ResolvedSceneLogic>>::__shared_ptr_default_delete<md::LogicContextProvider<md::ResolvedSceneLogic>,md::LogicContextProvider<md::ResolvedSceneLogic>>,std::allocator<md::LogicContextProvider<md::ResolvedSceneLogic>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::LogicContextProvider<md::ResolvedSceneLogic> *,std::shared_ptr<md::LogicContextProvider<md::ResolvedSceneLogic>>::__shared_ptr_default_delete<md::LogicContextProvider<md::ResolvedSceneLogic>,md::LogicContextProvider<md::ResolvedSceneLogic>>,std::allocator<md::LogicContextProvider<md::ResolvedSceneLogic>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_22,std::equal_to<geo::linear_map><char const*>,void ()(VKMuninAvailability)>::operator()(uint64_t a1, void **a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 41912);
  if (v4)
  {
    v5 = *a2;
    objc_initWeak(&location, v4);
    v6 = **(v3 + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZZN2md9MapEngineC1Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKcENK4__22clE19VKMuninAvailability_block_invoke;
    block[3] = &unk_1E7B38940;
    v7 = v6;
    objc_copyWeak(v9, &location);
    v9[1] = v5;
    dispatch_async(v7, block);

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void ___ZZN2md9MapEngineC1Efffb16VKMapViewPurposeRKNSt3__110shared_ptrINS_11TaskContextEEE12VKMapPurposeONS2_10unique_ptrINS_16AnimationManagerENS2_14default_deleteISA_EEEERKN3geo10linear_mapINS_16MapEngineSettingExNS2_8equal_toISH_EENS2_9allocatorINS2_4pairISH_xEEEENS2_6vectorISM_SN_EEEEyP24GEOApplicationAuditTokenPKcENK4__22clE19VKMuninAvailability_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained cameraDelegate];
    [v3 mapLayerMuninAvailabilityDidChange:*(a1 + 40)];

    WeakRetained = v4;
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_22,std::equal_to<geo::linear_map><char const*>,void ()(VKMuninAvailability)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26160;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_21,std::equal_to<geo::linear_map><char const*>,void ()(std::unique_ptr<md::AnimationManager> &&::Unit<std::unique_ptr<md::AnimationManager> &&::DegreeUnitDescription,double>)>::operator()(uint64_t a1, double *a2)
{
  v2 = *a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 41664));
  [WeakRetained didUpdateVerticalYawTo:v2];
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_21,std::equal_to<geo::linear_map><char const*>,void ()(std::unique_ptr<md::AnimationManager> &&::Unit<std::unique_ptr<md::AnimationManager> &&::DegreeUnitDescription,double>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26118;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_20,std::equal_to<geo::linear_map><char const*>,void ()(std::unique_ptr<md::AnimationManager> &&::Mercator2<double>,BOOL)>::operator()(uint64_t a1, double *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a3;
  v6 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v6 + 41664));
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = exp(v4 * 6.28318531 + -3.14159265);
    v9 = atan(v8);
    v10 = fmod(v3 * 6.28318531, 6.28318531);
    v11 = fmod(v10 + 6.28318531, 6.28318531) * 57.2957795 + -180.0;
    v13 = objc_loadWeakRetained((v6 + 41664));
    [v13 location:v5 isInHikingContextualRegion:{v9 * 114.591559 + -90.0, v11}];
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_20,std::equal_to<geo::linear_map><char const*>,void ()(std::unique_ptr<md::AnimationManager> &&::Mercator2<double>,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A260D0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_19,std::equal_to<geo::linear_map><char const*>,void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v3 + 41664));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = objc_loadWeakRetained((v3 + 41664));
    [v6 locationInHikingToolTipRegion:v2];
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_19,std::equal_to<geo::linear_map><char const*>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26088;
  a2[1] = v2;
  return result;
}

void md::Logic<md::HillshadeLogic,md::HillshadeContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

_BYTE *md::Logic<md::HillshadeLogic,md::HillshadeContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE719E07499A88BEBLL && (v4 = *(a3 + 32)) != 0)
  {
    v9[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::GeometryContext>(*(a2 + 8));
    v9[1] = v7;
    return (*(*a1 + 160))(a1, a2, v9, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::GeometryContext>(void *a1)
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

  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x3070CB6B3C7F21D3uLL);
  return v4;
}

uint64_t md::Logic<md::HillshadeLogic,md::HillshadeContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE719E07499A88BEBLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 152))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::HillshadeLogic,md::HillshadeContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE719E07499A88BEBLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::HillshadeLogic,md::HillshadeContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE719E07499A88BEBLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::HillshadeLogic,md::HillshadeContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE719E07499A88BEBLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::HillshadeContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::HillshadeContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A34618;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::HillshadeContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A34618;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_18,std::equal_to<geo::linear_map><char const*>,void ()(VKNavigationPuckLocationTracingEvent *)>::operator()(uint64_t a1, id *a2)
{
  v7 = *a2;
  v3 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v3 + 41664));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((v3 + 41664));
    [v6 puckLocationTracingEvent:v7];
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_18,std::equal_to<geo::linear_map><char const*>,void ()(VKNavigationPuckLocationTracingEvent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25F88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_17,std::equal_to<geo::linear_map><char const*>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v1 + 41664));
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v4 = objc_loadWeakRetained((v1 + 41664));
  v5 = [v4 canChangeVenueFocus];

  return v5;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_17,std::equal_to<geo::linear_map><char const*>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25F40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_16,std::equal_to<geo::linear_map><char const*>,void ()(BOOL)>::operator()(uint64_t a1, char *a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(a1 + 8) + 41928) + 16), 0x20A1ED17D78F322BuLL)[5] + 160);
  v5[0] = &unk_1F2A114F8;
  v5[1] = v3;
  LOBYTE(v6[0]) = v2;
  v6[1] = v5;
  memset(v6 + 1, 0, 7);
  md::LabelManager::queueCommand(v3, 49, 1, v5);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
}

void sub_1B300C320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_16,std::equal_to<geo::linear_map><char const*>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25EF8;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_15,std::equal_to<geo::linear_map><char const*>,void ()(void)>::operator()(uint64_t a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(a1 + 8) + 41928) + 16), 0x20A1ED17D78F322BuLL);
  v2 = *(result[5] + 160);
  v3 = atomic_load((v2 + 3053));
  if (v3)
  {
    v4 = *(v2 + 136);
    if (v4)
    {
      result = *(v4 + 56);
      if (result)
      {

        return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(result, v2, 9);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_15,std::equal_to<geo::linear_map><char const*>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25EB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_14,std::equal_to<geo::linear_map><char const*>,void ()(VKAnimation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25E68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_13,std::equal_to<geo::linear_map><char const*>,void ()(void)>::operator()(uint64_t a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v1 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(a1 + 8) + 41928) + 16), 0x20A1ED17D78F322BuLL)[5] + 160);
  v3[0] = &unk_1F2A114B0;
  v3[1] = v1;
  v3[3] = v3;
  md::LabelManager::queueCommand(v1, 41, 1, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
}

void sub_1B300C644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_13,std::equal_to<geo::linear_map><char const*>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25E20;
  a2[1] = v2;
  return result;
}

std::mutex *std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_12,std::equal_to<geo::linear_map><char const*>,void ()(md::Venue const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  result = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(a1 + 8) + 41928) + 16), 0x20A1ED17D78F322BuLL)[5] + 160);
  if (v2 || result[56].__m_.__opaque[18] == 1)
  {
    result[56].__m_.__opaque[18] = v2 != 0;
    v4[0] = &unk_1F2A11468;
    v4[1] = result;
    LOBYTE(v5[0]) = v2 != 0;
    v5[1] = v4;
    memset(v5 + 1, 0, 7);
    md::LabelManager::queueCommand(result, 50, 1, v4);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
  }

  return result;
}

void sub_1B300C7DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_12,std::equal_to<geo::linear_map><char const*>,void ()(md::Venue const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25DD8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_11,std::equal_to<geo::linear_map><char const*>,void ()(md::Venue const*,md::VenueBuilding const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 41664));
  [WeakRetained nearestVenueDidChange:v3 building:v4];
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_11,std::equal_to<geo::linear_map><char const*>,void ()(md::Venue const*,md::VenueBuilding const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25D90;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_10,std::equal_to<geo::linear_map><char const*>,void ()(VKARWalkingElevationRequestFailureInfo *)>::operator()(uint64_t a1, id *a2)
{
  v7 = *a2;
  v3 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v3 + 41664));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((v3 + 41664));
    [v6 arWalkingElevationRequestFailure:v7];
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_10,std::equal_to<geo::linear_map><char const*>,void ()(VKARWalkingElevationRequestFailureInfo *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25D48;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_9,std::equal_to<geo::linear_map><char const*>,void ()(VKARWalkingFeatureSet *)>::operator()(uint64_t a1, id *a2)
{
  v7 = *a2;
  v3 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v3 + 41664));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((v3 + 41664));
    [v6 arWalkingFeatureSetStateDidUpdate:v7];
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_9,std::equal_to<geo::linear_map><char const*>,void ()(VKARWalkingFeatureSet *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25D00;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_8,std::equal_to<geo::linear_map><char const*>,void ()(VKARWalkingFeatureDidUpdateInfo *)>::operator()(uint64_t a1, id *a2)
{
  v7 = *a2;
  v3 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v3 + 41664));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((v3 + 41664));
    [v6 activeARWalkingFeatureDidUpdate:v7];
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_8,std::equal_to<geo::linear_map><char const*>,void ()(VKARWalkingFeatureDidUpdateInfo *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25CB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_7,std::equal_to<geo::linear_map><char const*>,void ()(md::MuninJunction const*,md::MuninRoadEdge const*,BOOL)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v7 + 41664));
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v10 = objc_loadWeakRetained((v7 + 41664));
    [v10 muninJunctionDidChange:v4 currentRoad:v5 localize:v6];
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_7,std::equal_to<geo::linear_map><char const*>,void ()(md::MuninJunction const*,md::MuninRoadEdge const*,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25C70;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_6,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager *)>::operator()(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 41664));
  [WeakRetained labelManagerDidLayout];
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_6,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25C28;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_5,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 41664));
  [WeakRetained labelMarkerDidChangeState:a3];
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_5,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25BE0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_4,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 41664));
  [WeakRetained selectedLabelMarkerWillDisappear:a3];
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_4,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25B98;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_3,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 41664));
  [WeakRetained selectedLabelMarkerDidCompleteLayout:a3];
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_3,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25B50;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_2,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a1 + 8);
  v4 = *a3;
  md::MapEngine::setNeedsTick(v3, &v4);
  *(v3 + 42112) = 0;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_2,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager const*,md::NeedsLayoutReason)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25B08;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_1,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager *,md::NeedsLayoutReason)>::operator()(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a1 + 8);
  v4 = *a3;
  md::MapEngine::setNeedsTick(v3, &v4);
  *(v3 + 42112) = 0;
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_1,std::equal_to<geo::linear_map><char const*>,void ()(md::LabelManager *,md::NeedsLayoutReason)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A25AC0;
  a2[1] = v2;
  return result;
}

void md::Logic<md::ARApplyWorldTransformUpdatesLogic,md::ARApplyWorldTransformUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

_BYTE *md::Logic<md::ARApplyWorldTransformUpdatesLogic,md::ARApplyWorldTransformUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x61AAF6FADEFBCCACLL && (v4 = *(a3 + 32)) != 0)
  {
    md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>(v8, *(a2 + 8));
    return (*(*a1 + 160))(a1, a2, v8, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

void *md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x2BD4930A0600742uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x2BD4930A0600742))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = gdc::Context::context<md::ARAnimationContext>(a2);
  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x9C174DEE01931CA6);
  if (v8 && (v9 = v8[5], *(v9 + 8) == 0x9C174DEE01931CA6))
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  result = gdc::Context::context<md::LabelsExternalMeshContext>(a2);
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v10;
  a1[3] = result;
  return result;
}

void *gdc::Context::context<md::ARAnimationContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x148CB13E59522D82uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x148CB13E59522D82)
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

uint64_t md::Logic<md::ARApplyWorldTransformUpdatesLogic,md::ARApplyWorldTransformUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x61AAF6FADEFBCCACLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARApplyWorldTransformUpdatesLogic,md::ARApplyWorldTransformUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x61AAF6FADEFBCCACLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARApplyWorldTransformUpdatesLogic,md::ARApplyWorldTransformUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x61AAF6FADEFBCCACLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARApplyWorldTransformUpdatesLogic,md::ARApplyWorldTransformUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x61AAF6FADEFBCCACLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARUpDirectionUpdatesContext,md::ARAnimationContext,md::ARRotateTowardsUserContext,md::LabelsExternalMeshContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARApplyWorldTransformUpdatesContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARApplyWorldTransformUpdatesContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A4EE68;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARApplyWorldTransformUpdatesContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A4EE68;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::Logic<md::ARUpDirectionUpdatesLogic,md::ARUpDirectionUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARAnimationContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

_BYTE *md::Logic<md::ARUpDirectionUpdatesLogic,md::ARUpDirectionUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARAnimationContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2BD4930A0600742 && (v4 = *(a3 + 32)) != 0)
  {
    v8[0] = gdc::Context::context<md::ARAnimationContext>(*(a2 + 8));
    return (*(*a1 + 160))(a1, a2, v8, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t md::Logic<md::ARUpDirectionUpdatesLogic,md::ARUpDirectionUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARAnimationContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2BD4930A0600742)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARAnimationContext>(*(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARUpDirectionUpdatesLogic,md::ARUpDirectionUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARAnimationContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2BD4930A0600742)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARAnimationContext>(*(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARUpDirectionUpdatesLogic,md::ARUpDirectionUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARAnimationContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2BD4930A0600742)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARAnimationContext>(*(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARUpDirectionUpdatesLogic,md::ARUpDirectionUpdatesContext,md::LogicDependencies<gdc::TypeList<md::ARAnimationContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2BD4930A0600742)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARAnimationContext>(*(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARUpDirectionUpdatesContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARUpDirectionUpdatesContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A40060;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARUpDirectionUpdatesContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A40060;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::CollectARMapDataLogic::~CollectARMapDataLogic(md::CollectARMapDataLogic *this)
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

void md::Logic<md::BVHDebugLogic,md::BVHDebugContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

_BYTE *md::Logic<md::BVHDebugLogic,md::BVHDebugContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xEB7D991403622616 && (v4 = *(a3 + 32)) != 0)
  {
    v9[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext>(*(a2 + 8));
    v9[1] = v7;
    return (*(*a1 + 160))(a1, a2, v9, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::BVHDebugContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_0,std::equal_to<geo::linear_map><char const*>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = **(*(a1 + 8) + 208);
  if (v1)
  {
    v2 = 16;
    md::MapEngine::setNeedsTick(v1, &v2);
  }
}

uint64_t std::__function::__func<md::MapEngine::MapEngine(float,float,float,BOOL,VKMapViewPurpose,std::shared_ptr<md::TaskContext> const&,VKMapPurpose,std::unique_ptr<md::AnimationManager> &&,geo::linear_map<md::MapEngineSetting,long long,std::equal_to<geo::linear_map>,std::allocator<std::pair<geo::linear_map,long long>>,std::vector<std::pair,std::pair<geo::linear_map,long long>>> const&,unsigned long long,GEOApplicationAuditToken *,char const*)::$_0,std::equal_to<geo::linear_map><char const*>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A246F0;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<gdc::Camera>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A246B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__hash_table<std::__hash_value_type<md::MapEngineSetting,std::function<void ()(long long)>>,std::__unordered_map_hasher<md::MapEngineSetting,std::__hash_value_type<md::MapEngineSetting,std::function<void ()(long long)>>,std::hash<md::MapEngineSetting>,std::equal_to<md::MapEngineSetting>,true>,std::__unordered_map_equal<md::MapEngineSetting,std::__hash_value_type<md::MapEngineSetting,std::function<void ()(long long)>>,std::equal_to<md::MapEngineSetting>,std::hash<md::MapEngineSetting>,true>,std::allocator<std::__hash_value_type<md::MapEngineSetting,std::function<void ()(long long)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<void ()(long long)>::~__value_func[abi:nn200100]((v2 + 3));
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

uint64_t std::__shared_ptr_pointer<md::RunLoopController *,std::shared_ptr<md::RunLoopController>::__shared_ptr_default_delete<md::RunLoopController,md::RunLoopController>,std::allocator<md::RunLoopController>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::RunLoopController *,std::shared_ptr<md::RunLoopController>::__shared_ptr_default_delete<md::RunLoopController,md::RunLoopController>,std::allocator<md::RunLoopController>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::ConfigSettingProvider *,std::shared_ptr<md::ConfigSettingProvider>::__shared_ptr_default_delete<md::ConfigSettingProvider,md::ConfigSettingProvider>,std::allocator<md::ConfigSettingProvider>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 80);
    md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(v1);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::ConfigSettingProvider *,std::shared_ptr<md::ConfigSettingProvider>::__shared_ptr_default_delete<md::ConfigSettingProvider,md::ConfigSettingProvider>,std::allocator<md::ConfigSettingProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::RenderLayerProviderWrapper *,std::shared_ptr<md::RenderLayerProviderWrapper>::__shared_ptr_default_delete<md::RenderLayerProviderWrapper,md::RenderLayerProviderWrapper>,std::allocator<md::RenderLayerProviderWrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::RenderLayerProviderWrapper *,std::shared_ptr<md::RenderLayerProviderWrapper>::__shared_ptr_default_delete<md::RenderLayerProviderWrapper,md::RenderLayerProviderWrapper>,std::allocator<md::RenderLayerProviderWrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RenderLayerProviderWrapper::~RenderLayerProviderWrapper(md::RenderLayerProviderWrapper *this)
{
  md::RenderLayerProviderWrapper::~RenderLayerProviderWrapper(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A24578;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

double md::RenderLayerProviderWrapper::setQuantizedShadowMatrix(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 8) + 4496;
  do
  {
    result = *(a2 + v2);
    *(v3 + v2) = result;
    v2 += 8;
  }

  while (v2 != 128);
  return result;
}

__n128 md::RenderLayerProviderWrapper::quantizedShadowMatrix@<Q0>(md::RenderLayerProviderWrapper *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  v3 = *(v2 + 4576);
  *(a2 + 64) = *(v2 + 4560);
  *(a2 + 80) = v3;
  v4 = *(v2 + 4608);
  *(a2 + 96) = *(v2 + 4592);
  *(a2 + 112) = v4;
  v5 = *(v2 + 4512);
  *a2 = *(v2 + 4496);
  *(a2 + 16) = v5;
  result = *(v2 + 4528);
  v7 = *(v2 + 4544);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

void md::MaterialResourceStore::~MaterialResourceStore(md::MaterialResourceStore *this)
{
  v2 = (this + 2608);
  *(this + 326) = &unk_1F2A240E0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 3000);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 2960);
  *(this + 326) = &unk_1F2A24100;
  md::data_recycle_pool<md::ls::ColorCorrectionData>::~data_recycle_pool(this + 2864);
  *(this + 326) = &unk_1F2A24120;
  v3 = *(this + 355);
  if (v3)
  {
    *(this + 356) = v3;
    operator delete(v3);
  }

  v4 = *(this + 352);
  if (v4)
  {
    *(this + 353) = v4;
    operator delete(v4);
  }

  ecs2::group_storage<geo::handle<md::ls::ColorCorrectionData>,md::Counter,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~group_storage(v2);
  *(this + 272) = &unk_1F2A24180;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 2568);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 2528);
  *(this + 272) = &unk_1F2A241A0;
  md::data_recycle_pool<md::ls::SSAOIntensityData>::~data_recycle_pool(this + 2432);
  *(this + 272) = &unk_1F2A241C0;
  v5 = *(this + 301);
  if (v5)
  {
    *(this + 302) = v5;
    operator delete(v5);
  }

  v6 = *(this + 298);
  if (v6)
  {
    *(this + 299) = v6;
    operator delete(v6);
  }

  ecs2::group_storage<geo::handle<md::ls::SSAOIntensityData>,md::Counter,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~group_storage(this + 272);
  *(this + 218) = &unk_1F2A24220;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 2136);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 2096);
  *(this + 218) = &unk_1F2A24240;
  md::data_recycle_pool<md::ls::GradientMaskData>::~data_recycle_pool(this + 2000);
  *(this + 218) = &unk_1F2A24260;
  v7 = *(this + 247);
  if (v7)
  {
    *(this + 248) = v7;
    operator delete(v7);
  }

  v8 = *(this + 244);
  if (v8)
  {
    *(this + 245) = v8;
    operator delete(v8);
  }

  ecs2::group_storage<geo::handle<md::ls::GradientMaskData>,md::Counter,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~group_storage(this + 218);
  *(this + 164) = &unk_1F2A242C0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 1704);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 1664);
  *(this + 164) = &unk_1F2A242E0;
  md::data_recycle_pool<md::ls::ColorData>::~data_recycle_pool(this + 1568);
  *(this + 164) = &unk_1F2A24300;
  v9 = *(this + 193);
  if (v9)
  {
    *(this + 194) = v9;
    operator delete(v9);
  }

  v10 = *(this + 190);
  if (v10)
  {
    *(this + 191) = v10;
    operator delete(v10);
  }

  ecs2::group_storage<geo::handle<md::ls::ColorData>,md::Counter,md::ls::ColorData,md::ls::ColorData*>::~group_storage(this + 164);
  *(this + 110) = &unk_1F2A24360;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 1272);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 1232);
  *(this + 110) = &unk_1F2A24380;
  md::data_recycle_pool<md::ls::ZIndex>::~data_recycle_pool(this + 1136);
  *(this + 110) = &unk_1F2A243A0;
  v11 = *(this + 139);
  if (v11)
  {
    *(this + 140) = v11;
    operator delete(v11);
  }

  v12 = *(this + 136);
  if (v12)
  {
    *(this + 137) = v12;
    operator delete(v12);
  }

  ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::~group_storage(this + 110);
  *(this + 56) = &unk_1F2A24400;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 840);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 800);
  *(this + 56) = &unk_1F2A24420;
  md::data_recycle_pool<md::ls::MaterialVisibilityOptions>::~data_recycle_pool(this + 704);
  *(this + 56) = &unk_1F2A24440;
  v13 = *(this + 85);
  if (v13)
  {
    *(this + 86) = v13;
    operator delete(v13);
  }

  v14 = *(this + 82);
  if (v14)
  {
    *(this + 83) = v14;
    operator delete(v14);
  }

  ecs2::group_storage<geo::handle<md::ls::MaterialVisibilityOptions>,md::Counter,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~group_storage(this + 56);
  *(this + 2) = &unk_1F2A244A0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 408);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 368);
  *(this + 2) = &unk_1F2A244C0;
  md::data_recycle_pool<std::shared_ptr<gms::Material<ggl::Texture2D>>>::~data_recycle_pool(this + 272);
  *(this + 2) = &unk_1F2A244E0;
  v15 = *(this + 31);
  if (v15)
  {
    *(this + 32) = v15;
    operator delete(v15);
  }

  v16 = *(this + 28);
  if (v16)
  {
    *(this + 29) = v16;
    operator delete(v16);
  }

  ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~group_storage(this + 2);
  v17 = *(this + 1);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }
}

md::MaterialResourceStore *std::__shared_ptr_pointer<md::MaterialResourceStore *,std::shared_ptr<md::MaterialResourceStore>::__shared_ptr_default_delete<md::MaterialResourceStore,md::MaterialResourceStore>,std::allocator<md::MaterialResourceStore>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::MaterialResourceStore::~MaterialResourceStore(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::MaterialResourceStore *,std::shared_ptr<md::MaterialResourceStore>::__shared_ptr_default_delete<md::MaterialResourceStore,md::MaterialResourceStore>,std::allocator<md::MaterialResourceStore>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::VKMRenderResourcesStore::~VKMRenderResourcesStore(md::VKMRenderResourcesStore *this)
{
  v2 = *(this + 1793);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 1791);
  *(this + 1791) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 1789);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 1786);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 1784);
  *(this + 1784) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 1748) = &unk_1F2A24048;
  v8 = *(this + 1771);
  if (v8)
  {
    *(this + 1772) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1768);
  if (v9)
  {
    *(this + 1769) = v9;
    operator delete(v9);
  }

  ecs2::group_storage<geo::handle<md::DeviceDataResource>,md::Counter,md::DeviceDataStorage>::~group_storage(this + 1748);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 13936);
  *(this + 1716) = &unk_1F2A23FE8;
  v10 = *(this + 1739);
  if (v10)
  {
    *(this + 1740) = v10;
    operator delete(v10);
  }

  v11 = *(this + 1736);
  if (v11)
  {
    *(this + 1737) = v11;
    operator delete(v11);
  }

  ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::~group_storage(this + 1716);
  *(this + 1690) = &unk_1F2A23F88;
  v12 = *(this + 1713);
  if (v12)
  {
    *(this + 1714) = v12;
    operator delete(v12);
  }

  v13 = *(this + 1710);
  if (v13)
  {
    *(this + 1711) = v13;
    operator delete(v13);
  }

  ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::~group_storage(this + 1690);
  *(this + 1664) = &unk_1F2A23F28;
  v14 = *(this + 1687);
  if (v14)
  {
    *(this + 1688) = v14;
    operator delete(v14);
  }

  v15 = *(this + 1684);
  if (v15)
  {
    *(this + 1685) = v15;
    operator delete(v15);
  }

  ecs2::group_storage<geo::handle<md::RenderablesRegistry>,md::Counter,md::RenderablesRegistryStorage>::~group_storage(this + 1664);
  *(this + 1638) = &unk_1F2A23EC8;
  v16 = *(this + 1661);
  if (v16)
  {
    *(this + 1662) = v16;
    operator delete(v16);
  }

  v17 = *(this + 1658);
  if (v17)
  {
    *(this + 1659) = v17;
    operator delete(v17);
  }

  ecs2::group_storage<geo::handle<md::ColorRampData>,md::Counter,md::ColorRampDataStorage>::~group_storage(this + 1638);
  *(this + 1612) = &unk_1F2A23E68;
  v18 = *(this + 1635);
  if (v18)
  {
    *(this + 1636) = v18;
    operator delete(v18);
  }

  v19 = *(this + 1632);
  if (v19)
  {
    *(this + 1633) = v19;
    operator delete(v19);
  }

  ecs2::group_storage<geo::handle<md::RenderableDataItem>,md::Counter,md::RenderableDataStorage>::~group_storage(this + 1612);
  *(this + 1586) = &unk_1F2A23E08;
  v20 = *(this + 1609);
  if (v20)
  {
    *(this + 1610) = v20;
    operator delete(v20);
  }

  v21 = *(this + 1606);
  if (v21)
  {
    *(this + 1607) = v21;
    operator delete(v21);
  }

  ecs2::group_storage<geo::handle<md::TileMatrix>,md::Counter,md::TileMatrixStorage>::~group_storage(this + 1586);
  *(this + 1560) = &unk_1F2A23DA8;
  v22 = *(this + 1583);
  if (v22)
  {
    *(this + 1584) = v22;
    operator delete(v22);
  }

  v23 = *(this + 1580);
  if (v23)
  {
    *(this + 1581) = v23;
    operator delete(v23);
  }

  ecs2::group_storage<geo::handle<md::GlobeMatrix>,md::Counter,md::GlobeMatrixStorage>::~group_storage(this + 1560);
  std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::~__hash_table(this + 12440);
  *(this + 1501) = &unk_1F2A23D08;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 12400);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 12360);
  *(this + 1501) = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(this + 1533);
  *(this + 1501) = &unk_1F2A23D48;
  v24 = *(this + 1530);
  if (v24)
  {
    *(this + 1531) = v24;
    operator delete(v24);
  }

  v25 = *(this + 1527);
  if (v25)
  {
    *(this + 1528) = v25;
    operator delete(v25);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(this + 1501);
  *(this + 1447) = &unk_1F2A23C00;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 11968);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 11928);
  *(this + 1447) = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(this + 1479);
  *(this + 1447) = &unk_1F2A23C40;
  v26 = *(this + 1476);
  if (v26)
  {
    *(this + 1477) = v26;
    operator delete(v26);
  }

  v27 = *(this + 1473);
  if (v27)
  {
    *(this + 1474) = v27;
    operator delete(v27);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(this + 1447);
  *(this + 1393) = &unk_1F2A23AF8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 11536);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 11496);
  *(this + 1393) = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(this + 1425);
  *(this + 1393) = &unk_1F2A23B38;
  v28 = *(this + 1422);
  if (v28)
  {
    *(this + 1423) = v28;
    operator delete(v28);
  }

  v29 = *(this + 1419);
  if (v29)
  {
    *(this + 1420) = v29;
    operator delete(v29);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(this + 1393);
  *(this + 1367) = &unk_1F2A23A30;
  v30 = *(this + 1390);
  if (v30)
  {
    *(this + 1391) = v30;
    operator delete(v30);
  }

  v31 = *(this + 1387);
  if (v31)
  {
    *(this + 1388) = v31;
    operator delete(v31);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(this + 1367);
  *(this + 1313) = &unk_1F2A23970;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 10896);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 10856);
  *(this + 1313) = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(this + 1345);
  *(this + 1313) = &unk_1F2A239B0;
  v32 = *(this + 1342);
  if (v32)
  {
    *(this + 1343) = v32;
    operator delete(v32);
  }

  v33 = *(this + 1339);
  if (v33)
  {
    *(this + 1340) = v33;
    operator delete(v33);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(this + 1313);
  *(this + 1259) = &unk_1F2A23868;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 10464);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 10424);
  *(this + 1259) = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(this + 1291);
  *(this + 1259) = &unk_1F2A238A8;
  v34 = *(this + 1288);
  if (v34)
  {
    *(this + 1289) = v34;
    operator delete(v34);
  }

  v35 = *(this + 1285);
  if (v35)
  {
    *(this + 1286) = v35;
    operator delete(v35);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(this + 1259);
  *(this + 1233) = &unk_1F2A237A0;
  v36 = *(this + 1256);
  if (v36)
  {
    *(this + 1257) = v36;
    operator delete(v36);
  }

  v37 = *(this + 1253);
  if (v37)
  {
    *(this + 1254) = v37;
    operator delete(v37);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(this + 1233);
  *(this + 1197) = &unk_1F2A23700;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100](this + 9832);
  *(this + 1197) = &unk_1F2A23720;
  v38 = *(this + 1226);
  if (v38)
  {
    *(this + 1227) = v38;
    operator delete(v38);
  }

  v39 = *(this + 1223);
  if (v39)
  {
    *(this + 1224) = v39;
    operator delete(v39);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(this + 1197);
  *(this + 1171) = &unk_1F2A23638;
  v40 = *(this + 1194);
  if (v40)
  {
    *(this + 1195) = v40;
    operator delete(v40);
  }

  v41 = *(this + 1191);
  if (v41)
  {
    *(this + 1192) = v41;
    operator delete(v41);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(this + 1171);
  *(this + 1135) = &unk_1F2A23598;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> * ()(void)>::~__value_func[abi:nn200100](this + 9336);
  *(this + 1135) = &unk_1F2A235B8;
  v42 = *(this + 1164);
  if (v42)
  {
    *(this + 1165) = v42;
    operator delete(v42);
  }

  v43 = *(this + 1161);
  if (v43)
  {
    *(this + 1162) = v43;
    operator delete(v43);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(this + 1135);
  *(this + 1099) = &unk_1F2A23490;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100](this + 9048);
  *(this + 1099) = &unk_1F2A234B0;
  v44 = *(this + 1128);
  if (v44)
  {
    *(this + 1129) = v44;
    operator delete(v44);
  }

  v45 = *(this + 1125);
  if (v45)
  {
    *(this + 1126) = v45;
    operator delete(v45);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(this + 1099);
  *(this + 1063) = &unk_1F2A23388;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100](this + 8760);
  *(this + 1063) = &unk_1F2A233A8;
  v46 = *(this + 1092);
  if (v46)
  {
    *(this + 1093) = v46;
    operator delete(v46);
  }

  v47 = *(this + 1089);
  if (v47)
  {
    *(this + 1090) = v47;
    operator delete(v47);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(this + 1063);
  *(this + 1027) = &unk_1F2A23280;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100](this + 8472);
  *(this + 1027) = &unk_1F2A232A0;
  v48 = *(this + 1056);
  if (v48)
  {
    *(this + 1057) = v48;
    operator delete(v48);
  }

  v49 = *(this + 1053);
  if (v49)
  {
    *(this + 1054) = v49;
    operator delete(v49);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(this + 1027);
  *(this + 991) = &unk_1F2A23178;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> * ()(void)>::~__value_func[abi:nn200100](this + 8184);
  *(this + 991) = &unk_1F2A23198;
  v50 = *(this + 1020);
  if (v50)
  {
    *(this + 1021) = v50;
    operator delete(v50);
  }

  v51 = *(this + 1017);
  if (v51)
  {
    *(this + 1018) = v51;
    operator delete(v51);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(this + 991);
  *(this + 955) = &unk_1F2A23070;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100](this + 7896);
  *(this + 955) = &unk_1F2A23090;
  v52 = *(this + 984);
  if (v52)
  {
    *(this + 985) = v52;
    operator delete(v52);
  }

  v53 = *(this + 981);
  if (v53)
  {
    *(this + 982) = v53;
    operator delete(v53);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(this + 955);
  *(this + 929) = &unk_1F2A22FA8;
  v54 = *(this + 952);
  if (v54)
  {
    *(this + 953) = v54;
    operator delete(v54);
  }

  v55 = *(this + 949);
  if (v55)
  {
    *(this + 950) = v55;
    operator delete(v55);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(this + 929);
  *(this + 903) = &unk_1F2A22F28;
  v56 = *(this + 926);
  if (v56)
  {
    *(this + 927) = v56;
    operator delete(v56);
  }

  v57 = *(this + 923);
  if (v57)
  {
    *(this + 924) = v57;
    operator delete(v57);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(this + 903);
  *(this + 877) = &unk_1F2A22EA8;
  v58 = *(this + 900);
  if (v58)
  {
    *(this + 901) = v58;
    operator delete(v58);
  }

  v59 = *(this + 897);
  if (v59)
  {
    *(this + 898) = v59;
    operator delete(v59);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(this + 877);
  *(this + 851) = &unk_1F2A22E28;
  v60 = *(this + 874);
  if (v60)
  {
    *(this + 875) = v60;
    operator delete(v60);
  }

  v61 = *(this + 871);
  if (v61)
  {
    *(this + 872) = v61;
    operator delete(v61);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(this + 851);
  *(this + 825) = &unk_1F2A22DA8;
  v62 = *(this + 848);
  if (v62)
  {
    *(this + 849) = v62;
    operator delete(v62);
  }

  v63 = *(this + 845);
  if (v63)
  {
    *(this + 846) = v63;
    operator delete(v63);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(this + 825);
  *(this + 771) = &unk_1F2A22CE8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 6560);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 6520);
  *(this + 771) = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(this + 803);
  *(this + 771) = &unk_1F2A22D28;
  v64 = *(this + 800);
  if (v64)
  {
    *(this + 801) = v64;
    operator delete(v64);
  }

  v65 = *(this + 797);
  if (v65)
  {
    *(this + 798) = v65;
    operator delete(v65);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(this + 771);
  *(this + 717) = &unk_1F2A22B98;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 6128);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 6088);
  *(this + 717) = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(this + 749);
  *(this + 717) = &unk_1F2A22BD8;
  v66 = *(this + 746);
  if (v66)
  {
    *(this + 747) = v66;
    operator delete(v66);
  }

  v67 = *(this + 743);
  if (v67)
  {
    *(this + 744) = v67;
    operator delete(v67);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(this + 717);
  *(this + 663) = &unk_1F2A22AD8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 5696);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 5656);
  *(this + 663) = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(this + 695);
  *(this + 663) = &unk_1F2A22B18;
  v68 = *(this + 692);
  if (v68)
  {
    *(this + 693) = v68;
    operator delete(v68);
  }

  v69 = *(this + 689);
  if (v69)
  {
    *(this + 690) = v69;
    operator delete(v69);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(this + 663);
  *(this + 609) = &unk_1F2A22988;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 5264);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 5224);
  *(this + 609) = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(this + 641);
  *(this + 609) = &unk_1F2A229C8;
  v70 = *(this + 638);
  if (v70)
  {
    *(this + 639) = v70;
    operator delete(v70);
  }

  v71 = *(this + 635);
  if (v71)
  {
    *(this + 636) = v71;
    operator delete(v71);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(this + 609);
  *(this + 555) = &unk_1F2A228C8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 4832);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 4792);
  *(this + 555) = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(this + 587);
  *(this + 555) = &unk_1F2A22908;
  v72 = *(this + 584);
  if (v72)
  {
    *(this + 585) = v72;
    operator delete(v72);
  }

  v73 = *(this + 581);
  if (v73)
  {
    *(this + 582) = v73;
    operator delete(v73);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(this + 555);
  *(this + 501) = &unk_1F2A22778;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 4400);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 4360);
  *(this + 501) = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(this + 533);
  *(this + 501) = &unk_1F2A227B8;
  v74 = *(this + 530);
  if (v74)
  {
    *(this + 531) = v74;
    operator delete(v74);
  }

  v75 = *(this + 527);
  if (v75)
  {
    *(this + 528) = v75;
    operator delete(v75);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(this + 501);
  *(this + 447) = &unk_1F2A226B8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 3968);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 3928);
  *(this + 447) = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(this + 479);
  *(this + 447) = &unk_1F2A226F8;
  v76 = *(this + 476);
  if (v76)
  {
    *(this + 477) = v76;
    operator delete(v76);
  }

  v77 = *(this + 473);
  if (v77)
  {
    *(this + 474) = v77;
    operator delete(v77);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(this + 447);
  *(this + 393) = &unk_1F2A22568;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 3536);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 3496);
  *(this + 393) = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(this + 425);
  *(this + 393) = &unk_1F2A225A8;
  v78 = *(this + 422);
  if (v78)
  {
    *(this + 423) = v78;
    operator delete(v78);
  }

  v79 = *(this + 419);
  if (v79)
  {
    *(this + 420) = v79;
    operator delete(v79);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(this + 393);
  *(this + 339) = &unk_1F2A224A8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 3104);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 3064);
  *(this + 339) = &unk_1F2A224C8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(this + 371);
  *(this + 339) = &unk_1F2A224E8;
  v80 = *(this + 368);
  if (v80)
  {
    *(this + 369) = v80;
    operator delete(v80);
  }

  v81 = *(this + 365);
  if (v81)
  {
    *(this + 366) = v81;
    operator delete(v81);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(this + 339);
  *(this + 285) = &unk_1F2A22358;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 2672);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 2632);
  *(this + 285) = &unk_1F2A22378;
  md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(this + 317);
  *(this + 285) = &unk_1F2A22398;
  v82 = *(this + 314);
  if (v82)
  {
    *(this + 315) = v82;
    operator delete(v82);
  }

  v83 = *(this + 311);
  if (v83)
  {
    *(this + 312) = v83;
    operator delete(v83);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(this + 285);
  *(this + 231) = &unk_1F2A22298;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 2240);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 2200);
  *(this + 231) = &unk_1F2A222B8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(this + 263);
  *(this + 231) = &unk_1F2A222D8;
  v84 = *(this + 260);
  if (v84)
  {
    *(this + 261) = v84;
    operator delete(v84);
  }

  v85 = *(this + 257);
  if (v85)
  {
    *(this + 258) = v85;
    operator delete(v85);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(this + 231);
  *(this + 177) = &unk_1F2A22148;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 1808);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 1768);
  *(this + 177) = &unk_1F2A22168;
  md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(this + 209);
  *(this + 177) = &unk_1F2A22188;
  v86 = *(this + 206);
  if (v86)
  {
    *(this + 207) = v86;
    operator delete(v86);
  }

  v87 = *(this + 203);
  if (v87)
  {
    *(this + 204) = v87;
    operator delete(v87);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(this + 177);
  *(this + 123) = &unk_1F2A22088;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 1376);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 1336);
  *(this + 123) = &unk_1F2A220A8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(this + 155);
  *(this + 123) = &unk_1F2A220C8;
  v88 = *(this + 152);
  if (v88)
  {
    *(this + 153) = v88;
    operator delete(v88);
  }

  v89 = *(this + 149);
  if (v89)
  {
    *(this + 150) = v89;
    operator delete(v89);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(this + 123);
  *(this + 97) = &unk_1F2A21FC0;
  v90 = *(this + 120);
  if (v90)
  {
    *(this + 121) = v90;
    operator delete(v90);
  }

  v91 = *(this + 117);
  if (v91)
  {
    *(this + 118) = v91;
    operator delete(v91);
  }

  ecs2::group_storage<geo::handle<md::RenderStateItem>,md::Counter,md::RenderStateStorage>::~group_storage(this + 97);
  *(this + 71) = &unk_1F2A21F60;
  v92 = *(this + 94);
  if (v92)
  {
    *(this + 95) = v92;
    operator delete(v92);
  }

  v93 = *(this + 91);
  if (v93)
  {
    *(this + 92) = v93;
    operator delete(v93);
  }

  ecs2::group_storage<geo::handle<md::PipelineStateItem>,md::Counter,md::PipelineStateStorage>::~group_storage(this + 71);
  *(this + 35) = &unk_1F2A21EE0;
  std::__function::__value_func<ggl::PipelineSetup * ()(void)>::~__value_func[abi:nn200100](this + 536);
  *(this + 35) = &unk_1F2A21F00;
  v94 = *(this + 64);
  if (v94)
  {
    *(this + 65) = v94;
    operator delete(v94);
  }

  v95 = *(this + 61);
  if (v95)
  {
    *(this + 62) = v95;
    operator delete(v95);
  }

  ecs2::group_storage<geo::handle<md::PipelineItem>,md::Counter,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~group_storage(this + 35);
  geo::Pool<ggl::RenderItem>::~Pool(this + 232);
  for (i = 152; i != 32; i -= 40)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + i);
  }

  v97 = *(this + 8);
  *(this + 8) = 0;
  if (v97)
  {
    MEMORY[0x1B8C62190](v97, 0x1000C4049ECCB0CLL);
  }
}

void *ecs2::group_storage<geo::handle<md::DeviceDataResource>,md::Counter,md::DeviceDataStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A24068;
    ;
  }

  v3 = a1[13];
  v4 = a1[14];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[16];
  if (v5)
  {
    a1[17] = v5;
    operator delete(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    a1[14] = v6;
    operator delete(v6);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::DeviceDataResource>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A24008;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__destroy_at[abi:nn200100]<md::AssociationItemStorage,0>((*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 56 * (v4 & 0x3F)));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[13];
  v6 = a1[14];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[16];
  if (v7)
  {
    a1[17] = v7;
    operator delete(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    a1[14] = v8;
    operator delete(v8);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23FA8;
    ;
  }

  v3 = a1[13];
  v4 = a1[14];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[16];
  if (v5)
  {
    a1[17] = v5;
    operator delete(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    a1[14] = v6;
    operator delete(v6);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::BaseMapTileDataRenderableItem>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::RenderablesRegistry>,md::Counter,md::RenderablesRegistryStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23F48;
    ;
  }

  v3 = a1[13];
  v4 = a1[14];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[16];
  if (v5)
  {
    a1[17] = v5;
    operator delete(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    a1[14] = v6;
    operator delete(v6);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::RenderablesRegistry>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ColorRampData>,md::Counter,md::ColorRampDataStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23EE8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (*(v5 + 88 * (v4 & 0x3F) + 80) == 1)
      {
        v6 = v5 + 88 * (v4 & 0x3F);
        for (i = 72; i != 40; i -= 16)
        {
          v8 = *(v6 + i);
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
          }
        }

        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v9 = a1[13];
  v10 = a1[14];
  while (v9 != v10)
  {
    if (*v9)
    {
      operator delete(*v9);
    }

    ++v9;
  }

  v11 = a1[16];
  if (v11)
  {
    a1[17] = v11;
    operator delete(v11);
  }

  v12 = a1[13];
  if (v12)
  {
    a1[14] = v12;
    operator delete(v12);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ColorRampData>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::RenderableDataItem>,md::Counter,md::RenderableDataStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23E88;
    ;
  }

  v3 = a1[13];
  v4 = a1[14];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[16];
  if (v5)
  {
    a1[17] = v5;
    operator delete(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    a1[14] = v6;
    operator delete(v6);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::RenderableDataItem>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::TileMatrix>,md::Counter,md::TileMatrixStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23E28;
    ;
  }

  v3 = a1[13];
  v4 = a1[14];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[16];
  if (v5)
  {
    a1[17] = v5;
    operator delete(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    a1[14] = v6;
    operator delete(v6);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::TileMatrix>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::GlobeMatrix>,md::Counter,md::GlobeMatrixStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23DC8;
    ;
  }

  v3 = a1[13];
  v4 = a1[14];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[16];
  if (v5)
  {
    a1[17] = v5;
    operator delete(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    a1[14] = v6;
    operator delete(v6);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::GlobeMatrix>,64ul>::~sparse_set(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23D68;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23C60;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23B58;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23A50;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[13];
  v7 = a1[14];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[16];
  if (v8)
  {
    a1[17] = v8;
    operator delete(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[14] = v9;
    operator delete(v9);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A239D0;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A238C8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A237C0;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[13];
  v7 = a1[14];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[16];
  if (v8)
  {
    a1[17] = v8;
    operator delete(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[14] = v9;
    operator delete(v9);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23740;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    v6 = 0;
    do
    {
      v7 = *(a1[19] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v8 = *(v7 + 8 * (v6 & 0x3F));
      *(v7 + 8 * (v6 & 0x3F)) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v6;
    }

    while (v6 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 19));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 13));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A23658;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[13];
  v7 = a1[14];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[16];
  if (v8)
  {
    a1[17] = v8;
    operator delete(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[14] = v9;
    operator delete(v9);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A235D8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    v6 = 0;
    do
    {
      v7 = *(a1[19] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v8 = *(v7 + 8 * (v6 & 0x3F));
      *(v7 + 8 * (v6 & 0x3F)) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v6;
    }

    while (v6 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 19));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 13));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A234D0;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    v6 = 0;
    do
    {
      v7 = *(a1[19] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v8 = *(v7 + 8 * (v6 & 0x3F));
      *(v7 + 8 * (v6 & 0x3F)) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v6;
    }

    while (v6 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 19));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 13));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A233C8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    v6 = 0;
    do
    {
      v7 = *(a1[19] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v8 = *(v7 + 8 * (v6 & 0x3F));
      *(v7 + 8 * (v6 & 0x3F)) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v6;
    }

    while (v6 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 19));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 13));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A232C0;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    v6 = 0;
    do
    {
      v7 = *(a1[19] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v8 = *(v7 + 8 * (v6 & 0x3F));
      *(v7 + 8 * (v6 & 0x3F)) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v6;
    }

    while (v6 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 19));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 13));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A231B8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    v6 = 0;
    do
    {
      v7 = *(a1[19] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v8 = *(v7 + 8 * (v6 & 0x3F));
      *(v7 + 8 * (v6 & 0x3F)) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v6;
    }

    while (v6 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 19));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 13));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A230B0;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    v6 = 0;
    do
    {
      v7 = *(a1[19] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v8 = *(v7 + 8 * (v6 & 0x3F));
      *(v7 + 8 * (v6 & 0x3F)) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v6;
    }

    while (v6 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 19));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 13));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22FC8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[13];
  v7 = a1[14];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[16];
  if (v8)
  {
    a1[17] = v8;
    operator delete(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[14] = v9;
    operator delete(v9);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22F48;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[13];
  v7 = a1[14];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[16];
  if (v8)
  {
    a1[17] = v8;
    operator delete(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[14] = v9;
    operator delete(v9);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22EC8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[13];
  v7 = a1[14];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[16];
  if (v8)
  {
    a1[17] = v8;
    operator delete(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[14] = v9;
    operator delete(v9);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22E48;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[13];
  v7 = a1[14];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[16];
  if (v8)
  {
    a1[17] = v8;
    operator delete(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[14] = v9;
    operator delete(v9);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22DC8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[13];
  v7 = a1[14];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[16];
  if (v8)
  {
    a1[17] = v8;
    operator delete(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[14] = v9;
    operator delete(v9);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,64ul>::~sparse_set(a1);
}