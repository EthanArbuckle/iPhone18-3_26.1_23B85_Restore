void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42318;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42338;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42318;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls41MeshRenderableTransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableTransformConstantDataHandle>(v3);
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
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableTransformConstantDataHandle>();
    unk_1EB83B990 = 0x1DBDEAE2D8DF6302;
    qword_1EB83B998 = "md::ls::MeshRenderableTransformConstantDataHandle]";
    qword_1EB83B9A0 = 49;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41C60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41C80;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41C60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19IsDynamicRenderableEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>(void)::metadata;
  IsDynamic = ecs2::BasicRegistry<void>::storage<md::ls::IsDynamicRenderable>(v3);
  v6 = v2 >> 22;
  v7 = IsDynamic[1];
  if (v2 >> 22 < (IsDynamic[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = IsDynamic;
        v11 = IsDynamic[31];
        v12 = IsDynamic[32];
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
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42430;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42450;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42430;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>::~storage(a1);
}

uint64_t std::__function::__func<md::ita::UpdateDynamicRenderables::operator()(ecs2::Query<md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *>)::$_0,std::allocator<md::ita::UpdateDynamicRenderables::operator()(ecs2::Query<md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *>)::$_0>,void ()(md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A27980;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_1,std::allocator<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A27A78;
  a2[1] = v2;
  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::GeocentricBounds const,md::ls::SliceAssignmentT<(md::SliceType)0> const,md::ls::MeshRenderableTransformConstantDataHandle const,md::ls::MeshRenderableBounds const,md::BoundData>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v8 = *(v6 + 8 * v3)) != 0 && *(v8 + 4 * (a3 & 0x3F)) == a2 && (v9 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v9) >> 3) && (v10 = *(v9 + 8 * v3)) != 0 && *(v10 + 4 * (a3 & 0x3F)) == a2 && (v11 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v11) >> 3) && (v12 = *(v11 + 8 * v3)) != 0 && *(v12 + 4 * (a3 & 0x3F)) == a2 && (v13 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v13) >> 3) && (v14 = *(v13 + 8 * v3)) != 0 && *(v14 + 4 * (a3 & 0x3F)) == a2 && (v15 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v15) >> 3) && (v16 = *(v15 + 8 * v3)) != 0)
  {
    return *(v16 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_0,std::allocator<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  md::VKMRenderResourcesStore::getConstantDataPtr<ggl::Tile::Transform>(&v15, **(a1 + 8), *a5);
  md::GeometryLogic::scaleGeocentricBoundsWithNormal(&v11, a6, a3, a3 + 24, v15);
  *a7 = v11;
  *(a7 + 8) = v12;
  *(a7 + 12) = v13;
  *(a7 + 20) = v14;
  v10 = v16;
  if (v16)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

uint64_t std::__function::__func<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_0,std::allocator<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A27A30;
  a2[1] = v2;
  return result;
}

void *std::__tree<md::FrameGraphLogicalResource *,md::FrameGraphLogicalResourceLessThan,std::allocator<md::FrameGraphLogicalResource *>>::__find_equal<md::FrameGraphLogicalResource *>(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = v4[4];
        v9 = *v8;
        if (v6 == v9)
        {
          break;
        }

        if (v6 >= v9)
        {
          if (v9 >= v6)
          {
            goto LABEL_14;
          }

          goto LABEL_11;
        }

LABEL_8:
        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if (*(a3 + 3) + *(a3 + 5) < *(v8 + 3) + *(v8 + 5))
      {
        goto LABEL_8;
      }

      if (*(v8 + 3) + *(v8 + 5) >= *(a3 + 3) + *(a3 + 5))
      {
        goto LABEL_14;
      }

LABEL_11:
      result = v7 + 1;
      v4 = v7[1];
      if (!v4)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = result;
LABEL_14:
  *a2 = v7;
  return result;
}

void md::mun::MetadataResource::~MetadataResource(md::mun::MetadataResource *this)
{
  md::mun::MetadataResource::~MetadataResource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A27AC0;
  v3 = (this + 216);
  std::vector<md::mun::StorefrontBundle>::__destroy_vector::operator()[abi:nn200100](&v3);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 176);
  v3 = (this + 152);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 2);
  if (v2 != *(this + 4))
  {
    free(v2);
  }
}

void md::ARVIOLocationProvider::update(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, float32x2_t **a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 camera];
  md::MDARCamera::MDARCamera(&v69, v9);

  v10 = v70;
  [v10 transform];
  v53 = v11;
  v65 = vcvtq_f64_f32(*v12.i8);
  v66[0] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *v13.i8));
  v66[1] = vcvtq_f64_f32(*&vextq_s8(v13, v13, 4uLL));
  v67 = vcvtq_f64_f32(v14);
  v68 = v15;
  gm::quaternionFromRotationMatrix<double>(v62.f64, v65.f64);
  v57 = vcvtq_f64_f32(*&v53);
  v58 = *(&v53 + 2);
  v59 = v62;
  v60 = v63;
  v61 = v64;

  gm::Quaternion<double>::operator*(&v65, a4, &v59);
  v16 = gm::Quaternion<double>::operator*(a4, &v57);
  v17 = *(&v66[0] + 1);
  v18 = v65;
  *(a1 + 48) = v16;
  *(a1 + 72) = v18;
  *(a1 + 88) = *&v66[0];
  *(a1 + 96) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v20;
  v21 = *a5;
  v22 = a5[1];
  if (*a5 == v22)
  {
    v37 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
  }

  else
  {
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    do
    {
      if (v21)
      {
        v26 = v21[2].i32[0];
        if (v26 == 1)
        {
          v27 = v21;
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          if (v27)
          {
            v25 = *v27 * 10.0;
          }
        }

        else
        {
          v28 = vsub_f32(v21[1], *v21);
          v29 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v28, v28)));
          v30 = v29 * v28.f32[0];
          v28.f32[0] = vmuls_lane_f32(v29, v28, 1);
          v31 = fabsf(v30) > 0.85;
          v32 = fabsf(v28.f32[0]) <= 0.85;
          v33 = v30 * 0.75;
          v34 = v28.f32[0] * 0.75;
          if (v32)
          {
            v23 = v33;
          }

          else
          {
            v23 = 0.0;
          }

          if (v32 && v31)
          {
            v24 = 0.0;
          }

          else
          {
            v24 = v34;
          }
        }
      }

      v21 += 3;
    }

    while (v21 != v22);
    v35 = v24;
    v36 = v23;
    v37 = v25;
  }

  v38 = *(a1 + 32) * 0.0174532925;
  v39 = *(a1 + 40);
  v40 = __sincos_stret(*(a1 + 24) * 0.0174532925);
  v41 = 6378137.0 / sqrt(v40.__sinval * v40.__sinval * -0.00669437999 + 1.0);
  v42 = (v41 + v39) * v40.__cosval;
  v43 = __sincos_stret(v38);
  v56[0] = v42 * v43.__cosval;
  v56[1] = v42 * v43.__sinval;
  v56[2] = (v39 + v41 * 0.99330562) * v40.__sinval;
  gdc::CameraFrame<geo::Radians,double>::createLocalEcefBasis(v65.f64, v56);
  for (i = 0; i != 3; ++i)
  {
    v62.f64[i] = v67.f64[i] * v35;
  }

  v45 = 0;
  v46 = a1 + 104;
  do
  {
    *(v46 + v45 * 8) = *(v46 + v45 * 8) + v62.f64[v45];
    ++v45;
  }

  while (v45 != 3);
  for (j = 0; j != 3; ++j)
  {
    v62.f64[j] = v65.f64[j] * v36;
  }

  for (k = 0; k != 3; ++k)
  {
    *(v46 + k * 8) = *(v46 + k * 8) + v62.f64[k];
  }

  for (m = 0; m != 3; ++m)
  {
    v62.f64[m] = *(v66 + m * 8 + 8) * v37;
  }

  for (n = 0; n != 3; ++n)
  {
    *(v46 + n * 8) = *(v46 + n * 8) + v62.f64[n];
  }

  for (ii = 0; ii != 3; ++ii)
  {
    v62.f64[ii] = *(a1 + 48 + ii * 8) + v56[ii];
  }

  v52 = 0;
  v54 = v62;
  v55 = v63;
  do
  {
    v62.f64[v52] = *(v46 + v52 * 8) + v54.f64[v52];
    ++v52;
  }

  while (v52 != 3);
  geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(v62.f64, &v54);
  *(a1 + 128) = v54;
  *(a1 + 144) = v55;
  v69 = &unk_1F2A4EB10;
}

void sub_1B303F478(_Unwind_Exception *a1)
{
  *(v3 - 144) = &unk_1F2A4EB10;

  _Unwind_Resume(a1);
}

void md::Logic<md::LayerDataLogic,md::LayerDataLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t md::Logic<md::LayerDataLogic,md::LayerDataLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x7851AF310F49C988 && *(a3 + 32))
  {
    *&v6[2] = v4;
    v7 = v5;
    return (*(*result + 160))(result, a2, v6);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::LayerDataLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::LayerDataLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A27C18;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C4093837F09);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::LayerDataLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A27C18;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C4093837F09);
  }

  return a1;
}

void md::LayerDataLogic::~LayerDataLogic(md::LayerDataLogic *this)
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

uint64_t md::TransitNode::parentID(md::TransitNode *this)
{
  v1 = *(*(this + 1) + 256);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t md::TransitNode::debugString@<X0>(md::TransitNode *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n <node>", 8);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, " drawAsXfer:", 12);
  v6 = MEMORY[0x1B8C61C80](&v21, *(*(this + 1) + 320));
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, " nodeIconType:", 14);
  v8 = MEMORY[0x1B8C61C80](v7, *(this + 60));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ", nodeType:", 11);
  v9 = (*(*this + 56))(this);
  if (v9 > 2)
  {
    v10 = "";
  }

  else
  {
    v10 = off_1E7B38D98[v9];
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v10);
  if ((v20 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v12 = v20;
  }

  else
  {
    v12 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v11, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ", tileZ:", 8);
  MEMORY[0x1B8C61C80](v8, *(this + 62));
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n   isActive:", 13);
  v13 = MEMORY[0x1B8C61C80](&v21, *(this + 64) == 1);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, " isSelected:", 12);
  MEMORY[0x1B8C61C80](v14, *(this + 63));
  if (a2)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n  TransitLineIDs:", 18);
    v15 = *(this + 4);
    for (i = *(this + 5); v15 != i; ++v15)
    {
      v17 = *v15;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n   ", 4);
      MEMORY[0x1B8C61CF0](&v21, *(*(v17 + 16) + 40));
    }
  }

  std::ostringstream::str[abi:nn200100](a3, &v21);
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v25);
}

void sub_1B303FB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

BOOL md::TransitOrphanNode::initializeExternalIcon(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *(a1 + 60);
  *(a2 + 260) = *(a1 + 60);
  *(a2 + 70) = v6 != 2;
  *(a2 + 244) = *(a3 + 8);
  v7 = md::TransitNodeTextureAtlas::infoForIcon(a4, v6, a3[1], *a3, 0);
  v8 = v7;
  if (v7)
  {
    md::TransitNodeExternalIcon::setDotTextureRect(a2, v7, (v7 + 8), (v7 + 24));
    std::vector<md::TransitNodeExternalIcon::DotInfo>::resize((a2 + 104), 1uLL);
    v9 = *(a2 + 104);
    if (*(*(a1 + 8) + 320) == 1)
    {
      v10 = &geo::white;
    }

    else
    {
      v11 = *(a1 + 32);
      if (v11 != *(a1 + 40))
      {
        v12 = vdupq_n_s32(0x437F0000u);
        v13 = *(*(*v11 + 64) + 32);
LABEL_8:
        v14 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v13, v12)));
        *(v9 + 8) = vuzp1_s8(v14, v14).u32[0];
        md::TransitNodeExternalIcon::updateRadius(a2);
        return v8 != 0;
      }

      v10 = &kDefaultOrphanNodeColor;
    }

    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&v16, v10);
    v12 = vdupq_n_s32(0x437F0000u);
    v13 = v16;
    goto LABEL_8;
  }

  return v8 != 0;
}

void std::vector<md::TransitNodeExternalIcon::DotInfo>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 20 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 2) < v6)
    {
      if (a2 <= 0xCCCCCCCCCCCCCCCLL)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 2);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x666666666666666)
        {
          v10 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitNodeExternalIcon::DotInfo>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 20 * ((20 * v6 - 20) / 0x14) + 20;
    bzero(a1[1], v12);
    v11 = v4 + v12;
  }

  a1[1] = v11;
}

void md::TransitOrphanNode::~TransitOrphanNode(md::TransitOrphanNode *this)
{
  *this = &unk_1F2A27C90;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1060C4067290D6BLL);
  }

  md::TransitNode::~TransitNode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A27C90;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1060C4067290D6BLL);
  }

  md::TransitNode::~TransitNode(this);
}

void md::TransitNode::~TransitNode(md::TransitNode *this)
{
  *this = &unk_1F2A27C40;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void md::TransitConnectedNode::didUpdateTransitLinks(md::TransitConnectedNode *this, int a2)
{
  v2 = *(this + 31);
  if ((v2 + 1) > 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(this + 31) = v3;
  if (a2)
  {
    v5 = *(this + 32);
    if ((v5 + 1) > 1)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = 1;
    }

    *(this + 32) = v6;
    if (*(this + 60) || (md::TransitConnectedNode::createDots(this), *(this + 60)))
    {
      v7 = *(this + 12);
      v8 = v7[3];
      if (v8 == v7 + 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          if (v9 <= (*(v8[4] + 112) - *(v8[4] + 104)) >> 3)
          {
            v9 = (*(v8[4] + 112) - *(v8[4] + 104)) >> 3;
          }

          v10 = v8[1];
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
              v11 = v8[2];
              v12 = *v11 == v8;
              v8 = v11;
            }

            while (!v12);
          }

          v8 = v11;
        }

        while (v11 != v7 + 4);
      }

      v13 = v7[6];
      v14 = v7 + 7;
      if (v13 != v14)
      {
        do
        {
          if (v9 <= (*(v13[4] + 112) - *(v13[4] + 104)) >> 3)
          {
            v9 = (*(v13[4] + 112) - *(v13[4] + 104)) >> 3;
          }

          v15 = v13[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v13[2];
              v12 = *v16 == v13;
              v13 = v16;
            }

            while (!v12);
          }

          v13 = v16;
        }

        while (v16 != v14);
      }
    }

    else
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 10) - *(this + 9)) >> 3);
    }

    if (v9 != 2 && v9 != 1)
    {
      if (!v9)
      {
        *(this + 61) = 0;
        return;
      }

      if (v9 > 4)
      {
        LOBYTE(v9) = 4;
      }

      else
      {
        LOBYTE(v9) = 3;
      }
    }

    *(this + 61) = v9;
  }
}

void md::TransitConnectedNode::createDots(md::TransitConnectedNode *this)
{
  *(this + 10) = *(this + 9);
  if (*(this + 4) != *(this + 5))
  {
    operator new();
  }

  v1 = *(this + 12);
  v2 = v1[3];
  v3 = v1 + 4;
  if (v2 != v1 + 4)
  {
    do
    {
      v4 = v2[4];
        ;
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
    v1 = *(this + 12);
  }

  v9 = v1[6];
  v10 = v1 + 7;
  if (v9 != v1 + 7)
  {
    do
    {
      v11 = v9[4];
        ;
      }

      v13 = v9[1];
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
          v14 = v9[2];
          v8 = *v14 == v9;
          v9 = v14;
        }

        while (!v8);
      }

      v9 = v14;
    }

    while (v14 != v10);
  }

  v15 = *(this + 9);
  v16 = *(this + 10);
  if (v15 == v16)
  {
    v17 = *(this + 11);
    if (v15 >= v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v15) >> 3);
      v19 = 2 * v18;
      if (2 * v18 <= 1)
      {
        v19 = 1;
      }

      if (v18 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v19;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitNodeDot>>(v20);
    }

    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    v16 += 24;
    *(this + 10) = v16;
    v15 = *(this + 9);
  }

  *(this + 14) = 0;
  while (v15 != v16)
  {
    if (*v15)
    {
      *(this + 28) = *v15;
      *(this + 29) = v15[1];
      break;
    }

    v15 += 6;
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(0);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(0);
}

void sub_1B30409A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a14);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a17);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitNodeDot>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t md::TransitConnectedNode::updateExternalIcon(md::TransitConnectedNode *this, md::TransitNodeExternalIcon *a2)
{
  if (*(this + 64) != 1)
  {
    return 0;
  }

  v4 = *(a2 + 260);
  if (v4 != *(this + 60))
  {
    return 1;
  }

  v5 = *(this + 31);
  if (*(a2 + 59) == v5)
  {
    return 0;
  }

  *(a2 + 59) = v5;
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      if (*(this + 136) != 1)
      {
        return 0;
      }

      md::TransitConnectedNode::updateMaxLinkOffset(this);
      if (*(this + 30) <= 4.0)
      {
        return 0;
      }
    }

    else
    {
      if (v4)
      {
        return 0;
      }

      if (*(a2 + 60) == *(this + 32))
      {
        v7 = *(this + 9);
        v8 = *(this + 10);
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
        v10 = *(a2 + 13);
        if (v9 == 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 14) - v10) >> 2))
        {
          if (v8 != v7)
          {
            v11 = 0;
            v12 = *(this + 12);
            v13 = (v7 + 16);
            do
            {
              v14 = *v13;
              v15 = 0.0;
              if (*v13)
              {
                if (v12)
                {
                  if ((*(v14 + 55) & 1) == 0)
                  {
                    v16 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v12 + 168), v14);
                    if (v16)
                    {
                      v15 = v16[7];
                    }
                  }
                }
              }

              *(v13 - 2) = v15;
              v17 = *(this + 14) * v15;
              v10[1].f32[1] = v17;
              *v10 = vmul_n_f32(*(v13 - 2), v17);
              v10 = (v10 + 20);
              ++v11;
              v13 += 3;
            }

            while (v11 < v9);
          }

          md::TransitNodeExternalIcon::updateRadius(a2);
          return 0;
        }
      }
    }

    return 1;
  }

  md::TransitConnectedNode::updateMaxLinkOffset(this);
  v19 = *(this + 30);
  v20 = v19 < 2.0;
  v21 = *(this + 14) * v19;
  v22 = v21;
  v6 = v20;
  *(a2 + 63) = v22;
  v23 = v22 / -2;
  v24 = *(a2 + 62);
  v25 = -(v24 + v22 / 2);
  *(a2 + 32) = v25;
  *(a2 + 34) = v23;
  *(a2 + 36) = v23;
  *(a2 + 38) = v25;
  v26 = v23 + truncf(v21);
  *(a2 + 40) = v26;
  v27 = v26 + v24;
  *(a2 + 42) = v27;
  *(a2 + 44) = v27;
  *(a2 + 46) = v26;
  md::TransitNodeExternalIcon::updateRadius(a2);
  return v6;
}

uint64_t md::TransitConnectedNode::updateMaxLinkOffset(uint64_t this)
{
  v1 = *(this + 124);
  if (*(this + 132) != v1)
  {
    *(this + 132) = v1;
    v2 = *(this + 96);
    v3 = v2[3];
    v4 = 0.0;
    if (v3 != v2 + 4)
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

        v4 = fmaxf(v4, *(v3[4] + 152));
        v3 = v7;
      }

      while (v7 != v2 + 4);
    }

    v9 = v2[6];
    v10 = v2 + 7;
    if (v9 != v10)
    {
      do
      {
        v11 = v9[1];
        v12 = v9;
        if (v11)
        {
          do
          {
            v13 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v13 = v12[2];
            v8 = *v13 == v12;
            v12 = v13;
          }

          while (!v8);
        }

        v4 = fmaxf(v4, *(v9[4] + 152));
        v9 = v13;
      }

      while (v13 != v10);
    }

    *(this + 120) = v4;
  }

  return this;
}

uint64_t md::TransitConnectedNode::initializeExternalIcon(md::TransitConnectedNode *this, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (*(*(this + 1) + 320))
  {
    if (*(this + 136) == 1)
    {
      md::TransitConnectedNode::updateMaxLinkOffset(this);
      if (*(this + 30) < 3.0)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 1;
    }

    *(this + 60) = v8;
  }

  else
  {
    v8 = *(this + 60);
  }

  *(a2 + 260) = v8;
  *(a2 + 70) = v8 != 2;
  *(a2 + 240) = *(this + 32);
  v9 = md::TransitNodeTextureAtlas::infoForIcon(a4, v8, a3[1], *a3, 0);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (*(this + 60) == 2)
  {
    v11 = *(v9 + 32);
    v12 = *(v9 + 8) - v11;
    v13 = v12 / 2;
    v14 = *v9;
    v15 = *(v9 + 4);
    *(a2 + 192) = *v9;
    *(a2 + 193) = v15;
    v16 = v14 + v12 / 2;
    *(a2 + 194) = v16;
    *(a2 + 195) = v15;
    v17 = v15 + *(v9 + 12);
    *(a2 + 196) = v16;
    *(a2 + 197) = v17;
    v18 = v15 + *(v9 + 12);
    *(a2 + 198) = v14;
    *(a2 + 199) = v18;
    v19 = v11 + v12 / 2;
    v20 = (a2 + 201);
    v21 = 4;
    do
    {
      v22 = *(v20 - 8);
      *(v20 - 1) = *(v20 - 9) + v19;
      *v20 = v22;
      v20 += 2;
      --v21;
    }

    while (v21);
    v23 = *(v9 + 12);
    v24 = v23 / -2;
    v25 = v23 - v23 / 2;
    *(a2 + 132) = v24;
    *(a2 + 140) = v24;
    *(a2 + 148) = v25;
    *(a2 + 156) = v25;
    *(a2 + 164) = v24;
    *(a2 + 172) = v24;
    *(a2 + 180) = v25;
    *(a2 + 188) = v25;
    *(a2 + 248) = v13;
    v26 = *(a2 + 244);
    if (v26 != 1.0)
    {
      v27 = 0;
      *(a2 + 248) = (v26 * v13);
      do
      {
        *(a2 + 132 + v27) = *(a2 + 132 + v27) * *(a2 + 244);
        v27 += 8;
      }

      while (v27 != 64);
    }

    v28 = md::TransitNodeTextureAtlas::infoForIcon(a4, *(this + 60), a3[1], *a3, 1);
    if (v28 && *(v10 + 8) == *(v28 + 8))
    {
      *(a2 + 262) = 1;
      *(a2 + 228) = *(v28 + 16);
      *(a2 + 232) = *(v28 + 20);
      v29 = *(v28 + 4) - *(a2 + 193);
      *(a2 + 208) = *v28 - *(a2 + 192);
      *(a2 + 209) = v29;
    }
  }

  else
  {
    md::TransitNodeExternalIcon::setDotTextureRect(a2, v9, (v9 + 8), (v9 + 24));
  }

  v30 = *(this + 60);
  if (!*(this + 60))
  {
    v34 = *(this + 10) - *(this + 9);
    if (v34)
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 3);
      *(a2 + 220) = *(this + 28);
      *(a2 + 224) = *(this + 29);
      std::vector<md::TransitNodeExternalIcon::DotInfo>::resize((a2 + 104), v35);
      v36 = 0;
      if (v35 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v35;
      }

      v38 = 16;
      v44 = vdupq_n_s32(0x437F0000u);
      do
      {
        v39 = *(*(this + 9) + v38);
        if (v39)
        {
          v40 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(*(md::TransitLine::resolveStyleIfNecessary(*v39, *(v39 + 52)) + 16), v44)));
          *(*(a2 + 104) + v36 + 8) = vuzp1_s8(v40, v40).u32[0];
          v41 = *(**(*(this + 9) + v38) + 88);
        }

        else
        {
          geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&v45, &kDefaultOrphanNodeColor);
          v41 = 0;
          v42 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v45, v44)));
          *(*(a2 + 104) + v36 + 8) = vuzp1_s8(v42, v42).u32[0];
        }

        *(*(a2 + 104) + v36 + 16) = v41;
        v36 += 20;
        v38 += 24;
        --v37;
      }

      while (v37);
      goto LABEL_34;
    }

    return 0;
  }

  if (v30 != 1)
  {
    if (v30 != 2)
    {
      return 1;
    }

    *(a2 + 212) = *(this + 26);
    *(a2 + 216) = *(this + 27);
LABEL_34:
    (*(*this + 40))(this, a2);
    return 1;
  }

  v31 = 1;
  std::vector<md::TransitNodeExternalIcon::DotInfo>::resize((a2 + 104), 1uLL);
  v32 = *(a2 + 104);
  geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&v45, &geo::white);
  v33 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v45, vdupq_n_s32(0x437F0000u))));
  *(v32 + 8) = vuzp1_s8(v33, v33).u32[0];
  md::TransitNodeExternalIcon::updateRadius(a2);
  return v31;
}

uint64_t md::TransitConnectedNode::debugString@<X0>(md::TransitConnectedNode *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v51);
  md::TransitNode::debugString(this, a2, __p);
  if ((v50 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v50 & 0x80u) == 0)
  {
    v7 = v50;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v51, v6, v7);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v51, " dots:", 6);
  MEMORY[0x1B8C61C80](&v51, -1431655765 * ((*(this + 10) - *(this + 9)) >> 3));
  v8 = *(this + 12);
  if (v8 && a2)
  {
    v9 = [MEMORY[0x1E696AD60] stringWithFormat:@"\n <junction>"];
    v44 = a3;
    v45 = v8;
    v10 = *(v8 + 24);
    v46 = (v8 + 32);
    if (v10 == (v8 + 32))
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = v10[4];
        v47 = v11;
        [v9 appendFormat:@"\n   IncomingLink[%i]", v11];
        v13 = *(v12 + 80);
        v14 = *(v12 + 88);
        if (v13 != v14)
        {
          v15 = 0;
          do
          {
            v16 = *(*v13 + 8);
            v17 = *(*(v16 + 16) + 40);
            v18 = md::TransitLine::debugSystemName(v16);
            v19 = *v13 + 8;
            v20 = *(*(*v19 + 16) + 16);
            if (!*v13)
            {
              v19 = 0;
            }

            ShouldDrawToEndPoint = geo::codec::transitLinkGetShouldDrawToEndPoint(**(v19 + 8), *(v19 + 36));
            if (*v13)
            {
              v22 = *v13 + 8;
            }

            else
            {
              v22 = 0;
            }

            [v9 appendFormat:@"\n    line[uid:%llu, %i, %s, %s] draw[TO:%i, from:%i]", v17, v15, v18, v20, ShouldDrawToEndPoint, geo::codec::transitLinkGetShouldDrawFromEndPoint(**(v22 + 8), *(v22 + 36))];
            v15 = (v15 + 1);
            v13 += 8;
          }

          while (v13 != v14);
        }

        v23 = v10[1];
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
            v24 = v10[2];
            v25 = *v24 == v10;
            v10 = v24;
          }

          while (!v25);
        }

        v11 = (v47 + 1);
        v10 = v24;
      }

      while (v24 != v46);
    }

    v26 = *(v45 + 48);
    if (v26 != (v45 + 56))
    {
      v27 = v11;
      do
      {
        v28 = v26[4];
        v48 = v27;
        [v9 appendFormat:@"\n   OutgoingLink[%i]", v27];
        v29 = *(v28 + 80);
        v30 = *(v28 + 88);
        if (v29 != v30)
        {
          v31 = 0;
          do
          {
            v32 = *(*v29 + 8);
            v33 = *(*(v32 + 16) + 40);
            v34 = md::TransitLine::debugSystemName(v32);
            v35 = *v29 + 8;
            v36 = *(*(*v35 + 16) + 16);
            if (!*v29)
            {
              v35 = 0;
            }

            v37 = geo::codec::transitLinkGetShouldDrawToEndPoint(**(v35 + 8), *(v35 + 36));
            if (*v29)
            {
              v38 = *v29 + 8;
            }

            else
            {
              v38 = 0;
            }

            [v9 appendFormat:@"\n    line[uid:%llu, %i, %s, %s] draw[to:%i, FROM:%i]", v33, v31, v34, v36, v37, geo::codec::transitLinkGetShouldDrawFromEndPoint(**(v38 + 8), *(v38 + 36))];
            v31 = (v31 + 1);
            v29 += 8;
          }

          while (v29 != v30);
        }

        v39 = v26[1];
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          do
          {
            v40 = v26[2];
            v25 = *v40 == v26;
            v26 = v40;
          }

          while (!v25);
        }

        v27 = (v48 + 1);
        v26 = v40;
      }

      while (v40 != (v45 + 56));
    }

    v41 = [v9 UTF8String];
    v42 = strlen(v41);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v51, v41, v42);

    a3 = v44;
  }

  std::ostringstream::str[abi:nn200100](a3, &v51);
  v51 = *MEMORY[0x1E69E54E8];
  *(&v51 + *(v51 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v52 = MEMORY[0x1E69E5548] + 16;
  if (v54 < 0)
  {
    operator delete(v53[7].__locale_);
  }

  v52 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v53);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v55);
}

void sub_1B3041624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  a26 = *MEMORY[0x1E69E54E8];
  *(&a26 + *(a26 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a27 = MEMORY[0x1E69E5548] + 16;
  if (a40 < 0)
  {
    operator delete(__p);
  }

  a27 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a28);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a43);
  _Unwind_Resume(a1);
}

void md::TransitConnectedNode::~TransitConnectedNode(md::TransitConnectedNode *this)
{
  *this = &unk_1F2A27CE0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  md::TransitNode::~TransitNode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A27CE0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  md::TransitNode::~TransitNode(this);
}

uint64_t md::TransitNode::TransitNode(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  *a1 = &unk_1F2A27C40;
  *(a1 + 8) = 0;
  v6 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    *v6 = a2;
    v9 = *(a2 + 8);
    if (v9)
    {
      v9 = std::__shared_weak_count::lock(v9);
      v10 = v9;
      if (v9)
      {
        v9 = *a2;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 24);
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      v9 = *(a1 + 16);
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v12 = (a1 + 32);
    *(a1 + 48) = 0;
    *(a1 + 56) = a4;
    *(a1 + 60) = 5;
    *(a1 + 64) = 0;
    if (v9)
    {
      *(a1 + 62) = *(geo::codec::VectorTile::key(v9) + 1) & 0x3F;
      if (*(a2 + 276))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(*(a2 + 276));
      }

      for (i = 0; i < *(*v6 + 276); ++i)
      {
        v14 = *(*(*(a1 + 16) + 1608) + 8 * (i + *(*v6 + 288)));
        if (v14 < 0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 3))
        {
          v15 = *a3 + 104 * v14;
          v17 = *(a1 + 40);
          v16 = *(a1 + 48);
          if (v17 >= v16)
          {
            v19 = (v17 - *v12) >> 3;
            if ((v19 + 1) >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v20 = v16 - *v12;
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
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v22);
            }

            v23 = (8 * v19);
            *v23 = v15;
            v18 = 8 * v19 + 8;
            v24 = *(a1 + 32);
            v25 = *(a1 + 40) - v24;
            v26 = v23 - v25;
            memcpy(v23 - v25, v24, v25);
            v27 = *(a1 + 32);
            *(a1 + 32) = v26;
            *(a1 + 40) = v18;
            *(a1 + 48) = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v17 = v15;
            v18 = (v17 + 1);
          }

          *(a1 + 40) = v18;
        }
      }
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = a4;
    *(a1 + 60) = 5;
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1B3041A70(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t *md::TransitConnectedNode::TransitConnectedNode(uint64_t a1, uint64_t a2, void *a3, void *a4, float a5)
{
  v6 = a1;
  v7 = md::TransitNode::TransitNode(a1, a2, a3, a5);
  *v7 = &unk_1F2A27CE0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = a4;
  *(v7 + 120) = 0;
  *(v7 + 124) = 0x100000001;
  *(v7 + 132) = 0;
  *(v7 + 136) = 0;
  if (*(*(v7 + 8) + 320))
  {
    v8 = a4[3];
    v59 = v6;
    v60 = a4[6];
    v61 = a4 + 4;
    if (v8 == a4 + 4)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = a4 + 7;
      v12 = a4[3];
      do
      {
        v13 = v12[1];
        v14 = v13;
        v15 = v12;
        if (v13)
        {
          do
          {
            v16 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v16 = v15[2];
            v17 = *v16 == v15;
            v15 = v16;
          }

          while (!v17);
        }

        if (v16 != v61)
        {
          v18 = v12[4];
          do
          {
            v19 = v16[4];
            v20 = md::TransitJunction::normalForLinkPair(a4, v18, v19);
            if (v20 && ((*(v19 + 88) - *(v19 + 80)) >> 3) + ((*(v18 + 88) - *(v18 + 80)) >> 3) > v10)
            {
              v10 = ((*(v19 + 88) - *(v19 + 80)) >> 3) + ((*(v18 + 88) - *(v18 + 80)) >> 3);
              v9 = v20;
            }

            v21 = v16[1];
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
                v22 = v16[2];
                v17 = *v22 == v16;
                v16 = v22;
              }

              while (!v17);
            }

            v16 = v22;
          }

          while (v22 != v61);
        }

        v23 = v60;
        if (v60 != v11)
        {
          v24 = v12[4];
          do
          {
            v25 = v23[4];
            v26 = md::TransitJunction::normalForLinkPair(a4, v24, v25);
            if (v26 && ((*(v25 + 88) - *(v25 + 80)) >> 3) + ((*(v24 + 88) - *(v24 + 80)) >> 3) > v10)
            {
              v10 = ((*(v25 + 88) - *(v25 + 80)) >> 3) + ((*(v24 + 88) - *(v24 + 80)) >> 3);
              v9 = v26;
            }

            v27 = v23[1];
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
                v28 = v23[2];
                v17 = *v28 == v23;
                v23 = v28;
              }

              while (!v17);
            }

            v23 = v28;
          }

          while (v28 != v11);
        }

        if (v13)
        {
          do
          {
            v29 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v29 = v12[2];
            v17 = *v29 == v12;
            v12 = v29;
          }

          while (!v17);
        }

        v12 = v29;
      }

      while (v29 != v61);
    }

    v30 = a4 + 7;
    v31 = v60;
    if (v60 != a4 + 7)
    {
      do
      {
        v32 = v31[1];
        v33 = v32;
        v34 = v31;
        if (v32)
        {
          do
          {
            v35 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v35 = v34[2];
            v17 = *v35 == v34;
            v34 = v35;
          }

          while (!v17);
        }

        if (v35 != v30)
        {
          v36 = v31[4];
          do
          {
            v37 = v35[4];
            v38 = md::TransitJunction::normalForLinkPair(a4, v36, v37);
            if (v38 && ((*(v37 + 88) - *(v37 + 80)) >> 3) + ((*(v36 + 88) - *(v36 + 80)) >> 3) > v10)
            {
              v10 = ((*(v37 + 88) - *(v37 + 80)) >> 3) + ((*(v36 + 88) - *(v36 + 80)) >> 3);
              v9 = v38;
            }

            v39 = v35[1];
            if (v39)
            {
              do
              {
                v40 = v39;
                v39 = *v39;
              }

              while (v39);
            }

            else
            {
              do
              {
                v40 = v35[2];
                v17 = *v40 == v35;
                v35 = v40;
              }

              while (!v17);
            }

            v35 = v40;
          }

          while (v40 != v30);
        }

        if (v32)
        {
          do
          {
            v41 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v41 = v31[2];
            v17 = *v41 == v31;
            v31 = v41;
          }

          while (!v17);
        }

        v31 = v41;
      }

      while (v41 != v30);
    }

    if (v9)
    {
      v6 = v59;
      *(v59 + 136) = 1;
    }

    else
    {
      if (v8 == v61)
      {
        v9 = 0;
        v42 = v60;
      }

      else
      {
        v9 = 0;
        v42 = v60;
        do
        {
          v43 = v8[4];
          v44 = v43[8];
          if (*(v44 - 3) == 1)
          {
            v45 = (v43[11] - v43[10]) >> 3;
            v46 = (v44 - 48);
            if (v45 > v10)
            {
              v10 = v45;
              v9 = v46;
            }
          }

          v47 = v8[1];
          if (v47)
          {
            do
            {
              v48 = v47;
              v47 = *v47;
            }

            while (v47);
          }

          else
          {
            do
            {
              v48 = v8[2];
              v17 = *v48 == v8;
              v8 = v48;
            }

            while (!v17);
          }

          v8 = v48;
        }

        while (v48 != v61);
      }

      if (v42 != v30)
      {
        do
        {
          v49 = v42[4];
          v50 = v49[7];
          if (v50[11].i8[5] == 1)
          {
            v51 = (v49[11] - v49[10]) >> 3;
            v52 = v50 + 1;
            if (v51 > v10)
            {
              v10 = v51;
              v9 = v52;
            }
          }

          v53 = v42[1];
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
              v54 = v42[2];
              v17 = *v54 == v42;
              v42 = v54;
            }

            while (!v17);
          }

          v42 = v54;
        }

        while (v54 != v30);
      }

      v6 = v59;
      *(v59 + 136) = v9 != 0;
      if (!v9)
      {
        goto LABEL_91;
      }
    }

    v55 = *v9;
    v56 = vmul_f32(v55, v55);
    *v56.i32 = sqrtf(vaddv_f32(v56));
    if (*v56.i32 >= 0.01)
    {
      v6[13] = vdiv_f32(v55, vdup_lane_s32(v56, 0));
      md::TransitConnectedNode::updateMaxLinkOffset(v6);
      if (v6[15].f32[0] < 3.0)
      {
        v57 = 1;
      }

      else
      {
        v57 = 2;
      }

      goto LABEL_95;
    }

    v6[13] = 1065353216;
    v6[17].i8[0] = 0;
LABEL_91:
    v57 = 1;
LABEL_95:
    v6[7].i8[4] = v57;
    return v6;
  }

  v6[7].i8[4] = 0;
  md::TransitConnectedNode::createDots(v6);
  return v6;
}

void sub_1B3041F7C(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 10) = v4;
    operator delete(v4);
  }

  md::TransitNode::~TransitNode(v2);
  _Unwind_Resume(a1);
}

void md::TransitParentNode::~TransitParentNode(md::TransitParentNode *this)
{
  *this = &unk_1F2A27CE0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  md::TransitNode::~TransitNode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A27CE0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  md::TransitNode::~TransitNode(this);
}

void md::InitialMapEngineMode::willBecomeInactive(uint64_t a1, md::MapEngine *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 5241);
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0x4AC7AB7561675F6uLL)[5] + 136) = 1;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0x653D1F33EF15EF04uLL)[5] + 128) = 0;
  v7 = *a4;
  v8 = a4[1];
  while (v7 != v8)
  {
    if (*v7 == 37)
    {
      if (v7 != v8)
      {
        v9 = *(v7 + 8) != 0;
        goto LABEL_8;
      }

      break;
    }

    v7 += 16;
  }

  v9 = 0;
LABEL_8:

  md::MapEngine::toggleVLR(a2, v9);
}

void md::InitialMapEngineMode::~InitialMapEngineMode(md::InitialMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PolygonLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

void md::PolygonLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v30, (a1 + 792));
  v5 = a1;
  atomic_load((a1 + 808));
  if (v30)
  {
    gdc::Tiled::tileFromLayerDataKey(&v29, *(a2 + 16));
    memset(v28, 0, sizeof(v28));
    gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], v28);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      while (*(a1 + 592) != *v6)
      {
        v6 += 24;
        if (v6 == v7)
        {
          goto LABEL_29;
        }
      }

      if (v6 != v7)
      {
        for (i = *(v6 + 3); i; v5 = a1)
        {
          v9 = *(i + 7);
          v10 = i[15];
          if (*(&v9 + 1))
          {
            atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
            v11 = v26;
            v12 = v27;
            if (v26 >= v27)
            {
              goto LABEL_15;
            }

            *v26 = v9;
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v11 = v26;
            v12 = v27;
            if (v26 >= v27)
            {
LABEL_15:
              v14 = (v11 - v25) >> 4;
              v15 = v14 + 1;
              if ((v14 + 1) >> 60)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v16 = v12 - v25;
              if (v16 >> 3 > v15)
              {
                v15 = v16 >> 3;
              }

              if (v16 >= 0x7FFFFFFFFFFFFFF0)
              {
                v17 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v15;
              }

              v53 = &v25;
              if (v17)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v17);
              }

              v18 = 16 * v14;
              *(16 * v14) = v9;
              if (v10)
              {
                atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v13 = (v18 + 16);
              v19 = (v18 - (v26 - v25));
              memcpy(v19, v25, v26 - v25);
              v20 = v25;
              v21 = v27;
              v25 = v19;
              v26 = v13;
              v27 = 0;
              __p[1] = v20;
              v51 = v20;
              v52 = v21;
              __p[0] = v20;
              std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(__p);
              goto LABEL_26;
            }

            *v26 = v9;
          }

          v13 = v11 + 16;
LABEL_26:
          v26 = v13;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v10);
          }

          i = *i;
        }
      }
    }

LABEL_29:
    if (*(v5 + 24))
    {
      memset(v49, 0, sizeof(v49));
      *__n = 0u;
      v47 = 0u;
      v48 = 1065353216;
      v44 = 0uLL;
      v45 = 0;
      v33[0] = 0;
      v33[1] = 0;
      v32 = v33;
      v34 = xmmword_1B33B1630;
      v39 = 0;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v38 = 0;
      v40 = 4;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      if (*(v5 + 32) != 41)
      {
        v53 = v49;
        operator new();
      }

      v54 = 0uLL;
      v55 = 0uLL;
      v56 = 1065353216;
      _ZNSt3__115allocate_sharedB8nn200100IN2md14MeshSetStorageENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    *a4 = 0u;
    __p[0] = &v25;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](__p);
    if (v28[0])
    {
      operator delete(v28[0]);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }
}

void sub_1B3043D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__split_buffer<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(&a71);
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
  }

  geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&a35);
  a35 = &a49;
  std::vector<std::unique_ptr<md::CoastlineGroup>>::__destroy_vector::operator()[abi:nn200100](&a35);
  std::__hash_table<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(&a53);
  a35 = &a59;
  std::vector<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a35);
  a35 = &a23;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a35);
  if (a26)
  {
    operator delete(a26);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<md::CoastlineGroup>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::allocator_traits<std::allocator<std::unique_ptr<md::CoastlineGroup>>>::destroy[abi:nn200100]<std::unique_ptr<md::CoastlineGroup>,void,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      *(v2 + 3) = off_1F2A4E798;

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

void std::vector<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::allocator_traits<std::allocator<std::unique_ptr<md::CoastlineGroup>>>::destroy[abi:nn200100]<std::unique_ptr<md::CoastlineGroup>,void,0>(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[3];
    v1[3] = 0;
    if (v2)
    {
      v4 = v2;
      std::vector<std::unique_ptr<ggl::Glow::MeshMesh>,geo::allocator_adapter<std::unique_ptr<ggl::Glow::MeshMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
      MEMORY[0x1B8C62190](v2, 0x20C40D2EA512BLL);
    }

    std::unique_ptr<ggl::MeshVendor<ggl::PolygonShadowedStroke::ShadowPathMesh>>::~unique_ptr[abi:nn200100](v1 + 2);
    v3 = v1[1];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_emplace<md::PolygonTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A4E798;
  a1[1] = v3;
  return a1;
}

uint64_t std::vector<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(v10);
    }

    v16 = 0;
    v17 = 24 * v7;
    geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(24 * v7, a2);
    v18 = 24 * v7 + 24;
    v11 = a1[1];
    v12 = 24 * v7 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = a1[2];
    v15 = v18;
    *(a1 + 1) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(&v16);
    v6 = v15;
  }

  else
  {
    result = geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v3, a2);
    v6 = result + 24;
    a1[1] = result + 24;
  }

  a1[1] = v6;
  return result;
}

void sub_1B30447A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
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

  v5 = *(*a1 + 8 * v4);
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

  return v6;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = off_1F2A4E798;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__swap_out_circular_buffer(__int128 **a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = (v4 - (v6 - *a1));
  if (v6 != *a1)
  {
    v8 = v4 - 16 * (v6 - *a1) + 24;
    v9 = v5;
    do
    {
      v10 = *v9;
      *(v8 - 8) = *(v9 + 2);
      *(v8 - 24) = v10;
      v11 = geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v8, v9 + 24);
      v9 += 3;
      v8 = v11 + 48;
    }

    while (v9 != v6);
    v12 = v5 + 24;
    do
    {
      *(v5 + 3) = off_1F2A4E798;

      v5 += 3;
      v12 += 48;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    *(i - 24) = off_1F2A4E798;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL anonymous namespace::PolygonKey::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*(a1 + 2) == *(a2 + 2) && *a1 == *a2)
  {
    if (*a1)
    {
      v2 = 0;
      v3 = 1;
      do
      {
        v4 = *&a1[4 * v2 + 4];
        v5 = *&a2[4 * v2 + 4];
        v6 = vabds_f32(v4, v5);
        v7 = v6 <= (fabsf(v5 + v4) * 0.000011921) || v6 <= 1.1755e-38;
        if ((v3 & 1) == 0)
        {
          break;
        }

        v3 = 0;
        v2 = 1;
      }

      while (v7);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

void ___ZNK2md22PolygonLayerDataSource11buildMeshesERKN3geo8QuadTileERNSt3__16vectorINS1_11_retain_ptrIU8__strongP14VKPolygonGroupNS1_16_retain_objc_arcENS1_17_release_objc_arcENS1_10_hash_objcENS1_11_equal_objcEEENS5_9allocatorISF_EEEERNS5_13unordered_mapIySF_NS5_4hashIyEENS5_8equal_toIyEENSG_INS5_4pairIKySF_EEEEEERNS6_INS5_10shared_ptrINS_21GEOVectorTileResourceEEENSG_ISX_EEEERNS_12TriangulatorIfEERKNSV_IN3gss17StylesheetManagerINS14_10PropertyIDEEEEEf_block_invoke(uint64_t a1, ResourceAccessor *a2)
{
  v2 = a1;
  v63 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  md::MeshSetStorage::prepareStorage(*(a1 + 40), a2);
  v4 = *(v2 + 56);
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    v7 = *(v5 + 8);
    [v7 willAddDataWithAccessor:a2];

    v5 += 24;
  }

  v8 = *(v2 + 64);
  v9 = *v8;
  v43 = *(v8 + 8);
  if (*v8 == v43)
  {
    goto LABEL_76;
  }

  v10 = 1;
  v50 = v2;
  do
  {
    v44 = v9;
    v12 = *v9;
    v11 = v9[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = v11;
    v13 = geo::codec::VectorTile::polygonsCount(*(*(v12 + 144) + 96), *(*(v12 + 144) + 104));
    if (!v13)
    {
      goto LABEL_73;
    }

    v14 = v13;
    v15 = 0;
    v16 = v10;
    v46 = v12;
    v48 = v13;
    do
    {
      v17 = *(*(v12 + 144) + 96) + (v15 << 7);
      v18 = v3[760];
      if (v18 == 2)
      {
        if (*(v17 + 123) != 1)
        {
          goto LABEL_16;
        }
      }

      else if (v18 == 1 && *(v17 + 123) == 1)
      {
LABEL_16:
        v10 = v16;
        goto LABEL_72;
      }

      if ((*(*v3 + 152))(v3, v12, *(*(v12 + 144) + 96) + (v15 << 7)))
      {
        goto LABEL_16;
      }

      v19 = *(v17 + 123);
      if (v19 == 1)
      {
        v10 = v16 + 1;
      }

      else
      {
        v10 = v16;
      }

      if (v19 != 1)
      {
        v16 = 0;
      }

      if (!*(v17 + 96))
      {
        goto LABEL_72;
      }

      md::createFeatureAttributeSet(&v61, (v17 + 24));
      v51 = v10;
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v59, **(v2 + 72), &v61);
      v20 = v61;
      v21 = v62;
      v22 = gss::FeatureAttributeSet::hash(v61, v62);
      v23 = *(v2 + 88);
      if (!*&v23)
      {
        v28 = &md::LogicManager::executionOrder(void)const::empty;
        goto LABEL_47;
      }

      v24 = v22;
      v25 = vcnt_s8(v23);
      v25.i16[0] = vaddlv_u8(v25);
      v26 = v25.u32[0];
      if (v25.u32[0] > 1uLL)
      {
        v27 = v22;
        if (v22 >= *&v23)
        {
          v27 = v22 % *&v23;
        }
      }

      else
      {
        v27 = (*&v23 - 1) & v22;
      }

      v29 = *(*(v50 + 80) + 8 * v27);
      if (!v29)
      {
        v28 = &md::LogicManager::executionOrder(void)const::empty;
        v2 = v50;
        v12 = v46;
        goto LABEL_47;
      }

      v47 = v16;
      v30 = *v29;
      if (!*v29)
      {
        v28 = &md::LogicManager::executionOrder(void)const::empty;
        goto LABEL_46;
      }

      while (1)
      {
        v31 = v30[1];
        if (v24 == v31)
        {
          if (gss::FeatureAttributeSet::operator==(v30[2], v30[3], v20, v21))
          {
            goto LABEL_44;
          }

          goto LABEL_39;
        }

        if (v26 > 1)
        {
          if (v31 >= *&v23)
          {
            v31 %= *&v23;
          }
        }

        else
        {
          v31 &= *&v23 - 1;
        }

        if (v31 != v27)
        {
          break;
        }

LABEL_39:
        v30 = *v30;
        if (!v30)
        {
          goto LABEL_44;
        }
      }

      v30 = 0;
LABEL_44:
      v28 = v30 + 6;
      if (!v30)
      {
        v28 = &md::LogicManager::executionOrder(void)const::empty;
      }

LABEL_46:
      v2 = v50;
      v12 = v46;
      v16 = v47;
LABEL_47:
      v56[0] = *(v17 + 122);
      v57 = *(v17 + 100);
      v58 = v16;
      v33 = *v28;
      v32 = v28[1];
      if (*v28 == v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = 0;
        do
        {
          {
            v35 = *(v33 + 32);

            v34 = v35;
          }

          v33 += 48;
        }

        while (v33 != v32);
      }

      v36 = v59;
      v37 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v52, v36, v37);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v37);
      }

      if (*(v2 + 120))
      {
        if (*(v17 + 123) == 1)
        {
          v38 = *(v2 + 120);
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
      }

      [v34 addPolygon:v17 accessor:a2 triangulator:*(v2 + 136) withRounder:{v38, v43}];
      if (v55 == 1)
      {
        (*(*v52 + 56))(v52);
      }

      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v54);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v60);
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v61);
      v14 = v48;
      v10 = v51;
LABEL_72:
      ++v15;
      v16 = v10;
    }

    while (v15 != v14);
LABEL_73:
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    v9 = v44 + 2;
  }

  while (v44 + 2 != v43);
LABEL_76:
  v39 = *(v2 + 56);
  v40 = *v39;
  v41 = v39[1];
  while (v40 != v41)
  {
    v42 = *(v40 + 8);
    [v42 didFinishAddingData];

    v40 += 24;
  }

  md::MeshSetStorage::finalize(*(v2 + 40));
}

uint64_t std::unordered_map<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = i[3];
    v7 = gss::FeatureAttributeSet::hash(v5, v6);
    v8 = v7;
    v9 = *(a1 + 8);
    if (!*&v9)
    {
      goto LABEL_18;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v12 = v7;
      if (v7 >= *&v9)
      {
        v12 = v7 % *&v9;
      }
    }

    else
    {
      v12 = (*&v9 - 1) & v7;
    }

    v13 = *(*a1 + 8 * v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == v8)
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
        goto LABEL_18;
      }

LABEL_17:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    if ((gss::FeatureAttributeSet::operator==(v14[2], v14[3], v5, v6) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,std::__unordered_map_hasher<gss::FeatureAttributeSet,std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,true>,std::__unordered_map_equal<gss::FeatureAttributeSet,std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,std::equal_to<gss::FeatureAttributeSet>,std::hash<gss::FeatureAttributeSet>,true>,std::allocator<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,void *>>>::destroy[abi:nn200100]<std::pair<gss::FeatureAttributeSet const,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,void,0>(gss::zone_mallocator *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 5);
    v4 = *(a1 + 4);
    if (v3 != v2)
    {
      v5 = v3 - 24;
      do
      {
        v6 = v3 - 48;
        *(v3 - 24) = off_1F2A4E798;

        v5 -= 48;
        v3 = v6;
      }

      while (v6 != v2);
      v4 = *(a1 + 4);
    }

    *(a1 + 5) = v2;
    operator delete(v4);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
}

void __destroy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrIN2md14MeshSetStorageEEE80c310_ZTSNSt3__113unordered_mapIN3gss19FeatureAttributeSetENS_6vectorINS_4pairIN12_GLOBAL__N_110PolygonKeyEN3geo11_retain_ptrIU8__strongP14VKPolygonGroupNS7_16_retain_objc_arcENS7_17_release_objc_arcENS7_10_hash_objcENS7_11_equal_objcEEEEENS_9allocatorISH_EEEENS_4hashIS2_EENS_8equal_toIS2_EENSI_INS4_IKS2_SK_EEEEEE120c45_ZTSNSt3__110shared_ptrIN2md12PolygonRoundEEE(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t __copy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrIN2md14MeshSetStorageEEE80c310_ZTSNSt3__113unordered_mapIN3gss19FeatureAttributeSetENS_6vectorINS_4pairIN12_GLOBAL__N_110PolygonKeyEN3geo11_retain_ptrIU8__strongP14VKPolygonGroupNS7_16_retain_objc_arcENS7_17_release_objc_arcENS7_10_hash_objcENS7_11_equal_objcEEEEENS_9allocatorISH_EEEENS_4hashIS2_EENS_8equal_toIS2_EENSI_INS4_IKS2_SK_EEEEEE120c45_ZTSNSt3__110shared_ptrIN2md12PolygonRoundEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[16];
  a1[15] = a2[15];
  a1[16] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B3045760(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>>::operator()[abi:nn200100](char a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + 24) = off_1F2A4E798;
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t result, uint64_t (***a2)(void), uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a3, v6);
      v6 += 24;
      a3 += 24;
    }

    while (v6 != a2);
    v7 = v5;
    v8 = v5;
    do
    {
      v9 = *v8;
      v8 += 3;
      result = (*v9)(v5);
      v7 += 3;
      v5 = v8;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::MeshSetStorage>::__on_zero_shared(void *a1)
{
  ggl::BufferMemory::~BufferMemory((a1 + 19));
  ggl::BufferMemory::~BufferMemory((a1 + 13));
  v2 = a1[12];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[10];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[6];

  std::__tree<gdc::LayerDataWithWorld>::destroy(v4);
}

void std::__shared_ptr_emplace<md::MeshSetStorage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4D568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::PolygonLayerDataSource::~PolygonLayerDataSource(md::PolygonLayerDataSource *this)
{
  md::PolygonLayerDataSource::~PolygonLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A27DC8;
  v2 = *(this + 100);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 96) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void md::LabelSettings_Markers::selectLabelMarker(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 40);
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 40);
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(*a1 + 24);
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v8 + 3544) = v10;
  v11 = *(v8 + 3552);
  *(v8 + 3552) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = a2[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  operator new();
}

void sub_1B3045BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

void ggl::ConstantDataTyped<ggl::PolygonFill::Fill>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonFill::Fill>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5A4B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonFill::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5A410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::VenueWallShadow::WallShadow>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VenueWallShadow::WallShadow>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueWallShadow::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A283F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Venue3DStroke::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Venue3DStroke::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::VenueWall::WallEndCap>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VenueWall::WallEndCap>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueWall::WallEndCapMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A280E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::VenueWall::WallTop>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VenueWall::WallTop>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueWall::WallTopMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::VenueWall::Wall>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VenueWall::Wall>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27F28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueWall::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4CA20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B3047414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  MEMORY[0x1B8C62190](v12, v13);
  _Unwind_Resume(a1);
}

void ggl::ConstantDataTyped<ggl::VenueOpenToBelowShadow::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VenueOpenToBelowShadow::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueOpenToBelowShadow::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A287F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B3047824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  MEMORY[0x1B8C62190](v12, v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A286D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonSolidFill::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

float md::MuninRoadLabelMarker::screenCollisionBounds(md::MuninRoadLabelMarker *this)
{
  v2 = *(this + 30);
  if (!v2)
  {
    return 3.4028e38;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 3.4028e38;
  }

  if (*(this + 29))
  {
    v4 = *(*(*(*(this + 39) + 64) + 24) + 392);
  }

  else
  {
    v4 = 3.4028e38;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  return v4;
}

uint64_t md::MuninRoadLabelMarker::calloutAnchorRect(md::MuninRoadLabelMarker *this)
{
  result = (*(*this + 464))(this);
  if (result)
  {
    return (*(**(*(this + 39) + 64) + 264))(*(*(this + 39) + 64), 0.0, 0.0, 0.0, 0.0);
  }

  return result;
}

__n128 md::MuninRoadLabelMarker::featureHandles@<Q0>(md::MuninRoadLabelMarker *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 36))
  {
    v18 = a2 + 3;
    v4 = mdm::zone_mallocator::instance(this);
    v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::MarkerFeatureHandle>(v4, 1);
    v6 = *(this + 36);
    v15 = v5;
    v16 = v5;
    v7 = v5 + 72;
    v17.n128_u64[0] = v5;
    v17.n128_u64[1] = (v5 + 72);
    v8 = md::MarkerFeatureHandle::MarkerFeatureHandle(v5, v6, *(this + 225));
    v17.n128_u64[0] = v7;
    v9 = a2[1];
    v10 = v8 + *a2 - v9;
    std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>,md::MarkerFeatureHandle*>(*a2, v9, v10);
    v11 = *a2;
    *a2 = v10;
    v12 = a2[2];
    v14 = v17;
    *(a2 + 1) = v17;
    v17.n128_u64[0] = v11;
    v17.n128_u64[1] = v12;
    v15 = v11;
    v16 = v11;
    std::__split_buffer<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator> &>::~__split_buffer(&v15);
    result = v14;
    a2[1] = v14.n128_u64[0];
  }

  return result;
}

void sub_1B30481B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__split_buffer<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator> &>::~__split_buffer(&a12);
  std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>,md::MarkerFeatureHandle*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 40) = 0;
      *(a3 + 20) = *(v5 + 20);
      *(a3 + 16) = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 40) = *(v5 + 40);
      *(a3 + 48) = *(v5 + 48);
      *(a3 + 56) = *(v5 + 56);
      *(v5 + 56) = 0;
      *(v5 + 64) = 0;
      v5 += 72;
      a3 += 72;
    }

    while (v5 != a2);
    do
    {
      v6 = *(v4 + 64);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      v4 += 72;
    }

    while (v4 != a2);
  }
}

std::__shared_weak_count *std::__split_buffer<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 72;
    a1 = *(shared_weak_owners - 8);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 72;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::MarkerFeatureHandle>(v5, v4);
  }

  return v1;
}

uint64_t md::MuninRoadLabelMarker::featureTile@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 304);
  *a2 = *(this + 296);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void md::MuninRoadLabelMarker::~MuninRoadLabelMarker(md::MuninRoadLabelMarker *this)
{
  *this = &unk_1F2A28990;
  v2 = *(this + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::LabelMarker::~LabelMarker(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A28990;
  v2 = *(this + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::LabelMarker::~LabelMarker(this);
}

uint64_t md::ARBuildingLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

void md::ARBuildingLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap(&v8, *(a1 + 592), *a3, a3[1]);
  v5 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  memset(v7, 0, sizeof(v7));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], v7);
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v6, (a1 + 800));
  operator new();
}

void sub_1B3049E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, md::MapTileData *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, gdc::Registry *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48)
{
  v49 = LODWORD(STACK[0x440]);
  if (v49 != -1)
  {
    (off_1F2A28CF8[v49])(&STACK[0x2F0], &STACK[0x3E0]);
  }

  LODWORD(STACK[0x440]) = -1;
  if (a46 != a48)
  {
    free(a46);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  std::unique_ptr<gdc::Registry>::~unique_ptr[abi:nn200100](&a38);
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a40);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::ARBuildingTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28D18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ARBuildingLayerDataSource::constructRequests(void **a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (a2 != a3)
  {
    v14[8] = v3;
    v14[9] = v4;
    v6 = a2;
    do
    {
      *&v8 = gdc::Tiled::tileFromLayerDataKey(v14, *(*v6 + 2));
      (*(*a1[3] + 16))(v12, v8);
      if (v13 == 1)
      {
        ((*a1)[18])(&v9, a1, **v6, v12, *(*v6 + 14), *(*v6 + 12) & 0xFFFFFFFFFFLL);
        gdc::LayerDataRequest::request(*v6, &v9, 0);
        if (v10 != v11)
        {
          free(v10);
        }
      }

      v6 += 2;
    }

    while (v6 != a3);
  }
}

uint64_t md::ARBuildingLayerDataSource::isReadyToDecode(md::ARBuildingLayerDataSource *this)
{
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v3, this + 98);
  if (v3)
  {
    v1 = atomic_load((*(v3 + 16) + 2786));
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v1 & 1;
}

void md::ARBuildingLayerDataSource::~ARBuildingLayerDataSource(md::ARBuildingLayerDataSource *this)
{
  *this = &unk_1F2A28C60;
  v2 = *(this + 101);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A28C60;
  v2 = *(this + 101);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void md::DaVinciRoadTileDataRenderable::~DaVinciRoadTileDataRenderable(md::DaVinciRoadTileDataRenderable *this)
{
  *this = &unk_1F2A28D50;
  std::unique_ptr<md::TrailJunctionsResource>::reset[abi:nn200100]((this + 408), 0);
  md::MapTileDataRenderable<md::DaVinciCenterLineRoadsTileData>::~MapTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A28D50;
  std::unique_ptr<md::TrailJunctionsResource>::reset[abi:nn200100]((this + 408), 0);

  md::MapTileDataRenderable<md::DaVinciCenterLineRoadsTileData>::~MapTileDataRenderable(this);
}

mdm::zone_mallocator *std::unique_ptr<md::TrailJunctionsResource>::reset[abi:nn200100](mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v5 = v3[3];
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v6 = mdm::zone_mallocator::instance(v5);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *>>(v6, v3);
        v3 = v4;
      }

      while (v4);
    }

    v7 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v7)
    {
      v8 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> *>(v8, v7);
    }

    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(*(v2 + 24));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::MapTileDataRenderable<md::DaVinciCenterLineRoadsTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2C090;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::DaVinciCenterLineRoadsTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::DaVinciCenterLineRoadsTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,0>((v1 + 16));
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,0>(std::__shared_weak_count *on_zero_shared_weak)
{
  v1 = &on_zero_shared_weak->__vftable;
  shared_weak_owners = on_zero_shared_weak->__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v3 = on_zero_shared_weak[1].__vftable;
    v4 = on_zero_shared_weak->__shared_weak_owners_;
    if (v3 != shared_weak_owners)
    {
      do
      {
        on_zero_shared_weak = v3[-1].__on_zero_shared_weak;
        if (on_zero_shared_weak)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](on_zero_shared_weak);
        }

        v3 = (v3 - 16);
      }

      while (v3 != shared_weak_owners);
      v4 = v1[2];
    }

    v1[3] = shared_weak_owners;
    v5 = mdm::zone_mallocator::instance(on_zero_shared_weak);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TrailJunctionRenderable>>(v5, v4);
  }

  v6 = v1[1];
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TrailJunctionRenderable>>(uint64_t a1, void *a2)
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

uint64_t *std::unordered_map<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,geo::allocator_adapter<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::unordered_map(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 16) = v5;
  *(a1 + 17) = 0;
  a1[3] = 0;
  *(a1 + 32) = *(a2 + 32);
  a1[5] = 0;
  *(a1 + 12) = *(a2 + 48);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__rehash<true>(a1, *(a2 + 8));
  v7 = *(a2 + 24);
  if (v7)
  {
    v35 = (a1 + 3);
    do
    {
      v8 = v7[2];
      v9 = 0x9DDFEA08EB382D69 * ((8 * (v8 & 0x1FFFFFFF) + 8) ^ HIDWORD(v8));
      v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v9 >> 47) ^ v9);
      v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
      v12 = a1[1];
      if (v12)
      {
        v13 = vcnt_s8(v12);
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v2 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
          if (v11 >= v12)
          {
            v2 = v11 % v12;
          }
        }

        else
        {
          v2 = v11 & (v12 - 1);
        }

        v14 = *(*a1 + 8 * v2);
        if (v14)
        {
          for (i = *v14; i; i = *i)
          {
            v16 = i[1];
            if (v16 == v11)
            {
              if (i[2] == v8)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v13.u32[0] > 1uLL)
              {
                if (v16 >= v12)
                {
                  v16 %= v12;
                }
              }

              else
              {
                v16 &= v12 - 1;
              }

              if (v16 != v2)
              {
                break;
              }
            }
          }
        }
      }

      v17 = mdm::zone_mallocator::instance(v6);
      v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(v17);
      v18 = v6;
      *v6 = 0;
      *(v6 + 1) = v11;
      v19 = v7[3];
      *(v6 + 2) = v7[2];
      *(v6 + 3) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      *(v6 + 56) = *(v7 + 56);
      v21 = v7[4];
      v20 = v7[5];
      v22 = v20 - v21;
      if (v20 != v21)
      {
        if ((v22 >> 4) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v23 = mdm::zone_mallocator::instance(v6);
        v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::TrailJunctionRenderable>>(v23, v22 >> 4);
        *(v18 + 4) = v6;
        *(v18 + 5) = v6;
        *(v18 + 6) = v6 + v22;
        do
        {
          v24 = *(v21 + 1);
          *v6 = *v21;
          *(v6 + 1) = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          v21 += 16;
          v6 = (v6 + 16);
        }

        while (v21 != v20);
        *(v18 + 5) = v6;
      }

      v25 = (a1[5] + 1);
      v26 = *(a1 + 12);
      if (!v12 || (v26 * v12) < v25)
      {
        v27 = (v12 & (v12 - 1)) != 0;
        if (v12 < 3)
        {
          v27 = 1;
        }

        v28 = v27 | (2 * v12);
        v29 = vcvtps_u32_f32(v25 / v26);
        if (v28 <= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = v28;
        }

        std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__rehash<true>(a1, v30);
        v12 = a1[1];
        if ((v12 & (v12 - 1)) != 0)
        {
          if (v11 >= v12)
          {
            v2 = v11 % v12;
          }

          else
          {
            v2 = v11;
          }
        }

        else
        {
          v2 = (v12 - 1) & v11;
        }
      }

      v31 = *a1;
      v32 = *(*a1 + 8 * v2);
      if (v32)
      {
        *v18 = *v32;
      }

      else
      {
        *v18 = *v35;
        *v35 = v18;
        *(v31 + 8 * v2) = v35;
        if (!*v18)
        {
          goto LABEL_49;
        }

        v33 = *(*v18 + 8);
        if ((v12 & (v12 - 1)) != 0)
        {
          if (v33 >= v12)
          {
            v33 %= v12;
          }
        }

        else
        {
          v33 &= v12 - 1;
        }

        v32 = (*a1 + 8 * v33);
      }

      *v32 = v18;
LABEL_49:
      ++a1[5];
LABEL_50:
      v7 = *v7;
    }

    while (v7);
  }

  return a1;
}

void sub_1B304AAF8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(v1[3]);
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == a2)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(a1);
  v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(v14);
  i = v15;
  *v15 = 0;
  v15[1] = v8;
  v16 = (*a3)[1];
  v15[2] = **a3;
  v15[3] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v15[4] = 0;
  v15[5] = 0;
  v15[6] = 0;
  v17 = (*(a1 + 5) + 1);
  v18 = a1[12];
  if (!v9 || (v18 * v9) < v17)
  {
    v19 = 1;
    if (v9 >= 3)
    {
      v19 = (v9 & (v9 - 1)) != 0;
    }

    v20 = v19 | (2 * v9);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__rehash<true>(a1, v22);
    v9 = *(a1 + 1);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v3);
  if (v24)
  {
    *i = *v24;
LABEL_40:
    *v24 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v23 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v25 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v25 >= v9)
      {
        v25 %= v9;
      }
    }

    else
    {
      v25 &= v9 - 1;
    }

    v24 = (*a1 + 8 * v25);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 5);
  return i;
}

void sub_1B304B0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  v11 = 144;
  while (1)
  {
    v12 = *(&v9->__vftable + v11);
    *(&v9->__vftable + v11) = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v11 -= 8;
    if (v11 == 128)
    {
      while (1)
      {
        v13 = *(&v9->__vftable + v11);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        v11 -= 16;
        if (v11 == 96)
        {
          while (1)
          {
            v14 = *(&v9->__vftable + v11);
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v14);
            }

            v11 -= 16;
            if (v11 == 64)
            {
              while (1)
              {
                v15 = *(&v9->__vftable + v11);
                if (v15)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v15);
                }

                v11 -= 16;
                if (v11 == 32)
                {
                  std::__shared_weak_count::~__shared_weak_count(v9);
                  operator delete(v16);
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

void std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *a1, uint64_t a2)
{
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(a1);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::TrailJunctionRenderable>>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v14 = &v12[16 * v10];
    v13 = &v12[16 * v7];
    *v13 = *a2;
    v6 = v13 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v15 = *(a1 + 1) - *a1;
    v16 = &v13[-v15];
    v17 = memcpy(&v13[-v15], *a1, v15);
    v18 = *a1;
    *a1 = v16;
    *(a1 + 1) = v6;
    *(a1 + 2) = v14;
    if (v18)
    {
      v19 = mdm::zone_mallocator::instance(v17);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TrailJunctionRenderable>>(v19, v18);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 1) = v6;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::TrailJunctionRenderable>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<md::TrailJunctionRenderable>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 144;
  do
  {
    v4 = *(v3 + v2);
    *(v3 + v2) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v2 -= 8;
  }

  while (v2 != -16);
  for (i = 0; i != -32; i -= 16)
  {
    v6 = *(a1 + 128 + i);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  for (j = 96; j != 64; j -= 16)
  {
    v8 = *(a1 + j);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  do
  {
    v9 = *(a1 + j);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    j -= 16;
  }

  while (j != 32);
}

void std::__shared_ptr_emplace<md::TrailJunctionRenderable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2DD40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *prime, size_t __n)
{
  v2 = prime;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
      v3 = prime;
    }
  }

  v4 = *(v2 + 8);
  if (*&v3 <= *&v4)
  {
    if (*&v3 >= *&v4)
    {
      return;
    }

    prime = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v13 = vcnt_s8(v4), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      prime = std::__next_prime(prime);
    }

    else
    {
      v14 = 1 << -__clz(prime - 1);
      if (prime >= 2)
      {
        prime = v14;
      }
    }

    if (*&v3 <= prime)
    {
      v3 = prime;
    }

    if (*&v3 >= *&v4)
    {
      return;
    }

    if (!*&v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(prime);
  v6 = pthread_rwlock_rdlock((v5 + 32));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  v8 = malloc_type_zone_malloc(*v5, 8 * *&v3, 0x2004093837F09uLL);
  atomic_fetch_add((v5 + 24), 1u);
  geo::read_write_lock::unlock((v5 + 32));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> **,0>(v2, v8);
  v9 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v9++) = 0;
  }

  while (*&v3 != v9);
  v10 = *(v2 + 3);
  if (v10)
  {
    v11 = v10[1];
    v12 = vcnt_s8(v3);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
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

    *(*v2 + 8 * v11) = v2 + 24;
    v15 = *v10;
    if (*v10)
    {
      do
      {
        v16 = v15[1];
        if (v12.u32[0] > 1uLL)
        {
          if (v16 >= *&v3)
          {
            v16 %= *&v3;
          }
        }

        else
        {
          v16 &= *&v3 - 1;
        }

        if (v16 != v11)
        {
          v17 = *v2;
          if (!*(*v2 + 8 * v16))
          {
            *(v17 + 8 * v16) = v10;
            goto LABEL_30;
          }

          *v10 = *v15;
          *v15 = **(v17 + 8 * v16);
          **(v17 + 8 * v16) = v15;
          v15 = v10;
        }

        v16 = v11;
LABEL_30:
        v10 = v15;
        v15 = *v15;
        v11 = v16;
      }

      while (v15);
    }
  }
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, uint64_t a2)
{
  if (a1)
  {
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,0>((a2 + 16));
  }

  if (a2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(v3, a2);
  }
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *>(v3, v2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x40uLL, 0x102004008E10B50uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void sub_1B304C2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  __p = (v47 + 72);
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__p);
  __p = (v47 + 48);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__p);
  if (*(v47 + 47) < 0)
  {
    operator delete(*(v47 + 24));
  }

  if (*(v47 + 23) < 0)
  {
    operator delete(*v47);
  }

  _Unwind_Resume(a1);
}

void sub_1B304D248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_1B304E064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKPolylineOverlay;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id _unsnappedPaths(uint64_t *a1, unsigned int a2, void *a3, void *a4, uint64_t a5)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (a2 >= 0x401)
  {
    v13 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    v13 = v21 - ((v12 + 15) & 0xFFFFFFFF0);
    bzero(v13, v12);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v14 = 0;
  do
  {
    v15 = *a1;
    a1 = (a1 + 12);
    *&v13[8 * v14++] = v15;
  }

  while (a2 != v14);
LABEL_7:
  v16 = [VKTransitPolylinePath alloc];
  v17 = [v11 startPointIndex];
  v18 = -[VKTransitPolylinePath initWithOverlay:section:points:pointCount:reversePoints:transform:routeStartIndex:routeEndIndex:lineID:](v16, "initWithOverlay:section:points:pointCount:reversePoints:transform:routeStartIndex:routeEndIndex:lineID:", v9, v11, v13, a2, 0, 0, __PAIR64__([v11 endPointIndex], v17), a5);
  v19 = [MEMORY[0x1E695DEC8] arrayWithObject:v18];
  if (a2 >= 0x401)
  {
    free(v13);
  }

  return v19;
}

void sub_1B304F624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  a27 = &a30;
  std::vector<std::unique_ptr<PathInfo>>::__destroy_vector::operator()[abi:nn200100](&a27);

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<PathInfo>>::~__split_buffer(uint64_t a1)
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
      MEMORY[0x1B8C62190](v4, 0x1020C4005C7B374);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,false>(unint64_t result, double **a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = a2 - v9;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v143 = *v9;
                v144 = v9[1];
                v145 = *v144;
                v146 = **v9;
                if (*v144 == v146)
                {
                  v147 = v144 < *v9;
                }

                else
                {
                  v147 = *v144 < v146;
                }

                v148 = *v8;
                v149 = **v8;
                v150 = *v8 < v144;
                if (v149 != v145)
                {
                  v150 = v149 < v145;
                }

                if (!v147)
                {
                  if (!v150)
                  {
                    return result;
                  }

                  v9[1] = v148;
                  *v8 = v144;
                  v138 = *v9;
                  v132 = v9[1];
                  v134 = *v132;
                  goto LABEL_270;
                }

                if (v150)
                {
                  *v9 = v148;
                }

                else
                {
                  *v9 = v144;
                  v9[1] = v143;
                  v212 = **v8;
                  v213 = *v8 < v143;
                  if (v212 != v146)
                  {
                    v213 = v212 < v146;
                  }

                  if (!v213)
                  {
                    return result;
                  }

                  v9[1] = *v8;
                }

                *v8 = v143;
                return result;
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,0>(v9, v9 + 1, v9 + 2, a2 - 1);
              case 5:
                result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,0>(v9, v9 + 1, v9 + 2, v9 + 3);
                v129 = v9[3];
                v130 = **v8;
                v131 = *v8 < v129;
                if (v130 != *v129)
                {
                  v131 = v130 < *v129;
                }

                if (!v131)
                {
                  return result;
                }

                v9[3] = *v8;
                *v8 = v129;
                v133 = v9[2];
                v132 = v9[3];
                v134 = *v132;
                v135 = v132 < v133;
                if (*v132 != *v133)
                {
                  v135 = *v132 < *v133;
                }

                if (!v135)
                {
                  return result;
                }

                v9[2] = v132;
                v9[3] = v133;
                v136 = v9[1];
                v137 = v132 < v136;
                if (v134 != *v136)
                {
                  v137 = v134 < *v136;
                }

                if (!v137)
                {
                  return result;
                }

                v9[1] = v132;
                v9[2] = v136;
                v138 = *v9;
LABEL_270:
                v205 = v132 < v138;
                if (v134 != *v138)
                {
                  v205 = v134 < *v138;
                }

                if (v205)
                {
                  *v9 = v132;
                  v9[1] = v138;
                }

                return result;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v139 = *v9;
              v140 = **v8;
              v141 = **v9;
              v142 = *v8 < *v9;
              if (v140 != v141)
              {
                v142 = v140 < v141;
              }

              if (v142)
              {
                *v9 = *v8;
                *v8 = v139;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v151 = v9 + 1;
            v153 = v9 == a2 || v151 == a2;
            if (a4)
            {
              if (!v153)
              {
                v154 = 0;
                v155 = v9;
                do
                {
                  v157 = *v155;
                  v156 = v155[1];
                  v155 = v151;
                  v158 = *v156;
                  v159 = v156 < v157;
                  if (*v156 != *v157)
                  {
                    v159 = *v156 < *v157;
                  }

                  if (v159)
                  {
                    v160 = v154;
                    while (1)
                    {
                      *(v9 + v160 + 8) = v157;
                      if (!v160)
                      {
                        break;
                      }

                      v157 = *(v9 + v160 - 8);
                      v161 = v156 < v157;
                      if (v158 != *v157)
                      {
                        v161 = v158 < *v157;
                      }

                      v160 -= 8;
                      if (!v161)
                      {
                        v162 = (v9 + v160 + 8);
                        goto LABEL_212;
                      }
                    }

                    v162 = v9;
LABEL_212:
                    *v162 = v156;
                  }

                  v151 = v155 + 1;
                  v154 += 8;
                }

                while (v155 + 1 != a2);
              }
            }

            else if (!v153)
            {
              do
              {
                v207 = *v7;
                v206 = v7[1];
                v7 = v151;
                v208 = *v206;
                v209 = v206 < v207;
                if (*v206 != *v207)
                {
                  v209 = *v206 < *v207;
                }

                if (v209)
                {
                  v210 = v151;
                  do
                  {
                    *v210 = v207;
                    v207 = *(v210 - 2);
                    v211 = v206 < v207;
                    if (v208 != *v207)
                    {
                      v211 = v208 < *v207;
                    }

                    --v210;
                  }

                  while (v211);
                  *v210 = v206;
                }

                v151 = v7 + 1;
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v163 = (v10 - 2) >> 1;
              v164 = v163;
              do
              {
                v165 = v164;
                if (v163 >= v164)
                {
                  v166 = (2 * v164) | 1;
                  v167 = &v9[v166];
                  v168 = *v167;
                  if (2 * v165 + 2 >= v10)
                  {
                    v170 = *v168;
                  }

                  else
                  {
                    v169 = v167[1];
                    v170 = *v169;
                    v171 = v168 < v169;
                    result = *v168 < *v169;
                    if (*v168 != *v169)
                    {
                      v171 = *v168 < *v169;
                    }

                    if (v171)
                    {
                      v168 = v167[1];
                    }

                    else
                    {
                      v170 = *v168;
                    }

                    if (v171)
                    {
                      ++v167;
                      v166 = 2 * v165 + 2;
                    }
                  }

                  v172 = &v9[v165];
                  v173 = *v172;
                  v174 = **v172;
                  v175 = v168 < *v172;
                  if (v170 != v174)
                  {
                    v175 = v170 < v174;
                  }

                  if (!v175)
                  {
                    do
                    {
                      v176 = v167;
                      *v172 = v168;
                      if (v163 < v166)
                      {
                        break;
                      }

                      v177 = (2 * v166) | 1;
                      v167 = &v9[v177];
                      v166 = 2 * v166 + 2;
                      v168 = *v167;
                      if (v166 >= v10)
                      {
                        v178 = *v168;
                        v166 = v177;
                      }

                      else
                      {
                        result = v167[1];
                        v178 = *v168;
                        v179 = v168 < result;
                        if (*v168 != *result)
                        {
                          v179 = *v168 < *result;
                        }

                        if (v179)
                        {
                          v178 = *result;
                          v168 = v167[1];
                          ++v167;
                        }

                        else
                        {
                          v166 = v177;
                        }
                      }

                      v180 = v178 < v174;
                      if (v178 == v174)
                      {
                        v180 = v168 < v173;
                      }

                      v172 = v176;
                    }

                    while (!v180);
                    *v176 = v173;
                  }
                }

                v164 = v165 - 1;
              }

              while (v165);
              do
              {
                v181 = 0;
                v182 = *v9;
                v183 = v9;
                do
                {
                  v184 = &v183[v181];
                  v185 = v184 + 1;
                  v186 = v184[1];
                  v187 = (2 * v181) | 1;
                  v181 = 2 * v181 + 2;
                  if (v181 >= v10)
                  {
                    v181 = v187;
                  }

                  else
                  {
                    v190 = v184[2];
                    v188 = v184 + 2;
                    v189 = v190;
                    LODWORD(result) = v186 < v190;
                    v191 = *v186 < *v190;
                    if (*v186 == *v190)
                    {
                      result = result;
                    }

                    else
                    {
                      result = v191;
                    }

                    if (result)
                    {
                      v186 = v189;
                      v185 = v188;
                    }

                    else
                    {
                      v181 = v187;
                    }
                  }

                  *v183 = v186;
                  v183 = v185;
                }

                while (v181 <= (v10 - 2) / 2);
                if (v185 == --a2)
                {
                  *v185 = v182;
                }

                else
                {
                  *v185 = *a2;
                  *a2 = v182;
                  v192 = (v185 - v9 + 8) >> 3;
                  v193 = v192 < 2;
                  v194 = v192 - 2;
                  if (!v193)
                  {
                    v195 = v194 >> 1;
                    v196 = &v9[v195];
                    v197 = *v196;
                    v198 = *v185;
                    v199 = **v196;
                    v200 = **v185;
                    v201 = *v196 < *v185;
                    if (v199 != v200)
                    {
                      v201 = v199 < v200;
                    }

                    if (v201)
                    {
                      do
                      {
                        v202 = v196;
                        *v185 = v197;
                        if (!v195)
                        {
                          break;
                        }

                        v195 = (v195 - 1) >> 1;
                        v196 = &v9[v195];
                        v197 = *v196;
                        v203 = **v196;
                        v204 = v203 < v200;
                        if (v203 == v200)
                        {
                          v204 = *v196 < v198;
                        }

                        v185 = v202;
                      }

                      while (v204);
                      *v202 = v198;
                    }
                  }
                }

                v193 = v10-- <= 2;
              }

              while (!v193);
            }

            return result;
          }

          v11 = &v9[v10 >> 1];
          v12 = v11;
          v13 = *v8;
          v14 = **v8;
          if (v10 >= 0x81)
          {
            v15 = *v11;
            v16 = *v9;
            v17 = **v11;
            v18 = **v9;
            v19 = v17 < v18;
            if (v17 == v18)
            {
              v19 = *v11 < *v9;
            }

            v20 = v13 < v15;
            if (v14 != v17)
            {
              v20 = v14 < v17;
            }

            if (v19)
            {
              if (v20)
              {
                *v9 = v13;
LABEL_41:
                *v8 = v16;
                goto LABEL_42;
              }

              *v9 = v15;
              *v11 = v16;
              v35 = **v8;
              v36 = *v8 < v16;
              if (v35 != v18)
              {
                v36 = v35 < v18;
              }

              if (v36)
              {
                *v11 = *v8;
                goto LABEL_41;
              }
            }

            else if (v20)
            {
              *v11 = v13;
              *v8 = v15;
              v27 = *v9;
              v28 = **v11;
              v29 = **v9;
              v30 = *v11 < *v9;
              if (v28 != v29)
              {
                v30 = v28 < v29;
              }

              if (v30)
              {
                *v9 = *v11;
                *v11 = v27;
              }
            }

LABEL_42:
            v37 = v11 - 1;
            v38 = *(v11 - 1);
            v39 = v9[1];
            v40 = *v38;
            v41 = *v39;
            if (*v38 == *v39)
            {
              v42 = v38 < v39;
            }

            else
            {
              v42 = *v38 < *v39;
            }

            v43 = *(a2 - 2);
            v44 = v43 < v38;
            if (*v43 != v40)
            {
              v44 = *v43 < v40;
            }

            if (v42)
            {
              if (v44)
              {
                v9[1] = v43;
LABEL_64:
                *(a2 - 2) = v39;
                goto LABEL_65;
              }

              v9[1] = v38;
              *v37 = v39;
              v50 = *(a2 - 2);
              v51 = v50 < v39;
              if (*v50 != v41)
              {
                v51 = *v50 < v41;
              }

              if (v51)
              {
                *v37 = v50;
                goto LABEL_64;
              }
            }

            else if (v44)
            {
              *v37 = v43;
              *(a2 - 2) = v38;
              v45 = v9[1];
              v46 = **v37;
              v47 = *v37 < v45;
              if (v46 != *v45)
              {
                v47 = v46 < *v45;
              }

              if (v47)
              {
                v9[1] = *v37;
                *v37 = v45;
              }
            }

LABEL_65:
            v54 = v11[1];
            v52 = v11 + 1;
            v53 = v54;
            v55 = v9[2];
            v56 = *v54;
            v57 = *v55;
            v58 = v54 < v55;
            v59 = *v54 < *v55;
            if (*v54 == *v55)
            {
              v60 = v58;
            }

            else
            {
              v60 = v59;
            }

            v61 = *(a2 - 3);
            v62 = v61 < v53;
            if (*v61 != v56)
            {
              v62 = *v61 < v56;
            }

            if (v60)
            {
              if (v62)
              {
                v9[2] = v61;
LABEL_82:
                *(a2 - 3) = v55;
                goto LABEL_83;
              }

              v9[2] = v53;
              *v52 = v55;
              v66 = *(a2 - 3);
              v67 = v66 < v55;
              if (*v66 != v57)
              {
                v67 = *v66 < v57;
              }

              if (v67)
              {
                *v52 = v66;
                goto LABEL_82;
              }
            }

            else if (v62)
            {
              *v52 = v61;
              *(a2 - 3) = v53;
              v63 = v9[2];
              v64 = **v52;
              v65 = *v52 < v63;
              if (v64 != *v63)
              {
                v65 = v64 < *v63;
              }

              if (v65)
              {
                v9[2] = *v52;
                *v52 = v63;
              }
            }

LABEL_83:
            v68 = *v12;
            v69 = *v37;
            v70 = **v12;
            v71 = **v37;
            if (v70 == v71)
            {
              v72 = *v12 < *v37;
            }

            else
            {
              v72 = v70 < v71;
            }

            v73 = *v52;
            v74 = **v52;
            v75 = *v52 < v68;
            if (v74 != v70)
            {
              v75 = v74 < v70;
            }

            if (v72)
            {
              if (!v75)
              {
                *v37 = v68;
                *v12 = v69;
                v76 = v74 == v71 ? v73 < v69 : v74 < v71;
                v37 = v12;
                v68 = v73;
                if (!v76)
                {
                  v68 = v69;
LABEL_101:
                  v78 = *v9;
                  *v9 = v68;
                  *v12 = v78;
                  goto LABEL_102;
                }
              }
            }

            else
            {
              if (!v75)
              {
                goto LABEL_101;
              }

              *v12 = v73;
              *v52 = v68;
              if (v74 == v71)
              {
                v77 = v73 < v69;
              }

              else
              {
                v77 = v74 < v71;
              }

              v52 = v12;
              v68 = v69;
              if (!v77)
              {
                v68 = v73;
                goto LABEL_101;
              }
            }

            *v37 = v73;
            *v52 = v69;
            goto LABEL_101;
          }

          v21 = *v9;
          v22 = *v12;
          v23 = **v9;
          v24 = **v12;
          v25 = v23 < v24;
          if (v23 == v24)
          {
            v25 = *v9 < *v12;
          }

          v26 = v13 < v21;
          if (v14 != v23)
          {
            v26 = v14 < v23;
          }

          if (v25)
          {
            if (v26)
            {
              *v12 = v13;
LABEL_59:
              *v8 = v22;
              goto LABEL_102;
            }

            *v12 = v21;
            *v9 = v22;
            v48 = **v8;
            v49 = *v8 < v22;
            if (v48 != v24)
            {
              v49 = v48 < v24;
            }

            if (v49)
            {
              *v9 = *v8;
              goto LABEL_59;
            }
          }

          else if (v26)
          {
            *v9 = v13;
            *v8 = v21;
            v31 = *v12;
            v32 = **v9;
            v33 = **v12;
            v34 = *v9 < *v12;
            if (v32 != v33)
            {
              v34 = v32 < v33;
            }

            if (v34)
            {
              *v12 = *v9;
              *v9 = v31;
            }
          }

LABEL_102:
          --a3;
          v79 = *v9;
          v80 = **v9;
          v81 = v9;
          if (a4)
          {
            break;
          }

          v82 = *(v9 - 1);
          v83 = *v82;
          v84 = v82 < v79;
          v85 = v83 < v80;
          if (v83 == v80)
          {
            v85 = v84;
          }

          v81 = v9;
          if (v85)
          {
            break;
          }

          v108 = **v8;
          v109 = v79 < *v8;
          if (v80 != v108)
          {
            v109 = v80 < v108;
          }

          if (v109)
          {
            do
            {
              v110 = v9[1];
              ++v9;
              v111 = v79 < v110;
              v112 = v80 < *v110;
              if (v80 != *v110)
              {
                v111 = v112;
              }
            }

            while (!v111);
          }

          else
          {
            v113 = v9 + 1;
            do
            {
              v9 = v113;
              if (v113 >= a2)
              {
                break;
              }

              ++v113;
              v114 = **v9;
              v115 = v79 < *v9;
              if (v80 != v114)
              {
                v115 = v80 < v114;
              }
            }

            while (!v115);
          }

          v116 = a2;
          if (v9 < a2)
          {
            v116 = a2;
            do
            {
              v117 = *--v116;
              v118 = v79 < v117;
              v119 = v80 < *v117;
              if (v80 != *v117)
              {
                v118 = v119;
              }
            }

            while (v118);
          }

          if (v9 < v116)
          {
            v120 = *v9;
            v121 = *v116;
            do
            {
              *v9 = v121;
              *v116 = v120;
              do
              {
                v122 = v9[1];
                ++v9;
                v120 = v122;
                v123 = v79 < v122;
                v124 = v80 < *v122;
                if (v80 != *v122)
                {
                  v123 = v124;
                }
              }

              while (!v123);
              do
              {
                v125 = *--v116;
                v121 = v125;
                v126 = v79 < v125;
                v127 = v80 < *v125;
                if (v80 != *v125)
                {
                  v126 = v127;
                }
              }

              while (v126);
            }

            while (v9 < v116);
          }

          v128 = v9 - 1;
          if (v9 - 1 != v7)
          {
            *v7 = *v128;
          }

          a4 = 0;
          *v128 = v79;
        }

        do
        {
          v86 = v81;
          v88 = v81[1];
          ++v81;
          v87 = v88;
          v89 = v88 < v79;
          v90 = *v88 < v80;
          if (*v88 != v80)
          {
            v89 = v90;
          }
        }

        while (v89);
        v91 = a2;
        if (v86 == v9)
        {
          v91 = a2;
          do
          {
            if (v81 >= v91)
            {
              break;
            }

            v95 = *--v91;
            v96 = v95 < v79;
            v97 = *v95 < v80;
            if (*v95 != v80)
            {
              v96 = v97;
            }
          }

          while (!v96);
        }

        else
        {
          do
          {
            v92 = *--v91;
            v93 = v92 < v79;
            v94 = *v92 < v80;
            if (*v92 != v80)
            {
              v93 = v94;
            }
          }

          while (!v93);
        }

        if (v81 < v91)
        {
          v98 = *v91;
          v99 = v81;
          v100 = v91;
          do
          {
            *v99 = v98;
            *v100 = v87;
            do
            {
              v86 = v99;
              v101 = v99[1];
              ++v99;
              v87 = v101;
              v102 = v101 < v79;
              v103 = *v101 < v80;
              if (*v101 != v80)
              {
                v102 = v103;
              }
            }

            while (v102);
            do
            {
              v104 = *--v100;
              v98 = v104;
              v105 = v104 < v79;
              v106 = *v104 < v80;
              if (*v104 != v80)
              {
                v105 = v106;
              }
            }

            while (!v105);
          }

          while (v99 < v100);
        }

        if (v86 != v9)
        {
          *v9 = *v86;
        }

        *v86 = v79;
        if (v81 >= v91)
        {
          break;
        }

LABEL_134:
        result = std::__introsort<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,false>(v7, v86, a3, a4 & 1);
        a4 = 0;
        v9 = v86 + 1;
      }

      v107 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **>(v9, v86);
      v9 = v86 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **>(v86 + 1, a2);
      if (result)
      {
        break;
      }

      if (!v107)
      {
        goto LABEL_134;
      }
    }

    a2 = v86;
    if (!v107)
    {
      continue;
    }

    return result;
  }
}

uint64_t findConnectedPath(double ***a1, double *a2, double **a3, double a4)
{
  *a3 = 0;
  v4 = *a2;
  v5 = *a1;
  v6 = a1[1];
  if (v6 != *a1)
  {
    v7 = v6 - *a1;
    v6 = *a1;
    v8 = v7;
    do
    {
      v9 = v8 >> 1;
      v10 = &v6[v8 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v8 += ~(v8 >> 1);
      if (*v12 < v4 - a4)
      {
        v6 = v11;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    do
    {
      v13 = v7 >> 1;
      v14 = &v5[v7 >> 1];
      v16 = *v14;
      v15 = v14 + 1;
      v7 += ~(v7 >> 1);
      if (v4 + a4 < *v16)
      {
        v7 = v13;
      }

      else
      {
        v5 = v15;
      }
    }

    while (v7);
  }

  if (v6 == v5)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    v19 = *v6++;
    v18 = v19;
    v20 = fmax(vabdd_f64(v4, *v19), vabdd_f64(a2[1], v19[1]));
    v21 = v20 < a4;
    a4 = fmin(v20, a4);
    if (v21)
    {
      v17 = v18;
    }
  }

  while (v6 != v5);
  if (!v17)
  {
    return 0;
  }

  *a3 = v17;
  return 1;
}

void std::vector<std::unique_ptr<PathInfo>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
          MEMORY[0x1B8C62190](v6, 0x1020C4005C7B374);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double **std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,0>(double **result, double **a2, double **a3, double **a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = **a2;
  v7 = **result;
  if (v6 == v7)
  {
    v8 = *a2 < *result;
  }

  else
  {
    v8 = v6 < v7;
  }

  v9 = *a3;
  v10 = **a3;
  v11 = *a3 < v4;
  if (v10 != v6)
  {
    v11 = v10 < v6;
  }

  if (v8)
  {
    if (v11)
    {
      *result = v9;
LABEL_18:
      *a3 = v5;
      v4 = v5;
      goto LABEL_20;
    }

    *result = v4;
    *a2 = v5;
    v4 = *a3;
    v16 = **a3;
    v17 = *a3 < v5;
    if (v16 != v7)
    {
      v17 = v16 < v7;
    }

    if (v17)
    {
      *a2 = v4;
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    *a2 = v9;
    *a3 = v4;
    v12 = *result;
    v13 = **a2;
    v14 = **result;
    v15 = *a2 < *result;
    if (v13 != v14)
    {
      v15 = v13 < v14;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
      v4 = *a3;
    }
  }

  else
  {
    v4 = *a3;
  }

LABEL_20:
  v18 = **a4;
  v19 = *a4 < v4;
  if (v18 != *v4)
  {
    v19 = v18 < *v4;
  }

  if (v19)
  {
    *a3 = *a4;
    *a4 = v4;
    v20 = *a2;
    v21 = **a3;
    v22 = **a2;
    v23 = *a3 < *a2;
    if (v21 != v22)
    {
      v23 = v21 < v22;
    }

    if (v23)
    {
      *a2 = *a3;
      *a3 = v20;
      v24 = *result;
      v25 = **a2;
      v26 = **result;
      v27 = *a2 < *result;
      if (v25 != v26)
      {
        v27 = v25 < v26;
      }

      if (v27)
      {
        *result = *a2;
        *a2 = v24;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **>(double **a1, double **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v19 = *a1;
        v20 = a1[1];
        v21 = *v20;
        v22 = **a1;
        if (*v20 == v22)
        {
          v23 = v20 < *a1;
        }

        else
        {
          v23 = *v20 < v22;
        }

        v24 = *(a2 - 1);
        v25 = v24 < v20;
        if (*v24 != v21)
        {
          v25 = *v24 < v21;
        }

        if (v23)
        {
          if (v25)
          {
            *a1 = v24;
          }

          else
          {
            *a1 = v20;
            a1[1] = v19;
            v51 = *(a2 - 1);
            v52 = v51 < v19;
            if (*v51 != v22)
            {
              v52 = *v51 < v22;
            }

            if (!v52)
            {
              return 1;
            }

            a1[1] = v51;
          }

          *(a2 - 1) = v19;
          return 1;
        }

        if (!v25)
        {
          return 1;
        }

        a1[1] = v24;
        *(a2 - 1) = v20;
        v18 = *a1;
        v12 = a1[1];
        v14 = *v12;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = v9 < v10;
        if (*v9 != *v10)
        {
          v11 = *v9 < *v10;
        }

        if (!v11)
        {
          return 1;
        }

        a1[3] = v9;
        *(a2 - 1) = v10;
        v13 = a1[2];
        v12 = a1[3];
        v14 = *v12;
        v15 = v12 < v13;
        if (*v12 != *v13)
        {
          v15 = *v12 < *v13;
        }

        if (!v15)
        {
          return 1;
        }

        a1[2] = v12;
        a1[3] = v13;
        v16 = a1[1];
        v17 = v12 < v16;
        if (v14 != *v16)
        {
          v17 = v14 < *v16;
        }

        if (!v17)
        {
          return 1;
        }

        a1[1] = v12;
        a1[2] = v16;
        v18 = *a1;
        break;
      default:
        goto LABEL_29;
    }

    v38 = v12 < v18;
    if (v14 != *v18)
    {
      v38 = v14 < *v18;
    }

    if (v38)
    {
      *a1 = v12;
      a1[1] = v18;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = **a1;
    v8 = v5 < *a1;
    if (*v5 != v7)
    {
      v8 = *v5 < v7;
    }

    if (v8)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_29:
  v27 = a1 + 2;
  v26 = a1[2];
  v28 = a1[1];
  v29 = *a1;
  v30 = *v28;
  v31 = **a1;
  v32 = v28 < *a1;
  if (*v28 != v31)
  {
    v32 = *v28 < v31;
  }

  v33 = *v26;
  v34 = *v26 < v30;
  if (*v26 == v30)
  {
    v34 = v26 < v28;
  }

  if (v32)
  {
    v35 = a1;
    v36 = a1 + 2;
    if (!v34)
    {
      *a1 = v28;
      a1[1] = v29;
      v37 = v26 < v29;
      if (v33 != v31)
      {
        v37 = v33 < v31;
      }

      v35 = a1 + 1;
      v36 = a1 + 2;
      if (!v37)
      {
        goto LABEL_51;
      }
    }

LABEL_50:
    *v35 = v26;
    *v36 = v29;
    goto LABEL_51;
  }

  if (v34)
  {
    a1[1] = v26;
    *v27 = v28;
    v39 = v26 < v29;
    if (v33 != v31)
    {
      v39 = v33 < v31;
    }

    v35 = a1;
    v36 = a1 + 1;
    if (v39)
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  for (i = 24; ; i += 8)
  {
    v43 = *v40;
    v44 = *v27;
    v45 = **v40;
    v46 = *v40 < v44;
    if (v45 != *v44)
    {
      v46 = v45 < *v44;
    }

    if (v46)
    {
      v47 = i;
      while (1)
      {
        *(a1 + v47) = v44;
        v48 = v47 - 8;
        if (v47 == 8)
        {
          break;
        }

        v44 = *(a1 + v47 - 16);
        v49 = v45 < *v44;
        if (v45 == *v44)
        {
          v49 = v43 < v44;
        }

        v47 -= 8;
        if (!v49)
        {
          v50 = (a1 + v48);
          goto LABEL_63;
        }
      }

      v50 = a1;
LABEL_63:
      *v50 = v43;
      if (++v41 == 8)
      {
        break;
      }
    }

    v27 = v40++;
    if (v40 == a2)
    {
      return 1;
    }
  }

  return v40 + 1 == a2;
}

void sub_1B305135C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a47);

  _Unwind_Resume(a1);
}

uint64_t std::__tree<int>::__emplace_unique_key_args<int,int>(uint64_t result, int a2)
{
  v2 = *(result + 8);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t md::DaVinciAssetResourceFetcher::createResourceKey(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
  UInt64 = gdc::ResourceKey::getUInt64(v4, 0);
  gdc::ResourceKey::getUInt64(v4, 1u);
  [v3 style];
  LOBYTE(v7) = GEOTileKeyMakeEmpty();
  *(&v7 + 1) = UInt64;

  return v7;
}

void md::DaVinciAssetResourceFetcher::~DaVinciAssetResourceFetcher(md::DaVinciAssetResourceFetcher *this)
{
  md::IdentifiedGEOResourceFetcher::~IdentifiedGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciAssetOcclusionMeshResourceFetcher::~DaVinciAssetOcclusionMeshResourceFetcher(md::DaVinciAssetOcclusionMeshResourceFetcher *this)
{
  md::IdentifiedGEOResourceFetcher::~IdentifiedGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DaVinciAssetResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28F20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DaVinciAssetOcclusionMeshResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28F58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelLinePosition::getLabelPoint(md::LabelLinePosition *this, md::LabelPoint *a2)
{
  result = md::LabelLinePosition::pointExists(this);
  if (result)
  {
    v5 = (*(***(this + 3) + 24))(**(this + 3), *(this + 17));
    v6 = v5;
    if (*(this + 9) == 0.0)
    {
      for (i = 0; i != 24; i += 8)
      {
        *(a2 + i) = *(v5 + i);
      }

      *(a2 + 3) = *(v5 + 24);
      *(a2 + 4) = *(v5 + 32);
      v8 = *(v5 + 40);
      *(a2 + 43) = *(v5 + 43);
      *(a2 + 10) = v8;
    }

    else
    {
      result = md::LabelLinePosition::pointAtOffset(this, 1);
      if (!result)
      {
        return result;
      }

      md::LabelPoint::lerped(&v9, v6, *(this + 9), result);
      *a2 = v9;
      *(a2 + 2) = v10;
      *(a2 + 24) = v11;
      *(a2 + 10) = v12[0];
      *(a2 + 43) = *(v12 + 3);
    }

    return 1;
  }

  return result;
}

uint64_t md::LabelLinePosition::offsetDistance(md::LabelLinePosition *this, int64x2_t *a2, double a3)
{
  v6 = *(*this + 159);
  if (a2)
  {
    *a2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    a2[1] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  }

  memset(v53, 0, sizeof(v53));
  *v54 = 2139095039;
  *&v54[4] = 0;
  v54[6] = 0;
  result = md::LabelLinePosition::getLabelPoint(this, v53);
  if (result)
  {
    if (a2)
    {
      v8 = md::LabelPoint::mercatorPoint(v53);
      v9 = 0;
      v10 = 1;
      do
      {
        *&a2->i64[v9] = fmin(*(v8 + 8 * v9), *&a2->i64[v9]);
        v11 = v10;
        *&a2[1].i64[v9] = fmax(*&a2[1].i64[v9], *(v8 + 8 * v9));
        v9 = 1;
        v10 = 0;
      }

      while ((v11 & 1) != 0);
    }

    if (a3 >= 0.0)
    {
      v12 = 1;
    }

    else
    {
      if (*(this + 9) != 0.0)
      {
        md::LabelLinePosition::moveToNextPoint(this);
      }

      v12 = -1;
    }

    v13 = fabs(a3);
    v14 = a2 + 1;
    v15 = 1;
    while (1)
    {
      result = md::LabelLinePosition::pointAtOffset(this, v12);
      if (!result)
      {
        break;
      }

      v16 = result;
      v17 = *&md::LabelPoint::vectorToPoint(v53, result, v6);
      v18 = 0;
      *&v47 = v17;
      *(&v47 + 1) = v19;
      *&v48 = v20;
      v21 = 0.0;
      do
      {
        v21 = v21 + *(&v47 + v18) * *(&v47 + v18);
        v18 += 8;
      }

      while (v18 != 24);
      v22 = sqrt(v21);
      if (v22 + 1.0e-10 >= v13)
      {
        if (v15)
        {
          v29 = (*(***(this + 3) + 24))(**(this + 3), *(this + 17), v22 + 1.0e-10);
          v30 = *&md::LabelPoint::vectorToPoint(v53, v29, v6);
          v31 = 0;
          *&v47 = v30;
          *(&v47 + 1) = v32;
          *&v48 = v33;
          v34 = 0.0;
          do
          {
            v34 = v34 + *(&v47 + v31) * *(&v47 + v31);
            v31 += 8;
          }

          while (v31 != 24);
          v35 = *&md::LabelPoint::vectorToPoint(v29, v16, v6);
          v36 = 0;
          *&v47 = v35;
          *(&v47 + 1) = v37;
          *&v48 = v38;
          v39 = 0.0;
          do
          {
            v39 = v39 + *(&v47 + v36) * *(&v47 + v36);
            v36 += 8;
          }

          while (v36 != 24);
          v13 = sqrt(v34) + v13;
          v22 = sqrt(v39);
        }

        if (v22 == 0.0)
        {
          return 0;
        }

        if (v22 <= v13 + -1.0e-10)
        {
          if (a3 >= 0.0)
          {
            md::LabelLinePosition::moveToNextPoint(this);
          }

          else
          {
            md::LabelLinePosition::moveToPreviousPoint(this);
          }

          v41 = 0.0;
        }

        else
        {
          v40 = a3 < 0.0;
          v41 = v13 / v22;
          if (v40 && v41 != 0.0)
          {
            md::LabelLinePosition::moveToPreviousPoint(this);
            v41 = 1.0 - v41;
          }
        }

        v42 = v41;
        *(this + 9) = v42;
        if (a2)
        {
          v49 = 0;
          v47 = 0u;
          v48 = 0u;
          v50 = 2139095039;
          v51 = 0;
          v52 = 0;
          if (md::LabelLinePosition::getLabelPoint(this, &v47))
          {
            v43 = md::LabelPoint::mercatorPoint(&v47);
            v44 = 0;
            v45 = 1;
            do
            {
              *&a2->i64[v44] = fmin(*(v43 + 8 * v44), *&a2->i64[v44]);
              v46 = v45;
              *&v14->i64[v44] = fmax(*&v14->i64[v44], *(v43 + 8 * v44));
              v44 = 1;
              v45 = 0;
            }

            while ((v46 & 1) != 0);
          }
        }

        return 1;
      }

      if (a2)
      {
        v23 = md::LabelPoint::mercatorPoint(v16);
        v24 = 0;
        v25 = 1;
        do
        {
          *&a2->i64[v24] = fmin(*(v23 + 8 * v24), *&a2->i64[v24]);
          v26 = v25;
          *&v14->i64[v24] = fmax(*&v14->i64[v24], *(v23 + 8 * v24));
          v24 = 1;
          v25 = 0;
        }

        while ((v26 & 1) != 0);
      }

      if (a3 >= 0.0)
      {
        md::LabelLinePosition::moveToNextPoint(this);
      }

      else
      {
        md::LabelLinePosition::moveToPreviousPoint(this);
      }

      for (i = 0; i != 24; i += 8)
      {
        *&v53[i] = *(v16 + i);
      }

      v15 = 0;
      *&v53[24] = *(v16 + 24);
      v28 = *(v16 + 43);
      *v54 = *(v16 + 40);
      *&v54[3] = v28;
      v13 = v13 - v22;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Debug::ExtendedMesh::~ExtendedMesh(ggl::Debug::ExtendedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Debug::ExtendedMesh::~ExtendedMesh(ggl::Debug::ExtendedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MeshTyped<ggl::Debug::ExtendedVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::Debug::ExtendedVbo>::attributesReflection(void)::r = &ggl::Debug::extendedVboReflection;
    }

    ggl::MeshTyped<ggl::Debug::ExtendedVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::Debug::ExtendedVbo>::attributesReflection(void)::r;
    qword_1EB845BA0 = 1;
  }
}

void non-virtual thunk toggl::MeshTyped<ggl::Debug::ExtendedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Debug::ExtendedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Debug::LineVBO>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Debug::LineVBO>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Debug::LineVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Debug::LineVBO>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Debug::LineVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Debug::LineVBO>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Debug::LineMesh::~LineMesh(ggl::Debug::LineMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Debug::LineMesh::~LineMesh(ggl::Debug::LineMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Debug::LineVBO>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Debug::LineVBO>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::PolygonSolidFill::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::PolygonSolidFill::MeshPipelineSetup::MeshPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
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

  *a1 = &unk_1F2A291A0;
  v11 = a1[17];
  v12 = *a4;
  v13 = a4[1];
  *v11 = *a4;
  v11[1] = 0;
  v14 = a1[29];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v14[1];
  *v14 = v12;
  v14[1] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = a1[17];
  v17 = *a5;
  v18 = a5[1];
  *(v16 + 16) = *a5;
  *(v16 + 24) = 0;
  v19 = a1[29];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(v19 + 24);
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = a1[17];
  v22 = *a6;
  v23 = a6[1];
  *(v21 + 32) = *a6;
  *(v21 + 40) = 0;
  v24 = a1[29];
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(v24 + 40);
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  return a1;
}

void ggl::PolygonSolidFill::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::PolygonSolidFill::CompressedMeshPipelineSetup::CompressedMeshPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3)
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

  *a1 = &unk_1F2A291F8;
  return a1;
}

void ggl::PolygonSolidFill::S2MeshPipelineSetup::~S2MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::PolygonSolidFill::S2MeshPipelineSetup::S2MeshPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
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

  *a1 = &unk_1F2A29250;
  v11 = a1[17];
  v12 = *a4;
  v13 = a4[1];
  *v11 = *a4;
  v11[1] = 0;
  v14 = a1[29];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v14[1];
  *v14 = v12;
  v14[1] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = a1[17];
  v17 = *a5;
  v18 = a5[1];
  *(v16 + 16) = *a5;
  *(v16 + 24) = 0;
  v19 = a1[29];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(v19 + 24);
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = a1[17];
  v22 = *a6;
  v23 = a6[1];
  *(v21 + 32) = *a6;
  *(v21 + 40) = 0;
  v24 = a1[29];
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(v24 + 40);
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  return a1;
}

void md::Logic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>,md::ResolvedTileSelectionContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext>,gdc::TypeList<md::FlyoverTileDataResolverContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::getResolverFromContext<md::FlyoverTileDataResolverContext>(uint64_t result, uint64_t a2, unsigned int a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(result + 128);
  v5 = *(v4 + 176);
  v6 = *(v4 + 184);
  if (v5 == v6)
  {
    return result;
  }

  v9 = result;
  v10 = a3;
  do
  {
    md::World::layerDataTypesForSelectionSetType(v20, *(*(v9 + 128) + 152), *v5);
    if (!std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(v20[0], v20[1], a3))
    {
      goto LABEL_31;
    }

    v21[0] = &unk_1F2A0DDA0;
    v21[1] = a2;
    v22 = v21;
    v11 = a4[1];
    if (!*&v11)
    {
      goto LABEL_20;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v10;
      if (*&v11 <= v10)
      {
        v13 = a3 % a4[1];
      }
    }

    else
    {
      v13 = (v11.i32[0] - 1) & v10;
    }

    v14 = *(*a4 + 8 * v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        break;
      }

      if (v12.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_20;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    if (*(v15 + 8) != a3)
    {
      goto LABEL_19;
    }

    v17 = v15[6];
    v15[6] = 0;
    if (v17 == (v15 + 3))
    {
      (*(*v17 + 32))(v17);
    }

    else if (v17)
    {
      (*(*v17 + 40))(v17);
    }

    v18 = v22;
    if (v22)
    {
      if (v22 == v21)
      {
        v15[6] = (v15 + 3);
        (*(*v18 + 24))(v18, v15 + 3);
      }

      else
      {
        v15[6] = v22;
        v22 = 0;
      }
    }

    else
    {
      v15[6] = 0;
    }

    std::__function::__value_func<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::~__value_func[abi:nn200100](v21);
LABEL_31:
    result = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v20);
    ++v5;
  }

  while (v5 != v6);
  return result;
}

void sub_1B3052CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,void *>>>>::~unique_ptr[abi:nn200100](va1);
  std::__function::__value_func<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::~__value_func[abi:nn200100](va2);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::~__value_func[abi:nn200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

_BYTE *md::Logic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>,md::ResolvedTileSelectionContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext>,gdc::TypeList<md::FlyoverTileDataResolverContext>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x8677AD8BA9352C1DLL && (v5 = *(a3 + 32)) != 0)
  {
    v8 = *(a2 + 8);
    v9[0] = gdc::Context::context<md::TileSelectionContext>(v8);
    v9[1] = gdc::Context::get<md::FlyoverTileDataResolverContext>(v8);
    return (*(*a1 + 160))(a1, a2, v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::ResolvedTileSelectionContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ResolvedTileSelectionContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::ResolvedTileSelectionContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ResolvedTileSelectionContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A293F8;
  v2 = a1[4];
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::hash<md::MapDataType>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::equal_to<md::MapDataType>,std::hash<md::MapDataType>,true>,std::allocator<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::createDebugNode(uint64_t a1@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "TileDependencyLogic");
  gdc::DebugTreeNode::DebugTreeNode(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::~TileDependencyLogicImpl(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::~TileDependencyLogicImpl(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

uint64_t md::StyleLogic::debugConsoleString@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v10);
  if (*(a1 + 120) != *(a1 + 128))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, "Client Style Attributes:[\n", 26);
    gss::attributesToString(__p, *(a1 + 120), *(a1 + 128), 1, "\t", 0);
    if ((v9 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, v4, v5);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, "]\n", 2);
  }

  std::stringbuf::str[abi:nn200100](a2, &v12);
  v10[0] = *MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v11 = v6;
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v15);
}

void sub_1B3053E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = *MEMORY[0x1E69E54D8];
  v35 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a17 = v35;
  a18 = MEMORY[0x1E69E5548] + 16;
  if (a31 < 0)
  {
    operator delete(a26);
  }

  a18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a19);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a34);
  _Unwind_Resume(a1);
}

uint64_t md::StyleLogic::setResolvedIncreaseContrastEnabled(uint64_t this, int a2, float a3)
{
  if (*(this + 1115) != a2)
  {
    v5 = this;
    v6 = *(this + 1184);
    if (v6)
    {
      [v6 stop];
    }

    *(v5 + 1115) = a2;
    gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(*(v5 + 208), 0x10087u, a2);
    gss::ClientStyleState<gss::ScenePropertyID>::setTargetClientStyleAttribute(*(v5 + 224), 0x10087u, *(v5 + 1115));
    md::StyleLogic::queueStyleTransition(v5, a3);
    this = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*(v5 + 192) + 47336), *(*(*(v5 + 192) + 47336) + 8));
    *this = a2;
  }

  return this;
}

void gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributesStr(_BYTE *a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a2 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  gss::attributesToString(a1, (a2 + 216), 1, 0);

  geo::read_write_lock::unlock((a2 + 16));
}

unsigned int *_ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEbT1_SO_SO_T0_(unsigned int *result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *a3;
  if (*a2 >= *result)
  {
    if (v5 < v3)
    {
      *a2 = v5;
      *a3 = v3;
      v7 = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v7;
      v8 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v8;
        v9 = *(result + 2);
        *(result + 2) = *(a2 + 2);
        *(a2 + 2) = v9;
      }
    }
  }

  else if (v5 >= v3)
  {
    *result = v3;
    *a2 = v4;
    v10 = *(result + 2);
    *(result + 2) = *(a2 + 2);
    *(a2 + 2) = v10;
    if (*a3 < v4)
    {
      *a2 = *a3;
      *a3 = v4;
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v10;
    }
  }

  else
  {
    *result = v5;
    *a3 = v4;
    v6 = *(result + 2);
    *(result + 2) = *(a3 + 2);
    *(a3 + 2) = v6;
  }

  return result;
}

unsigned int *_ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEvT1_SO_SO_SO_T0_(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 >= v4)
    {
      v4 = *a3;
    }

    else
    {
      *a2 = v6;
      *a3 = v4;
      v8 = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v8;
      v9 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v9;
        v10 = *(result + 2);
        *(result + 2) = *(a2 + 2);
        *(a2 + 2) = v10;
        v4 = *a3;
      }
    }
  }

  else
  {
    if (v6 < v4)
    {
      *result = v6;
      *a3 = v5;
      v7 = *(result + 2);
      *(result + 2) = *(a3 + 2);
      *(a3 + 2) = v7;
LABEL_9:
      v4 = v5;
      goto LABEL_11;
    }

    *result = v4;
    *a2 = v5;
    v11 = *(result + 2);
    *(result + 2) = *(a2 + 2);
    *(a2 + 2) = v11;
    v4 = *a3;
    if (*a3 < v5)
    {
      *a2 = v4;
      *a3 = v5;
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v11;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 < v4)
  {
    *a3 = *a4;
    *a4 = v4;
    v12 = *(a3 + 2);
    *(a3 + 2) = *(a4 + 2);
    *(a4 + 2) = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v14;
      v15 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v15;
        v16 = *(result + 2);
        *(result + 2) = *(a2 + 2);
        *(a2 + 2) = v16;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_SO_T0_(uint64_t result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = (result + 8);
    if ((result + 8) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4[2];
        v6 = *v4;
        v4 = v2;
        if (v5 < v6)
        {
          v7 = *v2;
          v8 = v3;
          while (1)
          {
            v9 = result + v8;
            *(v9 + 8) = v6;
            *(v9 + 12) = *(result + v8 + 4);
            if (!v8)
            {
              break;
            }

            v6 = *(v9 - 8);
            v8 -= 8;
            if (v6 <= v7)
            {
              v10 = result + v8 + 8;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v7;
          *(v10 + 4) = WORD2(v7);
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

_DWORD *_ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_SO_T0_(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 3;
      do
      {
        v4 = result[2];
        v5 = *result;
        result = v2;
        if (v4 < v5)
        {
          v6 = *v2;
          v7 = v3;
          do
          {
            v8 = v7;
            *(v7 - 1) = v5;
            v9 = *(v7 - 4);
            v7 -= 4;
            *v8 = v9;
            v5 = *(v8 - 5);
          }

          while (v5 > v6);
          *(v7 - 1) = v6;
          *v7 = WORD2(v6);
        }

        v2 = result + 2;
        v3 += 4;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

uint64_t _ZNSt3__114__partial_sortB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEESN_EET1_SO_SO_T2_RT0_(uint64_t result, int *a2, int *a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 8 * v7);
      do
      {
        result = _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_(v5, v6, v9--);
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = *v5;
      v11 = v4;
      do
      {
        v12 = *v11;
        if (*v11 < v10)
        {
          *v11 = v10;
          *v5 = v12;
          v13 = *(v11 + 2);
          *(v11 + 2) = *(v5 + 4);
          *(v5 + 4) = v13;
          result = _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_(v5, v6, v5);
          v10 = *v5;
        }

        v11 += 2;
      }

      while (v11 != a3);
    }

    if (v6 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *v5;
        v16 = v5;
        do
        {
          v17 = v16 + 8 * v14;
          v18 = v17 + 8;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v6)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = *(v17 + 16);
            v21 = v17 + 16;
            v20 = v22;
            v23 = *(v21 - 8);
            v24 = v23 >= v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 8);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          *(v16 + 4) = *(v18 + 4);
          v16 = v18;
        }

        while (v14 <= ((v6 - 2) >> 1));
        if (v18 == v4 - 2)
        {
          *v18 = v15;
          *(v18 + 4) = WORD2(v15);
        }

        else
        {
          *v18 = *(v4 - 2);
          *(v18 + 4) = *(v4 - 2);
          *(v4 - 2) = v15;
          *(v4 - 2) = WORD2(v15);
          v25 = (v18 - v5 + 8) >> 3;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = v5 + 8 * v28;
            v30 = *v29;
            if (*v29 < *v18)
            {
              v31 = *v18;
              do
              {
                v32 = v18;
                v18 = v29;
                *v32 = v30;
                *(v32 + 4) = *(v29 + 4);
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = v5 + 8 * v28;
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
              *(v18 + 4) = WORD2(v31);
            }
          }
        }

        v4 -= 2;
        v26 = v6-- <= 2;
      }

      while (!v26);
    }
  }

  return result;
}

unint64_t _ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPNS_4pairIN3gss14StyleAttributeEtEERZN2md10StyleLogic15runBeforeLayoutERKNS7_13LayoutContextERKNS7_17LogicDependenciesIJN3gdc8TypeListIJEEESF_EE20ResolvedDependenciesERNS7_17StyleLogicContextEE3__0EET0_SO_SO_T1_(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (*(a2 - 8) <= *a1)
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 8;
    }

    while (*v3 <= v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 8);
      v3 += 8;
    }

    while (v4 <= v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 8);
      a2 -= 8;
    }

    while (v6 > v2);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      v9 = *(v3 + 4);
      *(v3 + 4) = *(a2 + 4);
      *(a2 + 4) = v9;
      do
      {
        v10 = *(v3 + 8);
        v3 += 8;
        v7 = v10;
      }

      while (v10 <= v2);
      do
      {
        v11 = *(a2 - 8);
        a2 -= 8;
        v8 = v11;
      }

      while (v11 > v2);
    }

    while (v3 < a2);
  }

  if ((v3 - 8) != a1)
  {
    *a1 = *(v3 - 8);
    *(a1 + 2) = *(v3 - 4);
  }

  *(v3 - 8) = v2;
  *(v3 - 4) = WORD2(v2);
  return v3;
}

uint64_t _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) + 1;
      v7 = (result + 8 * v6);
      v8 = v5 + 2;
      if (v8 >= a2)
      {
        v9 = *v7;
      }

      else
      {
        v9 = *v7;
        v10 = *(v7 + 2);
        if (*v7 <= v10)
        {
          v9 = *(v7 + 2);
        }

        if (*v7 < v10)
        {
          ++v7;
          v6 = v8;
        }
      }

      if (v9 >= *a3)
      {
        v11 = *a3;
        do
        {
          v12 = a3;
          a3 = v7;
          *v12 = v9;
          *(v12 + 2) = *(v7 + 2);
          if (v4 < v6)
          {
            break;
          }

          v13 = (2 * v6) | 1;
          v7 = (result + 8 * v13);
          v6 = 2 * v6 + 2;
          if (v6 >= a2)
          {
            v9 = *v7;
            v6 = v13;
          }

          else
          {
            v9 = *v7;
            v14 = *(v7 + 2);
            if (*v7 <= v14)
            {
              v9 = *(v7 + 2);
            }

            if (*v7 >= v14)
            {
              v6 = v13;
            }

            else
            {
              ++v7;
            }
          }
        }

        while (v9 >= v11);
        *a3 = v11;
        *(a3 + 2) = WORD2(v11);
      }
    }
  }

  return result;
}

uint64_t std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, char *__src)
{
  v6 = *(a2 + 8);
  memcpy(*(a2 + 16), __src, *(a1 + 8) - __src);
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - __src;
  *(a1 + 8) = __src;
  v9 = (__src - v7);
  v10 = (v8 - (__src - v7));
  memcpy(v10, v7, v9);
  *(a2 + 8) = v10;
  v11 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v13;
  *a2 = *(a2 + 8);
  return v6;
}

void ___ZN2md10StyleLogic26initiateTransitionAnimatedEf_block_invoke(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);
  gss::ClientStyleState<gss::ScenePropertyID>::setBlendingFactor(*(v3 + 208), a2);
  gss::ClientStyleState<gss::ScenePropertyID>::setBlendingFactor(*(v3 + 224), a2);
  v5 = 2;
  geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((v3 + 1128), &v5);
  v4 = **(v3 + 1240);
  if (v4)
  {
    v6 = 12;
    md::MapEngine::setNeedsTick(v4, &v6);
  }
}

void ___ZN2md10StyleLogic26initiateTransitionAnimatedEf_block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = **(v3 + 1240);
  if (v4)
  {
    v7 = 12;
    md::MapEngine::setNeedsTick(v4, &v7);
  }

  if (a2)
  {
    md::StyleLogic::_finishStyleBlend(v3);
  }

  v6 = 3;
  geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((v3 + 1128), &v6);
  v5 = *(v3 + 1184);
  if (v5)
  {
    *(v3 + 1184) = 0;
  }

  *(v3 + 337) = 0;
}

void gss::ClientStyleState<gss::PropertyID>::removeTargetClientStyleAttribute(uint64_t a1, unsigned int a2)
{
  v9 = (a1 + 16);
  v4 = pthread_rwlock_wrlock((a1 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "write lock", v5);
  }

  if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase(a1 + 240, a2))
  {
    v6 = COERCE_FLOAT(atomic_load((a1 + 272)));
    v7 = v6 <= 0.0;
    v8 = 1;
    if (v7)
    {
      v8 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
    }

    atomic_store(v8, (a1 + 270));
    atomic_fetch_add((a1 + 264), 1u);
  }

  geo::write_lock_guard::~write_lock_guard(&v9);
}

void std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t md::StyleLogic::hybridContext(md::StyleLogic *this)
{
  if (!*(this + 74))
  {
    std::string::basic_string[abi:nn200100]<0>(__p, "hybrid");
    v2 = *(this + 30);
    v3 = *(this + 161);
    v4 = *(this + 17);
    gss::StyleManagerExtension::initWithName<gss::PropertyID>(&v12, __p, v3, v4, v2);
    v5 = *(this + 75);
    *(this + 37) = v12;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    md::StyleLogic::setupDecodingCallbacks(*(this + 151), *(this + 152), this + 74);
  }

  if (!*(this + 76))
  {
    v7 = *(this + 30);
    v6 = *(this + 31);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 76) = v7;
    v8 = *(this + 77);
    *(this + 77) = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  return this + 592;
}

void sub_1B3054B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A29CC0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29CC0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29CC0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29C78;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29C78;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A29B28;
  result = std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  v5 = *(a1 + 48);
  a2[5] = *(a1 + 40);
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29B28;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29B28;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A29BB8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29BB8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29BB8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29B70;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29B70;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<gss::StylesheetManager<gss::ScenePropertyID> *,std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>>::__shared_ptr_default_delete<gss::StylesheetManager<gss::ScenePropertyID>,gss::StylesheetManager<gss::ScenePropertyID>>,std::allocator<gss::StylesheetManager<gss::ScenePropertyID>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x1000040CE7E837CuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        v4 = 24 * v3;
        v5 = v2 + 8;
        do
        {
          geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(v5);
          v5 += 24;
          v4 -= 24;
        }

        while (v4);
        v2 = *a1;
      }

      v6 = gss::zone_mallocator::instance(a1);
      v7 = pthread_rwlock_rdlock((v6 + 32));
      if (v7)
      {
        geo::read_write_lock::logFailure(v7, "read lock", v8);
      }

      if (v2)
      {
        atomic_fetch_add((v6 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v6, v2);
      geo::read_write_lock::unlock((v6 + 32));
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::ConditionalStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::ScenePropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void *gss::CartoStyle<gss::ScenePropertyID>::~CartoStyle(void *a1)
{
  *a1 = &unk_1F2A29900;
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    MEMORY[0x1B8C62170](v2, 0x1000C8077774924);
  }

  v3 = a1[12];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[10];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage((a1 + 7));
  geo::intern_vector<gss::ZoomStyle<gss::ScenePropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::deallocateStorage((a1 + 5));
  geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage((a1 + 3));
  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void geo::intern_vector<gss::ZoomStyle<gss::ScenePropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(a1 + 8))
      {
        v3 = 24 * *(a1 + 8);
        v4 = v2 + 2;
        do
        {
          a1 = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }

          v4 += 3;
          v3 -= 24;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(a1);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

uint64_t gss::ConditionalStyle<gss::ScenePropertyID>::to_string@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v19);
  if (*(*(a1 + 144) + 104))
  {
    v3 = *(*(a1 + 144) + 104);
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v3, v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, "-condStyle-", 11);
  v5 = MEMORY[0x1B8C61C90](&v20, *(a1 + 156));
  v25[0] = 45;
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, v25, 1);
  v7 = MEMORY[0x1B8C61C90](v6, *(a1 + 152));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "-{", 2);
  if (*(a1 + 136))
  {
    v8 = *(a1 + 128);
    v9 = &v8[6 * *(a1 + 136)];
    do
    {
      v10 = *v8;
      v25[0] = 64;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
      v11 = MEMORY[0x1B8C61C90](&v20, v10);
      v25[0] = 61;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v25, 1);
      if (*(v8 + 8))
      {
        v12 = 0;
        v13 = *(v8 + 1);
        v14 = 4 * *(v8 + 8);
        do
        {
          v15 = *v13;
          if (v12)
          {
            v25[0] = 44;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
          }

          MEMORY[0x1B8C61C90](&v20, v15);
          ++v13;
          v12 = 1;
          v14 -= 4;
        }

        while (v14);
      }

      v25[0] = 59;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
      v8 += 6;
    }

    while (v8 != v9);
  }

  v25[0] = 125;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
  std::stringbuf::str[abi:nn200100](a2, &v21);
  v19[0] = *MEMORY[0x1E69E54D8];
  v16 = *(MEMORY[0x1E69E54D8] + 72);
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v20 = v16;
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v24);
}

void sub_1B3055AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a10 = *MEMORY[0x1E69E54D8];
  v30 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a12 = v30;
  a13 = MEMORY[0x1E69E5548] + 16;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  a13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a14);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a29);
  _Unwind_Resume(a1);
}

void gss::ConditionalStyle<gss::ScenePropertyID>::~ConditionalStyle(void *a1)
{
  *a1 = &unk_1F2A29960;
  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage((a1 + 16));
  gss::CartoStyle<gss::ScenePropertyID>::~CartoStyle(a1);

  JUMPOUT(0x1B8C62190);
}

void *gss::ConditionalStyle<gss::ScenePropertyID>::~ConditionalStyle(void *a1)
{
  *a1 = &unk_1F2A29960;
  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage((a1 + 16));

  return gss::CartoStyle<gss::ScenePropertyID>::~CartoStyle(a1);
}

void gss::CartoStyle<gss::ScenePropertyID>::to_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 104))
  {
    v3 = *(a1 + 104);
  }

  else
  {
    v3 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(&v7, v3);
  v4 = std::string::insert(&v7, 0, "[", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v8.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v8.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v8, "]", 1uLL);
  *a2 = *v6;
  v6->__r_.__value_.__r.__words[0] = 0;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1B3055DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gss::CartoStyle<gss::ScenePropertyID>::~CartoStyle(void *a1)
{
  gss::CartoStyle<gss::ScenePropertyID>::~CartoStyle(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gss::ConditionalStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::ConditionalStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::ScenePropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::ConditionalStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A298C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(a1 + 8))
      {
        v3 = 16 * *(a1 + 8);
        v4 = v2 + 1;
        do
        {
          a1 = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }

          v4 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(a1);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylePropertySet<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylePropertySet<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>::__on_zero_shared(uint64_t a1)
{
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 128));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 104));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 80));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 56));

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 32));
}

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(a1 + 8))
      {
        v3 = 16 * *(a1 + 8);
        v4 = v2 + 1;
        do
        {
          a1 = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }

          v4 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(a1);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}