uint64_t md::mun::PointView::hasViewRequest(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a5 == a6)
  {
    return 0;
  }

  while (*a5 != a1 || *(a5 + 8) != a3 || *(a5 + 9) != a4 || *(a5 + 10) != a2)
  {
    a5 += 24;
    if (a5 == a6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t md::mun::PointView::PointView(uint64_t a1, uint64_t a2, char **a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v6;
  v7 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v7;
  *(a1 + 44) = *(a2 + 44);
  v8 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v8;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = a1 + 120;
  *(a1 + 112) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a1 + 88), *(a2 + 88), *(a2 + 96));
  v9 = *(a2 + 1848);
  *(a1 + 1853) = *(a2 + 1853);
  *(a1 + 1848) = v9;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1912) = a1 + 1944;
  *(a1 + 1920) = a1 + 1944;
  *(a1 + 1928) = a1 + 1944;
  *(a1 + 1936) = 6;
  geo::small_vector_base<md::mun::PointView::CameraLod>::append<md::mun::PointView::CameraLod const*>((a1 + 1912), *a3, a3[1]);
  return a1;
}

void md::mun::PointView::addOptionalView(md::mun::PointView *this, unsigned __int8 a2, int a3)
{
  v3 = a3;
  v6 = *this;
  v7 = *(this + 1859);
  v8 = *(this + 236);
  v9 = *(this + 237);
  if ((md::mun::PointView::hasViewRequest(*this, v7, a2, a3, v8, v9) & 1) == 0)
  {
    v10 = *(this + 238);
    if (v9 >= v10)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 3);
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
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(v15);
      }

      v16 = 24 * v12;
      *v16 = v6;
      *(v16 + 8) = a2;
      *(v16 + 9) = v3;
      *(v16 + 10) = v7;
      *(v16 + 16) = 0;
      v11 = 24 * v12 + 24;
      v17 = *(this + 236);
      v18 = *(this + 237) - v17;
      v19 = (24 * v12 - v18);
      memcpy(v19, v17, v18);
      v20 = *(this + 236);
      *(this + 236) = v19;
      *(this + 237) = v11;
      *(this + 238) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v9 = v6;
      *(v9 + 8) = a2;
      *(v9 + 9) = v3;
      *(v9 + 10) = v7;
      v11 = v9 + 24;
      *(v9 + 16) = 0;
    }

    *(this + 237) = v11;
  }
}

void md::mun::PointView::addRequiredView(md::mun::PointView *this, unsigned __int8 a2, int a3)
{
  v3 = a3;
  v6 = *this;
  v7 = *(this + 1859);
  v8 = *(this + 233);
  v9 = *(this + 234);
  if ((md::mun::PointView::hasViewRequest(*this, v7, a2, a3, v8, v9) & 1) == 0)
  {
    v10 = *(this + 235);
    if (v9 >= v10)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 3);
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
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(v15);
      }

      v16 = 24 * v12;
      *v16 = v6;
      *(v16 + 8) = a2;
      *(v16 + 9) = v3;
      *(v16 + 10) = v7;
      *(v16 + 16) = 0;
      v11 = 24 * v12 + 24;
      v17 = *(this + 233);
      v18 = *(this + 234) - v17;
      v19 = (24 * v12 - v18);
      memcpy(v19, v17, v18);
      v20 = *(this + 233);
      *(this + 233) = v19;
      *(this + 234) = v11;
      *(this + 235) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v9 = v6;
      *(v9 + 8) = a2;
      *(v9 + 9) = v3;
      *(v9 + 10) = v7;
      v11 = v9 + 24;
      *(v9 + 16) = 0;
    }

    *(this + 234) = v11;
  }
}

void md::Logic<md::NonTiledAssetLogic,md::NonTiledAssetContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

_BYTE *md::Logic<md::NonTiledAssetLogic,md::NonTiledAssetContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x932EE29454ABDC4ELL && *(a3 + 32))
  {
    *&v7[2] = v4;
    v8 = v5;
    return (*(*a1 + 160))(a1, a2, v7);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t gdc::ObjectHolder<md::NonTiledAssetContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::NonTiledAssetContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::NonTiledAssetContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::NonTiledAssetContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A4E6F8;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(v2 + 80);
    std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C40ED4D4612);
  }

  return a1;
}

void md::NonTiledAssetLogic::~NonTiledAssetLogic(md::NonTiledAssetLogic *this)
{
  md::NonTiledAssetLogic::~NonTiledAssetLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4E620;
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(this + 200);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(this + 160);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(this + 120);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::preparePolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = md::LayoutContext::get<md::SharedResourcesContext>(a2);
  v7 = md::LayoutContext::get<md::CameraContext>(a2);
  v8 = *v6;
  v9 = v8;
  if (v8)
  {
    [v8 textureManager];
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v32[0] = &unk_1F2A4E7B8;
  v33 = v32;
  v25 = v27;
  v26 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11)
  {
    v12 = fmaxf(*(v7 + 3080) + *(v7 + 3076), 1.0);
    while (1)
    {
      v13 = *v10;
      if (!v33 || std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::operator()(v33, *v10))
      {
        break;
      }

LABEL_17:
      if (++v10 == v11)
      {
        goto LABEL_18;
      }
    }

    v14 = *(v13 + 392);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v29, *(v13 + 224), 0);
    v15 = v30[1];
    v31[0] = *v30;
    v31[1] = v15;
    v16 = v30[3];
    v31[2] = v30[2];
    v31[3] = v16;
    ggl::BufferMemory::~BufferMemory(v29);
    v17 = ggl::CullingGrid::intersectedCellsForView(v31, 0.0);
    v18 = (*(*v14 + 48))(v14);
    v19 = *v18;
    v20 = v18[1];
    while (1)
    {
      if (v19 == v20)
      {
        goto LABEL_17;
      }

      v21 = *(v19 + 8);
      if (((*(*a3 + 56))(a3, v13, v21, v17) & 1) == 0)
      {
        v22 = *(v19 + 8);
        v23 = (*(*a3 + 64))(a3, v22, 1);

        if (!v23)
        {
          goto LABEL_16;
        }

        v21 = *(v19 + 8);
        *&v24 = v12;
        [v21 updateTexturesIfNecessary:&v25 textureManager:v24];
      }

LABEL_16:
      v19 += 24;
    }
  }

LABEL_18:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v32);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }
}

void md::layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, char a6)
{
  v106[4] = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 104);
  v87 = 0;
  v86 = 0u;
  v85 = 0u;
  v67 = v11;
  v93 = off_1F2A4E798;
  v94 = 0;
  v95 = a6;
  [v11 size];
  v97[0] = v12;
  v97[1] = v13;
  md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
  v88 = v14;
  v98 = [v11 multiSample];
  v15 = *(a3 + 24);
  v16 = *(v15 + 8);
  v17 = md::FrameGraph::renderQueueForPass(v16, a5[40]);
  if (v17)
  {
    v18 = *(*(v17 + 16) + 8 * a5[41]);
  }

  else
  {
    v18 = 0;
  }

  v77[0] = v18;
  v19 = md::FrameGraph::renderQueueForPass(v16, a5[42]);
  if (v19)
  {
    v20 = *(*(v19 + 16) + 8 * a5[43]);
  }

  else
  {
    v20 = 0;
  }

  v77[1] = v20;
  v21 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[44]);
  if (v21)
  {
    v22 = *(*(v21 + 16) + 8 * a5[45]);
  }

  else
  {
    v22 = 0;
  }

  v77[2] = v22;
  if (a5[48] == 1 && (v23 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[46])) != 0)
  {
    v73 = *(*(v23 + 16) + 8 * a5[47]);
  }

  else
  {
    v73 = 0;
  }

  if (a5[51] == 1 && (v24 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[49])) != 0)
  {
    v72 = *(*(v24 + 16) + 8 * a5[50]);
  }

  else
  {
    v72 = 0;
  }

  v82[0] = &unk_1F2A4E890;
  v83 = v82;
  v106[0] = &unk_1F2A4E800;
  v106[3] = v106;
  v105[0] = &unk_1F2A4E800;
  v105[3] = v105;
  v70 = *(a5 + 3);
  v71 = *(a5 + 2);
  if (v70 != v71)
  {
    std::vector<gdc::Entity>::vector[abi:nn200100](&__p, a5 + 2);
    v25 = v80 - __p;
    if (v80 != __p)
    {
      if (!((v25 >> 3) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v25 >> 3);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    *(&v102 + 1) = 0;
    operator new();
  }

  v26 = *(a2 + 8);
  v68 = md::LayoutContext::get<md::CameraContext>(v26);
  v74 = md::LayoutContext::get<md::SharedResourcesContext>(v26);
  v75 = gdc::Context::get<md::StyleLogicContext>(v26);
  v27 = *(*v75 + 520);
  v28 = *(*v75 + 528);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    if (!v27)
    {
      goto LABEL_58;
    }

    v27 = *(*v75 + 520);
    v29 = *(*v75 + 528);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *(v27 + 272);
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
      goto LABEL_26;
    }
  }

  else if (!v27)
  {
    goto LABEL_58;
  }

  v30 = *(v27 + 272);
LABEL_26:
  v31 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v101, *(a4 + 952));
  **(&v103 + 1) = v30;
  ggl::BufferMemory::~BufferMemory(v31);
  v32 = *a1;
  v69 = a1[1];
  if (*a1 != v69)
  {
    while (1)
    {
      v33 = *v32;
      if (!v83 || (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::operator()(v83, *v32) & 1) != 0)
      {
        break;
      }

LABEL_57:
      if (++v32 == v69)
      {
        goto LABEL_58;
      }
    }

    v84 = v33;
    v34 = *(v33 + 392);
    v35 = *(v34 + 752);
    if (v35)
    {
      if (v35 < 0x201)
      {
        v36 = 0;
        i = 512;
      }

      else
      {
        v36 = 0;
        for (i = 512; i < v35; i *= 2)
        {
          ++v36;
        }
      }

      v38 = *(v34 + 752);
      if (i > v35)
      {
        do
        {
          --v36;
          v39 = i <= 2 * v38;
          v38 *= 2;
        }

        while (!v39);
      }
    }

    else
    {
      v36 = 0;
    }

    v40 = *(v34 + 169);
    v41 = exp2((ceilf(v88) - (v36 + v40))) * (v35 >> 7);
    v42 = fmaxf(*(v68 + 3080) + *(v68 + 3076), 1.0);
    v91 = v41;
    v89 = v42;
    v92 = *(v68 + 3768) / (*(v68 + 1368) * (*(v33 + 80) - *(v33 + 64)));
    v44 = *(v33 + 224);
    v43 = *(v33 + 232);
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(&v85 + 1);
    *&v85 = v44;
    *(&v85 + 1) = v43;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    v47 = *(v33 + 240);
    v46 = *(v33 + 248);
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    v48 = *(&v86 + 1);
    *&v86 = v47;
    *(&v86 + 1) = v46;
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&__p, v85, 0);
    v101 = *v81;
    v102 = v81[1];
    v103 = v81[2];
    v104 = v81[3];
    ggl::BufferMemory::~BufferMemory(&__p);
    v96 = ggl::CullingGrid::intersectedCellsForView(&v101, 0.0);
    v90 = v40;
    v49 = (*(*v34 + 48))(v34);
    v50 = *v49;
    v51 = v49[1];
    while (1)
    {
      if (v50 == v51)
      {
        goto LABEL_57;
      }

      v52 = v94;
      v53 = (*(*a5 + 40))(a5, v52);

      if (v53)
      {
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v78, v85, 0);
        v54 = v84;
        v55 = v78[5];
        v56 = *(v50 + 8);
        (*(*a5 + 48))(&__p, a5, &v86, v55, v54 + 96, v56, v97, v88);

        ggl::BufferMemory::~BufferMemory(v78);
        v96 = ggl::CullingGrid::intersectedCellsForView(&__p, 0.0);
      }

      v57 = *(v50 + 8);
      if ((*(*a5 + 56))(a5, v33, v57, v96))
      {
        goto LABEL_55;
      }

      v58 = *(v50 + 8);
      v59 = (*(*a5 + 64))(a5, v58, 0);

      if (v59)
      {
        v60 = *(v50 + 8);
        v61 = (*(*a5 + 72))(a5, v60);

        geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&v93, *(v50 + 8));
        v62 = *v74;
        v63 = *(a2 + 16);
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v100, v106);
        HIBYTE(v65) = v61;
        LOBYTE(v65) = 0;
        md::_layoutPolygonGroup<md::PolygonTileData>(v62, v63, v75, a4, v77, v73, v72, a5, &v84, v65, v100);
        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v100);

        if (v70 != v71)
        {
          break;
        }
      }

LABEL_56:
      v50 += 24;
    }

    v57 = *v74;
    v64 = *(a2 + 16);
    std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v99, v105);
    HIBYTE(v66) = v61;
    LOBYTE(v66) = 1;
    md::_layoutPolygonGroup<md::PolygonTileData>(v57, v64, v75, a4, v77, v73, v72, a5, &v84, v66, v99);
    std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v99);
LABEL_55:

    goto LABEL_56;
  }

LABEL_58:
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v105);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v106);
  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v82);
  v93 = off_1F2A4E798;

  if (*(&v86 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v86 + 1));
  }

  if (*(&v85 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v85 + 1));
  }
}

void sub_1B3292E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  operator delete(v58);
  if (v57)
  {
    operator delete(v57);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v59 - 184);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v59 - 152);
  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](&a43);
  a56 = a14;

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a51);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a49);
  }

  _Unwind_Resume(a1);
}

void md::_layoutPolygonGroup<md::PolygonTileData>(void *a1, void **a2, uint64_t a3, uint64_t a4, ggl::CommandBuffer *a5, ggl::zone_mallocator *a6, uint64_t a7, _BYTE *a8, uint64_t a9, __int16 a10, uint64_t a11)
{
  v375 = *MEMORY[0x1E69E9840];
  v348 = 0;
  v332 = 0u;
  v333 = 0u;
  v334 = 0u;
  v328 = 0;
  v330 = 0;
  v324 = 0;
  v326 = 0;
  v17 = a1;
  v18 = *(*a3 + 520);
  v19 = *(*a3 + 528);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = *(v18 + 272);
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  else
  {
    v20 = *(v18 + 272);
  }

  [v17 textureManager];
  v336 = **v358;
  if (*&v358[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[8]);
  }

  v322 = a8;
  v323 = a4;
  v318 = a7;
  v337 = *([v17 alphaAtlas] + 24);
  v21 = *(a9 + 80);
  *v358 = a10;
  v346 = [v21 styleQueries:v358];

  if (!v346)
  {
    goto LABEL_67;
  }

  if (v346[1] == *v346)
  {
    goto LABEL_67;
  }

  v345 = 0;
  v342 = 0;
  *v340 = 0;
  v341 = 0;
  v338 = 0;
  v349 = 0;
  v344 = (*(*a8 + 96))(a8);
  v22 = *v346;
  if (v346[1] == *v346)
  {
    goto LABEL_67;
  }

  v316 = a2;
  v320 = a5;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = v20;
  do
  {
    v28 = *&v22[2 * v23];
    v29 = v22[2 * v23 + 1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v358, v28, v29);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    if (v358[32])
    {
      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v358 + 24), 0x8Au, 1u))
      {
        gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(138, 2, *(*v358 + 24));
      }

      v26 |= md::_polygonIsVisibleWithQueryLocker(v358, *(a9 + 48));
      if (v26)
      {
        if (*(a9 + 48) >= 0x17)
        {
          v30 = 23;
        }

        else
        {
          v30 = *(a9 + 48);
        }

        v31 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v358 + 24), 420, v30, 2, 0) == 0;
      }

      else
      {
        v31 = 0;
      }

      v347 = v31;
      if ((v24 & 1) == 0)
      {
        if (*(a9 + 48) >= 0x17)
        {
          v32 = 23;
        }

        else
        {
          v32 = *(a9 + 48);
        }

        LODWORD(v342) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v358 + 24), 104, v32, 2, 0);
      }

      if ((v24 & 1) == 0)
      {
        if (*(a9 + 48) >= 0x17)
        {
          v33 = 23;
        }

        else
        {
          v33 = *(a9 + 48);
        }

        v345 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v358 + 24), 319, v33, 2, 0);
      }

      if (gss::FeatureAttributeSet::getValueForAttributeKey(*((*v346)[2 * v23] + 240), *((*v346)[2 * v23] + 248), 187, v353))
      {
        v349 = 1;
      }

      if (v358[32])
      {
        (*(**v358 + 56))(*v358);
      }

      v24 = 1;
    }

    if (*&v358[24])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[24]);
    }

    if (*&v358[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[8]);
    }

    v23 = ++v25;
    v22 = *v346;
  }

  while (v25 < ((v346[1] - *v346) >> 4));
  v34 = v320;
  if ((v26 & 1) == 0)
  {
LABEL_67:
  }

  else
  {
    v35 = *v22;
    v36 = v22[1];
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v358, v35, v36);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v36);
    }

    LOBYTE(v373[0]) = 0;
    v37 = v322;
    if (v358[32] == 1)
    {
      hasValueForKey = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v358 + 24), 0x8Au, 1u);
      if (hasValueForKey)
      {
        LOBYTE(hasValueForKey) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(138, 2, *(*v358 + 24));
      }

      v340[0] = (*(*v322 + 24))(v322, hasValueForKey, v373);
      v39 = *(*v358 + 24);
      v40 = fminf(fmaxf(*(a9 + 48), 0.0), 23.0);
      v41 = *v39;
      if (*v39 && (v42 = *v41, LODWORD(v41) = *v41 == 1.0, *(v39 + 10) == 1) && (v42 != 0.0 ? (v43 = v42 == 1.0) : (v43 = 1), !v43) || (v44 = *(v39 + v41 + 11), v42 = 0.0, v44 == 2))
      {
        v353[0] = 1;
        LOBYTE(v367) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 329, 0, v353, v40);
        v312 = v27;
        v314 = v313;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 329, 1, &v367, v40);
        v46 = v314 + ((v315 - v314) * v42);
        v27 = v312;
      }

      else
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v358 + 24), 329, v44, 0, v40);
        v46 = v45;
      }

      v47 = *(a9 + 64);
      v48 = v47 * (*(*v322 + 80))(v322) * v46;
      *(&v342 + 1) = v48;
      v49 = *(*v358 + 24);
      v50 = *v49;
      if (*v49)
      {
        LOBYTE(v50) = *(v49 + 9);
      }

      v338 = v50 & (v27 > 0.0);
      if (*(a9 + 48) >= 0x17)
      {
        v51 = 23;
      }

      else
      {
        v51 = *(a9 + 48);
      }

      v348 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v49, 420, v51, 2, 0);
      v52 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(*v316, v316[1]);
      v53 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 0, *(*v358 + 24));
      v54 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 1u, *(*v358 + 24));
      if (v53)
      {
        md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v353, v52, v358, 0, *(a9 + 48));
      }

      else
      {
        md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v353, v52, v358, *(a9 + 48), 0);
      }

      v329 = *v353;
      v55 = *(a9 + 48);
      v56 = v55;
      v57 = *(*v358 + 24);
      if (gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(v57, 0x14Cu, v55))
      {
        if (v53)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v353, v57, 332, 0, fminf(fmaxf(v55, 0.0), 23.0));
        }

        else
        {
          if (v56 >= 0x17)
          {
            v58 = 23;
          }

          else
          {
            v58 = v55;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v353, v57, 332, v58, 0, 0);
        }

        v34 = v320;
        v37 = v322;
        v331 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v353)), vdupq_n_s32(0x37800080u));
        v55 = *(a9 + 48);
        v57 = *(*v358 + 24);
        v56 = v55;
      }

      else
      {
        v331 = v329;
        v34 = v320;
        v37 = v322;
      }

      if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v57, 0x5Cu, v56))
      {
        if (v54)
        {
          md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v353, v52, v358, 1u, v55);
        }

        else
        {
          md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v353, v52, v358, v56, 1u);
        }

        v325 = *v353;
      }

      else
      {
        v325 = v329;
      }

      v59 = *(a9 + 48);
      v60 = *(*v358 + 24);
      if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v60, 0x14Cu, v59))
      {
        if (v54)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v353, v60, 332, 1u, fminf(fmaxf(v59, 0.0), 23.0));
        }

        else
        {
          if (v59 >= 0x17)
          {
            v62 = 23;
          }

          else
          {
            v62 = v59;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v353, v60, 332, v62, 1u, 0);
        }

        v61 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v353)), vdupq_n_s32(0x37800080u));
      }

      else
      {
        v61 = v325;
      }

      v327 = v61;
    }

    else
    {
      v329 = 0uLL;
      v331 = 0uLL;
      v325 = 0uLL;
      v327 = 0uLL;
    }

    v340[1] = *(a9 + 52) + LOBYTE(v373[0]);
    v341 = v37[10] + LOBYTE(v373[0]);
    if (v358[32] == 1)
    {
      (*(**v358 + 56))(*v358);
    }

    if (*&v358[24])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[24]);
    }

    if (*&v358[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[8]);
    }

    v63 = *(a9 + 80);
    v64 = [v63 sourceTexture];
    if (v64)
    {
      v65 = v64;
    }

    else
    {
      v65 = v336;
    }

    v328 = v65;

    v66 = *(a9 + 80);
    v67 = [v66 targetTexture];
    if (v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = v336;
    }

    v324 = v68;

    v69 = *(a9 + 80);
    v70 = [v69 sourceRoofTexture];
    if (v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = v65;
    }

    v330 = v71;

    v72 = *(a9 + 80);
    v73 = [v72 targetRoofTexture];
    if (v73)
    {
      v74 = v73;
    }

    else
    {
      v74 = v68;
    }

    v326 = v74;

    v343 = 1065353216;
    v75 = v329.f32[3] >= 1.0 && (v338 != 1 || v325.f32[3] >= 1.0);
    v339 = v75;
    v76 = *(a9 + 80);
    md::PolygonRenderResources::worldTransformForPolygonGroup(v358, v76, *(a9 + 44));
    v335[0] = *v358;
    v335[1] = *&v358[16];
    v335[2] = *&v358[32];
    v335[3] = *&v358[48];

    v77 = *(a9 + 80);
    v78 = (*(*v322 + 40))(v322, v77);

    v79 = md::PolygonViewConstantsFrameCache::pop((a4 + 240));
    v81 = *v79;
    v80 = v79[1];
    if (v80)
    {
      atomic_fetch_add_explicit((v80 + 8), 1uLL, memory_order_relaxed);
    }

    v82 = *(&v332 + 1);
    *&v332 = v81;
    *(&v332 + 1) = v80;
    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v82);
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v373, *(a9 + 8), 0);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v353, v332, 1);
    v83 = v374;
    v84 = *&v353[40];
    *(*&v353[40] + 64) = *(v374 + 64);
    if (v78)
    {
      v85 = *a9;
      v86 = *(a9 + 80);
      (*(*v322 + 48))(v358, v322, a9 + 24, v83, v85 + 96, v86, a9 + 104, *(a9 + 44));
      v87 = 0;
      v88 = *&v353[40];
      do
      {
        *(v88 + v87) = *&v358[v87];
        v87 += 4;
      }

      while (v87 != 64);
    }

    else
    {
      for (i = 0; i != 64; i += 4)
      {
        *(v84 + i) = *(v83 + i);
      }
    }

    ggl::BufferMemory::~BufferMemory(v353);
    v91 = *(a9 + 24);
    v90 = *(a9 + 32);
    if (v90)
    {
      atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
    }

    v92 = *(&v334 + 1);
    *&v334 = v91;
    *(&v334 + 1) = v90;
    if (v92)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v92);
    }

    if (*(&v342 + 1) > 0.00000011921)
    {
      v93 = md::PolygonViewConstantsFrameCache::pop((a4 + 240));
      v94 = *v93;
      v95 = v93[1];
      if (v95)
      {
        atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
      }

      v96 = v65;
      v97 = *(&v333 + 1);
      *&v333 = v94;
      *(&v333 + 1) = v95;
      if (v97)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v97);
        v94 = v333;
      }

      ggl::DataAccess<ggl::Tile::View>::DataAccess(v350, v94, 1);
      v98 = v374;
      v99 = v351;
      *(v351 + 64) = *(v374 + 64);
      if (v78)
      {
        v100 = *(a9 + 80);
        (*(*v322 + 48))(v353, *(a9 + 44));
        memset(v369, 0, sizeof(v369));
        v368 = 0u;
        v367 = 1065353216;
        v369[0] = 1065353216;
        v372 = 1065353216;
        v370 = 0;
        v369[5] = 1065353216;
        v371 = HIDWORD(v342);
        gm::operator*<float,4,4,4>(v358, v353, &v367);
        v101 = 0;
        v102 = v351;
        v34 = v320;
        v65 = v96;
        do
        {
          *(v102 + v101) = *&v358[v101];
          v101 += 16;
        }

        while (v101 != 64);
      }

      else
      {
        memset(&v353[20], 0, 36);
        *&v353[4] = 0u;
        *v353 = 1065353216;
        *&v353[20] = 1065353216;
        *&v353[40] = 1065353216;
        *&v354 = HIDWORD(v342) | 0x3F80000000000000;
        gm::operator*<float,4,4,4>(v358, v98, v353);
        for (j = 0; j != 64; j += 16)
        {
          *(v99 + j) = *&v358[j];
        }

        v34 = v320;
        v65 = v96;
      }

      ggl::BufferMemory::~BufferMemory(v350);
    }

    ggl::BufferMemory::~BufferMemory(v373);

    v104 = v65;
    v105 = v322;
    v321 = md::_commandBufferForConfiguration(v322, &v332, v34, *(a9 + 96));
    if (v321)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v366, a11);
      v106 = *(a9 + 96);
      v107 = v322[8];
      v108 = (*(*v322 + 88))(v322, *(a9 + 80));
      if (v107)
      {
        v109 = 0;
      }

      else
      {
        v109 = v106;
      }

      if ((v108 & 0x100) != 0)
      {
        v110 = v108;
      }

      else
      {
        v110 = v109;
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v367, v366);
      LOBYTE(v350[0]) = 0;
      a4 = v323;
      if (v338 == 1)
      {
        v111 = md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(v323, a9, &v332, &v328, &v324, v350);
      }

      else
      {
        v111 = md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(*(v323 + 176), a9, &v332, &v328, v350);
      }

      v112 = v111;
      *v353 = a9;
      *&v353[8] = v323;
      *&v353[16] = &v367;
      *&v353[24] = v321;
      if (v111)
      {
        v113 = v340[1];
        v114 = LOBYTE(v350[0]);
        if (LOBYTE(v350[0]) == 1)
        {
          if (v340[0] == 1)
          {
            v115 = md::PolygonRenderResources::renderStateForBlendingEqual(v323, v340[1], v341);
          }

          else
          {
            v115 = v323 + 1088;
            v113 = v341;
          }
        }

        else
        {
          v115 = *(v323 + 8 * (v322[8] | (2 * v340[0]) | (16 * v110)) + 272);
        }

        v116 = ggl::RenderItem::RenderItem(v358, "");
        *&v358[40] = v113;
        *&v358[24] = v115;
        *&v358[32] = v112;
        v117 = *(*a9 + 392);
        v118 = v117 ? v117 + 168 : 0;
        *&v358[48] = (*(*v322 + 32))(v322, v339, v342, 0, v118, 1, v104 != v336, *v346, v116, 0);
        md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v353, v358);
        if (v114)
        {
          if (v340[0])
          {
            v119 = v340[1];
          }

          else
          {
            v119 = 0;
          }

          v120 = md::PolygonRenderResources::renderStateForBlendingEqual(v323, v341, v119);
          if (v338 == 1)
          {
            v121 = md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(v323, a9, &v332, &v328, &v324, v350);
            v122 = *(v323 + 64);
            v123 = *(v323 + 72);
          }

          else
          {
            v121 = md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(*(v323 + 176), a9, &v332, &v328, v350);
            v122 = *(v323 + 16);
            v123 = *(v323 + 24);
          }

          v373[0] = v122;
          v373[1] = v123;
          if (v123)
          {
            atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v121, v373);
            std::__shared_weak_count::__release_shared[abi:nn200100](v123);
          }

          else
          {
            ggl::PipelineSetup::setState(v121, v373);
          }

          *&v358[40] = v341;
          *&v358[24] = v120;
          *&v358[32] = v121;
          md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v353, v358);
        }
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v367);
      v124 = *v346;
      if (v346[1] != *v346)
      {
        v125 = 0;
        v126 = 0;
        v127 = fminf(fmaxf(*(a9 + 48), 0.0), 23.0);
        while (1)
        {
          v128 = *&v124[2 * v125];
          v129 = v124[2 * v125 + 1];
          if (v129)
          {
            atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v358, v128, v129);
          if (v129)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v129);
          }

          if (v358[32] == 1)
          {
            break;
          }

          v136 = 0;
LABEL_200:
          if (*&v358[24])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[24]);
          }

          if (*&v358[8])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[8]);
          }

          if (v136)
          {
            std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v373, v366);
            v352 = 0;
            a4 = v323;
            if (v338 == 1)
            {
              v140 = md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(v323, a9, &v332, &v328, &v324, &v352);
            }

            else
            {
              v140 = md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(*(v323 + 176), a9, &v332, &v328, &v352);
            }

            v141 = v140;
            *v353 = a9;
            *&v353[8] = v323;
            *&v353[16] = v373;
            *&v353[24] = v321;
            if (v140)
            {
              v142 = v340[1];
              v143 = v352;
              if (v352 == 1)
              {
                if (v340[0] == 1)
                {
                  v144 = md::PolygonRenderResources::renderStateForBlendingEqual(v323, v340[1], v341);
                }

                else
                {
                  v144 = v323 + 1088;
                  v142 = v341;
                }
              }

              else
              {
                v144 = *(v323 + 8 * (v322[8] | (2 * v340[0]) | (16 * v110)) + 272);
              }

              v145 = ggl::RenderItem::RenderItem(v358, "");
              *&v358[40] = v142;
              *&v358[24] = v144;
              *&v358[32] = v141;
              v146 = *(*a9 + 392);
              v147 = v146 ? v146 + 168 : 0;
              *&v358[48] = (*(*v322 + 32))(v322, v339, v342, 0, v147, 2, v328 != v336, *v346, v145, 0);
              md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v353, v358);
              if (v143)
              {
                if (v340[0])
                {
                  v148 = v340[1];
                }

                else
                {
                  v148 = 0;
                }

                v149 = md::PolygonRenderResources::renderStateForBlendingEqual(v323, v341, v148);
                if (v338 == 1)
                {
                  v150 = md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(v323, a9, &v332, &v328, &v324, &v352);
                  v151 = *(v323 + 64);
                  v152 = *(v323 + 72);
                }

                else
                {
                  v150 = md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(*(v323 + 176), a9, &v332, &v328, &v352);
                  v151 = *(v323 + 16);
                  v152 = *(v323 + 24);
                }

                v350[0] = v151;
                v350[1] = v152;
                if (v152)
                {
                  atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
                  ggl::PipelineSetup::setState(v150, v350);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v152);
                }

                else
                {
                  ggl::PipelineSetup::setState(v150, v350);
                }

                *&v358[40] = v341;
                *&v358[24] = v149;
                *&v358[32] = v150;
                md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v353, v358);
              }
            }

            std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v373);
            goto LABEL_233;
          }

          v125 = ++v126;
          v124 = *v346;
          a4 = v323;
          if (v126 >= ((v346[1] - *v346) >> 4))
          {
            goto LABEL_233;
          }
        }

        v130 = *(*v358 + 24);
        v131 = *v130;
        if (!*v130 || (v132 = *v131, LODWORD(v131) = *v131 == 1.0, *(v130 + 10) != 1) || (v132 != 0.0 ? (v133 = v132 == 1.0) : (v133 = 1), v133))
        {
          v134 = *(v130 + v131 + 11);
          if (v134 != 2)
          {
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v358 + 24), 404, v134, 0, v127);
LABEL_198:
            v136 = v135 > 0.0;
            (*(**v358 + 56))(*v358);
            goto LABEL_200;
          }

          v132 = 0.0;
        }

        v353[0] = 1;
        LOBYTE(v373[0]) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v130, 404, 0, v353, v127);
        v138 = v137;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v130, 404, 1, v373, v127);
        v135 = v138 + ((v139 - v138) * v132);
        goto LABEL_198;
      }

LABEL_233:
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v366);
      if (v347)
      {
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v365, a11);
        v153 = *(a9 + 96);
        v154 = v322[8];
        v155 = (*(*v322 + 88))(v322, *(a9 + 80));
        if ((v153 & (v154 == 0)) != 0)
        {
          v156 = 2;
        }

        else
        {
          v156 = 0;
        }

        if ((v155 & 0x100) != 0)
        {
          v156 = v155;
        }

        if (v339)
        {
          v157 = 0;
        }

        else
        {
          v157 = 8;
        }

        v158 = v323 + 272;
        v159 = *(v323 + 272 + 8 * (v157 | (2 * v340[0]) | (16 * v156) | v339));
        if (v338 == 1)
        {
          v160 = md::animatingPolygonFillPipelineSetup<md::PolygonTileData>(v323, a9, &v332, &v332, &v328, &v324, 0);
        }

        else
        {
          v160 = md::polygonFillPipelineSetup<md::PolygonTileData>(v323, a9, &v332, &v332, &v328, 0);
        }

        v161 = v160;
        a4 = v323;
        if (v160)
        {
          v162 = ggl::RenderItem::RenderItem(v353, "");
          v163 = *(*a9 + 392);
          if (v163)
          {
            v164 = v163 + 168;
          }

          else
          {
            v164 = 0;
          }

          v165 = (*(*v322 + 32))(v322, v339, v342, 0, v164, 0, v328 != v336, *v346, v162, 0);
          *&v353[40] = v340[1];
          *&v353[24] = v159;
          *&v353[32] = v161;
          *&v353[48] = v165;
          v166 = [*(a9 + 80) fillMeshes];
          v167 = *v166;
          v168 = *(v166 + 8);
          if (*v166 != v168)
          {
            v169 = 0;
            do
            {
              v170 = *(a9 + 80);
              v171 = *(a9 + 100);
              std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v367, v365);
              v172 = [v170 commitRangesToFillRenderItemBatcher:a4 + 984 forMeshAtIndex:v169 cullingMask:v171 featureIdPredicate:&v367];
              std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v367);

              v173 = *v167;
              *v358 = &off_1F2A5D8B8;
              *&v358[8] = *&v353[8];
              *&v358[24] = *&v353[24];
              *&v358[40] = *&v353[40];
              v361 = v357;
              v360 = v356;
              v359 = v355;
              *&v358[56] = v354;
              v174 = *(a4 + 1072);
              v175 = v174[1];
              if (v175 == *(a4 + 1080))
              {
                v174 = *v174;
                if (!v174)
                {
                  v174 = malloc_type_malloc(120 * v175 + 16, 0x1020040EDED9539uLL);
                  *v174 = 0;
                  v174[1] = 0;
                  **(a4 + 1072) = v174;
                }

                *(a4 + 1072) = v174;
                v175 = v174[1];
              }

              v176 = &v174[15 * v175];
              v174[1] = v175 + 1;
              v176[2] = &off_1F2A5D8B8;
              v177 = *&v358[8];
              v178 = *&v358[24];
              *(v176 + 7) = *&v358[40];
              *(v176 + 5) = v178;
              *(v176 + 3) = v177;
              v179 = *&v358[56];
              v180 = v359;
              v181 = v360;
              *(v176 + 15) = v361;
              *(v176 + 13) = v181;
              *(v176 + 11) = v180;
              *(v176 + 9) = v179;
              ggl::RenderItem::~RenderItem(v358);
              v176[10] = v173;
              v182 = *v172;
              v176[13] = *v172;
              v176[14] = (v172[1] - v182) >> 4;
              ggl::CommandBuffer::pushRenderItem(v321, (v176 + 2));
              ++v169;
              v167 += 2;
              a4 = v323;
            }

            while (v167 != v168);
          }

          v105 = v322;
          v158 = v323 + 272;
        }

        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v365);
        if (*(&v342 + 1) > 0.00000011921)
        {
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v364, a11);
          if (v339)
          {
            v183 = 0;
          }

          else
          {
            v183 = 8;
          }

          v184 = *(v158 + 8 * (((v183 | (2 * v340[0])) | 0xFFFFFFE1) & 0x2BLL));
          if (v338 == 1)
          {
            v185 = md::animatingPolygonFillPipelineSetup<md::PolygonTileData>(a4, a9, &v333, &v332, &v328, &v324, 1);
          }

          else
          {
            v185 = md::polygonFillPipelineSetup<md::PolygonTileData>(a4, a9, &v333, &v332, &v328, 1);
          }

          v186 = v185;
          v187 = ggl::RenderItem::RenderItem(v353, "");
          *&v353[40] = v340[1];
          *&v353[24] = v184;
          *&v353[32] = v186;
          v188 = *(*a9 + 392);
          if (v188)
          {
            v189 = v188 + 168;
          }

          else
          {
            v189 = 0;
          }

          *&v353[48] = (*(*v105 + 32))(v105, v339, v342, 1, v189, 0, v328 != v336, *v346, v187, 0);
          v190 = [*(a9 + 80) fillMeshes];
          v191 = *v190;
          v192 = *(v190 + 8);
          if (*v190 != v192)
          {
            v193 = 0;
            do
            {
              v194 = *(a9 + 80);
              v195 = *(a9 + 100);
              std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v367, v364);
              v196 = [v194 commitRangesToFillRenderItemBatcher:a4 + 984 forMeshAtIndex:v193 cullingMask:v195 featureIdPredicate:&v367];
              std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v367);

              v197 = *v191;
              *v358 = &off_1F2A5D8B8;
              *&v358[8] = *&v353[8];
              *&v358[24] = *&v353[24];
              *&v358[40] = *&v353[40];
              v361 = v357;
              v360 = v356;
              v359 = v355;
              *&v358[56] = v354;
              v198 = *(a4 + 1072);
              v199 = v198[1];
              if (v199 == *(a4 + 1080))
              {
                v198 = *v198;
                if (!v198)
                {
                  v198 = malloc_type_malloc(120 * v199 + 16, 0x1020040EDED9539uLL);
                  *v198 = 0;
                  v198[1] = 0;
                  **(a4 + 1072) = v198;
                }

                *(a4 + 1072) = v198;
                v199 = v198[1];
              }

              v200 = &v198[15 * v199];
              v198[1] = v199 + 1;
              v200[2] = &off_1F2A5D8B8;
              v201 = *&v358[8];
              v202 = *&v358[24];
              *(v200 + 7) = *&v358[40];
              *(v200 + 5) = v202;
              *(v200 + 3) = v201;
              v203 = *&v358[56];
              v204 = v359;
              v205 = v360;
              *(v200 + 15) = v361;
              *(v200 + 13) = v205;
              *(v200 + 11) = v204;
              *(v200 + 9) = v203;
              ggl::RenderItem::~RenderItem(v358);
              v200[10] = v197;
              v206 = *v196;
              v200[13] = *v196;
              v200[14] = (v196[1] - v206) >> 4;
              ggl::CommandBuffer::pushRenderItem(v321, (v200 + 2));
              ++v193;
              v191 += 2;
              a4 = v323;
            }

            while (v191 != v192);
          }

          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v364);
          v105 = v322;
        }
      }
    }

    if (a6 && v105[52] == 1 && md::_maskTarget(&v332) == 1)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v363, a11);
      v207 = ggl::FragmentedPool<ggl::PolygonStrokeMask::MeshPipelineSetup>::pop(*(a4 + 184));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v207[17], v207[29], v332, *(&v332 + 1));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v207[17], v207[29], v334, *(&v334 + 1));
      *v207[21] = v337;
      v317 = v207;
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v358, *(v207[17] + 32));
      v208 = 0;
      v209 = *&v358[40];
      do
      {
        *(v209 + v208) = *(v335 + v208);
        v208 += 4;
      }

      while (v208 != 64);
      *(v209 + 320) = 0;
      *(v209 + 328) = 0;
      *(v209 + 464) = *(a9 + 56);
      v210 = 1.0 / *(a9 + 64);
      *(v209 + 468) = v210;
      *(v209 + 472) = v344;
      v211 = *v346;
      if (v346[1] != *v346)
      {
        v212 = 0;
        v213 = 0;
        v214 = 1.0;
        v215 = -0.5;
        v216 = 0.5;
        v217 = -1.0;
        v218 = 1.75;
        while (1)
        {
          v219 = *&v211[2 * v212];
          v220 = v211[2 * v212 + 1];
          if (v220)
          {
            atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v353, v219, v220);
          if (v220)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v220);
          }

          if (v353[32] == 1)
          {
            break;
          }

          v228 = 0.0;
          v230 = v345;
LABEL_323:
          if (v230 == 1)
          {
            v247 = 0.0;
          }

          else
          {
            v247 = v214;
          }

          if (v230 == 1)
          {
            v248 = v217;
          }

          else
          {
            v248 = 0.0;
          }

          if (v230 == 2)
          {
            v247 = v216;
            v248 = v215;
          }

          v249 = *&v358[40];
          v250 = v228 * v218 * *(a9 + 64);
          v251 = *&v358[40] + 4 * v212;
          *(v251 + 336) = v247 * v250;
          *(v251 + 400) = v248 * v250;
          *(v249 + 476) = 0;
          v252 = v249 + 16 * v212;
          *(v252 + 64) = 0;
          *(v252 + 72) = 0;
          if (v353[32] == 1)
          {
            (*(**v353 + 56))(*v353);
          }

          if (*&v353[24])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v353[24]);
          }

          if (*&v353[8])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v353[8]);
          }

          v212 = ++v213;
          v211 = *v346;
          if (v213 >= ((v346[1] - *v346) >> 4))
          {
            goto LABEL_347;
          }
        }

        v221 = *(*v353 + 24);
        v222 = fminf(fmaxf(*(a9 + 48), 0.0), 23.0);
        v223 = *v221;
        if (!*v221 || (v224 = *v223, LODWORD(v223) = *v223 == v214, *(v221 + 10) != 1) || (v224 != 0.0 ? (v225 = v224 == v214) : (v225 = 1), v225))
        {
          v226 = *(v221 + v223 + 11);
          if (v226 != 2)
          {
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v353 + 24), 466, v226, 0, v222);
            v228 = v227;
LABEL_296:
            v229 = *(a9 + 48);
            v230 = v345;
            v231 = *(*v353 + 24);
            if (v229 >= 0x17)
            {
              v232 = 23;
            }

            else
            {
              v232 = v229;
            }

            v233 = *v231;
            if (*v231 && (v234 = *v233, LODWORD(v233) = *v233 == v214, *(v231 + 10) == 1) && (v234 != 0.0 ? (v235 = v234 == v214) : (v235 = 1), !v235) || (v236 = *(v231 + v233 + 11), v236 == 2))
            {
              v237 = *(v231 + 16);
              if (v237)
              {
                v238 = *(v237 + 72);
                if (v238)
                {
                  v239 = *v238 + 120 * *(v238 + v232 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v239, 0x1D3u) != *(v239 + 12))
                  {
                    goto LABEL_321;
                  }
                }

                if (*(v231 + 56))
                {
                  v240 = *(v231 + 48);
                  v241 = 8 * *(v231 + 56);
                  while (1)
                  {
                    v242 = *(*v240 + 72);
                    if (v242)
                    {
                      v243 = *v242 + 120 * *(v242 + v232 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v243, 0x1D3u) != *(v243 + 12))
                      {
                        goto LABEL_321;
                      }
                    }

                    v240 += 8;
                    v236 = 1;
                    v241 -= 8;
                    if (!v241)
                    {
                      goto LABEL_318;
                    }
                  }
                }
              }

              v236 = 1;
            }

LABEL_318:
            v244 = *(v231 + 16 * v236 + 16);
            if (!v244)
            {
LABEL_322:
              v105 = v322;
              a4 = v323;
              goto LABEL_323;
            }

            v245 = *(v244 + 72);
            if (!v245 || (v246 = *v245 + 120 * *(v245 + v232 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v246, 0x1D3u) == *(v246 + 12)))
            {
              v253 = v231 + 16 * v236;
              if (!*(v253 + 56))
              {
                goto LABEL_322;
              }

              v254 = *(v253 + 48);
              v255 = 8 * *(v253 + 56);
              while (1)
              {
                v256 = *(*v254 + 72);
                if (v256)
                {
                  v257 = *v256 + 120 * *(v256 + v232 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v257, 0x1D3u) != *(v257 + 12))
                  {
                    break;
                  }
                }

                v254 += 8;
                v255 -= 8;
                if (!v255)
                {
                  goto LABEL_322;
                }
              }
            }

LABEL_321:
            v230 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v231, 467, v232, 2, 0);
            goto LABEL_322;
          }

          v224 = 0.0;
        }

        LOBYTE(v367) = 1;
        LOBYTE(v373[0]) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v221, 466, 0, &v367, v222);
        v259 = v258;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v221, 466, 1, v373, v222);
        v228 = v259 + ((v260 - v259) * v224);
        v218 = 1.75;
        v217 = -1.0;
        v216 = 0.5;
        v215 = -0.5;
        v214 = 1.0;
        goto LABEL_296;
      }

LABEL_347:
      ggl::BufferMemory::~BufferMemory(v358);
      v261 = a4;
      v262 = *(a4 + 8 * ((v105[8] | (2 * v340[0])) & 3) + 272);
      *&v263 = ggl::RenderItem::RenderItem(v353, "").u64[0];
      *&v353[40] = *(a9 + 52) + *(v261 + 912);
      *&v353[24] = v262;
      *&v353[32] = v317;
      *&v353[48] = 0;
      v264 = [*(a9 + 80) strokeMeshes];
      v265 = *v264;
      v266 = *(v264 + 8);
      a4 = v323;
      if (*v264 != v266)
      {
        v267 = 0;
        do
        {
          v268 = *(a9 + 80);
          v269 = *(a9 + 100);
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v367, v363);
          v270 = [v268 commitRangesToStrokeRenderItemBatcher:a4 + 984 forMeshAtIndex:v267 cullingMask:v269 featureIdPredicate:&v367];
          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v367);

          v271 = *v265;
          *v358 = &off_1F2A5D8B8;
          *&v358[8] = *&v353[8];
          *&v358[24] = *&v353[24];
          *&v358[40] = *&v353[40];
          v361 = v357;
          v360 = v356;
          v359 = v355;
          *&v358[56] = v354;
          v272 = *(a4 + 1072);
          v273 = v272[1];
          if (v273 == *(a4 + 1080))
          {
            v272 = *v272;
            if (!v272)
            {
              v272 = malloc_type_malloc(120 * v273 + 16, 0x1020040EDED9539uLL);
              *v272 = 0;
              v272[1] = 0;
              **(a4 + 1072) = v272;
            }

            *(a4 + 1072) = v272;
            v273 = v272[1];
          }

          v274 = &v272[15 * v273];
          v272[1] = v273 + 1;
          v274[2] = &off_1F2A5D8B8;
          v275 = *&v358[8];
          v276 = *&v358[24];
          *(v274 + 7) = *&v358[40];
          *(v274 + 5) = v276;
          *(v274 + 3) = v275;
          v277 = *&v358[56];
          v278 = v359;
          v279 = v360;
          *(v274 + 15) = v361;
          *(v274 + 13) = v279;
          *(v274 + 11) = v278;
          *(v274 + 9) = v277;
          ggl::RenderItem::~RenderItem(v358);
          v274[10] = v271;
          v280 = *v270;
          v274[13] = *v270;
          v274[14] = (v270[1] - v280) >> 4;
          ggl::CommandBuffer::pushRenderItem(a6, (v274 + 2));
          ++v267;
          v265 += 2;
          a4 = v323;
        }

        while (v265 != v266);
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v363);
      v105 = v322;
    }

    if (v318 && v105[53] == 1 && v349 == 1)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v362, a11);
      v281 = ggl::FragmentedPool<ggl::HillshadeFillMask::CompressedMeshPipelineSetup>::pop(*(a4 + 192));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v281[17], v281[29], v332, *(&v332 + 1));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v281[17], v281[29], v334, *(&v334 + 1));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v358, *(v281[17] + 32));
      v282 = 0;
      v283 = *&v358[40];
      do
      {
        *(v283 + v282) = *(v335 + v282);
        v282 += 4;
      }

      while (v282 != 64);
      *(v283 + 64) = *(a9 + 56);
      v284 = *(a9 + 80);
      v285 = [v284 origin];
      *(*&v358[40] + 72) = *v285;

      v286 = *(a9 + 80);
      [v286 size];
      v287 = *&v358[40];
      *(*&v358[40] + 80) = v288;
      *(v287 + 84) = v289;

      ggl::BufferMemory::~BufferMemory(v358);
      v290 = *(a4 + 8 * ((v339 | (2 * v340[0])) & 3) + 272);
      v291 = ggl::RenderItem::RenderItem(v353, "");
      v292 = *(*a9 + 392);
      if (v292)
      {
        v293 = v292 + 168;
      }

      else
      {
        v293 = 0;
      }

      v294 = (*(*v322 + 32))(v322, 1, v342, 0, v293, 0, 0, *v346, v291, 0);
      *&v353[40] = v340[1];
      *&v353[24] = v290;
      *&v353[32] = v281;
      *&v353[48] = v294;
      v295 = [*(a9 + 80) fillMeshes];
      v296 = *v295;
      v297 = *(v295 + 8);
      if (*v295 != v297)
      {
        v298 = 0;
        do
        {
          v299 = *(a9 + 80);
          v300 = *(a9 + 100);
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v367, v362);
          v301 = [v299 commitRangesToFillRenderItemBatcher:a4 + 984 forMeshAtIndex:v298 cullingMask:v300 featureIdPredicate:&v367];
          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v367);

          v302 = *v296;
          *v358 = &off_1F2A5D8B8;
          *&v358[8] = *&v353[8];
          *&v358[24] = *&v353[24];
          *&v358[40] = *&v353[40];
          v361 = v357;
          v360 = v356;
          v359 = v355;
          *&v358[56] = v354;
          v303 = *(a4 + 1072);
          v304 = v303[1];
          if (v304 == *(a4 + 1080))
          {
            v303 = *v303;
            if (!v303)
            {
              v303 = malloc_type_malloc(120 * v304 + 16, 0x1020040EDED9539uLL);
              *v303 = 0;
              v303[1] = 0;
              **(a4 + 1072) = v303;
            }

            *(a4 + 1072) = v303;
            v304 = v303[1];
          }

          v305 = &v303[15 * v304];
          v303[1] = v304 + 1;
          v305[2] = &off_1F2A5D8B8;
          v306 = *&v358[8];
          v307 = *&v358[24];
          *(v305 + 7) = *&v358[40];
          *(v305 + 5) = v307;
          *(v305 + 3) = v306;
          v308 = *&v358[56];
          v309 = v359;
          v310 = v360;
          *(v305 + 15) = v361;
          *(v305 + 13) = v310;
          *(v305 + 11) = v309;
          *(v305 + 9) = v308;
          ggl::RenderItem::~RenderItem(v358);
          v305[10] = v302;
          v311 = *v301;
          v305[13] = *v301;
          v305[14] = (v301[1] - v311) >> 4;
          ggl::CommandBuffer::pushRenderItem(v321, (v305 + 2));
          ++v298;
          v296 += 2;
          a4 = v323;
        }

        while (v296 != v297);
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v362);
    }
  }

  if (*(&v334 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v334 + 1));
  }

  if (*(&v333 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v333 + 1));
  }

  if (*(&v332 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v332 + 1));
  }
}

void sub_1B32952FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36)
{
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v36 - 216);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&STACK[0x308]);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a36);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  _Unwind_Resume(a1);
}

uint64_t md::_commandBufferForConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = **(a2 + 160);
  if (*(*(a2 + 160) + 8) == v5)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v5 + 16 * v10);
    v13 = *(v5 + 16 * v10 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v17, v12, v13);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = v20;
    if (v20)
    {
      hasValueForKey = gss::RenderStyle<gss::PropertyID>::hasValueForKey(v17[3], 0x8Au, 1u);
      if (hasValueForKey)
      {
        LOBYTE(hasValueForKey) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(138, 2, v17[3]);
      }

      v4 = (*(*a1 + 16))(a1, hasValueForKey, a4, a3);
      if (v20)
      {
        (*(*v17 + 56))(v17);
      }
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    if (v14)
    {
      break;
    }

    v10 = ++v11;
    v5 = **(a2 + 160);
    if (v11 >= ((*(*(a2 + 160) + 8) - v5) >> 4))
    {
      return 0;
    }
  }

  return v4;
}

void sub_1B3295760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
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

uint64_t md::_maskTarget(uint64_t a1)
{
  v2 = **(a1 + 160);
  if (*(*(a1 + 160) + 8) == v2)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(v2 + 16 * v4);
      v7 = *(v2 + 16 * v4 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v10, v6, v7);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v8 = v13;
      if (v13)
      {
        if ((gss::RenderStyle<gss::PropertyID>::hasValueForKey(v10[3], 0x1D4u, 0) & 1) != 0 || gss::RenderStyle<gss::PropertyID>::hasValueForKey(v10[3], 0x1D4u, 1u))
        {
          v1 = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(468, 2, v10[3]);
        }

        else
        {
          v1 = 0;
        }
      }

      if (v13 == 1)
      {
        (*(*v10 + 56))(v10);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      if (v8)
      {
        break;
      }

      v4 = ++v5;
      v2 = **(a1 + 160);
      if (v5 >= ((*(*(a1 + 160) + 8) - v2) >> 4))
      {
        return 0;
      }
    }
  }

  return v1;
}

void sub_1B3295938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void *ggl::FragmentedPool<ggl::HillshadeFillMask::CompressedMeshPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *ggl::FragmentedPool<ggl::PolygonStrokeMask::MeshPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonStrokeMask::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *md::animatingPolygonFillPipelineSetup<md::PolygonTileData>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = ggl::FragmentedPool<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup>::pop(*(a1 + 224));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v14[17], v14[29], *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v14[17], v14[29], *(a4 + 32), *(a4 + 40));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v14[17], v14[29], *(a1 + 952), *(a1 + 960));
  v15 = 24;
  if (!a7)
  {
    v15 = 0;
  }

  *v14[21] = *(a5 + v15);
  *(v14[21] + 8) = *(a6 + v15);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v33, *(v14[17] + 32));
  v16 = 0;
  v17 = v34;
  do
  {
    *(v17 + v16) = *(a4 + 48 + v16);
    v16 += 4;
  }

  while (v16 != 64);
  if (a7)
  {
    v18 = 32;
  }

  else
  {
    v18 = 8;
  }

  v19 = *(a5 + v18 + 12) * *(a4 + 144);
  v20 = *(a5 + v18);
  *(v17 + 72) = *(a5 + v18 + 8);
  *(v17 + 64) = v20;
  *(v17 + 76) = v19;
  v21 = *(a2 + 80);
  v22 = [v21 origin];
  *(v34 + 104) = *v22;

  v23 = *(a2 + 80);
  [v23 size];
  v24 = v34;
  *(v34 + 112) = v25;
  *(v24 + 116) = v26;

  v27 = *(a6 + v18 + 12) * *(a4 + 144);
  v28 = v34;
  v29 = *(a6 + v18 + 8);
  *(v34 + 80) = *(a6 + v18);
  *(v28 + 88) = v29;
  *(v28 + 92) = v27;
  v30 = v27 <= 0.0 && v19 <= 0.0;
  *(v28 + 96) = *(a2 + 56);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v14;
  }

  ggl::BufferMemory::~BufferMemory(v33);
  return v31;
}

void *md::polygonFillPipelineSetup<md::PolygonTileData>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = 216;
  if (*(a4 + 129))
  {
    v11 = 208;
  }

  v12 = ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pop(*(a1 + v11));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v12[17], v12[29], *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v12[17], v12[29], *(a4 + 32), *(a4 + 40));
  v13 = 24;
  if (!a6)
  {
    v13 = 0;
  }

  *v12[21] = *(a5 + v13);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v27, *(v12[17] + 32));
  v14 = 0;
  v15 = v28;
  do
  {
    *(v15 + v14) = *(a4 + 48 + v14);
    v14 += 4;
  }

  while (v14 != 64);
  v16 = 8;
  if (a6)
  {
    v16 = 32;
  }

  v17 = (a5 + v16);
  v18 = v17[3] * *(a4 + 144);
  v19 = *v17;
  *(v15 + 72) = v17[2];
  *(v15 + 64) = v19;
  *(v15 + 76) = v18;
  *(v15 + 80) = *(a2 + 56);
  v20 = *(a2 + 80);
  v21 = [v20 origin];
  *(v28 + 88) = *v21;

  v22 = *(a2 + 80);
  [v22 size];
  v23 = v28;
  *(v28 + 96) = v24;
  *(v23 + 100) = v25;

  if (v18 <= 0.0)
  {
    v12 = 0;
  }

  ggl::BufferMemory::~BufferMemory(v27);
  return v12;
}

void *ggl::FragmentedPool<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, _BYTE *a6)
{
  v12 = ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>::pop(*(a1 + 200));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v12[17], v12[29], *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v12[17], v12[29], a3[4], a3[5]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v12[17], v12[29], *(a1 + 952), *(a1 + 960));
  *v12[21] = a3[15];
  *(v12[21] + 8) = *a4;
  *(v12[21] + 16) = *a5;
  md::writeSourceConstants<md::PolygonTileData,md::Stroke2StyleProperties>(a2, a3, *(v12[17] + 32), a6);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v15, *(v12[17] + 64));
  v13 = v16;
  *v16 = 0;
  v13[1] = 0;
  ggl::BufferMemory::~BufferMemory(v15);
  return v12;
}

void *md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(void *a1, uint64_t a2, uint64_t *a3, void *a4, _BYTE *a5)
{
  v9 = ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>::pop(a1);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v9[17], v9[29], *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v9[17], v9[29], a3[4], a3[5]);
  *v9[21] = a3[15];
  *(v9[21] + 8) = *a4;
  if (md::writeSourceConstants<md::PolygonTileData,md::Stroke2StyleProperties>(a2, a3, *(v9[17] + 32), a5))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

ggl::zone_mallocator *md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  result = [*(*a1 + 80) strokeMeshes];
  v5 = *result;
  v23 = *(result + 1);
  if (*result != v23)
  {
    v6 = 0;
    do
    {
      v7 = *(*a1 + 80);
      v8 = a1[1];
      v9 = *(*a1 + 100);
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v32, a1[2]);
      v10 = [v7 commitRangesToStrokeRenderItemBatcher:v8 + 984 forMeshAtIndex:v6 cullingMask:v9 featureIdPredicate:v32];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v32);

      v11 = a1[3];
      v12 = a1[1];
      v13 = *v5;
      v24 = &off_1F2A5D8B8;
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 40);
      v31 = *(a2 + 104);
      v30 = *(a2 + 88);
      v29 = *(a2 + 72);
      v28 = *(a2 + 56);
      v14 = *(v12 + 1072);
      v15 = v14[1];
      if (v15 == *(v12 + 1080))
      {
        v14 = *v14;
        if (!v14)
        {
          v14 = malloc_type_malloc(120 * v15 + 16, 0x1020040EDED9539uLL);
          *v14 = 0;
          v14[1] = 0;
          **(v12 + 1072) = v14;
        }

        *(v12 + 1072) = v14;
        v15 = v14[1];
      }

      v16 = &v14[15 * v15];
      v14[1] = v15 + 1;
      v16[2] = &off_1F2A5D8B8;
      v17 = v25;
      v18 = v26;
      *(v16 + 7) = v27;
      *(v16 + 5) = v18;
      *(v16 + 3) = v17;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      *(v16 + 15) = v31;
      *(v16 + 13) = v21;
      *(v16 + 11) = v20;
      *(v16 + 9) = v19;
      ggl::RenderItem::~RenderItem(&v24);
      v16[10] = v13;
      v22 = (v10[1] - *v10) >> 4;
      v16[13] = *v10;
      v16[14] = v22;
      result = ggl::CommandBuffer::pushRenderItem(v11, (v16 + 2));
      ++v6;
      v5 += 2;
    }

    while (v5 != v23);
  }

  return result;
}

void *ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonStroke::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

uint64_t md::writeSourceConstants<md::PolygonTileData,md::Stroke2StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v106, a3);
  v6 = 0;
  v7 = v107;
  do
  {
    *(v7 + v6) = *(a2 + 48 + v6);
    v6 += 4;
  }

  while (v6 != 64);
  *(v7 + 320) = 0;
  *(v7 + 328) = 0;
  *(v7 + 464) = *(a1 + 56);
  v8 = 1.0 / *(a1 + 64);
  *(v7 + 468) = v8;
  *(v7 + 472) = *(a2 + 148);
  *a4 = 0;
  v9 = **(a2 + 160);
  if (*(*(a2 + 160) + 8) != v9)
  {
    v10 = 0;
    v100 = 0;
    v11 = 0;
    v98 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      v12 = *(v9 + 16 * v10);
      v13 = *(v9 + 16 * v10 + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v102, v12, v13);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      v14 = 0.0;
      v15 = v105;
      if (v105 != 1)
      {
        v30 = 0;
        goto LABEL_53;
      }

      v16 = *(a1 + 48);
      v17 = v102[3];
      if (v16 >= 0x17)
      {
        v18 = 23;
      }

      else
      {
        v18 = v16;
      }

      v19 = *v17;
      if (*v17 && (v20 = *v19, LODWORD(v19) = *v19 == 1.0, *(v17 + 10) == 1) && (v20 != 0.0 ? (v21 = v20 == 1.0) : (v21 = 1), !v21) || (v22 = *(v17 + v19 + 11), v22 == 2))
      {
        v23 = *(v17 + 16);
        if (v23)
        {
          v24 = *(v23 + 72);
          if (v24)
          {
            v25 = *v24 + 120 * *(v24 + v18 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x11Du) != *(v25 + 12))
            {
              goto LABEL_35;
            }
          }

          if (*(v17 + 56))
          {
            v26 = *(v17 + 48);
            v27 = 8 * *(v17 + 56);
            while (1)
            {
              v28 = *(*v26 + 72);
              if (v28)
              {
                v29 = *v28 + 120 * *(v28 + v18 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v29, 0x11Du) != *(v29 + 12))
                {
                  break;
                }
              }

              v26 += 8;
              v22 = 1;
              v27 -= 8;
              if (!v27)
              {
                goto LABEL_32;
              }
            }

LABEL_35:
            v30 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v17, 285, v18, 2u, 0);
            v15 = v105;
            if ((v105 & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_44;
          }
        }

        v22 = 1;
      }

LABEL_32:
      v31 = *(v17 + 16 * v22 + 16);
      if (v31)
      {
        v32 = *(v31 + 72);
        if (v32)
        {
          v33 = *v32 + 120 * *(v32 + v18 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v33, 0x11Du) != *(v33 + 12))
          {
            goto LABEL_35;
          }
        }

        v34 = v17 + 16 * v22;
        if (*(v34 + 56))
        {
          v35 = *(v34 + 48);
          v36 = 8 * *(v34 + 56);
          while (1)
          {
            v37 = *(*v35 + 72);
            if (v37)
            {
              v38 = *v37 + 120 * *(v37 + v18 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0x11Du) != *(v38 + 12))
              {
                goto LABEL_35;
              }
            }

            v35 += 8;
            v30 = 1;
            v15 = 1;
            v36 -= 8;
            if (!v36)
            {
              goto LABEL_44;
            }
          }
        }
      }

      v30 = 1;
      v15 = 1;
LABEL_44:
      v39 = v102[3];
      v40 = fminf(fmaxf(*(a1 + 48), 0.0), 23.0);
      v41 = *v39;
      if (*v39)
      {
        v42 = *v41;
        LODWORD(v41) = *v41 == 1.0;
        if (*(v39 + 10) == 1 && v42 != 0.0 && v42 != 1.0)
        {
          goto LABEL_132;
        }
      }

      v44 = *(v39 + v41 + 11);
      if (v44 == 2)
      {
        v42 = 0.0;
LABEL_132:
        LOBYTE(v101) = 1;
        v108[0].i8[0] = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 404, 0, &v101, v40);
        v97 = v94;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 404, 1, v108, v40);
        v14 = v97 + ((v95 - v97) * v42);
        goto LABEL_53;
      }

      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v102[3], 404, v44, 0, v40);
      v14 = v45;
LABEL_53:
      v46 = *(a1 + 64) * 1.75;
      if (!v30 || v14 >= 0.0001)
      {
        v50 = v46 * v14;
        if ((v15 & 1) == 0)
        {
          v65 = *(a2 + 152);
          if (v65 == 1)
          {
            v66 = 0.0;
          }

          else
          {
            v66 = 1.0;
          }

          if (v65 == 1)
          {
            v67 = -1.0;
          }

          else
          {
            v67 = 0.0;
          }

          if (v65 == 2)
          {
            v66 = 0.5;
            v67 = -0.5;
          }

          v68 = v107;
          v69 = v107 + 4 * v10;
          *(v69 + 336) = v66 * v50;
          *(v69 + 400) = v67 * v50;
          *(v68 + 476) = 0;
          v70 = v68 + 16 * v10;
          *(v70 + 64) = 0;
          *(v70 + 72) = 0;
          goto LABEL_123;
        }

        v51 = *(a1 + 48);
        v52 = v102[3];
        if (v51 >= 0x17)
        {
          v53 = 23;
        }

        else
        {
          v53 = v51;
        }

        v54 = *v52;
        if (*v52 && (v55 = *v54, LODWORD(v54) = *v54 == 1.0, *(v52 + 10) == 1) && (v55 != 0.0 ? (v56 = v55 == 1.0) : (v56 = 1), !v56) || (v57 = *(v52 + v54 + 11), v57 == 2))
        {
          v58 = *(v52 + 16);
          if (v58)
          {
            v59 = *(v58 + 72);
            if (v59)
            {
              v60 = *v59 + 120 * *(v59 + v53 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v60, 0x198u) != *(v60 + 12))
              {
                goto LABEL_97;
              }
            }

            if (*(v52 + 56))
            {
              v61 = *(v52 + 48);
              v62 = 8 * *(v52 + 56);
              while (1)
              {
                v63 = *(*v61 + 72);
                if (v63)
                {
                  v64 = *v63 + 120 * *(v63 + v53 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v64, 0x198u) != *(v64 + 12))
                  {
                    break;
                  }
                }

                v61 += 8;
                v57 = 1;
                v62 -= 8;
                if (!v62)
                {
                  goto LABEL_94;
                }
              }

LABEL_97:
              v77 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v52, 408, v53, 2, 0);
              v52 = v102[3];
              if (*(a1 + 48) >= 0x17)
              {
                LODWORD(v53) = 23;
              }

              else
              {
                LODWORD(v53) = *(a1 + 48);
              }

              goto LABEL_106;
            }
          }

          v57 = 1;
        }

LABEL_94:
        v74 = *(v52 + 16 * v57 + 16);
        if (v74)
        {
          v75 = *(v74 + 72);
          if (v75)
          {
            v76 = *v75 + 120 * *(v75 + v53 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v76, 0x198u) != *(v76 + 12))
            {
              goto LABEL_97;
            }
          }

          v78 = v52 + 16 * v57;
          if (*(v78 + 56))
          {
            v79 = *(v78 + 48);
            v80 = 8 * *(v78 + 56);
            do
            {
              v81 = *(*v79 + 72);
              if (v81)
              {
                v82 = *v81 + 120 * *(v81 + v53 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v82, 0x198u) != *(v82 + 12))
                {
                  goto LABEL_97;
                }
              }

              v79 += 8;
              v80 -= 8;
            }

            while (v80);
          }
        }

        v77 = *(a2 + 152);
LABEL_106:
        v83 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v52, 420, v53, 2, 0);
        if (v77 == 1)
        {
          v84 = 0.0;
        }

        else
        {
          v84 = 1.0;
        }

        if (v77 == 1)
        {
          v85 = -1.0;
        }

        else
        {
          v85 = 0.0;
        }

        if (v77 == 2)
        {
          v84 = 0.5;
          v85 = -0.5;
        }

        v86 = v107;
        v87 = v107 + 4 * v10;
        *(v87 + 336) = v84 * v50;
        *(v87 + 400) = v85 * v50;
        *(v86 + 476) = v83 == 1;
        v88 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(407, 2u, v102[3]);
        v89 = *(a1 + 48);
        if (v88)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v108, v102[3], 403, 2u, fminf(fmaxf(v89, 0.0), 23.0));
        }

        else
        {
          if (v89 >= 0x17)
          {
            v90 = 23;
          }

          else
          {
            v90 = v89;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v108, v102[3], 403, v90, 2u, 0);
        }

        v91 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v108[0])), v98);
        *&v101 = v91.i64[0];
        DWORD2(v101) = v91.i32[2];
        v92 = 0;
        v93 = v91.f32[3] * *(a2 + 144);
        *(&v101 + 3) = v93;
        do
        {
          *(&v101 + v92) = *(&v101 + v92) * v93;
          v92 += 4;
        }

        while (v92 != 12);
        *(v107 + 16 * v10 + 64) = v101;
        v100 |= *(&v101 + 3) > 0.001;
        *a4 |= *(&v101 + 3) < 1.0;
        goto LABEL_123;
      }

      v47 = v107;
      v48 = v107 + 4 * v10;
      v49 = v107 + 16 * v10;
      if (*(a1 + 120))
      {
        *(v48 + 336) = 0;
        *(v48 + 400) = 0;
        *(v49 + 64) = 0;
        *(v49 + 72) = 0;
      }

      else
      {
        v71 = v46;
        *(v48 + 336) = v71;
        *(v48 + 400) = 0;
        *(v49 + 64) = 0;
        *(v49 + 72) = 0;
        if (v105 == 1)
        {
          if (*(a1 + 48) >= 0x17)
          {
            v72 = 23;
          }

          else
          {
            v72 = *(a1 + 48);
          }

          v73 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v102[3], 420, v72, 2, 0) == 1;
          *(v107 + 476) = v73;
          goto LABEL_123;
        }
      }

      *(v47 + 476) = 0;
LABEL_123:
      if (v105 == 1)
      {
        (*(*v102 + 7))(v102);
      }

      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v104);
      }

      if (v103)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v103);
      }

      v10 = ++v11;
      v9 = **(a2 + 160);
      if (v11 >= ((*(*(a2 + 160) + 8) - v9) >> 4))
      {
        goto LABEL_134;
      }
    }
  }

  v100 = 0;
LABEL_134:
  ggl::BufferMemory::~BufferMemory(v106);
  return v100 & 1;
}

void sub_1B3296F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, char a23)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void *ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonAnimatableStroke::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6)
{
  v12 = ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>::pop(*(a1 + 200));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v12[17], v12[29], *a3, *(a3 + 8));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v12[17], v12[29], *(a3 + 32), *(a3 + 40));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v12[17], v12[29], *(a1 + 952), *(a1 + 960));
  *v12[21] = *(a3 + 120);
  *(v12[21] + 8) = *a4;
  *(v12[21] + 16) = *a5;
  v13 = md::writeSourceConstants<md::PolygonTileData,md::Stroke1StyleProperties>(a2, a3, a4, *(v12[17] + 32), a6);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, *(v12[17] + 64));
  v14 = 0;
  v18 = *(a5 + 8);
  v15 = *(&v18 + 3) * *(a3 + 144);
  *(&v18 + 3) = v15;
  do
  {
    *(&v19[-2] + v14) = *(&v19[-2] + v14) * v15;
    v14 += 4;
  }

  while (v14 != 12);
  *v19[5] = v18;
  if (*(&v18 + 3) >= 0.0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  if (!v16)
  {
    v12 = 0;
  }

  ggl::BufferMemory::~BufferMemory(v19);
  return v12;
}

void *md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(void *a1, uint64_t a2, uint64_t *a3, void *a4, _BYTE *a5)
{
  v9 = ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>::pop(a1);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v9[17], v9[29], *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v9[17], v9[29], a3[4], a3[5]);
  *v9[21] = a3[15];
  *(v9[21] + 8) = *a4;
  if (md::writeSourceConstants<md::PolygonTileData,md::Stroke1StyleProperties>(a2, a3, a4, *(v9[17] + 32), a5))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

ggl::zone_mallocator *md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  result = [*(*a1 + 80) strokeMeshes];
  v5 = *result;
  v23 = *(result + 1);
  if (*result != v23)
  {
    v6 = 0;
    do
    {
      v7 = *(*a1 + 80);
      v8 = a1[1];
      v9 = *(*a1 + 100);
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v32, a1[2]);
      v10 = [v7 commitRangesToStrokeRenderItemBatcher:v8 + 984 forMeshAtIndex:v6 cullingMask:v9 featureIdPredicate:v32];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v32);

      v11 = a1[3];
      v12 = a1[1];
      v13 = *v5;
      v24 = &off_1F2A5D8B8;
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 40);
      v31 = *(a2 + 104);
      v30 = *(a2 + 88);
      v29 = *(a2 + 72);
      v28 = *(a2 + 56);
      v14 = *(v12 + 1072);
      v15 = v14[1];
      if (v15 == *(v12 + 1080))
      {
        v14 = *v14;
        if (!v14)
        {
          v14 = malloc_type_malloc(120 * v15 + 16, 0x1020040EDED9539uLL);
          *v14 = 0;
          v14[1] = 0;
          **(v12 + 1072) = v14;
        }

        *(v12 + 1072) = v14;
        v15 = v14[1];
      }

      v16 = &v14[15 * v15];
      v14[1] = v15 + 1;
      v16[2] = &off_1F2A5D8B8;
      v17 = v25;
      v18 = v26;
      *(v16 + 7) = v27;
      *(v16 + 5) = v18;
      *(v16 + 3) = v17;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      *(v16 + 15) = v31;
      *(v16 + 13) = v21;
      *(v16 + 11) = v20;
      *(v16 + 9) = v19;
      ggl::RenderItem::~RenderItem(&v24);
      v16[10] = v13;
      v22 = (v10[1] - *v10) >> 4;
      v16[13] = *v10;
      v16[14] = v22;
      result = ggl::CommandBuffer::pushRenderItem(v11, (v16 + 2));
      ++v6;
      v5 += 2;
    }

    while (v5 != v23);
  }

  return result;
}

uint64_t md::writeSourceConstants<md::PolygonTileData,md::Stroke1StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v109, a4);
  v8 = 0;
  v9 = v110;
  do
  {
    *(v9 + v8) = *(a2 + 48 + v8);
    v8 += 4;
  }

  while (v8 != 64);
  v10 = 0;
  v108 = *(a3 + 8);
  v11 = *(&v108 + 3) * *(a2 + 144);
  *(&v108 + 3) = v11;
  do
  {
    *(&v109[-2] + v10) = *(&v109[-2] + v10) * v11;
    v10 += 4;
  }

  while (v10 != 12);
  *(v9 + 320) = v108;
  *(v9 + 464) = *(a1 + 56);
  v12 = 1.0 / *(a1 + 64);
  *(v9 + 468) = v12;
  *(v9 + 472) = *(a2 + 148);
  *a5 = 0;
  v13 = **(a2 + 160);
  if (*(*(a2 + 160) + 8) != v13)
  {
    v14 = 0;
    v102 = 0;
    v15 = 0;
    v100 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      v16 = *(v13 + 16 * v14);
      v17 = *(v13 + 16 * v14 + 8);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v104, v16, v17);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      v19 = 0.0;
      v20 = v107;
      if (v107 != 1)
      {
        v35 = 0;
        goto LABEL_55;
      }

      v21 = *(a1 + 48);
      v22 = v104[3];
      if (v21 >= 0x17)
      {
        v23 = 23;
      }

      else
      {
        v23 = v21;
      }

      v24 = *v22;
      if (*v22 && (v25 = *v24, LODWORD(v24) = *v24 == 1.0, *(v22 + 10) == 1) && (v25 != 0.0 ? (v26 = v25 == 1.0) : (v26 = 1), !v26) || (v27 = *(v22 + v24 + 11), v27 == 2))
      {
        v28 = *(v22 + 16);
        if (v28)
        {
          v29 = *(v28 + 72);
          if (v29)
          {
            v30 = *v29 + 120 * *(v29 + v23 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v30, 0x11Du) != *(v30 + 12))
            {
              goto LABEL_37;
            }
          }

          if (*(v22 + 56))
          {
            v31 = *(v22 + 48);
            v32 = 8 * *(v22 + 56);
            while (1)
            {
              v33 = *(*v31 + 72);
              if (v33)
              {
                v34 = *v33 + 120 * *(v33 + v23 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v34, 0x11Du) != *(v34 + 12))
                {
                  break;
                }
              }

              v31 += 8;
              v27 = 1;
              v32 -= 8;
              if (!v32)
              {
                goto LABEL_34;
              }
            }

LABEL_37:
            v35 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v22, 285, v23, 2u, 0);
            v20 = v107;
            if ((v107 & 1) == 0)
            {
              goto LABEL_55;
            }

            goto LABEL_46;
          }
        }

        v27 = 1;
      }

LABEL_34:
      v36 = *(v22 + 16 * v27 + 16);
      if (v36)
      {
        v37 = *(v36 + 72);
        if (v37)
        {
          v38 = *v37 + 120 * *(v37 + v23 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0x11Du) != *(v38 + 12))
          {
            goto LABEL_37;
          }
        }

        v39 = v22 + 16 * v27;
        if (*(v39 + 56))
        {
          v40 = *(v39 + 48);
          v41 = 8 * *(v39 + 56);
          while (1)
          {
            v42 = *(*v40 + 72);
            if (v42)
            {
              v43 = *v42 + 120 * *(v42 + v23 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v43, 0x11Du) != *(v43 + 12))
              {
                goto LABEL_37;
              }
            }

            v40 += 8;
            v35 = 1;
            v20 = 1;
            v41 -= 8;
            if (!v41)
            {
              goto LABEL_46;
            }
          }
        }
      }

      v35 = 1;
      v20 = 1;
LABEL_46:
      v44 = v104[3];
      v45 = fminf(fmaxf(*(a1 + 48), 0.0), 23.0);
      v46 = *v44;
      if (*v44)
      {
        v47 = *v46;
        LODWORD(v46) = *v46 == 1.0;
        if (*(v44 + 10) == 1 && v47 != 0.0 && v47 != 1.0)
        {
          goto LABEL_135;
        }
      }

      v49 = *(v44 + v46 + 11);
      if (v49 == 2)
      {
        v47 = 0.0;
LABEL_135:
        v103.n128_u8[0] = 1;
        v111[0].i8[0] = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v44, 97, 0, &v103, v45);
        v99 = v97;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v44, 97, 1, v111, v45);
        v19 = v99 + ((v18.n128_f32[0] - v99) * v47);
        goto LABEL_55;
      }

      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v104[3], 97, v49, 0, v45);
      v19 = v18.n128_f32[0];
LABEL_55:
      v18.n128_f64[0] = *(a1 + 64) * 1.75;
      if (!v35 || v19 >= 0.0001)
      {
        v18.n128_f64[0] = v18.n128_f64[0] * v19;
        v53 = v18.n128_f64[0];
        if (v20)
        {
          v54 = *(a1 + 48);
          v55 = v104[3];
          if (v54 >= 0x17)
          {
            v56 = 23;
          }

          else
          {
            v56 = v54;
          }

          v57 = *v55;
          if (*v55 && (v58 = *v57, LODWORD(v57) = *v57 == 1.0, *(v55 + 10) == 1) && (v58 != 0.0 ? (v59 = v58 == 1.0) : (v59 = 1), !v59) || (v60 = *(v55 + v57 + 11), v60 == 2))
          {
            v61 = *(v55 + 16);
            if (v61)
            {
              v62 = *(v61 + 72);
              if (v62)
              {
                v63 = *v62 + 120 * *(v62 + v56 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v63, 0x13Fu) != *(v63 + 12))
                {
                  goto LABEL_100;
                }
              }

              if (*(v55 + 56))
              {
                v64 = *(v55 + 48);
                v65 = 8 * *(v55 + 56);
                while (1)
                {
                  v66 = *(*v64 + 72);
                  if (v66)
                  {
                    v67 = *v66 + 120 * *(v66 + v56 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v67, 0x13Fu) != *(v67 + 12))
                    {
                      break;
                    }
                  }

                  v64 += 8;
                  v60 = 1;
                  v65 -= 8;
                  if (!v65)
                  {
                    goto LABEL_97;
                  }
                }

LABEL_100:
                v81 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v55, 319, v56, 2, 0);
                v55 = v104[3];
                if (*(a1 + 48) >= 0x17)
                {
                  LODWORD(v56) = 23;
                }

                else
                {
                  LODWORD(v56) = *(a1 + 48);
                }

                goto LABEL_109;
              }
            }

            v60 = 1;
          }

LABEL_97:
          v78 = *(v55 + 16 * v60 + 16);
          if (v78)
          {
            v79 = *(v78 + 72);
            if (v79)
            {
              v80 = *v79 + 120 * *(v79 + v56 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v80, 0x13Fu) != *(v80 + 12))
              {
                goto LABEL_100;
              }
            }

            v82 = v55 + 16 * v60;
            if (*(v82 + 56))
            {
              v83 = *(v82 + 48);
              v84 = 8 * *(v82 + 56);
              do
              {
                v85 = *(*v83 + 72);
                if (v85)
                {
                  v86 = *v85 + 120 * *(v85 + v56 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v86, 0x13Fu) != *(v86 + 12))
                  {
                    goto LABEL_100;
                  }
                }

                v83 += 8;
                v84 -= 8;
              }

              while (v84);
            }
          }

          v81 = *(a2 + 152);
LABEL_109:
          v87 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v55, 420, v56, 2, 0);
          if (v81 == 1)
          {
            v88 = 0.0;
          }

          else
          {
            v88 = 1.0;
          }

          if (v81 == 1)
          {
            v89 = -1.0;
          }

          else
          {
            v89 = 0.0;
          }

          if (v81 == 2)
          {
            v88 = 0.5;
            v89 = -0.5;
          }

          v90 = v110;
          v91 = v110 + 4 * v14;
          *(v91 + 336) = v88 * v53;
          *(v91 + 400) = v89 * v53;
          *(v90 + 476) = v87 == 1;
          v92 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(107, 2u, v104[3]);
          v93 = *(a1 + 48);
          if (v92)
          {
            gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v111, v104[3], 93, 2u, fminf(fmaxf(v93, 0.0), 23.0));
          }

          else
          {
            if (v93 >= 0x17)
            {
              v94 = 23;
            }

            else
            {
              v94 = v93;
            }

            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v111, v104[3], 93, v94, 2u, 0);
          }

          v96 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v111[0])), v100);
          v103.n128_u64[0] = v96.i64[0];
          v103.n128_u32[2] = v96.u32[2];
          v95 = 0;
          v96.i32[0] = *(a2 + 144);
          v103.n128_f32[3] = v96.f32[3] * v96.f32[0];
          do
          {
            v103.n128_f32[v95] = v103.n128_f32[v95] * (v96.f32[3] * v96.f32[0]);
            ++v95;
          }

          while (v95 != 3);
          v18 = v103;
          *(v110 + 16 * v14 + 64) = v103;
          v18.n128_u32[0] = v103.n128_u32[3];
          v102 |= v103.n128_f32[3] > 0.001 || *(&v108 + 3) > 0.001;
          *a5 |= v103.n128_f32[3] < 1.0;
          goto LABEL_126;
        }

        v68 = *(a2 + 152);
        if (v68 == 1)
        {
          v69 = 0.0;
        }

        else
        {
          v69 = 1.0;
        }

        if (v68 == 1)
        {
          v70 = -1.0;
        }

        else
        {
          v70 = 0.0;
        }

        if (v68 == 2)
        {
          v69 = 0.5;
          v70 = -0.5;
        }

        v71 = v110;
        v72 = v110 + 4 * v14;
        *(v72 + 336) = v69 * v53;
        *(v72 + 400) = v70 * v53;
        *(v71 + 476) = 0;
        v73 = v71 + 16 * v14;
        *(v73 + 64) = 0;
        *(v73 + 72) = 0;
        goto LABEL_95;
      }

      v50 = v110;
      v51 = v110 + 4 * v14;
      v52 = v110 + 16 * v14;
      if ((*(a1 + 120) & 1) == 0)
      {
        v74 = 0;
        v75 = v18.n128_f64[0];
        *(v51 + 336) = v75;
        *(v51 + 400) = 0;
        *(v52 + 64) = 0;
        *(v52 + 72) = 0;
        if (v107 == 1)
        {
          if (*(a1 + 48) >= 0x17)
          {
            v76 = 23;
          }

          else
          {
            v76 = *(a1 + 48);
          }

          v77 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v104[3], 420, v76, 2, 0);
          v50 = v110;
          v74 = v77 == 1;
        }

        *(v50 + 476) = v74;
LABEL_95:
        v18.n128_u32[0] = HIDWORD(v108);
        v102 |= *(&v108 + 3) > 0.001;
        goto LABEL_126;
      }

      *(v51 + 336) = 0;
      *(v51 + 400) = 0;
      *(v52 + 64) = 0;
      *(v52 + 72) = 0;
      *(v50 + 476) = 0;
LABEL_126:
      if (v107 == 1)
      {
        (*(*v104 + 7))(v104, v18);
      }

      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v106);
      }

      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v105);
      }

      v14 = ++v15;
      v13 = **(a2 + 160);
      if (v15 >= ((*(*(a2 + 160) + 8) - v13) >> 4))
      {
        goto LABEL_137;
      }
    }
  }

  LOBYTE(v102) = 0;
LABEL_137:
  ggl::BufferMemory::~BufferMemory(v109);
  return v102 & 1;
}

void sub_1B3297E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::_polygonIsVisibleWithQueryLocker(uint64_t a1, float a2)
{
  v3 = a2;
  v4 = *(*a1 + 24);
  if (a2 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a2;
  }

  result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v4, 91, v5, 2u, 0);
  if (result)
  {
    v7 = *(*a1 + 24);
    if (gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(v7, 0x5Cu, v3) & 1) != 0 || (gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(v7, 0x88u, v3) & 1) != 0 || (gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(v7, 0x5Du, v3) & 1) != 0 || (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v7, 0x5Cu, v3) & 1) != 0 || (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v7, 0x88u, v3))
    {
      return 1;
    }

    else
    {

      return gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v7, 0x5Du, v3);
    }
  }

  return result;
}

BOOL std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*v2 != *a2)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 16);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A4E848;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A4E848;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t md::PolygonLayoutCharacteristics::commandBufferInfo(void *a1, unsigned __int8 *a2, md::FrameGraph *this)
{
  v6 = md::FrameGraph::renderQueueForPass(this, a2[40]);
  if (v6)
  {
    v7 = *(*(v6 + 16) + 8 * a2[41]);
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  v8 = md::FrameGraph::renderQueueForPass(this, a2[42]);
  if (v8)
  {
    v9 = *(*(v8 + 16) + 8 * a2[43]);
  }

  else
  {
    v9 = 0;
  }

  a1[1] = v9;
  result = md::FrameGraph::renderQueueForPass(this, a2[44]);
  if (result)
  {
    v11 = *(*(result + 16) + 8 * a2[45]);
  }

  else
  {
    v11 = 0;
  }

  a1[2] = v11;
  return result;
}

void md::preparePolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = md::LayoutContext::get<md::SharedResourcesContext>(a2);
  v7 = md::LayoutContext::get<md::CameraContext>(a2);
  v8 = *v6;
  v9 = v8;
  if (v8)
  {
    [v8 textureManager];
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v32[0] = &unk_1F2A4E8D8;
  v33 = v32;
  v25 = v27;
  v26 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11)
  {
    v12 = fmaxf(*(v7 + 3080) + *(v7 + 3076), 1.0);
    while (1)
    {
      v13 = *v10;
      if (!v33 || std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::operator()(v33, *v10))
      {
        break;
      }

LABEL_17:
      if (++v10 == v11)
      {
        goto LABEL_18;
      }
    }

    v14 = *(v13 + 392);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v29, *(v13 + 224), 0);
    v15 = v30[1];
    v31[0] = *v30;
    v31[1] = v15;
    v16 = v30[3];
    v31[2] = v30[2];
    v31[3] = v16;
    ggl::BufferMemory::~BufferMemory(v29);
    v17 = ggl::CullingGrid::intersectedCellsForView(v31, 0.0);
    v18 = (*(*v14 + 48))(v14);
    v19 = *v18;
    v20 = v18[1];
    while (1)
    {
      if (v19 == v20)
      {
        goto LABEL_17;
      }

      v21 = *(v19 + 8);
      if (((*(*a3 + 56))(a3, v13, v21, v17) & 1) == 0)
      {
        v22 = *(v19 + 8);
        v23 = (*(*a3 + 64))(a3, v22, 1);

        if (!v23)
        {
          goto LABEL_16;
        }

        v21 = *(v19 + 8);
        *&v24 = v12;
        [v21 updateTexturesIfNecessary:&v25 textureManager:v24];
      }

LABEL_16:
      v19 += 24;
    }
  }

LABEL_18:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::~__value_func[abi:nn200100](v32);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }
}

void md::layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, char a6)
{
  v106[4] = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 104);
  v87 = 0;
  v86 = 0u;
  v85 = 0u;
  v67 = v11;
  v93 = off_1F2A4E798;
  v94 = 0;
  v95 = a6;
  [v11 size];
  v97[0] = v12;
  v97[1] = v13;
  md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
  v88 = v14;
  v98 = [v11 multiSample];
  v15 = *(a3 + 24);
  v16 = *(v15 + 8);
  v17 = md::FrameGraph::renderQueueForPass(v16, a5[40]);
  if (v17)
  {
    v18 = *(*(v17 + 16) + 8 * a5[41]);
  }

  else
  {
    v18 = 0;
  }

  v77[0] = v18;
  v19 = md::FrameGraph::renderQueueForPass(v16, a5[42]);
  if (v19)
  {
    v20 = *(*(v19 + 16) + 8 * a5[43]);
  }

  else
  {
    v20 = 0;
  }

  v77[1] = v20;
  v21 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[44]);
  if (v21)
  {
    v22 = *(*(v21 + 16) + 8 * a5[45]);
  }

  else
  {
    v22 = 0;
  }

  v77[2] = v22;
  if (a5[48] == 1 && (v23 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[46])) != 0)
  {
    v73 = *(*(v23 + 16) + 8 * a5[47]);
  }

  else
  {
    v73 = 0;
  }

  if (a5[51] == 1 && (v24 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[49])) != 0)
  {
    v72 = *(*(v24 + 16) + 8 * a5[50]);
  }

  else
  {
    v72 = 0;
  }

  v82[0] = &unk_1F2A4E968;
  v83 = v82;
  v106[0] = &unk_1F2A4E800;
  v106[3] = v106;
  v105[0] = &unk_1F2A4E800;
  v105[3] = v105;
  v70 = *(a5 + 3);
  v71 = *(a5 + 2);
  if (v70 != v71)
  {
    std::vector<gdc::Entity>::vector[abi:nn200100](&__p, a5 + 2);
    v25 = v80 - __p;
    if (v80 != __p)
    {
      if (!((v25 >> 3) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v25 >> 3);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    *(&v102 + 1) = 0;
    operator new();
  }

  v26 = *(a2 + 8);
  v68 = md::LayoutContext::get<md::CameraContext>(v26);
  v74 = md::LayoutContext::get<md::SharedResourcesContext>(v26);
  v75 = gdc::Context::get<md::StyleLogicContext>(v26);
  v27 = *(*v75 + 520);
  v28 = *(*v75 + 528);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    if (!v27)
    {
      goto LABEL_58;
    }

    v27 = *(*v75 + 520);
    v29 = *(*v75 + 528);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *(v27 + 272);
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
      goto LABEL_26;
    }
  }

  else if (!v27)
  {
    goto LABEL_58;
  }

  v30 = *(v27 + 272);
LABEL_26:
  v31 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v101, *(a4 + 952));
  **(&v103 + 1) = v30;
  ggl::BufferMemory::~BufferMemory(v31);
  v32 = *a1;
  v69 = a1[1];
  if (*a1 != v69)
  {
    while (1)
    {
      v33 = *v32;
      if (!v83 || (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::operator()(v83, *v32) & 1) != 0)
      {
        break;
      }

LABEL_57:
      if (++v32 == v69)
      {
        goto LABEL_58;
      }
    }

    v84 = v33;
    v34 = *(v33 + 392);
    v35 = *(v34 + 752);
    if (v35)
    {
      if (v35 < 0x201)
      {
        v36 = 0;
        i = 512;
      }

      else
      {
        v36 = 0;
        for (i = 512; i < v35; i *= 2)
        {
          ++v36;
        }
      }

      v38 = *(v34 + 752);
      if (i > v35)
      {
        do
        {
          --v36;
          v39 = i <= 2 * v38;
          v38 *= 2;
        }

        while (!v39);
      }
    }

    else
    {
      v36 = 0;
    }

    v40 = *(v34 + 169);
    v41 = exp2((ceilf(v88) - (v36 + v40))) * (v35 >> 7);
    v42 = fmaxf(*(v68 + 3080) + *(v68 + 3076), 1.0);
    v91 = v41;
    v89 = v42;
    v92 = *(v68 + 3768) / (*(v68 + 1368) * (*(v33 + 80) - *(v33 + 64)));
    v44 = *(v33 + 224);
    v43 = *(v33 + 232);
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(&v85 + 1);
    *&v85 = v44;
    *(&v85 + 1) = v43;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    v47 = *(v33 + 240);
    v46 = *(v33 + 248);
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    v48 = *(&v86 + 1);
    *&v86 = v47;
    *(&v86 + 1) = v46;
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&__p, v85, 0);
    v101 = *v81;
    v102 = v81[1];
    v103 = v81[2];
    v104 = v81[3];
    ggl::BufferMemory::~BufferMemory(&__p);
    v96 = ggl::CullingGrid::intersectedCellsForView(&v101, 0.0);
    v90 = v40;
    v49 = (*(*v34 + 48))(v34);
    v50 = *v49;
    v51 = v49[1];
    while (1)
    {
      if (v50 == v51)
      {
        goto LABEL_57;
      }

      v52 = v94;
      v53 = (*(*a5 + 40))(a5, v52);

      if (v53)
      {
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v78, v85, 0);
        v54 = v84;
        v55 = v78[5];
        v56 = *(v50 + 8);
        (*(*a5 + 48))(&__p, a5, &v86, v55, v54 + 96, v56, v97, v88);

        ggl::BufferMemory::~BufferMemory(v78);
        v96 = ggl::CullingGrid::intersectedCellsForView(&__p, 0.0);
      }

      v57 = *(v50 + 8);
      if ((*(*a5 + 56))(a5, v33, v57, v96))
      {
        goto LABEL_55;
      }

      v58 = *(v50 + 8);
      v59 = (*(*a5 + 64))(a5, v58, 0);

      if (v59)
      {
        v60 = *(v50 + 8);
        v61 = (*(*a5 + 72))(a5, v60);

        geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&v93, *(v50 + 8));
        v62 = *v74;
        v63 = *(a2 + 16);
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v100, v106);
        HIBYTE(v65) = v61;
        LOBYTE(v65) = 0;
        md::_layoutPolygonGroup<md::VenueTileData>(v62, v63, v75, a4, v77, v73, v72, a5, &v84, v65, v100);
        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v100);

        if (v70 != v71)
        {
          break;
        }
      }

LABEL_56:
      v50 += 24;
    }

    v57 = *v74;
    v64 = *(a2 + 16);
    std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v99, v105);
    HIBYTE(v66) = v61;
    LOBYTE(v66) = 1;
    md::_layoutPolygonGroup<md::VenueTileData>(v57, v64, v75, a4, v77, v73, v72, a5, &v84, v66, v99);
    std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v99);
LABEL_55:

    goto LABEL_56;
  }

LABEL_58:
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v105);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v106);
  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::~__value_func[abi:nn200100](v82);
  v93 = off_1F2A4E798;

  if (*(&v86 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v86 + 1));
  }

  if (*(&v85 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v85 + 1));
  }
}

void sub_1B3298EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  operator delete(v58);
  if (v57)
  {
    operator delete(v57);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v59 - 184);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v59 - 152);
  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::~__value_func[abi:nn200100](&a43);
  a56 = a14;

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a51);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a49);
  }

  _Unwind_Resume(a1);
}

void md::_layoutPolygonGroup<md::VenueTileData>(void *a1, void **a2, uint64_t a3, uint64_t a4, ggl::CommandBuffer *a5, ggl::zone_mallocator *a6, uint64_t a7, _BYTE *a8, uint64_t a9, __int16 a10, uint64_t a11)
{
  v375 = *MEMORY[0x1E69E9840];
  v348 = 0;
  v332 = 0u;
  v333 = 0u;
  v334 = 0u;
  v328 = 0;
  v330 = 0;
  v324 = 0;
  v326 = 0;
  v17 = a1;
  v18 = *(*a3 + 520);
  v19 = *(*a3 + 528);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = *(v18 + 272);
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  else
  {
    v20 = *(v18 + 272);
  }

  [v17 textureManager];
  v336 = **v358;
  if (*&v358[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[8]);
  }

  v322 = a8;
  v323 = a4;
  v318 = a7;
  v337 = *([v17 alphaAtlas] + 24);
  v21 = *(a9 + 80);
  *v358 = a10;
  v346 = [v21 styleQueries:v358];

  if (!v346)
  {
    goto LABEL_67;
  }

  if (v346[1] == *v346)
  {
    goto LABEL_67;
  }

  v345 = 0;
  v342 = 0;
  *v340 = 0;
  v341 = 0;
  v338 = 0;
  v349 = 0;
  v344 = (*(*a8 + 96))(a8);
  v22 = *v346;
  if (v346[1] == *v346)
  {
    goto LABEL_67;
  }

  v316 = a2;
  v320 = a5;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = v20;
  do
  {
    v28 = *&v22[2 * v23];
    v29 = v22[2 * v23 + 1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v358, v28, v29);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    if (v358[32])
    {
      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v358 + 24), 0x8Au, 1u))
      {
        gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(138, 2, *(*v358 + 24));
      }

      v26 |= md::_polygonIsVisibleWithQueryLocker(v358, *(a9 + 48));
      if (v26)
      {
        if (*(a9 + 48) >= 0x17)
        {
          v30 = 23;
        }

        else
        {
          v30 = *(a9 + 48);
        }

        v31 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v358 + 24), 420, v30, 2, 0) == 0;
      }

      else
      {
        v31 = 0;
      }

      v347 = v31;
      if ((v24 & 1) == 0)
      {
        if (*(a9 + 48) >= 0x17)
        {
          v32 = 23;
        }

        else
        {
          v32 = *(a9 + 48);
        }

        LODWORD(v342) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v358 + 24), 104, v32, 2, 0);
      }

      if ((v24 & 1) == 0)
      {
        if (*(a9 + 48) >= 0x17)
        {
          v33 = 23;
        }

        else
        {
          v33 = *(a9 + 48);
        }

        v345 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v358 + 24), 319, v33, 2, 0);
      }

      if (gss::FeatureAttributeSet::getValueForAttributeKey(*((*v346)[2 * v23] + 240), *((*v346)[2 * v23] + 248), 187, v353))
      {
        v349 = 1;
      }

      if (v358[32])
      {
        (*(**v358 + 56))(*v358);
      }

      v24 = 1;
    }

    if (*&v358[24])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[24]);
    }

    if (*&v358[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[8]);
    }

    v23 = ++v25;
    v22 = *v346;
  }

  while (v25 < ((v346[1] - *v346) >> 4));
  v34 = v320;
  if ((v26 & 1) == 0)
  {
LABEL_67:
  }

  else
  {
    v35 = *v22;
    v36 = v22[1];
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v358, v35, v36);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v36);
    }

    LOBYTE(v373[0]) = 0;
    v37 = v322;
    if (v358[32] == 1)
    {
      hasValueForKey = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v358 + 24), 0x8Au, 1u);
      if (hasValueForKey)
      {
        LOBYTE(hasValueForKey) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(138, 2, *(*v358 + 24));
      }

      v340[0] = (*(*v322 + 24))(v322, hasValueForKey, v373);
      v39 = *(*v358 + 24);
      v40 = fminf(fmaxf(*(a9 + 48), 0.0), 23.0);
      v41 = *v39;
      if (*v39 && (v42 = *v41, LODWORD(v41) = *v41 == 1.0, *(v39 + 10) == 1) && (v42 != 0.0 ? (v43 = v42 == 1.0) : (v43 = 1), !v43) || (v44 = *(v39 + v41 + 11), v42 = 0.0, v44 == 2))
      {
        v353[0] = 1;
        LOBYTE(v367) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 329, 0, v353, v40);
        v312 = v27;
        v314 = v313;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 329, 1, &v367, v40);
        v46 = v314 + ((v315 - v314) * v42);
        v27 = v312;
      }

      else
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v358 + 24), 329, v44, 0, v40);
        v46 = v45;
      }

      v47 = *(a9 + 64);
      v48 = v47 * (*(*v322 + 80))(v322) * v46;
      *(&v342 + 1) = v48;
      v49 = *(*v358 + 24);
      v50 = *v49;
      if (*v49)
      {
        LOBYTE(v50) = *(v49 + 9);
      }

      v338 = v50 & (v27 > 0.0);
      if (*(a9 + 48) >= 0x17)
      {
        v51 = 23;
      }

      else
      {
        v51 = *(a9 + 48);
      }

      v348 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v49, 420, v51, 2, 0);
      v52 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(*v316, v316[1]);
      v53 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 0, *(*v358 + 24));
      v54 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 1u, *(*v358 + 24));
      if (v53)
      {
        md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v353, v52, v358, 0, *(a9 + 48));
      }

      else
      {
        md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v353, v52, v358, *(a9 + 48), 0);
      }

      v329 = *v353;
      v55 = *(a9 + 48);
      v56 = v55;
      v57 = *(*v358 + 24);
      if (gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(v57, 0x14Cu, v55))
      {
        if (v53)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v353, v57, 332, 0, fminf(fmaxf(v55, 0.0), 23.0));
        }

        else
        {
          if (v56 >= 0x17)
          {
            v58 = 23;
          }

          else
          {
            v58 = v55;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v353, v57, 332, v58, 0, 0);
        }

        v34 = v320;
        v37 = v322;
        v331 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v353)), vdupq_n_s32(0x37800080u));
        v55 = *(a9 + 48);
        v57 = *(*v358 + 24);
        v56 = v55;
      }

      else
      {
        v331 = v329;
        v34 = v320;
        v37 = v322;
      }

      if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v57, 0x5Cu, v56))
      {
        if (v54)
        {
          md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v353, v52, v358, 1u, v55);
        }

        else
        {
          md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v353, v52, v358, v56, 1u);
        }

        v325 = *v353;
      }

      else
      {
        v325 = v329;
      }

      v59 = *(a9 + 48);
      v60 = *(*v358 + 24);
      if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v60, 0x14Cu, v59))
      {
        if (v54)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v353, v60, 332, 1u, fminf(fmaxf(v59, 0.0), 23.0));
        }

        else
        {
          if (v59 >= 0x17)
          {
            v62 = 23;
          }

          else
          {
            v62 = v59;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v353, v60, 332, v62, 1u, 0);
        }

        v61 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v353)), vdupq_n_s32(0x37800080u));
      }

      else
      {
        v61 = v325;
      }

      v327 = v61;
    }

    else
    {
      v329 = 0uLL;
      v331 = 0uLL;
      v325 = 0uLL;
      v327 = 0uLL;
    }

    v340[1] = *(a9 + 52) + LOBYTE(v373[0]);
    v341 = v37[10] + LOBYTE(v373[0]);
    if (v358[32] == 1)
    {
      (*(**v358 + 56))(*v358);
    }

    if (*&v358[24])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[24]);
    }

    if (*&v358[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[8]);
    }

    v63 = *(a9 + 80);
    v64 = [v63 sourceTexture];
    if (v64)
    {
      v65 = v64;
    }

    else
    {
      v65 = v336;
    }

    v328 = v65;

    v66 = *(a9 + 80);
    v67 = [v66 targetTexture];
    if (v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = v336;
    }

    v324 = v68;

    v69 = *(a9 + 80);
    v70 = [v69 sourceRoofTexture];
    if (v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = v65;
    }

    v330 = v71;

    v72 = *(a9 + 80);
    v73 = [v72 targetRoofTexture];
    if (v73)
    {
      v74 = v73;
    }

    else
    {
      v74 = v68;
    }

    v326 = v74;

    v343 = 1065353216;
    v75 = v329.f32[3] >= 1.0 && (v338 != 1 || v325.f32[3] >= 1.0);
    v339 = v75;
    v76 = *(a9 + 80);
    md::PolygonRenderResources::worldTransformForPolygonGroup(v358, v76, *(a9 + 44));
    v335[0] = *v358;
    v335[1] = *&v358[16];
    v335[2] = *&v358[32];
    v335[3] = *&v358[48];

    v77 = *(a9 + 80);
    v78 = (*(*v322 + 40))(v322, v77);

    v79 = md::PolygonViewConstantsFrameCache::pop((a4 + 240));
    v81 = *v79;
    v80 = v79[1];
    if (v80)
    {
      atomic_fetch_add_explicit((v80 + 8), 1uLL, memory_order_relaxed);
    }

    v82 = *(&v332 + 1);
    *&v332 = v81;
    *(&v332 + 1) = v80;
    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v82);
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v373, *(a9 + 8), 0);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v353, v332, 1);
    v83 = v374;
    v84 = *&v353[40];
    *(*&v353[40] + 64) = *(v374 + 64);
    if (v78)
    {
      v85 = *a9;
      v86 = *(a9 + 80);
      (*(*v322 + 48))(v358, v322, a9 + 24, v83, v85 + 96, v86, a9 + 104, *(a9 + 44));
      v87 = 0;
      v88 = *&v353[40];
      do
      {
        *(v88 + v87) = *&v358[v87];
        v87 += 4;
      }

      while (v87 != 64);
    }

    else
    {
      for (i = 0; i != 64; i += 4)
      {
        *(v84 + i) = *(v83 + i);
      }
    }

    ggl::BufferMemory::~BufferMemory(v353);
    v91 = *(a9 + 24);
    v90 = *(a9 + 32);
    if (v90)
    {
      atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
    }

    v92 = *(&v334 + 1);
    *&v334 = v91;
    *(&v334 + 1) = v90;
    if (v92)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v92);
    }

    if (*(&v342 + 1) > 0.00000011921)
    {
      v93 = md::PolygonViewConstantsFrameCache::pop((a4 + 240));
      v94 = *v93;
      v95 = v93[1];
      if (v95)
      {
        atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
      }

      v96 = v65;
      v97 = *(&v333 + 1);
      *&v333 = v94;
      *(&v333 + 1) = v95;
      if (v97)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v97);
        v94 = v333;
      }

      ggl::DataAccess<ggl::Tile::View>::DataAccess(v350, v94, 1);
      v98 = v374;
      v99 = v351;
      *(v351 + 64) = *(v374 + 64);
      if (v78)
      {
        v100 = *(a9 + 80);
        (*(*v322 + 48))(v353, *(a9 + 44));
        memset(v369, 0, sizeof(v369));
        v368 = 0u;
        v367 = 1065353216;
        v369[0] = 1065353216;
        v372 = 1065353216;
        v370 = 0;
        v369[5] = 1065353216;
        v371 = HIDWORD(v342);
        gm::operator*<float,4,4,4>(v358, v353, &v367);
        v101 = 0;
        v102 = v351;
        v34 = v320;
        v65 = v96;
        do
        {
          *(v102 + v101) = *&v358[v101];
          v101 += 16;
        }

        while (v101 != 64);
      }

      else
      {
        memset(&v353[20], 0, 36);
        *&v353[4] = 0u;
        *v353 = 1065353216;
        *&v353[20] = 1065353216;
        *&v353[40] = 1065353216;
        *&v354 = HIDWORD(v342) | 0x3F80000000000000;
        gm::operator*<float,4,4,4>(v358, v98, v353);
        for (j = 0; j != 64; j += 16)
        {
          *(v99 + j) = *&v358[j];
        }

        v34 = v320;
        v65 = v96;
      }

      ggl::BufferMemory::~BufferMemory(v350);
    }

    ggl::BufferMemory::~BufferMemory(v373);

    v104 = v65;
    v105 = v322;
    v321 = md::_commandBufferForConfiguration(v322, &v332, v34, *(a9 + 96));
    if (v321)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v366, a11);
      v106 = *(a9 + 96);
      v107 = v322[8];
      v108 = (*(*v322 + 88))(v322, *(a9 + 80));
      if (v107)
      {
        v109 = 0;
      }

      else
      {
        v109 = v106;
      }

      if ((v108 & 0x100) != 0)
      {
        v110 = v108;
      }

      else
      {
        v110 = v109;
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v367, v366);
      LOBYTE(v350[0]) = 0;
      a4 = v323;
      if (v338 == 1)
      {
        v111 = md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(v323, a9, &v332, &v328, &v324, v350);
      }

      else
      {
        v111 = md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(*(v323 + 176), a9, &v332, &v328, v350);
      }

      v112 = v111;
      *v353 = a9;
      *&v353[8] = v323;
      *&v353[16] = &v367;
      *&v353[24] = v321;
      if (v111)
      {
        v113 = v340[1];
        v114 = LOBYTE(v350[0]);
        if (LOBYTE(v350[0]) == 1)
        {
          if (v340[0] == 1)
          {
            v115 = md::PolygonRenderResources::renderStateForBlendingEqual(v323, v340[1], v341);
          }

          else
          {
            v115 = v323 + 1088;
            v113 = v341;
          }
        }

        else
        {
          v115 = *(v323 + 8 * (v322[8] | (2 * v340[0]) | (16 * v110)) + 272);
        }

        v116 = ggl::RenderItem::RenderItem(v358, "");
        *&v358[40] = v113;
        *&v358[24] = v115;
        *&v358[32] = v112;
        v117 = *(*a9 + 392);
        v118 = v117 ? v117 + 168 : 0;
        *&v358[48] = (*(*v322 + 32))(v322, v339, v342, 0, v118, 1, v104 != v336, *v346, v116, 0);
        md::generateStrokeRenderItem<md::VenueTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v353, v358);
        if (v114)
        {
          if (v340[0])
          {
            v119 = v340[1];
          }

          else
          {
            v119 = 0;
          }

          v120 = md::PolygonRenderResources::renderStateForBlendingEqual(v323, v341, v119);
          if (v338 == 1)
          {
            v121 = md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(v323, a9, &v332, &v328, &v324, v350);
            v122 = *(v323 + 64);
            v123 = *(v323 + 72);
          }

          else
          {
            v121 = md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(*(v323 + 176), a9, &v332, &v328, v350);
            v122 = *(v323 + 16);
            v123 = *(v323 + 24);
          }

          v373[0] = v122;
          v373[1] = v123;
          if (v123)
          {
            atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v121, v373);
            std::__shared_weak_count::__release_shared[abi:nn200100](v123);
          }

          else
          {
            ggl::PipelineSetup::setState(v121, v373);
          }

          *&v358[40] = v341;
          *&v358[24] = v120;
          *&v358[32] = v121;
          md::generateStrokeRenderItem<md::VenueTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v353, v358);
        }
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v367);
      v124 = *v346;
      if (v346[1] != *v346)
      {
        v125 = 0;
        v126 = 0;
        v127 = fminf(fmaxf(*(a9 + 48), 0.0), 23.0);
        while (1)
        {
          v128 = *&v124[2 * v125];
          v129 = v124[2 * v125 + 1];
          if (v129)
          {
            atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v358, v128, v129);
          if (v129)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v129);
          }

          if (v358[32] == 1)
          {
            break;
          }

          v136 = 0;
LABEL_200:
          if (*&v358[24])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[24]);
          }

          if (*&v358[8])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v358[8]);
          }

          if (v136)
          {
            std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v373, v366);
            v352 = 0;
            a4 = v323;
            if (v338 == 1)
            {
              v140 = md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(v323, a9, &v332, &v328, &v324, &v352);
            }

            else
            {
              v140 = md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(*(v323 + 176), a9, &v332, &v328, &v352);
            }

            v141 = v140;
            *v353 = a9;
            *&v353[8] = v323;
            *&v353[16] = v373;
            *&v353[24] = v321;
            if (v140)
            {
              v142 = v340[1];
              v143 = v352;
              if (v352 == 1)
              {
                if (v340[0] == 1)
                {
                  v144 = md::PolygonRenderResources::renderStateForBlendingEqual(v323, v340[1], v341);
                }

                else
                {
                  v144 = v323 + 1088;
                  v142 = v341;
                }
              }

              else
              {
                v144 = *(v323 + 8 * (v322[8] | (2 * v340[0]) | (16 * v110)) + 272);
              }

              v145 = ggl::RenderItem::RenderItem(v358, "");
              *&v358[40] = v142;
              *&v358[24] = v144;
              *&v358[32] = v141;
              v146 = *(*a9 + 392);
              v147 = v146 ? v146 + 168 : 0;
              *&v358[48] = (*(*v322 + 32))(v322, v339, v342, 0, v147, 2, v328 != v336, *v346, v145, 0);
              md::generateStrokeRenderItem<md::VenueTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v353, v358);
              if (v143)
              {
                if (v340[0])
                {
                  v148 = v340[1];
                }

                else
                {
                  v148 = 0;
                }

                v149 = md::PolygonRenderResources::renderStateForBlendingEqual(v323, v341, v148);
                if (v338 == 1)
                {
                  v150 = md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(v323, a9, &v332, &v328, &v324, &v352);
                  v151 = *(v323 + 64);
                  v152 = *(v323 + 72);
                }

                else
                {
                  v150 = md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(*(v323 + 176), a9, &v332, &v328, &v352);
                  v151 = *(v323 + 16);
                  v152 = *(v323 + 24);
                }

                v350[0] = v151;
                v350[1] = v152;
                if (v152)
                {
                  atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
                  ggl::PipelineSetup::setState(v150, v350);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v152);
                }

                else
                {
                  ggl::PipelineSetup::setState(v150, v350);
                }

                *&v358[40] = v341;
                *&v358[24] = v149;
                *&v358[32] = v150;
                md::generateStrokeRenderItem<md::VenueTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v353, v358);
              }
            }

            std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v373);
            goto LABEL_233;
          }

          v125 = ++v126;
          v124 = *v346;
          a4 = v323;
          if (v126 >= ((v346[1] - *v346) >> 4))
          {
            goto LABEL_233;
          }
        }

        v130 = *(*v358 + 24);
        v131 = *v130;
        if (!*v130 || (v132 = *v131, LODWORD(v131) = *v131 == 1.0, *(v130 + 10) != 1) || (v132 != 0.0 ? (v133 = v132 == 1.0) : (v133 = 1), v133))
        {
          v134 = *(v130 + v131 + 11);
          if (v134 != 2)
          {
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v358 + 24), 404, v134, 0, v127);
LABEL_198:
            v136 = v135 > 0.0;
            (*(**v358 + 56))(*v358);
            goto LABEL_200;
          }

          v132 = 0.0;
        }

        v353[0] = 1;
        LOBYTE(v373[0]) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v130, 404, 0, v353, v127);
        v138 = v137;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v130, 404, 1, v373, v127);
        v135 = v138 + ((v139 - v138) * v132);
        goto LABEL_198;
      }

LABEL_233:
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v366);
      if (v347)
      {
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v365, a11);
        v153 = *(a9 + 96);
        v154 = v322[8];
        v155 = (*(*v322 + 88))(v322, *(a9 + 80));
        if ((v153 & (v154 == 0)) != 0)
        {
          v156 = 2;
        }

        else
        {
          v156 = 0;
        }

        if ((v155 & 0x100) != 0)
        {
          v156 = v155;
        }

        if (v339)
        {
          v157 = 0;
        }

        else
        {
          v157 = 8;
        }

        v158 = v323 + 272;
        v159 = *(v323 + 272 + 8 * (v157 | (2 * v340[0]) | (16 * v156) | v339));
        if (v338 == 1)
        {
          v160 = md::animatingPolygonFillPipelineSetup<md::VenueTileData>(v323, a9, &v332, &v332, &v328, &v324, 0);
        }

        else
        {
          v160 = md::polygonFillPipelineSetup<md::VenueTileData>(v323, a9, &v332, &v332, &v328, 0);
        }

        v161 = v160;
        a4 = v323;
        if (v160)
        {
          v162 = ggl::RenderItem::RenderItem(v353, "");
          v163 = *(*a9 + 392);
          if (v163)
          {
            v164 = v163 + 168;
          }

          else
          {
            v164 = 0;
          }

          v165 = (*(*v322 + 32))(v322, v339, v342, 0, v164, 0, v328 != v336, *v346, v162, 0);
          *&v353[40] = v340[1];
          *&v353[24] = v159;
          *&v353[32] = v161;
          *&v353[48] = v165;
          v166 = [*(a9 + 80) fillMeshes];
          v167 = *v166;
          v168 = *(v166 + 8);
          if (*v166 != v168)
          {
            v169 = 0;
            do
            {
              v170 = *(a9 + 80);
              v171 = *(a9 + 100);
              std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v367, v365);
              v172 = [v170 commitRangesToFillRenderItemBatcher:a4 + 984 forMeshAtIndex:v169 cullingMask:v171 featureIdPredicate:&v367];
              std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v367);

              v173 = *v167;
              *v358 = &off_1F2A5D8B8;
              *&v358[8] = *&v353[8];
              *&v358[24] = *&v353[24];
              *&v358[40] = *&v353[40];
              v361 = v357;
              v360 = v356;
              v359 = v355;
              *&v358[56] = v354;
              v174 = *(a4 + 1072);
              v175 = v174[1];
              if (v175 == *(a4 + 1080))
              {
                v174 = *v174;
                if (!v174)
                {
                  v174 = malloc_type_malloc(120 * v175 + 16, 0x1020040EDED9539uLL);
                  *v174 = 0;
                  v174[1] = 0;
                  **(a4 + 1072) = v174;
                }

                *(a4 + 1072) = v174;
                v175 = v174[1];
              }

              v176 = &v174[15 * v175];
              v174[1] = v175 + 1;
              v176[2] = &off_1F2A5D8B8;
              v177 = *&v358[8];
              v178 = *&v358[24];
              *(v176 + 7) = *&v358[40];
              *(v176 + 5) = v178;
              *(v176 + 3) = v177;
              v179 = *&v358[56];
              v180 = v359;
              v181 = v360;
              *(v176 + 15) = v361;
              *(v176 + 13) = v181;
              *(v176 + 11) = v180;
              *(v176 + 9) = v179;
              ggl::RenderItem::~RenderItem(v358);
              v176[10] = v173;
              v182 = *v172;
              v176[13] = *v172;
              v176[14] = (v172[1] - v182) >> 4;
              ggl::CommandBuffer::pushRenderItem(v321, (v176 + 2));
              ++v169;
              v167 += 2;
              a4 = v323;
            }

            while (v167 != v168);
          }

          v105 = v322;
          v158 = v323 + 272;
        }

        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v365);
        if (*(&v342 + 1) > 0.00000011921)
        {
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v364, a11);
          if (v339)
          {
            v183 = 0;
          }

          else
          {
            v183 = 8;
          }

          v184 = *(v158 + 8 * (((v183 | (2 * v340[0])) | 0xFFFFFFE1) & 0x2BLL));
          if (v338 == 1)
          {
            v185 = md::animatingPolygonFillPipelineSetup<md::VenueTileData>(a4, a9, &v333, &v332, &v328, &v324, 1);
          }

          else
          {
            v185 = md::polygonFillPipelineSetup<md::VenueTileData>(a4, a9, &v333, &v332, &v328, 1);
          }

          v186 = v185;
          v187 = ggl::RenderItem::RenderItem(v353, "");
          *&v353[40] = v340[1];
          *&v353[24] = v184;
          *&v353[32] = v186;
          v188 = *(*a9 + 392);
          if (v188)
          {
            v189 = v188 + 168;
          }

          else
          {
            v189 = 0;
          }

          *&v353[48] = (*(*v105 + 32))(v105, v339, v342, 1, v189, 0, v328 != v336, *v346, v187, 0);
          v190 = [*(a9 + 80) fillMeshes];
          v191 = *v190;
          v192 = *(v190 + 8);
          if (*v190 != v192)
          {
            v193 = 0;
            do
            {
              v194 = *(a9 + 80);
              v195 = *(a9 + 100);
              std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v367, v364);
              v196 = [v194 commitRangesToFillRenderItemBatcher:a4 + 984 forMeshAtIndex:v193 cullingMask:v195 featureIdPredicate:&v367];
              std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v367);

              v197 = *v191;
              *v358 = &off_1F2A5D8B8;
              *&v358[8] = *&v353[8];
              *&v358[24] = *&v353[24];
              *&v358[40] = *&v353[40];
              v361 = v357;
              v360 = v356;
              v359 = v355;
              *&v358[56] = v354;
              v198 = *(a4 + 1072);
              v199 = v198[1];
              if (v199 == *(a4 + 1080))
              {
                v198 = *v198;
                if (!v198)
                {
                  v198 = malloc_type_malloc(120 * v199 + 16, 0x1020040EDED9539uLL);
                  *v198 = 0;
                  v198[1] = 0;
                  **(a4 + 1072) = v198;
                }

                *(a4 + 1072) = v198;
                v199 = v198[1];
              }

              v200 = &v198[15 * v199];
              v198[1] = v199 + 1;
              v200[2] = &off_1F2A5D8B8;
              v201 = *&v358[8];
              v202 = *&v358[24];
              *(v200 + 7) = *&v358[40];
              *(v200 + 5) = v202;
              *(v200 + 3) = v201;
              v203 = *&v358[56];
              v204 = v359;
              v205 = v360;
              *(v200 + 15) = v361;
              *(v200 + 13) = v205;
              *(v200 + 11) = v204;
              *(v200 + 9) = v203;
              ggl::RenderItem::~RenderItem(v358);
              v200[10] = v197;
              v206 = *v196;
              v200[13] = *v196;
              v200[14] = (v196[1] - v206) >> 4;
              ggl::CommandBuffer::pushRenderItem(v321, (v200 + 2));
              ++v193;
              v191 += 2;
              a4 = v323;
            }

            while (v191 != v192);
          }

          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v364);
          v105 = v322;
        }
      }
    }

    if (a6 && v105[52] == 1 && md::_maskTarget(&v332) == 1)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v363, a11);
      v207 = ggl::FragmentedPool<ggl::PolygonStrokeMask::MeshPipelineSetup>::pop(*(a4 + 184));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v207[17], v207[29], v332, *(&v332 + 1));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v207[17], v207[29], v334, *(&v334 + 1));
      *v207[21] = v337;
      v317 = v207;
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v358, *(v207[17] + 32));
      v208 = 0;
      v209 = *&v358[40];
      do
      {
        *(v209 + v208) = *(v335 + v208);
        v208 += 4;
      }

      while (v208 != 64);
      *(v209 + 320) = 0;
      *(v209 + 328) = 0;
      *(v209 + 464) = *(a9 + 56);
      v210 = 1.0 / *(a9 + 64);
      *(v209 + 468) = v210;
      *(v209 + 472) = v344;
      v211 = *v346;
      if (v346[1] != *v346)
      {
        v212 = 0;
        v213 = 0;
        v214 = 1.0;
        v215 = -0.5;
        v216 = 0.5;
        v217 = -1.0;
        v218 = 1.75;
        while (1)
        {
          v219 = *&v211[2 * v212];
          v220 = v211[2 * v212 + 1];
          if (v220)
          {
            atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v353, v219, v220);
          if (v220)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v220);
          }

          if (v353[32] == 1)
          {
            break;
          }

          v228 = 0.0;
          v230 = v345;
LABEL_323:
          if (v230 == 1)
          {
            v247 = 0.0;
          }

          else
          {
            v247 = v214;
          }

          if (v230 == 1)
          {
            v248 = v217;
          }

          else
          {
            v248 = 0.0;
          }

          if (v230 == 2)
          {
            v247 = v216;
            v248 = v215;
          }

          v249 = *&v358[40];
          v250 = v228 * v218 * *(a9 + 64);
          v251 = *&v358[40] + 4 * v212;
          *(v251 + 336) = v247 * v250;
          *(v251 + 400) = v248 * v250;
          *(v249 + 476) = 0;
          v252 = v249 + 16 * v212;
          *(v252 + 64) = 0;
          *(v252 + 72) = 0;
          if (v353[32] == 1)
          {
            (*(**v353 + 56))(*v353);
          }

          if (*&v353[24])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v353[24]);
          }

          if (*&v353[8])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v353[8]);
          }

          v212 = ++v213;
          v211 = *v346;
          if (v213 >= ((v346[1] - *v346) >> 4))
          {
            goto LABEL_347;
          }
        }

        v221 = *(*v353 + 24);
        v222 = fminf(fmaxf(*(a9 + 48), 0.0), 23.0);
        v223 = *v221;
        if (!*v221 || (v224 = *v223, LODWORD(v223) = *v223 == v214, *(v221 + 10) != 1) || (v224 != 0.0 ? (v225 = v224 == v214) : (v225 = 1), v225))
        {
          v226 = *(v221 + v223 + 11);
          if (v226 != 2)
          {
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v353 + 24), 466, v226, 0, v222);
            v228 = v227;
LABEL_296:
            v229 = *(a9 + 48);
            v230 = v345;
            v231 = *(*v353 + 24);
            if (v229 >= 0x17)
            {
              v232 = 23;
            }

            else
            {
              v232 = v229;
            }

            v233 = *v231;
            if (*v231 && (v234 = *v233, LODWORD(v233) = *v233 == v214, *(v231 + 10) == 1) && (v234 != 0.0 ? (v235 = v234 == v214) : (v235 = 1), !v235) || (v236 = *(v231 + v233 + 11), v236 == 2))
            {
              v237 = *(v231 + 16);
              if (v237)
              {
                v238 = *(v237 + 72);
                if (v238)
                {
                  v239 = *v238 + 120 * *(v238 + v232 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v239, 0x1D3u) != *(v239 + 12))
                  {
                    goto LABEL_321;
                  }
                }

                if (*(v231 + 56))
                {
                  v240 = *(v231 + 48);
                  v241 = 8 * *(v231 + 56);
                  while (1)
                  {
                    v242 = *(*v240 + 72);
                    if (v242)
                    {
                      v243 = *v242 + 120 * *(v242 + v232 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v243, 0x1D3u) != *(v243 + 12))
                      {
                        goto LABEL_321;
                      }
                    }

                    v240 += 8;
                    v236 = 1;
                    v241 -= 8;
                    if (!v241)
                    {
                      goto LABEL_318;
                    }
                  }
                }
              }

              v236 = 1;
            }

LABEL_318:
            v244 = *(v231 + 16 * v236 + 16);
            if (!v244)
            {
LABEL_322:
              v105 = v322;
              a4 = v323;
              goto LABEL_323;
            }

            v245 = *(v244 + 72);
            if (!v245 || (v246 = *v245 + 120 * *(v245 + v232 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v246, 0x1D3u) == *(v246 + 12)))
            {
              v253 = v231 + 16 * v236;
              if (!*(v253 + 56))
              {
                goto LABEL_322;
              }

              v254 = *(v253 + 48);
              v255 = 8 * *(v253 + 56);
              while (1)
              {
                v256 = *(*v254 + 72);
                if (v256)
                {
                  v257 = *v256 + 120 * *(v256 + v232 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v257, 0x1D3u) != *(v257 + 12))
                  {
                    break;
                  }
                }

                v254 += 8;
                v255 -= 8;
                if (!v255)
                {
                  goto LABEL_322;
                }
              }
            }

LABEL_321:
            v230 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v231, 467, v232, 2, 0);
            goto LABEL_322;
          }

          v224 = 0.0;
        }

        LOBYTE(v367) = 1;
        LOBYTE(v373[0]) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v221, 466, 0, &v367, v222);
        v259 = v258;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v221, 466, 1, v373, v222);
        v228 = v259 + ((v260 - v259) * v224);
        v218 = 1.75;
        v217 = -1.0;
        v216 = 0.5;
        v215 = -0.5;
        v214 = 1.0;
        goto LABEL_296;
      }

LABEL_347:
      ggl::BufferMemory::~BufferMemory(v358);
      v261 = a4;
      v262 = *(a4 + 8 * ((v105[8] | (2 * v340[0])) & 3) + 272);
      *&v263 = ggl::RenderItem::RenderItem(v353, "").u64[0];
      *&v353[40] = *(a9 + 52) + *(v261 + 912);
      *&v353[24] = v262;
      *&v353[32] = v317;
      *&v353[48] = 0;
      v264 = [*(a9 + 80) strokeMeshes];
      v265 = *v264;
      v266 = *(v264 + 8);
      a4 = v323;
      if (*v264 != v266)
      {
        v267 = 0;
        do
        {
          v268 = *(a9 + 80);
          v269 = *(a9 + 100);
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v367, v363);
          v270 = [v268 commitRangesToStrokeRenderItemBatcher:a4 + 984 forMeshAtIndex:v267 cullingMask:v269 featureIdPredicate:&v367];
          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v367);

          v271 = *v265;
          *v358 = &off_1F2A5D8B8;
          *&v358[8] = *&v353[8];
          *&v358[24] = *&v353[24];
          *&v358[40] = *&v353[40];
          v361 = v357;
          v360 = v356;
          v359 = v355;
          *&v358[56] = v354;
          v272 = *(a4 + 1072);
          v273 = v272[1];
          if (v273 == *(a4 + 1080))
          {
            v272 = *v272;
            if (!v272)
            {
              v272 = malloc_type_malloc(120 * v273 + 16, 0x1020040EDED9539uLL);
              *v272 = 0;
              v272[1] = 0;
              **(a4 + 1072) = v272;
            }

            *(a4 + 1072) = v272;
            v273 = v272[1];
          }

          v274 = &v272[15 * v273];
          v272[1] = v273 + 1;
          v274[2] = &off_1F2A5D8B8;
          v275 = *&v358[8];
          v276 = *&v358[24];
          *(v274 + 7) = *&v358[40];
          *(v274 + 5) = v276;
          *(v274 + 3) = v275;
          v277 = *&v358[56];
          v278 = v359;
          v279 = v360;
          *(v274 + 15) = v361;
          *(v274 + 13) = v279;
          *(v274 + 11) = v278;
          *(v274 + 9) = v277;
          ggl::RenderItem::~RenderItem(v358);
          v274[10] = v271;
          v280 = *v270;
          v274[13] = *v270;
          v274[14] = (v270[1] - v280) >> 4;
          ggl::CommandBuffer::pushRenderItem(a6, (v274 + 2));
          ++v267;
          v265 += 2;
          a4 = v323;
        }

        while (v265 != v266);
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v363);
      v105 = v322;
    }

    if (v318 && v105[53] == 1 && v349 == 1)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v362, a11);
      v281 = ggl::FragmentedPool<ggl::HillshadeFillMask::CompressedMeshPipelineSetup>::pop(*(a4 + 192));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v281[17], v281[29], v332, *(&v332 + 1));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v281[17], v281[29], v334, *(&v334 + 1));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v358, *(v281[17] + 32));
      v282 = 0;
      v283 = *&v358[40];
      do
      {
        *(v283 + v282) = *(v335 + v282);
        v282 += 4;
      }

      while (v282 != 64);
      *(v283 + 64) = *(a9 + 56);
      v284 = *(a9 + 80);
      v285 = [v284 origin];
      *(*&v358[40] + 72) = *v285;

      v286 = *(a9 + 80);
      [v286 size];
      v287 = *&v358[40];
      *(*&v358[40] + 80) = v288;
      *(v287 + 84) = v289;

      ggl::BufferMemory::~BufferMemory(v358);
      v290 = *(a4 + 8 * ((v339 | (2 * v340[0])) & 3) + 272);
      v291 = ggl::RenderItem::RenderItem(v353, "");
      v292 = *(*a9 + 392);
      if (v292)
      {
        v293 = v292 + 168;
      }

      else
      {
        v293 = 0;
      }

      v294 = (*(*v322 + 32))(v322, 1, v342, 0, v293, 0, 0, *v346, v291, 0);
      *&v353[40] = v340[1];
      *&v353[24] = v290;
      *&v353[32] = v281;
      *&v353[48] = v294;
      v295 = [*(a9 + 80) fillMeshes];
      v296 = *v295;
      v297 = *(v295 + 8);
      if (*v295 != v297)
      {
        v298 = 0;
        do
        {
          v299 = *(a9 + 80);
          v300 = *(a9 + 100);
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v367, v362);
          v301 = [v299 commitRangesToFillRenderItemBatcher:a4 + 984 forMeshAtIndex:v298 cullingMask:v300 featureIdPredicate:&v367];
          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v367);

          v302 = *v296;
          *v358 = &off_1F2A5D8B8;
          *&v358[8] = *&v353[8];
          *&v358[24] = *&v353[24];
          *&v358[40] = *&v353[40];
          v361 = v357;
          v360 = v356;
          v359 = v355;
          *&v358[56] = v354;
          v303 = *(a4 + 1072);
          v304 = v303[1];
          if (v304 == *(a4 + 1080))
          {
            v303 = *v303;
            if (!v303)
            {
              v303 = malloc_type_malloc(120 * v304 + 16, 0x1020040EDED9539uLL);
              *v303 = 0;
              v303[1] = 0;
              **(a4 + 1072) = v303;
            }

            *(a4 + 1072) = v303;
            v304 = v303[1];
          }

          v305 = &v303[15 * v304];
          v303[1] = v304 + 1;
          v305[2] = &off_1F2A5D8B8;
          v306 = *&v358[8];
          v307 = *&v358[24];
          *(v305 + 7) = *&v358[40];
          *(v305 + 5) = v307;
          *(v305 + 3) = v306;
          v308 = *&v358[56];
          v309 = v359;
          v310 = v360;
          *(v305 + 15) = v361;
          *(v305 + 13) = v310;
          *(v305 + 11) = v309;
          *(v305 + 9) = v308;
          ggl::RenderItem::~RenderItem(v358);
          v305[10] = v302;
          v311 = *v301;
          v305[13] = *v301;
          v305[14] = (v301[1] - v311) >> 4;
          ggl::CommandBuffer::pushRenderItem(v321, (v305 + 2));
          ++v298;
          v296 += 2;
          a4 = v323;
        }

        while (v296 != v297);
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v362);
    }
  }

  if (*(&v334 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v334 + 1));
  }

  if (*(&v333 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v333 + 1));
  }

  if (*(&v332 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v332 + 1));
  }
}

void sub_1B329B32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36)
{
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v36 - 216);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&STACK[0x308]);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a36);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  _Unwind_Resume(a1);
}

void *md::animatingPolygonFillPipelineSetup<md::VenueTileData>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = ggl::FragmentedPool<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup>::pop(*(a1 + 224));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v14[17], v14[29], *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v14[17], v14[29], *(a4 + 32), *(a4 + 40));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v14[17], v14[29], *(a1 + 952), *(a1 + 960));
  v15 = 24;
  if (!a7)
  {
    v15 = 0;
  }

  *v14[21] = *(a5 + v15);
  *(v14[21] + 8) = *(a6 + v15);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v33, *(v14[17] + 32));
  v16 = 0;
  v17 = v34;
  do
  {
    *(v17 + v16) = *(a4 + 48 + v16);
    v16 += 4;
  }

  while (v16 != 64);
  if (a7)
  {
    v18 = 32;
  }

  else
  {
    v18 = 8;
  }

  v19 = *(a5 + v18 + 12) * *(a4 + 144);
  v20 = *(a5 + v18);
  *(v17 + 72) = *(a5 + v18 + 8);
  *(v17 + 64) = v20;
  *(v17 + 76) = v19;
  v21 = *(a2 + 80);
  v22 = [v21 origin];
  *(v34 + 104) = *v22;

  v23 = *(a2 + 80);
  [v23 size];
  v24 = v34;
  *(v34 + 112) = v25;
  *(v24 + 116) = v26;

  v27 = *(a6 + v18 + 12) * *(a4 + 144);
  v28 = v34;
  v29 = *(a6 + v18 + 8);
  *(v34 + 80) = *(a6 + v18);
  *(v28 + 88) = v29;
  *(v28 + 92) = v27;
  v30 = v27 <= 0.0 && v19 <= 0.0;
  *(v28 + 96) = *(a2 + 56);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v14;
  }

  ggl::BufferMemory::~BufferMemory(v33);
  return v31;
}

void *md::polygonFillPipelineSetup<md::VenueTileData>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = 216;
  if (*(a4 + 129))
  {
    v11 = 208;
  }

  v12 = ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pop(*(a1 + v11));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v12[17], v12[29], *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v12[17], v12[29], *(a4 + 32), *(a4 + 40));
  v13 = 24;
  if (!a6)
  {
    v13 = 0;
  }

  *v12[21] = *(a5 + v13);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v27, *(v12[17] + 32));
  v14 = 0;
  v15 = v28;
  do
  {
    *(v15 + v14) = *(a4 + 48 + v14);
    v14 += 4;
  }

  while (v14 != 64);
  v16 = 8;
  if (a6)
  {
    v16 = 32;
  }

  v17 = (a5 + v16);
  v18 = v17[3] * *(a4 + 144);
  v19 = *v17;
  *(v15 + 72) = v17[2];
  *(v15 + 64) = v19;
  *(v15 + 76) = v18;
  *(v15 + 80) = *(a2 + 56);
  v20 = *(a2 + 80);
  v21 = [v20 origin];
  *(v28 + 88) = *v21;

  v22 = *(a2 + 80);
  [v22 size];
  v23 = v28;
  *(v28 + 96) = v24;
  *(v23 + 100) = v25;

  if (v18 <= 0.0)
  {
    v12 = 0;
  }

  ggl::BufferMemory::~BufferMemory(v27);
  return v12;
}

void *md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, _BYTE *a6)
{
  v12 = ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>::pop(*(a1 + 200));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v12[17], v12[29], *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v12[17], v12[29], a3[4], a3[5]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v12[17], v12[29], *(a1 + 952), *(a1 + 960));
  *v12[21] = a3[15];
  *(v12[21] + 8) = *a4;
  *(v12[21] + 16) = *a5;
  md::writeSourceConstants<md::VenueTileData,md::Stroke2StyleProperties>(a2, a3, *(v12[17] + 32), a6);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v15, *(v12[17] + 64));
  v13 = v16;
  *v16 = 0;
  v13[1] = 0;
  ggl::BufferMemory::~BufferMemory(v15);
  return v12;
}

void *md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(void *a1, uint64_t a2, uint64_t *a3, void *a4, _BYTE *a5)
{
  v9 = ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>::pop(a1);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v9[17], v9[29], *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v9[17], v9[29], a3[4], a3[5]);
  *v9[21] = a3[15];
  *(v9[21] + 8) = *a4;
  if (md::writeSourceConstants<md::VenueTileData,md::Stroke2StyleProperties>(a2, a3, *(v9[17] + 32), a5))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

ggl::zone_mallocator *md::generateStrokeRenderItem<md::VenueTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  result = [*(*a1 + 80) strokeMeshes];
  v5 = *result;
  v23 = *(result + 1);
  if (*result != v23)
  {
    v6 = 0;
    do
    {
      v7 = *(*a1 + 80);
      v8 = a1[1];
      v9 = *(*a1 + 100);
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v32, a1[2]);
      v10 = [v7 commitRangesToStrokeRenderItemBatcher:v8 + 984 forMeshAtIndex:v6 cullingMask:v9 featureIdPredicate:v32];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v32);

      v11 = a1[3];
      v12 = a1[1];
      v13 = *v5;
      v24 = &off_1F2A5D8B8;
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 40);
      v31 = *(a2 + 104);
      v30 = *(a2 + 88);
      v29 = *(a2 + 72);
      v28 = *(a2 + 56);
      v14 = *(v12 + 1072);
      v15 = v14[1];
      if (v15 == *(v12 + 1080))
      {
        v14 = *v14;
        if (!v14)
        {
          v14 = malloc_type_malloc(120 * v15 + 16, 0x1020040EDED9539uLL);
          *v14 = 0;
          v14[1] = 0;
          **(v12 + 1072) = v14;
        }

        *(v12 + 1072) = v14;
        v15 = v14[1];
      }

      v16 = &v14[15 * v15];
      v14[1] = v15 + 1;
      v16[2] = &off_1F2A5D8B8;
      v17 = v25;
      v18 = v26;
      *(v16 + 7) = v27;
      *(v16 + 5) = v18;
      *(v16 + 3) = v17;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      *(v16 + 15) = v31;
      *(v16 + 13) = v21;
      *(v16 + 11) = v20;
      *(v16 + 9) = v19;
      ggl::RenderItem::~RenderItem(&v24);
      v16[10] = v13;
      v22 = (v10[1] - *v10) >> 4;
      v16[13] = *v10;
      v16[14] = v22;
      result = ggl::CommandBuffer::pushRenderItem(v11, (v16 + 2));
      ++v6;
      v5 += 2;
    }

    while (v5 != v23);
  }

  return result;
}

uint64_t md::writeSourceConstants<md::VenueTileData,md::Stroke2StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v106, a3);
  v6 = 0;
  v7 = v107;
  do
  {
    *(v7 + v6) = *(a2 + 48 + v6);
    v6 += 4;
  }

  while (v6 != 64);
  *(v7 + 320) = 0;
  *(v7 + 328) = 0;
  *(v7 + 464) = *(a1 + 56);
  v8 = 1.0 / *(a1 + 64);
  *(v7 + 468) = v8;
  *(v7 + 472) = *(a2 + 148);
  *a4 = 0;
  v9 = **(a2 + 160);
  if (*(*(a2 + 160) + 8) != v9)
  {
    v10 = 0;
    v100 = 0;
    v11 = 0;
    v98 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      v12 = *(v9 + 16 * v10);
      v13 = *(v9 + 16 * v10 + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v102, v12, v13);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      v14 = 0.0;
      v15 = v105;
      if (v105 != 1)
      {
        v30 = 0;
        goto LABEL_53;
      }

      v16 = *(a1 + 48);
      v17 = v102[3];
      if (v16 >= 0x17)
      {
        v18 = 23;
      }

      else
      {
        v18 = v16;
      }

      v19 = *v17;
      if (*v17 && (v20 = *v19, LODWORD(v19) = *v19 == 1.0, *(v17 + 10) == 1) && (v20 != 0.0 ? (v21 = v20 == 1.0) : (v21 = 1), !v21) || (v22 = *(v17 + v19 + 11), v22 == 2))
      {
        v23 = *(v17 + 16);
        if (v23)
        {
          v24 = *(v23 + 72);
          if (v24)
          {
            v25 = *v24 + 120 * *(v24 + v18 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x11Du) != *(v25 + 12))
            {
              goto LABEL_35;
            }
          }

          if (*(v17 + 56))
          {
            v26 = *(v17 + 48);
            v27 = 8 * *(v17 + 56);
            while (1)
            {
              v28 = *(*v26 + 72);
              if (v28)
              {
                v29 = *v28 + 120 * *(v28 + v18 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v29, 0x11Du) != *(v29 + 12))
                {
                  break;
                }
              }

              v26 += 8;
              v22 = 1;
              v27 -= 8;
              if (!v27)
              {
                goto LABEL_32;
              }
            }

LABEL_35:
            v30 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v17, 285, v18, 2u, 0);
            v15 = v105;
            if ((v105 & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_44;
          }
        }

        v22 = 1;
      }

LABEL_32:
      v31 = *(v17 + 16 * v22 + 16);
      if (v31)
      {
        v32 = *(v31 + 72);
        if (v32)
        {
          v33 = *v32 + 120 * *(v32 + v18 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v33, 0x11Du) != *(v33 + 12))
          {
            goto LABEL_35;
          }
        }

        v34 = v17 + 16 * v22;
        if (*(v34 + 56))
        {
          v35 = *(v34 + 48);
          v36 = 8 * *(v34 + 56);
          while (1)
          {
            v37 = *(*v35 + 72);
            if (v37)
            {
              v38 = *v37 + 120 * *(v37 + v18 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0x11Du) != *(v38 + 12))
              {
                goto LABEL_35;
              }
            }

            v35 += 8;
            v30 = 1;
            v15 = 1;
            v36 -= 8;
            if (!v36)
            {
              goto LABEL_44;
            }
          }
        }
      }

      v30 = 1;
      v15 = 1;
LABEL_44:
      v39 = v102[3];
      v40 = fminf(fmaxf(*(a1 + 48), 0.0), 23.0);
      v41 = *v39;
      if (*v39)
      {
        v42 = *v41;
        LODWORD(v41) = *v41 == 1.0;
        if (*(v39 + 10) == 1 && v42 != 0.0 && v42 != 1.0)
        {
          goto LABEL_132;
        }
      }

      v44 = *(v39 + v41 + 11);
      if (v44 == 2)
      {
        v42 = 0.0;
LABEL_132:
        LOBYTE(v101) = 1;
        v108[0].i8[0] = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 404, 0, &v101, v40);
        v97 = v94;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 404, 1, v108, v40);
        v14 = v97 + ((v95 - v97) * v42);
        goto LABEL_53;
      }

      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v102[3], 404, v44, 0, v40);
      v14 = v45;
LABEL_53:
      v46 = *(a1 + 64) * 1.75;
      if (!v30 || v14 >= 0.0001)
      {
        v50 = v46 * v14;
        if ((v15 & 1) == 0)
        {
          v65 = *(a2 + 152);
          if (v65 == 1)
          {
            v66 = 0.0;
          }

          else
          {
            v66 = 1.0;
          }

          if (v65 == 1)
          {
            v67 = -1.0;
          }

          else
          {
            v67 = 0.0;
          }

          if (v65 == 2)
          {
            v66 = 0.5;
            v67 = -0.5;
          }

          v68 = v107;
          v69 = v107 + 4 * v10;
          *(v69 + 336) = v66 * v50;
          *(v69 + 400) = v67 * v50;
          *(v68 + 476) = 0;
          v70 = v68 + 16 * v10;
          *(v70 + 64) = 0;
          *(v70 + 72) = 0;
          goto LABEL_123;
        }

        v51 = *(a1 + 48);
        v52 = v102[3];
        if (v51 >= 0x17)
        {
          v53 = 23;
        }

        else
        {
          v53 = v51;
        }

        v54 = *v52;
        if (*v52 && (v55 = *v54, LODWORD(v54) = *v54 == 1.0, *(v52 + 10) == 1) && (v55 != 0.0 ? (v56 = v55 == 1.0) : (v56 = 1), !v56) || (v57 = *(v52 + v54 + 11), v57 == 2))
        {
          v58 = *(v52 + 16);
          if (v58)
          {
            v59 = *(v58 + 72);
            if (v59)
            {
              v60 = *v59 + 120 * *(v59 + v53 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v60, 0x198u) != *(v60 + 12))
              {
                goto LABEL_97;
              }
            }

            if (*(v52 + 56))
            {
              v61 = *(v52 + 48);
              v62 = 8 * *(v52 + 56);
              while (1)
              {
                v63 = *(*v61 + 72);
                if (v63)
                {
                  v64 = *v63 + 120 * *(v63 + v53 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v64, 0x198u) != *(v64 + 12))
                  {
                    break;
                  }
                }

                v61 += 8;
                v57 = 1;
                v62 -= 8;
                if (!v62)
                {
                  goto LABEL_94;
                }
              }

LABEL_97:
              v77 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v52, 408, v53, 2, 0);
              v52 = v102[3];
              if (*(a1 + 48) >= 0x17)
              {
                LODWORD(v53) = 23;
              }

              else
              {
                LODWORD(v53) = *(a1 + 48);
              }

              goto LABEL_106;
            }
          }

          v57 = 1;
        }

LABEL_94:
        v74 = *(v52 + 16 * v57 + 16);
        if (v74)
        {
          v75 = *(v74 + 72);
          if (v75)
          {
            v76 = *v75 + 120 * *(v75 + v53 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v76, 0x198u) != *(v76 + 12))
            {
              goto LABEL_97;
            }
          }

          v78 = v52 + 16 * v57;
          if (*(v78 + 56))
          {
            v79 = *(v78 + 48);
            v80 = 8 * *(v78 + 56);
            do
            {
              v81 = *(*v79 + 72);
              if (v81)
              {
                v82 = *v81 + 120 * *(v81 + v53 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v82, 0x198u) != *(v82 + 12))
                {
                  goto LABEL_97;
                }
              }

              v79 += 8;
              v80 -= 8;
            }

            while (v80);
          }
        }

        v77 = *(a2 + 152);
LABEL_106:
        v83 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v52, 420, v53, 2, 0);
        if (v77 == 1)
        {
          v84 = 0.0;
        }

        else
        {
          v84 = 1.0;
        }

        if (v77 == 1)
        {
          v85 = -1.0;
        }

        else
        {
          v85 = 0.0;
        }

        if (v77 == 2)
        {
          v84 = 0.5;
          v85 = -0.5;
        }

        v86 = v107;
        v87 = v107 + 4 * v10;
        *(v87 + 336) = v84 * v50;
        *(v87 + 400) = v85 * v50;
        *(v86 + 476) = v83 == 1;
        v88 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(407, 2u, v102[3]);
        v89 = *(a1 + 48);
        if (v88)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v108, v102[3], 403, 2u, fminf(fmaxf(v89, 0.0), 23.0));
        }

        else
        {
          if (v89 >= 0x17)
          {
            v90 = 23;
          }

          else
          {
            v90 = v89;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v108, v102[3], 403, v90, 2u, 0);
        }

        v91 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v108[0])), v98);
        *&v101 = v91.i64[0];
        DWORD2(v101) = v91.i32[2];
        v92 = 0;
        v93 = v91.f32[3] * *(a2 + 144);
        *(&v101 + 3) = v93;
        do
        {
          *(&v101 + v92) = *(&v101 + v92) * v93;
          v92 += 4;
        }

        while (v92 != 12);
        *(v107 + 16 * v10 + 64) = v101;
        v100 |= *(&v101 + 3) > 0.001;
        *a4 |= *(&v101 + 3) < 1.0;
        goto LABEL_123;
      }

      v47 = v107;
      v48 = v107 + 4 * v10;
      v49 = v107 + 16 * v10;
      if (*(a1 + 120))
      {
        *(v48 + 336) = 0;
        *(v48 + 400) = 0;
        *(v49 + 64) = 0;
        *(v49 + 72) = 0;
      }

      else
      {
        v71 = v46;
        *(v48 + 336) = v71;
        *(v48 + 400) = 0;
        *(v49 + 64) = 0;
        *(v49 + 72) = 0;
        if (v105 == 1)
        {
          if (*(a1 + 48) >= 0x17)
          {
            v72 = 23;
          }

          else
          {
            v72 = *(a1 + 48);
          }

          v73 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v102[3], 420, v72, 2, 0) == 1;
          *(v107 + 476) = v73;
          goto LABEL_123;
        }
      }

      *(v47 + 476) = 0;
LABEL_123:
      if (v105 == 1)
      {
        (*(*v102 + 7))(v102);
      }

      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v104);
      }

      if (v103)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v103);
      }

      v10 = ++v11;
      v9 = **(a2 + 160);
      if (v11 >= ((*(*(a2 + 160) + 8) - v9) >> 4))
      {
        goto LABEL_134;
      }
    }
  }

  v100 = 0;
LABEL_134:
  ggl::BufferMemory::~BufferMemory(v106);
  return v100 & 1;
}

void sub_1B329C618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, char a23)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void *md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6)
{
  v12 = ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>::pop(*(a1 + 200));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v12[17], v12[29], *a3, *(a3 + 8));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v12[17], v12[29], *(a3 + 32), *(a3 + 40));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v12[17], v12[29], *(a1 + 952), *(a1 + 960));
  *v12[21] = *(a3 + 120);
  *(v12[21] + 8) = *a4;
  *(v12[21] + 16) = *a5;
  v13 = md::writeSourceConstants<md::VenueTileData,md::Stroke1StyleProperties>(a2, a3, a4, *(v12[17] + 32), a6);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, *(v12[17] + 64));
  v14 = 0;
  v18 = *(a5 + 8);
  v15 = *(&v18 + 3) * *(a3 + 144);
  *(&v18 + 3) = v15;
  do
  {
    *(&v19[-2] + v14) = *(&v19[-2] + v14) * v15;
    v14 += 4;
  }

  while (v14 != 12);
  *v19[5] = v18;
  if (*(&v18 + 3) >= 0.0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  if (!v16)
  {
    v12 = 0;
  }

  ggl::BufferMemory::~BufferMemory(v19);
  return v12;
}

void *md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(void *a1, uint64_t a2, uint64_t *a3, void *a4, _BYTE *a5)
{
  v9 = ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>::pop(a1);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v9[17], v9[29], *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v9[17], v9[29], a3[4], a3[5]);
  *v9[21] = a3[15];
  *(v9[21] + 8) = *a4;
  if (md::writeSourceConstants<md::VenueTileData,md::Stroke1StyleProperties>(a2, a3, a4, *(v9[17] + 32), a5))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

ggl::zone_mallocator *md::generateStrokeRenderItem<md::VenueTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  result = [*(*a1 + 80) strokeMeshes];
  v5 = *result;
  v23 = *(result + 1);
  if (*result != v23)
  {
    v6 = 0;
    do
    {
      v7 = *(*a1 + 80);
      v8 = a1[1];
      v9 = *(*a1 + 100);
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v32, a1[2]);
      v10 = [v7 commitRangesToStrokeRenderItemBatcher:v8 + 984 forMeshAtIndex:v6 cullingMask:v9 featureIdPredicate:v32];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v32);

      v11 = a1[3];
      v12 = a1[1];
      v13 = *v5;
      v24 = &off_1F2A5D8B8;
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 40);
      v31 = *(a2 + 104);
      v30 = *(a2 + 88);
      v29 = *(a2 + 72);
      v28 = *(a2 + 56);
      v14 = *(v12 + 1072);
      v15 = v14[1];
      if (v15 == *(v12 + 1080))
      {
        v14 = *v14;
        if (!v14)
        {
          v14 = malloc_type_malloc(120 * v15 + 16, 0x1020040EDED9539uLL);
          *v14 = 0;
          v14[1] = 0;
          **(v12 + 1072) = v14;
        }

        *(v12 + 1072) = v14;
        v15 = v14[1];
      }

      v16 = &v14[15 * v15];
      v14[1] = v15 + 1;
      v16[2] = &off_1F2A5D8B8;
      v17 = v25;
      v18 = v26;
      *(v16 + 7) = v27;
      *(v16 + 5) = v18;
      *(v16 + 3) = v17;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      *(v16 + 15) = v31;
      *(v16 + 13) = v21;
      *(v16 + 11) = v20;
      *(v16 + 9) = v19;
      ggl::RenderItem::~RenderItem(&v24);
      v16[10] = v13;
      v22 = (v10[1] - *v10) >> 4;
      v16[13] = *v10;
      v16[14] = v22;
      result = ggl::CommandBuffer::pushRenderItem(v11, (v16 + 2));
      ++v6;
      v5 += 2;
    }

    while (v5 != v23);
  }

  return result;
}

uint64_t md::writeSourceConstants<md::VenueTileData,md::Stroke1StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v109, a4);
  v8 = 0;
  v9 = v110;
  do
  {
    *(v9 + v8) = *(a2 + 48 + v8);
    v8 += 4;
  }

  while (v8 != 64);
  v10 = 0;
  v108 = *(a3 + 8);
  v11 = *(&v108 + 3) * *(a2 + 144);
  *(&v108 + 3) = v11;
  do
  {
    *(&v109[-2] + v10) = *(&v109[-2] + v10) * v11;
    v10 += 4;
  }

  while (v10 != 12);
  *(v9 + 320) = v108;
  *(v9 + 464) = *(a1 + 56);
  v12 = 1.0 / *(a1 + 64);
  *(v9 + 468) = v12;
  *(v9 + 472) = *(a2 + 148);
  *a5 = 0;
  v13 = **(a2 + 160);
  if (*(*(a2 + 160) + 8) != v13)
  {
    v14 = 0;
    v102 = 0;
    v15 = 0;
    v100 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      v16 = *(v13 + 16 * v14);
      v17 = *(v13 + 16 * v14 + 8);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v104, v16, v17);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      v19 = 0.0;
      v20 = v107;
      if (v107 != 1)
      {
        v35 = 0;
        goto LABEL_55;
      }

      v21 = *(a1 + 48);
      v22 = v104[3];
      if (v21 >= 0x17)
      {
        v23 = 23;
      }

      else
      {
        v23 = v21;
      }

      v24 = *v22;
      if (*v22 && (v25 = *v24, LODWORD(v24) = *v24 == 1.0, *(v22 + 10) == 1) && (v25 != 0.0 ? (v26 = v25 == 1.0) : (v26 = 1), !v26) || (v27 = *(v22 + v24 + 11), v27 == 2))
      {
        v28 = *(v22 + 16);
        if (v28)
        {
          v29 = *(v28 + 72);
          if (v29)
          {
            v30 = *v29 + 120 * *(v29 + v23 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v30, 0x11Du) != *(v30 + 12))
            {
              goto LABEL_37;
            }
          }

          if (*(v22 + 56))
          {
            v31 = *(v22 + 48);
            v32 = 8 * *(v22 + 56);
            while (1)
            {
              v33 = *(*v31 + 72);
              if (v33)
              {
                v34 = *v33 + 120 * *(v33 + v23 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v34, 0x11Du) != *(v34 + 12))
                {
                  break;
                }
              }

              v31 += 8;
              v27 = 1;
              v32 -= 8;
              if (!v32)
              {
                goto LABEL_34;
              }
            }

LABEL_37:
            v35 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v22, 285, v23, 2u, 0);
            v20 = v107;
            if ((v107 & 1) == 0)
            {
              goto LABEL_55;
            }

            goto LABEL_46;
          }
        }

        v27 = 1;
      }

LABEL_34:
      v36 = *(v22 + 16 * v27 + 16);
      if (v36)
      {
        v37 = *(v36 + 72);
        if (v37)
        {
          v38 = *v37 + 120 * *(v37 + v23 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0x11Du) != *(v38 + 12))
          {
            goto LABEL_37;
          }
        }

        v39 = v22 + 16 * v27;
        if (*(v39 + 56))
        {
          v40 = *(v39 + 48);
          v41 = 8 * *(v39 + 56);
          while (1)
          {
            v42 = *(*v40 + 72);
            if (v42)
            {
              v43 = *v42 + 120 * *(v42 + v23 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v43, 0x11Du) != *(v43 + 12))
              {
                goto LABEL_37;
              }
            }

            v40 += 8;
            v35 = 1;
            v20 = 1;
            v41 -= 8;
            if (!v41)
            {
              goto LABEL_46;
            }
          }
        }
      }

      v35 = 1;
      v20 = 1;
LABEL_46:
      v44 = v104[3];
      v45 = fminf(fmaxf(*(a1 + 48), 0.0), 23.0);
      v46 = *v44;
      if (*v44)
      {
        v47 = *v46;
        LODWORD(v46) = *v46 == 1.0;
        if (*(v44 + 10) == 1 && v47 != 0.0 && v47 != 1.0)
        {
          goto LABEL_135;
        }
      }

      v49 = *(v44 + v46 + 11);
      if (v49 == 2)
      {
        v47 = 0.0;
LABEL_135:
        v103.n128_u8[0] = 1;
        v111[0].i8[0] = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v44, 97, 0, &v103, v45);
        v99 = v97;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v44, 97, 1, v111, v45);
        v19 = v99 + ((v18.n128_f32[0] - v99) * v47);
        goto LABEL_55;
      }

      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v104[3], 97, v49, 0, v45);
      v19 = v18.n128_f32[0];
LABEL_55:
      v18.n128_f64[0] = *(a1 + 64) * 1.75;
      if (!v35 || v19 >= 0.0001)
      {
        v18.n128_f64[0] = v18.n128_f64[0] * v19;
        v53 = v18.n128_f64[0];
        if (v20)
        {
          v54 = *(a1 + 48);
          v55 = v104[3];
          if (v54 >= 0x17)
          {
            v56 = 23;
          }

          else
          {
            v56 = v54;
          }

          v57 = *v55;
          if (*v55 && (v58 = *v57, LODWORD(v57) = *v57 == 1.0, *(v55 + 10) == 1) && (v58 != 0.0 ? (v59 = v58 == 1.0) : (v59 = 1), !v59) || (v60 = *(v55 + v57 + 11), v60 == 2))
          {
            v61 = *(v55 + 16);
            if (v61)
            {
              v62 = *(v61 + 72);
              if (v62)
              {
                v63 = *v62 + 120 * *(v62 + v56 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v63, 0x13Fu) != *(v63 + 12))
                {
                  goto LABEL_100;
                }
              }

              if (*(v55 + 56))
              {
                v64 = *(v55 + 48);
                v65 = 8 * *(v55 + 56);
                while (1)
                {
                  v66 = *(*v64 + 72);
                  if (v66)
                  {
                    v67 = *v66 + 120 * *(v66 + v56 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v67, 0x13Fu) != *(v67 + 12))
                    {
                      break;
                    }
                  }

                  v64 += 8;
                  v60 = 1;
                  v65 -= 8;
                  if (!v65)
                  {
                    goto LABEL_97;
                  }
                }

LABEL_100:
                v81 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v55, 319, v56, 2, 0);
                v55 = v104[3];
                if (*(a1 + 48) >= 0x17)
                {
                  LODWORD(v56) = 23;
                }

                else
                {
                  LODWORD(v56) = *(a1 + 48);
                }

                goto LABEL_109;
              }
            }

            v60 = 1;
          }

LABEL_97:
          v78 = *(v55 + 16 * v60 + 16);
          if (v78)
          {
            v79 = *(v78 + 72);
            if (v79)
            {
              v80 = *v79 + 120 * *(v79 + v56 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v80, 0x13Fu) != *(v80 + 12))
              {
                goto LABEL_100;
              }
            }

            v82 = v55 + 16 * v60;
            if (*(v82 + 56))
            {
              v83 = *(v82 + 48);
              v84 = 8 * *(v82 + 56);
              do
              {
                v85 = *(*v83 + 72);
                if (v85)
                {
                  v86 = *v85 + 120 * *(v85 + v56 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v86, 0x13Fu) != *(v86 + 12))
                  {
                    goto LABEL_100;
                  }
                }

                v83 += 8;
                v84 -= 8;
              }

              while (v84);
            }
          }

          v81 = *(a2 + 152);
LABEL_109:
          v87 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v55, 420, v56, 2, 0);
          if (v81 == 1)
          {
            v88 = 0.0;
          }

          else
          {
            v88 = 1.0;
          }

          if (v81 == 1)
          {
            v89 = -1.0;
          }

          else
          {
            v89 = 0.0;
          }

          if (v81 == 2)
          {
            v88 = 0.5;
            v89 = -0.5;
          }

          v90 = v110;
          v91 = v110 + 4 * v14;
          *(v91 + 336) = v88 * v53;
          *(v91 + 400) = v89 * v53;
          *(v90 + 476) = v87 == 1;
          v92 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(107, 2u, v104[3]);
          v93 = *(a1 + 48);
          if (v92)
          {
            gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v111, v104[3], 93, 2u, fminf(fmaxf(v93, 0.0), 23.0));
          }

          else
          {
            if (v93 >= 0x17)
            {
              v94 = 23;
            }

            else
            {
              v94 = v93;
            }

            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v111, v104[3], 93, v94, 2u, 0);
          }

          v96 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v111[0])), v100);
          v103.n128_u64[0] = v96.i64[0];
          v103.n128_u32[2] = v96.u32[2];
          v95 = 0;
          v96.i32[0] = *(a2 + 144);
          v103.n128_f32[3] = v96.f32[3] * v96.f32[0];
          do
          {
            v103.n128_f32[v95] = v103.n128_f32[v95] * (v96.f32[3] * v96.f32[0]);
            ++v95;
          }

          while (v95 != 3);
          v18 = v103;
          *(v110 + 16 * v14 + 64) = v103;
          v18.n128_u32[0] = v103.n128_u32[3];
          v102 |= v103.n128_f32[3] > 0.001 || *(&v108 + 3) > 0.001;
          *a5 |= v103.n128_f32[3] < 1.0;
          goto LABEL_126;
        }

        v68 = *(a2 + 152);
        if (v68 == 1)
        {
          v69 = 0.0;
        }

        else
        {
          v69 = 1.0;
        }

        if (v68 == 1)
        {
          v70 = -1.0;
        }

        else
        {
          v70 = 0.0;
        }

        if (v68 == 2)
        {
          v69 = 0.5;
          v70 = -0.5;
        }

        v71 = v110;
        v72 = v110 + 4 * v14;
        *(v72 + 336) = v69 * v53;
        *(v72 + 400) = v70 * v53;
        *(v71 + 476) = 0;
        v73 = v71 + 16 * v14;
        *(v73 + 64) = 0;
        *(v73 + 72) = 0;
        goto LABEL_95;
      }

      v50 = v110;
      v51 = v110 + 4 * v14;
      v52 = v110 + 16 * v14;
      if ((*(a1 + 120) & 1) == 0)
      {
        v74 = 0;
        v75 = v18.n128_f64[0];
        *(v51 + 336) = v75;
        *(v51 + 400) = 0;
        *(v52 + 64) = 0;
        *(v52 + 72) = 0;
        if (v107 == 1)
        {
          if (*(a1 + 48) >= 0x17)
          {
            v76 = 23;
          }

          else
          {
            v76 = *(a1 + 48);
          }

          v77 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v104[3], 420, v76, 2, 0);
          v50 = v110;
          v74 = v77 == 1;
        }

        *(v50 + 476) = v74;
LABEL_95:
        v18.n128_u32[0] = HIDWORD(v108);
        v102 |= *(&v108 + 3) > 0.001;
        goto LABEL_126;
      }

      *(v51 + 336) = 0;
      *(v51 + 400) = 0;
      *(v52 + 64) = 0;
      *(v52 + 72) = 0;
      *(v50 + 476) = 0;
LABEL_126:
      if (v107 == 1)
      {
        (*(*v104 + 7))(v104, v18);
      }

      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v106);
      }

      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v105);
      }

      v14 = ++v15;
      v13 = **(a2 + 160);
      if (v15 >= ((*(*(a2 + 160) + 8) - v13) >> 4))
      {
        goto LABEL_137;
      }
    }
  }

  LOBYTE(v102) = 0;
LABEL_137:
  ggl::BufferMemory::~BufferMemory(v109);
  return v102 & 1;
}

void sub_1B329D3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*v2 != *a2)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 16);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A4E920;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A4E920;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void md::PolygonLayoutCharacteristics::setSelectedFeatureIds(uint64_t a1, char **a2)
{
  v3 = *(a1 + 16);
  v2 = (a1 + 16);
  v2[1] = v3;
  std::vector<unsigned long long>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(v2, v3, *a2, a2[1], (a2[1] - *a2) >> 3);
}

unint64_t md::RasterTileResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v5, 0);
  gdc::ResourceKey::getInt32(v5, 1u);
  gdc::ResourceKey::getInt32(v5, 2u);
  [v4 size];
  [v4 scale];
  v6 = [v4 style];
  v7 = GEOTileKeyMake();
  if (v6 <= 0x19 && ((1 << v6) & 0x200101C) != 0)
  {
    v8 = 128;
  }

  else
  {
    v8 = (v6 == 26) << 7;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFF7FLL;

  return v8 | v9;
}

uint64_t md::RasterTileResourceFetcher::createResource(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, id **a8)
{
  v16 = *a8;
  if (gdc::DataObject::length(*a8) == 4)
  {
    v17 = *gdc::DataObject::bytes(v16);
    if (v17 != 0x2000000)
    {
      v19 = bswap32(v17);
      v20 = *(a1 + 768);
      v21 = [MEMORY[0x1E69A2470] defaultConfiguration];
      [v20 dataForGenericTileType:v19 configuration:v21];
      objc_claimAutoreleasedReturnValue();

      std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>();
    }
  }

  return md::TiledGEOResourceFetcher::createResource(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1B329D9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t md::RasterTileResourceFetcher::tileSize(md::RasterTileResourceFetcher *this)
{
  v2 = *(this + 96);
  if (v2)
  {
    if ([v2 scale] == 2)
    {
      if (*(this + 2) > 1.0)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 1;
    }

    v4 = [*(this + 96) size];
    v5 = 0x20001000080uLL >> (16 * v4);
    if (v4 >= 3)
    {
      LOWORD(v5) = 0;
    }

    v6 = ((v5 & 0x380) / v3) | 0x100000000;
  }

  else
  {
    v6 = 0;
  }

  if ((*(*this + 144))(this) == 1 && *(this + 2) <= 1.0)
  {
    v8 = vcvts_n_f32_u32(v6, 1uLL);
    if (HIDWORD(v6))
    {
      return v8 | 0x100000000;
    }

    else
    {
      return 0x100000100;
    }
  }

  else if (HIDWORD(v6))
  {
    return v6 | 0x100000000;
  }

  else
  {
    return 0x100000200;
  }
}

void md::RasterTileResourceFetcher::~RasterTileResourceFetcher(md::RasterTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RasterTileResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4EA68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B329E118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B329E24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B329E32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,md::ARCameraPanEvent,md::ARCameraRotateEvent> &&>(void **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  v2[1] = *(a2 + 8);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,md::ARCameraPanEvent,md::ARCameraRotateEvent> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void sub_1B329F7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_1B329F890(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo,std::allocator<md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo> &>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *result = 0;
  result[1] = 24 * a3;
  result[2] = 24 * a3;
  result[3] = 0;
  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u64[0] = *(a2 - 16);
        if (result.n128_f64[0] >= *(v12 + 8))
        {
          return result;
        }

LABEL_111:
        v193 = *(v12 + 16);
        v168 = *v12;
        v90 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v90;
        result = v168;
        *(a2 - 8) = v193;
LABEL_112:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = *(v12 + 32);
      v92 = *(v12 + 56);
      if (v91 >= *(v12 + 8))
      {
        if (v92 < v91)
        {
          v138 = *(v12 + 40);
          result = *(v12 + 24);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 48) = result;
          *(v12 + 64) = v138;
          if (*(v12 + 32) < *(v12 + 8))
          {
            v196 = *(v12 + 16);
            v171 = *v12;
            *v12 = *(v12 + 24);
            *(v12 + 16) = *(v12 + 40);
            result.n128_u64[1] = v171.n128_u64[1];
            *(v12 + 24) = v171;
            *(v12 + 40) = v196;
          }
        }
      }

      else if (v92 >= v91)
      {
        v198 = *(v12 + 16);
        v173 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 16) = *(v12 + 40);
        *(v12 + 24) = v173;
        *(v12 + 40) = v198;
        if (v92 < *(v12 + 32))
        {
          v146 = *(v12 + 40);
          result = *(v12 + 24);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 48) = result;
          *(v12 + 64) = v146;
        }
      }

      else
      {
        v194 = *(v12 + 16);
        v169 = *v12;
        *v12 = *(v12 + 48);
        *(v12 + 16) = *(v12 + 64);
        result.n128_u64[1] = v169.n128_u64[1];
        *(v12 + 48) = v169;
        *(v12 + 64) = v194;
      }

      result.n128_u64[0] = *(a2 - 16);
      if (result.n128_f64[0] >= *(v12 + 56))
      {
        return result;
      }

      result = *(v12 + 48);
      v147 = *(v12 + 64);
      v148 = *(a2 - 8);
      *(v12 + 48) = *v9;
      *(v12 + 64) = v148;
      *(a2 - 8) = v147;
      *v9 = result;
      result.n128_u64[0] = *(v12 + 56);
      if (result.n128_f64[0] >= *(v12 + 32))
      {
        return result;
      }

      v149 = *(v12 + 40);
      result = *(v12 + 24);
      *(v12 + 24) = *(v12 + 48);
      *(v12 + 40) = *(v12 + 64);
      *(v12 + 48) = result;
      *(v12 + 64) = v149;
LABEL_187:
      result.n128_u64[0] = *(v12 + 32);
      if (result.n128_f64[0] < *(v12 + 8))
      {
        v199 = *(v12 + 16);
        v174 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 16) = *(v12 + 40);
        result = v174;
        *(v12 + 24) = v174;
        *(v12 + 40) = v199;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *,0>(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v93 = (v12 + 24);
      v95 = v12 == a2 || v93 == a2;
      if (a4)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v12;
          do
          {
            v98 = v93;
            result.n128_u64[0] = *(v97 + 32);
            if (result.n128_f64[0] < *(v97 + 8))
            {
              v99 = *v93;
              v100 = *(v97 + 40);
              v101 = v96;
              while (1)
              {
                v102 = v12 + v101;
                *(v102 + 24) = *(v12 + v101);
                *(v102 + 40) = *(v12 + v101 + 16);
                if (!v101)
                {
                  break;
                }

                v101 -= 24;
                if (result.n128_f64[0] >= *(v102 - 16))
                {
                  v103 = v12 + v101 + 24;
                  goto LABEL_131;
                }
              }

              v103 = v12;
LABEL_131:
              *v103 = v99;
              *(v103 + 8) = result.n128_u64[0];
              *(v103 + 16) = v100;
            }

            v93 = v98 + 3;
            v96 += 24;
            v97 = v98;
          }

          while (v98 + 3 != a2);
        }
      }

      else if (!v95)
      {
        do
        {
          v139 = v93;
          result.n128_u64[0] = *(a1 + 32);
          if (result.n128_f64[0] < *(a1 + 8))
          {
            v140 = *v93;
            v141 = *(a1 + 40);
            v142 = v139;
            do
            {
              *v142 = *(v142 - 3);
              *(v142 + 16) = *(v142 - 8);
              v143 = *(v142 - 5);
              v142 -= 3;
            }

            while (result.n128_f64[0] < v143);
            *v142 = v140;
            v142[1] = result.n128_u64[0];
            *(v142 + 16) = v141;
          }

          v93 = v139 + 3;
          a1 = v139;
        }

        while (v139 + 3 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v104 = (v14 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = v12 + 24 * v107;
            if (2 * v106 + 2 < v14 && *(v108 + 8) < *(v108 + 32))
            {
              v108 += 24;
              v107 = 2 * v106 + 2;
            }

            v109 = v12 + 24 * v106;
            v110 = *(v109 + 8);
            if (*(v108 + 8) >= v110)
            {
              v111 = *v109;
              v112 = *(v109 + 16);
              do
              {
                v113 = v109;
                v109 = v108;
                v114 = *v108;
                *(v113 + 16) = *(v108 + 16);
                *v113 = v114;
                if (v104 < v107)
                {
                  break;
                }

                v115 = 2 * v107;
                v107 = (2 * v107) | 1;
                v108 = v12 + 24 * v107;
                v116 = v115 + 2;
                if (v116 < v14 && *(v108 + 8) < *(v108 + 32))
                {
                  v108 += 24;
                  v107 = v116;
                }
              }

              while (*(v108 + 8) >= v110);
              *v109 = v111;
              *(v109 + 8) = v110;
              *(v109 + 16) = v112;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        v117 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v118 = 0;
          v195 = *(v12 + 16);
          v170 = *v12;
          v119 = v12;
          do
          {
            v120 = v119 + 24 * v118;
            v121 = (v120 + 24);
            v122 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 >= v117)
            {
              v118 = v122;
            }

            else
            {
              v123 = *(v120 + 32);
              v124 = *(v120 + 56);
              v125 = (v120 + 48);
              if (v123 >= v124)
              {
                v118 = v122;
              }

              else
              {
                v121 = v125;
              }
            }

            v126 = *v121;
            *(v119 + 16) = v121[1].n128_u8[0];
            *v119 = v126;
            v119 = v121;
          }

          while (v118 <= ((v117 - 2) >> 1));
          a2 -= 24;
          if (v121 == a2)
          {
            result = v170;
            v121[1].n128_u8[0] = v195;
            *v121 = v170;
          }

          else
          {
            v127 = *a2;
            v121[1].n128_u8[0] = *(a2 + 16);
            *v121 = v127;
            result = v170;
            *(a2 + 16) = v195;
            *a2 = v170;
            v128 = &v121[1].n128_i64[1] - v12;
            if (v128 >= 25)
            {
              v129 = (-2 - 0x5555555555555555 * (v128 >> 3)) >> 1;
              v130 = v12 + 24 * v129;
              result.n128_u64[0] = v121->n128_u64[1];
              if (*(v130 + 8) < result.n128_f64[0])
              {
                v131 = v121->n128_u64[0];
                v132 = v121[1].n128_i8[0];
                do
                {
                  v133 = v121;
                  v121 = v130;
                  v134 = *v130;
                  v133[1].n128_u8[0] = *(v130 + 16);
                  *v133 = v134;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = v12 + 24 * v129;
                }

                while (*(v130 + 8) < result.n128_f64[0]);
                v121->n128_u64[0] = v131;
                v121->n128_u64[1] = result.n128_u64[0];
                v121[1].n128_u8[0] = v132;
              }
            }
          }
        }

        while (v117-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *(a2 - 16);
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_f64[1];
      if (v18 >= *(v12 + 8))
      {
        if (v17 < v18)
        {
          v177 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u8[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v177;
          *v9 = v152;
          if (v16->n128_f64[1] < *(v12 + 8))
          {
            v178 = *(v12 + 16);
            v153 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u8[0];
            *v12 = v23;
            v16[1].n128_u8[0] = v178;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v175 = *(v12 + 16);
          v150 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v181 = *(v12 + 16);
        v156 = *v12;
        v24 = *v16;
        *(v12 + 16) = v16[1].n128_u8[0];
        *v12 = v24;
        v16[1].n128_u8[0] = v181;
        *v16 = v156;
        if (*(a2 - 16) < v16->n128_f64[1])
        {
          v175 = v16[1].n128_u64[0];
          v150 = *v16;
          v25 = *v9;
          v16[1].n128_u8[0] = *(a2 - 8);
          *v16 = v25;
LABEL_26:
          *(a2 - 8) = v175;
          *v9 = v150;
        }
      }

      v26 = v12 + 24 * v15;
      v27 = (v26 - 24);
      v28 = *(v26 - 16);
      v29 = *(a2 - 40);
      if (v28 >= *(v12 + 32))
      {
        if (v29 < v28)
        {
          v182 = *(v26 - 8);
          v157 = *v27;
          v33 = *v10;
          *(v26 - 8) = *(a2 - 32);
          *v27 = v33;
          *(a2 - 32) = v182;
          *v10 = v157;
          if (*(v26 - 16) < *(v12 + 32))
          {
            v34 = *(v12 + 24);
            v35 = *(v12 + 40);
            v36 = v27[1].n128_i8[0];
            *(v12 + 24) = *v27;
            *(v12 + 40) = v36;
            v27[1].n128_u8[0] = v35;
            *v27 = v34;
          }
        }
      }

      else
      {
        if (v29 < v28)
        {
          v30 = *(v12 + 24);
          v31 = *(v12 + 40);
          v32 = *(a2 - 32);
          *(v12 + 24) = *v10;
          *(v12 + 40) = v32;
          *(a2 - 32) = v31;
          goto LABEL_38;
        }

        v38 = *(v12 + 24);
        v39 = *(v12 + 40);
        v40 = v27[1].n128_i8[0];
        *(v12 + 24) = *v27;
        *(v12 + 40) = v40;
        v27[1].n128_u8[0] = v39;
        *v27 = v38;
        if (*(a2 - 40) < v27->n128_f64[1])
        {
          v184 = v27[1].n128_i64[0];
          v159 = *v27;
          v41 = *v10;
          v27[1].n128_u8[0] = *(a2 - 32);
          *v27 = v41;
          v30 = v159;
          *(a2 - 32) = v184;
LABEL_38:
          *v10 = v30;
        }
      }

      v42 = v12 + 24 * v15;
      v43 = *(v42 + 32);
      v44 = *(a2 - 64);
      if (v43 >= *(v12 + 56))
      {
        if (v44 < v43)
        {
          v185 = *(v42 + 40);
          v160 = *(v42 + 24);
          v48 = *v11;
          *(v42 + 40) = *(a2 - 56);
          *(v42 + 24) = v48;
          *(a2 - 56) = v185;
          *v11 = v160;
          if (*(v42 + 32) < *(v12 + 56))
          {
            v49 = *(v12 + 48);
            v50 = *(v12 + 64);
            v51 = *(v42 + 40);
            *(v12 + 48) = *(v42 + 24);
            *(v12 + 64) = v51;
            *(v42 + 40) = v50;
            *(v42 + 24) = v49;
          }
        }
      }

      else
      {
        if (v44 < v43)
        {
          v45 = *(v12 + 48);
          v46 = *(v12 + 64);
          v47 = *(a2 - 56);
          *(v12 + 48) = *v11;
          *(v12 + 64) = v47;
          *(a2 - 56) = v46;
          goto LABEL_47;
        }

        v52 = *(v12 + 48);
        v53 = *(v12 + 64);
        v54 = *(v42 + 40);
        *(v12 + 48) = *(v42 + 24);
        *(v12 + 64) = v54;
        *(v42 + 40) = v53;
        *(v42 + 24) = v52;
        if (*(a2 - 64) < *(v42 + 32))
        {
          v186 = *(v42 + 40);
          v161 = *(v42 + 24);
          v55 = *v11;
          *(v42 + 40) = *(a2 - 56);
          *(v42 + 24) = v55;
          v45 = v161;
          *(a2 - 56) = v186;
LABEL_47:
          *v11 = v45;
        }
      }

      v56 = v16->n128_f64[1];
      v57 = *(v42 + 32);
      if (v56 >= v27->n128_f64[1])
      {
        if (v57 < v56)
        {
          v188 = v16[1].n128_u64[0];
          v163 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u8[0] = *(v42 + 40);
          *(v42 + 40) = v188;
          *(v42 + 24) = v163;
          if (v16->n128_f64[1] < v27->n128_f64[1])
          {
            v189 = v27[1].n128_i64[0];
            v164 = *v27;
            *v27 = *v16;
            v27[1].n128_u8[0] = v16[1].n128_u8[0];
            v16[1].n128_u8[0] = v189;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v187 = v27[1].n128_u64[0];
          v162 = *v27;
          *v27 = *(v42 + 24);
          v27[1].n128_u8[0] = *(v42 + 40);
          goto LABEL_56;
        }

        v190 = v27[1].n128_i64[0];
        v165 = *v27;
        *v27 = *v16;
        v27[1].n128_u8[0] = v16[1].n128_u8[0];
        v16[1].n128_u8[0] = v190;
        *v16 = v165;
        if (*(v42 + 32) < v16->n128_f64[1])
        {
          v187 = v16[1].n128_u64[0];
          v162 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u8[0] = *(v42 + 40);
LABEL_56:
          *(v42 + 40) = v187;
          *(v42 + 24) = v162;
        }
      }

      v191 = *(v12 + 16);
      v166 = *v12;
      result = *v16;
      *(v12 + 16) = v16[1].n128_u8[0];
      *v12 = result;
      result.n128_u64[1] = v166.n128_u64[1];
      v16[1].n128_u8[0] = v191;
      *v16 = v166;
      goto LABEL_58;
    }

    v20 = *(v12 + 8);
    if (v20 >= v16->n128_f64[1])
    {
      if (v17 < v20)
      {
        v179 = *(v12 + 16);
        v154 = *v12;
        result = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = result;
        result.n128_u64[1] = v154.n128_u64[1];
        *(a2 - 8) = v179;
        *v9 = v154;
        if (*(v12 + 8) < v16->n128_f64[1])
        {
          v180 = v16[1].n128_u64[0];
          v155 = *v16;
          result = *v12;
          v16[1].n128_u8[0] = *(v12 + 16);
          *v16 = result;
          result.n128_u64[1] = v155.n128_u64[1];
          *(v12 + 16) = v180;
          *v12 = v155;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v20)
    {
      v176 = v16[1].n128_u64[0];
      v151 = *v16;
      v21 = *v9;
      v16[1].n128_u8[0] = *(a2 - 8);
      *v16 = v21;
LABEL_35:
      result.n128_u64[1] = v151.n128_u64[1];
      *(a2 - 8) = v176;
      *v9 = v151;
      goto LABEL_58;
    }

    v183 = v16[1].n128_u64[0];
    v158 = *v16;
    result = *v12;
    v16[1].n128_u8[0] = *(v12 + 16);
    *v16 = result;
    result.n128_u64[1] = v158.n128_u64[1];
    *(v12 + 16) = v183;
    *v12 = v158;
    if (*(a2 - 16) < *(v12 + 8))
    {
      v176 = *(v12 + 16);
      v151 = *v12;
      v37 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v37;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u64[0] = *(v12 + 8);
LABEL_61:
      v58 = *v12;
      v59 = *(v12 + 16);
      v60 = v12;
      do
      {
        v61 = v60;
        v60 += 24;
      }

      while (*(v61 + 32) < result.n128_f64[0]);
      v62 = a2;
      if (v61 == v12)
      {
        v65 = a2;
        while (v60 < v65)
        {
          v63 = v65 - 24;
          v66 = *(v65 - 16);
          v65 -= 24;
          if (v66 < result.n128_f64[0])
          {
            goto LABEL_71;
          }
        }

        v63 = v65;
      }

      else
      {
        do
        {
          v63 = v62 - 24;
          v64 = *(v62 - 16);
          v62 -= 24;
        }

        while (v64 >= result.n128_f64[0]);
      }

LABEL_71:
      v12 = v60;
      if (v60 < v63)
      {
        v67 = v63;
        do
        {
          v68 = *v12;
          v69 = *(v12 + 16);
          v70 = *(v67 + 16);
          *v12 = *v67;
          *(v12 + 16) = v70;
          *(v67 + 16) = v69;
          *v67 = v68;
          do
          {
            v71 = *(v12 + 32);
            v12 += 24;
          }

          while (v71 < result.n128_f64[0]);
          do
          {
            v72 = *(v67 - 16);
            v67 -= 24;
          }

          while (v72 >= result.n128_f64[0]);
        }

        while (v12 < v67);
      }

      if (v12 - 24 != a1)
      {
        v73 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v73;
      }

      *(v12 - 24) = v58;
      *(v12 - 16) = result.n128_u64[0];
      *(v12 - 8) = v59;
      if (v60 < v63)
      {
        goto LABEL_82;
      }

      v74 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *>(a1, v12 - 24, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *>(v12, a2, v75))
      {
        a2 = v12 - 24;
        if (!v74)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v74)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *,false>(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u64[0] = *(v12 + 8);
      if (*(v12 - 16) < result.n128_f64[0])
      {
        goto LABEL_61;
      }

      if (result.n128_f64[0] >= *(a2 - 16))
      {
        v78 = v12 + 24;
        do
        {
          v12 = v78;
          if (v78 >= a2)
          {
            break;
          }

          v79 = *(v78 + 8);
          v78 += 24;
        }

        while (result.n128_f64[0] >= v79);
      }

      else
      {
        v76 = v12;
        do
        {
          v12 = v76 + 24;
          v77 = *(v76 + 32);
          v76 += 24;
        }

        while (result.n128_f64[0] >= v77);
      }

      v80 = a2;
      if (v12 < a2)
      {
        v81 = a2;
        do
        {
          v80 = v81 - 24;
          v82 = *(v81 - 16);
          v81 -= 24;
        }

        while (result.n128_f64[0] < v82);
      }

      v83 = *a1;
      v84 = *(a1 + 16);
      while (v12 < v80)
      {
        v192 = *(v12 + 16);
        v167 = *v12;
        v85 = *v80;
        *(v12 + 16) = *(v80 + 16);
        *v12 = v85;
        *(v80 + 16) = v192;
        *v80 = v167;
        do
        {
          v86 = *(v12 + 32);
          v12 += 24;
        }

        while (result.n128_f64[0] >= v86);
        do
        {
          v87 = *(v80 - 16);
          v80 -= 24;
        }

        while (result.n128_f64[0] < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v83;
      *(v12 - 16) = result.n128_u64[0];
      *(v12 - 8) = v84;
    }
  }

  result.n128_u64[0] = *(v12 + 32);
  v89 = *(a2 - 16);
  if (result.n128_f64[0] >= *(v12 + 8))
  {
    if (v89 >= result.n128_f64[0])
    {
      return result;
    }

    result = *(v12 + 24);
    v136 = *(v12 + 40);
    v137 = *(a2 - 8);
    *(v12 + 24) = *v9;
    *(v12 + 40) = v137;
    *(a2 - 8) = v136;
    *v9 = result;
    goto LABEL_187;
  }

  if (v89 < result.n128_f64[0])
  {
    goto LABEL_111;
  }

  v197 = *(v12 + 16);
  v172 = *v12;
  *v12 = *(v12 + 24);
  *(v12 + 16) = *(v12 + 40);
  result.n128_u64[1] = v172.n128_u64[1];
  *(v12 + 24) = v172;
  *(v12 + 40) = v197;
  result.n128_u64[0] = *(a2 - 16);
  if (result.n128_f64[0] < *(v12 + 32))
  {
    result = *(v12 + 24);
    v144 = *(v12 + 40);
    v145 = *(a2 - 8);
    *(v12 + 24) = *v9;
    *(v12 + 40) = v145;
    *(a2 - 8) = v144;
    goto LABEL_112;
  }

  return result;
}

void sub_1B32A0948(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<md::MuninJunctionCrossStreet *,std::shared_ptr<md::MuninJunctionElement>::__shared_ptr_default_delete<md::MuninJunctionElement,md::MuninJunctionCrossStreet>,std::allocator<md::MuninJunctionCrossStreet>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MuninJunctionCrossStreet *,std::shared_ptr<md::MuninJunctionElement>::__shared_ptr_default_delete<md::MuninJunctionElement,md::MuninJunctionCrossStreet>,std::allocator<md::MuninJunctionCrossStreet>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[1];
  v7 = a3->n128_f64[1];
  if (v6 >= a1->n128_f64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      v10 = a2[1].n128_u64[0];
      v11 = a3[1].n128_u8[0];
      *a2 = *a3;
      a2[1].n128_u8[0] = v11;
      a3[1].n128_u8[0] = v10;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        v12 = a1[1].n128_u64[0];
        v13 = a2[1].n128_u8[0];
        *a1 = *a2;
        a1[1].n128_u8[0] = v13;
        a2[1].n128_u8[0] = v12;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = a1[1].n128_u64[0];
      v9 = a3[1].n128_u8[0];
      *a1 = *a3;
      a1[1].n128_u8[0] = v9;
LABEL_9:
      a3[1].n128_u8[0] = v8;
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    v14 = a1[1].n128_u64[0];
    v15 = a2[1].n128_u8[0];
    *a1 = *a2;
    a1[1].n128_u8[0] = v15;
    a2[1].n128_u8[0] = v14;
    *a2 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      v8 = a2[1].n128_u64[0];
      v16 = a3[1].n128_u8[0];
      *a2 = *a3;
      a2[1].n128_u8[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[1] < a3->n128_f64[1])
  {
    result = *a3;
    v17 = a3[1].n128_u64[0];
    v18 = a4[1].n128_u8[0];
    *a3 = *a4;
    a3[1].n128_u8[0] = v18;
    a4[1].n128_u8[0] = v17;
    *a4 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      v19 = a2[1].n128_u64[0];
      v20 = a3[1].n128_u8[0];
      *a2 = *a3;
      a2[1].n128_u8[0] = v20;
      a3[1].n128_u8[0] = v19;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        v21 = a1[1].n128_u64[0];
        v22 = a2[1].n128_u8[0];
        *a1 = *a2;
        a1[1].n128_u8[0] = v22;
        a2[1].n128_u8[0] = v21;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[1];
  if (result.n128_f64[0] < a4->n128_f64[1])
  {
    result = *a4;
    v23 = a4[1].n128_i64[0];
    v24 = a5[1].n128_u8[0];
    *a4 = *a5;
    a4[1].n128_u8[0] = v24;
    a5[1].n128_u8[0] = v23;
    *a5 = result;
    result.n128_u64[0] = a4->n128_u64[1];
    if (result.n128_f64[0] < a3->n128_f64[1])
    {
      result = *a3;
      v25 = a3[1].n128_u64[0];
      v26 = a4[1].n128_u8[0];
      *a3 = *a4;
      a3[1].n128_u8[0] = v26;
      a4[1].n128_u8[0] = v25;
      *a4 = result;
      result.n128_u64[0] = a3->n128_u64[1];
      if (result.n128_f64[0] < a2->n128_f64[1])
      {
        result = *a2;
        v27 = a2[1].n128_u64[0];
        v28 = a3[1].n128_u8[0];
        *a2 = *a3;
        a2[1].n128_u8[0] = v28;
        a3[1].n128_u8[0] = v27;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[1];
        if (result.n128_f64[0] < a1->n128_f64[1])
        {
          result = *a1;
          v29 = a1[1].n128_u64[0];
          v30 = a2[1].n128_u8[0];
          *a1 = *a2;
          a1[1].n128_u8[0] = v30;
          a2[1].n128_u8[0] = v29;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 24);
      v8 = *(a1 + 32);
      v9 = *(a2 - 16);
      if (v8 < *(a1 + 8))
      {
        if (v9 >= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
          if (*(a2 - 16) >= *(a1 + 32))
          {
            return 1;
          }

          v10 = *(a1 + 24);
          v11 = *(a1 + 40);
          v37 = *(a2 - 8);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v37;
        }

        else
        {
          v10 = *a1;
          v11 = *(a1 + 16);
          v12 = *(a2 - 8);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *(a2 - 8) = v11;
        *v7 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *(a1 + 24);
      v25 = *(a1 + 40);
      v26 = *(a2 - 8);
      *(a1 + 24) = *v7;
      *(a1 + 40) = v26;
      *(a2 - 8) = v25;
      *v7 = v24;
LABEL_50:
      if (*(a1 + 32) < *(a1 + 8))
      {
        v57 = *(a1 + 16);
        v58 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v58;
        *(a1 + 40) = v57;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 8);
    v21 = *(a1 + 56);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v31;
        if (*(a1 + 32) < v20)
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v34;
          *(a1 + 40) = v33;
        }
      }

      goto LABEL_47;
    }

    if (v21 >= v19)
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (v21 >= *(a1 + 32))
      {
        goto LABEL_47;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v23;
    *(a1 + 64) = v22;
LABEL_47:
    if (*(a2 - 16) >= *(a1 + 56))
    {
      return 1;
    }

    v51 = a2 - 24;
    v52 = *(a1 + 48);
    v53 = *(a1 + 64);
    v54 = *(a2 - 8);
    *(a1 + 48) = *(a2 - 24);
    *(a1 + 64) = v54;
    *(v51 + 16) = v53;
    *v51 = v52;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      return 1;
    }

    v55 = *(a1 + 40);
    v56 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v56;
    *(a1 + 64) = v55;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 16) < *(a1 + 8))
    {
      v4 = *a1;
      v5 = *(a1 + 16);
      v6 = *(a2 - 8);
      *a1 = *(a2 - 24);
      *(a1 + 16) = v6;
      *(a2 - 8) = v5;
      *(a2 - 24) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 48;
  v14 = *(a1 + 32);
  v15 = *(a1 + 8);
  v16 = *(a1 + 56);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v28;
      *(a1 + 64) = v27;
      if (*(a1 + 32) < v15)
      {
        v29 = *(a1 + 16);
        v30 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (v16 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 64);
    }

    *v13 = v18;
    *(a1 + 64) = v17;
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *(v40 + 8);
    if (v43 < *(v13 + 8))
    {
      v44 = *v40;
      v45 = *(v40 + 16);
      v46 = v41;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (v43 >= *(v47 + 32))
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v44;
      *(v48 + 8) = v43;
      *(v48 + 16) = v45;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v13 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}