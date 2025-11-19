void *std::unique_ptr<md::GridRenderResources>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 37));
    std::__list_imp<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry>>::clear(v2 + 34);
    ggl::RenderItem::~RenderItem((v2 + 19));
    v3 = v2[18];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[16];
    v2[16] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[15];
    v2[15] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v2[14];
    v2[14] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v2[13];
    v2[13] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v2[12];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = v2[10];
    v2[10] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v2[9];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = v2[7];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = v2[5];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = v2[3];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = v2[1];
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::RasterRenderLayer::RasterRenderLayer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    v8 = 9;
  }

  else
  {
    v8 = 11;
  }

  if (a3 == 1)
  {
    v8 = 8;
  }

  if (a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7;
  }

  if (a3 == 1)
  {
    v10 = 8;
  }

  else
  {
    v10 = 10;
  }

  if (a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 7;
  }

  LOWORD(v21[0]) = v11;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](v25, v21, 1);
  v12 = +[VKSharedResourcesManager sharedResources];
  v13 = v12;
  if (v12)
  {
    [v12 standardCommandBufferSelector];
    v14 = v22;
  }

  else
  {
    v14 = 0;
    v22 = 0;
    v23 = 0;
  }

  if (a3 > 2)
  {
    v16 = 20;
    if (*(v14 + 56))
    {
      v16 = 194;
    }

    v15 = (*(v14 + 8) + v16);
  }

  else
  {
    v15 = (*(v14 + 8) + 2 * a3 + 12);
  }

  LOWORD(v20[0]) = *v15;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](v24, v20, 1);
  md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::CartographicTiledRenderLayer(a1, v9, v25, a2, v24, 1);
  if (v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  *a1 = &unk_1F2A26AB0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = a3;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  v17 = *a4;
  v18 = a4[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    v19 = *(a1 + 360);
    *(a1 + 352) = v17;
    *(a1 + 360) = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      v17 = *(a1 + 352);
    }
  }

  else
  {
    *(a1 + 352) = v17;
    *(a1 + 360) = 0;
  }

  *(a1 + 368) = v17;
  operator new();
}

void sub_1B28B4B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__function::__value_func<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100](v7);
  std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v6);
  std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v5);
  std::__function::__value_func<void ()(ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100](va1);
  MEMORY[0x1B8C62190](v5, 0x10A0C405CD4001ALL);
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100](v3 + 3, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup>>::reset[abi:nn200100](v4, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::Clut::Pos2DUVPipelineSetup>>::reset[abi:nn200100](v3 + 1, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::Textured::Pos2DUVPipelineSetup>>::reset[abi:nn200100](v3, 0);
  MEMORY[0x1B8C62190](v3, 0x20C40DC1BFBCFLL);
  std::unique_ptr<md::RasterRenderResources>::reset[abi:nn200100]((v2 + 376), 0);
  if (*v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*v8);
  }

  md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::~CartographicTiledRenderLayer(v2);
  _Unwind_Resume(a1);
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::CartographicTiledRenderLayer(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  *a1 = &unk_1F2A16858;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100]((a1 + 8), a5);
  *(a1 + 32) = 0;
  *(a1 + 34) = a2;
  *(a1 + 40) = a4;
  *a1 = &unk_1F2A2B5F8;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 248) = xmmword_1B33B1310;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 320) = *a3;
  *(a1 + 336) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 344) = a6;
  return a1;
}

ggl::zone_mallocator *std::vector<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::Pos2DUVPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::Pos2DUVPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Textured::Pos2DUVPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::Textured::Pos2DUVPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Textured::Pos2DUVPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Textured::Pos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Textured::Pos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Clut::Pos2DUVPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Clut::Pos2DUVPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Clut::Pos2DUVPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Clut::Pos2DUVPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Clut::Pos2DUVPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Clut::Pos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Clut::Pos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ***std::unique_ptr<md::RasterRenderResources>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100](v2 + 3, 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup>>::reset[abi:nn200100](v2 + 2, 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Clut::Pos2DUVPipelineSetup>>::reset[abi:nn200100](v2 + 1, 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Textured::Pos2DUVPipelineSetup>>::reset[abi:nn200100](v2, 0);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::MeshTyped<ggl::PolygonShadowedStroke::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::PolygonShadowedStroke::DefaultVbo>::attributesReflection(void)::r = &ggl::PolygonShadowedStroke::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::PolygonShadowedStroke::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::PolygonShadowedStroke::DefaultVbo>::attributesReflection(void)::r;
    qword_1ED66A478 = 1;
  }
}

uint64_t std::__function::__func<md::CoastLineRenderResources::CoastLineRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_0,std::allocator<md::CoastLineRenderResources::CoastLineRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_0>,ggl::PolygonFill::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A5A510;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::CoastLineRenderResources::CoastLineRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_1,std::allocator<md::CoastLineRenderResources::CoastLineRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_1>,ggl::PolygonShadowedStroke::ShadowPathPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A5A5A0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,geo::allocator_adapter<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,geo::allocator_adapter<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,geo::allocator_adapter<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,geo::allocator_adapter<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,geo::allocator_adapter<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::GlowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::GlowAlpha::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GlowAlpha::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::GlowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::GlowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::CoastLineRenderResources::CoastLineRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_2,std::allocator<md::CoastLineRenderResources::CoastLineRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_2>,ggl::GlowAlpha::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A5A738;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::GlowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::GlowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GlowAlpha::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::GlowAlpha::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::GlowAlpha::MeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::GlowAlpha::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::GlowAlpha::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::GlowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::GlowAlpha::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::GlowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::GlowAlpha::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::GlowAlpha::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::CoastLineRenderResources::CoastLineRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_3,std::allocator<md::CoastLineRenderResources::CoastLineRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_3>,ggl::Glow::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A5A820;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Glow::MeshPipelineSetup *,geo::allocator_adapter<ggl::Glow::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glow::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Glow::MeshPipelineSetup *,geo::allocator_adapter<ggl::Glow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Glow::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::Glow::MeshPipelineSetup *,geo::allocator_adapter<ggl::Glow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glow::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Glow::MeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Glow::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Glow::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Glow::MeshPipelineSetup *,geo::allocator_adapter<ggl::Glow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Glow::MeshPipelineSetup *,geo::allocator_adapter<ggl::Glow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Glow::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::RenderDataHolder *ggl::GlowAlpha::MeshPipelineState::MeshPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5)
{
  {
    v14 = a4;
    v16 = a2;
    v17 = a3;
    a2 = v16;
    a3 = v17;
    a4 = v14;
    if (v15)
    {
      {
        if (v15)
        {
          {
            {
              ggl::MeshTyped<ggl::GlowAlpha::DefaultVbo>::attributesReflection(void)::r = &ggl::GlowAlpha::defaultVboReflection;
            }

            ggl::MeshTyped<ggl::GlowAlpha::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::GlowAlpha::DefaultVbo>::attributesReflection(void)::r;
            unk_1ED66A3C0 = 1;
          }

          ggl::GlowAlpha::MeshPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::GlowAlpha::DefaultVbo>::typedReflection(void)::r;
          *algn_1EB830188 = &ggl::GlowAlpha::pipelineDataMeshPipelineDeviceStructs(void)::ref;
          qword_1EB830190 = 0;
          {
            ggl::GlowAlpha::pipelineDataMeshPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
            unk_1EB830170 = ggl::Tile::Transform::reflection(void)::reflection;
            qword_1EB830178 = ggl::GlowAlpha::Glow::reflection(void)::reflection;
          }

          qword_1EB830198 = &ggl::GlowAlpha::pipelineDataMeshPipelineConstantStructs(void)::ref;
          unk_1EB8301A0 = xmmword_1B33B0910;
        }
      }

      ggl::GlowAlpha::MeshPipelineState::typedReflection(void)::ref = &ggl::GlowAlpha::MeshPipelineSetup::typedReflection(void)::ref;
      ggl::GlowAlphaShader::typedReflection(v15);
      qword_1ED65FDE0 = &ggl::GlowAlphaShader::typedReflection(void)::ref;
      {
        ggl::GlowAlpha::pipelineStateMeshPipelineAttributeStructBinding(void)::attr = 0;
        unk_1EB8300B0 = 0;
        qword_1EB8300B8 = "";
        dword_1EB8300C0 = 0;
        qword_1EB8300C8 = &ggl::GlowAlpha::pipelineStateMeshPipelineAttributeBinding_0(void)::attr;
        unk_1EB8300D0 = 2;
      }

      qword_1ED65FDE8 = &ggl::GlowAlpha::pipelineStateMeshPipelineAttributeStructBinding(void)::attr;
      unk_1ED65FDF0 = 1;
      qword_1ED65FDF8 = 0;
      unk_1ED65FE00 = 0;
      qword_1ED65FE08 = &ggl::GlowAlpha::pipelineStateMeshPipelineDeviceStructBinding(void)::ref;
      unk_1ED65FE10 = 0;
      {
        ggl::GlowAlpha::pipelineStateMeshPipelineConstantStructBinding(void)::ref = 0;
        unk_1EB8300E0 = 0;
        qword_1EB8300E8 = "view";
        dword_1EB8300F0 = 3;
        qword_1EB8300F8 = &ggl::GlowAlpha::pipelineStateMeshPipelineConstantViewBinding(void)::reflection;
        unk_1EB830100 = xmmword_1B33B0750;
        qword_1EB830110 = 1;
        unk_1EB830118 = "transform";
        dword_1EB830120 = 3;
        qword_1EB830128 = &ggl::GlowAlpha::pipelineStateMeshPipelineConstantTransformBinding(void)::reflection;
        *algn_1EB830130 = xmmword_1B33B0A10;
        qword_1EB830140 = 2;
        unk_1EB830148 = "glow";
        dword_1EB830150 = 3;
        qword_1EB830158 = &ggl::GlowAlpha::pipelineStateMeshPipelineConstantGlowBinding(void)::reflection;
        unk_1EB830160 = 2;
      }

      qword_1ED65FE18 = &ggl::GlowAlpha::pipelineStateMeshPipelineConstantStructBinding(void)::ref;
      unk_1ED65FE20 = 3;
      a4 = v14;
      a2 = v16;
      a3 = v17;
    }
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v20 = *a3;
  *&v20[16] = *(a3 + 16);
  *&v20[28] = *(a3 + 28);
  v9 = *(a3 + 44);
  v18 = *a4;
  v19 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::GlowAlpha::MeshPipelineState::typedReflection(void)::ref;
  *(this + 6) = v8;
  *(this + 7) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v12 = this + i;
    v12[64] = 0;
    *(v12 + 68) = xmmword_1B33B0760;
    *(v12 + 84) = 0;
    *(v12 + 100) = 0;
    *(v12 + 92) = 0;
  }

  *(this + 16) = v18;
  *(this + 17) = v19;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v20;
  *(this + 76) = *&v20[12];
  *(this + 92) = *&v20[28];
  *(this + 108) = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = &unk_1F2A33CA0;
  *(this + 304) = a5;
  *(this + 305) = 0;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v10);
  *(this + 288) = 1;
  return this;
}

void *ggl::PolygonFill::MeshPipelineSetup::MeshPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F2A56830;
  return a1;
}

void ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[1];
  *a2 = a3;
  a2[1] = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 24);
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 40);
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void ggl::MeshTyped<ggl::Glow::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::Glow::DefaultVbo>::attributesReflection(void)::r = &ggl::Glow::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::Glow::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::Glow::DefaultVbo>::attributesReflection(void)::r;
    qword_1ED66A460 = 1;
  }
}

uint64_t *std::unique_ptr<md::CoastLineRenderResources>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v22 = (v2 + 256);
    std::vector<std::pair<std::unique_ptr<ggl::PolygonSolidFill::MeshPipelineSetup>,std::unique_ptr<ggl::RenderItem>>>::__destroy_vector::operator()[abi:nn200100](&v22);
    v3 = *(v2 + 248);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 232);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = *(v2 + 216);
    *(v2 + 216) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v2 + 208);
    *(v2 + 208) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(v2 + 200);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = *(v2 + 184);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(v2 + 168);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = *(v2 + 152);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = *(v2 + 136);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = *(v2 + 120);
    *(v2 + 120) = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 112), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 104), 0);
    v13 = *(v2 + 96);
    *(v2 + 96) = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *(v2 + 88);
    *(v2 + 88) = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = *(v2 + 80);
    *(v2 + 80) = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup>>::reset[abi:nn200100]((v2 + 24), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 16), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Glow::MeshPipelineSetup>>::reset[abi:nn200100]((v2 + 8), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::GlowAlpha::MeshPipelineSetup>>::reset[abi:nn200100](v2, 0);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *commandBufferLocationsForType(void *a1, int a2, uint64_t a3)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v7 = *(a3 + 8);
        v10[0] = *(v7 + 46);
        v4 = *(v7 + 142);
        goto LABEL_15;
      }

      v5 = *(*(a3 + 8) + 36);
    }

    else
    {
      v5 = *(*(a3 + 8) + 34);
    }
  }

  else
  {
    if (a2 > 4)
    {
      v6 = *(a3 + 8);
      if (a2 == 5)
      {
        v10[0] = v6[25];
        v4 = v6[27];
      }

      else
      {
        v10[0] = v6[49];
        v4 = v6[72];
      }

      goto LABEL_15;
    }

    if (a2 == 3)
    {
      v3 = *(a3 + 8);
      v10[0] = *(v3 + 44);
      v4 = *(v3 + 48);
LABEL_15:
      v10[1] = v4;
      v8 = 2;
      return std::vector<md::CommandBufferLocation>::vector[abi:nn200100](a1, v10, v8);
    }

    v5 = *(*(a3 + 8) + 52);
  }

  v10[0] = v5;
  v8 = 1;
  return std::vector<md::CommandBufferLocation>::vector[abi:nn200100](a1, v10, v8);
}

void md::RoadSharedResources::RoadSharedResources(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = *(*(a2 + 80) + 1456);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B28B83F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  v24 = v20[20];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v25 = v20[18];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  v26 = v20[14];
  v20[14] = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = v20[13];
  v20[13] = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = v20[12];
  v20[12] = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = v20[11];
  v20[11] = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = v20[10];
  v20[10] = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *v22;
  *v22 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = v20[8];
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = v20[6];
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = v20[4];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  v35 = v20[2];
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](v20, 0);
  _Unwind_Resume(a1);
}

void ggl::OuterShadowRibbon::PipelineSetup::typedReflection(ggl::OuterShadowRibbon::PipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::typedReflection();
    ggl::OuterShadowRibbon::PipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::typedReflection(void)::r;
    unk_1ED66D250 = &ggl::OuterShadowRibbon::pipelineDataPipelineDeviceStructs(void)::ref;
    qword_1ED66D258 = 0;
    {
      ggl::OuterShadowRibbon::pipelineDataPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66D238 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66D240 = ggl::OuterShadowRibbon::Style::reflection(void)::reflection;
    }

    qword_1ED66D260 = &ggl::OuterShadowRibbon::pipelineDataPipelineConstantStructs(void)::ref;
    *algn_1ED66D268 = xmmword_1B33B07A0;
  }
}

void ggl::Line::BasePipelineSetup::typedReflection(ggl::Line::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::typedReflection();
    ggl::Line::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::typedReflection(void)::r;
    unk_1ED670260 = &ggl::Line::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1ED670268 = 0;
    {
      ggl::Line::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66A808 = ggl::Line::Style::reflection(void)::reflection;
    }

    qword_1ED670270 = &ggl::Line::pipelineDataBasePipelineConstantStructs(void)::ref;
    unk_1ED670278 = xmmword_1B33B0780;
  }
}

void ggl::TexturedSolidRibbon::PipelineSetup::typedReflection(ggl::TexturedSolidRibbon::PipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::typedReflection();
    ggl::TexturedSolidRibbon::PipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::typedReflection(void)::r;
    unk_1ED66C800 = &ggl::TexturedSolidRibbon::pipelineDataPipelineDeviceStructs(void)::ref;
    qword_1ED66C808 = 0;
    {
      ggl::TexturedSolidRibbon::pipelineDataPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66C7D8 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66C7E0 = ggl::OffsetRibbon::Style::reflection(void)::reflection;
      unk_1ED66C7E8 = ggl::OffsetRibbon::Noise::reflection(void)::reflection;
    }

    qword_1ED66C810 = &ggl::TexturedSolidRibbon::pipelineDataPipelineConstantStructs(void)::ref;
    unk_1ED66C818 = xmmword_1B33B0C40;
  }
}

void ggl::TexturedInnerShadowRibbon::PipelineSetup::typedReflection(ggl::TexturedInnerShadowRibbon::PipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::typedReflection();
    ggl::TexturedInnerShadowRibbon::PipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::Ribbon::DefaultVbo>::typedReflection(void)::r;
    *algn_1ED66B4B8 = &ggl::TexturedInnerShadowRibbon::pipelineDataPipelineDeviceStructs(void)::ref;
    qword_1ED66B4C0 = 0;
    {
      ggl::TexturedInnerShadowRibbon::pipelineDataPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1ED66B490 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66B498 = ggl::OffsetRibbon::Style::reflection(void)::reflection;
      unk_1ED66B4A0 = ggl::OffsetRibbon::Noise::reflection(void)::reflection;
      qword_1ED66B4A8 = ggl::TexturedInnerShadowRibbon::ShadowStyle::reflection(void)::reflection;
    }

    qword_1ED66B4C8 = &ggl::TexturedInnerShadowRibbon::pipelineDataPipelineConstantStructs(void)::ref;
    *algn_1ED66B4D0 = xmmword_1B33B0C50;
  }
}

uint64_t **std::unique_ptr<md::RoadSharedResources>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[20];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[18];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v2[14];
    v2[14] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v2[13];
    v2[13] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v2[12];
    v2[12] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v2[11];
    v2[11] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v2[10];
    v2[10] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v2[9];
    v2[9] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v2[8];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = v2[6];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = v2[4];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = v2[2];
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = *v2;
    *v2 = 0;
    if (v15)
    {
      std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v15 + 104));
      v16 = *(v15 + 8);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      MEMORY[0x1B8C62190](v15, 0x1020C40AD78EA61);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

md::PatternedSharedResources *std::unique_ptr<md::PatternedSharedResources>::reset[abi:nn200100](md::PatternedSharedResources **a1, md::PatternedSharedResources *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    md::PatternedSharedResources::~PatternedSharedResources(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

unsigned __int8 *geo::linear_map<md::CommandBufferLocation,ggl::ClearItem *,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>,std::vector<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>>::operator[](unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_10;
  }

  v5 = *a1;
  while (*a2 != *v5 || a2[1] != v5[1])
  {
    v5 += 16;
    if (v5 == v4)
    {
      goto LABEL_10;
    }
  }

  if (v5 == v4)
  {
LABEL_10:
    v7 = *a2;
    if (v3 == v4)
    {
      goto LABEL_19;
    }

    v5 = *a1;
    while (*v5 != *a2 || v5[1] != v7 >> 8)
    {
      v5 += 16;
      if (v5 == v4)
      {
        goto LABEL_19;
      }
    }

    if (v5 == v4)
    {
LABEL_19:
      v9 = a1[2];
      if (v4 >= v9)
      {
        v11 = (v4 - v3) >> 4;
        v12 = v11 + 1;
        if ((v11 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v13 = v9 - v3;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>>(v14);
        }

        v15 = 16 * v11;
        *v15 = v7;
        *(v15 + 8) = 0;
        v10 = 16 * v11 + 16;
        v16 = a1[1] - *a1;
        v17 = v15 - v16;
        memcpy((v15 - v16), *a1, v16);
        v18 = *a1;
        *a1 = v17;
        a1[1] = v10;
        a1[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v4 = v7;
        *(v4 + 1) = 0;
        v10 = (v4 + 16);
      }

      a1[1] = v10;
      v5 = (v10 - 16);
    }
  }

  return v5 + 8;
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::attributesReflection(void)::r = &ggl::CommonMesh::bufferPos2Reflection;
    }

    ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection(void)::r = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::attributesReflection(void)::r;
    qword_1ED66A6B0 = 1;
  }
}

void *std::unique_ptr<md::SkyRenderResources>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[26];
    v2[26] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[25];
    v2[25] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[24];
    v2[24] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v2[23];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = v2[21];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = v2[19];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = v2[17];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = v2[15];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = v2[13];
    v2[13] = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v2[12];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = v2[10];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = v2[8];
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = v2[6];
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v16 = v2[4];
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v17 = v2[2];
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::MeshTyped<ggl::GlobeStars::StarVertex>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::GlobeStars::StarVertex>::attributesReflection(void)::r = &ggl::GlobeStars::starVertexReflection;
    }

    ggl::MeshTyped<ggl::GlobeStars::StarVertex>::typedReflection(void)::r = &ggl::MeshTyped<ggl::GlobeStars::StarVertex>::attributesReflection(void)::r;
    qword_1ED66A658 = 1;
  }
}

void ggl::MeshTyped<ggl::GlobeAtmosphere::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::GlobeAtmosphere::DefaultVbo>::attributesReflection(void)::r = &ggl::GlobeAtmosphere::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::GlobeAtmosphere::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::GlobeAtmosphere::DefaultVbo>::attributesReflection(void)::r;
    qword_1ED66A538 = 1;
  }
}

uint64_t *std::unique_ptr<md::GlobeSkyRenderResources>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 224);
    *(v2 + 224) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 216);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = *(v2 + 200);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v2 + 184);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(v2 + 168);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = *(v2 + 152);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(v2 + 136);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = *(v2 + 120);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = *(v2 + 104);
    *(v2 + 104) = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *(v2 + 96);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = *(v2 + 80);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = *(v2 + 64);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = *(v2 + 48);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v16 = *(v2 + 32);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::LabelRenderLayer::updateMapDataUsed(md::LabelRenderLayer *this)
{
  v2 = 0;
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0xC001B0019000DLL;
  v10 = 69;
  v12 = 0;
  v11 = 0uLL;
  do
  {
    geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(&v11, &v9 + v2);
    v2 += 2;
  }

  while (v2 != 10);
  v3 = (this + 280);
  v4 = *(this + 35);
  v5 = *(this + 37);
  *(this + 280) = v11;
  *(this + 37) = v12;
  *&v11 = v4;
  v12 = v5;
  if (v4)
  {
    *(&v11 + 1) = v4;
    operator delete(v4);
  }

  if (*(this + 274) == 1)
  {
    LOWORD(v11) = 66;
    geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(this + 35, &v11);
  }

  if (*(this + 273) == 1)
  {
    LOWORD(v11) = 26;
    geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(this + 35, &v11);
  }

  if (*(this + 271) == 1)
  {
    LOWORD(v11) = 24;
    geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(this + 35, &v11);
    if (*(this + 272) == 1)
    {
      LOWORD(v11) = 74;
      geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(this + 35, &v11);
    }
  }

  else
  {
    LOWORD(v11) = 20;
    geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(this + 35, &v11);
  }

  if (*(this + 270) == 1)
  {
    v6 = 0;
    *&v11 = 0x2B001500170016;
    WORD4(v11) = 52;
    do
    {
      geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(this + 35, &v11 + v6);
      v6 += 2;
    }

    while (v6 != 10);
    if (*(this + 275) == 1)
    {
      LOWORD(v11) = 80;
      geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(this + 35, &v11);
    }
  }

  else
  {
    LOWORD(v11) = 19;
    geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(this + 35, &v11);
    if (*(this + 275) == 1)
    {
      LOWORD(v11) = 73;
      geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(this + 35, &v11);
    }

    if (*(this + 277) == 1)
    {
      v7 = 0;
      LODWORD(v11) = 3473485;
      WORD2(v11) = 21;
      do
      {
        geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(v3, &v11 + v7);
        v7 += 2;
      }

      while (v7 != 6);
    }

    else
    {
      v8 = 0;
      LODWORD(v11) = 1179650;
      do
      {
        geo::linear_set<md::MapDataType,std::less<md::MapDataType>,std::allocator<md::MapDataType>,std::vector<md::MapDataType>>::insert(v3, &v11 + v8);
        v8 += 2;
      }

      while (v8 != 4);
    }
  }
}

void sub_1B28B9AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::TransitRenderLayer::TransitRenderLayer(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 1)
  {
    v7 = 20;
  }

  else
  {
    v7 = 19;
  }

  if (a4 == 1)
  {
    v8 = 17;
  }

  else
  {
    v8 = 16;
  }

  v19 = v8;
  [*(a2 + 104) format];
  [v6 standardCommandBufferSelector];
  v16[0] = *(*(v15 + 8) + 2 * v7);
  [v6 standardCommandBufferSelector];
  v9 = 184;
  if (a4 == 1)
  {
    v9 = 186;
  }

  v16[1] = *(*(v14 + 8) + v9);
  [v6 standardCommandBufferSelector];
  v10 = 150;
  if (a4 == 1)
  {
    v10 = 152;
  }

  v16[2] = *(*(v13 + 8) + v10);
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&__p, v16, 3);
  v11 = v6;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&v20, &v19, 1);
  *(a1 + 8) = 0;
  *a1 = &unk_1F2A16858;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v18 != __p)
  {
    std::vector<md::MapDataType>::__vallocate[abi:nn200100](a1 + 8, (v18 - __p) >> 1);
  }

  *(a1 + 32) = 0;
  *(a1 + 34) = v7;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 112) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 248) = xmmword_1B33B21A0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = v20;
  *(a1 + 336) = v21;
  *(a1 + 344) = 1;
  *a1 = &unk_1F2A2EB68;
  *(a1 + 352) = 0;
  operator new();
}

void sub_1B28BB410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  MEMORY[0x1B8C62190](v35, 0x10F1C40A7BCD190);
  v38 = *(v34 + 304);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  *(v34 + 272) = &unk_1F2A59028;

  v39 = *(v34 + 256);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  v40 = *(v34 + 240);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  v41 = *(v34 + 224);
  *(v34 + 224) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(v34 + 216);
  *(v34 + 216) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(v34 + 208);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  v44 = 0;
  v45 = v34 + 192;
  while (1)
  {
    v46 = *(v45 + v44);
    *(v45 + v44) = 0;
    if (v46)
    {
      (*(*v46 + 8))(v46);
    }

    v44 -= 8;
    if (v44 == -32)
    {
      v47 = 0;
      v48 = v34 + 160;
      while (1)
      {
        v49 = *(v48 + v47);
        *(v48 + v47) = 0;
        if (v49)
        {
          (*(*v49 + 8))(v49);
        }

        v47 -= 8;
        if (v47 == -32)
        {
          std::unique_ptr<md::TransitNodeTextureAtlas>::reset[abi:nn200100](a9, 0);
          std::unique_ptr<md::TransitNodeTextureAtlas>::reset[abi:nn200100]((v34 + 120), 0);
          v50 = *a25;
          *a25 = 0;
          if (v50)
          {
            (*(*v50 + 8))(v50);
          }

          std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(a10);
          std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(a11);
          v51 = *(v34 + 16);
          if (v51)
          {
            if ((*v51)-- == 1)
            {
              operator delete(v51);
              *(v34 + 16) = 0;
            }
          }

          MEMORY[0x1B8C62190](v34, 0x10A1C404E04FB85);
          std::__tree<gdc::LayerDataWithWorld>::destroy(*(a24 + 504));
          std::__tree<gdc::LayerDataWithWorld>::destroy(*(a24 + 480));
          std::__tree<gdc::LayerDataWithWorld>::destroy(*(a24 + 456));
          std::__tree<gdc::LayerDataWithWorld>::destroy(*(a24 + 432));
          v53 = *(a24 + 392);
          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v53);
          }

          std::unique_ptr<md::CTransitRenderResources>::reset[abi:nn200100]((a24 + 376), 0);
          md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::~CartographicTiledVectorRenderLayer(a24);

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

uint64_t *std::unique_ptr<md::CTransitRenderResources>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      v5 = v3 + 16;
      v4 = *(v3 + 16);
      *(*(v5 + 8) + 32) = 0;
      if (v4)
      {
        v6 = (v4 + 8);
      }

      else
      {
        v6 = 0;
      }

      *v6 = 0;
    }

    std::__hash_table<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::__unordered_map_hasher<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,md::DashTextureCache::KeyHasher,std::equal_to<md::DashTextureCache::Key>,true>,std::__unordered_map_equal<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::equal_to<md::DashTextureCache::Key>,md::DashTextureCache::KeyHasher,true>,std::allocator<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>>>::~__hash_table(v2 + 328);
    v7 = *(v2 + 312);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = *(v2 + 128);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    std::unique_ptr<md::TransitNodeFeaturePool>::~unique_ptr[abi:nn200100]((v2 + 96));
    v9 = *(v2 + 88);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<md::TransitNodeTextureAtlas>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 112);
    if (v3)
    {
      v4 = *(v2 + 120);
      v5 = *(v2 + 112);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = *(v2 + 112);
      }

      *(v2 + 120) = v3;
      operator delete(v5);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 96));
    std::__tree<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::__map_value_compare<geo::c3mm::C3mmFileIndex,std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::less<geo::c3mm::C3mmFileIndex>,true>,std::allocator<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>>>::destroy(*(v2 + 72));
    v7 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    *v2 = &unk_1F2A59028;

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::MeshTyped<ggl::TransitNode::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::TransitNode::DefaultVbo>::attributesReflection(void)::r = &ggl::TransitNode::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::TransitNode::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::TransitNode::DefaultVbo>::attributesReflection(void)::r;
    qword_1ED66A5E8 = 1;
  }
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TransitNode::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TransitNode::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void md::COverlayRenderLayer::COverlayRenderLayer(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (a4 == 1)
  {
    v10 = 42;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 41;
  }

  if (a4)
  {
    LODWORD(v17[0]) = 4718604;
    WORD2(v17[0]) = 81;
    std::vector<md::CommandBufferLocation>::vector[abi:nn200100](__p, v17, 3);
  }

  else
  {
    LODWORD(v17[0]) = 4653067;
    std::vector<md::CommandBufferLocation>::vector[abi:nn200100](__p, v17, 2);
  }

  [v9 standardCommandBufferSelector];
  v12 = 234;
  if (!a4)
  {
    v12 = 196;
  }

  v18 = *(*(v21 + 8) + v12);
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](v17, &v18, 1);
  *(a1 + 8) = 0;
  *a1 = &unk_1F2A16858;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v13 = *&v17[0];
  if (*(&v17[0] + 1) != *&v17[0])
  {
    std::vector<md::MapDataType>::__vallocate[abi:nn200100](a1 + 8, (*(&v17[0] + 1) - *&v17[0]) >> 1);
  }

  *(a1 + 32) = 0;
  *(a1 + 34) = v11;
  *(a1 + 40) = a2;
  *a1 = &unk_1F2A2B998;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0;
  *(a1 + 168) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 240) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 248) = xmmword_1B33B1310;
  *(a1 + 312) = 0;
  *(a1 + 320) = *__p;
  *(a1 + 336) = v20;
  *(a1 + 344) = 1;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 296) = 0u;
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  if (v13)
  {
    *(&v17[0] + 1) = v13;
    operator delete(v13);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *a1 = &unk_1F2A18EE0;
  *(a1 + 348) = a4;
  *(a1 + 352) = a5;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 13;
  v14 = *([v9 gglDevice] + 20);
  *(a1 + 394) = v14;
  *(a1 + 396) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 428) = 0x3F80000000000000;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 1065353216;
  v15 = *(a2 + 104);
  if (v14 == 1)
  {
    v16 = [v15 format];
  }

  else
  {
    v16 = [v15 linearFormat];
  }

  v17[0] = *v16;
  v17[1] = v16[1];
  operator new();
}

void sub_1B28BC328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  std::__hash_table<std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(v22);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v21 + 400);
  v24 = *(v21 + 384);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  std::unique_ptr<md::PolylineOverlaySharedResources>::reset[abi:nn200100]((v21 + 368), 0);
  md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::OverlayTileData>>::~CartographicTiledRenderLayer(v21);

  _Unwind_Resume(a1);
}

void md::COverlayRenderResources::COverlayRenderResources(md::COverlayRenderResources *this, VKSharedResources *a2, const RenderTargetFormat *a3)
{
  a2;
  *(this + 3) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 56) = 0;
  std::allocate_shared[abi:nn200100]<ggl::IndexDataTyped<unsigned short>,std::allocator<ggl::IndexDataTyped<unsigned short>>,char const(&)[18],int,0>();
}

void sub_1B28C00A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  ggl::BufferMemory::~BufferMemory(&a51);
  std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  ggl::BufferMemory::~BufferMemory(&a57);
  if (a64)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a64);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>>::reset[abi:nn200100]((a40 + 448), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::Textured::PoleTexturedBlendPipelineSetup>>::reset[abi:nn200100]((a40 + 440), 0);
  v65 = *(a40 + 432);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v65);
  }

  v66 = *(a40 + 416);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

  v67 = *(a40 + 400);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
  }

  v68 = *(a40 + 384);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v68);
  }

  v69 = *(a40 + 368);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
  }

  v70 = *(a40 + 352);
  *(a40 + 352) = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((a40 + 344), 0);
  std::unique_ptr<md::MaskingOverlayRenderable::SharedResources>::reset[abi:nn200100]((a40 + 336), 0);
  std::unique_ptr<md::PolygonOverlayRenderable::SharedResources>::reset[abi:nn200100]((a40 + 328), 0);
  std::unique_ptr<md::CircleOverlayRenderable::SharedResources>::reset[abi:nn200100]((a40 + 320), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup>>::reset[abi:nn200100]((a40 + 312), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::Textured::SRGBBlendPos2DUVPipelineSetup>>::reset[abi:nn200100]((a40 + 304), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::Textured::SRGBBlendPos4DUVPipelineSetup>>::reset[abi:nn200100]((a40 + 296), 0);
  v71 = *(a40 + 288);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v71);
  }

  v72 = *(a40 + 272);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v72);
  }

  v73 = *(a40 + 256);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v73);
  }

  v74 = *(a40 + 240);
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v74);
  }

  v75 = *(a40 + 224);
  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v75);
  }

  v76 = *(a40 + 208);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v76);
  }

  v77 = *(a40 + 192);
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v77);
  }

  v78 = *(a40 + 176);
  *(a40 + 176) = 0;
  if (v78)
  {
    (*(*v78 + 8))(v78);
  }

  v79 = *(a40 + 168);
  *(a40 + 168) = 0;
  if (v79)
  {
    (*(*v79 + 8))(v79);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>>::reset[abi:nn200100](a24, 0);
  v80 = *(a40 + 152);
  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v80);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((a40 + 136), 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>>::reset[abi:nn200100](a25, 0);
  v81 = *(a40 + 120);
  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v81);
  }

  v82 = *(a40 + 104);
  *(a40 + 104) = 0;
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  v83 = *(a40 + 96);
  *(a40 + 96) = 0;
  if (v83)
  {
    (*(*v83 + 8))(v83);
  }

  v84 = *(a40 + 88);
  if (v84)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v84);
  }

  v85 = *(a40 + 72);
  *(a40 + 72) = 0;
  if (v85)
  {
    MEMORY[0x1B8C62190](v85, 0x1000C4049ECCB0CLL);
  }

  v86 = *(a40 + 64);
  *(a40 + 64) = 0;
  if (v86)
  {
    (*(*v86 + 8))(v86);
  }

  v87 = 0;
  v88 = a40 + 56;
  while (1)
  {
    v89 = *(v88 + v87);
    *(v88 + v87) = 0;
    if (v89)
    {
      (*(*v89 + 8))(v89);
    }

    v87 -= 8;
    if (v87 == -16)
    {
      v90 = 40;
      while (1)
      {
        v91 = *(a40 + v90);
        *(a40 + v90) = 0;
        if (v91)
        {
          (*(*v91 + 8))(v91);
        }

        v90 -= 8;
        if (v90 == -8)
        {

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void *ggl::CommonMesh::Pos2UVMesh::Pos2UVMesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F29E4128;
  a1[2] = &unk_1F29E4148;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(a1 + 8, &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  a1[12] = v10;
  a1[13] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = &unk_1F29E3FF0;
  a1[2] = &unk_1F29E4010;
  return a1;
}

char *std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__vallocate[abi:nn200100](ggl::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = ggl::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<ggl::VertexData>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

void std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData>*,std::shared_ptr<ggl::VertexData>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__vdeallocate(a1);
    if (a4 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = a1[2] - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__vallocate[abi:nn200100](a1, v11);
    for (i = a1[1]; v6 != a3; i += 2)
    {
      v13 = v6[1];
      *i = *v6;
      i[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v6 += 2;
    }

LABEL_18:
    a1[1] = i;
    return;
  }

  v14 = a1[1] - v8;
  if (a4 > v14 >> 4)
  {
    v15 = (a2 + v14);
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a2, (a2 + v14), v8);
    for (i = a1[1]; v15 != a3; i += 2)
    {
      v16 = v15[1];
      *i = *v15;
      i[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v15 += 2;
    }

    goto LABEL_18;
  }

  v17 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a2, a3, v8);
  for (j = a1[1]; j != v17; j -= 2)
  {
    v19 = *(j - 1);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }
  }

  a1[1] = v17;
}

void std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1);
    v2 = *a1;
    v4 = ggl::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<ggl::VertexData>>(v4, v2);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

ggl::zone_mallocator *std::vector<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Textured::SRGBBlendPos2DUVPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::Textured::SRGBBlendPos2DUVPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Textured::SRGBBlendPos2DUVPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Textured::SRGBBlendPos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Textured::SRGBBlendPos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Textured::SRGBBlendPos4DUVPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Textured::SRGBBlendPos4DUVPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Textured::SRGBBlendPos4DUVPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Textured::SRGBBlendPos4DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Textured::SRGBBlendPos4DUVPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::RenderDataHolder *ggl::Textured::SRGBBlendPos2DUVPipelineState::SRGBBlendPos2DUVPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5, char a6, char a7, char a8)
{
  {
    v20 = a4;
    v23 = a2;
    v24 = a3;
    a2 = v23;
    a3 = v24;
    a4 = v20;
    if (v21)
    {
      ggl::Textured::SRGBBlendPos2DUVPipelineSetup::typedReflection(v21);
      ggl::Textured::SRGBBlendPos2DUVPipelineState::typedReflection(void)::ref = &ggl::Textured::SRGBBlendPos2DUVPipelineSetup::typedReflection(void)::ref;
      ggl::TexturedSRGBBlendShader::typedReflection(v22);
      qword_1ED65FE38 = &ggl::TexturedSRGBBlendShader::typedReflection(void)::ref;
      {
        ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineAttributeStructBinding(void)::attr = 0;
        *algn_1EB83DF18 = 0;
        qword_1EB83DF20 = "";
        dword_1EB83DF28 = 0;
        qword_1EB83DF30 = &ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineAttributeBinding_0(void)::attr;
        unk_1EB83DF38 = 2;
      }

      qword_1ED65FE40 = &ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineAttributeStructBinding(void)::attr;
      *algn_1ED65FE48 = 1;
      qword_1ED65FE50 = 0;
      unk_1ED65FE58 = 1;
      qword_1ED65FE60 = &ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineDeviceStructBinding(void)::ref;
      unk_1ED65FE68 = 0;
      {
        ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineConstantStructBinding(void)::ref = 0;
        *algn_1EB830568 = 0;
        qword_1EB830570 = "view";
        dword_1EB830578 = 3;
        qword_1EB830580 = &ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineConstantViewBinding(void)::reflection;
        unk_1EB830588 = xmmword_1B33B0750;
        qword_1EB830598 = 1;
        unk_1EB8305A0 = "transform";
        dword_1EB8305A8 = 3;
        qword_1EB8305B0 = &ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineConstantTransformBinding(void)::reflection;
        unk_1EB8305B8 = xmmword_1B33B0A10;
        qword_1EB8305C8 = 2;
        unk_1EB8305D0 = "tileScalar";
        dword_1EB8305D8 = 3;
        qword_1EB8305E0 = &ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineConstantTileScalarBinding(void)::reflection;
        unk_1EB8305E8 = xmmword_1B33B07E0;
        qword_1EB8305F8 = 3;
        unk_1EB830600 = "style";
        dword_1EB830608 = 3;
        qword_1EB830610 = &ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineConstantStyleBinding(void)::reflection;
        unk_1EB830618 = xmmword_1B33B1520;
        qword_1EB830628 = 4;
        unk_1EB830630 = "alphaTint";
        dword_1EB830638 = 3;
        qword_1EB830640 = &ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineConstantAlphaTintBinding(void)::reflection;
        unk_1EB830648 = 1;
      }

      qword_1ED65FE70 = &ggl::Textured::pipelineStateSRGBBlendPos2DUVPipelineConstantStructBinding(void)::ref;
      unk_1ED65FE78 = 5;
      a4 = v20;
      a2 = v23;
      a3 = v24;
    }
  }

  v14 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v27 = *a3;
  *&v27[16] = *(a3 + 16);
  *&v27[28] = *(a3 + 28);
  v15 = *(a3 + 44);
  v25 = *a4;
  v26 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::Textured::SRGBBlendPos2DUVPipelineState::typedReflection(void)::ref;
  *(this + 6) = v14;
  *(this + 7) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v18 = this + i;
    v18[64] = 0;
    *(v18 + 68) = xmmword_1B33B0760;
    *(v18 + 84) = 0;
    *(v18 + 100) = 0;
    *(v18 + 92) = 0;
  }

  *(this + 16) = v25;
  *(this + 17) = v26;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v27;
  *(this + 76) = *&v27[12];
  *(this + 92) = *&v27[28];
  *(this + 108) = v15;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  *this = &unk_1F2A32700;
  *(this + 304) = a5;
  *(this + 305) = a6;
  *(this + 306) = a7;
  *(this + 307) = a8;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v16);
  *(this + 288) = 1;
  *(this + 377) = 257;
  return this;
}

void ggl::Textured::SRGBBlendPos2DUVPipelineSetup::typedReflection(ggl::Textured::SRGBBlendPos2DUVPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection();
    ggl::Textured::SRGBBlendPos2DUVPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r;
    unk_1ED670200 = &ggl::Textured::pipelineDataSRGBBlendPos2DUVPipelineDeviceStructs(void)::ref;
    qword_1ED670208 = 0;
    {
      ggl::Textured::pipelineDataSRGBBlendPos2DUVPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66A728 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66A730 = ggl::Textured::TileScalar::reflection(void)::reflection;
      unk_1ED66A738 = ggl::Blending::SRGBBlendStyle::reflection(void)::reflection;
      qword_1ED66A740 = ggl::OverlayOcclusion::AlphaTint::reflection(void)::reflection;
    }

    qword_1ED670210 = &ggl::Textured::pipelineDataSRGBBlendPos2DUVPipelineConstantStructs(void)::ref;
    unk_1ED670218 = xmmword_1B33B1000;
  }
}

ggl::RenderDataHolder *ggl::Textured::SRGBBlendColormappedPos2DUVPipelineState::SRGBBlendColormappedPos2DUVPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5, char a6, char a7, char a8)
{
  {
    v20 = a4;
    v23 = a2;
    v24 = a3;
    a2 = v23;
    a3 = v24;
    a4 = v20;
    if (v21)
    {
      ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup::typedReflection(v21);
      ggl::Textured::SRGBBlendColormappedPos2DUVPipelineState::typedReflection(void)::ref = &ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup::typedReflection(void)::ref;
      ggl::TexturedColormappedSRGBTexturedShader::typedReflection(v22);
      qword_1EB830848 = &ggl::TexturedColormappedSRGBTexturedShader::typedReflection(void)::ref;
      {
        ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineAttributeStructBinding(void)::attr = 0;
        *algn_1EB8301B8 = 0;
        qword_1EB8301C0 = "";
        dword_1EB8301C8 = 0;
        qword_1EB8301D0 = &ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineAttributeBinding_0(void)::attr;
        unk_1EB8301D8 = 2;
      }

      qword_1EB830850 = &ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineAttributeStructBinding(void)::attr;
      *algn_1EB830858 = 1;
      qword_1EB830860 = 0;
      unk_1EB830868 = 2;
      qword_1EB830870 = &ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineDeviceStructBinding(void)::ref;
      unk_1EB830878 = 0;
      {
        ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineConstantStructBinding(void)::ref = 0;
        *algn_1EB8301E8 = 0;
        qword_1EB8301F0 = "view";
        dword_1EB8301F8 = 3;
        qword_1EB830200 = &ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineConstantViewBinding(void)::reflection;
        unk_1EB830208 = xmmword_1B33B0750;
        qword_1EB830218 = 1;
        unk_1EB830220 = "transform";
        dword_1EB830228 = 3;
        qword_1EB830230 = &ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineConstantTransformBinding(void)::reflection;
        unk_1EB830238 = xmmword_1B33B0A10;
        qword_1EB830248 = 2;
        unk_1EB830250 = "tileScalar";
        dword_1EB830258 = 3;
        qword_1EB830260 = &ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineConstantTileScalarBinding(void)::reflection;
        unk_1EB830268 = xmmword_1B33B07E0;
        qword_1EB830278 = 3;
        unk_1EB830280 = "style";
        dword_1EB830288 = 3;
        qword_1EB830290 = &ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineConstantStyleBinding(void)::reflection;
        unk_1EB830298 = xmmword_1B33B1520;
        qword_1EB8302A8 = 4;
        unk_1EB8302B0 = "alphaTint";
        dword_1EB8302B8 = 3;
        qword_1EB8302C0 = &ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineConstantAlphaTintBinding(void)::reflection;
        unk_1EB8302C8 = 1;
      }

      qword_1EB830880 = &ggl::Textured::pipelineStateSRGBBlendColormappedPos2DUVPipelineConstantStructBinding(void)::ref;
      *algn_1EB830888 = 5;
      a4 = v20;
      a2 = v23;
      a3 = v24;
    }
  }

  v14 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v27 = *a3;
  *&v27[16] = *(a3 + 16);
  *&v27[28] = *(a3 + 28);
  v15 = *(a3 + 44);
  v25 = *a4;
  v26 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::Textured::SRGBBlendColormappedPos2DUVPipelineState::typedReflection(void)::ref;
  *(this + 6) = v14;
  *(this + 7) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v18 = this + i;
    v18[64] = 0;
    *(v18 + 68) = xmmword_1B33B0760;
    *(v18 + 84) = 0;
    *(v18 + 100) = 0;
    *(v18 + 92) = 0;
  }

  *(this + 16) = v25;
  *(this + 17) = v26;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v27;
  *(this + 76) = *&v27[12];
  *(this + 92) = *&v27[28];
  *(this + 108) = v15;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  *this = &unk_1F2A32758;
  *(this + 304) = a5;
  *(this + 305) = a6;
  *(this + 306) = a7;
  *(this + 307) = a8;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v16);
  *(this + 288) = 1;
  *(this + 377) = 257;
  return this;
}

void ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup::typedReflection(ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection();
    ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r;
    unk_1ED65D410 = &ggl::Textured::pipelineDataSRGBBlendColormappedPos2DUVPipelineDeviceStructs(void)::ref;
    qword_1ED65D418 = 0;
    {
      ggl::Textured::pipelineDataSRGBBlendColormappedPos2DUVPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED65D3E8 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED65D3F0 = ggl::Textured::TileScalar::reflection(void)::reflection;
      unk_1ED65D3F8 = ggl::Blending::SRGBBlendStyle::reflection(void)::reflection;
      qword_1ED65D400 = ggl::OverlayOcclusion::AlphaTint::reflection(void)::reflection;
    }

    qword_1ED65D420 = &ggl::Textured::pipelineDataSRGBBlendColormappedPos2DUVPipelineConstantStructs(void)::ref;
    *algn_1ED65D428 = xmmword_1B33B12B0;
  }
}

void ggl::Textured::SRGBBlendPos4DUVPipelineSetup::typedReflection(ggl::Textured::SRGBBlendPos4DUVPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::typedReflection();
    ggl::Textured::SRGBBlendPos4DUVPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::typedReflection(void)::r;
    unk_1EB830A10 = &ggl::Textured::pipelineDataSRGBBlendPos4DUVPipelineDeviceStructs(void)::ref;
    qword_1EB830A18 = 0;
    {
      ggl::Textured::pipelineDataSRGBBlendPos4DUVPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1EB830788 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB830790 = ggl::Textured::TileScalar::reflection(void)::reflection;
      unk_1EB830798 = ggl::Blending::SRGBBlendStyle::reflection(void)::reflection;
      qword_1EB8307A0 = ggl::OverlayOcclusion::AlphaTint::reflection(void)::reflection;
    }

    qword_1EB830A20 = &ggl::Textured::pipelineDataSRGBBlendPos4DUVPipelineConstantStructs(void)::ref;
    unk_1EB830A28 = xmmword_1B33B1000;
  }
}

ggl::RenderDataHolder *ggl::Circle::FillPipelineState::FillPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5)
{
  {
    v14 = a4;
    v17 = a2;
    v18 = a3;
    a2 = v17;
    a3 = v18;
    a4 = v14;
    if (v15)
    {
      ggl::Circle::FillPipelineSetup::typedReflection(v15);
      ggl::Circle::FillPipelineState::typedReflection(void)::ref = &ggl::Circle::FillPipelineSetup::typedReflection(void)::ref;
      ggl::CircleShader::typedReflection(v16);
      qword_1ED65DB18 = &ggl::CircleShader::typedReflection(void)::ref;
      {
        ggl::Circle::pipelineStateFillPipelineAttributeStructBinding(void)::attr = 0;
        *algn_1EB832C98 = 0;
        qword_1EB832CA0 = "";
        dword_1EB832CA8 = 0;
        qword_1EB832CB0 = &ggl::Circle::pipelineStateFillPipelineAttributeBinding_0(void)::attr;
        unk_1EB832CB8 = 1;
      }

      qword_1ED65DB20 = &ggl::Circle::pipelineStateFillPipelineAttributeStructBinding(void)::attr;
      *algn_1ED65DB28 = 1;
      qword_1ED65DB30 = 0;
      unk_1ED65DB38 = 0;
      qword_1ED65DB40 = &ggl::Circle::pipelineStateFillPipelineDeviceStructBinding(void)::ref;
      unk_1ED65DB48 = 0;
      {
        ggl::Circle::pipelineStateFillPipelineConstantStructBinding(void)::ref = 0;
        *algn_1EB832CC8 = 0;
        qword_1EB832CD0 = "style";
        dword_1EB832CD8 = 3;
        qword_1EB832CE0 = &ggl::Circle::pipelineStateFillPipelineConstantStyleBinding(void)::reflection;
        unk_1EB832CE8 = xmmword_1B33B07D0;
        qword_1EB832CF8 = 1;
        unk_1EB832D00 = "view";
        dword_1EB832D08 = 3;
        qword_1EB832D10 = &ggl::Circle::pipelineStateFillPipelineConstantViewBinding(void)::reflection;
        unk_1EB832D18 = xmmword_1B33B0920;
        qword_1EB832D28 = 2;
        unk_1EB832D30 = "alphaTint";
        dword_1EB832D38 = 3;
        qword_1EB832D40 = &ggl::Circle::pipelineStateFillPipelineConstantAlphaTintBinding(void)::reflection;
        unk_1EB832D48 = 1;
      }

      qword_1ED65DB50 = &ggl::Circle::pipelineStateFillPipelineConstantStructBinding(void)::ref;
      *algn_1ED65DB58 = 3;
      a4 = v14;
      a2 = v17;
      a3 = v18;
    }
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v21 = *a3;
  *&v21[16] = *(a3 + 16);
  *&v21[28] = *(a3 + 28);
  v9 = *(a3 + 44);
  v19 = *a4;
  v20 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::Circle::FillPipelineState::typedReflection(void)::ref;
  *(this + 6) = v8;
  *(this + 7) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v12 = this + i;
    v12[64] = 0;
    *(v12 + 68) = xmmword_1B33B0760;
    *(v12 + 84) = 0;
    *(v12 + 100) = 0;
    *(v12 + 92) = 0;
  }

  *(this + 16) = v19;
  *(this + 17) = v20;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v21;
  *(this + 76) = *&v21[12];
  *(this + 92) = *&v21[28];
  *(this + 108) = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = &unk_1F29EAD30;
  *(this + 304) = a5;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v10);
  *(this + 288) = 1;
  *(this + 378) = 1;
  return this;
}

void ggl::Circle::FillPipelineSetup::typedReflection(ggl::Circle::FillPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection();
    ggl::Circle::FillPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection(void)::r;
    unk_1ED66A7D0 = &ggl::Circle::pipelineDataFillPipelineDeviceStructs(void)::ref;
    qword_1ED66A7D8 = 0;
    {
      ggl::Circle::pipelineDataFillPipelineConstantStructs(void)::ref = ggl::Circle::Style::reflection(void)::reflection;
      *algn_1ED66A7B8 = ggl::Circle::View::reflection(void)::reflection;
      qword_1ED66A7C0 = ggl::OverlayOcclusion::AlphaTint::reflection(void)::reflection;
    }

    qword_1ED66A7E0 = &ggl::Circle::pipelineDataFillPipelineConstantStructs(void)::ref;
    *algn_1ED66A7E8 = xmmword_1B33B0910;
  }
}

void *std::unique_ptr<md::CircleOverlayRenderable::SharedResources>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v2[4] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::MeshTyped<ggl::Textured::PoleTextured>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::Textured::PoleTextured>::attributesReflection(void)::r = &ggl::Textured::poleTexturedReflection;
    }

    ggl::MeshTyped<ggl::Textured::PoleTextured>::typedReflection(void)::r = &ggl::MeshTyped<ggl::Textured::PoleTextured>::attributesReflection(void)::r;
    qword_1EB83DEE8 = 1;
  }
}

void ggl::Textured::PoleTexturedBlendPipelineSetup::typedReflection(ggl::Textured::PoleTexturedBlendPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::Textured::PoleTextured>::typedReflection();
    ggl::Textured::PoleTexturedBlendPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::Textured::PoleTextured>::typedReflection(void)::r;
    unk_1EB830980 = &ggl::Textured::pipelineDataPoleTexturedBlendPipelineDeviceStructs(void)::ref;
    qword_1EB830988 = 0;
    {
      ggl::Textured::pipelineDataPoleTexturedBlendPipelineConstantStructs(void)::ref = ggl::FlyoverCommon::Shared::reflection(void)::reflection;
      unk_1EB830760 = ggl::FlyoverCommon::S2Transform::reflection(void)::reflection;
      qword_1EB830768 = ggl::FlyoverCommon::Clip::reflection(void)::reflection;
      unk_1EB830770 = ggl::Blending::SRGBBlendStyle::reflection(void)::reflection;
    }

    qword_1EB830990 = &ggl::Textured::pipelineDataPoleTexturedBlendPipelineConstantStructs(void)::ref;
    unk_1EB830998 = xmmword_1B33B11D0;
  }
}

ggl::RenderDataHolder *ggl::PolygonOverlay::FillPipelineState::FillPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5)
{
  {
    v14 = a4;
    v16 = a2;
    v17 = a3;
    a2 = v16;
    a3 = v17;
    a4 = v14;
    if (v15)
    {
      {
        if (v15)
        {
          ggl::MeshTyped<ggl::PolygonBase::CompressedVbo>::typedReflection();
          ggl::PolygonOverlay::FillPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PolygonBase::CompressedVbo>::typedReflection(void)::r;
          unk_1EB8383E0 = &ggl::PolygonOverlay::pipelineDataFillPipelineDeviceStructs(void)::ref;
          qword_1EB8383E8 = 0;
          {
            ggl::PolygonOverlay::pipelineDataFillPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
            *algn_1EB838388 = ggl::Tile::Transform::reflection(void)::reflection;
            qword_1EB838390 = ggl::PolygonOverlay::Fill::reflection(void)::reflection;
            unk_1EB838398 = ggl::OverlayOcclusion::AlphaTint::reflection(void)::reflection;
          }

          qword_1EB8383F0 = &ggl::PolygonOverlay::pipelineDataFillPipelineConstantStructs(void)::ref;
          unk_1EB8383F8 = xmmword_1B33B09E0;
        }
      }

      ggl::PolygonOverlay::FillPipelineState::typedReflection(void)::ref = &ggl::PolygonOverlay::FillPipelineSetup::typedReflection(void)::ref;
      ggl::PolygonOverlayFillShader::typedReflection(v15);
      qword_1ED65EF08 = &ggl::PolygonOverlayFillShader::typedReflection(void)::ref;
      {
        ggl::PolygonOverlay::pipelineStateFillPipelineAttributeStructBinding(void)::attr = 0;
        *algn_1EB838268 = 0;
        qword_1EB838270 = "";
        dword_1EB838278 = 0;
        qword_1EB838280 = &ggl::PolygonOverlay::pipelineStateFillPipelineAttributeBinding_0(void)::attr;
        unk_1EB838288 = 1;
      }

      qword_1ED65EF10 = &ggl::PolygonOverlay::pipelineStateFillPipelineAttributeStructBinding(void)::attr;
      *algn_1ED65EF18 = 1;
      qword_1ED65EF20 = 0;
      unk_1ED65EF28 = 0;
      qword_1ED65EF30 = &ggl::PolygonOverlay::pipelineStateFillPipelineDeviceStructBinding(void)::ref;
      unk_1ED65EF38 = 0;
      {
        ggl::PolygonOverlay::pipelineStateFillPipelineConstantStructBinding(void)::ref = 0;
        *algn_1EB838298 = 0;
        qword_1EB8382A0 = "view";
        dword_1EB8382A8 = 3;
        qword_1EB8382B0 = &ggl::PolygonOverlay::pipelineStateFillPipelineConstantViewBinding(void)::reflection;
        unk_1EB8382B8 = xmmword_1B33B0750;
        qword_1EB8382C8 = 1;
        unk_1EB8382D0 = "transform";
        dword_1EB8382D8 = 3;
        qword_1EB8382E0 = &ggl::PolygonOverlay::pipelineStateFillPipelineConstantTransformBinding(void)::reflection;
        unk_1EB8382E8 = xmmword_1B33B0A10;
        qword_1EB8382F8 = 2;
        unk_1EB838300 = "fill";
        dword_1EB838308 = 3;
        qword_1EB838310 = &ggl::PolygonOverlay::pipelineStateFillPipelineConstantFillBinding(void)::reflection;
        unk_1EB838318 = xmmword_1B33B0C50;
        qword_1EB838328 = 3;
        unk_1EB838330 = "alphaTint";
        dword_1EB838338 = 3;
        qword_1EB838340 = &ggl::PolygonOverlay::pipelineStateFillPipelineConstantAlphaTintBinding(void)::reflection;
        unk_1EB838348 = 1;
      }

      qword_1ED65EF40 = &ggl::PolygonOverlay::pipelineStateFillPipelineConstantStructBinding(void)::ref;
      *algn_1ED65EF48 = 4;
      a4 = v14;
      a2 = v16;
      a3 = v17;
    }
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v20 = *a3;
  *&v20[16] = *(a3 + 16);
  *&v20[28] = *(a3 + 28);
  v9 = *(a3 + 44);
  v18 = *a4;
  v19 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::PolygonOverlay::FillPipelineState::typedReflection(void)::ref;
  *(this + 6) = v8;
  *(this + 7) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v12 = this + i;
    v12[64] = 0;
    *(v12 + 68) = xmmword_1B33B0760;
    *(v12 + 84) = 0;
    *(v12 + 100) = 0;
    *(v12 + 92) = 0;
  }

  *(this + 16) = v18;
  *(this + 17) = v19;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v20;
  *(this + 76) = *&v20[12];
  *(this + 92) = *&v20[28];
  *(this + 108) = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = &unk_1F2A025B0;
  *(this + 304) = a5;
  *(this + 305) = 0;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v10);
  *(this + 288) = 1;
  *(this + 378) = 1;
  return this;
}

void ggl::MeshTyped<ggl::PolygonOverlay::AntialiasVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::PolygonOverlay::AntialiasVbo>::attributesReflection(void)::r = &ggl::PolygonOverlay::antialiasVboReflection;
    }

    ggl::MeshTyped<ggl::PolygonOverlay::AntialiasVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::PolygonOverlay::AntialiasVbo>::attributesReflection(void)::r;
    *algn_1ED66A558 = 1;
  }
}

void *ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>::FragmentedPool(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  v5 = (a1 + 4);
  a1[5] = 0;
  a1[6] = 0;
  v6 = a1 + 8;
  v7 = *(a2 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a2)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    a1[11] = v7;
    goto LABEL_6;
  }

  a1[11] = v6;
  (*(**(a2 + 24) + 24))(*(a2 + 24), v6);
LABEL_6:
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      a1[15] = a1 + 12;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 12);
      goto LABEL_11;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  a1[15] = v8;
LABEL_11:
  a1[16] = 2000;
  std::vector<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::reserve(a1);
  std::vector<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::reserve(v5);
  return a1;
}

void sub_1B28C3954(_Unwind_Exception *a1)
{
  std::__function::__value_func<ggl::PolygonOverlay::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100](v3);
  std::vector<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::PolygonOverlayRenderResources::PolygonOverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::PolygonOverlayRenderResources::PolygonOverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::PolygonOverlay::FillPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0C4E8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::FillPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonOverlay::FillPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonOverlay::FillPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::PolygonOverlay::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::PolygonOverlayRenderResources::PolygonOverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::PolygonOverlayRenderResources::PolygonOverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1>,ggl::PolygonOverlay::FillPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0C5D0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonOverlay::AntialiasPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::AntialiasPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolygonOverlay::AntialiasPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::AntialiasPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::PolygonOverlayRenderResources::PolygonOverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2,std::allocator<md::PolygonOverlayRenderResources::PolygonOverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2>,ggl::PolygonOverlay::AntialiasPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0C618;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonOverlay::AntialiasPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonOverlay::AntialiasPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::AntialiasPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::PolygonOverlay::AntialiasPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::PolygonOverlay::AntialiasPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::PolygonOverlay::AntialiasPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::PolylineOverlaySharedResources::PolylineOverlaySharedResources(_OWORD *a1)
{
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  operator new();
}

void sub_1B28C5BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _Unwind_Exception *exception_objecta, void **a27, uint64_t a28, uint64_t a29, uint64_t *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__function::__value_func<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100](v41);
  std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v40);
  std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v43);
  std::__function::__value_func<void ()(ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *)>::~__value_func[abi:nn200100](&a33);
  std::__function::__value_func<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100](&a37);
  MEMORY[0x1B8C62190](v43, 0x10A0C405CD4001ALL);
  std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  v44 = a30[37];
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  v45 = a30[35];
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  md::PolylineOverlaySharedRenderStates::~PolylineOverlaySharedRenderStates(v39);
  std::unique_ptr<ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup>>::reset[abi:nn200100](v37 + 5, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup>>::reset[abi:nn200100](v38, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup>>::reset[abi:nn200100](v37 + 3, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::PolylineOverlayRibbon::FillPipelineSetup>>::reset[abi:nn200100](a27, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup>>::reset[abi:nn200100](v37 + 1, 0);
  std::unique_ptr<ggl::FragmentedPool<ggl::PolylineOverlayRibbon::AlphaPipelineSetup>>::reset[abi:nn200100](v37, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a15 + 7, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a13, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a15 + 5, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a16, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a15 + 3, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a14, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a15 + 1, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a15, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a30 + 7, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a17, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a30 + 5, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a19, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a30 + 3, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a18, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a30 + 1, 0);
  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](a30, 0);
  _Unwind_Resume(a1);
}

ggl::zone_mallocator *std::vector<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::PolylineOverlayRibbon::AlphaPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::PolylineOverlayRibbon::AlphaPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::PolylineOverlayRibbon::AlphaPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::PolylineOverlayRibbon::AlphaPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::FillPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::PolylineOverlayRibbon::FillPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::PolylineOverlayRibbon::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::FillPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::PolylineOverlayRibbon::FillPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::PolylineOverlayRibbon::FillPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t **std::unique_ptr<md::PolylineOverlaySharedResources>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[37];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[35];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    md::PolylineOverlaySharedRenderStates::~PolylineOverlaySharedRenderStates((v2 + 22));
    v5 = v2[21];
    v2[21] = 0;
    if (v5)
    {
      v6 = ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup>::~FragmentedPool(v5);
      MEMORY[0x1B8C62190](v6, 0x10A0C405CD4001ALL);
    }

    v7 = v2[20];
    v2[20] = 0;
    if (v7)
    {
      v8 = ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup>::~FragmentedPool(v7);
      MEMORY[0x1B8C62190](v8, 0x10A0C405CD4001ALL);
    }

    v9 = v2[19];
    v2[19] = 0;
    if (v9)
    {
      v10 = ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup>::~FragmentedPool(v9);
      MEMORY[0x1B8C62190](v10, 0x10A0C405CD4001ALL);
    }

    v11 = v2[18];
    v2[18] = 0;
    if (v11)
    {
      v12 = ggl::FragmentedPool<ggl::PolylineOverlayRibbon::FillPipelineSetup>::~FragmentedPool(v11);
      MEMORY[0x1B8C62190](v12, 0x10A0C405CD4001ALL);
    }

    v13 = v2[17];
    v2[17] = 0;
    if (v13)
    {
      v14 = ggl::FragmentedPool<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup>::~FragmentedPool(v13);
      MEMORY[0x1B8C62190](v14, 0x10A0C405CD4001ALL);
    }

    v15 = v2[16];
    v2[16] = 0;
    if (v15)
    {
      v16 = ggl::FragmentedPool<ggl::PolylineOverlayRibbon::AlphaPipelineSetup>::~FragmentedPool(v15);
      MEMORY[0x1B8C62190](v16, 0x10A0C405CD4001ALL);
    }

    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 15);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 14);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 13);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 12);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 11);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 10);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 9);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 8);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 7);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 6);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 5);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 4);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 3);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 2);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2 + 1);
    std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<md::PolygonOverlayRenderable::SharedResources>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<md::PolylineOverlaySharedResources>::reset[abi:nn200100]((v2 + 16), 0);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      md::PolygonOverlayRenderResources::~PolygonOverlayRenderResources(v3);
      MEMORY[0x1B8C62190]();
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::MaskingOverlay::MaskingPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::MaskingOverlayRenderable::SharedResources::SharedResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::MaskingOverlayRenderable::SharedResources::SharedResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::MaskingOverlay::MaskingPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EFE68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::MaskingOverlay::MaskingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::MaskingOverlay::MaskingPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::MaskingOverlay::MaskingPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::MaskingOverlay::MaskingPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::MaskingOverlay::MaskingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::MaskingOverlay::FillPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::MaskingOverlayRenderable::SharedResources::SharedResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::MaskingOverlayRenderable::SharedResources::SharedResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1>,ggl::MaskingOverlay::FillPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EFF88;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::MaskingOverlay::FillPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::MaskingOverlay::FillPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::MaskingOverlay::FillPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::MaskingOverlay::FillPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::MaskingOverlay::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<md::MaskingOverlayRenderable::SharedResources>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[10];
    v2[10] = 0;
    if (v3)
    {
      v4 = ggl::FragmentedPool<ggl::MaskingOverlay::MaskingPipelineSetup>::~FragmentedPool(v3);
      MEMORY[0x1B8C62190](v4, 0x10A0C405CD4001ALL);
    }

    v5 = v2[9];
    v2[9] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v2[8];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = v2[6];
    v2[6] = 0;
    if (v7)
    {
      v8 = ggl::FragmentedPool<ggl::MaskingOverlay::FillPipelineSetup>::~FragmentedPool(v7);
      MEMORY[0x1B8C62190](v8, 0x10A0C405CD4001ALL);
    }

    v9 = v2[5];
    v2[5] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v2[4];
    v2[4] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v2[3];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = v2[1];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__func<md::COverlayRenderResources::COverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_4,std::allocator<md::COverlayRenderResources::COverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_4>,ggl::PolygonSolidFill::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A19338;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::COverlayRenderResources::COverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_6,std::allocator<md::COverlayRenderResources::COverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_6>,ggl::PolygonSolidFill::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A19410;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::PoleTexturedBlendPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::COverlayRenderResources::COverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_7,std::allocator<md::COverlayRenderResources::COverlayRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,BOOL)::$_7>,ggl::Textured::PoleTexturedBlendPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A19490;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::PoleTexturedBlendPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Textured::PoleTexturedBlendPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::Textured::PoleTexturedBlendPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Textured::PoleTexturedBlendPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Textured::PoleTexturedBlendPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Textured::PoleTexturedBlendPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::Textured::TileScalar> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::Textured::TileScalar> *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::ConstantDataTyped<ggl::Textured::TileScalar> * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::Textured::TileScalar> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::OverlayTileData> *,md::MapTileDataRenderable<md::OverlayTileData> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::DebugRenderLayer::DebugRenderLayer(uint64_t a1, uint64_t a2, void *a3, __int16 *a4, char a5)
{
  v9 = a3;
  v12 = *a4;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&v13, &v12, 1);
  *(a1 + 8) = 0;
  *a1 = &unk_1F2A16858;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v10 = v13;
  if (v14 != v13)
  {
    std::vector<md::MapDataType>::__vallocate[abi:nn200100](a1 + 8, (v14 - v13) >> 1);
  }

  *(a1 + 32) = 0;
  *(a1 + 34) = a5;
  *a1 = &unk_1F2A1E728;
  *(a1 + 40) = a2;
  if (v10)
  {
    v14 = v10;
    operator delete(v10);
  }

  *a1 = &unk_1F2A03618;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1065353216;
  *(a1 + 112) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 1065353216;
  v11 = *a4;
  *(a1 + 144) = 0u;
  *(a1 + 136) = v11;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  operator new();
}

void sub_1B28C82D4(_Unwind_Exception *a1)
{
  std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100](v5);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v6);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v5 - 88);
  std::unique_ptr<md::DebugLayerRenderResources>::reset[abi:nn200100](v4, 0);
  *v2 = v3;
  v8 = v2[1];
  if (v8)
  {
    v2[2] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

void md::DebugLayerRenderResources::DebugLayerRenderResources(md::DebugLayerRenderResources *this, VKSharedResources *a2, const RenderTargetFormat *a3)
{
  v4 = a2;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  v5 = [(VKSharedResources *)v4 shaderLibrary];
  [(VKSharedResources *)v4 textureManager];
  v7 = *v10;
  v6 = v10[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 31);
  *(this + 30) = v7;
  *(this + 31) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v9 = *(*(v5 + 80) + 400);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B28CA3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  std::__function::__value_func<ggl::Textured::ScreenTexturedQuadPipelineSetup * ()(void)>::~__value_func[abi:nn200100](v64);
  std::vector<ggl::Textured::ScreenTexturedQuadPipelineSetup *,geo::allocator_adapter<ggl::Textured::ScreenTexturedQuadPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v62);
  std::vector<ggl::Textured::ScreenTexturedQuadPipelineSetup *,geo::allocator_adapter<ggl::Textured::ScreenTexturedQuadPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v61);
  std::__function::__value_func<void ()(ggl::Textured::ScreenTexturedQuadPipelineSetup *)>::~__value_func[abi:nn200100](&a56);
  std::__function::__value_func<ggl::Textured::ScreenTexturedQuadPipelineSetup * ()(void)>::~__value_func[abi:nn200100](&a60);
  MEMORY[0x1B8C62190](v61, 0x10A0C405CD4001ALL);
  v66 = 0;
  while (1)
  {
    v67 = *(v60 + 376 + v66);
    if (v67)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v67);
    }

    v66 -= 16;
    if (v66 == -48)
    {
      v68 = *(v60 + 328);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v68);
      }

      v69 = *(v60 + 312);
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v69);
      }

      v70 = *(v60 + 296);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v70);
      }

      v71 = *(v60 + 280);
      if (v71)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v71);
      }

      v72 = *(v60 + 264);
      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v72);
      }

      v73 = *(v60 + 248);
      if (v73)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v73);
      }

      v74 = *(v60 + 232);
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v74);
      }

      v75 = *(v60 + 216);
      *(v60 + 216) = 0;
      if (v75)
      {
        (*(*v75 + 8))(v75);
      }

      v76 = *(v60 + 208);
      *(v60 + 208) = 0;
      if (v76)
      {
        (*(*v76 + 8))(v76);
      }

      v77 = *(v60 + 200);
      *(v60 + 200) = 0;
      if (v77)
      {
        (*(*v77 + 8))(v77);
      }

      v78 = *(v60 + 192);
      *(v60 + 192) = 0;
      if (v78)
      {
        (*(*v78 + 8))(v78);
      }

      v79 = *(v60 + 184);
      *(v60 + 184) = 0;
      if (v79)
      {
        (*(*v79 + 8))(v79);
      }

      v80 = *(v60 + 176);
      *(v60 + 176) = 0;
      if (v80)
      {
        (*(*v80 + 8))(v80);
      }

      v81 = *(v60 + 168);
      *(v60 + 168) = 0;
      if (v81)
      {
        (*(*v81 + 8))(v81);
      }

      std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100](v63, 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::Textured::ScreenTexturedQuadPipelineSetup>>::reset[abi:nn200100]((v60 + 152), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::Textured::Pos2DUVExtendedPipelineSetup>>::reset[abi:nn200100](a10, 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::Point::PipelineSetup>>::reset[abi:nn200100]((v60 + 136), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::Debug::InstancedBasePipelineSetup>>::reset[abi:nn200100](a11, 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::Debug::LinePipelineSetup>>::reset[abi:nn200100]((v60 + 120), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>>::reset[abi:nn200100](a13, 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::Debug::LineMesh>>::reset[abi:nn200100]((v60 + 104), 0);
      std::unique_ptr<ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>>::reset[abi:nn200100](a12, 0);
      v82 = *(v60 + 88);
      if (v82)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v82);
      }

      v83 = *(v60 + 72);
      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v83);
      }

      v84 = *(v60 + 56);
      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v84);
      }

      v85 = *(v60 + 40);
      if (v85)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v85);
      }

      v86 = *(v60 + 24);
      if (v86)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v86);
      }

      v87 = *(v60 + 8);
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v87);
      }

      _Unwind_Resume(a1);
    }
  }
}

ggl::RenderDataHolder *ggl::Debug::BasePipelineState::BasePipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4)
{
  {
    v12 = a4;
    v14 = a2;
    v15 = a3;
    a2 = v14;
    a3 = v15;
    a4 = v12;
    if (v13)
    {
      {
        if (v13)
        {
          ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection();
          ggl::Debug::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection(void)::r;
          unk_1EB833210 = &ggl::Debug::pipelineDataBasePipelineDeviceStructs(void)::ref;
          qword_1EB833218 = 0;
          {
            ggl::Debug::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Debug::Style::reflection(void)::reflection;
            *algn_1EB833138 = ggl::Debug::View::reflection(void)::reflection;
            qword_1EB833140 = ggl::Tile::Transform::reflection(void)::reflection;
          }

          qword_1EB833220 = &ggl::Debug::pipelineDataBasePipelineConstantStructs(void)::ref;
          *algn_1EB833228 = xmmword_1B33B0910;
        }
      }

      ggl::Debug::BasePipelineState::typedReflection(void)::ref = &ggl::Debug::BasePipelineSetup::typedReflection(void)::ref;
      ggl::DebugShader::typedReflection(v13);
      qword_1ED660078 = &ggl::DebugShader::typedReflection(void)::ref;
      {
        ggl::Debug::pipelineStateBasePipelineAttributeStructBinding(void)::attr = 0;
        *algn_1EB832F88 = 0;
        qword_1EB832F90 = "";
        dword_1EB832F98 = 0;
        qword_1EB832FA0 = &ggl::Debug::pipelineStateBasePipelineAttributeBinding_0(void)::attr;
        unk_1EB832FA8 = 1;
      }

      qword_1ED660080 = &ggl::Debug::pipelineStateBasePipelineAttributeStructBinding(void)::attr;
      *algn_1ED660088 = 1;
      qword_1ED660090 = 0;
      unk_1ED660098 = 0;
      qword_1ED6600A0 = &ggl::Debug::pipelineStateBasePipelineDeviceStructBinding(void)::ref;
      unk_1ED6600A8 = 0;
      {
        ggl::Debug::pipelineStateBasePipelineConstantStructBinding(void)::ref = 0;
        *algn_1EB833078 = 0;
        qword_1EB833080 = "style";
        dword_1EB833088 = 3;
        qword_1EB833090 = &ggl::Debug::pipelineStateBasePipelineConstantStyleBinding(void)::reflection;
        unk_1EB833098 = xmmword_1B33B07A0;
        qword_1EB8330A8 = 1;
        unk_1EB8330B0 = "view";
        dword_1EB8330B8 = 3;
        qword_1EB8330C0 = &ggl::Debug::pipelineStateBasePipelineConstantViewBinding(void)::reflection;
        unk_1EB8330C8 = xmmword_1B33B0920;
        qword_1EB8330D8 = 2;
        unk_1EB8330E0 = "transform";
        dword_1EB8330E8 = 3;
        qword_1EB8330F0 = &ggl::Debug::pipelineStateBasePipelineConstantTransformBinding(void)::reflection;
        unk_1EB8330F8 = 11;
      }

      qword_1ED6600B0 = &ggl::Debug::pipelineStateBasePipelineConstantStructBinding(void)::ref;
      *algn_1ED6600B8 = 3;
      a4 = v12;
      a2 = v14;
      a3 = v15;
    }
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v18 = *a3;
  *&v18[16] = *(a3 + 16);
  *&v18[28] = *(a3 + 28);
  v7 = *(a3 + 44);
  v16 = *a4;
  v17 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::Debug::BasePipelineState::typedReflection(void)::ref;
  *(this + 6) = v6;
  *(this + 7) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v10 = this + i;
    v10[64] = 0;
    *(v10 + 68) = xmmword_1B33B0760;
    *(v10 + 84) = 0;
    *(v10 + 100) = 0;
    *(v10 + 92) = 0;
  }

  *(this + 16) = v16;
  *(this + 17) = v17;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v18;
  *(this + 76) = *&v18[12];
  *(this + 92) = *&v18[28];
  *(this + 108) = v7;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *this = &unk_1F2A39348;
  *(this + 305) = 0;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v8);
  *(this + 288) = 1;
  return this;
}

void ggl::MeshTyped<ggl::Debug::LineVBO>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::Debug::LineVBO>::attributesReflection(void)::r = &ggl::Debug::lineVBOReflection;
    }

    ggl::MeshTyped<ggl::Debug::LineVBO>::typedReflection(void)::r = &ggl::MeshTyped<ggl::Debug::LineVBO>::attributesReflection(void)::r;
    qword_1ED65D398 = 1;
  }
}

ggl::RenderDataHolder *ggl::Textured::Pos2DUVExtendedPipelineState::Pos2DUVExtendedPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5)
{
  {
    v14 = a4;
    v17 = a2;
    v18 = a3;
    a2 = v17;
    a3 = v18;
    a4 = v14;
    if (v15)
    {
      ggl::Textured::Pos2DUVExtendedPipelineSetup::typedReflection(v15);
      ggl::Textured::Pos2DUVExtendedPipelineState::typedReflection(void)::ref = &ggl::Textured::Pos2DUVExtendedPipelineSetup::typedReflection(void)::ref;
      ggl::TexturedExtendedShader::typedReflection(v16);
      qword_1ED65D448 = &ggl::TexturedExtendedShader::typedReflection(void)::ref;
      {
        ggl::Textured::pipelineStatePos2DUVExtendedPipelineAttributeStructBinding(void)::attr = 0;
        *algn_1EB830658 = 0;
        qword_1EB830660 = "";
        dword_1EB830668 = 0;
        qword_1EB830670 = &ggl::Textured::pipelineStatePos2DUVExtendedPipelineAttributeBinding_0(void)::attr;
        unk_1EB830678 = 2;
      }

      qword_1ED65D450 = &ggl::Textured::pipelineStatePos2DUVExtendedPipelineAttributeStructBinding(void)::attr;
      *algn_1ED65D458 = 1;
      qword_1ED65D460 = 0;
      unk_1ED65D468 = 1;
      qword_1ED65D470 = &ggl::Textured::pipelineStatePos2DUVExtendedPipelineDeviceStructBinding(void)::ref;
      unk_1ED65D478 = 0;
      {
        ggl::Textured::pipelineStatePos2DUVExtendedPipelineConstantStructBinding(void)::ref = 0;
        *algn_1EB830688 = 0;
        qword_1EB830690 = "view";
        dword_1EB830698 = 3;
        qword_1EB8306A0 = &ggl::Textured::pipelineStatePos2DUVExtendedPipelineConstantViewBinding(void)::reflection;
        unk_1EB8306A8 = xmmword_1B33B0750;
        qword_1EB8306B8 = 1;
        unk_1EB8306C0 = "transform";
        dword_1EB8306C8 = 3;
        qword_1EB8306D0 = &ggl::Textured::pipelineStatePos2DUVExtendedPipelineConstantTransformBinding(void)::reflection;
        unk_1EB8306D8 = xmmword_1B33B0A10;
        qword_1EB8306E8 = 2;
        unk_1EB8306F0 = "tileScalar";
        dword_1EB8306F8 = 3;
        qword_1EB830700 = &ggl::Textured::pipelineStatePos2DUVExtendedPipelineConstantTileScalarBinding(void)::reflection;
        unk_1EB830708 = xmmword_1B33B07E0;
        qword_1EB830718 = 3;
        unk_1EB830720 = "style";
        dword_1EB830728 = 3;
        qword_1EB830730 = &ggl::Textured::pipelineStatePos2DUVExtendedPipelineConstantStyleBinding(void)::reflection;
        unk_1EB830738 = 1;
      }

      qword_1ED65D480 = &ggl::Textured::pipelineStatePos2DUVExtendedPipelineConstantStructBinding(void)::ref;
      *algn_1ED65D488 = 4;
      a4 = v14;
      a2 = v17;
      a3 = v18;
    }
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v21 = *a3;
  *&v21[16] = *(a3 + 16);
  *&v21[28] = *(a3 + 28);
  v9 = *(a3 + 44);
  v19 = *a4;
  v20 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::Textured::Pos2DUVExtendedPipelineState::typedReflection(void)::ref;
  *(this + 6) = v8;
  *(this + 7) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v12 = this + i;
    v12[64] = 0;
    *(v12 + 68) = xmmword_1B33B0760;
    *(v12 + 84) = 0;
    *(v12 + 100) = 0;
    *(v12 + 92) = 0;
  }

  *(this + 16) = v19;
  *(this + 17) = v20;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v21;
  *(this + 76) = *&v21[12];
  *(this + 92) = *&v21[28];
  *(this + 108) = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = &unk_1F2A327B0;
  *(this + 304) = a5;
  *(this + 305) = 0;
  *(this + 307) = 0;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v10);
  *(this + 288) = 1;
  *(this + 377) = 1;
  return this;
}

void ggl::Textured::Pos2DUVExtendedPipelineSetup::typedReflection(ggl::Textured::Pos2DUVExtendedPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection();
    ggl::Textured::Pos2DUVExtendedPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r;
    unk_1ED66A780 = &ggl::Textured::pipelineDataPos2DUVExtendedPipelineDeviceStructs(void)::ref;
    qword_1ED66A788 = 0;
    {
      ggl::Textured::pipelineDataPos2DUVExtendedPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1ED66A758 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1ED66A760 = ggl::Textured::TileScalar::reflection(void)::reflection;
      unk_1ED66A768 = ggl::Textured::Style::reflection(void)::reflection;
    }

    qword_1ED66A790 = &ggl::Textured::pipelineDataPos2DUVExtendedPipelineConstantStructs(void)::ref;
    unk_1ED66A798 = xmmword_1B33B11D0;
  }
}

void *ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::FragmentedPool(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  v5 = (a1 + 4);
  a1[5] = 0;
  a1[6] = 0;
  v6 = a1 + 8;
  v7 = *(a2 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a2)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    a1[11] = v7;
    goto LABEL_6;
  }

  a1[11] = v6;
  (*(**(a2 + 24) + 24))(*(a2 + 24), v6);
LABEL_6:
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      a1[15] = a1 + 12;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 12);
      goto LABEL_11;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  a1[15] = v8;
LABEL_11:
  a1[16] = 2000;
  std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::reserve(a1);
  std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::reserve(v5);
  return a1;
}

void sub_1B28CB29C(_Unwind_Exception *a1)
{
  std::__function::__value_func<ggl::Debug::BasePipelineSetup * ()(void)>::~__value_func[abi:nn200100](v3);
  std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A037A0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::BasePipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::BasePipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Debug::BasePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Debug::BasePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1>,ggl::Debug::LinePipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A037E8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::LinePipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::LinePipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Debug::LinePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::Debug::LinePipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Debug::LinePipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Debug::LinePipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Debug::LinePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::LineMesh *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::LineMesh *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Debug::LineMesh *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::Debug::LineMesh * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::Debug::LineMesh>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Debug::LineMesh *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Debug::LineMesh * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::FragmentedPool(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  v5 = (a1 + 4);
  a1[5] = 0;
  a1[6] = 0;
  v6 = a1 + 8;
  v7 = *(a2 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a2)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    a1[11] = v7;
    goto LABEL_6;
  }

  a1[11] = v6;
  (*(**(a2 + 24) + 24))(*(a2 + 24), v6);
LABEL_6:
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      a1[15] = a1 + 12;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 12);
      goto LABEL_11;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  a1[15] = v8;
LABEL_11:
  a1[16] = 2000;
  std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::reserve(a1);
  std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::reserve(v5);
  return a1;
}

void sub_1B28CBD40(_Unwind_Exception *a1)
{
  std::__function::__value_func<ggl::CommonMesh::Pos4Mesh * ()(void)>::~__value_func[abi:nn200100](v3);
  std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

ggl::zone_mallocator *std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::CommonMesh::Pos4Mesh *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::CommonMesh::Pos4Mesh *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::CommonMesh::Pos4Mesh *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::CommonMesh::Pos4Mesh * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::InstancedBasePipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4,std::allocator<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4>,ggl::Debug::InstancedBasePipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A039A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Debug::InstancedBasePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::InstancedBasePipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::Debug::InstancedBasePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::Debug::InstancedBasePipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Debug::InstancedBasePipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Debug::InstancedBasePipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Point::PipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_5,std::allocator<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_5>,ggl::Point::PipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A03A38;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Point::PipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Point::PipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Point::PipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Point::PipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Point::PipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::Point::PipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_6,std::allocator<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_6>,ggl::Textured::Pos2DUVExtendedPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A03AC8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::Pos2DUVExtendedPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::Textured::Pos2DUVExtendedPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::Pos2DUVExtendedPipelineSetup *>(v5, v4);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::Textured::Pos2DUVExtendedPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Textured::Pos2DUVExtendedPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Textured::Pos2DUVExtendedPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Textured::Pos2DUVExtendedPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::Textured::ScreenTexturedQuadPipelineSetup *,geo::allocator_adapter<ggl::Textured::ScreenTexturedQuadPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::ScreenTexturedQuadPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Textured::ScreenTexturedQuadPipelineSetup *,geo::allocator_adapter<ggl::Textured::ScreenTexturedQuadPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_7,std::allocator<md::DebugLayerRenderResources::DebugLayerRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_7>,ggl::Textured::ScreenTexturedQuadPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A03B58;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Textured::ScreenTexturedQuadPipelineSetup *,geo::allocator_adapter<ggl::Textured::ScreenTexturedQuadPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::ScreenTexturedQuadPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Textured::ScreenTexturedQuadPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **std::unique_ptr<ggl::FragmentedPool<ggl::Textured::ScreenTexturedQuadPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::Textured::ScreenTexturedQuadPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::Textured::ScreenTexturedQuadPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::Textured::ScreenTexturedQuadPipelineSetup *,geo::allocator_adapter<ggl::Textured::ScreenTexturedQuadPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::Textured::ScreenTexturedQuadPipelineSetup *,geo::allocator_adapter<ggl::Textured::ScreenTexturedQuadPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Textured::ScreenTexturedQuadPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<md::DebugLayerRenderResources>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = 376;
    while (1)
    {
      v4 = *(v2 + v3);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v3 -= 16;
      if (v3 == 328)
      {
        v5 = *(v2 + 328);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v6 = *(v2 + 312);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = *(v2 + 296);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v8 = *(v2 + 280);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        v9 = *(v2 + 264);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }

        v10 = *(v2 + 248);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        v11 = *(v2 + 232);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        v12 = *(v2 + 216);
        *(v2 + 216) = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        v13 = *(v2 + 208);
        *(v2 + 208) = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        v14 = *(v2 + 200);
        *(v2 + 200) = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        v15 = *(v2 + 192);
        *(v2 + 192) = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        v16 = *(v2 + 184);
        *(v2 + 184) = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        v17 = *(v2 + 176);
        *(v2 + 176) = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }

        v18 = *(v2 + 168);
        *(v2 + 168) = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 160), 0);
        std::unique_ptr<ggl::FragmentedPool<ggl::Textured::ScreenTexturedQuadPipelineSetup>>::reset[abi:nn200100]((v2 + 152), 0);
        std::unique_ptr<ggl::FragmentedPool<ggl::Textured::Pos2DUVExtendedPipelineSetup>>::reset[abi:nn200100]((v2 + 144), 0);
        std::unique_ptr<ggl::FragmentedPool<ggl::Point::PipelineSetup>>::reset[abi:nn200100]((v2 + 136), 0);
        std::unique_ptr<ggl::FragmentedPool<ggl::Debug::InstancedBasePipelineSetup>>::reset[abi:nn200100]((v2 + 128), 0);
        std::unique_ptr<ggl::FragmentedPool<ggl::Debug::LinePipelineSetup>>::reset[abi:nn200100]((v2 + 120), 0);
        std::unique_ptr<ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>>::reset[abi:nn200100]((v2 + 112), 0);
        std::unique_ptr<ggl::FragmentedPool<ggl::Debug::LineMesh>>::reset[abi:nn200100]((v2 + 104), 0);
        std::unique_ptr<ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>>::reset[abi:nn200100]((v2 + 96), 0);
        v19 = *(v2 + 88);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        v20 = *(v2 + 72);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }

        v21 = *(v2 + 56);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }

        v22 = *(v2 + 40);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        }

        v23 = *(v2 + 24);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }

        v24 = *(v2 + 8);
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v24);
        }

        JUMPOUT(0x1B8C62190);
      }
    }
  }

  return result;
}

void ggl::TextureAlphaMask::MeshPipelineSetup::typedReflection(ggl::TextureAlphaMask::MeshPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection();
    ggl::TextureAlphaMask::MeshPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::typedReflection(void)::r;
    *algn_1ED66D358 = &ggl::TextureAlphaMask::pipelineDataMeshPipelineDeviceStructs(void)::ref;
    qword_1ED66D360 = 0;
    {
      ggl::TextureAlphaMask::pipelineDataMeshPipelineConstantStructs(void)::ref = ggl::TextureAlphaMask::View::reflection(void)::reflection;
      unk_1ED66D340 = ggl::TextureAlphaMask::Style::reflection(void)::reflection;
    }

    qword_1ED66D368 = &ggl::TextureAlphaMask::pipelineDataMeshPipelineConstantStructs(void)::ref;
    *algn_1ED66D370 = xmmword_1B33B0750;
  }
}

uint64_t ggl::PipelineSetup::PipelineSetup(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A5C560;
  *(a1 + 8) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  v3 = (a1 + 136);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  v4 = (a1 + 168);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  v5 = (a1 + 200);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  v6 = (a1 + 232);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 296) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  v7 = *(a2 + 16);
  v14 = 0uLL;
  std::vector<ggl::DeviceDataElement,geo::allocator_adapter<ggl::DeviceDataElement,ggl::zone_mallocator>>::resize((a1 + 104), v7, &v14);
  v8 = *(*(a1 + 8) + 32);
  v14 = 0uLL;
  std::vector<ggl::DeviceDataElement,geo::allocator_adapter<ggl::DeviceDataElement,ggl::zone_mallocator>>::resize(v3, v8, &v14);
  v9 = *(*(a1 + 8) + 40);
  *&v14 = 0;
  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::resize(v4, v9, &v14);
  v10 = (*(a1 + 112) - *(a1 + 104)) >> 4;
  v14 = 0uLL;
  std::vector<std::shared_ptr<ggl::BufferData>,geo::allocator_adapter<std::shared_ptr<ggl::BufferData>,ggl::zone_mallocator>>::resize(v5, v10, &v14);
  v11 = (*(a1 + 144) - *v3) >> 4;
  v14 = 0uLL;
  std::vector<std::shared_ptr<ggl::BufferData>,geo::allocator_adapter<std::shared_ptr<ggl::BufferData>,ggl::zone_mallocator>>::resize(v6, v11, &v14);
  v12 = (*(a1 + 144) - *v3) >> 4;
  v14 = 0uLL;
  std::vector<std::shared_ptr<ggl::ConstantData>,geo::allocator_adapter<std::shared_ptr<ggl::ConstantData>,ggl::zone_mallocator>>::resize((a1 + 264), v12, &v14);
  return a1;
}

void ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 56);
  *(a2 + 48) = a3;
  *(a2 + 56) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void *ggl::DataAccess<ggl::Tile::View>::DataAccess(void *a1, uint64_t a2, uint64_t a3)
{
  ggl::BufferMemory::BufferMemory(a1);
  ggl::ResourceAccessor::accessConstantData(v7, 0, a2, a3);
  ggl::BufferMemory::operator=(a1, v7);
  ggl::BufferMemory::~BufferMemory(v7);
  return a1;
}

void ggl::PipelineSetup::setState(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if (!*a2 || **(v3 + 40) != a1[1])
  {
    v4 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_4;
  }

  v6 = a1[2];
  if (v6)
  {
    v7 = v6 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = a1[13];
    if (a1[14] != v8)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (*(v8 + v9))
        {
          if (a1[5])
          {
            if (((*(*a1 + 32))(a1, v10) & 1) != 0 || !a1[5] || ((*(a1[4] + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              goto LABEL_20;
            }

            v8 = a1[13];
          }

          *(v8 + v9) = 0;
        }

LABEL_20:
        ++v10;
        v8 = a1[13];
        v9 += 16;
      }

      while (v10 < (a1[14] - v8) >> 4);
    }

    if (a1[18] != a1[17])
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = (*(*a1 + 16))(a1, v12);
        v14 = a1[17];
        if (v13 & 1) == 0 && *(v14 + v11) && (!a1[8] || ((*(a1[7] + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12)))
        {
          *(v14 + v11) = 0;
        }

        ++v12;
        v11 += 16;
      }

      while (v12 < (a1[18] - v14) >> 4);
    }

    if (a1[22] != a1[21])
    {
      v15 = 0;
      do
      {
        v16 = (*(*a1 + 24))(a1, v15);
        v17 = a1[21];
        if (v16 & 1) == 0 && *(v17 + 8 * v15) && (!a1[11] || ((*(a1[10] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15)))
        {
          *(v17 + 8 * v15) = 0;
          v17 = a1[21];
        }

        ++v15;
      }

      while (v15 < (a1[22] - v17) >> 3);
    }

    v3 = *a2;
  }

  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[3];
  a1[2] = v3;
  a1[3] = v18;
  if (v4)
  {
LABEL_4:

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void ggl::RenderDataHolder::~RenderDataHolder(ggl::RenderDataHolder *this)
{
  *this = &unk_1F2A5D1D8;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 16))(v2, *(this + 3));
    *(this + 3) = 3735927469;
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

{
  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void *std::unique_ptr<md::PuckRenderResources>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[31];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[29];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v2[27];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = v2[25];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = v2[23];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = v2[21];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = v2[19];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = 17;
    while (1)
    {
      v11 = v2[v10];
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      v10 -= 2;
      if (v10 == 11)
      {
        v12 = v2[11];
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v13 = v2[9];
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        v14 = v2[7];
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
        }

        v15 = v2[5];
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }

        v16 = v2[3];
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }

        v17 = v2[1];
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v17);
        }

        JUMPOUT(0x1B8C62190);
      }
    }
  }

  return result;
}

void md::CVenueRenderResources::CVenueRenderResources(md::CVenueRenderResources *this, VKSharedResources *a2, const RenderTargetFormat *a3)
{
  v4 = (this + 324);
  v5 = a2;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  ggl::RenderDataHolder::RenderDataHolder(this + 72);
  *(this + 9) = &unk_1F2A5C710;
  *(this + 108) = 65537;
  *(this + 29) = 0;
  *(this + 15) = 1;
  *(this + 64) = 0;
  *(this + 130) = 3;
  *(this + 139) = 0;
  *(this + 131) = 0;
  *(this + 147) = 0;
  *(this + 204) = 0;
  *(this + 196) = 0;
  *(this + 130) = 257;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 280) = 0;
  ggl::RenderDataHolder::RenderDataHolder(this + 288);
  *(this + 36) = &unk_1F2A5C710;
  *v4 = 65537;
  *(this + 83) = 0;
  *(this + 42) = 0xFF00FF0000000400;
  *(this + 172) = 0;
  *(this + 346) = 3;
  *(this + 355) = 0;
  *(this + 347) = 0;
  *(this + 363) = 0;
  *(this + 420) = 0;
  *(this + 412) = 0;
  *(this + 238) = 257;
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 496) = 0;
  *(this + 63) = 0;
  *(this + 64) = 0;
  v6 = *(*([(VKSharedResources *)v5 shaderLibrary]+ 80) + 1672);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:nn200100]<ggl::PolygonFill::MeshPipelineState,std::allocator<ggl::PolygonFill::MeshPipelineState>,std::shared_ptr<ggl::PolygonFillShader>,ggl::ColorBufferOperation,ggl::RenderTargetFormat const&,0>();
}

void sub_1B28D0DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ggl::RenderDataHolder *a9, ggl::RenderDataHolder *a10, ggl::RenderDataHolder *a11, ggl::RenderDataHolder *a12, ggl::RenderDataHolder *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, ggl::RenderDataHolder *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, md::VenueWallRenderResources *a23)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  ggl::RenderDataHolder::~RenderDataHolder(a11);
  std::unique_ptr<ggl::FragmentedPool<ggl::VenueOpenToBelowShadow::MeshPipelineSetup>>::reset[abi:nn200100]((v23 + 2488), 0);
  v27 = *(v23 + 2480);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  ggl::RenderDataHolder::~RenderDataHolder(a12);
  std::unique_ptr<ggl::FragmentedPool<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup>>::reset[abi:nn200100]((v23 + 2248), 0);
  v28 = *(v23 + 2240);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  ggl::RenderDataHolder::~RenderDataHolder(v26);
  std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v23 + 2008), 0);
  v29 = *(v23 + 2000);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  md::VenueWallRenderResources::~VenueWallRenderResources(a23);
  md::VenueDimmingOverlayRenderResources::~VenueDimmingOverlayRenderResources(v23);

  _Unwind_Resume(a1);
}

ggl::zone_mallocator *std::vector<ggl::VenueWall::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::VenueWall::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::VenueWall::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A27EE0;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::VenueWall::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::VenueWall::MeshPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::VenueWall::MeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::VenueWall::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::VenueWall::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1>,ggl::VenueWall::WallTopMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28000;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::VenueWall::WallTopMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallTopMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallTopMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::VenueWall::WallTopMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallTopMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::VenueWall::WallTopMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::VenueWall::WallTopMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallTopMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::WallTopMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::VenueWall::WallTopMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::VenueWall::WallTopMeshPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::VenueWall::WallTopMeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::MeshTyped<ggl::VenueWall::EndCapVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::VenueWall::EndCapVbo>::attributesReflection(void)::r = &ggl::VenueWall::endCapVboReflection;
    }

    ggl::MeshTyped<ggl::VenueWall::EndCapVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::VenueWall::EndCapVbo>::attributesReflection(void)::r;
    unk_1ED66A370 = 1;
  }
}

ggl::zone_mallocator *std::vector<ggl::VenueWall::WallEndCapMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallEndCapMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallEndCapMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::VenueWall::WallEndCapMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallEndCapMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2,std::allocator<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2>,ggl::VenueWall::WallEndCapMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28120;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::VenueWall::WallEndCapMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallEndCapMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::WallEndCapMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::VenueWall::WallEndCapMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::VenueWall::WallEndCapMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::VenueWall::WallEndCapMeshPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::VenueWall::WallEndCapMeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ggl::MeshTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::attributesReflection(void)::r = &ggl::Venue3DStroke::horizontalDefaultVboReflection;
    }

    ggl::MeshTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::attributesReflection(void)::r;
    unk_1ED66A590 = 1;
  }
}

uint64_t std::__function::__func<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_3,std::allocator<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_3>,ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28240;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ggl::MeshTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::attributesReflection(void)::r = &ggl::Venue3DStroke::verticalDefaultVboReflection;
    }

    ggl::MeshTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::attributesReflection(void)::r;
    unk_1ED66A5A8 = 1;
  }
}

ggl::zone_mallocator *std::vector<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4,std::allocator<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4>,ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28360;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::FragmentedPool(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  v5 = (a1 + 4);
  a1[5] = 0;
  a1[6] = 0;
  v6 = a1 + 8;
  v7 = *(a2 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a2)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    a1[11] = v7;
    goto LABEL_6;
  }

  a1[11] = v6;
  (*(**(a2 + 24) + 24))(*(a2 + 24), v6);
LABEL_6:
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      a1[15] = a1 + 12;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 12);
      goto LABEL_11;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  a1[15] = v8;
LABEL_11:
  a1[16] = 2000;
  std::vector<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(a1);
  std::vector<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(v5);
  return a1;
}

void sub_1B28D28C4(_Unwind_Exception *a1)
{
  std::__function::__value_func<ggl::VenueWallShadow::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](v3);
  std::vector<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_5,std::allocator<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_5>,ggl::VenueWallShadow::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28428;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWallShadow::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWallShadow::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::VenueWallShadow::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::VenueWallShadow::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_6,std::allocator<md::VenueWallRenderResources::VenueWallRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_6>,ggl::VenueWallShadow::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28510;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::Building::Gradient> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Building::Gradient> *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Building::Gradient> *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ConstantDataTyped<ggl::Building::Gradient> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Building::Gradient> *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::Building::Gradient> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::ConstantDataTyped<ggl::Building::Gradient> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Building::Gradient> *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Building::Gradient> *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Building::Gradient>>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Building::Gradient>>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::ConstantDataTyped<ggl::Building::Gradient> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::FragmentedPool(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  v5 = (a1 + 4);
  a1[5] = 0;
  a1[6] = 0;
  v6 = a1 + 8;
  v7 = *(a2 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a2)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    a1[11] = v7;
    goto LABEL_6;
  }

  a1[11] = v6;
  (*(**(a2 + 24) + 24))(*(a2 + 24), v6);
LABEL_6:
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      a1[15] = a1 + 12;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 12);
      goto LABEL_11;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  a1[15] = v8;
LABEL_11:
  a1[16] = 2000;
  std::vector<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(a1);
  std::vector<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(v5);
  return a1;
}

void sub_1B28D3394(_Unwind_Exception *a1)
{
  std::__function::__value_func<ggl::PolygonSolidFill::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](v3);
  std::vector<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::VenueOpenToBelowRenderResources::VenueOpenToBelowRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::VenueOpenToBelowRenderResources::VenueOpenToBelowRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::PolygonSolidFill::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28640;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::PolygonSolidFill::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::PolygonSolidFill::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::RenderDataHolder *ggl::VenueOpenToBelowShadowAlpha::MeshPipelineState::MeshPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4, char a5)
{
  {
    v14 = a4;
    v16 = a2;
    v17 = a3;
    a2 = v16;
    a3 = v17;
    a4 = v14;
    if (v15)
    {
      {
        if (v15)
        {
          ggl::MeshTyped<ggl::PolygonCommonStroke::DefaultVbo>::typedReflection();
          ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PolygonCommonStroke::DefaultVbo>::typedReflection(void)::r;
          unk_1EB833F10 = &ggl::VenueOpenToBelowShadowAlpha::pipelineDataMeshPipelineDeviceStructs(void)::ref;
          qword_1EB833F18 = 0;
          {
            ggl::VenueOpenToBelowShadowAlpha::pipelineDataMeshPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
            unk_1EB833EF8 = ggl::VenueOpenToBelowShadow::Style::reflection(void)::reflection;
          }

          qword_1EB833F20 = &ggl::VenueOpenToBelowShadowAlpha::pipelineDataMeshPipelineConstantStructs(void)::ref;
          unk_1EB833F28 = xmmword_1B33B0780;
        }
      }

      ggl::VenueOpenToBelowShadowAlpha::MeshPipelineState::typedReflection(void)::ref = &ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup::typedReflection(void)::ref;
      ggl::VenueOpenToBelowShadowAlphaShader::typedReflection(v15);
      qword_1ED660258 = &ggl::VenueOpenToBelowShadowAlphaShader::typedReflection(void)::ref;
      {
        ggl::VenueOpenToBelowShadowAlpha::pipelineStateMeshPipelineAttributeStructBinding(void)::attr = 0;
        *algn_1EB833E68 = 0;
        qword_1EB833E70 = "";
        dword_1EB833E78 = 0;
        qword_1EB833E80 = &ggl::VenueOpenToBelowShadowAlpha::pipelineStateMeshPipelineAttributeBinding_0(void)::attr;
        unk_1EB833E88 = 3;
      }

      qword_1ED660260 = &ggl::VenueOpenToBelowShadowAlpha::pipelineStateMeshPipelineAttributeStructBinding(void)::attr;
      *algn_1ED660268 = 1;
      qword_1ED660270 = 0;
      unk_1ED660278 = 0;
      qword_1ED660280 = &ggl::VenueOpenToBelowShadowAlpha::pipelineStateMeshPipelineDeviceStructBinding(void)::ref;
      unk_1ED660288 = 0;
      {
        ggl::VenueOpenToBelowShadowAlpha::pipelineStateMeshPipelineConstantStructBinding(void)::ref = 0;
        *algn_1EB833E98 = 0;
        qword_1EB833EA0 = "view";
        dword_1EB833EA8 = 3;
        qword_1EB833EB0 = &ggl::VenueOpenToBelowShadowAlpha::pipelineStateMeshPipelineConstantViewBinding(void)::reflection;
        unk_1EB833EB8 = xmmword_1B33B0750;
        qword_1EB833EC8 = 1;
        unk_1EB833ED0 = "style";
        dword_1EB833ED8 = 3;
        qword_1EB833EE0 = &ggl::VenueOpenToBelowShadowAlpha::pipelineStateMeshPipelineConstantStyleBinding(void)::reflection;
        unk_1EB833EE8 = 2;
      }

      qword_1ED660290 = &ggl::VenueOpenToBelowShadowAlpha::pipelineStateMeshPipelineConstantStructBinding(void)::ref;
      unk_1ED660298 = 2;
      a4 = v14;
      a2 = v16;
      a3 = v17;
    }
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v20 = *a3;
  *&v20[16] = *(a3 + 16);
  *&v20[28] = *(a3 + 28);
  v9 = *(a3 + 44);
  v18 = *a4;
  v19 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::VenueOpenToBelowShadowAlpha::MeshPipelineState::typedReflection(void)::ref;
  *(this + 6) = v8;
  *(this + 7) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v12 = this + i;
    v12[64] = 0;
    *(v12 + 68) = xmmword_1B33B0760;
    *(v12 + 84) = 0;
    *(v12 + 100) = 0;
    *(v12 + 92) = 0;
  }

  *(this + 16) = v18;
  *(this + 17) = v19;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v20;
  *(this + 76) = *&v20[12];
  *(this + 92) = *&v20[28];
  *(this + 108) = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = &unk_1F2A3C050;
  *(this + 304) = a5;
  *(this + 305) = 0;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v10);
  *(this + 288) = 1;
  return this;
}

ggl::zone_mallocator *std::vector<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::VenueOpenToBelowRenderResources::VenueOpenToBelowRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::VenueOpenToBelowRenderResources::VenueOpenToBelowRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1>,ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28708;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::__split_buffer<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::vector<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

uint64_t std::__function::__func<md::VenueOpenToBelowRenderResources::VenueOpenToBelowRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2,std::allocator<md::VenueOpenToBelowRenderResources::VenueOpenToBelowRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2>,ggl::VenueOpenToBelowShadow::MeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28828;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<ggl::VenueOpenToBelowShadow::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ggl::VenueOpenToBelowShadow::MeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__split_buffer<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::VenueOpenToBelowShadow::MeshPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::VenueOpenToBelowShadow::MeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__func<md::VenueFootprintRenderResources::VenueFootprintRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::VenueFootprintRenderResources::VenueFootprintRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::PolygonSolidFill::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A288B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::VenueFootprintRenderResources::VenueFootprintRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::VenueFootprintRenderResources::VenueFootprintRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_1>,ggl::PolygonSolidFill::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28900;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::VenueFootprintRenderResources::VenueFootprintRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2,std::allocator<md::VenueFootprintRenderResources::VenueFootprintRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2>,ggl::PolygonSolidFill::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A28948;
  a2[1] = v2;
  return result;
}

void md::PostchainRenderLayer::PostchainRenderLayer(md::PostchainRenderLayer *this, id *a2, VKSharedResources *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v20 = a3;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[0] = (*(*(v72 + 32) + 123) << 8) | 0x11;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[1] = (*(*(v70 + 32) + 123) << 8) | 0x12;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[2] = (*(*(v68 + 32) + 123) << 8) | 0x13;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[3] = (*(*(v66 + 32) + 123) << 8) | 0x14;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[4] = (*(*(v64 + 32) + 123) << 8) | 0x15;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[5] = (*(*(v62 + 32) + 123) << 8) | 0x16;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[6] = (*(*(v60 + 32) + 123) << 8) | 0x17;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[7] = (*(*(v58 + 32) + 123) << 8) | 5;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[8] = (*(*(v56 + 32) + 123) << 8) | 4;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[9] = (*(*(v54 + 32) + 123) << 8) | 6;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[10] = (*(*(v52 + 32) + 123) << 8) | 7;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v74[11] = (*(*(v50 + 32) + 123) << 8) | 8;
  std::vector<md::CommandBufferLocation>::vector[abi:nn200100](&v21, v74, 12);
  *(this + 1) = 0;
  *this = &unk_1F2A16858;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v5 = v21;
  if (v22 != v21)
  {
    std::vector<md::MapDataType>::__vallocate[abi:nn200100](this + 8, (v22 - v21) >> 1);
  }

  *(this + 16) = 0;
  *(this + 34) = 52;
  *this = &unk_1F2A1E728;
  *(this + 5) = a2;
  if (v5)
  {
    v22 = v5;
    operator delete(v5);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v57);
  }

  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v61);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v63);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v65);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
  }

  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v71);
  }

  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v73);
  }

  *this = &unk_1F2A016B8;
  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v6 = v49;
  *(this + 24) = (*(*(v48 + 32) + 123) << 8) | 0x11;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v7 = v47;
  *(this + 25) = (*(*(v46 + 32) + 123) << 8) | 0x12;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v8 = v45;
  *(this + 26) = (*(*(v44 + 32) + 123) << 8) | 0x13;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v9 = v43;
  *(this + 27) = (*(*(v42 + 32) + 123) << 8) | 0x14;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v10 = v41;
  *(this + 28) = (*(*(v40 + 32) + 123) << 8) | 0x15;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v11 = v39;
  *(this + 29) = (*(*(v38 + 32) + 123) << 8) | 0x16;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v12 = v37;
  *(this + 30) = (*(*(v36 + 32) + 123) << 8) | 0x17;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v13 = v35;
  *(this + 31) = (*(*(v34 + 32) + 123) << 8) | 5;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v14 = v33;
  *(this + 32) = (*(*(v32 + 32) + 123) << 8) | 4;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v15 = v31;
  *(this + 33) = (*(*(v30 + 32) + 123) << 8) | 6;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v16 = v29;
  *(this + 34) = (*(*(v28 + 32) + 123) << 8) | 7;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [(VKSharedResources *)v20 standardCommandBufferSelector];
  v17 = v27;
  *(this + 35) = (*(*(v26 + 32) + 123) << 8) | 8;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  bzero(this + 72, 0x328uLL);
  v18 = a2[13];
  v19 = [v18 format];

  v23 = *v19;
  v24 = *(v19 + 16);
  v25 = 1;
  v75 = *(v19 + 4);
  v76 = *(v19 + 20);
  operator new();
}

void sub_1B28D7A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  ggl::BufferMemory::~BufferMemory(&a25);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  ggl::BufferMemory::~BufferMemory(&STACK[0x340]);
  v34 = a24[109];
  a24[109] = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = a24[108];
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  v36 = a24[106];
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  v37 = a24[104];
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v38 = 0;
  v39 = a24 + 102;
  while (1)
  {
    v40 = v39[v38];
    v39[v38] = 0;
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    if (--v38 == -2)
    {
      v41 = 0;
      v42 = a24 + 100;
      while (1)
      {
        v43 = v42[v41];
        v42[v41] = 0;
        if (v43)
        {
          (*(*v43 + 8))(v43);
        }

        if (--v41 == -2)
        {
          v44 = 0;
          while (1)
          {
            v45 = a24[v44 + 98];
            if (v45)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v45);
            }

            v44 -= 2;
            if (v44 == -4)
            {
              v46 = 0;
              while (1)
              {
                v47 = a24[v46 + 94];
                if (v47)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v47);
                }

                v46 -= 2;
                if (v46 == -4)
                {
                  v48 = 0;
                  while (1)
                  {
                    v49 = a24[v48 + 90];
                    if (v49)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v49);
                    }

                    v48 -= 2;
                    if (v48 == -4)
                    {
                      v50 = a24[86];
                      if (v50)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v50);
                      }

                      v51 = a24[84];
                      a24[84] = 0;
                      if (v51)
                      {
                        (*(*v51 + 8))(v51);
                      }

                      v52 = a24[83];
                      if (v52)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v52);
                      }

                      v53 = a24[81];
                      if (v53)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
                      }

                      v54 = a24[79];
                      if (v54)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v54);
                      }

                      v55 = 0;
                      v56 = a24 + 77;
                      while (1)
                      {
                        v57 = v56[v55];
                        v56[v55] = 0;
                        if (v57)
                        {
                          (*(*v57 + 8))(v57);
                        }

                        if (--v55 == -2)
                        {
                          v58 = 0;
                          while (1)
                          {
                            v59 = a24[v58 + 75];
                            if (v59)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v59);
                            }

                            v58 -= 2;
                            if (v58 == -4)
                            {
                              v60 = 0;
                              while (1)
                              {
                                v61 = a24[v60 + 71];
                                if (v61)
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v61);
                                }

                                v60 -= 2;
                                if (v60 == -4)
                                {
                                  v62 = a24[67];
                                  if (v62)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v62);
                                  }

                                  v63 = a24[65];
                                  a24[65] = 0;
                                  if (v63)
                                  {
                                    (*(*v63 + 8))(v63);
                                  }

                                  v64 = a24[64];
                                  a24[64] = 0;
                                  if (v64)
                                  {
                                    (*(*v64 + 8))(v64);
                                  }

                                  v65 = a24[63];
                                  if (v65)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v65);
                                  }

                                  v66 = a24[61];
                                  if (v66)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
                                  }

                                  v67 = a24[59];
                                  if (v67)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
                                  }

                                  v68 = a24[57];
                                  if (v68)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v68);
                                  }

                                  v69 = a24[55];
                                  if (v69)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
                                  }

                                  v70 = a24[53];
                                  a24[53] = 0;
                                  if (v70)
                                  {
                                    (*(*v70 + 8))(v70);
                                  }

                                  v71 = a24[52];
                                  a24[52] = 0;
                                  if (v71)
                                  {
                                    (*(*v71 + 8))(v71);
                                  }

                                  v72 = a24[51];
                                  if (v72)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v72);
                                  }

                                  v73 = a24[49];
                                  if (v73)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v73);
                                  }

                                  v74 = a24[47];
                                  if (v74)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v74);
                                  }

                                  v75 = a24[45];
                                  if (v75)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v75);
                                  }

                                  v76 = a24[43];
                                  if (v76)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v76);
                                  }

                                  v77 = a24[41];
                                  a24[41] = 0;
                                  if (v77)
                                  {
                                    (*(*v77 + 8))(v77);
                                  }

                                  v78 = a24[40];
                                  if (v78)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v78);
                                  }

                                  v79 = a24[38];
                                  if (v79)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v79);
                                  }

                                  v80 = a24[36];
                                  if (v80)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v80);
                                  }

                                  v81 = a24[34];
                                  a24[34] = 0;
                                  if (v81)
                                  {
                                    (*(*v81 + 8))(v81);
                                  }

                                  v82 = a24[33];
                                  if (v82)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v82);
                                  }

                                  v83 = a24[31];
                                  if (v83)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v83);
                                  }

                                  v84 = a24[29];
                                  if (v84)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v84);
                                  }

                                  v85 = a24[27];
                                  a24[27] = 0;
                                  if (v85)
                                  {
                                    (*(*v85 + 8))(v85);
                                  }

                                  v86 = a24[26];
                                  if (v86)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v86);
                                  }

                                  v87 = a24[24];
                                  if (v87)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v87);
                                  }

                                  v88 = a24[22];
                                  if (v88)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v88);
                                  }

                                  v89 = a24[20];
                                  if (v89)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v89);
                                  }

                                  v90 = a24[18];
                                  if (v90)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v90);
                                  }

                                  v91 = a24[16];
                                  if (v91)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v91);
                                  }

                                  v92 = a24[14];
                                  if (v92)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v92);
                                  }

                                  v93 = a24[12];
                                  if (v93)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v93);
                                  }

                                  v94 = a24[10];
                                  if (v94)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v94);
                                  }

                                  *a24 = a12;
                                  v95 = a24[1];
                                  if (v95)
                                  {
                                    a24[2] = v95;
                                    operator delete(v95);
                                  }

                                  _Unwind_Resume(a1);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}