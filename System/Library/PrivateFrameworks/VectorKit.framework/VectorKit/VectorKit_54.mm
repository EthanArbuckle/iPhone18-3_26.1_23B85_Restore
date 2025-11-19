void sub_1B2B6D3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a23);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::defaultStandardFillColor(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = xmmword_1B33B14B0;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = xmmword_1B33B14A0;
    }
  }

  else
  {
    if (a2 > 1)
    {
      return result;
    }

    v2 = xmmword_1B33B14C0;
  }

  v3 = v2;
  return geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(result, &v3);
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::PassShadowDescriptor>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowDescriptor>();
    unk_1EB83CF40 = 0x73F7A94D4E0637DDLL;
    qword_1EB83CF48 = "md::ls::PassShadowDescriptor]";
    qword_1EB83CF50 = 28;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassShadowDescriptor>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassShadowDescriptor>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = v5;
        v10 = v5[25];
        for (i = v5[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassShadowDescriptor>(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(uint64_t result, void *a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5;
      std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v79, v3);
      if (*(v6 + 272) == 1)
      {
        ggl::Batcher::reset((v6 + 144));
        md::RenderItemPool::reset((v6 + 224));
        std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v80, v79);
        if (*(v6 + 272) == 1)
        {
          memset(&v70, 0, sizeof(v70));
          std::vector<unsigned int>::reserve(&v70, 5uLL);
          end = v70.__end_;
          v65 = v5;
          if (*(v6 + 136))
          {
            if (v70.__end_ >= v70.__end_cap_.__value_)
            {
              begin = v70.__begin_;
              v11 = v70.__end_ - v70.__begin_;
              v12 = v70.__end_ - v70.__begin_;
              v13 = v12 + 1;
              if ((v12 + 1) >> 62)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v14 = v70.__end_cap_.__value_ - v70.__begin_;
              if ((v70.__end_cap_.__value_ - v70.__begin_) >> 1 > v13)
              {
                v13 = v14 >> 1;
              }

              if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v15 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v13;
              }

              if (v15)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v15);
              }

              v16 = (4 * v12);
              *v16 = 0;
              end = v16 + 1;
              memcpy(0, begin, v11);
              v70.__begin_ = 0;
              v70.__end_cap_.__value_ = 0;
              if (begin)
              {
                operator delete(begin);
              }
            }

            else
            {
              *v70.__end_ = 0;
              ++end;
            }

            v70.__end_ = end;
            v17 = *(*(v6 + 8) + 56);
            *(v6 + 40) = v17;
            v18 = *(v17 + 58) == 1;
            v9 = 16;
            if (v18)
            {
              v9 = 32;
            }
          }

          else
          {
            v9 = 16;
          }

          v67 = v9;
          v19 = v70.__begin_;
          if (v70.__begin_ != end)
          {
            v21 = *(v6 + 248);
            v20 = *(v6 + 256);
            if (v21 == v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = 0;
              v66 = *(v6 + 256);
              do
              {
                v23 = *v21;
                if (*(*v21 + 48) == 1)
                {
                  if (*(v23 + 88) != v22)
                  {
                    v68 = v22;
                    if (v22)
                    {
                      v24 = ggl::Batcher::commit((v6 + 144), 0xC8u, v7);
                      if (v24[1] != *v24)
                      {
                        v26 = v70.__begin_;
                        v25 = v70.__end_;
                        if (v70.__begin_ != v70.__end_)
                        {
                          v27 = v24;
                          do
                          {
                            v28 = *v26;
                            v71 = &off_1F2A5D8B8;
                            v29 = v6 + 16 + (v28 << 7);
                            v30 = *(v29 + 8);
                            v31 = *(v29 + 24);
                            v74 = *(v29 + 40);
                            v73 = v31;
                            v72 = v30;
                            v32 = *(v29 + 56);
                            v33 = *(v29 + 72);
                            v34 = *(v29 + 88);
                            v78 = *(v29 + 104);
                            v77 = v34;
                            v76 = v33;
                            v75 = v32;
                            v35 = *(v6 + 232);
                            v36 = v35[1];
                            if (v36 == *(v6 + 240))
                            {
                              v35 = *v35;
                              if (!v35)
                              {
                                v35 = malloc_type_malloc(120 * v36 + 16, 0x1020040EDED9539uLL);
                                *v35 = 0;
                                v35[1] = 0;
                                **(v6 + 232) = v35;
                              }

                              *(v6 + 232) = v35;
                              v36 = v35[1];
                            }

                            v37 = &v35[15 * v36];
                            v35[1] = v36 + 1;
                            v37[2] = &off_1F2A5D8B8;
                            v38 = v72;
                            v39 = v73;
                            *(v37 + 7) = v74;
                            *(v37 + 5) = v39;
                            *(v37 + 3) = v38;
                            v40 = v75;
                            v41 = v76;
                            v42 = v77;
                            *(v37 + 15) = v78;
                            *(v37 + 13) = v42;
                            *(v37 + 11) = v41;
                            *(v37 + 9) = v40;
                            ggl::RenderItem::~RenderItem(&v71);
                            v37[10] = v68;
                            v43 = *v27;
                            v37[13] = *v27;
                            v37[14] = (v27[1] - v43) >> 4;
                            std::function<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v81, v28, (v37 + 2));
                            ++v26;
                          }

                          while (v26 != v25);
                        }
                      }
                    }

                    v23 = *v21;
                    v22 = *(*v21 + 88);
                    v20 = v66;
                  }

                  ggl::Batcher::addRange(v6 + 144, (v23 + v67));
                }

                ++v21;
              }

              while (v21 != v20);
              v19 = v70.__begin_;
            }

            v44 = ggl::Batcher::commit((v6 + 144), 0xC8u, v7);
            if (v44[1] != *v44)
            {
              v45 = v70.__end_;
              if (v19 != v70.__end_)
              {
                v46 = v44;
                v69 = v22;
                do
                {
                  v47 = *v19;
                  v71 = &off_1F2A5D8B8;
                  v48 = v6 + 16 + (v47 << 7);
                  v49 = *(v48 + 8);
                  v50 = *(v48 + 24);
                  v74 = *(v48 + 40);
                  v73 = v50;
                  v72 = v49;
                  v51 = *(v48 + 56);
                  v52 = *(v48 + 72);
                  v53 = *(v48 + 88);
                  v78 = *(v48 + 104);
                  v77 = v53;
                  v76 = v52;
                  v75 = v51;
                  v54 = *(v6 + 232);
                  v55 = v54[1];
                  if (v55 == *(v6 + 240))
                  {
                    v54 = *v54;
                    if (!v54)
                    {
                      v54 = malloc_type_malloc(120 * v55 + 16, 0x1020040EDED9539uLL);
                      *v54 = 0;
                      v54[1] = 0;
                      **(v6 + 232) = v54;
                    }

                    *(v6 + 232) = v54;
                    v55 = v54[1];
                  }

                  v56 = &v54[15 * v55];
                  v54[1] = v55 + 1;
                  v56[2] = &off_1F2A5D8B8;
                  v57 = v72;
                  v58 = v73;
                  *(v56 + 7) = v74;
                  *(v56 + 5) = v58;
                  *(v56 + 3) = v57;
                  v59 = v75;
                  v60 = v76;
                  v61 = v77;
                  *(v56 + 15) = v78;
                  *(v56 + 13) = v61;
                  *(v56 + 11) = v60;
                  *(v56 + 9) = v59;
                  ggl::RenderItem::~RenderItem(&v71);
                  v56[10] = v69;
                  v62 = *v46;
                  v56[13] = *v46;
                  v56[14] = (v46[1] - v62) >> 4;
                  std::function<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v81, v47, (v56 + 2));
                  ++v19;
                }

                while (v19 != v45);
                v19 = v70.__begin_;
              }
            }
          }

          if (v19)
          {
            v70.__end_ = v19;
            operator delete(v19);
          }

          v4 = a2;
          v3 = a3;
          v5 = v65;
        }

        std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v80);
      }

      result = std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v79);
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

void sub_1B2B6DC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 128);
  std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 160);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A368A0;
  a2[1] = v2;
  return result;
}

uint64_t std::function<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

ggl::zone_mallocator *std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(ggl::zone_mallocator *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(result + 1);
  v6 = v4[10];
  v5 = v4[11];
  if (v6 >= v5)
  {
    v8 = v4[9];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
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

    v22[4] = v4 + 12;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(result);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v4[9];
    v18 = v4[10] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v4[9];
    v4[9] = v19;
    v4[10] = v7;
    v21 = v4[11];
    v4[11] = v16;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v4[10] = v7;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::DaVinciTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::ClientDrapedPolygonRenderLayer::_layoutDrapedTileOverlay(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, int a5)
{
  v5 = a5;
  v63 = *MEMORY[0x1E69E9840];
  v9 = a4[51];
  v10 = *(v9 + 169);
  v11 = *(v9 + 172);
  v12 = *(v9 + 168);
  v13 = *(v9 + 184);
  v14 = *(v9 + 192);
  v15 = a4[49];
  v16 = *(v15 + 169);
  v17 = *(v15 + 172);
  v18 = *(v15 + 168);
  v19 = *(v15 + 184);
  v20 = *(v15 + 192);
  v21 = *(v15 + 24);
  v22 = *(v15 + 8);
  if (a5)
  {
    v23 = *a3;
    v24 = *(a3 + 8);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = *(v9 + 8);
  v51[1] = v16;
  *v52 = v17;
  v51[0] = v18;
  *&v52[3] = v19;
  v53 = v20;
  v54 = v21;
  v55 = v22;
  v56 = v23;
  v57 = v24;
  v58[1] = v10;
  v59 = v11;
  v58[0] = v12;
  v60 = v13;
  v61 = v14;
  v62 = v25;
  v26 = std::__hash_table<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::__unordered_map_hasher<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,md::FoundationKeyHash,std::equal_to<md::FoundationKey>,true>,std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>,std::allocator<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>>>::find<md::FoundationKey>(a3[2], v58);
  if (v26)
  {
    v27 = std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::find<md::OverlayKey>(v26 + 7, v51);
    if (v27)
    {
      v28 = atomic_load(*(v27 + 9));
      if (v28 == 2)
      {
        v29 = *(v27 + 9);
        md::ElevatedPolygonContext::ElevatedPolygonContext(v48, a2, *(a1 + 496), *(*(a1 + 40) + 24));
        v30 = a4[51];
        v31 = *(v30 + 169);
        v32 = *(a4[1] + 169);
        if (v31 <= v32)
        {
          v33 = *(a4[1] + 169);
        }

        else
        {
          v33 = *(v30 + 169);
        }

        if (v10 == v33)
        {
          v34 = 0.0;
          v35 = -1.0;
          v36 = 1.0;
          v37 = 1.0;
        }

        else
        {
          if (v31 < v32)
          {
            v30 = a4[1];
          }

          v38 = 1 << (v33 - v10);
          v36 = v38--;
          v34 = -(*(v30 + 176) & v38);
          v37 = v36 - (*(v30 + 172) & v38);
          v35 = -v36;
        }

        *v47 = v36;
        *&v47[1] = v35;
        *&v47[2] = v34;
        *&v47[3] = v37;
        if (*(v29 + 56))
        {
          v39 = 0;
          v44 = v5;
          do
          {
            v40 = *(a4[49] + 760) + 160 * *(*(v29 + 88) + 4 * v39);
            if (v5)
            {
              md::ElevatedStrokeGroup::selectedStyleQuery(&v45, v40);
            }

            else
            {
              v45 = *(v40 + 104);
              v43 = *(v40 + 112);
              v46 = v43;
              if (v43)
              {
                atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            if (*(v29 + 60))
            {
              v41 = 0;
              do
              {
                std::__variant_detail::__alt<1ul,md::ClientDrapedMeshes>::__alt[abi:nn200100]<md::ClientDrapedMeshes&>(&v52[1], *(v29 + 112) + 80 * (v39 + *(v29 + 56) * v41));
                v62 = 1;
                if ((*(*(v29 + 64) + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v41))
                {
                  v42 = 0.0;
                }

                else
                {
                  v42 = 0.001;
                }

                v49 = v42;
                md::layoutElevatedPolygonMeshes<md::ElevatedPolygonRenderable>(a2, a4, v48, a1 + 456, *(a1 + 480), v51, &v45, v47);
                if (v62 != -1)
                {
                  (off_1F2A3F930[v62])(&v50, &v52[1]);
                }

                ++v41;
              }

              while (v41 < *(v29 + 60));
            }

            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v46);
            }

            ++v39;
            v5 = v44;
          }

          while (v39 < *(v29 + 56));
        }
      }
    }
  }
}

uint64_t md::CompositeLabelPart::prepareForDisplay(uint64_t this, md::LabelManager *a2)
{
  v2 = *(this + 576);
  for (i = *(this + 584); v2 != i; this = (*(*v5 + 104))(v5, a2))
  {
    v5 = *v2++;
  }

  return this;
}

float *md::IconLabelPart::prepareForDisplay(float *this, md::LabelManager *a2)
{
  v2 = this;
  v3 = this[153];
  if (v3 == this[204])
  {
    v4 = 0;
    v5 = 1;
    while (this[v4 + 80] >= this[v4 + 78])
    {
      v6 = v5;
      v5 = 0;
      v4 = 1;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  this[204] = v3;
  this = (*(*this + 920))(this, 1, this + 160, this + 78);
LABEL_7:
  if (*(v2 + 565) == 1)
  {
    operator new();
  }

  return this;
}

void md::Label::layoutForStaging(md::Label *this, uint64_t a2, md::LabelManager *a3, _BYTE *a4)
{
  v8 = *(a2 + 424);
  *(this + 1358) = *(v8 + 12);
  if (*(this + 1337) == 1)
  {
    *(this + 1337) = 256;
  }

  else if ((*(this + 1338) & 1) == 0)
  {
    v9 = *(this + 1343);
    goto LABEL_4;
  }

  v9 = 1;
LABEL_4:
  *(this + 405) = v9 & 1;
  *(this + 482) = 0;
  if (a3 && ((*(this + 1349) & 1) != 0 || *(this + 1350) == 1) && md::Label::checkReplacementLabelReady(this, a3, a3, *(v8 + 336)))
  {
    if (*(this + 1350) == 1)
    {
      *(this + 1350) = 0;
      md::Label::updateStateMachineForStaging(this, 2, 28);
    }

    if (*(this + 1349) == 1)
    {
      *(this + 1349) = 0;
      md::Label::updateStateMachineForStaging(this, 1, 37);
    }
  }

  *(this + 44) = 0;
  if (*(this + 844))
  {
    if (((*(**(this + 1) + 448))(*(this + 1), this + 48) & 1) == 0)
    {
      v10 = this;
      v11 = 0;
LABEL_15:

      md::Label::updateStateMachineForStaging(v10, 2, v11);
      return;
    }

    if (*(v8 + 25) == 1 && (*(this + 859) & 1) == 0)
    {
      v10 = this;
      v11 = 32;
      goto LABEL_15;
    }

    if ((*(this + 1352) & 1) == 0)
    {
      v12 = *(this + 348);
      if (v12 != -1 && *(this + 1293) == 1)
      {
        v13 = *(a2 + 3616);
        if (v13)
        {
          if (md::LabelCategoryFilter::shouldFilterPoiType(v13, v12))
          {
LABEL_30:
            v10 = this;
            v11 = 33;
            goto LABEL_15;
          }
        }
      }
    }

    if ((*(a2 + 3033) & 1) != 0 || (*(a2 + 3032) & 1) == 0)
    {
      if (*(this + 1352) != 1 || *(this + 1346) == 1 && (*(this + 1345) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (*(a2 + 3026) == 1 && ((*(a2 + 3029) & 1) == 0 && *(this + 1290) == 1 && (*(this + 1352) & 1) == 0 || (*(a2 + 3027) & 1) == 0 && *(this + 1291) == 2 || (*(a2 + 3028) & 1) == 0 && *(this + 1290) == 7 || (*(a2 + 3030) & 1) == 0 && *(this + 1291) == 4 || (*(a2 + 3031) & 1) == 0 && *(this + 1291) == 3))
    {
      goto LABEL_30;
    }

    if (*(a2 + 3681) == 1)
    {
      switch(*(this + 1291))
      {
        case 0:
        case 6:
        case 0xA:
        case 0xF:
        case 0x10:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x17:
        case 0x18:
        case 0x19:
        case 0x1A:
        case 0x1B:
          if (*(a2 + 3676))
          {
            goto LABEL_41;
          }

          break;
        case 1:
        case 7:
        case 8:
        case 0xB:
        case 0xC:
        case 0x11:
        case 0x12:
          if (*(a2 + 3678) != 1)
          {
            break;
          }

          goto LABEL_41;
        case 2:
        case 4:
        case 5:
        case 9:
        case 0xD:
        case 0xE:
          if (*(this + 1290) == 8)
          {
            if ((*(a2 + 3680) & 1) == 0)
            {
              break;
            }
          }

          else if ((*(a2 + 3677) & 1) == 0)
          {
            break;
          }

LABEL_41:
          v10 = this;
          v11 = 5;
          goto LABEL_15;
        case 3:
          if ((*(a2 + 3679) & 1) == 0)
          {
            break;
          }

          goto LABEL_41;
        default:
          break;
      }
    }

    if (*(this + 888) == 1)
    {
      v14 = *(v8 + 29);
      v15 = *(v8 + 29);
      if (v15 != *(this + 861))
      {
        *(this + 861) = v15;
        v16 = atomic_load((a2 + 3368));
        v17 = (v14 - v16) & ~((v14 - v16) >> 31);
        v18 = *(this + 108);
        if (((*(this + 109) - v18) >> 5) <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = (*(this + 109) - v18) >> 5;
        }

        v20 = v19 - 1;
        v21 = (v18 + 32);
        v22 = 1 - v19;
        v23 = -1;
        while (v22 + v23 != -1)
        {
          v24 = *v21;
          v21 += 32;
          ++v23;
          if (v24 > v17)
          {
            goto LABEL_60;
          }
        }

        LODWORD(v23) = v20;
LABEL_60:
        v25 = 0;
        v26 = v18 + 32 * v23 + 8;
        do
        {
          *(this + v25 + 496) = *(v26 + v25);
          v25 += 8;
        }

        while (v25 != 24);
      }
    }

    v27 = (this + 360);
    v28 = *(this + 88);
    if (!v28 || (v31 = *(this + 98), v32 = *(v8 + 32), v31 == v32))
    {
      v29 = (this + 520);
      v30 = 3;
      do
      {
        *v29 = *(v29 - 3);
        ++v29;
        --v30;
      }

      while (v30);
    }

    else
    {
      LOBYTE(v32) = *(v28 + 16);
      v33 = exp2f(v31 - LODWORD(v32));
      v34 = 0;
      v272 = 0u;
      v274 = 0u;
      v273 = 0u;
      v271 = 0u;
      *&v270[8] = 0u;
      v35 = *v28;
      v269 = 0x3FF0000000000000;
      *v270 = 0x3FF0000000000000;
      *&v272 = 0x3FF0000000000000;
      *(&v274 + 1) = 0x3FF0000000000000;
      v275 = 0;
      v276 = v35;
      v277 = xmmword_1B33B0740;
      v263 = 0u;
      v265 = 0;
      v268 = 0u;
      v267 = 0u;
      v264 = 0u;
      v262 = 0u;
      v261 = 0u;
      v260 = 1.0 / v33;
      *&v263 = v260;
      v266 = v260;
      v36 = v270;
      do
      {
        v37 = 0;
        v38 = &v260;
        do
        {
          v39 = 0;
          v40 = 0.0;
          v41 = v36;
          do
          {
            v42 = *v41;
            v41 += 4;
            v40 = v40 + v38[v39++] * v42;
          }

          while (v39 != 4);
          *(&v278 + 4 * v37++ + v34) = v40;
          v38 += 4;
        }

        while (v37 != 4);
        ++v34;
        ++v36;
      }

      while (v34 != 4);
      v255 = 0;
      v254 = 0u;
      v252 = 0u;
      v251 = 0u;
      v250 = 0x3FF0000000000000;
      v253 = 0x3FF0000000000000uLL;
      v256 = 0x3FF0000000000000;
      v257 = 0;
      v258 = vnegq_f64(v35);
      v259 = xmmword_1B33B0740;
      gm::operator*<double,4,4,4>(&v281, &v278, &v250);
      *(this + 65) = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v281.f64, this + 496);
      *(this + 66) = v43;
      *(this + 67) = v44;
    }

    v45 = *(v8 + 1232);
    if ((*(**(this + 1) + 368))(*(this + 1)))
    {
      if ((*(**(this + 1) + 384))(*(this + 1)) && v45 != 0)
      {
        v47 = (*(**(this + 1) + 384))(*(this + 1));
        v48 = md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(v45, v47);
        v49 = (*(**(this + 1) + 384))();
        md::VenueLogicContext::getVenueLevelElevation(v45, v49, v48, 0);
        if (v51)
        {
          v52 = 0;
          v53 = *(this + 29);
          *(this + 85) = v53 * v50;
          do
          {
            v281.f64[v52] = *(this + v52 * 8 + 544) * (v53 * v50);
            ++v52;
          }

          while (v52 != 3);
          v54 = v282;
          *(this + 568) = v281;
          *(this + 73) = v54;
        }
      }
    }

    v55 = 0;
    v56 = *(v8 + 52);
    do
    {
      v281.f64[v55] = *(this + v55 * 8 + 568) * v56;
      ++v55;
    }

    while (v55 != 3);
    v57 = 0;
    v278 = v281;
    v279 = v282;
    do
    {
      v281.f64[v57] = *(&v278 + v57 * 8) + *(this + v57 * 8 + 520);
      ++v57;
    }

    while (v57 != 3);
    v58 = v282;
    *(this + 40) = v281;
    *(this + 82) = v58;
    v278 = xmmword_1B33B0710;
    v279 = 0.0;
    v280 = 0;
    md::LabelLayoutContext::evaluateWorldPoint(v8, this + 640, this + 19, *(this + 1300), 1, &v278, *(this + 28));
    *(this + 196) = HIDWORD(v278);
    v59 = *(&v278 + 2);
    v60 = fmaxf(*&v278, 0.0);
    v61 = v279;
    *(this + 201) = v61;
    *(this + 98) = v60;
    v62 = v60;
    if (v60 >= 0x17)
    {
      LOBYTE(v62) = 23;
    }

    *(this + 404) = v62;
    *(this + 197) = v59;
    if (a4[2] == 1 && ((v280 & 1) != 0 || *(this + 202) > v61 || *(this + 203) < v61))
    {
      v63 = this;
      v64 = 2;
      v65 = 3;
LABEL_94:
      md::Label::updateStateMachineForStaging(v63, v64, v65);
      return;
    }

    *(this + 100) = v61;
    if (a4[1] == 1)
    {
      v66 = v59;
      if (*(this + 102) > v66 || *(this + 103) < v66)
      {
        v63 = this;
        v64 = 2;
        v65 = 34;
        goto LABEL_94;
      }
    }

    v67 = (*(**(this + 1) + 48))(*(this + 1), a2, this);
    atomic_load(this + 1328);
    v68 = (*(**(this + 1) + 568))();
    v69 = *v68;
    if (!*v68)
    {
      goto LABEL_444;
    }

    v70 = *(*(a2 + 336) + 161);
    v249 = v67;
    if (*(v69 + 94) != v70 || __PAIR64__(*(v69 + 96), *(v69 + 95)) != __PAIR64__(BYTE2(v70), BYTE1(v70)) || *(v69 + 97) != BYTE3(v70) || __PAIR64__(*(v69 + 99), *(v69 + 98)) != __PAIR64__(BYTE5(v70), BYTE4(v70)) || __PAIR64__(*(v69 + 101), *(v69 + 100)) != __PAIR64__(HIBYTE(v70), BYTE6(v70)))
    {
      *(v69 + 94) = v70;
      md::LabelStyle::invalidateCachedProperties(v69);
      v69 = *v68;
    }

    md::LabelStyle::setZoom(v69, *(this + 98));
    v71 = (*(**(this + 1) + 576))(*(this + 1));
    v75 = *v71;
    v76 = *(v71 + 8);
    while (v75 != v76)
    {
      if (*v75)
      {
        md::LabelStyle::setVariantStyleType(*v75, *(*(a2 + 336) + 161));
        md::LabelStyle::setZoom(*v75, *(this + 98));
      }

      v75 += 2;
    }

    v77 = *v68;
    if (*(*v68 + 125) != 1 || *(v77 + 136) == 255)
    {
LABEL_444:
      v63 = this;
      v64 = 2;
      v65 = 1;
      goto LABEL_94;
    }

    v78 = v68[1];
    if (v78)
    {
      atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
    }

    v79 = *(this + 48);
    *(this + 47) = v77;
    *(this + 48) = v78;
    if (v79)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v79);
    }

    if (((*(this + 1299) & 1) != 0 || *(a2 + 3046) == 1 && *(*v68 + 141) == 1) && (LODWORD(v73) = *(v8 + 36), *(this + 98) >= *&v73) && (v80 = atomic_load(this + 1331), (v80 & 1) == 0))
    {
      v81 = *(a2 + 3652);
    }

    else
    {
      v81 = 0;
    }

    atomic_store(v81 & 1, this + 481);
    v82 = atomic_load(this + 481);
    if ((v82 & 1) == 0)
    {
      *(this + 1372) = 0;
    }

    if (*(this + 483) == 1)
    {
      v83 = atomic_load(this + 481);
      v84 = *(this + 57);
      if (v83)
      {
        v85 = atomic_load((v84 + 286));
        if (v85)
        {
          if (*(*(this + 57) + 280))
          {
            *(this + 485) = *(*(this + 57) + 280);
          }

          *(this + 483) = 0;
          if (*(this + 484) == 1)
          {
            *(this + 1372) = 0;
          }
        }
      }

      else
      {
        *(v84 + 285) = 1;
        *(this + 483) = 0;
      }
    }

    if (*(a2 + 3043) == 1)
    {
      v86 = *(a2 + 3051) ^ 1;
    }

    else
    {
      v86 = 1;
    }

    *(this + 1333) = v86 & 1;
    v87 = *v68;
    *(this + 846) = *(*v68 + 252);
    *(this + 195) = *(v87 + 152);
    if (*(this + 1359) == 1)
    {
      v88 = vdupq_n_s64(0x400921FB54442D18uLL);
      v89 = vmaxnmq_f64(vmlaq_f64(v88, vdupq_n_s64(0xBF91DF46A2529D39), vcvtq_f64_f32(*(v87 + 228))), 0);
      v90 = vmovn_s64(vcgtq_f64(v89, v88));
      v91 = v90.i8[4];
      if (v90.i8[0])
      {
        v92 = 3.14159265;
      }

      else
      {
        v92 = v89.f64[0];
      }

      if (v91)
      {
        v93 = 3.14159265;
      }

      else
      {
        v93 = v89.f64[1];
      }

      v94 = cos(v92);
      v72 = cos(v93);
      *(this + 102) = v94;
      *(this + 103) = v72;
    }

    if (*(this + 1360) == 1)
    {
      v73 = *(this + 28);
      v95 = v73 * *(v87 + 220);
      *(this + 202) = v95;
      v72 = v73 * *(v87 + 216);
      *&v72 = v72;
      *(this + 203) = LODWORD(v72);
    }

    v96 = *(v87 + 123);
    *(this + 847) = v96;
    if (v96 == 4)
    {
      *&v72 = exp2f(*(this + 98) + -5.0);
    }

    else if (v96 == 2)
    {
      v241 = *(v87 + 196);
      v242 = *(v87 + 392);
      if (!v242)
      {
        md::LabelStyle::prepareDisplayCoreStyleGroup(v87);
      }

      std::shared_ptr<md::LabelTile>::operator=[abi:nn200100](this + 91, v242, *(v87 + 400));
      LODWORD(v72) = v241;
    }

    else if (v96 == 1 || (LODWORD(v72) = 1.0, v96 == 3))
    {
      LODWORD(v73) = LODWORD(v279);
      v72 = *(v8 + 256) / v279;
      *&v72 = v72;
      if (v96 == 3)
      {
        if (*(this + 851) == 1 && *(this + 840) == 1)
        {
          LODWORD(v73) = *(this + 209);
        }

        else
        {
          LODWORD(v73) = *(v87 + 196);
          *(this + 209) = LODWORD(v73);
          *(this + 840) = 1;
        }

        *&v72 = *&v73 * *&v72;
      }
    }

    *(this + 99) = LODWORD(v72);
    md::LabelStyle::getLabelKnobs(*v68, this + 744, *(this + 1290), *(this + 1362), v72, *&v73, v74);
    v97 = *(this + 187) != *(this + 186);
    if (*(this + 849) != v97)
    {
      *(this + 849) = v97;
      *(this + 1335) = 1;
    }

    v98 = (*(**(this + 1) + 240))(*(this + 1), this + 48);
    if (v98 <= 252.0)
    {
      v112 = roundf(v98 * 10.0) * 0.1;
      v113 = *(this + 192);
      *(this + 860) = v112 > v113;
      if (v112 <= v113)
      {
        v112 = v113;
      }

      *(this + 192) = v112;
      v99 = fmaxf(*(this + 188), v98);
    }

    else
    {
      *(this + 860) = 0;
      v99 = *(this + 188);
      if (v99 == 0.0)
      {
        v99 = *(this + 192);
      }
    }

    v100 = v99 + *(this + 190);
    *(this + 188) = v100;
    if (*(this + 1340) == 1)
    {
      *(this + 188) = *(this + 189) + v100;
    }

    v102 = (*(**(this + 1) + 248))(*(this + 1), this + 48);
    if (v102 < 252.0)
    {
      *(this + 193) = fminf(roundf(v102 * 10.0) * 0.1, *(this + 193));
    }

    if (*(this + 1334) & 1) != 0 || (v103 = atomic_load(this + 1328), (v103))
    {
      *(this + 93) = 0xFFFFFFFF00000000;
      *(this + 192) = 0;
      *(this + 188) = 0;
    }

    v104 = atomic_load(this + 1331);
    if (v104)
    {
      goto LABEL_166;
    }

    v105 = atomic_load(this + 1328);
    if (v105)
    {
      goto LABEL_166;
    }

    v124 = *(this + 98);
    v125 = *(this + 192);
    if (v124 >= v125)
    {
      v129 = *(this + 193);
      if (v124 < v129)
      {
LABEL_166:
        v106 = 0;
        v107 = 4;
        v108 = 37;
        v109 = 1;
        goto LABEL_167;
      }

      v108 = 7;
      if (v124 > (v129 + 0.4))
      {
        v109 = 0;
        v106 = 1;
        v107 = 7;
        goto LABEL_167;
      }

      v107 = 7;
    }

    else
    {
      v107 = 1;
      v108 = 6;
      if (v124 < (v125 + -0.4))
      {
        v109 = 0;
        v106 = 1;
        goto LABEL_167;
      }
    }

    v109 = 0;
    v106 = *(this + 1364);
LABEL_167:
    v110 = *(this + 855);
    if (v110 != v107)
    {
      if (!*(this + 855))
      {
        LOBYTE(v110) = v107;
      }

      *(this + 856) = v110;
      *(this + 855) = v107;
    }

    if (v109)
    {
      v111 = atomic_load(this + 1331);
      if (v111)
      {
LABEL_173:
        v108 = 37;
        goto LABEL_174;
      }

      if (*(this + 848) == 1 && *(this + 1350) != 1)
      {
        v108 = 28;
      }

      else
      {
        v121 = *(this + 159);
        if (!v121)
        {
          goto LABEL_173;
        }

        v122 = atomic_load((v121 + 55));
        if (v122)
        {
          goto LABEL_173;
        }

        v123 = atomic_load(this + 1329);
        if ((v123 & 1) != 0 || a3 && (*(this + 1352) & 1) != 0 && !md::Label::checkReplacementLabelReady(this, a3, v101, *(*(a2 + 424) + 336)))
        {
          goto LABEL_173;
        }

        v108 = 29;
      }
    }

LABEL_174:
    if (v106)
    {
      v63 = this;
      v64 = 8;
LABEL_176:
      v65 = v108;
      goto LABEL_94;
    }

    v114 = this + 592;
    *(this + 76) = 0;
    *(this + 37) = 0u;
    if ((*(**(this + 1) + 368))(*(this + 1)))
    {
      *(this + 199) = 1065353216;
      v115 = *(*v68 + 200);
      if (v115 != 0.0)
      {
        v136 = v115 * (40075017.0 * *(v8 + 304)) / *(v8 + 476) + 1.0;
        *(this + 199) = v136;
      }

      *(this + 198) = 0;
      goto LABEL_184;
    }

    if (*(this + 257) == 1)
    {
      if (*(this + 164) == 1)
      {
        v219 = *(this + 61) <= 10.0 && *(this + 98) < 18.0;
        if ((*(v8 + 23) | v219))
        {
          v224 = 2;
        }

        else
        {
          v224 = 3;
        }
      }

      else
      {
        v224 = 1;
      }

      v226 = *(this + 256);
      if (v226 != v224)
      {
        *(this + 1383) = v226 != 0;
        *(this + 256) = v224;
      }

      *(this + 200) = 0;
      *(this + 99) = 0;
      if (*(this + 258) == 1)
      {
        if (v224 >= 2u)
        {
          v227 = -1.5;
          if (v224 == 3)
          {
            v227 = 1.0;
          }

          *(this + 200) = v227;
        }

        if (v224 != 3 && (*(v8 + 19) & 1) != 0)
        {
          *(this + 199) = *(this + 61);
        }

        v130 = 1.0;
        if (*(v8 + 424) <= 0.0)
        {
LABEL_184:
          v116 = *(this + 200);
          if (v116 == 0.0)
          {
            if ((*(this + 164) & 1) == 0)
            {
              goto LABEL_240;
            }
          }

          else
          {
            if ((*(this + 164) & 1) == 0)
            {
              goto LABEL_240;
            }

            v117 = 0;
            v118 = *(this + 28) * v116;
            do
            {
              *(v281.f64 + v117) = *(this + v117 + 152) * v118;
              v117 += 4;
            }

            while (v117 != 12);
            v119 = 0;
            *v270 = v281.f64[0];
            *&v270[8] = LODWORD(v281.f64[1]);
            do
            {
              v281.f64[v119] = *&v270[4 * v119];
              ++v119;
            }

            while (v119 != 3);
            for (i = 0; i != 3; ++i)
            {
              *&v114[i * 8] = *&v114[i * 8] + v281.f64[i];
            }
          }

          if (*(this + 180) == 1)
          {
            if ((*(this + 852) & 1) == 0)
            {
              v126 = fabsf(*(this + 197));
              if (v126 > 0.93)
              {
                v127 = v126;
                if (v126 <= 0.985 && *(this + 184) == HIBYTE(v280))
                {
                  v128 = fminf(-*(this + 54), 0.0);
                }

                else
                {
                  v128 = fmaxf(*(this + 53), 0.0);
                }

                v137 = v127 * 66.6667302 + -65.6667302;
                v138 = fmin(fmax(v137, 0.0), 1.0) * v128;
                *(this + 208) = v138;
              }
            }

            for (j = 0; j != 3; ++j)
            {
              *&v270[8 * j] = *(this + j + 42);
            }

            v140 = 0;
            v141 = *(this + 28) * *(this + 208);
            do
            {
              v281.f64[v140] = v141 * *&v270[v140 * 8];
              ++v140;
            }

            while (v140 != 3);
            for (k = 0; k != 3; ++k)
            {
              *&v114[k * 8] = *&v114[k * 8] + v281.f64[k];
            }
          }

LABEL_240:
          for (m = 0; m != 3; ++m)
          {
            v281.f64[m] = *(this + m * 8 + 592) + *(this + m * 8 + 640);
          }

          v144 = v282;
          v145 = this + 616;
          *(this + 616) = v281;
          *(this + 79) = v144;
          v146 = *(this + 199);
          if (v146 != 0.0)
          {
            v147 = 0;
            v148 = *(this + 29) * v146 * *(v8 + 1184);
            do
            {
              v281.f64[v147] = v148 * *(this + v147 * 8 + 544);
              ++v147;
            }

            while (v147 != 3);
            for (n = 0; n != 3; ++n)
            {
              *&v145[n * 8] = *&v145[n * 8] + v281.f64[n];
            }
          }

          if (*(this + 259) == 1)
          {
            v150 = 0;
            v151 = (v8 + 864);
            do
            {
              v152 = 0;
              v153 = 0.0;
              v154 = v151;
              do
              {
                v155 = *v154;
                v154 += 4;
                v153 = v153 + *&v145[v152] * v155;
                v152 += 8;
              }

              while (v152 != 24);
              v281.f64[v150] = *(v8 + 864 + 8 * v150 + 96) + v153;
              ++v150;
              ++v151;
            }

            while (v150 != 4);
            __asm { FMOV            V1.2D, #1.0 }

            *(this + 86) = vcvt_f32_f64(vmulq_f64(v281, vdivq_f64(_Q1, vdupq_lane_s64(v283, 0))));
          }

          else
          {
            *(this + 172) = md::Label::featurePixel(this, a2, 0);
            *(this + 173) = v243;
          }

          if (*a4 == 1 && *(this + 1354) == 1)
          {
            v160 = 0;
            v161 = 0;
            v162 = *(a2 + 424);
            v163 = v162 + 1136;
            v164 = v162 + 1144;
            do
            {
              v165 = *(this + v161 + 172);
              if (v165 < *(v163 + 4 * v161))
              {
                v108 = 2;
                goto LABEL_262;
              }

              v166 = *(v164 + 4 * v161);
              v161 = 1;
              v167 = (v165 < v166) & ~v160;
              v160 = 1;
            }

            while ((v167 & 1) != 0);
            if (v165 >= v166)
            {
              v108 = 2;
            }
          }

LABEL_262:
          if ((*(**(*(a2 + 168) + 32) + 24))(*(*(a2 + 168) + 32)))
          {
            if (*(this + 1290) == 1 && *(*v68 + 261) <= 3u)
            {
              v168 = (*(**(*(a2 + 168) + 32) + 104))(*(*(a2 + 168) + 32), this + 688, *(this + 1296));
              if (v168 != *(this + 1296))
              {
                *(this + 320) = v168;
                v169 = 32 * v168;
                if (v168 >= 8)
                {
                  v169 = 0;
                }

                *(this + 321) = v169;
                *(this + 1296) = v168;
              }
            }
          }

          if (v108 != 37)
          {
            v170 = atomic_load(this + 1328);
            if ((v170 & 1) == 0)
            {
              if (*(this + 36))
              {
                *(this + 36) = 0;
                *(this + 1335) = 1;
              }

              if (*(this + 844) == 1)
              {
                *(this + 845) = v108;
                *(this + 1378) = 0;
                return;
              }

LABEL_331:
              v206 = 3;
              goto LABEL_332;
            }
          }

          v171 = *(this + 33);
          v172 = v171;
          if (!v171)
          {
            v172 = *(this + 34);
          }

          v173 = *(this + 14);
          v174 = *(a2 + 3336);
          if (*(a2 + 3407) != 1 || v173 == v174)
          {
            if (v172)
            {
              v247 = v171 == 0;
              v181 = *(this + 404);
              v182 = *(this + 1295);
              *(this + 1295) = v181;
              v244 = v174;
              v245 = v173;
              if (v171)
              {
                (*(*v171 + 72))(v171, a2);
                v225 = *(this + 33);
                v281.f64[0] = 0.0;
                v108 = (*(*v225 + 80))(v225, a2, this + 688, &v281);
                v246 = 0;
                v248 = 37;
              }

              else
              {
                if (v181 == v182)
                {
                  (*(**(this + 34) + 72))(*(this + 34), a2);
                }

                v246 = v181 == v182;
                v183 = *(this + 34);
                v281.f64[0] = 0.0;
                v248 = (*(*v183 + 80))(v183, a2, this + 688, &v281);
                v108 = 37;
              }

              v180 = v171 != 0;
              LODWORD(v281.f64[1]) = 0;
              *(v281.f64 + 1) = 7.29112202e-304;
              LOBYTE(v281.f64[0]) = 0;
              if (((v249 | (*(*v172 + 768))(v172, a2, v181 != v182, &v281)) & 1) != 0 || !md::LabelPlacement::operator==(this + 312, this + 317) || *(this + 13) != *(*(this + 1) + 132) || v245 != v244 || *(this + 1383) == 1)
              {
                md::Label::createNextPart(this, a2, &v281);
                if (!*(this + 33))
                {
                  goto LABEL_350;
                }

                v180 = 0;
              }

              v178 = v246;
              v179 = v247;
LABEL_298:
              v184 = *(this + 34);
              if (v184)
              {
                v185 = *(this + 33);
                if (v185)
                {
                  v178 = 1;
                }

                if (v178)
                {
                  if (v179)
                  {
                    goto LABEL_300;
                  }
                }

                else
                {
                  (*(*v184 + 72))(*(this + 34), a2);
                }

                if ((*(this + 1372) & 1) == 0)
                {
                  v240 = *(this + 34);
                  v281.f64[0] = 0.0;
                  v248 = (*(*v240 + 80))(v240, a2, this + 688, &v281);
                }
              }

              v185 = *(this + 33);
LABEL_300:
              if (!v185)
              {
                goto LABEL_451;
              }

              if (!v180)
              {
                (*(*v185 + 72))(v185, a2);
                v186 = *(this + 33);
                v281.f64[0] = 0.0;
                v108 = (*(*v186 + 80))(v186, a2, this + 688, &v281);
                v185 = *(this + 33);
              }

              if (!v185 || (v108 & 0xFB) == 0xB || (*(this + 1372) & 1) != 0)
              {
LABEL_451:
                *(this + 1371) = 0;
                if (!*(this + 34))
                {
                  v63 = this;
                  v64 = 2;
                  goto LABEL_176;
                }

                if (v248 == 37)
                {
                  goto LABEL_312;
                }

                v206 = 2;
                LOBYTE(v108) = v248;
              }

              else
              {
                if (v108 == 37)
                {
                  *(this + 1371) = 1;
                  (*(*v185 + 104))(v185, a2);
                  v187 = *v68;
                  v188 = *(*v68 + 320);
                  if (!v188)
                  {
                    *v270 = 0;
                    v270[2] = 6;
                    v220 = *(v187 + 336);
                    v221 = *(v187 + 344);
                    while (1)
                    {
                      if (v220 == v221)
                      {
                        goto LABEL_397;
                      }

                      v222 = !*v220 && *(v220 + 1) == 0;
                      if (v222 && *(v220 + 2) == 6)
                      {
                        break;
                      }

                      v220 += 16;
                    }

                    if (v220 != v221)
                    {
                      v228 = *(v220 + 8);
                      if ((*(v228 + 12) & 1) == 0)
                      {
                        v229 = *v228;
                        *(v228 + 12) = 1;
                        if (*v187)
                        {
                          v230 = md::LabelStyle::styleQueryForComponent(v187, 0, 0);
                          v231 = *v230;
                          if (*v230)
                          {
                            v232 = v230[1];
                            if (v232)
                            {
                              atomic_fetch_add_explicit(&v232->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v281, v231, v232);
                            if (v232)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v232);
                            }

                            if (v284 == 1)
                            {
                              v233 = *(v187 + 104) >= 0x17 ? 23 : *(v187 + 104);
                              *(v229 + 8) = 0;
                              *(v229 + 16) = 0;
                              *(v229 + 24) = 0;
                              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&v281.f64[0] + 24), 288, v233, 1u, 0);
                              *(v229 + 8) = v234;
                              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&v281.f64[0] + 24), 289, v233, 1u, 0);
                              *(v229 + 12) = v235;
                              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&v281.f64[0] + 24), 290, v233, 1u, 0);
                              *(v229 + 16) = v236;
                              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&v281.f64[0] + 24), 292, v233, 1u, 0);
                              *(v229 + 20) = v237;
                              *(v229 + 24) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*&v281.f64[0] + 24), 291, v233, 1, 0);
                              *(v229 + 25) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*&v281.f64[0] + 24), 293, v233, 1, 0);
                              if (v284)
                              {
                                (*(**&v281.f64[0] + 56))(*&v281.f64[0]);
                              }
                            }

                            if (v283)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v283);
                            }

                            if (*&v281.f64[1])
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](*&v281.f64[1]);
                            }
                          }
                        }
                      }

                      operator new();
                    }

LABEL_397:
                    operator new();
                  }

                  v189 = *(v187 + 328);
                  if (v189)
                  {
                    atomic_fetch_add_explicit((v189 + 8), 1uLL, memory_order_relaxed);
                  }

                  *(this + 89) = v188;
                  v190 = *(this + 90);
                  *(this + 90) = v189;
                  if (v190)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v190);
                  }

LABEL_312:
                  v191 = *(a2 + 424);
                  v192 = md::Label::boundsForStaging(this);
                  v193 = 0;
                  *&v281.f64[0] = __PAIR64__(v194, LODWORD(v192));
                  v195 = &v281;
                  *&v281.f64[1] = __PAIR64__(v197, v196);
                  v198 = 1;
                  do
                  {
                    if (*(v191 + 1112 + 4 * v193) <= *v195 || *(v191 + 1104 + 4 * v193) >= *(&v281.f64[1] + v193))
                    {
                      if (*a4)
                      {
                        LOBYTE(v108) = 2;
                        goto LABEL_331;
                      }

                      goto LABEL_423;
                    }

                    v199 = v198;
                    v198 = 0;
                    v195 = v281.f64 + 1;
                    v193 = 1;
                  }

                  while ((v199 & 1) != 0);
                  v200 = atomic_load(this + 481);
                  if (v200)
                  {
                    if ((*(a2 + 3655) & 1) != 0 || *(*(a2 + 232) + 23) != 1 || (*(a2 + 3176) & 1) != 0 || *(this + 485) != 2)
                    {
                      v201 = 0;
                      v202 = *(a2 + 3332);
                      v203 = 1;
                      do
                      {
                        v204 = vabds_f32(*(this + v201 + 172), *(this + v201 + 118));
                        if ((v203 & 1) == 0)
                        {
                          break;
                        }

                        v203 = 0;
                        v201 = 1;
                      }

                      while (v204 < v202);
                      if ((*(a2 + 3655) & 1) != 0 || v204 >= v202)
                      {
                        *(this + 480) = 1;
                        *(this + 59) = *(this + 86);
                      }
                    }

                    v205 = *(this + 480) == 1 ? *(a2 + 3177) : 0;
                    *(this + 482) = v205 & 1;
                    if (*(this + 485) != 2)
                    {
                      atomic_store(1u, this + 1332);
                      LOBYTE(v108) = 22;
                      goto LABEL_331;
                    }
                  }

LABEL_423:
                  if ((*(this + 1378) & 1) == 0)
                  {
                    *(this + 1186) = *(this + 856);
                    *(this + 856) = *(this + 855);
                    *(this + 689) = 1;
                    *(this + 1351) = 1;
                  }

                  v238 = *(this + 33);
                  if (v238 && *(this + 1371) == 1)
                  {
                    if (*(this + 36) != v238)
                    {
                      *(this + 36) = v238;
                      *(this + 1335) = 1;
                    }

                    if (*(this + 1373))
                    {
                      v207 = 0;
                      v208 = 1379;
                      goto LABEL_335;
                    }

                    goto LABEL_336;
                  }

                  v239 = *(this + 34);
                  if (*(this + 36) == v239)
                  {
                    goto LABEL_336;
                  }

                  *(this + 36) = v239;
                  goto LABEL_334;
                }

                v206 = 2;
              }

LABEL_332:
              md::Label::updateStateMachineForStaging(this, v206, v108);
              if (!*(this + 36))
              {
LABEL_336:
                if (*(this + 1378) == 1)
                {
                  v209 = md::LabelStyle::collisionGroupInfo(*v68, *(this + 1290));
                  if (__PAIR64__(*(this + 365), *(this + 364)) != __PAIR64__(BYTE5(v209), BYTE4(v209)) || *(this + 366) != BYTE6(v209) || *v27 != v209)
                  {
                    *v27 = v209;
                    *(this + 366) = BYTE6(v209);
                    *(this + 182) = WORD2(v209);
                    v210 = *(this + 45);
                    v211 = atomic_load(this + 1328);
                    v212 = 1;
                    if ((v211 & 1) == 0)
                    {
                      v212 = *(this + 365);
                      if (!*(this + 365))
                      {
                        v212 = md::Label::defaultCollisionOverlayGroup(this);
                      }
                    }

                    *(this + 369) = v212;
                    v213 = *(this + 41);
                    v214 = BYTE4(v210) + 3;
                    if ((v210 >> 8) >> 24 >= -3)
                    {
                      v215 = 10;
                    }

                    else
                    {
                      v215 = 0;
                    }

                    if ((BYTE4(v210) + 3) > 0xAu)
                    {
                      v214 = v215;
                    }

                    v216 = 1 << v214;
                    v213[8] = v216;
                    v217 = LabelCollisionOverlayGroupToLayersCollided[v212] | v216;
                    v213[9] = v217;
                    v213[11] = 1 << SBYTE6(v210);
                    v213[12] = v210;
                    v218 = *(this + 42);
                    if (v218)
                    {
                      v218[8] = v216;
                      v218[9] = v217;
                      v218[11] = 1 << SBYTE6(v210);
                      v218[12] = v210;
                    }
                  }
                }

                return;
              }

              *(this + 36) = 0;
LABEL_334:
              v207 = 1;
              v208 = 1335;
LABEL_335:
              *(this + v208) = v207;
              goto LABEL_336;
            }

            v176 = this;
            v177 = a2;
            v175 = 0;
          }

          else
          {
            LOBYTE(v281.f64[0]) = 1;
            *(v281.f64 + 1) = 0.0;
            LODWORD(v281.f64[1]) = 0;
            if (v172 && *(this + 844) == 2)
            {
              LOBYTE(v281.f64[1]) = 1;
              LOBYTE(v281.f64[0]) = 0;
            }

            v175 = &v281;
            v176 = this;
            v177 = a2;
          }

          md::Label::createNextPart(v176, v177, v175);
          if (*(this + 33))
          {
            v178 = 0;
            v179 = 0;
            v180 = 0;
            v248 = 37;
            v108 = 37;
            goto LABEL_298;
          }

LABEL_350:
          v63 = this;
          v64 = 2;
          v65 = 8;
          goto LABEL_94;
        }
      }

      else
      {
        v130 = *(this + 60);
      }
    }

    else if ((*(**(this + 1) + 336))(*(this + 1)))
    {
      v130 = *(v8 + 56);
    }

    else if (*(this + 1291) == 4)
    {
      v130 = *(v8 + 64);
    }

    else
    {
      if ((*(this + 854) & 1) == 0)
      {
        *(this + 200) = *(*v68 + 208);
      }

      if (*(this + 853) == 1)
      {
        v130 = *(this + 198);
LABEL_221:
        if (v130 != 0.0)
        {
          v131 = 0;
          v132 = *(this + 29);
          do
          {
            v281.f64[v131] = *(this + v131 * 8 + 544) * v132;
            ++v131;
          }

          while (v131 != 3);
          v133 = 0;
          *v270 = v281;
          *&v270[16] = v282;
          v134 = v130;
          do
          {
            v281.f64[v133] = *&v270[v133 * 8] * v134;
            ++v133;
          }

          while (v133 != 3);
          for (ii = 0; ii != 3; ++ii)
          {
            *&v114[ii * 8] = *&v114[ii * 8] + v281.f64[ii];
          }
        }

        goto LABEL_184;
      }

      v130 = *(*v68 + 204);
      if (v130 == 0.0)
      {
        v130 = *(this + 50);
      }
    }

    *(this + 198) = v130;
    goto LABEL_221;
  }
}

void sub_1B2B706B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 216);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 - 232);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::Label::checkReplacementLabelReady(md::Label *this, md::LabelManager *a2, md::LabelPool *a3, double a4)
{
  v4 = *(this + 164);
  if (v4 == 0.0)
  {
    *(this + 164) = a4;
    v4 = a4;
  }

  if (vabdd_f64(a4, v4) <= 1.0)
  {
    v6 = md::LabelPool::replacementForLabel(a2, this);
    if (v6)
    {
      v5 = *(v6 + 1351);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a1[1]);
    std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 5));
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,void *>>(v3, a1);
  }
}

void std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ShareSection>(v2, v1);
  }
}

void std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
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
        std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteRangeAnnotationRequest>(v6, v4);
  }
}

void std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(a1 + 24));

  v2 = *a1;
}

mdm::zone_mallocator *md::MapNavLabeler::buildAvoidanceRects(md::MapNavLabeler *this, const md::NavContext *a2, void *a3, int a4)
{
  v7 = 0;
  v8 = *(a2 + 97);
  v9 = *(a2 + 96);
  v10 = 0x8E38E38E38E38E39 * ((v8 - v9) >> 3) + 1;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a4)
  {
    v7 = (*(a2 + 78) - *(a2 + 77)) >> 4;
  }

  v11 = v10 + v7;
  v61 = a4;
  if (v10 + v7)
  {
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_42:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v68 = this + 24;
    v12 = mdm::zone_mallocator::instance(this);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::AvoidanceRectWithPriority>(v12, v11);
    v14 = *this;
    v15 = *(this + 1);
    v16 = &v13[*this - v15];
    if (v15 != *this)
    {
      v17 = &v13[*this - v15];
      do
      {
        v18 = *v14;
        *(v17 + 2) = *(v14 + 2);
        *v17 = v18;
        v17 += 24;
        v14 = (v14 + 24);
      }

      while (v14 != v15);
      v14 = *this;
    }

    *this = v16;
    *(this + 1) = v13;
    v19 = *(this + 2);
    *(this + 2) = &v13[24 * v11];
    v66 = v14;
    v67 = v19;
    *&v65 = v14;
    *(&v65 + 1) = v14;
    std::__split_buffer<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator> &>::~__split_buffer(&v65);
    v9 = *(a2 + 96);
    v8 = *(a2 + 97);
  }

  for (; v9 != v8; v9 += 72)
  {
    if (*(v9 + 56) == 1)
    {
      v63 = *(v9 + 32);
      v64 = *(v9 + 48);
      v20 = a3[3];
      if (!md::LabelLayoutContext::isDistanceClipped(v20, &v63))
      {
        md::LabelLayoutContext::projectPointToPixel(v20, &v63, &v62);
        v22 = gm::Box<float,2>::operator+((v9 + 16), &v62);
        v26 = v22;
        v27 = v23;
        v28 = v24;
        v29 = v25;
        v30 = *(v9 + 64);
        v31 = *(this + 1);
        v32 = *(this + 2);
        if (v31 >= v32)
        {
          v34 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *this) >> 3);
          v35 = v34 + 1;
          if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_42;
          }

          v36 = 0xAAAAAAAAAAAAAAABLL * ((v32 - *this) >> 3);
          if (2 * v36 > v35)
          {
            v35 = 2 * v36;
          }

          if (v36 >= 0x555555555555555)
          {
            v37 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v37 = v35;
          }

          v68 = this + 24;
          if (v37)
          {
            v38 = mdm::zone_mallocator::instance(v21);
            v39 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::AvoidanceRectWithPriority>(v38, v37);
          }

          else
          {
            v39 = 0;
          }

          v40 = &v39[24 * v34];
          *v40 = v26;
          *(v40 + 1) = v27;
          *(v40 + 2) = v28;
          *(v40 + 3) = v29;
          *(v40 + 4) = 1065353216;
          v40[20] = v30;
          v41 = *this;
          v42 = *(this + 1);
          v43 = &v40[*this - v42];
          if (*this != v42)
          {
            v44 = &v40[*this - v42];
            do
            {
              v45 = *v41;
              *(v44 + 2) = *(v41 + 2);
              *v44 = v45;
              v44 += 24;
              v41 = (v41 + 24);
            }

            while (v41 != v42);
            v41 = *this;
          }

          v33 = v40 + 24;
          *this = v43;
          *(this + 1) = v40 + 24;
          v46 = *(this + 2);
          *(this + 2) = &v39[24 * v37];
          v66 = v41;
          v67 = v46;
          *&v65 = v41;
          *(&v65 + 1) = v41;
          std::__split_buffer<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator> &>::~__split_buffer(&v65);
        }

        else
        {
          *v31 = v22;
          *(v31 + 4) = v23;
          *(v31 + 8) = v24;
          *(v31 + 12) = v25;
          *(v31 + 16) = 1065353216;
          v33 = (v31 + 24);
          *(v31 + 20) = v30;
        }

        *(this + 1) = v33;
      }
    }
  }

  if (v61)
  {
    v47 = *(a2 + 77);
    for (i = *(a2 + 78); v47 != i; v47 += 2)
    {
      v49 = *v47;
      v50 = v47[1];
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v65 = *(v49 + 360);
      std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::emplace_back<gm::Box<float,2> &>(this, &v65);
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v50);
      }
    }
  }

  v51 = a3[3];
  v52 = a3[4];
  v53 = *(v52 + 120);
  v54 = *(a3[1] + 176);
  result = md::LabelLayoutContext::isDistanceClipped(v51, v52 + 96);
  if ((result & 1) == 0)
  {
    v56 = v54 * v53;
    if (v56 != 0.0)
    {
      v57 = md::LabelLayoutContext::projectPointToPixel(v51, v52 + 96, &v63);
      v57.f32[0] = v56 * 0.5;
      v58.i64[0] = v63;
      v58.i64[1] = v63;
      v59 = vdupq_lane_s32(v57, 0);
      *&v60 = vsubq_f32(v58, v59).u64[0];
      *(&v60 + 1) = vaddq_f32(v58, v59).i64[1];
      v65 = v60;
      return std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::emplace_back<gm::Box<float,2> &>(this, &v65);
    }
  }

  return result;
}

mdm::zone_mallocator *std::__split_buffer<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 24) % 0x18uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::AvoidanceRectWithPriority>(v4, v3);
  }

  return a1;
}

double md::MercatorAnchor::worldPointWithRouteElevationOffset(md::MercatorAnchor *this)
{
  if (!*(this + 1))
  {
    return 0.0;
  }

  (*(*this + 56))(this);
  return result;
}

BOOL md::LabelLayoutContext::isDistanceClipped(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 18) == 1 && (*(a1 + 15) & 1) == 0)
  {
    v2 = 0;
    v3 = 0.0;
    do
    {
      v3 = v3 + *(a2 + v2) * *(a1 + 160 + v2);
      v2 += 8;
    }

    while (v2 != 24);
    if (v3 > *(a1 + 288))
    {
      return 1;
    }
  }

  for (i = 0; i != 24; i += 8)
  {
    *(&v13 + i) = *(a2 + i) - *(a1 + 136 + i);
  }

  if (*(a1 + 15) == 1)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + *(&v13 + v5) * *(&v13 + v5);
      v5 += 8;
    }

    while (v5 != 24);
    v7 = sqrt(v6);
  }

  else
  {
    v8 = 0;
    v7 = 0.0;
    do
    {
      v7 = v7 + *(&v13 + v8) * *(a1 + 160 + v8);
      v8 += 8;
    }

    while (v8 != 24);
  }

  if (*(a1 + 1273) != 1 || (v9 = *(a1 + 1276), v10 = *(a1 + 1280), v9 <= v10))
  {
    if (v7 >= *(a1 + 272))
    {
      return v7 > *(a1 + 280);
    }

    return 1;
  }

  return v7 < *(a1 + 256) - *(a1 + 256) * v10 / v9 || v7 > *(a1 + 256) * v10 / v9 + *(a1 + 256);
}

mdm::zone_mallocator *std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::emplace_back<gm::Box<float,2> &>(mdm::zone_mallocator *result, _OWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v20[4] = result + 24;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::AvoidanceRectWithPriority>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v7];
    *v13 = *a2;
    *(v13 + 4) = 1065353216;
    v13[20] = 0;
    v14 = *v3;
    v15 = *(v3 + 1);
    v16 = &v13[*v3 - v15];
    if (*v3 != v15)
    {
      v17 = &v13[*v3 - v15];
      do
      {
        v18 = *v14;
        *(v17 + 2) = *(v14 + 2);
        *v17 = v18;
        v17 += 24;
        v14 = (v14 + 24);
      }

      while (v14 != v15);
      v14 = *v3;
    }

    v6 = v13 + 24;
    *v3 = v16;
    *(v3 + 1) = v13 + 24;
    v19 = *(v3 + 2);
    *(v3 + 2) = &v12[24 * v10];
    v20[2] = v14;
    v20[3] = v19;
    v20[0] = v14;
    v20[1] = v14;
    result = std::__split_buffer<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator> &>::~__split_buffer(v20);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 16) = 1065353216;
    *(v4 + 20) = 0;
    v6 = (v4 + 24);
  }

  *(v3 + 1) = v6;
  return result;
}

void md::LabelNavEtaLabeler::layoutForStagingWithNavContext(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v56[19] = *MEMORY[0x1E69E9840];
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 184));
  v7 = *(a1 + 152);
  v6 = *(a1 + 160);
  if (v6 != v7)
  {
    v8 = v6 - 3;
    v9 = v6 - 3;
    v10 = v6 - 3;
    do
    {
      v11 = *v10;
      v10 -= 3;
      (*v11)(v9);
      v8 -= 3;
      v12 = v9 == v7;
      v9 = v10;
    }

    while (!v12);
  }

  *(a1 + 160) = v7;
  v13 = *(a1 + 288);
  for (i = *(a1 + 296); i != v13; i -= 8)
  {
    v15 = *(i - 8);
  }

  *(a1 + 296) = v13;
  v16 = *(a1 + 320);
  for (j = *(a1 + 328); j != v16; j -= 8)
  {
    v18 = *(j - 8);
  }

  *(a1 + 328) = v16;
  *(a1 + 252) = 0;
  *(*(a1 + 48) + 40) = *(*(a2 + 24) + 52);
  v19 = *(a1 + 48);
  v20 = *(a2 + 32);
  std::unordered_map<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::shared_ptr<md::FlyoverDsmTileData>>>>::unordered_map(__p, v20 + 152);
  std::set<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::set[abi:nn200100](&v44, (v20 + 192));
  if ((v19 + 48) != __p)
  {
    *(v19 + 80) = v43;
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,void *> *>>((v19 + 48), v42);
    std::__tree<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::__assign_multi<std::__tree_const_iterator<unsigned char,std::__tree_node<unsigned char,void *> *,long>>(v19 + 88, v44, &v45);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v45);
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(v42);
  v21 = __p[0];
  __p[0] = 0;
  if (v21)
  {
    operator delete(v21);
  }

  if (*(a1 + 707) == 1)
  {
    *(a1 + 707) = 0;
    md::LabelNavEtaLabeler::clearETALabels(a1);
  }

  md::LabelNavEtaLabeler::updateLabelPositions(a1, a2, a3);
  v22 = *(a1 + 152);
  v23 = *(a1 + 160);
  if (v22 != v23)
  {
    while (1)
    {
      geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v50, v22);
      v24 = v51;
      v25 = [v24 label];

      v26 = v51;
      [v26 layoutForStagingWithNavContext:a2];

      v27 = *v25;
      if (*(*v25 + 314))
      {
        break;
      }

LABEL_25:
      v50 = off_1F2A59C08;

      v22 += 24;
      if (v22 == v23)
      {
        goto LABEL_26;
      }
    }

    if (*(v27 + 315) == 1)
    {
      v28 = *(v27 + 313);
      *(v27 + 316) = v28 ^ 1;
      v29 = v28;
    }

    else
    {
      if (*(v27 + 316))
      {
LABEL_24:
        std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100]((a1 + 184), v25);
        goto LABEL_25;
      }

      *(v27 + 316) = 1;
      v29 = 0.0;
    }

    *(v27 + 276) = v29;
    goto LABEL_24;
  }

LABEL_26:
  v30 = +[VKDebugSettings sharedSettings];
  v31 = [v30 traceEtaDebugLog];

  if (v31)
  {
    std::basic_stringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_stringstream[abi:nn200100](&v50);
    md::LabelNavEtaLabeler::describeDebugState(a1, &v52, 1);
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v32 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      std::basic_stringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::str[abi:nn200100](__dst, &v50);
      v33 = v47 >= 0 ? __dst : __dst[0];
      *buf = 136315138;
      v49 = v33;
      _os_log_impl(&dword_1B2754000, v32, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
      if (v47 < 0)
      {
        v35 = __dst[0];
        v36 = mdm::zone_mallocator::instance(v34);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v36, v35);
      }
    }

    v37 = +[VKDebugSettings sharedSettings];
    [v37 setTraceEtaDebugLog:0];

    v50 = &unk_1F29F0E98;
    v56[0] = &unk_1F29F0EE8;
    v52 = &unk_1F29F0EC0;
    v53 = &unk_1F29F1070;
    if (v55 < 0)
    {
      locale = v54[7].__locale_;
      v40 = mdm::zone_mallocator::instance(v38);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v40, locale);
    }

    v53 = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(v54);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C620C0](v56);
  }
}

void sub_1B2B71544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  a44 = &unk_1F29F0EE8;
  if (a40 < 0)
  {
    v47 = a35;
    v48 = mdm::zone_mallocator::instance(v46);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v48, v47);
  }

  std::locale::~locale(&a28);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a44);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::shared_ptr<md::FlyoverDsmTileData>>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    if (i[40] == 1)
    {
      geo::QuadTile::computeHash(i + 16);
      i[40] = 0;
    }

    v5 = *(i + 4);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_31;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = *(i + 4);
      if (v5 >= *&v6)
      {
        v9 = v5 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v5;
    }

    v10 = *(*a1 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_31:
      operator new();
    }

    v12 = *(i + 4);
    while (1)
    {
      v13 = *(v11 + 1);
      if (v13 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v9)
      {
        goto LABEL_31;
      }

LABEL_26:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }

    if (v11[40] == 1)
    {
      geo::QuadTile::computeHash(v11 + 16);
      v11[40] = 0;
      v14 = *(v11 + 4);
      if (i[40])
      {
        v15 = (i[17] + ((i[16] - 0x61C8864680B583EBLL) << 6) + ((i[16] - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (i[16] - 0x61C8864680B583EBLL);
        v16 = (*(i + 5) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583EBLL) ^ v15;
        v12 = (*(i + 6) + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583EBLL) ^ v16;
        *(i + 4) = v12;
        i[40] = 0;
      }

      else
      {
        v12 = *(i + 4);
      }
    }

    else
    {
      v14 = *(v11 + 4);
    }

    if (v14 != v12 || v11[16] != i[16] || v11[17] != i[17] || *(v11 + 5) != *(i + 5) || *(v11 + 6) != *(i + 6))
    {
      goto LABEL_26;
    }
  }

  return a1;
}

void *std::set<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::set[abi:nn200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 25);
      if (*(v4 + 25) > v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 25);
              if (v8 <= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 <= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v9 = *(v2 + 1);
        *(v6 + 25) = *(v2 + 25);
        *(v6 + 16) = v9;
        v11 = v2[6];
        v10 = v2[7];
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(v6 + 56);
        *(v6 + 48) = v11;
        *(v6 + 56) = v10;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v8 = *v6;
        std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

uint64_t std::optional<gdc::ResourceKey>::operator=[abi:nn200100]<gdc::ResourceKey const&,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  *a1 = *a2;
  if (v4 == 1)
  {
    if (a1 != a2)
    {
      geo::small_vector_base<unsigned char>::copy((a1 + 8), (a2 + 8), (a1 + 40));
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *(a1 + 8) = a1 + 40;
    *(a1 + 16) = a1 + 40;
    *(a1 + 24) = a1 + 40;
    *(a1 + 32) = 32;
    geo::small_vector_base<unsigned char>::append<unsigned char const*>((a1 + 8), *(a2 + 8), *(a2 + 16));
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = 1;
  }

  return a1;
}

void std::__tree<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::__assign_multi<std::__tree_const_iterator<unsigned char,std::__tree_node<unsigned char,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v12);
    goto LABEL_31;
  }

  v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = *(v13 + 25);
      *(v9 + 25) = v14;
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v16 = v15;
            if (v14 <= *(v15 + 25))
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_16;
            }
          }

          v15 = v15[1];
        }

        while (v15);
        v17 = v16 + 1;
      }

LABEL_16:
      std::__tree<unsigned short>::__insert_node_at(a1, v16, v17, v9);
      if (v10)
      {
        v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v18 = v13[1];
      if (v18)
      {
        do
        {
          a2 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v19 = *a2 == v13;
          v13 = a2;
        }

        while (!v19);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

void md::LabelNavEtaLabeler::updateLabelPositions(id *a1, uint64_t a2, __int128 **a3)
{
  v4 = a1;
  v392 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v335 = [v5 routeInfo];

  v378 = 0;
  v6 = geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v4 + 3), &v378);
  if (v335)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (v7 != 1)
  {
    v8 = (v4 + 576);
    v9 = (v4 + 608);
    v10 = v4 + 616;
    v11 = v4 + 584;
    v12 = *(v4 + 73);
    v13 = *(v4 + 38);
    *(v4 + 76) = *(v4 + 72);
    *(v4 + 77) = v12;
    *(v4 + 36) = v13;
    v14 = *(v4 + 79);
    v15 = *(v4 + 75);
    *(v4 + 79) = v15;
    *(v4 + 75) = v14;
    v16 = (v12 + 16);
    if (!v15)
    {
      v16 = (v4 + 608);
    }

    *v16 = v10;
    if (v14)
    {
      v17 = (*(v4 + 73) + 16);
    }

    else
    {
      v17 = (v4 + 576);
    }

    *v17 = v11;
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(v4 + 73));
    *(v4 + 75) = 0;
    *(v4 + 72) = v11;
    *(v4 + 73) = 0;
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(v4 + 85));
    *(v4 + 87) = 0;
    v337 = (v4 + 680);
    *(v4 + 84) = v4 + 680;
    *(v4 + 85) = 0;
    std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::destroy(*(v4 + 81));
    *(v4 + 83) = 0;
    v342 = (v4 + 648);
    *(v4 + 80) = v4 + 648;
    *(v4 + 81) = 0;
    v18 = +[VKDebugSettings sharedSettings];
    v358 = v4;
    if ([v18 forceEtaLabelPlacement])
    {
    }

    else
    {
      v19 = *(v4 + 449);

      v106 = v19 == 1;
      v4 = v358;
      if (!v106)
      {
        v346 = 0;
LABEL_16:
        if ((md::LabelNavEtaLabeler::hasPolylineForRoute(v4, v335) & 1) == 0)
        {
          v163 = [(VKRouteInfo *)v335 route];
          md::LabelNavEtaLabeler::extinguishLabels(v4, v163);

          goto LABEL_447;
        }

        if ((v4 + 216) != a3)
        {
          std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<md::AvoidanceRectWithPriority*,md::AvoidanceRectWithPriority*>(v4 + 27, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
        }

        *(v4 + 62) = 0.01 / *(*(a2 + 8) + 176);
        frustumForScreenRect(v377, *(a2 + 24), *(*(a2 + 32) + 136), *(*(a2 + 32) + 32), *(*(a2 + 32) + 40));
        v21 = v335;
        memset(v375, 0, sizeof(v375));
        v376 = 1065353216;
        v345 = v21;
        if ((*(v4 + 704) & 1) == 0)
        {
          v22 = 0;
          *v390 = xmmword_1B33B0920;
          do
          {
            std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType const&>(v375, *&v390[v22]);
            v22 += 8;
          }

          while (v22 != 16);
        }

        *v390 = 4;
        std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType>(v375, 4uLL);

        std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v358 + 62));
        *(v358 + 64) = 0;
        *(v358 + 61) = v358 + 496;
        *(v358 + 62) = 0;
        std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v358 + 66));
        *(v358 + 68) = 0;
        v336 = (v358 + 528);
        *(v358 + 65) = v358 + 528;
        *(v358 + 66) = 0;
        v388[0] = &unk_1F29F10F0;
        v388[1] = v375;
        v388[3] = v388;
        md::LabelNavEtaLabeler::extractAndSortAnnotations(v358, v21, v388);
        std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::~__value_func[abi:nn200100](v388);
        v373 = 0u;
        v374 = 0u;
        v371 = 0u;
        v372 = 0u;
        v23 = *(v358 + 3);
        obj = [v23 alternateRoutes];

        v339 = v8;
        v348 = v11;
        v24 = [obj countByEnumeratingWithState:&v371 objects:v387 count:16];
        if (v24)
        {
          v25 = *v372;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v372 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v371 + 1) + 8 * i);
              memset(v390, 0, sizeof(v390));
              LODWORD(v391) = 1065353216;
              v28 = 24;
              v29 = &qword_1B33B31C0;
              do
              {
                v30 = *v29++;
                std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType const&>(v390, v30);
                v28 -= 8;
              }

              while (v28);
              buf[0].n128_u64[0] = 4;
              std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType>(v390, 4uLL);
              v386[0] = &unk_1F29F1138;
              v386[1] = v390;
              v386[3] = v386;
              md::LabelNavEtaLabeler::extractAndSortAnnotations(v358, v27, v386);
              std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::~__value_func[abi:nn200100](v386);
              std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v390);
            }

            v24 = [obj countByEnumeratingWithState:&v371 objects:v387 count:16];
          }

          while (v24);
        }

        v31 = v358;
        v32 = *v9;
        v33 = *(v358 + 84);
        v382 = *v339;
        v381 = v348;
        v380 = v32;
        v379 = v10;
        v334 = (v358 + 672);
        buf[0].n128_u64[0] = v358 + 672;
        buf[0].n128_u64[1] = v33;
        std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>> &>(v390, &v382, &v381, &v380, &v379, buf);
        v34 = *v339;
        v35 = *(v358 + 80);
        v382 = *v9;
        v381 = v10;
        v380 = v34;
        v379 = v348;
        buf[0].n128_u64[0] = v358 + 640;
        buf[0].n128_u64[1] = v35;
        std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>> &>(v390, &v382, &v381, &v380, &v379, buf);
        v36 = *(v358 + 80);
        if (v36 != v342)
        {
          v37 = (v358 + 464);
          obja = (v358 + 264);
          do
          {
            v38 = v36[4];
            v39 = *v37;
            if (!*v37)
            {
              goto LABEL_41;
            }

            v40 = v37;
            do
            {
              v41 = v39[4];
              v42 = v41 >= v38;
              v43 = v41 < v38;
              if (v42)
              {
                v40 = v39;
              }

              v39 = v39[v43];
            }

            while (v39);
            if (v40 == v37 || v38 < v40[4])
            {
LABEL_41:
              v40 = v37;
            }

            v44 = v36[4];
            v45 = *obja;
            if (!*obja)
            {
              goto LABEL_50;
            }

            v46 = (v358 + 264);
            do
            {
              v47 = v45[4];
              v42 = v47 >= v44;
              v48 = v47 < v44;
              if (v42)
              {
                v46 = v45;
              }

              v45 = v45[v48];
            }

            while (v45);
            if (v46 == obja || v44 < v46[4])
            {
LABEL_50:
              v46 = (v358 + 264);
            }

            v49 = v358;
            if (v40 != (v358 + 464))
            {
              v50 = v40[6];
              if (v40[5] != v50)
              {
                v50 = v40[5];
                while ((md::RouteRangeAnnotationRequest::operator==(v36 + 4, v50) & 1) == 0)
                {
                  v50 += 384;
                  if (v50 == v40[6])
                  {
                    v50 = v40[6];
                    goto LABEL_88;
                  }
                }

                v51 = v40[6];
                if (v50 != v51)
                {
                  v52 = v50 + 384;
                  if (v50 + 384 != v51)
                  {
                    do
                    {
                      v53 = *v52;
                      *v52 = 0;
                      v54 = *v50;
                      *v50 = v53;

                      v55 = *(v52 + 8);
                      *(v52 + 8) = 0;
                      v56 = *(v50 + 8);
                      *(v50 + 8) = v55;

                      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((v50 + 16), (v52 + 16));
                      if (*(v50 + 72))
                      {
                        v57 = *(v50 + 64);
                        if (v57)
                        {
                          do
                          {
                            v58 = *v57;
                            operator delete(v57);
                            v57 = v58;
                          }

                          while (v58);
                        }

                        *(v50 + 64) = 0;
                        v59 = *(v50 + 56);
                        if (v59)
                        {
                          for (j = 0; j != v59; ++j)
                          {
                            *(*(v50 + 48) + 8 * j) = 0;
                          }
                        }

                        *(v50 + 72) = 0;
                      }

                      v61 = *(v52 + 48);
                      *(v52 + 48) = 0;
                      v62 = *(v50 + 48);
                      *(v50 + 48) = v61;
                      if (v62)
                      {
                        operator delete(v62);
                      }

                      v63 = *(v52 + 64);
                      v64 = *(v52 + 56);
                      *(v50 + 64) = v63;
                      *(v50 + 56) = v64;
                      *(v52 + 56) = 0;
                      v65 = *(v52 + 72);
                      *(v50 + 72) = v65;
                      *(v50 + 80) = *(v52 + 80);
                      if (v65)
                      {
                        v66 = *(v63 + 8);
                        if ((v64 & (v64 - 1)) != 0)
                        {
                          if (v66 >= v64)
                          {
                            v66 %= v64;
                          }
                        }

                        else
                        {
                          v66 &= v64 - 1;
                        }

                        *(*(v50 + 48) + 8 * v66) = v50 + 64;
                        *(v52 + 64) = 0;
                        *(v52 + 72) = 0;
                      }

                      v68 = (v50 + 96);
                      v67 = *(v50 + 96);
                      *(v50 + 88) = *(v52 + 88);
                      if (v67)
                      {
                        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v50 + 96));
                        v69 = *v68;
                        v71 = mdm::zone_mallocator::instance(v70);
                        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::PolylineCollider>>(v71, v69);
                        *v68 = 0;
                        *(v50 + 104) = 0;
                        *(v50 + 112) = 0;
                      }

                      v72 = 0;
                      *(v50 + 96) = *(v52 + 96);
                      *(v50 + 112) = *(v52 + 112);
                      *(v52 + 104) = 0;
                      *(v52 + 112) = 0;
                      *(v52 + 96) = 0;
                      *(v50 + 136) = *(v52 + 136);
                      *(v50 + 128) = *(v52 + 128);
                      *(v50 + 140) = *(v52 + 140);
                      *(v50 + 144) = *(v52 + 144);
                      *(v50 + 148) = *(v52 + 148);
                      *(v50 + 152) = *(v52 + 152);
                      *(v50 + 188) = *(v52 + 188);
                      *(v50 + 172) = *(v52 + 172);
                      *(v50 + 156) = *(v52 + 156);
                      *(v50 + 204) = *(v52 + 204);
                      *(v50 + 208) = *(v52 + 208);
                      *(v50 + 216) = *(v52 + 216);
                      do
                      {
                        *(v50 + v72 + 224) = *(v50 + v72 + 608);
                        v72 += 16;
                      }

                      while (v72 != 128);
                      v73 = *(v50 + 352);
                      if (v73)
                      {
                        v74 = *(v50 + 360);
                        v75 = *(v50 + 352);
                        if (v74 != v73)
                        {
                          do
                          {
                            v76 = v74 - 72;
                            v62 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v74 - 40);
                            v74 = v76;
                          }

                          while (v76 != v73);
                          v75 = *(v50 + 352);
                        }

                        *(v50 + 360) = v73;
                        v77 = mdm::zone_mallocator::instance(v62);
                        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PolylineSampleDebug>(v77, v75);
                        *(v50 + 352) = 0;
                        *(v50 + 360) = 0;
                        *(v50 + 368) = 0;
                      }

                      *(v50 + 352) = *(v52 + 352);
                      *(v50 + 368) = *(v52 + 368);
                      *(v52 + 352) = 0;
                      *(v52 + 360) = 0;
                      *(v52 + 368) = 0;
                      v52 += 384;
                      v50 += 384;
                    }

                    while (v52 != v51);
                    v51 = v40[6];
                    v49 = v358;
                  }

                  while (v51 != v50)
                  {
                    v51 -= 384;
                    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>,void,0>(v51);
                  }

                  v40[6] = v50;
                }
              }

LABEL_88:
              if (v40[5] == v50)
              {
                v78 = v40[1];
                v79 = v40;
                if (v78)
                {
                  do
                  {
                    v80 = v78;
                    v78 = *v78;
                  }

                  while (v78);
                }

                else
                {
                  do
                  {
                    v80 = v79[2];
                    v106 = *v80 == v79;
                    v79 = v80;
                  }

                  while (!v106);
                }

                if (*(v49 + 57) == v40)
                {
                  *(v49 + 57) = v80;
                }

                --*(v49 + 60);
                std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(v49 + 58), v40);
                *v390 = v40 + 5;
                std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>::__destroy_vector::operator()[abi:nn200100](v390);

                v82 = mdm::zone_mallocator::instance(v81);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,void *>>(v82, v40);
                v49 = v358;
              }
            }

            if (v46 != obja)
            {
              v83 = v46[5];
              v84 = v46[6];
              if (v83 != v84)
              {
                v84 = v46[5];
                while ((md::RouteRangeAnnotationRequest::operator==(v36 + 4, v84) & 1) == 0)
                {
                  v84 += 72;
                  v83 += 72;
                  if (v84 == v46[6])
                  {
                    v84 = v46[6];
                    goto LABEL_111;
                  }
                }

                v85 = v46[6];
                if (v84 != v85)
                {
                  if (v84 + 72 != v85)
                  {
                    v86 = v46[5];
                    v87 = -v86;
                    v88 = v86 + v83;
                    do
                    {
                      v89 = (v88 + v87);
                      v90 = *(v88 + v87 + 72);
                      v89[9] = 0;
                      v91 = *(v88 + v87);
                      *v89 = v90;

                      v92 = *(v88 + v87 + 80);
                      v89[10] = 0;
                      v93 = *(v88 + v87 + 8);
                      v89[1] = v92;

                      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((v88 + v87 + 16), (v88 + v87 + 88));
                      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v88 + v87 + 48, v88 + v87 + 120);
                      v88 += 72;
                      v84 = v88 + v87;
                    }

                    while (v88 + v87 + 72 != v85);
                    v85 = v46[6];
                    v49 = v358;
                  }

                  while (v85 != v84)
                  {
                    v85 -= 72;
                    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(v85);
                  }

                  v46[6] = v84;
                }
              }

LABEL_111:
              if (v46[5] == v84)
              {
                std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,mdm::zone_mallocator>>::erase(v49 + 256, v46);
              }
            }

            v94 = GEOGetVectorKitLabelNavEtaLabelerLog();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
            {
              md::RouteRangeAnnotationRequest::to_string(v390, (v36 + 4));
              v95 = v390;
              if ((v390[23] & 0x80u) != 0)
              {
                v95 = *v390;
              }

              buf[0].n128_u32[0] = 136315138;
              *(buf[0].n128_u64 + 4) = v95;
              _os_log_impl(&dword_1B2754000, v94, OS_LOG_TYPE_INFO, "RouteRangeAnnotationRequest dropped - %s", buf, 0xCu);
              if (v390[23] < 0)
              {
                operator delete(*v390);
              }
            }

            v96 = v36[1];
            if (v96)
            {
              do
              {
                v97 = v96;
                v96 = *v96;
              }

              while (v96);
            }

            else
            {
              do
              {
                v97 = v36[2];
                v106 = *v97 == v36;
                v36 = v97;
              }

              while (!v106);
            }

            v36 = v97;
            v31 = v358;
            v37 = (v358 + 464);
          }

          while (v97 != v342);
        }

        v98 = *(v31 + 520);
        v99 = v345;
        if (v98 == v336)
        {
LABEL_194:
          v161 = *(v31 + 560);
          v162 = *(v31 + 552);
          while (v161 != v162)
          {
            v161 -= 56;
            std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v161);
          }

          *(v31 + 560) = v162;
          if (*(v31 + 136) == 1)
          {
            v341 = v99;
            buf[0].n128_u64[0] = [(VKRouteInfo *)v341 route];
            *v390 = buf;
            objc = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((v31 + 488), buf[0].n128_u64[0], v390);

            v164 = v358;
            if (objc[5] != objc[6])
            {
              v165 = *(*(*(a2 + 8) + 168) + 32);
              v166 = (*(*v165 + 64))(v165);
              v168 = objc[5];
              v167 = objc[6];
              if (v168 != v167)
              {
                v169 = *v166;
                v344 = v169 | (*(v166 + 1) << 32);
                v350 = v166[1];
                while (1)
                {
                  v170 = v168;
                  v171 = md::RouteRangeAnnotationRequest::etaType(*(v168 + 8));
                  v168 = objc[6];
                  if (v168 != v170)
                  {
                    v172 = 0xAAAAAAAAAAAAAAABLL * ((v168 - v170) >> 4);
                    v168 = v170;
                    do
                    {
                      v173 = v168 + 48 * (v172 >> 1);
                      if (md::RouteRangeAnnotationRequest::etaType(*(v173 + 8)) > v171)
                      {
                        v172 >>= 1;
                      }

                      else
                      {
                        v168 = v173 + 48;
                        v172 += ~(v172 >> 1);
                      }
                    }

                    while (v172);
                  }

                  v175 = (v171 > 4 || ((1 << v171) & 0x19) == 0) && v168 > v170;
                  v164 = v358;
                  if (!v175)
                  {
                    goto LABEL_215;
                  }

                  v176 = 0;
                  v177 = v170 + 24;
                  v178 = v168;
                  while (1)
                  {
                    v179 = [*(v177 - 16) start];
                    v180 = v177 - 24;
                    if (v169 <= v179 && (v169 == v179 ? (v181 = v350 < *(&v179 + 1)) : (v181 = 1), v181) || (v182 = [*(v177 - 16) end], v169 >= v182) && (v169 == v182 ? (v183 = v350 <= *(&v182 + 1)) : (v183 = 0), !v183))
                    {
                      v184 = [*(v177 - 16) start];
                      if (v169 < v184 || v169 == v184 && v350 < *(&v184 + 1))
                      {
                        v185 = geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v358 + 69, (v177 - 24));
                        if (v176)
                        {
                          v186 = 256;
                        }

                        else
                        {
                          v186 = 259;
                        }

                        *v185 = v186;
                        v176 = 1;
                        goto LABEL_240;
                      }

                      *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v358 + 69, (v177 - 24)) = 258;
                      goto LABEL_239;
                    }

                    *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v358 + 69, (v177 - 24)) = 257;
                    if (md::RouteRangeAnnotationRequest::etaType(*(v177 - 16)) == 2)
                    {
                      break;
                    }

LABEL_240:
                    v192 = v177 + 24;
                    v177 += 48;
                    if (v192 == v168)
                    {
                      v180 = v168;
                      goto LABEL_243;
                    }
                  }

                  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*v177);
                  *(v177 + 16) = 0;
                  *(v177 - 8) = v177;
                  *v177 = 0;
                  v187 = [*(v177 - 16) end];
                  *v390 = v169;
                  *&v390[4] = v350;
                  *&v390[8] = v187;
                  md::RouteRangeAnnotationRequest::addAnnotatableSection(v177 - 24, v390);
                  v188 = *(v358 + 3);
                  v189 = [v188 routeInfo];
                  v190 = [v189 route];

                  [v190 distanceFromPoint:v344 toPoint:{objc_msgSend(*(v177 - 16), "end")}];
                  if (v191 < 200.0)
                  {
                    *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v358 + 69, (v177 - 24)) = 258;

LABEL_239:
                    v178 = (v177 - 24);
                    goto LABEL_240;
                  }

LABEL_243:
                  v164 = v358;
                  if (v178 != v168)
                  {
                    *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v358 + 69, v178) = 260;
                  }

                  if (v180 != v168)
                  {
                    v193 = [*(v180 + 8) etaDescription];
                    v194 = [v193 routeEtaType] != 2;

                    v195 = (v180 + 48);
                    v196 = v195 == v168 || v194;
                    v164 = v358;
                    if ((v196 & 1) == 0)
                    {
                      do
                      {
                        *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v358 + 69, v195) = 256;
                        v195 += 6;
                      }

                      while (v195 != v168);
                    }
                  }

LABEL_215:
                  v167 = objc[6];
                  if (v168 == v167)
                  {
                    v168 = objc[5];
                    break;
                  }
                }
              }

              while (v168 != v167)
              {
                *v390 = [*(v168 + 8) start];
                v197 = *(*(*(a2 + 8) + 168) + 32);
                v198 = (*(*v197 + 96))(v197, v390);
                *(geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v164 + 69, v168) + 2) = v198;
                v168 += 48;
              }
            }

            v31 = v358;
          }

          v199 = *v334;
          if (*v334 != v337)
          {
            do
            {
              v200 = GEOGetVectorKitLabelNavEtaLabelerLog();
              if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
              {
                md::RouteRangeAnnotationRequest::to_string(v390, (v199 + 4));
                v201 = (v390[23] & 0x80u) == 0 ? v390 : *v390;
                buf[0].n128_u32[0] = 136315138;
                *(buf[0].n128_u64 + 4) = v201;
                _os_log_impl(&dword_1B2754000, v200, OS_LOG_TYPE_INFO, "RouteRangeAnnotationRequest added - %s", buf, 0xCu);
                if (v390[23] < 0)
                {
                  operator delete(*v390);
                }
              }

              v202 = v199[1];
              if (v202)
              {
                do
                {
                  v203 = v202;
                  v202 = *v202;
                }

                while (v202);
              }

              else
              {
                do
                {
                  v203 = v199[2];
                  v106 = *v203 == v199;
                  v199 = v203;
                }

                while (!v106);
              }

              v199 = v203;
              v31 = v358;
            }

            while (v203 != v337);
          }

          md::LabelNavEtaLabeler::setupRouteLabelingState(v31, a2, v377, v345, 1u, 0, v346);
          v369 = 0u;
          v370 = 0u;
          v367 = 0u;
          v368 = 0u;
          v204 = *(v31 + 24);
          v205 = [v204 alternateRoutes];

          v206 = [v205 countByEnumeratingWithState:&v367 objects:v385 count:16];
          if (v206)
          {
            v207 = *v368;
            do
            {
              for (k = 0; k != v206; ++k)
              {
                if (*v368 != v207)
                {
                  objc_enumerationMutation(v205);
                }

                md::LabelNavEtaLabeler::setupRouteLabelingState(v358, a2, v377, *(*(&v367 + 1) + 8 * k), 0, [*(*(&v367 + 1) + 8 * k) etaComparisionToMain], v346);
              }

              v206 = [v205 countByEnumeratingWithState:&v367 objects:v385 count:16];
            }

            while (v206);
          }

          v209 = CACurrentMediaTime();
          v210 = [(VKRouteInfo *)v345 route];
          v365 = 0u;
          v366 = 0u;
          v363 = 0u;
          v364 = 0u;
          v211 = *(v358 + 3);
          v212 = [v211 alternateRoutes];

          v213 = [v212 countByEnumeratingWithState:&v363 objects:v384 count:16];
          if (v213)
          {
            v214 = *v364;
            do
            {
              for (m = 0; m != v213; ++m)
              {
                if (*v364 != v214)
                {
                  objc_enumerationMutation(v212);
                }

                v216 = *(*(&v363 + 1) + 8 * m);
                if ([v216 hasFocus])
                {
                  v217 = [v216 route];

                  v210 = v217;
                }
              }

              v213 = [v212 countByEnumeratingWithState:&v363 objects:v384 count:16];
            }

            while (v213);
          }

          v218 = v358;
          if (md::LabelNavEtaLabeler::animationCompletionPercentage(v358, v345) >= 1.0)
          {
            v219 = [(VKRouteInfo *)v345 route];
            md::LabelNavEtaLabeler::updateEtaFeature(v358, a2, v377, v345, 1u, v219 == v210, v346, v209);

            v218 = v358;
          }

          v361 = 0u;
          v362 = 0u;
          v359 = 0u;
          v360 = 0u;
          v220 = *(v218 + 3);
          v221 = [v220 alternateRoutes];

          v222 = [v221 countByEnumeratingWithState:&v359 objects:v383 count:16];
          v223 = v358;
          if (v222)
          {
            v224 = *v360;
            do
            {
              for (n = 0; n != v222; ++n)
              {
                if (*v360 != v224)
                {
                  objc_enumerationMutation(v221);
                }

                v226 = *(*(&v359 + 1) + 8 * n);
                if (md::LabelNavEtaLabeler::hasPolylineForRoute(v223, v226))
                {
                  if (md::LabelNavEtaLabeler::animationCompletionPercentage(v223, v226) < 1.0)
                  {
                    continue;
                  }

                  v227 = [(VKRouteInfo *)v226 route];
                  md::LabelNavEtaLabeler::updateEtaFeature(v223, a2, v377, v226, 0, v227 == v210, v346, v209);
                }

                else
                {
                  v227 = [(VKRouteInfo *)v226 route];
                  md::LabelNavEtaLabeler::extinguishLabels(v223, v227);
                }

                v223 = v358;
              }

              v222 = [v221 countByEnumeratingWithState:&v359 objects:v383 count:16];
            }

            while (v222);
          }

          objd = v358 + 705;
          v228 = *(v358 + 705);
          v229 = v345;
          v230 = *(*(a2 + 24) + 32);
          v231 = v229;
          v232 = *(*(*(a2 + 8) + 168) + 32);
          v233 = (*(*v232 + 80))(v232);
          if (v233)
          {
            v234 = v231;
            v237 = *(v233 + 48);
            v236 = v233 + 48;
            v235 = v237;
            if (!v237)
            {
              goto LABEL_307;
            }

            v238 = v236;
            do
            {
              v239 = *(v235 + 32);
              v42 = v239 >= v234;
              v240 = v239 < v234;
              if (v42)
              {
                v238 = v235;
              }

              v235 = *(v235 + 8 * v240);
            }

            while (v235);
            if (v238 != v236 && *(v238 + 32) <= v234)
            {
              v329 = *(*(v238 + 40) + 280);

              if (v230 >= *&v329)
              {
                v241 = v230 <= *(&v329 + 1);
LABEL_309:

                v242 = [(VKRouteInfo *)v231 route];
                v243 = [v242 legs];
                v244 = [v243 count];

                v245 = [*(v358 + 3) alternateRoutes];
                LODWORD(v244) = v244 < 2;
                LOBYTE(v243) = [v245 count] != 0;

                v246 = v244 | v243;
                if (v244)
                {
                  LOBYTE(v247) = 4;
                }

                else
                {
                  LOBYTE(v247) = 3;
                }

                v248 = 1;
                if ((v246 & 1) == 0)
                {
                  v248 = *(v358 + 136) ? 2 : 1;
                  LOBYTE(v247) = *(v358 + 136) ? 5 : 1;
                  if (((*(v358 + 136) | v241) & 1) == 0)
                  {
                    v249 = v231;
                    v250 = [(VKRouteInfo *)v249 route];
                    v251 = *(v358 + 33);
                    if (!v251)
                    {
                      goto LABEL_328;
                    }

                    v252 = (v358 + 264);
                    do
                    {
                      v253 = v251[4];
                      v42 = v253 >= v250;
                      v254 = v253 < v250;
                      if (v42)
                      {
                        v252 = v251;
                      }

                      v251 = v251[v254];
                    }

                    while (v251);
                    if (v252 != (v358 + 264) && v250 >= v252[4])
                    {

                      v330 = md::LabelNavEtaLabeler::routeLabelStatesForRouteInfo(v358, v249);
                      v331 = v252[5];
                      if (v331 == v252[6])
                      {
                        v248 = 2;
                        LOBYTE(v247) = 2;
                      }

                      else
                      {
                        v332 = v330;
                        do
                        {
                          if (md::RouteRangeAnnotationRequest::etaType(*(v331 + 8)) == 3 && !*(v331 + 56))
                          {
                            for (ii = *v332; ii != v332[1]; ii += 384)
                            {
                              if (md::RouteRangeAnnotationRequest::operator==(v331, ii))
                              {
                                if (ii != v332[1] && *(ii + 128) != -1)
                                {
                                  LOBYTE(v247) = 2;
                                  v248 = 1;
                                  goto LABEL_329;
                                }

                                break;
                              }
                            }
                          }

                          v331 += 72;
                          v248 = 2;
                          LOBYTE(v247) = 2;
                        }

                        while (v331 != v252[6]);
                      }
                    }

                    else
                    {
LABEL_328:

                      v247 = v228 >> 8;
                      v248 = v228;
                    }
                  }
                }

LABEL_329:

                v255 = *(v358 + 705) == v248 && *(v358 + 706) == v247;
                v256 = !v255;
                v351 = v256;
                if (!v255)
                {
                  v257 = GEOGetVectorKitLabelNavEtaLabelerLog();
                  if (os_log_type_enabled(v257, OS_LOG_TYPE_INFO))
                  {
                    if (v248 > 2u)
                    {
                      v258 = "<Invalid>";
                    }

                    else
                    {
                      v258 = (&off_1E7B32F18)[v248];
                    }

                    v259 = *objd;
                    if (v259 > 2)
                    {
                      v260 = "<Invalid>";
                    }

                    else
                    {
                      v260 = (&off_1E7B32F18)[v259];
                    }

                    *v390 = 136315394;
                    *&v390[4] = v258;
                    *&v390[12] = 2080;
                    *&v390[14] = v260;
                    _os_log_impl(&dword_1B2754000, v257, OS_LOG_TYPE_INFO, "EtaLabelingState changed - Mode:%s from:%s", v390, 0x16u);
                  }

                  *(v358 + 705) = v248;
                  *(v358 + 706) = v247;
                }

                if (!v248)
                {
                  goto LABEL_446;
                }

                v261 = *(v358 + 37) - *(v358 + 36);
                if (v261)
                {
                  v262 = 0;
                  v263 = v261 >> 3;
                  v347 = (v358 + 360);
                  if (v263 <= 1)
                  {
                    v264 = 1;
                  }

                  else
                  {
                    v264 = v263;
                  }

                  while (1)
                  {
                    v265 = *(*(v358 + 36) + 8 * v262);
                    v266 = [v265 routeInfo];
                    if (v266 != v231)
                    {
                      goto LABEL_351;
                    }

                    v279 = [v265 displayEtaDescription];
                    v280 = [v279 routeEtaType];
                    if (v280 > 4 || ((1 << v280) & 0x19) == 0)
                    {
                      break;
                    }

                    v282 = [v265 displayEtaDescription];
                    if ([v282 routeEtaType] == 3)
                    {
                      v283 = *objd == 1;

                      if (v283)
                      {
                        goto LABEL_377;
                      }
                    }

                    else
                    {
                    }

                    v266 = [v265 displayEtaDescription];
                    if ([(VKRouteInfo *)v266 routeEtaType])
                    {
                      goto LABEL_351;
                    }

                    v285 = *objd == 2;

                    if (v285)
                    {
LABEL_377:
                      if (v265)
                      {
                        [v265 updateRoadSignWithNavContext:a2 artworkCache:*(v358 + 18)];
                      }

                      else
                      {
                        memset(v390, 0, 24);
                      }

                      if (v351)
                      {
                        v286 = *v347;
                        if (*v347)
                        {
                          v287 = v358 + 360;
                          do
                          {
                            v288 = *(v286 + 32);
                            v42 = v288 >= v265;
                            v289 = v288 < v265;
                            if (v42)
                            {
                              v287 = v286;
                            }

                            v286 = *(v286 + 8 * v289);
                          }

                          while (v286);
                          if (v287 != v347 && v265 >= *(v287 + 32))
                          {
                            std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::erase(v358 + 352, v287);
                          }
                        }

                        v290 = *&v390[8];
                        v291 = v290;
                        if (v290)
                        {
                          v292 = v290;
                        }

                        else
                        {
                          v292 = [v265 label];
                        }

                        v293 = v292;

                        if (*(*[v293 label] + 160))
                        {
                          v294 = *[v293 label];
                          v294[313] = 0;
                          if (v294[312] == 1)
                          {
                            v294[314] = 0;
                          }

                          geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(buf, v293);
                          std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::push_back[abi:nn200100](v358 + 19, buf);
                          buf[0].n128_u64[0] = off_1F2A59C08;
                        }
                      }

                      *v390 = off_1F2A59C08;

                      goto LABEL_372;
                    }

LABEL_352:
                    v268 = v358;
                    v270 = *(v358 + 41);
                    v269 = *(v358 + 42);
                    if (v270 >= v269)
                    {
                      v272 = *(v358 + 40);
                      v273 = (v270 - v272) >> 3;
                      if ((v273 + 1) >> 61)
                      {
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      v274 = v269 - v272;
                      v275 = v274 >> 2;
                      if (v274 >> 2 <= (v273 + 1))
                      {
                        v275 = v273 + 1;
                      }

                      if (v274 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v276 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v276 = v275;
                      }

                      v391 = (v358 + 344);
                      if (v276)
                      {
                        v277 = mdm::zone_mallocator::instance(v267);
                        v278 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<VKLabelNavRouteEta * {__strong}>(v277, v276);
                      }

                      else
                      {
                        v278 = 0;
                      }

                      v284 = &v278[8 * v273];
                      *v390 = v278;
                      *&v390[8] = v284;
                      *&v390[24] = &v278[8 * v276];
                      *v284 = v265;
                      *&v390[16] = v284 + 8;
                      v268 = v358;
                      std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(v358 + 320, v390);
                      v271 = *(v358 + 41);
                      std::__split_buffer<VKLabelNavRouteEta * {__strong},geo::allocator_adapter<VKLabelNavRouteEta * {__strong},mdm::zone_mallocator> &>::~__split_buffer(v390);
                    }

                    else
                    {
                      *v270 = v265;
                      v271 = v270 + 1;
                    }

                    *(v268 + 41) = v271;
LABEL_372:

                    if (++v262 == v264)
                    {
                      goto LABEL_400;
                    }
                  }

LABEL_351:
                  goto LABEL_352;
                }

LABEL_400:
                v295 = *(v358 + 40);
                v296 = *(v358 + 41);
                v297 = v296 - v295;
                if (v296 != v295)
                {
                  v298 = 0;
                  v299 = v297 >> 3;
                  if (v299 <= 1)
                  {
                    v300 = 1;
                  }

                  else
                  {
                    v300 = v299;
                  }

                  v301 = (v358 + 360);
                  do
                  {
                    v302 = *(*(v358 + 40) + 8 * v298);
                    v303 = v302;
                    if (v302)
                    {
                      [v302 updateRoadSignWithNavContext:a2 artworkCache:*(v358 + 18)];
                      if (*&v390[8])
                      {
                        v304 = *&v390[8];
                        v305 = *(*[v304 label] + 313);

                        if (v305)
                        {
                          if ([v303 hasLabel])
                          {
                            v306 = *&v390[8];
                            v307 = *(*[v306 label] + 160) == 0;

                            if (!v307)
                            {
                              v309 = *v301;
                              v310 = (v358 + 360);
                              v311 = (v358 + 360);
                              if (*v301)
                              {
                                while (1)
                                {
                                  while (1)
                                  {
                                    v311 = v309;
                                    v312 = v309[4];
                                    if (v303 >= v312)
                                    {
                                      break;
                                    }

                                    v309 = *v311;
                                    v310 = v311;
                                    if (!*v311)
                                    {
                                      goto LABEL_417;
                                    }
                                  }

                                  if (v312 >= v303)
                                  {
                                    break;
                                  }

                                  v309 = v311[1];
                                  if (!v309)
                                  {
                                    v310 = v311 + 1;
                                    goto LABEL_417;
                                  }
                                }
                              }

                              else
                              {
LABEL_417:
                                v313 = mdm::zone_mallocator::instance(v308);
                                v314 = pthread_rwlock_rdlock((v313 + 32));
                                if (v314)
                                {
                                  geo::read_write_lock::logFailure(v314, "read lock", v315);
                                }

                                v316 = malloc_type_zone_malloc(*v313, 0x40uLL, 0x10E00407B6D3289uLL);
                                atomic_fetch_add((v313 + 24), 1u);
                                geo::read_write_lock::unlock((v313 + 32));
                                v316[4] = v303;
                                geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v316 + 5, v390);
                                *v316 = 0;
                                v316[1] = 0;
                                v316[2] = v311;
                                *v310 = v316;
                                v317 = **(v358 + 44);
                                if (v317)
                                {
                                  *(v358 + 44) = v317;
                                  v316 = *v310;
                                }

                                std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(v358 + 45), v316);
                                ++*(v358 + 47);
                              }
                            }
                          }
                        }

                        else
                        {
                          std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::push_back[abi:nn200100](v358 + 19, v390);
                        }
                      }
                    }

                    else
                    {
                      *&v390[8] = 0;
                      *&v390[16] = 0;
                    }

                    *v390 = off_1F2A59C08;

                    ++v298;
                  }

                  while (v298 != v300);
                  v295 = *(v358 + 40);
                  v296 = *(v358 + 41);
                }

                if (v295 == v296)
                {
LABEL_446:

                  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v375);
                  goto LABEL_447;
                }

                v318 = (v358 + 360);
                while (1)
                {
                  if ([*v295 hasLabelWithAnchor])
                  {
                    v319 = [*v295 label];
                    geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v390, v319);
                    std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::push_back[abi:nn200100](v358 + 19, v390);
                    *v390 = off_1F2A59C08;
                  }

                  v320 = *v318;
                  if (!*v318)
                  {
                    goto LABEL_445;
                  }

                  v321 = *v295;
                  v322 = v358 + 360;
                  do
                  {
                    v323 = *(v320 + 32);
                    v42 = v323 >= v321;
                    v324 = v323 < v321;
                    if (v42)
                    {
                      v322 = v320;
                    }

                    v320 = *(v320 + 8 * v324);
                  }

                  while (v320);
                  if (v322 == v318 || v321 < *(v322 + 32))
                  {
                    goto LABEL_445;
                  }

                  if (![v321 hasLabelWithAnchor])
                  {
                    goto LABEL_444;
                  }

                  v325 = [*v295 label];
                  v326 = *(*[v325 label] + 304);
                  if (!v326)
                  {
                    break;
                  }

                  v327 = *(v326 + 640);
                  if (!v327)
                  {
                    break;
                  }

                  v328 = atomic_load((v327 + 143));

                  if ((v328 & 1) == 0)
                  {
                    goto LABEL_444;
                  }

                  std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::erase(v358 + 352, v322);
LABEL_445:
                  if (++v295 == v296)
                  {
                    goto LABEL_446;
                  }
                }

LABEL_444:
                *(v358 + 252) = 1;
                std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::push_back[abi:nn200100](v358 + 19, v322 + 40);
                goto LABEL_445;
              }
            }

            else
            {
LABEL_307:
            }
          }

          v241 = 0;
          goto LABEL_309;
        }

        while (1)
        {
          v100 = v98[5];
          v338 = v98;
          v343 = v98[6];
          if (v100 != v343)
          {
            break;
          }

LABEL_188:
          v158 = v338;
          v159 = v338[1];
          if (v159)
          {
            do
            {
              v160 = v159;
              v159 = *v159;
            }

            while (v159);
          }

          else
          {
            do
            {
              v160 = v158[2];
              v106 = *v160 == v158;
              v158 = v160;
            }

            while (!v106);
          }

          v98 = v160;
          if (v160 == v336)
          {
            goto LABEL_194;
          }
        }

        v101 = 0;
        v349 = 0;
        while (1)
        {
          objb = v100;
          v103 = v100[3];
          v102 = v100 + 3;
          std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v103);
          *(objb + 16) = v102;
          v104 = (objb + 16);
          *(objb + 40) = 0;
          *v102 = 0;
          v105 = objb;
          if (!md::RouteRangeAnnotationRequest::etaType(*(objb + 8)))
          {
            break;
          }

          v106 = md::RouteRangeAnnotationRequest::etaType(*(objb + 8)) != 4 || v101 == 0;
          if (v106)
          {
            goto LABEL_134;
          }

          v141 = [*(v101 + 8) etaDescription];
          v142 = [*(objb + 8) etaDescription];
          v143 = [v141 compare:v142];

          v31 = v358;
          v99 = v345;
          *v390 = [*(v101 + 8) start];
          v144 = *(*(*(a2 + 8) + 168) + 32);
          v145 = (*(*v144 + 96))(v144, v390);
          v382 = [*(objb + 8) start];
          v146 = *(*(*(a2 + 8) + 168) + 32);
          v147 = (*(*v146 + 96))(v146, &v382);
          v148 = HIBYTE(v145) == HIBYTE(v147);
          if (HIBYTE(v145) == HIBYTE(v147) && (v145 & 0x100) != 0)
          {
            v148 = v145 == v147;
          }

          if (v143 || !v148)
          {
LABEL_134:
            if ((v349 & 1) == 0 || md::RouteRangeAnnotationRequest::etaType(*(objb + 8)) != 4)
            {
              v125 = [*(objb + 8) start];
              v126 = [*(objb + 8) end];
              *v390 = v125;
              *&v390[8] = v126;
              md::RouteRangeAnnotationRequest::addAnnotatableSection(objb, v390);
              goto LABEL_168;
            }

            v349 = 1;
          }

          else
          {
            v149 = [*(objb + 8) start];
            v150 = [*(objb + 8) end];
            *v390 = v149;
            *&v390[8] = v150;
            md::RouteRangeAnnotationRequest::addAnnotatableSection(v101, v390);
          }

LABEL_187:
          v100 = v105 + 6;
          if (v100 == v343)
          {
            goto LABEL_188;
          }
        }

        v107 = md::LabelNavEtaLabeler::annotatableSectionsForRoute(v31, v338[4]);
        v108 = v107 + 1;
        v109 = *v107;
        if (*v107 == v107 + 1)
        {
LABEL_168:
          v127 = v31;
          v128 = md::RouteRangeAnnotationRequest::etaType(*(objb + 8)) == 4;
          v381 = *objb;
          *v390 = &v381;
          v129 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((v127 + 488), v381, v390);
          v130 = v129;
          v132 = v129[6];
          v131 = v129[7];
          if (v132 >= v131)
          {
            v134 = v129[5];
            v135 = 0xAAAAAAAAAAAAAAABLL * ((v132 - v134) >> 4);
            v136 = v135 + 1;
            if (v135 + 1 > 0x555555555555555)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v137 = 0xAAAAAAAAAAAAAAABLL * ((v131 - v134) >> 4);
            if (2 * v137 > v136)
            {
              v136 = 2 * v137;
            }

            if (v137 >= 0x2AAAAAAAAAAAAAALL)
            {
              v138 = 0x555555555555555;
            }

            else
            {
              v138 = v136;
            }

            v391 = v129 + 8;
            if (v138)
            {
              v139 = mdm::zone_mallocator::instance(v129);
              v140 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteRangeAnnotationRequest>(v139, v138);
            }

            else
            {
              v140 = 0;
            }

            v151 = &v140[48 * v135];
            *v390 = v140;
            *&v390[8] = v151;
            *&v390[16] = v151;
            *&v390[24] = &v140[48 * v138];
            v105 = objb;
            *v151 = *objb;
            *(v151 + 1) = *(objb + 8);
            std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v151 + 2, v104);
            *&v390[16] += 48;
            v152 = v130[5];
            v153 = v130[6];
            v154 = *&v390[8] + v152 - v153;
            std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>,md::RouteRangeAnnotationRequest*>(v152, v153, v154);
            v155 = v130[5];
            v130[5] = v154;
            v156 = v130[7];
            v340 = *&v390[16];
            *(v130 + 3) = *&v390[16];
            *&v390[16] = v155;
            *&v390[24] = v156;
            *v390 = v155;
            *&v390[8] = v155;
            std::__split_buffer<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator> &>::~__split_buffer(v390);
            v133 = v340;
          }

          else
          {
            v105 = objb;
            *v132 = *objb;
            v132[1] = *(objb + 8);
            std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v132 + 2, v104);
            v133 = v132 + 6;
            v130[6] = (v132 + 6);
          }

          v130[6] = v133;

          v380 = *v105;
          *v390 = &v380;
          v157 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>(v358 + 61, v380, v390)[6];

          v349 |= v128;
          v101 = v157 - 48;
          v31 = v358;
          v99 = v345;
          goto LABEL_187;
        }

        while (v109[5] == v109[6])
        {
LABEL_158:
          v123 = v109[1];
          if (v123)
          {
            do
            {
              v124 = v123;
              v123 = *v123;
            }

            while (v123);
          }

          else
          {
            do
            {
              v124 = v109[2];
              v106 = *v124 == v109;
              v109 = v124;
            }

            while (!v106);
          }

          v109 = v124;
          if (v124 == v108)
          {
            goto LABEL_168;
          }
        }

        v110 = *(v109 + 8);
        std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::vector[abi:nn200100](buf, (v109 + 5));
        LODWORD(v382) = v110;
        *v390 = &v382;
        v111 = std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v104, v110, v390);
        v112 = v111;
        v113 = (v111 + 5);
        if (v111 + 5 == buf)
        {
LABEL_157:
          std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
          goto LABEL_158;
        }

        v114 = buf[0];
        v115 = buf[0].n128_u64[1] - buf[0].n128_u64[0];
        v116 = v111[7];
        v117 = v111[5];
        if (v116 - v117 >= buf[0].n128_u64[1] - buf[0].n128_u64[0])
        {
          v121 = v111[6];
          v122 = v121 - v117;
          if (v121 - v117 < v115)
          {
            if (v121 != v117)
            {
              memmove(v111[5], buf[0].n128_u64[0], v121 - v117);
              v121 = v112[6];
            }

            if (v114.n128_u64[1] != v114.n128_u64[0] + v122)
            {
              memmove(v121, (v114.n128_u64[0] + v122), v114.n128_u64[1] - (v114.n128_u64[0] + v122));
            }

            v112[6] = (v121 + v114.n128_u64[1] - (v114.n128_u64[0] + v122));
            v31 = v358;
            goto LABEL_157;
          }

          v31 = v358;
          if (buf[0].n128_u64[1] == buf[0].n128_u64[0])
          {
            goto LABEL_150;
          }
        }

        else
        {
          if (v117)
          {
            v111[6] = v117;
            v118 = mdm::zone_mallocator::instance(v111);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ShareSection>(v118, v117);
            v116 = 0;
            *v113 = 0;
            *(v113 + 1) = 0;
            *(v113 + 2) = 0;
          }

          v119 = v115 >> 4;
          if ((v115 >> 4) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v116 >> 3 > v119)
          {
            v119 = v116 >> 3;
          }

          if (v116 >= 0x7FFFFFFFFFFFFFF0)
          {
            v120 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v120 = v119;
          }

          std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__vallocate[abi:nn200100](v113, v120);
          v117 = v112[6];
          if (v114.n128_u64[1] == v114.n128_u64[0])
          {
            goto LABEL_150;
          }
        }

        memmove(v117, v114.n128_u64[0], v114.n128_u64[1] - v114.n128_u64[0]);
LABEL_150:
        v112[6] = (v117 + v115);
        goto LABEL_157;
      }
    }

    v20 = +[VKDebugSettings sharedSettings];
    [v20 setForceEtaLabelPlacement:0];

    *(v4 + 449) = 0;
    v346 = 1;
    goto LABEL_16;
  }

  md::LabelNavEtaLabeler::clearEtaFeatures(v4);
LABEL_447:
}

void sub_1B2B74284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a59);

  _Unwind_Resume(a1);
}

BOOL std::__function::__func<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_1,std::allocator<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_1>,BOOL ()(md::RouteRangeAnnotationRequest const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  return std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v2, v3) != 0;
}

uint64_t geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
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

uint64_t md::PointLabelFeature::hasIdentifier(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 440);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  while (1)
  {
    v4 = *(v2 + 8);
    if (v3 >= v4)
    {
      break;
    }

LABEL_6:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  if (v4 < v3)
  {
    ++v2;
    goto LABEL_6;
  }

  return 1;
}

uint64_t md::PointLabelFeature::updateDynamicStyling(md::PointLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  v5 = *(a3 + 25);
  if (*(this + 98) != v5)
  {
    v6 = *(a2 + 437);
LABEL_6:
    *(this + 98) = v5;
    *(this + 50) = v6;
    v8 = md::PointLabelFeature::didLiveMetadataChange(this, *(a3 + 10));
    if ((*(this + 424) & 1) == 0)
    {
      v7 = 0;
      if (!v8)
      {
        return v7;
      }

      goto LABEL_18;
    }

LABEL_7:
    *(this + 424) = 0;
    if (md::DebugStreamingPOIFeatureID)
    {
      v9 = md::DebugStreamingPOIFeatureID == *(this + 59);
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
      }

      v10 = GEOGetVectorKitStreamingPOILog_log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_DEBUG, "PointLabelFeature::updateDynamicStyling [CrossFade]", v12, 2u);
      }
    }

    v7 = 1;
LABEL_18:
    (*(*this + 552))(this, a2);
    return v7;
  }

  v6 = *(a2 + 437);
  if (*(this + 50) != v6)
  {
    goto LABEL_6;
  }

  if (*(this + 424) == 1)
  {
    goto LABEL_7;
  }

  return 0;
}

void *md::PointLabelFeature::style(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = md::PointLabelFeature::styleEntryForIdentifier(a1, a2);
  if (!v8)
  {
    return a1 + 10;
  }

  v9 = v8;
  v10 = v8 + 16;
  if (a5 && !*(v8 + 16))
  {
    (*(*a1 + 600))(&v15, a1, v7);
    v11 = (*(*a1 + 488))(a1, 0);
    md::LabelManager::styleForFeatureAttributes(&v14, *(a5 + 336), &v15, v11);
    v12 = *(v9 + 24);
    *(v9 + 16) = v14;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }
  }

  return v10;
}

void sub_1B2B74A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelStyle::setVariantStyleType(md::LabelStyle *this, unint64_t a2)
{
  if (*(this + 94) != a2 || __PAIR64__(*(this + 96), *(this + 95)) != __PAIR64__(BYTE2(a2), BYTE1(a2)) || *(this + 97) != BYTE3(a2) || *(this + 98) != BYTE4(a2) || *(this + 99) != BYTE5(a2) || *(this + 100) != BYTE6(a2) || *(this + 101) != HIBYTE(a2))
  {
    *(this + 94) = a2;
    md::LabelStyle::invalidateCachedProperties(this);
  }
}

void md::LabelStyle::setZoom(md::LabelStyle *this, float a2)
{
  if (*(this + 125))
  {
    v4 = fminf(fmaxf(a2, 0.0), 23.0);
LABEL_4:
    if (*(this + 136) != 255)
    {
      v5 = *(this + 26);
      if (vabds_f32(v4, v5) < 0.01 && SLODWORD(v4) == SLODWORD(v5))
      {
        return;
      }
    }

    goto LABEL_9;
  }

  md::LabelStyle::updateZoomInvariantStyles(this);
  v4 = fminf(fmaxf(a2, 0.0), 23.0);
  if (*(this + 125))
  {
    goto LABEL_4;
  }

LABEL_9:
  *(this + 26) = v4;
  if (v4 < 24.0)
  {
    v7 = v4;
    v8 = *this;
    if (*this)
    {
      v9 = *(this + 1);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v15, v8, v9);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      if (*(this + 456) == 1 && *(this + 136) == v7)
      {
        if (v18 == 1)
        {
          md::LabelCoreStyleGroup::update(this + 140, &v15, *(this + 2), *(this + 93), 0, *(this + 26), *(this + 22));
        }

        else
        {
          *(this + 456) = 0;
        }
      }

      else
      {
        *(this + 136) = v7;
        if (v18 == 1)
        {
          *(this + 456) = v18;
          md::LabelCoreStyleGroup::update(this + 140, &v15, *(this + 2), *(this + 93), 1, *(this + 26), *(this + 22));
        }

        else
        {
          *(this + 456) = 0;
        }

        *(this + 457) = 0;
        v11 = *(this + 42);
        v12 = *(this + 43);
        while (v11 != v12)
        {
          *(*(v11 + 8) + 12) = 0;
          v11 += 16;
        }

        *(this + 296) = 0u;
        *(this + 312) = 0u;
        *(this + 264) = 0u;
        *(this + 280) = 0u;
        v13 = *(this + 41);
        *(this + 41) = 0;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        if (*(this + 59) >= 1.0)
        {
          v14 = *(this + 59);
        }

        else
        {
          v14 = 12.0;
        }

        *(this + 16) = ldexp(1.0, v7) * 768.0 / v14;
      }

      if (v18 == 1)
      {
        (*(*v15 + 56))(v15);
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

    else if (*(this + 136) != v7)
    {
      *(this + 136) = v7;
      if (*(this + 59) >= 1.0)
      {
        v10 = *(this + 59);
      }

      else
      {
        v10 = 12.0;
      }

      *(this + 16) = ldexp(1.0, v7) * 768.0 / v10;
    }
  }
}

void sub_1B2B74D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

uint64_t md::LabelNavEtaLabeler::hasPolylineForRoute(md::LabelNavEtaLabeler *this, VKRouteInfo *a2)
{
  v3 = a2;
  for (i = *(this + 53); i; i = *i)
  {
    v5 = i[4];
    if (v5 <= v3)
    {
      if (v5 >= v3)
      {
        v6 = 1;
        goto LABEL_8;
      }

      ++i;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

uint64_t md::LabelStyle::getLabelKnobs(uint64_t result, uint64_t a2, int a3, char a4, double a5, float a6, float a7)
{
  v8 = result;
  v9 = *(result + 180);
  if (!v9)
  {
    v9 = 0x7FFFFFFF;
  }

  *a2 = v9;
  *(a2 + 4) = v9;
  v10 = *(result + 184);
  *(a2 + 20) = v10;
  *(a2 + 33) = *(result + 240);
  LOBYTE(v10) = *(result + 112);
  v11 = v10;
  *(a2 + 24) = v11;
  LOBYTE(a6) = *(result + 113);
  v12 = LODWORD(a6);
  *(a2 + 28) = v12;
  *(a2 + 32) = *(result + 142);
  *(a2 + 8) = v11;
  v13 = *(result + 188);
  *(a2 + 12) = v13;
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (a3 == 1)
      {
        v25 = *(result + 272);
        if (!v25)
        {
          result = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(result);
          v25 = *result;
          *(v8 + 272) = *result;
          v9 = *a2;
        }

        v26 = *(v25 + 60);
        if (v9 >= v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = v9;
        }

        v28 = v9 + v26;
        if (v26 >= 1)
        {
          v28 = v27;
        }

        *(a2 + 4) = v28;
      }

      return result;
    }

    if (a3 == 2)
    {
      goto LABEL_6;
    }

    if (a3 != 3)
    {
      LOBYTE(v13) = *(result + 114);
      LOBYTE(v12) = *(result + 118);
      v18 = LODWORD(v12);
      *&v13 = fminf(v18, v13);
      LOBYTE(v18) = *(result + 115);
      v19 = LODWORD(v18);
      LOBYTE(a7) = *(result + 119);
      v20 = fmaxf(v19, LODWORD(a7));
      if ((a4 & 1) == 0)
      {
        LOBYTE(v19) = *(result + 112);
        v21 = LODWORD(v19);
        *&v13 = fmaxf(*&v13, v21);
        LOBYTE(v21) = *(result + 113);
        v20 = fminf(v20, LODWORD(v21));
      }

      v22 = *(result + 264);
      if (!v22)
      {
        v23 = v13;
        result = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(result);
        LODWORD(v13) = v23;
        v22 = *result;
        *(v8 + 264) = *result;
      }

      v24 = *(v22 + 16);
      *(a2 + 24) = fmaxf(v24, *&v13);
      *(a2 + 28) = v20;
      *(a2 + 8) = v24;
      return result;
    }

LABEL_38:
    LOBYTE(v13) = *(result + 116);
    v14 = v13;
    LOBYTE(v13) = *(result + 117);
    goto LABEL_7;
  }

  if (a3 > 7)
  {
    if (a3 == 8)
    {
      v29 = *(result + 264);
      if (!v29)
      {
        result = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(result);
        v29 = *result;
        *(v8 + 264) = *result;
      }

      *(a2 + 33) = *(v29 + 63);
      LOBYTE(v13) = *(v8 + 120);
      *&v13 = v13;
      *(a2 + 24) = v13;
      *(a2 + 28) = 1132199936;
      goto LABEL_12;
    }

    if (a3 != 9)
    {
      if (a3 == 10)
      {
        *(a2 + 32) = 1;
      }

      return result;
    }

    goto LABEL_38;
  }

  if ((a3 - 5) < 2)
  {
LABEL_6:
    LOBYTE(v13) = *(result + 114);
    v14 = v13;
    LOBYTE(v13) = *(result + 115);
LABEL_7:
    v15 = v13;
    if ((a4 & 1) == 0)
    {
      LOBYTE(v13) = *(result + 112);
      v16 = v13;
      v14 = fmaxf(v14, v16);
      LOBYTE(v16) = *(result + 113);
      v15 = fminf(LODWORD(v16), v15);
    }

    v17 = *(result + 264);
    if (!v17)
    {
      result = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(result);
      v17 = *result;
      *(v8 + 264) = *result;
    }

    LODWORD(v13) = *(v17 + 16);
    *(a2 + 24) = fmaxf(*&v13, v14);
    *(a2 + 28) = v15;
LABEL_12:
    *(a2 + 8) = v13;
    return result;
  }

  if (a3 == 7)
  {
    LOBYTE(v13) = *(result + 118);
    *&v13 = v13;
    LOBYTE(v12) = *(result + 119);
    v30 = LODWORD(v12);
    if ((a4 & 1) == 0)
    {
      LOBYTE(a7) = *(result + 112);
      v31 = LODWORD(a7);
      *&v13 = fmaxf(*&v13, v31);
      LOBYTE(v31) = *(result + 113);
      v30 = fminf(LODWORD(v31), v30);
    }

    v32 = *(result + 264);
    if (!v32)
    {
      v33 = v13;
      v34 = v30;
      result = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(result);
      v30 = v34;
      LODWORD(v13) = v33;
      v32 = *result;
      *(v8 + 264) = *result;
    }

    v35 = *(v32 + 16);
    *(a2 + 24) = fmaxf(*(v32 + 20), *&v13);
    *(a2 + 28) = v30;
    *(a2 + 8) = v35;
  }

  return result;
}

void *std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<md::AvoidanceRectWithPriority*,md::AvoidanceRectWithPriority*>(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 3) >= a4)
  {
    v16 = result[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v9) >> 3) >= a4)
    {
      while (v6 != a3)
      {
        *v9 = *v6;
        v9[1] = *(v6 + 1);
        v9[2] = *(v6 + 2);
        v9[3] = *(v6 + 3);
        v21 = *(v6 + 4);
        *(v9 + 20) = *(v6 + 20);
        v9[4] = v21;
        v6 = (v6 + 24);
        v9 += 6;
      }

      result[1] = v9;
    }

    else
    {
      v17 = (a2 + v16 - v9);
      if (v16 != v9)
      {
        do
        {
          *v9 = *v6;
          v9[1] = *(v6 + 1);
          v9[2] = *(v6 + 2);
          v9[3] = *(v6 + 3);
          v18 = *(v6 + 4);
          *(v9 + 20) = *(v6 + 20);
          v9[4] = v18;
          v6 = (v6 + 24);
          v9 += 6;
        }

        while (v6 != v17);
        v16 = result[1];
      }

      v19 = v16;
      if (v17 != a3)
      {
        v19 = v16;
        do
        {
          v20 = *v17;
          *(v19 + 2) = *(v17 + 2);
          *v19 = v20;
          v19 += 24;
          v17 = (v17 + 24);
        }

        while (v17 != a3);
      }

      result[1] = v19;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      v10 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::AvoidanceRectWithPriority>(v10, v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_26;
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= a4)
    {
      v12 = a4;
    }

    v13 = v11 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v12;
    if (v13 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_26:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = mdm::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::AvoidanceRectWithPriority>(v14, v13);
    *v7 = result;
    v7[1] = result;
    v7[2] = &result[3 * v13];
    while (v6 != a3)
    {
      v15 = *v6;
      result[2] = *(v6 + 2);
      *result = v15;
      result += 3;
      v6 = (v6 + 24);
    }

    v7[1] = result;
  }

  return result;
}

double frustumForScreenRect(uint64_t a1, float32x2_t *a2, double a3, float32x2_t a4, float32x2_t a5)
{
  v5 = 0;
  v44 = *MEMORY[0x1E69E9840];
  v6 = vdiv_f32(0x4000000040000000, a2[133]);
  __asm { FMOV            V5.2S, #-1.0 }

  v12 = vcvtq_f64_f32(vmla_f32(_D5, a4, v6));
  v13 = vcvtq_f64_f32(vmla_f32(_D5, a5, v6));
  v14 = &a2[92];
  v15 = &v31;
  v16 = v14;
  do
  {
    v17 = 0;
    v18 = v16;
    do
    {
      v19 = *v18;
      v18 += 4;
      v15->f64[v17++] = v19;
    }

    while (v17 != 4);
    ++v5;
    v15 += 2;
    ++v16;
  }

  while (v5 != 4);
  v20 = 0;
  v43[8] = vmlsq_lane_f64(v31, v37, v12.f64[0], 0);
  v43[9] = vmlsq_lane_f64(v32, v38, v12.f64[0], 0);
  v43[10] = vmlaq_n_f64(vnegq_f64(v31), v37, v13.f64[0]);
  v43[11] = vmlaq_n_f64(vnegq_f64(v32), v38, v13.f64[0]);
  v43[4] = vmlsq_lane_f64(v33, v37, v12.f64[1], 0);
  v43[5] = vmlsq_lane_f64(v34, v38, v12.f64[1], 0);
  v43[6] = vmlaq_n_f64(vnegq_f64(v33), v37, v13.f64[1]);
  v43[7] = vmlaq_n_f64(vnegq_f64(v34), v38, v13.f64[1]);
  v43[0] = vmlsq_lane_f64(v35, v37, a3, 0);
  v43[1] = vmlsq_lane_f64(v36, v38, a3, 0);
  v43[2] = vsubq_f64(v37, v35);
  v43[3] = vsubq_f64(v38, v36);
  do
  {
    v21 = 0;
    v22 = &v43[2 * v20];
    v23 = *(v22 + 2);
    v39 = *v22;
    v40 = v23;
    v24 = 0.0;
    do
    {
      v24 = v24 + *(&v39 + v21) * *(&v39 + v21);
      v21 += 8;
    }

    while (v21 != 24);
    v25 = 0;
    v26 = 1.0 / sqrt(v24);
    do
    {
      *(&v41 + v25) = *(&v39 + v25) * v26;
      v25 += 8;
    }

    while (v25 != 24);
    v27 = a1 + 32 * v20;
    v28 = v42;
    v29 = *(v22 + 3) * v26;
    *v27 = v41;
    *(v27 + 16) = v28;
    *(v27 + 24) = v29;
    ++v20;
  }

  while (v20 != 6);

  *&result = *&geo::Frustum<double>::calculateCorners(a1, v14, a3);
  return result;
}

void md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustum(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v8 = *(a3 + 8);
  v9 = *a3;
  if (v8 > *a3 || (v10 = *a3, v8 == v9) && (v10 = *(a3 + 8), *(a3 + 12) > *(a3 + 4)))
  {
    if (v9 >= [*(a1 + 8) pointCount] - 1)
    {
      return;
    }

    v10 = *a3;
  }

  v11 = md::RouteCollisionObject<md::MercatorPointSource>::segmentIndexForVertexIndex(a1, v10, 0);
  v12 = v11;
  if (*(a3 + 12) <= 0.0)
  {
    v13 = *(a3 + 8);
  }

  else
  {
    v13 = *(a3 + 8) + 1;
  }

  v14 = v11;
  v15 = md::RouteCollisionObject<md::MercatorPointSource>::segmentIndexForVertexIndex(a1, v13, 1);
  if (v14 < v15 || (v14 == v15 ? (v17 = HIWORD(v12) >= HIWORD(v15)) : (v17 = 1), v16 = v12, !v17))
  {
    v16 = v15;
  }

  v93[0] = md::MercatorPointSource::segmentWorldPoint(*(a1 + 128), v12, 0);
  v93[1] = v18;
  v93[2] = 0;
  md::MercatorPointSource::segmentWorldPoint(*(a1 + 128), v16, 1);
  for (i = 0; i != 192; i += 32)
  {
    v20 = 0;
    v21 = a2 + i;
    v22 = 0.0;
    do
    {
      v22 = v22 + *(v21 + v20 * 8) * *&v93[v20];
      ++v20;
    }

    while (v20 != 3);
    v23 = *(v21 + 24) + v22;
    if (v23 < 0.0)
    {
      break;
    }
  }

  v24 = *(a1 + 72);
  v92[0] = v12;
  v92[1] = v16;
  md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustumEdges(a1, a2, v24, v92, &v94);
  v26 = v94;
  v27 = v95;
  v28 = 126 - 2 * __clz((v95 - v94) >> 3);
  v29 = v95 - v94;
  if (v95 == v94)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,false>(v94, v95, v30, 1, v25);
  if (v29 >= 9)
  {
    v31 = *(v26 + 2);
    if (v31 >= *a3 && (v31 != *a3 || *(v26 + 3) >= *(a3 + 4)))
    {
      goto LABEL_32;
    }

    v29 = v27 - (v26 + 16);
    if (v27 != v26 + 16)
    {
      memmove(v26, v26 + 16, v27 - (v26 + 16));
    }

    v27 -= 16;
    v95 = &v26[v29];
    if (v29 >= 9)
    {
LABEL_32:
      v32 = *&v26[v29 - 16];
      v33 = *(a3 + 8);
      if (v32 > v33 || v32 == v33 && *&v26[v29 - 12] > *(a3 + 12))
      {
        v95 = v27 - 16;
        v27 -= 16;
      }
    }
  }

  if (v27 == v26)
  {
    v34 = v26;
  }

  else
  {
    if (*v26 < *a3 || *v26 == *a3 && *(v26 + 1) < *(a3 + 4))
    {
      *v26 = *a3;
    }

    v35 = *(v27 - 2);
    v36 = *(a3 + 8);
    if (v35 > v36 || v35 == v36 && *(v27 - 1) > *(a3 + 12))
    {
      *(v27 - 1) = *(a3 + 8);
      v26 = v94;
      v27 = v95;
    }

    v34 = v27;
  }

  v37 = (((v34 - v26) >> 3) + 1) >> 1;
  if (v23 < 0.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = v37 + 1;
  }

  std::vector<gm::Range<geo::PolylineCoordinate>>::reserve(a4, v38);
  v39 = v26;
  if (v23 < 0.0)
  {
LABEL_75:
    if (v39 == v27)
    {
      goto LABEL_105;
    }

    v60 = v39 + 8;
    while (1)
    {
      v62 = *(v60 - 2);
      v61 = *(v60 - 1);
      if (v60 == v27)
      {
        break;
      }

      v63 = a4[1];
      v64 = a4[2];
      if (v63 >= v64)
      {
        v67 = (v63 - *a4) >> 4;
        v68 = v67 + 1;
        if ((v67 + 1) >> 60)
        {
          goto LABEL_110;
        }

        v69 = v64 - *a4;
        if (v69 >> 3 > v68)
        {
          v68 = v69 >> 3;
        }

        if (v69 >= 0x7FFFFFFFFFFFFFF0)
        {
          v70 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v70 = v68;
        }

        if (v70)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v70);
        }

        v71 = 16 * v67;
        v72 = *v60;
        *v71 = v62;
        *(v71 + 4) = v61;
        *(v71 + 8) = v72;
        v66 = 16 * v67 + 16;
        v73 = a4[1] - *a4;
        v74 = (16 * v67 - v73);
        memcpy(v74, *a4, v73);
        v75 = *a4;
        *a4 = v74;
        a4[1] = v66;
        a4[2] = 0;
        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        v65 = *v60;
        *v63 = v62;
        *(v63 + 1) = v61;
        *(v63 + 1) = v65;
        v66 = (v63 + 16);
      }

      a4[1] = v66;
      v76 = v60 + 8;
      v60 += 16;
      if (v76 == v27)
      {
        goto LABEL_105;
      }
    }

    v77 = a4[1];
    v78 = a4[2];
    if (v77 < v78)
    {
      v79 = *(a3 + 8);
      *v77 = v62;
      v77[1] = v61;
      *(v77 + 1) = v79;
      v46 = (v77 + 4);
      goto LABEL_104;
    }

    v80 = (v77 - *a4) >> 4;
    v81 = v80 + 1;
    if (!((v80 + 1) >> 60))
    {
      v82 = v78 - *a4;
      if (v82 >> 3 > v81)
      {
        v81 = v82 >> 3;
      }

      if (v82 >= 0x7FFFFFFFFFFFFFF0)
      {
        v83 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v83 = v81;
      }

      if (v83)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v83);
      }

      v84 = 16 * v80;
      v85 = *(a3 + 8);
      *v84 = v62;
      *(v84 + 4) = v61;
      *(v84 + 8) = v85;
      v46 = 16 * v80 + 16;
      v86 = a4[1] - *a4;
      v87 = v84 - v86;
      memcpy((v84 - v86), *a4, v86);
      v88 = *a4;
      *a4 = v87;
      a4[1] = v46;
      a4[2] = 0;
      if (!v88)
      {
        goto LABEL_104;
      }

      goto LABEL_103;
    }

    goto LABEL_110;
  }

  if (v26 != v27)
  {
    v40 = a4[1];
    v41 = a4[2];
    if (v40 >= v41)
    {
      v47 = (v40 - *a4) >> 4;
      v48 = v47 + 1;
      if ((v47 + 1) >> 60)
      {
        goto LABEL_110;
      }

      v49 = v41 - *a4;
      if (v49 >> 3 > v48)
      {
        v48 = v49 >> 3;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF0)
      {
        v50 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v50);
      }

      v55 = (16 * v47);
      v56 = *v26;
      *v55 = *a3;
      v55[1] = v56;
      v43 = 16 * v47 + 16;
      v57 = a4[1] - *a4;
      v58 = 16 * v47 - v57;
      memcpy(v55 - v57, *a4, v57);
      v59 = *a4;
      *a4 = v58;
      a4[1] = v43;
      a4[2] = 0;
      if (v59)
      {
        operator delete(v59);
      }
    }

    else
    {
      v42 = *v26;
      *v40 = *a3;
      *(v40 + 1) = v42;
      v43 = (v40 + 16);
    }

    v39 = v26 + 8;
    a4[1] = v43;
    goto LABEL_75;
  }

  v45 = a4[1];
  v44 = a4[2];
  if (v45 >= v44)
  {
    v51 = (v45 - *a4) >> 4;
    v52 = v51 + 1;
    if (!((v51 + 1) >> 60))
    {
      v53 = v44 - *a4;
      if (v53 >> 3 > v52)
      {
        v52 = v53 >> 3;
      }

      if (v53 >= 0x7FFFFFFFFFFFFFF0)
      {
        v54 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v52;
      }

      if (v54)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v54);
      }

      v89 = (16 * v51);
      *v89 = *a3;
      v46 = 16 * v51 + 16;
      v90 = a4[1] - *a4;
      v91 = v89 - v90;
      memcpy(v89 - v90, *a4, v90);
      v88 = *a4;
      *a4 = v91;
      a4[1] = v46;
      a4[2] = 0;
      if (!v88)
      {
        goto LABEL_104;
      }

LABEL_103:
      operator delete(v88);
      goto LABEL_104;
    }

LABEL_110:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v45 = *a3;
  v46 = (v45 + 16);
LABEL_104:
  a4[1] = v46;
LABEL_105:
  if (v26)
  {
    v95 = v26;
    operator delete(v26);
  }
}

void sub_1B2B75A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

float md::PointLabelFeature::maxZoomRank(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 == 1)
  {
    v3 = *(a1 + 432);
    result = 0.0;
    if (v3 != (a1 + 440))
    {
      do
      {
        v5 = v3[1];
        v6 = v3;
        if (v5)
        {
          do
          {
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = *v7 == v6;
            v6 = v7;
          }

          while (!v8);
        }

        result = fmaxf(result, *(v3 + 34));
        v3 = v7;
      }

      while (v7 != (a1 + 440));
    }
  }

  else
  {
    v9 = *(a1 + 440);
    if (!v9)
    {
      return 252.0;
    }

    v10 = a1 + 440;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= v2;
      v13 = v11 < v2;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 == a1 + 440)
    {
      return 252.0;
    }

    if (v2 < *(v10 + 32))
    {
      return 252.0;
    }

    result = *(v10 + 136);
    if (result == 254.0)
    {
      return 252.0;
    }
  }

  return result;
}

void md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustumEdges(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
LABEL_1:
  if (*a3)
  {
    v23 = *(a3 + 56);
    if (v23)
    {
      for (i = 0; i < v23; ++i)
      {
        v25 = (*(a3 + 64) + 4 * i);
        v26 = *v25;
        v27 = v25[1];
        v28 = *a4;
        if (v28 >= v26 && (v28 != v26 || a4[1] > v27))
        {
          continue;
        }

        v30 = a4[2];
        if (v30 <= v26 && (v30 != v26 || a4[3] < v27))
        {
          continue;
        }

        *&v46 = md::MercatorPointSource::segmentWorldPoint(*(a1 + 128), v26 | (v27 << 16), 0);
        *(&v46 + 1) = v32;
        v47 = 0;
        v33 = md::MercatorPointSource::segmentWorldPoint(*(a1 + 128), v26 | (v27 << 16), 1);
        v34 = 0;
        *&v44 = v33;
        *(&v44 + 1) = v35;
        v45 = 0;
        do
        {
          *(v41 + v34) = *(&v44 + v34) - *(&v46 + v34);
          v34 += 8;
        }

        while (v34 != 24);
        v36 = *&v41[1];
        v37 = v41[0];
        v41[0] = v46;
        *&v41[1] = v47;
        *(&v41[1] + 8) = v37;
        *(&v41[2] + 1) = v36;
        *&v46 = 0;
        *&v44 = 0;
        if (geo::Intersect::internal::intersection<double,std::array<gm::Plane3<double>,6ul>>(a2, v41, 2, &v46, &v44))
        {
          v38 = [*(*(a1 + 48) + 8 * v26) startPointIndex] + v27;
          if (*&v46 > 0.0)
          {
            v39 = *&v46;
            *&v42 = __PAIR64__(LODWORD(v39), v38);
            if (v39 >= 1.0)
            {
              LODWORD(v42) = v38 + vcvtms_u32_f32(v39);
              *(&v42 + 1) = v39 - floorf(v39);
            }

            std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a5, &v42);
          }

          if (*&v44 < 1.0)
          {
            v40 = *&v44;
            *&v42 = __PAIR64__(LODWORD(v40), v38);
            if (v40 >= 1.0)
            {
              LODWORD(v42) = v38 + vcvtms_u32_f32(v40);
              *(&v42 + 1) = v40 - floorf(v40);
            }

            std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a5, &v42);
          }
        }

        v23 = *(a3 + 56);
      }
    }
  }

  else if (gm::Range<md::PointSource::SegmentIndex>::overlapsRange((a3 + 72), a4))
  {
    v10 = 0;
    v11 = 0;
    memset(&v41[1], 0, 32);
    v41[0] = *(a3 + 24);
    *(&v41[1] + 8) = *(a3 + 40);
    while (1)
    {
      v12 = 0;
      v13 = *(a2 + v11 + 16);
      v44 = *(a2 + v11);
      v45 = v13;
      do
      {
        v14 = v41 + v12;
        if (*(&v44 + v12) >= 0.0)
        {
          v14 = &v41[1] + v12 + 8;
        }

        *(&v46 + v12) = *v14;
        v12 += 8;
      }

      while (v12 != 24);
      v15 = 0;
      v42 = v46;
      v43 = v47;
      v16 = 0.0;
      do
      {
        v16 = v16 + *(a2 + v11 + v15) * *(&v42 + v15);
        v15 += 8;
      }

      while (v15 != 24);
      v17 = *(a2 + v11 + 24);
      if (v17 + v16 < 0.0)
      {
        break;
      }

      for (j = 0; j != 24; j += 8)
      {
        *(&v46 + j) = -*(a2 + v11 + j);
      }

      v19 = 0;
      v44 = v46;
      v45 = v47;
      do
      {
        v20 = v41 + v19;
        if (*(&v44 + v19) >= 0.0)
        {
          v20 = &v41[1] + v19 + 8;
        }

        *(&v46 + v19) = *v20;
        v19 += 8;
      }

      while (v19 != 24);
      v21 = 0;
      v22 = 0.0;
      do
      {
        v22 = v22 + *(a2 + v11 + v21) * *(&v46 + v21);
        v21 += 8;
      }

      while (v21 != 24);
      if (v17 + v22 >= 0.0)
      {
        ++v10;
      }

      v11 += 32;
      if (v11 == 192)
      {
        if (v10 == 6)
        {
          return;
        }

        md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustumEdges(a1, a2, *(a3 + 8), a4, a5);
        a3 = *(a3 + 16);
        goto LABEL_1;
      }
    }
  }
}

void *std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t non-virtual thunk tomd::MapNavLabeler::isNavHighZoomActive(md::MapNavLabeler *this)
{
  result = (*(*(this - 1) + 360))();
  if (result)
  {
    return *(this + 123) == 1;
  }

  return result;
}

void md::CaptionedIconLabelPart::updateWithStyle(md::CaptionedIconLabelPart *this, md::LabelManager *a2)
{
  md::CompositeLabelPart::updateWithStyle(this, a2);
  v5 = *(this + 4);
  if (*(this + 926) == 1)
  {
    v6 = *v5;
    v7 = *(*v5 + 272);
    if (!v7)
    {
      v8 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v5);
      v7 = *v8;
      *(v6 + 272) = *v8;
      v6 = *v5;
    }

    v9 = *(v6 + 246);
    if (v9 != *(this + 425))
    {
      *(this + 425) = v9;
      if (*(this + 921) == 1 && *(this + 955) == 1)
      {
        md::CaptionedIconLabelPart::initAlternatePlacements(this);
        md::CaptionedIconLabelPart::updateSnapToDefaultPlacement(this);
        v6 = *v5;
      }
    }

    v10 = *(v6 + 244);
    *(this + 845) = v10;
    if (v10 >= 8)
    {
      v11 = 0;
    }

    else
    {
      v11 = 32 * v10;
    }

    *(this + 846) = v11;
    v12 = *(v6 + 249);
    if (v12 != *(this + 852))
    {
      *(this + 852) = v12;
    }

    *(this + 957) = *(v6 + 143);
    v13 = *(v6 + 296);
    if (!v13)
    {
      v14 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v6, 0);
      v13 = *v14;
      *(v6 + 296) = *v14;
    }

    v4.i32[0] = *(v13 + 36);
    v15 = vdupq_lane_s32(v4, 0).u64[0];
    v16 = vmulq_n_f32(*(v7 + 24), *v4.i32);
    *(this + 632) = vuzp1q_s32(vextq_s8(v16, v16, 0xCuLL), v16);
    *(this + 81) = vrev64_s32(vmul_f32(*(v7 + 52), v15));
    *(this + 794) = 0;
    if (*(this + 925) == 1)
    {
      v17 = (*(***(this + 72) + 208))(**(this + 72));
    }

    else
    {
      v17 = 0;
    }

    v18 = *(*v5 + 145);
    *(this + 945) = v18;
    if (v18 >= v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      v20 = 0;
      v21 = this + 792;
      v22 = 361;
      do
      {
        v23 = *v5;
        if (v20 >= *(*v5 + 145))
        {
          goto LABEL_29;
        }

        if ((*(v23 + 457) & 1) == 0)
        {
          md::LabelStyle::prepareAlternateStyles(*v5);
        }

        if (*(v23 + v22 - 1))
        {
          v24 = *(v23 + v22);
          v21[v20] = v24;
          if ((*(this + 794) & 1) == 0 && v24 != 1)
          {
            *(this + 794) = 1;
            *(this + 795) = v20;
          }
        }

        else
        {
LABEL_29:
          v21[v20] = 0;
        }

        ++v20;
        v22 += 16;
      }

      while (v19 != v20);
    }
  }

  if (!*(this + 946))
  {
    v25 = *(*v5 + 241);
    v26 = 2;
    if (v25 > 1)
    {
      if (v25 != 3)
      {
        if (v25 != 2)
        {
          goto LABEL_43;
        }

        if (*(a2 + 3650))
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }
      }
    }

    else if (*(*v5 + 241))
    {
      if (v25 != 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v26 = 3;
    }

    *(this + 947) = v26;
  }

LABEL_43:
  if (*(a2 + 3665) == 1 && *(*(a2 + 53) + 32) >= *(a2 + 918))
  {
    *(this + 947) = 1;
  }
}

void md::CompositeLabelPart::updateWithStyle(md::CompositeLabelPart *this, md::LabelManager *a2)
{
  v3 = *(this + 73);
  v4 = *(this + 72);
  if (v4 == v3)
  {
    v6 = *(**(this + 4) + 172);
  }

  else
  {
    v6 = -3.4028e38;
    do
    {
      v7 = *v4++;
      (*(*v7 + 72))(v7, a2);
      v6 = fmaxf(v6, (*(*v7 + 248))(v7));
    }

    while (v4 != v3);
  }

  *(this + 42) = v6;
}

uint64_t *md::ImageLabelPart::updateWithStyle(md::ImageLabelPart *this, md::LabelManager *a2)
{
  v4 = *(this + 4);
  v5 = *v4;
  v6 = *(*v4 + 296);
  if (!v6)
  {
    v7 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v4, 0);
    v6 = *v7;
    *(v5 + 296) = *v7;
    v5 = *v4;
  }

  *(this + 143) = (*(*this + 912))(this, v5);
  if (*(this + 632) == 1)
  {
    v8 = *(v6 + 16);
  }

  else
  {
    v8 = 1.0;
  }

  *(this + 144) = v8;
  *(this + 145) = *(v6 + 20);
  v9 = *v4;
  if (*(*(a2 + 53) + 10))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = *(v9 + 243);
    if (v10 >= 5)
    {
      LOBYTE(v10) = 0;
    }
  }

  *(this + 592) = v10;
  result = (*(*this + 904))(this, v9);
  *(this + 594) = result;
  v12 = *(v6 + 8);
  if (v12 != *(this + 155))
  {
    *(this + 155) = v12;
    *(this + 314) = 257;
  }

  v13 = *v4;
  v14 = *(*v4 + 296);
  if (!v14)
  {
    result = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v4, 0);
    v14 = *result;
    *(v13 + 296) = *result;
    v13 = *v4;
  }

  if (*(v14 + 12) != *(this + 156))
  {
    v15 = *(v13 + 296);
    if (!v15)
    {
      result = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v13, 0);
      v15 = *result;
      *(v13 + 296) = *result;
      v13 = *v4;
    }

    *(this + 156) = *(v15 + 12);
    *(this + 314) = 257;
  }

  v16 = *(v13 + 296);
  if (!v16)
  {
    result = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v13, 0);
    v16 = *result;
    *(v13 + 296) = *result;
    v13 = *v4;
  }

  if (*(v16 + 95) != *(this + 631))
  {
    v17 = *(v13 + 296);
    if (!v17)
    {
      result = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v13, 0);
      v17 = *result;
      *(v13 + 296) = *result;
      v13 = *v4;
    }

    *(this + 631) = *(v17 + 95);
    *(this + 314) = 257;
  }

  v18 = *(v13 + 16) + 20 * *(v13 + 93);
  v19 = *(this + 562);
  switch(v19)
  {
    case 2:
      v20 = *(v18 + 16);
      goto LABEL_27;
    case 3:
      v21 = 1.0;
      break;
    case 10:
      v22 = *(v13 + 312);
      if (v22)
      {
        v23 = fminf(*(v22 + 40), *(v18 + 8));
      }

      else
      {
        result = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(v13);
        v24 = *result;
        *(v13 + 312) = *result;
        v25 = *v4;
        v22 = *(*v4 + 312);
        v23 = fminf(*(v24 + 40), *(v18 + 8));
        if (!v22)
        {
          result = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(*v4);
          v22 = *result;
          *(v25 + 312) = *result;
        }
      }

      v21 = *(v22 + 36) * v23;
      break;
    default:
      v20 = *(v18 + 8);
LABEL_27:
      v21 = fminf(*(v6 + 40), v20) * *(v6 + 36);
      break;
  }

  if (v21 != *(this + 147))
  {
    *(this + 147) = v21;
    *(this + 628) = 1;
  }

  return result;
}

uint64_t md::PointIconLabelPart::updateWithStyle(md::PointIconLabelPart *this, md::LabelManager *a2)
{
  md::ImageLabelPart::updateWithStyle(this, a2);
  result = *(this + 105);
  if (result)
  {
    v4 = *(*result + 72);

    return v4();
  }

  return result;
}

float md::ImageLabelPart::styleBrightness(md::ImageLabelPart *this, const md::LabelStyle *a2)
{
  v2 = *(a2 + 37);
  if (!v2)
  {
    v4 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2, 0);
    v2 = *v4;
    *(a2 + 37) = *v4;
  }

  return *(v2 + 28);
}

void md::LabelNavEtaLabeler::extractAndSortAnnotations(uint64_t a1, void *a2, uint64_t a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x5012000000;
  v30 = __Block_byref_object_copy__59;
  v31 = __Block_byref_object_dispose__60;
  v32 = "";
  memset(v33, 0, 24);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3321888768;
  v22[2] = ___ZN2md18LabelNavEtaLabeler25extractAndSortAnnotationsEP11VKRouteInfoNSt3__18functionIFbRKNS_27RouteRangeAnnotationRequestEEEE_block_invoke;
  v22[3] = &unk_1F29F0E00;
  v25 = a1;
  v6 = v5;
  v23 = v6;
  std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::__value_func[abi:nn200100](v26, a3);
  v24 = &v27;
  [v6 visitAnnotations:v22];
  v7 = v28[6];
  v8 = v28[7];
  v9 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,false>(v7, v8, v10, 1);
  v11 = v28;
  v19 = [v6 route];
  v20 = &v19;
  v12 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((a1 + 520), v19, &v20);
  v13 = v12;
  v14 = v12 + 5;
  v15 = v12[5];
  if (v15)
  {
    v16 = v12[6];
    v17 = v12[5];
    if (v16 != v15)
    {
      do
      {
        v16 -= 48;
        std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v16);
      }

      while (v16 != v15);
      v17 = *v14;
    }

    v13[6] = v15;
    v18 = mdm::zone_mallocator::instance(v12);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteRangeAnnotationRequest>(v18, v17);
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  *(v13 + 5) = *(v11 + 3);
  v13[7] = v11[8];
  v11[6] = 0;
  v11[7] = 0;
  v11[8] = 0;

  std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::~__value_func[abi:nn200100](v26);
  _Block_object_dispose(&v27, 8);
  v21 = v33;
  std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v21);
}

void sub_1B2B76A5C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, id);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::~__value_func[abi:nn200100](v5 + 56);
  _Block_object_dispose(va1, 8);
  std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_0,std::allocator<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_0>,BOOL ()(md::RouteRangeAnnotationRequest const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F10F0;
  a2[1] = v2;
  return result;
}

float md::TextLabelPart::updateWithStyle(md::TextLabelPart *this, md::LabelManager *a2)
{
  v4 = *(this + 4);
  if (*(this + 76))
  {
    v5 = *(*v4 + 16 * (*(this + 880) == 1) + 408);
    if (!v5)
    {
      md::LabelStyle::prepareDisplayTextStyleGroup();
    }

    v6 = *(*v4 + 16 * (*(this + 880) == 1) + 416);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 76) = v5;
    v7 = *(this + 77);
    *(this + 77) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }

  v8 = *v4;
  v9 = *(this + 880) == 1;
  v10 = *v4 + 280;
  if (*(this + 880) == 1)
  {
    v11 = 6;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v10 + 8 * (*(this + 880) == 1));
  if (v12)
  {
    if (vabds_f32(v12[2], *(v8 + 104)) >= 0.01)
    {
      md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(v8, v12, v11);
      v12 = *(v10 + 8 * v9);
    }
  }

  else
  {
    v12 = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(v8, v11);
    *(v10 + 8 * v9) = v12;
  }

  v13 = *v12;
  v14 = *(*v12 + 36);
  v15 = 0;
  *(this + 164) = fminf(fmaxf(*(a2 + 44) * *(*v12 + 32), 0.0), truncf(*(*(*(a2 + 29) + 8) + 176) * *(*(a2 + 29) + 56)));
  *(this + 718) = *(v13 + 16);
  if (*(*(a2 + 53) + 10))
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = *(*v4 + 243);
    if (v16 >= 5)
    {
      LOBYTE(v16) = 0;
    }
  }

  *(this + 705) = v16;
  v17 = truncf(*(*(*(a2 + 29) + 8) + 176) * *(*(a2 + 29) + 56));
  *(this + 165) = fminf(fmaxf(*(a2 + 44) * v14, -v17), v17);
  *(this + 714) = *(v13 + 20);
  *(this + 161) = fminf(fmaxf(*(v13 + 104), 0.0), truncf(*(*(*(a2 + 29) + 8) + 176) * *(*(a2 + 29) + 56)));
  *(this + 710) = *(v13 + 12);
  *(this + 166) = truncf(*(*(*(a2 + 29) + 8) + 176) * *(*(a2 + 29) + 56));
  *(this + 167) = fminf(fmaxf(*(v13 + 40), 0.0), 1.0);
  *(this + 169) = *(v13 + 48);
  *(this + 170) = *(v13 + 56);
  *(this + 171) = *(v13 + 60);
  if (*(this + 888) == 1)
  {
    v15 = *(v13 + 96);
  }

  *(this + 156) = v15;
  *(this + 168) = *(*v4 + 172);
  *(this + 944) = *(v13 + 64);
  (*(*this + 904))(&v20, this);
  *(this + 706) = v20;
  (*(*this + 912))(&v20, this, *(this + 944), v4);
  *(this + 722) = v20;
  if (*(this + 876))
  {
    v18 = (this + 872);
  }

  else
  {
    v18 = (v13 + 100);
  }

  *(this + 157) = fmaxf(*v18, 0.0);
  *(this + 42) = *(this + 168);
  result = *(*v4 + 176);
  *(this + 43) = result;
  return result;
}

void md::HorizontalTextLabelPart::updateWithStyle(uint64_t **this, md::LabelManager *a2)
{
  md::TextLabelPart::updateWithStyle(this, a2);
  v3 = this[4];
  v4 = *v3;
  if (*(*v3 + 236) == 0.0)
  {
    return;
  }

  if (*(this + 562) == 11)
  {
    v5 = *(v4 + 312);
    if (!v5)
    {
      v6 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(*v3);
      v5 = *v6;
      *(v4 + 312) = *v6;
    }

    v7 = 12;
    if (*(this + 1248))
    {
      v7 = 16;
    }

    v8 = *(v5 + v7);
  }

  else
  {
    v13 = *(v4 + 272);
    if (*(this + 1248) == 1)
    {
      if (!v13)
      {
        v21 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
        v13 = *v21;
        *(v4 + 272) = *v21;
      }

      v15 = (v13 + 16);
    }

    else
    {
      if (!v13)
      {
        v14 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
        v13 = *v14;
        *(v4 + 272) = *v14;
      }

      v15 = (v13 + 12);
    }

    v8 = *v15;
    v16 = *v3;
    v5 = *(*v3 + 272);
    if (!v5)
    {
      v17 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
      v18 = *v17;
      *(v16 + 272) = *v17;
      v19 = *v3;
      v5 = *(*v3 + 272);
      v9 = *(v18 + 20);
      if (!v5)
      {
        v20 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
        v5 = *v20;
        *(v19 + 272) = *v20;
      }

      goto LABEL_9;
    }
  }

  v9 = *(v5 + 20);
LABEL_9:
  v10 = *(v5 + 8);
  v11 = *(this + 313);
  if (*(this + 1248))
  {
    v12 = 8;
  }

  else
  {
    v12 = 18;
  }

  if (v11 == 1)
  {
    v11 = v12;
  }

  if (v8 != 1)
  {
    v12 = v8;
  }

  *(this + 313) = v8;
  if (v12 != v11)
  {
    *(this + 1077) = 1;
  }

  if (*(this + 314) != v9)
  {
    *(this + 314) = v9;
    *(this + 1077) = 1;
  }

  if (*(this + 253) != v10)
  {
    *(this + 253) = v10;
    *(this + 1077) = 1;
  }

  *(this + 1079) = *(*v3 + 240);
}

__n128 __Block_byref_object_copy__59(uint64_t a1, __n128 *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2[4].n128_u8[8];
  result = a2[3];
  *(a1 + 48) = result;
  *(a1 + 64) = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void md::HorizontalTextLabelPart::textColorForSource(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  if ((a2 - 5) <= 1u && *(a1 + 1270) == 1 && *(a1 + 1264) == 1)
  {
    *a4 = *(a1 + 1260);
  }

  else
  {
    md::TextLabelPart::textColorForSource(a1, a2, a3, a4);
  }
}

void ___ZN2md18LabelNavEtaLabeler25extractAndSortAnnotationsEP11VKRouteInfoNSt3__18functionIFbRKNS_27RouteRangeAnnotationRequestEEEE_block_invoke(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[6];
  v5 = a1[4];
  v6 = v3;
  *&v41 = [v5 route];
  *(&v41 + 1) = v6;
  v45 = 0;
  v42 = &v43;
  v43 = 0;
  v7 = a1[10];
  if (!v7 || ((*(*v7 + 48))(v7, &v41) & 1) == 0)
  {
    inserted = std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__find_equal<md::RouteRangeAnnotationRequest>(v4 + 576, &v36, &v41);
    v9 = inserted;
    if (!*inserted)
    {
      std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__construct_node<md::RouteRangeAnnotationRequest const&>(&v37, v4 + 576, &v41);
      inserted = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at((v4 + 576), v36, v9, v37);
    }

    v10 = *(a1[5] + 8);
    v11 = v10[7];
    v12 = v10[8];
    if (v11 >= v12)
    {
      v17 = v10[6];
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v17) >> 4);
      v19 = v18 + 1;
      if (v18 + 1 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v17) >> 4);
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x2AAAAAAAAAAAAAALL)
      {
        v21 = 0x555555555555555;
      }

      else
      {
        v21 = v19;
      }

      v40 = v10 + 9;
      if (v21)
      {
        v22 = mdm::zone_mallocator::instance(inserted);
        v23 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteRangeAnnotationRequest>(v22, v21);
      }

      else
      {
        v23 = 0;
      }

      v25 = &v23[6 * v18];
      v37 = v23;
      v38 = v25;
      *(&v39 + 1) = &v23[6 * v21];
      v26 = v41;
      v41 = 0uLL;
      *v25 = v26;
      v25[2] = v42;
      v27 = v43;
      v25[3] = v43;
      v28 = v25 + 3;
      *(v25 + 32) = v44;
      v29 = v45;
      v25[5] = v45;
      if (v29)
      {
        v27[2] = v28;
        v42 = &v43;
        v43 = 0;
        v45 = 0;
      }

      else
      {
        v25[2] = v28;
      }

      *&v39 = v25 + 6;
      v30 = v10[6];
      v31 = v10[7];
      v32 = v25 + v30 - v31;
      std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>,md::RouteRangeAnnotationRequest*>(v30, v31, v32);
      v33 = v10[6];
      v10[6] = v32;
      v34 = v10[8];
      v35 = v39;
      *(v10 + 7) = v39;
      *&v39 = v33;
      *(&v39 + 1) = v34;
      v37 = v33;
      v38 = v33;
      std::__split_buffer<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator> &>::~__split_buffer(&v37);
      v24 = v35;
    }

    else
    {
      v13 = v41;
      v41 = 0uLL;
      *v11 = v13;
      *(v11 + 16) = v42;
      v14 = v43;
      *(v11 + 24) = v43;
      v15 = v11 + 24;
      *(v11 + 32) = v44;
      v16 = v45;
      *(v11 + 40) = v45;
      if (v16)
      {
        v14[2] = v15;
        v42 = &v43;
        v43 = 0;
        v45 = 0;
      }

      else
      {
        *(v11 + 16) = v15;
      }

      v24 = v11 + 48;
    }

    v10[7] = v24;
  }

  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v43);
}

void md::HorizontalTextLabelPart::shadowColorForSource(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 - 5) <= 1 && *(a1 + 1270) == 1 && *(a1 + 1269) == 1)
  {
    *a4 = *(a1 + 1265);
    v6 = *a3;
    v7 = *(a1 + 880) == 1;
    v8 = *a3 + 280;
    if (*(a1 + 880) == 1)
    {
      v9 = 6;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v8 + 8 * (*(a1 + 880) == 1));
    if (v10)
    {
      if (vabds_f32(v10[2], *(v6 + 104)) >= 0.01)
      {
        md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(v6, v10, v9);
        v10 = *(v8 + 8 * v7);
      }
    }

    else
    {
      v10 = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(v6, v9);
      *(v8 + 8 * v7) = v10;
    }

    *(a4 + 3) = *(*v10 + 27);
  }

  else
  {

    md::TextLabelPart::shadowColorForSource(a1, a3, a4);
  }
}

void md::TextLabelPart::shadowColorForSource(uint64_t a1@<X0>, uint64_t *a2@<X2>, _DWORD *a3@<X8>)
{
  v5 = *a2;
  v6 = *(a1 + 880) == 1;
  v7 = *a2 + 280;
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
    if (vabds_f32(v9[2], *(v5 + 104)) >= 0.01)
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

  *a3 = *(*v9 + 24);
}

uint64_t md::RouteRangeAnnotationRequest::etaType(md::RouteRangeAnnotationRequest *this)
{
  v1 = [(md::RouteRangeAnnotationRequest *)this etaDescription];
  v2 = [v1 routeEtaType];

  return v2;
}

BOOL std::__function::__func<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_0,std::allocator<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_0>,BOOL ()(md::RouteRangeAnnotationRequest const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  return std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v2, v3) != 0;
}

uint64_t md::CaptionedIconLabelPart::layoutForStaging(md::CaptionedIconLabelPart *this, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 424);
  v7 = v6[2].u8[2];
  if (*(this + 565) == 1 && *(this + 566) == 1)
  {
    md::CaptionedIconLabelPart::generateStagingModelMatrix(this, *(a2 + 424));
  }

  v8 = *(this + 925);
  if (v8)
  {
    if ((*(this + 926) & 1) != 0 && *(this + 947) != 3)
    {
      v9 = *(this + 72);
      v10 = *v9;
      v11 = v9[v8];
      v99.i64[0] = 0;
      v12 = (*(*v10 + 80))(v10, a2, a3, &v99);
      v13 = v12;
      if (v12 != 37 && v12 != 15)
      {
        return v13;
      }

      v15 = md::CaptionedIconLabelPart::textAlignmentForPosition(this, *(this + 847), *(this + 848));
      (*(*v11 + 360))(v11, 0, v15);
      (*(*v11 + 368))(v11, 0, v15);
      v16 = (*(*v11 + 80))(v11, a2, a3, this + 656);
      if (v13 != 37)
      {
        return v13;
      }

      if (v16 == 37)
      {
        *&v18 = (*(*v10 + 272))(v10);
        v19 = 0;
        v97.i64[0] = __PAIR64__(v20, v18);
        v21 = &v97;
        v97.i64[1] = __PAIR64__(v23, v22);
        v24 = 1;
        v25 = xmmword_1B33B0730;
        while (v97.f32[v19 + 2] >= v21->f32[0])
        {
          v26 = v24;
          v24 = 0;
          v21 = &v97.i32[1];
          v19 = 1;
          if ((v26 & 1) == 0)
          {
            v27 = 0;
            v99 = v97;
            v28 = &v99;
            v29 = 1;
            while (v99.f32[v27 + 2] >= v28->f32[0])
            {
              v30 = v29;
              v29 = 0;
              v28 = &v99.i32[1];
              v27 = 1;
              if ((v30 & 1) == 0)
              {
                v31.i64[0] = *a3;
                v31.i64[1] = *a3;
                v25 = vsubq_f32(v99, v31);
                goto LABEL_24;
              }
            }

            v25 = v99;
            break;
          }
        }

LABEL_24:
        v32 = 0;
        v33 = &v98;
        v98 = v25;
        v34 = v11[3];
        v35 = (v34 + 72);
        v36 = 1;
        do
        {
          if (v98.f32[v32 + 2] < v33->f32[0])
          {
            return 16;
          }

          v37 = v36;
          v36 = 0;
          v33 = &v98.i32[1];
          v32 = 1;
        }

        while ((v37 & 1) != 0);
        v38 = 0;
        v39 = v34 + 80;
        v40 = 1;
        while (*(v39 + 4 * v38) >= v35[v38])
        {
          v41 = v40;
          v40 = 0;
          v38 = 1;
          if ((v41 & 1) == 0)
          {
            if (!*(this + 854))
            {
              v88 = *(this + 853);
              if (!v88)
              {
                v89 = 0;
                v90 = 0;
                v91 = v10[3];
                v92 = (v91 + 72);
                v93 = (v91 + 80);
                do
                {
                  v94 = v93[v90];
                  v95 = v92[v90];
                  if (v89)
                  {
                    break;
                  }

                  v89 = 1;
                  v90 = 1;
                }

                while (v94 >= v95);
                v96 = 0.0;
                if (v94 >= v95)
                {
                  v96 = *v93 - *v92;
                }

                if (v96 <= (*(a2 + 176) * 14.1))
                {
                  v88 = 1;
                }

                else
                {
                  v88 = 2;
                }
              }

              *(this + 854) = v88;
            }

            v42.n128_u64[0] = md::CaptionedIconLabelPart::textOriginOffsetForPosition(this, 0, *(this + 847), *(this + 855), *(this + 848), v98.f32, v35, v11);
            if (v7)
            {
              v46 = v6[58].f32[0];
              v47 = v6[58].f32[1];
              v48 = v47 * v43.n128_f32[0];
              v43.n128_f32[0] = (v46 * v43.n128_f32[0]) + (v47 * v42.n128_f32[0]);
              v42.n128_f32[0] = -(v48 - (v46 * v42.n128_f32[0]));
            }

            v49 = 0;
            v50 = 1;
            v44.n128_u32[0] = 1036831949;
            v45.n128_u32[0] = v42.n128_u32[0];
            while (vabds_f32(v45.n128_f32[0], *(this + v49 + 164)) < 0.1)
            {
              v51 = v50;
              v50 = 0;
              v45.n128_u32[0] = v43.n128_u32[0];
              v49 = 1;
              if ((v51 & 1) == 0)
              {
                goto LABEL_59;
              }
            }

            *(this + 164) = v42.n128_u32[0];
            *(this + 165) = v43.n128_u32[0];
            v42.n128_f64[0] = (*(*v11 + 80))(v11, a2, a3, this + 656);
LABEL_59:
            v82 = (*(*v10 + 256))(v10, v42, v43, v44, v45);
            v83 = (*(*v11 + 256))(v11);
            v84 = 0;
            v99 = *v82;
            v85 = &v99;
            v86 = 1;
            do
            {
              v87 = v86;
              v85->f32[0] = fminf(*(v83 + 4 * v84), v85->f32[0]);
              v99.f32[v84 + 2] = fmaxf(v99.f32[v84 + 2], *(v83 + 8 + 4 * v84));
              v85 = &v99.i32[1];
              v84 = 1;
              v86 = 0;
            }

            while ((v87 & 1) != 0);
            *(this + 152) = v99;
            goto LABEL_41;
          }
        }

        return 14;
      }

      return v16;
    }

    v52 = **(this + 72);
    v99.i64[0] = 0;
    v16 = (*(*v52 + 80))(v52, a2, a3, &v99);
    if (v16 != 37)
    {
      return v16;
    }

    v53 = (*(*v52 + 256))(v52);
    *(this + 38) = *v53;
    *(this + 39) = v53[1];
    *(this + 40) = v53[2];
    *(this + 41) = v53[3];
  }

  else
  {
    if ((*(this + 926) & 1) == 0 || *(this + 947) == 3)
    {
      return 14;
    }

    v54 = *(*(this + 72) + 8 * v8);
    v55 = md::CaptionedIconLabelPart::textAlignmentForPosition(this, *(this + 847), *(this + 848));
    (*(*v54 + 360))(v54, 0, v55);
    (*(*v54 + 368))(v54, 0, v55);
    v99.i64[0] = 0;
    (*(*v54 + 80))(v54, a2, a3, &v99);
    v56 = v54[3];
    v99 = 0uLL;
    LODWORD(v57) = md::CaptionedIconLabelPart::textOriginOffsetForPosition(this, 0, *(this + 847), *(this + 855), *(this + 848), v99.f32, (v56 + 72), v54).u32[0];
    v59 = (this + 656);
    *(this + 164) = v57;
    *(this + 165) = v58;
    if (v7)
    {
      v60 = v6[58];
      v61 = vmul_n_f32(v60, v57);
      v62 = vrev64_s32(vmul_n_f32(v60, v58));
      v60.i32[0] = vsub_f32(v61, v62).u32[0];
      v60.i32[1] = vadd_f32(v61, v62).i32[1];
      *v59 = v60;
    }

    v16 = (*(*v54 + 80))(v54, a2, a3, v59);
    if (v16 != 37)
    {
      return v16;
    }

    v63 = (*(*v54 + 256))(v54);
    *(this + 38) = *v63;
    *(this + 39) = v63[1];
    *(this + 40) = v63[2];
    *(this + 41) = v63[3];
    v64 = (*(*v54 + 272))(v54);
    v98.i64[0] = __PAIR64__(v65, v64.u32[0]);
    v98.i64[1] = __PAIR64__(v67, v66);
    v64.i64[0] = *a3;
    *(this + 166) = gm::Box<float,2>::operator-(&v98, v64);
    *(this + 167) = v68;
    *(this + 168) = v69;
    *(this + 169) = v70;
  }

LABEL_41:
  *(this + 70) = *a3;
  *(this + 71) = *(a3 + 4);
  if (*(this + 960) == 1 && *(this + 926) == 1 && *(this + 947) != 3)
  {
    v71 = *(*(this + 72) + 8 * *(this + 925));
    v72 = *(a2 + 424);
    *&v73 = (*(*v71 + 272))(v71);
    v74 = 0;
    v75 = 0;
    v99.i64[0] = __PAIR64__(v76, v73);
    v77 = &v99;
    v99.i64[1] = __PAIR64__(v79, v78);
    while (v77->f32[0] >= *(v72 + 1136 + 4 * v75))
    {
      v80 = v99.f32[v75 + 2] > *(v72 + 1144 + 4 * v75);
      v81 = v74 | v80;
      v74 = 1;
      v77 = &v99.i32[1];
      v75 = 1;
      if (v81)
      {
        goto LABEL_57;
      }
    }

    v80 = 1;
LABEL_57:
    *(this + 959) = v80;
  }

  else
  {
    *(this + 959) = 0;
  }

  *(this + 23) = *(this + 112);
  return 37;
}

uint64_t md::IconLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  result = (*(*a1 + 352))(a1);
  if (result == 37)
  {
    (*(*a1 + 600))(a1, 0);
    v9 = *(*&a1[4] + 20);
    a1[22].f32[0] = v9;
    a1[14].i32[0] = a3->i32[0];
    a1[14].i32[1] = a3->i32[1];
    a1[33].i8[6] = fabsf(v9 + -1.0) > 0.000001;
    v10 = *(a2 + 424);
    v11 = a1[36].f32[0];
    v12.i32[0] = *(v10 + 464);
    a1[37].i32[0] = v12.i32[0];
    v13 = *(v10 + 468);
    a1[37].f32[1] = v13;
    v14.f32[0] = -v13;
    v14.i32[1] = v12.i32[0];
    v12.f32[1] = v13;
    v15 = vmla_n_f32(vmul_n_f32(v12, v11), v14, a1[36].f32[1]);
    a1[11] = v15;
    a1[33].i8[4] = fabsf(v15.f32[0] + -1.0) > 0.000001;
    a1[38].i32[0] = a4->i32[0];
    a1[38].i32[1] = a4->i32[1];
    v16 = vadd_f32(*a4, *a3);
    a1[35] = v16;
    a1[13] = v16;
    md::CollisionObject::setupShapeData(&a1[9]);
    if (a1[70].i8[5] == 1 && a1[70].i8[6] == 1)
    {
      if (!*&a1[100])
      {
        operator new();
      }

      md::IconLabelPart::generateStagingModelMatrix(a1, v17);
      a1[23] = a1[100];
    }

    return 37;
  }

  return result;
}

uint64_t md::PointIconLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v8 = a1[105];
  if (v8)
  {
    (*(**&v8 + 80))(v8, a2, a3, a4);
  }

  return md::IconLabelPart::layoutForStaging(a1, a2, a3, a4);
}

uint64_t md::IconLabelPart::checkResourcesReady(md::IconLabelPart *this, md::LabelManager *a2)
{
  v2 = *(this + 80);
  if (!v2)
  {
    return 37;
  }

  v3 = atomic_load((v2 + 142));
  if ((v3 & 1) == 0)
  {
    return 15;
  }

  v4 = atomic_load((*(this + 80) + 143));
  if (v4)
  {
    return 37;
  }

  return 16;
}

void md::IconLabelPart::updateCollisionObject(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = a1 + 640;
    v4 = *(a1 + 640);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = atomic_load((v4 + 143));
    if ((v5 & 1) == 0)
    {
      return;
    }

    if (!*v3 || (v6 = atomic_load((*v3 + 143)), (v6 & 1) != 0))
    {
LABEL_6:
      if (*(a1 + 629) == 1)
      {
        *(a1 + 629) = 0;
        v7 = (*(*a1 + 944))(a1, *(a1 + 640));
        *&v7 = 0.5 - (fminf(v10 - v9, v8 - *&v7) * 0.5);
        *(a1 + 168) = vmaxnm_f32(*(a1 + 620), vdup_lane_s32(*&v7, 0));
        *(a1 + 271) = *(a1 + 631);
        *(a1 + 272) = *(a1 + 630);
      }
    }

    if ((*(a1 + 628) & 1) == 0)
    {
      v11 = 0;
      v12 = 1;
      while (*(a1 + 80 + 4 * v11) >= *(a1 + 72 + 4 * v11))
      {
        v13 = v12;
        v12 = 0;
        v11 = 1;
        if ((v13 & 1) == 0)
        {
          return;
        }
      }
    }

    *(a1 + 628) = 0;
    v14 = *(*a1 + 920);

    v14(a1, 0, v3, a1 + 72);
  }
}

uint64_t *std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__construct_node<md::RouteRangeAnnotationRequest const&>(mdm::zone_mallocator *a1, uint64_t a2, id *a3)
{
  v6 = mdm::zone_mallocator::instance(a1);
  v7 = pthread_rwlock_rdlock((v6 + 32));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "read lock", v8);
  }

  v9 = malloc_type_zone_malloc(*v6, 0x50uLL, 0x10A004019D5BD40uLL);
  atomic_fetch_add((v6 + 24), 1u);
  geo::read_write_lock::unlock((v6 + 32));
  *a1 = v9;
  *(a1 + 1) = a2 + 16;
  *(a1 + 2) = 0;
  v9[4] = *a3;
  v9[5] = a3[1];
  result = std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v9 + 6, (a3 + 2));
  *(a1 + 16) = 1;
  return result;
}

void sub_1B2B7838C(_Unwind_Exception *a1)
{
  *v1 = 0;
  v5 = mdm::zone_mallocator::instance(v4);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<md::RouteRangeAnnotationRequest,void *>>(v5, v2);
  _Unwind_Resume(a1);
}

uint64_t md::CaptionedIconLabelPart::textAlignmentForPosition(_BYTE *a1, int a2, int a3)
{
  if (a1[925] & 1) == 0 && (a1[927])
  {
LABEL_10:
    if (a1[928] == 1)
    {
      if (a1[930])
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 0;
  }

  v3 = &horizontalLabelAnchors;
  if (a3 == 4)
  {
    v3 = &diagonalUpLabelAnchors;
  }

  if (a3 == 8)
  {
    v3 = &diagonalDownLabelAnchors;
  }

  v4 = v3[2 * a2];
  if ((v4 - 1) >= 2u)
  {
    if ((a1[927] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_10;
  }

  return v4;
}

uint64_t md::HorizontalTextLabelPart::setTextAlignment(uint64_t result, int a2, int a3)
{
  v3 = 1088;
  if (!a2)
  {
    v3 = 976;
  }

  v4 = result + v3;
  if (*(v4 + 100) != a3)
  {
    *(v4 + 100) = a3;
    *(v4 + 101) = 1;
  }

  return result;
}

void *std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__find_equal<md::RouteRangeAnnotationRequest>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = (v4 + 4);
        if (!md::RouteRangeAnnotationRequest::operator<(a3, v4[4]))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!md::RouteRangeAnnotationRequest::operator<(v8, *a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](uint64_t *inserted, uint64_t a2)
{
  v2 = inserted;
  inserted[1] = 0;
  v3 = inserted + 1;
  *inserted = 0;
  *(inserted + 16) = *(a2 + 16);
  inserted[3] = 0;
  *inserted = (inserted + 1);
  v4 = *a2;
  v5 = (a2 + 8);
  if (*a2 != a2 + 8)
  {
    do
    {
      v6 = v2[1];
      v7 = v3;
      if (*v2 == v3)
      {
        goto LABEL_8;
      }

      v8 = v2[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = *(v8 + 8);
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      v11 = *(v4 + 8);
      if (*(v7 + 8) < v11)
      {
LABEL_8:
        if (v6)
        {
          v12 = v7;
        }

        else
        {
          v12 = v3;
        }

        if (v6)
        {
          v13 = (v7 + 1);
        }

        else
        {
          v13 = v3;
        }
      }

      else
      {
        v12 = v3;
        v13 = v3;
        if (v6)
        {
          v13 = v3;
          while (1)
          {
            while (1)
            {
              v12 = v6;
              v18 = *(v6 + 8);
              if (v11 >= v18)
              {
                break;
              }

              v6 = *v12;
              v13 = v12;
              if (!*v12)
              {
                goto LABEL_15;
              }
            }

            if (v18 >= v11)
            {
              break;
            }

            v13 = v12 + 1;
            v6 = v12[1];
            if (!v6)
            {
              goto LABEL_15;
            }
          }
        }
      }

      if (!*v13)
      {
LABEL_15:
        v14 = mdm::zone_mallocator::instance(inserted);
        v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,void *>>(v14);
        *(v15 + 8) = *(v4 + 8);
        std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::vector[abi:nn200100]((v15 + 5), (v4 + 5));
        inserted = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(v2, v12, v13, v15);
      }

      v16 = v4[1];
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
          v17 = v4[2];
          v10 = *v17 == v4;
          v4 = v17;
        }

        while (!v10);
      }

      v4 = v17;
    }

    while (v17 != v5);
  }

  return v2;
}

uint64_t md::HorizontalTextLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  result = md::TextLabelPart::layoutForStaging(a1, a2, a3, a4);
  if (result == 37)
  {
    v9 = *(*(a1 + 576) + 108);
    if ((*(a1 + 1077) & 1) != 0 || v9 != *(a1 + 1016))
    {
      *(a1 + 1016) = v9;
      *(a1 + 1008) = *(a1 + 1012) * *(a1 + 628);
      if (*(a1 + 1248))
      {
        v10 = 8;
      }

      else
      {
        v10 = 18;
      }

      if (*(a1 + 1252) != 1)
      {
        v10 = *(a1 + 1252);
      }

      *(a1 + 1020) = v10;
      *(a1 + 1024) = *(a1 + 1256);
      md::HorizontalTextLabelPart::placeLines((a1 + 576), a1 + 976, a2, a1 + 72);
      v11 = *(a1 + 1064);
      *(a1 + 688) = v11;
      *(a1 + 692) = *(a1 + 1072) << 16;
      v12 = HIWORD(v11);
    }

    else
    {
      v12 = *(a1 + 1066);
      LOWORD(v11) = *(a1 + 1064);
    }

    if (v12 == v11)
    {
      v16 = 0;
      LODWORD(v17) = 0;
      *(a1 + 1068) = 0;
    }

    else
    {
      v13 = (v12 - v11);
      v14 = *(a1 + 576);
      v15 = v14[4] + 40 * v11;
      v16 = *(v15 + 36) | ((*(v15 + 40 * v13 - 4) + *(v15 + 40 * v13 - 2)) << 16);
      *(a1 + 1068) = v16;
      v17 = (v14[21] - v14[20]) >> 6;
    }

    *(a1 + 1074) = v17;
    *(a1 + 696) = v16;
    *(a1 + 700) = v17 << 16;
    v18 = *(*(a1 + 32) + 20);
    *(a1 + 176) = v18;
    *(a1 + 112) = a3->i32[0];
    *(a1 + 116) = a3->i32[1];
    *(a1 + 270) = fabsf(v18 + -1.0) > 0.000001;
    v19 = *(a2 + 424);
    v20 = *(a1 + 288);
    v21.i32[0] = *(v19 + 464);
    *(a1 + 296) = v21.i32[0];
    v22 = *(v19 + 468);
    v23.f32[0] = -v22;
    v23.i32[1] = v21.i32[0];
    v21.f32[1] = v22;
    *(a1 + 300) = v22;
    v24 = vmla_n_f32(vmul_n_f32(v21, v20), v23, *(a1 + 292));
    *(a1 + 88) = v24;
    *(a1 + 268) = fabsf(v24.f32[0] + -1.0) > 0.000001;
    v25 = vadd_f32(*a4, *a3);
    *(a1 + 280) = v25;
    *(a1 + 104) = v25;
    md::CollisionObject::setupShapeData(a1 + 72);
    if (*(a1 + 565) == 1 && *(a1 + 566) == 1)
    {
      md::TextLabelPart::generateStagingModelMatrix(a1, v26, v27);
      *(a1 + 184) = *(a1 + 864);
    }

    return 37;
  }

  return result;
}

uint64_t md::TextLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (*(a1 + 565) == 1 && *(a1 + 566) == 1 && !*(a1 + 864))
  {
    operator new();
  }

  result = (*(*a1 + 352))(a1, a2);
  if (result == 37)
  {
    *(a1 + 636) = *(a1 + 932);
    *(a1 + 304) = *a4;
    *(a1 + 308) = a4[1];
    v7 = *(*(a1 + 576) + 16);
    v8 = atomic_load((v7 + 130));
    if ((v8 & 1) == 0 || *(v7 + 56) == *(v7 + 64))
    {
      return 12;
    }

    else if (*(*(a1 + 576) + 64) == *(*(a1 + 576) + 72))
    {
      return 13;
    }

    else
    {
      return 37;
    }
  }

  return result;
}

uint64_t md::TextLabelPart::checkResourcesReady(md::TextLabelPart *this, mdm::zone_mallocator **a2)
{
  v2 = *(this + 157);
  if (v2 <= 0.0)
  {
    return 27;
  }

  v5 = *(this + 4);
  v6 = fmaxf(*(v5 + 20) * v2, 0.0);
  *(this + 158) = v6;
  v7 = 628;
  if (*(this + 881))
  {
    v7 = 632;
  }

  v8 = *(this + v7);
  v9 = *(this + 156);
  v10 = v8 != *(this + 159) || v9 != *(this + 160);
  v11 = *(this + 72);
  v12 = *(v5 + 29);
  md::LabelTextDataLoader::loadTextData(a2[34], (v11 + 16), v12, v6);
  v13 = atomic_load((*(v11 + 16) + 130));
  if (v13)
  {
    v14 = md::FontTrackingCache::trackingScale(a2[39], *(v11 + 16), v8, *(*a2[39] + 3419));
    v15 = v8 / *(*(v11 + 16) + 120);
    md::FontGlyphCache::populateQuads(a2[396], v11 + 32, (v11 + 16), v10, v8, v6, v9, v14, v15);
    if (*(v11 + 208) != 1)
    {
LABEL_10:
      *(this + 233) = v8;
      *(this + 160) = v9;
      return 37;
    }

    md::LabelTextDataLoader::loadTextData(a2[34], (v11 + 112), v12, v6);
    v16 = atomic_load((*(v11 + 112) + 130));
    if (v16)
    {
      md::FontGlyphCache::populateQuads(a2[396], v11 + 128, (v11 + 112), v10, v8, v6, v9, v14, v15);
      goto LABEL_10;
    }
  }

  return 11;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>,md::RouteRangeAnnotationRequest*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      std::construct_at[abi:nn200100]<md::RouteRangeAnnotationRequest,md::RouteRangeAnnotationRequest,md::RouteRangeAnnotationRequest*>(a3, v6);
      v6 += 3;
      a3 += 48;
    }

    while (v6 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v5);
      v5 += 48;
    }

    while (v5 != a2);
  }
}

mdm::zone_mallocator *std::__split_buffer<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 48;
    std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(i - 48);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteRangeAnnotationRequest>(v5, v4);
  }

  return a1;
}

uint64_t std::construct_at[abi:nn200100]<md::RouteRangeAnnotationRequest,md::RouteRangeAnnotationRequest,md::RouteRangeAnnotationRequest*>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *result = v2;
  *(result + 16) = *(a2 + 2);
  v3 = *(a2 + 3);
  *(result + 24) = v3;
  v4 = result + 24;
  *(result + 32) = *(a2 + 32);
  v5 = *(a2 + 5);
  *(result + 40) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *(a2 + 2) = a2 + 24;
    *(a2 + 3) = 0;
    *(a2 + 5) = 0;
  }

  else
  {
    *(result + 16) = v4;
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__introsort<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v300 = *MEMORY[0x1E69E9840];
LABEL_2:
  v288 = a2 - 48;
  k = a1;
  while (1)
  {
    a1 = k;
    v8 = a2 - k;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - k) >> 4);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3uLL:
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k, k + 48, v288);
          return;
        case 4uLL:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k, k + 48, k + 96, v288);
          return;
        case 5uLL:
          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k, k + 48, k + 96, k + 144, v288);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v108 = md::RouteRangeAnnotationRequest::etaType(*(a2 - 40));
        v109 = md::RouteRangeAnnotationRequest::etaType(*(k + 8));
        v110 = *(a2 - 40);
        if (v108 == v109)
        {
          v111 = [v110 start];
          v112 = [*(k + 8) start];
          if (v111 >= v112 && (v111 != v112 || *(&v111 + 1) >= *(&v112 + 1)))
          {
            return;
          }
        }

        else
        {
          v262 = md::RouteRangeAnnotationRequest::etaType(v110);
          if (v262 >= md::RouteRangeAnnotationRequest::etaType(*(k + 8)))
          {
            return;
          }
        }

        std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(k, v288);
        return;
      }
    }

    if (v8 <= 1151)
    {
      break;
    }

    if (!a3)
    {
      if (k == a2)
      {
        return;
      }

      v145 = v10 >> 1;
      v146 = v10 >> 1;
      while (1)
      {
        v147 = v146;
        if (v145 < v146)
        {
          goto LABEL_219;
        }

        v148 = (2 * v146) | 1;
        v149 = a1 + 48 * v148;
        if (2 * v146 + 2 < v9)
        {
          v150 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 8));
          v151 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 56));
          v152 = *(v149 + 8);
          if (v150 != v151)
          {
            v156 = md::RouteRangeAnnotationRequest::etaType(v152);
            if (v156 >= md::RouteRangeAnnotationRequest::etaType(*(v149 + 56)))
            {
              goto LABEL_183;
            }

LABEL_182:
            v149 += 48;
            v148 = 2 * v147 + 2;
            goto LABEL_183;
          }

          v153 = [(md::RouteRangeAnnotationRequest *)v152 start];
          v154 = [*(v149 + 56) start];
          if (v153 < v154)
          {
            goto LABEL_182;
          }

          if (v153 == v154 && *(&v153 + 1) < *(&v154 + 1))
          {
            goto LABEL_182;
          }
        }

LABEL_183:
        v157 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 8));
        v158 = a1 + 48 * v147;
        v159 = md::RouteRangeAnnotationRequest::etaType(*(v158 + 8));
        v160 = *(v149 + 8);
        if (v157 != v159)
        {
          v164 = md::RouteRangeAnnotationRequest::etaType(v160);
          if (v164 < md::RouteRangeAnnotationRequest::etaType(*(v158 + 8)))
          {
            goto LABEL_219;
          }

LABEL_192:
          v165 = *v158;
          *v158 = 0;
          *(v158 + 8) = 0;
          *v295 = v165;
          v296 = *(v158 + 16);
          v166 = *(v158 + 24);
          v297 = v166;
          v298 = *(v158 + 32);
          v299 = *(v158 + 40);
          if (v299)
          {
            v166[2] = &v297;
            *(v158 + 16) = v158 + 24;
            *(v158 + 24) = 0;
            *(v158 + 40) = 0;
          }

          else
          {
            v296 = &v297;
          }

          while (2)
          {
            v167 = v149;
            v168 = *v149;
            *v149 = 0;
            v169 = *v158;
            *v158 = v168;

            v170 = *(v149 + 8);
            *(v149 + 8) = 0;
            v171 = *(v158 + 8);
            *(v158 + 8) = v170;

            std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((v158 + 16), (v149 + 16));
            if (v145 < v148)
            {
LABEL_215:
              v188 = v295[0];
              v295[0] = 0;
              v189 = *v167;
              *v167 = v188;

              v190 = v295[1];
              v295[1] = 0;
              v191 = *(v167 + 8);
              *(v167 + 8) = v190;

              v192 = v167 + 24;
              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v167 + 24));
              *(v167 + 16) = v296;
              v193 = v297;
              *(v167 + 24) = v297;
              v194 = v299;
              *(v167 + 40) = v299;
              if (v194)
              {
                v195 = 0;
                v193[2] = v192;
                v296 = &v297;
                v297 = 0;
                v299 = 0;
              }

              else
              {
                *(v167 + 16) = v192;
                v195 = v297;
              }

              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v195);

              goto LABEL_219;
            }

            v172 = 2 * v148;
            v148 = (2 * v148) | 1;
            v149 = a1 + 48 * v148;
            v173 = v172 + 2;
            if (v172 + 2 < v9)
            {
              v174 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 8));
              v175 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 56));
              v176 = *(v149 + 8);
              if (v174 == v175)
              {
                v177 = [v176 start];
                v178 = [*(v149 + 56) start];
                if (v177 >= v178 && (v177 != v178 || *(&v177 + 1) >= *(&v178 + 1)))
                {
                  goto LABEL_206;
                }
              }

              else
              {
                v180 = md::RouteRangeAnnotationRequest::etaType(v176);
                if (v180 >= md::RouteRangeAnnotationRequest::etaType(*(v149 + 56)))
                {
                  goto LABEL_206;
                }
              }

              v149 += 48;
              v148 = v173;
            }

LABEL_206:
            v181 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 8));
            v182 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            v183 = *(v149 + 8);
            if (v181 == v182)
            {
              v184 = [v183 start];
              v185 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
              if (v184 < v185)
              {
                goto LABEL_215;
              }

              v186 = v184 == v185 && *(&v184 + 1) < *(&v185 + 1);
              v158 = v167;
              if (v186)
              {
                goto LABEL_215;
              }
            }

            else
            {
              v187 = md::RouteRangeAnnotationRequest::etaType(v183);
              v158 = v167;
              if (v187 < md::RouteRangeAnnotationRequest::etaType(v295[1]))
              {
                goto LABEL_215;
              }
            }

            continue;
          }
        }

        v161 = [(md::RouteRangeAnnotationRequest *)v160 start];
        v162 = [*(v158 + 8) start];
        if (v161 >= v162 && (v161 != v162 || *(&v161 + 1) >= *(&v162 + 1)))
        {
          goto LABEL_192;
        }

LABEL_219:
        v146 = v147 - 1;
        if (!v147)
        {
          v196 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
          while (1)
          {
            v197 = *a1;
            *a1 = 0;
            *(a1 + 8) = 0;
            v290 = v197;
            v198 = *(a1 + 24);
            v291 = *(a1 + 16);
            v292 = v198;
            v293 = *(a1 + 32);
            v294 = *(a1 + 40);
            if (v294)
            {
              v198[2] = &v292;
              *(a1 + 16) = a1 + 24;
              *(a1 + 24) = 0;
              *(a1 + 40) = 0;
            }

            else
            {
              v291 = &v292;
            }

            v199 = 0;
            v200 = a1;
            do
            {
              v201 = v200 + 48 * v199;
              v202 = v201 + 48;
              v203 = 2 * v199;
              v199 = (2 * v199) | 1;
              v204 = v203 + 2;
              if (v203 + 2 >= v196)
              {
                goto LABEL_235;
              }

              v205 = md::RouteRangeAnnotationRequest::etaType(*(v201 + 56));
              v206 = md::RouteRangeAnnotationRequest::etaType(*(v201 + 104));
              v207 = *(v201 + 56);
              if (v205 != v206)
              {
                v211 = md::RouteRangeAnnotationRequest::etaType(v207);
                if (v211 >= md::RouteRangeAnnotationRequest::etaType(*(v201 + 104)))
                {
                  goto LABEL_235;
                }

LABEL_234:
                v202 = v201 + 96;
                v199 = v204;
                goto LABEL_235;
              }

              v208 = [(md::RouteRangeAnnotationRequest *)v207 start];
              v209 = [*(v201 + 104) start];
              if (v208 < v209)
              {
                goto LABEL_234;
              }

              if (v208 == v209 && *(&v208 + 1) < *(&v209 + 1))
              {
                goto LABEL_234;
              }

LABEL_235:
              v212 = *v202;
              *v202 = 0;
              v213 = *v200;
              *v200 = v212;

              v214 = *(v202 + 8);
              *(v202 + 8) = 0;
              v215 = *(v200 + 8);
              *(v200 + 8) = v214;

              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((v200 + 16), (v202 + 16));
              v200 = v202;
            }

            while (v199 <= ((v196 - 2) >> 1));
            if (v202 == a2 - 48)
            {
              v225 = *v202;
              *v202 = v290;

              v226 = *(v202 + 8);
              *(v202 + 8) = *(&v290 + 1);

              v227 = v202 + 24;
              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v202 + 24));
              *(v202 + 16) = v291;
              v228 = v292;
              *(v202 + 24) = v292;
              v229 = v294;
              *(v202 + 40) = v294;
              if (v229)
              {
                v228[2] = v227;
                v292 = 0;
                v294 = 0;
              }

              else
              {
                *(v202 + 16) = v227;
              }

              goto LABEL_268;
            }

            v216 = *(a2 - 48);
            *(a2 - 48) = 0;
            v217 = *v202;
            *v202 = v216;

            v218 = *(a2 - 40);
            *(a2 - 40) = 0;
            v219 = *(v202 + 8);
            *(v202 + 8) = v218;

            std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((v202 + 16), (a2 - 32));
            v220 = *(a2 - 48);
            *(a2 - 48) = v290;

            v221 = *(a2 - 40);
            *(a2 - 40) = *(&v290 + 1);

            v222 = (a2 - 24);
            std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(a2 - 24));
            *(a2 - 32) = v291;
            v223 = v292;
            *v222 = v292;
            v224 = v294;
            v222[2] = v294;
            if (v224)
            {
              v223[2] = v222;
              v292 = 0;
              v294 = 0;
            }

            else
            {
              *(a2 - 32) = v222;
            }

            v230 = v202 - a1 + 48;
            if (v230 >= 49)
            {
              v231 = (-2 - 0x5555555555555555 * (v230 >> 4)) >> 1;
              v232 = a1 + 48 * v231;
              v233 = md::RouteRangeAnnotationRequest::etaType(*(v232 + 8));
              v234 = md::RouteRangeAnnotationRequest::etaType(*(v202 + 8));
              v235 = *(v232 + 8);
              if (v233 == v234)
              {
                v236 = [v235 start];
                v237 = [*(v202 + 8) start];
                if (v236 >= v237 && (v236 != v237 || *(&v236 + 1) >= *(&v237 + 1)))
                {
                  goto LABEL_268;
                }
              }

              else
              {
                v239 = md::RouteRangeAnnotationRequest::etaType(v235);
                if (v239 >= md::RouteRangeAnnotationRequest::etaType(*(v202 + 8)))
                {
                  goto LABEL_268;
                }
              }

              v240 = *v202;
              *v202 = 0;
              *(v202 + 8) = 0;
              *v295 = v240;
              v241 = *(v202 + 24);
              v296 = *(v202 + 16);
              v297 = v241;
              v298 = *(v202 + 32);
              v299 = *(v202 + 40);
              if (v299)
              {
                v241[2] = &v297;
                *(v202 + 16) = v202 + 24;
                *(v202 + 24) = 0;
                *(v202 + 40) = 0;
              }

              else
              {
                v296 = &v297;
              }

              while (1)
              {
                v242 = v232;
                v243 = *v232;
                *v232 = 0;
                v244 = *v202;
                *v202 = v243;

                v245 = *(v232 + 8);
                *(v232 + 8) = 0;
                v246 = *(v202 + 8);
                *(v202 + 8) = v245;

                std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((v202 + 16), (v232 + 16));
                if (!v231)
                {
                  break;
                }

                v231 = (v231 - 1) >> 1;
                v232 = a1 + 48 * v231;
                v247 = md::RouteRangeAnnotationRequest::etaType(*(v232 + 8));
                v248 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
                v249 = *(v232 + 8);
                if (v247 == v248)
                {
                  v250 = [v249 start];
                  v251 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
                  v202 = v242;
                  if (v250 >= v251)
                  {
                    v252 = v250 == v251 && *(&v250 + 1) < *(&v251 + 1);
                    v202 = v242;
                    if (!v252)
                    {
                      break;
                    }
                  }
                }

                else
                {
                  v253 = md::RouteRangeAnnotationRequest::etaType(v249);
                  v202 = v242;
                  if (v253 >= md::RouteRangeAnnotationRequest::etaType(v295[1]))
                  {
                    break;
                  }
                }
              }

              v254 = v295[0];
              v295[0] = 0;
              v255 = *v242;
              *v242 = v254;

              v256 = v295[1];
              v295[1] = 0;
              v257 = *(v242 + 8);
              *(v242 + 8) = v256;

              v258 = v242 + 24;
              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v242 + 24));
              *(v242 + 16) = v296;
              v259 = v297;
              *(v242 + 24) = v297;
              v260 = v299;
              *(v242 + 40) = v299;
              if (v260)
              {
                v259[2] = v258;
                v259 = 0;
                v296 = &v297;
                v297 = 0;
                v299 = 0;
              }

              else
              {
                *(v242 + 16) = v258;
              }

              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v259);
            }

LABEL_268:
            std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v292);

            a2 -= 48;
            if (v196-- <= 2)
            {
              return;
            }
          }
        }
      }
    }

    v11 = v9 >> 1;
    if (v8 < 0x1801)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k + 48 * (v9 >> 1), k, v288);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k, k + 48 * (v9 >> 1), v288);
      v12 = k + 48 * v11 - 48;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k + 48, v12, a2 - 96);
      v13 = k + 48 * v11;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k + 96, v13 + 48, a2 - 144);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(v12, k + 48 * (v9 >> 1), v13 + 48);
      std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(k, k + 48 * (v9 >> 1));
    }

    --a3;
    if (a4)
    {
      goto LABEL_23;
    }

    v14 = md::RouteRangeAnnotationRequest::etaType(*(k - 40));
    v15 = md::RouteRangeAnnotationRequest::etaType(*(k + 8));
    v16 = *(k - 40);
    if (v14 != v15)
    {
      v21 = md::RouteRangeAnnotationRequest::etaType(v16);
      if (v21 >= md::RouteRangeAnnotationRequest::etaType(*(k + 8)))
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v17 = [(md::RouteRangeAnnotationRequest *)v16 start];
    v18 = [*(a1 + 8) start];
    if (v17 < v18 || v17 == v18 && *(&v17 + 1) < *(&v18 + 1))
    {
LABEL_23:
      v22 = *a1;
      *a1 = 0;
      *(a1 + 8) = 0;
      *v295 = v22;
      v23 = *(a1 + 24);
      v296 = *(a1 + 16);
      v297 = v23;
      v298 = *(a1 + 32);
      v299 = *(a1 + 40);
      if (v299)
      {
        v23[2] = &v297;
        *(a1 + 16) = a1 + 24;
        *(a1 + 24) = 0;
        *(a1 + 40) = 0;
      }

      else
      {
        v296 = &v297;
      }

      for (i = a1 + 48; ; i += 48)
      {
        v25 = md::RouteRangeAnnotationRequest::etaType(*(i + 8));
        v26 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
        v27 = *(i + 8);
        if (v25 == v26)
        {
          break;
        }

        v30 = md::RouteRangeAnnotationRequest::etaType(v27);
        if (v30 >= md::RouteRangeAnnotationRequest::etaType(v295[1]))
        {
          goto LABEL_34;
        }

LABEL_33:
        ;
      }

      v28 = [(md::RouteRangeAnnotationRequest *)v27 start];
      v29 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
      if (v28 < v29 || v28 == v29 && *(&v28 + 1) < *(&v29 + 1))
      {
        goto LABEL_33;
      }

LABEL_34:
      j = a2 - 48;
      if (i - 48 != a1)
      {
        while (1)
        {
          v32 = md::RouteRangeAnnotationRequest::etaType(*(j + 8));
          v33 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
          v34 = *(j + 8);
          if (v32 == v33)
          {
            v35 = [v34 start];
            v36 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
            if (v35 < v36 || v35 == v36 && *(&v35 + 1) < *(&v36 + 1))
            {
              goto LABEL_52;
            }
          }

          else
          {
            v37 = md::RouteRangeAnnotationRequest::etaType(v34);
            if (v37 < md::RouteRangeAnnotationRequest::etaType(v295[1]))
            {
              goto LABEL_52;
            }
          }

          j -= 48;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 48; ; j -= 48)
        {
          v38 = md::RouteRangeAnnotationRequest::etaType(*(j + 8));
          v39 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
          v40 = *(j + 8);
          if (v38 == v39)
          {
            v41 = [v40 start];
            v42 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
            if (v41 < v42 || i >= j || v41 == v42 && *(&v41 + 1) < *(&v42 + 1))
            {
              break;
            }
          }

          else
          {
            v43 = md::RouteRangeAnnotationRequest::etaType(v40);
            v44 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (i >= j || v43 < v44)
            {
              break;
            }
          }
        }
      }

LABEL_52:
      k = i;
      if (i < j)
      {
        k = i;
        v45 = j;
        do
        {
          std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(k, v45);
          do
          {
            while (1)
            {
              k += 48;
              v46 = md::RouteRangeAnnotationRequest::etaType(*(k + 8));
              v47 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
              v48 = *(k + 8);
              if (v46 == v47)
              {
                break;
              }

              v51 = md::RouteRangeAnnotationRequest::etaType(v48);
              if (v51 >= md::RouteRangeAnnotationRequest::etaType(v295[1]))
              {
                goto LABEL_63;
              }
            }

            v49 = [(md::RouteRangeAnnotationRequest *)v48 start];
            v50 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
          }

          while (v49 < v50 || v49 == v50 && *(&v49 + 1) < *(&v50 + 1));
          do
          {
LABEL_63:
            while (1)
            {
              v45 -= 48;
              v53 = md::RouteRangeAnnotationRequest::etaType(*(v45 + 8));
              v54 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
              v55 = *(v45 + 8);
              if (v53 == v54)
              {
                break;
              }

              v52 = md::RouteRangeAnnotationRequest::etaType(v55);
              if (v52 < md::RouteRangeAnnotationRequest::etaType(v295[1]))
              {
                goto LABEL_67;
              }
            }

            v56 = [(md::RouteRangeAnnotationRequest *)v55 start];
            v57 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
          }

          while (v56 >= v57 && (v56 != v57 || *(&v56 + 1) >= *(&v57 + 1)));
LABEL_67:
          ;
        }

        while (k < v45);
      }

      if (k - 48 != a1)
      {
        v58 = *(k - 48);
        *(k - 48) = 0;
        v59 = *a1;
        *a1 = v58;

        v60 = *(k - 40);
        *(k - 40) = 0;
        v61 = *(a1 + 8);
        *(a1 + 8) = v60;

        std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((a1 + 16), (k - 32));
      }

      v62 = v295[0];
      v295[0] = 0;
      v63 = *(k - 48);
      *(k - 48) = v62;

      v64 = v295[1];
      v295[1] = 0;
      v65 = *(k - 40);
      *(k - 40) = v64;

      v66 = k - 24;
      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(k - 24));
      *(k - 32) = v296;
      v67 = v297;
      *(k - 24) = v297;
      v68 = v299;
      *(k - 8) = v299;
      if (v68)
      {
        v69 = 0;
        v67[2] = v66;
        v296 = &v297;
        v297 = 0;
        v299 = 0;
      }

      else
      {
        *(k - 32) = v66;
        v69 = v297;
      }

      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v69);

      if (i < j)
      {
LABEL_76:
        std::__introsort<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,false>(a1, k - 48, a3, a4 & 1);
        goto LABEL_77;
      }

      v70 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*>(a1, k - 48);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*>(k, a2))
      {
        a2 = k - 48;
        if (v70)
        {
          return;
        }

        goto LABEL_2;
      }

      if (!v70)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_20:
      v19 = *a1;
      *a1 = 0;
      *(a1 + 8) = 0;
      *v295 = v19;
      v20 = *(a1 + 24);
      v296 = *(a1 + 16);
      v297 = v20;
      v298 = *(a1 + 32);
      v299 = *(a1 + 40);
      if (v299)
      {
        v20[2] = &v297;
        *(a1 + 16) = a1 + 24;
        *(a1 + 24) = 0;
        *(a1 + 40) = 0;
      }

      else
      {
        v296 = &v297;
      }

      v71 = md::RouteRangeAnnotationRequest::etaType(*(&v19 + 1));
      if (v71 == md::RouteRangeAnnotationRequest::etaType(*(a2 - 40)))
      {
        v72 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
        v73 = [*(a2 - 40) start];
        if (v72 < v73 || v72 == v73 && *(&v72 + 1) < *(&v73 + 1))
        {
LABEL_83:
          for (k = a1 + 48; ; k += 48)
          {
            v74 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v74 == md::RouteRangeAnnotationRequest::etaType(*(k + 8)))
            {
              v75 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
              v76 = [*(k + 8) start];
              if (v75 < v76 || v75 == v76 && *(&v75 + 1) < *(&v76 + 1))
              {
                goto LABEL_101;
              }
            }

            else
            {
              v77 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
              if (v77 < md::RouteRangeAnnotationRequest::etaType(*(k + 8)))
              {
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v78 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
        if (v78 < md::RouteRangeAnnotationRequest::etaType(*(a2 - 40)))
        {
          goto LABEL_83;
        }
      }

      for (k = a1 + 48; k < a2; k += 48)
      {
        v79 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
        if (v79 == md::RouteRangeAnnotationRequest::etaType(*(k + 8)))
        {
          v80 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
          v81 = [*(k + 8) start];
          if (v80 < v81 || v80 == v81 && *(&v80 + 1) < *(&v81 + 1))
          {
            break;
          }
        }

        else
        {
          v82 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
          if (v82 < md::RouteRangeAnnotationRequest::etaType(*(k + 8)))
          {
            break;
          }
        }
      }

LABEL_101:
      m = a2;
      if (k < a2)
      {
        for (m = a2 - 48; ; m -= 48)
        {
          v84 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
          if (v84 == md::RouteRangeAnnotationRequest::etaType(*(m + 8)))
          {
            v85 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
            v86 = [*(m + 8) start];
            if (v85 >= v86 && (v85 != v86 || *(&v85 + 1) >= *(&v86 + 1)))
            {
              break;
            }
          }

          else
          {
            v87 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v87 >= md::RouteRangeAnnotationRequest::etaType(*(m + 8)))
            {
              break;
            }
          }
        }
      }

LABEL_123:
      while (k < m)
      {
        std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(k, m);
        do
        {
          while (1)
          {
            k += 48;
            v88 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v88 == md::RouteRangeAnnotationRequest::etaType(*(k + 8)))
            {
              break;
            }

            v91 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v91 < md::RouteRangeAnnotationRequest::etaType(*(k + 8)))
            {
              goto LABEL_119;
            }
          }

          v89 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
          v90 = [*(k + 8) start];
        }

        while (v89 >= v90 && (v89 != v90 || *(&v89 + 1) >= *(&v90 + 1)));
        do
        {
LABEL_119:
          while (1)
          {
            m -= 48;
            v93 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v93 == md::RouteRangeAnnotationRequest::etaType(*(m + 8)))
            {
              break;
            }

            v92 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v92 >= md::RouteRangeAnnotationRequest::etaType(*(m + 8)))
            {
              goto LABEL_123;
            }
          }

          v94 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
          v95 = [*(m + 8) start];
        }

        while (v94 < v95 || v94 == v95 && *(&v94 + 1) < *(&v95 + 1));
      }

      if (k - 48 != a1)
      {
        v96 = *(k - 48);
        *(k - 48) = 0;
        v97 = *a1;
        *a1 = v96;

        v98 = *(k - 40);
        *(k - 40) = 0;
        v99 = *(a1 + 8);
        *(a1 + 8) = v98;

        std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((a1 + 16), (k - 32));
      }

      v100 = v295[0];
      v295[0] = 0;
      v101 = *(k - 48);
      *(k - 48) = v100;

      v102 = v295[1];
      v295[1] = 0;
      v103 = *(k - 40);
      *(k - 40) = v102;

      v104 = k - 24;
      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(k - 24));
      *(k - 32) = v296;
      v105 = v297;
      *(k - 24) = v297;
      v106 = v299;
      *(k - 8) = v299;
      if (v106)
      {
        v107 = 0;
        v105[2] = v104;
        v296 = &v297;
        v297 = 0;
        v299 = 0;
      }

      else
      {
        *(k - 32) = v104;
        v107 = v297;
      }

      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v107);

LABEL_77:
      a4 = 0;
    }
  }

  if ((a4 & 1) == 0)
  {
    if (k == a2)
    {
      return;
    }

    v263 = k + 48;
    if (k + 48 == a2)
    {
      return;
    }

    while (1)
    {
      v264 = a1;
      a1 = v263;
      v265 = md::RouteRangeAnnotationRequest::etaType(*(v263 + 8));
      if (v265 == md::RouteRangeAnnotationRequest::etaType(*(v264 + 8)))
      {
        v266 = [*(v264 + 56) start];
        v267 = [*(v264 + 8) start];
        if (v266 < v267 || v266 == v267 && *(&v266 + 1) < *(&v267 + 1))
        {
LABEL_281:
          v269 = *a1;
          *a1 = 0;
          v270 = *(v264 + 72);
          *(v264 + 56) = 0;
          *v295 = v269;
          v296 = *(v264 + 64);
          v297 = v270;
          v298 = *(v264 + 80);
          v299 = *(v264 + 88);
          if (v299)
          {
            v270[2] = &v297;
            *(v264 + 64) = v264 + 72;
            *(v264 + 72) = 0;
            *(v264 + 88) = 0;
          }

          else
          {
            v296 = &v297;
          }

          for (n = 0; ; n = v279)
          {
            v272 = *v264;
            *v264 = 0;
            *(v264 + 48) = v272;

            v273 = *(v264 + 8);
            *(v264 + 8) = 0;
            v274 = *(v264 + 56);
            *(v264 + 56) = v273;

            std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((v264 + 64), (v264 + 16));
            v275 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v275 == md::RouteRangeAnnotationRequest::etaType(*(v264 - 40)))
            {
              v276 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
              v277 = [*(v264 - 40) start];
              if (v276 >= v277 && (v276 != v277 || *(&v276 + 1) >= *(&v277 + 1)))
              {
LABEL_292:
                v280 = v295[0];
                v295[0] = 0;
                v281 = *v264;
                *v264 = v280;

                v282 = v295[1];
                v295[1] = 0;
                v283 = *(v264 + 8);
                *(v264 + 8) = v282;

                v284 = v264 + 24;
                std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v264 + 24));
                *(v264 + 16) = v296;
                v285 = v297;
                *(v264 + 24) = v297;
                v286 = v299;
                *(v264 + 40) = v299;
                if (v286)
                {
                  v287 = 0;
                  v285[2] = v284;
                  v296 = &v297;
                  v297 = 0;
                  v299 = 0;
                }

                else
                {
                  *(v264 + 16) = v284;
                  v287 = v297;
                }

                std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v287);

                break;
              }
            }

            else
            {
              v278 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
              if (v278 >= md::RouteRangeAnnotationRequest::etaType(*(v264 - 40)))
              {
                goto LABEL_292;
              }
            }

            v279 = *v264;
            v264 -= 48;
          }
        }
      }

      else
      {
        v268 = md::RouteRangeAnnotationRequest::etaType(*(a1 + 8));
        if (v268 < md::RouteRangeAnnotationRequest::etaType(*(v264 + 8)))
        {
          goto LABEL_281;
        }
      }

      v263 = a1 + 48;
      if (a1 + 48 == a2)
      {
        return;
      }
    }
  }

  if (k == a2)
  {
    return;
  }

  v113 = k + 48;
  if (k + 48 == a2)
  {
    return;
  }

  v114 = 0;
  v115 = k;
  while (2)
  {
    v116 = v115;
    v115 = v113;
    v117 = md::RouteRangeAnnotationRequest::etaType(*(v113 + 8));
    if (v117 == md::RouteRangeAnnotationRequest::etaType(*(v116 + 8)))
    {
      v118 = [*(v116 + 56) start];
      v119 = [*(v116 + 8) start];
      if (v118 >= v119 && (v118 != v119 || *(&v118 + 1) >= *(&v119 + 1)))
      {
        goto LABEL_168;
      }
    }

    else
    {
      v120 = md::RouteRangeAnnotationRequest::etaType(*(v115 + 8));
      if (v120 >= md::RouteRangeAnnotationRequest::etaType(*(v116 + 8)))
      {
        goto LABEL_168;
      }
    }

    v121 = *v115;
    *v115 = 0;
    v122 = *(v116 + 72);
    *(v116 + 56) = 0;
    *v295 = v121;
    v296 = *(v116 + 64);
    v297 = v122;
    v298 = *(v116 + 80);
    v299 = *(v116 + 88);
    if (v299)
    {
      v122[2] = &v297;
      *(v116 + 64) = v116 + 72;
      *(v116 + 72) = 0;
      *(v116 + 88) = 0;
    }

    else
    {
      v296 = &v297;
    }

    v123 = 0;
    v124 = v114;
    while (2)
    {
      v125 = (a1 + v124);
      v126 = *(a1 + v124);
      *v125 = 0;
      v125[6] = v126;

      v127 = *(a1 + v124 + 8);
      v125[1] = 0;
      v128 = *(a1 + v124 + 56);
      v125[7] = v127;

      v129 = (a1 + v124 + 16);
      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((a1 + v124 + 64), v129);
      if (!v124)
      {
        v135 = a1;
        goto LABEL_164;
      }

      v130 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
      v131 = a1 + v124;
      if (v130 != md::RouteRangeAnnotationRequest::etaType(*(a1 + v124 - 40)))
      {
        v134 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
        if (v134 >= md::RouteRangeAnnotationRequest::etaType(*(v131 - 40)))
        {
          break;
        }

        goto LABEL_161;
      }

      v132 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
      v133 = [*(v131 - 40) start];
      if (v132 < v133 || v132 == v133 && *(&v132 + 1) < *(&v133 + 1))
      {
LABEL_161:
        v123 = *v125;
        v124 -= 48;
        continue;
      }

      break;
    }

    v135 = a1 + v124;
    v129 = (v135 + 16);
LABEL_164:
    v136 = v295[0];
    v295[0] = 0;
    v137 = *v135;
    *v135 = v136;

    v138 = v295[1];
    v295[1] = 0;
    v139 = *(v135 + 8);
    *(v135 + 8) = v138;

    v141 = *(v135 + 24);
    v140 = (v135 + 24);
    std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v141);
    *v129 = v296;
    v142 = v297;
    *v140 = v297;
    v143 = v299;
    v140[2] = v299;
    if (v143)
    {
      v144 = 0;
      v142[2] = v140;
      v296 = &v297;
      v297 = 0;
      v299 = 0;
    }

    else
    {
      *v129 = v140;
      v144 = v297;
    }

    std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v144);

LABEL_168:
    v113 = v115 + 48;
    v114 += 48;
    if (v115 + 48 != a2)
    {
      continue;
    }

    break;
  }
}