void sub_1B2A46204(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelTextDataLoader::finishBatch(md::LabelTextDataLoader *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  v2 = (this + 24);
  *(v2 + 36) = 0;
  if (v3 != v2[1])
  {
    v4 = atomic_load((*(this + 2) + 3427));
    if ((v4 & 1) == 0)
    {
      v6 = *this;
      v5 = *(this + 1);
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v7, *(*(this + 2) + 8), *(*(this + 2) + 16));
      v17 = *(this + 24);
      *(this + 24) = 0u;
      v18 = *(this + 5);
      *(this + 5) = 0;
      atomic_fetch_add(this + 14, 1u);
      v9 = 0;
      v10 = 0u;
      v11 = v19;
      std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::pair<std::shared_ptr<md::TextDataString>,float>*,std::pair<std::shared_ptr<md::TextDataString>,float>*>(&v9, v17, *(&v17 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v17 + 1) - v17) >> 3));
      v12 = v7;
      v13 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v14 = v6;
      v15 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      std::function<void ()(void)>::function<md::LabelTextDataLoader::finishBatch(void)::$_0,void>(v16);
    }

    std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::clear[abi:nn200100](v2);
  }
}

void sub_1B2A463F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void **);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va2);
  md::LabelTextDataLoader::finishBatch(void)::$_0::~$_0(va1);
  v9 = (v7 - 80);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a6);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  _Unwind_Resume(a1);
}

void md::FontGlyphCache::finishFrame(int8x8_t *this)
{
  v2 = this[19].u32[0];
  if (this[20].i8[4])
  {
    if (v2)
    {
      do
      {
        v3 = *(*this + 32);
        if (*(v3 + 96))
        {
          break;
        }

        v4 = atomic_load((v3 + 52));
        v5 = v4 - this[20].i32[0];
        if (v5 < 0)
        {
          v5 = -v5;
        }

        if (*(v3 + 108) == 1)
        {
          v6 = atomic_load((v3 + 109));
          if ((v6 & 1) == 0 || v5 <= 0x1F4)
          {
            return;
          }
        }

        else if (v5 < 0x1F5)
        {
          return;
        }

        md::FontGlyphCache::eraseGlyph(this, *this);
      }

      while (this[19].i32[0]);
    }
  }

  else if (v2 >= 0x101)
  {
    do
    {
      v7 = *this;
      if (v2 <= 0x3FF)
      {
        v8 = atomic_load((v7[4] + 52));
        v9 = v8 - this[20].i32[0];
        if (v9 < 0)
        {
          v9 = -v9;
        }

        if (v9 < 0xC9)
        {
          break;
        }
      }

      md::FontGlyphCache::eraseGlyph(this, v7);
      v2 = this[19].u32[0];
    }

    while (v2 > 0x100);
  }
}

uint64_t *md::PassList::updateGraphState(md::PassList *this, unsigned __int8 ***a2, uint64_t a3)
{
  v29[4] = *MEMORY[0x1E69E9840];
  md::FrameGraphBuilder::build(&v27, a2, *(this + 3));
  v5 = v27;
  if (v27)
  {
    v26 = *(this + 1);
    v28 = v27;
    if (v26)
    {
      v29[0] = &unk_1F2A37008;
      v29[1] = &v28;
      v29[3] = v29;
      md::FrameGraph::visitPasses(v26, v29);
      std::__function::__value_func<void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::~__value_func[abi:nn200100](v29);
    }

    v27 = 0;
    std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](this + 1, v5);
    v6 = *(this + 3);
  }

  else
  {
    v6 = *(this + 3);
    v6[16] = a3;
  }

  v7 = v6[2];
  if (v7)
  {
    while (1)
    {
      v9 = *(v7 + 8);
      v8 = *(v7 + 9);
      if (v9 != v8)
      {
        while ((*v9)[1] == v6[16])
        {
          if (++v9 == v8)
          {
            goto LABEL_7;
          }
        }

        if (v9 != v8)
        {
          v11 = v9 + 1;
          if (v9 + 1 != v8)
          {
            do
            {
              v12 = *v11;
              if ((*v11)[1] == v6[16])
              {
                *v11 = 0;
                v13 = *v9;
                *v9 = v12;
                if (v13)
                {
                  std::default_delete<md::FrameGraphResourceRegistry::ResourceHolder>::operator()[abi:nn200100](v13);
                }

                ++v9;
              }

              ++v11;
            }

            while (v11 != v8);
            v8 = *(v7 + 9);
          }
        }
      }

      if (v9 != v8)
      {
        break;
      }

LABEL_7:
      v10 = *v7;
LABEL_8:
      v7 = v10;
      if (!v10)
      {
        return std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](&v27, 0);
      }
    }

    while (v8 != v9)
    {
      v15 = *--v8;
      v14 = v15;
      *v8 = 0;
      if (v15)
      {
        std::default_delete<md::FrameGraphResourceRegistry::ResourceHolder>::operator()[abi:nn200100](v14);
      }
    }

    *(v7 + 9) = v9;
    v10 = *v7;
    if (*(v7 + 8) != v9)
    {
      goto LABEL_8;
    }

    v16 = v6[1];
    v17 = *(v7 + 1);
    v18 = vcnt_s8(v16);
    v18.i16[0] = vaddlv_u8(v18);
    if (v18.u32[0] > 1uLL)
    {
      if (v17 >= *&v16)
      {
        v17 %= *&v16;
      }
    }

    else
    {
      v17 &= *&v16 - 1;
    }

    v19 = *(*v6 + 8 * v17);
    do
    {
      v20 = v19;
      v19 = *v19;
    }

    while (v19 != v7);
    if (v20 == (v6 + 2))
    {
      goto LABEL_57;
    }

    v21 = *(v20 + 1);
    if (v18.u32[0] > 1uLL)
    {
      if (v21 >= *&v16)
      {
        v21 %= *&v16;
      }
    }

    else
    {
      v21 &= *&v16 - 1;
    }

    v22 = *v7;
    if (v21 != v17)
    {
LABEL_57:
      if (v10)
      {
        v23 = *(v10 + 1);
        if (v18.u32[0] > 1uLL)
        {
          if (v23 >= *&v16)
          {
            v23 %= *&v16;
          }
        }

        else
        {
          v23 &= *&v16 - 1;
        }

        v22 = *v7;
        if (v23 == v17)
        {
          goto LABEL_38;
        }
      }

      *(*v6 + 8 * v17) = 0;
      v22 = *v7;
    }

    if (!v22)
    {
LABEL_42:
      *v20 = v22;
      *v7 = 0;
      --v6[3];
      v29[0] = (v7 + 64);
      std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>::__destroy_vector::operator()[abi:nn200100](v29);
      operator delete(v7);
      goto LABEL_8;
    }

LABEL_38:
    v24 = *(v22 + 8);
    if (v18.u32[0] > 1uLL)
    {
      if (v24 >= *&v16)
      {
        v24 %= *&v16;
      }
    }

    else
    {
      v24 &= *&v16 - 1;
    }

    if (v24 != v17)
    {
      *(*v6 + 8 * v24) = v20;
      v22 = *v7;
    }

    goto LABEL_42;
  }

  return std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](&v27, 0);
}

void md::VenueRenderLayer::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v4, 0x4927EB92E562CC46uLL);
  if (v5 && (v6 = v5[5], *(v6 + 8) == 0x4927EB92E562CC46))
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v4, 0x1AF456233693CD46uLL);
  if (v8 && (v9 = v8[5], *(v9 + 8) == 0x1AF456233693CD46))
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    do
    {
      v13 = *v11;
      v14 = v10[471] * v10[173] / (v10[171] * (*(*v11 + 80) - *(*v11 + 64)));
      *(v13 + 376) = v14;
      v15 = *(v13 + 224);
      ggl::BufferMemory::BufferMemory(v37);
      ggl::ResourceAccessor::accessConstantData(v35, 0, v15, 1);
      ggl::BufferMemory::operator=(v37, v35);
      ggl::BufferMemory::~BufferMemory(v35);
      if (v7)
      {
        v16 = 0;
        v17 = (v7 + 144);
        do
        {
          v18 = 0;
          v19 = v13 + 96;
          do
          {
            v20 = 0;
            v21 = 0.0;
            v22 = v17;
            do
            {
              v23 = *v22;
              v22 += 4;
              v21 = v21 + *(v19 + v20) * v23;
              v20 += 8;
            }

            while (v20 != 32);
            *&v35[4 * v18++ + v16] = v21;
            v19 += 32;
          }

          while (v18 != 4);
          ++v16;
          ++v17;
        }

        while (v16 != 4);
        v24 = 0;
        v25 = v35;
        do
        {
          v27 = *v25;
          v26 = v25[1];
          v25 += 2;
          v36[v24++] = vcvt_hight_f32_f64(vcvt_f32_f64(v27), v26);
        }

        while (v24 != 4);
      }

      else
      {
        v28 = v35;
        gm::operator*<double,4,4,4>(v35, v10 + 101, v13 + 96);
        for (i = 0; i != 4; ++i)
        {
          v31 = *v28;
          v30 = v28[1];
          v28 += 2;
          v36[i] = vcvt_hight_f32_f64(vcvt_f32_f64(v31), v30);
        }
      }

      v32 = v38;
      v33 = v36[1];
      *v38 = v36[0];
      v32[1] = v33;
      v34 = v36[3];
      v32[2] = v36[2];
      v32[3] = v34;
      *(v32 + 16) = *(v13 + 376);
      ggl::BufferMemory::~BufferMemory(v37);
      ++v11;
    }

    while (v11 != v12);
  }
}

uint64_t md::LabelManager::didCompleteBackgroundUpdate(uint64_t this, int a2)
{
  if (*(this + 3329) == a2)
  {
    v2 = this;
    *(this + 3418) = 1;
    v3 = atomic_load((this + 3053));
    if (v3)
    {
      v4 = *(this + 136);
      if (v4)
      {
        this = *(v4 + 56);
        if (this)
        {
          return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(this, v2, 9);
        }
      }
    }
  }

  return this;
}

void __destroy_helper_block_ea8_48c37_ZTSNSt3__110shared_ptrIN3geo4TaskEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t md::DaVinciGroundRenderLayer::prepare(uint64_t result, uint64_t a2)
{
  if ((*(result + 33) & 1) == 0)
  {
    v3 = result;
    (*(*result + 104))(result);
    result = (*(*v3 + 96))(v3, a2);
    if (*result != *(result + 8))
    {
      **(a2 + 744) = 1;
    }
  }

  return result;
}

void std::__function::__func<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0,std::allocator<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void ggl::RenderBuffer::~RenderBuffer(ggl::RenderBuffer *this)
{
  *this = &unk_1F2A5DA30;
  *(this + 5) = &unk_1F2A5DA50;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::Texture::~Texture(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5DA30;
  *(this + 5) = &unk_1F2A5DA50;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::Texture::~Texture(this);
}

uint64_t md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::updateVisibleMapData(void *a1, uint64_t a2)
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
            v16 = std::__partition_impl[abi:nn200100]<md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::legacyCollectRenderables(md::LayoutContext const&)::{lambda(md::DaVinciRoadTileDataRenderable*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::DaVinciRoadTileDataRenderable**>,std::__wrap_iter<md::DaVinciRoadTileDataRenderable**>>(v15, v13, &v43);
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
    std::__function::__value_func<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::__value_func[abi:nn200100](v45, (a1 + 7));
    std::sort[abi:nn200100]<std::__wrap_iter<md::DaVinciRoadTileDataRenderable **>,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>>(v25, v26, v45);
    std::__function::__value_func<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::~__value_func[abi:nn200100](v45);
  }

  return (*(*a1 + 152))(a1, v24, a2);
}

void std::vector<std::unique_ptr<md::FrameGraphResourceRegistry::ResourceHolder>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          std::default_delete<md::FrameGraphResourceRegistry::ResourceHolder>::operator()[abi:nn200100](v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
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

void md::FrameGraphPhysicalResourceOwner<ggl::Texture>::~FrameGraphPhysicalResourceOwner(void *a1)
{
  *a1 = &unk_1F2A30098;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void md::RenderQueueBase::~RenderQueueBase(md::RenderQueueBase *this)
{
  *this = &unk_1F29E35B0;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F29E35B0;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

double md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
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

void *md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::_determineEnteringRenderables@<X0>(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, void *a3@<X8>)
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

void sub_1B2A47838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v14)
  {
    *(v13 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::_determineExitingRenderables(uint64_t a1)
{
  v2 = *(a1 + 272);
  v1 = *(a1 + 280);
  v4 = a1;
  return std::__partition_impl[abi:nn200100]<md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::DaVinciRoadTileDataRenderable*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::DaVinciRoadTileDataRenderable**>,std::__wrap_iter<md::DaVinciRoadTileDataRenderable**>>(v2, v1, &v4);
}

uint64_t *std::__partition_impl[abi:nn200100]<md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::legacyCollectRenderables(md::LayoutContext const&)::{lambda(md::DaVinciRoadTileDataRenderable*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::DaVinciRoadTileDataRenderable**>,std::__wrap_iter<md::DaVinciRoadTileDataRenderable**>>(uint64_t *a1, uint64_t *a2, void *a3)
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

void std::__function::__func<md::PassList::transferItems(md::FrameGraph *,md::FrameGraph *)::$_0,std::allocator<md::PassList::transferItems(md::FrameGraph *,md::FrameGraph *)::$_0>,void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::operator()(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = md::FrameGraph::renderQueueForPass(**(a1 + 8), *a2);
  if (v4)
  {
    v5 = *(a3 + 8);
    v6 = *(v5 + 104);
    v7 = *(v5 + 112);
    if (v6 != v7)
    {
      v8 = v4;
      do
      {
        v9 = *v6;
        if (!*v6)
        {
          goto LABEL_46;
        }

        v10 = *(*(v8 + 16) + 8 * *(v9 + 16));
        if (!v10)
        {
          goto LABEL_46;
        }

        if (*(v9 + 352))
        {
          std::deque<ggl::PendingQuery>::__move_assign(v10 + 39, v9 + 312);
          v11 = *(v9 + 320);
          v12 = *(v9 + 328);
          if (v12 == v11)
          {
            v12 = *(v9 + 320);
          }

          else
          {
            v13 = *(v9 + 344);
            v14 = &v11[v13 >> 7];
            v15 = *v14;
            v16 = *v14 + 32 * (v13 & 0x7F);
            v17 = *(v11 + (((*(v9 + 352) + v13) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v9 + 352) + v13) & 0x7F);
            if (v16 != v17)
            {
              do
              {
                v18 = *(v16 + 24);
                if (v18)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v18);
                  v15 = *v14;
                }

                v16 += 32;
                if (v16 - v15 == 4096)
                {
                  v19 = v14[1];
                  ++v14;
                  v15 = v19;
                  v16 = v19;
                }
              }

              while (v16 != v17);
              v11 = *(v9 + 320);
              v12 = *(v9 + 328);
            }
          }

          *(v9 + 352) = 0;
          v20 = v12 - v11;
          if (v20 >= 3)
          {
            do
            {
              operator delete(*v11);
              v21 = *(v9 + 328);
              v11 = (*(v9 + 320) + 8);
              *(v9 + 320) = v11;
              v20 = (v21 - v11) >> 3;
            }

            while (v20 > 2);
          }

          if (v20 == 1)
          {
            v22 = 64;
          }

          else
          {
            if (v20 != 2)
            {
              goto LABEL_23;
            }

            v22 = 128;
          }

          *(v9 + 344) = v22;
        }

LABEL_23:
        if (*(v9 + 176) != *(v9 + 168))
        {
          std::vector<ggl::CopyItem,geo::allocator_adapter<ggl::CopyItem,ggl::zone_mallocator>>::__vdeallocate((v10 + 21));
          *(v10 + 21) = *(v9 + 168);
          v10[23] = *(v9 + 184);
          *(v9 + 168) = 0;
          *(v9 + 176) = 0;
          *(v9 + 184) = 0;
        }

        if (*(v9 + 208) != *(v9 + 200))
        {
          std::vector<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,ggl::zone_mallocator>>::__vdeallocate((v10 + 25));
          *(v10 + 25) = *(v9 + 200);
          v10[27] = *(v9 + 216);
          *(v9 + 200) = 0;
          *(v9 + 208) = 0;
          *(v9 + 216) = 0;
        }

        if (*(v9 + 240) != *(v9 + 232))
        {
          std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__vdeallocate((v10 + 29));
          *(v10 + 29) = *(v9 + 232);
          v10[31] = *(v9 + 248);
          *(v9 + 232) = 0;
          *(v9 + 240) = 0;
          *(v9 + 248) = 0;
        }

        if (!*(v9 + 304))
        {
          goto LABEL_46;
        }

        std::deque<std::shared_ptr<ggl::QueryItem>>::__move_assign((v10 + 33), v9 + 264);
        v23 = *(v9 + 272);
        v24 = *(v9 + 280);
        if (v24 == v23)
        {
          v24 = *(v9 + 272);
        }

        else
        {
          v25 = *(v9 + 296);
          v26 = &v23[v25 >> 8];
          v27 = *v26;
          v28 = *v26 + 16 * v25;
          v29 = *(v23 + (((*(v9 + 304) + v25) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v9 + 304) + v25);
          if (v28 != v29)
          {
            do
            {
              v30 = *(v28 + 8);
              if (v30)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v30);
                v27 = *v26;
              }

              v28 += 16;
              if (v28 - v27 == 4096)
              {
                v31 = v26[1];
                ++v26;
                v27 = v31;
                v28 = v31;
              }
            }

            while (v28 != v29);
            v23 = *(v9 + 272);
            v24 = *(v9 + 280);
          }
        }

        *(v9 + 304) = 0;
        v32 = v24 - v23;
        if (v32 >= 3)
        {
          do
          {
            operator delete(*v23);
            v33 = *(v9 + 280);
            v23 = (*(v9 + 272) + 8);
            *(v9 + 272) = v23;
            v32 = (v33 - v23) >> 3;
          }

          while (v32 > 2);
        }

        if (v32 == 1)
        {
          v34 = 128;
          goto LABEL_45;
        }

        if (v32 == 2)
        {
          v34 = 256;
LABEL_45:
          *(v9 + 296) = v34;
        }

LABEL_46:
        ++v6;
      }

      while (v6 != v7);
    }
  }
}

uint64_t *std::__partition_impl[abi:nn200100]<md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::DaVinciRoadTileDataRenderable*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::DaVinciRoadTileDataRenderable**>,std::__wrap_iter<md::DaVinciRoadTileDataRenderable**>>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a1;
  v3 = a2;
  do
  {
    v6 = *v5;
    v7 = *a3;
    v8 = *(*v5 + 392);
    v9 = *(*v5 + 400);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *(v6 + 56);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v9;
    }

    else
    {
      v11 = 0;
      v10 = *(v6 + 56);
    }

    v12 = *(v7 + 136);
    if (!v12)
    {
LABEL_15:
      FillRect = grl::IconMetricsRenderResult::getFillRect(v8);
      v19 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>((v7 + 88), FillRect) != 0;
      if (v11)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    while (1)
    {
      v13 = *(v12 + 48);
      v14 = v13 > v10;
      v15 = v12[4];
      if (v10 == v13)
      {
        v14 = v8 < v15;
      }

      if (v14)
      {
        goto LABEL_14;
      }

      v16 = *(v12 + 48);
      v17 = v15 < v8;
      if (v10 != v16)
      {
        v17 = v16 < v10;
      }

      if (!v17)
      {
        break;
      }

      ++v12;
LABEL_14:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_15;
      }
    }

    v19 = 1;
    if (!v11)
    {
      goto LABEL_17;
    }

LABEL_16:
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
LABEL_17:
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    if (v19)
    {
      ++v5;
      continue;
    }

    while (2)
    {
      if (v5 == --v3)
      {
        return v5;
      }

      v21 = *v3;
      v22 = *a3;
      v23 = *(*v3 + 392);
      v24 = *(*v3 + 400);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v25 = *(v21 + 56);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v26 = v24;
      }

      else
      {
        v26 = 0;
        v25 = *(v21 + 56);
      }

      v27 = *(v22 + 136);
      if (!v27)
      {
LABEL_40:
        v33 = grl::IconMetricsRenderResult::getFillRect(v23);
        v20 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>((v22 + 88), v33) != 0;
        if (!v26)
        {
          goto LABEL_42;
        }

LABEL_41:
        std::__shared_weak_count::__release_shared[abi:nn200100](v26);
        goto LABEL_42;
      }

      while (2)
      {
        v28 = *(v27 + 48);
        v29 = v28 > v25;
        v30 = v27[4];
        if (v25 == v28)
        {
          v29 = v23 < v30;
        }

        if (v29)
        {
LABEL_39:
          v27 = *v27;
          if (!v27)
          {
            goto LABEL_40;
          }

          continue;
        }

        break;
      }

      v31 = *(v27 + 48);
      v32 = v30 < v23;
      if (v25 != v31)
      {
        v32 = v31 < v25;
      }

      if (v32)
      {
        ++v27;
        goto LABEL_39;
      }

      v20 = 1;
      if (v26)
      {
        goto LABEL_41;
      }

LABEL_42:
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }

      if (!v20)
      {
        continue;
      }

      break;
    }

    v34 = *v5;
    *v5++ = *v3;
    *v3 = v34;
  }

  while (v5 != v3);
  return v3;
}

void md::DaVinciCenterLineRoadsRenderLayer::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      v6 = *(*v3 + 392);
      v7 = v6[93];
      if (v7)
      {
        md::RoadStyling::subscribeLayer(*(a1 + 400), v7);
      }

      v8 = v6[103];
      if (v8)
      {
        md::RoadStyling::subscribeLayer(*(a1 + 400), v8);
      }

      v9 = v6[94];
      if (v9)
      {
        md::RoadStyling::subscribeLayer(*(a1 + 400), v9);
      }

      v3 += 8;
    }

    while (v3 != v4);
  }
}

uint64_t std::map<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>,md::FrameGraphPassLessThan,std::allocator<std::pair<md::FrameGraphPass * const,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::find[abi:nn200100](uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  result = a1 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = result;
    do
    {
      v7 = **(v3 + 32);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != result && v5 >= **(v6 + 32))
    {
      return v6;
    }
  }

  return result;
}

uint64_t geo::DirectedGraph<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::vector<md::FrameGraphPass *>>::isAcyclicDFS(uint64_t a1, unsigned __int8 *a2, unsigned __int8 ***a3, unsigned __int8 ***a4)
{
  v25 = a2;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
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

    if (v8 != v9)
    {
      geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::erase(a4, a2);
      return 1;
    }
  }

LABEL_11:
  geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::insert(a3, &v25);
  v13 = std::map<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>,md::FrameGraphPassLessThan,std::allocator<std::pair<md::FrameGraphPass * const,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::find[abi:nn200100](a1, a2);
  if (a1 + 8 == v13)
  {
    return 1;
  }

  v15 = v13;
  geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::insert(a4, &v25);
  v16 = *(v15 + 40);
  v17 = *(v15 + 48);
  if (v16 == v17)
  {
    v24 = *a4;
LABEL_21:
    v21 = v24;
    if (v24 != *(&v24 + 1))
    {
      v22 = *v25;
      result = 1;
      while (1)
      {
        v23 = **v21;
        if (v23 == v22)
        {
          break;
        }

        if (v22 < v23)
        {
          return 1;
        }

        if (++v21 == *(&v24 + 1))
        {
          return result;
        }
      }

      if (v21 != *(&v24 + 1))
      {
        if (*(&v24 + 1) != v21 + 1)
        {
          memmove(v21, v21 + 1, *(&v24 + 1) - (v21 + 1));
        }

        a4[1] = (*(&v24 + 1) - 8);
      }
    }

    return 1;
  }

  while (1)
  {
    v18 = *v16;
    v19 = a3[1];
    if (v19 == geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::find(*a3, v19, *v16))
    {
      result = geo::DirectedGraph<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::vector<md::FrameGraphPass *>>::isAcyclicDFS(a1, v18, a3, a4);
      if (!result)
      {
        return result;
      }
    }

    v24 = *a4;
    v20 = a4[1];
    if (v20 != geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::find(*a4, v20, v18))
    {
      return 0;
    }

    if (++v16 == v17)
    {
      goto LABEL_21;
    }
  }
}

unsigned __int8 **std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(unsigned __int8 **result, unsigned __int8 **a2, unsigned __int8 **a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = **a2;
  v6 = **result;
  if (v5 == v6)
  {
    v7 = *a3;
    if (*(v3 + 3) + *(v3 + 5) >= *(v4 + 3) + *(v4 + 5))
    {
LABEL_3:
      v8 = *v7;
      v9 = v8 >= v5;
      if (v8 == v5)
      {
        v9 = *(v7 + 3) + *(v7 + 5) >= *(v3 + 3) + *(v3 + 5);
      }

      if (!v9)
      {
        *a2 = v7;
        *a3 = v3;
        v10 = *a2;
        v11 = *result;
        v12 = **a2;
        v13 = **result;
        v14 = v12 >= v13;
        if (v12 == v13)
        {
          v14 = *(v10 + 3) + *(v10 + 5) >= *(v11 + 3) + *(v11 + 5);
        }

        if (!v14)
        {
          *result = v10;
          *a2 = v11;
        }
      }

      return result;
    }
  }

  else
  {
    v7 = *a3;
    if (v5 >= v6)
    {
      goto LABEL_3;
    }
  }

  v15 = *v7;
  v16 = v15 >= v5;
  if (v15 == v5)
  {
    v16 = *(v7 + 3) + *(v7 + 5) >= *(v3 + 3) + *(v3 + 5);
  }

  if (!v16)
  {
    *result = v7;
LABEL_19:
    *a3 = v4;
    return result;
  }

  *result = v3;
  *a2 = v4;
  v17 = *a3;
  v18 = **a3;
  v19 = v18 >= v6;
  if (v18 == v6)
  {
    v19 = *(v17 + 3) + *(v17 + 5) >= *(v4 + 3) + *(v4 + 5);
  }

  if (!v19)
  {
    *a2 = v17;
    goto LABEL_19;
  }

  return result;
}

void md::DaVinciCenterLineRoadsRenderLayer::updateWithContext(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::updateZScaleAndOffset(a2, *(a3 + 8));

  md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::updateWithContext(v5, a2, a3);
}

uint64_t ecs2::Runtime::_entities<md::ita::BuildSSAOFrameGraph,md::ls::FrameGraphBuilder &,md::ls::PassCount &,md::ls::FrameBufferDesc const&,md::ls::PassSSAOConfiguration const&,md::ls::PassMapEngineCapabilities const&>(uint64_t a1, uint64_t **a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphBuilder>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassCount>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FrameBufferDesc>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PassSSAOConfiguration>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PassMapEngineCapabilities>(v3);
  v57 = v4;
  v58 = v5;
  v59 = v6;
  v60 = v7;
  v9 = 8;
  v10 = v4;
  v11 = &v57;
  v61 = v8;
  do
  {
    if ((*(&v57 + v9))[5] - (*(&v57 + v9))[4] < *(v10 + 40) - *(v10 + 32))
    {
      v10 = *(&v57 + v9);
      v11 = (&v57 + v9);
    }

    v9 += 8;
  }

  while (v9 != 40);
  v12 = *(*v11 + 4);
  v13 = *(*v11 + 5);
  v48 = v12;
  v49 = v13;
  v50 = v4;
  v51 = v5;
  v52 = v6;
  v53 = v7;
  v54 = v8;
  while (v12 != v13 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v48, *v12, v12[1]))
  {
    v12 += 2;
    v48 = v12;
  }

  v14 = v48;
  v47 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v46 = result;
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = v14[1];
      v18 = (v17 >> 3) & 0x1FF8;
      v19 = v17 & 0x3F;
      v20 = *(*(*(v50 + 8) + v18) + 4 * v19 + 2);
      v21 = *(*(v50 + 56) + ((v20 >> 3) & 0x1FF8));
      v22 = *(*(*(v52 + 8) + v18) + 4 * v19 + 2);
      v23 = *(*(v52 + 56) + ((v22 >> 3) & 0x1FF8));
      v24 = *(*(*(v53 + 8) + v18) + 4 * v19 + 2);
      v25 = *(*(v53 + 56) + ((v24 >> 3) & 0x1FF8));
      *(v47 + 104 * *v46 + 24) = *v14;
      v26 = a2[1];
      if (!v26)
      {
        v27 = **a2;
        v28 = *v27;
        v29 = *(v27 + 8);
        if (v28 == v29)
        {
          goto LABEL_13;
        }

        while (*v28 != 0xD369A4D92C8FFE6CLL)
        {
          v26 = 0;
          v28 += 5;
          if (v28 == v29)
          {
            goto LABEL_14;
          }
        }

        if (v28 == v29)
        {
LABEL_13:
          v26 = 0;
        }

        else
        {
          v26 = v28[3];
          v39 = v28[4];
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v39);
          }
        }

LABEL_14:
        a2[1] = v26;
      }

      v30 = (*(*v26 + 8))(v26);
      if (v30)
      {
        v31 = v23 + 8 * (v22 & 0x3F);
        v32 = (v25 + 12 * (v24 & 0x3F));
        v33 = v32[10];
        v32 += 10;
        v34 = md::StandardPassList::_buildSSAOFrameGraph(v30, v33, (v32 - 6), (v32 - 1), v31, *(v21 + 8 * (v20 & 0x3F)));
        if (*v32 == 1)
        {
          v35 = ecs2::ExecutionTaskContext::currentEntity(v34);
          v56[0] = &unk_1F2A55140;
          v56[1] = v35 << 32;
          v56[3] = v56;
          v60 = &v57;
          v57 = &unk_1F2A55140;
          v58 = v35 << 32;
          LODWORD(v61) = 0;
          ecs2::Runtime::queueCommand();
          if (v61 != -1)
          {
            (off_1F2A54620[v61])(&v55, &v57);
          }

          LODWORD(v61) = -1;
          std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v56);
        }
      }

      ++v16;
      v36 = v49;
      v37 = v48 + 2;
      while (1)
      {
        v14 = v37;
        v48 = v37;
        if (v37 == v36)
        {
          break;
        }

        v38 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v48, *v37, v37[1]);
        v37 = v14 + 2;
        if (v38)
        {
          v36 = v14;
          break;
        }
      }
    }

    while (v36 != v13);
    ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphBuilder>(*(a1 + 8));
    result = ecs2::BasicRegistry<void>::didWrite<md::ls::PassCount>(*(a1 + 8));
  }

  *(v47 + 104 * *v46 + 24) = -65536;
  v40 = v47 + 104 * *v46;
  v41 = *(v40 + 92);
  *(v40 + 92) = v41 + 1;
  *(v40 + 4 * v41 + 28) = v16;
  v42 = v47 + 104 * *v46;
  v44 = *(v42 + 92);
  v43 = (v42 + 92);
  if (v44 >= 0x10)
  {
    *v43 = 0;
  }

  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::BuildSSAOFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::BuildSSAOFrameGraph>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::BuildSSAOFrameGraph,md::ls::FrameGraphBuilder &,md::ls::PassCount &,md::ls::FrameBufferDesc const&,md::ls::PassSSAOConfiguration const&,md::ls::PassMapEngineCapabilities const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a3 + 8), 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v9 = 0;
      v10 = *v7;
      v11 = v6[471] * v6[173] / (v6[171] * (*(*v7 + 80) - *(*v7 + 64)));
      *(*v7 + 376) = v11;
      v12 = v6 + 101;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          v29[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v29;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v30[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      v23 = *(v10 + 224);
      ggl::BufferMemory::BufferMemory(v27);
      ggl::ResourceAccessor::accessConstantData(v29, 0, v23, 1);
      ggl::BufferMemory::operator=(v27, v29);
      ggl::BufferMemory::~BufferMemory(v29);
      v24 = v28;
      v25 = v30[1];
      *v28 = v30[0];
      v24[1] = v25;
      v26 = v30[3];
      v24[2] = v30[2];
      v24[3] = v26;
      *(v24 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v27);
      ++v7;
    }

    while (v7 != v8);
  }
}

uint64_t md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::updateVisibleMapData(void *a1, uint64_t a2)
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
            v16 = std::__partition_impl[abi:nn200100]<md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::legacyCollectRenderables(md::LayoutContext const&)::{lambda(md::ElevatedPolygonRenderable*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::ElevatedPolygonRenderable**>,std::__wrap_iter<md::ElevatedPolygonRenderable**>>(v15, v13, &v43);
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
    std::__function::__value_func<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::__value_func[abi:nn200100](v45, (a1 + 7));
    std::sort[abi:nn200100]<std::__wrap_iter<md::ElevatedPolygonRenderable **>,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>>(v25, v26, v45);
    std::__function::__value_func<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::~__value_func[abi:nn200100](v45);
  }

  return (*(*a1 + 152))(a1, v24, a2);
}

void sub_1B2A48E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ecs2::Runtime::_entities<md::ita::BuildShadowFrameGraph,md::ls::FrameGraphBuilder &,md::ls::PassCount &,md::ls::PassShadowConfiguration const&>(uint64_t a1, uint64_t **a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphBuilder>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassCount>(v4);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PassShadowConfiguration>(v4);
  v49 = v5;
  v50 = v6;
  v51 = v7;
  v8 = 8;
  v9 = v5;
  v10 = &v49;
  do
  {
    if ((*(&v49 + v8))[5] - (*(&v49 + v8))[4] < *(v9 + 40) - *(v9 + 32))
    {
      v9 = *(&v49 + v8);
      v10 = (&v49 + v8);
    }

    v8 += 8;
  }

  while (v8 != 24);
  v11 = *(*v10 + 4);
  v12 = *(*v10 + 5);
  v42 = v11;
  v43 = v12;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v42, *v11, v11[1]))
  {
    v11 += 2;
    v42 = v11;
  }

  v13 = v42;
  v14 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v16 = result;
  if (v13 == v12)
  {
    v17 = 0;
  }

  else
  {
    v41 = a1;
    v17 = 0;
    do
    {
      v18 = v13[1];
      v19 = (v18 >> 3) & 0x1FF8;
      v20 = v18 & 0x3F;
      v21 = *(*(*(v44 + 8) + v19) + 4 * v20 + 2);
      v22 = *(*(v44 + 56) + ((v21 >> 3) & 0x1FF8));
      v23 = *(*(*(v46 + 8) + v19) + 4 * v20 + 2);
      v24 = *(*(v46 + 56) + ((v23 >> 3) & 0x1FF8));
      *(v14 + 104 * *v16 + 24) = *v13;
      v25 = a2[1];
      if (!v25)
      {
        v26 = **a2;
        v27 = *v26;
        v28 = *(v26 + 8);
        if (v27 == v28)
        {
          goto LABEL_13;
        }

        while (*v27 != 0xD369A4D92C8FFE6CLL)
        {
          v25 = 0;
          v27 += 5;
          if (v27 == v28)
          {
            goto LABEL_14;
          }
        }

        if (v27 == v28)
        {
LABEL_13:
          v25 = 0;
        }

        else
        {
          v25 = v27[3];
          v35 = v27[4];
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v35);
          }
        }

LABEL_14:
        a2[1] = v25;
      }

      v29 = (*(*v25 + 8))(v25);
      if (v29)
      {
        v30 = md::StandardPassList::_buildShadowFrameGraph(v29, *(v24 + (v23 & 0x3F)), *(v22 + 8 * (v21 & 0x3F)));
        if (*(v24 + (v23 & 0x3F)) == 1)
        {
          v31 = ecs2::ExecutionTaskContext::currentEntity(v30);
          v48[0] = &unk_1F2A552C8;
          v48[1] = v31 << 32;
          v48[3] = v48;
          v52 = &v49;
          v49 = &unk_1F2A552C8;
          v50 = v31 << 32;
          v53 = 0;
          ecs2::Runtime::queueCommand();
          if (v53 != -1)
          {
            (off_1F2A54620[v53])(&v47, &v49);
          }

          v53 = -1;
          std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v48);
        }
      }

      ++v17;
      v32 = v43;
      v33 = v42 + 2;
      while (1)
      {
        v13 = v33;
        v42 = v33;
        if (v33 == v32)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v42, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v32 = v13;
          break;
        }
      }
    }

    while (v32 != v12);
    ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphBuilder>(*(v41 + 8));
    result = ecs2::BasicRegistry<void>::didWrite<md::ls::PassCount>(*(v41 + 8));
  }

  *(v14 + 104 * *v16 + 24) = -65536;
  v36 = v14 + 104 * *v16;
  v37 = *(v36 + 92);
  *(v36 + 92) = v37 + 1;
  *(v36 + 4 * v37 + 28) = v17;
  v38 = v14 + 104 * *v16;
  v40 = *(v38 + 92);
  v39 = (v38 + 92);
  if (v40 >= 0x10)
  {
    *v39 = 0;
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::BuildShadowFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::BuildShadowFrameGraph>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::BuildShadowFrameGraph,md::ls::FrameGraphBuilder &,md::ls::PassCount &,md::ls::PassShadowConfiguration const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::FrameGraphRenderPassBuilder &)>::~__value_func[abi:nn200100](uint64_t a1)
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

double md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_updateLayerDataInfo(uint64_t a1, uint64_t *a2)
{
  md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::_updateLayerDataInfo(a1, a2);
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 352), a1 + 376);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 360));
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = a1 + 360;
  v4 = md::SceneContext::layerDataInView(a2, *(a1 + 450));
  std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 352), *v4, v4 + 1);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 408));
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = a1 + 408;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 432));
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = a1 + 432;
  v5 = *(a1 + 376);
  v6 = *(a1 + 400);
  v15 = *(a1 + 352);
  v13 = v5;
  v14 = a1 + 360;
  v11.n128_u64[1] = v6;
  v12 = a1 + 384;
  v11.n128_u64[0] = a1 + 400;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v10, &v15, &v14, &v13, &v12, &v11);
  v7 = *(a1 + 352);
  v8 = *(a1 + 424);
  v15 = *(a1 + 376);
  v13 = v7;
  v14 = a1 + 384;
  v11.n128_u64[1] = v8;
  v12 = a1 + 360;
  v11.n128_u64[0] = a1 + 424;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v10, &v15, &v14, &v13, &v12, &v11).n128_u64[0];
  return result;
}

double md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::_updateLayerDataInfo(uint64_t a1, uint64_t *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  for (i = *(a1 + 328); v5 != i; ++v5)
  {
    v7 = *v5;
    v8 = *a2;
    {
      v23 = v7;
      v22 = v8;
      v8 = v22;
      v7 = v23;
      if (v21)
      {
        qword_1ED65AC10 = 0;
        qword_1ED65AC08 = 0;
        md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
        v8 = v22;
        v7 = v23;
      }
    }

    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    if (v9 == v10)
    {
      goto LABEL_7;
    }

    v11 = v9;
    while (*v11 != v7)
    {
      v11 += 16;
      if (v11 == v10)
      {
        goto LABEL_7;
      }
    }

    if (v11 == v10)
    {
LABEL_7:
      v12 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
    }

    else
    {
      while (*v9 != v7)
      {
        v9 += 16;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }

      v12 = (v9 + 4);
    }

    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v12, v12 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v13 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v14 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v15 = (a1 + 200);
  *v14 = 0;
  v15[2] = 0;
  v16 = *(v15 - 6);
  v17 = *v13;
  v29 = *(v15 - 9);
  v27 = v16;
  v28 = v4;
  v25.n128_u64[1] = v17;
  v26 = v15 - 5;
  v25.n128_u64[0] = v13;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v24, &v29, &v28, &v27, &v26, &v25);
  v18 = *(v15 - 9);
  v19 = *v15;
  v29 = *(v15 - 6);
  v27 = v18;
  v28 = v15 - 5;
  v25.n128_u64[1] = v19;
  v26 = v4;
  v25.n128_u64[0] = v15;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v24, &v29, &v28, &v27, &v26, &v25).n128_u64[0];
  return result;
}

uint64_t std::__tree<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass * const&>(uint64_t result, unsigned __int8 *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = **(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return result;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<ggl::CommandBuffer *,geo::allocator_adapter<ggl::CommandBuffer *,ggl::zone_mallocator>>::resize(ggl::zone_mallocator *a1, unint64_t a2, uint64_t *a3)
{
  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = v5 - *a1;
  v8 = v7 >> 3;
  if (a2 <= v7 >> 3)
  {
    if (a2 >= v8)
    {
      return;
    }

    v30 = v6 + 8 * a2;
    goto LABEL_28;
  }

  v10 = a2 - v8;
  v11 = *(a1 + 2);
  if (v10 <= (v11 - v5) >> 3)
  {
    v31 = 0;
    v32 = *a3;
    v33 = (v10 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v34 = vdupq_n_s64(v33);
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v31), xmmword_1B33B0560)));
      if (v35.i8[0])
      {
        *(v5 + 8 * v31) = v32;
      }

      if (v35.i8[4])
      {
        *(v5 + 8 * v31 + 8) = v32;
      }

      v31 += 2;
    }

    while (v33 - ((v10 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v31);
    v30 = v5 + 8 * v10;
LABEL_28:
    *(a1 + 1) = v30;
    return;
  }

  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = v11 - v6;
  v13 = (v11 - v6) >> 2;
  if (v13 <= a2)
  {
    v13 = a2;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v13;
  }

  v15 = ggl::zone_mallocator::instance(a1);
  v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::CommandBuffer *>(v15, v14);
  v17 = 0;
  v18 = &v16[v7];
  v19 = &v16[8 * v14];
  v20 = *a3;
  v21 = (v10 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v22 = vdupq_n_s64(v21);
  do
  {
    v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v17), xmmword_1B33B0560)));
    if (v23.i8[0])
    {
      *&v18[8 * v17] = v20;
    }

    if (v23.i8[4])
    {
      *&v18[8 * v17 + 8] = v20;
    }

    v17 += 2;
  }

  while (v21 - ((v10 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v17);
  v24 = &v16[8 * a2];
  v25 = *(a1 + 1) - *a1;
  v26 = &v18[-v25];
  v27 = memcpy(&v18[-v25], *a1, v25);
  v28 = *a1;
  *a1 = v26;
  *(a1 + 1) = v24;
  *(a1 + 2) = v19;
  if (v28)
  {
    v29 = ggl::zone_mallocator::instance(v27);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture *>(v29, v28);
  }
}

void md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineEnteringRenderables(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 8);
  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x3070CB6B3C7F21D3uLL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x3070CB6B3C7F21D3))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v43[0] = a1;
  v43[1] = a3;
  v43[2] = a2;
  v43[3] = v9;
  if (v9)
  {
    v13 = *(a1 + 176);
    v14 = (a1 + 184);
    if (v13 != (a1 + 184))
    {
      do
      {
        v28 = v13[5];
        v41 = v13[4];
        v42 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = v12;
        if (v39 != v40)
        {
          v30 = *(v39 + 8);
          v37 = *v39;
          v38 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineEnteringRenderables(md::LayoutContext const&)::{lambda(std::shared_ptr<md::ElevatedStrokeTileData> const&,unsigned char,std::shared_ptr<md::DaVinciGroundTileData> const&)#1}::operator()(v43, &v41, *(v13 + 48), &v37);
        }

        v37 = &v39;
        std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v37);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v28);
        }

        v31 = v13[1];
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
            v32 = v13[2];
            v27 = *v32 == v13;
            v13 = v32;
          }

          while (!v27);
        }

        v13 = v32;
        v12 = v29;
      }

      while (v32 != v14);
    }

    v15 = *(a1 + 400);
    if (v15 != (a1 + 408))
    {
      v33 = v12;
      do
      {
        v16 = v15[5];
        v41 = v15[4];
        v42 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = v16;
        v18 = v39;
        v17 = v40;
        v35 = v40;
        while (v18 != v17)
        {
          v19 = *v18;
          v20 = *(v18 + 8);
          v37 = *v18;
          v38 = v20;
          if (v20)
          {
            v21 = 1;
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            v22 = *(v15 + 48);
            v19 = *v18;
            v23 = *(v18 + 8);
            if (v23)
            {
              v21 = 0;
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v23 = 0;
            v22 = *(v15 + 48);
            v21 = 1;
          }

          v36 = v22;
          v24 = std::__tree<gdc::LayerDataWithWorld>::__count_unique<gdc::LayerDataWithWorld>(*v14, v19, v22);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v23);
          }

          if ((v21 & 1) == 0)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v23);
          }

          if (!v24)
          {
            md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineEnteringRenderables(md::LayoutContext const&)::{lambda(std::shared_ptr<md::ElevatedStrokeTileData> const&,unsigned char,std::shared_ptr<md::DaVinciGroundTileData> const&)#1}::operator()(v43, &v37, v36, &v41);
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }

          v18 += 16;
          v17 = v35;
        }

        v37 = &v39;
        std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v37);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v34);
        }

        v25 = v15[1];
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
            v26 = v15[2];
            v27 = *v26 == v15;
            v15 = v26;
          }

          while (!v27);
        }

        v15 = v26;
        v12 = v33;
      }

      while (v26 != (a1 + 408));
    }
  }
}

void sub_1B2A49D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v19 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<ggl::CommandBuffer *,std::hash<ggl::CommandBuffer *>,std::equal_to<ggl::CommandBuffer *>,std::allocator<ggl::CommandBuffer *>>::__emplace_unique_key_args<ggl::CommandBuffer *,ggl::CommandBuffer *&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
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

  v8 = *(*result + 8 * v7);
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

  return result;
}

uint64_t *md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineExitingRenderables(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 450);
  v3 = *a2;
  {
    v15 = a1;
    v14 = v2;
    v13 = v3;
    v3 = v13;
    v2 = v14;
    v12 = v11;
    a1 = v15;
    if (v12)
    {
      qword_1ED65AC10 = 0;
      qword_1ED65AC08 = 0;
      md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
      v3 = v13;
      v2 = v14;
      a1 = v15;
    }
  }

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4 == v5)
  {
    goto LABEL_12;
  }

  v6 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
  v7 = v4;
  while (*v7 != v2)
  {
    v7 += 16;
    if (v7 == v5)
    {
      goto LABEL_13;
    }
  }

  if (v7 == v5)
  {
LABEL_12:
    v6 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
  }

  else
  {
    while (*v4 != v2)
    {
      v4 += 16;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }

    v6 = (v4 + 4);
  }

LABEL_13:
  v9 = *(a1 + 272);
  v8 = *(a1 + 280);
  v16[0] = a1;
  v16[1] = v6;
  return std::__partition_impl[abi:nn200100]<md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::ElevatedPolygonRenderable*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::ElevatedPolygonRenderable**>,std::__wrap_iter<md::ElevatedPolygonRenderable**>>(v9, v8, v16);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassSSAODescriptor>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>(void)::metadata >= 0x200)
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

uint64_t *std::__partition_impl[abi:nn200100]<md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::ElevatedPolygonRenderable*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::ElevatedPolygonRenderable**>,std::__wrap_iter<md::ElevatedPolygonRenderable**>>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1;
    v3 = a2;
    while (md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::ElevatedPolygonRenderable*)#1}::operator()(a3, *v5))
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
      if (md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::ElevatedPolygonRenderable*)#1}::operator()(a3, v7))
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

void md::ClientDrapedPolygonRenderLayer::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a3 + 8), 0x8BD499FBD96FBB9ELL);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = *(v5[5] + 32);
    v9 = *(v8 + 16);
    v10 = *(v8 + 20);
    do
    {
      v11 = *v6++;
      md::BaseMapTileDataRenderable::adjustZScale(v11, v9, v10);
    }

    while (v6 != v7);
  }

  md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::updateWithContext(v5, a2, a3);
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::BuildPrimaryFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::BuildPrimaryFrameGraph>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::BuildPrimaryFrameGraph,md::ls::FrameGraphBuilder &,md::ls::PassCount &,md::ls::FrameGraphRenderTarget const&,md::ls::PassDeviceCapabilities const&,md::ls::PassSSAODescriptor const*,md::ls::PassShadowDescriptor const*,md::ls::PassRouteLineDescriptor const*>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a3 + 8), 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v9 = 0;
      v10 = *v7;
      v11 = v6[471] * v6[173] / (v6[171] * (*(*v7 + 80) - *(*v7 + 64)));
      *(*v7 + 376) = v11;
      v12 = v6 + 101;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          v29[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v29;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v30[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      v23 = *(v10 + 224);
      ggl::BufferMemory::BufferMemory(v27);
      ggl::ResourceAccessor::accessConstantData(v29, 0, v23, 1);
      ggl::BufferMemory::operator=(v27, v29);
      ggl::BufferMemory::~BufferMemory(v29);
      v24 = v28;
      v25 = v30[1];
      *v28 = v30[0];
      v24[1] = v25;
      v26 = v30[3];
      v24[2] = v30[2];
      v24[3] = v26;
      *(v24 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v27);
      ++v7;
    }

    while (v7 != v8);
  }
}

void md::ita::ReserveStencilRangeTask::operator()(uint64_t **a1)
{
  v2 = ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::PassListProvider>(a1);
  v3 = (*(*v2 + 16))(v2);
  v4 = *ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::LayoutContextProvider>(a1);
  v19 = (*v4)();
  v5 = (v3 + 72);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v3 + 72));
  *(v3 + 64) = v3 + 72;
  *(v3 + 80) = 0;
  *(v3 + 72) = 0;
  v6 = *(v3 + 40);
  v20 = *(v3 + 48);
  if (v6 != v20)
  {
    do
    {
      if (*v6)
      {
        (*(**v6 + 32))(&v21);
        v7 = v21;
        v8 = v22;
        if (v21 != v22)
        {
          do
          {
            v9 = *v5;
            if (!*v5)
            {
LABEL_14:
              operator new();
            }

            v10 = *v7;
            v11 = v7[1];
            while (1)
            {
              while (1)
              {
                v12 = v9;
                v13 = *(v9 + 32);
                if (v10 >= v13 && (v10 != v13 || v11 >= *(v12 + 33)))
                {
                  break;
                }

                v9 = *v12;
                if (!*v12)
                {
                  goto LABEL_14;
                }
              }

              if (v13 >= v10 && *(v12 + 33) >= v11)
              {
                break;
              }

              v9 = v12[1];
              if (!v9)
              {
                goto LABEL_14;
              }
            }

            v12[5] = *v6;
            v7 += 2;
          }

          while (v7 != v8);
          v7 = v21;
        }

        if (v7)
        {
          v22 = v7;
          operator delete(v7);
        }
      }

      v6 += 8;
    }

    while (v6 != v20);
    v14 = *(v3 + 64);
    if (v14 != v5)
    {
      do
      {
        v15 = v14[5];
        if (v15 && *(v15 + 32) == 1)
        {
          (*(*v15 + 24))(v15, v19, v14 + 4);
        }

        v16 = v14[1];
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
            v17 = v14[2];
            v18 = *v17 == v14;
            v14 = v17;
          }

          while (!v18);
        }

        v14 = v17;
      }

      while (v17 != v5);
    }
  }
}

void sub_1B2A4AB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::ReserveStencilRangeTask>,std::allocator<ecs2::ForwardToExecute<md::ita::ReserveStencilRangeTask>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::ReserveStencilRangeTask::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::FrameBufferDesc>(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameBufferDesc>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameBufferDesc>();
    *algn_1EB83D6E8 = 0xD7B05696AE714D71;
    qword_1EB83D6F0 = "md::ls::FrameBufferDesc]";
    qword_1EB83D6F8 = 23;
  }

  v57 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameBufferDesc>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FrameBufferDesc>(a1);
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
    v51 = (*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F));
    *v51 = *a3;
    v51[1] = a3[1];
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
    v55 = v27;
    v56 = a3;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v54 = v27 >> 6;
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
      v28 = v54;
      LOBYTE(v27) = v55;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    a3 = v56;
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
  v52 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v57;

  return ecs2::BasicRegistry<void>::didWrite<md::ls::FrameBufferDesc>(a1);
}

__n128 md::LayoutContext::transferFrameState(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 736) == *(a1 + 736))
  {
    if (*(a2 + 736))
    {
      v2 = *(a1 + 96);
      v3 = *(a1 + 112);
      v4 = *(a1 + 144);
      *(a2 + 128) = *(a1 + 128);
      *(a2 + 144) = v4;
      *(a2 + 96) = v2;
      *(a2 + 112) = v3;
      v5 = *(a1 + 160);
      v6 = *(a1 + 176);
      v7 = *(a1 + 192);
      *(a2 + 204) = *(a1 + 204);
      *(a2 + 176) = v6;
      *(a2 + 192) = v7;
      *(a2 + 160) = v5;
      v8 = *(a1 + 288);
      v10 = *(a1 + 240);
      v9 = *(a1 + 256);
      *(a2 + 272) = *(a1 + 272);
      *(a2 + 288) = v8;
      *(a2 + 240) = v10;
      *(a2 + 256) = v9;
      v12 = *(a1 + 320);
      v11 = *(a1 + 336);
      v13 = *(a1 + 304);
      *(a2 + 352) = *(a1 + 352);
      *(a2 + 320) = v12;
      *(a2 + 336) = v11;
      *(a2 + 304) = v13;
      *(a2 + 224) = *(a1 + 224);
      *(a2 + 360) = *(a1 + 360);
      *(a2 + 368) = *(a1 + 368);
      *(a2 + 376) = *(a1 + 376);
      *(a2 + 384) = *(a1 + 384);
      *(a2 + 392) = *(a1 + 392);
      *(a2 + 400) = *(a1 + 400);
      *(a2 + 408) = *(a1 + 408);
      *(a2 + 416) = *(a1 + 416);
      *(a2 + 424) = *(a1 + 424);
      *(a2 + 432) = *(a1 + 432);
      *(a2 + 440) = *(a1 + 440);
      *(a2 + 448) = *(a1 + 448);
      *(a2 + 456) = *(a1 + 456);
      *(a2 + 464) = *(a1 + 464);
      *(a2 + 472) = *(a1 + 472);
      *(a2 + 480) = *(a1 + 480);
      *(a2 + 488) = *(a1 + 488);
      *(a2 + 496) = *(a1 + 496);
      *(a2 + 504) = *(a1 + 504);
      *(a2 + 512) = *(a1 + 512);
      *(a2 + 520) = *(a1 + 520);
      *(a2 + 528) = *(a1 + 528);
      *(a2 + 536) = *(a1 + 536);
      *(a2 + 544) = *(a1 + 544);
      *(a2 + 552) = *(a1 + 552);
      v14 = *(a1 + 576);
      *(a2 + 560) = *(a1 + 560);
      *(a2 + 576) = v14;
      *(a2 + 592) = *(a1 + 592);
      *(a2 + 608) = *(a1 + 608);
      *(a2 + 624) = *(a1 + 624);
      *(a2 + 632) = *(a1 + 632);
      *(a2 + 640) = *(a1 + 640);
      *(a2 + 648) = *(a1 + 648);
      v15 = *(a1 + 656);
      *(a2 + 672) = *(a1 + 672);
      *(a2 + 656) = v15;
      result = *(a1 + 680);
      v16 = *(a1 + 696);
      *(a2 + 680) = result;
      *(a2 + 696) = v16;
      *(a2 + 712) = *(a1 + 712);
      result.n128_u32[0] = *(a1 + 716);
      *(a2 + 716) = result.n128_u32[0];
      v18 = *(a1 + 720);
      *(a2 + 728) = *(a1 + 728);
      *(a2 + 720) = v18;
    }
  }

  else if (*(a2 + 736))
  {
    *(a2 + 736) = 0;
  }

  else
  {
    v19 = *(a1 + 96);
    v20 = *(a1 + 112);
    v21 = *(a1 + 128);
    *(a2 + 144) = *(a1 + 144);
    *(a2 + 112) = v20;
    *(a2 + 128) = v21;
    *(a2 + 96) = v19;
    *(a2 + 152) = *(a1 + 152);
    *(a2 + 160) = *(a1 + 160);
    v22 = *(a1 + 176);
    *(a2 + 180) = *(a1 + 180);
    *(a2 + 176) = v22;
    v23 = *(a1 + 184);
    v24 = *(a1 + 200);
    *(a2 + 216) = *(a1 + 216);
    *(a2 + 200) = v24;
    *(a2 + 184) = v23;
    *(a2 + 224) = *(a1 + 224);
    *(a2 + 232) = *(a1 + 232);
    *(a2 + 240) = *(a1 + 240);
    *(a2 + 256) = *(a1 + 256);
    *(a2 + 272) = *(a1 + 272);
    *(a2 + 280) = *(a1 + 280);
    *(a2 + 288) = *(a1 + 288);
    *(a2 + 296) = *(a1 + 296);
    v25 = *(a1 + 304);
    v26 = *(a1 + 320);
    v27 = *(a1 + 336);
    *(a2 + 352) = *(a1 + 352);
    *(a2 + 320) = v26;
    *(a2 + 336) = v27;
    *(a2 + 304) = v25;
    v28 = *(a1 + 456);
    v30 = *(a1 + 408);
    v29 = *(a1 + 424);
    *(a2 + 440) = *(a1 + 440);
    *(a2 + 456) = v28;
    *(a2 + 408) = v30;
    *(a2 + 424) = v29;
    v31 = *(a1 + 520);
    v33 = *(a1 + 472);
    v32 = *(a1 + 488);
    *(a2 + 504) = *(a1 + 504);
    *(a2 + 520) = v31;
    *(a2 + 472) = v33;
    *(a2 + 488) = v32;
    v35 = *(a1 + 552);
    v34 = *(a1 + 568);
    v36 = *(a1 + 536);
    *(a2 + 584) = *(a1 + 584);
    *(a2 + 552) = v35;
    *(a2 + 568) = v34;
    *(a2 + 536) = v36;
    v37 = *(a1 + 360);
    v38 = *(a1 + 392);
    *(a2 + 376) = *(a1 + 376);
    *(a2 + 392) = v38;
    *(a2 + 360) = v37;
    *(a2 + 592) = *(a1 + 592);
    *(a2 + 608) = *(a1 + 608);
    v39 = *(a1 + 624);
    v40 = *(a1 + 640);
    v41 = *(a1 + 656);
    *(a2 + 672) = *(a1 + 672);
    *(a2 + 640) = v40;
    *(a2 + 656) = v41;
    *(a2 + 624) = v39;
    *(a2 + 680) = *(a1 + 680);
    *(a2 + 688) = *(a1 + 688);
    *(a2 + 696) = *(a1 + 696);
    result = *(a1 + 704);
    *(a2 + 704) = result;
    v42 = *(a1 + 720);
    *(a2 + 728) = *(a1 + 728);
    *(a2 + 720) = v42;
    *(a2 + 736) = 1;
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::PassSSAOConfiguration>(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAOConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassSSAOConfiguration>();
    *algn_1EB83CCC8 = 0x73C8822C1D168C4;
    qword_1EB83CCD0 = "md::ls::PassSSAOConfiguration]";
    qword_1EB83CCD8 = 29;
  }

  v58 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAOConfiguration>(void)::metadata;
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PassSSAOConfiguration>(a1);
  v5 = v4;
  v6 = a2 >> 22;
  v8 = (v4 + 8);
  v7 = *(v4 + 8);
  if (v6 >= (*(v4 + 16) - v7) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v4 + 8), v6 + 1);
    v7 = *v8;
  }

  v9 = a2 >> 16;
  v10 = *(v7 + 8 * v6);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  v12 = v11[1];
  if (*v11 != -1 || v12 != 0)
  {
    v52 = *(*(v5 + 56) + ((v12 >> 3) & 0x1FF8)) + 12 * (v12 & 0x3F);
    v53 = *a3;
    *(v52 + 8) = *(a3 + 2);
    *v52 = v53;
    v54 = v9 << 16;
    goto LABEL_55;
  }

  v15 = *(v5 + 40);
  v14 = *(v5 + 48);
  if (v15 >= v14)
  {
    v17 = *(v5 + 32);
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

    *(4 * v18) = a2 | (WORD1(a2) << 16);
    v16 = 4 * v18 + 4;
    v22 = *(v5 + 32);
    v23 = *(v5 + 40) - v22;
    v24 = (4 * v18 - v23);
    memcpy(v24, v22, v23);
    v25 = *(v5 + 32);
    *(v5 + 32) = v24;
    *(v5 + 40) = v16;
    *(v5 + 48) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v15 = a2 | (WORD1(a2) << 16);
    v16 = (v15 + 1);
  }

  *(v5 + 40) = v16;
  v26 = ((v16 - *(v5 + 32)) >> 2) - 1;
  *v11 = a2;
  v11[1] = v26;
  v27 = v26 >> 6;
  v29 = *(v5 + 56);
  v28 = *(v5 + 64);
  v30 = v28 - v29;
  if (v26 >> 6 >= (v28 - v29) >> 3)
  {
    v57 = v26;
    v31 = v27 + 1;
    v32 = v27 + 1 - (v30 >> 3);
    v33 = *(v5 + 72);
    if (v32 > (v33 - v28) >> 3)
    {
      v34 = v33 - v29;
      v35 = (v33 - v29) >> 2;
      if (v35 <= v31)
      {
        v35 = v27 + 1;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v35;
      }

      if (!(v36 >> 61))
      {
        operator new();
      }

      goto LABEL_61;
    }

    v37 = 0;
    v38 = (v32 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v39 = vdupq_n_s64(v38);
    do
    {
      v40 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_1B33B0560)));
      if (v40.i8[0])
      {
        *(v28 + 8 * v37) = 0;
      }

      if (v40.i8[4])
      {
        *(v28 + 8 * v37 + 8) = 0;
      }

      v37 += 2;
    }

    while (v38 - ((v32 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v37);
    *(v5 + 64) = v28 + 8 * v32;
    v41 = *(v5 + 80);
    v42 = *(v5 + 88);
    v43 = (v42 - v41) >> 4;
    if (v43 <= v27)
    {
      v26 = v31 - v43;
      v44 = *(v5 + 96);
      if (v26 > (v44 - v42) >> 4)
      {
        v45 = v44 - v41;
        v46 = v45 >> 3;
        if (v45 >> 3 <= v31)
        {
          v46 = v27 + 1;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFF0)
        {
          v47 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v46;
        }

        if (!(v47 >> 60))
        {
          operator new();
        }

LABEL_61:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v5 + 88), 16 * v26);
      *(v5 + 88) = v42 + 16 * v26;
      LOBYTE(v26) = v57;
    }

    else if (v31 < v43)
    {
      *(v5 + 88) = v41 + 16 * v31;
    }

    v29 = *(v5 + 56);
    v9 = a2 >> 16;
    if (v30 < (*(v5 + 64) - v29))
    {
      operator new();
    }
  }

  v48 = *(v29 + 8 * v27) + 12 * (v26 & 0x3F);
  v49 = *a3;
  *(v48 + 8) = *(a3 + 2);
  *v48 = v49;
  v54 = a2 | (v9 << 16);
  v50 = *(v5 + 152);
  v51 = *(v5 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), v54);
    v50 += 32;
  }

LABEL_55:
  v55 = *(a1 + 41016) + (HIWORD(v54) << 6);
  *(v55 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v58;

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassSSAOConfiguration>(a1);
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::FrameGraphRenderResourcesRegistry>(uint64_t a1, unint64_t a2, void *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderResourcesRegistry>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderResourcesRegistry>();
    unk_1EB82F400 = 0x5D2A68BC4355A70CLL;
    qword_1EB82F408 = "md::ls::FrameGraphRenderResourcesRegistry]";
    qword_1EB82F410 = 41;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderResourcesRegistry>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphRenderResourcesRegistry>(a1);
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

  return ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphRenderResourcesRegistry>(a1);
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::FrameGraphRenderTarget>(uint64_t a1, unint64_t a2, void *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderTarget>();
    *algn_1EB83CBD8 = 0x2CF7C0CBD63AB273;
    qword_1EB83CBE0 = "md::ls::FrameGraphRenderTarget]";
    qword_1EB83CBE8 = 30;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphRenderTarget>(a1);
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

  return ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphRenderTarget>(a1);
}

uint64_t geo::Pool<gdc::tf::Taskflow>::allocateSlab(uint64_t a1)
{
  v2 = malloc_type_malloc(88 * *(a1 + 24), 0x10A004055F6B7FDuLL);
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2);
  v4 = *(a1 + 40);
  v5 = &v2[88 * *(a1 + 24) - 88];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 88;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = v5 + 88;
  }

  *(a1 + 40) = v4;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::FrameGraphBuilder>(uint64_t a1, unint64_t a2, void *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphBuilder>();
    unk_1EB83D2E0 = 0x9792F5BB2E6066F1;
    qword_1EB83D2E8 = "md::ls::FrameGraphBuilder]";
    qword_1EB83D2F0 = 25;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphBuilder>(a1);
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

  return ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphBuilder>(a1);
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderTargetToPrepare>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderTargetToPrepare>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>(void)::metadata) = *(v55 + 4096);
}

void gdc::tf::Taskflow::Taskflow(gdc::tf::Taskflow *this)
{
  *(this + 1) = 0u;
  *(this + 7) = 0;
  *this = this + 16;
  *(this + 1) = this + 56;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 8) = 0;
  *(this + 9) = 0;
  operator new();
}

void std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::vector<md::LabelFlexZone>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::MapEngineSetting,long long>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t geo::Pool<md::MapEngineFrameService::Data>::allocateSlab(uint64_t a1)
{
  v2 = malloc_type_malloc(*(a1 + 24) << 7, 0x102204070DCF52DuLL);
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2);
  v4 = *(a1 + 40);
  v5 = &v2[128 * *(a1 + 24) - 128];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 128;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = v5 + 128;
  }

  *(a1 + 40) = v4;
  return result;
}

void *md::MapEngineFrameService::addTask(void *result, unint64_t a2, int a3, uint64_t a4)
{
  v6 = result[11];
  if (a2 < ((result[12] - v6) >> 3))
  {
    v7 = *(v6 + 8 * a2);
    if (v7 && (v7 ^ a2) >> 32 == 0)
    {
      v9 = 8 * *(v6 + 8 * a2) + result[14];
      if (result[15] != v9)
      {
        v25 = v4;
        v26 = v5;
        v12 = *v9;
        ++*(*v9 + 120);
        v13 = result[1];
        v14 = *v13;
        v15 = *(v13 + 8);
        if (v14 == v15)
        {
          goto LABEL_9;
        }

        while (*v14 != 0xCFC5133F599B8248)
        {
          v16 = 0;
          v14 += 5;
          if (v14 == v15)
          {
            goto LABEL_10;
          }
        }

        if (v14 == v15)
        {
LABEL_9:
          v16 = 0;
        }

        else
        {
          v16 = v14[3];
          v22 = v14[4];
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          }
        }

LABEL_10:
        v17 = *(v12 + 96);
        v18 = *(v12 + 104);
        v19 = (v12 + 96);
        while (v17 != v18)
        {
          if (*v17 == a3)
          {
            if (v17 != v18)
            {
              goto LABEL_16;
            }

            break;
          }

          v17 += 16;
        }

        v23[0] = a3;
        v24 = 0;
        v17 = geo::linear_map<md::FrameCallback,geo::handle<gdc::tf::Taskflow>,std::equal_to<md::FrameCallback>,std::allocator<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>,std::vector<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>>::insert(v19, v23);
LABEL_16:
        v20 = *(v17 + 1);
        v21 = *(*v16 + 48);

        return v21(v16, v20, a4);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<md::MapEngine::buildFrameRequest(std::optional<unsigned int>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::buildFrameRequest(std::optional<unsigned int>,std::function<void ()(void)>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A267D8;
  a2[1] = v2;
  return result;
}

void *std::__hash_table<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::__unordered_map_hasher<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::hash<geo::StringLiteral>,std::equal_to<geo::StringLiteral>,true>,std::__unordered_map_equal<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::equal_to<geo::StringLiteral>,std::hash<geo::StringLiteral>,true>,std::allocator<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>>>::__emplace_unique_key_args<geo::StringLiteral,geo::StringLiteral&,std::vector<md::FrameGraphLogicalResource *>>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 12);
    if (*&v3 <= v2)
    {
      v7 = v2 % v3.i32[0];
    }
  }

  else
  {
    v7 = (v3.i32[0] - 1) & v2;
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
    if (v10 == v2)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
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

  if (!geo::StringLiteral::operator==((v9 + 2), a2))
  {
    goto LABEL_17;
  }

  return v9;
}

void *md::MapEngineFrameService::dispatch(void *result, unint64_t a2)
{
  v3 = result[11];
  if (a2 < ((result[12] - v3) >> 3))
  {
    v4 = *(v3 + 8 * a2);
    if (v4 && (v4 ^ a2) >> 32 == 0)
    {
      v6 = result;
      v7 = 8 * *(v3 + 8 * a2) + result[14];
      if (result[15] != v7)
      {
        ++*(*v7 + 120);
        v8 = result[22];
        v9 = *(v8 + 4112);
        v10 = *(v8 + 4128);
        if (*(v8 + 4104) == v9)
        {
          WORD1(v35) = (*(v8 + 4136) - v10) >> 2;
          LOWORD(v35) = 1;
          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 4128, &v35);
          v11 = v35;
          v12 = *(v8 + 41024);
          if (v12 >= *(v8 + 41032))
          {
            v13 = std::vector<ecs2::EntityArchetype<512ul>>::__emplace_back_slow_path<>(v8 + 41016);
          }

          else
          {
            v12[2] = 0u;
            v12[3] = 0u;
            *v12 = 0u;
            v12[1] = 0u;
            v13 = (v12 + 4);
          }

          *(v8 + 41024) = v13;
          v8 = v6[22];
        }

        else
        {
          v11 = *(v10 + 4 * *(v9 - 8));
          *(v8 + 4112) = v9 - 8;
        }

        v34 = v11;
        {
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ita::FrameHandle>();
          unk_1EB83B800 = 0x8004EB719AAADA5BLL;
          qword_1EB83B808 = "md::ita::FrameHandle]";
          qword_1EB83B810 = 20;
        }

        v33 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>(void)::metadata;
        v14 = ecs2::BasicRegistry<void>::storage<md::ita::FrameHandle>(v8);
        v15 = v14;
        v16 = HIWORD(v34) >> 6;
        v18 = (v14 + 8);
        v17 = *(v14 + 8);
        if (v16 >= (*(v14 + 16) - v17) >> 3)
        {
          std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v14 + 8), v16 + 1);
          v17 = *v18;
        }

        v19 = *(v17 + 8 * v16);
        if (v19)
        {
          v20 = (v19 + 4 * (BYTE2(v34) & 0x3F));
          v21 = v20[1];
          if (*v20 == -1 && v21 == 0)
          {
            std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>((v15 + 4), &v34);
            v23 = v15[7];
            v24 = ((v15[5] - v15[4]) >> 2) - 1;
            *v20 = v34;
            v20[1] = v24;
            v25 = v24 >> 6;
            v26 = v15[8] - v23;
            if (v24 >> 6 >= v26 >> 3)
            {
              v35 = 0;
              std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(v15 + 7, v25 + 1, &v35);
              std::vector<std::span<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,18446744073709551615ul>>::resize(v15 + 10, v25 + 1);
              v23 = v15[7];
              if (v26 < (v15[8] - v23))
              {
                operator new();
              }
            }

            *(*(v23 + 8 * v25) + 8 * (v24 & 0x3F)) = a2;
            v30 = v34;
            v27 = v15[19];
            v28 = v15[20];
            v31 = &unk_1EB83B000;
            if (v27 == v28)
            {
              v32 = v33;
            }

            else
            {
              v32 = v33;
              do
              {
                std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v30);
                v27 += 32;
              }

              while (v27 != v28);
            }
          }

          else
          {
            *(*(v15[7] + ((v21 >> 3) & 0x1FF8)) + 8 * (v21 & 0x3F)) = a2;
            v30 = v34;
            v31 = &unk_1EB83B000;
            v32 = v33;
          }

          v29 = *(v8 + 41016) + (HIWORD(v30) << 6);
          *(v29 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v32;
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>();
          *(v8 + 8 * v31[255]) = *(v8 + 4096);
          ecs2::FlowExecutor::run((v6 + 24));
        }

        operator new();
      }
    }
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ita::FrameHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ita::FrameHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[212];
}

__n128 geo::Pool<md::FrameGraphLogicalTextureResource>::construct<md::FrameGraphAttachmentDescriptor const&,geo::StringLiteral &,unsigned long &>(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v8 = *(a1 + 40);
  if (!v8)
  {
    v9 = malloc_type_malloc(144 * *(a1 + 24), 0x1072040C747854FuLL);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v9);
    v8 = *(a1 + 40);
    v10 = &v9[144 * *(a1 + 24) - 144];
    if (v10 >= v9)
    {
      do
      {
        v11 = v10;
        *v10 = v8;
        v10 -= 144;
        v8 = v11;
      }

      while (v10 >= v9);
      v8 = v10 + 144;
    }

    *(a1 + 40) = v8;
  }

  *(a1 + 40) = *v8;
  v12 = *a4;
  v13 = *(a2 + 52);
  if (v13 == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13 == 1;
  }

  v15 = *a3;
  *v8 = v14;
  *(v8 + 8) = v15;
  *(v8 + 3) = v12;
  *(v8 + 4) = -1;
  *(v8 + 6) = 0;
  *(v8 + 5) = v8 + 48;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 7) = 0;
  *(v8 + 8) = v8 + 72;
  result = *a2;
  v17 = *(a2 + 16);
  v18 = *(a2 + 32);
  *(v8 + 17) = *(a2 + 48);
  *(v8 + 120) = v18;
  *(v8 + 104) = v17;
  *(v8 + 88) = result;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md3ita11FrameHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A54518;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareBuildFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareBuildFrameGraph>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::PrepareBuildFrameGraph,md::ita::FrameHandle const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md3ita11FrameHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A54518;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ita::FrameHandle>();
    unk_1EB83B800 = 0x8004EB719AAADA5BLL;
    qword_1EB83B808 = "md::ita::FrameHandle]";
    qword_1EB83B810 = 20;
  }
}

unint64_t md::MapEngineFrameService::prepareForRender(void *a1, unint64_t a2)
{
  v3 = a1[11];
  if (a2 >= ((a1[12] - v3) >> 3) || ((v4 = *(v3 + 8 * a2)) != 0 ? (v5 = (v4 ^ a2) >> 32 == 0) : (v5 = 0), !v5 || (v7 = 8 * *(v3 + 8 * a2) + a1[14], a1[15] == v7)))
  {
LABEL_12:
    v14 = 0;
    v15 = 0;
    return v15 | v14;
  }

  v8 = *v7;
  *(v8 + 120) = *(*v7 + 120) + 1;
  v9 = a1[1];
  v10 = *v9;
  if (*v8 == 1)
  {
    v24 = gdc::ServiceLocator::resolve<md::RenderTargetPreparer>(v10, v9[1]);
    v25 = (*(*v24 + 24))(v24);
    if (v25)
    {
      *(v8 + 56) = v25;
    }

    goto LABEL_23;
  }

  v11 = v9[1];
  if (v10 == v11)
  {
    goto LABEL_10;
  }

  while (*v10 != 0xC5B557B9C9754C35)
  {
    v12 = 0;
    v10 += 5;
    if (v10 == v11)
    {
      goto LABEL_11;
    }
  }

  if (v10 == v11)
  {
LABEL_10:
    v12 = 0;
  }

  else
  {
    v12 = v10[3];
    v23 = v10[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }

LABEL_11:
  v13 = (*(*v12 + 16))(v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v17 = v13;
  v18 = (*(*v12 + 24))(v12, v13);
  v19 = gdc::ServiceLocator::resolve<md::RenderTargetPreparer>(*a1[1], *(a1[1] + 8));
  (*(*v18 + 16))(&v26, v18, 0);
  v27 = v26;
  v26 = 0uLL;
  v20 = (*(*v19 + 16))(v19, &v27);
  v22 = v21;
  if (*(&v27 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v27 + 1));
  }

  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v26 + 1));
  }

  if (v20)
  {
    *(v8 + 40) = v17;
    *(v8 + 56) = v20;
    *(v8 + 72) = v22;
LABEL_30:
    if (*(v8 + 24) == 1)
    {
      md::MapEngineFrameService::makeDrawableReady(a1, a2);
    }

    goto LABEL_23;
  }

  if (*(v8 + 56))
  {
    goto LABEL_30;
  }

LABEL_23:
  v15 = *(v8 + 56);
  if (v15)
  {
    v14 = v15 & 0xFFFFFFFFFFFFFF00;
    v15 = *(v8 + 56);
  }

  else
  {
    v14 = 0;
  }

  return v15 | v14;
}

void sub_1B2A4E598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t MDDisplayLayerRenderTargetPreparer::prepareInteractiveTargets(uint64_t a1, uint64_t a2)
{
  [*(a1 + 8) prepareTexture:a2];
  v3 = [*(a1 + 8) finalRenderTarget];
  [*(a1 + 8) blitRenderTarget];
  return v3;
}

void md::LabelFeaturePool::addPointFeatures(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, char a8)
{
  v96 = *MEMORY[0x1E69E9840];
  v78 = *a5;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::reserve(&v88, 0x20uLL);
  if (a4)
  {
    v82 = 0;
    v15 = 0;
    v79 = a8;
    v80 = a1;
    v81 = a4;
    do
    {
      v89 = v88;
      std::mutex::lock(a1);
      if (!v82)
      {
        v16 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((a1 + 456), *a2);
        if (!v16)
        {
          std::mutex::unlock(a1);
          break;
        }

        v82 = (v16 + 3);
      }

      v18 = v88;
      v17 = v89;
      while (0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3) <= 0x1F && v15 < a4)
      {
        if (a7 != 17)
        {
          goto LABEL_17;
        }

        v20 = a3[3];
        if (!v20)
        {
          goto LABEL_91;
        }

        v21 = *(v20 + 33);
        if (!*(v20 + 33))
        {
          goto LABEL_91;
        }

        v22 = *v20;
        if (*v22 == 79)
        {
          v23 = 0;
LABEL_16:
          if (LOWORD(v22[2 * v23 + 1]) == 1)
          {
LABEL_17:
            v87 = a3;
            v86 = a8;
            if (md::DebugStreamingPOIFeatureID)
            {
              v24 = md::DebugStreamingPOIFeatureID == a3[5];
            }

            else
            {
              v24 = 0;
            }

            if (v24)
            {
              if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
              {
                dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
              }

              v25 = GEOGetVectorKitStreamingPOILog_log;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                md::HighlightHelper::debugTileToString(&__p, (a5 + 8));
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                v27 = *(a5 + 40);
                v28 = *(a5 + 48);
                v29 = *(a5 + 98);
                v30 = a3[22];
                *buf = 136316162;
                *&buf[4] = p_p;
                *&buf[12] = 2048;
                *&buf[14] = v27;
                *&buf[22] = 2048;
                v93 = v28;
                LOWORD(v94) = 1024;
                *(&v94 + 2) = v29;
                HIWORD(v94) = 2048;
                v95 = v30;
                _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_DEBUG, "LabelFeaturePool::addPointFeature tile=(%s) geo[%p] label[%p] isPreTile=%i version=%llu", buf, 0x30u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }

            geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::construct<GeoCodecsPointFeature *&,md::LabelFeatureIDSpace &>(buf, &v87, &v86);
            v31 = std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__emplace_unique_key_args<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator> const&>((a1 + 344), *buf, buf);
            *(a5 + 97) = v32 & 1;
            if (v32)
            {
              v33 = mdm::zone_mallocator::instance(v31);
              v34 = v33;
              if (a7 == 17)
              {
                v35 = pthread_rwlock_rdlock((v33 + 32));
                if (v35)
                {
                  geo::read_write_lock::logFailure(v35, "read lock", v36);
                }

                v37 = malloc_type_zone_malloc(*v34, 0x2E8uLL, 0x108104077DC3B06uLL);
                atomic_fetch_add((v34 + 24), 1u);
                geo::read_write_lock::unlock((v34 + 32));
                v37[1] = 0;
                v37[2] = 0;
                *v37 = &unk_1F2A57BE0;
                v38 = md::PointLabelFeature::PointLabelFeature((v37 + 4), v87, a5);
                v37[4] = &unk_1F2A3FB78;
              }

              else
              {
                v40 = pthread_rwlock_rdlock((v33 + 32));
                if (v40)
                {
                  geo::read_write_lock::logFailure(v40, "read lock", v41);
                }

                v37 = malloc_type_zone_malloc(*v34, 0x2E8uLL, 0x108104077DC3B06uLL);
                atomic_fetch_add((v34 + 24), 1u);
                geo::read_write_lock::unlock((v34 + 32));
                v37[1] = 0;
                v37[2] = 0;
                *v37 = &unk_1F2A57C18;
                v38 = md::PointLabelFeature::PointLabelFeature((v37 + 4), v87, a5);
              }

              *&v42 = v38;
              *(&v42 + 1) = v37;
              if (*buf)
              {
                v43 = *buf + 8;
              }

              else
              {
                v43 = 0;
              }

              v44 = *(v43 + 16);
              *(v43 + 8) = v42;
              if (v44)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v44);
              }

              if (*buf)
              {
                v45 = *buf + 8;
              }

              else
              {
                v45 = 0;
              }

              v46 = *(v45 + 8);
              *(v46 + 152) = v45;
              v47 = *(a1 + 672) + 1;
              *(a1 + 672) = v47;
              *(v46 + 72) = v47;
              *(v46 + 148) = v86;
              atomic_load((*a5 + 3428));
              (*(*v46 + 544))();
              a4 = v81;
              if (*buf)
              {
                v48 = *buf + 8;
              }

              else
              {
                v48 = 0;
              }

              v49 = (*(**(v48 + 8) + 160))(*(v48 + 8));
              v50 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 512), v49);
              if (v50)
              {
                if (*buf)
                {
                  v51 = *buf + 8;
                }

                else
                {
                  v51 = 0;
                }

                md::PointLabelFeature::setPOIUpdateRemoveVersion(*(v51 + 8), v50[3]);
              }
            }

            else
            {
              geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::operator=(buf, v31 + 2);
              if (*buf)
              {
                v39 = (*buf + 8);
              }

              else
              {
                v39 = 0;
              }

              md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::add(v39, a3);
            }

            if (*buf)
            {
              v52 = *buf + 8;
            }

            else
            {
              v52 = 0;
            }

            md::PointLabelFeature::addPointFeature(*(v52 + 8), v87, a5);
            std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeaturePoolTileInfo::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeaturePoolTileInfo::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__emplace_unique_key_args<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator> const&>(v82 + 70, *buf, buf);
            v84 = a3;
            v53 = v15;
            v54 = a4;
            v55 = a7;
            v56 = a1;
            if (*buf)
            {
              v57 = *buf + 8;
            }

            else
            {
              v57 = 0;
            }

            v58 = *(v57 + 8);
            v59 = *(v57 + 16);
            v83 = v58;
            if (v59)
            {
              atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
              geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::~fast_shared_ptr(buf);
              *buf = v58;
              *&buf[8] = v59;
              atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::~fast_shared_ptr(buf);
              *buf = v58;
              *&buf[8] = 0;
            }

            std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::weak_ptr<md::PointLabelFeature>,std::weak_ptr<md::PointLabelFeature>>(a6, v59, buf);
            v60 = *&buf[8];
            a1 = v56;
            if (*&buf[8])
            {
              std::__shared_weak_count::__release_weak(*&buf[8]);
            }

            a7 = v55;
            a4 = v54;
            v15 = v53;
            a3 = v84;
            if (*(a5 + 97) == 1)
            {
              v61 = a7;
              v62 = a6;
              v63 = v89;
              if (v89 >= v90)
              {
                v65 = 0xAAAAAAAAAAAAAAABLL * ((v89 - v88) >> 3);
                v66 = v65 + 1;
                if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                if (0x5555555555555556 * ((v90 - v88) >> 3) > v66)
                {
                  v66 = 0x5555555555555556 * ((v90 - v88) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v90 - v88) >> 3) >= 0x555555555555555)
                {
                  v67 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v67 = v66;
                }

                v94 = &v91;
                if (v67)
                {
                  v68 = mdm::zone_mallocator::instance(v60);
                  v69 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v68, v67);
                }

                else
                {
                  v69 = 0;
                }

                v72 = &v69[24 * v65];
                v73 = &v69[24 * v67];
                *(v72 + 1) = 0;
                *(v72 + 2) = 0;
                *v72 = v83;
                v64 = v72 + 24;
                v74 = &v72[-(v89 - v88)];
                memcpy(v74, v88, v89 - v88);
                v75 = v88;
                v76 = v90;
                v88 = v74;
                v89 = v64;
                v90 = v73;
                *&buf[16] = v75;
                v93 = v76;
                *buf = v75;
                *&buf[8] = v75;
                std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                a8 = v79;
                a4 = v81;
              }

              else
              {
                *(v89 + 1) = 0;
                *(v63 + 2) = 0;
                v64 = v63 + 24;
                *v63 = v83;
              }

              v89 = v64;
              a6 = v62;
              a7 = v61;
              a1 = v80;
            }

            if (v59)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v59);
            }

            v18 = v88;
            v17 = v89;
          }
        }

        else
        {
          v23 = 0;
          v70 = v22 + 2;
          while (v21 - 1 != v23)
          {
            v71 = *v70;
            v70 += 2;
            ++v23;
            if (v71 == 79)
            {
              if (v23 < v21)
              {
                goto LABEL_16;
              }

              break;
            }
          }
        }

LABEL_91:
        ++v15;
        a3 += 28;
      }

      md::LabelFeatureStyler::styleLabelFeatures(*(v78 + 296), &v88, 1u, 1, *(*(v78 + 152) + 32));
      std::mutex::unlock(a1);
    }

    while (v15 < a4);
  }

  std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v88);
}

void sub_1B2A4ED6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableID>();
    unk_1EB83D5D0 = 0x8DCCA4FD35258189;
    qword_1EB83D5D8 = "md::ls::MeshRenderableID]";
    qword_1EB83D5E0 = 24;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>(void)::metadata >= 0x200)
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

uint64_t gdc::ServiceLocator::resolve<md::RenderTargetPreparer>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0xB05F868A6300FD6ELL)
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

unint64_t MDDisplayLayerSwapchainProvider::nextDrawable(id *this)
{
  (*(*[this[37] swapchain] + 24))(&v10);
  if (v10)
  {
    v2 = this[29] - this[28];
    v3 = this[23];
    if (this[22] == v3)
    {
      v11 = (v2 >> 4) | 0x100000000;
      std::vector<geo::handle<gdc::tf::Taskflow>>::emplace_back<geo::handle<gdc::tf::Taskflow>>((this + 25), &v11);
      v4 = *(this[26] - 1);
    }

    else
    {
      v9 = *(v3 - 1);
      this[23] = v3 - 1;
      *(this[25] + 2 * v9) = v2 >> 4;
      *(this[25] + 2 * v9 + 1) = ((*(this[25] + 2 * v9 + 1) << 32) + 0x100000000) >> 32;
      v4 = v9 | (*(this[25] + 2 * v9 + 1) << 32);
    }

    v5 = this[29];
    if (v5 >= this[30])
    {
      v7 = std::vector<std::shared_ptr<ggl::SwapchainDrawable>>::__emplace_back_slow_path<std::shared_ptr<ggl::SwapchainDrawable>&>((this + 28), &v10);
    }

    else
    {
      *v5 = v10;
      v6 = *(&v10 + 1);
      v5[1] = *(&v10 + 1);
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = (v5 + 2);
      this[29] = v5 + 2;
    }

    this[29] = v7;
    v11 = v4;
    std::vector<unsigned long>::push_back[abi:nn200100]((this + 31), &v11);
  }

  else
  {
    v4 = 0;
  }

  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v10 + 1));
  }

  return v4;
}

void sub_1B2A4F2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableID>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableID>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[18];
}

void ggl::MetalSwapchain::nextDrawable(ggl::MetalSwapchain *this@<X0>, void *a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  [*(v4 + 16) contentsScale];
  v6 = v5;
  [*(v4 + 16) bounds];
  v8 = (v7 * v6);
  v10 = (v9 * v6);
  if (*(this + 9) != v8 || *(this + 10) != v10)
  {
    ggl::MetalSwapchain::resize(this, v8, v10);
    v8 = *(this + 9);
    v10 = *(this + 10);
  }

  if (v10 * v8)
  {
    if (*(this + 12))
    {
      v12 = 0;
      v13 = *(this + 13);
      do
      {
        v14 = *(*(this + 5) + 16 * v13);
        if (!v14)
        {
          operator new();
        }

        if (!atomic_load((v14 + 132)))
        {
          operator new();
        }

        v16 = *(this + 12);
        v13 = (v12 + *(this + 13)) % v16;
        *(this + 13) = v13;
        ++v12;
      }

      while (v12 < v16);
    }

    if (GEOGetGeoGLMetalSwapchainLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoGLMetalSwapchainLog(void)::onceToken, &__block_literal_global_50716);
    }

    v17 = GEOGetGeoGLMetalSwapchainLog(void)::log;
    if (os_log_type_enabled(GEOGetGeoGLMetalSwapchainLog(void)::log, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      buf_4 = "false";
      v20 = 2080;
      v21 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalSwapchain.mm";
      v22 = 1024;
      v23 = 126;
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "Exhaused pool of swapchain drawables: Assertion with expression - %s : Failed in file - %s line - %i", &buf, 0x1Cu);
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1B2A4F794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  shared_weak_owners = v14[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16MeshRenderableIDEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A56038;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16MeshRenderableIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A56038;
  a2[1] = v2;
  return result;
}

uint64_t geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::construct<GeoCodecsPointFeature *&,md::LabelFeatureIDSpace &>(mdm::zone_mallocator *a1, uint64_t **a2, char *a3)
{
  *a1 = 0;
  v6 = mdm::zone_mallocator::instance(a1);
  v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v6);
  *a1 = v7;
  *v7 = 1;
  result = md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::LabelFeatureThunk((v7 + 1), *a2, *a3);
  *a1 = v7;
  return result;
}

unint64_t md::FeatureFlagProvider::isEnabled(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % a1[1];
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*a1 + 8 * v4);
    if (!v5 || (v6 = *v5) == 0)
    {
LABEL_17:
      LOBYTE(v2) = 0;
      return v2 & 1;
    }

    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 16) == a2)
        {
          LOBYTE(v2) = *(v6 + 17);
          return v2 & 1;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= v2)
          {
            v7 %= v2;
          }
        }

        else
        {
          v7 &= v2 - 1;
        }

        if (v7 != v4)
        {
          goto LABEL_17;
        }
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_17;
      }
    }
  }

  return v2 & 1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AssociationHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AssociationHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[508];
}

uint64_t md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::LabelFeatureThunk(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = &unk_1F2A57B40;
  *(a1 + 24) = 0u;
  v6 = (a1 + 24);
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0;
  v7 = a2[1];
  if (v7 && (v7 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v8 = *a2;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v8;
  *(a1 + 72) = v7;
  *(a1 + 80) = 0;
  *(a1 + 88) = a3;
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::push_back[abi:nn200100](v6, a1 + 56);
  return a1;
}

void sub_1B2A4FB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 72);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v13 = *(v10 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17AssociationHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50470;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17AssociationHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50470;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FlyoverOctileKey>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>(void)::metadata >= 0x200)
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

void *std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__emplace_unique_key_args<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator> const&>(float *a1, uint64_t a2, void **a3)
{
  v7 = a2 + 8;
  if (!a2)
  {
    v7 = 0;
  }

  v8 = md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::hash(*(v7 + 56), *(v7 + 88));
  v9 = v8;
  v10 = *(a1 + 1);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v3 = v8;
      if (v8 >= v10)
      {
        v3 = v8 % v10;
      }
    }

    else
    {
      v3 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v3);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          v16 = i[2];
          if (v16)
          {
            v17 = v16 + 8;
          }

          else
          {
            v17 = 0;
          }

          v8 = md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::compare(v17, *(a2 + 64), *(a2 + 96));
          if (!v8)
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v18 = mdm::zone_mallocator::instance(v8);
  prime = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v18);
  i = prime;
  *prime = 0;
  prime[1] = v9;
  prime[2] = 0;
  v20 = *a3;
  prime[2] = *a3;
  if (v20)
  {
    ++*v20;
  }

  v21 = (*(a1 + 5) + 1);
  v22 = a1[12];
  if (!v10 || (v22 * v10) < v21)
  {
    v23 = 1;
    if (v10 >= 3)
    {
      v23 = (v10 & (v10 - 1)) != 0;
    }

    v24 = v23 | (2 * v10);
    v25 = vcvtps_u32_f32(v21 / v22);
    if (v24 <= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    if (*&v26 == 1)
    {
      v26 = 2;
    }

    else if ((*&v26 & (*&v26 - 1)) != 0)
    {
      prime = std::__next_prime(*&v26);
      v26 = prime;
    }

    v10 = *(a1 + 1);
    if (*&v26 > v10)
    {
      goto LABEL_37;
    }

    if (*&v26 < v10)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v10 < 3 || (v33 = vcnt_s8(v10), v33.i16[0] = vaddlv_u8(v33), v33.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v34 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v34;
        }
      }

      if (*&v26 <= prime)
      {
        v26 = prime;
      }

      if (*&v26 >= v10)
      {
        v10 = *(a1 + 1);
      }

      else
      {
        if (v26)
        {
LABEL_37:
          v27 = mdm::zone_mallocator::instance(prime);
          v28 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v27, *&v26);
          std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(a1, v28);
          v29 = 0;
          *(a1 + 1) = v26;
          do
          {
            *(*a1 + 8 * v29++) = 0;
          }

          while (*&v26 != v29);
          v30 = *(a1 + 3);
          if (v30)
          {
            v31 = v30[1];
            v32 = vcnt_s8(v26);
            v32.i16[0] = vaddlv_u8(v32);
            if (v32.u32[0] > 1uLL)
            {
              if (v31 >= *&v26)
              {
                v31 %= *&v26;
              }
            }

            else
            {
              v31 &= *&v26 - 1;
            }

            *(*a1 + 8 * v31) = a1 + 6;
            v35 = *v30;
            if (*v30)
            {
              do
              {
                v36 = v35[1];
                if (v32.u32[0] > 1uLL)
                {
                  if (v36 >= *&v26)
                  {
                    v36 %= *&v26;
                  }
                }

                else
                {
                  v36 &= *&v26 - 1;
                }

                if (v36 != v31)
                {
                  v37 = *a1;
                  if (!*(*a1 + 8 * v36))
                  {
                    *(v37 + 8 * v36) = v30;
                    goto LABEL_59;
                  }

                  *v30 = *v35;
                  *v35 = **(v37 + 8 * v36);
                  **(v37 + 8 * v36) = v35;
                  v35 = v30;
                }

                v36 = v31;
LABEL_59:
                v30 = v35;
                v35 = *v35;
                v31 = v36;
              }

              while (v35);
            }
          }

          v10 = v26;
          goto LABEL_63;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(a1, 0);
        v10 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_63:
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v3 = v9 % v10;
      }

      else
      {
        v3 = v9;
      }
    }

    else
    {
      v3 = (v10 - 1) & v9;
    }
  }

  v38 = *a1;
  v39 = *(*a1 + 8 * v3);
  if (v39)
  {
    *i = *v39;
LABEL_76:
    *v39 = i;
    goto LABEL_77;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v38 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v40 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v40 >= v10)
      {
        v40 %= v10;
      }
    }

    else
    {
      v40 &= v10 - 1;
    }

    v39 = (*a1 + 8 * v40);
    goto LABEL_76;
  }

LABEL_77:
  ++*(a1 + 5);
  return i;
}

uint64_t ecs2::Runtime::_entities<std::function<void ()(md::ls::UniqueMaterialData const&)>,md::ls::UniqueMaterialData const&>(uint64_t a1, uint64_t a2)
{
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 == v5)
  {
    v7 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v8 = result;
    LODWORD(v9) = 0;
LABEL_5:
    *(v7 + 104 * *v8 + 24) = -65536;
    v13 = v7 + 104 * *v8;
    v14 = *(v13 + 92);
    *(v13 + 92) = v14 + 1;
    *(v13 + 4 * v14 + 28) = v9;
    v15 = v7 + 104 * *v8;
    v17 = *(v15 + 92);
    v16 = (v15 + 92);
    if (v17 >= 0x10)
    {
      *v16 = 0;
    }
  }

  else
  {
    v6 = v3;
    v7 = _ZTWN4ecs27Runtime11_localStateE();
    v8 = _ZTWN4ecs27Runtime11_stackIndexE();
    v9 = 0;
    while (1)
    {
      v10 = *(*(v6 + 56) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8));
      *(v7 + 104 * *v8 + 24) = *v4;
      v11 = *(a2 + 24);
      if (!v11)
      {
        break;
      }

      result = (*(*v11 + 48))(v11, v10 + 24 * (v9++ & 0x3F));
      if (++v4 == v5)
      {
        goto LABEL_5;
      }
    }

    v18 = std::__throw_bad_function_call[abi:nn200100]();
    return md::ita::CheckIfShouldDeleteUniqueMaterial::operator()(v18);
  }

  return result;
}

void md::ita::CheckIfShouldDeleteUniqueMaterial::operator()(uint64_t **a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = ecs2::ExecutionTask<md::MaterialResourceStore *>::service<md::MaterialResourceStore>(a1);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::RequestReset>(*(a2 + 8));
  v4 = *(v3 + 40) != *(v3 + 32);
  operator new();
}

void sub_1B2A504D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

unint64_t md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::hash(void *a1, unsigned __int8 a2)
{
  v2 = a1[5];
  v3 = v2;
  if (!v2)
  {
    v3 = a1[6];
  }

  v4 = (((a2 >> 2) | (a2 << 6)) + v3 - 0x61C8864680B583EBLL) ^ a2;
  v5 = a1[15];
  v6 = a1[16];
  v7 = v5 == 0;
  v8 = (v5 - 0x61C8864680B583EBLL + (v4 << 6) + (v4 >> 2)) ^ v4;
  if (!v7)
  {
    v4 = v8;
  }

  if (v6)
  {
    v4 ^= v6 - 0x61C8864680B583EBLL + (v4 << 6) + (v4 >> 2);
  }

  v9 = a1[17];
  v10 = a1[18];
  v7 = v9 == 0;
  v11 = (v9 - 0x61C8864680B583EBLL + (v4 << 6) + (v4 >> 2)) ^ v4;
  if (!v7)
  {
    v4 = v11;
  }

  if (v10)
  {
    v12 = (v10 - 0x61C8864680B583EBLL + (v4 << 6) + (v4 >> 2)) ^ v4;
  }

  else
  {
    v12 = v4;
  }

  if (!v2 && !a1[6])
  {
    v13 = a1[3];
    if (v13)
    {
      v12 ^= (v12 << 6) - 0x61C8864680B583EBLL + (v12 >> 2) + FeatureStyleAttributes::hash(v13);
    }
  }

  return v12;
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v3, v2);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialData>();
    *algn_1EB83D0E8 = 0x3209EBE3B62CF3D3;
    qword_1EB83D0F0 = "md::ls::UniqueMaterialData]";
    qword_1EB83D0F8 = 26;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata >= 0x200)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialData>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialData>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[483];
}

uint64_t md::PointLabelFeature::PointLabelFeature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 369;
  v7 = *(a3 + 8);
  if (v7 == 255)
  {
    v16 = vcvtq_f64_f32(*(a2 + 88));
    v9 = gm::Box<double,2>::lerped((a3 + 56), v16, v16.f64[1]);
    v18 = *(a2 + 212);
    v12 = 0;
    v19 = 0;
    if (v18 == 1)
    {
      v15 = *(a2 + 96);
    }

    else
    {
      LOBYTE(v18) = 1;
      v15 = 3.4028e38;
    }

    v10 = 0.0;
    v14 = 0;
  }

  else
  {
    v43 = vrev64_s32(*(a3 + 12));
    v8 = *(a3 + 9);
    v44 = *(a3 + 9);
    v45 = v7;
    v9 = 0.0;
    v10 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v43, *(a2 + 88), *(a2 + 92), 0.0);
    v12 = v11;
    v14 = v13;
    if (*(a2 + 212) == 1)
    {
      v15 = sqrt(ldexp(2.0943951, -2 * v8) * 4.0538689e13) * *(a2 + 96);
    }

    else
    {
      v15 = 3.4028e38;
    }

    LOBYTE(v18) = 0;
    v19 = 1;
    v17 = 0;
  }

  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0x100000000;
  *(a1 + 136) = 0;
  *(a1 + 141) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 192) = v10;
  *(a1 + 200) = v12;
  *(a1 + 208) = v14;
  *(a1 + 216) = v9;
  *(a1 + 224) = v17;
  *(a1 + 232) = v15;
  *(a1 + 236) = v19;
  *(a1 + 237) = v18;
  *(a1 + 238) = v18;
  *(a1 + 240) = 0;
  *(a1 + 242) = v15 != 3.4028e38;
  *(a1 + 243) = -256;
  *a1 = &unk_1F2A564A0;
  *(a1 + 248) = 850045863;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 297) = 0u;
  *(a1 + 352) = *(a2 + 48);
  *(a1 + 360) = *(a2 + 80);
  *(a1 + 368) = *(*(*a3 + 232) + 17) ^ 1;
  *(a1 + 376) = 0;
  *(a1 + 380) = 0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0;
  *(a1 + 456) = 0;
  *v6 = 0;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 432) = a1 + 440;
  *(a1 + 440) = 0;
  *(a1 + 464) = 1;
  *(a1 + 472) = *(a2 + 40);
  *(a1 + 480) = 0u;
  *(a1 + 496) = &unk_1F2A567C0;
  *(a1 + 504) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 584) = a1 + 616;
  *(a1 + 592) = a1 + 616;
  *(a1 + 600) = a1 + 616;
  *(a1 + 608) = 1;
  v20 = *(a2 + 120);
  *(v6 + 279) = v20;
  *(v6 + 295) = *(a2 + 136);
  *(a1 + 680) = *(a2 + 152);
  *(a1 + 682) = 0;
  *(a1 + 684) = 0;
  *(a1 + 686) = *(a2 + 156);
  *(a1 + 687) = *(a2 + 211);
  *(a1 + 688) = 256;
  *(a1 + 690) = 0u;
  *(a1 + 704) = 0;
  if (*(a2 + 216) == 1)
  {
    *(a1 + 682) = *(a2 + 154);
    *(a1 + 684) = 1;
  }

  *(a1 + 688) = v20 != 0;
  *(a1 + 690) = *(a2 + 207) != 0;
  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    v23 = *(a1 + 704);
    *(a1 + 696) = v21;
    *(a1 + 704) = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
      v21 = *(a1 + 696);
    }

    if (!v21)
    {
LABEL_18:
      _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  else
  {
    *(a1 + 696) = v21;
    *(a1 + 704) = 0;
    if (!v21)
    {
      goto LABEL_18;
    }
  }

  v24 = *(v21 + 33);
  if (*(v21 + 33))
  {
    v25 = *v21;
    v26 = *v25;
    if (*v25 == 6)
    {
      v27 = 0;
LABEL_22:
      LOWORD(v29) = v25[2 * v27 + 1];
      v28 = v29 & 0xFF00;
      v29 = v29;
      v30 = 1;
    }

    else
    {
      v27 = 0;
      v32 = v25 + 2;
      while (v24 - 1 != v27)
      {
        v33 = *v32;
        v32 += 2;
        ++v27;
        if (v33 == 6)
        {
          if (v27 < v24)
          {
            goto LABEL_22;
          }

          break;
        }
      }

      v29 = 0;
      v30 = 0;
      v28 = 0;
    }

    if ((v28 | v29) == 0x1BE)
    {
      v34 = v30;
    }

    else
    {
      v34 = 0;
    }

    *(a1 + 692) = v34;
    if (v26 == 79)
    {
      v35 = 0;
LABEL_34:
      LOWORD(v31) = v25[2 * v35 + 1];
      v38 = v31 & 0xFF00;
      v31 = v31;
      LOBYTE(v24) = 1;
    }

    else
    {
      v35 = 0;
      v36 = v25 + 2;
      while (v24 - 1 != v35)
      {
        v37 = *v36;
        v36 += 2;
        ++v35;
        if (v37 == 79)
        {
          if (v35 < v24)
          {
            goto LABEL_34;
          }

          break;
        }
      }

      v31 = 0;
      LOBYTE(v24) = 0;
      v38 = 0;
    }
  }

  else
  {
    v31 = 0;
    v38 = 0;
    *(a1 + 692) = 0;
  }

  if ((v38 | v31) == 1)
  {
    v39 = v24;
  }

  else
  {
    v39 = 0;
  }

  *(a1 + 691) = v39;
  if (md::DebugStreamingPOIFeatureID)
  {
    v40 = md::DebugStreamingPOIFeatureID == *(a1 + 472);
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {
    if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
    }

    v41 = GEOGetVectorKitStreamingPOILog_log;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v43.i16[0] = 0;
      _os_log_impl(&dword_1B2754000, v41, OS_LOG_TYPE_DEBUG, "PointLabelFeature::PointLabelFeature", &v43, 2u);
    }
  }

  return a1;
}

void sub_1B2A50F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v13 = v10;
  if (*v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*v13);
  }

  geo::small_vector_base<md::PointLabelStyleEntry>::~small_vector_base((v9 + 584));
  std::vector<md::LabelFeaturePlacementInfo,geo::allocator_adapter<md::LabelFeaturePlacementInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  *(v9 + 496) = v12;

  v15 = *(v9 + 488);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  std::__tree<std::__value_type<md::LabelIdentifier,md::PointPosition>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,md::PointPosition>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,md::PointPosition>,mdm::zone_mallocator>>::destroy(*(v9 + 440));
  std::vector<md::PointLabelFeature::WorkUnit,geo::allocator_adapter<md::PointLabelFeature::WorkUnit,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::mutex::~mutex(v11);
  md::LabelFeature::~LabelFeature(v9);
  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls18UniqueMaterialDataEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41830;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18UniqueMaterialDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41830;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void **md::PointLabelFeature::addPointFeature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = mdm::zone_mallocator::instance(a1);
  v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::_fast_shared_ptr_control>(v6);
  v51 = v7;
  *v7 = 1;
  v8 = (v7 + 32);
  geo::GEOFeature_retain_ptr::GEOFeature_retain_ptr(v7 + 1, a2);
  v9 = *(a3 + 8);
  if (v9 == 255)
  {
    v17 = vcvtq_f64_f32(*(a2 + 88));
    v18 = gm::Box<double,2>::lerped((a3 + 56), v17, v17.f64[1]);
    if (*(a2 + 212) == 1)
    {
      v20 = *(a2 + 96);
    }

    else
    {
      v20 = 2139095039;
    }

    *v8 = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *(v7 + 7) = v18;
    *(v7 + 8) = v19;
    *(v7 + 18) = v20;
    *(v7 + 38) = 256;
    v7[78] = 1;
  }

  else
  {
    v52 = vrev64_s32(*(a3 + 12));
    v10 = *(a3 + 9);
    v53.i8[0] = *(a3 + 9);
    v53.i8[1] = v9;
    v11 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v52, *(a2 + 88), *(a2 + 92), 0.0);
    v13 = v12;
    v15 = v14;
    if (*(a2 + 212) == 1)
    {
      v16 = sqrt(ldexp(2.0943951, -2 * v10) * 4.0538689e13) * *(a2 + 96);
    }

    else
    {
      v16 = 3.4028e38;
    }

    *(v7 + 4) = v11;
    *(v7 + 5) = v13;
    *(v7 + 6) = v15;
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    *(v7 + 18) = v16;
    *(v7 + 38) = 1;
    v7[78] = 0;
  }

  v21 = *(a2 + 176);
  v7[108] = 0;
  v7[112] = 0;
  v7[116] = 0;
  *(v7 + 30) = 0;
  *(v7 + 11) = 0;
  *(v7 + 12) = 0;
  *(v7 + 10) = v21;
  v7[104] = 0;
  v7[136] = *(a2 + 210);
  v7[138] = -1;
  *(v7 + 139) = 0;
  v7[137] = *(geo::codec::VectorTile::key(*(v7 + 2)) + 1) & 0x3F;
  v22 = 0.0;
  v23 = 0;
  if (*(a2 + 210) == 1)
  {
    v24 = vcvtq_f64_f32(*(a2 + 108));
    v22 = gm::Box<double,2>::lerped((a3 + 56), v24, v24.f64[1]);
  }

  *(v7 + 11) = v22;
  *(v7 + 12) = v23;
  if (*(a2 + 213) == 1)
  {
    *(v7 + 26) = *(a2 + 100);
    v7[108] = 1;
  }

  if (*(a2 + 214) == 1)
  {
    v25 = *(a2 + 104) * 360.0;
    *(v7 + 28) = v25;
    v7[116] = 1;
    md::LabelFeature::vectorFromAzimuth(v8, v25, *(a1 + 368));
    *(v7 + 31) = v26;
    *(v7 + 32) = v27;
    *(v7 + 33) = v28;
  }

  v7[145] = *(a2 + 207) != 0;
  v7[146] = *(a2 + 204) != 0;
  v51 = v7;
  if (*(a3 + 97) == 1)
  {
    *(a1 + 689) = *(a3 + 96);
    (*(*a1 + 776))(a1, &v51);
  }

  else
  {
    std::mutex::lock((a1 + 248));
    v30 = *(a1 + 328);
    v31 = *(a1 + 336);
    if (v30 >= v31)
    {
      v35 = *(a1 + 320);
      v36 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v35) >> 4);
      v37 = v36 + 1;
      if (v36 + 1 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v38 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v35) >> 4);
      if (2 * v38 > v37)
      {
        v37 = 2 * v38;
      }

      if (v38 >= 0x2AAAAAAAAAAAAAALL)
      {
        v39 = 0x555555555555555;
      }

      else
      {
        v39 = v37;
      }

      v55 = a1 + 344;
      if (v39)
      {
        v40 = mdm::zone_mallocator::instance(v29);
        v41 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PointLabelFeature::WorkUnit>(v40, v39);
      }

      else
      {
        v41 = 0;
      }

      v42 = &v41[48 * v36];
      *(&v54 + 1) = &v41[48 * v39];
      v43 = *(a3 + 96);
      *v42 = 0;
      *(v42 + 1) = 0;
      *(v42 + 1) = v51;
      v51 = 0;
      *(v42 + 2) = 0;
      *(v42 + 3) = 0;
      v42[32] = v43;
      *(v42 + 5) = 0;
      *&v54 = v42 + 48;
      v44 = *(a1 + 320);
      v45 = *(a1 + 328);
      v46 = &v42[v44 - v45];
      std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::PointLabelFeature::WorkUnit,mdm::zone_mallocator>,md::PointLabelFeature::WorkUnit*>(v44, v45, v46);
      v47 = *(a1 + 320);
      *(a1 + 320) = v46;
      v48 = *(a1 + 336);
      v50 = v54;
      *(a1 + 328) = v54;
      *&v54 = v47;
      *(&v54 + 1) = v48;
      v52 = v47;
      v53 = v47;
      std::__split_buffer<md::PointLabelFeature::WorkUnit,geo::allocator_adapter<md::PointLabelFeature::WorkUnit,mdm::zone_mallocator> &>::~__split_buffer(&v52);
      v34 = v50;
    }

    else
    {
      v32 = *(a3 + 96);
      *v30 = 0;
      v33 = v51;
      v51 = 0;
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 8) = v33;
      *(v30 + 32) = v32;
      *(v30 + 40) = 0;
      v34 = v30 + 48;
    }

    *(a1 + 328) = v34;
    atomic_store(1u, (a1 + 312));
    std::mutex::unlock((a1 + 248));
  }

  return geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v51);
}

void sub_1B2A5150C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::mutex::unlock((v3 + 248));
  geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t **geo::GEOFeature_retain_ptr::GEOFeature_retain_ptr(uint64_t **a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    *a1 = a2;
    v4 = a2[1];
    if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0)
    {
      v5 = *a2;
    }

    else
    {
      v5 = 0;
    }

    v6 = a1[2];
    a1[1] = v5;
    a1[2] = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  return a1;
}

uint64_t std::__function::__func<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_0,std::allocator<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t result, unsigned __int8 *a2)
{
  if (*a2 <= 5u)
  {
    **(result + 8) = 1;
  }

  return result;
}

void md::PointLabelFeature::addElement(uint64_t a1, void **a2, int a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v60 = 0uLL;
  v6 = *a2 + 1;
  v7 = *v6;
  if (*v6)
  {
    if (!*a2)
    {
      v6 = 0;
    }

    v8 = v6[9];
    v9 = *(a1 + 408);
    if (md::DebugStreamingPOIFeatureID)
    {
      v10 = md::DebugStreamingPOIFeatureID == v7[5];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
      }

      v11 = GEOGetVectorKitStreamingPOILog_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        if (*a2)
        {
          v12 = (*a2 + 1);
        }

        else
        {
          v12 = 0;
        }

        v13 = *(v12 + 8);
        v14 = *(a1 + 408);
        v15 = *(v12 + 72);
        *buf = 134219008;
        *&buf[4] = v13;
        *&buf[12] = 2048;
        *&buf[14] = v14;
        v54 = 2048;
        v55 = v15;
        v56 = 1024;
        v57 = v8 < v9;
        v58 = 1024;
        v59 = v8 > v9;
        _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_DEBUG, "PointFeature::addElement: geoTile=%p oldVersion=%llu newVersion=%llu isOldVersion=%i isNewVersion=%i", buf, 0x2Cu);
      }
    }

    if (v8 < v9)
    {
      if (*(a1 + 456))
      {
        md::PointPosition::addElement((*(a1 + 432) + 40), a2);
      }

      goto LABEL_81;
    }

    if (v8 > v9)
    {
      v16 = *(a1 + 432);
      v17 = (a1 + 440);
      if (v16 != (a1 + 440))
      {
        do
        {
          v18 = v16[5];
          v19 = v16[6];
          while (v18 != v19)
          {
            std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v60, v18++);
          }

          v20 = v16[1];
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
              v21 = v16[2];
              v10 = *v21 == v16;
              v16 = v21;
            }

            while (!v10);
          }

          v16 = v21;
        }

        while (v21 != v17);
      }

      std::__tree<std::__value_type<md::LabelIdentifier,md::PointPosition>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,md::PointPosition>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,md::PointPosition>,mdm::zone_mallocator>>::destroy(*(a1 + 440));
      *(a1 + 456) = 0;
      *(a1 + 432) = v17;
      *(a1 + 440) = 0;
      v22 = *(a1 + 528);
      v23 = *(a1 + 520);
      while (v22 != v23)
      {
        v22 -= 64;
        std::allocator_traits<geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,void,0>(v22);
      }

      *(a1 + 528) = v23;
      if (*a2)
      {
        v24 = (*a2 + 1);
      }

      else
      {
        v24 = 0;
      }

      *(a1 + 408) = *(v24 + 72);
      v25 = v7[3];
      v26 = v7[4];
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 696) = v25;
      v27 = *(a1 + 704);
      *(a1 + 704) = v26;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v27);
        v25 = *(a1 + 696);
      }

      if (!v25)
      {
        _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      *(a1 + 424) = 1;
    }
  }

  if (!*(a1 + 456) || (*a2 ? (v28 = (*a2 + 1)) : (v28 = 0), v29 = *(a1 + 432), v29 == (a1 + 440)))
  {
LABEL_67:
    v42 = *(a1 + 464);
    *(a1 + 464) = v42 + 1;
    v51 = v42;
    md::PointPosition::PointPosition(buf, a1, a2);
    std::__tree<std::__value_type<md::LabelIdentifier,md::PointPosition>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,md::PointPosition>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,md::PointPosition>,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelIdentifier,md::LabelIdentifier,md::PointPosition>((a1 + 432), v42, &v51, buf);
    v52 = buf;
    std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v52);
    v43 = 1;
  }

  else
  {
    v30 = *(v28 + 129);
    v31 = *(v28 + 129);
    while (1)
    {
      v32 = *(v29 + 144) >= v31 ? v31 : *(v29 + 144);
      v33 = ldexp(1.0, v32);
      v34 = *a2 ? (*a2 + 1) : 0;
      v35 = v34 + 24;
      md::LabelPoint::geocentricPoint((v34 + 24));
      md::LabelPoint::geocentricPoint((v29 + 9));
      for (i = 0; i != 3; ++i)
      {
        *&buf[i * 8] = *(v35 + i * 8) - *&v29[i + 9];
      }

      v37 = 0;
      v38 = 0.0;
      do
      {
        v38 = v38 + *&buf[v37] * *&buf[v37];
        v37 += 8;
      }

      while (v37 != 24);
      v39 = sqrt(v38);
      if (v39 <= 1.0 / v33 * 640000.0)
      {
        break;
      }

      v40 = v29[1];
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = v29[2];
          v10 = *v41 == v29;
          v29 = v41;
        }

        while (!v10);
      }

      v29 = v41;
      if (v41 == (a1 + 440))
      {
        goto LABEL_67;
      }
    }

    if (v39 > 1.0 / v33 * 200000.0)
    {
      *(v29 + 147) = 1;
    }

    if (*(v29 + 144) < v30)
    {
      if (*a2)
      {
        v50 = (*a2 + 1);
      }

      else
      {
        v50 = 0;
      }

      md::PointPosition::setLabelPoint((v29 + 5), (v50 + 24));
      *(v29 + 144) = v31;
    }

    v43 = md::PointPosition::addElement((v29 + 5), a2);
  }

  v44 = *(&v60 + 1);
  v45 = v60;
  if (v60 != *(&v60 + 1))
  {
    v46 = *(a1 + 432);
    do
    {
      v47 = *v45;
      *buf = v47;
      if (v47)
      {
        ++*v47;
      }

      md::PointPosition::addElement((v46 + 40), buf);
      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(buf);
      ++v45;
    }

    while (v45 != v44);
  }

  if (v43)
  {
    if (*a2)
    {
      v48 = (*a2 + 1);
    }

    else
    {
      v48 = 0;
    }

    md::PointLabelFeatureElement::updateText(v48, a1, a3);
    if (*a2)
    {
      v49 = (*a2 + 1);
    }

    else
    {
      v49 = 0;
    }

    md::PointLabelFeatureElement::updateLabelPlacements(v49, a1);
  }

LABEL_81:
  *buf = &v60;
  std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
}

void sub_1B2A51AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  a11 = &a25;
  std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t md::PointPosition::PointPosition(uint64_t a1, void *a2, void **a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*a3)
  {
    v5 = (*a3 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 24);
  *(a1 + 48) = *(v5 + 40);
  *(a1 + 32) = v6;
  *(a1 + 56) = *(v5 + 48);
  v7 = *(v5 + 64);
  *(a1 + 75) = *(v5 + 67);
  *(a1 + 72) = v7;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = -3162570752;
  if (*a3)
  {
    v8 = *a3 + 1;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 104) = v8[129];
  *(a1 + 105) = 0;
  v9 = md::PointLabelFeature::styleIndexForAttributes(a2, (*v8 + 24));
  v10 = *(a1 + 72) != 3.4028e38;
  v11 = 1132331008;
  v12 = (*a3)[1];
  if (*(v12 + 164) != 0.0)
  {
    v11 = *(v12 + 164);
  }

  v13 = *(v12 + 68);
  *(a1 + 80) = v13;
  v14 = *(v12 + 160);
  if (v14 == 101.0)
  {
    v15 = v13;
  }

  else
  {
    v15 = *(v12 + 160);
  }

  if (v14 == 100.0)
  {
    v16 = 253.0;
  }

  else
  {
    v16 = v15;
  }

  *(a1 + 84) = v16;
  v17 = *(v12 + 168);
  if (v17 == 101.0)
  {
    v18 = v13;
  }

  else
  {
    v18 = *(v12 + 168);
  }

  *(a1 + 100) = v9;
  *(a1 + 106) = v10;
  if (v17 == 100.0)
  {
    v19 = 253.0;
  }

  else
  {
    v19 = v18;
  }

  *(a1 + 88) = v19;
  v20 = *(v12 + 172);
  if (v20 == 101.0)
  {
    v21 = v13;
  }

  else
  {
    v21 = *(v12 + 172);
  }

  if (v20 == 100.0)
  {
    v21 = 253.0;
  }

  *(a1 + 92) = v21;
  *(a1 + 96) = v11;
  md::PointPosition::addElement(a1, a3);
  return a1;
}

void sub_1B2A51CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t md::PointLabelFeature::styleIndexForAttributes(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1[74];
  v6 = a1[73];
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = 0;
    v9 = v7 >> 5;
LABEL_9:
    v11 = a1[76];
    if (v11 < v9 + 1)
    {
      v12 = a1[75];
      v13 = (1 << -__clz(v11 + 1));
      if (v11 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= v9 + 1)
      {
        v15 = v9 + 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = malloc_type_malloc(32 * v15, 0x600405399E965uLL);
      v17 = a1[73];
      v18 = a1[74];
      if (v17 != v18)
      {
        v19 = v16;
        do
        {
          *v19 = *v17;
          *v17 = 0;
          *(v17 + 8) = 0;
          v19[1] = *(v17 + 16);
          *(v17 + 16) = 0;
          *(v17 + 24) = 0;
          v19 += 2;
          v17 += 32;
        }

        while (v17 != v18);
        v17 = a1[73];
        v18 = a1[74];
      }

      geo::small_vector_base<md::PointLabelStyleEntry>::runDestructors(v17, v18);
      if (v6 != v12)
      {
        free(a1[73]);
      }

      a1[73] = v16;
      v5 = (v16 + v7);
      a1[74] = v16 + v7;
      a1[76] = v15;
      v2 = *a2;
    }

    v20 = a2[1];
    *v5 = v2;
    v5[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v5[2] = 0;
    v5[3] = 0;
    a1[74] += 32;
  }

  else
  {
    v8 = 0;
    v9 = v7 >> 5;
    v10 = a1[73];
    while (geo::codec::featureStyleAttributesCompare(*v10, v2))
    {
      ++v8;
      v10 += 4;
      if (v8 >= v9)
      {
        v8 = v7 >> 5;
        if ((v7 >> 5) <= 0x64)
        {
          goto LABEL_9;
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return v8;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RegisterHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RegisterHandle>();
    unk_1EB83D800 = 0x41650A8095FBA956;
    qword_1EB83D808 = "md::ls::RegisterHandle]";
    qword_1EB83D810 = 22;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>(void)::metadata >= 0x200)
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

uint64_t md::PointPosition::addElement(mdm::zone_mallocator *a1, void **a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  if (*a1 == v4)
  {
LABEL_4:
    std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::push_back[abi:nn200100](a1, a2);
    v5 = *a1;
    v6 = *(a1 + 1);
    v7 = 126 - 2 * __clz((v6 - *a1) >> 3);
    if (v6 == *a1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = 1;
    std::__introsort<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,false>(v5, v6, v8, 1);
  }

  else
  {
    while ((*v3)[1] != (*a2)[1])
    {
      if (++v3 == v4)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  return v9;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RegisterHandle>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RegisterHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[38];
}

void std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *a1, void **a2)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *a1;
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

    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(a1);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = (v13 + 8 * v8);
    *v14 = 0;
    v15 = *a2;
    *v14 = *a2;
    if (v15)
    {
      ++*v15;
    }

    v16 = v13 + 8 * v11;
    v7 = v14 + 1;
    v17 = *a1;
    v18 = *(a1 + 1);
    v19 = (v14 + *a1 - v18);
    if (v18 != *a1)
    {
      v20 = *a1;
      v21 = v19;
      do
      {
        *v21 = 0;
        *v21++ = *v20;
        *v20++ = 0;
      }

      while (v20 != v18);
      do
      {
        v13 = geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(v17++);
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    *(a1 + 1) = v7;
    *(a1 + 2) = v16;
    if (v17)
    {
      v22 = mdm::zone_mallocator::instance(v13);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>>(v22, v17);
    }
  }

  else
  {
    *v4 = 0;
    v6 = *a2;
    *v4 = *a2;
    if (v6)
    {
      ++*v6;
    }

    v7 = v4 + 1;
  }

  *(a1 + 1) = v7;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls14RegisterHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A40C38;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14RegisterHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40C38;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderablesCount>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderablesCount>();
    *algn_1EB83D508 = 0x684A78DCF1B284C1;
    qword_1EB83D510 = "md::ls::RenderablesCount]";
    qword_1EB83D518 = 24;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata >= 0x200)
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

void **std::__introsort<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,false>(void **result, void *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  k = v7;
  while (1)
  {
    v7 = k;
    v10 = a2 - k;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(k, k + 1, a2 - 1);
        case 4:
          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(k, k + 1, k + 2, a2 - 1);
        case 5:
          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(k, k + 1, k + 2, k + 3, a2 - 1);
      }

      goto LABEL_10;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      break;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v71 = k + 1;
      v73 = k == a2 || v71 == a2;
      if (a4)
      {
        if (v73)
        {
          return result;
        }

        v74 = 0;
        v75 = k;
        while (1)
        {
          v76 = v75;
          v75 = v71;
          v78 = *v76;
          v77 = v76[1];
          v79 = v77 + 8;
          if (!v77)
          {
            v79 = 0;
          }

          v80 = *(v79 + 72);
          if (v78)
          {
            v81 = v78 + 1;
          }

          else
          {
            v81 = 0;
          }

          v82 = v81[9];
          if (v80 == v82)
          {
            if (*(v79 + 129) < *(v81 + 129))
            {
              goto LABEL_172;
            }
          }

          else if (v80 > v82)
          {
LABEL_172:
            v158 = v76[1];
            *v75 = 0;
            for (i = v74; ; i -= 8)
            {
              geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=((k + i + 8), (k + i));
              if (!i)
              {
                break;
              }

              if (v158)
              {
                v84 = v158 + 1;
              }

              else
              {
                v84 = 0;
              }

              v85 = v84[9];
              v86 = *(k + i - 8);
              if (v86)
              {
                v87 = v86 + 8;
              }

              else
              {
                v87 = 0;
              }

              v88 = *(v87 + 72);
              if (v85 == v88)
              {
                if (*(v84 + 129) >= *(v87 + 129))
                {
                  goto LABEL_187;
                }
              }

              else if (v85 <= v88)
              {
                v76 = (k + i);
                goto LABEL_187;
              }

              --v76;
            }

            v76 = k;
LABEL_187:
            geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v76, &v158);
            result = geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v158);
          }

          v71 = v75 + 1;
          v74 += 8;
          if (v75 + 1 == a2)
          {
            return result;
          }
        }
      }

      if (v73)
      {
        return result;
      }

      while (1)
      {
        v144 = v7;
        v7 = v71;
        v146 = *v144;
        v145 = v144[1];
        v147 = v145 + 1;
        if (!v145)
        {
          v147 = 0;
        }

        v148 = v147[9];
        if (v146)
        {
          v149 = v146 + 1;
        }

        else
        {
          v149 = 0;
        }

        v150 = v149[9];
        if (v148 == v150)
        {
          if (*(v147 + 129) < *(v149 + 129))
          {
            goto LABEL_292;
          }
        }

        else if (v148 > v150)
        {
LABEL_292:
          v158 = v144[1];
          *v7 = 0;
          do
          {
            while (1)
            {
              v151 = v144;
              geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v144 + 1, v144);
              v144 = v151 - 1;
              v152 = *(v151 - 1);
              v153 = v158 ? v158 + 1 : 0;
              v154 = v153[9];
              v155 = v152 ? v152 + 8 : 0;
              v156 = *(v155 + 72);
              if (v154 != v156)
              {
                break;
              }

              if (*(v153 + 129) >= *(v155 + 129))
              {
                goto LABEL_303;
              }
            }
          }

          while (v154 > v156);
LABEL_303:
          geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v151, &v158);
          result = geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v158);
        }

        v71 = (v7 + 8);
        if ((v7 + 8) == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      if (k == a2)
      {
        return result;
      }

      v89 = v11 >> 1;
      v90 = v11 >> 1;
      while (1)
      {
        v91 = v90;
        if (v89 < v90)
        {
          goto LABEL_238;
        }

        v92 = (2 * v90) | 1;
        v93 = &k[v92];
        if (2 * v91 + 2 < v10)
        {
          v94 = v93[1];
          if (*v93)
          {
            v95 = *v93 + 8;
          }

          else
          {
            v95 = 0;
          }

          v96 = *(v95 + 72);
          if (v94)
          {
            v97 = v94 + 8;
          }

          else
          {
            v97 = 0;
          }

          v98 = *(v97 + 72);
          if (v96 != v98)
          {
            if (v96 <= v98)
            {
              goto LABEL_205;
            }

LABEL_204:
            ++v93;
            v92 = 2 * v91 + 2;
            goto LABEL_205;
          }

          if (*(v95 + 129) < *(v97 + 129))
          {
            goto LABEL_204;
          }
        }

LABEL_205:
        v99 = &k[v91];
        v100 = *v93 + 8;
        if (!*v93)
        {
          v100 = 0;
        }

        v101 = *(v100 + 72);
        v102 = (*v99 + 1);
        if (!*v99)
        {
          v102 = 0;
        }

        v103 = *(v102 + 72);
        if (v101 != v103)
        {
          if (v101 > v103)
          {
            goto LABEL_238;
          }

LABEL_213:
          v158 = *v99;
          *v99 = 0;
          while (2)
          {
            v104 = v93;
            geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v99, v93);
            if (v89 < v92)
            {
LABEL_237:
              geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v104, &v158);
              geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v158);
              goto LABEL_238;
            }

            v105 = 2 * v92;
            v92 = (2 * v92) | 1;
            v93 = &k[v92];
            v106 = v105 + 2;
            if (v106 < v10)
            {
              v107 = v93[1];
              if (*v93)
              {
                v108 = *v93 + 8;
              }

              else
              {
                v108 = 0;
              }

              v109 = *(v108 + 72);
              if (v107)
              {
                v110 = v107 + 8;
              }

              else
              {
                v110 = 0;
              }

              v111 = *(v110 + 72);
              if (v109 == v111)
              {
                if (*(v108 + 129) >= *(v110 + 129))
                {
                  goto LABEL_227;
                }
              }

              else if (v109 <= v111)
              {
                goto LABEL_227;
              }

              ++v93;
              v92 = v106;
            }

LABEL_227:
            if (*v93)
            {
              v112 = *v93 + 8;
            }

            else
            {
              v112 = 0;
            }

            v113 = *(v112 + 72);
            if (v158)
            {
              v114 = v158 + 1;
            }

            else
            {
              v114 = 0;
            }

            v115 = v114[9];
            if (v113 == v115)
            {
              v99 = v104;
              if (*(v112 + 129) < *(v114 + 129))
              {
                goto LABEL_237;
              }
            }

            else
            {
              v99 = v104;
              if (v113 > v115)
              {
                goto LABEL_237;
              }
            }

            continue;
          }
        }

        if (*(v100 + 129) >= *(v102 + 129))
        {
          goto LABEL_213;
        }

LABEL_238:
        v90 = v91 - 1;
        if (!v91)
        {
LABEL_239:
          v116 = 0;
          v157 = *k;
          *k = 0;
          v117 = k;
          while (1)
          {
            v118 = &v117[v116];
            v119 = v118 + 1;
            v120 = 2 * v116;
            v116 = (2 * v116) | 1;
            v121 = v120 + 2;
            if (v121 < v10)
            {
              v124 = v118[2];
              v122 = v118 + 2;
              v123 = v124;
              v125 = *(v122 - 1);
              if (v125)
              {
                v126 = v125 + 8;
              }

              else
              {
                v126 = 0;
              }

              v127 = *(v126 + 72);
              if (v123)
              {
                v128 = v123 + 1;
              }

              else
              {
                v128 = 0;
              }

              v129 = v128[9];
              if (v127 == v129)
              {
                if (*(v126 + 129) >= *(v128 + 129))
                {
                  goto LABEL_252;
                }

LABEL_251:
                v119 = v122;
                v116 = v121;
                goto LABEL_252;
              }

              if (v127 > v129)
              {
                goto LABEL_251;
              }
            }

LABEL_252:
            geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v117, v119);
            v117 = v119;
            if (v116 > ((v10 - 2) >> 1))
            {
              if (v119 == --a2)
              {
                geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v119, &v157);
                goto LABEL_277;
              }

              geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v119, a2);
              geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(a2, &v157);
              v130 = (v119 - k + 8) >> 3;
              v131 = v130 < 2;
              v132 = v130 - 2;
              if (v131)
              {
                goto LABEL_277;
              }

              v133 = v132 >> 1;
              v134 = &k[v132 >> 1];
              v135 = *v134 + 8;
              if (!*v134)
              {
                v135 = 0;
              }

              v136 = *(v135 + 72);
              v137 = *v119 + 8;
              if (!*v119)
              {
                v137 = 0;
              }

              v138 = *(v137 + 72);
              if (v136 == v138)
              {
                if (*(v135 + 129) >= *(v137 + 129))
                {
                  goto LABEL_277;
                }
              }

              else if (v136 <= v138)
              {
                goto LABEL_277;
              }

              v158 = *v119;
              *v119 = 0;
              while (1)
              {
                v139 = v134;
                geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v119, v134);
                if (!v133)
                {
                  break;
                }

                v133 = (v133 - 1) >> 1;
                v134 = &k[v133];
                if (*v134)
                {
                  v140 = *v134 + 8;
                }

                else
                {
                  v140 = 0;
                }

                v141 = *(v140 + 72);
                if (v158)
                {
                  v142 = v158 + 1;
                }

                else
                {
                  v142 = 0;
                }

                v143 = v142[9];
                if (v141 == v143)
                {
                  v119 = v139;
                  if (*(v140 + 129) >= *(v142 + 129))
                  {
                    break;
                  }
                }

                else
                {
                  v119 = v139;
                  if (v141 <= v143)
                  {
                    break;
                  }
                }
              }

              geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v139, &v158);
              geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v158);
LABEL_277:
              result = geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v157);
              v131 = v10-- <= 2;
              if (v131)
              {
                return result;
              }

              goto LABEL_239;
            }
          }
        }
      }
    }

    v12 = &k[v10 >> 1];
    if (v10 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>((v7 + 8 * (v10 >> 1)), v7, a2 - 1);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(v7, (v7 + 8 * (v10 >> 1)), a2 - 1);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>((v7 + 8), v12 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>((v7 + 16), v12 + 1, a2 - 3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(v12 - 1, (v7 + 8 * (v10 >> 1)), v12 + 1);
      v158 = *v7;
      *v7 = 0;
      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v7, (v7 + 8 * (v10 >> 1)));
      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=((v7 + 8 * (v10 >> 1)), &v158);
      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v158);
    }

    --a3;
    v13 = *v7;
    if (a4)
    {
      goto LABEL_38;
    }

    v14 = *(v7 - 8);
    if (v14)
    {
      v15 = v14 + 8;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v15 + 72);
    v17 = v13 + 1;
    if (!v13)
    {
      v17 = 0;
    }

    v18 = v17[9];
    if (v16 == v18)
    {
      if (*(v15 + 129) >= *(v17 + 129))
      {
        goto LABEL_23;
      }

      goto LABEL_38;
    }

    if (v16 > v18)
    {
LABEL_38:
      v158 = *v7;
      *v7 = 0;
      v24 = (v7 + 8);
      v25 = v13 + 1;
      if (!v13)
      {
        v25 = 0;
      }

      v26 = v25[9];
      while (1)
      {
        v27 = *v24 ? *v24 + 8 : 0;
        v28 = *(v27 + 72);
        if (v28 != v26)
        {
          break;
        }

        if (*(v27 + 129) >= *(v25 + 129))
        {
          goto LABEL_49;
        }

LABEL_48:
        ++v24;
      }

      if (v28 > v26)
      {
        goto LABEL_48;
      }

LABEL_49:
      v29 = v24 - 1;
      j = a2 - 1;
      if (v24 - 1 != v7)
      {
        while (1)
        {
          if (*j)
          {
            v31 = *j + 8;
          }

          else
          {
            v31 = 0;
          }

          v32 = *(v31 + 72);
          if (v32 == v26)
          {
            if (*(v31 + 129) < *(v25 + 129))
            {
              goto LABEL_70;
            }
          }

          else if (v32 > v26)
          {
            goto LABEL_70;
          }

          --j;
        }
      }

      j = a2;
      if (v24 < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          if (*j)
          {
            v33 = *j + 8;
          }

          else
          {
            v33 = 0;
          }

          v34 = *(v33 + 72);
          if (v34 == v26)
          {
            if (v24 >= j || *(v33 + 129) < *(v25 + 129))
            {
              break;
            }
          }

          else if (v24 >= j || v34 > v26)
          {
            break;
          }
        }
      }

LABEL_70:
      if (v24 < j)
      {
        v35 = v24;
        v36 = j;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(v35, v36);
          if (v158)
          {
            v37 = v158 + 1;
          }

          else
          {
            v37 = 0;
          }

          v38 = v37[9];
          do
          {
            while (1)
            {
              v39 = v35[1];
              ++v35;
              v40 = v39 + 8;
              v41 = v39 ? v40 : 0;
              v42 = *(v41 + 72);
              if (v42 != v38)
              {
                break;
              }

              if (*(v41 + 129) >= *(v37 + 129))
              {
                goto LABEL_83;
              }
            }
          }

          while (v42 > v38);
LABEL_83:
          v29 = v35 - 1;
          do
          {
            while (1)
            {
              v43 = *--v36;
              v44 = v43 + 8;
              v45 = v43 ? v44 : 0;
              v46 = *(v45 + 72);
              if (v46 != v38)
              {
                break;
              }

              if (*(v45 + 129) < *(v37 + 129))
              {
                goto LABEL_91;
              }
            }
          }

          while (v46 <= v38);
LABEL_91:
          ;
        }

        while (v35 < v36);
      }

      if (v29 != v7)
      {
        geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v7, v29);
      }

      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v29, &v158);
      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v158);
      if (v24 < j)
      {
LABEL_97:
        result = std::__introsort<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,false>(v7, v29, a3, a4 & 1);
        a4 = 0;
        k = v29 + 1;
      }

      else
      {
        v47 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*>(v7, v29);
        k = v29 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*>((v29 + 1), a2);
        if (result)
        {
          a2 = v29;
          if (v47)
          {
            return result;
          }

          goto LABEL_2;
        }

        if ((v47 & 1) == 0)
        {
          goto LABEL_97;
        }
      }
    }

    else
    {
LABEL_23:
      v158 = *v7;
      *v7 = 0;
      v19 = *v8;
      v20 = *v8 + 8;
      if (!*v8)
      {
        v20 = 0;
      }

      v21 = *(v20 + 72);
      if (v18 == v21)
      {
        if (*(v17 + 129) < *(v20 + 129))
        {
          goto LABEL_99;
        }
      }

      else if (v18 > v21)
      {
LABEL_99:
        for (k = (v7 + 8); ; ++k)
        {
          if (*k)
          {
            v48 = *k + 8;
          }

          else
          {
            v48 = 0;
          }

          v49 = *(v48 + 72);
          if (v18 == v49)
          {
            if (*(v17 + 129) < *(v48 + 129))
            {
              goto LABEL_108;
            }
          }

          else if (v18 > v49)
          {
            goto LABEL_108;
          }
        }
      }

      for (k = (v7 + 8); k < a2; ++k)
      {
        if (*k)
        {
          v22 = *k + 8;
        }

        else
        {
          v22 = 0;
        }

        v23 = *(v22 + 72);
        if (v18 == v23)
        {
          if (*(v17 + 129) < *(v22 + 129))
          {
            break;
          }
        }

        else if (v18 > v23)
        {
          break;
        }
      }

LABEL_108:
      m = a2;
      if (k < a2)
      {
        for (m = a2 - 1; ; --m)
        {
          if (v19)
          {
            v51 = v19 + 8;
          }

          else
          {
            v51 = 0;
          }

          v52 = *(v51 + 72);
          if (v18 == v52)
          {
            if (*(v17 + 129) >= *(v51 + 129))
            {
              break;
            }
          }

          else if (v18 <= v52)
          {
            break;
          }

          v53 = *(m - 1);
          v19 = v53;
        }
      }

LABEL_136:
      while (k < m)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(k, m);
        if (v158)
        {
          v54 = v158 + 1;
        }

        else
        {
          v54 = 0;
        }

        v55 = v54[9];
        do
        {
          while (1)
          {
            v56 = k[1];
            ++k;
            v57 = v56 + 8;
            v58 = v56 ? v57 : 0;
            v59 = *(v58 + 72);
            if (v55 != v59)
            {
              break;
            }

            if (*(v54 + 129) < *(v58 + 129))
            {
              goto LABEL_131;
            }
          }
        }

        while (v55 <= v59);
        do
        {
LABEL_131:
          while (1)
          {
            v60 = *--m;
            v61 = v60 + 8;
            v62 = v60 ? v61 : 0;
            v63 = *(v62 + 72);
            if (v55 == v63)
            {
              break;
            }

            if (v55 <= v63)
            {
              goto LABEL_136;
            }
          }
        }

        while (*(v54 + 129) < *(v62 + 129));
      }

      if (k - 1 != v7)
      {
        geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v7, k - 1);
      }

      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(k - 1, &v158);
      result = geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v158);
      a4 = 0;
    }
  }

  v65 = *(a2 - 1);
  v64 = a2 - 1;
  v66 = v65 + 8;
  if (v65)
  {
    v67 = v66;
  }

  else
  {
    v67 = 0;
  }

  v68 = *(v67 + 72);
  if (*k)
  {
    v69 = *k + 8;
  }

  else
  {
    v69 = 0;
  }

  v70 = *(v69 + 72);
  if (v68 != v70)
  {
    if (v68 <= v70)
    {
      return result;
    }

    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(k, v64);
  }

  if (*(v67 + 129) < *(v69 + 129))
  {
    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(k, v64);
  }

  return result;
}

void sub_1B2A53270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderablesCount>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderablesCount>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[13];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16RenderablesCountEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53498;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t *std::__tree<std::__value_type<md::LabelIdentifier,md::PointPosition>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,md::PointPosition>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,md::PointPosition>,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelIdentifier,md::LabelIdentifier,md::PointPosition>(uint64_t *result, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v6 = result;
  v8 = (result + 1);
  v7 = result[1];
  if (v7)
  {
    while (1)
    {
      while (1)
      {
        v9 = v7;
        v10 = *(v7 + 8);
        if (v10 <= a2)
        {
          break;
        }

        v7 = *v9;
        v8 = v9;
        if (!*v9)
        {
          goto LABEL_9;
        }
      }

      if (v10 >= a2)
      {
        break;
      }

      v7 = v9[1];
      if (!v7)
      {
        v8 = v9 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v9 = (result + 1);
LABEL_9:
    v11 = mdm::zone_mallocator::instance(result);
    v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(v11);
    *(v12 + 8) = *a3;
    *(v12 + 6) = 0;
    *(v12 + 7) = 0;
    *(v12 + 5) = 0;
    v12[64] = *(a4 + 24);
    *(v12 + 40) = *a4;
    *(v12 + 7) = *(a4 + 16);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    v13 = *(a4 + 48);
    *(v12 + 72) = *(a4 + 32);
    *(v12 + 11) = v13;
    *(v12 + 6) = *(a4 + 56);
    LODWORD(v13) = *(a4 + 75);
    *(v12 + 28) = *(a4 + 72);
    *(v12 + 115) = v13;
    v14 = *(a4 + 93);
    *(v12 + 120) = *(a4 + 80);
    *(v12 + 133) = v14;

    return std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(v6, v9, v8, v12);
  }

  return result;
}