uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27RenderablePendingProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41B08;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshLayerTypeV>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshLayerTypeV>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[41];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls14MeshLayerTypeVEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A43280;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14MeshLayerTypeVEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A43280;
  a2[1] = v2;
  return result;
}

uint64_t md::CompositeLabeler::render(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  for (i = *(result + 16); v3 != i; result = (*(*v7 + 72))(v7, a2, a3))
  {
    v7 = *v3++;
  }

  return result;
}

uint64_t md::MapStandardLabeler::render(md::MapStandardLabeler *this, const md::LayoutContext *a2, md::LabelRenderModel *a3, __n128 a4)
{
  md::StandardLabeler::render(this, a2, a3, a4);
  v7 = **(*(this + 3) + 112);
  do
  {
    v8 = *v7;
    v7 += 5;
  }

  while (v8 != 0xD369A4D92C8FFE6CLL);
  v10 = *(v7 - 2);
  v9 = *(v7 - 1);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  result = (**v10)(v10);
  v12 = result;
  v13 = atomic_load((*(this + 3) + 3425));
  if (v13)
  {
    result = *(*(this + 50) + 32);
    if (result)
    {
      result = (*(*result + 16))(result, a3 + 8, a2, v12);
      *(this + 369) = 0;
    }
  }

  else if (*(this + 369) == 1)
  {
    *(this + 369) = 0;
    v14 = *(*(this + 50) + 32);
    if (v14)
    {
      v15 = *(*v14 + 24);

      return v15();
    }

    else
    {
      v16 = *(*(this + 3) + 232);
      if (v16[114])
      {
        v17 = *(*(md::FrameGraph::renderQueueForPass(*(v12 + 8), v16[112]) + 16) + 8 * v16[113]);
        result = ggl::CommandBuffer::clearRenderItems(v17);
        *(v17 + 32) = 0;
      }

      else
      {
        v18 = std::__throw_bad_optional_access[abi:nn200100]();
        return md::StandardLabeler::render(v18, v19, v20, v21);
      }
    }
  }

  return result;
}

uint64_t md::StandardLabeler::render(uint64_t this, const md::LayoutContext *a2, md::LabelRenderModel *a3, __n128 a4)
{
  v5 = this;
  if (*(this + 370))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(this + 371) ^ 1;
  }

  v7 = *(this + 104);
  for (i = *(this + 112); v7 != i; v7 += 2)
  {
    v9 = *v7;
    if (*(*v7 + 1152))
    {
      v10 = *(v5 + 24);
      v11 = *(v9 + 34);
      if (v11)
      {
        (*(*v11 + 264))(v11, a2);
      }

      else
      {
        v12 = -8388609;
        a4.n128_u32[0] = 2139095039;
        v13 = 2139095039;
        v14 = -8388609;
      }

      v15 = 0;
      v22 = a4.n128_u32[0];
      v23 = v13;
      v16 = &v22;
      v17 = 1;
      v24[0] = v12;
      v24[1] = v14;
      while (*(v10 + 1528 + 4 * v15) > *v16)
      {
        a4.n128_u32[0] = *(v10 + 1520 + 4 * v15);
        if (a4.n128_f32[0] >= *&v24[v15])
        {
          break;
        }

        v18 = v17;
        v17 = 0;
        v16 = &v23;
        v15 = 1;
        if ((v18 & 1) == 0)
        {
          this = md::Label::pushToRenderModel(*v7, a3, a4);
          if ((v6 & 1) == 0)
          {
            v6 = 0;
            goto LABEL_28;
          }

          v19 = *v7;
          if (*(*v7 + 1339) == 1)
          {
            v20 = *(v19 + 272);
            if (v20)
            {
              this = (*(*v20 + 616))(v20);
              if (this)
              {
                goto LABEL_27;
              }
            }

            this = *(v19 + 296);
            if (this)
            {
              this = (*(*this + 696))(this);
              if (this)
              {
                goto LABEL_27;
              }
            }

            if (*(v19 + 304))
            {
              goto LABEL_27;
            }

            v21 = *(v19 + 1152);
            if (v21 == 1)
            {
              if (*(v19 + 1200) < 1.0)
              {
                goto LABEL_27;
              }

LABEL_20:
              if (*(v19 + 1232) < 1.0)
              {
                goto LABEL_27;
              }
            }

            else
            {
              if (v21 == 3)
              {
                goto LABEL_20;
              }

              if (v21 == 2 && *(v19 + 1200) > 0.0)
              {
LABEL_27:
                v6 = 0;
                *(v5 + 371) = 1;
                goto LABEL_28;
              }
            }

            if (*(v19 + 1264))
            {
              goto LABEL_27;
            }

            v19 = *v7;
          }

          this = md::Label::isAnimating(v19);
          if (this)
          {
            goto LABEL_27;
          }

          v6 = 1;
LABEL_28:
          ++*(v5 + 364);
          goto LABEL_29;
        }
      }

      v9 = *v7;
    }

    this = md::Label::isFading(v9);
    if (this)
    {
      this = *v7;
      if ((*(*v7 + 1164) & 1) == 0)
      {
        a4.n128_u32[0] = 1148846080;
        this = md::Label::animate(this, a4);
      }
    }

LABEL_29:
    ;
  }

  return this;
}

uint64_t md::MapNavLabeler::render(uint64_t result)
{
  v1 = result;
  if (*(result + 824))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(result + 825) ^ 1;
  }

  v3 = *(result + 584);
  for (i = *(result + 592); v3 != i; v3 += 2)
  {
    result = md::NavLabel::pushToRenderModel(*v3);
    if (v2)
    {
      if (*(*v3 + 292) == 1 && (v5 = *(*(*v3 + 304) + 640)) != 0 && (v6 = atomic_load((v5 + 143)), (v6 & 1) != 0))
      {
        v2 = 0;
        *(v1 + 825) = 1;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialRasterMaxIndex>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialRasterMaxIndex>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[420];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22MaterialRasterMaxIndexEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A425C8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22MaterialRasterMaxIndexEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A425C8;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderablePositionScaleInfo>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderablePositionScaleInfo>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[258];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls31MeshRenderablePositionScaleInfoEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42130;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31MeshRenderablePositionScaleInfoEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42130;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::GlyphWithNormalHalo::DefaultPipelineSetup>::pushAll(ggl::zone_mallocator *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 5);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      v5 = v4;
      result = std::vector<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,geo::allocator_adapter<ggl::GlyphWithNormalHalo::DefaultPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v1, &v5);
    }

    while (v2 != v3);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);
  }

  if (v2 != v3)
  {
    *(v1 + 5) = v2;
  }

  return result;
}

uint64_t gdc::Registry::storage<md::LabelRenderDescriptorComponent>(uint64_t a1)
{
  v3 = 0xDBED3D0EB1B02542;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xDBED3D0EB1B02542);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GlobeMatrix>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GlobeMatrix>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[75];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls11GlobeMatrixEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1CFA8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls11GlobeMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1CFA8;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileViewMatrix>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileViewMatrix>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[34];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls14TileViewMatrixEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F6018;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14TileViewMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F6018;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CanEnableTexture>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CanEnableTexture>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[21];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16CanEnableTextureEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A075B0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16CanEnableTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A075B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,false>(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = result;
  while (2)
  {
    v10 = &a2[-1].i64[1];
    v11 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v11;
          v12 = (a2 - v11) >> 3;
          if (v12 <= 2)
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              result = (*a3)(*v10, v11->i64[0]);
              if (result)
              {
                v55 = v11->i64[0];
                v11->i64[0] = *v10;
                goto LABEL_77;
              }

              return result;
            }
          }

          else
          {
            switch(v12)
            {
              case 3:
                v33 = (*a3)(v11->i64[1], v11->i64[0]);
                result = (*a3)(*v10, v11->i64[1]);
                if (v33)
                {
                  v34 = v11->i64[0];
                  if (result)
                  {
                    v11->i64[0] = *v10;
                    *v10 = v34;
                    return result;
                  }

                  v11->i64[0] = v11->i64[1];
                  v11->i64[1] = v34;
                  result = (*a3)(*v10);
                  if (result)
                  {
                    v55 = v11->i64[1];
                    v11->i64[1] = *v10;
LABEL_77:
                    *v10 = v55;
                    return result;
                  }
                }

                else if (result)
                {
                  v44 = v11->i64[1];
                  v11->i64[1] = *v10;
                  *v10 = v44;
                  result = (*a3)(v11->i64[1], v11->i64[0]);
                  if (result)
                  {
                    *v11 = vextq_s8(*v11, *v11, 8uLL);
                  }
                }

                return result;
              case 4:

                return std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(v11, &v11->i64[1], v11[1].i64, v10, a3);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,0>(v11, &v11->i64[1], v11[1].i64, &v11[1].i64[1], v10, a3);
            }
          }

          if (v12 <= 23)
          {
            v35 = &v11->u64[1];
            v37 = v11 == a2 || v35 == a2;
            if (a5)
            {
              if (!v37)
              {
                v45 = 0;
                v46 = v11;
                do
                {
                  v48 = *v46;
                  v47 = v46[1];
                  v46 = v35;
                  result = (*a3)(v47, v48);
                  if (result)
                  {
                    v49 = *v46;
                    v50 = v45;
                    while (1)
                    {
                      *(&v11->i64[1] + v50) = *(v11->i64 + v50);
                      if (!v50)
                      {
                        break;
                      }

                      result = (*a3)(v49, *(&v11->i64[-1] + v50));
                      v50 -= 8;
                      if ((result & 1) == 0)
                      {
                        v51 = (&v11->i64[1] + v50);
                        goto LABEL_64;
                      }
                    }

                    v51 = v11;
LABEL_64:
                    *v51 = v49;
                  }

                  v35 = (v46 + 1);
                  v45 += 8;
                }

                while (v46 + 1 != a2);
              }
            }

            else if (!v37)
            {
              do
              {
                v39 = *v9;
                v38 = v9[1];
                v9 = v35;
                result = (*a3)(v38, v39);
                if (result)
                {
                  v40 = *v9;
                  v41 = v9;
                  do
                  {
                    v42 = v41;
                    v43 = *--v41;
                    *v42 = v43;
                    result = (*a3)(v40, *(v42 - 2));
                  }

                  while ((result & 1) != 0);
                  *v41 = v40;
                }

                v35 = (v9 + 1);
              }

              while (v9 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v11 != a2)
            {

              return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,md::LabelRenderDescriptor**>(v11, a2, a2, a3);
            }

            return result;
          }

          v21 = v12 >> 1;
          v22 = &v11->i64[v12 >> 1];
          v59 = v10;
          if (v12 >= 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,0>(v11, v22, v10, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,0>(&v11->i64[1], v22 - 1, a2[-1].i64, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,0>(v11[1].i64, &v11->i64[v21 + 1], &a2[-2].i64[1], a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,0>(v22 - 1, v22, &v11->i64[v21 + 1], a3);
            v57 = v11->i64[0];
            v11->i64[0] = *v22;
            *v22 = v57;
          }

          else
          {
            v23 = (*a3)(v11->i64[0], *v22);
            v24 = (*a3)(*v10, *v9);
            if (v23)
            {
              v52 = *v22;
              if (v24)
              {
                *v22 = *v10;
                *v10 = v52;
              }

              else
              {
                *v22 = *v9;
                *v9 = v52;
                if ((*a3)(*v10))
                {
                  v56 = *v9;
                  *v9 = *v10;
                  *v10 = v56;
                }
              }
            }

            else if (v24)
            {
              v53 = *v9;
              *v9 = *v10;
              *v10 = v53;
              if ((*a3)(*v9, *v22))
              {
                v54 = *v22;
                *v22 = *v9;
                *v9 = v54;
              }
            }
          }

          --a4;
          v25 = *v9;
          if (a5)
          {
            break;
          }

          if ((*a3)(*(v9 - 1), *v9))
          {
            v25 = *v9;
            break;
          }

          result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelRenderDescriptor **,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*)>(v9, a2->i64, a3);
          v11 = result;
          a5 = 0;
        }

        v58 = a4;
        v26 = v9;
        do
        {
          v14 = v26;
          v27 = v26[1];
          ++v26;
        }

        while (((*a3)(v27, v25) & 1) != 0);
        v19 = a2;
        if (v14 == v9)
        {
          v19 = a2;
          do
          {
            if (v26 >= v19)
            {
              break;
            }

            v20 = v19[-1].i64[1];
            v19 = (v19 - 8);
          }

          while (((*a3)(v20, v25) & 1) == 0);
        }

        else
        {
          do
          {
            v28 = v19[-1].i64[1];
            v19 = (v19 - 8);
          }

          while (!(*a3)(v28, v25));
        }

        v29 = a5;
        v30 = a2;
        if (v26 < v19)
        {
          v15 = v26;
          v17 = v19;
          do
          {
            v13 = *v15;
            *v15 = *v17;
            *v17 = v13;
            do
            {
              v14 = v15;
              v16 = v15[1];
              ++v15;
            }

            while (((*a3)(v16, v25) & 1) != 0);
            do
            {
              v18 = *--v17;
            }

            while (!(*a3)(v18, v25));
          }

          while (v15 < v17);
        }

        if (v14 != v9)
        {
          *v9 = *v14;
        }

        *v14 = v25;
        v31 = v26 >= v19;
        a2 = v30;
        a5 = v29;
        a4 = v58;
        v10 = v59;
        if (v31)
        {
          break;
        }

LABEL_35:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(md::LabelRenderDescriptor const*,md::LabelRenderDescriptor const*),md::LabelRenderDescriptor**,false>(v9, v14, a3, v58, a5 & 1);
        a5 = 0;
        v11 = (v14 + 1);
      }

      v32 = std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**>(v9, v14, a3);
      v11 = (v14 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**>(v14 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v32)
      {
        goto LABEL_35;
      }
    }

    a2 = v14;
    if (!v32)
    {
      continue;
    }

    return result;
  }
}

uint64_t gdc::Registry::storage<md::GlyphMeshDescriptor>(uint64_t a1)
{
  v3 = 0x6080C5D91E489CF6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6080C5D91E489CF6uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::ShadowMeshDescriptor>(uint64_t a1)
{
  v3 = 0xF09D1DB37876C764;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xF09D1DB37876C764);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::IconMeshDescriptor>(uint64_t a1)
{
  v3 = 0xC82ACB2A56DD1709;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xC82ACB2A56DD1709);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrimitiveType>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrimitiveType>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[48];
}

ggl::zone_mallocator *md::LabelRenderer::createRenderItemsForPass(ggl::zone_mallocator *result, unsigned int a2, uint64_t a3)
{
  v3 = result + 32 * a2;
  v5 = *(v3 + 12);
  v4 = *(v3 + 13);
  v6 = v3 + 96;
  if (v4 != v5)
  {
    v8 = result;
    v9 = (result + 1832);
    v10 = (result + 1824);
    do
    {
      v11 = v5;
      v12 = *(*v5 + 1);
      if (v5 != v4)
      {
        v13 = v4 - v5;
        do
        {
          v14 = v13 >> 1;
          v15 = &v5[v13 >> 1];
          v17 = *v15;
          v16 = v15 + 1;
          v13 += ~(v13 >> 1);
          if (*(v17 + 1) < v12)
          {
            v13 = v14;
          }

          else
          {
            v5 = v16;
          }
        }

        while (v13);
      }

      if (v12 <= 1)
      {
        v18 = v10;
        if (v12)
        {
          v18 = v9;
        }
      }

      else
      {
        if ((v12 - 2) >= 2)
        {
          if (v12 != 4)
          {
            continue;
          }

          *(a3 + 25) = 1;
          md::LabelRenderer::renderLayers(v8, v11, v5, a3, v8[230]);
          *(a3 + 25) = 0;
        }

        else
        {
          *(a3 + 24) = 1;
          md::LabelRenderer::renderLayers(v8, v11, v5, a3, v8[230]);
          *(a3 + 24) = 0;
        }

        v18 = v9;
      }

      result = md::LabelRenderer::renderLayers(v8, v11, v5, a3, *v18);
      v4 = *(v6 + 1);
    }

    while (v4 != v5);
  }

  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13PrimitiveTypeEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41FB0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13PrimitiveTypeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41FB0;
  a2[1] = v2;
  return result;
}

void gdc::ComponentStorageSignals::~ComponentStorageSignals(gdc::ComponentStorageSignals *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::clear(this + 8);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::clear(this + 56);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::clear(this + 104);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::~__hash_table(this + 104);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::~__hash_table(this + 56);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::~__hash_table(this + 8);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialVisibilityOptionsHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialVisibilityOptionsHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[237];
}

void gdc::ComponentStorageWrapper<md::IconMeshDescriptor>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::IconMeshDescriptor>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::IconMeshDescriptor>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 40;
        std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls37SharedMaterialVisibilityOptionsHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42FD0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void gdc::ComponentStorageWrapper<md::ShadowMeshDescriptor>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::ShadowMeshDescriptor>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls37SharedMaterialVisibilityOptionsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42FD0;
  a2[1] = v2;
  return result;
}

void std::vector<md::ShadowMeshDescriptor>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 40;
        std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::ShadowMeshData &)>::~__value_func[abi:nn200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void gdc::ComponentStorageWrapper<md::GlyphMeshDescriptor>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::GlyphMeshDescriptor>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void gdc::ComponentStorageWrapper<md::LabelRenderDescriptorComponent>::~ComponentStorageWrapper(uint64_t a1)
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

void std::vector<md::GlyphMeshDescriptor>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 40;
        std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::GlyphMeshData &)>::~__value_func[abi:nn200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarketMask>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarketMask>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[83];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls10MarketMaskEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42818;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10MarketMaskEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42818;
  a2[1] = v2;
  return result;
}

void md::MapNavLabeler::customDebugDraw(md::MapNavLabeler *this, void **a2)
{
  v4 = *(this + 90);
  v5 = +[VKDebugSettings sharedSettings];
  if ([v5 enableEtaLabelDebugging])
  {
    goto LABEL_2;
  }

  v7 = +[VKDebugSettings sharedSettings];
  if ([v7 enableRouteShareSectionDebugging])
  {
LABEL_5:

LABEL_2:
LABEL_3:
    v6 = *(this + 3);
    v10[0] = &unk_1F29EFAF8;
    v10[1] = v6;
    v10[2] = this;
    v10[3] = v6 + 432;
    v10[4] = this + 360;
    md::LabelNavEtaLabeler::debugDraw(*(this + 90), a2, v10);
    return;
  }

  v8 = +[VKDebugSettings sharedSettings];
  if ([v8 enableEtaLabelRectDebugging])
  {

    goto LABEL_5;
  }

  v9 = *(v4 + 448);

  if (v9)
  {
    goto LABEL_3;
  }
}

uint64_t md::CompositeLabeler::customDebugDraw(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = (*(*v5 + 320))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t md::CompositeLabeler::needsDebugDraw(md::CompositeLabeler *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 304))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

uint64_t md::MapNavLabeler::needsDebugDraw(md::MapNavLabeler *this)
{
  if (*(*(this + 9) + 232) & 1) != 0 || (*(*(this + 8) + 273))
  {
    return 1;
  }

  result = (*(*this + 360))(this);
  if (result)
  {
    v3 = *(this + 7);

    return [v3 needsDebugDraw];
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)0>>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)0>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[10];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS9_9SliceTypeE0EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A279E8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::MapStandardLabeler::needsDebugDraw(md::MapStandardLabeler *this)
{
  if (md::StandardLabeler::needsDebugDraw(this))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 452);
  }

  return v2 & 1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE0EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A279E8;
  a2[1] = v2;
  return result;
}

BOOL md::StandardLabeler::needsDebugDraw(md::StandardLabeler *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    v3 = atomic_load((v2 + 1330));
    if ((v3 & 1) == 0)
    {
      (*(*this + 280))(this);
    }
  }

  v4 = *(this + 3);
  return (*(v4 + 3656) & 1) != 0 || (*(v4 + 3663) & 1) != 0 || *(this + 23) || *(this + 25) != 0;
}

uint64_t md::CompositeLabeler::endFrameLayout(uint64_t this, BOOL *a2, BOOL *a3)
{
  v3 = *(this + 8);
  for (i = *(this + 16); v3 != i; this = (*(*v7 + 80))(v7, a2, a3))
  {
    v7 = *v3++;
  }

  return this;
}

uint64_t md::MapNavLabeler::endFrameLayout(uint64_t this, BOOL *a2, BOOL *a3)
{
  *a2 |= *(this + 824);
  *a3 |= *(this + 825);
  return this;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::BoundData>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::BoundData>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[210];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md9BoundDataEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlS2_E_vEERS4_OSE_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A422D0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::StandardLabeler::endFrameLayout(md::StandardLabeler *this, BOOL *a2, BOOL *a3)
{
  if (*(this + 30))
  {
    md::StandardLabeler::monitorSelectedLabelState(this, 0);
  }

  *a2 |= *(this + 370);
  *a3 |= *(this + 371);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md9BoundDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A422D0;
  a2[1] = v2;
  return result;
}

uint64_t std::function<void ()(md::LabelManager *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1B2AC16E0);
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t std::__function::__func<md::LabelsLogic::setDidLayoutCallback(std::function<void ()(md::LabelManager *)>)::$_0,std::allocator<md::LabelsLogic::setDidLayoutCallback(std::function<void ()(md::LabelManager *)>)::$_0>,void ()(md::LabelManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v4 = *a2;
    if (*(*(a1 + 40) + 160) == v4)
    {
      return std::function<void ()(md::LabelManager *)>::operator()(result, v4);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::DebugRenderLayer::layout(md::DebugRenderLayer *this, const md::LayoutContext *a2)
{
  v4 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 136));
  if (v4)
  {
    v5 = *(*(v4 + 16) + 8 * *(this + 137));
  }

  else
  {
    v5 = 0;
  }

  v60 = v5;
  ggl::CommandBuffer::clearRenderItems(v5);
  *(v5 + 32) = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v6 = *(a2 + 1);
  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xE75FAB3171C16149);
  if (v7)
  {
    v8 = v7[5];
    if (*(v8 + 8) == 0xE75FAB3171C16149)
    {
      if (*(v8 + 32))
      {
        operator new();
      }
    }
  }

  v9 = gdc::Context::context<md::ARPushDebugDrawItemsContext>(v6);
  if (v9)
  {
    v45[0] = v9;
    std::vector<md::mun::CollectionPoint const*>::push_back[abi:nn200100](&v57, v45);
    v6 = *(a2 + 1);
  }

  v10 = gdc::Context::context<md::BVHDebugContext>(v6);
  if (v10)
  {
    v45[0] = v10;
    std::vector<md::mun::CollectionPoint const*>::push_back[abi:nn200100](&v57, v45);
    v6 = *(a2 + 1);
  }

  v11 = gdc::Context::context<md::DebugDrawContext>(v6);
  if (v11)
  {
    v45[0] = v11;
    std::vector<md::mun::CollectionPoint const*>::push_back[abi:nn200100](&v57, v45);
  }

  v12 = v57;
  v13 = v58;
  if (v57 == v58)
  {
    v17 = 0;
  }

  else
  {
    v14 = v57 + 8;
    while (1)
    {
      v15 = *(v14 - 1);
      if (v15[8] || v15[10] != v15[11])
      {
        break;
      }

      v16 = v15[3];
      v17 = v16 != 0;
      if (v16)
      {
        v18 = 1;
      }

      else
      {
        v18 = v14 == v58;
      }

      v14 += 8;
      if (v18)
      {
        goto LABEL_24;
      }
    }

    v17 = 1;
  }

LABEL_24:
  v19 = *(*(this + 6) + 112);
  v20 = *(v19 + 4);
  v21 = *(v19 + 5);
  if (v20 != v21)
  {
    do
    {
      v45[0] = *v20;
      std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v19, v45);
      ++v20;
    }

    while (v20 != v21);
    v20 = *(v19 + 4);
    v21 = *(v19 + 5);
  }

  if (v20 != v21)
  {
    *(v19 + 5) = v20;
  }

  v22 = *(*(this + 6) + 120);
  v23 = *(v22 + 4);
  v24 = *(v22 + 5);
  if (v23 != v24)
  {
    do
    {
      v45[0] = *v23;
      std::vector<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v22, v45);
      ++v23;
    }

    while (v23 != v24);
    v23 = *(v22 + 4);
    v24 = *(v22 + 5);
  }

  if (v23 != v24)
  {
    *(v22 + 5) = v23;
  }

  v25 = *(*(this + 6) + 136);
  v26 = *(v25 + 4);
  v27 = *(v25 + 5);
  if (v26 != v27)
  {
    do
    {
      v45[0] = *v26;
      std::vector<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v25, v45);
      ++v26;
    }

    while (v26 != v27);
    v26 = *(v25 + 4);
    v27 = *(v25 + 5);
  }

  if (v26 != v27)
  {
    *(v25 + 5) = v26;
  }

  v28 = *(*(this + 6) + 144);
  v29 = *(v28 + 4);
  v30 = *(v28 + 5);
  if (v29 != v30)
  {
    do
    {
      v45[0] = *v29;
      std::vector<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v28, v45);
      ++v29;
    }

    while (v29 != v30);
    v29 = *(v28 + 4);
    v30 = *(v28 + 5);
  }

  if (v29 != v30)
  {
    *(v28 + 5) = v29;
  }

  ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(*(this + 6) + 160));
  v31 = *(*(this + 6) + 128);
  v32 = *(v31 + 4);
  v33 = *(v31 + 5);
  if (v32 != v33)
  {
    do
    {
      v45[0] = *v32;
      std::vector<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v31, v45);
      ++v32;
    }

    while (v32 != v33);
    v32 = *(v31 + 4);
    v33 = *(v31 + 5);
  }

  if (v32 != v33)
  {
    *(v31 + 5) = v32;
  }

  ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pushAll(*(*(this + 6) + 96));
  v34 = *(*(this + 6) + 104);
  v35 = *(v34 + 4);
  v36 = *(v34 + 5);
  if (v35 != v36)
  {
    do
    {
      v45[0] = *v35;
      std::vector<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](v34, v45);
      ++v35;
    }

    while (v35 != v36);
    v35 = *(v34 + 4);
    v36 = *(v34 + 5);
  }

  if (v35 != v36)
  {
    *(v34 + 5) = v35;
  }

  v37 = +[VKDebugSettings sharedSettings];
  if ((v17 | [v37 shouldDrawDebug]))
  {
    v38 = *(a2 + 1);
    v56 = gdc::Context::get<md::CameraContext>(v38);
    v39 = gdc::Context::get<md::GeometryContext>(v38);
    v54 = 0;
    v55 = v39;
    v52 = 0;
    v53 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v47 = 0;
    v46 = 0;
    v48 = 0;
    if (v12 != v13)
    {
      v40 = *(*v12 + 16);
      if (v40)
      {
        md::GeometryContext::transformConstantData(*(*(v40 + 16) + 440), *(*(v40 + 16) + 448), &v44, v55, *(v40 + 16), *(v56 + 3784), -1);
      }

      v41 = *(*v12 + 56);
      if (v41)
      {
        md::GeometryContext::transformConstantData(*(*(v41 + 16) + 440), *(*(v41 + 16) + 448), &v44, v55, *(v41 + 16), *(v56 + 3784), -1);
      }

      md::GeometryLogic::createUnitTransformConstantData(&v44);
    }

    v42 = md::LayoutContext::debugConsoleForId(a2, 1);
    v45[44] = v42;
    if (v42)
    {
      ggl::DebugConsole::begin(v42);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    v43 = v57;
  }

  else
  {
    std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::clear(this + 56);
    v43 = v12;
  }

  if (v43)
  {
    operator delete(v43);
  }
}

void sub_1B2AC4BC4(_Unwind_Exception *a1)
{
  v4 = STACK[0x498];
  if (STACK[0x498])
  {
    STACK[0x4A0] = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 256);
  if (v5)
  {
    *(v2 - 248) = v5;
    operator delete(v5);
  }

  v6 = *(v2 - 232);
  if (v6)
  {
    *(v2 - 224) = v6;
    operator delete(v6);
  }

  v7 = *(v2 - 192);
  if (v7)
  {
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void *gdc::Context::context<md::ARPushDebugDrawItemsContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xBB644C924C2E1F27);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xBB644C924C2E1F27)
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

void *gdc::Context::context<md::BVHDebugContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xEB7D991403622616);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xEB7D991403622616)
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

void *gdc::Context::context<md::DebugDrawContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x3619066E3FB5F2CuLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x3619066E3FB5F2CLL)
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

void std::vector<md::mun::CollectionPoint const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v9);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::VisibilityGroupID>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::VisibilityGroupID>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[495];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17VisibilityGroupIDEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41968;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17VisibilityGroupIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41968;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pushAll(ggl::zone_mallocator *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 5);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      v5 = v4;
      result = std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](v1, &v5);
    }

    while (v2 != v3);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);
  }

  if (v2 != v3)
  {
    *(v1 + 5) = v2;
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedRenderableDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedRenderableDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[359];
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26SharedRenderableDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41C18;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26SharedRenderableDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41C18;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<md::GEOVectorTileResource>::__on_zero_shared(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3 != a1[6])
  {

    free(v3);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::WantsCulledSlices>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::WantsCulledSlices>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[493];
}

void std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>>>::erase(void *a1, void *__p)
{
  v3 = a1[1];
  v4 = __p[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*a1 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 == a1 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v9 = *(*__p + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a1 + 8 * v4) = 0;
    }
  }

  v10 = *__p;
  if (*__p)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a1 + 8 * v11) = v7;
      v10 = *__p;
    }
  }

  *v7 = v10;
  *__p = 0;
  --a1[3];
  v12 = __p[3];
  if (v12 != __p[5])
  {
    free(v12);
  }

  operator delete(__p);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17WantsCulledSlicesEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41D08;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::ResourceKey,std::weak_ptr<gdc::Resource>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::ResourceKey,std::weak_ptr<gdc::Resource>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::ResourceKey const,std::weak_ptr<gdc::Resource>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17WantsCulledSlicesEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41D08;
  a2[1] = v2;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

void std::__destroy_at[abi:nn200100]<std::pair<gdc::ResourceKey const,std::weak_ptr<gdc::Resource>>,0>(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (v3 != a1[3])
  {

    free(v3);
  }
}

id *std::__shared_ptr_pointer<md::RegionalResourceSet *,std::shared_ptr<md::RegionalResourceSet>::__shared_ptr_default_delete<md::RegionalResourceSet,md::RegionalResourceSet>,std::allocator<md::RegionalResourceSet>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::RegionalResourceSet::~RegionalResourceSet(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayer>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayer>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[490];
}

void md::RegionalResourceSet::~RegionalResourceSet(id *this)
{
  v2 = this[1];
  if (v2 != this[3])
  {
    free(v2);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls18IntendedSceneLayerEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41D90;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18IntendedSceneLayerEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41D90;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IgnoreCulling>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IgnoreCulling>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[62];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13IgnoreCullingEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1D058;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13IgnoreCullingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1D058;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AppliedWantsDynamicShadowBounds>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AppliedWantsDynamicShadowBounds>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[262];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls31AppliedWantsDynamicShadowBoundsEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A338D8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31AppliedWantsDynamicShadowBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A338D8;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)1>>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)1>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[9];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS9_9SliceTypeE1EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A336A0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE1EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A336A0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)3>>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[6];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS9_9SliceTypeE3EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A33798;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE3EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A33798;
  a2[1] = v2;
  return result;
}

void sub_1B2AC6118(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t md::addToStorage(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 232);
  v3 = a1 + 232;
  v4 = v5;
  v6 = *(v3 - 16);
  if (*(v3 - 24) == v6)
  {
    v7 = ((*(a1 + 240) - v4) >> 3) | 0x100000000;
    v70 = v7;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v3, &v70);
  }

  else
  {
    v7 = *(v4 + 8 * *(v6 - 8));
    *(a1 + 216) = v6 - 8;
  }

  v69 = v7;
  v8 = v7 >> 6;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v8 >= (v10 - v9) >> 3)
  {
    v11 = v8 + 1;
    v12 = v8 + 1 - ((v10 - v9) >> 3);
    v13 = *(a1 + 24);
    if (v12 > (v13 - v10) >> 3)
    {
      v14 = v13 - v9;
      if (v14 >> 2 > v11)
      {
        v11 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v15);
    }

    bzero(*(a1 + 16), 8 * v12);
    *(a1 + 16) = v10 + 8 * v12;
    v9 = *(a1 + 8);
  }

  v16 = *(v9 + 8 * v8);
  if (!v16)
  {
    operator new();
  }

  v17 = (v16 + 16 * (v7 & 0x3F));
  if (*v17 == -1 && v17[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 32, &v69);
    v19 = ((*(a1 + 40) - *(a1 + 32)) >> 3) - 1;
    *v17 = HIDWORD(v7);
    v17[1] = v19;
    v20 = v19 & 0x3F;
    v21 = (*(*(a1 + 56) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 56), v19)) + 24 * v20);
    *v21 = vdupq_n_s64(1uLL);
    v21[1].i16[0] = 257;
    v22 = v19 >> 6;
    v24 = *(a1 + 104);
    v23 = *(a1 + 112);
    v25 = v23 - v24;
    v67 = v20;
    if (v19 >> 6 >= (v23 - v24) >> 3)
    {
      v26 = v22 + 1;
      v27 = v22 + 1 - (v25 >> 3);
      v28 = *(a1 + 120);
      if (v27 > (v28 - v23) >> 3)
      {
        v29 = v28 - v24;
        v30 = (v28 - v24) >> 2;
        if (v30 <= v26)
        {
          v30 = v22 + 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (!(v31 >> 61))
        {
          operator new();
        }

        goto LABEL_80;
      }

      v32 = 0;
      v33 = (v27 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v34 = vdupq_n_s64(v33);
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v32), xmmword_1B33B0560)));
        if (v35.i8[0])
        {
          *(v23 + 8 * v32) = 0;
        }

        if (v35.i8[4])
        {
          *(v23 + 8 * v32 + 8) = 0;
        }

        v32 += 2;
      }

      while (v33 - ((v27 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v32);
      *(a1 + 112) = v23 + 8 * v27;
      v36 = *(a1 + 128);
      v37 = *(a1 + 136);
      v38 = (v37 - v36) >> 4;
      if (v38 <= v22)
      {
        v39 = v26 - v38;
        v40 = *(a1 + 144);
        if (v39 > (v40 - v37) >> 4)
        {
          v41 = v40 - v36;
          v42 = v41 >> 3;
          if (v41 >> 3 <= v26)
          {
            v42 = v22 + 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF0)
          {
            v43 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          if (!(v43 >> 60))
          {
            operator new();
          }

          goto LABEL_80;
        }

        bzero(*(a1 + 136), 16 * v39);
        *(a1 + 136) = v37 + 16 * v39;
        v20 = v67;
      }

      else if (v26 < v38)
      {
        *(a1 + 136) = v36 + 16 * v26;
      }

      v24 = *(a1 + 104);
      if (v25 < (*(a1 + 112) - v24))
      {
        operator new();
      }
    }

    v44 = *(v24 + 8 * v22) + 24 * v20;
    *v44 = *a2;
    *(v44 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v46 = *(a1 + 152);
    v45 = *(a1 + 160);
    v47 = v45 - v46;
    if (v22 < (v45 - v46) >> 3)
    {
LABEL_78:
      *(*(v46 + 8 * v22) + 8 * v20) = 0;
      return v7;
    }

    v48 = v22 + 1;
    v49 = v22 + 1 - (v47 >> 3);
    v50 = *(a1 + 168);
    if (v49 > (v50 - v45) >> 3)
    {
      v51 = v50 - v46;
      v52 = (v50 - v46) >> 2;
      if (v52 <= v48)
      {
        v52 = v22 + 1;
      }

      if (v51 >= 0x7FFFFFFFFFFFFFF8)
      {
        v53 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v52;
      }

      if (!(v53 >> 61))
      {
        operator new();
      }

      goto LABEL_80;
    }

    v54 = 0;
    v55 = (v49 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v56 = vdupq_n_s64(v55);
    do
    {
      v57 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(vdupq_n_s64(v54), xmmword_1B33B0560)));
      if (v57.i8[0])
      {
        *(v45 + 8 * v54) = 0;
      }

      if (v57.i8[4])
      {
        *(v45 + 8 * v54 + 8) = 0;
      }

      v54 += 2;
    }

    while (v55 - ((v49 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v54);
    *(a1 + 160) = v45 + 8 * v49;
    v58 = *(a1 + 176);
    v59 = *(a1 + 184);
    v60 = (v59 - v58) >> 4;
    if (v60 > v22)
    {
      if (v48 < v60)
      {
        *(a1 + 184) = v58 + 16 * v48;
      }

      goto LABEL_76;
    }

    v61 = v48 - v60;
    v62 = *(a1 + 192);
    if (v61 <= (v62 - v59) >> 4)
    {
      bzero(*(a1 + 184), 16 * v61);
      *(a1 + 184) = v59 + 16 * v61;
      v20 = v67;
LABEL_76:
      v46 = *(a1 + 152);
      if (v47 < (*(a1 + 160) - v46))
      {
        operator new();
      }

      goto LABEL_78;
    }

    v63 = v62 - v58;
    v64 = v63 >> 3;
    if (v63 >> 3 <= v48)
    {
      v64 = v22 + 1;
    }

    if (v63 >= 0x7FFFFFFFFFFFFFF0)
    {
      v65 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v65 = v64;
    }

    if (!(v65 >> 60))
    {
      operator new();
    }

LABEL_80:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return v7;
}

void sub_1B2AC695C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ecs2::pool<md::Counter,64ul>::page_at_index(uint64_t *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[1] - *a1;
  if (a2 >> 6 >= v3 >> 3)
  {
    v6 = 0;
    std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(a1, v2 + 1, &v6);
    std::vector<std::span<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,18446744073709551615ul>>::resize(a1 + 3, v2 + 1);
    if (v3 < (a1[1] - *a1))
    {
      operator new();
    }
  }

  return v2;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverClipConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverClipConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[279];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls29FlyoverClipConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52520;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29FlyoverClipConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52520;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileType>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileType>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[222];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls8TileTypeEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41B90;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls8TileTypeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41B90;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverClipPlaneData>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverClipPlaneData>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[466];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20FlyoverClipPlaneDataEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1D1F8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20FlyoverClipPlaneDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1D1F8;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ModelTransformData>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ModelTransformData>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[487];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls18ModelTransformDataEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1D128;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18ModelTransformDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1D128;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonTransformConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonTransformConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[229];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls40FlyoverCommonTransformConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A521E0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls40FlyoverCommonTransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A521E0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonS2TransformHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonS2TransformHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[268];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls30FlyoverCommonS2TransformHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A522B0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30FlyoverCommonS2TransformHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A522B0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceDataV>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceDataV>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[59];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13InstanceDataVEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41E18;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13InstanceDataVEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41E18;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InView>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InView>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[226];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls6InViewEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A56128;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls6InViewEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A56128;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialAlbedoTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialAlbedoTexture>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[344];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls27SharedMaterialAlbedoTextureEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42DA8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27SharedMaterialAlbedoTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42DA8;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RasterOverlayConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RasterOverlayConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[255];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls31RasterOverlayConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52040;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31RasterOverlayConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52040;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MercatorBounds>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MercatorBounds>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[43];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls14MercatorBoundsEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F7D50;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14MercatorBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F7D50;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMaterialRaster>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMaterialRaster>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[501];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17HasMaterialRasterEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42540;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17HasMaterialRasterEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42540;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AlbedoTintColor>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AlbedoTintColor>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[32];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls15AlbedoTintColorEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A429D8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15AlbedoTintColorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A429D8;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasOverlayPatch>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasOverlayPatch>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[24];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls15HasOverlayPatchEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42748;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15HasOverlayPatchEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42748;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31SharedColorCorrectionDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A430E0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)7>>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)7>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[1];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS9_9SliceTypeE7EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A19F50;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE7EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A19F50;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMeshVertexFormat>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMeshVertexFormat>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[367];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26RenderableMeshVertexFormatEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41F28;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RenderableMeshVertexFormatEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41F28;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresDepthPeel>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresDepthPeel>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[498];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17RequiresDepthPeelEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A048;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17RequiresDepthPeelEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A048;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessing>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessing>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[500];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17PendingProcessingEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A419D0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17PendingProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A419D0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrepassConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrepassConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[374];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls25PrepassConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52930;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25PrepassConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52930;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShadowConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShadowConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[381];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls24ShadowConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52860;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24ShadowConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52860;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreserveHeight>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreserveHeight>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[40];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls14PreserveHeightEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A515F0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14PreserveHeightEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A515F0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMeshHandle>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMeshHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[63];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13HasMeshHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50880;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13HasMeshHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50880;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ViewConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ViewConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[410];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22ViewConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50950;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22ViewConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50950;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TransformConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TransformConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[343];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls27TransformConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50A20;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27TransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50A20;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IndexRange>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IndexRange>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[90];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls10IndexRangeEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50FD0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IndexRangeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50FD0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsZBias>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsZBias>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[81];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls10NeedsZBiasEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51540;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10NeedsZBiasEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51540;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ClippingConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ClippingConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[371];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26ClippingConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51B60;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26ClippingConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51B60;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsMercator>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsMercator>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[85];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls10IsMercatorEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4FA50;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IsMercatorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FA50;
  a2[1] = v2;
  return result;
}

void ___ZN3ggl18MetalDeviceContext8endFrameERKNS_14EndFrameParamsE_block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    [v3 GPUStartTime];
    atomic_store(v4, *(*(a1[6] + 8) + 48));
    v3 = v12;
  }

  [v3 GPUEndTime];
  v6 = v5;
  v7 = COERCE_DOUBLE(atomic_load(*(*(a1[6] + 8) + 48)));
  v8 = [v12 error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 domain];
    v11 = *MEMORY[0x1E6973F68];

    if (v10 == v11)
    {
      [v9 code];
    }
  }

  (*(a1[4] + 16))(v6 - v7);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)2>>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)2>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[7];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS9_9SliceTypeE2EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A19D18;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void ___ZN3ggl18MetalDeviceContext8endFrameERKNS_14EndFrameParamsE_block_invoke_3(void *a1, int a2, void *a3, double a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v9 = a1[5];
  v8 = a1[6];
  atomic_store(2u, (v8 + 8));
  v10 = atomic_load((v8 + 8));
  if (v10 == 2 && (v11 = *(v8 + 56)) != 0)
  {
    std::function<void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::operator()(v11, *v8, a2, a4);
  }

  else
  {
    v12 = atomic_load((v8 + 8));
    if (v12 == 1)
    {
      v13 = *(v8 + 88);
      if (v13)
      {
        (*(*v13 + 48))(v13);
      }
    }
  }

  atomic_store(1u, *(a1[6] + 16));
  v14 = *(*(v9 + 16) + 80);
  v15 = *(*(a1[4] + 8) + 24);
  v16 = *(v14 + 272);
  *&v23 = MEMORY[0x1E69E9820];
  *(&v23 + 1) = 3221225472;
  v24 = ___ZN3ggl20MetalResourceManager22commandBufferCompletedEy_block_invoke;
  v25 = &__block_descriptor_48_e5_v8__0l;
  v26 = v14;
  v27 = v15;
  dispatch_async(v16, &v23);
  v17 = a1[8];
  v18 = *v17;
  v19 = v17[1];
  while (v18 != v19)
  {
    if (*(v18 + 24))
    {
      std::function<void ()(NSError *)>::operator()(v18, v7);
    }

    v18 += 32;
  }

  dispatch_semaphore_signal(*(v9 + 64));
  if (GEOGetGeoGLPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGeoGLPerformanceLog_onceToken, &__block_literal_global_5_50383);
  }

  v20 = GEOGetGeoGLPerformanceLog_log;
  v21 = v20;
  v22 = *(*(a1[4] + 8) + 24);
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LODWORD(v23) = 134217984;
    *(&v23 + 4) = a4 * 1000.0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v21, OS_SIGNPOST_INTERVAL_END, v22, "GPUFrame", "time=%f", &v23, 0xCu);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE2EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A19D18;
  a2[1] = v2;
  return result;
}

uint64_t std::function<void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::operator()(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v8 = a2;
  v7 = a4;
  v6 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v8, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::operator()(v5);
}

void std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::operator()(void *a1, unint64_t *a2, double *a3, int *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = [VKSharedResourcesManager sharedResourcesCreateIfNil:0 addResourceUser:0];
  v9 = v8;
  if (v8)
  {
    [v8 frameDidComplete:a1[9]];
  }

  v10 = a1[4];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = a1[3];
      if (v12)
      {
        gdc::Statistics::addSampleValue(v12, "GPU Frame-time", 0x4A6892FD0000000ELL, v6 * 1000.0);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = a1[6];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = a1[5];
      if (v15)
      {
        atomic_store(v5, v15);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = a1[8];
  if (v16)
  {
    v17 = std::__shared_weak_count::lock(v16);
    if (v17)
    {
      v18 = a1[7];
      if (v18)
      {
        md::MapEngineSignals::ThreadSafeSignal<unsigned long,BOOL>::emit(v18, v5, v7 != 0);
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = a1[2];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = a1[1];
      if (v22)
      {
        if (v7 == 1)
        {
          v23 = atomic_load(v22);
          if ((v23 & 1) == 0)
          {
            atomic_store(1u, v22);
            v25 = MEMORY[0x1E69E9820];
            v26 = 3321888768;
            v27 = ___ZZN2md9MapEngine19_produceRenderQueueEvENK3__0clEmdN3ggl28RenderTransactionErrorStatusE_block_invoke;
            v28 = &__block_descriptor_48_ea8_32c56_ZTSNSt3__110shared_ptrIN2md9MapEngine13AnalyticsInfoEEE_e19___NSDictionary_8__0l;
            v29 = v22;
            v30 = v20;
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            vkAnalyticsSendEventLazy(&v25);
LABEL_25:
            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v30);
            }

            goto LABEL_27;
          }
        }

        v24 = atomic_load(v22);
        if (v24)
        {
          atomic_store(0, v22);
          v25 = MEMORY[0x1E69E9820];
          v26 = 3321888768;
          v27 = ___ZZN2md9MapEngine19_produceRenderQueueEvENK3__0clEmdN3ggl28RenderTransactionErrorStatusE_block_invoke_891;
          v28 = &__block_descriptor_48_ea8_32c56_ZTSNSt3__110shared_ptrIN2md9MapEngine13AnalyticsInfoEEE_e19___NSDictionary_8__0l;
          v29 = v22;
          v30 = v20;
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          vkAnalyticsSendEventLazy(&v25);
          goto LABEL_25;
        }
      }

LABEL_27:
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void sub_1B2AC9214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleDataKeyHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleDataKeyHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[484];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls18StyleDataKeyHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50AF0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18StyleDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50AF0;
  a2[1] = v2;
  return result;
}

void std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::MapEngineSignals::ThreadSafeSignal<unsigned long,BOOL>::emit(uint64_t a1, uint64_t a2, char a3)
{
  std::mutex::lock(a1);
  for (i = *(a1 + 88); i; i = *i)
  {
    v10 = a2;
    v9 = a3;
    v7 = i[6];
    if (!v7)
    {
      v8 = std::__throw_bad_function_call[abi:nn200100]();
      std::mutex::unlock(a1);
      _Unwind_Resume(v8);
    }

    (*(*v7 + 48))(v7, &v10, &v9);
  }

  std::mutex::unlock(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleEmissiveDataKeyHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleEmissiveDataKeyHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[358];
}

void std::__function::__func<md::LabelTextureAtlasStore::LabelTextureAtlasStore(md::LabelManager &)::$_0,std::allocator<md::LabelTextureAtlasStore::LabelTextureAtlasStore(md::LabelManager &)::$_0>,void ()(unsigned long,BOOL)>::operator()(uint64_t a1, unint64_t *a2, _BYTE *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 8);
  if (*a3 == 1)
  {
    v5 = GEOGetVectorKitTextureAtlasLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v35 = 134217984;
      v36 = v3;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_DEBUG, "Dropped copy items for framestamp %zu", &v35, 0xCu);
    }

    v6 = (v4 + 64);
    std::mutex::lock((v4 + 64));
    v8 = *(v4 + 144);
    v7 = *(v4 + 152);
    if (v8 >= v7)
    {
      v10 = *(v4 + 136);
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v15);
      }

      v16 = (v8 - v10) >> 3;
      v17 = (8 * v12);
      v18 = (8 * v12 - 8 * v16);
      *v17 = v3;
      v9 = v17 + 1;
      memcpy(v18, v10, v11);
      v19 = *(v4 + 136);
      *(v4 + 136) = v18;
      *(v4 + 144) = v9;
      *(v4 + 152) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v8 = v3;
      v9 = v8 + 8;
    }

    *(v4 + 144) = v9;
  }

  else
  {
    v6 = (v4 + 64);
    std::mutex::lock((v4 + 64));
  }

  v21 = (v4 + 168);
  v20 = *(v4 + 168);
  v22 = (v4 + 160);
  if (!v20)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v23 = v20;
      v24 = v20[4];
      if (v3 >= v24)
      {
        break;
      }

      v20 = *v23;
      if (!*v23)
      {
        goto LABEL_24;
      }
    }

    if (v24 >= v3)
    {
      break;
    }

    v20 = v23[1];
    if (!v20)
    {
      goto LABEL_24;
    }
  }

  if (!*(v4 + 128))
  {
    *(v4 + 128) = v3 - 1;
  }

  v25 = *v22;
  if (*v22 != v21)
  {
    do
    {
      v26 = v25[4];
      v27 = *(v4 + 128);
      if (v26 > v27)
      {
        if (v26 != v27 + 1)
        {
          break;
        }

        *(v4 + 128) = v26;
      }

      v28 = v25[1];
      v29 = v25;
      if (v28)
      {
        do
        {
          v30 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v30 = v29[2];
          v31 = *v30 == v29;
          v29 = v30;
        }

        while (!v31);
      }

      if (*v22 == v25)
      {
        *v22 = v30;
      }

      v32 = *(v4 + 168);
      --*(v4 + 176);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v32, v25);
      operator delete(v25);
      v25 = v30;
    }

    while (v21 != v30);
  }

  if (*(v4 + 176) >= 6uLL)
  {
    v33 = GEOGetVectorKitTextureAtlasLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *(v4 + 128);
      v35 = 134219010;
      v36 = v34;
      v37 = 2048;
      v38 = v3;
      v39 = 2080;
      v40 = "false";
      v41 = 2080;
      v42 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/LabelTextureAtlasStore.mm";
      v43 = 1024;
      v44 = 116;
      _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_ERROR, "Missing completion framestamp %zu -> %zu: Assertion with expression - %s : Failed in file - %s line - %i", &v35, 0x30u);
    }

    *(v4 + 128) = v3;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v4 + 168));
    *(v4 + 168) = 0;
    *(v4 + 176) = 0;
    *(v4 + 160) = v21;
  }

  std::mutex::unlock(v6);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26StyleEmissiveDataKeyHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50C90;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26StyleEmissiveDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50C90;
  a2[1] = v2;
  return result;
}

void std::function<void ()(NSError *)>::operator()(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v4);
  }

  (*(*v3 + 48))(v3, &v5);
}

void std::__function::__func<ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_0,std::allocator<ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_0>,void ()(NSError *)>::operator()(uint64_t a1, id *a2)
{
  v5 = *a2;
  v3 = *(a1 + 32);
  if (!v3)
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v4);
  }

  (*(*v3 + 48))(v3);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleCameraConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleCameraConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[277];
}

void std::__function::__func<md::erq::EncodeRenderQueue::operator()(md::erq::RenderQueueToSubmit const&,md::erq::RenderTargetToSubmit const&,md::erq::GPUWorkCallbacks const&)::$_1,std::allocator<md::erq::EncodeRenderQueue::operator()(md::erq::RenderQueueToSubmit const&,md::erq::RenderTargetToSubmit const&,md::erq::GPUWorkCallbacks const&)::$_1>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[2];
      if (v5)
      {
        (*(*v5 + 56))(a1[2], a1[1]);
        (*(*v5 + 32))(v5, a1[1]);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls29StyleCameraConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50D60;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::MapEngineCallbackGraphService::release(uint64_t a1, unint64_t a2)
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
      atomic_fetch_add((v9 + 12), 0xFFFFFFFF);

      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    else
    {
      std::__shared_mutex_base::unlock_shared((a1 + 8));
      atomic_fetch_add((v9 + 12), 0xFFFFFFFF);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29StyleCameraConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50D60;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_1,std::allocator<ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_1>,void ()(NSError *)>::operator()(uint64_t a1, id *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_16;
  }

  if (GEOGetGeoGLDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
  }

  v5 = GEOGetGeoGLDefaultLog_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "Frame completed with error:%@", &v11, 0xCu);
  }

  v6 = [v3 domain];
  v7 = v6;
  if (v6 != *MEMORY[0x1E6973F68])
  {

LABEL_16:
    atomic_store(0, (v4 + 420));
    goto LABEL_17;
  }

  v8 = [v3 code] == 4;

  if (!v8)
  {
    goto LABEL_16;
  }

  if (*(v4 + 424) != 1)
  {
    goto LABEL_16;
  }

  v9 = atomic_load((v4 + 420));
  if (v9 >= *(v4 + 428))
  {
    goto LABEL_16;
  }

  if (GEOGetGeoGLDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
  }

  v10 = GEOGetGeoGLDefaultLog_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "Marking to reset command queue", &v11, 2u);
  }

  atomic_store(1u, (v4 + 417));
LABEL_17:
}

void __destroy_helper_block_ea8_48c51_ZTSNSt3__110shared_ptrIN3ggl17RenderTransactionEEE64c119_ZTSNSt3__110shared_ptrINS_6vectorINS_8functionIFvP7NSErrorEEEN3geo17allocator_adapterIS6_N3ggl15zone_mallocatorEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[451];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A519C0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A519C0;
  a2[1] = v2;
  return result;
}

void ___ZN3ggl20MetalResourceManager22commandBufferCompletedEy_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 280);
  if (v2 != *(v1 + 288))
  {
    v3 = *(a1 + 40);
    do
    {
      v4 = atomic_load((*v2 + 16));
      if (v4 <= v3)
      {
        ggl::MetalResourceManager::deleteResource(v1, *v2);
        v6 = *(v1 + 288);
        v7 = v6 - (v2 + 1);
        if (v6 != v2 + 1)
        {
          memmove(v2, v2 + 1, v6 - (v2 + 1));
        }

        v5 = (v2 + v7);
        *(v1 + 288) = v2 + v7;
      }

      else
      {
        ++v2;
        v5 = *(v1 + 288);
      }
    }

    while (v2 != v5);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::TexTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[453];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci10TexTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50F00;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci10TexTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50F00;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[448];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci15EmissiveTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51DD0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci15EmissiveTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51DD0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[449];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci14OverlayTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51EA0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci14OverlayTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51EA0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BlendRasterConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BlendRasterConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[280];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls29BlendRasterConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51F70;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29BlendRasterConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51F70;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasStyleAttributeRasterSet>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasStyleAttributeRasterSet>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[370];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26HasStyleAttributeRasterSetEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52790;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26HasStyleAttributeRasterSetEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52790;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CustomRenderState>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CustomRenderState>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[506];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17CustomRenderStateEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F820;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17CustomRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F820;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedUniqueID>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedUniqueID>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[35];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls14SharedUniqueIDEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51D00;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14SharedUniqueIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51D00;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsOpaque>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsOpaque>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[223];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls8IsOpaqueEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A513C0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls8IsOpaqueEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A513C0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsTransparent>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsTransparent>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[56];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13IsTransparentEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51490;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13IsTransparentEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51490;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceCount>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceCount>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[61];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13InstanceCountEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A516C0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13InstanceCountEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A516C0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsDecal>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsDecal>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[224];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls7IsDecalEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51770;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls7IsDecalEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51770;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsMaterial>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsMaterial>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[87];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls10IsMaterialEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51840;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IsMaterialEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51840;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26SupportsSteepnessDarkeningEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FD30;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableHash>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableHash>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[36];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls14RenderableHashEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50610;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14RenderableHashEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50610;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)5>>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[4];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS9_9SliceTypeE5EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A33AC8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE5EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A33AC8;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessingDepthPrePass>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessingDepthPrePass>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[278];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls29PendingProcessingDepthPrePassEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41AA0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29PendingProcessingDepthPrePassEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41AA0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrepassShadowConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrepassShadowConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[257];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls31PrepassShadowConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53110;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31PrepassShadowConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53110;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)4>>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[5];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS9_9SliceTypeE4EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A339D0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE4EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A339D0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessingShadow>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessingShadow>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[403];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23PendingProcessingShadowEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41A38;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23PendingProcessingShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41A38;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialZIndexHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialZIndexHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[361];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26SharedMaterialZIndexHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A503A0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26SharedMaterialZIndexHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A503A0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonTexcoordsHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonTexcoordsHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[339];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28FlyoverCommonTexcoordsHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52380;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28FlyoverCommonTexcoordsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52380;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonMaterialHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonMaterialHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[352];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls27FlyoverCommonMaterialHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52450;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27FlyoverCommonMaterialHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52450;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverInstance>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverInstance>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[27];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls15FlyoverInstanceEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F750;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15FlyoverInstanceEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F750;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CustomZIndex>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CustomZIndex>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[73];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls12CustomZIndexEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A506E0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12CustomZIndexEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A506E0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PredefinedRenderState>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PredefinedRenderState>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[433];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls21PredefinedRenderStateEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F8F0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21PredefinedRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F8F0;
  a2[1] = v2;
  return result;
}

void md::DaVinciGroundRenderResources::buildShadowPlane(md::DaVinciGroundRenderResources *this)
{
  memset(v3, 0, sizeof(v3));
  memset(v2, 0, sizeof(v2));
  memset(v1, 0, sizeof(v1));
  md::GeometryLogic::createXYPlane(v3, v2, v1, 0.5, 0.5);
  operator new();
}

void sub_1B2ACC158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  ggl::BufferMemory::~BufferMemory(&a16);
  ggl::BufferMemory::~BufferMemory(&a22);
  ggl::BufferMemory::~BufferMemory(&a28);
  if (v28)
  {
    operator delete(v28);
  }

  v31 = *(v29 - 128);
  if (v31)
  {
    *(v29 - 120) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 104);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void md::GeometryLogic::createXYPlane(uint64_t *a1, void *a2, void *a3, float a4, float a5)
{
  v63 = *MEMORY[0x1E69E9840];
  *&__p = a4 + -0.5;
  *(&__p + 1) = a5 + -0.5;
  LODWORD(v57) = 0;
  *(&v57 + 1) = a4 + 0.5;
  *&v58 = a5 + -0.5;
  HIDWORD(v58) = 0;
  *&v59 = a4 + -0.5;
  *(&v59 + 1) = a5 + 0.5;
  LODWORD(v60) = 0;
  *(&v60 + 1) = a4 + 0.5;
  v61 = a5 + 0.5;
  v62 = 0;
  v9 = a1[1];
  v8 = a1[2];
  if (v8 - v9 >= 48)
  {
    p_p = &__p;
    v15 = 48;
    do
    {
      *v9 = *p_p;
      *(v9 + 2) = *(p_p + 2);
      v9 += 12;
      p_p = (p_p + 12);
      v15 -= 12;
    }

    while (v15);
    a1[1] = v9;
  }

  else
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (&v9[-*a1] >> 2);
    if (v10 + 4 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 2);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 4)
    {
      v12 = v10 + 4;
    }

    if (v11 >= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0x1555555555555555;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v13);
    }

    v16 = 0;
    v17 = 12 * v10;
    do
    {
      v18 = v17 + v16;
      *v18 = *(&__p + v16);
      *(v18 + 8) = *(&__p + v16 + 8);
      v16 += 12;
    }

    while (v16 != 48);
    v19 = a1[1];
    if (v19 == v9)
    {
      v23 = v9;
    }

    else
    {
      v20 = v9;
      v21 = v17 + 48;
      do
      {
        v22 = *v20;
        *(v21 + 8) = *(v20 + 2);
        *v21 = v22;
        v21 += 12;
        v20 = (v20 + 12);
      }

      while (v20 != v19);
      v23 = a1[1];
    }

    v24 = v17 + 48 + v23 - v9;
    a1[1] = v9;
    v25 = *a1;
    v26 = v17 + *a1 - v9;
    if (*a1 != v9)
    {
      v27 = v26;
      do
      {
        v28 = *v25;
        *(v27 + 8) = *(v25 + 2);
        *v27 = v28;
        v27 += 12;
        v25 += 12;
      }

      while (v25 != v9);
      v25 = *a1;
    }

    *a1 = v26;
    a1[1] = v24;
    a1[2] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  v54 = xmmword_1B33B0AD0;
  v55 = xmmword_1B33B06F0;
  v30 = a2[1];
  v29 = a2[2];
  if (v29 - v30 >= 32)
  {
    v35 = v55;
    *v30 = v54;
    *(v30 + 16) = v35;
    a2[1] = v30 + 32;
  }

  else
  {
    v31 = (v30 - *a2) >> 3;
    if ((v31 + 4) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v32 = v29 - *a2;
    v33 = v32 >> 2;
    if (v32 >> 2 <= (v31 + 4))
    {
      v33 = v31 + 4;
    }

    if (v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      v34 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v34 = v33;
    }

    v60 = a2;
    if (v34)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v34);
    }

    v36 = 0;
    v37 = 8 * v31;
    __p = 0;
    v57 = 8 * v31;
    v59 = 0;
    do
    {
      *(v37 + v36) = *(&v54 + v36);
      v36 += 8;
    }

    while (v36 != 32);
    v58 = v37 + 32;
    std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a2, &__p, v30);
    if (__p)
    {
      operator delete(__p);
    }
  }

  v39 = a3[1];
  v38 = a3[2];
  if (v38 - v39 >= 24)
  {
    v44 = dword_1B33B305C;
    v45 = 24;
    do
    {
      v46 = *v44++;
      *v39++ = v46;
      v45 -= 4;
    }

    while (v45);
    a3[1] = v39;
  }

  else
  {
    v40 = (v39 - *a3) >> 2;
    if ((v40 + 6) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v41 = v38 - *a3;
    v42 = v41 >> 1;
    if (v41 >> 1 <= (v40 + 6))
    {
      v42 = v40 + 6;
    }

    if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v43 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v42;
    }

    if (v43)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v43);
    }

    v47 = 0;
    v48 = 4 * v40;
    do
    {
      *(v48 + v47 * 4) = dword_1B33B305C[v47];
      ++v47;
    }

    while (v47 != 6);
    memcpy((v48 + 24), v39, a3[1] - v39);
    v49 = *a3;
    v50 = v48 + 24 + a3[1] - v39;
    a3[1] = v39;
    v51 = v39 - v49;
    v52 = (v48 - (v39 - v49));
    memcpy(v52, v49, v51);
    v53 = *a3;
    *a3 = v52;
    a3[1] = v50;
    a3[2] = 0;
    if (v53)
    {
      operator delete(v53);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(uint64_t a1, void *a2, char *a3)
{
  v4 = *(a1 + 8);
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v10 = a2[1];
    v9 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      v8 = *v7++;
      *v6++ = v8;
    }

    while (v7 != v4);
    v9 = *(a1 + 8);
    v10 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v9 - a3;
  *(a1 + 8) = a3;
  v11 = *a1;
  v12 = (v10 + *a1 - a3);
  if (*a1 != a3)
  {
    v13 = v12;
    do
    {
      v14 = *v11++;
      *v13++ = v14;
    }

    while (v11 != a3);
    v11 = *a1;
  }

  a2[1] = v12;
  *a1 = v12;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v15 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v15;
  v16 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

ggl::DaVinci::TexturedCompressedMesh *ggl::DaVinci::TexturedCompressedMesh::TexturedCompressedMesh(ggl::DaVinci::TexturedCompressedMesh *this, const char *a2)
{
  ggl::MeshTyped<ggl::DaVinci::TexturedCompressedVbo>::typedReflection();
  *(this + 1) = a2;
  ggl::RenderDataHolder::RenderDataHolder(this + 16);
  *(this + 7) = &ggl::MeshTyped<ggl::DaVinci::TexturedCompressedVbo>::typedReflection(void)::r;
  *(this + 8) = 0;
  v4 = this + 64;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 14) = this + 120;
  *this = &unk_1F2A0CF38;
  *(this + 2) = &unk_1F2A0CF58;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::resize((this + 64), qword_1EB841D48);
  *this = &unk_1F2A0CE38;
  *(this + 2) = &unk_1F2A0CE58;
  if (!a2)
  {
    a2 = "/VertexData";
  }

  v6 = ggl::zone_mallocator::instance(v5);
  v7 = pthread_rwlock_rdlock((v6 + 32));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "read lock", v8);
  }

  v9 = malloc_type_zone_malloc(*v6, 0x100uLL, 0x1081040D98108EAuLL);
  atomic_fetch_add((v6 + 24), 1u);
  geo::read_write_lock::unlock((v6 + 32));
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_1F2A0CF78;
  v10 = ggl::VertexData::VertexData((v9 + 4), a2, &ggl::DaVinci::texturedCompressedVboReflection, 0, 6, 0);
  v9[4] = &unk_1F2A3A900;
  v9[29] = &unk_1F2A3A920;
  *&v11 = v10;
  *(&v11 + 1) = v9;
  v12 = *(*v4 + 8);
  **v4 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  return this;
}

void ggl::MeshTyped<ggl::DaVinci::TexturedCompressedVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::DaVinci::TexturedCompressedVbo>::attributesReflection(void)::r = &ggl::DaVinci::texturedCompressedVboReflection;
    }

    ggl::MeshTyped<ggl::DaVinci::TexturedCompressedVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinci::TexturedCompressedVbo>::attributesReflection(void)::r;
    qword_1EB841D48 = 1;
  }
}

void *ggl::DataAccess<ggl::RouteLine::DefaultVbo>::DataAccess(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ggl::BufferMemory::BufferMemory(a1);
  ggl::ResourceAccessor::accessIndexData(v13, a6, a2, a3, a4, 1, a5);
  ggl::BufferMemory::operator=(a1, v13);
  ggl::BufferMemory::~BufferMemory(v13);
  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsDepthPrePass>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsDepthPrePass>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[456];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20SupportsDepthPrePassEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53410;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20SupportsDepthPrePassEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53410;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsShadows>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsShadows>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[22];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls15SupportsShadowsEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53B30;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15SupportsShadowsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53B30;
  a2[1] = v2;
  return result;
}

void md::GlobeSkyRenderLayer::layout(md::GlobeSkyRenderLayer *this, const md::LayoutContext *a2)
{
  v3 = *(a2 + 1);
  v4 = gdc::Context::get<md::SkyLogicContext>(v3);
  if (v4)
  {
    v5 = v4;
    if (gdc::Context::get<md::GeometryContext>(v3))
    {
      v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v3, 0x1AF456233693CD46uLL);
      if (v6 && (v7 = v6[5], *(v7 + 8) == 0x1AF456233693CD46))
      {
        v8 = *(v7 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 56));
      if (v9)
      {
        v10 = *(*(v9 + 16) + 8 * *(this + 57));
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v8 + 3076) < 4.0;
      if (*(v8 + 3076) >= 4.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      v13 = *(this + 6);
      if (!*(v13 + 18))
      {
        md::GlobeSkyRenderResources::buildAtmosphereModel(v13);
      }

      v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 1), 0x41E8D6E445F4145uLL);
      if (v14 && (v15 = v14[5], *(v15 + 8) == 0x41E8D6E445F4145))
      {
        v16 = *(v15 + 32);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(*(this + 6) + 144);
      ggl::BufferMemory::BufferMemory(v144);
      ggl::ResourceAccessor::accessConstantData(&v140, 0, v17, 1);
      ggl::BufferMemory::operator=(v144, &v140);
      ggl::BufferMemory::~BufferMemory(&v140);
      v18 = 0;
      v19 = (v8 + 552);
      do
      {
        v21 = *v19;
        v20 = v19[1];
        v19 += 2;
        *(&v140 + v18) = vcvt_hight_f32_f64(vcvt_f32_f64(v21), v20);
        v18 += 16;
      }

      while (v18 != 64);
      v22 = 0;
      v23 = (v8 + 3160);
      do
      {
        v25 = *v23;
        v24 = v23[1];
        v23 += 2;
        *(&v138 + v22) = vcvt_hight_f32_f64(vcvt_f32_f64(v25), v24);
        v22 += 16;
      }

      while (v22 != 64);
      *v131 = 0uLL;
      *&v131[16] = 0xBFF0000000000000;
      v26 = gm::Quaternion<double>::operator*(v8 + 520, v131);
      v27 = 0;
      v136 = v26;
      *v137.i64 = v28;
      *&v137.i64[1] = v29;
      v30 = 0.0;
      do
      {
        v30 = v30 + *(&v136 + v27) * *(&v136 + v27);
        v27 += 8;
      }

      while (v27 != 24);
      v31 = 0;
      v32 = 1.0 / sqrt(v30);
      do
      {
        *(&v136 + v31) = *(&v136 + v31) * v32;
        v31 += 8;
      }

      while (v31 != 24);
      v33 = gdc::CameraView::position(v8);
      v34 = v33;
      for (i = 0; i != 24; i += 8)
      {
        *&v131[i] = -*(v33 + i);
      }

      v36 = 0;
      *v135 = *v131;
      *&v135[16] = *&v131[16];
      v37 = 0.0;
      do
      {
        v37 = v37 + *&v135[v36] * *&v135[v36];
        v36 += 8;
      }

      while (v36 != 24);
      v38 = 0;
      v39 = 1.0 / sqrt(v37);
      do
      {
        *&v135[v38] = *&v135[v38] * v39;
        v38 += 8;
      }

      while (v38 != 24);
      v40 = 0;
      v41 = 0.0;
      do
      {
        v41 = v41 + *&v135[v40] * *(&v136 + v40);
        v40 += 8;
      }

      while (v40 != 24);
      *&v131[20] = 0u;
      v132 = 0u;
      v133 = 0;
      *&v131[4] = 0u;
      *v131 = 1065353216;
      *&v131[20] = 1065353216;
      DWORD1(v132) = 1065353216;
      v134 = 1065353216;
      if (v41 < 0.9999999)
      {
        *&v42.f64[0] = vdupq_laneq_s64(*&v135[8], 1).u64[0];
        v42.f64[1] = *v135;
        *&v43.f64[0] = vdupq_laneq_s64(v137, 1).u64[0];
        v43.f64[1] = v136;
        v124 = vmlaq_f64(vnegq_f64(vmulq_f64(v43, *&v135[8])), v137, v42);
        v125 = -(*v135 * *v137.i64 - v136 * *&v135[8]);
        v126 = 0;
        v44 = gm::operator*<double,4,4,1>((v8 + 3160), &v124);
        v45 = 0;
        *v121.i64 = v44;
        v121.i64[1] = v46;
        v122 = v47;
        v48 = 0.0;
        do
        {
          v48 = v48 + *&v121.i64[v45] * *&v121.i64[v45];
          ++v45;
        }

        while (v45 != 3);
        v49 = 0;
        v50 = 1.0 / sqrt(v48);
        do
        {
          *&v121.i64[v49] = *&v121.i64[v49] * v50;
          ++v49;
        }

        while (v49 != 3);
        for (j = 0; j != 3; ++j)
        {
          v52 = *&v121.i64[j];
          v127[j] = v52;
        }

        v53 = acos(v41);
        v54 = v53 * 0.5;
        v55 = sinf(v53 * 0.5);
        for (k = 0; k != 3; ++k)
        {
          *(v124.f64 + k * 4) = v127[k] * v55;
        }

        v57 = LODWORD(v124.f64[1]);
        v58 = cosf(v54);
        v128 = v124.f64[0];
        v129 = v57;
        v130 = v58;
        gm::Quaternion<float>::toMatrix(&v124, &v128);
        gm::Matrix<float,4,4>::Matrix<float,3,3>(v131, &v124);
      }

      v59 = 0;
      v60 = &v121;
      v61 = v131;
      do
      {
        v62 = 0;
        v63 = v60;
        do
        {
          v63->i32[0] = *&v61[v62];
          v63 = (v63 + 12);
          v62 += 16;
        }

        while (v62 != 48);
        ++v59;
        v60 = (v60 + 4);
        v61 += 4;
      }

      while (v59 != 3);
      gm::Matrix<float,4,4>::Matrix<4,void>(&v124, &v121, &v139);
      v64 = 0;
      v65 = 0.0;
      do
      {
        v65 = v65 + *(v34 + v64) * *(v34 + v64);
        v64 += 8;
      }

      while (v64 != 24);
      v66 = gdc::Camera::widestFieldOfView(v8);
      v67 = tan(*v66 * 0.5);
      v68 = +[VKDebugSettings sharedSettings];
      [v68 daVinciAtmosphereMaxHeight];
      v70 = v69;
      v71 = fmax(sqrt(v65) + -6356752.31, 100.0);
      v72 = sqrt((v71 + 12713504.6) * v71) * 0.000000157313035;
      v73 = v72 * (6992427.55 * v67);

      v74 = 0;
      v75 = v145;
      *v145 = v140;
      *(v75 + 16) = v141;
      *(v75 + 32) = v142;
      *(v75 + 48) = v143;
      do
      {
        *(v75 + 64 + v74) = *(v124.f64 + v74);
        v74 += 4;
      }

      while (v74 != 64);
      v76 = 0;
      *(v75 + 152) = 1254227489;
      v77 = v71 + 6356752.31 + v73;
      *(v75 + 144) = v72;
      *(v75 + 148) = v77;
      do
      {
        *(v75 + 176 + v76) = *(v5 + v76 + 16);
        v76 += 4;
      }

      while (v76 != 16);
      for (m = 0; m != 16; m += 4)
      {
        *(v75 + 192 + m) = *(v5 + m);
      }

      *(v75 + 208) = xmmword_1B33B0710;
      v79 = 0;
      if (v16)
      {
        v79 = *(v16 + 456);
      }

      *(v75 + 224) = v79;
      v80 = v70;
      v81 = *(this + 6);
      v82 = *(v81 + 160);
      if (v71 < v80)
      {
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(v82, *(v81 + 192), *(v81 + 200));
        v116 = *(v8 + 3032);
        if (v116 > 1.0)
        {
LABEL_65:
          ggl::BufferMemory::~BufferMemory(v144);
          return;
        }

        *(v145 + 164) = v116;
        v117 = *a2;
        [v117 sizeInPixels];
        v119 = v118;
        *(v145 + 168) = v119;

        v89 = v145;
        *(v145 + 148) = v77;
        *(v89 + 156) = 1065353216;
      }

      else
      {
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(v82, *(v81 + 176), *(v81 + 184));
        v83 = +[VKDebugSettings sharedSettings];
        [v83 daVinciAtmosphereColorMidpoint];
        v84 = (v71 - v80) / v80;
        v85 = fmin(fmax(v84, 0.0), 1.0);
        v87 = -(v85 * v86 + -1.0);
        *(v145 + 156) = v87;

        v12 = v85;
        v89 = v145;
        *(v145 + 160) = v12;
        v90 = v80 + 6356752.31;
        v91 = v77 + v85 * (v90 - v77);
        *(v89 + 148) = v91;
        v11 = 1;
      }

      if (v16)
      {
        v121 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v16 + 192)), *(v16 + 208));
        v92.f32[0] = gm::operator*<float,4,4,1>(&v138, &v121);
        v92.i32[1] = v93;
        v92.i64[1] = __PAIR64__(v95, v94);
        v96 = vmulq_f32(v92, v92);
        v96.i64[0] = vpaddq_f32(v96, v96).u64[0];
        v96.f32[0] = sqrtf(vaddv_f32(*v96.f32));
        __asm { FMOV            V2.4S, #1.0 }

        *(v89 + 128) = vmulq_f32(v92, vdivq_f32(_Q2, vdupq_lane_s32(*v96.f32, 0)));
        v102 = *(*(this + 6) + 160);
        v103 = *(v102 + 136);
        v104 = *(v102 + 232);
        v105 = *v16;
        v106 = *(v16 + 8);
      }

      else
      {
        v115 = *(*(this + 6) + 160);
        md::LightingLogicContext::defaultLightingConstantData(v88);
        v103 = *(v115 + 136);
        v104 = *(v115 + 232);
        v105 = md::LightingLogicContext::defaultLightingConstantData(void)::_defaultLightingConstantData;
        v106 = qword_1EB843D40;
      }

      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v103, v104, v105, v106);
      ggl::CommandBuffer::pushRenderItem(v10, *(*(this + 6) + 224));
      if (v11)
      {
        v107 = *(this + 6);
        if (!*(v107 + 24) && md::GlobeSkyRenderResources::loadStarsModel(v107))
        {
          _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_10GlobeStars4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        v108 = *(*(this + 6) + 104);
        if (v108)
        {
          ggl::CommandBuffer::pushRenderItem(v10, v108);
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v121, **(*(*(this + 6) + 56) + 136));
          v109 = 0;
          v110 = v123;
          v111 = v141;
          *(v123 + 64) = v140;
          *(v110 + 80) = v111;
          v112 = v143;
          *(v110 + 96) = v142;
          *(v110 + 112) = v112;
          do
          {
            *(v110 + v109) = *(&v138 + v109);
            v109 += 16;
          }

          while (v109 != 64);
          *(v110 + 128) = v12;
          v113 = *a2;
          [v113 contentScale];
          *&v114 = v114;
          *(v123 + 132) = LODWORD(v114);

          ggl::BufferMemory::~BufferMemory(&v121);
        }
      }

      goto LABEL_65;
    }
  }
}

float gm::Matrix<float,4,4>::Matrix<4,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a1;
  do
  {
    v5 = 0;
    v6 = v4;
    do
    {
      *v6 = *(a2 + v5);
      v6 += 4;
      v5 += 12;
    }

    while (v5 != 36);
    ++v3;
    ++v4;
    a2 += 4;
  }

  while (v3 != 3);
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = *a3;
  *(a1 + 52) = *(a3 + 4);
  result = *(a3 + 8);
  *(a1 + 56) = result;
  *(a1 + 60) = 1065353216;
  return result;
}

uint64_t md::GridRenderLayer::mapIsOpaque(md::GridRenderLayer *this, const md::LayoutContext *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v4, 0xE42D19AFCA302E68);
  if (v5 && (v6 = v5[5], *(v6 + 8) == 0xE42D19AFCA302E68))
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = md::LayoutContext::get<md::SceneContext>(v4);
  v9 = md::LayoutContext::get<md::MaterialContext>(v4);
  v10 = *(gdc::Context::context<md::GridContext>(v4) + 32);
  v11 = *v8;
  isFinishedLoadingRequiredLayers = md::SceneStateManager::isFinishedLoadingRequiredLayers(*v8);
  v13 = *(v11 + 280);
  hasAnyTilesToRender = md::SceneContext::hasAnyTilesToRender(v11);
  v15 = hasAnyTilesToRender;
  v16 = *v7;
  v17 = *v7 != 0;
  v18 = atomic_load((*(v16 + 16) + 2787));
  if (v9)
  {
    LODWORD(v9) = *(v9 + 74);
  }

  v19 = v16 == 0;
  v20 = ~(v13 | ~(isFinishedLoadingRequiredLayers & v10));
  if (v19)
  {
    v20 = 0;
  }

  v21 = v20 & v18 & ~v9 & hasAnyTilesToRender;
  if (((v20 & v18 & ~v9) & hasAnyTilesToRender & 1) == 0)
  {
    md::LayoutContext::frameState(a2);
    v23 = trunc(*(v22 + 88) * 1000.0);
    if (v23 - *(this + 8) > 4000.0)
    {
      *(this + 8) = v23;
      if (GEOGetVectorKitVKMapIsOpaqueStateLog::onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKMapIsOpaqueStateLog::onceToken, &__block_literal_global_704);
      }

      v24 = GEOGetVectorKitVKMapIsOpaqueStateLog::log;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26[0] = 67110656;
        v26[1] = v10;
        v27 = 1024;
        v28 = isFinishedLoadingRequiredLayers;
        v29 = 1024;
        v30 = v13;
        v31 = 1024;
        v32 = v15;
        v33 = 1024;
        v34 = v17;
        v35 = 1024;
        v36 = v18 & 1;
        v37 = 1024;
        v38 = v9 & 1;
        _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_INFO, "Allow Opaque:%d, Finished Loading Required:%d, Has Tile Exclusion Areas:%d, Has Any Tiles:%d, Has Style Manager:%d, Is Style Manager Valid:%d, Has Pending Materials:%d", v26, 0x2Cu);
      }
    }
  }

  return v21;
}

void __GEOGetVectorKitVKMapIsOpaqueStateLog_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "VKMapIsOpaqueState");
  v1 = GEOGetVectorKitVKMapIsOpaqueStateLog::log;
  GEOGetVectorKitVKMapIsOpaqueStateLog::log = v0;
}

uint64_t gdc::GlobeTileUtils::createSplinePatchFromMercatorRect(uint64_t a1, double *a2, double a3, double a4)
{
  v167 = *MEMORY[0x1E69E9840];
  gdc::GlobeTileUtils::boundsFromMercatorRect(v154, a2, a3, a4);
  geo::RigidTransform<double,double>::inverse(v150, v154);
  v5 = a2[1];
  v6 = a2[3];
  v7 = exp(v5 * 6.28318531 + -3.14159265);
  v8 = atan(v7) * 2.0 + -1.57079633;
  v9 = exp(v6 * 6.28318531 + -3.14159265);
  v10 = atan(v9);
  v11 = v8;
  *&v10 = v10 * 2.0 + -1.57079633;
  *&v10 = *&v10 - v11;
  v12 = v11 + (*&v10 * 0.66667);
  v13 = tan((v11 + (*&v10 * 0.33333)) * 0.5 + 0.785398163);
  v14 = log(v13);
  v15 = tan(v12 * 0.5 + 0.785398163);
  v16 = log(v15);
  v17 = 0;
  v18 = 0;
  v19 = (0.5 - v5 + v14 * 0.159154943) / (v6 - v5);
  *&v16 = (0.5 - v5 + v16 * 0.159154943) / (v6 - v5);
  v149[0] = 0;
  *&v149[1] = v19;
  v149[2] = LODWORD(v16);
  v149[3] = 1065353216;
  v121 = *a2;
  v120 = (a2[2] - *a2) * 0.333333333;
  v20 = v153;
  v21 = &qword_1B33AE1B0;
  v22 = vld1q_dup_f64(v21);
  v122 = v22.f64[1];
  do
  {
    v23 = fmod((v121 + v120 * v17) * 6.28318531, 6.28318531);
    v24 = fmod(v23 + 6.28318531, 6.28318531);
    v25 = __sincos_stret(v24 + -3.14159265);
    for (i = 0; i != 4; ++i)
    {
      v27 = exp((v5 + (v6 - v5) * *&v149[i]) * 6.28318531 + -3.14159265);
      v28 = atan(v27);
      v29 = __sincos_stret(v28 * 2.0 + -1.57079633);
      v30.f64[0] = 6378137.0 / sqrt(v29.__sinval * v29.__sinval * -0.00669437999 + 1.0);
      v31.f64[0] = v25.__sinval;
      v31.f64[1] = v30.f64[0];
      v30.f64[1] = v29.__sinval;
      v32.f64[1] = v122;
      v32.f64[0] = v29.__cosval;
      v33 = vmulq_f64(v30, v32);
      *v123 = v25.__cosval * v33.f64[0];
      *&v123[8] = vmulq_f64(v33, v31);
      *v163 = v151;
      *&v163[16] = v152;
      v164 = v20;
      v34 = gm::Quaternion<double>::operator*(v163, v123);
      v35 = 0;
      v165 = v34;
      *&v166 = v36;
      *(&v166 + 1) = v37;
      do
      {
        *&v159.i64[v35] = *(&v165 + v35 * 8) + *&v150[v35 * 8];
        ++v35;
      }

      while (v35 != 3);
      *v163 = v159;
      *&v163[16] = v160;
      v45 = gm::Box<double,3>::invLerped(&v155, v163);
      v46 = 0;
      *v159.i64 = v45;
      v159.i64[1] = v47;
      v160 = v48;
      do
      {
        v49 = *&v159.i64[v46];
        *(&v165 + v46++) = v49;
      }

      while (v46 != 3);
      v50 = &v124 + 12 * v18 + 12 * i;
      *v50 = v165;
      *(v50 + 2) = v166;
    }

    v18 += 4;
    ++v17;
  }

  while (v17 != 4);
  *a1 = v124;
  *(a1 + 8) = v125;
  *(a1 + 36) = *(&v130 + 4);
  *(a1 + 44) = HIDWORD(v130);
  *(a1 + 144) = v140;
  v51 = v148;
  *(a1 + 152) = v141;
  *(a1 + 188) = v51;
  *(a1 + 180) = v147;
  v52 = v124;
  v53 = v125;
  v55 = *(&v130 + 4);
  v54 = *(&v130 + 3);
  gm::fitCubicBezierControlPoints<float,3,float>(v163, *&v124, *(&v124 + 1), v125, v126, v127, v128, v38, v39, v40, v41, v42, v43, v44, v129, v130);
  v165 = *v163;
  v56 = *&v163[8];
  v57 = *&v163[20];
  v166 = *&v163[8];
  v58 = *&v163[12];
  *(a1 + 12) = *v163;
  *(a1 + 20) = v56;
  *(a1 + 24) = v58;
  *(a1 + 32) = v57;
  v59 = v140;
  v60 = v141;
  *(&v116 + 3) = v141;
  LODWORD(v116) = v136;
  *(&v116 + 4) = v140;
  gm::fitCubicBezierControlPoints<float,3,float>(v163, *&v52, *(&v52 + 1), v53, v131, v132, v133, v61, v62, v63, v64, v65, v66, v67, v135, v116);
  v165 = *v163;
  v68 = *&v163[8];
  v69 = *&v163[20];
  v166 = *&v163[8];
  v70 = *&v163[12];
  *(a1 + 48) = *v163;
  *(a1 + 56) = v68;
  *(a1 + 96) = v70;
  *(a1 + 104) = v69;
  v71 = v147;
  v72 = v148;
  HIDWORD(v117) = v148;
  LODWORD(v117) = v139;
  *(&v117 + 4) = v147;
  gm::fitCubicBezierControlPoints<float,3,float>(v163, *&v55, *(&v55 + 1), v54, *&v134[6], *&v134[7], *&v134[8], v73, v74, v75, v76, v77, v78, v79, v138, v117);
  v165 = *v163;
  v80 = *&v163[8];
  v81 = *&v163[20];
  v166 = *&v163[8];
  v82 = *&v163[12];
  *(a1 + 84) = *v163;
  *(a1 + 92) = v80;
  *(a1 + 132) = v82;
  *(a1 + 140) = v81;
  HIDWORD(v118) = v72;
  LODWORD(v118) = v146;
  *(&v118 + 4) = v71;
  gm::fitCubicBezierControlPoints<float,3,float>(v163, *&v59, *(&v59 + 1), v60, v142, v143, v144, v83, v84, v85, v86, v87, v88, v89, v145, v118);
  v165 = *v163;
  v90 = *&v163[8];
  v91 = *&v163[20];
  v166 = *&v163[8];
  v92 = *&v163[12];
  *(a1 + 156) = *v163;
  *(a1 + 164) = v90;
  *(a1 + 168) = v92;
  *(a1 + 176) = v91;
  v159 = xmmword_1B33B0B60;
  *v123 = xmmword_1B33B0B70;
  v161 = xmmword_1B33B0B90;
  v162 = xmmword_1B33B0B80;
  *v93.i32 = gm::Matrix<float,4,4>::Matrix<int,void>(v163, &v159, v123, &v162, &v161);
  gm::Matrix<float,4,4>::inverted<int,void>(&v159, v163, v93, v94, v95, v96, v97);
  *(a1 + 60) = 0;
  *(a1 + 108) = 0;
  *(a1 + 68) = 0;
  *(a1 + 76) = 0;
  *(a1 + 124) = 0;
  *(a1 + 116) = 0;
  LODWORD(v161) = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(a1, 0.33333, 0.33333);
  *(&v161 + 4) = __PAIR64__(v99, v98);
  v158[0] = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(a1, 0.33333, 0.66667);
  v158[1] = v100;
  v158[2] = v101;
  v157[0] = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(a1, 0.66667, 0.33333);
  v157[1] = v102;
  v157[2] = v103;
  v104 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(a1, 0.66667, 0.66667);
  v105 = 0;
  *v156 = v104;
  v156[1] = v106;
  v156[2] = v107;
  do
  {
    v108 = 0;
    v109.i32[0] = v134[v105];
    v109.i32[1] = v134[v105 + 3];
    v109.i32[2] = v137[v105];
    v109.i32[3] = v137[v105 + 3];
    v110.i32[0] = *(&v161 + v105);
    v110.i32[1] = v158[v105];
    v110.i32[2] = v157[v105];
    v110.i32[3] = v156[v105];
    v162 = vsubq_f32(v109, v110);
    v111 = &v159;
    do
    {
      result = 0;
      v113 = 0.0;
      do
      {
        v113 = v113 + (v162.f32[result] * v111[result].f32[0]);
        ++result;
      }

      while (result != 4);
      *&v123[4 * v108++] = v113;
      v111 = (v111 + 4);
    }

    while (v108 != 4);
    v114 = *&v123[4];
    v115 = *&v123[8];
    *(a1 + 60 + 4 * v105) = *v123;
    *(a1 + 72 + 4 * v105) = v114;
    *(a1 + 108 + 4 * v105) = v115;
    *(a1 + 120 + 4 * v105++) = HIDWORD(v115);
  }

  while (v105 != 3);
  return result * 4;
}

double gm::Box<double,3>::invLerped(double *a1, uint64_t a2)
{
  if (a1[3] >= *a1 && a1[4] >= a1[1] && a1[5] >= a1[2])
  {
    for (i = 0; i != 3; ++i)
    {
      v4 = (*(a2 + i * 8) - a1[i]) / (a1[i + 3] - a1[i]);
      *(&__b + i * 8) = v4;
    }
  }

  else
  {
    memset_pattern16(&__b, &unk_1B33B25A0, 0x18uLL);
  }

  return __b;
}

float *gm::fitCubicBezierControlPoints<float,3,float>(float *result, float a2, float a3, float a4, float a5, float a6, float a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16)
{
  v16 = 0;
  *v36 = a2;
  *&v36[1] = a3;
  *&v36[2] = a4;
  *v35 = a5;
  *&v35[1] = a6;
  *&v35[2] = a7;
  v33 = a15;
  v34 = a16;
  v31 = *(&a16 + 4);
  v32 = HIDWORD(a16);
  do
  {
    *(&v37 + v16 * 4) = *&v36[v16] * 0.2963;
    ++v16;
  }

  while (v16 != 3);
  v17 = 0;
  v27 = v37;
  v28 = v38;
  do
  {
    *(&v37 + v17) = *(&v31 + v17) * 0.037037;
    v17 += 4;
  }

  while (v17 != 12);
  v18 = 0;
  v25 = v37;
  v26 = v38;
  do
  {
    *(&v37 + v18) = *(&v25 + v18) + *(&v27 + v18);
    v18 += 4;
  }

  while (v18 != 12);
  v19 = 0;
  v29 = v37;
  v30 = v38;
  do
  {
    *(&v37 + v19 * 4) = *&v36[v19] * 0.037037;
    ++v19;
  }

  while (v19 != 3);
  v20 = 0;
  v27 = v37;
  v28 = v38;
  do
  {
    *(&v37 + v20) = *(&v31 + v20) * 0.2963;
    v20 += 4;
  }

  while (v20 != 12);
  v21 = 0;
  v25 = v37;
  v26 = v38;
  do
  {
    *(&v37 + v21) = *(&v25 + v21) + *(&v27 + v21);
    v21 += 4;
  }

  while (v21 != 12);
  for (i = 0; i != 3; ++i)
  {
    v23 = *&v35[i] - *(&v29 + i);
    v24 = *(&v33 + i) - *(&v37 + i);
    *result = (v23 * 3.0) + (v24 * -1.5);
    result[3] = (v23 * -1.5) + (v24 * 3.0);
    ++result;
  }

  return result;
}

float gm::Matrix<float,4,4>::Matrix<int,void>(uint64_t a1, uint64_t a2, int *a3, int *a4, float *a5)
{
  for (i = 0; i != 16; i += 4)
  {
    *(a1 + i) = *(a2 + i);
  }

  for (j = 4; j != 8; ++j)
  {
    v7 = *a3++;
    *(a1 + 4 * j) = v7;
  }

  do
  {
    v8 = *a4++;
    *(a1 + 4 * j++) = v8;
  }

  while (j != 12);
  do
  {
    v9 = *a5++;
    result = v9;
    *(a1 + 4 * j++) = v9;
  }

  while (j != 16);
  return result;
}

float32_t gm::Matrix<float,4,4>::inverted<int,void>(float32x4_t *a1, uint64_t a2, int32x4_t a3, double a4, double a5, int32x4_t a6, int32x4_t a7)
{
  a7.i32[0] = *(a2 + 28);
  v9 = *(a2 + 32);
  v10 = *(a2 + 16);
  v11 = *(a2 + 20);
  v12 = *(a2 + 44);
  v13 = *(a2 + 48);
  v14 = *(a2 + 8);
  v15 = *(a2 + 12);
  v7.i32[0] = *(a2 + 24);
  v16 = *(a2 + 4);
  _D26 = *(a2 + 36);
  _Q27.i64[0] = *(a2 + 52);
  *a6.i8 = vrev64_s32(*_Q27.f32);
  v18 = v9;
  v62 = v9 * _Q27.f32[0];
  v63 = v9;
  v19 = v9 * _Q27.f32[0];
  v77 = (v13 * _D26.f32[0]) - (v9 * _Q27.f32[0]);
  v76 = v11 * v9;
  v74 = (v11 * v9) - (v10 * _D26.f32[0]);
  v64 = v11 * v13;
  v65 = v10 * _D26.f32[0];
  _S15 = (v10 * _Q27.f32[0]) - (v11 * v13);
  __asm
  {
    FMLA            S7, S16, V27.S[1]
    FMLA            S7, S15, V26.S[1]
  }

  v27 = _S7;
  v72 = _S7;
  *a3.i8 = vmul_f32(_D26, *a6.i8);
  *v28.f32 = vzip1_s32(v7, _D26);
  v28.i64[1] = __PAIR64__(LODWORD(v11), _Q27.u32[0]);
  v29 = _Q27;
  v29.f32[1] = v14;
  v30.i64[0] = __PAIR64__(_D26.u32[1], LODWORD(v11));
  v30.i64[1] = __PAIR64__(v7.u32[0], a6.u32[0]);
  *&a6.i32[1] = v16;
  v31 = vmulq_f32(vzip1q_s32(a6, vdupq_lane_s32(*a6.i8, 1)), v30);
  a3.i32[2] = v31.i32[0];
  v32 = vmulq_f32(vzip1q_s32(v29, vdupq_lane_s32(*v29.f32, 1)), v28);
  v29.i64[0] = vrev64q_s32(a3).u64[0];
  *&a3.i32[3] = *v7.i32 * _D26.f32[0];
  v29.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(v11, _D26, 1)), v32.u32[0]);
  v33 = *(a2 + 60);
  _Q5.i64[0] = __PAIR64__(LODWORD(v33), LODWORD(v12));
  v35 = *a2 * v11;
  _Q5.i64[1] = __PAIR64__(LODWORD(v12), a7.u32[0]);
  v36 = a7;
  *&v36.i32[1] = v15;
  v37 = vmlaq_f32(vmulq_f32(vsubq_f32(a3, v29), vzip1q_s32(v36, vdupq_lane_s32(*v36.i8, 1))), _Q5, vsubq_f32(v32, v31));
  _Q5.i64[0] = __PAIR64__(LODWORD(v12), LODWORD(v33));
  v73 = vmuls_lane_f32(v35, _D26, 1);
  _Q5.i64[1] = __PAIR64__(a7.u32[0], LODWORD(v33));
  v38 = vzip2q_s32(v29, v31);
  v39 = v16 * v18;
  v40 = vzip2q_s32(a3, v32);
  v41 = v16 * v10;
  v68 = (v16 * v18) * *v7.i32;
  v42 = vmlaq_f32(v37, _Q5, vsubq_f32(vzip2q_s32(v38, vzip1q_s32(v38, v31)), vzip2q_s32(v40, vzip1q_s32(v40, v32))));
  v70 = (*a2 * _Q27.f32[0]) * *v7.i32;
  v71 = vmuls_lane_f32(v16 * v10, *_Q27.f32, 1);
  *v40.i32 = ((v27 * v15) + (((v68 + (v14 * (v10 * _D26.f32[0]))) + v73) * v33)) + (((v71 + (v14 * (v11 * v13))) + v70) * v12);
  v43 = v16 * v13;
  v44 = *a2 * _D26.f32[0];
  v69 = vmuls_lane_f32(v44, *_Q27.f32, 1);
  v66 = vmuls_lane_f32(v16 * v13, _D26, 1);
  v67 = *v40.i32 + (((v66 + (v14 * v19)) + v69) * *a7.i32);
  v30.f32[0] = vmuls_lane_f32(v10, *_Q27.f32, 1);
  *v38.i32 = v14 * v10;
  v45 = *a2 * *v7.i32;
  *v36.i32 = vmuls_lane_f32(*a2, *_Q27.f32, 1);
  v32.f32[0] = v14 * v13;
  _Q5.f32[0] = *a2 * _Q27.f32[0];
  v60 = (_S15 * v15) + (((v16 * v13) - _Q5.f32[0]) * *a7.i32);
  v61 = ((((*v7.i32 * v13) - v30.f32[0]) * v15) + (((v14 * v10) - v45) * v33)) + ((*v36.i32 - (v14 * v13)) * *a7.i32);
  v46 = v35;
  v59 = v35;
  v75 = ((v74 * v15) + (((v16 * v10) - v35) * v12)) + ((v44 - (v16 * v18)) * *a7.i32);
  v47 = v13 * _D26.f32[0];
  v48 = vmuls_lane_f32(v46, *_Q27.f32, 1);
  v49 = (v16 * v13) * *v7.i32;
  v50 = v10 * _Q27.f32[0];
  v51 = ((((v33 * v14) * v76) + ((*a7.i32 * v14) * (v13 * _D26.f32[0]))) + (v48 * v12)) + ((v49 + (v14 * (v10 * _Q27.f32[0]))) * v12);
  v52 = v30.f32[0] - (*v7.i32 * v13);
  __asm { FMLA            S17, S5, V26.S[1] }

  v54 = vmuls_lane_f32(v13, _D26, 1);
  v55 = vmuls_lane_f32(v10, _D26, 1);
  v56 = vmuls_lane_f32(*a2, _D26, 1);
  v30.f32[0] = vmuls_lane_f32(v41, _D26, 1);
  _D26.f32[0] = vmuls_lane_f32(v63, *_Q27.f32, 1);
  v30.f32[0] = v30.f32[0] + (v44 * *v7.i32);
  v57 = v63 * *v7.i32;
  v31.f32[0] = ((v77 * v15) + ((v39 - v44) * v33)) + ((_Q5.f32[0] - v43) * v12);
  _Q5.f32[0] = 1.0 / (v67 - ((v51 + (_S17 * *a7.i32)) + (v30.f32[0] * v33)));
  *a1 = vmulq_n_f32(v42, _Q5.f32[0]);
  a1[1].f32[0] = _Q5.f32[0] * ((((v54 - _D26.f32[0]) * *a7.i32) + ((v57 - v55) * v33)) + (v52 * v12));
  a1[1].f32[1] = _Q5.f32[0] * ((((_D26.f32[0] - v54) * v15) + ((v32.f32[0] - *v36.i32) * v12)) + ((v56 - (v14 * v63)) * v33));
  a1[1].f32[2] = _Q5.f32[0] * v61;
  a1[1].f32[3] = _Q5.f32[0] * (((((v55 - v57) * v15) + ((v14 * v63) * *a7.i32)) + (v45 * v12)) - ((v12 * *v38.i32) + (v56 * *a7.i32)));
  a1[2].f32[0] = _Q5.f32[0] * (((*a7.i32 * (v62 - v47)) + ((v64 - v50) * v12)) + ((v65 - v76) * v33));
  a1[2].f32[1] = _Q5.f32[0] * v31.f32[0];
  a1[2].f32[2] = _Q5.f32[0] * (v60 + ((v59 - v41) * v33));
  a1[2].f32[3] = _Q5.f32[0] * v75;
  a1[3].f32[0] = _Q5.f32[0] * v72;
  a1[3].f32[1] = _Q5.f32[0] * (((v66 + (v14 * (v62 - v47))) + v69) - _S17);
  result = _Q5.f32[0] * (((v71 + v70) - (v49 - ((v64 - v50) * v14))) - v48);
  a1[3].f32[2] = result;
  a1[3].f32[3] = _Q5.f32[0] * (((v68 + ((v65 - v76) * v14)) + v73) - v30.f32[0]);
  return result;
}

float gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(uint64_t a1, float a2, float a3)
{
  v3 = 0;
  v4 = 1.0 - a2;
  v5 = 1.0 - a3;
  v6 = (v4 * v4) * v4;
  v7 = (1.0 - a2) * 3.0;
  v8 = v7 * (a2 * a2);
  v9 = (1.0 - a3) * 3.0;
  v10 = a3 * a3;
  do
  {
    *(&v156 + v3) = *(a1 + v3) * v6;
    v3 += 4;
  }

  while (v3 != 12);
  v11 = 0;
  v12 = v9 * v10;
  v13 = (v5 * v5) * v5;
  v124 = v156;
  v125 = v157;
  do
  {
    *(&v156 + v11) = *(&v124 + v11) * v13;
    v11 += 4;
  }

  while (v11 != 12);
  v14 = 0;
  v15 = (v5 * a3) * v9;
  v126 = v156;
  v127 = v157;
  do
  {
    *(&v156 + v14) = *(a1 + 12 + v14) * v6;
    v14 += 4;
  }

  while (v14 != 12);
  v16 = 0;
  v17 = (v4 * a2) * v7;
  v120 = v156;
  v121 = v157;
  do
  {
    *(&v156 + v16) = *(&v120 + v16) * v15;
    v16 += 4;
  }

  while (v16 != 12);
  v18 = 0;
  v122 = v156;
  v123 = v157;
  do
  {
    *(&v156 + v18) = *(&v122 + v18) + *(&v126 + v18);
    v18 += 4;
  }

  while (v18 != 12);
  v19 = 0;
  v128 = v156;
  v129 = v157;
  do
  {
    *(&v156 + v19) = *(a1 + 24 + v19) * v6;
    v19 += 4;
  }

  while (v19 != 12);
  v20 = 0;
  v116 = v156;
  v117 = v157;
  do
  {
    *(&v156 + v20) = *(&v116 + v20) * v12;
    v20 += 4;
  }

  while (v20 != 12);
  v21 = 0;
  v118 = v156;
  v119 = v157;
  do
  {
    *(&v156 + v21) = *(&v118 + v21) + *(&v128 + v21);
    v21 += 4;
  }

  while (v21 != 12);
  v22 = 0;
  v130 = v156;
  v131 = v157;
  do
  {
    *(&v156 + v22) = *(a1 + 36 + v22) * v6;
    v22 += 4;
  }

  while (v22 != 12);
  v23 = 0;
  v24 = v10 * a3;
  v112 = v156;
  v113 = v157;
  do
  {
    *(&v156 + v23) = *(&v112 + v23) * v24;
    v23 += 4;
  }

  while (v23 != 12);
  v25 = 0;
  v114 = v156;
  v115 = v157;
  do
  {
    *(&v156 + v25) = *(&v114 + v25) + *(&v130 + v25);
    v25 += 4;
  }

  while (v25 != 12);
  v26 = 0;
  v132 = v156;
  v133 = v157;
  do
  {
    *(&v156 + v26) = *(a1 + 48 + v26) * v17;
    v26 += 4;
  }

  while (v26 != 12);
  v27 = 0;
  v108 = v156;
  v109 = v157;
  do
  {
    *(&v156 + v27) = *(&v108 + v27) * v13;
    v27 += 4;
  }

  while (v27 != 12);
  v28 = 0;
  v110 = v156;
  v111 = v157;
  do
  {
    *(&v156 + v28) = *(&v110 + v28) + *(&v132 + v28);
    v28 += 4;
  }

  while (v28 != 12);
  v29 = 0;
  v134 = v156;
  v135 = v157;
  do
  {
    *(&v156 + v29) = *(a1 + 60 + v29) * v17;
    v29 += 4;
  }

  while (v29 != 12);
  v30 = 0;
  v104 = v156;
  v105 = v157;
  do
  {
    *(&v156 + v30) = *(&v104 + v30) * v15;
    v30 += 4;
  }

  while (v30 != 12);
  v31 = 0;
  v106 = v156;
  v107 = v157;
  do
  {
    *(&v156 + v31) = *(&v106 + v31) + *(&v134 + v31);
    v31 += 4;
  }

  while (v31 != 12);
  v32 = 0;
  v136 = v156;
  v137 = v157;
  do
  {
    *(&v156 + v32) = *(a1 + 72 + v32) * v17;
    v32 += 4;
  }

  while (v32 != 12);
  v33 = 0;
  v100 = v156;
  v101 = v157;
  do
  {
    *(&v156 + v33) = *(&v100 + v33) * v12;
    v33 += 4;
  }

  while (v33 != 12);
  v34 = 0;
  v102 = v156;
  v103 = v157;
  do
  {
    *(&v156 + v34) = *(&v102 + v34) + *(&v136 + v34);
    v34 += 4;
  }

  while (v34 != 12);
  v35 = 0;
  v138 = v156;
  v139 = v157;
  do
  {
    *(&v156 + v35) = *(a1 + 84 + v35) * v17;
    v35 += 4;
  }

  while (v35 != 12);
  v36 = 0;
  v96 = v156;
  v97 = v157;
  do
  {
    *(&v156 + v36) = *(&v96 + v36) * v24;
    v36 += 4;
  }

  while (v36 != 12);
  v37 = 0;
  v98 = v156;
  v99 = v157;
  do
  {
    *(&v156 + v37) = *(&v98 + v37) + *(&v138 + v37);
    v37 += 4;
  }

  while (v37 != 12);
  v38 = 0;
  v140 = v156;
  v141 = v157;
  do
  {
    *(&v156 + v38) = *(a1 + 96 + v38) * v8;
    v38 += 4;
  }

  while (v38 != 12);
  v39 = 0;
  v92 = v156;
  v93 = v157;
  do
  {
    *(&v156 + v39) = *(&v92 + v39) * v13;
    v39 += 4;
  }

  while (v39 != 12);
  v40 = 0;
  v94 = v156;
  v95 = v157;
  do
  {
    *(&v156 + v40) = *(&v94 + v40) + *(&v140 + v40);
    v40 += 4;
  }

  while (v40 != 12);
  v41 = 0;
  v142 = v156;
  v143 = v157;
  do
  {
    *(&v156 + v41) = *(a1 + 108 + v41) * v8;
    v41 += 4;
  }

  while (v41 != 12);
  v42 = 0;
  v88 = v156;
  v89 = v157;
  do
  {
    *(&v156 + v42) = *(&v88 + v42) * v15;
    v42 += 4;
  }

  while (v42 != 12);
  v43 = 0;
  v90 = v156;
  v91 = v157;
  do
  {
    *(&v156 + v43) = *(&v90 + v43) + *(&v142 + v43);
    v43 += 4;
  }

  while (v43 != 12);
  v44 = 0;
  v144 = v156;
  v145 = v157;
  do
  {
    *(&v156 + v44) = *(a1 + 120 + v44) * v8;
    v44 += 4;
  }

  while (v44 != 12);
  v45 = 0;
  v84 = v156;
  v85 = v157;
  do
  {
    *(&v156 + v45) = *(&v84 + v45) * v12;
    v45 += 4;
  }

  while (v45 != 12);
  v46 = 0;
  v86 = v156;
  v87 = v157;
  do
  {
    *(&v156 + v46) = *(&v86 + v46) + *(&v144 + v46);
    v46 += 4;
  }

  while (v46 != 12);
  v47 = 0;
  v146 = v156;
  v147 = v157;
  do
  {
    *(&v156 + v47) = *(a1 + 132 + v47) * v8;
    v47 += 4;
  }

  while (v47 != 12);
  v48 = 0;
  v80 = v156;
  v81 = v157;
  do
  {
    *(&v156 + v48) = *(&v80 + v48) * v24;
    v48 += 4;
  }

  while (v48 != 12);
  v49 = 0;
  v82 = v156;
  v83 = v157;
  do
  {
    *(&v156 + v49) = *(&v82 + v49) + *(&v146 + v49);
    v49 += 4;
  }

  while (v49 != 12);
  v50 = 0;
  v51 = (a2 * a2) * a2;
  v148 = v156;
  v149 = v157;
  do
  {
    *(&v156 + v50) = *(a1 + 144 + v50) * v51;
    v50 += 4;
  }

  while (v50 != 12);
  v52 = 0;
  v76 = v156;
  v77 = v157;
  do
  {
    *(&v156 + v52) = *(&v76 + v52) * v13;
    v52 += 4;
  }

  while (v52 != 12);
  v53 = 0;
  v78 = v156;
  v79 = v157;
  do
  {
    *(&v156 + v53) = *(&v78 + v53) + *(&v148 + v53);
    v53 += 4;
  }

  while (v53 != 12);
  v54 = 0;
  v150 = v156;
  v151 = v157;
  do
  {
    *(&v156 + v54) = *(a1 + 156 + v54) * v51;
    v54 += 4;
  }

  while (v54 != 12);
  v55 = 0;
  v72 = v156;
  v73 = v157;
  do
  {
    *(&v156 + v55) = *(&v72 + v55) * v15;
    v55 += 4;
  }

  while (v55 != 12);
  v56 = 0;
  v74 = v156;
  v75 = v157;
  do
  {
    *(&v156 + v56) = *(&v74 + v56) + *(&v150 + v56);
    v56 += 4;
  }

  while (v56 != 12);
  v57 = 0;
  v152 = v156;
  v153 = v157;
  do
  {
    *(&v156 + v57) = *(a1 + 168 + v57) * v51;
    v57 += 4;
  }

  while (v57 != 12);
  v58 = 0;
  v68 = v156;
  v69 = v157;
  do
  {
    *(&v156 + v58) = *(&v68 + v58) * v12;
    v58 += 4;
  }

  while (v58 != 12);
  v59 = 0;
  v70 = v156;
  v71 = v157;
  do
  {
    *(&v156 + v59) = *(&v70 + v59) + *(&v152 + v59);
    v59 += 4;
  }

  while (v59 != 12);
  v60 = 0;
  v154 = v156;
  v155 = v157;
  do
  {
    *(&v156 + v60) = *(a1 + 180 + v60) * v51;
    v60 += 4;
  }

  while (v60 != 12);
  v61 = 0;
  v64 = v156;
  v65 = v157;
  do
  {
    *(&v156 + v61) = *(&v64 + v61) * v24;
    v61 += 4;
  }

  while (v61 != 12);
  v62 = 0;
  v66 = v156;
  v67 = v157;
  do
  {
    *(&v156 + v62) = *(&v66 + v62) + *(&v154 + v62);
    v62 += 4;
  }

  while (v62 != 12);
  return *&v156;
}

void gm::_polyFit<double>(double *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = malloc_type_calloc(0x10uLL, 8uLL, 0x100004000313F17uLL);
  v8 = malloc_type_malloc(0x50uLL, 0x100004000313F17uLL);
  v9 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
  v10 = malloc_type_calloc(4uLL, 8uLL, 0x100004000313F17uLL);
  v11 = malloc_type_calloc(4uLL, 8uLL, 0x100004000313F17uLL);
  v12 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  v13 = v12;
  v14 = 0;
  v15 = v12 + 8;
  do
  {
    v12[v14] = 1.0;
    v16 = 3;
    v17 = v15;
    do
    {
      *v17 = (a1[v14] - v6) * *(v17 - 8);
      v17 += 8;
      --v16;
    }

    while (v16);
    ++v14;
    ++v15;
  }

  while (v14 != 8);
  v18 = 0;
  v19 = v12;
  do
  {
    v20 = 0;
    v21 = v11[v18];
    do
    {
      v21 = v21 + v19[v20] * v19[v20];
      v11[v18] = v21;
      ++v20;
    }

    while (v20 != 8);
    v11[v18++] = sqrt(v21);
    v19 += 8;
  }

  while (v18 != 4);
  v22 = 0;
  v23 = v12;
  do
  {
    v24 = 0;
    v25 = v12;
    do
    {
      v26 = 0;
      v27 = 0uLL;
      do
      {
        v27 = vmlaq_f64(v27, *&v25[v26], *&v23[v26]);
        v26 += 2;
      }

      while (v26 != 8);
      v7[4 * v22 + v24] = vaddvq_f64(v27) / (v11[v22] * v11[v24]);
      ++v24;
      v25 += 8;
    }

    while (v24 != 4);
    ++v22;
    v23 += 8;
  }

  while (v22 != 4);
  v28 = 0;
  v29 = v12;
  do
  {
    v30 = 0;
    v31 = v10[v28];
    do
    {
      v31 = v31 + *(a2 + v30 * 8) * v29[v30];
      v10[v28] = v31;
      ++v30;
    }

    while (v30 != 8);
    v10[v28] = v31 / v11[v28];
    ++v28;
    v29 += 8;
  }

  while (v28 != 4);
  v32 = 0;
  v33 = (v8 + 1);
  v34 = 1;
  v35 = 8;
  v36 = 16;
  v37 = v8;
  v38 = v8;
  v39 = v7;
  do
  {
    v40 = *v39;
    *v38 = *v39;
    if (v32)
    {
      for (i = 0; i != v32; ++i)
      {
        v40 = v40 - *&v37[i] * *&v37[i];
        *v38 = v40;
      }

      v42 = *v39;
    }

    else
    {
      v42 = v40;
    }

    *v38 = sqrt(fmax(v40, v42 * 0.000000001));
    v43 = &v38[v32];
    if (v32 <= 2)
    {
      v44 = v43 + 1;
      v45 = v33;
      v46 = v36;
      v47 = v34;
      do
      {
        v48 = v39[1];
        ++v39;
        v49 = v48;
        *v44 = v48;
        if (v32)
        {
          for (j = 0; j != v32; ++j)
          {
            v49 = v49 - *&v37[j] * *&v45[8 * j];
            *v44 = v49;
          }
        }

        *v44 = v49 / *v38;
        v44 += ++v47;
        v45 += v46;
        v46 += 8;
      }

      while (v47 != 4);
    }

    ++v32;
    v38 = v43 + 2;
    v39 += v32 + 1;
    ++v34;
    v37 = (v37 + v35);
    v35 += 8;
    v33 += v36;
    v36 += 8;
  }

  while (v32 != 4);
  v51 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
  v52 = 0;
  v53 = v8;
  do
  {
    v54 = v10[v52];
    v51[v52] = v54;
    if (v52)
    {
      v55 = v51;
      v56 = v52;
      v57 = v53;
      do
      {
        v58 = *v57++;
        v59 = v58;
        v60 = *v55++;
        v54 = v54 - v60 * v59;
        v51[v52] = v54;
        --v56;
      }

      while (v56);
    }

    else
    {
      v57 = v53;
    }

    v53 = v57 + 1;
    v51[v52++] = v54 / *v57;
  }

  while (v52 != 4);
  v61 = 0;
  v62 = 3;
  do
  {
    v63 = v62;
    v64 = v51[v62];
    v9[v62] = v64;
    if (v62 <= 2)
    {
      v65 = &v57[v62 + 1];
      v66 = v61;
      do
      {
        v64 = v64 - v9[v66 + 4] * *v65;
        v9[v63] = v64;
        v65 += v66 + 5;
      }

      while (!__CFADD__(v66++, 1));
    }

    v9[v63] = v64 / *v57;
    v57 += ~v63;
    v62 = v63 - 1;
    --v61;
  }

  while (v63);
  free(v51);
  v68 = 0;
  *(a3 + 32) = v6;
  do
  {
    *(a3 + v68 * 8) = v9[v68] / v11[v68];
    ++v68;
  }

  while (v68 != 4);
  free(v7);
  free(v8);
  free(v9);
  free(v10);
  free(v11);

  free(v13);
}

BOOL md::SceneContext::hasAnyTilesToRender(md::SceneContext *this)
{
  v1 = *(this + 23);
  v2 = *(this + 24);
  if (v1 == v2)
  {
LABEL_10:
    v5 = *(this + 26);
    v6 = *(this + 27);
    if (v5 == v6)
    {
      return 0;
    }

    else
    {
      v7 = *(this + 14);
      v8 = *(this + 15);
      do
      {
        v9 = v8;
        if (v7 != v8)
        {
          v9 = v7;
          while (*v9 != *v5)
          {
            v9 += 56;
            if (v9 == v8)
            {
              v9 = v8;
              break;
            }
          }
        }

        v10 = *(v9 + 5);
        result = v10 != 0;
        ++v5;
        if (v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = v5 == v6;
        }
      }

      while (!v12);
    }
  }

  else
  {
    v3 = *(this + 15);
    while (1)
    {
      v4 = *(this + 15);
      if (*(this + 14) != v3)
      {
        v4 = *(this + 14);
        while (*v4 != *v1)
        {
          v4 += 56;
          if (v4 == v3)
          {
            v4 = *(this + 15);
            break;
          }
        }
      }

      if (*(v4 + 5))
      {
        return 1;
      }

      if (++v1 == v2)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

void ggl::ConstantDataTyped<ggl::Tile::Transform>::read(void *a1, uint64_t a2)
{
  ggl::BufferMemory::BufferMemory(a1);
  ggl::ResourceAccessor::accessConstantData(v4, 0, a2, 0);
  ggl::BufferMemory::operator=(a1, v4);
  ggl::BufferMemory::~BufferMemory(v4);
}

void *gdc::Context::context<md::TerrainMeshProviderContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x44B2D9808992962CuLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x44B2D9808992962CLL)
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

unsigned __int8 *std::unordered_map<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>,std::allocator<std::pair<md::GridRenderResources::TileMeshEntry const,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>>>::find[abi:nn200100](void *a1, geo::QuadTile *this)
{
  v4 = md::GridRenderResources::TileMeshEntryHash::operator()(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (std::__unordered_map_equal<md::GridRenderResources::TileMeshEntry,std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>,std::equal_to<md::GridRenderResources::TileMeshEntry>,md::GridRenderResources::TileMeshEntryHash,true>::operator()[abi:nn200100](i + 16, this))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t md::GridRenderResources::TileMeshEntryHash::operator()(geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v2 = 0x9DDFEA08EB382D69 * ((8 * (*(this + 4) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(this + 4)));
  return (((*(this + 2) - 0x61C8864680B583EBLL) << 6) + ((*(this + 2) - 0x61C8864680B583EBLL) >> 2) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (HIDWORD(*(this + 4)) ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(*(this + 4)) ^ (v2 >> 47) ^ v2)) >> 47)) - 0x61C8864680B583EBLL) ^ (*(this + 2) - 0x61C8864680B583EBLL);
}

uint64_t md::DaVinciCenterLineRoadsRenderLayer::layout(md::DaVinciCenterLineRoadsRenderLayer *this, const md::LayoutContext *a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 24);
  v4 = *(this + 51);
  v5 = *(v3 + 8);
  v6 = md::FrameGraph::renderQueueForPass(v5, *v4);
  if (v6)
  {
    v83 = *(*(v6 + 16) + 8 * v4[1]);
  }

  else
  {
    v83 = 0;
  }

  v7 = *(this + 34);
  if ((v7 & 0xFE) == 0x22 && (v73 = *(this + 52) - v4, v73 >= 3))
  {
    v74 = md::FrameGraph::renderQueueForPass(v5, v4[2]);
    if (v74)
    {
      v75 = *(*(v74 + 16) + 8 * v4[3]);
    }

    else
    {
      v75 = 0;
    }

    v82 = 0;
    v84 = v75;
    if (v7 != 34 || v73 < 5)
    {
      goto LABEL_6;
    }

    v76 = md::FrameGraph::renderQueueForPass(v5, v4[4]);
    if (v76)
    {
      v82 = *(*(v76 + 16) + 8 * v4[5]);
      goto LABEL_6;
    }
  }

  else
  {
    v84 = 0;
  }

  v82 = 0;
LABEL_6:
  v8 = +[VKDebugSettings sharedSettings];
  v81 = [v8 daVinciShowCenterLineRoads];

  v9 = *(a2 + 1);
  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v9, 0x8BD499FBD96FBB9ELL);
  if (v10 && (v72 = v10[5], *(v72 + 8) == 0x8BD499FBD96FBB9ELL))
  {
    v11 = *(v72 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v9, 0x1AF456233693CD46uLL)[5] + 32);
  v13 = *(v12 + 3784);
  v14 = *(v12 + 3076);
  v15 = *(v12 + 3080);
  v16 = +[VKDebugSettings sharedSettings];
  [v16 daVinciGlobeSplinedMaxZoom];
  v18 = v17;
  v19 = gdc::ToCoordinateSystem(v13);

  v20 = fmaxf(v15 + v14, 1.0) <= (v18 + 1.0) && v19;
  v78 = v20;
  v21 = +[VKDebugSettings sharedSettings];
  v79 = [v21 enableTileClipping];

  if (*(v11 + 16) <= 0.01)
  {
    v22 = *(v11 + 3);
  }

  else
  {
    v22 = 0;
  }

  v23 = +[VKDebugSettings sharedSettings];
  v24 = [v23 daVinciEnableRibbonAntialiasing];

  md::RibbonLayoutContext::RibbonLayoutContext(v85, a2);
  LODWORD(v90) = 1065353216;
  WORD2(v90) = 0;
  *(&v90 + 1) = 0;
  BYTE8(v86) = 0;
  BYTE9(v89) = 1;
  *(&v89 + 11) = v24;
  v77 = v22 & 1;
  BYTE10(v89) = v22 & 1;
  v25 = +[VKDebugSettings sharedSettings];
  [v25 ribbonCrispness];
  DWORD1(v87) = v26;

  BYTE8(v88) = v78;
  v27 = *(this + 47);
  DWORD2(v87) = *(*(v27 + 120) + 8);
  *(&v90 + 1) = v27;
  v28 = *(a2 + 1);
  v29 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v28, 0xDFC317497CF9A4BFLL);
  if (v29 && (v31 = v29[5], *(v31 + 8) == 0xDFC317497CF9A4BFLL))
  {
    v30 = *(v31 + 32);
    if (v30)
    {
      LOBYTE(v30) = *(v30 + 64);
    }
  }

  else
  {
    LOBYTE(v30) = 0;
  }

  BYTE12(v87) = v30 & 1;
  v32 = *(v3 + 168);
  if (v32 && (v33 = *(v32 + 32), v34 = *(*(v3 + 8) + 96), v33 < (*(*(v3 + 8) + 104) - v34) >> 3))
  {
    v35 = *(*(v34 + 8 * v33) + 16);
  }

  else
  {
    v35 = 0;
  }

  *&v88 = v35;
  v36 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v28, 0xA60DDA5A69582425);
  if (v36)
  {
    v37 = v36[5];
    if (*(v37 + 8) == 0xA60DDA5A69582425)
    {
      v38 = *(v37 + 32);
      if (v38)
      {
        if (!v35)
        {
          v39 = *v38;
          [v39 textureManager];
          *&v88 = *v91;
          if (*(&v91 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v91 + 1));
          }
        }
      }
    }
  }

  md::RoadStyling::update(**(this + 50), *(*(this + 50) + 8), v85);
  v41 = *(this + 34);
  for (i = *(this + 35); v41 != i; ++v41)
  {
    v42 = *v41;
    v43 = (*v41)[49];
    if (v81 & 1 | ((*(v43 + 864) & 1) == 0) || *(this + 34) == 16)
    {
      if (v79)
      {
        v44 = v42[32];
      }

      else
      {
        v44 = 0;
      }

      v45 = *(v43 + 744);
      v46 = *(v43 + 752);
      v47 = *(v43 + 824);
      v48 = *(v43 + 728);
      v49 = *(v43 + 736);
      if (v45)
      {
        v50 = 0;
      }

      else
      {
        v50 = v46 == 0;
      }

      if (v50 && v47 == 0 && v48 == 0 && v49 == 0)
      {
        *&v89 = v44;
        BYTE8(v89) = *(this + 34) == 35;
      }

      else
      {
        md::DaVinciCenterLineRoadsTileData::updateViewAndTransformConstantData(v43, v42[28], v42[30]);
        *&v89 = v44;
        BYTE8(v89) = *(this + 34) == 35;
        if (v45)
        {
          v54 = *(v45 + 208);
          v55 = *(this + 47);
          if (v54)
          {
            v56 = v54 == v55;
          }

          else
          {
            v56 = 0;
          }

          if (!v56)
          {
            md::RoadLayer::setSharedResources(v45, v55);
          }

          md::RoadLayer::layout(v45, v85);
          *&v91 = &off_1F2A36810;
          *(&v91 + 1) = v83;
          *(&v92 + 1) = &v91;
          md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(*(v45 + 8), *(v45 + 16), &v91);
          std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v91);
        }

        if (v46)
        {
          v57 = v84 == 0;
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          v58 = *(v46 + 208);
          v59 = *(this + 47);
          if (v58)
          {
            v60 = v58 == v59;
          }

          else
          {
            v60 = 0;
          }

          if (!v60)
          {
            md::RoadLayer::setSharedResources(v46, v59);
          }

          md::RoadLayer::layout(v46, v85);
          md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItems(*(v46 + 8), *(v46 + 16), v84);
        }

        if (v47)
        {
          v61 = v82 == 0;
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          v95 = v87;
          v96 = v88;
          v97 = v89;
          v98 = v90;
          v91 = v85[0];
          v92 = v85[1];
          v93 = v85[2];
          v94 = v86;
          v62 = *(v47 + 208);
          v63 = *(this + 48);
          if (v62)
          {
            v64 = v62 == v63;
          }

          else
          {
            v64 = 0;
          }

          BYTE9(v97) = 0;
          if (!v64)
          {
            md::RoadLayer::setSharedResources(v47, v63);
          }

          md::RoadLayer::layout(v47, &v91);
          md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItems(*(v47 + 8), *(v47 + 16), v82);
        }
      }

      if (v48 | v49)
      {
        md::RibbonLayoutContext::RibbonLayoutContext(&v91, a2);
        HIDWORD(v97) = 1065353216;
        LOBYTE(v98) = 0;
        BYTE9(v97) = 1;
        BYTE10(v97) = v77;
        BYTE11(v97) = v78;
        *&v97 = v44;
        BYTE8(v97) = *(this + 34) == 35;
        if (v48)
        {
          v65 = *(v48 + 200);
          v66 = *(this + 46);
          if (v65)
          {
            v67 = v65 == v66;
          }

          else
          {
            v67 = 0;
          }

          if (!v67)
          {
            *(v48 + 200) = v66;
          }

          md::PatternedLayer::layout(v48, &v91);
          md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItems(*(v48 + 8), *(v48 + 16), v83);
        }

        if (v49)
        {
          v68 = *(v49 + 200);
          v69 = *(this + 46);
          if (v68)
          {
            v70 = v68 == v69;
          }

          else
          {
            v70 = 0;
          }

          if (!v70)
          {
            *(v49 + 200) = v69;
          }

          md::PatternedLayer::layout(v49, &v91);
          md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItems(*(v49 + 8), *(v49 + 16), v84);
        }
      }
    }
  }

  result = ggl::CommandBuffer::sortRenderItems(*(v83 + 72), *(v83 + 80));
  if (v84)
  {
    return ggl::CommandBuffer::sortRenderItems(*(v84 + 72), *(v84 + 80));
  }

  return result;
}

md::RibbonLayoutContext *md::RibbonLayoutContext::RibbonLayoutContext(md::RibbonLayoutContext *this, const md::LayoutContext *a2)
{
  *this = a2;
  *(this + 76) = 0;
  *(this + 10) = 0;
  *(this + 88) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>(*(a2 + 1), 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  [v7 sizeInPixels];
  *(this + 3) = v8;
  *(this + 4) = v9;
  [v7 size];
  *(this + 5) = v10;
  *(this + 6) = v11;
  *&v10 = fmaxf(v6[770] + v6[769], 1.0);
  *(this + 2) = v10;
  v12 = vcvtms_s32_f32(*&v10);
  v13 = v12 & ~(v12 >> 31);
  if (v13 >= 23)
  {
    v14 = 23;
  }

  else
  {
    v14 = v13;
  }

  *(this + 12) = v14;
  if (v13 >= 22)
  {
    LOBYTE(v13) = 22;
  }

  *(this + 13) = v13 + 1;
  [v7 contentScale];
  *&v15 = v15;
  *(this + 4) = *(this + 2) - *(this + 12);
  *(this + 5) = LODWORD(v15);
  *&v15 = 0.9 / *&v15;
  *(this + 15) = LODWORD(v15);
  v16 = *(gdc::Camera::cameraFrame(v6) + 32);
  *(this + 16) = fminf(v16 * 1.2732, 1.0);
  *(this + 28) = 0;

  return this;
}

void md::RoadStyling::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v218 = vdupq_n_s32(0x37800080u);
    __asm
    {
      FMOV            V1.4S, #-1.0
      FMOV            V0.4S, #1.0
    }

    v215 = _Q0;
    v216 = _Q1;
    do
    {
      v10 = *(v4 + 32);
      v224 = xmmword_1B33B0710;
      v225 = 0u;
      v226 = 0u;
      v227 = 1.0;
      v229 = 0;
      memset(v228, 0, 69);
      v10[9] = 0;
      v11 = v10[7];
      v12 = v10[8];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v235, v11, v12);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      if ((v238 & 1) == 0)
      {
LABEL_72:
        *(v10 + 72) = 0;
        goto LABEL_73;
      }

      v13 = v235[3];
      if (*(a3 + 12) >= 0x17u)
      {
        v14 = 23;
      }

      else
      {
        v14 = *(a3 + 12);
      }

      v15 = *v13;
      if (*v13 && (v16 = *v15, LODWORD(v15) = *v15 == 1.0, *(v13 + 10) == 1) && (v16 != 0.0 ? (_ZF = v16 == 1.0) : (_ZF = 1), !_ZF) || (v18 = *(v13 + v15 + 11), v18 == 2))
      {
        v19 = *(v13 + 16);
        if (v19)
        {
          v20 = *(v19 + 72);
          if (v20)
          {
            v21 = *v20 + 120 * *(v20 + v14 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v21, 0x88u) != *(v21 + 12))
            {
              goto LABEL_30;
            }
          }

          if (*(v13 + 56))
          {
            v22 = *(v13 + 48);
            v23 = 8 * *(v13 + 56);
            while (1)
            {
              v24 = *(*v22 + 72);
              if (v24)
              {
                v25 = *v24 + 120 * *(v24 + v14 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x88u) != *(v25 + 12))
                {
                  goto LABEL_30;
                }
              }

              v22 += 8;
              v18 = 1;
              v23 -= 8;
              if (!v23)
              {
                goto LABEL_27;
              }
            }
          }
        }

        v18 = 1;
      }

LABEL_27:
      v26 = *(v13 + 16 * v18 + 16);
      if (v26)
      {
        v27 = *(v26 + 72);
        if (v27)
        {
          v28 = *v27 + 120 * *(v27 + v14 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v28, 0x88u) != *(v28 + 12))
          {
            goto LABEL_30;
          }
        }

        v85 = v13 + 16 * v18;
        if (*(v85 + 56))
        {
          v86 = *(v85 + 48);
          v87 = 8 * *(v85 + 56);
          while (1)
          {
            v88 = *(*v86 + 72);
            if (v88)
            {
              v89 = *v88 + 120 * *(v88 + v14 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v89, 0x88u) != *(v89 + 12))
              {
                break;
              }
            }

            v86 += 8;
            v87 -= 8;
            if (!v87)
            {
              goto LABEL_116;
            }
          }

LABEL_30:
          *(v10 + 73) = 1;
          v29 = *v10;
          if (!*v10)
          {
            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v233, v13, 0x88u, v14, 2);
            LODWORD(v231) = 1;
            LODWORD(v230) = 1;
            std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Filter,ggl::Filter,0>();
          }

          v30 = v10[1];
          if (v30)
          {
            atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
          }

          v31 = v10[3];
          v10[2] = v29;
          v10[3] = v30;
          goto LABEL_34;
        }
      }

LABEL_116:
      *(v10 + 73) = 0;
      v90 = *(a3 + 120);
      v92 = *(v90 + 136);
      v91 = *(v90 + 144);
      if (v91)
      {
        atomic_fetch_add_explicit((v91 + 8), 1uLL, memory_order_relaxed);
      }

      v31 = v10[3];
      v10[2] = v92;
      v10[3] = v91;
LABEL_34:
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v31);
      }

      LODWORD(v233.__r_.__value_.__l.__data_) = 0;
      md::getRoadWidths(&v235, (&v224 | 0xC), &v224 + 2, &v233, v10 + 79, *(a3 + 8));
      *&v224 = *(&v224 + 1);
      if (*(a3 + 107) == 1)
      {
        *(&v224 + 1) = vmul_n_f32(*(&v224 + 8), COERCE_FLOAT(*(a3 + 72)));
      }

      if (*(a3 + 8) >= 0x17)
      {
        v32 = 23;
      }

      else
      {
        v32 = *(a3 + 8);
      }

      if (!gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v235[3], 91, v32, 2u, 0))
      {
        goto LABEL_72;
      }

      v33 = fmaxf(*(&v224 + 2), *(&v224 + 3));
      v34 = *(a3 + 60);
      *(v10 + 72) = v33 >= v34;
      if (v33 >= v34)
      {
        v35 = v235[3];
        if (*(a3 + 8) >= 0x17)
        {
          v36 = 23;
        }

        else
        {
          v36 = *(a3 + 8);
        }

        v37 = *v35;
        if (*v35 && (v38 = *v37, LODWORD(v37) = *v37 == 1.0, *(v35 + 10) == 1) && (v38 != 0.0 ? (v39 = v38 == 1.0) : (v39 = 1), !v39) || (v40 = *(v35 + v37 + 11), v40 == 2))
        {
          v41 = *(v35 + 16);
          if (v41)
          {
            v42 = *(v41 + 72);
            if (v42)
            {
              v43 = *v42 + 120 * *(v42 + v36 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v43, 0x1A2u) != *(v43 + 12))
              {
                goto LABEL_65;
              }
            }

            if (*(v35 + 56))
            {
              v44 = *(v35 + 48);
              v45 = 8 * *(v35 + 56);
              while (1)
              {
                v46 = *(*v44 + 72);
                if (v46)
                {
                  v47 = *v46 + 120 * *(v46 + v36 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v47, 0x1A2u) != *(v47 + 12))
                  {
                    break;
                  }
                }

                v44 += 8;
                v40 = 1;
                v45 -= 8;
                if (!v45)
                {
                  goto LABEL_62;
                }
              }

LABEL_65:
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v233, v35, 418, v36, 2u, 0);
              *&v228[68] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v233.__r_.__value_.__l.__data_)), v218);
              if ((v229 & 1) == 0)
              {
                v229 = 1;
              }

              goto LABEL_67;
            }
          }

          v40 = 1;
        }

LABEL_62:
        v48 = *(v35 + 16 * v40 + 16);
        if (v48)
        {
          v49 = *(v48 + 72);
          if (v49)
          {
            v50 = *v49 + 120 * *(v49 + v36 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v50, 0x1A2u) != *(v50 + 12))
            {
              goto LABEL_65;
            }
          }

          v129 = v35 + 16 * v40;
          if (*(v129 + 56))
          {
            v130 = *(v129 + 48);
            v131 = 8 * *(v129 + 56);
            do
            {
              v132 = *(*v130 + 72);
              if (v132)
              {
                v133 = *v132 + 120 * *(v132 + v36 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v133, 0x1A2u) != *(v133 + 12))
                {
                  goto LABEL_65;
                }
              }

              v130 += 8;
              v131 -= 8;
            }

            while (v131);
          }
        }

LABEL_67:
        v51 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*a3 + 16), *(*(*a3 + 16) + 8));
        if (*(a3 + 8) >= 0x17)
        {
          v52 = 23;
        }

        else
        {
          v52 = *(a3 + 8);
        }

        v217 = v51;
        if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v235[3], 108, v52, 2u, 0))
        {
          md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(&v233, v51, &v235, 2u, *(a3 + 8));
        }

        else
        {
          md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(&v233, v51, &v235, *(a3 + 8), 2u);
        }

        v225 = *&v233.__r_.__value_.__l.__data_;
        v93 = *(a3 + 8);
        v94 = v93;
        v95 = v235[3];
        if (v93 >= 0x17)
        {
          v94 = 23;
        }

        v221 = v94;
        v96 = *v95;
        if (*v95)
        {
          v97 = *v96;
          v98 = *v96 == 1.0;
          if (*(v95 + 10) == 1 && v97 != 0.0 && v97 != 1.0)
          {
LABEL_132:
            v101 = *(v95 + 16);
            if (v101)
            {
              v102 = *(v101 + 72);
              if (v102)
              {
                v103 = *v102 + 120 * *(v102 + v221 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v103, 0x114u) != *(v103 + 12))
                {
                  goto LABEL_143;
                }
              }

              if (*(v95 + 56))
              {
                v104 = *(v95 + 48);
                v105 = 8 * *(v95 + 56);
                while (1)
                {
                  v106 = *(*v104 + 72);
                  if (v106)
                  {
                    v107 = *v106 + 120 * *(v106 + v221 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v107, 0x114u) != *(v107 + 12))
                    {
                      break;
                    }
                  }

                  v104 += 8;
                  v100 = 1;
                  v105 -= 8;
                  if (!v105)
                  {
                    goto LABEL_140;
                  }
                }

LABEL_143:
                if (v225.f32[3] > 0.0)
                {
                  v111 = fminf(fmaxf(v93, 0.0), 23.0);
                  if (v96)
                  {
                    v112 = *v96;
                    v113 = *v96 == 1.0;
                    if (*(v95 + 10) == 1 && v112 != 0.0 && v112 != 1.0)
                    {
LABEL_289:
                      v233.__r_.__value_.__s.__data_[0] = 1;
                      v232.i8[0] = 1;
                      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v95, 276, 0, &v233, v111);
                      v197 = v196;
                      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v95, 276, 1, &v232, v111);
                      v116 = v197 + ((v198 - v197) * v112);
                      goto LABEL_153;
                    }
                  }

                  else
                  {
                    v113 = 0;
                  }

                  v115 = *(v95 + v113 + 11);
                  if (v115 == 2)
                  {
                    v112 = 0.0;
                    goto LABEL_289;
                  }

                  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v95, 276, v115, 0, v111);
LABEL_153:
                  v227 = v116;
                  v225 = vmlaq_n_f32(v215, vaddq_f32(v225, v216), v116);
                }

                v117 = 1;
LABEL_155:
                v118 = v225.f32[3] * *(a3 + 112);
                v225.f32[3] = v118;
                if (*(v10 + 79) == 1)
                {
                  if ((*(a3 + 116) & (v118 <= 0.0)) != 0)
                  {
                    v119 = 0;
                  }

                  else
                  {
                    v119 = *(v10 + 72);
                  }

                  *(v10 + 72) = v119;
                  goto LABEL_73;
                }

                *v228 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(v95, v221, 2).f32[0];
                *&v228[4] = v120;
                if (*v228 > 0.0)
                {
                  *(v10 + 76) = 1;
                  v121 = v217;
                  goto LABEL_162;
                }

                *(v10 + 76) = v120 > 0.0;
                v121 = v217;
                if (v120 > 0.0)
                {
LABEL_162:
                  if (*(a3 + 8) >= 0x17)
                  {
                    v122 = 23;
                  }

                  else
                  {
                    v122 = *(a3 + 8);
                  }

                  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v233, v235[3], 147, v122, 2u, 0);
                  v123 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v233.__r_.__value_.__l.__data_)), v218);
                  *&v228[8] = v123;
                  v124 = v123.f32[3];
                  if ((v117 & (v123.f32[3] > 0.0)) == 1)
                  {
                    *&v228[8] = vmlaq_n_f32(v215, vaddq_f32(v123, v216), v227);
                    v124 = *&v228[20];
                  }

                  *&v228[20] = v124 * *(a3 + 112);
                }

                if (*(a3 + 8) >= 0x17)
                {
                  v125 = 23;
                }

                else
                {
                  v125 = *(a3 + 8);
                }

                if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v235[3], 107, v125, 2u, 0))
                {
                  md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(&v233, v121, &v235, *(a3 + 8));
                }

                else
                {
                  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(&v233, v121, &v235, *(a3 + 8));
                }

                v226 = *&v233.__r_.__value_.__l.__data_;
                v139 = *(a3 + 8);
                v140 = v139;
                v214 = v235;
                v141 = v235[3];
                if (v139 >= 0x17)
                {
                  v140 = 23;
                }

                v222 = v140;
                v142 = *v141;
                if (*v141)
                {
                  v143 = *v142;
                  v144 = *v142 == 1.0;
                  if (*(v141 + 10) == 1 && v143 != 0.0 && v143 != 1.0)
                  {
LABEL_204:
                    v147 = *(v141 + 16);
                    if (v147)
                    {
                      v148 = *(v147 + 72);
                      if (v148)
                      {
                        v149 = *v148 + 120 * *(v148 + v222 + 16);
                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v149, 0x115u) != *(v149 + 12))
                        {
                          goto LABEL_215;
                        }
                      }

                      if (*(v141 + 56))
                      {
                        v150 = *(v141 + 48);
                        v151 = 8 * *(v141 + 56);
                        while (1)
                        {
                          v152 = *(*v150 + 72);
                          if (v152)
                          {
                            v153 = *v152 + 120 * *(v152 + v222 + 16);
                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v153, 0x115u) != *(v153 + 12))
                            {
                              break;
                            }
                          }

                          v150 += 8;
                          v146 = 1;
                          v151 -= 8;
                          if (!v151)
                          {
                            goto LABEL_212;
                          }
                        }

LABEL_215:
                        if (v226.f32[3] > 0.0)
                        {
                          v157 = fminf(fmaxf(v139, 0.0), 23.0);
                          if (v142)
                          {
                            v158 = *v142;
                            v159 = *v142 == 1.0;
                            if (*(v141 + 10) == 1 && v158 != 0.0 && v158 != 1.0)
                            {
LABEL_295:
                              v233.__r_.__value_.__s.__data_[0] = 1;
                              v232.i8[0] = 1;
                              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v141, 277, 0, &v233, v157);
                              v206 = v205;
                              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v141, 277, 1, &v232, v157);
                              v162 = v206 + ((v207 - v206) * v158);
                              goto LABEL_225;
                            }
                          }

                          else
                          {
                            v159 = 0;
                          }

                          v161 = *(v141 + v159 + 11);
                          if (v161 == 2)
                          {
                            v158 = 0.0;
                            goto LABEL_295;
                          }

                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v141, 277, v161, 0, v157);
LABEL_225:
                          v226 = vmlaq_n_f32(v215, vaddq_f32(v226, v216), v162);
                        }

LABEL_226:
                        v226.f32[3] = v226.f32[3] * *(a3 + 112);
                        if (v225.f32[3] > 0.0 || (*(a3 + 116) & 1) == 0 || v226.f32[3] > 0.0)
                        {
                          v163 = *(v10 + 72);
                        }

                        else
                        {
                          v163 = 0;
                        }

                        *(v10 + 72) = v163;
                        if (!v163)
                        {
                          goto LABEL_73;
                        }

                        v164 = fminf(fmaxf(v139, 0.0), 23.0);
                        if (v142)
                        {
                          v165 = *v142;
                          v166 = *v142 == 1.0;
                          if (*(v141 + 10) == 1)
                          {
                            v167 = v165 == 0.0 || v165 == 1.0;
                            v168 = v214;
                            if (!v167)
                            {
LABEL_291:
                              v233.__r_.__value_.__s.__data_[0] = 1;
                              v232.i8[0] = 1;
                              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v141, 297, 0, &v233, v164);
                              v200 = v199;
                              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v141, 297, 1, &v232, v164);
                              v170 = v200 + ((v201 - v200) * v165);
                              goto LABEL_239;
                            }

LABEL_237:
                            v169 = *(v141 + v166 + 11);
                            if (v169 == 2)
                            {
                              v165 = 0.0;
                              goto LABEL_291;
                            }

                            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v141, 297, v169, 0, v164);
LABEL_239:
                            if (v170 > 0.0)
                            {
                              *(v10 + 77) = 1;
                              v171 = *&v224 + v170 * 2.0;
                              *&v228[40] = *(a3 + 72) * v171;
                              *&v228[44] = v171;
                              gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v232, v141, 298, 2u, v164);
                              *&v233.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v232)), v218);
                              v168 = v235;
                              v172 = v235[3];
                              v173 = *v172;
                              if (*v172 && (v174 = *v173, LODWORD(v173) = *v173 == 1.0, *(v172 + 10) == 1) && (v174 != 0.0 ? (v175 = v174 == 1.0) : (v175 = 1), !v175))
                              {
LABEL_297:
                                v232.i8[0] = 1;
                                LOBYTE(v231) = 1;
                                gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v172, 499, 0, &v232, v164);
                                v209 = v208;
                                gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v172, 499, 1, &v231, v164);
                                v177 = v209 + ((v210 - v209) * v174);
                              }

                              else
                              {
                                v176 = *(v172 + v173 + 11);
                                if (v176 == 2)
                                {
                                  v174 = 0.0;
                                  goto LABEL_297;
                                }

                                gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v235[3], 499, v176, 0, v164);
                              }

                              md::AccessibilityHelper::luminanceAdjustedColor(&v228[52], *v217, &v233, v177);
                              *&v228[64] = *&v228[64] * *(a3 + 112);
                              v139 = *(a3 + 8);
                            }

                            v178 = v168[3];
                            v179 = fminf(fmaxf(v139, 0.0), 23.0);
                            v180 = *v178;
                            if (*v178 && (v181 = *v180, LODWORD(v180) = *v180 == 1.0, *(v178 + 10) == 1) && (v181 != 0.0 ? (v182 = v181 == 1.0) : (v182 = 1), !v182))
                            {
LABEL_293:
                              v233.__r_.__value_.__s.__data_[0] = 1;
                              v232.i8[0] = 1;
                              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v178, 295, 0, &v233, v179);
                              v203 = v202;
                              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v178, 295, 1, &v232, v179);
                              v184 = v203 + ((v204 - v203) * v181);
                            }

                            else
                            {
                              v183 = *(v178 + v180 + 11);
                              if (v183 == 2)
                              {
                                v181 = 0.0;
                                goto LABEL_293;
                              }

                              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v168[3], 295, v183, 0, v179);
                            }

                            if (v184 > 0.0)
                            {
                              *(v10 + 75) = 1;
                              *&v228[48] = v184;
                              gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v232, v178, 296, 2u, v179);
                              *&v233.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v232)), v218);
                              v185 = v235[3];
                              v186 = *v185;
                              if (*v185 && (v187 = *v186, LODWORD(v186) = *v186 == 1.0, *(v185 + 10) == 1) && (v187 != 0.0 ? (v188 = v187 == 1.0) : (v188 = 1), !v188))
                              {
LABEL_299:
                                v232.i8[0] = 1;
                                LOBYTE(v231) = 1;
                                gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v185, 498, 0, &v232, v179);
                                v212 = v211;
                                gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v185, 498, 1, &v231, v179);
                                v190 = v212 + ((v213 - v212) * v187);
                              }

                              else
                              {
                                v189 = *(v185 + v186 + 11);
                                if (v189 == 2)
                                {
                                  v187 = 0.0;
                                  goto LABEL_299;
                                }

                                gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v235[3], 498, v189, 0, v179);
                              }

                              md::AccessibilityHelper::luminanceAdjustedColor(&v228[24], *v217, &v233, v190);
                              *&v228[36] = *&v228[36] * *(a3 + 112);
                              goto LABEL_73;
                            }

                            goto LABEL_73;
                          }
                        }

                        else
                        {
                          v166 = 0;
                        }

                        v168 = v214;
                        goto LABEL_237;
                      }
                    }

                    v146 = 1;
LABEL_212:
                    v154 = *(v141 + 16 * v146 + 16);
                    if (v154)
                    {
                      v155 = *(v154 + 72);
                      if (v155)
                      {
                        v156 = *v155 + 120 * *(v155 + v222 + 16);
                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v156, 0x115u) != *(v156 + 12))
                        {
                          goto LABEL_215;
                        }
                      }

                      v191 = v141 + 16 * v146;
                      if (*(v191 + 56))
                      {
                        v192 = *(v191 + 48);
                        v193 = 8 * *(v191 + 56);
                        while (1)
                        {
                          v194 = *(*v192 + 72);
                          if (v194)
                          {
                            v195 = *v194 + 120 * *(v194 + v222 + 16);
                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v195, 0x115u) != *(v195 + 12))
                            {
                              goto LABEL_215;
                            }
                          }

                          v192 += 8;
                          v193 -= 8;
                          if (!v193)
                          {
                            goto LABEL_226;
                          }
                        }
                      }
                    }

                    goto LABEL_226;
                  }
                }

                else
                {
                  v144 = 0;
                }

                v146 = *(v141 + v144 + 11);
                if (v146 == 2)
                {
                  goto LABEL_204;
                }

                goto LABEL_212;
              }
            }

            v100 = 1;
LABEL_140:
            v108 = *(v95 + 16 * v100 + 16);
            if (v108)
            {
              v109 = *(v108 + 72);
              if (v109)
              {
                v110 = *v109 + 120 * *(v109 + v221 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v110, 0x114u) != *(v110 + 12))
                {
                  goto LABEL_143;
                }
              }

              v134 = v95 + 16 * v100;
              if (*(v134 + 56))
              {
                v135 = *(v134 + 48);
                v136 = 8 * *(v134 + 56);
                while (1)
                {
                  v137 = *(*v135 + 72);
                  if (v137)
                  {
                    v138 = *v137 + 120 * *(v137 + v221 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v138, 0x114u) != *(v138 + 12))
                    {
                      goto LABEL_143;
                    }
                  }

                  v117 = 0;
                  v135 += 8;
                  v136 -= 8;
                  if (!v136)
                  {
                    goto LABEL_155;
                  }
                }
              }
            }

            v117 = 0;
            goto LABEL_155;
          }
        }

        else
        {
          v98 = 0;
        }

        v100 = *(v95 + v98 + 11);
        if (v100 == 2)
        {
          goto LABEL_132;
        }

        goto LABEL_140;
      }

LABEL_73:
      if (v238 == 1)
      {
        (*(*v235 + 56))(v235);
      }

      if (v237)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v237);
      }

      if (v236)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v236);
      }

      if (*(v10 + 72) == 1)
      {
        *(v10 + 66) = 0;
        *(v10 + 267) = 0;
        v53 = *(a3 + 68);
        if ((*(v10 + 73) & 1) != 0 || *(v10 + 75) == 1)
        {
          v54 = v10[24];
          ggl::BufferMemory::BufferMemory(&v233);
          ggl::ResourceAccessor::accessConstantData(&v235, 0, v54, 1);
          ggl::BufferMemory::operator=(&v233, &v235);
          ggl::BufferMemory::~BufferMemory(&v235);
          *v234 = xmmword_1B33B1260;
          *(v10 + 268) = 1;
          *(v10 + 269) = *(v10 + 75);
          ggl::BufferMemory::~BufferMemory(&v233);
        }

        if (*(v10 + 79) == 1)
        {
          v55 = v10[22];
          ggl::BufferMemory::BufferMemory(&v233);
          ggl::ResourceAccessor::accessConstantData(&v235, 0, v55, 1);
          ggl::BufferMemory::operator=(&v233, &v235);
          ggl::BufferMemory::~BufferMemory(&v235);
          v56 = 0;
          v57 = v234;
          do
          {
            v57[v56] = v225.i32[v56];
            ++v56;
          }

          while (v56 != 4);
          ggl::BufferMemory::~BufferMemory(&v233);
          *(v10 + 66) = 0;
          *(v10 + 270) = 1;
        }

        else
        {
          v58 = v53 * **(*(a3 + 120) + 120);
          *(v10 + 270) = 0;
          v59 = *(v10 + 76);
          *(v10 + 264) = v59;
          if (v59 == 1)
          {
            v60 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(*a3 + 8), 0x1AF456233693CD46uLL);
            v61 = *(gdc::Camera::cameraFrame(*(v60[5] + 32)) + 32);
            v219 = cosf(v61);
            ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v235, v10[10]);
            v62 = 0;
            v63 = v239;
            v239[2] = vmul_n_f32(vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(*v228), xmmword_1B33B1270), *(a3 + 40))), v219);
            do
            {
              v63->i32[v62] = *&v228[v62 * 4 + 8];
              ++v62;
            }

            while (v62 != 4);
            v63[3].f32[0] = *(&v224 + 2) * 0.5;
            v63[3].f32[1] = v58;
            ggl::BufferMemory::~BufferMemory(&v235);
          }

          if (*(v10 + 75) == 1)
          {
            v64 = *&v228[48] / (*(&v224 + 1) * 0.5);
            v65 = v10[16];
            ggl::BufferMemory::BufferMemory(&v233);
            ggl::ResourceAccessor::accessConstantData(&v235, 0, v65, 1);
            ggl::BufferMemory::operator=(&v233, &v235);
            ggl::BufferMemory::~BufferMemory(&v235);
            v66 = v234;
            *v234 = 1.0 - v64;
            v66[1] = 1.0 / v64;
            *(v66 + 1) = 0xBF80000040000000;
            ggl::BufferMemory::~BufferMemory(&v233);
            ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v235, v10[14]);
            v67 = 0;
            v68 = v239;
            v239[2] = 0;
            do
            {
              v68->i32[v67] = v225.i32[v67];
              ++v67;
            }

            while (v67 != 4);
            v68[3].f32[0] = *(&v224 + 3) * 0.5;
            v68[3].f32[1] = v58;
            ggl::BufferMemory::~BufferMemory(&v235);
          }

          if (v229 == 1)
          {
            v69 = *&v228[68];
            v70 = *&v228[72];
            v71 = *&v228[76];
            v72 = *&v228[80];
            ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v235, v10[12]);
            v73 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v233, v10[18]);
            v74 = v239;
            v239[4].i32[0] = v69;
            v74[4].i32[1] = v70;
            v74[5].i32[0] = v71;
            v74[5].i32[1] = v72;
            v75 = v234;
            v234[8] = v69;
            v75[9] = v70;
            v75[10] = v71;
            v75[11] = v72;
            ggl::BufferMemory::~BufferMemory(v73);
            ggl::BufferMemory::~BufferMemory(&v235);
          }

          v76 = *(v10 + 77);
          *(v10 + 265) = v76;
          if (v76 == 1)
          {
            v77 = fminf(*&v224 / *&v228[44], 1.0);
            v78 = v10[20];
            ggl::BufferMemory::BufferMemory(&v233);
            ggl::ResourceAccessor::accessConstantData(&v235, 0, v78, 1);
            ggl::BufferMemory::operator=(&v233, &v235);
            ggl::BufferMemory::~BufferMemory(&v235);
            v79 = 0;
            v80 = v234;
            do
            {
              v80[v79] = *&v228[v79 * 4 + 52];
              ++v79;
            }

            while (v79 != 4);
            v80[4] = *&v228[40] * 0.5;
            v80[5] = v58;
            v80[6] = 1.0 / (1.0 - v77);
            ggl::BufferMemory::~BufferMemory(&v233);
          }

          v81 = v226.f32[3] > 0.0 && *(&v224 + 2) > 0.0;
          *(v10 + 266) = v81;
          if (v81)
          {
            ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v235, v10[18]);
            v82 = 0;
            v83 = v239;
            v239[2] = 0;
            do
            {
              v83->i32[v82] = v226.i32[v82];
              ++v82;
            }

            while (v82 != 4);
            v83[3].f32[0] = *(&v224 + 2) * 0.5;
            v83[3].f32[1] = v58;
            ggl::BufferMemory::~BufferMemory(&v235);
          }

          v84 = v225.i32[3];
          if (v225.f32[3] <= 0.0)
          {
            *(v10 + 267) = 0;
          }

          else
          {
            if (*(v10 + 75))
            {
              v84 = v225.i32[3];
              v220 = vmlaq_laneq_f32(v225, vsubq_f32(*&v228[24], v225), *&v228[24], 3);
            }

            else
            {
              v220 = v225;
            }

            v126 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v235, v10[12]);
            v127 = v239;
            v239[2] = 0;
            *v127 = *v220.f32;
            v127[1].i32[0] = v220.i32[2];
            v127[1].i32[1] = v84;
            v127[3].f32[0] = *(&v224 + 3) * 0.5;
            v127[3].f32[1] = v58;
            v128 = (*(v10 + 73) & 1) == 0 && *(v10 + 75) != 1;
            *(v10 + 267) = v128;
            ggl::BufferMemory::~BufferMemory(v126);
          }
        }

        *(v10 + 48) = v229;
      }

      v4 += 48;
    }

    while (v4 != a2);
  }
}

void sub_1B2AD1FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56)
{
  if (a56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a56);
  }

  if (*(v56 - 233) < 0)
  {
    operator delete(*(v56 - 256));
  }

  if (*(v56 - 168))
  {
    (*(**(v56 - 200) + 56))(*(v56 - 200));
  }

  v58 = *(v56 - 176);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v58);
  }

  if (*(v56 - 192))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v56 - 192));
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciHikingRenderLayer::layout(md::DaVinciHikingRenderLayer *this, const md::LayoutContext *a2)
{
  v113 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v4, 0x92F3DC114CADB853);
  if (v5 && (v6 = v5[5], *(v6 + 8) == 0x92F3DC114CADB853))
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v4, 0xC97B9E962ADF4AD4)[5] + 32);
  v9 = *v8;
  v10 = v8[1];
  while (v9 != v10)
  {
    if (*v9 == 34)
    {
      if (v9 != v10)
      {
        v11 = *(v9 + 8) == 0;
        goto LABEL_10;
      }

      break;
    }

    v9 += 16;
  }

  v11 = 1;
LABEL_10:
  v76 = v11;
  v12 = *(*(this + 5) + 24);
  v13 = *(this + 51);
  v14 = *(v12 + 8);
  v15 = md::FrameGraph::renderQueueForPass(v14, *v13);
  if (v15)
  {
    v16 = *(*(v15 + 16) + 8 * v13[1]);
  }

  else
  {
    v16 = 0;
  }

  v107 = 0;
  v108 = v16;
  if (*(this + 52) - v13 >= 3uLL)
  {
    v17 = md::FrameGraph::renderQueueForPass(v14, v13[2]);
    if (v17)
    {
      v17 = *(*(v17 + 16) + 8 * v13[3]);
    }

    v107 = v17;
    ggl::CommandBuffer::clearRenderItems(v17);
  }

  v78 = a2;
  v18 = +[VKDebugSettings sharedSettings];
  [v18 trailJunctionElevationOffset];
  md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::updateZScaleAndOffset(this + 34, *(a2 + 1));

  v19 = *(a2 + 1);
  v20 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v19, 0x8BD499FBD96FBB9ELL);
  if (v20 && (v22 = v20[5], *(v22 + 8) == 0x8BD499FBD96FBB9ELL))
  {
    v21 = *(v22 + 32);
  }

  else
  {
    v21 = 0;
  }

  v23 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v19, 0x1AF456233693CD46uLL)[5] + 32);
  v24 = *(v23 + 3784);
  v25 = *(v23 + 3076);
  v26 = *(v23 + 3080);
  v27 = +[VKDebugSettings sharedSettings];
  [v27 daVinciGlobeSplinedMaxZoom];
  v29 = v28;
  v30 = gdc::ToCoordinateSystem(v24);

  v31 = fmaxf(v26 + v25, 1.0) <= (v29 + 1.0) && v30;
  v75 = v31;
  v32 = +[VKDebugSettings sharedSettings];
  v77 = [v32 enableTileClipping];

  if (*(v21 + 16) <= 0.01)
  {
    v33 = *(v21 + 3);
  }

  else
  {
    v33 = 0;
  }

  v34 = +[VKDebugSettings sharedSettings];
  v35 = [v34 daVinciEnableRibbonAntialiasing];

  md::RibbonLayoutContext::RibbonLayoutContext(v93, v78);
  v103 = 0;
  v104 = 1065353216;
  v105 = 0;
  v106 = 0;
  v93[56] = 0;
  v100 = 1;
  v102 = v35;
  v74 = v33 & 1;
  v101 = v33 & 1;
  v36 = +[VKDebugSettings sharedSettings];
  [v36 ribbonCrispness];
  v94 = v37;

  v98 = v75;
  v38 = *(this + 47);
  v95 = *(*(v38 + 120) + 8);
  v106 = v38;
  v39 = 1.0;
  if (*(this + 34) == 37)
  {
    v39 = *(v7 + 4);
  }

  v104 = LODWORD(v39);
  LOBYTE(v105) = 1;
  v40 = *(v78 + 1);
  v41 = md::LayoutContext::get<md::SceneQueryContext>(v40);
  if (v41)
  {
    v42 = *(v41 + 64);
  }

  else
  {
    v42 = 0;
  }

  v96 = v42 & 1;
  v43 = *(v12 + 168);
  if (v43 && (v44 = *(v43 + 32), v45 = *(*(v12 + 8) + 96), v44 < (*(*(v12 + 8) + 104) - v45) >> 3))
  {
    v46 = *(*(v45 + 8 * v44) + 16);
  }

  else
  {
    v46 = 0;
  }

  v97 = v46;
  v47 = md::LayoutContext::get<md::SharedResourcesContext>(v40);
  if (v47 && !v46)
  {
    v48 = *v47;
    [v48 textureManager];
    v97 = *v79;
    if (v80)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v80);
    }
  }

  md::RoadStyling::update(**(this + 50), *(*(this + 50) + 8), v93);
  v50 = *(this + 34);
  v49 = *(this + 35);
  if (v50 == v49)
  {
    v51 = 0;
  }

  else
  {
    v51 = 0;
    do
    {
      v52 = *v50;
      if (v77)
      {
        v53 = v52[32];
      }

      else
      {
        v53 = 0;
      }

      v54 = v52[49];
      v55 = *(v54 + 744);
      v56 = *(v54 + 728);
      if (v55 | v56)
      {
        md::DaVinciCenterLineRoadsTileData::updateViewAndTransformConstantData(v54, v52[28], v52[30]);
        v99 = v53;
        if (v55)
        {
          v57 = *(v55 + 208);
          v58 = *(this + 47);
          if (v57)
          {
            v59 = v57 == v58;
          }

          else
          {
            v59 = 0;
          }

          if (!v59)
          {
            md::RoadLayer::setSharedResources(v55, v58);
          }

          md::RoadLayer::layout(v55, v93);
          md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(*(v55 + 8), *(v55 + 16), v108);
        }

        if (v56)
        {
          md::RibbonLayoutContext::RibbonLayoutContext(&v79, v78);
          v88 = 1;
          v89 = v74;
          v90 = v75;
          v87 = v53;
          v91 = v104;
          v92 = v105;
          v60 = *(v56 + 200);
          v61 = *(this + 46);
          if (v60)
          {
            v62 = v60 == v61;
          }

          else
          {
            v62 = 0;
          }

          if (!v62)
          {
            *(v56 + 200) = v61;
          }

          md::PatternedLayer::layout(v56, &v79);
          v109 = &off_1F2A36858;
          v110 = v108;
          v112 = &v109;
          md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(*(v56 + 8), *(v56 + 16), &v109);
          std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v109);
        }
      }

      else
      {
        v99 = v53;
      }

      if (v52[51] != 0 && !v76)
      {
        md::JunctionLayoutContext::JunctionLayoutContext(&v79, v78);
        v65 = v52[30];
        v64 = v52[31];
        if (v64)
        {
          atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
        }

        v66 = v86;
        v85 = v65;
        v86 = v64;
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v66);
        }

        v68 = v52[28];
        v67 = v52[29];
        if (v67)
        {
          atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
        }

        v69 = v84;
        v83 = v68;
        v84 = v67;
        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v69);
        }

        v82 = v98;
        v81 = v101;
        v70 = v52[51];
        v71 = *(v70 + 14);
        v72 = *(this + 54);
        if (v71)
        {
          v73 = v71 == v72;
        }

        else
        {
          v73 = 0;
        }

        if (!v73)
        {
          *(v70 + 14) = v72;
        }

        md::TrailJunctionsResource::updateWithContext(v70, &v79, v63);
        v109 = &unk_1F29EAE78;
        v110 = &v108;
        v111 = &v107;
        v112 = &v109;
        md::TrailJunctionsResource::collectRenderItems(v70, &v109);
        std::__function::__value_func<void ()(ggl::RenderItem *,BOOL)>::~__value_func[abi:nn200100](&v109);
        md::JunctionLayoutContext::~JunctionLayoutContext(&v79);
        v51 = 1;
      }

      ++v50;
    }

    while (v50 != v49);
  }

  ggl::CommandBuffer::sortRenderItems(*(v108 + 72), *(v108 + 80));
  if (v51)
  {
    if (v107)
    {
      ggl::CommandBuffer::stableSortRenderItems(*(v107 + 72), *(v107 + 80));
    }
  }
}