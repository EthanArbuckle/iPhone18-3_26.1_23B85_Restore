uint64_t md::Logic<md::ARRenderEntityGenerationLogic,md::ARRenderEntityGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x51AAE9259E4A5431)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARRenderEntityGenerationLogic,md::ARRenderEntityGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x51AAE9259E4A5431)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARRenderEntityGenerationLogic,md::ARRenderEntityGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x51AAE9259E4A5431)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARRenderEntityGenerationLogic,md::ARRenderEntityGenerationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x51AAE9259E4A5431)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::AROcclusionGenerationContext,md::ARProcessMeshComponentsContext,md::LabelsExternalMeshContext,md::ARApplyWorldTransformUpdatesContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARRenderEntityGenerationContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARRenderEntityGenerationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A40B88;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARRenderEntityGenerationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A40B88;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARRenderEntityGenerationLogic::~ARRenderEntityGenerationLogic(md::ARRenderEntityGenerationLogic *this)
{
  md::ARRenderEntityGenerationLogic::~ARRenderEntityGenerationLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A40580;
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    *(this + 24) = v4;
    operator delete(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    *(this + 21) = v5;
    operator delete(v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t ecs2::ViewIterator<void,std::tuple<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*>,std::tuple<md::ls::RenderablesCount const>>::isValid(unsigned __int16 **a1)
{
  v2 = a1[15];
  v3 = (*a1)[1];
  v4 = **a1;
  v5 = v3 >> 6;
  v6 = *(v2 + 1);
  if (v3 >> 6 >= (*(v2 + 2) - v6) >> 3)
  {
    goto LABEL_8;
  }

  v7 = *(v6 + 8 * v5);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (*(v7 + 4 * (v3 & 0x3F)) != v4)
  {
    goto LABEL_8;
  }

  v8 = *(v7 + 4 * (v3 & 0x3F) + 2);
  v9 = *(*(v2 + 7) + ((v8 >> 3) & 0x1FF8));
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *(a1[22] + 3);
  if (v10)
  {
    if ((*(*v10 + 48))(v10, v9 + 32 * (v8 & 0x3F)))
    {
      return 0;
    }

    v3 = (*a1)[1];
    v4 = **a1;
    v5 = v3 >> 6;
LABEL_8:
    v11 = *(a1[2] + 1);
    if (v5 < (*(a1[2] + 2) - v11) >> 3)
    {
      v12 = *(v11 + 8 * v5);
      if (v12)
      {
        v13 = 4 * (v3 & 0x3F);
        if (*(v12 + v13) == v4)
        {
          v14 = *(a1[3] + 1);
          if (v5 < (*(a1[3] + 2) - v14) >> 3)
          {
            v15 = *(v14 + 8 * v5);
            if (v15)
            {
              if (*(v15 + v13) == v4)
              {
                v16 = *(a1[4] + 1);
                if (v5 < (*(a1[4] + 2) - v16) >> 3)
                {
                  v17 = *(v16 + 8 * v5);
                  if (v17)
                  {
                    if (*(v17 + v13) == v4)
                    {
                      v18 = *(a1[5] + 1);
                      if (v5 < (*(a1[5] + 2) - v18) >> 3)
                      {
                        v19 = *(v18 + 8 * v5);
                        if (v19)
                        {
                          if (*(v19 + v13) == v4)
                          {
                            v20 = *(a1[6] + 1);
                            if (v5 < (*(a1[6] + 2) - v20) >> 3)
                            {
                              v21 = *(v20 + 8 * v5);
                              if (v21)
                              {
                                if (*(v21 + v13) == v4)
                                {
                                  v22 = *(a1[8] + 1);
                                  if (v5 < (*(a1[8] + 2) - v22) >> 3)
                                  {
                                    v23 = *(v22 + 8 * v5);
                                    if (v23)
                                    {
                                      if (*(v23 + v13) == v4)
                                      {
                                        v24 = *(a1[9] + 1);
                                        if (v5 < (*(a1[9] + 2) - v24) >> 3)
                                        {
                                          v25 = *(v24 + 8 * v5);
                                          if (v25)
                                          {
                                            if (*(v25 + v13) == v4)
                                            {
                                              v26 = *(a1[11] + 1);
                                              if (v5 < (*(a1[11] + 2) - v26) >> 3)
                                              {
                                                v27 = *(v26 + 8 * v5);
                                                if (v27)
                                                {
                                                  if (*(v27 + v13) == v4)
                                                  {
                                                    v28 = *(a1[12] + 1);
                                                    if (v5 < (*(a1[12] + 2) - v28) >> 3)
                                                    {
                                                      v29 = *(v28 + 8 * v5);
                                                      if (v29)
                                                      {
                                                        if (*(v29 + v13) == v4)
                                                        {
                                                          v30 = *(a1[13] + 1);
                                                          if (v5 < (*(a1[13] + 2) - v30) >> 3)
                                                          {
                                                            v31 = *(v30 + 8 * v5);
                                                            if (v31)
                                                            {
                                                              if (*(v31 + v13) == v4)
                                                              {
                                                                v32 = *(a1[14] + 1);
                                                                if (v5 < (*(a1[14] + 2) - v32) >> 3)
                                                                {
                                                                  v33 = *(v32 + 8 * v5);
                                                                  if (v33)
                                                                  {
                                                                    if (*(v33 + v13) == v4)
                                                                    {
                                                                      v34 = *(a1[16] + 1);
                                                                      if (v5 < (*(a1[16] + 2) - v34) >> 3)
                                                                      {
                                                                        v35 = *(v34 + 8 * v5);
                                                                        if (v35)
                                                                        {
                                                                          return *(v35 + v13) == v4;
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
    }

    return 0;
  }

  v37 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::ita::CollectDaVinciMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*>)::$_0,std::allocator<md::ita::CollectDaVinciMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*>)::$_0>,void ()(md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*)>::operator()(v37);
}

void std::__function::__func<md::ita::CollectDaVinciMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*>)::$_0,std::allocator<md::ita::CollectDaVinciMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*>)::$_0>,void ()(md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int16 *a15)
{
  v173 = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 32);
  v19 = **(a1 + 8);
  Registry = md::VKMRenderResourcesStore::getRegistry(v19, *a2);
  v21 = md::MeshRenderableContext::renderablesForRegistry(**(a1 + 16), Registry);
  if (v21[1] == *v21)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v22 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "false";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CollectMeshRenderables.mm";
      v171 = 1024;
      v172 = 521;
      _os_log_impl(&dword_1B2754000, v22, OS_LOG_TYPE_ERROR, "Component filter should have prevented us from processing in this case.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    v19 = **(a1 + 8);
  }

  v156 = a5;
  v23 = *(md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(v19, *a4) + 248);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a15[1] != *a15)
  {
    v164 = v21;
    v162 = v18;
    v24 = a15[1];
    v25 = *(*v21 + 8 * v24);
    v26 = *(v25 + 8);
    v166 = *v18;
    v27 = **(a1 + 40);
    v28 = **(a1 + 48);
    v29 = **(a1 + 8);
    v30 = **(a1 + 56);
    v31 = md::LayoutContext::get<md::CameraContext>(*(v27 + 1));
    v32 = *(v31 + 3076);
    v33 = *(v31 + 3080);
    md::LayoutContext::frameState(v27);
    v163 = v25;
    v160 = v26;
    if (v26 == 2)
    {
      v35 = *(v25 + 224);
      v167 = *(v25 + 232);
      v165 = *(v25 + 216);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = 256;
    }

    else
    {
      if (v26 != 1)
      {
        v54 = v156;
        v53 = v21;
        goto LABEL_161;
      }

      v37 = *(v34 + 624);
      v38 = *(v25 + 224);
      v167 = *(v25 + 232);
      v165 = *(v25 + 216);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v158 = v38;
      v39 = *(v25 + 248);
      if (v39)
      {
        md::SharedResource::addFrameRef(v39, v37);
      }

      v40 = *(v25 + 288);
      if (v40)
      {
        md::SharedResource::addFrameRef(v40, v37);
      }

      v41 = *(v25 + 272);
      if (v41)
      {
        md::SharedResource::addFrameRef(v41, v37);
      }

      v36 = 0;
      v35 = v158;
    }

    *buf = v167;
    *&buf[8] = v36;
    v42 = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((v28 + 368), buf);
    if (v42 && v42[4])
    {
      *buf = v167;
      *&buf[8] = v36;
      std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((v28 + 368), buf);
      *buf = v167;
      *&buf[8] = v36;
      std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((v28 + 800), buf);
      *buf = v167;
      *&buf[8] = v36;
      v43 = v35;
      std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((v28 + 1232), buf);
      v50 = (((v167 - 0x61C8864680B583EBLL) << 6) - 0x61C8864680B583EBLL + ((v167 - 0x61C8864680B583EBLL) >> 2)) ^ (v167 - 0x61C8864680B583EBLL);
      v51 = (v50 >> 2) + (v50 << 6);
      std::__hash_table<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::__unordered_map_hasher<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,mre::TextureKeyHasher,std::equal_to<mre::TextureKey>,true>,std::__unordered_map_equal<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::equal_to<mre::TextureKey>,mre::TextureKeyHasher,true>,std::allocator<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>>>::find<mre::TextureKey>(v30 + 3, (((((v51 - 0x61C8864680B583EALL) ^ v50) << 6) - 0x61C8864680B583EALL + (((v51 - 0x61C8864680B583EALL) ^ v50) >> 2)) ^ (v51 - 0x61C8864680B583EALL) ^ v50), 0);
      v52 = (v51 - 0x61C8864680B583EBLL) ^ v50;
      std::__hash_table<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::__unordered_map_hasher<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,mre::TextureKeyHasher,std::equal_to<mre::TextureKey>,true>,std::__unordered_map_equal<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::equal_to<mre::TextureKey>,mre::TextureKeyHasher,true>,std::allocator<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>>>::find<mre::TextureKey>(v30 + 3, (((v52 >> 2) + (v52 << 6) - 0x61C8864680B583EALL) ^ v52), 0);
      std::__hash_table<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::__unordered_map_hasher<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,mre::TextureKeyHasher,std::equal_to<mre::TextureKey>,true>,std::__unordered_map_equal<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::equal_to<mre::TextureKey>,mre::TextureKeyHasher,true>,std::allocator<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>>>::find<mre::TextureKey>(v30 + 3, (((v52 >> 2) + (v52 << 6) - 0x61C8864680B583E7) ^ v52), 0);
      v53 = v164;
      *buf = v167;
      *&buf[8] = v36;
      std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((v28 + 1664), buf);
      *buf = v167;
      *&buf[8] = v36;
      std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((v28 + 2096), buf);
      *buf = v167;
      *&buf[8] = v36;
      std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((v28 + 2528), buf);
      *buf = v167;
      *&buf[8] = v36;
      std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((v28 + 2960), buf);
      std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v29 + 5224), v167);
      v54 = v156;
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v43);
      }

LABEL_161:
      Entity = ecs2::ExecutionTaskContext::createEntity(*(*v18 + 8));
      AssociationItemStorage = md::VKMRenderResourcesStore::getAssociationItemStorage(**(a1 + 8), *v54, 1);
      v138 = AssociationItemStorage;
      v140 = AssociationItemStorage[5];
      v139 = AssociationItemStorage[6];
      if (v140 >= v139)
      {
        v142 = AssociationItemStorage[4];
        v143 = (v140 - v142) >> 2;
        if ((v143 + 1) >> 62)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v144 = v139 - v142;
        v145 = v144 >> 1;
        if (v144 >> 1 <= (v143 + 1))
        {
          v145 = v143 + 1;
        }

        if (v144 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v146 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v146 = v145;
        }

        if (v146)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v146);
        }

        *(4 * v143) = Entity;
        v141 = 4 * v143 + 4;
        v147 = v138[4];
        v148 = v138[5] - v147;
        v149 = (4 * v143 - v148);
        memcpy(v149, v147, v148);
        v150 = v138[4];
        v138[4] = v149;
        v138[5] = v141;
        v138[6] = 0;
        if (v150)
        {
          operator delete(v150);
        }
      }

      else
      {
        *v140 = Entity;
        v141 = (v140 + 1);
      }

      v138[5] = v141;
      v151 = *(*(*v53 + 8 * v24) + 32);
      v152 = *v151;
      v153 = v151[1];
      if (v153)
      {
        atomic_fetch_add_explicit((v153 + 8), 1uLL, memory_order_relaxed);
      }

      md::VKMRenderResourcesStore::createDeviceDataHandle(**(a1 + 8), v152);
      (*(**(*v53 + 8 * v24) + 24))(*(*v53 + 8 * v24));
      (*(**(*v53 + 8 * v24) + 16))(*(*v53 + 8 * v24));
      v154 = *(v163 + 32);
      if (*(&v154 + 1))
      {
        atomic_fetch_add_explicit((*(&v154 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v155 = **(v163 + 208);
      if (v155)
      {
        ecs2::addComponent<md::ls::HasMeshHandle>(*v162, Entity, v155);
      }

      v169[3] = 0;
      operator new();
    }

    v44 = fmaxf(v33 + v32, 1.0);
    ecs2::ExecutionTaskContext::createEntity(*(v166 + 8));
    if (v160 == 2)
    {
      v45 = (((v167 - 0x61C8864680B583EBLL) << 6) - 0x61C8864680B583EBLL + ((v167 - 0x61C8864680B583EBLL) >> 2)) ^ (v167 - 0x61C8864680B583EBLL);
      v46 = ((v45 << 6) - 0x61C8864680B583EALL + (v45 >> 2)) ^ v45;
      v47 = (v46 << 6) - 0x61C8864680B583EALL + (v46 >> 2);
      v48 = std::__hash_table<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::__unordered_map_hasher<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,mre::TextureKeyHasher,std::equal_to<mre::TextureKey>,true>,std::__unordered_map_equal<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::equal_to<mre::TextureKey>,mre::TextureKeyHasher,true>,std::allocator<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>>>::find<mre::TextureKey>(v30 + 3, (v47 ^ v46), 0);
      if (v48 && (v49 = v48[4]) != 0)
      {
        mre::GGLResourceStore::connect(v30, v49);
      }

      else
      {
        inserted = mre::GGLResourceStore::insertTexture(v30, 0, 1, 1);
        mre::GGLResourceStore::addTextureHandleToCache(v30, inserted, v61, v47 ^ v46, 0);
      }

      operator new();
    }

    v55 = (*(*v165 + 264))(v165, v44);
    if ((v55 & 0x100000000) != 0)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    LODWORD(v168) = v56;
    BYTE4(v168) = (v55 & 0x100000000) == 0;
    *buf = v167;
    *&buf[8] = v36;
    v57 = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((v28 + 1232), buf);
    if (v57 && v57[4])
    {
      v58 = *(*(*(v28 + 888) + 8 * (v57[4] >> 6)) + 16 * (v57[4] & 0x3F) + 8);
      v59 = *(*(v28 + 936) + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v58 & 0x3F);
      ++*(v59 + 8);
      goto LABEL_158;
    }

    *buf = v167;
    *&buf[8] = v36;
    v62 = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>((v28 + 1232), buf);
    if (v62 && v62[4])
    {
LABEL_158:
      operator new();
    }

    v63 = *(v28 + 1096);
    v64 = *(v28 + 1112);
    if (*(v28 + 1088) == v63)
    {
      v65 = ((*(v28 + 1120) - v64) >> 3) | 0x100000000;
      v169[0] = v65;
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v28 + 1112, v169);
    }

    else
    {
      v65 = *(v64 + 8 * *(v63 - 8));
      *(v28 + 1096) = v63 - 8;
    }

    v169[0] = v65;
    v66 = v65 >> 6;
    v67 = *(v28 + 896);
    v68 = *(v28 + 888);
    if (v66 >= (v67 - v68) >> 3)
    {
      v69 = v66 + 1;
      v70 = v66 + 1 - ((v67 - v68) >> 3);
      v71 = *(v28 + 904);
      if (v70 > (v71 - v67) >> 3)
      {
        v72 = v71 - v68;
        if (v72 >> 2 > v69)
        {
          v69 = v72 >> 2;
        }

        if (v72 >= 0x7FFFFFFFFFFFFFF8)
        {
          v73 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v73 = v69;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v73);
      }

      bzero(*(v28 + 896), 8 * v70);
      *(v28 + 896) = v67 + 8 * v70;
      v68 = *(v28 + 888);
    }

    v74 = *(v68 + 8 * v66);
    if (!v74)
    {
      operator new();
    }

    v75 = (v74 + 16 * (v65 & 0x3F));
    v76 = *v75 == -1 && v75[1] == 0;
    v157 = v65;
    if (!v76)
    {
LABEL_122:
      v123 = ((v36 >> 8) - 0x61C8864680B583EBLL + (((v167 + 0x53A3C687B1BC205ALL) ^ 0x9E3779B97F4A7C15) << 6) + (((v167 + 0x53A3C687B1BC205ALL) ^ 0x9E3779B97F4A7C15) >> 2)) ^ (v167 + 0x53A3C687B1BC205ALL) ^ 0x9E3779B97F4A7C15;
      v124 = *(v28 + 1240);
      if (v124)
      {
        v125 = vcnt_s8(v124);
        v125.i16[0] = vaddlv_u8(v125);
        if (v125.u32[0] > 1uLL)
        {
          v126 = ((v36 >> 8) - 0x61C8864680B583EBLL + (((v167 + 0x53A3C687B1BC205ALL) ^ 0x9E3779B97F4A7C15) << 6) + (((v167 + 0x53A3C687B1BC205ALL) ^ 0x9E3779B97F4A7C15) >> 2)) ^ (v167 + 0x53A3C687B1BC205ALL) ^ 0x9E3779B97F4A7C15;
          if (v123 >= *&v124)
          {
            v126 = v123 % *&v124;
          }
        }

        else
        {
          v126 = v123 & (*&v124 - 1);
        }

        v127 = *(*(v28 + 1232) + 8 * v126);
        if (v127)
        {
          for (i = *v127; i; i = *i)
          {
            v129 = i[1];
            if (v129 == v123)
            {
              if (i[2] == v167 && (i[3] & 1) == 0 && *(i + 25) == (v36 >> 8))
              {
                i[4] = v157;
                v130 = *(v28 + 1280);
                if (!*&v130)
                {
                  goto LABEL_157;
                }

                v131 = vcnt_s8(v130);
                v131.i16[0] = vaddlv_u8(v131);
                if (v131.u32[0] > 1uLL)
                {
                  v132 = v157;
                  if (v157 >= *&v130)
                  {
                    v132 = v157 % *&v130;
                  }
                }

                else
                {
                  v132 = (*&v130 - 1) & v157;
                }

                v133 = *(*(v28 + 1272) + 8 * v132);
                if (!v133 || (v134 = *v133) == 0)
                {
LABEL_157:
                  operator new();
                }

                while (1)
                {
                  v135 = v134[1];
                  if (v135 == v157)
                  {
                    if (v134[2] == v157)
                    {
                      v134[3] = *buf;
                      *(v134 + 16) = *&buf[8];
                      goto LABEL_158;
                    }
                  }

                  else
                  {
                    if (v131.u32[0] > 1uLL)
                    {
                      if (v135 >= *&v130)
                      {
                        v135 %= *&v130;
                      }
                    }

                    else
                    {
                      v135 &= *&v130 - 1;
                    }

                    if (v135 != v132)
                    {
                      goto LABEL_157;
                    }
                  }

                  v134 = *v134;
                  if (!v134)
                  {
                    goto LABEL_157;
                  }
                }
              }
            }

            else
            {
              if (v125.u32[0] > 1uLL)
              {
                if (v129 >= *&v124)
                {
                  v129 %= *&v124;
                }
              }

              else
              {
                v129 &= *&v124 - 1;
              }

              if (v129 != v126)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v28 + 912, v169);
    v77 = ((*(v28 + 920) - *(v28 + 912)) >> 3) - 1;
    *v75 = HIDWORD(v65);
    v75[1] = v77;
    v78 = v77 & 0x3F;
    v79 = (*(*(v28 + 936) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((v28 + 936), v77)) + 24 * v78);
    *v79 = vdupq_n_s64(1uLL);
    v79[1].i16[0] = 1;
    v80 = v77 >> 6;
    v81 = *(v28 + 992);
    v82 = *(v28 + 984);
    v83 = v81 - v82;
    v161 = v77 >> 6;
    v159 = v78;
    if (v77 >> 6 >= (v81 - v82) >> 3)
    {
      v84 = v80 + 1;
      v85 = v80 + 1 - (v83 >> 3);
      v86 = *(v28 + 1000);
      if (v85 > (v86 - v81) >> 3)
      {
        v87 = v86 - v82;
        v88 = (v86 - v82) >> 2;
        if (v88 <= v84)
        {
          v88 = v80 + 1;
        }

        if (v87 >= 0x7FFFFFFFFFFFFFF8)
        {
          v89 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v89 = v88;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v89);
      }

      v90 = 0;
      v91 = (v85 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v92 = vdupq_n_s64(v91);
      do
      {
        v93 = vmovn_s64(vcgeq_u64(v92, vorrq_s8(vdupq_n_s64(v90), xmmword_1B33B0560)));
        if (v93.i8[0])
        {
          *(v81 + 8 * v90) = 0;
        }

        if (v93.i8[4])
        {
          *(v81 + 8 * v90 + 8) = 0;
        }

        v90 += 2;
      }

      while (v91 - ((v85 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v90);
      *(v28 + 992) = v81 + 8 * v85;
      v94 = *(v28 + 1016);
      v95 = *(v28 + 1008);
      v96 = (v94 - v95) >> 4;
      if (v96 <= v80)
      {
        v97 = v84 - v96;
        v98 = *(v28 + 1024);
        if (v97 > (v98 - v94) >> 4)
        {
          v99 = v98 - v95;
          v100 = v99 >> 3;
          if (v99 >> 3 <= v84)
          {
            v100 = v80 + 1;
          }

          if (v99 >= 0x7FFFFFFFFFFFFFF0)
          {
            v101 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v101 = v100;
          }

          if (!(v101 >> 60))
          {
            operator new();
          }

          goto LABEL_180;
        }

        bzero(*(v28 + 1016), 16 * v97);
        v80 = v161;
        *(v28 + 1016) = v94 + 16 * v97;
        v78 = v159;
      }

      else if (v84 < v96)
      {
        *(v28 + 1016) = v95 + 16 * v84;
      }

      v82 = *(v28 + 984);
      if (v83 < (*(v28 + 992) - v82))
      {
        operator new();
      }
    }

    *(*(v82 + 8 * v80) + 8 * v78) = v168;
    v102 = *(v28 + 1040);
    v103 = *(v28 + 1032);
    v104 = v102 - v103;
    if (v80 < (v102 - v103) >> 3)
    {
LABEL_121:
      *(*(v103 + 8 * v80) + 8 * v78) = 0;
      goto LABEL_122;
    }

    v105 = v80 + 1;
    v106 = v80 + 1 - (v104 >> 3);
    v107 = *(v28 + 1048);
    if (v106 > (v107 - v102) >> 3)
    {
      v108 = v107 - v103;
      v109 = (v107 - v103) >> 2;
      if (v109 <= v105)
      {
        v109 = v80 + 1;
      }

      if (v108 >= 0x7FFFFFFFFFFFFFF8)
      {
        v110 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v110 = v109;
      }

      if (!(v110 >> 61))
      {
        operator new();
      }

      goto LABEL_180;
    }

    v111 = 0;
    v112 = (v106 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v113 = vdupq_n_s64(v112);
    do
    {
      v114 = vmovn_s64(vcgeq_u64(v113, vorrq_s8(vdupq_n_s64(v111), xmmword_1B33B0560)));
      if (v114.i8[0])
      {
        *(v102 + 8 * v111) = 0;
      }

      if (v114.i8[4])
      {
        *(v102 + 8 * v111 + 8) = 0;
      }

      v111 += 2;
    }

    while (v112 - ((v106 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v111);
    *(v28 + 1040) = v102 + 8 * v106;
    v115 = *(v28 + 1064);
    v116 = *(v28 + 1056);
    v117 = (v115 - v116) >> 4;
    if (v117 > v80)
    {
      if (v105 < v117)
      {
        *(v28 + 1064) = v116 + 16 * v105;
      }

      goto LABEL_119;
    }

    v118 = v105 - v117;
    v119 = *(v28 + 1072);
    if (v118 <= (v119 - v115) >> 4)
    {
      bzero(*(v28 + 1064), 16 * v118);
      v80 = v161;
      *(v28 + 1064) = v115 + 16 * v118;
      v78 = v159;
LABEL_119:
      v103 = *(v28 + 1032);
      if (v104 < (*(v28 + 1040) - v103))
      {
        operator new();
      }

      goto LABEL_121;
    }

    v120 = v119 - v116;
    v121 = v120 >> 3;
    if (v120 >> 3 <= v105)
    {
      v121 = v80 + 1;
    }

    if (v120 >= 0x7FFFFFFFFFFFFFF0)
    {
      v122 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v122 = v121;
    }

    if (!(v122 >> 60))
    {
      operator new();
    }

LABEL_180:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }
}

void sub_1B31F229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (a50)
  {
    JUMPOUT(0x1B31F2274);
  }

  JUMPOUT(0x1B31F2288);
}

uint64_t mre::GGLResourceStore::connect(mre::GGLResourceStore *this, const TextureHandle *a2)
{
  result = ecs2::sparse_set<mre::TextureHandle,64ul>::find(this + 55, a2);
  if (result != *(this + 60))
  {
    v4 = *(*(this + 62) + ((((result - *(this + 59)) >> 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - *(this + 59)) >> 4) & 0x3F);
    ++*(v4 + 8);
  }

  return result;
}

uint64_t ecs2::addComponent<md::ls::PlanarParametersCacheKeyHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51BA8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A51BA8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A411A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::ClippingConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51AD8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A51AD8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A411A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::StyleCameraConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A50CD8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A50CD8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A411A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::ShadowConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A527D8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A527D8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A411A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::PrepassShadowConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A53088;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A53088;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A411A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::PrepassConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A528A8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A528A8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A411A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::SupportsStylizedShading>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4FC18;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4FC18;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A411A8[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t ecs2::addComponent<md::ls::SupportsSteepnessDarkening>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4FCC8;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4FCC8;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A411A8[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t ecs2::addComponent<md::ls::HasStyleAttributeRasterSet>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A52708;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A52708;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A411A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void ecs2::addComponent<md::ls::SharedUniqueID>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

uint64_t ecs2::addComponent<md::ls::MeshRenderablePositionScaleInfo>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A420A8;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A420A8;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A411A8[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::PreserveHeight>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51588;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A51588;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A411A8[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void ecs2::addComponent<md::ls::CustomRenderState>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void sub_1B31F2E98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ecs2::addComponent<md::ls::IsDecal>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51708;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A51708;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A411A8[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t ecs2::addComponent<md::ls::CustomZIndex>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A50658;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A50658;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A411A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::SharedMaterialZIndexHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A50318;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A50318;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A411A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::ColorDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A50DA8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A50DA8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A411A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::NeedsZBias>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A514D8;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A514D8;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A411A8[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderableVisibilityOptions>(ecs2::Entity,md::ls::RenderableVisibilityOptions &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableVisibilityOptions>(a2);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 4 * (v13 & 0x3F)) = *(a1 + 8);
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
  *(v51 + 4 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderableVisibilityOptions>(ecs2::Entity,md::ls::RenderableVisibilityOptions &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A432C8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NeedsZBias>(ecs2::Entity,md::ls::NeedsZBias &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NeedsZBias>(ecs2::Entity,md::ls::NeedsZBias &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A514D8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ColorDataHandle>(ecs2::Entity,md::ls::ColorDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ColorDataHandle>(ecs2::Entity,md::ls::ColorDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50DA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SharedSSAOIntensityDataHandle>(ecs2::Entity,md::ls::SharedSSAOIntensityDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SharedSSAOIntensityDataHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SharedSSAOIntensityDataHandle>(ecs2::Entity,md::ls::SharedSSAOIntensityDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A43128;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::SharedColorDataHandle,md::ls::SharedMaterialVisibilityOptionsHandle,md::ls::SharedGradientMaskDataHandle,md::ls::SharedColorCorrectionDataHandle>(ecs2::Entity,ecs2::ComponentBundle<md::ls::SharedColorDataHandle,md::ls::SharedMaterialVisibilityOptionsHandle,md::ls::SharedGradientMaskDataHandle,md::ls::SharedColorCorrectionDataHandle> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 40);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>();
  i = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SharedColorDataHandle>(a2);
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
  v14 = *v12 == -1 && v13 == 0;
  v207 = a2;
  v208 = v3;
  if (v14)
  {
    v205 = i;
    v16 = *(v7 + 40);
    v15 = *(v7 + 48);
    if (v16 >= v15)
    {
      v18 = *(v7 + 32);
      v19 = (v16 - v18) >> 2;
      if ((v19 + 1) >> 62)
      {
        goto LABEL_211;
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
      v32 = v28 + 1;
      v33 = v28 + 1 - (v31 >> 3);
      v34 = *(v7 + 72);
      v203 = v29 - v30;
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

        goto LABEL_212;
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
        v45 = v32 - v44;
        v46 = *(v7 + 96);
        if (v45 > (v46 - v43) >> 4)
        {
          v47 = v46 - v42;
          v48 = v47 >> 3;
          if (v47 >> 3 <= v32)
          {
            v48 = v28 + 1;
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

          goto LABEL_212;
        }

        bzero(*(v7 + 88), 16 * v45);
        *(v7 + 88) = v43 + 16 * v45;
        v31 = v203;
      }

      else if (v32 < v44)
      {
        *(v7 + 88) = v42 + 16 * v32;
      }

      v30 = *(v7 + 56);
      if (v31 < (*(v7 + 64) - v30))
      {
        operator new();
      }
    }

    *(*(v30 + 8 * v28) + 8 * (v27 & 0x3F)) = *(v3 + 8);
    v50 = *(v7 + 152);
    v51 = *(v7 + 160);
    for (i = v205; v50 != v51; v50 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), v4);
    }
  }

  else
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(v3 + 8);
  }

  v52 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v52 + ((i >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << i;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata) = *(a2 + 4096);
  v53 = *(v3 + 40);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>();
  v54 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>(void)::metadata;
  v55 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialVisibilityOptionsHandle>(a2);
  v56 = v55;
  v57 = v53 >> 22;
  v59 = (v55 + 8);
  v58 = *(v55 + 8);
  if (v53 >> 22 >= (*(v55 + 16) - v58) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v55 + 8), v57 + 1);
    v58 = *v59;
  }

  v60 = *(v58 + 8 * v57);
  if (!v60)
  {
    operator new();
  }

  v61 = (v60 + 4 * ((v53 >> 16) & 0x3F));
  v62 = v61[1];
  if (*v61 != -1 || v62 != 0)
  {
    *(*(*(v56 + 56) + ((v62 >> 3) & 0x1FF8)) + 8 * (v62 & 0x3F)) = *(v3 + 16);
    goto LABEL_106;
  }

  v65 = *(v56 + 40);
  v64 = *(v56 + 48);
  if (v65 >= v64)
  {
    v67 = *(v56 + 32);
    v68 = (v65 - v67) >> 2;
    if ((v68 + 1) >> 62)
    {
      goto LABEL_211;
    }

    v69 = v64 - v67;
    v70 = v69 >> 1;
    if (v69 >> 1 <= (v68 + 1))
    {
      v70 = v68 + 1;
    }

    if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v71 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v71 = v70;
    }

    if (v71)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v71);
    }

    *(4 * v68) = v53;
    v66 = 4 * v68 + 4;
    v72 = *(v56 + 32);
    v73 = *(v56 + 40) - v72;
    v74 = (4 * v68 - v73);
    memcpy(v74, v72, v73);
    v75 = *(v56 + 32);
    *(v56 + 32) = v74;
    *(v56 + 40) = v66;
    *(v56 + 48) = 0;
    if (v75)
    {
      operator delete(v75);
    }
  }

  else
  {
    *v65 = v53;
    v66 = (v65 + 1);
  }

  *(v56 + 40) = v66;
  v76 = ((v66 - *(v56 + 32)) >> 2) - 1;
  *v61 = v53;
  v61[1] = v76;
  v77 = v76 >> 6;
  v79 = *(v56 + 56);
  v78 = *(v56 + 64);
  v80 = v78 - v79;
  if (v76 >> 6 >= (v78 - v79) >> 3)
  {
    v81 = v77 + 1;
    v82 = v77 + 1 - (v80 >> 3);
    v83 = *(v56 + 72);
    if (v82 > (v83 - v78) >> 3)
    {
      v84 = v83 - v79;
      v85 = (v83 - v79) >> 2;
      if (v85 <= v81)
      {
        v85 = v77 + 1;
      }

      if (v84 >= 0x7FFFFFFFFFFFFFF8)
      {
        v86 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v86 = v85;
      }

      if (!(v86 >> 61))
      {
        operator new();
      }

      goto LABEL_212;
    }

    v87 = 0;
    v88 = (v82 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v89 = vdupq_n_s64(v88);
    do
    {
      v90 = vmovn_s64(vcgeq_u64(v89, vorrq_s8(vdupq_n_s64(v87), xmmword_1B33B0560)));
      if (v90.i8[0])
      {
        *(v78 + 8 * v87) = 0;
      }

      if (v90.i8[4])
      {
        *(v78 + 8 * v87 + 8) = 0;
      }

      v87 += 2;
    }

    while (v88 - ((v82 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v87);
    *(v56 + 64) = v78 + 8 * v82;
    v91 = *(v56 + 80);
    v92 = *(v56 + 88);
    v93 = (v92 - v91) >> 4;
    if (v93 <= v77)
    {
      v95 = v81 - v93;
      v96 = *(v56 + 96);
      if (v95 > (v96 - v92) >> 4)
      {
        v97 = v96 - v91;
        v98 = v97 >> 3;
        if (v97 >> 3 <= v81)
        {
          v98 = v77 + 1;
        }

        if (v97 >= 0x7FFFFFFFFFFFFFF0)
        {
          v99 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v99 = v98;
        }

        if (!(v99 >> 60))
        {
          operator new();
        }

        goto LABEL_212;
      }

      bzero(*(v56 + 88), 16 * v95);
      v94 = v92 + 16 * v95;
    }

    else
    {
      if (v81 >= v93)
      {
        goto LABEL_102;
      }

      v94 = v91 + 16 * v81;
    }

    *(v56 + 88) = v94;
LABEL_102:
    v79 = *(v56 + 56);
    a2 = v207;
    if (v80 < (*(v56 + 64) - v79))
    {
      operator new();
    }
  }

  v100 = v76 & 0x3F;
  v3 = v208;
  *(*(v79 + 8 * v77) + 8 * v100) = *(v208 + 16);
  v101 = *(v56 + 152);
  for (j = *(v56 + 160); v101 != j; v101 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v101 + 24), v53);
  }

LABEL_106:
  v103 = *(a2 + 41016) + (v53 >> 16 << 6);
  *(v103 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v54;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>(void)::metadata) = *(a2 + 4096);
  v104 = *(v3 + 40);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>();
  v105 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>(void)::metadata;
  v106 = ecs2::BasicRegistry<void>::storage<md::ls::SharedGradientMaskDataHandle>(a2);
  v107 = v106;
  v108 = v104 >> 22;
  v110 = (v106 + 8);
  v109 = *(v106 + 8);
  if (v104 >> 22 >= (*(v106 + 16) - v109) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v106 + 8), v108 + 1);
    v109 = *v110;
  }

  v111 = *(v109 + 8 * v108);
  if (!v111)
  {
    operator new();
  }

  v112 = (v111 + 4 * ((v104 >> 16) & 0x3F));
  v113 = v112[1];
  if (*v112 != -1 || v113 != 0)
  {
    *(*(*(v107 + 56) + ((v113 >> 3) & 0x1FF8)) + 8 * (v113 & 0x3F)) = *(v3 + 24);
    goto LABEL_159;
  }

  v116 = *(v107 + 40);
  v115 = *(v107 + 48);
  if (v116 >= v115)
  {
    v118 = *(v107 + 32);
    v119 = (v116 - v118) >> 2;
    if ((v119 + 1) >> 62)
    {
      goto LABEL_211;
    }

    v120 = v115 - v118;
    v121 = v120 >> 1;
    if (v120 >> 1 <= (v119 + 1))
    {
      v121 = v119 + 1;
    }

    if (v120 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v122 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v122 = v121;
    }

    if (v122)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v122);
    }

    *(4 * v119) = v104;
    v117 = 4 * v119 + 4;
    v123 = *(v107 + 32);
    v124 = *(v107 + 40) - v123;
    v125 = (4 * v119 - v124);
    memcpy(v125, v123, v124);
    v126 = *(v107 + 32);
    *(v107 + 32) = v125;
    *(v107 + 40) = v117;
    *(v107 + 48) = 0;
    if (v126)
    {
      operator delete(v126);
    }
  }

  else
  {
    *v116 = v104;
    v117 = (v116 + 1);
  }

  *(v107 + 40) = v117;
  v127 = ((v117 - *(v107 + 32)) >> 2) - 1;
  *v112 = v104;
  v112[1] = v127;
  v128 = v127 >> 6;
  v130 = *(v107 + 56);
  v129 = *(v107 + 64);
  v131 = v129 - v130;
  if (v127 >> 6 >= (v129 - v130) >> 3)
  {
    v132 = v128 + 1;
    v133 = v128 + 1 - (v131 >> 3);
    v134 = *(v107 + 72);
    if (v133 > (v134 - v129) >> 3)
    {
      v135 = v134 - v130;
      v136 = (v134 - v130) >> 2;
      if (v136 <= v132)
      {
        v136 = v128 + 1;
      }

      if (v135 >= 0x7FFFFFFFFFFFFFF8)
      {
        v137 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v137 = v136;
      }

      if (!(v137 >> 61))
      {
        operator new();
      }

      goto LABEL_212;
    }

    v138 = 0;
    v139 = (v133 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v140 = vdupq_n_s64(v139);
    do
    {
      v141 = vmovn_s64(vcgeq_u64(v140, vorrq_s8(vdupq_n_s64(v138), xmmword_1B33B0560)));
      if (v141.i8[0])
      {
        *(v129 + 8 * v138) = 0;
      }

      if (v141.i8[4])
      {
        *(v129 + 8 * v138 + 8) = 0;
      }

      v138 += 2;
    }

    while (v139 - ((v133 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v138);
    *(v107 + 64) = v129 + 8 * v133;
    v142 = *(v107 + 80);
    v143 = *(v107 + 88);
    v144 = (v143 - v142) >> 4;
    if (v144 <= v128)
    {
      v146 = v132 - v144;
      v147 = *(v107 + 96);
      if (v146 > (v147 - v143) >> 4)
      {
        v148 = v147 - v142;
        v149 = v148 >> 3;
        if (v148 >> 3 <= v132)
        {
          v149 = v128 + 1;
        }

        if (v148 >= 0x7FFFFFFFFFFFFFF0)
        {
          v150 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v150 = v149;
        }

        if (!(v150 >> 60))
        {
          operator new();
        }

        goto LABEL_212;
      }

      bzero(*(v107 + 88), 16 * v146);
      v145 = v143 + 16 * v146;
    }

    else
    {
      if (v132 >= v144)
      {
        goto LABEL_155;
      }

      v145 = v142 + 16 * v132;
    }

    *(v107 + 88) = v145;
LABEL_155:
    v130 = *(v107 + 56);
    a2 = v207;
    if (v131 < (*(v107 + 64) - v130))
    {
      operator new();
    }
  }

  v151 = v127 & 0x3F;
  v3 = v208;
  *(*(v130 + 8 * v128) + 8 * v151) = *(v208 + 24);
  v152 = *(v107 + 152);
  for (k = *(v107 + 160); v152 != k; v152 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v152 + 24), v104);
  }

LABEL_159:
  v154 = *(a2 + 41016) + (v104 >> 16 << 6);
  *(v154 + ((v105 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v105;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>(void)::metadata) = *(a2 + 4096);
  v155 = *(v3 + 40);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>();
  m = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>(void)::metadata;
  v157 = ecs2::BasicRegistry<void>::storage<md::ls::SharedColorCorrectionDataHandle>(a2);
  v158 = v157;
  v159 = v155 >> 22;
  v161 = (v157 + 8);
  v160 = *(v157 + 8);
  if (v155 >> 22 >= (*(v157 + 16) - v160) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v157 + 8), v159 + 1);
    v160 = *v161;
  }

  v162 = *(v160 + 8 * v159);
  if (!v162)
  {
    operator new();
  }

  v163 = (v162 + 4 * ((v155 >> 16) & 0x3F));
  v164 = v163[1];
  if (*v163 != -1 || v164 != 0)
  {
    *(*(*(v158 + 56) + ((v164 >> 3) & 0x1FF8)) + 8 * (v164 & 0x3F)) = *(v3 + 32);
    goto LABEL_210;
  }

  v167 = *(v158 + 40);
  v166 = *(v158 + 48);
  v206 = m;
  if (v167 < v166)
  {
    *v167 = v155;
    v168 = (v167 + 1);
    goto LABEL_180;
  }

  v169 = *(v158 + 32);
  v170 = (v167 - v169) >> 2;
  if ((v170 + 1) >> 62)
  {
LABEL_211:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v171 = v166 - v169;
  v172 = v171 >> 1;
  if (v171 >> 1 <= (v170 + 1))
  {
    v172 = v170 + 1;
  }

  if (v171 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v173 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v173 = v172;
  }

  if (v173)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v173);
  }

  *(4 * v170) = v155;
  v168 = 4 * v170 + 4;
  v174 = *(v158 + 32);
  v175 = *(v158 + 40) - v174;
  v176 = (4 * v170 - v175);
  memcpy(v176, v174, v175);
  v177 = *(v158 + 32);
  *(v158 + 32) = v176;
  *(v158 + 40) = v168;
  *(v158 + 48) = 0;
  if (v177)
  {
    operator delete(v177);
  }

LABEL_180:
  *(v158 + 40) = v168;
  v178 = ((v168 - *(v158 + 32)) >> 2) - 1;
  *v163 = v155;
  v163[1] = v178;
  v179 = v178 >> 6;
  v181 = *(v158 + 56);
  v180 = *(v158 + 64);
  v182 = v180 - v181;
  if (v178 >> 6 >= (v180 - v181) >> 3)
  {
    v183 = v179 + 1;
    v184 = v179 + 1 - (v182 >> 3);
    v185 = *(v158 + 72);
    v204 = v180 - v181;
    if (v184 > (v185 - v180) >> 3)
    {
      v186 = v185 - v181;
      v187 = (v185 - v181) >> 2;
      if (v187 <= v183)
      {
        v187 = v179 + 1;
      }

      if (v186 >= 0x7FFFFFFFFFFFFFF8)
      {
        v188 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v188 = v187;
      }

      if (!(v188 >> 61))
      {
        operator new();
      }

      goto LABEL_212;
    }

    v189 = 0;
    v190 = (v184 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v191 = vdupq_n_s64(v190);
    do
    {
      v192 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(vdupq_n_s64(v189), xmmword_1B33B0560)));
      if (v192.i8[0])
      {
        *(v180 + 8 * v189) = 0;
      }

      if (v192.i8[4])
      {
        *(v180 + 8 * v189 + 8) = 0;
      }

      v189 += 2;
    }

    while (v190 - ((v184 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v189);
    *(v158 + 64) = v180 + 8 * v184;
    v193 = *(v158 + 80);
    v194 = *(v158 + 88);
    v195 = (v194 - v193) >> 4;
    if (v195 > v179)
    {
      if (v183 < v195)
      {
        *(v158 + 88) = v193 + 16 * v183;
      }

      goto LABEL_206;
    }

    v196 = v183 - v195;
    v197 = *(v158 + 96);
    if (v196 <= (v197 - v194) >> 4)
    {
      bzero(*(v158 + 88), 16 * v196);
      *(v158 + 88) = v194 + 16 * v196;
      v182 = v204;
LABEL_206:
      v181 = *(v158 + 56);
      a2 = v207;
      if (v182 < (*(v158 + 64) - v181))
      {
        operator new();
      }

      goto LABEL_208;
    }

    v198 = v197 - v193;
    v199 = v198 >> 3;
    if (v198 >> 3 <= v183)
    {
      v199 = v179 + 1;
    }

    if (v198 >= 0x7FFFFFFFFFFFFFF0)
    {
      v199 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (!(v199 >> 60))
    {
      operator new();
    }

LABEL_212:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_208:
  *(*(v181 + 8 * v179) + 8 * (v178 & 0x3F)) = *(v3 + 32);
  v200 = *(v158 + 152);
  v201 = *(v158 + 160);
  for (m = v206; v200 != v201; v200 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v200 + 24), v155);
  }

LABEL_210:
  v202 = *(a2 + 41016) + (v155 >> 16 << 6);
  *(v202 + ((m >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << m;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::SharedColorDataHandle,md::ls::SharedMaterialVisibilityOptionsHandle,md::ls::SharedGradientMaskDataHandle,md::ls::SharedColorCorrectionDataHandle>(ecs2::Entity,ecs2::ComponentBundle<md::ls::SharedColorDataHandle,md::ls::SharedMaterialVisibilityOptionsHandle,md::ls::SharedGradientMaskDataHandle,md::ls::SharedColorCorrectionDataHandle> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42EC0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SharedMaterialZIndexHandle>(ecs2::Entity,md::ls::SharedMaterialZIndexHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialZIndexHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SharedMaterialZIndexHandle>(ecs2::Entity,md::ls::SharedMaterialZIndexHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50318;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::SharedMaterialEmissiveTexture,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::SharedMaterialEmissiveTexture,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 40);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialEmissiveTexture>(a2);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(v3 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v57 = v3;
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
    v56 = a2;
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

      goto LABEL_58;
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

LABEL_58:
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
    a2 = v56;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v3 = v57;
  *(v51 + 16 * (v27 & 0x3F)) = *(v57 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>(void)::metadata) = *(a2 + 4096);
  v55 = *(v3 + 40);

  ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(a2, v55, (v3 + 24));
}

void ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialEmissiveTexture>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialEmissiveTexture>(void)::localId;
    *algn_1EB82D6E8 = 0x553C3DE8C694F909;
    qword_1EB82D6F0 = "md::ls::SharedMaterialEmissiveTexture]";
    qword_1EB82D6F8 = 37;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialEmissiveTexture>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29SharedMaterialEmissiveTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialEmissiveTexture>(v3);
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
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialEmissiveTexture>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29SharedMaterialEmissiveTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42E78;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialEmissiveTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42E38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialEmissiveTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedMaterialEmissiveTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42E58;
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

void ecs2::storage<ecs2::Entity,md::ls::SharedMaterialEmissiveTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialEmissiveTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialEmissiveTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42E38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedMaterialEmissiveTexture,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::SharedMaterialEmissiveTexture,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::SharedMaterialEmissiveTexture,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42DF0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::SharedMaterialAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::SharedMaterialAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 40);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialAlbedoTexture>(a2);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(v3 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v57 = v3;
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
    v56 = a2;
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

      goto LABEL_58;
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

LABEL_58:
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
    a2 = v56;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v3 = v57;
  *(v51 + 16 * (v27 & 0x3F)) = *(v57 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>(void)::metadata) = *(a2 + 4096);
  v55 = *(v3 + 40);

  ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::TexTexture>>(a2, v55, (v3 + 24));
}

void ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::TexTexture>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::SharedMaterialAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::SharedMaterialAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42D20;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableAlbedoTexture>(a2);
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
  if (*v12 == -1 && v13 == 0)
  {
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
    if (v27 >> 6 >= (v29 - v30) >> 3)
    {
      v56 = v27;
      v57 = v5;
      v31 = v28 + 1;
      v32 = v28 + 1 - ((v29 - v30) >> 3);
      v33 = *(v7 + 72);
      v58 = v29 - v30;
      if (v32 > (v33 - v29) >> 3)
      {
        v34 = v33 - v30;
        v35 = (v33 - v30) >> 2;
        if (v35 <= v31)
        {
          v35 = v28 + 1;
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

        goto LABEL_60;
      }

      v37 = 0;
      v38 = (v32 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v39 = vdupq_n_s64(v38);
      do
      {
        v40 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_1B33B0560)));
        if (v40.i8[0])
        {
          *(v29 + 8 * v37) = 0;
        }

        if (v40.i8[4])
        {
          *(v29 + 8 * v37 + 8) = 0;
        }

        v37 += 2;
      }

      while (v38 - ((v32 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v37);
      *(v7 + 64) = v29 + 8 * v32;
      v41 = *(v7 + 80);
      v42 = *(v7 + 88);
      v43 = (v42 - v41) >> 4;
      if (v43 <= v28)
      {
        v27 = v31 - v43;
        v44 = *(v7 + 96);
        if (v27 > (v44 - v42) >> 4)
        {
          v45 = v44 - v41;
          v46 = v45 >> 3;
          if (v45 >> 3 <= v31)
          {
            v46 = v28 + 1;
          }

          if (v45 >= 0x7FFFFFFFFFFFFFF0)
          {
            v46 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v46 >> 60))
          {
            operator new();
          }

LABEL_60:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(v7 + 88), 16 * v27);
        *(v7 + 88) = v42 + 16 * v27;
        LOBYTE(v27) = v56;
      }

      else if (v31 < v43)
      {
        *(v7 + 88) = v41 + 16 * v31;
      }

      v30 = *(v7 + 56);
      v5 = v57;
      if (v58 < *(v7 + 64) - v30)
      {
        operator new();
      }
    }

    v47 = (*(v30 + 8 * v28) + 32 * (v27 & 0x3F));
    *v47 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v47[1] = *(a1 + 24);
    v48 = *(v7 + 152);
    v49 = *(v7 + 160);
    while (v48 != v49)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v48 + 24), v4);
      v48 += 32;
    }

    goto LABEL_56;
  }

  v50 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F);
  v51 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v52 = *(v50 + 8);
  *v50 = v51;
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  v53 = *(a1 + 24);
  *(v50 + 24) = *(a1 + 32);
  *(v50 + 16) = v53;
LABEL_56:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata) = *(a2 + 4096);
  v55 = *(a1 + 56);

  ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::TexTexture>>(a2, v55, (a1 + 40));
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F2A42C50;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(a2 + 40) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A42C50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<DaVinci::TexTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A42C50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::SharedMaterialDiffuseTexture,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::SharedMaterialDiffuseTexture,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 40);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialDiffuseTexture>(a2);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(v3 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v57 = v3;
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
    v56 = a2;
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

      goto LABEL_58;
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

LABEL_58:
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
    a2 = v56;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v3 = v57;
  *(v51 + 16 * (v27 & 0x3F)) = *(v57 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>(void)::metadata) = *(a2 + 4096);
  v55 = *(v3 + 40);

  ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(a2, v55, (v3 + 24));
}

void ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialDiffuseTexture>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialDiffuseTexture>(void)::localId;
    unk_1EB829250 = 0x9ADEB1E4572AC694;
    qword_1EB829258 = "md::ls::SharedMaterialDiffuseTexture]";
    qword_1EB829260 = 36;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialDiffuseTexture>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28SharedMaterialDiffuseTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialDiffuseTexture>(v3);
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
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialDiffuseTexture>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28SharedMaterialDiffuseTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42C08;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialDiffuseTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42BC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialDiffuseTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedMaterialDiffuseTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42BE8;
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

void ecs2::storage<ecs2::Entity,md::ls::SharedMaterialDiffuseTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialDiffuseTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialDiffuseTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42BC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedMaterialDiffuseTexture,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::SharedMaterialDiffuseTexture,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(ecs2::Entity,ecs2::ComponentBundle<md::ls::SharedMaterialDiffuseTexture,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42B80;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RenderableMaterialData,md::ls::IsMaterial>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RenderableMaterialData,md::ls::IsMaterial> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 48);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMaterialData>(a2);
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
    v57 = *(v3 + 24);
    v58 = (*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F));
    *v58 = *(v3 + 8);
    v58[1] = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v60 = v3;
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
    v59 = a2;
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

      goto LABEL_58;
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

LABEL_58:
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
    a2 = v59;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = (*(v30 + 8 * v28) + 32 * (v27 & 0x3F));
  v3 = v60;
  v52 = *(v60 + 24);
  *v51 = *(v60 + 8);
  v51[1] = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>(void)::metadata) = *(a2 + 4096);
  v56 = *(v3 + 48);

  ecs2::BasicRegistry<void>::add<md::ls::IsMaterial>(a2, v56, (v3 + 40));
}

void ecs2::BasicRegistry<void>::add<md::ls::IsMaterial>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RenderableMaterialData,md::ls::IsMaterial>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RenderableMaterialData,md::ls::IsMaterial> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42AB0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 52) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::TriPlanar>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::TriPlanar>(ecs2::Entity,ecs2::ComponentBundle<md::ls::TriPlanar> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A42A68;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::PlanarParametersCacheKeyHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::PlanarParametersCacheKeyHandle>(ecs2::Entity,ecs2::ComponentBundle<md::ls::PlanarParametersCacheKeyHandle> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42A20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CustomZIndex>(ecs2::Entity,md::ls::CustomZIndex &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::CustomZIndex>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CustomZIndex>(ecs2::Entity,md::ls::CustomZIndex &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50658;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AlbedoTintColor>(ecs2::Entity,md::ls::AlbedoTintColor &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>(void)::metadata;
  v57 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::AlbedoTintColor>(a2);
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

  v12 = (a1 + 8);
  v13 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v51 = 0;
    v52 = *(*(v7 + 56) + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F);
    do
    {
      *(v52 + v51) = *(v12 + v51);
      v51 += 4;
    }

    while (v51 != 16);
    goto LABEL_55;
  }

  v17 = *(v7 + 40);
  v16 = *(v7 + 48);
  if (v17 >= v16)
  {
    v19 = *(v7 + 32);
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

    *(4 * v20) = v4;
    v18 = 4 * v20 + 4;
    v24 = *(v7 + 32);
    v25 = *(v7 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v7 + 32);
    *(v7 + 32) = v26;
    *(v7 + 40) = v18;
    *(v7 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = v4;
    v18 = (v17 + 1);
  }

  *(v7 + 40) = v18;
  v28 = ((v18 - *(v7 + 32)) >> 2) - 1;
  *v13 = v4;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v7 + 56);
  v30 = *(v7 + 64);
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v54 = v28;
    v55 = v5;
    v32 = v29 + 1;
    v33 = v29 + 1 - ((v30 - v31) >> 3);
    v34 = *(v7 + 72);
    v56 = v30 - v31;
    if (v33 > (v34 - v30) >> 3)
    {
      v35 = v34 - v31;
      v36 = (v34 - v31) >> 2;
      if (v36 <= v32)
      {
        v36 = v29 + 1;
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

      goto LABEL_57;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v30 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v30 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v30 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v29)
    {
      v28 = v32 - v44;
      v45 = *(v7 + 96);
      if (v28 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v29 + 1;
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

LABEL_57:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v28);
      *(v7 + 88) = v43 + 16 * v28;
      LOBYTE(v28) = v54;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v31 = *(v7 + 56);
    v5 = v55;
    if (v56 < *(v7 + 64) - v31)
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 16 * (v28 & 0x3F)) = *v12;
  v49 = *(v7 + 152);
  v50 = *(v7 + 160);
  while (v49 != v50)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), v4);
    v49 += 32;
  }

LABEL_55:
  v53 = *(v57 + 41016) + (v4 >> 16 << 6);
  *(v53 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>();
  *(v57 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>(void)::metadata) = *(v57 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AlbedoTintColor>(ecs2::Entity,md::ls::AlbedoTintColor &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42950;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a1 + 24);
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::MarketMask,md::ls::CanCastShadow,md::ls::MaterialID,md::ls::StyleEmissiveDataKeyHandle>(ecs2::Entity,ecs2::ComponentBundle<md::ls::MarketMask,md::ls::CanCastShadow,md::ls::MaterialID,md::ls::StyleEmissiveDataKeyHandle> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::MarketMask>(a2);
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
  v14 = *v12 == -1 && v13 == 0;
  v135 = a2;
  if (v14)
  {
    v16 = *(v7 + 40);
    v15 = *(v7 + 48);
    if (v16 >= v15)
    {
      v18 = *(v7 + 32);
      v19 = (v16 - v18) >> 2;
      if ((v19 + 1) >> 62)
      {
        goto LABEL_133;
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

      v23 = (4 * v19);
      *v23 = v4;
      v17 = 4 * v19 + 4;
      v24 = *(v7 + 32);
      v25 = *(v7 + 40) - v24;
      v26 = v23 - v25;
      memcpy(v23 - v25, v24, v25);
      v27 = *(v7 + 32);
      *(v7 + 32) = v26;
      *(v7 + 40) = v17;
      *(v7 + 48) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v16 = v4;
      v17 = (v16 + 1);
    }

    *(v7 + 40) = v17;
    v28 = ((v17 - *(v7 + 32)) >> 2) - 1;
    *v12 = v4;
    v12[1] = v28;
    v29 = v28 >> 6;
    v31 = *(v7 + 56);
    v30 = *(v7 + 64);
    v32 = v30 - v31;
    if (v28 >> 6 >= (v30 - v31) >> 3)
    {
      v133 = v5;
      v33 = v29 + 1;
      v34 = v29 + 1 - (v32 >> 3);
      v35 = *(v7 + 72);
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

        goto LABEL_134;
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
      *(v7 + 64) = v30 + 8 * v34;
      v43 = *(v7 + 80);
      v44 = *(v7 + 88);
      v45 = (v44 - v43) >> 4;
      if (v45 <= v29)
      {
        v46 = v33 - v45;
        v47 = *(v7 + 96);
        if (v46 > (v47 - v44) >> 4)
        {
          v48 = v47 - v43;
          v49 = v48 >> 3;
          if (v48 >> 3 <= v33)
          {
            v49 = v29 + 1;
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

          goto LABEL_134;
        }

        bzero(*(v7 + 88), 16 * v46);
        *(v7 + 88) = v44 + 16 * v46;
      }

      else if (v33 < v45)
      {
        *(v7 + 88) = v43 + 16 * v33;
      }

      v31 = *(v7 + 56);
      v5 = v133;
      if (v32 < (*(v7 + 64) - v31))
      {
        operator new();
      }
    }

    v51 = *(v31 + 8 * v29);
    a2 = v135;
    *(v51 + (v28 & 0x3F)) = *(a1 + 8);
    v52 = *(v7 + 152);
    for (i = *(v7 + 160); v52 != i; v52 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
    }
  }

  else
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *(a1 + 8);
  }

  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>(void)::metadata) = *(a2 + 4096);
  v55 = *(a1 + 32);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>();
  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>(void)::metadata;
  CanCast = ecs2::BasicRegistry<void>::storage<md::ls::CanCastShadow>(a2);
  v58 = CanCast;
  v59 = v55 >> 22;
  v61 = (CanCast + 8);
  v60 = *(CanCast + 8);
  if (v55 >> 22 >= (*(CanCast + 16) - v60) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((CanCast + 8), v59 + 1);
    v60 = *v61;
  }

  v62 = *(v60 + 8 * v59);
  if (!v62)
  {
    operator new();
  }

  v63 = (v62 + 4 * ((v55 >> 16) & 0x3F));
  if (*v63 == -1 && v63[1] == 0)
  {
    v66 = v58[5];
    v65 = v58[6];
    if (v66 >= v65)
    {
      v68 = v58[4];
      v69 = (v66 - v68) >> 2;
      if ((v69 + 1) >> 62)
      {
        goto LABEL_133;
      }

      v70 = v65 - v68;
      v71 = v70 >> 1;
      if (v70 >> 1 <= (v69 + 1))
      {
        v71 = v69 + 1;
      }

      if (v70 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v72 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v72 = v71;
      }

      if (v72)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v72);
      }

      *(4 * v69) = v55;
      v67 = 4 * v69 + 4;
      v73 = v58[4];
      v74 = v58[5] - v73;
      v75 = (4 * v69 - v74);
      memcpy(v75, v73, v74);
      v76 = v58[4];
      v58[4] = v75;
      v58[5] = v67;
      v58[6] = 0;
      if (v76)
      {
        operator delete(v76);
      }
    }

    else
    {
      *v66 = v55;
      v67 = (v66 + 1);
    }

    v58[5] = v67;
    v77 = ((v67 - *(v58 + 8)) >> 2) - 1;
    *v63 = v55;
    v63[1] = v77;
    v78 = v58[13];
    v79 = v58[14];
    while (v78 != v79)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v78 + 24), v55);
      v78 += 32;
    }
  }

  v80 = *(a2 + 41016) + (v55 >> 16 << 6);
  *(v80 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v56;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>(void)::metadata) = *(a2 + 4096);
  v81 = *(a1 + 32);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>();
  j = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>(void)::metadata;
  v83 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialID>(a2);
  v84 = v83;
  v85 = v81 >> 22;
  v87 = (v83 + 8);
  v86 = *(v83 + 8);
  if (v81 >> 22 >= (*(v83 + 16) - v86) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v83 + 8), v85 + 1);
    v86 = *v87;
  }

  v88 = *(v86 + 8 * v85);
  if (!v88)
  {
    operator new();
  }

  v89 = (v88 + 4 * ((v81 >> 16) & 0x3F));
  v90 = v89[1];
  if (*v89 != -1 || v90 != 0)
  {
    *(*(*(v84 + 56) + ((v90 >> 3) & 0x1FF8)) + 8 * (v90 & 0x3F)) = *(a1 + 16);
    goto LABEL_130;
  }

  v93 = *(v84 + 40);
  v92 = *(v84 + 48);
  v134 = j;
  if (v93 < v92)
  {
    *v93 = v81;
    v94 = (v93 + 1);
    goto LABEL_98;
  }

  v95 = *(v84 + 32);
  v96 = (v93 - v95) >> 2;
  if ((v96 + 1) >> 62)
  {
LABEL_133:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v97 = v92 - v95;
  v98 = v97 >> 1;
  if (v97 >> 1 <= (v96 + 1))
  {
    v98 = v96 + 1;
  }

  if (v97 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v99 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v99 = v98;
  }

  if (v99)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v99);
  }

  *(4 * v96) = v81;
  v94 = 4 * v96 + 4;
  v100 = *(v84 + 32);
  v101 = *(v84 + 40) - v100;
  v102 = (4 * v96 - v101);
  memcpy(v102, v100, v101);
  v103 = *(v84 + 32);
  *(v84 + 32) = v102;
  *(v84 + 40) = v94;
  *(v84 + 48) = 0;
  if (v103)
  {
    operator delete(v103);
  }

LABEL_98:
  *(v84 + 40) = v94;
  v104 = ((v94 - *(v84 + 32)) >> 2) - 1;
  *v89 = v81;
  v89[1] = v104;
  v105 = v104 >> 6;
  v107 = *(v84 + 56);
  v106 = *(v84 + 64);
  v108 = v106 - v107;
  if (v104 >> 6 >= (v106 - v107) >> 3)
  {
    v109 = v105 + 1;
    v110 = v105 + 1 - (v108 >> 3);
    v111 = *(v84 + 72);
    if (v110 > (v111 - v106) >> 3)
    {
      v112 = v111 - v107;
      v113 = (v111 - v107) >> 2;
      if (v113 <= v109)
      {
        v113 = v105 + 1;
      }

      if (v112 >= 0x7FFFFFFFFFFFFFF8)
      {
        v114 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v114 = v113;
      }

      if (!(v114 >> 61))
      {
        operator new();
      }

      goto LABEL_134;
    }

    v115 = 0;
    v116 = (v110 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v117 = vdupq_n_s64(v116);
    do
    {
      v118 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(vdupq_n_s64(v115), xmmword_1B33B0560)));
      if (v118.i8[0])
      {
        *(v106 + 8 * v115) = 0;
      }

      if (v118.i8[4])
      {
        *(v106 + 8 * v115 + 8) = 0;
      }

      v115 += 2;
    }

    while (v116 - ((v110 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v115);
    *(v84 + 64) = v106 + 8 * v110;
    v119 = *(v84 + 80);
    v120 = *(v84 + 88);
    v121 = (v120 - v119) >> 4;
    if (v121 > v105)
    {
      if (v109 >= v121)
      {
        goto LABEL_126;
      }

      v122 = v119 + 16 * v109;
LABEL_125:
      *(v84 + 88) = v122;
LABEL_126:
      v107 = *(v84 + 56);
      if (v108 < (*(v84 + 64) - v107))
      {
        operator new();
      }

      goto LABEL_128;
    }

    v123 = v109 - v121;
    v124 = *(v84 + 96);
    if (v123 <= (v124 - v120) >> 4)
    {
      bzero(*(v84 + 88), 16 * v123);
      v122 = v120 + 16 * v123;
      goto LABEL_125;
    }

    v125 = v124 - v119;
    v126 = v125 >> 3;
    if (v125 >> 3 <= v109)
    {
      v126 = v105 + 1;
    }

    if (v125 >= 0x7FFFFFFFFFFFFFF0)
    {
      v127 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v127 = v126;
    }

    if (!(v127 >> 60))
    {
      operator new();
    }

LABEL_134:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_128:
  v128 = *(v107 + 8 * v105);
  a2 = v135;
  *(v128 + 8 * (v104 & 0x3F)) = *(a1 + 16);
  v129 = *(v84 + 152);
  v130 = *(v84 + 160);
  for (j = v134; v129 != v130; v129 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v129 + 24), v81);
  }

LABEL_130:
  v131 = *(a2 + 41016) + (v81 >> 16 << 6);
  *(v131 + ((j >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << j;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>(void)::metadata) = *(a2 + 4096);
  v132 = *(a1 + 32);

  ecs2::BasicRegistry<void>::add<md::ls::StyleEmissiveDataKeyHandle>(a2, v132, (a1 + 24));
}

void ecs2::BasicRegistry<void>::add<md::ls::StyleEmissiveDataKeyHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::StyleEmissiveDataKeyHandle>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialID>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialID>(void)::localId;
    *algn_1EB82D928 = 0x764AD34FCA61B6DLL;
    qword_1EB82D930 = "md::ls::MaterialID]";
    qword_1EB82D938 = 18;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MaterialID>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10MaterialIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialID>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialID>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10MaterialIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42908;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A428C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MaterialID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MaterialID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A428E8;
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

void ecs2::storage<ecs2::Entity,md::ls::MaterialID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MaterialID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A428C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MaterialID,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::MarketMask,md::ls::CanCastShadow,md::ls::MaterialID,md::ls::StyleEmissiveDataKeyHandle>(ecs2::Entity,ecs2::ComponentBundle<md::ls::MarketMask,md::ls::CanCastShadow,md::ls::MaterialID,md::ls::StyleEmissiveDataKeyHandle> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42790;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RasterOverlayConstantDataHandle,md::ls::BlendRasterConstantDataHandle,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,md::ls::HasOverlayPatch>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RasterOverlayConstantDataHandle,md::ls::BlendRasterConstantDataHandle,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,md::ls::HasOverlayPatch> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  ecs2::BasicRegistry<void>::add<md::ls::RasterOverlayConstantDataHandle>(a2, *(a1 + 80), (a1 + 8));
  ecs2::BasicRegistry<void>::add<md::ls::BlendRasterConstantDataHandle>(a2, *(a1 + 80), (a1 + 48));
  ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(a2, *(a1 + 80), (a1 + 56));
  v4 = *(a1 + 80);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>();
  v5 = &qword_1EB83D000;
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>(void)::metadata;
  HasOverlay = ecs2::BasicRegistry<void>::storage<md::ls::HasOverlayPatch>(a2);
  v8 = HasOverlay;
  v9 = v4 >> 22;
  v11 = (HasOverlay + 8);
  v10 = *(HasOverlay + 8);
  if (v4 >> 22 >= (*(HasOverlay + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((HasOverlay + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((v4 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *(a1 + 72);
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

    *(4 * v20) = v4;
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
    *v17 = v4;
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = v4;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v54 = v28 >> 6;
    v55 = v28;
    v32 = v29 + 1;
    v33 = v29 + 1 - ((v30 - v31) >> 3);
    v34 = *(v8 + 72);
    v53 = v30 - v31;
    if (v33 > (v34 - v30) >> 3)
    {
      v35 = v34 - v31;
      v36 = (v34 - v31) >> 2;
      if (v36 <= v32)
      {
        v36 = v29 + 1;
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
        *(v30 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v30 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v8 + 64) = v30 + 8 * v33;
    v42 = *(v8 + 80);
    v43 = *(v8 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v29)
    {
      v45 = v32 - v44;
      v46 = *(v8 + 96);
      if (v45 > (v46 - v43) >> 4)
      {
        v47 = v46 - v42;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v32)
        {
          v48 = v32;
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

      bzero(*(v8 + 88), 16 * v45);
      *(v8 + 88) = v43 + 16 * v45;
      v29 = v54;
    }

    else if (v32 < v44)
    {
      *(v8 + 88) = v42 + 16 * v32;
    }

    v31 = *(v8 + 56);
    v5 = &qword_1EB83D000;
    LOBYTE(v28) = v55;
    if (v53 < *(v8 + 64) - v31)
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + (v28 & 0x3F)) = *(a1 + 72);
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), v4);
    v50 += 32;
  }

LABEL_54:
  v52 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>();
  *(a2 + 8 * v5[215]) = *(a2 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::RasterOverlayConstantDataHandle>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>();
  v6 = &unk_1EB83B000;
  v7 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata;
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::RasterOverlayConstantDataHandle>(a1);
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
  if (*v14 != -1 || v15 != 0)
  {
    v58 = *(*(v9 + 56) + ((v15 >> 3) & 0x1FF8)) + 40 * (v15 & 0x3F);
    v59 = *a3;
    v60 = a3[1];
    *(v58 + 32) = *(a3 + 4);
    *v58 = v59;
    *(v58 + 16) = v60;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_57;
  }

  v18 = *(v9 + 40);
  v17 = *(v9 + 48);
  v63 = a3;
  v64 = v7;
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
  if (v29 >> 6 >= (v31 - v32) >> 3)
  {
    v62 = a1;
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

      goto LABEL_59;
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

LABEL_59:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v9 + 88), 16 * v48);
      v47 = v45 + 16 * v48;
    }

    else
    {
      if (v34 >= v46)
      {
        goto LABEL_50;
      }

      v47 = v44 + 16 * v34;
    }

    *(v9 + 88) = v47;
LABEL_50:
    v32 = *(v9 + 56);
    a1 = v62;
    if (v33 < (*(v9 + 64) - v32))
    {
      operator new();
    }
  }

  v53 = *(v32 + 8 * v30) + 40 * (v29 & 0x3F);
  v54 = *v63;
  v55 = v63[1];
  *(v53 + 32) = *(v63 + 4);
  *v53 = v54;
  *(v53 + 16) = v55;
  v56 = *(v9 + 152);
  v57 = *(v9 + 160);
  v6 = &unk_1EB83B000;
  if (v56 == v57)
  {
    v7 = v64;
  }

  else
  {
    v7 = v64;
    do
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v56 + 24), a2);
      v56 += 32;
    }

    while (v56 != v57);
  }

LABEL_57:
  v61 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v61 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>();
  *(a1 + 8 * v6[374]) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::BlendRasterConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::BlendRasterConstantDataHandle>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata) = *(v55 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::RasterOverlayConstantDataHandle,md::ls::BlendRasterConstantDataHandle,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,md::ls::HasOverlayPatch>(ecs2::Entity,ecs2::ComponentBundle<md::ls::RasterOverlayConstantDataHandle,md::ls::BlendRasterConstantDataHandle,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,md::ls::HasOverlayPatch> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A426C0;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 84) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::IsDualElevation,md::ls::ColorRampDataHandle>(ecs2::Entity,ecs2::ComponentBundle<md::ls::IsDualElevation,md::ls::ColorRampDataHandle> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>(void)::metadata;
  IsDual = ecs2::BasicRegistry<void>::storage<md::ls::IsDualElevation>(a2);
  v7 = IsDual;
  v8 = v4 >> 22;
  v10 = (IsDual + 8);
  v9 = *(IsDual + 8);
  if (v4 >> 22 >= (*(IsDual + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((IsDual + 8), v8 + 1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>(void)::metadata) = *(a2 + 4096);
  v30 = *(a1 + 16);

  ecs2::BasicRegistry<void>::add<md::ls::ColorRampDataHandle>(a2, v30, (a1 + 8));
}

void ecs2::BasicRegistry<void>::add<md::ls::ColorRampDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsDualElevation>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsDualElevation>(void)::localId;
    *algn_1EB82D898 = 0x38C48843ABFB6D46;
    qword_1EB82D8A0 = "md::ls::IsDualElevation]";
    qword_1EB82D8A8 = 23;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IsDualElevation>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15IsDualElevationEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>(void)::metadata;
  IsDual = ecs2::BasicRegistry<void>::storage<md::ls::IsDualElevation>(v3);
  v6 = IsDual[1];
  if (v2 >> 22 < (IsDual[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = IsDual;
        v9 = IsDual[25];
        v10 = IsDual[26];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDualElevation>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15IsDualElevationEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42678;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsDualElevation,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42658;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsDualElevation,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42658;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::IsDualElevation,md::ls::ColorRampDataHandle>(ecs2::Entity,ecs2::ComponentBundle<md::ls::IsDualElevation,md::ls::ColorRampDataHandle> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42610;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::HasMaterialRaster,md::ls::MaterialRasterMaxIndex>(ecs2::Entity,ecs2::ComponentBundle<md::ls::HasMaterialRaster,md::ls::MaterialRasterMaxIndex> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>();
  v4 = &qword_1EB83D000;
  v102 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>(void)::metadata;
  v104 = a2;
  HasMaterial = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRaster>(a2);
  v6 = HasMaterial;
  v7 = v3 >> 22;
  v9 = (HasMaterial + 8);
  v8 = *(HasMaterial + 8);
  if (v3 >> 22 >= (*(HasMaterial + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((HasMaterial + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  v12 = v11[1];
  if (*v11 == -1 && v12 == 0)
  {
    v15 = *(v6 + 40);
    v14 = *(v6 + 48);
    if (v15 >= v14)
    {
      v17 = *(v6 + 32);
      v18 = (v15 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        goto LABEL_108;
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

      *(4 * v18) = v3;
      v16 = 4 * v18 + 4;
      v22 = *(v6 + 32);
      v23 = *(v6 + 40) - v22;
      v24 = (4 * v18 - v23);
      memcpy(v24, v22, v23);
      v25 = *(v6 + 32);
      *(v6 + 32) = v24;
      *(v6 + 40) = v16;
      *(v6 + 48) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v15 = v3;
      v16 = (v15 + 1);
    }

    *(v6 + 40) = v16;
    v26 = ((v16 - *(v6 + 32)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v26;
    v27 = v26 >> 6;
    v29 = *(v6 + 56);
    v28 = *(v6 + 64);
    v30 = v28 - v29;
    if (v26 >> 6 >= (v28 - v29) >> 3)
    {
      v31 = v27 + 1;
      v32 = v27 + 1 - (v30 >> 3);
      v33 = *(v6 + 72);
      v100 = v28 - v29;
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

        goto LABEL_109;
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
      *(v6 + 64) = v28 + 8 * v32;
      v41 = *(v6 + 80);
      v42 = *(v6 + 88);
      v43 = (v42 - v41) >> 4;
      if (v43 <= v27)
      {
        v44 = v31 - v43;
        v45 = *(v6 + 96);
        if (v44 > (v45 - v42) >> 4)
        {
          v46 = v45 - v41;
          v47 = v46 >> 3;
          if (v46 >> 3 <= v31)
          {
            v47 = v27 + 1;
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

          goto LABEL_109;
        }

        bzero(*(v6 + 88), 16 * v44);
        *(v6 + 88) = v42 + 16 * v44;
        v30 = v100;
      }

      else if (v31 < v43)
      {
        *(v6 + 88) = v41 + 16 * v31;
      }

      v29 = *(v6 + 56);
      v4 = &qword_1EB83D000;
      if (v30 < (*(v6 + 64) - v29))
      {
        operator new();
      }
    }

    *(*(v29 + 8 * v27) + 8 * (v26 & 0x3F)) = *(a1 + 8);
    v49 = *(v6 + 152);
    v50 = *(v6 + 160);
    while (v49 != v50)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), v3);
      v49 += 32;
    }
  }

  else
  {
    *(*(*(v6 + 56) + ((v12 >> 3) & 0x1FF8)) + 8 * (v12 & 0x3F)) = *(a1 + 8);
  }

  v51 = *(v104 + 41016) + (v3 >> 16 << 6);
  *(v51 + ((v102 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v102;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>();
  *(v104 + 8 * v4[82]) = *(v104 + 4096);
  v52 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>();
  v53 = &unk_1EB83C000;
  v103 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>(void)::metadata;
  v54 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialRasterMaxIndex>(v104);
  v55 = v54;
  v56 = v52 >> 22;
  v58 = (v54 + 8);
  v57 = *(v54 + 8);
  if (v52 >> 22 >= (*(v54 + 16) - v57) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v54 + 8), v56 + 1);
    v57 = *v58;
  }

  v59 = *(v57 + 8 * v56);
  if (!v59)
  {
    operator new();
  }

  v60 = (v59 + 4 * ((v52 >> 16) & 0x3F));
  v61 = v60[1];
  if (*v60 != -1 || v61 != 0)
  {
    *(*(*(v55 + 56) + ((v61 >> 3) & 0x1FF8)) + 2 * (v61 & 0x3F)) = *(a1 + 16);
    goto LABEL_107;
  }

  v64 = *(v55 + 40);
  v63 = *(v55 + 48);
  if (v64 < v63)
  {
    *v64 = v52;
    v65 = (v64 + 1);
    goto LABEL_75;
  }

  v66 = *(v55 + 32);
  v67 = (v64 - v66) >> 2;
  if ((v67 + 1) >> 62)
  {
LABEL_108:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v68 = v63 - v66;
  v69 = v68 >> 1;
  if (v68 >> 1 <= (v67 + 1))
  {
    v69 = v67 + 1;
  }

  if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v70 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v70 = v69;
  }

  if (v70)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v70);
  }

  *(4 * v67) = v52;
  v65 = 4 * v67 + 4;
  v71 = *(v55 + 32);
  v72 = *(v55 + 40) - v71;
  v73 = (4 * v67 - v72);
  memcpy(v73, v71, v72);
  v74 = *(v55 + 32);
  *(v55 + 32) = v73;
  *(v55 + 40) = v65;
  *(v55 + 48) = 0;
  if (v74)
  {
    operator delete(v74);
  }

LABEL_75:
  *(v55 + 40) = v65;
  v75 = ((v65 - *(v55 + 32)) >> 2) - 1;
  *v60 = v52;
  v60[1] = v75;
  v76 = v75 >> 6;
  v78 = *(v55 + 56);
  v77 = *(v55 + 64);
  if (v75 >> 6 >= (v77 - v78) >> 3)
  {
    v79 = v76 + 1;
    v80 = v76 + 1 - ((v77 - v78) >> 3);
    v81 = *(v55 + 72);
    __n = v75;
    v101 = v77 - v78;
    if (v80 > (v81 - v77) >> 3)
    {
      v82 = v81 - v78;
      v83 = (v81 - v78) >> 2;
      if (v83 <= v79)
      {
        v83 = v76 + 1;
      }

      if (v82 >= 0x7FFFFFFFFFFFFFF8)
      {
        v84 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v84 = v83;
      }

      if (!(v84 >> 61))
      {
        operator new();
      }

      goto LABEL_109;
    }

    v85 = 0;
    v86 = (v80 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v87 = vdupq_n_s64(v86);
    do
    {
      v88 = vmovn_s64(vcgeq_u64(v87, vorrq_s8(vdupq_n_s64(v85), xmmword_1B33B0560)));
      if (v88.i8[0])
      {
        *(v77 + 8 * v85) = 0;
      }

      if (v88.i8[4])
      {
        *(v77 + 8 * v85 + 8) = 0;
      }

      v85 += 2;
    }

    while (v86 - ((v80 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v85);
    *(v55 + 64) = v77 + 8 * v80;
    v89 = *(v55 + 80);
    v90 = *(v55 + 88);
    v91 = (v90 - v89) >> 4;
    if (v91 > v76)
    {
      if (v79 < v91)
      {
        *(v55 + 88) = v89 + 16 * v79;
      }

      goto LABEL_102;
    }

    v75 = v79 - v91;
    v92 = *(v55 + 96);
    if (v75 <= (v92 - v90) >> 4)
    {
      bzero(*(v55 + 88), 16 * v75);
      *(v55 + 88) = v90 + 16 * v75;
      LOBYTE(v75) = __n;
LABEL_102:
      v78 = *(v55 + 56);
      v53 = &unk_1EB83C000;
      if (v101 < *(v55 + 64) - v78)
      {
        operator new();
      }

      goto LABEL_104;
    }

    v93 = v92 - v89;
    v94 = v93 >> 3;
    if (v93 >> 3 <= v79)
    {
      v94 = v76 + 1;
    }

    if (v93 >= 0x7FFFFFFFFFFFFFF0)
    {
      v95 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v95 = v94;
    }

    if (!(v95 >> 60))
    {
      operator new();
    }

LABEL_109:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_104:
  *(*(v78 + 8 * v76) + 2 * (v75 & 0x3F)) = *(a1 + 16);
  v96 = *(v55 + 152);
  v97 = *(v55 + 160);
  while (v96 != v97)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v96 + 24), v52);
    v96 += 32;
  }

LABEL_107:
  v98 = *(v104 + 41016) + (v52 >> 16 << 6);
  *(v98 + ((v103 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v103;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>();
  *(v104 + 8 * v53[363]) = *(v104 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::HasMaterialRaster,md::ls::MaterialRasterMaxIndex>(ecs2::Entity,ecs2::ComponentBundle<md::ls::HasMaterialRaster,md::ls::MaterialRasterMaxIndex> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A424B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsDecal>(ecs2::Entity,md::ls::IsDecal &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsDecal>(ecs2::Entity,md::ls::IsDecal &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A51708;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsDynamicRenderable>(ecs2::Entity,md::ls::IsDynamicRenderable &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>(void)::metadata;
  IsDynamic = ecs2::BasicRegistry<void>::storage<md::ls::IsDynamicRenderable>(a2);
  v7 = IsDynamic;
  v8 = v4 >> 22;
  v10 = (IsDynamic + 8);
  v9 = *(IsDynamic + 8);
  if (v4 >> 22 >= (*(IsDynamic + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((IsDynamic + 8), v8 + 1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsDynamicRenderable>(ecs2::Entity,md::ls::IsDynamicRenderable &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A423E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CustomRenderState>(ecs2::Entity,md::ls::CustomRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::CustomRenderState>(a2);
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
    v55 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
    v56 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v57 = *(v55 + 8);
    *v55 = v56;
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v57);
    }

    *(v55 + 16) = *(a1 + 24);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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

      goto LABEL_59;
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

LABEL_59:
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 24 * (v27 & 0x3F);
  v5 = v59;
  *v51 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(v51 + 16) = *(a1 + 24);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata) = *(a2 + 4096);
}